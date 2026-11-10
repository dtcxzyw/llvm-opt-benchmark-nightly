Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/random_points_on_mesh?download=true
inline.NumInlined: 546
inline.NumDeleted: 305
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN3igl21random_points_on_meshIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELi1ELi0ELin1ELi1EEES5_RSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEviRKNS1_10MatrixBaseIT_EERKNSA_IT0_EERNS1_15PlainObjectBaseIT1_EERNSJ_IT2_EERNSJ_IT3_EEOT4_:bb.a

bb.e:                                             ; preds = %.noexc42
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef %i.b, i64 noundef 3)
          to label %.noexc43 unwind label %bb.f

.noexc43:                                         ; preds = %bb.e
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !13
  br label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i: ; preds = %.noexc43, %.noexc42
  %i.g = phi i64 [ %i.b, %.noexc42 ], [ %.pre.i.i.i.i.i.i.i, %.noexc43 ] ; 2 uses
  %i.h = icmp slt i64 %i.g, 1
  br i1 %i.h, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit.loopexit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit.loopexit: ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i
  %i.i = load ptr, ptr %5, align 8, !tbaa !16
  %.idx.i.i.i.i.i.i.i.i.i = mul i64 %i.g, 24
  call void @llvm.memset.p0.i64(ptr align 8 %i.i, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !18
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit.loopexit, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit
  %i.l = load ptr, ptr %4, align 8, !tbaa !21
  %i.m = load ptr, ptr %2, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !24   ; 2 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !16
  %i.q = load ptr, ptr %1, align 8, !tbaa !26, !noalias !44 ; 3 uses
  %i.r = load ptr, ptr %5, align 8, !tbaa !16, !noalias !45
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !27   ; 4 uses
  %.idx.i.i.i.i.i.i.i.i.i44 = shl nsw i64 %i.t, 4 ; 3 uses
  %.idx = shl i64 %i.o, 3
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next, %.preheader ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !28
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr [4 x i8], ptr %i.m, i64 %i.w ; 3 uses
  %.idx.i.i.i = mul nuw nsw i64 %indvars.iv, 24   ; 2 uses
  %i.y = getelementptr i8, ptr %i.p, i64 %.idx.i.i.i ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i.i ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 4 uses
  %.promoted = load double, ptr %i.z, align 8, !tbaa !18
  %.promoted60 = load double, ptr %i.aa, align 8, !tbaa !18
  %.promoted61 = load double, ptr %i.ab, align 8, !tbaa !18
  %i.ac = load i32, ptr %i.x, align 4, !tbaa !28
  %i.ad = load double, ptr %i.y, align 8, !tbaa !18 ; 3 uses
  %i.ae = sext i32 %i.ac to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ae ; 3 uses
  %i.ag = load double, ptr %i.af, align 8, !tbaa !18
  %i.ah = fmul double %i.ad, %i.ag
  %i.ai = fadd double %i.ah, %.promoted           ; 2 uses
  store double %i.ai, ptr %i.z, align 8, !tbaa !18
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.t
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !18
  %i.al = fmul double %i.ad, %i.ak
  %i.am = fadd double %i.al, %.promoted60         ; 2 uses
  store double %i.am, ptr %i.aa, align 8, !tbaa !18
  %i.an = getelementptr inbounds i8, ptr %i.af, i64 %.idx.i.i.i.i.i.i.i.i.i44
  %i.ao = load double, ptr %i.an, align 8, !tbaa !18
  %i.ap = fmul double %i.ad, %i.ao
  %i.aq = fadd double %i.ap, %.promoted61         ; 2 uses
  store double %i.aq, ptr %i.ab, align 8, !tbaa !18
  %i.ar = getelementptr [4 x i8], ptr %i.x, i64 %i.o
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !28
  %i.at = getelementptr i8, ptr %i.y, i64 8
  %i.au = load double, ptr %i.at, align 8, !tbaa !18 ; 3 uses
  %i.av = sext i32 %i.as to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.av ; 3 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !18
  %i.ay = fmul double %i.au, %i.ax
  %i.az = fadd double %i.ay, %i.ai                ; 2 uses
  store double %i.az, ptr %i.z, align 8, !tbaa !18
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.t
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !18
  %i.bc = fmul double %i.au, %i.bb
  %i.bd = fadd double %i.bc, %i.am                ; 2 uses
  store double %i.bd, ptr %i.aa, align 8, !tbaa !18
  %i.be = getelementptr inbounds i8, ptr %i.aw, i64 %.idx.i.i.i.i.i.i.i.i.i44
  %i.bf = load double, ptr %i.be, align 8, !tbaa !18
  %i.bg = fmul double %i.au, %i.bf
  %i.bh = fadd double %i.bg, %i.aq                ; 2 uses
  store double %i.bh, ptr %i.ab, align 8, !tbaa !18
  %i.bi = getelementptr i8, ptr %i.x, i64 %.idx
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !28
  %i.bk = getelementptr i8, ptr %i.y, i64 16
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !18 ; 3 uses
  %i.bm = sext i32 %i.bj to i64
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.bm ; 3 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !18
  %i.bp = fmul double %i.bl, %i.bo
  %i.bq = fadd double %i.bp, %i.az
  store double %i.bq, ptr %i.z, align 8, !tbaa !18
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.t
  %i.bs = load double, ptr %i.br, align 8, !tbaa !18
  %i.bt = fmul double %i.bl, %i.bs
  %i.bu = fadd double %i.bt, %i.bd
  store double %i.bu, ptr %i.aa, align 8, !tbaa !18
  %i.bv = getelementptr inbounds i8, ptr %i.bn, i64 %.idx.i.i.i.i.i.i.i.i.i44
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !18
  %i.bx = fmul double %i.bl, %i.bw
  %i.by = fadd double %i.bx, %i.bh
  store double %i.by, ptr %i.ab, align 8, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !43

._crit_edge:                                      ; preds = %.preheader, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit
  %i.bz = load ptr, ptr %7, align 8, !tbaa !31
  call void @free(ptr noundef %i.bz) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  ret void

bb.f:                                             ; preds = %bb.d, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEEE16_resize_to_matchINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i, %bb.e, %bb.b, %bb.a
  %i.ca = landingpad { ptr, i32 }
          cleanup
  %i.cb = load ptr, ptr %7, align 8, !tbaa !31
  call void @free(ptr noundef %i.cb) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  resume { ptr, i32 } %i.ca
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN3igl31random_points_on_mesh_intrinsicIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELi1ELi0ELin1ELi1EEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEviRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSE_IT1_EEOT2_(i32 noundef, ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(2504)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl21random_points_on_meshIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_NS2_IiLin1ELi1ELi0ELin1ELi1EEES3_RSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEviRKNS1_10MatrixBaseIT_EERKNS9_IT0_EERNS1_15PlainObjectBaseIT1_EERNSI_IT2_EERNSI_IT3_EEOT4_(i32 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.Eigen::Matrix", align 8     ; 8 uses
  %8 = alloca %"class.Eigen::CwiseNullaryOp.64", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN3igl31random_points_on_mesh_intrinsicIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEERSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEviRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSE_IT1_EEOT2_(i32 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !32
  store i64 %i.b, ptr %8, align 8, !tbaa !34, !alias.scope !63
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !34, !alias.scope !63
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !36, !alias.scope !63
  %i.g = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  %i.h = load i64, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.preheader.lr.ph, label %._crit_edge55.split

.preheader.lr.ph:                                 ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !32   ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.preheader.lr.ph.split, label %._crit_edge55.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load ptr, ptr %4, align 8, !tbaa !21
  %i.r = load ptr, ptr %2, align 8, !tbaa !23
  %i.s = load i64, ptr %i.p, align 8, !tbaa !24
  %i.t = load ptr, ptr %3, align 8, !tbaa !26
  %i.u = load ptr, ptr %1, align 8, !tbaa !26, !noalias !64 ; 2 uses
  %i.v = load ptr, ptr %5, align 8, !tbaa !26, !noalias !65 ; 2 uses
  %i.w = load i64, ptr %i.o, align 8, !tbaa !32, !noalias !65 ; 9 uses
  %i.x = load i64, ptr %i.n, align 8, !tbaa !27   ; 4 uses
  %i.y = load i64, ptr %i.m, align 8, !tbaa !27   ; 4 uses
  %i.z = icmp sgt i64 %i.w, 0
  br i1 %i.z, label %.preheader.preheader, label %._crit_edge55.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %9 = shl i64 %i.w, 3
  %scevgep = getelementptr i8, ptr %i.u, i64 %9
  %min.iters.check = icmp ult i64 %i.w, 6
  %ident.check = icmp ne i64 %i.y, 1
  %ident.check64 = icmp ne i64 %i.x, 1
  %i.aa = or i1 %ident.check, %ident.check64
  %n.vec = and i64 %i.w, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.w, %n.vec
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %._crit_edge ], [ 0, %.preheader.preheader ] ; 5 uses
  %i.ab = add nuw i64 %i.w, %indvars.iv58
  %i.ac = shl i64 %i.ab, 3
  %scevgep.a = getelementptr i8, ptr %i.v, i64 %i.ac
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv58
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !28
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr [4 x i8], ptr %i.r, i64 %i.af
  %i.ah = getelementptr [8 x i8], ptr %i.t, i64 %indvars.iv58
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv58 ; 5 uses
  br label %.lr.ph.i.i.i.i.i.i.preheader

._crit_edge55.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %.preheader.lr.ph.split, %bb.d
  %i.aj = load ptr, ptr %7, align 8, !tbaa !31
  call void @free(ptr noundef %i.aj) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  ret void

bb.e:                                             ; preds = %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %bb.g

._crit_edge:                                      ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %exitcond61.not = icmp eq i64 %indvars.iv.next59, %i.h
  br i1 %exitcond61.not, label %._crit_edge55.split, label %.preheader, !llvm.loop !56

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.preheader, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit ] ; 3 uses
  %i.al = mul nsw i64 %i.s, %indvars.iv
  %i.am = getelementptr [4 x i8], ptr %i.ag, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !28
  %i.ao = mul nuw nsw i64 %indvars.iv, %i.h
  %i.ap = getelementptr [8 x i8], ptr %i.ah, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !18 ; 4 uses
  %i.ar = sext i32 %i.an to i64                   ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.ar ; 5 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.aa
  br i1 %brmerge, label %.lr.ph.i.i.i.i.i.i.preheader70, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.at = shl nsw i64 %i.ar, 3
  %i.au = getelementptr i8, ptr %scevgep, i64 %i.at
  %bound0 = icmp ult ptr %i.ai, %i.au
  %bound1 = icmp ult ptr %i.as, %scevgep.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader70, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.aq, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %index ; 3 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.as, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load = load <2 x double>, ptr %i.aw, align 8, !tbaa !18, !alias.scope !66
  %wide.load67 = load <2 x double>, ptr %i.ax, align 8, !tbaa !18, !alias.scope !66
  %i.ay = fmul <2 x double> %broadcast.splat, %wide.load
  %i.az = fmul <2 x double> %broadcast.splat, %wide.load67
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %wide.load68 = load <2 x double>, ptr %i.av, align 8, !tbaa !18, !alias.scope !67, !noalias !66
  %wide.load69 = load <2 x double>, ptr %i.ba, align 8, !tbaa !18, !alias.scope !67, !noalias !66
  %i.bb = fadd <2 x double> %i.ay, %wide.load68
  %i.bc = fadd <2 x double> %i.az, %wide.load69
  store <2 x double> %i.bb, ptr %i.av, align 8, !tbaa !18, !alias.scope !67, !noalias !66
  store <2 x double> %i.bc, ptr %i.ba, align 8, !tbaa !18, !alias.scope !67, !noalias !66
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.preheader70

.lr.ph.i.i.i.i.i.i.preheader70:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %vector.memcheck, %middle.block
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %middle.block ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ] ; 5 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader70
  %i.be = mul nsw i64 %.05.i.i.i.i.i.i.ph, %i.y
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.be ; 2 uses
  %i.bg = mul nsw i64 %.05.i.i.i.i.i.i.ph, %i.x
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !18
  %i.bj = fmul double %i.aq, %i.bi
  %i.bk = load double, ptr %i.bf, align 8, !tbaa !18
  %i.bl = fadd double %i.bj, %i.bk
  store double %i.bl, ptr %i.bf, align 8, !tbaa !18
  %i.bm = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader70
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader70 ], [ %i.bm, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.bn = icmp eq i64 %i.w, %.neg
  br i1 %i.bn, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.cf, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.bo = mul nsw i64 %.05.i.i.i.i.i.i, %i.y
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.bo ; 2 uses
  %i.bq = mul nsw i64 %.05.i.i.i.i.i.i, %i.x
  %i.br = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bq
  %i.bs = load double, ptr %i.br, align 8, !tbaa !18
  %i.bt = fmul double %i.aq, %i.bs
  %i.bu = load double, ptr %i.bp, align 8, !tbaa !18
  %i.bv = fadd double %i.bt, %i.bu
  store double %i.bv, ptr %i.bp, align 8, !tbaa !18
  %i.bw = add nuw nsw i64 %.05.i.i.i.i.i.i, 1     ; 2 uses
  %i.bx = mul nsw i64 %i.bw, %i.y
  %i.by = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.bx ; 2 uses
  %i.bz = mul nsw i64 %i.bw, %i.x
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bz
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !18
  %i.cc = fmul double %i.aq, %i.cb
  %i.cd = load double, ptr %i.by, align 8, !tbaa !18
  %i.ce = fadd double %i.cc, %i.cd
  store double %i.ce, ptr %i.by, align 8, !tbaa !18
  %i.cf = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.cf, %i.w
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !61

_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.k
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.i.i.i.i.i.i.preheader, !llvm.loop !62

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cg, %bb.f ], [ %i.ak, %bb.e ]
  %i.ch = load ptr, ptr %7, align 8, !tbaa !31
  call void @free(ptr noundef %i.ch) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

declare void @_ZN3igl31random_points_on_mesh_intrinsicIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEERSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEviRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSE_IT1_EEOT2_(i32 noundef, ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !34     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !34   ; 4 uses
  %i.d = icmp eq i64 %i.a, 0
  %i.e = icmp eq i64 %i.c, 0
  %or.cond.i.i.i = or i1 %i.d, %i.e
  br i1 %or.cond.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEEvRKNS_9EigenBaseIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sdiv i64 9223372036854775807, %i.c
  %i.g = icmp sgt i64 %i.a, %i.f
  br i1 %i.g, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEEvRKNS_9EigenBaseIT_EE.exit

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #10
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEEvRKNS_9EigenBaseIT_EE.exit: ; preds = %bb.a, %bb.b
  %i.i = mul nsw i64 %i.c, %i.a
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i, i64 noundef %i.a, i64 noundef %i.c)
  %i.j = load i64, ptr %1, align 8, !tbaa !34     ; 6 uses
  %i.k = load i64, ptr %i.b, align 8, !tbaa !34   ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !27
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.m, %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %.not8.i.i.i.i.i.i.i = icmp eq i64 %i.o, %i.k
  %or.cond.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEEvRKNS_9EigenBaseIT_EE.exit
  %i.p = icmp eq i64 %i.j, 0
  %i.q = icmp eq i64 %i.k, 0
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %i.p, %i.q
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sdiv i64 9223372036854775807, %i.k
  %i.s = icmp sgt i64 %i.j, %i.r
  br i1 %i.s, label %bb.f, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.t = tail call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.t, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #10
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.u = mul nsw i64 %i.k, %i.j
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.u, i64 noundef %i.j, i64 noundef %i.k)
  %.pre.i.i.i.i.i.i = load i64, ptr %i.l, align 8, !tbaa !27
  %.pre6.i.i.i.i.i.i = load i64, ptr %i.n, align 8, !tbaa !32
  br label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEEvRKNS_9EigenBaseIT_EE.exit
  %i.v = phi i64 [ %i.k, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEEvRKNS_9EigenBaseIT_EE.exit ], [ %.pre6.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i ]
  %i.w = phi i64 [ %i.j, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEEvRKNS_9EigenBaseIT_EE.exit ], [ %.pre.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i ]
  %i.x = mul nsw i64 %i.w, %i.v                   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load double, ptr %i.y, align 8, !tbaa !36 ; 9 uses
  %i.aa = icmp slt i64 %i.x, 1
  br i1 %i.aa, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i
  %i.ab = load ptr, ptr %0, align 8, !tbaa !26    ; 3 uses
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.x, 3 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i.i.i.i.i.i.i.i
  %i.ad = add nsw i64 %.idx.i.i.i.i.i.i.i.i, -8   ; 2 uses
  %i.ae = lshr exact i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1
  %xtraiter = and i64 %i.af, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol
  %.07.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.ab, %bb.g ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %bb.g ]
  store double %i.z, ptr %.07.i.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !68

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %bb.g
  %.07.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.ab, %bb.g ], [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ah = icmp ult i64 %i.ad, 56
  br i1 %i.ah, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  store double %i.z, ptr %.07.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i, i64 8
  store double %i.z, ptr %i.ai, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i, i64 16
  store double %i.z, ptr %i.aj, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i, i64 24
  store double %i.z, ptr %i.ak, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i, i64 32
  store double %i.z, ptr %i.al, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i, i64 40
  store double %i.z, ptr %i.am, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i, i64 48
  store double %i.z, ptr %i.an, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i, i64 56
  store double %i.z, ptr %i.ao, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.7 = icmp eq ptr %i.ap, %i.ac
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.7, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !69

_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl21random_points_on_meshIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_NS2_IiLin1ELi1ELi0ELin1ELi1EEES3_RSt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEviRKNS1_10MatrixBaseIT_EERKNS9_IT0_EERNS1_15PlainObjectBaseIT1_EERNSI_IT2_EERNSI_IT3_EEOT4_(i32 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.Eigen::Matrix", align 8     ; 8 uses
  %8 = alloca %"class.Eigen::CwiseNullaryOp.64", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN3igl31random_points_on_mesh_intrinsicIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEERSt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEviRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSE_IT1_EEOT2_(i32 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !32
  store i64 %i.b, ptr %8, align 8, !tbaa !34, !alias.scope !88
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !34, !alias.scope !88
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !36, !alias.scope !88
  %i.g = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  %i.h = load i64, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.preheader.lr.ph, label %._crit_edge55.split

.preheader.lr.ph:                                 ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !32   ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.preheader.lr.ph.split, label %._crit_edge55.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load ptr, ptr %4, align 8, !tbaa !21
  %i.r = load ptr, ptr %2, align 8, !tbaa !23
  %i.s = load i64, ptr %i.p, align 8, !tbaa !24
  %i.t = load ptr, ptr %3, align 8, !tbaa !26
  %i.u = load ptr, ptr %1, align 8, !tbaa !26, !noalias !89 ; 2 uses
  %i.v = load ptr, ptr %5, align 8, !tbaa !26, !noalias !90 ; 2 uses
  %i.w = load i64, ptr %i.o, align 8, !tbaa !32, !noalias !90 ; 9 uses
  %i.x = load i64, ptr %i.n, align 8, !tbaa !27   ; 4 uses
  %i.y = load i64, ptr %i.m, align 8, !tbaa !27   ; 4 uses
  %i.z = icmp sgt i64 %i.w, 0
  br i1 %i.z, label %.preheader.preheader, label %._crit_edge55.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %9 = shl i64 %i.w, 3
  %scevgep = getelementptr i8, ptr %i.u, i64 %9
  %min.iters.check = icmp ult i64 %i.w, 6
  %ident.check = icmp ne i64 %i.y, 1
  %ident.check64 = icmp ne i64 %i.x, 1
  %i.aa = or i1 %ident.check, %ident.check64
  %n.vec = and i64 %i.w, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.w, %n.vec
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %._crit_edge ], [ 0, %.preheader.preheader ] ; 5 uses
  %i.ab = add nuw i64 %i.w, %indvars.iv58
  %i.ac = shl i64 %i.ab, 3
  %scevgep.a = getelementptr i8, ptr %i.v, i64 %i.ac
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv58
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !28
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr [4 x i8], ptr %i.r, i64 %i.af
  %i.ah = getelementptr [8 x i8], ptr %i.t, i64 %indvars.iv58
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv58 ; 5 uses
  br label %.lr.ph.i.i.i.i.i.i.preheader

._crit_edge55.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %.preheader.lr.ph.split, %bb.d
  %i.aj = load ptr, ptr %7, align 8, !tbaa !31
  call void @free(ptr noundef %i.aj) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  ret void

bb.e:                                             ; preds = %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %bb.g

._crit_edge:                                      ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %exitcond61.not = icmp eq i64 %indvars.iv.next59, %i.h
  br i1 %exitcond61.not, label %._crit_edge55.split, label %.preheader, !llvm.loop !81

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.preheader, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit ] ; 3 uses
  %i.al = mul nsw i64 %i.s, %indvars.iv
  %i.am = getelementptr [4 x i8], ptr %i.ag, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !28
  %i.ao = mul nuw nsw i64 %indvars.iv, %i.h
  %i.ap = getelementptr [8 x i8], ptr %i.ah, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !18 ; 4 uses
  %i.ar = sext i32 %i.an to i64                   ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.ar ; 5 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.aa
  br i1 %brmerge, label %.lr.ph.i.i.i.i.i.i.preheader70, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.at = shl nsw i64 %i.ar, 3
  %i.au = getelementptr i8, ptr %scevgep, i64 %i.at
  %bound0 = icmp ult ptr %i.ai, %i.au
  %bound1 = icmp ult ptr %i.as, %scevgep.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader70, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.aq, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %index ; 3 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.as, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load = load <2 x double>, ptr %i.aw, align 8, !tbaa !18, !alias.scope !91
  %wide.load67 = load <2 x double>, ptr %i.ax, align 8, !tbaa !18, !alias.scope !91
  %i.ay = fmul <2 x double> %broadcast.splat, %wide.load
  %i.az = fmul <2 x double> %broadcast.splat, %wide.load67
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %wide.load68 = load <2 x double>, ptr %i.av, align 8, !tbaa !18, !alias.scope !92, !noalias !91
  %wide.load69 = load <2 x double>, ptr %i.ba, align 8, !tbaa !18, !alias.scope !92, !noalias !91
  %i.bb = fadd <2 x double> %i.ay, %wide.load68
  %i.bc = fadd <2 x double> %i.az, %wide.load69
  store <2 x double> %i.bb, ptr %i.av, align 8, !tbaa !18, !alias.scope !92, !noalias !91
  store <2 x double> %i.bc, ptr %i.ba, align 8, !tbaa !18, !alias.scope !92, !noalias !91
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.preheader70

.lr.ph.i.i.i.i.i.i.preheader70:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %vector.memcheck, %middle.block
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %middle.block ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ] ; 5 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader70
  %i.be = mul nsw i64 %.05.i.i.i.i.i.i.ph, %i.y
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.be ; 2 uses
  %i.bg = mul nsw i64 %.05.i.i.i.i.i.i.ph, %i.x
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !18
  %i.bj = fmul double %i.aq, %i.bi
  %i.bk = load double, ptr %i.bf, align 8, !tbaa !18
  %i.bl = fadd double %i.bj, %i.bk
  store double %i.bl, ptr %i.bf, align 8, !tbaa !18
  %i.bm = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader70
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader70 ], [ %i.bm, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.bn = icmp eq i64 %i.w, %.neg
  br i1 %i.bn, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.cf, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.bo = mul nsw i64 %.05.i.i.i.i.i.i, %i.y
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.bo ; 2 uses
  %i.bq = mul nsw i64 %.05.i.i.i.i.i.i, %i.x
  %i.br = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bq
  %i.bs = load double, ptr %i.br, align 8, !tbaa !18
  %i.bt = fmul double %i.aq, %i.bs
  %i.bu = load double, ptr %i.bp, align 8, !tbaa !18
  %i.bv = fadd double %i.bt, %i.bu
  store double %i.bv, ptr %i.bp, align 8, !tbaa !18
  %i.bw = add nuw nsw i64 %.05.i.i.i.i.i.i, 1     ; 2 uses
  %i.bx = mul nsw i64 %i.bw, %i.y
  %i.by = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.bx ; 2 uses
  %i.bz = mul nsw i64 %i.bw, %i.x
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bz
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !18
  %i.cc = fmul double %i.aq, %i.cb
  %i.cd = load double, ptr %i.by, align 8, !tbaa !18
  %i.ce = fadd double %i.cc, %i.cd
  store double %i.ce, ptr %i.by, align 8, !tbaa !18
  %i.cf = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.cf, %i.w
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !86

_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.k
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.i.i.i.i.i.i.preheader, !llvm.loop !87

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cg, %bb.f ], [ %i.ak, %bb.e ]
  %i.ch = load ptr, ptr %7, align 8, !tbaa !31
  call void @free(ptr noundef %i.ch) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

declare void @_ZN3igl31random_points_on_mesh_intrinsicIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEERSt26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEviRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSE_IT1_EEOT2_(i32 noundef, ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl21random_points_on_meshIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_NS2_IiLin1ELi1ELi0ELin1ELi1EEES3_St23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEviRKNS1_10MatrixBaseIT_EERKNS8_IT0_EERNS1_15PlainObjectBaseIT1_EERNSH_IT2_EERNSH_IT3_EEOT4_(i32 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(5000) %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.Eigen::Matrix", align 8     ; 8 uses
  %8 = alloca %"class.Eigen::CwiseNullaryOp.64", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN3igl31random_points_on_mesh_intrinsicIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEviRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSE_IT1_EEOT2_(i32 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(5000) %6)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !32
  store i64 %i.b, ptr %8, align 8, !tbaa !34, !alias.scope !110
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !34, !alias.scope !110
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !36, !alias.scope !110
  %i.g = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  %i.h = load i64, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.preheader.lr.ph, label %._crit_edge55.split

.preheader.lr.ph:                                 ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !32   ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.preheader.lr.ph.split, label %._crit_edge55.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load ptr, ptr %4, align 8, !tbaa !21
  %i.r = load ptr, ptr %2, align 8, !tbaa !23
  %i.s = load i64, ptr %i.p, align 8, !tbaa !24
  %i.t = load ptr, ptr %3, align 8, !tbaa !26
  %i.u = load ptr, ptr %1, align 8, !tbaa !26, !noalias !111 ; 2 uses
  %i.v = load ptr, ptr %5, align 8, !tbaa !26, !noalias !112 ; 2 uses
  %i.w = load i64, ptr %i.o, align 8, !tbaa !32, !noalias !112 ; 9 uses
  %i.x = load i64, ptr %i.n, align 8, !tbaa !27   ; 4 uses
  %i.y = load i64, ptr %i.m, align 8, !tbaa !27   ; 4 uses
  %i.z = icmp sgt i64 %i.w, 0
  br i1 %i.z, label %.preheader.preheader, label %._crit_edge55.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %9 = shl i64 %i.w, 3
  %scevgep = getelementptr i8, ptr %i.u, i64 %9
  %min.iters.check = icmp ult i64 %i.w, 6
  %ident.check = icmp ne i64 %i.y, 1
  %ident.check64 = icmp ne i64 %i.x, 1
  %i.aa = or i1 %ident.check, %ident.check64
  %n.vec = and i64 %i.w, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.w, %n.vec
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %._crit_edge ], [ 0, %.preheader.preheader ] ; 5 uses
  %i.ab = add nuw i64 %i.w, %indvars.iv58
  %i.ac = shl i64 %i.ab, 3
  %scevgep.a = getelementptr i8, ptr %i.v, i64 %i.ac
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv58
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !28
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr [4 x i8], ptr %i.r, i64 %i.af
  %i.ah = getelementptr [8 x i8], ptr %i.t, i64 %indvars.iv58
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv58 ; 5 uses
  br label %.lr.ph.i.i.i.i.i.i.preheader

._crit_edge55.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %.preheader.lr.ph.split, %bb.d
  %i.aj = load ptr, ptr %7, align 8, !tbaa !31
  call void @free(ptr noundef %i.aj) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  ret void

bb.e:                                             ; preds = %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %bb.g

._crit_edge:                                      ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %exitcond61.not = icmp eq i64 %indvars.iv.next59, %i.h
  br i1 %exitcond61.not, label %._crit_edge55.split, label %.preheader, !llvm.loop !103

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.preheader, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit ] ; 3 uses
  %i.al = mul nsw i64 %i.s, %indvars.iv
  %i.am = getelementptr [4 x i8], ptr %i.ag, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !28
  %i.ao = mul nuw nsw i64 %indvars.iv, %i.h
  %i.ap = getelementptr [8 x i8], ptr %i.ah, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !18 ; 4 uses
  %i.ar = sext i32 %i.an to i64                   ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.ar ; 5 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.aa
  br i1 %brmerge, label %.lr.ph.i.i.i.i.i.i.preheader70, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.at = shl nsw i64 %i.ar, 3
  %i.au = getelementptr i8, ptr %scevgep, i64 %i.at
  %bound0 = icmp ult ptr %i.ai, %i.au
  %bound1 = icmp ult ptr %i.as, %scevgep.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader70, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.aq, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %index ; 3 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.as, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load = load <2 x double>, ptr %i.aw, align 8, !tbaa !18, !alias.scope !113
  %wide.load67 = load <2 x double>, ptr %i.ax, align 8, !tbaa !18, !alias.scope !113
  %i.ay = fmul <2 x double> %broadcast.splat, %wide.load
  %i.az = fmul <2 x double> %broadcast.splat, %wide.load67
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %wide.load68 = load <2 x double>, ptr %i.av, align 8, !tbaa !18, !alias.scope !114, !noalias !113
  %wide.load69 = load <2 x double>, ptr %i.ba, align 8, !tbaa !18, !alias.scope !114, !noalias !113
  %i.bb = fadd <2 x double> %i.ay, %wide.load68
  %i.bc = fadd <2 x double> %i.az, %wide.load69
  store <2 x double> %i.bb, ptr %i.av, align 8, !tbaa !18, !alias.scope !114, !noalias !113
  store <2 x double> %i.bc, ptr %i.ba, align 8, !tbaa !18, !alias.scope !114, !noalias !113
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !107

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.preheader70

.lr.ph.i.i.i.i.i.i.preheader70:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %vector.memcheck, %middle.block
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %middle.block ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ] ; 5 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader70
  %i.be = mul nsw i64 %.05.i.i.i.i.i.i.ph, %i.y
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.be ; 2 uses
  %i.bg = mul nsw i64 %.05.i.i.i.i.i.i.ph, %i.x
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !18
  %i.bj = fmul double %i.aq, %i.bi
  %i.bk = load double, ptr %i.bf, align 8, !tbaa !18
  %i.bl = fadd double %i.bj, %i.bk
  store double %i.bl, ptr %i.bf, align 8, !tbaa !18
  %i.bm = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader70
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader70 ], [ %i.bm, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.bn = icmp eq i64 %i.w, %.neg
  br i1 %i.bn, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.cf, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.bo = mul nsw i64 %.05.i.i.i.i.i.i, %i.y
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.bo ; 2 uses
  %i.bq = mul nsw i64 %.05.i.i.i.i.i.i, %i.x
  %i.br = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bq
  %i.bs = load double, ptr %i.br, align 8, !tbaa !18
  %i.bt = fmul double %i.aq, %i.bs
  %i.bu = load double, ptr %i.bp, align 8, !tbaa !18
  %i.bv = fadd double %i.bt, %i.bu
  store double %i.bv, ptr %i.bp, align 8, !tbaa !18
  %i.bw = add nuw nsw i64 %.05.i.i.i.i.i.i, 1     ; 2 uses
  %i.bx = mul nsw i64 %i.bw, %i.y
  %i.by = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.bx ; 2 uses
  %i.bz = mul nsw i64 %i.bw, %i.x
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bz
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !18
  %i.cc = fmul double %i.aq, %i.cb
  %i.cd = load double, ptr %i.by, align 8, !tbaa !18
  %i.ce = fadd double %i.cc, %i.cd
  store double %i.ce, ptr %i.by, align 8, !tbaa !18
  %i.cf = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.cf, %i.w
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !108

_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.k
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.i.i.i.i.i.i.preheader, !llvm.loop !109

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cg, %bb.f ], [ %i.ak, %bb.e ]
  %i.ch = load ptr, ptr %7, align 8, !tbaa !31
  call void @free(ptr noundef %i.ch) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

declare void @_ZN3igl31random_points_on_mesh_intrinsicIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEviRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSE_IT1_EEOT2_(i32 noundef, ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(5000)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl21random_points_on_meshIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_NS2_IiLin1ELi1ELi0ELin1ELi1EEES3_RSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEviRKNS1_10MatrixBaseIT_EERKNS9_IT0_EERNS1_15PlainObjectBaseIT1_EERNSI_IT2_EERNSI_IT3_EEOT4_(i32 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(5000) %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.Eigen::Matrix", align 8     ; 8 uses
  %8 = alloca %"class.Eigen::CwiseNullaryOp.64", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN3igl31random_points_on_mesh_intrinsicIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEviRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSE_IT1_EEOT2_(i32 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(5000) %6)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !32
  store i64 %i.b, ptr %8, align 8, !tbaa !34, !alias.scope !132
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !34, !alias.scope !132
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !36, !alias.scope !132
  %i.g = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  %i.h = load i64, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.preheader.lr.ph, label %._crit_edge55.split

.preheader.lr.ph:                                 ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !32   ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.preheader.lr.ph.split, label %._crit_edge55.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load ptr, ptr %4, align 8, !tbaa !21
  %i.r = load ptr, ptr %2, align 8, !tbaa !23
  %i.s = load i64, ptr %i.p, align 8, !tbaa !24
  %i.t = load ptr, ptr %3, align 8, !tbaa !26
  %i.u = load ptr, ptr %1, align 8, !tbaa !26, !noalias !133 ; 2 uses
  %i.v = load ptr, ptr %5, align 8, !tbaa !26, !noalias !134 ; 2 uses
  %i.w = load i64, ptr %i.o, align 8, !tbaa !32, !noalias !134 ; 9 uses
  %i.x = load i64, ptr %i.n, align 8, !tbaa !27   ; 4 uses
  %i.y = load i64, ptr %i.m, align 8, !tbaa !27   ; 4 uses
  %i.z = icmp sgt i64 %i.w, 0
  br i1 %i.z, label %.preheader.preheader, label %._crit_edge55.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %9 = shl i64 %i.w, 3
  %scevgep = getelementptr i8, ptr %i.u, i64 %9
  %min.iters.check = icmp ult i64 %i.w, 6
  %ident.check = icmp ne i64 %i.y, 1
  %ident.check64 = icmp ne i64 %i.x, 1
  %i.aa = or i1 %ident.check, %ident.check64
  %n.vec = and i64 %i.w, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.w, %n.vec
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %._crit_edge ], [ 0, %.preheader.preheader ] ; 5 uses
  %i.ab = add nuw i64 %i.w, %indvars.iv58
  %i.ac = shl i64 %i.ab, 3
  %scevgep.a = getelementptr i8, ptr %i.v, i64 %i.ac
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv58
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !28
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr [4 x i8], ptr %i.r, i64 %i.af
  %i.ah = getelementptr [8 x i8], ptr %i.t, i64 %indvars.iv58
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv58 ; 5 uses
  br label %.lr.ph.i.i.i.i.i.i.preheader

._crit_edge55.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %.preheader.lr.ph.split, %bb.d
  %i.aj = load ptr, ptr %7, align 8, !tbaa !31
  call void @free(ptr noundef %i.aj) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  ret void

bb.e:                                             ; preds = %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %bb.g

._crit_edge:                                      ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %exitcond61.not = icmp eq i64 %indvars.iv.next59, %i.h
  br i1 %exitcond61.not, label %._crit_edge55.split, label %.preheader, !llvm.loop !125

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.preheader, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit ] ; 3 uses
  %i.al = mul nsw i64 %i.s, %indvars.iv
  %i.am = getelementptr [4 x i8], ptr %i.ag, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !28
  %i.ao = mul nuw nsw i64 %indvars.iv, %i.h
  %i.ap = getelementptr [8 x i8], ptr %i.ah, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !18 ; 4 uses
  %i.ar = sext i32 %i.an to i64                   ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.ar ; 5 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.aa
  br i1 %brmerge, label %.lr.ph.i.i.i.i.i.i.preheader70, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.at = shl nsw i64 %i.ar, 3
  %i.au = getelementptr i8, ptr %scevgep, i64 %i.at
  %bound0 = icmp ult ptr %i.ai, %i.au
  %bound1 = icmp ult ptr %i.as, %scevgep.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader70, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.aq, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %index ; 3 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.as, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load = load <2 x double>, ptr %i.aw, align 8, !tbaa !18, !alias.scope !135
  %wide.load67 = load <2 x double>, ptr %i.ax, align 8, !tbaa !18, !alias.scope !135
  %i.ay = fmul <2 x double> %broadcast.splat, %wide.load
  %i.az = fmul <2 x double> %broadcast.splat, %wide.load67
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %wide.load68 = load <2 x double>, ptr %i.av, align 8, !tbaa !18, !alias.scope !136, !noalias !135
  %wide.load69 = load <2 x double>, ptr %i.ba, align 8, !tbaa !18, !alias.scope !136, !noalias !135
  %i.bb = fadd <2 x double> %i.ay, %wide.load68
  %i.bc = fadd <2 x double> %i.az, %wide.load69
  store <2 x double> %i.bb, ptr %i.av, align 8, !tbaa !18, !alias.scope !136, !noalias !135
  store <2 x double> %i.bc, ptr %i.ba, align 8, !tbaa !18, !alias.scope !136, !noalias !135
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !129

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.preheader70

.lr.ph.i.i.i.i.i.i.preheader70:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %vector.memcheck, %middle.block
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %middle.block ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ] ; 5 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader70
  %i.be = mul nsw i64 %.05.i.i.i.i.i.i.ph, %i.y
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.be ; 2 uses
  %i.bg = mul nsw i64 %.05.i.i.i.i.i.i.ph, %i.x
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !18
  %i.bj = fmul double %i.aq, %i.bi
  %i.bk = load double, ptr %i.bf, align 8, !tbaa !18
  %i.bl = fadd double %i.bj, %i.bk
  store double %i.bl, ptr %i.bf, align 8, !tbaa !18
  %i.bm = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader70
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader70 ], [ %i.bm, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.bn = icmp eq i64 %i.w, %.neg
  br i1 %i.bn, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.cf, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.bo = mul nsw i64 %.05.i.i.i.i.i.i, %i.y
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.bo ; 2 uses
  %i.bq = mul nsw i64 %.05.i.i.i.i.i.i, %i.x
  %i.br = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bq
  %i.bs = load double, ptr %i.br, align 8, !tbaa !18
  %i.bt = fmul double %i.aq, %i.bs
  %i.bu = load double, ptr %i.bp, align 8, !tbaa !18
  %i.bv = fadd double %i.bt, %i.bu
  store double %i.bv, ptr %i.bp, align 8, !tbaa !18
  %i.bw = add nuw nsw i64 %.05.i.i.i.i.i.i, 1     ; 2 uses
  %i.bx = mul nsw i64 %i.bw, %i.y
  %i.by = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.bx ; 2 uses
  %i.bz = mul nsw i64 %i.bw, %i.x
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bz
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !18
  %i.cc = fmul double %i.aq, %i.cb
  %i.cd = load double, ptr %i.by, align 8, !tbaa !18
  %i.ce = fadd double %i.cc, %i.cd
  store double %i.ce, ptr %i.by, align 8, !tbaa !18
  %i.cf = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.cf, %i.w
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !130

_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.k
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.i.i.i.i.i.i.preheader, !llvm.loop !131

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cg, %bb.f ], [ %i.ak, %bb.e ]
  %i.ch = load ptr, ptr %7, align 8, !tbaa !31
  call void @free(ptr noundef %i.ch) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl21random_points_on_meshIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_NS2_IiLin1ELi1ELi0ELin1ELi1EEES3_RSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEviRKNS1_10MatrixBaseIT_EERKNS9_IT0_EERNS1_15PlainObjectBaseIT1_EERNSI_IT2_EERNSI_IT3_EEOT4_(i32 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(2504) %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.Eigen::Matrix", align 8     ; 8 uses
  %8 = alloca %"class.Eigen::CwiseNullaryOp.64", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN3igl31random_points_on_mesh_intrinsicIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEviRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSE_IT1_EEOT2_(i32 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(2504) %6)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !32
  store i64 %i.b, ptr %8, align 8, !tbaa !34, !alias.scope !154
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !34, !alias.scope !154
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !36, !alias.scope !154
  %i.g = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  %i.h = load i64, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.preheader.lr.ph, label %._crit_edge55.split

.preheader.lr.ph:                                 ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !32   ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.preheader.lr.ph.split, label %._crit_edge55.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load ptr, ptr %4, align 8, !tbaa !21
  %i.r = load ptr, ptr %2, align 8, !tbaa !23
  %i.s = load i64, ptr %i.p, align 8, !tbaa !24
  %i.t = load ptr, ptr %3, align 8, !tbaa !26
  %i.u = load ptr, ptr %1, align 8, !tbaa !26, !noalias !155 ; 2 uses
  %i.v = load ptr, ptr %5, align 8, !tbaa !26, !noalias !156 ; 2 uses
  %i.w = load i64, ptr %i.o, align 8, !tbaa !32, !noalias !156 ; 9 uses
  %i.x = load i64, ptr %i.n, align 8, !tbaa !27   ; 4 uses
  %i.y = load i64, ptr %i.m, align 8, !tbaa !27   ; 4 uses
  %i.z = icmp sgt i64 %i.w, 0
  br i1 %i.z, label %.preheader.preheader, label %._crit_edge55.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %9 = shl i64 %i.w, 3
  %scevgep = getelementptr i8, ptr %i.u, i64 %9
  %min.iters.check = icmp ult i64 %i.w, 6
  %ident.check = icmp ne i64 %i.y, 1
  %ident.check64 = icmp ne i64 %i.x, 1
  %i.aa = or i1 %ident.check, %ident.check64
  %n.vec = and i64 %i.w, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.w, %n.vec
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %._crit_edge ], [ 0, %.preheader.preheader ] ; 5 uses
  %i.ab = add nuw i64 %i.w, %indvars.iv58
  %i.ac = shl i64 %i.ab, 3
  %scevgep.a = getelementptr i8, ptr %i.v, i64 %i.ac
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv58
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !28
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr [4 x i8], ptr %i.r, i64 %i.af
  %i.ah = getelementptr [8 x i8], ptr %i.t, i64 %indvars.iv58
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv58 ; 5 uses
  br label %.lr.ph.i.i.i.i.i.i.preheader

._crit_edge55.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %.preheader.lr.ph.split, %bb.d
  %i.aj = load ptr, ptr %7, align 8, !tbaa !31
  call void @free(ptr noundef %i.aj) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  ret void

bb.e:                                             ; preds = %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %bb.g

._crit_edge:                                      ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %exitcond61.not = icmp eq i64 %indvars.iv.next59, %i.h
  br i1 %exitcond61.not, label %._crit_edge55.split, label %.preheader, !llvm.loop !147

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.preheader, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit ] ; 3 uses
  %i.al = mul nsw i64 %i.s, %indvars.iv
  %i.am = getelementptr [4 x i8], ptr %i.ag, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !28
  %i.ao = mul nuw nsw i64 %indvars.iv, %i.h
  %i.ap = getelementptr [8 x i8], ptr %i.ah, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !18 ; 4 uses
  %i.ar = sext i32 %i.an to i64                   ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.ar ; 5 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.aa
  br i1 %brmerge, label %.lr.ph.i.i.i.i.i.i.preheader70, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.at = shl nsw i64 %i.ar, 3
  %i.au = getelementptr i8, ptr %scevgep, i64 %i.at
  %bound0 = icmp ult ptr %i.ai, %i.au
  %bound1 = icmp ult ptr %i.as, %scevgep.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader70, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.aq, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %index ; 3 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.as, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load = load <2 x double>, ptr %i.aw, align 8, !tbaa !18, !alias.scope !157
  %wide.load67 = load <2 x double>, ptr %i.ax, align 8, !tbaa !18, !alias.scope !157
  %i.ay = fmul <2 x double> %broadcast.splat, %wide.load
  %i.az = fmul <2 x double> %broadcast.splat, %wide.load67
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %wide.load68 = load <2 x double>, ptr %i.av, align 8, !tbaa !18, !alias.scope !158, !noalias !157
  %wide.load69 = load <2 x double>, ptr %i.ba, align 8, !tbaa !18, !alias.scope !158, !noalias !157
  %i.bb = fadd <2 x double> %i.ay, %wide.load68
  %i.bc = fadd <2 x double> %i.az, %wide.load69
  store <2 x double> %i.bb, ptr %i.av, align 8, !tbaa !18, !alias.scope !158, !noalias !157
  store <2 x double> %i.bc, ptr %i.ba, align 8, !tbaa !18, !alias.scope !158, !noalias !157
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !151

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.preheader70

.lr.ph.i.i.i.i.i.i.preheader70:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %vector.memcheck, %middle.block
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %middle.block ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ] ; 5 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader70
  %i.be = mul nsw i64 %.05.i.i.i.i.i.i.ph, %i.y
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.be ; 2 uses
  %i.bg = mul nsw i64 %.05.i.i.i.i.i.i.ph, %i.x
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !18
  %i.bj = fmul double %i.aq, %i.bi
  %i.bk = load double, ptr %i.bf, align 8, !tbaa !18
  %i.bl = fadd double %i.bj, %i.bk
  store double %i.bl, ptr %i.bf, align 8, !tbaa !18
  %i.bm = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader70
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader70 ], [ %i.bm, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.bn = icmp eq i64 %i.w, %.neg
  br i1 %i.bn, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.cf, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.bo = mul nsw i64 %.05.i.i.i.i.i.i, %i.y
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.bo ; 2 uses
  %i.bq = mul nsw i64 %.05.i.i.i.i.i.i, %i.x
  %i.br = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bq
  %i.bs = load double, ptr %i.br, align 8, !tbaa !18
  %i.bt = fmul double %i.aq, %i.bs
  %i.bu = load double, ptr %i.bp, align 8, !tbaa !18
  %i.bv = fadd double %i.bt, %i.bu
  store double %i.bv, ptr %i.bp, align 8, !tbaa !18
  %i.bw = add nuw nsw i64 %.05.i.i.i.i.i.i, 1     ; 2 uses
  %i.bx = mul nsw i64 %i.bw, %i.y
  %i.by = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.bx ; 2 uses
  %i.bz = mul nsw i64 %i.bw, %i.x
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bz
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !18
  %i.cc = fmul double %i.aq, %i.cb
  %i.cd = load double, ptr %i.by, align 8, !tbaa !18
  %i.ce = fadd double %i.cc, %i.cd
  store double %i.ce, ptr %i.by, align 8, !tbaa !18
  %i.cf = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.cf, %i.w
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !152

_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.k
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.i.i.i.i.i.i.preheader, !llvm.loop !153

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cg, %bb.f ], [ %i.ak, %bb.e ]
  %i.ch = load ptr, ptr %7, align 8, !tbaa !31
  call void @free(ptr noundef %i.ch) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

declare void @_ZN3igl31random_points_on_mesh_intrinsicIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEERSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEEEviRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSE_IT1_EEOT2_(i32 noundef, ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(2504)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl21random_points_on_meshIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi1ELi0ELin1ELi1EEES3_St23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEviRKNS1_10MatrixBaseIT_EERKNS9_IT0_EERNS1_15PlainObjectBaseIT1_EERNSI_IT2_EERNSI_IT3_EEOT4_(i32 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(5000) %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.Eigen::Matrix", align 8     ; 8 uses
  %8 = alloca %"class.Eigen::CwiseNullaryOp.64", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN3igl31random_points_on_mesh_intrinsicIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi1ELi0ELin1ELi1EEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEviRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSE_IT1_EEOT2_(i32 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(5000) %6)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !186
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !32
  store i64 %i.b, ptr %8, align 8, !tbaa !34, !alias.scope !187
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !34, !alias.scope !187
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !36, !alias.scope !187
  %i.g = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  %i.h = load i64, ptr %i.a, align 8, !tbaa !186  ; 5 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.preheader.lr.ph, label %._crit_edge.split

.preheader.lr.ph:                                 ; preds = %bb.d
  %i.j = load ptr, ptr %4, align 8, !tbaa !21
  %i.k = load ptr, ptr %2, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !24   ; 2 uses
  %i.n = load ptr, ptr %3, align 8, !tbaa !188
  %i.o = load ptr, ptr %1, align 8, !tbaa !26, !noalias !189 ; 4 uses
  %i.p = load ptr, ptr %5, align 8, !tbaa !26, !noalias !190 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !32, !noalias !190 ; 21 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !27   ; 12 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !27   ; 12 uses
  %i.w = icmp sgt i64 %i.r, 0
  br i1 %i.w, label %.preheader.preheader, label %._crit_edge.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.idx = shl i64 %i.m, 3
  %.idx58 = shl i64 %i.h, 4
  %9 = shl i64 %i.r, 3
  %scevgep = getelementptr i8, ptr %i.o, i64 %9   ; 3 uses
  %i.x = add nuw i64 %i.r, %i.h
  %i.y = shl i64 %i.x, 3
  %i.z = getelementptr i8, ptr %i.p, i64 %i.y
  %scevgep.a = getelementptr i8, ptr %i.z, i64 -8 ; 3 uses
  %min.iters.check104 = icmp ult i64 %i.r, 6
  %ident.check95 = icmp ne i64 %i.v, 1
  %ident.check96 = icmp ne i64 %i.t, 1
  %i.aa = or i1 %ident.check95, %ident.check96
  %n.vec110 = and i64 %i.r, 9223372036854775804   ; 3 uses
  %cmp.n121 = icmp eq i64 %i.r, %n.vec110
  %xtraiter = and i64 %i.r, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check75 = icmp ult i64 %i.r, 6
  %ident.check66 = icmp ne i64 %i.v, 1
  %ident.check67 = icmp ne i64 %i.t, 1
  %i.ab = or i1 %ident.check66, %ident.check67
  %n.vec81 = and i64 %i.r, 9223372036854775804    ; 3 uses
  %cmp.n92 = icmp eq i64 %i.r, %n.vec81
  %xtraiter126 = and i64 %i.r, 1
  %lcmp.mod127.not = icmp eq i64 %xtraiter126, 0
  %min.iters.check = icmp ult i64 %i.r, 6
  %ident.check = icmp ne i64 %i.v, 1
  %ident.check59 = icmp ne i64 %i.t, 1
  %i.ac = or i1 %ident.check, %ident.check59
  %n.vec = and i64 %i.r, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.r, %n.vec
  %xtraiter128 = and i64 %i.r, 1
  %lcmp.mod129.not = icmp eq i64 %xtraiter128, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit.2
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit.2 ] ; 4 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !28
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr [4 x i8], ptr %i.k, i64 %i.af ; 3 uses
  %i.ah = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv ; 12 uses
  %i.aj = load i32, ptr %i.ag, align 4, !tbaa !28
  %i.ak = load double, ptr %i.ah, align 8, !tbaa !18 ; 4 uses
  %i.al = sext i32 %i.aj to i64                   ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.al ; 5 uses
  %brmerge = select i1 %min.iters.check104, i1 true, i1 %i.aa
  br i1 %brmerge, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.memcheck105

vector.memcheck105:                               ; preds = %.preheader
  %i.an = shl nsw i64 %i.al, 3
  %i.ao = getelementptr i8, ptr %scevgep, i64 %i.an
  %bound0106 = icmp ult ptr %i.p, %i.ao
  %bound1107 = icmp ult ptr %i.am, %scevgep.a
  %found.conflict108 = and i1 %bound0106, %bound1107
  br i1 %found.conflict108, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph109

vector.ph109:                                     ; preds = %vector.memcheck105
  %broadcast.splatinsert111 = insertelement <2 x double> poison, double %i.ak, i64 0
  %broadcast.splat112 = shufflevector <2 x double> %broadcast.splatinsert111, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body113

vector.body113:                                   ; preds = %vector.body113, %vector.ph109
  %index114 = phi i64 [ 0, %vector.ph109 ], [ %index.next119, %vector.body113 ] ; 3 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %index114 ; 3 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.am, i64 %index114 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load115 = load <2 x double>, ptr %i.aq, align 8, !tbaa !18, !alias.scope !191
  %wide.load116 = load <2 x double>, ptr %i.ar, align 8, !tbaa !18, !alias.scope !191
  %i.as = fmul <2 x double> %broadcast.splat112, %wide.load115
  %i.at = fmul <2 x double> %broadcast.splat112, %wide.load116
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %wide.load117 = load <2 x double>, ptr %i.ap, align 8, !tbaa !18, !alias.scope !192, !noalias !191
  %wide.load118 = load <2 x double>, ptr %i.au, align 8, !tbaa !18, !alias.scope !192, !noalias !191
  %i.av = fadd <2 x double> %i.as, %wide.load117
  %i.aw = fadd <2 x double> %i.at, %wide.load118
  store <2 x double> %i.av, ptr %i.ap, align 8, !tbaa !18, !alias.scope !192, !noalias !191
  store <2 x double> %i.aw, ptr %i.au, align 8, !tbaa !18, !alias.scope !192, !noalias !191
  %index.next119 = add nuw i64 %index114, 4       ; 2 uses
  %i.ax = icmp eq i64 %index.next119, %n.vec110
  br i1 %i.ax, label %middle.block120, label %vector.body113, !llvm.loop !172

middle.block120:                                  ; preds = %vector.body113
  br i1 %cmp.n121, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.preheader, %vector.memcheck105, %middle.block120
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck105 ], [ %n.vec110, %middle.block120 ], [ 0, %.preheader ] ; 5 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.ay = mul nsw i64 %.05.i.i.i.i.i.i.ph, %i.v
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ay ; 2 uses
  %i.ba = mul nsw i64 %.05.i.i.i.i.i.i.ph, %i.t
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !18
  %i.bd = fmul double %i.ak, %i.bc
  %i.be = load double, ptr %i.az, align 8, !tbaa !18
  %i.bf = fadd double %i.bd, %i.be
  store double %i.bf, ptr %i.az, align 8, !tbaa !18
  %i.bg = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bg, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.bh = icmp eq i64 %i.r, %.neg
  br i1 %i.bh, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i

._crit_edge.split:                                ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit.2, %.preheader.lr.ph, %bb.d
  %i.bi = load ptr, ptr %7, align 8, !tbaa !31
  call void @free(ptr noundef %i.bi) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  ret void

bb.e:                                             ; preds = %bb.c
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %bb.g

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.cb, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.bk = mul nsw i64 %.05.i.i.i.i.i.i, %i.v
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.bk ; 2 uses
  %i.bm = mul nsw i64 %.05.i.i.i.i.i.i, %i.t
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.bm
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !18
  %i.bp = fmul double %i.ak, %i.bo
  %i.bq = load double, ptr %i.bl, align 8, !tbaa !18
  %i.br = fadd double %i.bp, %i.bq
  store double %i.br, ptr %i.bl, align 8, !tbaa !18
  %i.bs = add nuw nsw i64 %.05.i.i.i.i.i.i, 1     ; 2 uses
  %i.bt = mul nsw i64 %i.bs, %i.v
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.bt ; 2 uses
  %i.bv = mul nsw i64 %i.bs, %i.t
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.bv
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !18
  %i.by = fmul double %i.ak, %i.bx
  %i.bz = load double, ptr %i.bu, align 8, !tbaa !18
  %i.ca = fadd double %i.by, %i.bz
  store double %i.ca, ptr %i.bu, align 8, !tbaa !18
  %i.cb = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1124 = icmp eq i64 %i.cb, %i.r
  br i1 %exitcond.not.i.i.i.i.i.i.1124, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !173

_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block120
  %i.cc = getelementptr [4 x i8], ptr %i.ag, i64 %i.m
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !28
  %i.ce = getelementptr [8 x i8], ptr %i.ah, i64 %i.h
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !18 ; 4 uses
  %i.cg = sext i32 %i.cd to i64                   ; 2 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.cg ; 5 uses
  %brmerge132 = select i1 %min.iters.check75, i1 true, i1 %i.ab
  br i1 %brmerge132, label %.lr.ph.i.i.i.i.i.i.1.preheader, label %vector.memcheck76

vector.memcheck76:                                ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit
  %i.ci = shl nsw i64 %i.cg, 3
  %i.cj = getelementptr i8, ptr %scevgep, i64 %i.ci
  %bound077 = icmp ult ptr %i.p, %i.cj
  %bound178 = icmp ult ptr %i.ch, %scevgep.a
  %found.conflict79 = and i1 %bound077, %bound178
  br i1 %found.conflict79, label %.lr.ph.i.i.i.i.i.i.1.preheader, label %vector.ph80

vector.ph80:                                      ; preds = %vector.memcheck76
  %broadcast.splatinsert82 = insertelement <2 x double> poison, double %i.cf, i64 0
  %broadcast.splat83 = shufflevector <2 x double> %broadcast.splatinsert82, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body84

vector.body84:                                    ; preds = %vector.body84, %vector.ph80
  %index85 = phi i64 [ 0, %vector.ph80 ], [ %index.next90, %vector.body84 ] ; 3 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %index85 ; 3 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %index85 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %wide.load86 = load <2 x double>, ptr %i.cl, align 8, !tbaa !18, !alias.scope !193
  %wide.load87 = load <2 x double>, ptr %i.cm, align 8, !tbaa !18, !alias.scope !193
  %i.cn = fmul <2 x double> %broadcast.splat83, %wide.load86
  %i.co = fmul <2 x double> %broadcast.splat83, %wide.load87
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 2 uses
  %wide.load88 = load <2 x double>, ptr %i.ck, align 8, !tbaa !18, !alias.scope !194, !noalias !193
  %wide.load89 = load <2 x double>, ptr %i.cp, align 8, !tbaa !18, !alias.scope !194, !noalias !193
  %i.cq = fadd <2 x double> %i.cn, %wide.load88
  %i.cr = fadd <2 x double> %i.co, %wide.load89
  store <2 x double> %i.cq, ptr %i.ck, align 8, !tbaa !18, !alias.scope !194, !noalias !193
  store <2 x double> %i.cr, ptr %i.cp, align 8, !tbaa !18, !alias.scope !194, !noalias !193
  %index.next90 = add nuw i64 %index85, 4         ; 2 uses
  %i.cs = icmp eq i64 %index.next90, %n.vec81
  br i1 %i.cs, label %middle.block91, label %vector.body84, !llvm.loop !177

middle.block91:                                   ; preds = %vector.body84
  br i1 %cmp.n92, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit.1, label %.lr.ph.i.i.i.i.i.i.1.preheader

.lr.ph.i.i.i.i.i.i.1.preheader:                   ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit, %vector.memcheck76, %middle.block91
  %.05.i.i.i.i.i.i.1.ph = phi i64 [ 0, %vector.memcheck76 ], [ %n.vec81, %middle.block91 ], [ 0, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit ] ; 5 uses
  %.neg130 = or disjoint i64 %.05.i.i.i.i.i.i.1.ph, 1
  br i1 %lcmp.mod127.not, label %.lr.ph.i.i.i.i.i.i.1.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.1.prol

.lr.ph.i.i.i.i.i.i.1.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.1.preheader
  %i.ct = mul nsw i64 %.05.i.i.i.i.i.i.1.ph, %i.v
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ct ; 2 uses
  %i.cv = mul nsw i64 %.05.i.i.i.i.i.i.1.ph, %i.t
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %i.cv
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !18
  %i.cy = fmul double %i.cf, %i.cx
  %i.cz = load double, ptr %i.cu, align 8, !tbaa !18
  %i.da = fadd double %i.cy, %i.cz
  store double %i.da, ptr %i.cu, align 8, !tbaa !18
  %i.db = or disjoint i64 %.05.i.i.i.i.i.i.1.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.1.prol.loopexit

.lr.ph.i.i.i.i.i.i.1.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.1.prol, %.lr.ph.i.i.i.i.i.i.1.preheader
  %.05.i.i.i.i.i.i.1.unr = phi i64 [ %.05.i.i.i.i.i.i.1.ph, %.lr.ph.i.i.i.i.i.i.1.preheader ], [ %i.db, %.lr.ph.i.i.i.i.i.i.1.prol ]
  %i.dc = icmp eq i64 %i.r, %.neg130
  br i1 %i.dc, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit.1, label %.lr.ph.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.1:                             ; preds = %.lr.ph.i.i.i.i.i.i.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.1
  %.05.i.i.i.i.i.i.1 = phi i64 [ %i.du, %.lr.ph.i.i.i.i.i.i.1 ], [ %.05.i.i.i.i.i.i.1.unr, %.lr.ph.i.i.i.i.i.i.1.prol.loopexit ] ; 4 uses
  %i.dd = mul nsw i64 %.05.i.i.i.i.i.i.1, %i.v
  %i.de = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.dd ; 2 uses
  %i.df = mul nsw i64 %.05.i.i.i.i.i.i.1, %i.t
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %i.df
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !18
  %i.di = fmul double %i.cf, %i.dh
  %i.dj = load double, ptr %i.de, align 8, !tbaa !18
  %i.dk = fadd double %i.di, %i.dj
  store double %i.dk, ptr %i.de, align 8, !tbaa !18
  %i.dl = add nuw nsw i64 %.05.i.i.i.i.i.i.1, 1   ; 2 uses
  %i.dm = mul nsw i64 %i.dl, %i.v
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.dm ; 2 uses
  %i.do = mul nsw i64 %i.dl, %i.t
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %i.do
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !18
  %i.dr = fmul double %i.cf, %i.dq
  %i.ds = load double, ptr %i.dn, align 8, !tbaa !18
  %i.dt = fadd double %i.dr, %i.ds
  store double %i.dt, ptr %i.dn, align 8, !tbaa !18
  %i.du = add nuw nsw i64 %.05.i.i.i.i.i.i.1, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1.1 = icmp eq i64 %i.du, %i.r
  br i1 %exitcond.not.i.i.i.i.i.i.1.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit.1, label %.lr.ph.i.i.i.i.i.i.1, !llvm.loop !178

_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit.1: ; preds = %.lr.ph.i.i.i.i.i.i.1.prol.loopexit, %.lr.ph.i.i.i.i.i.i.1, %middle.block91
  %i.dv = getelementptr i8, ptr %i.ag, i64 %.idx
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !28
  %i.dx = getelementptr i8, ptr %i.ah, i64 %.idx58
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !18 ; 4 uses
  %i.dz = sext i32 %i.dw to i64                   ; 2 uses
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.dz ; 5 uses
  %brmerge133 = select i1 %min.iters.check, i1 true, i1 %i.ac
  br i1 %brmerge133, label %.lr.ph.i.i.i.i.i.i.2.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit.1
  %i.eb = shl nsw i64 %i.dz, 3
  %i.ec = getelementptr i8, ptr %scevgep, i64 %i.eb
  %bound0 = icmp ult ptr %i.p, %i.ec
  %bound1 = icmp ult ptr %i.ea, %scevgep.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.2.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.dy, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %index ; 3 uses
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %index ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %wide.load = load <2 x double>, ptr %i.ee, align 8, !tbaa !18, !alias.scope !195
  %wide.load62 = load <2 x double>, ptr %i.ef, align 8, !tbaa !18, !alias.scope !195
  %i.eg = fmul <2 x double> %broadcast.splat, %wide.load
  %i.eh = fmul <2 x double> %broadcast.splat, %wide.load62
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 2 uses
  %wide.load63 = load <2 x double>, ptr %i.ed, align 8, !tbaa !18, !alias.scope !196, !noalias !195
  %wide.load64 = load <2 x double>, ptr %i.ei, align 8, !tbaa !18, !alias.scope !196, !noalias !195
  %i.ej = fadd <2 x double> %i.eg, %wide.load63
  %i.ek = fadd <2 x double> %i.eh, %wide.load64
  store <2 x double> %i.ej, ptr %i.ed, align 8, !tbaa !18, !alias.scope !196, !noalias !195
  store <2 x double> %i.ek, ptr %i.ei, align 8, !tbaa !18, !alias.scope !196, !noalias !195
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !182

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit.2, label %.lr.ph.i.i.i.i.i.i.2.preheader

.lr.ph.i.i.i.i.i.i.2.preheader:                   ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit.1, %vector.memcheck, %middle.block
  %.05.i.i.i.i.i.i.2.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %middle.block ], [ 0, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit.1 ] ; 5 uses
  %.neg131 = or disjoint i64 %.05.i.i.i.i.i.i.2.ph, 1
  br i1 %lcmp.mod129.not, label %.lr.ph.i.i.i.i.i.i.2.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.2.prol

.lr.ph.i.i.i.i.i.i.2.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.2.preheader
  %i.em = mul nsw i64 %.05.i.i.i.i.i.i.2.ph, %i.v
  %i.en = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.em ; 2 uses
  %i.eo = mul nsw i64 %.05.i.i.i.i.i.i.2.ph, %i.t
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.eo
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !18
  %i.er = fmul double %i.dy, %i.eq
  %i.es = load double, ptr %i.en, align 8, !tbaa !18
  %i.et = fadd double %i.er, %i.es
  store double %i.et, ptr %i.en, align 8, !tbaa !18
  %i.eu = or disjoint i64 %.05.i.i.i.i.i.i.2.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.2.prol.loopexit

.lr.ph.i.i.i.i.i.i.2.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.2.prol, %.lr.ph.i.i.i.i.i.i.2.preheader
  %.05.i.i.i.i.i.i.2.unr = phi i64 [ %.05.i.i.i.i.i.i.2.ph, %.lr.ph.i.i.i.i.i.i.2.preheader ], [ %i.eu, %.lr.ph.i.i.i.i.i.i.2.prol ]
  %i.ev = icmp eq i64 %i.r, %.neg131
  br i1 %i.ev, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit.2, label %.lr.ph.i.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.i.2:                             ; preds = %.lr.ph.i.i.i.i.i.i.2.prol.loopexit, %.lr.ph.i.i.i.i.i.i.2
  %.05.i.i.i.i.i.i.2 = phi i64 [ %i.fn, %.lr.ph.i.i.i.i.i.i.2 ], [ %.05.i.i.i.i.i.i.2.unr, %.lr.ph.i.i.i.i.i.i.2.prol.loopexit ] ; 4 uses
  %i.ew = mul nsw i64 %.05.i.i.i.i.i.i.2, %i.v
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ew ; 2 uses
  %i.ey = mul nsw i64 %.05.i.i.i.i.i.i.2, %i.t
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.ey
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !18
  %i.fb = fmul double %i.dy, %i.fa
  %i.fc = load double, ptr %i.ex, align 8, !tbaa !18
  %i.fd = fadd double %i.fb, %i.fc
  store double %i.fd, ptr %i.ex, align 8, !tbaa !18
  %i.fe = add nuw nsw i64 %.05.i.i.i.i.i.i.2, 1   ; 2 uses
  %i.ff = mul nsw i64 %i.fe, %i.v
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ff ; 2 uses
  %i.fh = mul nsw i64 %i.fe, %i.t
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.fh
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !18
  %i.fk = fmul double %i.dy, %i.fj
  %i.fl = load double, ptr %i.fg, align 8, !tbaa !18
  %i.fm = fadd double %i.fk, %i.fl
  store double %i.fm, ptr %i.fg, align 8, !tbaa !18
  %i.fn = add nuw nsw i64 %.05.i.i.i.i.i.i.2, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.2.1 = icmp eq i64 %i.fn, %i.r
  br i1 %exitcond.not.i.i.i.i.i.i.2.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit.2, label %.lr.ph.i.i.i.i.i.i.2, !llvm.loop !183

_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS1_IKS3_Li1ELin1ELb0EEEEEEERS4_RKNS0_IT_EE.exit.loopexit.2: ; preds = %.lr.ph.i.i.i.i.i.i.2.prol.loopexit, %.lr.ph.i.i.i.i.i.i.2, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %exitcond.not, label %._crit_edge.split, label %.preheader, !llvm.loop !184

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fo, %bb.f ], [ %i.bj, %bb.e ]
  %i.fp = load ptr, ptr %7, align 8, !tbaa !31
  call void @free(ptr noundef %i.fp) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

declare void @_ZN3igl31random_points_on_mesh_intrinsicIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEENS2_IiLin1ELi1ELi0ELin1ELi1EEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEviRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSE_IT1_EEOT2_(i32 noundef, ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(5000)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl21random_points_on_meshIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELi1ELi0ELin1ELi1EEES5_RSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEviRKNS1_10MatrixBaseIT_EERKNSA_IT0_EERNS1_15PlainObjectBaseIT1_EERNSJ_IT2_EERNSJ_IT3_EEOT4_(i32 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(5000) %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.Eigen::Matrix", align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN3igl31random_points_on_mesh_intrinsicIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELi3ELi1ELin1ELi3EEENS2_IiLin1ELi1ELi0ELin1ELi1EEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEviRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSE_IT1_EEOT2_(i32 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(5000) %6)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 5 uses
  %i.c = icmp sgt i64 %i.b, 3074457345618258602
  br i1 %i.c, label %bb.d, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEEE16_resize_to_matchINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i

bb.d:                                             ; preds = %bb.c
  %i.d = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.d, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #10
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEEE16_resize_to_matchINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i: ; preds = %bb.c
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef %i.b, i64 noundef 3)
          to label %.noexc42 unwind label %bb.f

.noexc42:                                         ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEEE16_resize_to_matchINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEEvRKNS_9EigenBaseIT_EE.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.f, %i.b
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.noexc42
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef %i.b, i64 noundef 3)
          to label %.noexc43 unwind label %bb.f

.noexc43:                                         ; preds = %bb.e
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !13
  br label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i: ; preds = %.noexc43, %.noexc42
  %i.g = phi i64 [ %i.b, %.noexc42 ], [ %.pre.i.i.i.i.i.i.i, %.noexc43 ] ; 2 uses
  %i.h = icmp slt i64 %i.g, 1
  br i1 %i.h, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit.loopexit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit.loopexit: ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i
  %i.i = load ptr, ptr %5, align 8, !tbaa !16
  %.idx.i.i.i.i.i.i.i.i.i = mul i64 %i.g, 24
  call void @llvm.memset.p0.i64(ptr align 8 %i.i, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !18
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit.loopexit, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi1ELin1ELi3EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit
  %i.l = load ptr, ptr %4, align 8, !tbaa !21
  %i.m = load ptr, ptr %2, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !24   ; 2 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !16
  %i.q = load ptr, ptr %1, align 8, !tbaa !26, !noalias !202 ; 3 uses
  %i.r = load ptr, ptr %5, align 8, !tbaa !16, !noalias !203
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !27   ; 4 uses
  %.idx.i.i.i.i.i.i.i.i.i44 = shl nsw i64 %i.t, 4 ; 3 uses
  %.idx = shl i64 %i.o, 3
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next, %.preheader ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !28
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr [4 x i8], ptr %i.m, i64 %i.w ; 3 uses
  %.idx.i.i.i = mul nuw nsw i64 %indvars.iv, 24   ; 2 uses
  %i.y = getelementptr i8, ptr %i.p, i64 %.idx.i.i.i ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i.i ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 4 uses
  %.promoted = load double, ptr %i.z, align 8, !tbaa !18
  %.promoted60 = load double, ptr %i.aa, align 8, !tbaa !18
  %.promoted61 = load double, ptr %i.ab, align 8, !tbaa !18
  %i.ac = load i32, ptr %i.x, align 4, !tbaa !28
  %i.ad = load double, ptr %i.y, align 8, !tbaa !18 ; 3 uses
  %i.ae = sext i32 %i.ac to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ae ; 3 uses
  %i.ag = load double, ptr %i.af, align 8, !tbaa !18
  %i.ah = fmul double %i.ad, %i.ag
  %i.ai = fadd double %i.ah, %.promoted           ; 2 uses
  store double %i.ai, ptr %i.z, align 8, !tbaa !18
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.t
end_hunk_0
