inline.NumInlined: 8736
inline.NumDeleted: 3468
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 151
loop-unroll.NumUnrolled: 152
begin_hunk_0_@_ZN3igl25min_quad_with_fixed_solveIdN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEES3_S3_S3_S3_EEbRKNS_24min_quad_with_fixed_dataIT_EERKNS1_10MatrixBaseIT0_EERKNS9_IT1_EERKNS9_IT2_EERNS1_15PlainObjectBaseIT3_EERNSM_IT4_EE:bb.a
  %i.yc = getelementptr inbounds nuw [8 x i8], ptr %i.yb, i64 %.011.i.i.i.i.i.i.i.i289
  %i.yd = load <2 x double>, ptr %i.yc, align 16, !tbaa !91
  %i.ye = fadd <2 x double> %i.ya, %i.yd
  store <2 x double> %i.ye, ptr %i.xx, align 16, !tbaa !91
  %i.yf = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i289, 2 ; 2 uses
  %i.yg = icmp slt i64 %i.yf, %i.vp
  br i1 %i.yg, label %.lr.ph.i.i.i.i.i.i.i.i288, label %._crit_edge.i.i.i.i.i.i.i.i284, !llvm.loop !249

bb.bk:                                            ; preds = %bb.bi
  %i.yh = landingpad { ptr, i32 }
          cleanup
  %i.yi = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !61
  call void @free(ptr noundef %i.yj) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %.body291

.loopexit536:                                     ; preds = %scalar.ph672.prol.loopexit, %scalar.ph672, %middle.block683, %._crit_edge.i.i.i.i.i.i.i.i284
  %i.yk = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !61
  call void @free(ptr noundef %i.yl) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %34, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %35, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %36, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #23
  %i.ym = getelementptr inbounds nuw i8, ptr %0, i64 1784 ; 2 uses
  store ptr %i.ym, ptr %37, align 8
  %.sroa.5424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %37, i64 8
  store ptr %23, ptr %.sroa.5424.0..sroa_idx, align 8
  %i.yn = getelementptr inbounds nuw i8, ptr %37, i64 16
  store i8 0, ptr %i.yn, align 8
  %.sroa.6421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %37, i64 24
  store ptr %i.ym, ptr %.sroa.6421.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %37, i64 32
  store ptr %i.uq, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %37, i64 40
  store ptr %32, ptr %.sroa.8422.0..sroa_idx, align 8
  invoke void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_7ProductINS_12SparseMatrixIdLi0EiEENS2_IdLin1ELin1ELi0ELin1ELin1EEELi0EEEKNS7_INS7_IS9_S9_Li2EEES3_Li0EEEEEEEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(16) %35, ptr noundef nonnull align 8 dereferenceable(49) %37)
          to label %bb.bl unwind label %bb.ca

bb.bl:                                            ; preds = %.loopexit536
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #23
  %i.yo = getelementptr inbounds nuw i8, ptr %0, i64 2000
  store i8 0, ptr %38, align 8
  %i.yp = getelementptr inbounds nuw i8, ptr %38, i64 8
  store ptr %i.yo, ptr %i.yp, align 8
  invoke void @_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj2ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEvRNS_10MatrixBaseIT_EE(ptr noundef nonnull align 1 dereferenceable(1) %38, ptr noundef nonnull align 1 dereferenceable(1) %35)
          to label %bb.bm unwind label %bb.cb

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #23
  %sext161 = shl i64 %i.on, 32
  %i.yq = ashr exact i64 %sext161, 32             ; 3 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  %i.ys = load i64, ptr %i.yr, align 8, !tbaa !72
  %.not.i.i.i.i.i.i.i.i297 = icmp eq i64 %i.ys, %i.yq
  br i1 %.not.i.i.i.i.i.i.i.i297, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %36, i64 noundef %i.yq, i64 noundef 1)
          to label %.noexc299 unwind label %bb.cc

.noexc299:                                        ; preds = %bb.bn
  %.pr.i.i.i.i.i.i.i298 = load i64, ptr %i.yr, align 8, !tbaa !72
  br label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i: ; preds = %.noexc299, %bb.bm
  %i.yt = phi i64 [ %i.yq, %bb.bm ], [ %.pr.i.i.i.i.i.i.i298, %.noexc299 ] ; 2 uses
  %i.yu = icmp slt i64 %i.yt, 1
  br i1 %i.yu, label %.loopexit535, label %.loopexit535.loopexit

.loopexit535.loopexit:                            ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i
  %i.yv = load ptr, ptr %36, align 8, !tbaa !61
  %.idx.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.yt, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.yv, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !64
  br label %.loopexit535

.loopexit535:                                     ; preds = %.loopexit535.loopexit, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i
  %i.yw = load ptr, ptr %36, align 8, !tbaa !61, !noalias !250 ; 11 uses
  %i.yx = load ptr, ptr %35, align 8, !tbaa !61   ; 11 uses
  %i.yy = ptrtoaddr ptr %i.yx to i64              ; 2 uses
  %i.yz = ptrtoint ptr %i.yw to i64               ; 4 uses
  %i.za = and i64 %i.yz, 7
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.za, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph52.i.i.i.i.i.i.i.i.i.i, label %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.loopexit535
  %i.zb = icmp sgt i64 %i.oo, 0
  br i1 %i.zb, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.preheader, label %.loopexit533

.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.preheader: ; preds = %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %min.iters.check689 = icmp ult i64 %i.oo, 8
  %i.zc = sub i64 %i.yy, %i.yz
  %diff.check687 = icmp ugt i64 %i.zc, -32
  %or.cond841 = select i1 %min.iters.check689, i1 true, i1 %diff.check687
  br i1 %or.cond841, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.preheader855, label %vector.ph690

vector.ph690:                                     ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.preheader
  %i.zd = and i64 %i.ol, 3                        ; 2 uses
  %n.vec691 = sub nuw nsw i64 %i.oo, %i.zd        ; 2 uses
  br label %vector.body692

vector.body692:                                   ; preds = %vector.body692, %vector.ph690
  %index693 = phi i64 [ 0, %vector.ph690 ], [ %index.next696, %vector.body692 ] ; 3 uses
  %i.ze = getelementptr [8 x i8], ptr %i.yw, i64 %index693 ; 2 uses
  %i.zf = getelementptr [8 x i8], ptr %i.yx, i64 %index693 ; 2 uses
  %i.zg = getelementptr i8, ptr %i.zf, i64 16
  %wide.load694 = load <2 x double>, ptr %i.zf, align 8, !tbaa !64
  %wide.load695 = load <2 x double>, ptr %i.zg, align 8, !tbaa !64
  %i.zh = getelementptr i8, ptr %i.ze, i64 16
  store <2 x double> %wide.load694, ptr %i.ze, align 8, !tbaa !64
  store <2 x double> %wide.load695, ptr %i.zh, align 8, !tbaa !64
  %index.next696 = add nuw i64 %index693, 4       ; 2 uses
  %i.zi = icmp eq i64 %index.next696, %n.vec691
  br i1 %i.zi, label %middle.block697, label %vector.body692, !llvm.loop !253

middle.block697:                                  ; preds = %vector.body692
  %cmp.n698 = icmp eq i64 %i.zd, 0
  br i1 %cmp.n698, label %.loopexit533, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.preheader855

.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.preheader855: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.preheader, %middle.block697
  %.09.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.preheader ], [ %n.vec691, %middle.block697 ] ; 4 uses
  %i.zj = sub i64 %i.ol, %.09.i.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter875 = and i64 %i.zj, 3                 ; 2 uses
  %lcmp.mod876.not = icmp eq i64 %xtraiter875, 0
  br i1 %lcmp.mod876.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.prol.loopexit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.prol

.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.prol:  ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.preheader855, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.prol
  %.09.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.zn, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.prol ], [ %.09.i.i.i.i.i.i.i.i.i.i.i.ph, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.preheader855 ] ; 3 uses
  %prol.iter877 = phi i64 [ %prol.iter877.next, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.prol ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.preheader855 ]
  %i.zk = getelementptr [8 x i8], ptr %i.yw, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.zl = getelementptr [8 x i8], ptr %i.yx, i64 %.09.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.zm = load double, ptr %i.zl, align 8, !tbaa !64
  store double %i.zm, ptr %i.zk, align 8, !tbaa !64
  %i.zn = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter877.next = add i64 %prol.iter877, 1   ; 2 uses
  %prol.iter877.cmp.not = icmp eq i64 %prol.iter877.next, %xtraiter875
  br i1 %prol.iter877.cmp.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.prol.loopexit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.prol, !llvm.loop !254

.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.prol.loopexit: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.prol, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.preheader855
  %.09.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.i.i.i.i.i.i.ph, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.preheader855 ], [ %i.zn, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.prol ]
  %i.zo = sub nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i.ph, %i.oo
  %i.zp = icmp ugt i64 %i.zo, -4
  br i1 %i.zp, label %.loopexit533, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.prol.loopexit, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aaf, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.09.i.i.i.i.i.i.i.i.i.i.i.unr, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.prol.loopexit ] ; 6 uses
  %i.zq = getelementptr [8 x i8], ptr %i.yw, i64 %.09.i.i.i.i.i.i.i.i.i.i.i
  %i.zr = getelementptr [8 x i8], ptr %i.yx, i64 %.09.i.i.i.i.i.i.i.i.i.i.i
  %i.zs = load double, ptr %i.zr, align 8, !tbaa !64
  store double %i.zs, ptr %i.zq, align 8, !tbaa !64
  %i.zt = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.zu = getelementptr [8 x i8], ptr %i.yw, i64 %i.zt
  %i.zv = getelementptr [8 x i8], ptr %i.yx, i64 %i.zt
  %i.zw = load double, ptr %i.zv, align 8, !tbaa !64
  store double %i.zw, ptr %i.zu, align 8, !tbaa !64
  %i.zx = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.zy = getelementptr [8 x i8], ptr %i.yw, i64 %i.zx
  %i.zz = getelementptr [8 x i8], ptr %i.yx, i64 %i.zx
  %i.aaa = load double, ptr %i.zz, align 8, !tbaa !64
  store double %i.aaa, ptr %i.zy, align 8, !tbaa !64
  %i.aab = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.aac = getelementptr [8 x i8], ptr %i.yw, i64 %i.aab
  %i.aad = getelementptr [8 x i8], ptr %i.yx, i64 %i.aab
  %i.aae = load double, ptr %i.aad, align 8, !tbaa !64
  store double %i.aae, ptr %i.aac, align 8, !tbaa !64
  %i.aaf = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.aaf, %i.oo
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3, label %.loopexit533, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader, !llvm.loop !255

.lr.ph52.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.loopexit535
  %i.aag = lshr exact i64 %i.yz, 3
  %i.aah = and i64 %i.aag, 1
  %i.aai = call i64 @llvm.smin.i64(i64 %i.aah, i64 %i.oo) ; 5 uses
  %i.aaj = sub i64 %i.oo, %i.aai                  ; 3 uses
  %i.aak = and i64 %i.aaj, -2
  %i.aal = add nsw i64 %i.aak, %i.aai             ; 5 uses
  %i.aam = icmp sgt i64 %i.aai, 0
  br i1 %i.aam, label %.preheader43.loopexit.i.i.i.i.i.i.i.i.i.i, label %.preheader43.i.i.i.i.i.i.i.i.i.i

.preheader43.loopexit.i.i.i.i.i.i.i.i.i.i:        ; preds = %.lr.ph52.i.i.i.i.i.i.i.i.i.i
  %i.aan = load double, ptr %i.yx, align 8, !tbaa !64
  store double %i.aan, ptr %i.yw, align 8, !tbaa !64
  br label %.preheader43.i.i.i.i.i.i.i.i.i.i

.preheader43.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.preheader43.loopexit.i.i.i.i.i.i.i.i.i.i, %.lr.ph52.i.i.i.i.i.i.i.i.i.i
  %i.aao = icmp sgt i64 %i.aaj, 1
  br i1 %i.aao, label %.lr.ph47.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i300

.preheader.i.i.i.i.i.i.i.i.i.i300:                ; preds = %.lr.ph47.i.i.i.i.i.i.i.i.i.i, %.preheader43.i.i.i.i.i.i.i.i.i.i
  %i.aap = icmp slt i64 %i.aal, %i.oo
  br i1 %i.aap, label %.lr.ph49.i.i.i.i.i.i.i.i.i.i.preheader, label %.loopexit533

.lr.ph49.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i300
  %40 = lshr i64 %i.aaj, 1
  %41 = mul i64 %40, -2
  %i.aaq = sub i64 %41, %i.aai
  %42 = add i64 %i.aaq, %i.oo                     ; 3 uses
  %min.iters.check703 = icmp ult i64 %42, 8
  %i.aar = sub i64 %i.yy, %i.yz
  %diff.check701 = icmp ugt i64 %i.aar, -32
  %or.cond842 = select i1 %min.iters.check703, i1 true, i1 %diff.check701
  br i1 %or.cond842, label %.lr.ph49.i.i.i.i.i.i.i.i.i.i.preheader854, label %vector.ph704

vector.ph704:                                     ; preds = %.lr.ph49.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec705 = and i64 %42, -4                     ; 3 uses
  %i.aas = add i64 %i.aal, %n.vec705
  br label %vector.body706

vector.body706:                                   ; preds = %vector.body706, %vector.ph704
  %index707 = phi i64 [ 0, %vector.ph704 ], [ %index.next710, %vector.body706 ] ; 2 uses
  %i.aat = add i64 %i.aal, %index707              ; 2 uses
  %i.aau = getelementptr [8 x i8], ptr %i.yw, i64 %i.aat ; 2 uses
  %i.aav = getelementptr [8 x i8], ptr %i.yx, i64 %i.aat ; 2 uses
  %i.aaw = getelementptr i8, ptr %i.aav, i64 16
  %wide.load708 = load <2 x double>, ptr %i.aav, align 8, !tbaa !64
  %wide.load709 = load <2 x double>, ptr %i.aaw, align 8, !tbaa !64
  %i.aax = getelementptr i8, ptr %i.aau, i64 16
  store <2 x double> %wide.load708, ptr %i.aau, align 8, !tbaa !64
  store <2 x double> %wide.load709, ptr %i.aax, align 8, !tbaa !64
  %index.next710 = add nuw i64 %index707, 4       ; 2 uses
  %i.aay = icmp eq i64 %index.next710, %n.vec705
  br i1 %i.aay, label %middle.block711, label %vector.body706, !llvm.loop !256

middle.block711:                                  ; preds = %vector.body706
  %cmp.n712 = icmp eq i64 %42, %n.vec705
  br i1 %cmp.n712, label %.loopexit533, label %.lr.ph49.i.i.i.i.i.i.i.i.i.i.preheader854

.lr.ph49.i.i.i.i.i.i.i.i.i.i.preheader854:        ; preds = %.lr.ph49.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block711
  %.048.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.aal, %.lr.ph49.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.aas, %middle.block711 ]
  br label %.lr.ph49.i.i.i.i.i.i.i.i.i.i

.lr.ph47.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.preheader43.i.i.i.i.i.i.i.i.i.i, %.lr.ph47.i.i.i.i.i.i.i.i.i.i
  %.03246.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.abc, %.lr.ph47.i.i.i.i.i.i.i.i.i.i ], [ %i.aai, %.preheader43.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.aaz = getelementptr [8 x i8], ptr %i.yw, i64 %.03246.i.i.i.i.i.i.i.i.i.i
  %i.aba = getelementptr inbounds [8 x i8], ptr %i.yx, i64 %.03246.i.i.i.i.i.i.i.i.i.i
  %i.abb = load <2 x double>, ptr %i.aba, align 1, !tbaa !91
  store <2 x double> %i.abb, ptr %i.aaz, align 16, !tbaa !91
  %i.abc = add nsw i64 %.03246.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.abd = icmp slt i64 %i.abc, %i.aal
  br i1 %i.abd, label %.lr.ph47.i.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i300, !llvm.loop !257

.lr.ph49.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph49.i.i.i.i.i.i.i.i.i.i.preheader854, %.lr.ph49.i.i.i.i.i.i.i.i.i.i
  %.048.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.abh, %.lr.ph49.i.i.i.i.i.i.i.i.i.i ], [ %.048.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph49.i.i.i.i.i.i.i.i.i.i.preheader854 ] ; 3 uses
  %i.abe = getelementptr [8 x i8], ptr %i.yw, i64 %.048.i.i.i.i.i.i.i.i.i.i
  %i.abf = getelementptr [8 x i8], ptr %i.yx, i64 %.048.i.i.i.i.i.i.i.i.i.i
  %i.abg = load double, ptr %i.abf, align 8, !tbaa !64
  store double %i.abg, ptr %i.abe, align 8, !tbaa !64
  %i.abh = add nsw i64 %.048.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.abi = icmp slt i64 %i.abh, %i.oo
  br i1 %i.abi, label %.lr.ph49.i.i.i.i.i.i.i.i.i.i, label %.loopexit533, !llvm.loop !258

.loopexit533:                                     ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader.prol.loopexit, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph49.i.i.i.i.i.i.i.i.i.i, %middle.block697, %middle.block711, %.preheader.i.i.i.i.i.i.i.i.i.i300, %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #23
  %i.abj = getelementptr inbounds nuw i8, ptr %0, i64 2144
  store ptr %i.abj, ptr %39, align 8
  %i.abk = getelementptr inbounds nuw i8, ptr %39, i64 8
  store ptr %36, ptr %i.abk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_7ProductINS_12SparseMatrixIdLi0EiEES1_Li0EEEEERKT_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %39)
          to label %.noexc313 unwind label %bb.cd

.noexc313:                                        ; preds = %.loopexit533
  %i.abl = load ptr, ptr %6, align 8, !tbaa !61   ; 8 uses
  %i.abm = ptrtoaddr ptr %i.abl to i64
  %i.abn = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.abo = load i64, ptr %i.abn, align 8, !tbaa !72 ; 3 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 3 uses
  %i.abq = load i64, ptr %i.abp, align 8, !tbaa !72
  %.not.i.i.i.i.i.i.i.i304 = icmp eq i64 %i.abq, %i.abo
  br i1 %.not.i.i.i.i.i.i.i.i304, label %bb.bo, label %thread-pre-split.i.i.i.i.i.i.i305

thread-pre-split.i.i.i.i.i.i.i305:                ; preds = %.noexc313
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %34, i64 noundef %i.abo, i64 noundef 1)
          to label %.noexc.i.i.i.i unwind label %bb.bp

.noexc.i.i.i.i:                                   ; preds = %thread-pre-split.i.i.i.i.i.i.i305
  %.pr.i.i.i.i.i.i.i306 = load i64, ptr %i.abp, align 8, !tbaa !72
  br label %bb.bo

bb.bo:                                            ; preds = %.noexc.i.i.i.i, %.noexc313
  %i.abr = phi i64 [ %.pr.i.i.i.i.i.i.i306, %.noexc.i.i.i.i ], [ %i.abo, %.noexc313 ] ; 7 uses
  %i.abs = load ptr, ptr %34, align 8, !tbaa !61  ; 8 uses
  %i.abt = ptrtoaddr ptr %i.abs to i64
  %i.abu = sdiv i64 %i.abr, 2                     ; 2 uses
  %i.abv = shl nsw i64 %i.abu, 1                  ; 5 uses
  %i.abw = icmp sgt i64 %i.abr, 1
  br i1 %i.abw, label %.lr.ph.i.i.i.i.i.i.i.i311, label %._crit_edge.i.i.i.i.i.i.i.i307

._crit_edge.i.i.i.i.i.i.i.i307:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i311, %bb.bo
  %i.abx = icmp slt i64 %i.abv, %i.abr
  br i1 %i.abx, label %.lr.ph.i.i.i.i.i.i.i.i.i308.preheader, label %.loopexit532

.lr.ph.i.i.i.i.i.i.i.i.i308.preheader:            ; preds = %._crit_edge.i.i.i.i.i.i.i.i307
  %i.aby = shl nsw i64 %i.abu, 1
  %i.abz = sub i64 %i.abr, %i.aby                 ; 3 uses
  %min.iters.check717 = icmp ult i64 %i.abz, 8
  %i.aca = sub i64 %i.abm, %i.abt
  %diff.check715 = icmp ugt i64 %i.aca, -32
  %or.cond843 = select i1 %min.iters.check717, i1 true, i1 %diff.check715
  br i1 %or.cond843, label %.lr.ph.i.i.i.i.i.i.i.i.i308.preheader853, label %vector.ph718

vector.ph718:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i308.preheader
  %n.vec719 = and i64 %i.abz, -4                  ; 3 uses
  %i.acb = add i64 %i.abv, %n.vec719
  br label %vector.body720

vector.body720:                                   ; preds = %vector.body720, %vector.ph718
  %index721 = phi i64 [ 0, %vector.ph718 ], [ %index.next724, %vector.body720 ] ; 2 uses
  %i.acc = add i64 %i.abv, %index721              ; 2 uses
  %i.acd = getelementptr inbounds [8 x i8], ptr %i.abs, i64 %i.acc ; 2 uses
  %i.ace = getelementptr inbounds [8 x i8], ptr %i.abl, i64 %i.acc ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 16
  %wide.load722 = load <2 x double>, ptr %i.ace, align 8, !tbaa !64
  %wide.load723 = load <2 x double>, ptr %i.acf, align 8, !tbaa !64
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acd, i64 16
  store <2 x double> %wide.load722, ptr %i.acd, align 8, !tbaa !64
  store <2 x double> %wide.load723, ptr %i.acg, align 8, !tbaa !64
  %index.next724 = add nuw i64 %index721, 4       ; 2 uses
  %i.ach = icmp eq i64 %index.next724, %n.vec719
  br i1 %i.ach, label %middle.block725, label %vector.body720, !llvm.loop !259

middle.block725:                                  ; preds = %vector.body720
  %cmp.n726 = icmp eq i64 %i.abz, %n.vec719
  br i1 %cmp.n726, label %.loopexit532, label %.lr.ph.i.i.i.i.i.i.i.i.i308.preheader853

.lr.ph.i.i.i.i.i.i.i.i.i308.preheader853:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i308.preheader, %middle.block725
  %.05.i.i.i.i.i.i.i.i.i309.ph = phi i64 [ %i.abv, %.lr.ph.i.i.i.i.i.i.i.i.i308.preheader ], [ %i.acb, %middle.block725 ] ; 4 uses
  %i.aci = sub i64 %i.abr, %.05.i.i.i.i.i.i.i.i.i309.ph
  %xtraiter878 = and i64 %i.aci, 3                ; 2 uses
  %lcmp.mod879.not = icmp eq i64 %xtraiter878, 0
  br i1 %lcmp.mod879.not, label %.lr.ph.i.i.i.i.i.i.i.i.i308.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i308.prol

.lr.ph.i.i.i.i.i.i.i.i.i308.prol:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i308.preheader853, %.lr.ph.i.i.i.i.i.i.i.i.i308.prol
  %.05.i.i.i.i.i.i.i.i.i309.prol = phi i64 [ %i.acm, %.lr.ph.i.i.i.i.i.i.i.i.i308.prol ], [ %.05.i.i.i.i.i.i.i.i.i309.ph, %.lr.ph.i.i.i.i.i.i.i.i.i308.preheader853 ] ; 3 uses
  %prol.iter880 = phi i64 [ %prol.iter880.next, %.lr.ph.i.i.i.i.i.i.i.i.i308.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i308.preheader853 ]
  %i.acj = getelementptr inbounds [8 x i8], ptr %i.abs, i64 %.05.i.i.i.i.i.i.i.i.i309.prol
  %i.ack = getelementptr inbounds [8 x i8], ptr %i.abl, i64 %.05.i.i.i.i.i.i.i.i.i309.prol
  %i.acl = load double, ptr %i.ack, align 8, !tbaa !64
  store double %i.acl, ptr %i.acj, align 8, !tbaa !64
  %i.acm = add nsw i64 %.05.i.i.i.i.i.i.i.i.i309.prol, 1 ; 2 uses
  %prol.iter880.next = add i64 %prol.iter880, 1   ; 2 uses
  %prol.iter880.cmp.not = icmp eq i64 %prol.iter880.next, %xtraiter878
  br i1 %prol.iter880.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i308.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i308.prol, !llvm.loop !260

.lr.ph.i.i.i.i.i.i.i.i.i308.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i308.prol, %.lr.ph.i.i.i.i.i.i.i.i.i308.preheader853
  %.05.i.i.i.i.i.i.i.i.i309.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i309.ph, %.lr.ph.i.i.i.i.i.i.i.i.i308.preheader853 ], [ %i.acm, %.lr.ph.i.i.i.i.i.i.i.i.i308.prol ]
  %i.acn = sub i64 %.05.i.i.i.i.i.i.i.i.i309.ph, %i.abr
  %i.aco = icmp ugt i64 %i.acn, -4
  br i1 %i.aco, label %.loopexit532, label %.lr.ph.i.i.i.i.i.i.i.i.i308

.lr.ph.i.i.i.i.i.i.i.i.i308:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i308.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i308
  %.05.i.i.i.i.i.i.i.i.i309 = phi i64 [ %i.ade, %.lr.ph.i.i.i.i.i.i.i.i.i308 ], [ %.05.i.i.i.i.i.i.i.i.i309.unr, %.lr.ph.i.i.i.i.i.i.i.i.i308.prol.loopexit ] ; 6 uses
  %i.acp = getelementptr inbounds [8 x i8], ptr %i.abs, i64 %.05.i.i.i.i.i.i.i.i.i309
  %i.acq = getelementptr inbounds [8 x i8], ptr %i.abl, i64 %.05.i.i.i.i.i.i.i.i.i309
  %i.acr = load double, ptr %i.acq, align 8, !tbaa !64
  store double %i.acr, ptr %i.acp, align 8, !tbaa !64
  %i.acs = add nsw i64 %.05.i.i.i.i.i.i.i.i.i309, 1 ; 2 uses
  %i.act = getelementptr inbounds [8 x i8], ptr %i.abs, i64 %i.acs
  %i.acu = getelementptr inbounds [8 x i8], ptr %i.abl, i64 %i.acs
  %i.acv = load double, ptr %i.acu, align 8, !tbaa !64
  store double %i.acv, ptr %i.act, align 8, !tbaa !64
  %i.acw = add nsw i64 %.05.i.i.i.i.i.i.i.i.i309, 2 ; 2 uses
  %i.acx = getelementptr inbounds [8 x i8], ptr %i.abs, i64 %i.acw
  %i.acy = getelementptr inbounds [8 x i8], ptr %i.abl, i64 %i.acw
  %i.acz = load double, ptr %i.acy, align 8, !tbaa !64
  store double %i.acz, ptr %i.acx, align 8, !tbaa !64
  %i.ada = add nsw i64 %.05.i.i.i.i.i.i.i.i.i309, 3 ; 2 uses
  %i.adb = getelementptr inbounds [8 x i8], ptr %i.abs, i64 %i.ada
  %i.adc = getelementptr inbounds [8 x i8], ptr %i.abl, i64 %i.ada
  %i.add = load double, ptr %i.adc, align 8, !tbaa !64
  store double %i.add, ptr %i.adb, align 8, !tbaa !64
  %i.ade = add nsw i64 %.05.i.i.i.i.i.i.i.i.i309, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i310.3 = icmp eq i64 %i.ade, %i.abr
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i310.3, label %.loopexit532, label %.lr.ph.i.i.i.i.i.i.i.i.i308, !llvm.loop !261

.lr.ph.i.i.i.i.i.i.i.i311:                        ; preds = %bb.bo, %.lr.ph.i.i.i.i.i.i.i.i311
  %.011.i.i.i.i.i.i.i.i312 = phi i64 [ %i.adi, %.lr.ph.i.i.i.i.i.i.i.i311 ], [ 0, %bb.bo ] ; 3 uses
  %i.adf = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %.011.i.i.i.i.i.i.i.i312
  %i.adg = getelementptr inbounds nuw [8 x i8], ptr %i.abl, i64 %.011.i.i.i.i.i.i.i.i312
  %i.adh = load <2 x double>, ptr %i.adg, align 16, !tbaa !91
  store <2 x double> %i.adh, ptr %i.adf, align 16, !tbaa !91
  %i.adi = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i312, 2 ; 2 uses
  %i.adj = icmp slt i64 %i.adi, %i.abv
  br i1 %i.adj, label %.lr.ph.i.i.i.i.i.i.i.i311, label %._crit_edge.i.i.i.i.i.i.i.i307, !llvm.loop !262

bb.bp:                                            ; preds = %thread-pre-split.i.i.i.i.i.i.i305
  %i.adk = landingpad { ptr, i32 }
          cleanup
  %i.adl = load ptr, ptr %6, align 8, !tbaa !61
  call void @free(ptr noundef %i.adl) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %.body314

.loopexit532:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i308.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i308, %middle.block725, %._crit_edge.i.i.i.i.i.i.i.i307
  %i.adm = load ptr, ptr %6, align 8, !tbaa !61
  call void @free(ptr noundef %i.adm) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23
  %i.adn = load ptr, ptr %36, align 8, !tbaa !61
  call void @free(ptr noundef %i.adn) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23
  %i.ado = load ptr, ptr %35, align 8, !tbaa !61
  call void @free(ptr noundef %i.ado) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23
  %i.adp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.adq = load i64, ptr %i.adp, align 8, !tbaa !14
  %i.adr = getelementptr inbounds nuw i8, ptr %0, i64 1108
  %i.ads = load i32, ptr %i.adr, align 4, !tbaa !183
  %i.adt = sext i32 %i.ads to i64
  %i.adu = add nsw i64 %i.adq, %i.adt
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef %i.adu, i64 noundef 1)
          to label %bb.bq unwind label %bb.cf

bb.bq:                                            ; preds = %.loopexit532
  %i.adv = load i64, ptr %i.vj, align 8, !tbaa !72 ; 16 uses
  %i.adw = load ptr, ptr %5, align 8, !tbaa !61, !noalias !263 ; 11 uses
  %i.adx = load ptr, ptr %32, align 8, !tbaa !61  ; 11 uses
  %i.ady = ptrtoaddr ptr %i.adx to i64            ; 2 uses
  %i.adz = ptrtoint ptr %i.adw to i64             ; 4 uses
  %i.aea = and i64 %i.adz, 7
  %.not.i.i.i.i.i.i.i.i.i.i316 = icmp eq i64 %i.aea, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i316, label %.lr.ph52.i.i.i.i.i.i.i.i.i.i325, label %.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.i317

.preheader.lr.ph.i.i.i.i.i.i.i.i.i.i.i317:        ; preds = %bb.bq
  %i.aeb = icmp sgt i64 %i.adv, 0
end_hunk_0
