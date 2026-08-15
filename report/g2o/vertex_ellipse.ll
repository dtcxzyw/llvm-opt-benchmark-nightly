inline.NumInlined: 7129
inline.NumDeleted: 3730
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 63
begin_hunk_0_@_ZN5Eigen8internal35apply_block_householder_on_the_leftINS_5BlockINS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEES5_NS_11VectorBlockIKNS3_IfLi1ELi1ELi0ELi1ELi1EEELin1EEEEEvRT_RKT0_RKT1_b:bb.a

bb.r:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store ptr %8, ptr %10, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %9, ptr %i.cv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN5Eigen6MatrixIfLin1ELin1ELi0ELin1ELi2EEC2INS_7ProductINS_14TriangularViewIKNS_9TransposeIKNS0_IfLin1ELin1ELi1ELin1ELin1EEEEELj1EEENS0_IfLin1ELin1ELi0ELi2ELi2EEELi0EEEEERKT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %.noexc31 unwind label %bb.t

.noexc31:                                         ; preds = %bb.r
  %i.cw = load ptr, ptr %5, align 8, !tbaa !475   ; 9 uses
  %i.cx = ptrtoaddr ptr %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !472 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.db = load i64, ptr %i.da, align 8, !tbaa !474 ; 3 uses
  %i.dc = load i64, ptr %i.y, align 16, !tbaa !463
  %.not.i.i.i.i.i.i.i.i21 = icmp eq i64 %i.dc, %i.cz
  %i.dd = load i64, ptr %i.z, align 8
  %.not8.i.i.i.i.i.i.i.i22 = icmp eq i64 %i.dd, %i.db
  %or.cond.i.i.i.i.i.i.i.i23 = select i1 %.not.i.i.i.i.i.i.i.i21, i1 %.not8.i.i.i.i.i.i.i.i22, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i23, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEENS2_IfLin1ELin1ELi0ELin1ELi2EEEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i24, label %bb.s

bb.s:                                             ; preds = %.noexc31
  store i64 %i.cz, ptr %i.y, align 16, !tbaa !463
  store i64 %i.db, ptr %i.z, align 8, !tbaa !465
  br label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEENS2_IfLin1ELin1ELi0ELin1ELi2EEEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i24

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEENS2_IfLin1ELin1ELi0ELin1ELi2EEEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i24: ; preds = %bb.s, %.noexc31
  %i.de = mul nsw i64 %i.db, %i.cz                ; 7 uses
  %i.df = sdiv i64 %i.de, 4                       ; 2 uses
  %i.dg = shl nsw i64 %i.df, 2                    ; 5 uses
  %i.dh = icmp sgt i64 %i.de, 3
  br i1 %i.dh, label %.lr.ph.i.i.i.i.i.i.i.i29, label %._crit_edge.i.i.i.i.i.i.i.i25

._crit_edge.i.i.i.i.i.i.i.i25:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i29, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEENS2_IfLin1ELin1ELi0ELin1ELi2EEEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i24
  %i.di = icmp slt i64 %i.dg, %i.de
  br i1 %i.di, label %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader, label %.loopexit63

.lr.ph.i.i.i.i.i.i.i.i.i26.preheader:             ; preds = %._crit_edge.i.i.i.i.i.i.i.i25
  %i.dj = shl nsw i64 %i.df, 2
  %i.dk = sub i64 %i.de, %i.dj                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.dk, 8
  %i.dl = sub i64 %i.cx, %i.d
  %diff.check = icmp ugt i64 %i.dl, -32
  %or.cond97 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond97, label %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader
  %n.vec = and i64 %i.dk, -8                      ; 3 uses
  %i.dm = add i64 %i.dg, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dn = add i64 %i.dg, %index                   ; 2 uses
  %i.do = getelementptr inbounds [4 x i8], ptr %9, i64 %i.dn ; 2 uses
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.dn ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %wide.load = load <4 x float>, ptr %i.dp, align 4, !tbaa !19
  %wide.load82 = load <4 x float>, ptr %i.dq, align 4, !tbaa !19
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store <4 x float> %wide.load, ptr %i.do, align 16, !tbaa !19
  store <4 x float> %wide.load82, ptr %i.dr, align 16, !tbaa !19
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !480

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dk, %n.vec
  br i1 %cmp.n, label %.loopexit63, label %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99

.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i27.ph = phi i64 [ %i.dg, %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader ], [ %i.dm, %middle.block ] ; 4 uses
  %i.dt = sub i64 %i.de, %.05.i.i.i.i.i.i.i.i.i27.ph
  %xtraiter = and i64 %i.dt, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i26.prol

.lr.ph.i.i.i.i.i.i.i.i.i26.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99, %.lr.ph.i.i.i.i.i.i.i.i.i26.prol
  %.05.i.i.i.i.i.i.i.i.i27.prol = phi i64 [ %i.dx, %.lr.ph.i.i.i.i.i.i.i.i.i26.prol ], [ %.05.i.i.i.i.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i26.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99 ]
  %i.du = getelementptr inbounds [4 x i8], ptr %9, i64 %.05.i.i.i.i.i.i.i.i.i27.prol
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %.05.i.i.i.i.i.i.i.i.i27.prol
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !19
  store float %i.dw, ptr %i.du, align 4, !tbaa !19
  %i.dx = add nsw i64 %.05.i.i.i.i.i.i.i.i.i27.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i26.prol, !llvm.loop !481

.lr.ph.i.i.i.i.i.i.i.i.i26.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i26.prol, %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99
  %.05.i.i.i.i.i.i.i.i.i27.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i27.ph, %.lr.ph.i.i.i.i.i.i.i.i.i26.preheader99 ], [ %i.dx, %.lr.ph.i.i.i.i.i.i.i.i.i26.prol ]
  %i.dy = sub i64 %.05.i.i.i.i.i.i.i.i.i27.ph, %i.de
  %i.dz = icmp ugt i64 %i.dy, -4
  br i1 %i.dz, label %.loopexit63, label %.lr.ph.i.i.i.i.i.i.i.i.i26

.lr.ph.i.i.i.i.i.i.i.i.i26:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i26
  %.05.i.i.i.i.i.i.i.i.i27 = phi i64 [ %i.ep, %.lr.ph.i.i.i.i.i.i.i.i.i26 ], [ %.05.i.i.i.i.i.i.i.i.i27.unr, %.lr.ph.i.i.i.i.i.i.i.i.i26.prol.loopexit ] ; 6 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %9, i64 %.05.i.i.i.i.i.i.i.i.i27
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %.05.i.i.i.i.i.i.i.i.i27
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !19
  store float %i.ec, ptr %i.ea, align 4, !tbaa !19
  %i.ed = add nsw i64 %.05.i.i.i.i.i.i.i.i.i27, 1 ; 2 uses
  %i.ee = getelementptr inbounds [4 x i8], ptr %9, i64 %i.ed
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.ed
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !19
  store float %i.eg, ptr %i.ee, align 4, !tbaa !19
  %i.eh = add nsw i64 %.05.i.i.i.i.i.i.i.i.i27, 2 ; 2 uses
  %i.ei = getelementptr inbounds [4 x i8], ptr %9, i64 %i.eh
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.eh
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !19
  store float %i.ek, ptr %i.ei, align 4, !tbaa !19
  %i.el = add nsw i64 %.05.i.i.i.i.i.i.i.i.i27, 3 ; 2 uses
  %i.em = getelementptr inbounds [4 x i8], ptr %9, i64 %i.el
  %i.en = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.el
  %i.eo = load float, ptr %i.en, align 4, !tbaa !19
  store float %i.eo, ptr %i.em, align 4, !tbaa !19
  %i.ep = add nsw i64 %.05.i.i.i.i.i.i.i.i.i27, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i28.3 = icmp eq i64 %i.ep, %i.de
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i28.3, label %.loopexit63, label %.lr.ph.i.i.i.i.i.i.i.i.i26, !llvm.loop !482

.lr.ph.i.i.i.i.i.i.i.i29:                         ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEENS2_IfLin1ELin1ELi0ELin1ELi2EEEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i24, %.lr.ph.i.i.i.i.i.i.i.i29
  %.011.i.i.i.i.i.i.i.i30 = phi i64 [ %i.et, %.lr.ph.i.i.i.i.i.i.i.i29 ], [ 0, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIfLin1ELin1ELi0ELi2ELi2EEENS2_IfLin1ELin1ELi0ELin1ELi2EEEffEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i24 ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %.011.i.i.i.i.i.i.i.i30
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %.011.i.i.i.i.i.i.i.i30
  %i.es = load <4 x float>, ptr %i.er, align 16, !tbaa !47
  store <4 x float> %i.es, ptr %i.eq, align 16, !tbaa !47
  %i.et = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i30, 4 ; 2 uses
  %i.eu = icmp slt i64 %i.et, %i.dg
  br i1 %i.eu, label %.lr.ph.i.i.i.i.i.i.i.i29, label %._crit_edge.i.i.i.i.i.i.i.i25, !llvm.loop !479

.loopexit63:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i26, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i25
  call void @free(ptr noundef %i.cw) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %.body

bb.u:                                             ; preds = %.loopexit63, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store float -1.000000e+00, ptr %i.b, align 4, !tbaa !19
  %i.ew = load i64, ptr %i.z, align 8, !tbaa !465
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 2, ptr %i.ex, align 16, !tbaa !466
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 2, ptr %i.ey, align 8, !tbaa !468
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 2, ptr %i.ez, align 16, !tbaa !469
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.fa, ptr %4, align 16, !tbaa !470
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !471
  %i.fd = load i64, ptr %i.y, align 16, !tbaa !463
  %i.fe = load ptr, ptr %0, align 8, !tbaa !125
  invoke void @_ZN5Eigen8internal32product_triangular_matrix_matrixIflLi5ELb1ELi0ELb0ELi0ELb0ELi0ELi1ELi0EE3runElllPKflS4_lPfllRS3_RNS0_15level3_blockingIffEE(i64 noundef %.sroa.659.0.copyload, i64 noundef %i.ew, i64 noundef %.sroa.speculated47.i.i.i.i.i.i.i.i.i, ptr noundef nonnull %.sroa.058.0.copyload, i64 noundef 2, ptr noundef nonnull align 16 dereferenceable(32) %9, i64 noundef %i.fd, ptr noundef nonnull %i.fe, i64 noundef 1, i64 noundef 2, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.ff = load ptr, ptr %8, align 8, !tbaa !459
  call void @free(ptr noundef %i.ff) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  ret void

bb.w:                                             ; preds = %bb.u
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %bb.w, %bb.t, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.fg, %bb.w ], [ %i.cu, %bb.q ], [ %i.ev, %bb.t ], [ %i.av, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.x

bb.x:                                             ; preds = %.body, %bb.f
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.x, %bb.f ]
  %i.fh = load ptr, ptr %8, align 8, !tbaa !459
  call void @free(ptr noundef %i.fh) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal40make_block_householder_triangular_factorINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEENS_5BlockINS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEENS_11VectorBlockIKNS2_IfLi1ELi1ELi0ELi1ELi1EEELin1EEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Transpose.1161", align 8 ; 13 uses
  %4 = alloca %"class.Eigen::Transpose.1169", align 8 ; 10 uses
  %5 = alloca %"class.Eigen::Transpose.1176", align 8 ; 15 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %.sroa.7115 = alloca [64 x i8], align 8         ; 2 uses
  %.sroa.23 = alloca %"class.Eigen::internal::BlockImpl_dense.163", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !81   ; 5 uses
  %i.d = add nsw i64 %i.c, -1                     ; 3 uses
  %i.e = icmp sgt i64 %i.c, 0
  br i1 %i.e, label %.lr.ph187, label %._crit_edge

.lr.ph187:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7115.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7115, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.5179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72
  %.sroa.15180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 88
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 96
  %.sroa.21.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.22.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.23.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.24.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.25.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 88
  %.sroa.26.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.8166.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.10168.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  %.sroa.11169.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  %.sroa.12170.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 72
  %.sroa.13171.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 136
  %.sroa.14172.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 144
  %.sroa.15173.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 152
  %.sroa.16174.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 160
  %.sroa.18176.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 176
  %i.k = shl i64 %i.c, 2
  %i.l = add i64 %i.k, -4                         ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph187, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph187 ], [ %indvar.next, %.loopexit ] ; 3 uses
  %.047186 = phi i64 [ %i.d, %.lr.ph187 ], [ %i.hh, %.loopexit ] ; 15 uses
  %i.m = shl i64 %indvar, 2
  %i.n = sub i64 %i.l, %i.m
  %i.o = shl i64 %indvar, 2
  %i.p = sub i64 %i.l, %i.o
  %i.q = load i64, ptr %i.f, align 8, !tbaa !81   ; 2 uses
  %i.r = xor i64 %.047186, -1                     ; 2 uses
  %i.s = add i64 %i.c, %i.r                       ; 10 uses
  %.not193 = icmp eq i64 %i.s, 0
  br i1 %.not193, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.neg = add nuw nsw i64 %.047186, 1             ; 4 uses
  %i.t = add i64 %i.q, %i.r                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.23)
  %i.u = load ptr, ptr %2, align 8, !tbaa !378
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.047186
  %i.w = load float, ptr %i.v, align 4, !tbaa !19
  %i.x = fneg float %i.w
  %i.y = load ptr, ptr %1, align 8, !tbaa !125, !noalias !483 ; 2 uses
  %.idx.i.i.i.i = shl nsw i64 %.047186, 3
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7115.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.z, i64 %.neg
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !81, !noalias !486
  %i.ac = sub nsw i64 %i.ab, %i.s                 ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.y, i64 %.neg
  %.idx.i.i.i.i50 = shl nsw i64 %i.ac, 3
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.idx.i.i.i.i50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.af = load ptr, ptr %0, align 8, !tbaa !459, !noalias !489
  %i.ag = load i64, ptr %i.g, align 8, !tbaa !462, !noalias !489 ; 5 uses
  %i.ah = mul nsw i64 %i.ag, %.047186
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ah ; 2 uses
  %i.aj = sub nsw i64 %i.ag, %i.s                 ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.aj ; 5 uses
  %i.al = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.am = and i64 %i.al, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.an = lshr exact i64 %i.al, 2
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = and i64 %i.ao, 3                        ; 2 uses
  %i.aq = call i64 @llvm.umin.i64(i64 %i.ap, i64 %i.s) ; 3 uses
  %i.ar = sub nsw i64 %i.s, %i.aq                 ; 3 uses
  %i.as = sdiv i64 %i.ar, 4                       ; 3 uses
  %i.at = shl nuw nsw i64 %i.as, 2                ; 3 uses
  %i.au = or disjoint i64 %i.at, %i.aq            ; 2 uses
  %.not = icmp eq i64 %i.ap, 0
  br i1 %.not, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %bb.c, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.av = phi i64 [ %i.au, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.s, %bb.c ]
  %i.aw = phi i64 [ %i.at, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %i.ax = phi i64 [ %i.as, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %i.ay = phi i64 [ %i.ar, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i183 = phi i64 [ %i.aq, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.s, %bb.c ] ; 2 uses
  %i.az = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i183, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ak, i8 0, i64 %i.az, i1 false), !tbaa !19
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ba = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.au, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bb = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.at, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bc = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.as, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bd = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.ar, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182 = phi i64 [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i183, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ 0, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.be = icmp sgt i64 %i.bd, 3
  br i1 %i.be, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bf = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182, 2
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ak, i64 %i.bf
  %i.bg = add nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182, 4
  %smax.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ba, i64 %i.bg)
  %i.bh = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182, -1
  %i.bi = add nsw i64 %smax.i.i.i.i.i, %i.bh
  %i.bj = shl i64 %i.bi, 2
  %i.bk = and i64 %i.bj, -16
  %i.bl = add i64 %i.bk, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i.i.i.i.i, i8 0, i64 %i.bl, i1 false), !tbaa !47
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bm = icmp samesign ult i64 %i.ba, %i.s
  br i1 %i.bm, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bn = shl i64 %i.bc, 4
  %i.bo = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182, 2
  %i.bp = getelementptr i8, ptr %i.ak, i64 %i.bn
  %scevgep1.i.i.i.i.i = getelementptr i8, ptr %i.bp, i64 %i.bo
  %i.bq = sub nsw i64 %i.bd, %i.bb
  %i.br = shl nuw i64 %i.bq, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep1.i.i.i.i.i, i8 0, i64 %i.br, i1 false), !tbaa !19
  br label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit

_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store float 1.000000e+00, ptr %i.a, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %i.ak, ptr %3, align 8
  store i64 %i.s, ptr %.sroa.5179.0..sroa_idx, align 8
  store ptr %i.ai, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 %i.ag, ptr %.sroa.9.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.10.0..sroa_idx, align 8
  store i64 %.047186, ptr %.sroa.12.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.13.0..sroa_idx, align 8
  store i64 %i.ag, ptr %.sroa.14.0..sroa_idx, align 8
  store i64 %i.aj, ptr %.sroa.15180.0..sroa_idx, align 8
  store i64 %i.ag, ptr %.sroa.16.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.ae, ptr %4, align 8
  store i64 %i.t, ptr %.sroa.21.192..sroa_idx, align 8
  store i64 %i.s, ptr %.sroa.22.192..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23.192..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23, i64 56, i1 false)
  store i64 %.neg, ptr %.sroa.24.192..sroa_idx, align 8
  store i64 %i.ac, ptr %.sroa.25.192..sroa_idx, align 8
  store i64 2, ptr %.sroa.26.192..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i64 %i.t, ptr %i.h, align 8, !alias.scope !492
  store float %i.x, ptr %i.i, align 8, !tbaa !102, !alias.scope !492
  store ptr %i.aa, ptr %i.j, align 8
  store i64 %i.t, ptr %.sroa.8166.32..sroa_idx, align 8
  store ptr %i.z, ptr %.sroa.10168.32..sroa_idx, align 8
  store i64 %i.q, ptr %.sroa.11169.32..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.12170.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7115, i64 64, i1 false)
  store i64 0, ptr %.sroa.13171.32..sroa_idx, align 8
  store i64 %.047186, ptr %.sroa.14172.32..sroa_idx, align 8
  store i64 2, ptr %.sroa.15173.32..sroa_idx, align 8
  store i64 %.neg, ptr %.sroa.16174.32..sroa_idx, align 8
  store i64 2, ptr %.sroa.18176.32..sroa_idx, align 8
  call void @_ZN5Eigen8internal13trmv_selectorILi6ELi1EE3runINS_9TransposeIKNS_5BlockIKNS5_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS4_IKNS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS6_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS4_IKNS5_IKNS5_IS9_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEEEENS4_INS5_INS5_INS6_IfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNS16_6ScalarE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(192) %5, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23)
  %i.bs = icmp sgt i64 %i.d, %.047186
  br i1 %i.bs, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit
  %indvar198 = phi i64 [ %indvar.next199, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit ], [ 0, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit ] ; 6 uses
  %.0185 = phi i64 [ %i.gx, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit ], [ %i.d, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit ] ; 5 uses
  %i.bt = shl i64 %indvar198, 2
  %i.bu = sub i64 %i.l, %i.bt
  %i.bv = shl i64 %indvar198, 2                   ; 2 uses
  %i.bw = shl i64 %indvar198, 2
  %i.bx = sub i64 %i.l, %i.bw
  %i.by = load ptr, ptr %0, align 8, !tbaa !459   ; 8 uses
  %i.bz = load i64, ptr %i.g, align 8, !tbaa !462 ; 7 uses
  %i.ca = mul nsw i64 %i.bz, %.047186
  %i.cb = getelementptr [4 x i8], ptr %i.by, i64 %i.ca ; 2 uses
  %i.cc = getelementptr [4 x i8], ptr %i.cb, i64 %.0185 ; 2 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !19 ; 10 uses
  %i.ce = mul nsw i64 %i.bz, %.0185
  %i.cf = getelementptr [4 x i8], ptr %i.by, i64 %i.ce ; 2 uses
  %i.cg = getelementptr [4 x i8], ptr %i.cf, i64 %.0185
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !19
  %i.ci = fmul float %i.cd, %i.ch
  store float %i.ci, ptr %i.cc, align 4, !tbaa !19
  %i.cj = xor i64 %.0185, -1
  %i.ck = add i64 %i.c, %i.cj                     ; 9 uses
  %i.cl = icmp sgt i64 %i.ck, 0
  br i1 %i.cl, label %bb.d, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit

bb.d:                                             ; preds = %.lr.ph
  %i.cm = sub nsw i64 %i.bz, %i.ck                ; 4 uses
  %i.cn = getelementptr [4 x i8], ptr %i.cf, i64 %i.cm ; 10 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.cm ; 11 uses
  %i.cp = ptrtoint ptr %i.co to i64               ; 2 uses
  %i.cq = and i64 %i.cp, 3
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.cr = lshr exact i64 %i.cp, 2
  %i.cs = sub nsw i64 0, %i.cr
  %i.ct = and i64 %i.cs, 3                        ; 2 uses
  %i.cu = call i64 @llvm.umin.i64(i64 %i.ct, i64 %i.ck) ; 3 uses
  %i.cv = sub nsw i64 %i.ck, %i.cu                ; 3 uses
  %i.cw = sdiv i64 %i.cv, 4
  %i.cx = shl nuw nsw i64 %i.cw, 2
  %i.cy = or disjoint i64 %i.cx, %i.cu            ; 2 uses
  %.not184 = icmp eq i64 %i.ct, 0
  br i1 %.not184, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.d, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.cz = phi i64 [ %i.cy, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %i.ck, %bb.d ] ; 3 uses
  %i.da = phi i64 [ %i.cv, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ 0, %bb.d ] ; 3 uses
  %.0.i.i.i.i.i.i.i196 = phi i64 [ %i.cu, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %i.ck, %bb.d ] ; 10 uses
  %min.iters.check213 = icmp ult i64 %.0.i.i.i.i.i.i.i196, 12
  br i1 %min.iters.check213, label %.lr.ph.i.i.i.i.i.i.i.preheader229, label %vector.memcheck206

vector.memcheck206:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.db = mul i64 %i.n, %i.bz
  %i.dc = shl i64 %.0.i.i.i.i.i.i.i196, 2         ; 2 uses
  %i.dd = shl i64 %i.cm, 2                        ; 2 uses
  %i.de = getelementptr i8, ptr %i.by, i64 %i.db
  %i.df = getelementptr i8, ptr %i.de, i64 %i.dc
  %scevgep207 = getelementptr i8, ptr %i.df, i64 %i.dd
  %i.dg = mul i64 %i.bz, %i.bu
  %i.dh = getelementptr i8, ptr %i.by, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.dc
  %scevgep208 = getelementptr i8, ptr %i.di, i64 %i.dd
  %bound0209 = icmp ult ptr %i.co, %scevgep208
  %bound1210 = icmp ult ptr %i.cn, %scevgep207
  %found.conflict211 = and i1 %bound0209, %bound1210
  br i1 %found.conflict211, label %.lr.ph.i.i.i.i.i.i.i.preheader229, label %vector.ph214

vector.ph214:                                     ; preds = %vector.memcheck206
  %n.vec215 = and i64 %.0.i.i.i.i.i.i.i196, -8    ; 3 uses
  %broadcast.splatinsert216 = insertelement <4 x float> poison, float %i.cd, i64 0
  %broadcast.splat217 = shufflevector <4 x float> %broadcast.splatinsert216, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body218

vector.body218:                                   ; preds = %vector.body218, %vector.ph214
  %index219 = phi i64 [ 0, %vector.ph214 ], [ %index.next224, %vector.body218 ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %index219 ; 3 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %index219 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %wide.load220 = load <4 x float>, ptr %i.dk, align 4, !tbaa !19, !alias.scope !495
  %wide.load221 = load <4 x float>, ptr %i.dl, align 4, !tbaa !19, !alias.scope !495
  %i.dm = fmul <4 x float> %broadcast.splat217, %wide.load220
  %i.dn = fmul <4 x float> %broadcast.splat217, %wide.load221
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %wide.load222 = load <4 x float>, ptr %i.dj, align 4, !tbaa !19, !alias.scope !498, !noalias !495
  %wide.load223 = load <4 x float>, ptr %i.do, align 4, !tbaa !19, !alias.scope !498, !noalias !495
  %i.dp = fadd <4 x float> %i.dm, %wide.load222
  %i.dq = fadd <4 x float> %i.dn, %wide.load223
  store <4 x float> %i.dp, ptr %i.dj, align 4, !tbaa !19, !alias.scope !498, !noalias !495
  store <4 x float> %i.dq, ptr %i.do, align 4, !tbaa !19, !alias.scope !498, !noalias !495
  %index.next224 = add nuw i64 %index219, 8       ; 2 uses
  %i.dr = icmp eq i64 %index.next224, %n.vec215
  br i1 %i.dr, label %middle.block225, label %vector.body218, !llvm.loop !500

middle.block225:                                  ; preds = %vector.body218
  %cmp.n226 = icmp eq i64 %.0.i.i.i.i.i.i.i196, %n.vec215
  br i1 %cmp.n226, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader229

.lr.ph.i.i.i.i.i.i.i.preheader229:                ; preds = %vector.memcheck206, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block225
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck206 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec215, %middle.block225 ] ; 5 uses
  %.neg233 = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i196, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader229
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.05.i.i.i.i.i.i.i.ph ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.05.i.i.i.i.i.i.i.ph
  %i.du = load float, ptr %i.dt, align 4, !tbaa !19
  %i.dv = fmul float %i.cd, %i.du
  %i.dw = load float, ptr %i.ds, align 4, !tbaa !19
  %i.dx = fadd float %i.dv, %i.dw
  store float %i.dx, ptr %i.ds, align 4, !tbaa !19
  %i.dy = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader229
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader229 ], [ %i.dy, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.dz = icmp eq i64 %.0.i.i.i.i.i.i.i196, %.neg233
  br i1 %i.dz, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.en, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.05.i.i.i.i.i.i.i
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !19
  %i.ed = fmul float %i.cd, %i.ec
  %i.ee = load float, ptr %i.ea, align 4, !tbaa !19
  %i.ef = fadd float %i.ed, %i.ee
  store float %i.ef, ptr %i.ea, align 4, !tbaa !19
  %i.eg = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.eg ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.eg
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !19
  %i.ek = fmul float %i.cd, %i.ej
  %i.el = load float, ptr %i.eh, align 4, !tbaa !19
  %i.em = fadd float %i.ek, %i.el
  store float %i.em, ptr %i.eh, align 4, !tbaa !19
  %i.en = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.en, %.0.i.i.i.i.i.i.i196
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !501

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %middle.block225, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.eo = phi i64 [ %i.cy, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %i.cz, %middle.block225 ], [ %i.cz, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.ep = phi i64 [ %i.cv, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %i.da, %middle.block225 ], [ %i.da, %.lr.ph.i.i.i.i.i.i.i ], [ %i.da, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.0.i.i.i.i.i.i.i197 = phi i64 [ 0, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i196, %middle.block225 ], [ %.0.i.i.i.i.i.i.i196, %.lr.ph.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i196, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %i.eq = icmp sgt i64 %i.ep, 3
  br i1 %i.eq, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.er = insertelement <1 x float> poison, float %i.cd, i64 0
  %i.es = shufflevector <1 x float> %i.er, <1 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.et = icmp samesign ult i64 %i.eo, %i.ck
  br i1 %i.et, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.eu = sub nuw i64 %i.ck, %i.eo                ; 3 uses
  %min.iters.check = icmp ult i64 %i.eu, 12
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.preheader228, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %i.ev = mul i64 %i.p, %i.bz                     ; 2 uses
  %i.ew = shl i64 %i.eo, 2                        ; 2 uses
  %i.ex = shl i64 %i.cm, 2                        ; 4 uses
  %i.ey = getelementptr i8, ptr %i.by, i64 %i.ev
  %i.ez = getelementptr i8, ptr %i.ey, i64 %i.ew
  %scevgep = getelementptr i8, ptr %i.ez, i64 %i.ex
  %i.fa = getelementptr i8, ptr %i.by, i64 %i.bv
  %i.fb = getelementptr i8, ptr %i.fa, i64 %i.ev
  %scevgep200 = getelementptr i8, ptr %i.fb, i64 %i.ex
  %i.fc = mul i64 %i.bz, %i.bx                    ; 2 uses
  %i.fd = getelementptr i8, ptr %i.by, i64 %i.fc
  %i.fe = getelementptr i8, ptr %i.fd, i64 %i.ew
  %scevgep201 = getelementptr i8, ptr %i.fe, i64 %i.ex
  %i.ff = getelementptr i8, ptr %i.by, i64 %i.bv
  %i.fg = getelementptr i8, ptr %i.ff, i64 %i.fc
  %scevgep202 = getelementptr i8, ptr %i.fg, i64 %i.ex
  %bound0 = icmp ult ptr %scevgep, %scevgep202
  %bound1 = icmp ult ptr %scevgep201, %scevgep200
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i17.i.i.i.i.i.i.preheader228, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eu, 9223372036854775800     ; 3 uses
  %i.fh = add i64 %i.eo, %n.vec
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cd, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fi = add i64 %i.eo, %index                   ; 2 uses
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.fi ; 3 uses
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.fi ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %wide.load = load <4 x float>, ptr %i.fk, align 4, !tbaa !19, !alias.scope !502
  %wide.load203 = load <4 x float>, ptr %i.fl, align 4, !tbaa !19, !alias.scope !502
  %i.fm = fmul <4 x float> %broadcast.splat, %wide.load
  %i.fn = fmul <4 x float> %broadcast.splat, %wide.load203
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 16 ; 2 uses
  %wide.load204 = load <4 x float>, ptr %i.fj, align 4, !tbaa !19, !alias.scope !505, !noalias !502
  %wide.load205 = load <4 x float>, ptr %i.fo, align 4, !tbaa !19, !alias.scope !505, !noalias !502
  %i.fp = fadd <4 x float> %i.fm, %wide.load204
  %i.fq = fadd <4 x float> %i.fn, %wide.load205
  store <4 x float> %i.fp, ptr %i.fj, align 4, !tbaa !19, !alias.scope !505, !noalias !502
  store <4 x float> %i.fq, ptr %i.fo, align 4, !tbaa !19, !alias.scope !505, !noalias !502
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fr = icmp eq i64 %index.next, %n.vec
  br i1 %i.fr, label %middle.block, label %vector.body, !llvm.loop !507

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eu, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader228

.lr.ph.i17.i.i.i.i.i.i.preheader228:              ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.eo, %vector.memcheck ], [ %i.eo, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.fh, %middle.block ] ; 6 uses
  %i.fs = sub i64 %indvar198, %.05.i18.i.i.i.i.i.i.ph
  %.neg234 = add i64 %.05.i18.i.i.i.i.i.i.ph, 1
  %xtraiter230 = and i64 %i.fs, 1
  %lcmp.mod231.not = icmp eq i64 %xtraiter230, 0
  br i1 %lcmp.mod231.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader228
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.co, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %.05.i18.i.i.i.i.i.i.ph
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !19
  %i.fw = fmul float %i.cd, %i.fv
  %i.fx = load float, ptr %i.ft, align 4, !tbaa !19
  %i.fy = fadd float %i.fw, %i.fx
  store float %i.fy, ptr %i.ft, align 4, !tbaa !19
  %i.fz = add nsw i64 %.05.i18.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader228
  %.05.i18.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader228 ], [ %i.fz, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.ga = icmp eq i64 %indvar198, %.neg234
  br i1 %i.ga, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.go, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.co, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %.05.i18.i.i.i.i.i.i
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !19
  %i.ge = fmul float %i.cd, %i.gd
  %i.gf = load float, ptr %i.gb, align 4, !tbaa !19
  %i.gg = fadd float %i.ge, %i.gf
  store float %i.gg, ptr %i.gb, align 4, !tbaa !19
  %i.gh = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.gh ; 2 uses
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.gh
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !19
  %i.gl = fmul float %i.cd, %i.gk
  %i.gm = load float, ptr %i.gi, align 4, !tbaa !19
  %i.gn = fadd float %i.gl, %i.gm
  store float %i.gn, ptr %i.gi, align 4, !tbaa !19
  %i.go = add nsw i64 %.05.i18.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.go, %i.ck
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !508

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.gv, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i197, %.lr.ph.i.preheader.i.i.i.i.i ] ; 3 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.021.i.i.i.i.i.i
  %i.gr = load <4 x float>, ptr %i.gq, align 1, !tbaa !47
  %i.gs = fmul <4 x float> %i.es, %i.gr
  %i.gt = load <4 x float>, ptr %i.gp, align 16, !tbaa !47
  %i.gu = fadd <4 x float> %i.gt, %i.gs
  store <4 x float> %i.gu, ptr %i.gp, align 16, !tbaa !47
  %i.gv = add nuw nsw i64 %.021.i.i.i.i.i.i, 4    ; 2 uses
  %i.gw = icmp slt i64 %i.gv, %i.eo
  br i1 %i.gw, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !509

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i, %middle.block, %.lr.ph.i17.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph
  %i.gx = add nsw i64 %.0185, -1                  ; 2 uses
  %i.gy = icmp sgt i64 %i.gx, %.047186
  %indvar.next199 = add i64 %indvar198, 1
  br i1 %i.gy, label %.lr.ph, label %.loopexit, !llvm.loop !510

.loopexit:                                        ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit, %bb.b
  %i.gz = load ptr, ptr %2, align 8, !tbaa !378
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %.047186
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !19
  %i.hc = load ptr, ptr %0, align 8, !tbaa !459
  %i.hd = load i64, ptr %i.g, align 8, !tbaa !462
  %i.he = mul nsw i64 %i.hd, %.047186
  %i.hf = getelementptr [4 x i8], ptr %i.hc, i64 %i.he
  %i.hg = getelementptr [4 x i8], ptr %i.hf, i64 %.047186
  store float %i.hb, ptr %i.hg, align 4, !tbaa !19
  %i.hh = add nsw i64 %.047186, -1
  %i.hi = icmp sgt i64 %.047186, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.hi, label %bb.b, label %._crit_edge, !llvm.loop !511
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal40make_block_householder_triangular_factorINS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEENS_5BlockINS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEENS4_IKNS2_IfLi1ELi1ELi0ELi1ELi1EEELin1ELi1ELb0EEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Transpose.1161", align 8 ; 13 uses
  %4 = alloca %"class.Eigen::Transpose.1169", align 8 ; 10 uses
  %5 = alloca %"class.Eigen::Transpose.1176", align 8 ; 15 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %.sroa.7115 = alloca [64 x i8], align 8         ; 2 uses
  %.sroa.23 = alloca %"class.Eigen::internal::BlockImpl_dense.163", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !81   ; 5 uses
  %i.d = add nsw i64 %i.c, -1                     ; 3 uses
  %i.e = icmp sgt i64 %i.c, 0
  br i1 %i.e, label %.lr.ph187, label %._crit_edge

.lr.ph187:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7115.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7115, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.5179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72
  %.sroa.15180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 88
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 96
  %.sroa.21.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.22.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.23.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.24.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.25.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 88
  %.sroa.26.192..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.sroa.8166.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.10168.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  %.sroa.11169.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  %.sroa.12170.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 72
  %.sroa.13171.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 136
  %.sroa.14172.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 144
  %.sroa.15173.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 152
  %.sroa.16174.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 160
  %.sroa.18176.32..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 176
  %i.k = shl i64 %i.c, 2
  %i.l = add i64 %i.k, -4                         ; 4 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph187, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph187 ], [ %indvar.next, %.loopexit ] ; 3 uses
  %.047186 = phi i64 [ %i.d, %.lr.ph187 ], [ %i.hh, %.loopexit ] ; 15 uses
  %i.m = shl i64 %indvar, 2
  %i.n = sub i64 %i.l, %i.m
  %i.o = shl i64 %indvar, 2
  %i.p = sub i64 %i.l, %i.o
  %i.q = load i64, ptr %i.f, align 8, !tbaa !81   ; 2 uses
  %i.r = xor i64 %.047186, -1                     ; 2 uses
  %i.s = add i64 %i.c, %i.r                       ; 10 uses
  %.not193 = icmp eq i64 %i.s, 0
  br i1 %.not193, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.neg = add nuw nsw i64 %.047186, 1             ; 4 uses
  %i.t = add i64 %i.q, %i.r                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.23)
  %i.u = load ptr, ptr %2, align 8, !tbaa !378
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.047186
  %i.w = load float, ptr %i.v, align 4, !tbaa !19
  %i.x = fneg float %i.w
  %i.y = load ptr, ptr %1, align 8, !tbaa !125, !noalias !512 ; 2 uses
  %.idx.i.i.i.i = shl nsw i64 %.047186, 3
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7115.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.z, i64 %.neg
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !81, !noalias !515
  %i.ac = sub nsw i64 %i.ab, %i.s                 ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.y, i64 %.neg
  %.idx.i.i.i.i50 = shl nsw i64 %i.ac, 3
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.idx.i.i.i.i50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.af = load ptr, ptr %0, align 8, !tbaa !459, !noalias !518
  %i.ag = load i64, ptr %i.g, align 8, !tbaa !462, !noalias !518 ; 5 uses
  %i.ah = mul nsw i64 %i.ag, %.047186
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ah ; 2 uses
  %i.aj = sub nsw i64 %i.ag, %i.s                 ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.aj ; 5 uses
  %i.al = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.am = and i64 %i.al, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.an = lshr exact i64 %i.al, 2
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = and i64 %i.ao, 3                        ; 2 uses
  %i.aq = call i64 @llvm.umin.i64(i64 %i.ap, i64 %i.s) ; 3 uses
  %i.ar = sub nsw i64 %i.s, %i.aq                 ; 3 uses
  %i.as = sdiv i64 %i.ar, 4                       ; 3 uses
  %i.at = shl nuw nsw i64 %i.as, 2                ; 3 uses
  %i.au = or disjoint i64 %i.at, %i.aq            ; 2 uses
  %.not = icmp eq i64 %i.ap, 0
  br i1 %.not, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %bb.c, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.av = phi i64 [ %i.au, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.s, %bb.c ]
  %i.aw = phi i64 [ %i.at, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %i.ax = phi i64 [ %i.as, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %i.ay = phi i64 [ %i.ar, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.c ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i183 = phi i64 [ %i.aq, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.s, %bb.c ] ; 2 uses
  %i.az = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i183, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ak, i8 0, i64 %i.az, i1 false), !tbaa !19
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ba = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.au, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bb = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.at, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bc = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.as, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bd = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ %i.ar, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182 = phi i64 [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i183, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ], [ 0, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.be = icmp sgt i64 %i.bd, 3
  br i1 %i.be, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bf = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182, 2
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ak, i64 %i.bf
  %i.bg = add nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182, 4
  %smax.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ba, i64 %i.bg)
  %i.bh = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182, -1
  %i.bi = add nsw i64 %smax.i.i.i.i.i, %i.bh
  %i.bj = shl i64 %i.bi, 2
  %i.bk = and i64 %i.bj, -16
  %i.bl = add i64 %i.bk, 16
  call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i.i.i.i.i, i8 0, i64 %i.bl, i1 false), !tbaa !47
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIfEENS7_IfLi1ELin1ELi1ELi1ELin1EEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bm = icmp samesign ult i64 %i.ba, %i.s
  br i1 %i.bm, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bn = shl i64 %i.bc, 4
  %i.bo = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i182, 2
  %i.bp = getelementptr i8, ptr %i.ak, i64 %i.bn
  %scevgep1.i.i.i.i.i = getelementptr i8, ptr %i.bp, i64 %i.bo
  %i.bq = sub nsw i64 %i.bd, %i.bb
  %i.br = shl nuw i64 %i.bq, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep1.i.i.i.i.i, i8 0, i64 %i.br, i1 false), !tbaa !19
  br label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit

_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store float 1.000000e+00, ptr %i.a, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %i.ak, ptr %3, align 8
  store i64 %i.s, ptr %.sroa.5179.0..sroa_idx, align 8
  store ptr %i.ai, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 %i.ag, ptr %.sroa.9.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.10.0..sroa_idx, align 8
  store i64 %.047186, ptr %.sroa.12.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.13.0..sroa_idx, align 8
  store i64 %i.ag, ptr %.sroa.14.0..sroa_idx, align 8
  store i64 %i.aj, ptr %.sroa.15180.0..sroa_idx, align 8
  store i64 %i.ag, ptr %.sroa.16.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.ae, ptr %4, align 8
  store i64 %i.t, ptr %.sroa.21.192..sroa_idx, align 8
  store i64 %i.s, ptr %.sroa.22.192..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23.192..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.23, i64 56, i1 false)
  store i64 %.neg, ptr %.sroa.24.192..sroa_idx, align 8
  store i64 %i.ac, ptr %.sroa.25.192..sroa_idx, align 8
  store i64 2, ptr %.sroa.26.192..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i64 %i.t, ptr %i.h, align 8, !alias.scope !521
  store float %i.x, ptr %i.i, align 8, !tbaa !102, !alias.scope !521
  store ptr %i.aa, ptr %i.j, align 8
  store i64 %i.t, ptr %.sroa.8166.32..sroa_idx, align 8
  store ptr %i.z, ptr %.sroa.10168.32..sroa_idx, align 8
  store i64 %i.q, ptr %.sroa.11169.32..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.12170.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7115, i64 64, i1 false)
  store i64 0, ptr %.sroa.13171.32..sroa_idx, align 8
  store i64 %.047186, ptr %.sroa.14172.32..sroa_idx, align 8
  store i64 2, ptr %.sroa.15173.32..sroa_idx, align 8
  store i64 %.neg, ptr %.sroa.16174.32..sroa_idx, align 8
  store i64 2, ptr %.sroa.18176.32..sroa_idx, align 8
  call void @_ZN5Eigen8internal13trmv_selectorILi6ELi1EE3runINS_9TransposeIKNS_5BlockIKNS5_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS4_IKNS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS6_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS4_IKNS5_IKNS5_IS9_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEEEENS4_INS5_INS5_INS6_IfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNS16_6ScalarE(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(192) %5, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.23)
  %i.bs = icmp sgt i64 %i.d, %.047186
  br i1 %i.bs, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit
  %indvar198 = phi i64 [ %indvar.next199, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit ], [ 0, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit ] ; 6 uses
  %.0185 = phi i64 [ %i.gx, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit ], [ %i.d, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit ] ; 5 uses
  %i.bt = shl i64 %indvar198, 2
  %i.bu = sub i64 %i.l, %i.bt
  %i.bv = shl i64 %indvar198, 2                   ; 2 uses
  %i.bw = shl i64 %indvar198, 2
  %i.bx = sub i64 %i.l, %i.bw
  %i.by = load ptr, ptr %0, align 8, !tbaa !459   ; 8 uses
  %i.bz = load i64, ptr %i.g, align 8, !tbaa !462 ; 7 uses
  %i.ca = mul nsw i64 %i.bz, %.047186
  %i.cb = getelementptr [4 x i8], ptr %i.by, i64 %i.ca ; 2 uses
  %i.cc = getelementptr [4 x i8], ptr %i.cb, i64 %.0185 ; 2 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !19 ; 10 uses
  %i.ce = mul nsw i64 %i.bz, %.0185
  %i.cf = getelementptr [4 x i8], ptr %i.by, i64 %i.ce ; 2 uses
  %i.cg = getelementptr [4 x i8], ptr %i.cf, i64 %.0185
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !19
  %i.ci = fmul float %i.cd, %i.ch
  store float %i.ci, ptr %i.cc, align 4, !tbaa !19
  %i.cj = xor i64 %.0185, -1
  %i.ck = add i64 %i.c, %i.cj                     ; 9 uses
  %i.cl = icmp sgt i64 %i.ck, 0
  br i1 %i.cl, label %bb.d, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit

bb.d:                                             ; preds = %.lr.ph
  %i.cm = sub nsw i64 %i.bz, %i.ck                ; 4 uses
  %i.cn = getelementptr [4 x i8], ptr %i.cf, i64 %i.cm ; 10 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.cm ; 11 uses
  %i.cp = ptrtoint ptr %i.co to i64               ; 2 uses
  %i.cq = and i64 %i.cp, 3
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.cr = lshr exact i64 %i.cp, 2
  %i.cs = sub nsw i64 0, %i.cr
  %i.ct = and i64 %i.cs, 3                        ; 2 uses
  %i.cu = call i64 @llvm.umin.i64(i64 %i.ct, i64 %i.ck) ; 3 uses
  %i.cv = sub nsw i64 %i.ck, %i.cu                ; 3 uses
  %i.cw = sdiv i64 %i.cv, 4
  %i.cx = shl nuw nsw i64 %i.cw, 2
  %i.cy = or disjoint i64 %i.cx, %i.cu            ; 2 uses
  %.not184 = icmp eq i64 %i.ct, 0
  br i1 %.not184, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.d, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.cz = phi i64 [ %i.cy, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %i.ck, %bb.d ] ; 3 uses
  %i.da = phi i64 [ %i.cv, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ 0, %bb.d ] ; 3 uses
  %.0.i.i.i.i.i.i.i196 = phi i64 [ %i.cu, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %i.ck, %bb.d ] ; 10 uses
  %min.iters.check213 = icmp ult i64 %.0.i.i.i.i.i.i.i196, 12
  br i1 %min.iters.check213, label %.lr.ph.i.i.i.i.i.i.i.preheader229, label %vector.memcheck206

vector.memcheck206:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.db = mul i64 %i.n, %i.bz
  %i.dc = shl i64 %.0.i.i.i.i.i.i.i196, 2         ; 2 uses
  %i.dd = shl i64 %i.cm, 2                        ; 2 uses
  %i.de = getelementptr i8, ptr %i.by, i64 %i.db
  %i.df = getelementptr i8, ptr %i.de, i64 %i.dc
  %scevgep207 = getelementptr i8, ptr %i.df, i64 %i.dd
  %i.dg = mul i64 %i.bz, %i.bu
  %i.dh = getelementptr i8, ptr %i.by, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.dc
  %scevgep208 = getelementptr i8, ptr %i.di, i64 %i.dd
  %bound0209 = icmp ult ptr %i.co, %scevgep208
  %bound1210 = icmp ult ptr %i.cn, %scevgep207
  %found.conflict211 = and i1 %bound0209, %bound1210
  br i1 %found.conflict211, label %.lr.ph.i.i.i.i.i.i.i.preheader229, label %vector.ph214

vector.ph214:                                     ; preds = %vector.memcheck206
  %n.vec215 = and i64 %.0.i.i.i.i.i.i.i196, -8    ; 3 uses
  %broadcast.splatinsert216 = insertelement <4 x float> poison, float %i.cd, i64 0
  %broadcast.splat217 = shufflevector <4 x float> %broadcast.splatinsert216, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body218

vector.body218:                                   ; preds = %vector.body218, %vector.ph214
  %index219 = phi i64 [ 0, %vector.ph214 ], [ %index.next224, %vector.body218 ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %index219 ; 3 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %index219 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %wide.load220 = load <4 x float>, ptr %i.dk, align 4, !tbaa !19, !alias.scope !524
  %wide.load221 = load <4 x float>, ptr %i.dl, align 4, !tbaa !19, !alias.scope !524
  %i.dm = fmul <4 x float> %broadcast.splat217, %wide.load220
  %i.dn = fmul <4 x float> %broadcast.splat217, %wide.load221
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %wide.load222 = load <4 x float>, ptr %i.dj, align 4, !tbaa !19, !alias.scope !527, !noalias !524
  %wide.load223 = load <4 x float>, ptr %i.do, align 4, !tbaa !19, !alias.scope !527, !noalias !524
  %i.dp = fadd <4 x float> %i.dm, %wide.load222
  %i.dq = fadd <4 x float> %i.dn, %wide.load223
  store <4 x float> %i.dp, ptr %i.dj, align 4, !tbaa !19, !alias.scope !527, !noalias !524
  store <4 x float> %i.dq, ptr %i.do, align 4, !tbaa !19, !alias.scope !527, !noalias !524
  %index.next224 = add nuw i64 %index219, 8       ; 2 uses
  %i.dr = icmp eq i64 %index.next224, %n.vec215
  br i1 %i.dr, label %middle.block225, label %vector.body218, !llvm.loop !529

middle.block225:                                  ; preds = %vector.body218
  %cmp.n226 = icmp eq i64 %.0.i.i.i.i.i.i.i196, %n.vec215
  br i1 %cmp.n226, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader229

.lr.ph.i.i.i.i.i.i.i.preheader229:                ; preds = %vector.memcheck206, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block225
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck206 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec215, %middle.block225 ] ; 5 uses
  %.neg233 = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i196, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader229
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.05.i.i.i.i.i.i.i.ph ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.05.i.i.i.i.i.i.i.ph
  %i.du = load float, ptr %i.dt, align 4, !tbaa !19
  %i.dv = fmul float %i.cd, %i.du
  %i.dw = load float, ptr %i.ds, align 4, !tbaa !19
  %i.dx = fadd float %i.dv, %i.dw
  store float %i.dx, ptr %i.ds, align 4, !tbaa !19
  %i.dy = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader229
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader229 ], [ %i.dy, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.dz = icmp eq i64 %.0.i.i.i.i.i.i.i196, %.neg233
  br i1 %i.dz, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.en, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.05.i.i.i.i.i.i.i
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !19
  %i.ed = fmul float %i.cd, %i.ec
  %i.ee = load float, ptr %i.ea, align 4, !tbaa !19
  %i.ef = fadd float %i.ed, %i.ee
  store float %i.ef, ptr %i.ea, align 4, !tbaa !19
  %i.eg = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.eg ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.eg
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !19
  %i.ek = fmul float %i.cd, %i.ej
  %i.el = load float, ptr %i.eh, align 4, !tbaa !19
  %i.em = fadd float %i.ek, %i.el
  store float %i.em, ptr %i.eh, align 4, !tbaa !19
  %i.en = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.en, %.0.i.i.i.i.i.i.i196
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !530

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %middle.block225, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.eo = phi i64 [ %i.cy, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %i.cz, %middle.block225 ], [ %i.cz, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.ep = phi i64 [ %i.cv, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %i.da, %middle.block225 ], [ %i.da, %.lr.ph.i.i.i.i.i.i.i ], [ %i.da, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.0.i.i.i.i.i.i.i197 = phi i64 [ 0, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i196, %middle.block225 ], [ %.0.i.i.i.i.i.i.i196, %.lr.ph.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i196, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %i.eq = icmp sgt i64 %i.ep, 3
  br i1 %i.eq, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.er = insertelement <1 x float> poison, float %i.cd, i64 0
  %i.es = shufflevector <1 x float> %i.er, <1 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS7_IfLi1ELin1ELi1ELi1ELin1EEEEEKSA_EEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.et = icmp samesign ult i64 %i.eo, %i.ck
  br i1 %i.et, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.eu = sub nuw i64 %i.ck, %i.eo                ; 3 uses
  %min.iters.check = icmp ult i64 %i.eu, 12
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.preheader228, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %i.ev = mul i64 %i.p, %i.bz                     ; 2 uses
  %i.ew = shl i64 %i.eo, 2                        ; 2 uses
  %i.ex = shl i64 %i.cm, 2                        ; 4 uses
  %i.ey = getelementptr i8, ptr %i.by, i64 %i.ev
  %i.ez = getelementptr i8, ptr %i.ey, i64 %i.ew
  %scevgep = getelementptr i8, ptr %i.ez, i64 %i.ex
  %i.fa = getelementptr i8, ptr %i.by, i64 %i.bv
  %i.fb = getelementptr i8, ptr %i.fa, i64 %i.ev
  %scevgep200 = getelementptr i8, ptr %i.fb, i64 %i.ex
  %i.fc = mul i64 %i.bz, %i.bx                    ; 2 uses
  %i.fd = getelementptr i8, ptr %i.by, i64 %i.fc
  %i.fe = getelementptr i8, ptr %i.fd, i64 %i.ew
  %scevgep201 = getelementptr i8, ptr %i.fe, i64 %i.ex
  %i.ff = getelementptr i8, ptr %i.by, i64 %i.bv
  %i.fg = getelementptr i8, ptr %i.ff, i64 %i.fc
  %scevgep202 = getelementptr i8, ptr %i.fg, i64 %i.ex
  %bound0 = icmp ult ptr %scevgep, %scevgep202
  %bound1 = icmp ult ptr %scevgep201, %scevgep200
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i17.i.i.i.i.i.i.preheader228, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eu, 9223372036854775800     ; 3 uses
  %i.fh = add i64 %i.eo, %n.vec
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cd, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fi = add i64 %i.eo, %index                   ; 2 uses
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.fi ; 3 uses
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.fi ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %wide.load = load <4 x float>, ptr %i.fk, align 4, !tbaa !19, !alias.scope !531
  %wide.load203 = load <4 x float>, ptr %i.fl, align 4, !tbaa !19, !alias.scope !531
  %i.fm = fmul <4 x float> %broadcast.splat, %wide.load
  %i.fn = fmul <4 x float> %broadcast.splat, %wide.load203
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 16 ; 2 uses
  %wide.load204 = load <4 x float>, ptr %i.fj, align 4, !tbaa !19, !alias.scope !534, !noalias !531
  %wide.load205 = load <4 x float>, ptr %i.fo, align 4, !tbaa !19, !alias.scope !534, !noalias !531
  %i.fp = fadd <4 x float> %i.fm, %wide.load204
  %i.fq = fadd <4 x float> %i.fn, %wide.load205
  store <4 x float> %i.fp, ptr %i.fj, align 4, !tbaa !19, !alias.scope !534, !noalias !531
  store <4 x float> %i.fq, ptr %i.fo, align 4, !tbaa !19, !alias.scope !534, !noalias !531
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fr = icmp eq i64 %index.next, %n.vec
  br i1 %i.fr, label %middle.block, label %vector.body, !llvm.loop !536

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eu, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader228

.lr.ph.i17.i.i.i.i.i.i.preheader228:              ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.eo, %vector.memcheck ], [ %i.eo, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.fh, %middle.block ] ; 6 uses
  %i.fs = sub i64 %indvar198, %.05.i18.i.i.i.i.i.i.ph
  %.neg234 = add i64 %.05.i18.i.i.i.i.i.i.ph, 1
  %xtraiter230 = and i64 %i.fs, 1
  %lcmp.mod231.not = icmp eq i64 %xtraiter230, 0
  br i1 %lcmp.mod231.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader228
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.co, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %.05.i18.i.i.i.i.i.i.ph
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !19
  %i.fw = fmul float %i.cd, %i.fv
  %i.fx = load float, ptr %i.ft, align 4, !tbaa !19
  %i.fy = fadd float %i.fw, %i.fx
  store float %i.fy, ptr %i.ft, align 4, !tbaa !19
  %i.fz = add nsw i64 %.05.i18.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader228
  %.05.i18.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader228 ], [ %i.fz, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.ga = icmp eq i64 %indvar198, %.neg234
  br i1 %i.ga, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.go, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.co, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %.05.i18.i.i.i.i.i.i
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !19
  %i.ge = fmul float %i.cd, %i.gd
  %i.gf = load float, ptr %i.gb, align 4, !tbaa !19
  %i.gg = fadd float %i.ge, %i.gf
  store float %i.gg, ptr %i.gb, align 4, !tbaa !19
  %i.gh = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.gh ; 2 uses
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.gh
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !19
  %i.gl = fmul float %i.cd, %i.gk
  %i.gm = load float, ptr %i.gi, align 4, !tbaa !19
  %i.gn = fadd float %i.gl, %i.gm
  store float %i.gn, ptr %i.gi, align 4, !tbaa !19
  %i.go = add nsw i64 %.05.i18.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.go, %i.ck
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !537

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.gv, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i197, %.lr.ph.i.preheader.i.i.i.i.i ] ; 3 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.021.i.i.i.i.i.i
  %i.gr = load <4 x float>, ptr %i.gq, align 1, !tbaa !47
  %i.gs = fmul <4 x float> %i.es, %i.gr
  %i.gt = load <4 x float>, ptr %i.gp, align 16, !tbaa !47
  %i.gu = fadd <4 x float> %i.gt, %i.gs
  store <4 x float> %i.gu, ptr %i.gp, align 16, !tbaa !47
  %i.gv = add nuw nsw i64 %.021.i.i.i.i.i.i, 4    ; 2 uses
  %i.gw = icmp slt i64 %i.gv, %i.eo
  br i1 %i.gw, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !509

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i, %middle.block, %.lr.ph.i17.i.i.i.i.i.i, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph
  %i.gx = add nsw i64 %.0185, -1                  ; 2 uses
  %i.gy = icmp sgt i64 %i.gx, %.047186
  %indvar.next199 = add i64 %indvar198, 1
  br i1 %i.gy, label %.lr.ph, label %.loopexit, !llvm.loop !538

.loopexit:                                        ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELin1EEEEEKS5_EEEERS5_RKNS0_IT_EE.exit, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEENS_10MatrixBaseEEaSINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS_9TransposeIKNS1_IKNS1_IKNS1_INS2_IfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS_14TriangularViewIKNS1_ISO_Lin1ELin1ELb0EEELj5EEELi0EEEEERS5_RKNS6_IT_EE.exit, %bb.b
  %i.gz = load ptr, ptr %2, align 8, !tbaa !378
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %.047186
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !19
  %i.hc = load ptr, ptr %0, align 8, !tbaa !459
  %i.hd = load i64, ptr %i.g, align 8, !tbaa !462
  %i.he = mul nsw i64 %i.hd, %.047186
  %i.hf = getelementptr [4 x i8], ptr %i.hc, i64 %i.he
  %i.hg = getelementptr [4 x i8], ptr %i.hf, i64 %.047186
  store float %i.hb, ptr %i.hg, align 4, !tbaa !19
  %i.hh = add nsw i64 %.047186, -1
  %i.hi = icmp sgt i64 %.047186, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.hi, label %bb.b, label %._crit_edge, !llvm.loop !539
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal13trmv_selectorILi6ELi1EE3runINS_9TransposeIKNS_5BlockIKNS5_INS_6MatrixIfLi2ELi2ELi0ELi2ELi2EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS4_IKNS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS6_IfLi1ELin1ELi1ELi1ELi2EEEEEKNS4_IKNS5_IKNS5_IS9_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEEEENS4_INS5_INS5_INS6_IfLin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEELi1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNS16_6ScalarE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %.sroa.065.0.copyload = load ptr, ptr %0, align 8
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.566.0.copyload = load i64, ptr %.sroa.566.0..sroa_idx, align 8
  %.sroa.667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.667.0.copyload = load i64, ptr %.sroa.667.0..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.055.0.copyload = load ptr, ptr %i.b, align 8 ; 2 uses
  %.sroa.758.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.758.0.copyload = load i64, ptr %.sroa.758.0..sroa_idx, align 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load float, ptr %i.c, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.e = load float, ptr %3, align 4, !tbaa !19
  %i.f = fmul float %i.d, %i.e
  store float %i.f, ptr %i.a, align 4, !tbaa !19
  %i.g = icmp ugt i64 %.sroa.758.0.copyload, 4611686018427387903
  br i1 %i.g, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !8
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit: ; preds = %bb.a
  %.not = icmp eq ptr %.sroa.055.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit
  %i.i = shl nuw i64 %.sroa.758.0.copyload, 2     ; 2 uses
  %i.j = icmp samesign ult i64 %.sroa.758.0.copyload, 32769
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw nsw i64 %i.i, 15
  %i.l = alloca i8, i64 %i.k, align 16            ; 2 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.i) #29 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !8
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
  unreachable

bb.g:                                             ; preds = %bb.d, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit, %bb.e
  %i.p = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit ], [ %i.l, %bb.d ], [ %i.m, %bb.e ] ; 2 uses
  %i.q = phi ptr [ %.sroa.055.0.copyload, %_ZN5Eigen8internal23check_size_for_overflowIfEEvm.exit ], [ %i.l, %bb.d ], [ %i.m, %bb.e ]
  %i.r = icmp samesign ugt i64 %.sroa.758.0.copyload, 32768 ; 2 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !540
  invoke void @_ZN5Eigen8internal32triangular_matrix_vector_productIlLi6EfLb0EfLb0ELi1ELi0EE3runEllPKflS4_lPflRS3_(i64 noundef %.sroa.667.0.copyload, i64 noundef %.sroa.566.0.copyload, ptr noundef %.sroa.065.0.copyload, i64 noundef 2, ptr noundef nonnull %i.q, i64 noundef 1, ptr noundef %i.s, i64 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  br i1 %i.r, label %bb.k, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit25

bb.i:                                             ; preds = %bb.g
  br i1 %i.r, label %bb.j, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef %i.p) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void

bb.k:                                             ; preds = %bb.h
  call void @free(ptr noundef %i.p) #26
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit25

_ZN5Eigen8internal28aligned_stack_memory_handlerIfED2Ev.exit25: ; preds = %bb.h, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal32triangular_matrix_vector_productIlLi6EfLb0EfLb0ELi1ELi0EE3runEllPKflS4_lPflRS3_(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef nonnull align 4 dereferenceable(4) %8) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 5 uses
  %10 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 5 uses
  %.sroa.speculated132 = tail call i64 @llvm.smin.i64(i64 %1, i64 %0) ; 4 uses
  %i.a = icmp sgt i64 %.sroa.speculated132, 0
  br i1 %i.a, label %.lr.ph146, label %._crit_edge147

.lr.ph146:                                        ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.b

._crit_edge147:                                   ; preds = %bb.k, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph146, %bb.k
  %indvars.iv = phi i64 [ %.sroa.speculated132, %.lr.ph146 ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %.0144 = phi i64 [ 0, %.lr.ph146 ], [ %i.dv, %bb.k ] ; 6 uses
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 8) ; 2 uses
  %i.d = add i64 %smin, -2
  %i.e = add i64 %smin, -3
  %i.f = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 1)
  %i.g = call i64 @llvm.umin.i64(i64 %i.f, i64 8)
  %i.h = sub nsw i64 %.sroa.speculated132, %.0144 ; 2 uses
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %i.h, i64 8) ; 3 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %bb.b
  %i.j = add i64 %.sroa.speculated, %.0144        ; 3 uses
  %i.k = sub i64 %1, %i.j                         ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %bb.j, label %bb.k

.lr.ph:                                           ; preds = %bb.b, %bb.i
  %.052143 = phi i64 [ %i.dn, %bb.i ], [ 0, %bb.b ] ; 5 uses
  %i.m = sub i64 %i.d, %.052143                   ; 2 uses
  %i.n = sub i64 %i.e, %.052143
  %i.o = add nuw nsw i64 %.052143, %.0144         ; 5 uses
  %i.p = xor i64 %.052143, -1
  %i.q = add nsw i64 %.sroa.speculated, %i.p      ; 9 uses
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %bb.c, label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre = mul nsw i64 %i.o, %7
  br label %bb.i

bb.c:                                             ; preds = %.lr.ph
  %i.s = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %i.t = load float, ptr %8, align 4, !tbaa !19
  %i.u = mul nsw i64 %i.o, %3
  %i.v = getelementptr inbounds [4 x i8], ptr %2, i64 %i.u
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.s ; 12 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.s ; 12 uses
  %i.y = and i64 %i.q, 9223372036854775800        ; 4 uses
  %i.z = and i64 %i.q, 9223372036854775804        ; 3 uses
  %.not.i.i.i = icmp samesign ult i64 %i.q, 4
  br i1 %.not.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = load <4 x float>, ptr %i.w, align 1, !tbaa !47
  %i.ab = load <4 x float>, ptr %i.x, align 1, !tbaa !47
  %i.ac = fmul <4 x float> %i.aa, %i.ab           ; 3 uses
  %i.ad = icmp samesign ugt i64 %i.q, 7
  br i1 %i.ad, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.af = load <4 x float>, ptr %i.ae, align 1, !tbaa !47
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ah = load <4 x float>, ptr %i.ag, align 1, !tbaa !47
  %i.ai = fmul <4 x float> %i.af, %i.ah           ; 2 uses
  %i.aj = icmp samesign ugt i64 %i.q, 15
  br i1 %i.aj, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.e
  %.075.lcssa.i.i.i = phi <4 x float> [ %i.ai, %bb.e ], [ %i.ay, %.lr.ph.i.i.i ]
  %.072.lcssa.i.i.i = phi <4 x float> [ %i.ac, %bb.e ], [ %i.ar, %.lr.ph.i.i.i ]
  %i.ak = fadd <4 x float> %.075.lcssa.i.i.i, %.072.lcssa.i.i.i ; 2 uses
  %i.al = icmp samesign ugt i64 %i.z, %i.y
  br i1 %i.al, label %bb.f, label %bb.g

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.05480.i.i.i = phi i64 [ %.054.i.i.i, %.lr.ph.i.i.i ], [ 8, %bb.e ] ; 4 uses
  %.054.in79.i.i.i = phi i64 [ %.05480.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %.07278.i.i.i = phi <4 x float> [ %i.ar, %.lr.ph.i.i.i ], [ %i.ac, %bb.e ]
  %.07577.i.i.i = phi <4 x float> [ %i.ay, %.lr.ph.i.i.i ], [ %i.ai, %bb.e ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.05480.i.i.i
  %i.an = load <4 x float>, ptr %i.am, align 1, !tbaa !47
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.05480.i.i.i
  %i.ap = load <4 x float>, ptr %i.ao, align 1, !tbaa !47
  %i.aq = fmul <4 x float> %i.an, %i.ap
  %i.ar = fadd <4 x float> %.07278.i.i.i, %i.aq   ; 2 uses
  %i.as = add nuw nsw i64 %.054.in79.i.i.i, 12    ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.as
  %i.au = load <4 x float>, ptr %i.at, align 1, !tbaa !47
end_hunk_0
