Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/principal_curvature?download=true
inline.NumInlined: 17939
inline.NumDeleted: 8729
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 147
loop-unroll.NumUnrolled: 163
begin_hunk_0_@_ZN5Eigen9JacobiSVDINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7computeERKS2_j:bb.a
  %index538 = phi i64 [ 0, %vector.ph535 ], [ %index.next543, %vector.body537 ] ; 2 uses
  %i.aiq = add i64 %i.agy, %index538              ; 2 uses
  %i.air = getelementptr inbounds [8 x i8], ptr %i.agn, i64 %i.aiq ; 3 uses
  %i.ais = getelementptr inbounds [8 x i8], ptr %i.agp, i64 %i.aiq ; 3 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %i.air, i64 16 ; 2 uses
  %wide.load539 = load <2 x double>, ptr %i.air, align 8, !tbaa !74, !alias.scope !789, !noalias !790
  %wide.load540 = load <2 x double>, ptr %i.ait, align 8, !tbaa !74, !alias.scope !789, !noalias !790
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ais, i64 16 ; 2 uses
  %wide.load541 = load <2 x double>, ptr %i.ais, align 8, !tbaa !74, !alias.scope !790
  %wide.load542 = load <2 x double>, ptr %i.aiu, align 8, !tbaa !74, !alias.scope !790
  store <2 x double> %wide.load541, ptr %i.air, align 8, !tbaa !74, !alias.scope !789, !noalias !790
  store <2 x double> %wide.load542, ptr %i.ait, align 8, !tbaa !74, !alias.scope !789, !noalias !790
  store <2 x double> %wide.load539, ptr %i.ais, align 8, !tbaa !74, !alias.scope !790
  store <2 x double> %wide.load540, ptr %i.aiu, align 8, !tbaa !74, !alias.scope !790
  %index.next543 = add nuw i64 %index538, 4       ; 2 uses
  %i.aiv = icmp eq i64 %index.next543, %n.vec536
  br i1 %i.aiv, label %middle.block544, label %vector.body537, !llvm.loop !767

middle.block544:                                  ; preds = %vector.body537
  %cmp.n545 = icmp eq i64 %i.aid, %n.vec536
  br i1 %cmp.n545, label %.thread, label %.lr.ph.i17.i.i.i.i.i.i145.preheader615

.lr.ph.i17.i.i.i.i.i.i145.preheader615:           ; preds = %vector.memcheck524, %.lr.ph.i17.i.i.i.i.i.i145.preheader, %middle.block544
  %.05.i18.i.i.i.i.i.i146.ph = phi i64 [ %i.agy, %vector.memcheck524 ], [ %i.agy, %.lr.ph.i17.i.i.i.i.i.i145.preheader ], [ %i.aip, %middle.block544 ] ; 6 uses
  %i.aiw = sub i64 %i.agl, %.05.i18.i.i.i.i.i.i146.ph
  %.neg672 = add i64 %.05.i18.i.i.i.i.i.i146.ph, 1
  %xtraiter663 = and i64 %i.aiw, 1
  %lcmp.mod664.not = icmp eq i64 %xtraiter663, 0
  br i1 %lcmp.mod664.not, label %.lr.ph.i17.i.i.i.i.i.i145.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i145.prol

.lr.ph.i17.i.i.i.i.i.i145.prol:                   ; preds = %.lr.ph.i17.i.i.i.i.i.i145.preheader615
  %i.aix = getelementptr inbounds [8 x i8], ptr %i.agn, i64 %.05.i18.i.i.i.i.i.i146.ph ; 2 uses
  %i.aiy = getelementptr inbounds [8 x i8], ptr %i.agp, i64 %.05.i18.i.i.i.i.i.i146.ph ; 2 uses
  %i.aiz = load double, ptr %i.aix, align 8, !tbaa !74
  %i.aja = load double, ptr %i.aiy, align 8, !tbaa !74
  store double %i.aja, ptr %i.aix, align 8, !tbaa !74
  store double %i.aiz, ptr %i.aiy, align 8, !tbaa !74
  %i.ajb = add nsw i64 %.05.i18.i.i.i.i.i.i146.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i145.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i145.prol.loopexit:          ; preds = %.lr.ph.i17.i.i.i.i.i.i145.prol, %.lr.ph.i17.i.i.i.i.i.i145.preheader615
  %.05.i18.i.i.i.i.i.i146.unr = phi i64 [ %.05.i18.i.i.i.i.i.i146.ph, %.lr.ph.i17.i.i.i.i.i.i145.preheader615 ], [ %i.ajb, %.lr.ph.i17.i.i.i.i.i.i145.prol ]
  %i.ajc = icmp eq i64 %i.agl, %.neg672
  br i1 %i.ajc, label %.thread, label %.lr.ph.i17.i.i.i.i.i.i145

.lr.ph.i17.i.i.i.i.i.i145:                        ; preds = %.lr.ph.i17.i.i.i.i.i.i145.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i145
  %.05.i18.i.i.i.i.i.i146 = phi i64 [ %i.ajm, %.lr.ph.i17.i.i.i.i.i.i145 ], [ %.05.i18.i.i.i.i.i.i146.unr, %.lr.ph.i17.i.i.i.i.i.i145.prol.loopexit ] ; 4 uses
  %i.ajd = getelementptr inbounds [8 x i8], ptr %i.agn, i64 %.05.i18.i.i.i.i.i.i146 ; 2 uses
  %i.aje = getelementptr inbounds [8 x i8], ptr %i.agp, i64 %.05.i18.i.i.i.i.i.i146 ; 2 uses
  %i.ajf = load double, ptr %i.ajd, align 8, !tbaa !74
  %i.ajg = load double, ptr %i.aje, align 8, !tbaa !74
  store double %i.ajg, ptr %i.ajd, align 8, !tbaa !74
  store double %i.ajf, ptr %i.aje, align 8, !tbaa !74
  %i.ajh = add nsw i64 %.05.i18.i.i.i.i.i.i146, 1 ; 2 uses
  %i.aji = getelementptr inbounds [8 x i8], ptr %i.agn, i64 %i.ajh ; 2 uses
  %i.ajj = getelementptr inbounds [8 x i8], ptr %i.agp, i64 %i.ajh ; 2 uses
  %i.ajk = load double, ptr %i.aji, align 8, !tbaa !74
  %i.ajl = load double, ptr %i.ajj, align 8, !tbaa !74
  store double %i.ajl, ptr %i.aji, align 8, !tbaa !74
  store double %i.ajk, ptr %i.ajj, align 8, !tbaa !74
  %i.ajm = add nsw i64 %.05.i18.i.i.i.i.i.i146, 2 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i147.1 = icmp eq i64 %i.ajm, %i.agl
  br i1 %exitcond.not.i19.i.i.i.i.i.i147.1, label %.thread, label %.lr.ph.i17.i.i.i.i.i.i145, !llvm.loop !768

.lr.ph.i.i.i.i.i.i148:                            ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEESA_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i143, %.lr.ph.i.i.i.i.i.i148
  %.021.i.i.i.i.i.i149 = phi i64 [ %i.ajr, %.lr.ph.i.i.i.i.i.i148 ], [ %.0.i.i.i.i.i.i.i142, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEESA_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i143 ] ; 3 uses
  %i.ajn = getelementptr inbounds [8 x i8], ptr %i.agp, i64 %.021.i.i.i.i.i.i149 ; 2 uses
  %i.ajo = load <2 x double>, ptr %i.ajn, align 1, !tbaa !30
  %i.ajp = getelementptr inbounds [8 x i8], ptr %i.agn, i64 %.021.i.i.i.i.i.i149 ; 2 uses
  %i.ajq = load <2 x double>, ptr %i.ajp, align 16, !tbaa !30
  store <2 x double> %i.ajq, ptr %i.ajn, align 1, !tbaa !30
  store <2 x double> %i.ajo, ptr %i.ajp, align 16, !tbaa !30
  %i.ajr = add nsw i64 %.021.i.i.i.i.i.i149, 2    ; 2 uses
  %i.ajs = icmp slt i64 %i.ajr, %i.agy
  br i1 %i.ajs, label %.lr.ph.i.i.i.i.i.i148, label %._crit_edge.i.i.i.i.i.i144, !llvm.loop !9

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE4swapIS4_EEvRKNS0_IT_EE.exit153: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread256
  store i64 %.0280, ptr %i.ys, align 8, !tbaa !192
  br label %.loopexit

.thread:                                          ; preds = %.lr.ph.i17.i.i.i.i.i.i145.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i145, %middle.block544, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread256, %bb.am, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE4swapIS4_EEvRKNS0_IT_EE.exit, %._crit_edge.i.i.i.i.i.i144
  %i.ajt = add nuw nsw i64 %.0280, 1              ; 2 uses
  %i.aju = load i64, ptr %i.lb, align 8, !tbaa !177 ; 2 uses
  %i.ajv = icmp slt i64 %i.ajt, %i.aju
  br i1 %i.ajv, label %.lr.ph281, label %.loopexit, !llvm.loop !769

.loopexit:                                        ; preds = %.thread, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEmLERKd.exit, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE4swapIS4_EEvRKNS0_IT_EE.exit153
  %i.ajw = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 1, ptr %i.ajw, align 4, !tbaa !183
  br label %bb.as

bb.as:                                            ; preds = %.loopexit, %bb.g
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal22qr_preconditioner_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2ELi1ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !171
  tail call void @free(ptr noundef %i.b) #29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !139
  tail call void @free(ptr noundef %i.d) #29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !139
  tail call void @free(ptr noundef %i.f) #29
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !139
  tail call void @free(ptr noundef %i.h) #29
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !180
  tail call void @free(ptr noundef %i.j) #29
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !182
  tail call void @free(ptr noundef %i.l) #29
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !171
  tail call void @free(ptr noundef %i.n) #29
  %i.o = load ptr, ptr %0, align 8, !tbaa !69
  tail call void @free(ptr noundef %i.o) #29
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal22qr_preconditioner_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2ELi0ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139
  tail call void @free(ptr noundef %i.b) #29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69
  tail call void @free(ptr noundef %i.d) #29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !139
  tail call void @free(ptr noundef %i.f) #29
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !139
  tail call void @free(ptr noundef %i.h) #29
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !139
  tail call void @free(ptr noundef %i.j) #29
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !180
  tail call void @free(ptr noundef %i.l) #29
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !182
  tail call void @free(ptr noundef %i.n) #29
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !171
  tail call void @free(ptr noundef %i.p) #29
  %i.q = load ptr, ptr %0, align 8, !tbaa !69
  tail call void @free(ptr noundef %i.q) #29
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Eigen7SVDBaseINS_9JacobiSVDINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !171
  tail call void @free(ptr noundef %i.b) #29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69
  tail call void @free(ptr noundef %i.d) #29
  %i.e = load ptr, ptr %0, align 8, !tbaa !69
  tail call void @free(ptr noundef %i.e) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen9JacobiSVDINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE8allocateEllj(ptr noundef nonnull align 8 dereferenceable(544) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 69 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !791, !range !140, !noundef !141
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %1, %i.e
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp eq i64 %2, %i.h
  %or.cond16 = select i1 %or.cond, i1 %i.i, i1 false
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp eq i32 %3, %i.k
  %or.cond19 = select i1 %or.cond16, i1 %i.l, i1 false
  br i1 %or.cond19, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %1, ptr %i.d, align 8, !tbaa !185
  store i64 %2, ptr %i.g, align 8, !tbaa !97
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.m, align 8, !tbaa !184
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 0, ptr %i.n, align 4, !tbaa !183
  store i8 1, ptr %i.a, align 1, !tbaa !791
  store i32 %3, ptr %i.j, align 4, !tbaa !176
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 71 ; 2 uses
  %4 = trunc i32 %3 to i8                         ; 4 uses
  %5 = lshr i8 %4, 2
  %i.p = and i8 %5, 1                             ; 2 uses
  store i8 %i.p, ptr %i.o, align 1, !tbaa !188
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %6 = lshr i8 %4, 3
  %i.r = and i8 %6, 1
  store i8 %i.r, ptr %i.q, align 8, !tbaa !189
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %7 = lshr i8 %4, 4
  %i.t = and i8 %7, 1
  store i8 %i.t, ptr %i.s, align 1, !tbaa !190
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 74 ; 2 uses
  %8 = lshr i8 %4, 5
  %i.v = and i8 %8, 1
  store i8 %i.v, ptr %i.u, align 2, !tbaa !191
  %i.w = tail call i64 @llvm.smin.i64(i64 %2, i64 %1) ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  store i64 %i.w, ptr %i.x, align 8, !tbaa !177
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !172
  %.not.i.i = icmp eq i64 %i.w, %i.aa
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !171
  tail call void @free(ptr noundef %i.ab) #29
  %i.ac = icmp sgt i64 %i.w, 0
  br i1 %i.ac, label %bb.d, label %.sink.split.i.i

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp samesign ugt i64 %i.w, 2305843009213693951
  br i1 %i.ad, label %bb.e, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ae = tail call ptr @__cxa_allocate_exception(i64 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ae, align 8, !tbaa !73
  tail call void @__cxa_throw(ptr nonnull %i.ae, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i: ; preds = %bb.d
  %i.af = shl nuw i64 %i.w, 3
  %i.ag = tail call noalias ptr @malloc(i64 noundef %i.af) #33 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.f, label %.sink.split.i.i

bb.f:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i
  %i.ai = tail call ptr @__cxa_allocate_exception(i64 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ai, align 8, !tbaa !73
  tail call void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i, %bb.c
  %.sink.i.i = phi ptr [ %i.ag, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i ], [ null, %bb.c ]
  store ptr %.sink.i.i, ptr %i.y, align 8, !tbaa !171
  %.pre = load i64, ptr %i.d, align 8, !tbaa !185
  %.pre30 = load i8, ptr %i.o, align 1, !tbaa !188, !range !140
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %bb.b, %.sink.split.i.i
  %i.aj = phi i8 [ %i.p, %bb.b ], [ %.pre30, %.sink.split.i.i ]
  %i.ak = phi i64 [ %1, %bb.b ], [ %.pre, %.sink.split.i.i ] ; 5 uses
  store i64 %i.w, ptr %i.z, align 8, !tbaa !172
  %i.al = trunc nuw i8 %i.aj to i1
  br i1 %i.al, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.am = load i8, ptr %i.q, align 8, !tbaa !189, !range !140, !noundef !141
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.h, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

bb.h:                                             ; preds = %bb.g
  %i.ao = load i64, ptr %i.x, align 8, !tbaa !177
  br label %bb.i

bb.i:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, %bb.h
  %i.ap = phi i64 [ %i.ak, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit ], [ %i.ao, %bb.h ] ; 4 uses
  %i.aq = icmp eq i64 %i.ak, 0
  %i.ar = icmp eq i64 %i.ap, 0
  %or.cond.i.i = or i1 %i.aq, %i.ar
  br i1 %or.cond.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = sdiv i64 9223372036854775807, %i.ap
  %i.at = icmp sgt i64 %i.ak, %i.as
  br i1 %i.at, label %bb.k, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

bb.k:                                             ; preds = %bb.j
  %i.au = tail call ptr @__cxa_allocate_exception(i64 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.au, align 8, !tbaa !73
  tail call void @__cxa_throw(ptr nonnull %i.au, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %bb.g, %bb.i, %bb.j
  %i.av = phi i64 [ %i.ap, %bb.j ], [ %i.ap, %bb.i ], [ 0, %bb.g ] ; 2 uses
  %i.aw = mul nsw i64 %i.av, %i.ak
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.aw, i64 noundef %i.ak, i64 noundef %i.av)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load i64, ptr %i.g, align 8, !tbaa !97  ; 5 uses
  %i.az = load i8, ptr %i.s, align 1, !tbaa !190, !range !140, !noundef !141
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.bb = load i8, ptr %i.u, align 2, !tbaa !191, !range !140, !noundef !141
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.m, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit21

bb.m:                                             ; preds = %bb.l
  %i.bd = load i64, ptr %i.x, align 8, !tbaa !177
  br label %bb.n

bb.n:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, %bb.m
  %i.be = phi i64 [ %i.ay, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit ], [ %i.bd, %bb.m ] ; 4 uses
  %i.bf = icmp eq i64 %i.ay, 0
  %i.bg = icmp eq i64 %i.be, 0
  %or.cond.i.i20 = or i1 %i.bf, %i.bg
  br i1 %or.cond.i.i20, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit21, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = sdiv i64 9223372036854775807, %i.be
  %i.bi = icmp sgt i64 %i.ay, %i.bh
  br i1 %i.bi, label %bb.p, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit21

bb.p:                                             ; preds = %bb.o
  %i.bj = tail call ptr @__cxa_allocate_exception(i64 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bj, align 8, !tbaa !73
  tail call void @__cxa_throw(ptr nonnull %i.bj, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit21: ; preds = %bb.l, %bb.n, %bb.o
  %i.bk = phi i64 [ %i.be, %bb.o ], [ %i.be, %bb.n ], [ 0, %bb.l ] ; 2 uses
  %i.bl = mul nsw i64 %i.bk, %i.ay
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 noundef %i.bl, i64 noundef %i.ay, i64 noundef %i.bk)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bn = load i64, ptr %i.x, align 8, !tbaa !177 ; 7 uses
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit23, label %bb.q

bb.q:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit21
  %i.bp = sdiv i64 9223372036854775807, %i.bn
  %i.bq = icmp sgt i64 %i.bn, %i.bp
  br i1 %i.bq, label %bb.r, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit23

bb.r:                                             ; preds = %bb.q
  %i.br = tail call ptr @__cxa_allocate_exception(i64 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.br, align 8, !tbaa !73
  tail call void @__cxa_throw(ptr nonnull %i.br, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit23: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit21, %bb.q
  %i.bs = mul nsw i64 %i.bn, %i.bn
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 noundef %i.bs, i64 noundef %i.bn, i64 noundef %i.bn)
  %i.bt = load i64, ptr %i.g, align 8, !tbaa !97  ; 2 uses
  %i.bu = load i64, ptr %i.d, align 8, !tbaa !185 ; 2 uses
  %i.bv = icmp sgt i64 %i.bt, %i.bu
  br i1 %i.bv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit23
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @_ZN5Eigen8internal22qr_preconditioner_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2ELi0ELb1EE8allocateERKNS_9JacobiSVDIS3_Li2EEE(ptr noundef nonnull align 8 dereferenceable(200) %i.bw, ptr noundef nonnull align 8 dereferenceable(544) %0)
  %.pre31 = load i64, ptr %i.d, align 8, !tbaa !185
  %.pre32 = load i64, ptr %i.g, align 8, !tbaa !97
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit23
  %i.bx = phi i64 [ %.pre32, %bb.s ], [ %i.bt, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit23 ] ; 2 uses
  %i.by = phi i64 [ %.pre31, %bb.s ], [ %i.bu, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit23 ] ; 2 uses
  %i.bz = icmp sgt i64 %i.by, %i.bx
  br i1 %i.bz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 344
  tail call void @_ZN5Eigen8internal22qr_preconditioner_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2ELi1ELb1EE8allocateERKNS_9JacobiSVDIS3_Li2EEE(ptr noundef nonnull align 8 dereferenceable(176) %i.ca, ptr noundef nonnull align 8 dereferenceable(544) %0)
  %.pre33 = load i64, ptr %i.d, align 8, !tbaa !185
  %.pre34 = load i64, ptr %i.g, align 8, !tbaa !97
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cb = phi i64 [ %.pre34, %bb.u ], [ %i.bx, %bb.t ]
  %i.cc = phi i64 [ %.pre33, %bb.u ], [ %i.by, %bb.t ]
  %.not = icmp eq i64 %i.cc, %i.cb
  br i1 %.not, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.ce = icmp eq i64 %1, 0
  %i.cf = icmp eq i64 %2, 0
  %or.cond.i.i24 = or i1 %i.ce, %i.cf
  br i1 %or.cond.i.i24, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit25, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cg = sdiv i64 9223372036854775807, %2
  %i.ch = icmp sgt i64 %1, %i.cg
  br i1 %i.ch, label %bb.y, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit25

bb.y:                                             ; preds = %bb.x
  %i.ci = tail call ptr @__cxa_allocate_exception(i64 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ci, align 8, !tbaa !73
  tail call void @__cxa_throw(ptr nonnull %i.ci, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit25: ; preds = %bb.w, %bb.x
  %i.cj = mul nsw i64 %2, %1
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i64 noundef %i.cj, i64 noundef %1, i64 noundef %2)
  br label %bb.z

bb.z:                                             ; preds = %bb.a, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit25, %bb.v
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN5Eigen8internal22qr_preconditioner_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2ELi0ELb1EE3runERNS_9JacobiSVDIS3_Li2EEERKS3_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(544) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_0
