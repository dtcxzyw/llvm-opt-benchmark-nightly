inline.NumInlined: 332
inline.NumDeleted: 215
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN3igl5reduxIdZNS_3sumIdN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS2_12SparseMatrixIT_Li0EiEEiRNS2_15PlainObjectBaseIT0_EEEUlddE_S4_EEvS9_iRKSB_RNSA_IT1_EE:bb.a

_ZZN3igl5reduxIdZNS_3sumIdN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS2_12SparseMatrixIT_Li0EiEEiRNS2_15PlainObjectBaseIT0_EEEUlddE_S4_EEvS9_iRKSB_RNSA_IT1_EEENKUliidE_clEiid.exit.i.prol.loopexit: ; preds = %_ZZN3igl5reduxIdZNS_3sumIdN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS2_12SparseMatrixIT_Li0EiEEiRNS2_15PlainObjectBaseIT0_EEEUlddE_S4_EEvS9_iRKSB_RNSA_IT1_EEENKUliidE_clEiid.exit.i.prol, %_ZZN3igl5reduxIdZNS_3sumIdN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS2_12SparseMatrixIT_Li0EiEEiRNS2_15PlainObjectBaseIT0_EEEUlddE_S4_EEvS9_iRKSB_RNSA_IT1_EEENKUliidE_clEiid.exit.i.preheader
  %.sroa.8.09.i.unr = phi i64 [ %i.fp, %_ZZN3igl5reduxIdZNS_3sumIdN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS2_12SparseMatrixIT_Li0EiEEiRNS2_15PlainObjectBaseIT0_EEEUlddE_S4_EEvS9_iRKSB_RNSA_IT1_EEENKUliidE_clEiid.exit.i.preheader ], [ %i.gf, %_ZZN3igl5reduxIdZNS_3sumIdN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS2_12SparseMatrixIT_Li0EiEEiRNS2_15PlainObjectBaseIT0_EEEUlddE_S4_EEvS9_iRKSB_RNSA_IT1_EEENKUliidE_clEiid.exit.i.prol ]
  %i.gg = icmp eq i32 %i.fr, 1
  br i1 %i.gg, label %._crit_edge.i, label %_ZZN3igl5reduxIdZNS_3sumIdN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS2_12SparseMatrixIT_Li0EiEEiRNS2_15PlainObjectBaseIT0_EEEUlddE_S4_EEvS9_iRKSB_RNSA_IT1_EEENKUliidE_clEiid.exit.i

._crit_edge.i.us.i.preheader:                     ; preds = %.lr.ph.i
  %xtraiter47 = and i64 %i.fs, 3
  %i.gh = and i32 %i.fr, 3
  %lcmp.mod48.not = icmp eq i32 %i.gh, 0
  br i1 %lcmp.mod48.not, label %._crit_edge.i.us.i.prol.loopexit, label %._crit_edge.i.us.i.prol

._crit_edge.i.us.i.prol:                          ; preds = %._crit_edge.i.us.i.preheader, %._crit_edge.i.us.i.prol
  %.sroa.8.09.us10.i.prol = phi i64 [ %i.go, %._crit_edge.i.us.i.prol ], [ %i.fp, %._crit_edge.i.us.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %._crit_edge.i.us.i.prol ], [ 0, %._crit_edge.i.us.i.preheader ]
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.sroa.8.09.us10.i.prol
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !29
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.o, i64 %.sroa.8.09.us10.i.prol
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !23
  %i.gn = getelementptr inbounds [8 x i8], ptr %.pre10.i.us.i, i64 %i.gk
  store double %i.gm, ptr %i.gn, align 8, !tbaa !23
  %i.go = add nsw i64 %.sroa.8.09.us10.i.prol, 1  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter47
  br i1 %prol.iter.cmp.not, label %._crit_edge.i.us.i.prol.loopexit, label %._crit_edge.i.us.i.prol, !llvm.loop !35

._crit_edge.i.us.i.prol.loopexit:                 ; preds = %._crit_edge.i.us.i.prol, %._crit_edge.i.us.i.preheader
  %.sroa.8.09.us10.i.unr = phi i64 [ %i.fp, %._crit_edge.i.us.i.preheader ], [ %i.go, %._crit_edge.i.us.i.prol ]
  %i.gp = icmp ult i32 %i.fr, 4
  br i1 %i.gp, label %._crit_edge.i, label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %._crit_edge.i.us.i.prol.loopexit, %._crit_edge.i.us.i
  %.sroa.8.09.us10.i = phi i64 [ %i.hr, %._crit_edge.i.us.i ], [ %.sroa.8.09.us10.i.unr, %._crit_edge.i.us.i.prol.loopexit ] ; 6 uses
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.sroa.8.09.us10.i
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !29
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.o, i64 %.sroa.8.09.us10.i
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !23
  %i.gv = getelementptr inbounds [8 x i8], ptr %.pre10.i.us.i, i64 %i.gs
  store double %i.gu, ptr %i.gv, align 8, !tbaa !23
  %i.gw = add nsw i64 %.sroa.8.09.us10.i, 1       ; 2 uses
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.gw
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !29
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.gw
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !23
  %i.hc = getelementptr inbounds [8 x i8], ptr %.pre10.i.us.i, i64 %i.gz
  store double %i.hb, ptr %i.hc, align 8, !tbaa !23
  %i.hd = add nsw i64 %.sroa.8.09.us10.i, 2       ; 2 uses
  %i.he = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.hd
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !29
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.hd
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !23
  %i.hj = getelementptr inbounds [8 x i8], ptr %.pre10.i.us.i, i64 %i.hg
  store double %i.hi, ptr %i.hj, align 8, !tbaa !23
  %i.hk = add nsw i64 %.sroa.8.09.us10.i, 3       ; 2 uses
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !29
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.hk
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !23
  %i.hq = getelementptr inbounds [8 x i8], ptr %.pre10.i.us.i, i64 %i.hn
  store double %i.hp, ptr %i.hq, align 8, !tbaa !23
  %i.hr = add nsw i64 %.sroa.8.09.us10.i, 4       ; 2 uses
  %exitcond18.not.i.3 = icmp eq i64 %i.hr, %i.ft
  br i1 %exitcond18.not.i.3, label %._crit_edge.i, label %._crit_edge.i.us.i, !llvm.loop !30

._crit_edge.i:                                    ; preds = %_ZZN3igl5reduxIdZNS_3sumIdN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS2_12SparseMatrixIT_Li0EiEEiRNS2_15PlainObjectBaseIT0_EEEUlddE_S4_EEvS9_iRKSB_RNSA_IT1_EEENKUliidE_clEiid.exit.i.prol.loopexit, %_ZZN3igl5reduxIdZNS_3sumIdN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS2_12SparseMatrixIT_Li0EiEEiRNS2_15PlainObjectBaseIT0_EEEUlddE_S4_EEvS9_iRKSB_RNSA_IT1_EEENKUliidE_clEiid.exit.i, %._crit_edge.i.us.i.prol.loopexit, %._crit_edge.i.us.i, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond21.not.i = icmp eq i64 %indvars.iv.next.i, %i.l
  br i1 %exitcond21.not.i, label %_ZN3igl8for_eachIdZNS_5reduxIdZNS_3sumIdN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_12SparseMatrixIT_Li0EiEEiRNS3_15PlainObjectBaseIT0_EEEUlddE_S5_EEvSA_iRKSC_RNSB_IT1_EEEUliidE_EEvSA_SH_.exit, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i, !llvm.loop !32

_ZZN3igl5reduxIdZNS_3sumIdN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS2_12SparseMatrixIT_Li0EiEEiRNS2_15PlainObjectBaseIT0_EEEUlddE_S4_EEvS9_iRKSB_RNSA_IT1_EEENKUliidE_clEiid.exit.i: ; preds = %_ZZN3igl5reduxIdZNS_3sumIdN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS2_12SparseMatrixIT_Li0EiEEiRNS2_15PlainObjectBaseIT0_EEEUlddE_S4_EEvS9_iRKSB_RNSA_IT1_EEENKUliidE_clEiid.exit.i.prol.loopexit, %_ZZN3igl5reduxIdZNS_3sumIdN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS2_12SparseMatrixIT_Li0EiEEiRNS2_15PlainObjectBaseIT0_EEEUlddE_S4_EEvS9_iRKSB_RNSA_IT1_EEENKUliidE_clEiid.exit.i
  %.sroa.8.09.i = phi i64 [ %i.ij, %_ZZN3igl5reduxIdZNS_3sumIdN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS2_12SparseMatrixIT_Li0EiEEiRNS2_15PlainObjectBaseIT0_EEEUlddE_S4_EEvS9_iRKSB_RNSA_IT1_EEENKUliidE_clEiid.exit.i ], [ %.sroa.8.09.i.unr, %_ZZN3igl5reduxIdZNS_3sumIdN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS2_12SparseMatrixIT_Li0EiEEiRNS2_15PlainObjectBaseIT0_EEEUlddE_S4_EEvS9_iRKSB_RNSA_IT1_EEENKUliidE_clEiid.exit.i.prol.loopexit ] ; 4 uses
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.sroa.8.09.i
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !29
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.o, i64 %.sroa.8.09.i
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !23
  %i.hx = getelementptr inbounds [8 x i8], ptr %.pre10.i.us.i, i64 %i.hu ; 2 uses
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !23
  %i.hz = fadd double %i.hw, %i.hy
  store double %i.hz, ptr %i.hx, align 8, !tbaa !23
  %i.ia = add nsw i64 %.sroa.8.09.i, 1            ; 2 uses
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !29
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.ia
  %i.if = load double, ptr %i.ie, align 8, !tbaa !23
  %i.ig = getelementptr inbounds [8 x i8], ptr %.pre10.i.us.i, i64 %i.id ; 2 uses
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !23
  %i.ii = fadd double %i.if, %i.ih
  store double %i.ii, ptr %i.ig, align 8, !tbaa !23
  %i.ij = add nsw i64 %.sroa.8.09.i, 2            ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ij, %i.ft
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %_ZZN3igl5reduxIdZNS_3sumIdN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS2_12SparseMatrixIT_Li0EiEEiRNS2_15PlainObjectBaseIT0_EEEUlddE_S4_EEvS9_iRKSB_RNSA_IT1_EEENKUliidE_clEiid.exit.i, !llvm.loop !30

_ZN3igl8for_eachIdZNS_5reduxIdZNS_3sumIdN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_12SparseMatrixIT_Li0EiEEiRNS3_15PlainObjectBaseIT0_EEEUlddE_S5_EEvSA_iRKSC_RNSB_IT1_EEEUliidE_EEvSA_SH_.exit: ; preds = %._crit_edge.i, %._crit_edge.i.us18, %._crit_edge.i.us, %._crit_edge.i.us.us, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIdEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl3sumIbN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_12SparseMatrixIT_Li0EiEEiRNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %class.anon.4, align 1              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @_ZN3igl5reduxIbZNS_3sumIbN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS2_12SparseMatrixIT_Li0EiEEiRNS2_15PlainObjectBaseIT0_EEEUliiE_S4_EEvS9_iRKSB_RNSA_IT1_EE(ptr noundef nonnull align 1 %0, i32 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl5reduxIbZNS_3sumIbN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS2_12SparseMatrixIT_Li0EiEEiRNS2_15PlainObjectBaseIT0_EEEUliiE_S4_EEvS9_iRKSB_RNSA_IT1_EE(ptr noundef nonnull align 1 %0, i32 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !42
  %i.e = icmp eq i32 %1, 1                        ; 2 uses
  %.v = select i1 %i.e, i64 %i.d, i64 %i.b
  %sext = shl i64 %.v, 32
  %i.f = ashr exact i64 %sext, 32                 ; 4 uses
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.f, i64 noundef 1)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !43
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.h, %i.f
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES3_EEiiEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.f, i64 noundef 1)
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !tbaa !43
  br label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES3_EEiiEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES3_EEiiEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i: ; preds = %bb.b, %bb.a
  %i.i = phi i64 [ %i.f, %bb.a ], [ %.pr.i.i.i.i.i.i.i, %bb.b ] ; 2 uses
  %i.j = icmp slt i64 %i.i, 1
  br i1 %i.j, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit.loopexit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit.loopexit: ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES3_EEiiEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i
  %i.k = load ptr, ptr %3, align 8, !tbaa !45
  %.idx.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !29
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit.loopexit, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES3_EEiiEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i
  %i.l = load i64, ptr %i.c, align 8, !tbaa !42   ; 4 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph12.i, label %_ZN3igl8for_eachIbZNS_5reduxIbZNS_3sumIbN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_12SparseMatrixIT_Li0EiEEiRNS3_15PlainObjectBaseIT0_EEEUliiE_S5_EEvSA_iRKSC_RNSB_IT1_EEEUliibE_EEvSA_SH_.exit

.lr.ph12.i:                                       ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !46   ; 22 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !47   ; 22 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !48   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !49   ; 3 uses
  %i.v = icmp eq ptr %i.u, null                   ; 2 uses
  br i1 %i.e, label %.lr.ph12.i.split.us, label %.lr.ph12.i.split

.lr.ph12.i.split.us:                              ; preds = %.lr.ph12.i, %._crit_edge.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %._crit_edge.i.us ], [ 0, %.lr.ph12.i ] ; 5 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i.us ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !29
  %i.y = sext i32 %i.x to i64                     ; 14 uses
  br i1 %i.v, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph12.i.split.us
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i.us
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !29
  %i.ab = sext i32 %i.aa to i64
  %i.ac = add nsw i64 %i.ab, %i.y
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.us

bb.d:                                             ; preds = %.lr.ph12.i.split.us
  %i.ad = getelementptr i8, ptr %i.w, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !29
  %i.af = sext i32 %i.ae to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.us

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.us: ; preds = %bb.d, %bb.c
  %.sink.i.i.us = phi i64 [ %i.af, %bb.d ], [ %i.ac, %bb.c ] ; 7 uses
  %i.ag = icmp sgt i64 %.sink.i.i.us, %i.y
  br i1 %i.ag, label %.lr.ph.i.us, label %._crit_edge.i.us

.lr.ph.i.us:                                      ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.us
  %i.ah = icmp eq i64 %indvars.iv.i.us, 0
  %.pre13.i.us.i.us = load ptr, ptr %3, align 8, !tbaa !45 ; 5 uses
  br i1 %i.ah, label %.lr.ph.split.us.i.preheader.us, label %.lr.ph.split.i.preheader.us

._crit_edge.i.us:                                 ; preds = %.lr.ph.split.i.us.us.prol.loopexit, %.lr.ph.split.i.us.us, %.lr.ph.split.us.i.us.us.prol.loopexit, %.lr.ph.split.us.i.us.us, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.us
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond33.not = icmp eq i64 %indvars.iv.next.i.us, %i.l
  br i1 %exitcond33.not, label %_ZN3igl8for_eachIbZNS_5reduxIbZNS_3sumIbN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_12SparseMatrixIT_Li0EiEEiRNS3_15PlainObjectBaseIT0_EEEUliiE_S5_EEvSA_iRKSC_RNSB_IT1_EEEUliibE_EEvSA_SH_.exit, label %.lr.ph12.i.split.us, !llvm.loop !50

.lr.ph.split.us.i.preheader.us:                   ; preds = %.lr.ph.i.us
  %.pre13.i.us.i.promoted.us = load i32, ptr %.pre13.i.us.i.us, align 4 ; 2 uses
  %i.ai = sub nsw i64 %.sink.i.i.us, %i.y
  %.neg68 = add nsw i64 %i.y, 1
  %xtraiter64 = and i64 %i.ai, 1
  %lcmp.mod65.not = icmp eq i64 %xtraiter64, 0
  br i1 %lcmp.mod65.not, label %.lr.ph.split.us.i.us.us.prol.loopexit, label %.lr.ph.split.us.i.us.us.prol

.lr.ph.split.us.i.us.us.prol:                     ; preds = %.lr.ph.split.us.i.preheader.us
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.y
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !29
  %i.al = getelementptr inbounds i8, ptr %i.o, i64 %i.y
  %i.am = load i8, ptr %i.al, align 1, !tbaa !51, !range !52, !noundef !53
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = icmp eq i32 %i.ak, 0
  %i.ap = select i1 %i.ao, i32 0, i32 %.pre13.i.us.i.promoted.us
  %i.aq = add nsw i32 %i.ap, %i.an                ; 2 uses
  store i32 %i.aq, ptr %.pre13.i.us.i.us, align 4, !tbaa !29
  %i.ar = add nsw i64 %i.y, 1
  br label %.lr.ph.split.us.i.us.us.prol.loopexit

.lr.ph.split.us.i.us.us.prol.loopexit:            ; preds = %.lr.ph.split.us.i.us.us.prol, %.lr.ph.split.us.i.preheader.us
  %.unr67 = phi i32 [ %.pre13.i.us.i.promoted.us, %.lr.ph.split.us.i.preheader.us ], [ %i.aq, %.lr.ph.split.us.i.us.us.prol ]
  %.sroa.8.09.us.i.us.us.unr = phi i64 [ %i.y, %.lr.ph.split.us.i.preheader.us ], [ %i.ar, %.lr.ph.split.us.i.us.us.prol ]
  %i.as = icmp eq i64 %.sink.i.i.us, %.neg68
  br i1 %i.as, label %._crit_edge.i.us, label %.lr.ph.split.us.i.us.us

.lr.ph.split.i.preheader.us:                      ; preds = %.lr.ph.i.us
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.pre13.i.us.i.us, i64 %indvars.iv.i.us ; 4 uses
  %.promoted.us = load i32, ptr %i.at, align 4    ; 2 uses
  %i.au = sub nsw i64 %.sink.i.i.us, %i.y
  %.neg = add nsw i64 %i.y, 1
  %xtraiter61 = and i64 %i.au, 1
  %lcmp.mod62.not = icmp eq i64 %xtraiter61, 0
  br i1 %lcmp.mod62.not, label %.lr.ph.split.i.us.us.prol.loopexit, label %.lr.ph.split.i.us.us.prol

.lr.ph.split.i.us.us.prol:                        ; preds = %.lr.ph.split.i.preheader.us
  %i.av = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.y
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !29
  %i.ax = getelementptr inbounds i8, ptr %i.o, i64 %i.y
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !51, !range !52, !noundef !53
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = icmp eq i32 %i.aw, 0
  %i.bb = select i1 %i.ba, i32 0, i32 %.promoted.us
  %i.bc = add nsw i32 %i.bb, %i.az                ; 2 uses
  store i32 %i.bc, ptr %i.at, align 4, !tbaa !29
  %i.bd = add nsw i64 %i.y, 1
  br label %.lr.ph.split.i.us.us.prol.loopexit

.lr.ph.split.i.us.us.prol.loopexit:               ; preds = %.lr.ph.split.i.us.us.prol, %.lr.ph.split.i.preheader.us
  %.unr = phi i32 [ %.promoted.us, %.lr.ph.split.i.preheader.us ], [ %i.bc, %.lr.ph.split.i.us.us.prol ]
  %.sroa.8.09.i.us.us.unr = phi i64 [ %i.y, %.lr.ph.split.i.preheader.us ], [ %i.bd, %.lr.ph.split.i.us.us.prol ]
  %i.be = icmp eq i64 %.sink.i.i.us, %.neg
  br i1 %i.be, label %._crit_edge.i.us, label %.lr.ph.split.i.us.us

.lr.ph.split.i.us.us:                             ; preds = %.lr.ph.split.i.us.us.prol.loopexit, %.lr.ph.split.i.us.us
  %i.bf = phi i32 [ %i.bw, %.lr.ph.split.i.us.us ], [ %.unr, %.lr.ph.split.i.us.us.prol.loopexit ]
  %.sroa.8.09.i.us.us = phi i64 [ %i.bx, %.lr.ph.split.i.us.us ], [ %.sroa.8.09.i.us.us.unr, %.lr.ph.split.i.us.us.prol.loopexit ] ; 4 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.sroa.8.09.i.us.us
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !29
  %i.bi = getelementptr inbounds i8, ptr %i.o, i64 %.sroa.8.09.i.us.us
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !51, !range !52, !noundef !53
  %i.bk = zext nneg i8 %i.bj to i32
  %i.bl = icmp eq i32 %i.bh, 0
  %i.bm = select i1 %i.bl, i32 0, i32 %i.bf
  %i.bn = add nsw i32 %i.bm, %i.bk                ; 2 uses
  store i32 %i.bn, ptr %i.at, align 4, !tbaa !29
  %i.bo = add nsw i64 %.sroa.8.09.i.us.us, 1      ; 2 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !29
  %i.br = getelementptr inbounds i8, ptr %i.o, i64 %i.bo
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !51, !range !52, !noundef !53
  %i.bt = zext nneg i8 %i.bs to i32
  %i.bu = icmp eq i32 %i.bq, 0
  %i.bv = select i1 %i.bu, i32 0, i32 %i.bn
  %i.bw = add nsw i32 %i.bv, %i.bt                ; 2 uses
  store i32 %i.bw, ptr %i.at, align 4, !tbaa !29
  %i.bx = add nsw i64 %.sroa.8.09.i.us.us, 2      ; 2 uses
  %exitcond.not.i.us.us.1 = icmp eq i64 %i.bx, %.sink.i.i.us
  br i1 %exitcond.not.i.us.us.1, label %._crit_edge.i.us, label %.lr.ph.split.i.us.us, !llvm.loop !54

.lr.ph.split.us.i.us.us:                          ; preds = %.lr.ph.split.us.i.us.us.prol.loopexit, %.lr.ph.split.us.i.us.us
  %i.by = phi i32 [ %i.cp, %.lr.ph.split.us.i.us.us ], [ %.unr67, %.lr.ph.split.us.i.us.us.prol.loopexit ]
  %.sroa.8.09.us.i.us.us = phi i64 [ %i.cq, %.lr.ph.split.us.i.us.us ], [ %.sroa.8.09.us.i.us.us.unr, %.lr.ph.split.us.i.us.us.prol.loopexit ] ; 4 uses
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.sroa.8.09.us.i.us.us
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !29
  %i.cb = getelementptr inbounds i8, ptr %i.o, i64 %.sroa.8.09.us.i.us.us
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !51, !range !52, !noundef !53
  %i.cd = zext nneg i8 %i.cc to i32
  %i.ce = icmp eq i32 %i.ca, 0
  %i.cf = select i1 %i.ce, i32 0, i32 %i.by
  %i.cg = add nsw i32 %i.cf, %i.cd                ; 2 uses
  store i32 %i.cg, ptr %.pre13.i.us.i.us, align 4, !tbaa !29
  %i.ch = add nsw i64 %.sroa.8.09.us.i.us.us, 1   ; 2 uses
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !29
  %i.ck = getelementptr inbounds i8, ptr %i.o, i64 %i.ch
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !51, !range !52, !noundef !53
  %i.cm = zext nneg i8 %i.cl to i32
  %i.cn = icmp eq i32 %i.cj, 0
  %i.co = select i1 %i.cn, i32 0, i32 %i.cg
  %i.cp = add nsw i32 %i.co, %i.cm                ; 2 uses
  store i32 %i.cp, ptr %.pre13.i.us.i.us, align 4, !tbaa !29
  %i.cq = add nsw i64 %.sroa.8.09.us.i.us.us, 2   ; 2 uses
  %exitcond15.not.i.us.us.1 = icmp eq i64 %i.cq, %.sink.i.i.us
  br i1 %exitcond15.not.i.us.us.1, label %._crit_edge.i.us, label %.lr.ph.split.us.i.us.us, !llvm.loop !54

.lr.ph12.i.split:                                 ; preds = %.lr.ph12.i
  br i1 %i.v, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.us19, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.us19: ; preds = %.lr.ph12.i.split, %._crit_edge.i.us22
  %indvars.iv.i.us18 = phi i64 [ %indvars.iv.next.i.us23, %._crit_edge.i.us22 ], [ 0, %.lr.ph12.i.split ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i.us18 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !29 ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cr, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !29 ; 2 uses
  %i.cv = sext i32 %i.cu to i64                   ; 6 uses
  %i.cw = icmp sgt i32 %i.cu, %i.cs
  br i1 %i.cw, label %.lr.ph.i.us21, label %._crit_edge.i.us22

.lr.ph.i.us21:                                    ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.us19
  %i.cx = sext i32 %i.cs to i64                   ; 10 uses
  %i.cy = icmp eq i64 %indvars.iv.i.us18, 0
  %.pre13.i.us.i.us25 = load ptr, ptr %3, align 8, !tbaa !45 ; 8 uses
  br i1 %i.cy, label %.lr.ph.split.us.i.us.preheader, label %.lr.ph.split.i.us.preheader

.lr.ph.split.i.us.preheader:                      ; preds = %.lr.ph.i.us21
  %i.cz = sub nsw i64 %i.cv, %i.cx
  %xtraiter55 = and i64 %i.cz, 1
  %lcmp.mod56.not = icmp eq i64 %xtraiter55, 0
  br i1 %lcmp.mod56.not, label %.lr.ph.split.i.us.prol.loopexit, label %.lr.ph.split.i.us.prol

.lr.ph.split.i.us.prol:                           ; preds = %.lr.ph.split.i.us.preheader
  %i.da = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.cx
  %i.db = load i32, ptr %i.da, align 4, !tbaa !29
  %i.dc = getelementptr inbounds i8, ptr %i.o, i64 %i.cx
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !51, !range !52, !noundef !53
  %i.de = zext nneg i8 %i.dd to i32
  %i.df = sext i32 %i.db to i64
  %i.dg = getelementptr inbounds [4 x i8], ptr %.pre13.i.us.i.us25, i64 %i.df ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !29
  %i.di = add nsw i32 %i.dh, %i.de
  store i32 %i.di, ptr %i.dg, align 4, !tbaa !29
  %i.dj = add nsw i64 %i.cx, 1
  br label %.lr.ph.split.i.us.prol.loopexit

.lr.ph.split.i.us.prol.loopexit:                  ; preds = %.lr.ph.split.i.us.prol, %.lr.ph.split.i.us.preheader
  %.sroa.8.09.i.us.unr = phi i64 [ %i.cx, %.lr.ph.split.i.us.preheader ], [ %i.dj, %.lr.ph.split.i.us.prol ]
  %i.dk = add nsw i64 %i.cv, -1
  %i.dl = icmp eq i64 %i.dk, %i.cx
  br i1 %i.dl, label %._crit_edge.i.us22, label %.lr.ph.split.i.us

.lr.ph.split.us.i.us.preheader:                   ; preds = %.lr.ph.i.us21
  %i.dm = sub nsw i64 %i.cv, %i.cx
  %xtraiter58.a = and i64 %i.dm, 3                ; 2 uses
  %lcmp.mod59.not.a = icmp eq i64 %xtraiter58.a, 0
  br i1 %lcmp.mod59.not.a, label %.lr.ph.split.us.i.us.prol.loopexit, label %.lr.ph.split.us.i.us.prol

.lr.ph.split.us.i.us.prol:                        ; preds = %.lr.ph.split.us.i.us.preheader, %.lr.ph.split.us.i.us.prol
  %.sroa.8.09.us.i.us.prol = phi i64 [ %i.du, %.lr.ph.split.us.i.us.prol ], [ %i.cx, %.lr.ph.split.us.i.us.preheader ] ; 3 uses
  %prol.iter60 = phi i64 [ %prol.iter60.next, %.lr.ph.split.us.i.us.prol ], [ 0, %.lr.ph.split.us.i.us.preheader ]
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.sroa.8.09.us.i.us.prol
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !29
  %i.dp = getelementptr inbounds i8, ptr %i.o, i64 %.sroa.8.09.us.i.us.prol
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !51, !range !52, !noundef !53
  %i.dr = zext nneg i8 %i.dq to i32
  %i.ds = sext i32 %i.do to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %.pre13.i.us.i.us25, i64 %i.ds
  store i32 %i.dr, ptr %i.dt, align 4, !tbaa !29
  %i.du = add nsw i64 %.sroa.8.09.us.i.us.prol, 1 ; 2 uses
  %prol.iter60.next = add i64 %prol.iter60, 1     ; 2 uses
  %prol.iter60.cmp.not = icmp eq i64 %prol.iter60.next, %xtraiter58.a
  br i1 %prol.iter60.cmp.not, label %.lr.ph.split.us.i.us.prol.loopexit, label %.lr.ph.split.us.i.us.prol, !llvm.loop !55

.lr.ph.split.us.i.us.prol.loopexit:               ; preds = %.lr.ph.split.us.i.us.prol, %.lr.ph.split.us.i.us.preheader
  %.sroa.8.09.us.i.us.unr = phi i64 [ %i.cx, %.lr.ph.split.us.i.us.preheader ], [ %i.du, %.lr.ph.split.us.i.us.prol ]
  %i.dv = sub nsw i64 %i.cx, %i.cv
  %i.dw = icmp ugt i64 %i.dv, -4
  br i1 %i.dw, label %._crit_edge.i.us22, label %.lr.ph.split.us.i.us

.lr.ph.split.i.us:                                ; preds = %.lr.ph.split.i.us.prol.loopexit, %.lr.ph.split.i.us
  %.sroa.8.09.i.us = phi i64 [ %i.eq, %.lr.ph.split.i.us ], [ %.sroa.8.09.i.us.unr, %.lr.ph.split.i.us.prol.loopexit ] ; 4 uses
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.sroa.8.09.i.us
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !29
  %i.dz = getelementptr inbounds i8, ptr %i.o, i64 %.sroa.8.09.i.us
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !51, !range !52, !noundef !53
  %i.eb = zext nneg i8 %i.ea to i32
  %i.ec = sext i32 %i.dy to i64
  %i.ed = getelementptr inbounds [4 x i8], ptr %.pre13.i.us.i.us25, i64 %i.ec ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !29
  %i.ef = add nsw i32 %i.ee, %i.eb
  store i32 %i.ef, ptr %i.ed, align 4, !tbaa !29
  %i.eg = add nsw i64 %.sroa.8.09.i.us, 1         ; 2 uses
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !29
  %i.ej = getelementptr inbounds i8, ptr %i.o, i64 %i.eg
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !51, !range !52, !noundef !53
  %i.el = zext nneg i8 %i.ek to i32
  %i.em = sext i32 %i.ei to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %.pre13.i.us.i.us25, i64 %i.em ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !29
  %i.ep = add nsw i32 %i.eo, %i.el
  store i32 %i.ep, ptr %i.en, align 4, !tbaa !29
  %i.eq = add nsw i64 %.sroa.8.09.i.us, 2         ; 2 uses
  %exitcond.not.i.us.1 = icmp eq i64 %i.eq, %i.cv
  br i1 %exitcond.not.i.us.1, label %._crit_edge.i.us22, label %.lr.ph.split.i.us, !llvm.loop !54

.lr.ph.split.us.i.us:                             ; preds = %.lr.ph.split.us.i.us.prol.loopexit, %.lr.ph.split.us.i.us
  %.sroa.8.09.us.i.us = phi i64 [ %i.fw, %.lr.ph.split.us.i.us ], [ %.sroa.8.09.us.i.us.unr, %.lr.ph.split.us.i.us.prol.loopexit ] ; 6 uses
  %i.er = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.sroa.8.09.us.i.us
  %i.es = load i32, ptr %i.er, align 4, !tbaa !29
  %i.et = getelementptr inbounds i8, ptr %i.o, i64 %.sroa.8.09.us.i.us
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !51, !range !52, !noundef !53
  %i.ev = zext nneg i8 %i.eu to i32
  %i.ew = sext i32 %i.es to i64
  %i.ex = getelementptr inbounds [4 x i8], ptr %.pre13.i.us.i.us25, i64 %i.ew
  store i32 %i.ev, ptr %i.ex, align 4, !tbaa !29
  %i.ey = add nsw i64 %.sroa.8.09.us.i.us, 1      ; 2 uses
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !29
  %i.fb = getelementptr inbounds i8, ptr %i.o, i64 %i.ey
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !51, !range !52, !noundef !53
  %i.fd = zext nneg i8 %i.fc to i32
  %i.fe = sext i32 %i.fa to i64
  %i.ff = getelementptr inbounds [4 x i8], ptr %.pre13.i.us.i.us25, i64 %i.fe
  store i32 %i.fd, ptr %i.ff, align 4, !tbaa !29
  %i.fg = add nsw i64 %.sroa.8.09.us.i.us, 2      ; 2 uses
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !29
  %i.fj = getelementptr inbounds i8, ptr %i.o, i64 %i.fg
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !51, !range !52, !noundef !53
  %i.fl = zext nneg i8 %i.fk to i32
  %i.fm = sext i32 %i.fi to i64
  %i.fn = getelementptr inbounds [4 x i8], ptr %.pre13.i.us.i.us25, i64 %i.fm
  store i32 %i.fl, ptr %i.fn, align 4, !tbaa !29
  %i.fo = add nsw i64 %.sroa.8.09.us.i.us, 3      ; 2 uses
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !29
  %i.fr = getelementptr inbounds i8, ptr %i.o, i64 %i.fo
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !51, !range !52, !noundef !53
  %i.ft = zext nneg i8 %i.fs to i32
  %i.fu = sext i32 %i.fq to i64
  %i.fv = getelementptr inbounds [4 x i8], ptr %.pre13.i.us.i.us25, i64 %i.fu
  store i32 %i.ft, ptr %i.fv, align 4, !tbaa !29
  %i.fw = add nsw i64 %.sroa.8.09.us.i.us, 4      ; 2 uses
  %exitcond15.not.i.us.3 = icmp eq i64 %i.fw, %i.cv
  br i1 %exitcond15.not.i.us.3, label %._crit_edge.i.us22, label %.lr.ph.split.us.i.us, !llvm.loop !54

._crit_edge.i.us22:                               ; preds = %.lr.ph.split.i.us.prol.loopexit, %.lr.ph.split.i.us, %.lr.ph.split.us.i.us.prol.loopexit, %.lr.ph.split.us.i.us, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.us19
  %indvars.iv.next.i.us23 = add nuw nsw i64 %indvars.iv.i.us18, 1 ; 2 uses
  %exitcond32.not = icmp eq i64 %indvars.iv.next.i.us23, %i.l
  br i1 %exitcond32.not, label %_ZN3igl8for_eachIbZNS_5reduxIbZNS_3sumIbN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_12SparseMatrixIT_Li0EiEEiRNS3_15PlainObjectBaseIT0_EEEUliiE_S5_EEvSA_iRKSC_RNSB_IT1_EEEUliibE_EEvSA_SH_.exit, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.us19, !llvm.loop !50

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i: ; preds = %.lr.ph12.i.split, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ 0, %.lr.ph12.i.split ] ; 4 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !29
  %i.fz = sext i32 %i.fy to i64                   ; 7 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !29 ; 6 uses
  %i.gc = sext i32 %i.gb to i64                   ; 2 uses
  %i.gd = add nsw i64 %i.gc, %i.fz                ; 2 uses
  %i.ge = icmp sgt i32 %i.gb, 0
  br i1 %i.ge, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i
  %i.gf = icmp eq i64 %indvars.iv.i, 0
  %.pre13.i.us.i = load ptr, ptr %3, align 8, !tbaa !45 ; 8 uses
  br i1 %i.gf, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %i.gg = and i32 %i.gb, 1
  %lcmp.mod.not = icmp eq i32 %i.gg, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.i.prol.loopexit, label %.lr.ph.split.i.prol

.lr.ph.split.i.prol:                              ; preds = %.lr.ph.split.i.preheader
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.fz
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !29
  %i.gj = getelementptr inbounds i8, ptr %i.o, i64 %i.fz
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !51, !range !52, !noundef !53
  %i.gl = zext nneg i8 %i.gk to i32
  %i.gm = sext i32 %i.gi to i64
  %i.gn = getelementptr inbounds [4 x i8], ptr %.pre13.i.us.i, i64 %i.gm ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !29
  %i.gp = add nsw i32 %i.go, %i.gl
  store i32 %i.gp, ptr %i.gn, align 4, !tbaa !29
  %i.gq = add nsw i64 %i.fz, 1
  br label %.lr.ph.split.i.prol.loopexit

.lr.ph.split.i.prol.loopexit:                     ; preds = %.lr.ph.split.i.prol, %.lr.ph.split.i.preheader
  %.sroa.8.09.i.unr = phi i64 [ %i.fz, %.lr.ph.split.i.preheader ], [ %i.gq, %.lr.ph.split.i.prol ]
  %i.gr = icmp eq i32 %i.gb, 1
  br i1 %i.gr, label %._crit_edge.i, label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %xtraiter53 = and i64 %i.gc, 3
  %i.gs = and i32 %i.gb, 3
  %lcmp.mod54.not = icmp eq i32 %i.gs, 0
  br i1 %lcmp.mod54.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol

.lr.ph.split.us.i.prol:                           ; preds = %.lr.ph.split.us.i.preheader, %.lr.ph.split.us.i.prol
  %.sroa.8.09.us.i.prol = phi i64 [ %i.ha, %.lr.ph.split.us.i.prol ], [ %i.fz, %.lr.ph.split.us.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.i.prol ], [ 0, %.lr.ph.split.us.i.preheader ]
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.sroa.8.09.us.i.prol
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !29
  %i.gv = getelementptr inbounds i8, ptr %i.o, i64 %.sroa.8.09.us.i.prol
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !51, !range !52, !noundef !53
  %i.gx = zext nneg i8 %i.gw to i32
  %i.gy = sext i32 %i.gu to i64
  %i.gz = getelementptr inbounds [4 x i8], ptr %.pre13.i.us.i, i64 %i.gy
  store i32 %i.gx, ptr %i.gz, align 4, !tbaa !29
  %i.ha = add nsw i64 %.sroa.8.09.us.i.prol, 1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter53
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.i.prol.loopexit, label %.lr.ph.split.us.i.prol, !llvm.loop !56

.lr.ph.split.us.i.prol.loopexit:                  ; preds = %.lr.ph.split.us.i.prol, %.lr.ph.split.us.i.preheader
  %.sroa.8.09.us.i.unr = phi i64 [ %i.fz, %.lr.ph.split.us.i.preheader ], [ %i.ha, %.lr.ph.split.us.i.prol ]
  %i.hb = icmp ult i32 %i.gb, 4
  br i1 %i.hb, label %._crit_edge.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i
  %.sroa.8.09.us.i = phi i64 [ %i.ih, %.lr.ph.split.us.i ], [ %.sroa.8.09.us.i.unr, %.lr.ph.split.us.i.prol.loopexit ] ; 6 uses
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.sroa.8.09.us.i
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !29
  %i.he = getelementptr inbounds i8, ptr %i.o, i64 %.sroa.8.09.us.i
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !51, !range !52, !noundef !53
  %i.hg = zext nneg i8 %i.hf to i32
  %i.hh = sext i32 %i.hd to i64
  %i.hi = getelementptr inbounds [4 x i8], ptr %.pre13.i.us.i, i64 %i.hh
  store i32 %i.hg, ptr %i.hi, align 4, !tbaa !29
  %i.hj = add nsw i64 %.sroa.8.09.us.i, 1         ; 2 uses
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.hj
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !29
  %i.hm = getelementptr inbounds i8, ptr %i.o, i64 %i.hj
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !51, !range !52, !noundef !53
  %i.ho = zext nneg i8 %i.hn to i32
  %i.hp = sext i32 %i.hl to i64
  %i.hq = getelementptr inbounds [4 x i8], ptr %.pre13.i.us.i, i64 %i.hp
  store i32 %i.ho, ptr %i.hq, align 4, !tbaa !29
  %i.hr = add nsw i64 %.sroa.8.09.us.i, 2         ; 2 uses
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !29
  %i.hu = getelementptr inbounds i8, ptr %i.o, i64 %i.hr
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !51, !range !52, !noundef !53
  %i.hw = zext nneg i8 %i.hv to i32
  %i.hx = sext i32 %i.ht to i64
  %i.hy = getelementptr inbounds [4 x i8], ptr %.pre13.i.us.i, i64 %i.hx
  store i32 %i.hw, ptr %i.hy, align 4, !tbaa !29
  %i.hz = add nsw i64 %.sroa.8.09.us.i, 3         ; 2 uses
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !29
  %i.ic = getelementptr inbounds i8, ptr %i.o, i64 %i.hz
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !51, !range !52, !noundef !53
  %i.ie = zext nneg i8 %i.id to i32
  %i.if = sext i32 %i.ib to i64
  %i.ig = getelementptr inbounds [4 x i8], ptr %.pre13.i.us.i, i64 %i.if
  store i32 %i.ie, ptr %i.ig, align 4, !tbaa !29
  %i.ih = add nsw i64 %.sroa.8.09.us.i, 4         ; 2 uses
  %exitcond15.not.i.3 = icmp eq i64 %i.ih, %i.gd
  br i1 %exitcond15.not.i.3, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !54

._crit_edge.i:                                    ; preds = %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i, %.lr.ph.split.us.i.prol.loopexit, %.lr.ph.split.us.i, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.l
  br i1 %exitcond.not, label %_ZN3igl8for_eachIbZNS_5reduxIbZNS_3sumIbN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_12SparseMatrixIT_Li0EiEEiRNS3_15PlainObjectBaseIT0_EEEUliiE_S5_EEvSA_iRKSC_RNSB_IT1_EEEUliibE_EEvSA_SH_.exit, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i, !llvm.loop !50

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.prol.loopexit, %.lr.ph.split.i
  %.sroa.8.09.i = phi i64 [ %i.jb, %.lr.ph.split.i ], [ %.sroa.8.09.i.unr, %.lr.ph.split.i.prol.loopexit ] ; 4 uses
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.sroa.8.09.i
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !29
  %i.ik = getelementptr inbounds i8, ptr %i.o, i64 %.sroa.8.09.i
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !51, !range !52, !noundef !53
  %i.im = zext nneg i8 %i.il to i32
  %i.in = sext i32 %i.ij to i64
  %i.io = getelementptr inbounds [4 x i8], ptr %.pre13.i.us.i, i64 %i.in ; 2 uses
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !29
  %i.iq = add nsw i32 %i.ip, %i.im
  store i32 %i.iq, ptr %i.io, align 4, !tbaa !29
  %i.ir = add nsw i64 %.sroa.8.09.i, 1            ; 2 uses
  %i.is = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 4, !tbaa !29
  %i.iu = getelementptr inbounds i8, ptr %i.o, i64 %i.ir
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !51, !range !52, !noundef !53
  %i.iw = zext nneg i8 %i.iv to i32
  %i.ix = sext i32 %i.it to i64
  %i.iy = getelementptr inbounds [4 x i8], ptr %.pre13.i.us.i, i64 %i.ix ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !29
  %i.ja = add nsw i32 %i.iz, %i.iw
  store i32 %i.ja, ptr %i.iy, align 4, !tbaa !29
  %i.jb = add nsw i64 %.sroa.8.09.i, 2            ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.jb, %i.gd
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !54

_ZN3igl8for_eachIbZNS_5reduxIbZNS_3sumIbN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_12SparseMatrixIT_Li0EiEEiRNS3_15PlainObjectBaseIT0_EEEUliiE_S5_EEvSA_iRKSC_RNSB_IT1_EEEUliibE_EEvSA_SH_.exit: ; preds = %._crit_edge.i, %._crit_edge.i.us22, %._crit_edge.i.us, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEaSINS_14CwiseNullaryOpINS_8internal18scalar_constant_opIiEES2_EEEERS2_RKNS_9EigenBaseIT_EE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl3sumIdEEvRKN5Eigen12SparseMatrixIT_Li0EiEEiRNS1_12SparseVectorIS3_Li0EiEE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::SparseVector", align 8 ; 7 uses
  %4 = alloca %"class.Eigen::SparseVector", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = icmp eq i32 %1, 1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %sext19 = shl i64 %i.c, 32
  %i.d = ashr exact i64 %sext19, 32               ; 2 uses
  store i8 0, ptr %3, align 8, !tbaa !57
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %i.d, ptr %i.f, align 8, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.d, ptr %i.g, align 8, !tbaa !59
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 0, ptr %i.h, align 8, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef 0, double noundef 0.000000e+00)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5Eigen12SparseVectorIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %sext = shl i64 %i.l, 32
  %i.m = ashr exact i64 %sext, 32                 ; 2 uses
  store i8 0, ptr %4, align 8, !tbaa !57
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 0, i64 32, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %i.m, ptr %i.o, align 8, !tbaa !59
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.m, ptr %i.p, align 8, !tbaa !59
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 0, ptr %i.q, align 8, !tbaa !62
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 noundef 0, double noundef 0.000000e+00)
          to label %.thread unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5Eigen12SparseVectorIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %common.resume

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.t = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.u = icmp sgt i64 %i.t, 0
  br i1 %i.u, label %.lr.ph72, label %._crit_edge73

.thread:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.v = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.w = icmp sgt i64 %i.v, 0
  br i1 %i.w, label %.lr.ph72.thread, label %._crit_edge73

.lr.ph72.thread:                                  ; preds = %.thread
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  br label %.lr.ph72.split

.lr.ph72:                                         ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  br label %.lr.ph72.split.us

.lr.ph72.split.us:                                ; preds = %.lr.ph72, %._crit_edge.split.us.us
  %i.am = phi i64 [ %i.bd, %._crit_edge.split.us.us ], [ %i.t, %.lr.ph72 ]
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %._crit_edge.split.us.us ], [ 0, %.lr.ph72 ] ; 6 uses
  %i.an = load ptr, ptr %i.af, align 8, !tbaa !25
  %i.ao = load ptr, ptr %i.ag, align 8, !tbaa !27
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv79 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !29
  %i.ar = sext i32 %i.aq to i64                   ; 3 uses
  %i.as = load ptr, ptr %i.ah, align 8, !tbaa !28 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph72.split.us
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv79
  %i.av = load i32, ptr %i.au, align 4, !tbaa !29
  %i.aw = sext i32 %i.av to i64
  %i.ax = add nsw i64 %i.aw, %i.ar
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us

bb.h:                                             ; preds = %.lr.ph72.split.us
  %i.ay = getelementptr i8, ptr %i.ap, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !29
  %i.ba = sext i32 %i.az to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us: ; preds = %bb.h, %bb.g
  %.sink.i.us = phi i64 [ %i.ba, %bb.h ], [ %i.ax, %bb.g ] ; 2 uses
  %i.bb = icmp sgt i64 %.sink.i.us, %i.ar
  br i1 %i.bb, label %.lr.ph.us.preheader, label %._crit_edge.split.us.us

.lr.ph.us.preheader:                              ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us
  %.pre84 = load i64, ptr %i.aj, align 8, !tbaa !62
  %i.bc = trunc nuw nsw i64 %indvars.iv79 to i32
  br label %.lr.ph.us

._crit_edge.split.us.us.loopexit:                 ; preds = %_ZN5Eigen8internal17CompressedStorageIdiE15atWithInsertionElRKd.exit.us.us
  %.pre87 = load i64, ptr %i.a, align 8, !tbaa !19
  br label %._crit_edge.split.us.us

._crit_edge.split.us.us:                          ; preds = %._crit_edge.split.us.us.loopexit, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us
  %i.bd = phi i64 [ %.pre87, %._crit_edge.split.us.us.loopexit ], [ %i.am, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us ] ; 2 uses
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %i.be = icmp sgt i64 %i.bd, %indvars.iv.next80
  br i1 %i.be, label %.lr.ph72.split.us, label %._crit_edge73, !llvm.loop !63

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %_ZN5Eigen8internal17CompressedStorageIdiE15atWithInsertionElRKd.exit.us.us
  %i.bf = phi i64 [ %i.do, %_ZN5Eigen8internal17CompressedStorageIdiE15atWithInsertionElRKd.exit.us.us ], [ %.pre84, %.lr.ph.us.preheader ] ; 9 uses
  %.sroa.9.067.us.us = phi i64 [ %i.ds, %_ZN5Eigen8internal17CompressedStorageIdiE15atWithInsertionElRKd.exit.us.us ], [ %i.ar, %.lr.ph.us.preheader ] ; 2 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.an, i64 %.sroa.9.067.us.us
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !23
  %i.bi = icmp sgt i64 %i.bf, 0
  br i1 %i.bi, label %.lr.ph.i.i.us.us, label %_ZNK5Eigen8internal17CompressedStorageIdiE16searchLowerIndexElll.exit.i.us.us

.lr.ph.i.i.us.us:                                 ; preds = %.lr.ph.us
  %i.bj = load ptr, ptr %i.ak, align 8, !tbaa !26
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.us.us
  %.012.i.i.us.us = phi i64 [ 0, %.lr.ph.i.i.us.us ], [ %.1.i.i.us.us, %bb.i ] ; 2 uses
  %.0911.i.i.us.us = phi i64 [ %i.bf, %.lr.ph.i.i.us.us ], [ %.110.i.i.us.us, %bb.i ] ; 2 uses
  %i.bk = add nuw nsw i64 %.0911.i.i.us.us, %.012.i.i.us.us
  %i.bl = lshr i64 %i.bk, 1                       ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !29
  %i.bo = sext i32 %i.bn to i64
  %i.bp = icmp sgt i64 %indvars.iv79, %i.bo       ; 2 uses
  %i.bq = add nuw nsw i64 %i.bl, 1
  %.110.i.i.us.us = select i1 %i.bp, i64 %.0911.i.i.us.us, i64 %i.bl ; 2 uses
  %.1.i.i.us.us = select i1 %i.bp, i64 %i.bq, i64 %.012.i.i.us.us ; 3 uses
  %i.br = icmp sgt i64 %.110.i.i.us.us, %.1.i.i.us.us
  br i1 %i.br, label %bb.i, label %_ZNK5Eigen8internal17CompressedStorageIdiE16searchLowerIndexElll.exit.i.us.us, !llvm.loop !64

_ZNK5Eigen8internal17CompressedStorageIdiE16searchLowerIndexElll.exit.i.us.us: ; preds = %bb.i, %.lr.ph.us
  %.0.lcssa.i.i.us.us = phi i64 [ 0, %.lr.ph.us ], [ %.1.i.i.us.us, %bb.i ] ; 17 uses
  %.not.i.us.us = icmp slt i64 %.0.lcssa.i.i.us.us, %i.bf ; 2 uses
end_hunk_0
