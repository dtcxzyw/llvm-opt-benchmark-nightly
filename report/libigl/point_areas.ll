Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/point_areas?download=true
inline.NumInlined: 12872
inline.NumDeleted: 5810
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 97
loop-unroll.NumUnrolled: 117
begin_hunk_0_@_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS_11VectorBlockINS1_IS3_Lin1ELi1ELb1EEELin1EEEEEvRKT_RKdPd:bb.a
  %wide.load92 = load <2 x double>, ptr %i.gg, align 8, !tbaa !44, !alias.scope !807
  %wide.load93 = load <2 x double>, ptr %i.gh, align 8, !tbaa !44, !alias.scope !807
  %i.gi = fmul <2 x double> %broadcast.splat, %wide.load92
  %i.gj = fmul <2 x double> %broadcast.splat, %wide.load93
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 16 ; 2 uses
  %wide.load94 = load <2 x double>, ptr %i.gf, align 8, !tbaa !44, !alias.scope !808, !noalias !807
  %wide.load95 = load <2 x double>, ptr %i.gk, align 8, !tbaa !44, !alias.scope !808, !noalias !807
  %i.gl = fsub <2 x double> %wide.load94, %i.gi
  %i.gm = fsub <2 x double> %wide.load95, %i.gj
  store <2 x double> %i.gl, ptr %i.gf, align 8, !tbaa !44, !alias.scope !808, !noalias !807
  store <2 x double> %i.gm, ptr %i.gk, align 8, !tbaa !44, !alias.scope !808, !noalias !807
  %index.next96 = add nuw i64 %index91, 4         ; 2 uses
  %i.gn = icmp eq i64 %index.next96, %n.vec89
  br i1 %i.gn, label %middle.block97, label %vector.body90, !llvm.loop !796

middle.block97:                                   ; preds = %vector.body90
  %cmp.n98 = icmp eq i64 %i.gc, %n.vec89
  br i1 %cmp.n98, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i8.preheader101

.lr.ph.i.i.i.i.i.i8.preheader101:                 ; preds = %vector.memcheck80, %.lr.ph.i.i.i.i.i.i8.preheader, %middle.block97
  %.05.i.i.i.i.i.i9.ph = phi i64 [ 0, %vector.memcheck80 ], [ 0, %.lr.ph.i.i.i.i.i.i8.preheader ], [ %n.vec89, %middle.block97 ] ; 5 uses
  %.neg111 = or disjoint i64 %.05.i.i.i.i.i.i9.ph, 1
  %xtraiter108 = and i64 %i.gc, 1
  %lcmp.mod109.not = icmp eq i64 %xtraiter108, 0
  br i1 %lcmp.mod109.not, label %.lr.ph.i.i.i.i.i.i8.prol.loopexit, label %.lr.ph.i.i.i.i.i.i8.prol

.lr.ph.i.i.i.i.i.i8.prol:                         ; preds = %.lr.ph.i.i.i.i.i.i8.preheader101
  %i.go = mul nsw i64 %.05.i.i.i.i.i.i9.ph, %i.ga
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %i.go ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i9.ph
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !44
  %i.gs = fmul double %i.gb, %i.gr
  %i.gt = load double, ptr %i.gp, align 8, !tbaa !44
  %i.gu = fsub double %i.gt, %i.gs
  store double %i.gu, ptr %i.gp, align 8, !tbaa !44
  %i.gv = or disjoint i64 %.05.i.i.i.i.i.i9.ph, 1
  br label %.lr.ph.i.i.i.i.i.i8.prol.loopexit

.lr.ph.i.i.i.i.i.i8.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i.i8.prol, %.lr.ph.i.i.i.i.i.i8.preheader101
  %.05.i.i.i.i.i.i9.unr = phi i64 [ %.05.i.i.i.i.i.i9.ph, %.lr.ph.i.i.i.i.i.i8.preheader101 ], [ %i.gv, %.lr.ph.i.i.i.i.i.i8.prol ]
  %i.gw = icmp eq i64 %i.gc, %.neg111
  br i1 %i.gw, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i8

.lr.ph.i.i.i.i.i.i8:                              ; preds = %.lr.ph.i.i.i.i.i.i8.prol.loopexit, %.lr.ph.i.i.i.i.i.i8
  %.05.i.i.i.i.i.i9 = phi i64 [ %i.hm, %.lr.ph.i.i.i.i.i.i8 ], [ %.05.i.i.i.i.i.i9.unr, %.lr.ph.i.i.i.i.i.i8.prol.loopexit ] ; 4 uses
  %i.gx = mul nsw i64 %.05.i.i.i.i.i.i9, %i.ga
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %i.gx ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i9
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !44
  %i.hb = fmul double %i.gb, %i.ha
  %i.hc = load double, ptr %i.gy, align 8, !tbaa !44
  %i.hd = fsub double %i.hc, %i.hb
  store double %i.hd, ptr %i.gy, align 8, !tbaa !44
  %i.he = add nuw nsw i64 %.05.i.i.i.i.i.i9, 1    ; 2 uses
  %i.hf = mul nsw i64 %i.he, %i.ga
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %i.hf ; 2 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.he
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !44
  %i.hj = fmul double %i.gb, %i.hi
  %i.hk = load double, ptr %i.hg, align 8, !tbaa !44
  %i.hl = fsub double %i.hk, %i.hj
  store double %i.hl, ptr %i.hg, align 8, !tbaa !44
  %i.hm = add nuw nsw i64 %.05.i.i.i.i.i.i9, 2    ; 2 uses
  %exitcond.not.i.i.i.i.i.i10.1 = icmp eq i64 %i.hm, %i.gc
  br i1 %exitcond.not.i.i.i.i.i.i10.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i8, !llvm.loop !797

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i8.prol.loopexit, %.lr.ph.i.i.i.i.i.i8, %middle.block97
  %.pre63 = load double, ptr %2, align 8, !tbaa !44, !noalias !809
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit: ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit
  %i.hn = phi double [ %.pre63, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit ], [ %i.gb, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %i.ho = load i64, ptr %.sroa.034.sroa.4.0..sroa_idx, align 8, !tbaa !96, !noalias !809
  %i.hp = getelementptr inbounds nuw i8, ptr %14, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.hp, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 104, i1 false)
  %i.hq = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.ho, ptr %i.hq, align 8, !alias.scope !810
  %i.hr = getelementptr inbounds nuw i8, ptr %14, i64 24
  store double %i.hn, ptr %i.hr, align 8, !tbaa !100, !alias.scope !810
  %i.hs = getelementptr inbounds nuw i8, ptr %14, i64 144 ; 2 uses
  store ptr %3, ptr %i.hs, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 160
  store i64 %i.r, ptr %.sroa.10.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @_ZN5Eigen8internal26outer_product_selector_runINS_5BlockINS2_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS2_INS2_IS4_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS3_IdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS0_20generic_product_implISK_SP_NS_10DenseShapeESR_Li5EE3subEEEvRT_RKT0_RKT1_RKT2_RKNS0_10false_typeE(ptr noundef nonnull align 8 dereferenceable(104) %13, ptr noundef nonnull align 8 dereferenceable(176) %14, ptr noundef nonnull align 8 dereferenceable(26) %i.hs, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEl(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !172
  %.not.i.i.i = icmp eq i64 %1, %i.b
  br i1 %.not.i.i.i, label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !153
  tail call void @free(ptr noundef %i.c) #32
  %i.d = icmp sgt i64 %1, 0
  br i1 %i.d, label %bb.c, label %.sink.split.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = icmp samesign ugt i64 %1, 4611686018427387903
  br i1 %i.e, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.f, align 8, !tbaa !48
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #37
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i: ; preds = %bb.c
  %i.g = shl nuw i64 %1, 2
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #36 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %.sink.split.i.i.i

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !48
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #37
  unreachable

.sink.split.i.i.i:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i, %bb.b
  %.sink.i.i.i = phi ptr [ %i.h, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i ], [ null, %bb.b ]
  store ptr %.sink.i.i.i, ptr %0, align 8, !tbaa !153
  br label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit

_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit: ; preds = %bb.a, %.sink.split.i.i.i
  store i64 %1, ptr %i.a, align 8, !tbaa !172
  %i.k = trunc i64 %1 to i32
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.i, label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEv.exit

.lr.ph.i:                                         ; preds = %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit
  %i.m = load ptr, ptr %0, align 8, !tbaa !153    ; 2 uses
  %wide.trip.count.i = and i64 %1, 2147483647     ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %1, 2147483640                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <4 x i32> %vec.ind, ptr %i.n, align 4, !tbaa !60
  store <4 x i32> %step.add, ptr %i.o, align 4, !tbaa !60
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !811

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEv.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.r = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.r, ptr %i.q, align 4, !tbaa !60
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEv.exit, label %scalar.ph, !llvm.loop !812

_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEv.exit: ; preds = %scalar.ph, %middle.block, %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RdSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #27 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !96   ; 7 uses
  %i.c = add nsw i64 %i.b, -1                     ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !200    ; 5 uses
  %i.e = ptrtoaddr ptr %i.d to i64                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 23 uses
  %or.cond = icmp eq i64 %i.b, 1
  br i1 %or.cond, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread, label %bb.b

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread: ; preds = %bb.a
  %4 = load double, ptr %i.d, align 8, !tbaa !44
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv i64 %i.c, 4
  %i.h = shl nsw i64 %i.g, 2                      ; 3 uses
  %i.i = sdiv i64 %i.c, 2
  %i.j = shl nsw i64 %i.i, 1                      ; 6 uses
  %.not.i.i.i.i = icmp ult i64 %i.b, 3
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load <2 x double>, ptr %i.f, align 1, !tbaa !87 ; 2 uses
  %i.l = fmul <2 x double> %i.k, %i.k             ; 3 uses
  %i.m = icmp sgt i64 %i.b, 4
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.o = load <2 x double>, ptr %i.n, align 1, !tbaa !87 ; 2 uses
  %i.p = fmul <2 x double> %i.o, %i.o             ; 2 uses
  %i.q = icmp samesign ugt i64 %i.b, 8
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.d
  %.075.lcssa.i.i.i.i = phi <2 x double> [ %i.p, %bb.d ], [ %i.ab, %.lr.ph.i.i.i.i ]
  %.072.lcssa.i.i.i.i = phi <2 x double> [ %i.l, %bb.d ], [ %i.w, %.lr.ph.i.i.i.i ]
  %i.r = fadd <2 x double> %.075.lcssa.i.i.i.i, %.072.lcssa.i.i.i.i ; 2 uses
  %i.s = icmp sgt i64 %i.j, %i.h
  br i1 %i.s, label %bb.e, label %bb.f

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.05480.i.i.i.i = phi i64 [ %.054.i.i.i.i, %.lr.ph.i.i.i.i ], [ 4, %bb.d ] ; 3 uses
  %.054.in79.i.i.i.i = phi i64 [ %.05480.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.d ]
  %.07278.i.i.i.i = phi <2 x double> [ %i.w, %.lr.ph.i.i.i.i ], [ %i.l, %bb.d ]
  %.07577.i.i.i.i = phi <2 x double> [ %i.ab, %.lr.ph.i.i.i.i ], [ %i.p, %bb.d ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.05480.i.i.i.i
  %i.u = load <2 x double>, ptr %i.t, align 1, !tbaa !87 ; 2 uses
  %i.v = fmul <2 x double> %i.u, %i.u
  %i.w = fadd <2 x double> %.07278.i.i.i.i, %i.v  ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.054.in79.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load <2 x double>, ptr %i.y, align 1, !tbaa !87 ; 2 uses
  %i.aa = fmul <2 x double> %i.z, %i.z
  %i.ab = fadd <2 x double> %.07577.i.i.i.i, %i.aa ; 2 uses
  %.054.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i, 4 ; 2 uses
  %i.ac = icmp slt i64 %.054.i.i.i.i, %i.h
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !813

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  %i.ae = load <2 x double>, ptr %i.ad, align 1, !tbaa !87 ; 2 uses
  %i.af = fmul <2 x double> %i.ae, %i.ae
  %i.ag = fadd <2 x double> %i.r, %i.af
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i, %bb.c
  %.274.i.i.i.i = phi <2 x double> [ %i.l, %bb.c ], [ %i.ag, %bb.e ], [ %i.r, %._crit_edge.i.i.i.i ]
  %i.ah = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.274.i.i.i.i) ; 3 uses
  %i.ai = icmp slt i64 %i.j, %i.c
  br i1 %i.ai, label %.lr.ph85.i.i.i.i.preheader, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.f
  %i.aj = xor i64 %i.j, -1
  %i.ak = add i64 %i.b, %i.aj
  %i.al = add i64 %i.b, -2
  %i.am = sub i64 %i.al, %i.j
  %xtraiter = and i64 %i.ak, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph85.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.prol

.lr.ph85.i.i.i.i.prol:                            ; preds = %.lr.ph85.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.prol
  %.05283.i.i.i.i.prol = phi i64 [ %i.ar, %.lr.ph85.i.i.i.i.prol ], [ %i.j, %.lr.ph85.i.i.i.i.preheader ] ; 2 uses
  %.182.i.i.i.i.prol = phi double [ %i.aq, %.lr.ph85.i.i.i.i.prol ], [ %i.ah, %.lr.ph85.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.preheader ]
  %i.an = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.05283.i.i.i.i.prol
  %i.ao = load double, ptr %i.an, align 8, !tbaa !44 ; 2 uses
  %i.ap = fmul double %i.ao, %i.ao
  %i.aq = fadd double %.182.i.i.i.i.prol, %i.ap   ; 3 uses
  %i.ar = add nsw i64 %.05283.i.i.i.i.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.prol, !llvm.loop !814

.lr.ph85.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph85.i.i.i.i.prol, %.lr.ph85.i.i.i.i.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph85.i.i.i.i.preheader ], [ %i.aq, %.lr.ph85.i.i.i.i.prol ]
  %.05283.i.i.i.i.unr = phi i64 [ %i.j, %.lr.ph85.i.i.i.i.preheader ], [ %i.ar, %.lr.ph85.i.i.i.i.prol ]
  %.182.i.i.i.i.unr = phi double [ %i.ah, %.lr.ph85.i.i.i.i.preheader ], [ %i.aq, %.lr.ph85.i.i.i.i.prol ]
  %i.as = icmp ult i64 %i.am, 3
  br i1 %i.as, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit, label %.lr.ph85.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i
  %.05283.i.i.i.i = phi i64 [ %i.bm, %.lr.ph85.i.i.i.i ], [ %.05283.i.i.i.i.unr, %.lr.ph85.i.i.i.i.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i = phi double [ %i.bl, %.lr.ph85.i.i.i.i ], [ %.182.i.i.i.i.unr, %.lr.ph85.i.i.i.i.prol.loopexit ]
  %i.at = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.05283.i.i.i.i
  %i.au = load double, ptr %i.at, align 8, !tbaa !44 ; 2 uses
  %i.av = fmul double %i.au, %i.au
  %i.aw = fadd double %.182.i.i.i.i, %i.av
  %i.ax = getelementptr [8 x i8], ptr %i.f, i64 %.05283.i.i.i.i
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = load double, ptr %i.ay, align 8, !tbaa !44 ; 2 uses
  %i.ba = fmul double %i.az, %i.az
  %i.bb = fadd double %i.aw, %i.ba
  %i.bc = getelementptr [8 x i8], ptr %i.f, i64 %.05283.i.i.i.i
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  %i.be = load double, ptr %i.bd, align 8, !tbaa !44 ; 2 uses
  %i.bf = fmul double %i.be, %i.be
  %i.bg = fadd double %i.bb, %i.bf
  %i.bh = getelementptr [8 x i8], ptr %i.f, i64 %.05283.i.i.i.i
  %i.bi = getelementptr i8, ptr %i.bh, i64 24
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !44 ; 2 uses
  %i.bk = fmul double %i.bj, %i.bj
  %i.bl = fadd double %i.bg, %i.bk                ; 2 uses
  %i.bm = add nsw i64 %.05283.i.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.bm, %i.c
  br i1 %exitcond.not.i.i.i.i.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit, label %.lr.ph85.i.i.i.i, !llvm.loop !815

bb.g:                                             ; preds = %bb.b
  %i.bn = load double, ptr %i.f, align 8, !tbaa !44 ; 2 uses
  %i.bo = fmul double %i.bn, %i.bn
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit: ; preds = %.lr.ph85.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i, %bb.g, %bb.f
  %i.bp = phi double [ %i.bo, %bb.g ], [ %i.ah, %bb.f ], [ %.lcssa.unr, %.lr.ph85.i.i.i.i.prol.loopexit ], [ %i.bl, %.lr.ph85.i.i.i.i ] ; 2 uses
  %i.bq = load double, ptr %i.d, align 8, !tbaa !44 ; 6 uses
  %i.br = fcmp ugt double %i.bp, f0x0010000000000000
  br i1 %i.br, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread
  %i.bs = phi double [ %4, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread ], [ %i.bq, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit ]
  store double 0.000000e+00, ptr %2, align 8, !tbaa !44
  store double %i.bs, ptr %3, align 8, !tbaa !44
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bu = load ptr, ptr %1, align 8, !tbaa !202   ; 4 uses
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !96 ; 4 uses
  %i.bw = ptrtoint ptr %i.bu to i64               ; 2 uses
  %i.bx = and i64 %i.bw, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.by = lshr exact i64 %i.bw, 3
  %i.bz = and i64 %i.by, 1
  %i.ca = tail call i64 @llvm.smin.i64(i64 %i.bz, i64 %i.bv)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ca, %bb.i ], [ %i.bv, %bb.h ] ; 8 uses
  %i.cb = sub i64 %i.bv, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.cc = sdiv i64 %i.cb, 2                       ; 2 uses
  %i.cd = shl nsw i64 %i.cc, 1                    ; 2 uses
  %i.ce = add i64 %i.cd, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cf = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cf, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i:       ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cg = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bu, i8 0, i64 %i.cg, i1 false), !tbaa !44
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ch = icmp sgt i64 %i.cb, 1
  br i1 %i.ch, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i:         ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ci = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %scevgep.i = getelementptr i8, ptr %i.bu, i64 %i.ci
  %i.cj = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %smax.i = tail call i64 @llvm.smax.i64(i64 %i.ce, i64 %i.cj)
  %i.ck = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.cl = add i64 %smax.i, %i.ck
  %i.cm = shl i64 %i.cl, 3
  %i.cn = and i64 %i.cm, -16
  %i.co = add i64 %i.cn, 16
  tail call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.co, i1 false), !tbaa !87
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cp = icmp slt i64 %i.ce, %i.bv
  br i1 %i.cp, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cq = shl i64 %i.cc, 4
  %i.cr = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.cs = getelementptr i8, ptr %i.bu, i64 %i.cq
  %scevgep1.i = getelementptr i8, ptr %i.cs, i64 %i.cr
  %i.ct = sub i64 %i.cb, %i.cd
  %i.cu = shl nuw i64 %i.ct, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i, i8 0, i64 %i.cu, i1 false), !tbaa !44
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit

.critedge:                                        ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit
  %i.cv = fmul double %i.bq, %i.bq
  %i.cw = fadd double %i.bp, %i.cv
  %i.cx = tail call double @sqrt(double noundef %i.cw) #32 ; 2 uses
  %i.cy = fcmp ult double %i.bq, 0.000000e+00
  %i.cz = fneg double %i.cx
  %storemerge = select i1 %i.cy, double %i.cx, double %i.cz ; 2 uses
  store double %storemerge, ptr %3, align 8, !tbaa !44
  %i.da = fsub double %i.bq, %storemerge          ; 13 uses
  %.sroa.8.32.vec.insert.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.da, i64 0
  %i.db = load ptr, ptr %1, align 8, !tbaa !202   ; 14 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !96 ; 8 uses
  %i.de = ptrtoint ptr %i.db to i64               ; 4 uses
  %i.df = and i64 %i.de, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.df, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %.critedge
  %i.dg = lshr exact i64 %i.de, 3
  %i.dh = and i64 %i.dg, 1
  %i.di = tail call i64 @llvm.smin.i64(i64 %i.dh, i64 %i.dd)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %.critedge
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.di, %bb.j ], [ %i.dd, %.critedge ] ; 11 uses
  %i.dj = sub nsw i64 %i.dd, %.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.dk = sdiv i64 %i.dj, 2
  %i.dl = shl nsw i64 %i.dk, 1                    ; 2 uses
  %i.dm = add nsw i64 %i.dl, %.0.i.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.dn = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %min.iters.check = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader57, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.do = sub i64 %i.de, %i.e
  %i.dp = add i64 %i.do, -9
  %diff.check = icmp ult i64 %i.dp, 15
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader57, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775806 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.da, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %index
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index
  %wide.load = load <2 x double>, ptr %i.dr, align 8, !tbaa !44
  %i.ds = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.ds, ptr %i.dq, align 8, !tbaa !44
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !816

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader57

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader57:         ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %i.du = sub nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %.05.i.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter60 = and i64 %i.du, 3                  ; 2 uses
  %lcmp.mod61.not = icmp eq i64 %xtraiter60, 0
  br i1 %lcmp.mod61.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader57, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.dz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader57 ] ; 3 uses
  %prol.iter62 = phi i64 [ %prol.iter62.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader57 ]
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !44
  %i.dy = fdiv double %i.dx, %i.da
  store double %i.dy, ptr %i.dv, align 8, !tbaa !44
  %i.dz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter62.next = add i64 %prol.iter62, 1     ; 2 uses
  %prol.iter62.cmp.not = icmp eq i64 %prol.iter62.next, %xtraiter60
  br i1 %prol.iter62.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !817

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader57
  %.05.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader57 ], [ %i.dz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ea = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i.i.i.i.i.i
  %i.eb = icmp ugt i64 %i.ea, -4
  br i1 %i.eb, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ev, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !44
  %i.ef = fdiv double %i.ee, %i.da
  store double %i.ef, ptr %i.ec, align 8, !tbaa !44
  %i.eg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.eg
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.eg
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !44
  %i.ek = fdiv double %i.ej, %i.da
  store double %i.ek, ptr %i.eh, align 8, !tbaa !44
  %i.el = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.el
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.el
  %i.eo = load double, ptr %i.en, align 8, !tbaa !44
  %i.ep = fdiv double %i.eo, %i.da
  store double %i.ep, ptr %i.em, align 8, !tbaa !44
  %i.eq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.eq
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.eq
  %i.et = load double, ptr %i.es, align 8, !tbaa !44
  %i.eu = fdiv double %i.et, %i.da
  store double %i.eu, ptr %i.er, align 8, !tbaa !44
  %i.ev = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ev, %.0.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !818

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.ew = icmp sgt i64 %i.dj, 1
  br i1 %i.ew, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i:             ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.ex = shufflevector <2 x double> %.sroa.8.32.vec.insert.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.ey = icmp slt i64 %i.dm, %i.dd
  br i1 %i.ey, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit

end_hunk_0
begin_hunk_1_@_ZN5boost14multiprecision8backends13eval_multiplyILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm512ELm0ELS3_1ELS4_0ES5_Lm512ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_:bb.a
bb.ah:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2ERKS6_.exit113
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !306, !range !161, !noundef !64
  %i.ff = trunc nuw i8 %i.fe to i1
  %i.fg = load i8, ptr %i.fc, align 2, !range !161
  %i.fh = trunc nuw i8 %i.fg to i1
  %or.cond.i102 = select i1 %i.ff, i1 true, i1 %i.fh
  br i1 %or.cond.i102, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit103, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = load i64, ptr %4, align 16
  %i.fl = shl i64 %i.fk, 3
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fl) #40
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit103

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit103: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.aj:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2ERKS6_.exit113
  %i.fm = landingpad { ptr, i32 }
          cleanup
  %i.fn = load i8, ptr %i.fd, align 1, !tbaa !306, !range !161, !noundef !64
  %i.fo = trunc nuw i8 %i.fn to i1
  %i.fp = load i8, ptr %i.fc, align 2, !range !161
  %i.fq = trunc nuw i8 %i.fp to i1
  %or.cond.i = select i1 %i.fo, i1 true, i1 %i.fq
  br i1 %or.cond.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = load i64, ptr %4, align 16
  %i.fu = shl i64 %i.ft, 3
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fu) #40
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit: ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %common.resume

bb.al:                                            ; preds = %bb.ab
  %i.fv = add i64 %i.f, %i.d
  %spec.select.i133 = tail call i64 @llvm.umin.i64(i64 %i.fv, i64 288230376151711744) ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 6 uses
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !306, !range !161, !noundef !64
  %i.fy = trunc nuw i8 %i.fx to i1
  %i.fz = load i64, ptr %0, align 16
  %spec.select.i8.i134 = select i1 %i.fy, i64 8, i64 %i.fz ; 2 uses
  %i.ga = icmp ugt i64 %spec.select.i133, %spec.select.i8.i134
  br i1 %i.ga, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i135, label %bb.aq

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i135: ; preds = %bb.al
  %i.gb = shl nuw nsw i64 %spec.select.i8.i134, 2
  %.sroa.speculated16.i136 = tail call i64 @llvm.umax.i64(i64 %i.gb, i64 %spec.select.i133)
  %.sroa.speculated.i137 = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i136, i64 288230376151711744) ; 2 uses
  %i.gc = shl nuw nsw i64 %.sroa.speculated.i137, 3
  %i.gd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gc) #39 ; 2 uses
  %i.ge = load i8, ptr %i.fw, align 1, !tbaa !306, !range !161, !noundef !64
  %i.gf = trunc nuw i8 %i.ge to i1                ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8            ; 2 uses
  %i.gi = select i1 %i.gf, ptr %0, ptr %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.gk = load i64, ptr %i.gj, align 16, !tbaa !304
  %i.gl = shl i64 %i.gk, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gd, ptr align 8 %i.gi, i64 %i.gl, i1 false)
  br i1 %i.gf, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i135
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.gn = load i8, ptr %i.gm, align 2, !tbaa !307, !range !161, !noundef !64
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gp = load i64, ptr %0, align 16
  %i.gq = shl i64 %i.gp, 3
  tail call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gq) #40
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i135
  store i8 0, ptr %i.fw, align 1, !tbaa !306
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  store i64 %spec.select.i133, ptr %i.gj, align 16, !tbaa !304
  store i64 %.sroa.speculated.i137, ptr %0, align 16, !tbaa !87
  store ptr %i.gd, ptr %i.gg, align 8, !tbaa !87
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit138

bb.aq:                                            ; preds = %bb.al
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %spec.select.i133, ptr %i.gr, align 16, !tbaa !304
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit138

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit138: ; preds = %bb.ap, %bb.aq
  %i.gs = icmp ugt i64 %i.d, 39
  %i.gt = icmp ugt i64 %i.f, 39
  %or.cond = and i1 %i.gs, %i.gt
  br i1 %or.cond, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit138
  tail call void @_ZN5boost14multiprecision8backends15setup_karatsubaILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_fixed_precisionINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEvE4typeERS9_RKS9_SE_(ptr noundef nonnull align 16 dereferenceable(75) %0, ptr noundef nonnull align 16 dereferenceable(75) %1, ptr noundef nonnull align 16 dereferenceable(75) %2)
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.gv = load i8, ptr %i.gu, align 8, !tbaa !305, !range !161, !noundef !64
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.gx = load i8, ptr %i.gw, align 8, !tbaa !305, !range !161, !noundef !64
  %i.gy = icmp ne i8 %i.gv, %i.gx                 ; 2 uses
  %i.gz = zext i1 %i.gy to i8
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i8 %i.gz, ptr %i.ha, align 8, !tbaa !305
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hc = load i64, ptr %i.hb, align 16
  %i.hd = icmp eq i64 %i.hc, 1
  %or.cond.i139 = select i1 %i.gy, i1 %i.hd, i1 false
  br i1 %or.cond.i139, label %bb.as, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.as:                                            ; preds = %bb.ar
  %i.he = load i8, ptr %i.fw, align 1, !tbaa !306, !range !161, !noundef !64
  %i.hf = trunc nuw i8 %i.he to i1
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = select i1 %i.hf, ptr %0, ptr %i.hh
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !313
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %bb.at, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.at:                                            ; preds = %bb.as
  store i8 0, ptr %i.ha, align 8, !tbaa !305
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.au:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit138
  %i.hl = load i8, ptr %i.fw, align 1, !tbaa !306, !range !161, !noundef !64
  %i.hm = trunc nuw i8 %i.hl to i1
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8
  %i.hp = select i1 %i.hm, ptr %0, ptr %i.ho      ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.hr = shl nuw nsw i64 %spec.select.i133, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.hp, i8 0, i64 %i.hr, i1 false)
  %.not = icmp eq i64 %i.d, 0
  %.not158 = icmp eq i64 %i.f, 0
  %or.cond200 = select i1 %.not, i1 true, i1 %.not158
  br i1 %or.cond200, label %._crit_edge154, label %.preheader.us

.preheader.us:                                    ; preds = %bb.au, %bb.ay
  %.088153.us = phi i64 [ %i.in, %bb.ay ], [ 0, %bb.au ] ; 4 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.088153.us
  %i.ht = getelementptr [8 x i8], ptr %i.hp, i64 %.088153.us
  br label %bb.av

bb.av:                                            ; preds = %.preheader.us, %bb.av
  %.0151.us = phi i64 [ 0, %.preheader.us ], [ %i.ih, %bb.av ] ; 3 uses
  %.1150.us = phi i128 [ 0, %.preheader.us ], [ %i.ig, %bb.av ]
  %i.hu = load i64, ptr %i.hs, align 8, !tbaa !313
  %i.hv = zext i64 %i.hu to i128
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.0151.us
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !313
  %i.hy = zext i64 %i.hx to i128
  %i.hz = mul nuw i128 %i.hy, %i.hv
  %i.ia = add nuw i128 %i.hz, %.1150.us
  %i.ib = getelementptr [8 x i8], ptr %i.ht, i64 %.0151.us ; 2 uses
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !313
  %i.id = zext i64 %i.ic to i128
  %i.ie = add nuw i128 %i.ia, %i.id               ; 2 uses
  %i.if = trunc i128 %i.ie to i64
  store i64 %i.if, ptr %i.ib, align 8, !tbaa !313
  %i.ig = lshr i128 %i.ie, 64                     ; 3 uses
  %i.ih = add nuw i64 %.0151.us, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ih, %i.f
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.av, !llvm.loop !1593

bb.aw:                                            ; preds = %._crit_edge.us
  %i.ii = add i64 %i.f, %.088153.us               ; 2 uses
  %i.ij = load i64, ptr %i.hq, align 16, !tbaa !304
  %i.ik = icmp ult i64 %i.ii, %i.ij
  br i1 %i.ik, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.il = trunc nuw i128 %i.ig to i64
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.ii
  store i64 %i.il, ptr %i.im, align 8, !tbaa !313
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %._crit_edge.us
  %i.in = add nuw i64 %.088153.us, 1              ; 2 uses
  %exitcond162.not = icmp eq i64 %i.in, %i.d
  br i1 %exitcond162.not, label %._crit_edge154, label %.preheader.us, !llvm.loop !1594

._crit_edge.us:                                   ; preds = %bb.av
  %.not.us = icmp eq i128 %i.ig, 0
  br i1 %.not.us, label %bb.ay, label %bb.aw

._crit_edge154:                                   ; preds = %bb.ay, %bb.au
  %i.io = load i8, ptr %i.fw, align 1, !tbaa !306, !range !161, !noundef !64
  %i.ip = trunc nuw i8 %i.io to i1
  %i.iq = load ptr, ptr %i.hn, align 8
  %i.ir = select i1 %i.ip, ptr %0, ptr %i.iq      ; 3 uses
  %.promoted = load i64, ptr %i.hq, align 16, !tbaa !304
  %i.is = add i64 %.promoted, -1                  ; 3 uses
  %.not.i108155 = icmp eq i64 %i.is, 0
  br i1 %.not.i108155, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %._crit_edge154
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.is
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !313
  %.not2.i202 = icmp eq i64 %i.iu, 0
  br i1 %.not2.i202, label %.lr.ph203, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit

.lr.ph:                                           ; preds = %.lr.ph203
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.iy
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !313
  %.not2.i = icmp eq i64 %i.iw, 0
  br i1 %.not2.i, label %.lr.ph203, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit, !llvm.loop !22

.lr.ph203:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ix = phi i64 [ %i.iy, %.lr.ph ], [ %i.is, %.lr.ph.preheader ] ; 4 uses
  %i.iy = add i64 %i.ix, -1                       ; 3 uses
  %.not.i108 = icmp eq i64 %i.iy, 0
  br i1 %.not.i108, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit.loopexit, label %.lr.ph, !llvm.loop !22

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit.loopexit: ; preds = %.lr.ph203
  store i64 %i.ix, ptr %i.hq, align 16, !tbaa !304
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit, !llvm.loop !22

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit: ; preds = %.lr.ph
  store i64 %i.ix, ptr %i.hq, align 16, !tbaa !304
  %i.iz = icmp eq i64 %i.ix, 1
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit: ; preds = %.lr.ph.preheader, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit.loopexit, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit, %._crit_edge154
  %.lcssa = phi i1 [ true, %._crit_edge154 ], [ %i.iz, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit ], [ true, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit.loopexit ], [ false, %.lr.ph.preheader ]
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.jb = load i8, ptr %i.ja, align 8, !tbaa !305, !range !161, !noundef !64
  %i.jc = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.jd = load i8, ptr %i.jc, align 8, !tbaa !305, !range !161, !noundef !64
  %i.je = icmp ne i8 %i.jb, %i.jd                 ; 2 uses
  %i.jf = zext i1 %i.je to i8
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i8 %i.jf, ptr %i.jg, align 8, !tbaa !305
  %or.cond.i141 = and i1 %.lcssa, %i.je
  br i1 %or.cond.i141, label %bb.az, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.az:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit
  %i.jh = load i64, ptr %i.ir, align 8, !tbaa !313
  %i.ji = icmp eq i64 %i.jh, 0
  br i1 %i.ji, label %bb.ba, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.ba:                                            ; preds = %bb.az
  store i8 0, ptr %i.jg, align 8, !tbaa !305
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit: ; preds = %bb.ba, %bb.az, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit, %bb.at, %bb.as, %bb.ar, %bb.m, %bb.l, %bb.k, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit103, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit107, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit118
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends13eval_multiplyILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm512ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_RKy(ptr noundef nonnull align 16 dereferenceable(75) %0, ptr noundef nonnull align 16 dereferenceable(75) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !313
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 4 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !306, !range !161, !noundef !64
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = load i64, ptr %0, align 16
  %i.f = icmp ne i64 %i.e, 0
  %.not52 = select i1 %i.d, i1 true, i1 %i.f
  br i1 %.not52, label %bb.g, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i:   ; preds = %bb.b
  %i.g = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #39
          to label %.noexc unwind label %bb.h     ; 3 uses

.noexc:                                           ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.h = load i8, ptr %i.b, align 1, !tbaa !306, !range !161, !noundef !64
  %i.i = trunc nuw i8 %i.h to i1                  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = select i1 %i.i, ptr %0, ptr %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.n = load i64, ptr %i.m, align 16, !tbaa !304
  %i.o = shl i64 %i.n, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.g, ptr align 8 %i.l, i64 %i.o, i1 false)
  br i1 %i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.q = load i8, ptr %i.p, align 2, !tbaa !307, !range !161, !noundef !64
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load i64, ptr %0, align 16
  %i.t = shl i64 %i.s, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.t) #40
  %.pre57.pre = load i8, ptr %i.b, align 1, !tbaa !306, !range !161
  %i.u = trunc nuw i8 %.pre57.pre to i1
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %.noexc
  store i8 0, ptr %i.b, align 1, !tbaa !306
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre57 = phi i1 [ false, %bb.e ], [ %i.u, %bb.d ]
  store i64 1, ptr %i.m, align 16, !tbaa !304
  store i64 1, ptr %0, align 16, !tbaa !87
  store ptr %i.g, ptr %i.j, align 8, !tbaa !87
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.g:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 1, ptr %i.v, align 16, !tbaa !304
  %.phi.trans.insert58 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre59 = load ptr, ptr %.phi.trans.insert58, align 8
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit

bb.h:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #38
  unreachable

_ZN5boost14multiprecision8backends15cpp_int_backendILm512ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit: ; preds = %bb.g, %bb.f
  %.pre-phi = phi i1 [ %i.d, %bb.g ], [ %.pre57, %bb.f ]
  %i.y = phi ptr [ %.pre59, %bb.g ], [ %i.g, %bb.f ]
  %i.z = select i1 %.pre-phi, ptr %0, ptr %i.y
  store i64 0, ptr %i.z, align 8, !tbaa !313
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.aa, align 8, !tbaa !305
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit

bb.i:                                             ; preds = %bb.a
  %.not37 = icmp eq ptr %1, %0
  br i1 %.not37, label %._ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44_crit_edge, label %bb.j

._ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44_crit_edge: ; preds = %bb.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load i64, ptr %.phi.trans.insert, align 16, !tbaa !304
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ac = load i64, ptr %i.ab, align 16, !tbaa !304
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 288230376151711744) ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !306, !range !161, !noundef !64
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = load i64, ptr %0, align 16
  %spec.select.i8.i40 = select i1 %i.af, i64 8, i64 %i.ag ; 2 uses
  %i.ah = icmp ugt i64 %spec.select.i, %spec.select.i8.i40
  br i1 %i.ah, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i41, label %bb.n

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i41: ; preds = %bb.j
  %i.ai = shl nuw nsw i64 %spec.select.i8.i40, 2
  %.sroa.speculated16.i42 = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 %spec.select.i)
  %.sroa.speculated.i43 = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i42, i64 288230376151711744) ; 2 uses
  %i.aj = shl nuw nsw i64 %.sroa.speculated.i43, 3
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #39 ; 3 uses
  %i.al = load i8, ptr %i.ad, align 1, !tbaa !306, !range !161, !noundef !64
  %i.am = trunc nuw i8 %i.al to i1                ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = select i1 %i.am, ptr %0, ptr %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 16, !tbaa !304
  %i.as = shl i64 %i.ar, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr align 8 %i.ap, i64 %i.as, i1 false)
  br i1 %i.am, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i41
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.au = load i8, ptr %i.at, align 2, !tbaa !307, !range !161, !noundef !64
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = load i64, ptr %0, align 16
  %i.ax = shl i64 %i.aw, 3
  tail call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ax) #40
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread

bb.m:                                             ; preds = %bb.k, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i41
  store i8 0, ptr %i.ad, align 1, !tbaa !306
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread: ; preds = %bb.l, %bb.m
  store i64 %spec.select.i, ptr %i.aq, align 16, !tbaa !304
  store i64 %.sroa.speculated.i43, ptr %0, align 16, !tbaa !87
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !87
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !306, !range !161, !noundef !64
  %i.ba = trunc nuw i8 %i.az to i1                ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = select i1 %i.ba, ptr %0, ptr %i.ak      ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.idx64 = shl nuw nsw i64 %spec.select.i, 3
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx64
  br label %.lr.ph.preheader

bb.n:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %spec.select.i, ptr %i.bf, align 16, !tbaa !304
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44

_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44: ; preds = %._ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44_crit_edge, %bb.n
  %i.bg = phi i64 [ %.pre, %._ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44_crit_edge ], [ %spec.select.i, %bb.n ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 3 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !306, !range !161, !noundef !64
  %i.bj = trunc nuw i8 %i.bi to i1                ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = select i1 %i.bj, ptr %0, ptr %i.bl      ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.idx = shl nuw nsw i64 %i.bg, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx
  %.not3853 = icmp eq i64 %i.bg, 0
  br i1 %.not3853, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44
  %i.bp = phi ptr [ %i.be, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread ], [ %i.bo, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44 ]
  %i.bq = phi ptr [ %i.bd, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread ], [ %i.bn, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44 ] ; 6 uses
  %i.br = phi ptr [ %i.bc, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread ], [ %i.bm, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44 ]
  %i.bs = phi ptr [ %i.bb, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread ], [ %i.bk, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44 ] ; 6 uses
  %i.bt = phi i1 [ %i.ba, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread ], [ %i.bj, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44 ]
  %i.bu = phi ptr [ %i.ay, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread ], [ %i.bh, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44 ] ; 6 uses
  %i.bv = phi i64 [ %spec.select.i, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44.thread ], [ %i.bg, %_ZN5boost14multiprecision8backends12cpp_int_baseILm512ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit44 ] ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 73
end_hunk_1
