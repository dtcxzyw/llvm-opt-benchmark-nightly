Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/cat?download=true
inline.NumInlined: 2761
inline.NumDeleted: 1277
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_ZN3igl3catIN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEENS2_IdLin1ELin1ELi0ELin1ELin1EEEEEviRKSt6vectorIT_SaIS6_EERNS1_15PlainObjectBaseIT0_EE:bb.a
vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %index ; 3 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %index ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.x, i64 %index ; 3 uses
  %i.aj = load double, ptr %i.af, align 8, !tbaa !125, !alias.scope !435
  %i.ak = load double, ptr %i.ah, align 8, !tbaa !125, !alias.scope !435
  %i.al = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.am = insertelement <2 x double> %i.al, double %i.ak, i64 1
  store <2 x double> %i.am, ptr %i.ai, align 8, !tbaa !125, !alias.scope !438, !noalias !440
  %i.an = getelementptr [8 x i8], ptr %i.ai, i64 %i.z
  %i.ao = getelementptr i8, ptr %i.af, i64 8
  %i.ap = getelementptr i8, ptr %i.ag, i64 32
  %i.aq = load double, ptr %i.ao, align 8, !tbaa !125, !alias.scope !435
  %i.ar = load double, ptr %i.ap, align 8, !tbaa !125, !alias.scope !435
  %i.as = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.ar, i64 1
  store <2 x double> %i.at, ptr %i.an, align 8, !tbaa !125, !alias.scope !443, !noalias !444
  %i.au = getelementptr i8, ptr %i.ai, i64 %.idx107
  %i.av = getelementptr i8, ptr %i.af, i64 16
  %i.aw = getelementptr i8, ptr %i.ag, i64 40
  %i.ax = load double, ptr %i.av, align 8, !tbaa !125, !alias.scope !435
  %i.ay = load double, ptr %i.aw, align 8, !tbaa !125, !alias.scope !435
  %i.az = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.ba = insertelement <2 x double> %i.az, double %i.ay, i64 1
  store <2 x double> %i.ba, ptr %i.au, align 8, !tbaa !125, !alias.scope !445, !noalias !435
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !446

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count105, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:   ; preds = %vector.memcheck, %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.lr.ph, %middle.block
  %.05297.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.lr.ph ], [ %n.vec, %middle.block ] ; 2 uses
  br label %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i

.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i:             ; preds = %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.05297.ph, %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.05297 = phi i64 [ %i.bj, %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.05297.ph, %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %indvars.iv102 ; 3 uses
  %sext58 = shl i64 %.05297, 32
  %i.bd = ashr exact i64 %sext58, 32              ; 2 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.bd ; 3 uses
  %.pre.i.i.i.i.i.i.i.i.i.i = load double, ptr %i.bc, align 8, !tbaa !125
  store double %.pre.i.i.i.i.i.i.i.i.i.i, ptr %i.be, align 8, !tbaa !125
  %i.bf = getelementptr [8 x i8], ptr %i.be, i64 %i.z
  %i.bg = getelementptr i8, ptr %i.bc, i64 8
  %.pre.i.i.i.i.i.i.i.i.i.i.1 = load double, ptr %i.bg, align 8, !tbaa !125
  store double %.pre.i.i.i.i.i.i.i.i.i.i.1, ptr %i.bf, align 8, !tbaa !125
  %i.bh = getelementptr i8, ptr %i.be, i64 %.idx107
  %i.bi = getelementptr i8, ptr %i.bc, i64 16
  %.pre.i.i.i.i.i.i.i.i.i.i.2 = load double, ptr %i.bi, align 8, !tbaa !125
  store double %.pre.i.i.i.i.i.i.i.i.i.i.2, ptr %i.bh, align 8, !tbaa !125
  %i.bj = add nsw i64 %i.bd, 1
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %exitcond106.not = icmp eq i64 %indvars.iv.next103, %wide.trip.count105
  br i1 %exitcond106.not, label %.loopexit, label %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !447

._crit_edge:                                      ; preds = %.preheader86
  %i.bk = add i64 %i.d, -24
  %i.bl = sub i64 %i.bk, %i.e
  %i.bm = udiv i64 %i.bl, 24
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = mul i32 %i.bn, 3
  %i.bp = add i32 %i.bo, 3                        ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit59, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.br = sext i32 %i.bp to i64                   ; 2 uses
  %i.bs = sdiv i64 9223372036854775807, %i.br
  %i.bt = icmp slt i64 %i.bs, 1
  br i1 %i.bt, label %bb.f, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit59

bb.f:                                             ; preds = %bb.e
  %i.bu = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bu, align 8, !tbaa !51
  tail call void @__cxa_throw(ptr nonnull %i.bu, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit59: ; preds = %.preheader86, %._crit_edge, %bb.e
  %i.bv = phi i64 [ %i.br, %bb.e ], [ 0, %._crit_edge ], [ 0, %.preheader86 ] ; 2 uses
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.bv, i64 noundef 1, i64 noundef %i.bv)
  %i.bw = icmp sgt i32 %i.h, 0
  br i1 %i.bw, label %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i60.lr.ph, label %.loopexit

.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i60.lr.ph:     ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit59
  %i.bx = load ptr, ptr %1, align 8, !tbaa !431
  %i.by = load ptr, ptr %2, align 8, !tbaa !61, !noalias !448
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !57, !noalias !448 ; 3 uses
  %wide.trip.count = and i64 %i.g, 2147483647
  %.idx = shl i64 %i.ca, 4
  br label %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i60

.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i60:           ; preds = %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i60.lr.ph, %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i60
  %indvars.iv = phi i64 [ 0, %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i60.lr.ph ], [ %indvars.iv.next, %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i60 ] ; 2 uses
  %.04990 = phi i64 [ 0, %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i60.lr.ph ], [ %i.cj, %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i60 ]
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.bx, i64 %indvars.iv ; 3 uses
  %sext56 = shl i64 %.04990, 32
  %i.cc = ashr exact i64 %sext56, 32              ; 2 uses
  %i.cd = mul nsw i64 %i.ca, %i.cc
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.cd ; 3 uses
  %.pre.i.i.i.i.i.i.i.i.i.i63 = load double, ptr %i.cb, align 8, !tbaa !125
  store double %.pre.i.i.i.i.i.i.i.i.i.i63, ptr %i.ce, align 8, !tbaa !125
  %i.cf = getelementptr [8 x i8], ptr %i.ce, i64 %i.ca
  %i.cg = getelementptr i8, ptr %i.cb, i64 8
  %.pre.i.i.i.i.i.i.i.i.i.i63.1 = load double, ptr %i.cg, align 8, !tbaa !125
  store double %.pre.i.i.i.i.i.i.i.i.i.i63.1, ptr %i.cf, align 8, !tbaa !125
  %i.ch = getelementptr i8, ptr %i.ce, i64 %.idx
  %i.ci = getelementptr i8, ptr %i.cb, i64 16
  %.pre.i.i.i.i.i.i.i.i.i.i63.2 = load double, ptr %i.ci, align 8, !tbaa !125
  store double %.pre.i.i.i.i.i.i.i.i.i.i63.2, ptr %i.ch, align 8, !tbaa !125
  %i.cj = add nsw i64 %i.cc, 3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i60, !llvm.loop !451

bb.g:                                             ; preds = %bb.d
  %i.ck = load ptr, ptr @stderr, align 8, !tbaa !49
  %i.cl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ck, ptr noundef nonnull @.str, i32 noundef %0) #21 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i60, %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit59, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, %bb.g, %_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl3catIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEEEEviRKSt6vectorIT_SaIS6_EERNS1_15PlainObjectBaseIT0_EE(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !452  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !455    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24                  ; 3 uses
  %i.h = trunc i64 %i.g to i32                    ; 3 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !57
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !60
  %i.n = mul nsw i64 %i.m, %i.k
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %2, align 8, !tbaa !61
  tail call void @free(ptr noundef %i.o) #20
  store ptr null, ptr %2, align 8, !tbaa !61
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll.exit: ; preds = %bb.b, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  switch i32 %0, label %bb.i [
    i32 1, label %.preheader
    i32 2, label %.preheader107
  ]

.preheader107:                                    ; preds = %bb.d
  %.not108 = icmp eq ptr %i.c, %i.b
  br i1 %.not108, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit59, label %._crit_edge

.preheader:                                       ; preds = %bb.d
  %.not103114 = icmp eq ptr %i.c, %i.b
  br i1 %.not103114, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %.lr.ph117.preheader

.lr.ph117.preheader:                              ; preds = %.preheader
  %i.p = add i64 %i.d, -24
  %i.q = sub i64 %i.p, %i.e
  %i.r = udiv i64 %i.q, 24
  %i.s = mul i64 %i.r, 12884901888
  %sext = add i64 %i.s, 12884901888
  %i.t = ashr exact i64 %sext, 32
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %.lr.ph117.preheader, %.preheader
  %.053.lcssa = phi i64 [ 0, %.preheader ], [ %i.t, %.lr.ph117.preheader ] ; 2 uses
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.053.lcssa, i64 noundef %.053.lcssa, i64 noundef 1)
  %i.u = icmp sgt i32 %i.h, 0
  br i1 %i.u, label %.lr.ph121, label %.loopexit

.lr.ph121:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %wide.trip.count138 = and i64 %i.g, 2147483647
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph121, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS1_IdLi3ELi1ELi0ELi3ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %indvars.iv135 = phi i64 [ 0, %.lr.ph121 ], [ %indvars.iv.next136, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS1_IdLi3ELi1ELi0ELi3ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit ] ; 2 uses
  %.052119 = phi i64 [ 0, %.lr.ph121 ], [ %i.ao, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS1_IdLi3ELi1ELi0ELi3ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit ]
  %i.v = load ptr, ptr %1, align 8, !tbaa !455
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %indvars.iv135 ; 5 uses
  %sext58 = shl i64 %.052119, 32
  %i.x = ashr exact i64 %sext58, 32               ; 2 uses
  %i.y = load ptr, ptr %2, align 8, !tbaa !61, !noalias !456
  %i.z = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.x ; 6 uses
  %i.aa = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ab = and i64 %i.aa, 7
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph52.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %bb.e
  %i.ac = load double, ptr %i.w, align 8, !tbaa !125
  store double %i.ac, ptr %i.z, align 8, !tbaa !125
  %i.ad = getelementptr i8, ptr %i.z, i64 8
  %i.ae = getelementptr i8, ptr %i.w, i64 8
  %i.af = load double, ptr %i.ae, align 8, !tbaa !125
  store double %i.af, ptr %i.ad, align 8, !tbaa !125
  br label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS1_IdLi3ELi1ELi0ELi3ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit.sink.split

.lr.ph52.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.e
  %i.ag = lshr exact i64 %i.aa, 3
  %i.ah = and i64 %i.ag, 1                        ; 4 uses
  %.not143 = icmp eq i64 %i.ah, 0
  br i1 %.not143, label %.lr.ph47.i.i.i.i.i.i.i.i.i.i, label %.preheader43.loopexit.i.i.i.i.i.i.i.i.i.i

.preheader43.loopexit.i.i.i.i.i.i.i.i.i.i:        ; preds = %.lr.ph52.i.i.i.i.i.i.i.i.i.i
  %3 = load double, ptr %i.w, align 8, !tbaa !125
  store double %3, ptr %i.z, align 8, !tbaa !125
  br label %.lr.ph47.i.i.i.i.i.i.i.i.i.i

.lr.ph47.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.preheader43.loopexit.i.i.i.i.i.i.i.i.i.i, %.lr.ph52.i.i.i.i.i.i.i.i.i.i
  %i.ai = getelementptr [8 x i8], ptr %i.z, i64 %i.ah
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ah
  %i.ak = load <2 x double>, ptr %i.aj, align 1, !tbaa !133
  store <2 x double> %i.ak, ptr %i.ai, align 16, !tbaa !133
  %.not144.not = icmp eq i64 %i.ah, 0
  br i1 %.not144.not, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS1_IdLi3ELi1ELi0ELi3ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit.sink.split, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS1_IdLi3ELi1ELi0ELi3ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS1_IdLi3ELi1ELi0ELi3ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit.sink.split: ; preds = %.lr.ph47.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.al = getelementptr i8, ptr %i.z, i64 16
  %i.am = getelementptr i8, ptr %i.w, i64 16
  %i.an = load double, ptr %i.am, align 8, !tbaa !125
  store double %i.an, ptr %i.al, align 8, !tbaa !125
  br label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS1_IdLi3ELi1ELi0ELi3ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS1_IdLi3ELi1ELi0ELi3ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS1_IdLi3ELi1ELi0ELi3ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit.sink.split, %.lr.ph47.i.i.i.i.i.i.i.i.i.i
  %i.ao = add nsw i64 %i.x, 3
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %exitcond139.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count138
  br i1 %exitcond139.not, label %.loopexit, label %bb.e, !llvm.loop !459

._crit_edge:                                      ; preds = %.preheader107
  %i.ap = add i64 %i.d, -24
  %i.aq = sub i64 %i.ap, %i.e
  %i.ar = udiv i64 %i.aq, 24
  %i.as = trunc i64 %i.ar to i32
  %i.at = add i32 %i.as, 1                        ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit59, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.av = sext i32 %i.at to i64                   ; 2 uses
  %i.aw = sdiv i64 9223372036854775807, %i.av
  %i.ax = icmp slt i64 %i.aw, 3
  br i1 %i.ax, label %bb.g, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit59

bb.g:                                             ; preds = %bb.f
  %i.ay = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ay, align 8, !tbaa !51
  tail call void @__cxa_throw(ptr nonnull %i.ay, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit59: ; preds = %.preheader107, %._crit_edge, %bb.f
  %i.az = phi i64 [ %i.av, %bb.f ], [ 0, %._crit_edge ], [ 0, %.preheader107 ] ; 2 uses
  %i.ba = mul nsw i64 %i.az, 3
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ba, i64 noundef 3, i64 noundef %i.az)
  %i.bb = icmp sgt i32 %i.h, 0
  br i1 %i.bb, label %.lr.ph113, label %.loopexit

.lr.ph113:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit59
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %wide.trip.count = and i64 %i.g, 2147483647
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph113, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS1_IdLi3ELi1ELi0ELi3ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit83
  %indvars.iv = phi i64 [ 0, %.lr.ph113 ], [ %indvars.iv.next, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS1_IdLi3ELi1ELi0ELi3ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit83 ] ; 2 uses
  %.049111 = phi i64 [ 0, %.lr.ph113 ], [ %i.by, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS1_IdLi3ELi1ELi0ELi3ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit83 ]
  %i.bd = load ptr, ptr %1, align 8, !tbaa !455
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %indvars.iv ; 5 uses
  %sext56 = shl i64 %.049111, 32
  %i.bf = ashr exact i64 %sext56, 32              ; 2 uses
  %i.bg = load ptr, ptr %2, align 8, !tbaa !61, !noalias !460
  %i.bh = load i64, ptr %i.bc, align 8, !tbaa !57, !noalias !460
  %i.bi = mul nsw i64 %i.bh, %i.bf
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bi ; 6 uses
  %i.bk = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bl = and i64 %i.bk, 7
  %.not.i.i.i.i.i.i.i.i.i.i60 = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i60, label %.lr.ph52.i.i.i.i.i.i.i.i.i.i69, label %.preheader.i.i.i.i.i.i.i.i.i.i.i62.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.i62.preheader:     ; preds = %bb.h
  %i.bm = load double, ptr %i.be, align 8, !tbaa !125
  store double %i.bm, ptr %i.bj, align 8, !tbaa !125
  %i.bn = getelementptr i8, ptr %i.bj, i64 8
  %i.bo = getelementptr i8, ptr %i.be, i64 8
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !125
  store double %i.bp, ptr %i.bn, align 8, !tbaa !125
  br label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS1_IdLi3ELi1ELi0ELi3ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit83.sink.split

.lr.ph52.i.i.i.i.i.i.i.i.i.i69:                   ; preds = %bb.h
  %i.bq = lshr exact i64 %i.bk, 3
  %i.br = and i64 %i.bq, 1                        ; 4 uses
  %.not = icmp eq i64 %i.br, 0
  br i1 %.not, label %.lr.ph47.i.i.i.i.i.i.i.i.i.i80, label %.preheader43.loopexit.i.i.i.i.i.i.i.i.i.i82

.preheader43.loopexit.i.i.i.i.i.i.i.i.i.i82:      ; preds = %.lr.ph52.i.i.i.i.i.i.i.i.i.i69
  %4 = load double, ptr %i.be, align 8, !tbaa !125
  store double %4, ptr %i.bj, align 8, !tbaa !125
  br label %.lr.ph47.i.i.i.i.i.i.i.i.i.i80

.lr.ph47.i.i.i.i.i.i.i.i.i.i80:                   ; preds = %.preheader43.loopexit.i.i.i.i.i.i.i.i.i.i82, %.lr.ph52.i.i.i.i.i.i.i.i.i.i69
  %i.bs = getelementptr [8 x i8], ptr %i.bj, i64 %i.br
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.br
  %i.bu = load <2 x double>, ptr %i.bt, align 1, !tbaa !133
  store <2 x double> %i.bu, ptr %i.bs, align 16, !tbaa !133
  %.not142.not = icmp eq i64 %i.br, 0
  br i1 %.not142.not, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS1_IdLi3ELi1ELi0ELi3ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit83.sink.split, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS1_IdLi3ELi1ELi0ELi3ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit83

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS1_IdLi3ELi1ELi0ELi3ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit83.sink.split: ; preds = %.lr.ph47.i.i.i.i.i.i.i.i.i.i80, %.preheader.i.i.i.i.i.i.i.i.i.i.i62.preheader
  %i.bv = getelementptr i8, ptr %i.bj, i64 16
  %i.bw = getelementptr i8, ptr %i.be, i64 16
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !125
  store double %i.bx, ptr %i.bv, align 8, !tbaa !125
  br label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS1_IdLi3ELi1ELi0ELi3ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit83

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS1_IdLi3ELi1ELi0ELi3ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit83: ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS1_IdLi3ELi1ELi0ELi3ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit83.sink.split, %.lr.ph47.i.i.i.i.i.i.i.i.i.i80
  %i.by = add nsw i64 %i.bf, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.h, !llvm.loop !463

bb.i:                                             ; preds = %bb.d
  %i.bz = load ptr, ptr @stderr, align 8, !tbaa !49
  %i.ca = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bz, ptr noundef nonnull @.str, i32 noundef %0) #21 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS1_IdLi3ELi1ELi0ELi3ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit83, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS1_IdLi3ELi1ELi0ELi3ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit59, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, %bb.i, %_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl3catIN5Eigen6MatrixIiLi1ELin1ELi1ELi1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEviRKSt6vectorIT_SaIS6_EERNS1_15PlainObjectBaseIT0_EE(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !464  ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !467    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 4                   ; 3 uses
  %i.h = trunc i64 %i.g to i32                    ; 3 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !183
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !184
  %i.n = mul nsw i64 %i.m, %i.k
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %2, align 8, !tbaa !181
  tail call void @free(ptr noundef %i.o) #20
  store ptr null, ptr %2, align 8, !tbaa !181
  br label %_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll.exit: ; preds = %bb.b, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  switch i32 %0, label %bb.k [
    i32 1, label %bb.e
    i32 2, label %.preheader
  ]

.preheader:                                       ; preds = %bb.d
  %.not87 = icmp eq ptr %i.c, %i.b
  br i1 %.not87, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit60, label %.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !468  ; 2 uses
  %.not8593 = icmp eq ptr %i.c, %i.b
  br i1 %.not8593, label %._crit_edge98.thread, label %._crit_edge98

._crit_edge98.thread:                             ; preds = %bb.e
  %sext57116 = shl i64 %i.q, 32
  %i.r = ashr exact i64 %sext57116, 32
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

._crit_edge98:                                    ; preds = %bb.e
  %i.s = add i64 %i.d, 68719476720
  %i.t = sub i64 %i.s, %i.e
  %i.u = lshr i64 %i.t, 4
  %i.v = trunc i64 %i.u to i32
  %i.w = add i32 %i.v, 1                          ; 2 uses
  %i.x = sext i32 %i.w to i64                     ; 3 uses
  %sext57 = shl i64 %i.q, 32                      ; 2 uses
  %i.y = ashr exact i64 %sext57, 32               ; 3 uses
  %i.z = icmp eq i32 %i.w, 0
  %i.aa = icmp eq i64 %sext57, 0
  %or.cond.i.i = or i1 %i.aa, %i.z
  br i1 %or.cond.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge98
  %i.ab = sdiv i64 9223372036854775807, %i.y
  %i.ac = icmp slt i64 %i.ab, %i.x
  br i1 %i.ac, label %bb.g, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ad, align 8, !tbaa !51
  tail call void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %._crit_edge98.thread, %._crit_edge98, %bb.f
  %i.ae = phi i64 [ %i.r, %._crit_edge98.thread ], [ %i.y, %._crit_edge98 ], [ %i.y, %bb.f ] ; 9 uses
  %i.af = phi i64 [ 0, %._crit_edge98.thread ], [ %i.x, %._crit_edge98 ], [ %i.x, %bb.f ] ; 2 uses
  %i.ag = mul nsw i64 %i.ae, %i.af
  tail call void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ag, i64 noundef %i.af, i64 noundef %i.ae)
  %i.ah = icmp sgt i32 %i.h, 0
  br i1 %i.ah, label %.lr.ph102, label %.loopexit

.lr.ph102:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.ai = load ptr, ptr %1, align 8, !tbaa !467
  %i.aj = load ptr, ptr %2, align 8, !tbaa !181, !noalias !470 ; 2 uses
  %i.ak = ptrtoaddr ptr %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !183 ; 6 uses
  %i.an = icmp sgt i64 %i.ae, 0
  br i1 %i.an, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.preheader, label %.loopexit

.preheader.i.i.i.i.i.i.i.i.i.i.preheader.preheader: ; preds = %.lr.ph102
  %wide.trip.count109 = and i64 %i.g, 2147483647
  %min.iters.check127 = icmp ugt i64 %i.ae, 7
  %ident.check123.not = icmp eq i64 %i.am, 1
  %or.cond = select i1 %min.iters.check127, i1 %ident.check123.not, i1 false
  %n.vec129 = and i64 %i.ae, 9223372036854775800  ; 3 uses
  %cmp.n136 = icmp eq i64 %i.ae, %n.vec129
  %xtraiter142 = and i64 %i.ae, 3                 ; 2 uses
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.preheader, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS1_IiLi1ELin1ELi1ELi1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit
  %indvars.iv106 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.preheader ], [ %indvars.iv.next107, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS1_IiLi1ELin1ELi1ELi1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit ] ; 2 uses
  %.052100 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader.preheader ], [ %i.bx, %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS1_IiLi1ELin1ELi1ELi1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit ]
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %indvars.iv106
  %sext58 = shl i64 %.052100, 32                  ; 2 uses
  %i.ap = ashr exact i64 %sext58, 32              ; 2 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.ap ; 6 uses
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !473 ; 7 uses
  br i1 %or.cond, label %vector.memcheck124, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader139

vector.memcheck124:                               ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader
  %i.as = ptrtoaddr ptr %i.ar to i64
  %i.at = ashr exact i64 %sext58, 30
  %i.au = add i64 %i.at, %i.ak
  %i.av = sub i64 %i.as, %i.au
  %diff.check125 = icmp ugt i64 %i.av, -32
  br i1 %diff.check125, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader139, label %vector.body130

vector.body130:                                   ; preds = %vector.memcheck124, %vector.body130
  %index131 = phi i64 [ %index.next134, %vector.body130 ], [ 0, %vector.memcheck124 ] ; 3 uses
  %i.aw = getelementptr [4 x i8], ptr %i.aq, i64 %index131 ; 2 uses
  %i.ax = getelementptr [4 x i8], ptr %i.ar, i64 %index131 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  %wide.load132 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !170
  %wide.load133 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !170
  %i.az = getelementptr i8, ptr %i.aw, i64 16
  store <4 x i32> %wide.load132, ptr %i.aw, align 4, !tbaa !170
  store <4 x i32> %wide.load133, ptr %i.az, align 4, !tbaa !170
  %index.next134 = add nuw i64 %index131, 8       ; 2 uses
  %i.ba = icmp eq i64 %index.next134, %n.vec129
  br i1 %i.ba, label %middle.block135, label %vector.body130, !llvm.loop !474

middle.block135:                                  ; preds = %vector.body130
  br i1 %cmp.n136, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS1_IiLi1ELin1ELi1ELi1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader139

.preheader.i.i.i.i.i.i.i.i.i.i.preheader139:      ; preds = %vector.memcheck124, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block135
  %.0810.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck124 ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec129, %middle.block135 ] ; 3 uses
  br i1 %lcmp.mod143.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.i.i.i.i.i.i.prol

.preheader.i.i.i.i.i.i.i.i.i.i.prol:              ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader139, %.preheader.i.i.i.i.i.i.i.i.i.i.prol
  %.0810.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.be, %.preheader.i.i.i.i.i.i.i.i.i.i.prol ], [ %.0810.i.i.i.i.i.i.i.i.i.i.ph, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader139 ] ; 3 uses
  %prol.iter144 = phi i64 [ %prol.iter144.next, %.preheader.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader139 ]
  %i.bb = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.prol, %i.am
  %i.bc = getelementptr [4 x i8], ptr %i.aq, i64 %i.bb
  %i.bd = getelementptr [4 x i8], ptr %i.ar, i64 %.0810.i.i.i.i.i.i.i.i.i.i.prol
  %.pre.i.i.i.i.i.i.i.i.i.i.prol = load i32, ptr %i.bd, align 4, !tbaa !170
  store i32 %.pre.i.i.i.i.i.i.i.i.i.i.prol, ptr %i.bc, align 4, !tbaa !170
  %i.be = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter144.next = add i64 %prol.iter144, 1   ; 2 uses
  %prol.iter144.cmp.not = icmp eq i64 %prol.iter144.next, %xtraiter142
  br i1 %prol.iter144.cmp.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !475

.preheader.i.i.i.i.i.i.i.i.i.i.prol.loopexit:     ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.prol, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader139
  %.0810.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.0810.i.i.i.i.i.i.i.i.i.i.ph, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader139 ], [ %i.be, %.preheader.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.bf = sub nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.ph, %i.ae
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %_ZN5Eigen5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS1_IiLi1ELin1ELi1ELi1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit, label %.preheader.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i.i.i.i.i.i.i
  %.0810.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bw, %.preheader.i.i.i.i.i.i.i.i.i.i ], [ %.0810.i.i.i.i.i.i.i.i.i.i.unr, %.preheader.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.bh = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i, %i.am
  %i.bi = getelementptr [4 x i8], ptr %i.aq, i64 %i.bh
  %i.bj = getelementptr [4 x i8], ptr %i.ar, i64 %.0810.i.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.bj, align 4, !tbaa !170
  store i32 %.pre.i.i.i.i.i.i.i.i.i.i, ptr %i.bi, align 4, !tbaa !170
  %i.bk = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bl = mul nsw i64 %i.bk, %i.am
  %i.bm = getelementptr [4 x i8], ptr %i.aq, i64 %i.bl
  %i.bn = getelementptr [4 x i8], ptr %i.ar, i64 %i.bk
  %.pre.i.i.i.i.i.i.i.i.i.i.1 = load i32, ptr %i.bn, align 4, !tbaa !170
  store i32 %.pre.i.i.i.i.i.i.i.i.i.i.1, ptr %i.bm, align 4, !tbaa !170
  %i.bo = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bp = mul nsw i64 %i.bo, %i.am
  %i.bq = getelementptr [4 x i8], ptr %i.aq, i64 %i.bp
  %i.br = getelementptr [4 x i8], ptr %i.ar, i64 %i.bo
  %.pre.i.i.i.i.i.i.i.i.i.i.2 = load i32, ptr %i.br, align 4, !tbaa !170
  store i32 %.pre.i.i.i.i.i.i.i.i.i.i.2, ptr %i.bq, align 4, !tbaa !170
  %i.bs = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.bt = mul nsw i64 %i.bs, %i.am
end_hunk_0
