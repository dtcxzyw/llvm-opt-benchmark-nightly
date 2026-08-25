Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/unproject?download=true
inline.NumInlined: 4357
inline.NumDeleted: 2343
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_5BlockINS1_IdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEEERS2_RKNS_9EigenBaseIT_EE:bb.a
  %i.b = load i64, ptr %i.a, align 8, !tbaa !54   ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_5BlockINS1_IdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sdiv i64 9223372036854775807, %i.b
  %i.e = icmp slt i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_5BlockINS1_IdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.f, align 8, !tbaa !33
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_5BlockINS1_IdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef 1, i64 noundef %i.b)
  %i.g = load ptr, ptr %1, align 8, !tbaa !47     ; 3 uses
  %i.h = load i64, ptr %i.a, align 8, !tbaa !54   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !32
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.j, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %.not8.i.i.i.i.i.i.i = icmp eq i64 %i.l, %i.h
  %or.cond.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_5BlockINS1_IdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit
  %i.m = icmp eq i64 %i.h, 0
  br i1 %i.m, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = sdiv i64 9223372036854775807, %i.h
  %i.o = icmp slt i64 %i.n, 1
  br i1 %i.o, label %.noexc.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i:                               ; preds = %bb.e
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !33
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.h, i64 noundef 1, i64 noundef %i.h)
  %.pr.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !tbaa !23
  %.pre.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_5BlockINS1_IdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit
  %i.q = phi i64 [ %.pre.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i ], [ 1, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_5BlockINS1_IdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit ] ; 12 uses
  %i.r = phi i64 [ %.pr.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i ], [ %i.h, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_5BlockINS1_IdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit ] ; 4 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !31     ; 3 uses
  %i.t = icmp sgt i64 %i.r, 0
  %i.u = icmp sgt i64 %i.q, 0
  %or.cond.i.i.i.i.i.i = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_5BlockINS1_IdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEEERS2_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.i.i.preheader:               ; preds = %bb.f
  %i.v = add nsw i64 %i.q, -1
  %i.w = mul i64 %i.r, %i.q
  %i.x = shl i64 %i.w, 3
  %scevgep = getelementptr i8, ptr %i.s, i64 %i.x
  %i.y = mul i64 %i.q, 24
  %i.z = shl i64 %i.r, 3
  %i.aa = getelementptr i8, ptr %i.g, i64 %i.y
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.z
  %scevgep7 = getelementptr i8, ptr %i.ab, i64 -24
  %min.iters.check = icmp ult i64 %i.q, 26
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.v, i64 24) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %bound0 = icmp ult ptr %i.s, %scevgep7
  %bound1 = icmp ult ptr %i.g, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %i.q, 1152921504606846976
  %stride.check = icmp ne i64 %.mask, 0
  %i.ac = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.q, 8070450532247928828      ; 3 uses
  %cmp.n = icmp eq i64 %i.q, %n.vec
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i
  %.0810.i.i.i.i.i.i.i = phi i64 [ %i.bj, %._crit_edge.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.ad = mul nuw nsw i64 %.0810.i.i.i.i.i.i.i, %i.q
  %invariant.gep.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.s, i64 %i.ad ; 6 uses
  %i.ae = getelementptr [8 x i8], ptr %i.g, i64 %.0810.i.i.i.i.i.i.i ; 11 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 %mul.result
  %i.ag = icmp ult ptr %i.af, %i.ae
  %i.ah = or i1 %i.ag, %mul.overflow
  %or.cond = select i1 %min.iters.check, i1 true, i1 %i.ah
  %brmerge = select i1 %or.cond, i1 true, i1 %i.ac
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i.i.i.i.i.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i.i.i.i.i.i.i ] ; 6 uses
  %i.ai = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i, i64 %index ; 2 uses
  %i.aj = mul i64 %index, 24
  %i.ak = mul i64 %index, 24
  %i.al = mul i64 %index, 24
  %i.am = mul i64 %index, 24
  %i.an = getelementptr i8, ptr %i.ae, i64 %i.aj
  %i.ao = getelementptr i8, ptr %i.ae, i64 %i.ak
  %i.ap = getelementptr i8, ptr %i.ao, i64 24
  %i.aq = getelementptr i8, ptr %i.ae, i64 %i.al
  %i.ar = getelementptr i8, ptr %i.aq, i64 48
  %i.as = getelementptr i8, ptr %i.ae, i64 %i.am
  %i.at = getelementptr i8, ptr %i.as, i64 72
  %i.au = load double, ptr %i.an, align 8, !tbaa !21, !alias.scope !93
  %i.av = load double, ptr %i.ap, align 8, !tbaa !21, !alias.scope !93
  %i.aw = insertelement <2 x double> poison, double %i.au, i64 0
  %i.ax = insertelement <2 x double> %i.aw, double %i.av, i64 1
  %i.ay = load double, ptr %i.ar, align 8, !tbaa !21, !alias.scope !93
  %i.az = load double, ptr %i.at, align 8, !tbaa !21, !alias.scope !93
  %i.ba = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %i.az, i64 1
  %i.bc = getelementptr i8, ptr %i.ai, i64 16
  store <2 x double> %i.ax, ptr %i.ai, align 8, !tbaa !21, !alias.scope !96, !noalias !93
  store <2 x double> %i.bb, ptr %i.bc, align 8, !tbaa !21, !alias.scope !96, !noalias !93
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !98

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i.i.i.i.i.i, %middle.block
  %.09.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.09.i.i.i.i.i.i.i.prol = phi i64 [ %i.bg, %scalar.ph.prol ], [ %.09.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.i.i.i.i.i.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i, i64 %.09.i.i.i.i.i.i.i.prol
  %.idx.i.i.i.i.i.i.i.i.i.i.prol = mul i64 %.09.i.i.i.i.i.i.i.prol, 24
  %i.be = getelementptr i8, ptr %i.ae, i64 %.idx.i.i.i.i.i.i.i.i.i.i.prol
  %i.bf = load double, ptr %i.be, align 8, !tbaa !21
  store double %i.bf, ptr %gep.i.i.i.i.i.i.i.prol, align 8, !tbaa !21
  %i.bg = add nuw nsw i64 %.09.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !99

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.i.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ], [ %i.bg, %scalar.ph.prol ]
  %i.bh = sub nsw i64 %.09.i.i.i.i.i.i.i.ph, %i.q
  %i.bi = icmp ugt i64 %i.bh, -4
  br i1 %i.bi, label %._crit_edge.i.i.i.i.i.i.i, label %scalar.ph

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bj = add nuw nsw i64 %.0810.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i = icmp eq i64 %i.bj, %i.r
  br i1 %exitcond12.not.i.i.i.i.i.i.i, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_5BlockINS1_IdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i, !llvm.loop !100

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i.i.i.i.i.i.i = phi i64 [ %i.bv, %scalar.ph ], [ %.09.i.i.i.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i, i64 %.09.i.i.i.i.i.i.i
  %.idx.i.i.i.i.i.i.i.i.i.i = mul i64 %.09.i.i.i.i.i.i.i, 24
  %i.bk = getelementptr i8, ptr %i.ae, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !21
  store double %i.bl, ptr %gep.i.i.i.i.i.i.i, align 8, !tbaa !21
  %i.bm = add nuw nsw i64 %.09.i.i.i.i.i.i.i, 1   ; 2 uses
  %gep.i.i.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i, i64 %i.bm
  %.idx.i.i.i.i.i.i.i.i.i.i.1 = mul i64 %i.bm, 24
  %i.bn = getelementptr i8, ptr %i.ae, i64 %.idx.i.i.i.i.i.i.i.i.i.i.1
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !21
  store double %i.bo, ptr %gep.i.i.i.i.i.i.i.1, align 8, !tbaa !21
  %i.bp = add nuw nsw i64 %.09.i.i.i.i.i.i.i, 2   ; 2 uses
  %gep.i.i.i.i.i.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i, i64 %i.bp
  %.idx.i.i.i.i.i.i.i.i.i.i.2 = mul i64 %i.bp, 24
  %i.bq = getelementptr i8, ptr %i.ae, i64 %.idx.i.i.i.i.i.i.i.i.i.i.2
  %i.br = load double, ptr %i.bq, align 8, !tbaa !21
  store double %i.br, ptr %gep.i.i.i.i.i.i.i.2, align 8, !tbaa !21
  %i.bs = add nuw nsw i64 %.09.i.i.i.i.i.i.i, 3   ; 2 uses
  %gep.i.i.i.i.i.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i, i64 %i.bs
  %.idx.i.i.i.i.i.i.i.i.i.i.3 = mul i64 %i.bs, 24
  %i.bt = getelementptr i8, ptr %i.ae, i64 %.idx.i.i.i.i.i.i.i.i.i.i.3
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !21
  store double %i.bu, ptr %gep.i.i.i.i.i.i.i.3, align 8, !tbaa !21
  %i.bv = add nuw nsw i64 %.09.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bv, %i.q
  br i1 %exitcond.not.i.i.i.i.i.i.i.3, label %._crit_edge.i.i.i.i.i.i.i, label %scalar.ph, !llvm.loop !101

_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_5BlockINS1_IdLi1ELi3ELi1ELi1ELi3EEELi1ELin1ELb0EEEEERS2_RKNS_9DenseBaseIT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.f
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl9unprojectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEENS2_IfLi4ELi4ELi0ELi4ELi4EEES4_NS2_IfLi4ELi1ELi0ELi4ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERKNS6_IT2_EERNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 4 dereferenceable(12) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
.preheader.i.i.i.i.i.i.i.i.i.i.i.i:
  %5 = alloca %"class.Eigen::Matrix.13", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = getelementptr i8, ptr %3, i64 8
  %i.q = load <4 x float>, ptr %2, align 16, !tbaa !20 ; 4 uses
  %i.r = load <1 x float>, ptr %1, align 16
  %i.s = load <4 x float>, ptr %i.a, align 16, !tbaa !20 ; 4 uses
  %i.t = load <1 x float>, ptr %i.b, align 4
  %i.u = load <4 x float>, ptr %i.c, align 16, !tbaa !20 ; 4 uses
  %i.v = load <1 x float>, ptr %i.d, align 8
  %i.w = load <4 x float>, ptr %i.e, align 16, !tbaa !20 ; 4 uses
  %i.x = load <1 x float>, ptr %i.f, align 4
  %6 = load <1 x float>, ptr %i.g, align 16
  %7 = load <1 x float>, ptr %i.h, align 4
  %8 = load <1 x float>, ptr %i.i, align 8
  %9 = load <1 x float>, ptr %i.j, align 4
  %10 = load <1 x float>, ptr %i.k, align 16
  %11 = load <1 x float>, ptr %i.l, align 4
  %12 = load <1 x float>, ptr %i.m, align 8
  %13 = load <1 x float>, ptr %i.n, align 4
  %14 = load <4 x float>, ptr %i.o, align 16      ; 4 uses
  %.sroa.0.0.copyload = load <3 x float>, ptr %0, align 4, !tbaa !12, !noalias !102 ; 2 uses
  %.sroa.0.0.vec.expand = shufflevector <3 x float> %.sroa.0.0.copyload, <3 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.y = shufflevector <1 x float> %i.r, <1 x float> poison, <4 x i32> zeroinitializer
  %i.z = fmul <4 x float> %i.q, %i.y
  %i.aa = shufflevector <1 x float> %i.t, <1 x float> poison, <4 x i32> zeroinitializer
  %i.ab = fmul <4 x float> %i.s, %i.aa
  %i.ac = fadd <4 x float> %i.z, %i.ab
  %i.ad = shufflevector <1 x float> %i.v, <1 x float> poison, <4 x i32> zeroinitializer
  %i.ae = fmul <4 x float> %i.u, %i.ad
  %i.af = fadd <4 x float> %i.ac, %i.ae
  %i.ag = shufflevector <1 x float> %i.x, <1 x float> poison, <4 x i32> zeroinitializer
  %i.ah = fmul <4 x float> %i.w, %i.ag
  %i.ai = fadd <4 x float> %i.af, %i.ah           ; 10 uses
  %i.aj = shufflevector <1 x float> %6, <1 x float> poison, <4 x i32> zeroinitializer
  %i.ak = fmul <4 x float> %i.q, %i.aj
  %15 = shufflevector <1 x float> %7, <1 x float> poison, <4 x i32> zeroinitializer
  %i.al = fmul <4 x float> %i.s, %15
  %i.am = fadd <4 x float> %i.ak, %i.al
  %16 = shufflevector <1 x float> %8, <1 x float> poison, <4 x i32> zeroinitializer
  %i.an = fmul <4 x float> %i.u, %16
  %i.ao = fadd <4 x float> %i.am, %i.an
  %17 = shufflevector <1 x float> %9, <1 x float> poison, <4 x i32> zeroinitializer
  %i.ap = fmul <4 x float> %i.w, %17
  %i.aq = fadd <4 x float> %i.ao, %i.ap           ; 10 uses
  %i.ar = shufflevector <1 x float> %10, <1 x float> poison, <4 x i32> zeroinitializer
  %i.as = fmul <4 x float> %i.q, %i.ar
  %i.at = shufflevector <1 x float> %11, <1 x float> poison, <4 x i32> zeroinitializer
  %i.au = fmul <4 x float> %i.s, %i.at
  %i.av = fadd <4 x float> %i.as, %i.au
  %i.aw = shufflevector <1 x float> %12, <1 x float> poison, <4 x i32> zeroinitializer
  %i.ax = fmul <4 x float> %i.u, %i.aw
  %i.ay = fadd <4 x float> %i.av, %i.ax
  %i.az = shufflevector <1 x float> %13, <1 x float> poison, <4 x i32> zeroinitializer
  %i.ba = fmul <4 x float> %i.w, %i.az
  %i.bb = fadd <4 x float> %i.ay, %i.ba           ; 10 uses
  %i.bc = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bd = fmul <4 x float> %i.q, %i.bc
  %18 = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.be = fmul <4 x float> %i.s, %18
  %i.bf = fadd <4 x float> %i.bd, %i.be
  %19 = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bg = fmul <4 x float> %i.u, %19
  %i.bh = fadd <4 x float> %i.bg, %i.bf
  %20 = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bi = fmul <4 x float> %i.w, %20
  %i.bj = fadd <4 x float> %i.bi, %i.bh           ; 10 uses
  %i.bk = shufflevector <4 x float> %i.ai, <4 x float> %i.aq, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 3 uses
  %i.bl = shufflevector <4 x float> %i.aq, <4 x float> %i.ai, <4 x i32> <i32 6, i32 7, i32 2, i32 3> ; 3 uses
  %i.bm = shufflevector <4 x float> %i.bb, <4 x float> %i.bj, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 3 uses
  %i.bn = shufflevector <4 x float> %i.bj, <4 x float> %i.bb, <4 x i32> <i32 6, i32 7, i32 2, i32 3> ; 3 uses
  %i.bo = shufflevector <4 x float> %i.aq, <4 x float> %i.ai, <4 x i32> <i32 1, i32 1, i32 4, i32 4>
  %i.bp = fmul <4 x float> %i.bl, %i.bo
  %i.bq = shufflevector <4 x float> %i.ai, <4 x float> %i.aq, <4 x i32> <i32 1, i32 1, i32 4, i32 4>
  %i.br = shufflevector <4 x float> %i.aq, <4 x float> %i.ai, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.bs = fmul <4 x float> %i.bq, %i.br
  %i.bt = fsub <4 x float> %i.bp, %i.bs           ; 5 uses
  %i.bu = shufflevector <4 x float> %i.bj, <4 x float> %i.bb, <4 x i32> <i32 3, i32 3, i32 6, i32 6>
  %i.bv = fmul <4 x float> %i.bm, %i.bu
  %i.bw = shufflevector <4 x float> %i.bb, <4 x float> %i.bj, <4 x i32> <i32 3, i32 3, i32 6, i32 6>
  %i.bx = shufflevector <4 x float> %i.bj, <4 x float> %i.bb, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.by = fmul <4 x float> %i.bw, %i.bx
  %i.bz = fsub <4 x float> %i.bv, %i.by           ; 5 uses
  %i.ca = shufflevector <4 x float> %i.aq, <4 x float> %i.ai, <4 x i32> <i32 1, i32 1, i32 5, i32 5>
  %i.cb = fmul <4 x float> %i.bk, %i.ca           ; 2 uses
  %i.cc = shufflevector <4 x float> %i.cb, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.cd = fsub <4 x float> %i.cb, %i.cc           ; 2 uses
  %i.ce = shufflevector <4 x float> %i.aq, <4 x float> %i.ai, <4 x i32> <i32 3, i32 3, i32 7, i32 7>
  %i.cf = fmul <4 x float> %i.bl, %i.ce           ; 2 uses
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ch = fsub <4 x float> %i.cf, %i.cg           ; 2 uses
  %i.ci = shufflevector <4 x float> %i.bj, <4 x float> %i.bb, <4 x i32> <i32 1, i32 1, i32 5, i32 5>
  %i.cj = fmul <4 x float> %i.bm, %i.ci           ; 2 uses
  %i.ck = shufflevector <4 x float> %i.cj, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.cl = fsub <4 x float> %i.cj, %i.ck           ; 2 uses
  %i.cm = shufflevector <4 x float> %i.bj, <4 x float> %i.bb, <4 x i32> <i32 3, i32 3, i32 7, i32 7>
  %i.cn = fmul <4 x float> %i.bn, %i.cm           ; 2 uses
  %i.co = shufflevector <4 x float> %i.cn, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.cp = fsub <4 x float> %i.cn, %i.co           ; 2 uses
  %i.cq = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.cr = fmul <4 x float> %i.bt, %i.cq           ; 2 uses
  %i.cs = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ct = fadd <4 x float> %i.cr, %i.cs           ; 2 uses
  %i.cu = shufflevector <4 x float> %i.ct, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cv = fadd <4 x float> %i.ct, %i.cu
  %i.cw = fmul <4 x float> %i.cd, %i.cp
  %i.cx = fmul <4 x float> %i.ch, %i.cl
  %i.cy = fadd <4 x float> %i.cw, %i.cx
  %i.cz = fsub <4 x float> %i.cy, %i.cv
  %i.da = fdiv <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, %i.cz
  %i.db = bitcast <4 x float> %i.da to <4 x i32>
  %i.dc = shufflevector <4 x i32> %i.db, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dd = shufflevector <4 x float> %i.bb, <4 x float> %i.bj, <4 x i32> <i32 0, i32 0, i32 4, i32 4>
  %i.de = shufflevector <4 x float> %i.bt, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.df = fmul <4 x float> %i.de, %i.dd
  %i.dg = shufflevector <4 x float> %i.bb, <4 x float> %i.bj, <4 x i32> <i32 1, i32 1, i32 5, i32 5>
  %i.dh = shufflevector <4 x float> %i.bt, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.di = fmul <4 x float> %i.dh, %i.dg
  %i.dj = fadd <4 x float> %i.df, %i.di
  %i.dk = shufflevector <4 x float> %i.cd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dl = fmul <4 x float> %i.dk, %i.bn
  %i.dm = fsub <4 x float> %i.dl, %i.dj
  %i.dn = shufflevector <4 x float> %i.ai, <4 x float> %i.aq, <4 x i32> <i32 2, i32 2, i32 6, i32 6>
  %i.do = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dp = fmul <4 x float> %i.dn, %i.do
  %i.dq = shufflevector <4 x float> %i.ai, <4 x float> %i.aq, <4 x i32> <i32 3, i32 3, i32 7, i32 7>
  %i.dr = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ds = fmul <4 x float> %i.dq, %i.dr
  %i.dt = fadd <4 x float> %i.dp, %i.ds
  %i.du = shufflevector <4 x float> %i.cp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dv = fmul <4 x float> %i.bk, %i.du
  %i.dw = fsub <4 x float> %i.dv, %i.dt
  %i.dx = shufflevector <4 x float> %i.bt, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 3, i32 0>
  %i.dy = fmul <4 x float> %i.dx, %i.bn
  %i.dz = shufflevector <4 x float> %i.bb, <4 x float> %i.bj, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.ea = shufflevector <4 x float> %i.bt, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 2, i32 1>
  %i.eb = fmul <4 x float> %i.ea, %i.dz
  %i.ec = fsub <4 x float> %i.dy, %i.eb
  %i.ed = shufflevector <4 x float> %i.ch, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ee = fmul <4 x float> %i.ed, %i.bm
  %i.ef = fsub <4 x float> %i.ee, %i.ec
  %i.eg = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 3, i32 0>
  %i.eh = fmul <4 x float> %i.bk, %i.eg
  %i.ei = shufflevector <4 x float> %i.ai, <4 x float> %i.aq, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.ej = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 2, i32 1>
  %i.ek = fmul <4 x float> %i.ei, %i.ej
  %i.el = fsub <4 x float> %i.eh, %i.ek
  %i.em = shufflevector <4 x float> %i.cl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.en = fmul <4 x float> %i.bl, %i.em
  %i.eo = fsub <4 x float> %i.en, %i.el
  %i.ep = xor <4 x i32> %i.dc, <i32 0, i32 -2147483648, i32 -2147483648, i32 0>
  %i.eq = bitcast <4 x i32> %i.ep to <4 x float>  ; 4 uses
  %i.er = fmul <4 x float> %i.dw, %i.eq           ; 2 uses
  %i.es = fmul <4 x float> %i.ef, %i.eq           ; 2 uses
  %i.et = fmul <4 x float> %i.eo, %i.eq           ; 2 uses
  %i.eu = fmul <4 x float> %i.dm, %i.eq           ; 2 uses
  %i.ev = shufflevector <4 x float> %i.er, <4 x float> %i.es, <4 x i32> <i32 3, i32 1, i32 7, i32 5>
  %i.ew = shufflevector <4 x float> %i.er, <4 x float> %i.es, <4 x i32> <i32 2, i32 0, i32 6, i32 4>
  %i.ex = shufflevector <4 x float> %i.et, <4 x float> %i.eu, <4 x i32> <i32 3, i32 1, i32 7, i32 5>
  %i.ey = shufflevector <4 x float> %i.et, <4 x float> %i.eu, <4 x i32> <i32 2, i32 0, i32 6, i32 4>
  %.sroa.0.12.vec.insert = insertelement <4 x float> %.sroa.0.0.vec.expand, float 1.000000e+00, i64 3
  %i.ez = load <2 x float>, ptr %3, align 4, !tbaa !12
  %i.fa = shufflevector <3 x float> %.sroa.0.0.copyload, <3 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.fb = fsub <2 x float> %i.fa, %i.ez
  %i.fc = load <2 x float>, ptr %i.p, align 4, !tbaa !12
  %i.fd = fdiv <2 x float> %i.fb, %i.fc
  %i.fe = shufflevector <2 x float> %i.fd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ff = shufflevector <4 x float> %i.fe, <4 x float> %.sroa.0.12.vec.insert, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fg = fmul <4 x float> %i.ff, splat (float 2.000000e+00)
  %i.fh = fadd <4 x float> %i.fg, splat (float -1.000000e+00) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.fi = shufflevector <4 x float> %i.fh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fj = fmul <4 x float> %i.ev, %i.fi
  %i.fk = shufflevector <4 x float> %i.fh, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fl = fmul <4 x float> %i.ew, %i.fk
  %i.fm = fadd <4 x float> %i.fj, %i.fl
  %i.fn = shufflevector <4 x float> %i.fh, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fo = fmul <4 x float> %i.ex, %i.fn
  %i.fp = fadd <4 x float> %i.fo, %i.fm
  %i.fq = shufflevector <4 x float> %i.fh, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fr = fmul <4 x float> %i.ey, %i.fq
  %i.fs = fadd <4 x float> %i.fr, %i.fp           ; 2 uses
  %i.ft = shufflevector <4 x float> %i.fs, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fu = fdiv <4 x float> %i.fs, %i.ft
  store <4 x float> %i.fu, ptr %5, align 16, !tbaa !20
  %i.fv = ptrtoint ptr %4 to i64
  %i.fw = lshr exact i64 %i.fv, 2
  %i.fx = sub nsw i64 0, %i.fw
  %i.fy = and i64 %i.fx, 3                        ; 3 uses
  %cond = icmp eq i64 %i.fy, 0
  br i1 %cond, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fz = shl nuw nsw i64 %i.fy, 2                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %4, ptr nonnull align 16 %5, i64 %i.fz, i1 false), !tbaa !12
  %.not101 = icmp eq i64 %i.fy, 3
  br i1 %.not101, label %_ZN5Eigen5BlockINS0_INS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IfLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.pre-phi = phi i64 [ %i.fz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %scevgep = getelementptr i8, ptr %4, i64 %.pre-phi
  %scevgep103 = getelementptr i8, ptr %5, i64 %.pre-phi
  %i.ga = sub nuw nsw i64 12, %.pre-phi
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep, ptr align 4 %scevgep103, i64 %i.ga, i1 false), !tbaa !12
  br label %_ZN5Eigen5BlockINS0_INS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IfLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen5BlockINS0_INS_6MatrixIfLi1ELi3ELi1ELi1ELi3EEELi1ELi3ELb1EEELi1ELin1ELb0EEaSINS0_INS1_IfLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEERS4_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl9unprojectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS2_IfLi4ELi4ELi0ELi4ELi4EEES4_NS2_IfLi4ELi1ELi0ELi4ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERKNS6_IT2_EERNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Eigen::Matrix.59", align 16 ; 5 uses
  %6 = alloca %"class.Eigen::Matrix.59", align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %i.a = load <2 x double>, ptr %0, align 1, !tbaa !20, !noalias !105
  store <2 x double> %i.a, ptr %6, align 16, !tbaa !20, !alias.scope !105
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !21, !noalias !105
  store double %i.d, ptr %i.b, align 16, !tbaa !21, !alias.scope !105
  call void @_ZN3igl9unprojectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS2_IfLi4ELi4ELi0ELi4ELi4EEES4_NS2_IfLi4ELi1ELi0ELi4ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERKNS6_IT2_EERNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.e = load <2 x double>, ptr %5, align 16, !tbaa !20
  store <2 x double> %i.e, ptr %4, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.h = load double, ptr %i.g, align 16, !tbaa !21
  store double %i.h, ptr %i.f, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl9unprojectIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS2_IfLi4ELi4ELi0ELi4ELi4EEES4_NS2_IfLi4ELi1ELi0ELi4ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERKNS6_IT2_EERNS1_15PlainObjectBaseIT3_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
.preheader.i.i.i.i.i.i.i.i.i.i.i.i:
  %5 = alloca %"class.Eigen::Product.702", align 8 ; 5 uses
  %6 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %7 = alloca %"class.Eigen::Matrix.33", align 16 ; 11 uses
  %8 = alloca %"class.Eigen::Matrix.43", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 48
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 64
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 80
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 96
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.b = getelementptr i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store ptr %2, ptr %5, align 8, !tbaa !61, !alias.scope !108
  store ptr %1, ptr %i.a, align 8, !tbaa !61, !alias.scope !108
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEENS_7ProductINS_12CwiseUnaryOpINS0_14scalar_cast_opIfdEEKNS2_IfLi4ELi4ELi0ELi4ELi4EEEEESA_Li1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(128) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %.sroa.0263.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %7, align 16 ; 6 uses
  %.sroa.4.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 16 ; 6 uses
  %.sroa.5.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 16 ; 5 uses
  %.sroa.6.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 16 ; 6 uses
  %.sroa.7.0.copyload.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i, align 16 ; 6 uses
end_hunk_0
