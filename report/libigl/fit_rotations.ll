Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/fit_rotations?download=true
inline.NumInlined: 1689
inline.NumDeleted: 1101
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN3igl13fit_rotationsIN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EEbRNS1_15PlainObjectBaseIT0_EE:bb.a
  %i.cj = insertelement <4 x float> poison, float %i.cf, i64 0
  %i.ck = insertelement <4 x float> %i.cj, float %i.cg, i64 1
  %i.cl = insertelement <4 x float> %i.ck, float %i.ch, i64 2
  %i.cm = insertelement <4 x float> %i.cl, float %i.ci, i64 3
  %i.cn = load float, ptr %i.by, align 4, !tbaa !18, !alias.scope !89
  %i.co = load float, ptr %i.ca, align 4, !tbaa !18, !alias.scope !89
  %i.cp = load float, ptr %i.cc, align 4, !tbaa !18, !alias.scope !89
  %i.cq = load float, ptr %i.ce, align 4, !tbaa !18, !alias.scope !89
  %i.cr = insertelement <4 x float> poison, float %i.cn, i64 0
  %i.cs = insertelement <4 x float> %i.cr, float %i.co, i64 1
  %i.ct = insertelement <4 x float> %i.cs, float %i.cp, i64 2
  %i.cu = insertelement <4 x float> %i.ct, float %i.cq, i64 3
  %i.cv = getelementptr i8, ptr %i.bh, i64 16
  store <4 x float> %i.cm, ptr %i.bh, align 4, !tbaa !18, !alias.scope !90, !noalias !89
  store <4 x float> %i.cu, ptr %i.cv, align 4, !tbaa !18, !alias.scope !90, !noalias !89
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %scalar.ph.preheader, label %vector.body, !llvm.loop !81

scalar.ph.preheader:                              ; preds = %vector.body, %.preheader.i.i.i.i.i.i.i.i.i.i.us
  %.09.i.i.i.i.i.i.i.i.i.i.us.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.us ], [ %n.vec, %vector.body ] ; 4 uses
  %i.cx = sub i64 %.fr, %.09.i.i.i.i.i.i.i.i.i.i.us.ph
  %xtraiter103 = and i64 %i.cx, 3                 ; 2 uses
  %lcmp.mod104.not = icmp eq i64 %xtraiter103, 0
  br i1 %lcmp.mod104.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.09.i.i.i.i.i.i.i.i.i.i.us.prol = phi i64 [ %i.da, %scalar.ph.prol ], [ %.09.i.i.i.i.i.i.i.i.i.i.us.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cy = getelementptr [4 x i8], ptr %i.bg, i64 %.09.i.i.i.i.i.i.i.i.i.i.us.prol
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.prol = mul nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.us.prol, 12
  %gep.i.i.i.i.i.i.i.i.i.i.us.prol = getelementptr i8, ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.us, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.prol
  %i.cz = load float, ptr %gep.i.i.i.i.i.i.i.i.i.i.us.prol, align 4, !tbaa !18
  store float %i.cz, ptr %i.cy, align 4, !tbaa !18
  %i.da = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.us.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter103
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !82

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.i.i.i.i.i.i.i.i.i.us.unr = phi i64 [ %.09.i.i.i.i.i.i.i.i.i.i.us.ph, %scalar.ph.preheader ], [ %i.da, %scalar.ph.prol ]
  %i.db = sub nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.us.ph, %i.f
  %i.dc = icmp ugt i64 %i.db, -4
  br i1 %i.dc, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i.i.i.i.i.i.i.i.i.i.us = phi i64 [ %i.do, %scalar.ph ], [ %.09.i.i.i.i.i.i.i.i.i.i.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dd = getelementptr [4 x i8], ptr %i.bg, i64 %.09.i.i.i.i.i.i.i.i.i.i.us
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us = mul nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.us, 12
  %gep.i.i.i.i.i.i.i.i.i.i.us = getelementptr i8, ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.us, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us
  %i.de = load float, ptr %gep.i.i.i.i.i.i.i.i.i.i.us, align 4, !tbaa !18
  store float %i.de, ptr %i.dd, align 4, !tbaa !18
  %i.df = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.us, 1 ; 2 uses
  %i.dg = getelementptr [4 x i8], ptr %i.bg, i64 %i.df
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.1 = mul nuw nsw i64 %i.df, 12
  %gep.i.i.i.i.i.i.i.i.i.i.us.1 = getelementptr i8, ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.us, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.1
  %i.dh = load float, ptr %gep.i.i.i.i.i.i.i.i.i.i.us.1, align 4, !tbaa !18
  store float %i.dh, ptr %i.dg, align 4, !tbaa !18
  %i.di = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.us, 2 ; 2 uses
  %i.dj = getelementptr [4 x i8], ptr %i.bg, i64 %i.di
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.2 = mul nuw nsw i64 %i.di, 12
  %gep.i.i.i.i.i.i.i.i.i.i.us.2 = getelementptr i8, ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.us, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.2
  %i.dk = load float, ptr %gep.i.i.i.i.i.i.i.i.i.i.us.2, align 4, !tbaa !18
  store float %i.dk, ptr %i.dj, align 4, !tbaa !18
  %i.dl = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.us, 3 ; 2 uses
  %i.dm = getelementptr [4 x i8], ptr %i.bg, i64 %i.dl
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.3 = mul nuw nsw i64 %i.dl, 12
  %gep.i.i.i.i.i.i.i.i.i.i.us.3 = getelementptr i8, ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.us, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us.3
  %i.dn = load float, ptr %gep.i.i.i.i.i.i.i.i.i.i.us.3, align 4, !tbaa !18
  store float %i.dn, ptr %i.dm, align 4, !tbaa !18
  %i.do = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.us, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.3 = icmp eq i64 %i.do, %i.f
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.3, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.us, label %scalar.ph, !llvm.loop !83

._crit_edge.i.i.i.i.i.i.i.i.i.i.us:               ; preds = %scalar.ph, %scalar.ph.prol.loopexit
  %i.dp = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i.us, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i.i.i.i.us = icmp eq i64 %i.dp, %i.f
  br i1 %exitcond12.not.i.i.i.i.i.i.i.i.i.i.us, label %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS0_INS1_IfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.us, label %.preheader.i.i.i.i.i.i.i.i.i.i.us, !llvm.loop !84

_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS0_INS1_IfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.us: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.us, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next86, %i.s
  br i1 %exitcond89.not, label %._crit_edge52, label %.preheader47.us, !llvm.loop !85

.preheader.us:                                    ; preds = %.preheader47.us, %._crit_edge.us
  %indvars.iv80 = phi i64 [ 0, %.preheader47.us ], [ %indvars.iv.next81, %._crit_edge.us ] ; 3 uses
  %i.dq = mul nuw nsw i64 %indvars.iv80, %i.s
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.dq ; 5 uses
  %i.dr = getelementptr [4 x i8], ptr %3, i64 %indvars.iv80 ; 5 uses
  br i1 %i.aa, label %.epil.preheader, label %.preheader.us.new

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv76.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next77.3, %._crit_edge.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod102)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %indvars.iv76.epil = phi i64 [ %indvars.iv76.epil.init, %.epil.preheader ], [ %indvars.iv.next77.epil, %bb.g ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.ds = mul nsw i64 %i.ah, %indvars.iv76.epil
  %i.dt = getelementptr [4 x i8], ptr %gep, i64 %i.ds
  %i.du = load float, ptr %i.dt, align 4, !tbaa !18
  %.idx.i.i.i.us.epil = mul nuw nsw i64 %indvars.iv76.epil, 12
  %i.dv = getelementptr i8, ptr %i.dr, i64 %.idx.i.i.i.us.epil
  store float %i.du, ptr %i.dv, align 4, !tbaa !18
  %indvars.iv.next77.epil = add nuw nsw i64 %indvars.iv76.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us, label %bb.g, !llvm.loop !86

._crit_edge.us:                                   ; preds = %bb.g, %._crit_edge.us.unr-lcssa
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %i.t
  br i1 %exitcond84.not, label %._crit_edge50.us, label %.preheader.us, !llvm.loop !87

._crit_edge50.us:                                 ; preds = %._crit_edge.us
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  br i1 %1, label %bb.e, label %bb.d

.preheader47.lr.ph.split:                         ; preds = %.preheader47.lr.ph
  br i1 %i.r, label %.preheader47.us53, label %.preheader47.lr.ph.split.split

.preheader47.us53:                                ; preds = %.preheader47.lr.ph.split
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  br i1 %1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader47.us53
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @_ZN3igl9polar_svdIN5Eigen6MatrixIfLi3ELi3ELi0ELi3ELi3EEES3_S3_S3_NS2_IfLi3ELi1ELi0ELi3ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EERNSA_IT2_EERNSA_IT3_EERNSA_IT4_EE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 4 dereferenceable(36) %4, ptr noundef nonnull align 4 dereferenceable(36) %5, ptr noundef nonnull align 4 dereferenceable(36) %6, ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(36) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.us56

bb.i:                                             ; preds = %.preheader47.us53
  call void @_ZN3igl12polar_svd3x3IN5Eigen6MatrixIfLi3ELi3ELi0ELi3ELi3EEEEEvRKT_RS4_(ptr noundef nonnull align 4 dereferenceable(36) %3, ptr noundef nonnull align 4 dereferenceable(36) %4)
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.us56

.preheader.i.i.i.i.i.i.i.i.i.i.us56:              ; preds = %bb.h, %bb.i
  %i.dw = load ptr, ptr %2, align 8, !tbaa !16, !noalias !88
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.preheader.i.i.i.i.i.i.i.i.i.i.us56
  %.09.i.i.i.i.i.i.i.i.i.i.us59 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.us56 ], [ %i.dz, %bb.j ] ; 3 uses
  %i.dx = getelementptr [4 x i8], ptr %i.dw, i64 %.09.i.i.i.i.i.i.i.i.i.i.us59
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us60 = mul nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.us59, 12
  %gep.i.i.i.i.i.i.i.i.i.i.us61 = getelementptr i8, ptr %4, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.us60
  %i.dy = load float, ptr %gep.i.i.i.i.i.i.i.i.i.i.us61, align 4, !tbaa !18
  store float %i.dy, ptr %i.dx, align 4, !tbaa !18
  %i.dz = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.us59, 1
  br label %bb.j

.preheader47.lr.ph.split.split:                   ; preds = %.preheader47.lr.ph.split
  br i1 %1, label %.preheader47.us67, label %.preheader47

.preheader47.us67:                                ; preds = %.preheader47.lr.ph.split.split, %.preheader47.us67
  %.03151.us68 = phi i32 [ %i.ea, %.preheader47.us67 ], [ 0, %.preheader47.lr.ph.split.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @_ZN3igl12polar_svd3x3IN5Eigen6MatrixIfLi3ELi3ELi0ELi3ELi3EEEEEvRKT_RS4_(ptr noundef nonnull align 4 dereferenceable(36) %3, ptr noundef nonnull align 4 dereferenceable(36) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.ea = add nuw nsw i32 %.03151.us68, 1         ; 2 uses
  %exitcond74.not = icmp eq i32 %i.ea, %i.h
  br i1 %exitcond74.not, label %._crit_edge52, label %.preheader47.us67, !llvm.loop !85

.preheader47:                                     ; preds = %.preheader47.lr.ph.split.split, %.preheader47
  %.03151 = phi i32 [ %i.eb, %.preheader47 ], [ 0, %.preheader47.lr.ph.split.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @_ZN3igl9polar_svdIN5Eigen6MatrixIfLi3ELi3ELi0ELi3ELi3EEES3_S3_S3_NS2_IfLi3ELi1ELi0ELi3ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EERNSA_IT2_EERNSA_IT3_EERNSA_IT4_EE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 4 dereferenceable(36) %4, ptr noundef nonnull align 4 dereferenceable(36) %5, ptr noundef nonnull align 4 dereferenceable(36) %6, ptr noundef nonnull align 4 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(36) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.eb = add nuw nsw i32 %.03151, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.eb, %i.h
  br i1 %exitcond.not, label %._crit_edge52, label %.preheader47, !llvm.loop !85

._crit_edge52:                                    ; preds = %.preheader47, %.preheader47.us67, %_ZN5Eigen5BlockINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS0_INS1_IfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit.us, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void
}

declare void @_ZN3igl12polar_svd3x3IN5Eigen6MatrixIfLi3ELi3ELi0ELi3ELi3EEEEEvRKT_RS4_(ptr noundef nonnull align 4 dereferenceable(36), ptr noundef nonnull align 4 dereferenceable(36)) local_unnamed_addr #2

declare void @_ZN3igl9polar_svdIN5Eigen6MatrixIfLi3ELi3ELi0ELi3ELi3EEES3_S3_S3_NS2_IfLi3ELi1ELi0ELi3ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EERNSA_IT2_EERNSA_IT3_EERNSA_IT4_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 4 dereferenceable(36), ptr noundef nonnull align 4 dereferenceable(36), ptr noundef nonnull align 4 dereferenceable(36), ptr noundef nonnull align 4 dereferenceable(12), ptr noundef nonnull align 4 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl20fit_rotations_planarIN5Eigen6MatrixIdLi2ELi2ELi0ELi2ELi2EEENS2_IdLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit:
  %2 = alloca %"class.Eigen::Matrix.106", align 16 ; 5 uses
  %3 = alloca %"class.Eigen::Matrix.106", align 16 ; 10 uses
  %4 = alloca %"class.Eigen::Matrix.106", align 16 ; 3 uses
  %5 = alloca %"class.Eigen::Matrix.106", align 16 ; 5 uses
  %6 = alloca %"class.Eigen::Matrix.106", align 16 ; 6 uses
  %7 = alloca %"class.Eigen::Matrix.116", align 16 ; 3 uses
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 4, i64 noundef 2, i64 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa !28
  %scevgep = getelementptr inbounds nuw i8, ptr %2, i64 16
  %scevgep52 = getelementptr i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %scevgep, ptr noundef nonnull align 8 dereferenceable(16) %scevgep52, i64 16, i1 false), !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @_ZN3igl9polar_svdIN5Eigen6MatrixIdLi2ELi2ELi0ELi2ELi2EEES3_S3_S3_NS2_IdLi2ELi1ELi0ELi2ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERNS1_15PlainObjectBaseIT0_EERNSA_IT1_EERNSA_IT2_EERNSA_IT3_EERNSA_IT4_EE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(32) %6)
  %i.d = load double, ptr %3, align 16, !tbaa !28
  %i.e = load double, ptr %i.b, align 8, !tbaa !28
  %i.f = load double, ptr %i.a, align 8, !tbaa !28
  %i.g = load double, ptr %i.c, align 16, !tbaa !28
  %i.h = fneg double %i.g
  %i.i = fmul double %i.f, %i.h
  %i.j = call noundef double @llvm.fmuladd.f64(double %i.d, double %i.e, double %i.i)
  %i.k = fcmp olt double %i.j, 0.000000e+00
  br i1 %i.k, label %bb.a, label %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

bb.a:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.o = load <2 x double>, ptr %i.n, align 16, !tbaa !32
  %i.p = fneg <2 x double> %i.o                   ; 3 uses
  store <2 x double> %i.p, ptr %i.n, align 16, !tbaa !32
  %i.q = load <2 x double>, ptr %5, align 16, !tbaa !32 ; 2 uses
  %i.r = load <1 x double>, ptr %6, align 16
  %i.s = shufflevector <1 x double> %i.r, <1 x double> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x double> %i.q, %i.s
  %i.u = load <2 x double>, ptr %i.m, align 16, !tbaa !32 ; 2 uses
  %i.v = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x double> %i.u, %i.v
  %i.x = fadd <2 x double> %i.t, %i.w
  %i.y = load <1 x double>, ptr %i.l, align 8
  %i.z = shufflevector <1 x double> %i.y, <1 x double> poison, <2 x i32> zeroinitializer
  %i.aa = fmul <2 x double> %i.q, %i.z
  %i.ab = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ac = fmul <2 x double> %i.u, %i.ab
  %i.ad = fadd <2 x double> %i.aa, %i.ac
  store <2 x double> %i.x, ptr %3, align 16, !tbaa !32
  store <2 x double> %i.ad, ptr %i.c, align 16, !tbaa !32
  br label %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, %bb.a
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %1, align 8, !tbaa !26, !noalias !93 ; 4 uses
  %i.af = load i64, ptr %8, align 8, !tbaa !24, !noalias !93
  %i.ag = getelementptr i8, ptr %i.ae, i64 8
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.ae, align 8, !tbaa !28
  %i.ah = getelementptr [8 x i8], ptr %i.ae, i64 %i.af ; 3 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.ah, align 8, !tbaa !28
  %i.aj = load double, ptr %3, align 16, !tbaa !28
  store double %i.aj, ptr %i.ae, align 8, !tbaa !28
  %i.ak = load double, ptr %i.c, align 16, !tbaa !28
  store double %i.ak, ptr %i.ag, align 8, !tbaa !28
  %i.al = load double, ptr %i.a, align 8, !tbaa !28
  store double %i.al, ptr %i.ah, align 8, !tbaa !28
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.an = load double, ptr %i.am, align 8, !tbaa !28
  store double %i.an, ptr %i.ai, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !21
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.f) #12
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 4611686018427387903
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #14 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !13
  store i64 %3, ptr %i.c, align 8, !tbaa !21
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEEC2INS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS1_IdLin1ELin1ELi0ELin1ELin1EEEEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !98, !nonnull !99, !align !100 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !24   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !25   ; 4 uses
  %i.f = icmp eq i64 %i.c, 0
  %i.g = icmp eq i64 %i.e, 0
  %or.cond.i.i = or i1 %i.f, %i.g
  br i1 %or.cond.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sdiv i64 9223372036854775807, %i.e
  %i.i = icmp sgt i64 %i.c, %i.h
  br i1 %i.i, label %.noexc.i.i.i.i.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.b, %bb.a
  %i.j = mul nsw i64 %i.e, %i.c
  invoke void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.j, i64 noundef %i.c, i64 noundef %i.e)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS1_IdLin1ELin1ELi0ELin1ELin1EEEEEEEvRKNS_9EigenBaseIT_EE.exit unwind label %bb.f

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS1_IdLin1ELin1ELi0ELin1ELin1EEEEEEEvRKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %i.k = load ptr, ptr %1, align 8, !tbaa !98, !nonnull !99, !align !100 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !26   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !24   ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !25   ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !13
  %.not.i.i.i.i.i = icmp eq i64 %i.r, %i.n
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  %.not8.i.i.i.i.i = icmp eq i64 %i.t, %i.p
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %.not8.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS1_IdLin1ELin1ELi0ELin1ELin1EEEEEEEvRKNS_9EigenBaseIT_EE.exit
  %i.u = icmp eq i64 %i.n, 0
  %i.v = icmp eq i64 %i.p, 0
  %or.cond.i.i.i.i.i.i.i = or i1 %i.u, %i.v
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = sdiv i64 9223372036854775807, %i.p
  %i.x = icmp sgt i64 %i.n, %i.w
  br i1 %i.x, label %.noexc.i.i.i.i.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i

.noexc.i.i.i.i.invoke:                            ; preds = %bb.d, %bb.b
  %i.y = tail call ptr @__cxa_allocate_exception(i64 8) #12 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.y, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #13
          to label %.noexc.i.i.i.i.cont unwind label %bb.f

.noexc.i.i.i.i.cont:                              ; preds = %.noexc.i.i.i.i.invoke
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.z = mul nsw i64 %i.p, %i.n
  invoke void @_ZN5Eigen12DenseStorageIfLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.z, i64 noundef %i.n, i64 noundef %i.p)
          to label %.noexc6 unwind label %bb.f

.noexc6:                                          ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i
  %.pre.i.i.i.i = load i64, ptr %i.q, align 8, !tbaa !13
  %.pre15.i.i.i.i = load i64, ptr %i.s, align 8, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %.noexc6, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS1_IdLin1ELin1ELi0ELin1ELin1EEEEEEEvRKNS_9EigenBaseIT_EE.exit
  %i.aa = phi i64 [ %.pre15.i.i.i.i, %.noexc6 ], [ %i.p, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS1_IdLin1ELin1ELi0ELin1ELin1EEEEEEEvRKNS_9EigenBaseIT_EE.exit ]
  %i.ab = phi i64 [ %.pre.i.i.i.i, %.noexc6 ], [ %i.n, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS1_IdLin1ELin1ELi0ELin1ELin1EEEEEEEvRKNS_9EigenBaseIT_EE.exit ]
  %i.ac = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  %i.ad = mul nsw i64 %i.ab, %i.aa                ; 5 uses
  %i.ae = icmp sgt i64 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.i.i.i.i.i.preheader, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS1_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS2_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.ad, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ad, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <2 x double>, ptr %i.ag, align 8, !tbaa !28
  %wide.load12 = load <2 x double>, ptr %i.ah, align 8, !tbaa !28
  %i.ai = fptrunc <2 x double> %wide.load to <2 x float>
  %i.aj = fptrunc <2 x double> %wide.load12 to <2 x float>
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store <2 x float> %i.ai, ptr %i.af, align 4, !tbaa !18
  store <2 x float> %i.aj, ptr %i.ak, align 4, !tbaa !18
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS1_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.preheader13

.lr.ph.i.i.i.i.i.preheader13:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader13, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.05.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader13 ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.05.i.i.i.i.i
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.05.i.i.i.i.i
  %i.ao = load double, ptr %i.an, align 8, !tbaa !28
  %i.ap = fptrunc double %i.ao to float
  store float %i.ap, ptr %i.am, align 4, !tbaa !18
  %i.aq = add nuw nsw i64 %.05.i.i.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.aq, %i.ad
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS1_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !95

_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS1_IdLin1ELin1ELi0ELin1ELin1EEEEEEERS2_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %bb.e
  ret void

bb.f:                                             ; preds = %.noexc.i.i.i.i.invoke, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %0, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.as) #12
  resume { ptr, i32 } %i.ar
end_hunk_0
