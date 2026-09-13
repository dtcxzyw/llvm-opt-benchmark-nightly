Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/rigid_alignment?download=true
inline.NumInlined: 13524
inline.NumDeleted: 6899
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 128
loop-unroll.NumUnrolled: 143
begin_hunk_0_@_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS_11VectorBlockINS1_IS3_Lin1ELi1ELb1EEELin1EEEEEvRKT_RKdPd:bb.a
  %wide.load92 = load <2 x double>, ptr %i.gg, align 8, !tbaa !21, !alias.scope !1006
  %wide.load93 = load <2 x double>, ptr %i.gh, align 8, !tbaa !21, !alias.scope !1006
  %i.gi = fmul <2 x double> %broadcast.splat, %wide.load92
  %i.gj = fmul <2 x double> %broadcast.splat, %wide.load93
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 16 ; 2 uses
  %wide.load94 = load <2 x double>, ptr %i.gf, align 8, !tbaa !21, !alias.scope !1007, !noalias !1006
  %wide.load95 = load <2 x double>, ptr %i.gk, align 8, !tbaa !21, !alias.scope !1007, !noalias !1006
  %i.gl = fsub <2 x double> %wide.load94, %i.gi
  %i.gm = fsub <2 x double> %wide.load95, %i.gj
  store <2 x double> %i.gl, ptr %i.gf, align 8, !tbaa !21, !alias.scope !1007, !noalias !1006
  store <2 x double> %i.gm, ptr %i.gk, align 8, !tbaa !21, !alias.scope !1007, !noalias !1006
  %index.next96 = add nuw i64 %index91, 4         ; 2 uses
  %i.gn = icmp eq i64 %index.next96, %n.vec89
  br i1 %i.gn, label %middle.block97, label %vector.body90, !llvm.loop !995

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
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !21
  %i.gs = fmul double %i.gb, %i.gr
  %i.gt = load double, ptr %i.gp, align 8, !tbaa !21
  %i.gu = fsub double %i.gt, %i.gs
  store double %i.gu, ptr %i.gp, align 8, !tbaa !21
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
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !21
  %i.hb = fmul double %i.gb, %i.ha
  %i.hc = load double, ptr %i.gy, align 8, !tbaa !21
  %i.hd = fsub double %i.hc, %i.hb
  store double %i.hd, ptr %i.gy, align 8, !tbaa !21
  %i.he = add nuw nsw i64 %.05.i.i.i.i.i.i9, 1    ; 2 uses
  %i.hf = mul nsw i64 %i.he, %i.ga
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %i.hf ; 2 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.he
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !21
  %i.hj = fmul double %i.gb, %i.hi
  %i.hk = load double, ptr %i.hg, align 8, !tbaa !21
  %i.hl = fsub double %i.hk, %i.hj
  store double %i.hl, ptr %i.hg, align 8, !tbaa !21
  %i.hm = add nuw nsw i64 %.05.i.i.i.i.i.i9, 2    ; 2 uses
  %exitcond.not.i.i.i.i.i.i10.1 = icmp eq i64 %i.hm, %i.gc
  br i1 %exitcond.not.i.i.i.i.i.i10.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i8, !llvm.loop !996

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i8.prol.loopexit, %.lr.ph.i.i.i.i.i.i8, %middle.block97
  %.pre63 = load double, ptr %2, align 8, !tbaa !21, !noalias !1008
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit: ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit
  %i.hn = phi double [ %.pre63, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit ], [ %i.gb, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.ho = load i64, ptr %.sroa.034.sroa.4.0..sroa_idx, align 8, !tbaa !34, !noalias !1008
  %i.hp = getelementptr inbounds nuw i8, ptr %14, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.hp, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 104, i1 false)
  %i.hq = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.ho, ptr %i.hq, align 8, !alias.scope !1009
  %i.hr = getelementptr inbounds nuw i8, ptr %14, i64 24
  store double %i.hn, ptr %i.hr, align 8, !tbaa !66, !alias.scope !1009
  %i.hs = getelementptr inbounds nuw i8, ptr %14, i64 144 ; 2 uses
  store ptr %3, ptr %i.hs, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 160
  store i64 %i.r, ptr %.sroa.10.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZN5Eigen8internal26outer_product_selector_runINS_5BlockINS2_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS2_INS2_IS4_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS3_IdLi1ELin1ELi1ELi1ELin1EEELi0ENS_6StrideILi0ELi0EEEEENS0_20generic_product_implISK_SP_NS_10DenseShapeESR_Li5EE3subEEEvRT_RKT0_RKT1_RKT2_RKNS0_10false_typeE(ptr noundef nonnull align 8 dereferenceable(104) %13, ptr noundef nonnull align 8 dereferenceable(176) %14, ptr noundef nonnull align 8 dereferenceable(26) %i.hs, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEl(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !118
  %.not.i.i.i = icmp eq i64 %1, %i.b
  br i1 %.not.i.i.i, label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !105
  tail call void @free(ptr noundef %i.c) #24
  %i.d = icmp sgt i64 %1, 0
  br i1 %i.d, label %bb.c, label %.sink.split.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = icmp samesign ugt i64 %1, 4611686018427387903
  br i1 %i.e, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.f, align 8, !tbaa !27
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i: ; preds = %bb.c
  %i.g = shl nuw i64 %1, 2
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #25 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %.sink.split.i.i.i

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !27
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #26
  unreachable

.sink.split.i.i.i:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i, %bb.b
  %.sink.i.i.i = phi ptr [ %i.h, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i ], [ null, %bb.b ]
  store ptr %.sink.i.i.i, ptr %0, align 8, !tbaa !105
  br label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit

_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit: ; preds = %bb.a, %.sink.split.i.i.i
  store i64 %1, ptr %i.a, align 8, !tbaa !118
  %i.k = trunc i64 %1 to i32
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.i, label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEv.exit

.lr.ph.i:                                         ; preds = %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit
  %i.m = load ptr, ptr %0, align 8, !tbaa !105    ; 2 uses
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
  store <4 x i32> %vec.ind, ptr %i.n, align 4, !tbaa !63
  store <4 x i32> %step.add, ptr %i.o, align 4, !tbaa !63
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !1010

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
  store i32 %i.r, ptr %i.q, align 4, !tbaa !63
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEv.exit, label %scalar.ph, !llvm.loop !1011

_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEv.exit: ; preds = %scalar.ph, %middle.block, %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RdSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !34   ; 7 uses
  %i.c = add nsw i64 %i.b, -1                     ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !167    ; 5 uses
  %i.e = ptrtoaddr ptr %i.d to i64                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 23 uses
  %or.cond = icmp eq i64 %i.b, 1
  br i1 %or.cond, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread, label %bb.b

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread: ; preds = %bb.a
  %4 = load double, ptr %i.d, align 8, !tbaa !21
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv i64 %i.c, 4
  %i.h = shl nsw i64 %i.g, 2                      ; 3 uses
  %i.i = sdiv i64 %i.c, 2
  %i.j = shl nsw i64 %i.i, 1                      ; 6 uses
  %.not.i.i.i.i = icmp ult i64 %i.b, 3
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load <2 x double>, ptr %i.f, align 1, !tbaa !30 ; 2 uses
  %i.l = fmul <2 x double> %i.k, %i.k             ; 3 uses
  %i.m = icmp sgt i64 %i.b, 4
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.o = load <2 x double>, ptr %i.n, align 1, !tbaa !30 ; 2 uses
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
  %i.u = load <2 x double>, ptr %i.t, align 1, !tbaa !30 ; 2 uses
  %i.v = fmul <2 x double> %i.u, %i.u
  %i.w = fadd <2 x double> %.07278.i.i.i.i, %i.v  ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.054.in79.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load <2 x double>, ptr %i.y, align 1, !tbaa !30 ; 2 uses
  %i.aa = fmul <2 x double> %i.z, %i.z
  %i.ab = fadd <2 x double> %.07577.i.i.i.i, %i.aa ; 2 uses
  %.054.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i, 4 ; 2 uses
  %i.ac = icmp slt i64 %.054.i.i.i.i, %i.h
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1012

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  %i.ae = load <2 x double>, ptr %i.ad, align 1, !tbaa !30 ; 2 uses
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
  %i.ao = load double, ptr %i.an, align 8, !tbaa !21 ; 2 uses
  %i.ap = fmul double %i.ao, %i.ao
  %i.aq = fadd double %.182.i.i.i.i.prol, %i.ap   ; 3 uses
  %i.ar = add nsw i64 %.05283.i.i.i.i.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.prol, !llvm.loop !1013

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
  %i.au = load double, ptr %i.at, align 8, !tbaa !21 ; 2 uses
  %i.av = fmul double %i.au, %i.au
  %i.aw = fadd double %.182.i.i.i.i, %i.av
  %i.ax = getelementptr [8 x i8], ptr %i.f, i64 %.05283.i.i.i.i
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = load double, ptr %i.ay, align 8, !tbaa !21 ; 2 uses
  %i.ba = fmul double %i.az, %i.az
  %i.bb = fadd double %i.aw, %i.ba
  %i.bc = getelementptr [8 x i8], ptr %i.f, i64 %.05283.i.i.i.i
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  %i.be = load double, ptr %i.bd, align 8, !tbaa !21 ; 2 uses
  %i.bf = fmul double %i.be, %i.be
  %i.bg = fadd double %i.bb, %i.bf
  %i.bh = getelementptr [8 x i8], ptr %i.f, i64 %.05283.i.i.i.i
  %i.bi = getelementptr i8, ptr %i.bh, i64 24
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !21 ; 2 uses
  %i.bk = fmul double %i.bj, %i.bj
  %i.bl = fadd double %i.bg, %i.bk                ; 2 uses
  %i.bm = add nsw i64 %.05283.i.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.bm, %i.c
  br i1 %exitcond.not.i.i.i.i.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit, label %.lr.ph85.i.i.i.i, !llvm.loop !1014

bb.g:                                             ; preds = %bb.b
  %i.bn = load double, ptr %i.f, align 8, !tbaa !21 ; 2 uses
  %i.bo = fmul double %i.bn, %i.bn
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit: ; preds = %.lr.ph85.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i, %bb.g, %bb.f
  %i.bp = phi double [ %i.bo, %bb.g ], [ %i.ah, %bb.f ], [ %.lcssa.unr, %.lr.ph85.i.i.i.i.prol.loopexit ], [ %i.bl, %.lr.ph85.i.i.i.i ] ; 2 uses
  %i.bq = load double, ptr %i.d, align 8, !tbaa !21 ; 6 uses
  %i.br = fcmp ugt double %i.bp, f0x0010000000000000
  br i1 %i.br, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread
  %i.bs = phi double [ %4, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit.thread ], [ %i.bq, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit ]
  store double 0.000000e+00, ptr %2, align 8, !tbaa !21
  store double %i.bs, ptr %3, align 8, !tbaa !21
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bu = load ptr, ptr %1, align 8, !tbaa !169   ; 4 uses
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !34 ; 4 uses
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
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bu, i8 0, i64 %i.cg, i1 false), !tbaa !21
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
  tail call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.co, i1 false), !tbaa !30
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
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep1.i, i8 0, i64 %i.cu, i1 false), !tbaa !21
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE7setZeroEv.exit

.critedge:                                        ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEE11squaredNormEv.exit
  %i.cv = fmul double %i.bq, %i.bq
  %i.cw = fadd double %i.bp, %i.cv
  %i.cx = tail call double @sqrt(double noundef %i.cw) #24 ; 2 uses
  %i.cy = fcmp ult double %i.bq, 0.000000e+00
  %i.cz = fneg double %i.cx
  %storemerge = select i1 %i.cy, double %i.cx, double %i.cz ; 2 uses
  store double %storemerge, ptr %3, align 8, !tbaa !21
  %i.da = fsub double %i.bq, %storemerge          ; 13 uses
  %.sroa.8.32.vec.insert.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.da, i64 0
  %i.db = load ptr, ptr %1, align 8, !tbaa !169   ; 14 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !34 ; 8 uses
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
  %wide.load = load <2 x double>, ptr %i.dr, align 8, !tbaa !21
  %i.ds = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.ds, ptr %i.dq, align 8, !tbaa !21
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !1015

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
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !21
  %i.dy = fdiv double %i.dx, %i.da
  store double %i.dy, ptr %i.dv, align 8, !tbaa !21
  %i.dz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter62.next = add i64 %prol.iter62, 1     ; 2 uses
  %prol.iter62.cmp.not = icmp eq i64 %prol.iter62.next, %xtraiter60
  br i1 %prol.iter62.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !1016

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader57
  %.05.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader57 ], [ %i.dz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ea = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i.i.i.i.i.i
  %i.eb = icmp ugt i64 %i.ea, -4
  br i1 %i.eb, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ev, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !21
  %i.ef = fdiv double %i.ee, %i.da
  store double %i.ef, ptr %i.ec, align 8, !tbaa !21
  %i.eg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.eg
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.eg
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !21
  %i.ek = fdiv double %i.ej, %i.da
  store double %i.ek, ptr %i.eh, align 8, !tbaa !21
  %i.el = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.el
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.el
  %i.eo = load double, ptr %i.en, align 8, !tbaa !21
  %i.ep = fdiv double %i.eo, %i.da
  store double %i.ep, ptr %i.em, align 8, !tbaa !21
  %i.eq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.eq
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.eq
  %i.et = load double, ptr %i.es, align 8, !tbaa !21
  %i.eu = fdiv double %i.et, %i.da
  store double %i.eu, ptr %i.er, align 8, !tbaa !21
  %i.ev = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ev, %.0.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEELin1ELi1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS6_IKSA_Lin1ELi1ELb0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1017

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
begin_hunk_1_@_ZNK5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE29applyZAdjointOnTheLeftInPlaceINS1_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_:bb.a
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.thread.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i8.i, !llvm.loop !1179

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.thread.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i8.i
  br i1 %lcmp.mod.not, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.thread, label %.lr.ph.i.i.i.i.i.i.i8.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i8.i.epil.preheader:           ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.thread.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i8.i.preheader
  %.01724.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i8.i.preheader ], [ %i.gd, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.thread.unr-lcssa ]
  %.02223.i.i.i.i.i.i.i.i.epil.init = phi double [ %i.ex, %.lr.ph.i.i.i.i.i.i.i8.i.preheader ], [ %i.gc, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.thread.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod155)
  br label %.lr.ph.i.i.i.i.i.i.i8.i.epil

.lr.ph.i.i.i.i.i.i.i8.i.epil:                     ; preds = %.lr.ph.i.i.i.i.i.i.i8.i.epil, %.lr.ph.i.i.i.i.i.i.i8.i.epil.preheader
  %.01724.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.gl, %.lr.ph.i.i.i.i.i.i.i8.i.epil ], [ %.01724.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i8.i.epil.preheader ] ; 3 uses
  %.02223.i.i.i.i.i.i.i.i.epil = phi double [ %i.gk, %.lr.ph.i.i.i.i.i.i.i8.i.epil ], [ %.02223.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i8.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i8.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i8.i.epil.preheader ]
  %i.ge = mul nsw i64 %.01724.i.i.i.i.i.i.i.i.epil, %i.bu
  %i.gf = getelementptr [8 x i8], ptr %gep, i64 %i.ge
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !21
  %i.gh = getelementptr [8 x i8], ptr %i.bz, i64 %.01724.i.i.i.i.i.i.i.i.epil
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !21
  %i.gj = fmul double %i.gg, %i.gi
  %i.gk = fadd double %.02223.i.i.i.i.i.i.i.i.epil, %i.gj ; 2 uses
  %i.gl = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.thread, label %.lr.ph.i.i.i.i.i.i.i8.i.epil, !llvm.loop !1180

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i8.i.epil, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.thread.unr-lcssa
  %.lcssa150 = phi double [ %i.gc, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.thread.unr-lcssa ], [ %i.gk, %.lr.ph.i.i.i.i.i.i.i8.i.epil ]
  %i.gm = load double, ptr %i.br, align 8, !tbaa !21 ; 2 uses
  %i.gn = fadd double %.lcssa150, %i.gm           ; 2 uses
  %i.go = fmul double %i.gn, %i.et
  %i.gp = fsub double %i.gm, %i.go
  store double %i.gp, ptr %i.br, align 8, !tbaa !21
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i: ; preds = %bb.h
  %i.gq = load double, ptr %i.br, align 8, !tbaa !21 ; 2 uses
  %i.gr = fadd double %i.ex, %i.gq                ; 2 uses
  %i.gs = fmul double %i.gr, %i.et
  %i.gt = fsub double %i.gq, %i.gs
  store double %i.gt, ptr %i.br, align 8, !tbaa !21
  br i1 %i.cb, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.thread, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i
  %i.gu = phi double [ %i.gn, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i.thread ], [ %i.gr, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i ] ; 4 uses
  %i.gv = load double, ptr %i.es, align 8, !tbaa !21, !noalias !1193 ; 4 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %found.conflict
  br i1 %brmerge, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader148, label %vector.ph133

vector.ph133:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %broadcast.splatinsert135 = insertelement <2 x double> poison, double %i.gu, i64 0
  %broadcast.splat136 = shufflevector <2 x double> %broadcast.splatinsert135, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert137 = insertelement <2 x double> poison, double %i.gv, i64 0
  %broadcast.splat138 = shufflevector <2 x double> %broadcast.splatinsert137, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph133
  %index140 = phi i64 [ 0, %vector.ph133 ], [ %index.next144, %vector.body139 ] ; 3 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %index140 ; 3 uses
  %i.gx = getelementptr [8 x i8], ptr %gep, i64 %index140 ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gx, i64 16
  %wide.load = load <2 x double>, ptr %i.gx, align 8, !tbaa !21, !alias.scope !1194
  %wide.load141 = load <2 x double>, ptr %i.gy, align 8, !tbaa !21, !alias.scope !1194
  %i.gz = fmul <2 x double> %broadcast.splat138, %wide.load
  %i.ha = fmul <2 x double> %broadcast.splat138, %wide.load141
  %i.hb = fmul <2 x double> %i.gz, %broadcast.splat136
  %i.hc = fmul <2 x double> %i.ha, %broadcast.splat136
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gw, i64 16 ; 2 uses
  %wide.load142 = load <2 x double>, ptr %i.gw, align 8, !tbaa !21, !alias.scope !1195, !noalias !1194
  %wide.load143 = load <2 x double>, ptr %i.hd, align 8, !tbaa !21, !alias.scope !1195, !noalias !1194
  %i.he = fsub <2 x double> %wide.load142, %i.hb
  %i.hf = fsub <2 x double> %wide.load143, %i.hc
  store <2 x double> %i.he, ptr %i.gw, align 8, !tbaa !21, !alias.scope !1195, !noalias !1194
  store <2 x double> %i.hf, ptr %i.hd, align 8, !tbaa !21, !alias.scope !1195, !noalias !1194
  %index.next144 = add nuw i64 %index140, 4       ; 2 uses
  %i.hg = icmp eq i64 %index.next144, %n.vec134
  br i1 %i.hg, label %middle.block145, label %vector.body139, !llvm.loop !1186

middle.block145:                                  ; preds = %vector.body139
  br i1 %cmp.n146, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader148

.lr.ph.i.i.i.i.i.i.i.i.i.preheader148:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block145
  %.05.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %n.vec134, %middle.block145 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 5 uses
  br i1 %lcmp.mod157.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader148
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.05.i.i.i.i.i.i.i.i.i.ph ; 2 uses
  %i.hi = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.ph, %i.bu
  %i.hj = getelementptr [8 x i8], ptr %gep, i64 %i.hi
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !21
  %i.hl = fmul double %i.gv, %i.hk
  %i.hm = fmul double %i.hl, %i.gu
  %i.hn = load double, ptr %i.hh, align 8, !tbaa !21
  %i.ho = fsub double %i.hn, %i.hm
  store double %i.ho, ptr %i.hh, align 8, !tbaa !21
  %i.hp = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader148
  %.05.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader148 ], [ %i.hp, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.hq = icmp eq i64 %i.cl, %.05.i.i.i.i.i.i.i.i.i.ph
  br i1 %i.hq, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ii, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.05.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.hs = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i, %i.bu
  %i.ht = getelementptr [8 x i8], ptr %gep, i64 %i.hs
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !21
  %i.hv = fmul double %i.gv, %i.hu
  %i.hw = fmul double %i.hv, %i.gu
  %i.hx = load double, ptr %i.hr, align 8, !tbaa !21
  %i.hy = fsub double %i.hx, %i.hw
  store double %i.hy, ptr %i.hr, align 8, !tbaa !21
  %i.hz = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.hz ; 2 uses
  %i.ib = mul nsw i64 %i.hz, %i.bu
  %i.ic = getelementptr [8 x i8], ptr %gep, i64 %i.ib
  %i.id = load double, ptr %i.ic, align 8, !tbaa !21
  %i.ie = fmul double %i.gv, %i.id
  %i.if = fmul double %i.ie, %i.gu
  %i.ig = load double, ptr %i.ia, align 8, !tbaa !21
  %i.ih = fsub double %i.ig, %i.if
  store double %i.ih, ptr %i.ia, align 8, !tbaa !21
  %i.ii = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.ii, %i.bp
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !1187

_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block145, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELi1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNSB_IKNS_5BlockIKNSC_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELin1ELi1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.i, %bb.g
  br i1 %.not, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.02899 ; 2 uses
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !21
  %i.il = load double, ptr %i.br, align 8, !tbaa !21
  store double %i.il, ptr %i.ij, align 8, !tbaa !21
  store double %i.ik, ptr %i.br, align 8, !tbaa !21
  br label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit: ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE25applyHouseholderOnTheLeftINS_9TransposeIKNS1_IKNS1_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd.exit, %bb.i
  %i.im = add nuw nsw i64 %.02899, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.im, %.lcssa127
  br i1 %exitcond.not, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit._crit_edge, label %.lr.ph.split, !llvm.loop !1177
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Product.2147", align 8 ; 8 uses
  %5 = alloca %"struct.Eigen::internal::sub_assign_op", align 1 ; 3 uses
  %6 = alloca %"struct.Eigen::internal::evaluator.2043", align 8 ; 4 uses
  %7 = alloca %"struct.Eigen::internal::evaluator.389", align 8 ; 5 uses
  %8 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.2047", align 8 ; 7 uses
  %9 = alloca %"struct.Eigen::internal::mul_assign_op", align 1 ; 3 uses
  %10 = alloca %"class.Eigen::Block.1952", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !34   ; 9 uses
  %i.c = icmp eq i64 %i.b, 1
  %i.d = load double, ptr %2, align 8, !tbaa !21  ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = fsub double 1.000000e+00, %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store double %i.e, ptr %6, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.f = load ptr, ptr %0, align 8, !tbaa !33
  store ptr %i.f, ptr %7, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !111, !nonnull !89, !align !110
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !18
  store i64 %i.k, ptr %i.g, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store ptr %7, ptr %8, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %6, ptr %i.l, align 8, !tbaa !1223
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %9, ptr %i.m, align 8, !tbaa !178
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %0, ptr %i.n, align 8, !tbaa !53
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEEEENS3_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS5_IdLin1ELin1ELi0ELin1ELi1EEEEEEENS0_13mul_assign_opIddEELi0EEELi4ELi0EE3runERSH_(ptr noundef nonnull align 8 dereferenceable(32) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.o = fcmp une double %i.d, 0.000000e+00
  br i1 %i.o, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !34   ; 30 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.r = add nsw i64 %i.b, -1                     ; 6 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !33     ; 14 uses
  %i.t = getelementptr i8, ptr %i.s, i64 8        ; 11 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.t, ptr %10, align 8, !tbaa !198
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.r, ptr %i.v, align 8, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %i.q, ptr %i.w, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.x, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 80
  store i64 1, ptr %i.y, align 8, !tbaa !34
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 88
  store i64 0, ptr %i.z, align 8, !tbaa !34
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !111
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !18 ; 10 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 96
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !1228
  %.sroa.042.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 25 uses
  %.sroa.042.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = icmp sgt i64 %i.q, 0
  br i1 %i.af, label %.split.i.i.i.i.i.i.i.i, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit

.split.i.i.i.i.i.i.i.i:                           ; preds = %bb.d
  %i.ag = sdiv i64 %i.r, 4
  %i.ah = shl nsw i64 %i.ag, 2                    ; 4 uses
  %i.ai = sdiv i64 %i.r, 2
  %i.aj = shl nsw i64 %i.ai, 1                    ; 10 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.042.sroa.0.0.copyload, i64 16
  %i.al = icmp sgt i64 %i.b, 8
  %i.am = icmp sgt i64 %i.aj, %i.ah
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.sroa.042.sroa.0.0.copyload, i64 %i.ah
  %i.ao = icmp slt i64 %i.aj, %i.r                ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.b, 3
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.preheader, label %.preheader.i.preheader.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.preheader: ; preds = %.split.i.i.i.i.i.i.i.i
  %min.iters.check = icmp ugt i64 %i.q, 15
  %ident.check.not = icmp eq i64 %i.ad, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.preheader142

vector.memcheck:                                  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.preheader
  %i.ap = shl i64 %i.q, 3                         ; 2 uses
  %scevgep = getelementptr i8, ptr %3, i64 %i.ap  ; 2 uses
  %scevgep88 = getelementptr i8, ptr %.sroa.042.sroa.0.0.copyload, i64 8
  %i.aq = getelementptr i8, ptr %i.s, i64 %i.ap
  %scevgep89 = getelementptr i8, ptr %i.aq, i64 8
  %bound0 = icmp ult ptr %3, %scevgep88
  %bound1 = icmp ult ptr %.sroa.042.sroa.0.0.copyload, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound090 = icmp ult ptr %3, %scevgep89
  %bound191 = icmp ult ptr %i.t, %scevgep
  %found.conflict92 = and i1 %bound090, %bound191
  %conflict.rdx = or i1 %found.conflict, %found.conflict92
  br i1 %conflict.rdx, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.preheader142, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.q, 9223372036854775804      ; 3 uses
  %i.ar = load double, ptr %.sroa.042.sroa.0.0.copyload, align 8, !tbaa !21, !alias.scope !1229
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ar, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load = load <2 x double>, ptr %i.as, align 8, !tbaa !21, !alias.scope !1230
  %wide.load93 = load <2 x double>, ptr %i.at, align 8, !tbaa !21, !alias.scope !1230
  %i.au = fmul <2 x double> %broadcast.splat, %wide.load
  %i.av = fmul <2 x double> %broadcast.splat, %wide.load93
  %i.aw = getelementptr [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  store <2 x double> %i.au, ptr %i.aw, align 8, !tbaa !21, !alias.scope !1231, !noalias !1232
  store <2 x double> %i.av, ptr %i.ax, align 8, !tbaa !21, !alias.scope !1231, !noalias !1232
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1200

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.preheader142

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.preheader142: ; preds = %vector.memcheck, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.011.us12.us.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.011.us12.us.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter155 = and i64 %i.q, 1
  %lcmp.mod156.not = icmp eq i64 %xtraiter155, 0
  br i1 %lcmp.mod156.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.prol: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.preheader142
  %i.az = mul nsw i64 %.011.us12.us.i.i.i.i.i.i.i.i.ph, %i.ad
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.az
  %i.bb = load double, ptr %.sroa.042.sroa.0.0.copyload, align 8, !tbaa !21
  %i.bc = load double, ptr %i.ba, align 8, !tbaa !21
  %i.bd = fmul double %i.bb, %i.bc
  %i.be = getelementptr [8 x i8], ptr %3, i64 %.011.us12.us.i.i.i.i.i.i.i.i.ph
  store double %i.bd, ptr %i.be, align 8, !tbaa !21
  %i.bf = or disjoint i64 %.011.us12.us.i.i.i.i.i.i.i.i.ph, 1
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.prol.loopexit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.prol, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.preheader142
  %.011.us12.us.i.i.i.i.i.i.i.i.unr = phi i64 [ %.011.us12.us.i.i.i.i.i.i.i.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.preheader142 ], [ %i.bf, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.prol ]
  %i.bg = icmp eq i64 %i.q, %.neg
  br i1 %i.bg, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i

.preheader.i.preheader.i.i.i.i.i.i.i:             ; preds = %.split.i.i.i.i.i.i.i.i
  %11 = icmp sgt i64 %i.b, 4
  br i1 %11, label %.preheader.i.us.i.i.i.i.i.i.i.preheader, label %.preheader.i.preheader.split.i.i.i.i.i.i.i

.preheader.i.us.i.i.i.i.i.i.i.preheader:          ; preds = %.preheader.i.preheader.i.i.i.i.i.i.i
  %i.bh = xor i64 %i.aj, -1
  %i.bi = add i64 %i.b, %i.bh
  %i.bj = add nsw i64 %i.b, -2
  %i.bk = sub i64 %i.bj, %i.aj
  %xtraiter152 = and i64 %i.bi, 3                 ; 2 uses
  %lcmp.mod153.not = icmp eq i64 %xtraiter152, 0
  %i.bl = icmp ult i64 %i.bk, 3
  br label %.preheader.i.us.i.i.i.i.i.i.i

.preheader.i.us.i.i.i.i.i.i.i:                    ; preds = %.preheader.i.us.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.us.i.i.i.i.i.i.i
  %.011.i.us.i.i.i.i.i.i.i = phi i64 [ %i.ea, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.us.i.i.i.i.i.i.i ], [ 0, %.preheader.i.us.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.bm = mul nsw i64 %.011.i.us.i.i.i.i.i.i.i, %i.ad
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.bm ; 10 uses
  %i.bo = load <2 x double>, ptr %.sroa.042.sroa.0.0.copyload, align 1, !tbaa !30
  %i.bp = load <2 x double>, ptr %i.bn, align 1, !tbaa !30
  %i.bq = fmul <2 x double> %i.bo, %i.bp          ; 2 uses
  %i.br = load <2 x double>, ptr %i.ak, align 1, !tbaa !30
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bt = load <2 x double>, ptr %i.bs, align 1, !tbaa !30
  %i.bu = fmul <2 x double> %i.br, %i.bt          ; 2 uses
  br i1 %i.al, label %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i:            ; preds = %.preheader.i.us.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i
  %.05480.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i ], [ 4, %.preheader.i.us.i.i.i.i.i.i.i ] ; 4 uses
  %.054.in79.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i = phi i64 [ %.05480.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i ], [ 0, %.preheader.i.us.i.i.i.i.i.i.i ]
  %.07278.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i = phi <2 x double> [ %i.ca, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i ], [ %i.bq, %.preheader.i.us.i.i.i.i.i.i.i ]
  %.07577.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i = phi <2 x double> [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i ], [ %i.bu, %.preheader.i.us.i.i.i.i.i.i.i ]
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.042.sroa.0.0.copyload, i64 %.05480.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i
  %i.bw = load <2 x double>, ptr %i.bv, align 1, !tbaa !30
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.05480.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i
  %i.by = load <2 x double>, ptr %i.bx, align 1, !tbaa !30
  %i.bz = fmul <2 x double> %i.bw, %i.by
  %i.ca = fadd <2 x double> %.07278.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, %i.bz ; 2 uses
  %i.cb = add nuw nsw i64 %.054.in79.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, 6 ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.042.sroa.0.0.copyload, i64 %i.cb
  %i.cd = load <2 x double>, ptr %i.cc, align 1, !tbaa !30
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.cb
  %i.cf = load <2 x double>, ptr %i.ce, align 1, !tbaa !30
  %i.cg = fmul <2 x double> %i.cd, %i.cf
  %i.ch = fadd <2 x double> %.07577.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, %i.cg ; 2 uses
  %.054.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.ci = icmp slt i64 %.054.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, %i.ah
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, !llvm.loop !1201

._crit_edge.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i:       ; preds = %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, %.preheader.i.us.i.i.i.i.i.i.i
  %.075.lcssa.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i = phi <2 x double> [ %i.bu, %.preheader.i.us.i.i.i.i.i.i.i ], [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i ]
  %.072.lcssa.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i = phi <2 x double> [ %i.bq, %.preheader.i.us.i.i.i.i.i.i.i ], [ %i.ca, %.lr.ph.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i ]
  %i.cj = fadd <2 x double> %.075.lcssa.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, %.072.lcssa.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i ; 2 uses
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i
  %i.ck = load <2 x double>, ptr %i.an, align 1, !tbaa !30
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.ah
  %i.cm = load <2 x double>, ptr %i.cl, align 1, !tbaa !30
  %i.cn = fmul <2 x double> %i.ck, %i.cm
  %i.co = fadd <2 x double> %i.cj, %i.cn
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i
  %.274.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i = phi <2 x double> [ %i.cj, %._crit_edge.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i ], [ %i.co, %bb.e ]
  %i.cp = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %.274.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i) ; 3 uses
  br i1 %i.ao, label %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.us.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.preheader: ; preds = %bb.f
  br i1 %lcmp.mod153.not, label %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol:     ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol = phi i64 [ %i.cw, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol ], [ %i.aj, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.182.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol = phi double [ %i.cv, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol ], [ %i.cp, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.preheader ]
  %prol.iter154 = phi i64 [ %prol.iter154.next, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.preheader ]
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.042.sroa.0.0.copyload, i64 %.05283.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !21
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.05283.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !21
  %i.cu = fmul double %i.cr, %i.ct
  %i.cv = fadd double %.182.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol, %i.cu ; 3 uses
  %i.cw = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter154.next = add i64 %prol.iter154, 1   ; 2 uses
  %prol.iter154.cmp.not = icmp eq i64 %prol.iter154.next, %xtraiter152
  br i1 %prol.iter154.cmp.not, label %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol, !llvm.loop !1202

.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.preheader
  %.lcssa145.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.preheader ], [ %i.cv, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.unr = phi i64 [ %i.aj, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.preheader ], [ %i.cw, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.unr = phi double [ %i.cp, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.preheader ], [ %i.cv, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol ]
  br i1 %i.bl, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.us.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i:          ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i
  %.05283.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i = phi i64 [ %i.dy, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i ], [ %.05283.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i = phi double [ %i.dx, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i ], [ %.182.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol.loopexit ]
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.042.sroa.0.0.copyload, i64 %.05283.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !21
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.05283.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i
  %i.da = load double, ptr %i.cz, align 8, !tbaa !21
  %i.db = fmul double %i.cy, %i.da
  %i.dc = fadd double %.182.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, %i.db
  %i.dd = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.sroa.042.sroa.0.0.copyload, i64 %i.dd
  %i.df = load double, ptr %i.de, align 8, !tbaa !21
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.dd
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !21
  %i.di = fmul double %i.df, %i.dh
  %i.dj = fadd double %i.dc, %i.di
  %i.dk = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.042.sroa.0.0.copyload, i64 %i.dk
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !21
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.dk
  %i.do = load double, ptr %i.dn, align 8, !tbaa !21
  %i.dp = fmul double %i.dm, %i.do
  %i.dq = fadd double %i.dj, %i.dp
  %i.dr = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %.sroa.042.sroa.0.0.copyload, i64 %i.dr
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !21
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.dr
  %i.dv = load double, ptr %i.du, align 8, !tbaa !21
  %i.dw = fmul double %i.dt, %i.dv
  %i.dx = fadd double %i.dq, %i.dw                ; 2 uses
  %i.dy = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.3 = icmp eq i64 %i.dy, %i.r
  br i1 %exitcond.not.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.us.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, !llvm.loop !1203

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.us.i.i.i.i.i.i.i: ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i, %bb.f
  %.0.i.i.i.i.i.us.i.i.i.i.i.i.i = phi double [ %i.cp, %bb.f ], [ %.lcssa145.unr, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i.prol.loopexit ], [ %i.dx, %.lr.ph85.i.i.i.i.i.i.i.us.i.i.i.i.i.i.i ]
  %i.dz = getelementptr [8 x i8], ptr %3, i64 %.011.i.us.i.i.i.i.i.i.i
  store double %.0.i.i.i.i.i.us.i.i.i.i.i.i.i, ptr %i.dz, align 8, !tbaa !21
  %i.ea = add nuw nsw i64 %.011.i.us.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.us.i.i.i.i.i.i.i = icmp eq i64 %i.ea, %i.q
  br i1 %exitcond.not.i.us.i.i.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %.preheader.i.us.i.i.i.i.i.i.i, !llvm.loop !1204

.preheader.i.preheader.split.i.i.i.i.i.i.i:       ; preds = %.preheader.i.preheader.i.i.i.i.i.i.i
  br i1 %i.ao, label %.preheader.i.us24.i.i.i.i.i.i.i.preheader, label %.preheader.i.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.i.preheader:             ; preds = %.preheader.i.preheader.split.i.i.i.i.i.i.i
  %xtraiter = and i64 %i.q, 1
  %i.eb = icmp eq i64 %i.q, 1
  br i1 %i.eb, label %.preheader.i.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.i.preheader.new:         ; preds = %.preheader.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.q, 9223372036854775806
  br label %.preheader.i.i.i.i.i.i.i.i

.preheader.i.us24.i.i.i.i.i.i.i.preheader:        ; preds = %.preheader.i.preheader.split.i.i.i.i.i.i.i
  %i.ec = xor i64 %i.aj, -1
  %i.ed = add i64 %i.b, %i.ec
  %i.ee = add i64 %i.b, -2
  %i.ef = sub i64 %i.ee, %i.aj
  %xtraiter150 = and i64 %i.ed, 3                 ; 2 uses
  %lcmp.mod151.not = icmp eq i64 %xtraiter150, 0
  %i.eg = icmp ult i64 %i.ef, 3
  br label %.preheader.i.us24.i.i.i.i.i.i.i

.preheader.i.us24.i.i.i.i.i.i.i:                  ; preds = %.preheader.i.us24.i.i.i.i.i.i.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us31.i.i.i.i.i.i.i
  %.011.i.us25.i.i.i.i.i.i.i = phi i64 [ %i.fx, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us31.i.i.i.i.i.i.i ], [ 0, %.preheader.i.us24.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.eh = mul nsw i64 %.011.i.us25.i.i.i.i.i.i.i, %i.ad
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.eh ; 6 uses
  %i.ej = load <2 x double>, ptr %.sroa.042.sroa.0.0.copyload, align 1, !tbaa !30
  %i.ek = load <2 x double>, ptr %i.ei, align 1, !tbaa !30
  %i.el = fmul <2 x double> %i.ej, %i.ek
  %i.em = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.el) ; 2 uses
  br i1 %lcmp.mod151.not, label %.lr.ph85.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i.prol:   ; preds = %.preheader.i.us24.i.i.i.i.i.i.i, %.lr.ph85.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.i.i.us28.i.i.i.i.i.i.i.prol = phi i64 [ %i.et, %.lr.ph85.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i.prol ], [ %i.aj, %.preheader.i.us24.i.i.i.i.i.i.i ] ; 3 uses
  %.182.i.i.i.i.i.i.i.us29.i.i.i.i.i.i.i.prol = phi double [ %i.es, %.lr.ph85.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i.prol ], [ %i.em, %.preheader.i.us24.i.i.i.i.i.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i.prol ], [ 0, %.preheader.i.us24.i.i.i.i.i.i.i ]
  %i.en = getelementptr inbounds [8 x i8], ptr %.sroa.042.sroa.0.0.copyload, i64 %.05283.i.i.i.i.i.i.i.us28.i.i.i.i.i.i.i.prol
  %i.eo = load double, ptr %i.en, align 8, !tbaa !21
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %.05283.i.i.i.i.i.i.i.us28.i.i.i.i.i.i.i.prol
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !21
  %i.er = fmul double %i.eo, %i.eq
  %i.es = fadd double %.182.i.i.i.i.i.i.i.us29.i.i.i.i.i.i.i.prol, %i.er ; 3 uses
  %i.et = add nsw i64 %.05283.i.i.i.i.i.i.i.us28.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter150
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i.prol, !llvm.loop !1205

.lr.ph85.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph85.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i.prol, %.preheader.i.us24.i.i.i.i.i.i.i
  %.lcssa147.unr = phi double [ poison, %.preheader.i.us24.i.i.i.i.i.i.i ], [ %i.es, %.lr.ph85.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.i.i.us28.i.i.i.i.i.i.i.unr = phi i64 [ %i.aj, %.preheader.i.us24.i.i.i.i.i.i.i ], [ %i.et, %.lr.ph85.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.i.i.us29.i.i.i.i.i.i.i.unr = phi double [ %i.em, %.preheader.i.us24.i.i.i.i.i.i.i ], [ %i.es, %.lr.ph85.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i.prol ]
  br i1 %i.eg, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us31.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i:        ; preds = %.lr.ph85.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i
  %.05283.i.i.i.i.i.i.i.us28.i.i.i.i.i.i.i = phi i64 [ %i.fv, %.lr.ph85.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i ], [ %.05283.i.i.i.i.i.i.i.us28.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.i.i.us29.i.i.i.i.i.i.i = phi double [ %i.fu, %.lr.ph85.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i ], [ %.182.i.i.i.i.i.i.i.us29.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i.prol.loopexit ]
  %i.eu = getelementptr inbounds [8 x i8], ptr %.sroa.042.sroa.0.0.copyload, i64 %.05283.i.i.i.i.i.i.i.us28.i.i.i.i.i.i.i
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !21
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %.05283.i.i.i.i.i.i.i.us28.i.i.i.i.i.i.i
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !21
  %i.ey = fmul double %i.ev, %i.ex
  %i.ez = fadd double %.182.i.i.i.i.i.i.i.us29.i.i.i.i.i.i.i, %i.ey
  %i.fa = add nsw i64 %.05283.i.i.i.i.i.i.i.us28.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.fb = getelementptr inbounds [8 x i8], ptr %.sroa.042.sroa.0.0.copyload, i64 %i.fa
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !21
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.fa
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !21
  %i.ff = fmul double %i.fc, %i.fe
  %i.fg = fadd double %i.ez, %i.ff
  %i.fh = add nsw i64 %.05283.i.i.i.i.i.i.i.us28.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.fi = getelementptr inbounds [8 x i8], ptr %.sroa.042.sroa.0.0.copyload, i64 %i.fh
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !21
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.fh
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !21
  %i.fm = fmul double %i.fj, %i.fl
  %i.fn = fadd double %i.fg, %i.fm
  %i.fo = add nsw i64 %.05283.i.i.i.i.i.i.i.us28.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.fp = getelementptr inbounds [8 x i8], ptr %.sroa.042.sroa.0.0.copyload, i64 %i.fo
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !21
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.fo
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !21
  %i.ft = fmul double %i.fq, %i.fs
  %i.fu = fadd double %i.fn, %i.ft                ; 2 uses
  %i.fv = add nsw i64 %.05283.i.i.i.i.i.i.i.us28.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.us30.i.i.i.i.i.i.i.3 = icmp eq i64 %i.fv, %i.r
  br i1 %exitcond.not.i.i.i.i.i.i.i.us30.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us31.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i, !llvm.loop !1203

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us31.i.i.i.i.i.i.i: ; preds = %.lr.ph85.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i, %.lr.ph85.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i.prol.loopexit
  %.lcssa147 = phi double [ %.lcssa147.unr, %.lr.ph85.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i.prol.loopexit ], [ %i.fu, %.lr.ph85.i.i.i.i.i.i.i.us27.i.i.i.i.i.i.i ]
  %i.fw = getelementptr [8 x i8], ptr %3, i64 %.011.i.us25.i.i.i.i.i.i.i
  store double %.lcssa147, ptr %i.fw, align 8, !tbaa !21
  %i.fx = add nuw nsw i64 %.011.i.us25.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.us35.i.i.i.i.i.i.i = icmp eq i64 %i.fx, %i.q
  br i1 %exitcond.not.i.us35.i.i.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %.preheader.i.us24.i.i.i.i.i.i.i, !llvm.loop !1204

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i
  %.011.us12.us.i.i.i.i.i.i.i.i = phi i64 [ %i.gl, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i ], [ %.011.us12.us.i.i.i.i.i.i.i.i.unr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.fy = mul nsw i64 %.011.us12.us.i.i.i.i.i.i.i.i, %i.ad
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.fy
  %i.ga = load double, ptr %.sroa.042.sroa.0.0.copyload, align 8, !tbaa !21
  %i.gb = load double, ptr %i.fz, align 8, !tbaa !21
  %i.gc = fmul double %i.ga, %i.gb
  %i.gd = getelementptr [8 x i8], ptr %3, i64 %.011.us12.us.i.i.i.i.i.i.i.i
  store double %i.gc, ptr %i.gd, align 8, !tbaa !21
  %i.ge = add nuw nsw i64 %.011.us12.us.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.gf = mul nsw i64 %i.ge, %i.ad
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.gf
  %i.gh = load double, ptr %.sroa.042.sroa.0.0.copyload, align 8, !tbaa !21
  %i.gi = load double, ptr %i.gg, align 8, !tbaa !21
  %i.gj = fmul double %i.gh, %i.gi
  %i.gk = getelementptr [8 x i8], ptr %3, i64 %i.ge
  store double %i.gj, ptr %i.gk, align 8, !tbaa !21
  %i.gl = add nuw nsw i64 %.011.us12.us.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond23.not.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.gl, %i.q
  br i1 %exitcond23.not.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i, !llvm.loop !1206

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.preheader.new
  %.011.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader.new ], [ %i.hb, %.preheader.i.i.i.i.i.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i.i.i.i.i ]
  %i.gm = mul nsw i64 %.011.i.i.i.i.i.i.i.i, %i.ad
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.gm
  %i.go = load <2 x double>, ptr %.sroa.042.sroa.0.0.copyload, align 1, !tbaa !30
  %i.gp = load <2 x double>, ptr %i.gn, align 1, !tbaa !30
  %i.gq = fmul <2 x double> %i.go, %i.gp
  %i.gr = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.gq)
  %i.gs = getelementptr [8 x i8], ptr %3, i64 %.011.i.i.i.i.i.i.i.i
  store double %i.gr, ptr %i.gs, align 8, !tbaa !21
  %i.gt = or disjoint i64 %.011.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.gu = mul nsw i64 %i.gt, %i.ad
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.gu
  %i.gw = load <2 x double>, ptr %.sroa.042.sroa.0.0.copyload, align 1, !tbaa !30
  %i.gx = load <2 x double>, ptr %i.gv, align 1, !tbaa !30
  %i.gy = fmul <2 x double> %i.gw, %i.gx
  %i.gz = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.gy)
  %i.ha = getelementptr [8 x i8], ptr %3, i64 %i.gt
  store double %i.gz, ptr %i.ha, align 8, !tbaa !21
  %i.hb = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit148.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i, !llvm.loop !1204

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit148.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.i.epil.preheader:        ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit148.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.preheader
  %.011.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader ], [ %i.hb, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit148.unr-lcssa ] ; 2 uses
  %lcmp.mod149 = trunc i64 %i.q to i1
  tail call void @llvm.assume(i1 %lcmp.mod149)
  %i.hc = mul nsw i64 %.011.i.i.i.i.i.i.i.i.epil.init, %i.ad
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.hc
  %i.he = load <2 x double>, ptr %.sroa.042.sroa.0.0.copyload, align 1, !tbaa !30
  %i.hf = load <2 x double>, ptr %i.hd, align 1, !tbaa !30
  %i.hg = fmul <2 x double> %i.he, %i.hf
  %i.hh = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.hg)
  %i.hi = getelementptr [8 x i8], ptr %3, i64 %.011.i.i.i.i.i.i.i.i.epil.init
  store double %i.hh, ptr %i.hi, align 8, !tbaa !21
  br label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit: ; preds = %.preheader.i.i.i.i.i.i.i.i.epil.preheader, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit148.unr-lcssa, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us31.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.us.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNS4_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us13.us.i.i.i.i.i.i.i.i, %middle.block
  %.sroa.635.24.copyload = load ptr, ptr %i.u, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.635.24.copyload, i64 8
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !18 ; 4 uses
  %min.iters.check103 = icmp ugt i64 %i.q, 7
  %ident.check95.not = icmp eq i64 %i.hk, 1
  %or.cond140 = select i1 %min.iters.check103, i1 %ident.check95.not, i1 false
  br i1 %or.cond140, label %vector.memcheck96, label %.split.i.i.i.i.i.i.preheader

vector.memcheck96:                                ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit
  %i.hl = shl i64 %i.q, 3                         ; 2 uses
  %scevgep97 = getelementptr i8, ptr %3, i64 %i.hl
  %scevgep98 = getelementptr i8, ptr %i.s, i64 %i.hl
  %bound099 = icmp ult ptr %3, %scevgep98
  %bound1100 = icmp ult ptr %i.s, %scevgep97
  %found.conflict101 = and i1 %bound099, %bound1100
  br i1 %found.conflict101, label %.split.i.i.i.i.i.i.preheader, label %vector.ph104

vector.ph104:                                     ; preds = %vector.memcheck96
  %n.vec105 = and i64 %i.q, 9223372036854775804   ; 3 uses
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph104
  %index107 = phi i64 [ 0, %vector.ph104 ], [ %index.next112, %vector.body106 ] ; 3 uses
  %i.hm = getelementptr [8 x i8], ptr %3, i64 %index107 ; 3 uses
  %i.hn = getelementptr [8 x i8], ptr %i.s, i64 %index107 ; 2 uses
  %i.ho = getelementptr i8, ptr %i.hn, i64 16
  %wide.load108 = load <2 x double>, ptr %i.hn, align 8, !tbaa !21, !alias.scope !1233
  %wide.load109 = load <2 x double>, ptr %i.ho, align 8, !tbaa !21, !alias.scope !1233
  %i.hp = getelementptr i8, ptr %i.hm, i64 16     ; 2 uses
  %wide.load110 = load <2 x double>, ptr %i.hm, align 8, !tbaa !21, !alias.scope !1234, !noalias !1233
  %wide.load111 = load <2 x double>, ptr %i.hp, align 8, !tbaa !21, !alias.scope !1234, !noalias !1233
  %i.hq = fadd <2 x double> %wide.load108, %wide.load110
  %i.hr = fadd <2 x double> %wide.load109, %wide.load111
  store <2 x double> %i.hq, ptr %i.hm, align 8, !tbaa !21, !alias.scope !1234, !noalias !1233
  store <2 x double> %i.hr, ptr %i.hp, align 8, !tbaa !21, !alias.scope !1234, !noalias !1233
  %index.next112 = add nuw i64 %index107, 4       ; 2 uses
  %i.hs = icmp eq i64 %index.next112, %n.vec105
  br i1 %i.hs, label %middle.block113, label %vector.body106, !llvm.loop !1210

middle.block113:                                  ; preds = %vector.body106
  %cmp.n114 = icmp eq i64 %i.q, %n.vec105
  br i1 %cmp.n114, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit, label %.split.i.i.i.i.i.i.preheader

.split.i.i.i.i.i.i.preheader:                     ; preds = %vector.memcheck96, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, %middle.block113
  %.09.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck96 ], [ 0, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit ], [ %n.vec105, %middle.block113 ] ; 5 uses
  %.neg164 = or disjoint i64 %.09.i.i.i.i.i.i.ph, 1
  %xtraiter158 = and i64 %i.q, 1
  %lcmp.mod159.not = icmp eq i64 %xtraiter158, 0
  br i1 %lcmp.mod159.not, label %.split.i.i.i.i.i.i.prol.loopexit, label %.split.i.i.i.i.i.i.prol

.split.i.i.i.i.i.i.prol:                          ; preds = %.split.i.i.i.i.i.i.preheader
  %i.ht = getelementptr [8 x i8], ptr %3, i64 %.09.i.i.i.i.i.i.ph ; 2 uses
  %i.hu = mul nsw i64 %.09.i.i.i.i.i.i.ph, %i.hk
  %i.hv = getelementptr [8 x i8], ptr %i.s, i64 %i.hu
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !21
  %i.hx = load double, ptr %i.ht, align 8, !tbaa !21
  %i.hy = fadd double %i.hw, %i.hx
  store double %i.hy, ptr %i.ht, align 8, !tbaa !21
  %i.hz = or disjoint i64 %.09.i.i.i.i.i.i.ph, 1
  br label %.split.i.i.i.i.i.i.prol.loopexit

.split.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.split.i.i.i.i.i.i.prol, %.split.i.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.i.ph, %.split.i.i.i.i.i.i.preheader ], [ %i.hz, %.split.i.i.i.i.i.i.prol ]
  %i.ia = icmp eq i64 %i.q, %.neg164
  br i1 %i.ia, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit, label %.split.i.i.i.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %.split.i.i.i.i.i.i.prol.loopexit, %.split.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi i64 [ %i.io, %.split.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.unr, %.split.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.ib = getelementptr [8 x i8], ptr %3, i64 %.09.i.i.i.i.i.i ; 2 uses
  %i.ic = mul nsw i64 %.09.i.i.i.i.i.i, %i.hk
  %i.id = getelementptr [8 x i8], ptr %i.s, i64 %i.ic
  %i.ie = load double, ptr %i.id, align 8, !tbaa !21
  %i.if = load double, ptr %i.ib, align 8, !tbaa !21
  %i.ig = fadd double %i.ie, %i.if
  store double %i.ig, ptr %i.ib, align 8, !tbaa !21
  %i.ih = add nuw nsw i64 %.09.i.i.i.i.i.i, 1     ; 2 uses
  %i.ii = getelementptr [8 x i8], ptr %3, i64 %i.ih ; 2 uses
  %i.ij = mul nsw i64 %i.ih, %i.hk
  %i.ik = getelementptr [8 x i8], ptr %i.s, i64 %i.ij
  %i.il = load double, ptr %i.ik, align 8, !tbaa !21
  %i.im = load double, ptr %i.ii, align 8, !tbaa !21
  %i.in = fadd double %i.il, %i.im
  store double %i.in, ptr %i.ii, align 8, !tbaa !21
  %i.io = add nuw nsw i64 %.09.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.io, %i.q
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit, label %.split.i.i.i.i.i.i, !llvm.loop !1211

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit: ; preds = %.split.i.i.i.i.i.i.prol.loopexit, %.split.i.i.i.i.i.i, %middle.block113
  %i.ip = load double, ptr %2, align 8, !tbaa !21, !noalias !1235 ; 4 uses
  %.sroa.7.24.copyload = load ptr, ptr %i.u, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.7.24.copyload, i64 8
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !18 ; 4 uses
  %min.iters.check125 = icmp ugt i64 %i.q, 5
  %ident.check117.not = icmp eq i64 %i.ir, 1
  %or.cond141 = select i1 %min.iters.check125, i1 %ident.check117.not, i1 false
  br i1 %or.cond141, label %vector.memcheck118, label %.split.i.i.i.i.i.i8.preheader

vector.memcheck118:                               ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit
  %i.is = shl i64 %i.q, 3                         ; 2 uses
  %scevgep119 = getelementptr i8, ptr %i.s, i64 %i.is
  %scevgep120 = getelementptr i8, ptr %3, i64 %i.is
  %bound0121 = icmp ult ptr %i.s, %scevgep120
  %bound1122 = icmp ult ptr %3, %scevgep119
  %found.conflict123 = and i1 %bound0121, %bound1122
  br i1 %found.conflict123, label %.split.i.i.i.i.i.i8.preheader, label %vector.ph126

vector.ph126:                                     ; preds = %vector.memcheck118
  %n.vec127 = and i64 %i.q, 9223372036854775804   ; 3 uses
  %broadcast.splatinsert128 = insertelement <2 x double> poison, double %i.ip, i64 0
  %broadcast.splat129 = shufflevector <2 x double> %broadcast.splatinsert128, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body130

vector.body130:                                   ; preds = %vector.body130, %vector.ph126
  %index131 = phi i64 [ 0, %vector.ph126 ], [ %index.next136, %vector.body130 ] ; 3 uses
  %i.it = getelementptr [8 x i8], ptr %i.s, i64 %index131 ; 3 uses
  %i.iu = getelementptr [8 x i8], ptr %3, i64 %index131 ; 2 uses
  %i.iv = getelementptr i8, ptr %i.iu, i64 16
  %wide.load132 = load <2 x double>, ptr %i.iu, align 8, !tbaa !21, !alias.scope !1236
  %wide.load133 = load <2 x double>, ptr %i.iv, align 8, !tbaa !21, !alias.scope !1236
  %i.iw = fmul <2 x double> %broadcast.splat129, %wide.load132
  %i.ix = fmul <2 x double> %broadcast.splat129, %wide.load133
  %i.iy = getelementptr i8, ptr %i.it, i64 16     ; 2 uses
  %wide.load134 = load <2 x double>, ptr %i.it, align 8, !tbaa !21, !alias.scope !1237, !noalias !1236
  %wide.load135 = load <2 x double>, ptr %i.iy, align 8, !tbaa !21, !alias.scope !1237, !noalias !1236
  %i.iz = fsub <2 x double> %wide.load134, %i.iw
  %i.ja = fsub <2 x double> %wide.load135, %i.ix
  store <2 x double> %i.iz, ptr %i.it, align 8, !tbaa !21, !alias.scope !1237, !noalias !1236
  store <2 x double> %i.ja, ptr %i.iy, align 8, !tbaa !21, !alias.scope !1237, !noalias !1236
  %index.next136 = add nuw i64 %index131, 4       ; 2 uses
  %i.jb = icmp eq i64 %index.next136, %n.vec127
  br i1 %i.jb, label %middle.block137, label %vector.body130, !llvm.loop !1217

middle.block137:                                  ; preds = %vector.body130
  %cmp.n138 = icmp eq i64 %i.q, %n.vec127
  br i1 %cmp.n138, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, label %.split.i.i.i.i.i.i8.preheader

.split.i.i.i.i.i.i8.preheader:                    ; preds = %vector.memcheck118, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit, %middle.block137
  %.09.i.i.i.i.i.i9.ph = phi i64 [ 0, %vector.memcheck118 ], [ 0, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit ], [ %n.vec127, %middle.block137 ] ; 5 uses
  %.neg165 = or disjoint i64 %.09.i.i.i.i.i.i9.ph, 1
  %xtraiter161 = and i64 %i.q, 1
  %lcmp.mod162.not = icmp eq i64 %xtraiter161, 0
  br i1 %lcmp.mod162.not, label %.split.i.i.i.i.i.i8.prol.loopexit, label %.split.i.i.i.i.i.i8.prol

.split.i.i.i.i.i.i8.prol:                         ; preds = %.split.i.i.i.i.i.i8.preheader
  %i.jc = mul nsw i64 %.09.i.i.i.i.i.i9.ph, %i.ir
  %i.jd = getelementptr [8 x i8], ptr %i.s, i64 %i.jc ; 2 uses
  %i.je = getelementptr [8 x i8], ptr %3, i64 %.09.i.i.i.i.i.i9.ph
  %i.jf = load double, ptr %i.je, align 8, !tbaa !21
  %i.jg = fmul double %i.ip, %i.jf
  %i.jh = load double, ptr %i.jd, align 8, !tbaa !21
  %i.ji = fsub double %i.jh, %i.jg
  store double %i.ji, ptr %i.jd, align 8, !tbaa !21
  %i.jj = or disjoint i64 %.09.i.i.i.i.i.i9.ph, 1
  br label %.split.i.i.i.i.i.i8.prol.loopexit

.split.i.i.i.i.i.i8.prol.loopexit:                ; preds = %.split.i.i.i.i.i.i8.prol, %.split.i.i.i.i.i.i8.preheader
  %.09.i.i.i.i.i.i9.unr = phi i64 [ %.09.i.i.i.i.i.i9.ph, %.split.i.i.i.i.i.i8.preheader ], [ %i.jj, %.split.i.i.i.i.i.i8.prol ]
  %i.jk = icmp eq i64 %i.q, %.neg165
  br i1 %i.jk, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, label %.split.i.i.i.i.i.i8

.split.i.i.i.i.i.i8:                              ; preds = %.split.i.i.i.i.i.i8.prol.loopexit, %.split.i.i.i.i.i.i8
  %.09.i.i.i.i.i.i9 = phi i64 [ %i.ka, %.split.i.i.i.i.i.i8 ], [ %.09.i.i.i.i.i.i9.unr, %.split.i.i.i.i.i.i8.prol.loopexit ] ; 4 uses
  %i.jl = mul nsw i64 %.09.i.i.i.i.i.i9, %i.ir
  %i.jm = getelementptr [8 x i8], ptr %i.s, i64 %i.jl ; 2 uses
  %i.jn = getelementptr [8 x i8], ptr %3, i64 %.09.i.i.i.i.i.i9
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !21
  %i.jp = fmul double %i.ip, %i.jo
  %i.jq = load double, ptr %i.jm, align 8, !tbaa !21
  %i.jr = fsub double %i.jq, %i.jp
  store double %i.jr, ptr %i.jm, align 8, !tbaa !21
  %i.js = add nuw nsw i64 %.09.i.i.i.i.i.i9, 1    ; 2 uses
  %i.jt = mul nsw i64 %i.js, %i.ir
  %i.ju = getelementptr [8 x i8], ptr %i.s, i64 %i.jt ; 2 uses
  %i.jv = getelementptr [8 x i8], ptr %3, i64 %i.js
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !21
  %i.jx = fmul double %i.ip, %i.jw
  %i.jy = load double, ptr %i.ju, align 8, !tbaa !21
  %i.jz = fsub double %i.jy, %i.jx
  store double %i.jz, ptr %i.ju, align 8, !tbaa !21
  %i.ka = add nuw nsw i64 %.09.i.i.i.i.i.i9, 2    ; 2 uses
  %exitcond.not.i.i.i.i.i.i10.1 = icmp eq i64 %i.ka, %i.q
  br i1 %exitcond.not.i.i.i.i.i.i10.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, label %.split.i.i.i.i.i.i8, !llvm.loop !1218

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit: ; preds = %.split.i.i.i.i.i.i8.prol.loopexit, %.split.i.i.i.i.i.i8, %middle.block137
  %.pre = load double, ptr %2, align 8, !tbaa !21, !noalias !1238
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit: ; preds = %bb.d, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit
  %i.kb = phi double [ %.pre, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit ], [ %i.d, %bb.d ]
  %i.kc = load i64, ptr %.sroa.042.sroa.4.0..sroa_idx, align 8, !tbaa !34, !noalias !1238
  %i.kd = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.kd, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.ke = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.kc, ptr %i.ke, align 8, !alias.scope !1239
  %i.kf = getelementptr inbounds nuw i8, ptr %4, i64 24
  store double %i.kb, ptr %i.kf, align 8, !tbaa !66, !alias.scope !1239
  %i.kg = getelementptr inbounds nuw i8, ptr %4, i64 96
  store ptr %3, ptr %i.kg, align 8
  %.sroa.819.sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 112
end_hunk_1
