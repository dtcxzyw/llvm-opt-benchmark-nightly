Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/circumradius?download=true
inline.NumInlined: 27035
inline.NumDeleted: 14206
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 174
loop-unroll.NumUnrolled: 205
begin_hunk_0_@_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS4_INS4_IS6_Li4ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSY_:bb.a
  %i.bv = and i64 %i.bu, -2                       ; 2 uses
  %i.bw = add nsw i64 %i.bv, %.03552              ; 6 uses
  %i.bx = icmp sgt i64 %.03552, 0
  br i1 %i.bx, label %.preheader45.loopexit, label %.preheader45

.preheader45.loopexit:                            ; preds = %bb.c
  %i.by = load ptr, ptr %i.bq, align 8, !tbaa !1692, !nonnull !64, !align !1676 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.ca = load ptr, ptr %i.bz, align 16, !tbaa !1677, !noalias !1693
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.03453
  %i.cc = load ptr, ptr %0, align 8, !tbaa !1696, !nonnull !64, !align !65
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1654
  %.idx.i.i.i = shl i64 %.03453, 5
  %i.ce = getelementptr i8, ptr %i.cd, i64 %.idx.i.i.i ; 2 uses
  %i.cf = load double, ptr %i.by, align 16, !tbaa !30
  %i.cg = load double, ptr %i.cb, align 8, !tbaa !30
  %i.ch = fmul double %i.cf, %i.cg
  %i.ci = load double, ptr %i.ce, align 8, !tbaa !30
  %i.cj = fsub double %i.ci, %i.ch
  store double %i.cj, ptr %i.ce, align 8, !tbaa !30
  br label %.preheader45

.preheader45:                                     ; preds = %.preheader45.loopexit, %bb.c
  %i.ck = icmp sgt i64 %i.bu, 1
  br i1 %i.ck, label %.lr.ph49, label %.preheader

.lr.ph49:                                         ; preds = %.preheader45
  %.idx.i.i.i37 = shl i64 %.03453, 5
  br label %bb.d

.preheader:                                       ; preds = %bb.d, %.preheader45
  %i.cl = icmp slt i64 %i.bw, %i.bj
  br i1 %i.cl, label %.lr.ph51, label %._crit_edge

.lr.ph51:                                         ; preds = %.preheader
  %i.cm = load ptr, ptr %0, align 8, !tbaa !1696, !nonnull !64, !align !65
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !1654 ; 3 uses
  %.idx.i.i.i38 = shl i64 %.03453, 5              ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 %.idx.i.i.i38 ; 2 uses
  %i.cp = load ptr, ptr %i.bq, align 8, !tbaa !1692, !nonnull !64, !align !1676 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.cr = load ptr, ptr %i.cq, align 16, !tbaa !1677, !noalias !1697 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.03453 ; 3 uses
  %i.ct = add i64 %.03552, %i.bv
  %i.cu = sub i64 %i.bj, %i.ct                    ; 3 uses
  %min.iters.check87 = icmp ult i64 %i.cu, 6
  br i1 %min.iters.check87, label %scalar.ph86.preheader, label %vector.memcheck73

vector.memcheck73:                                ; preds = %.lr.ph51
  %i.cv = shl i64 %i.bu, 3
  %i.cw = and i64 %i.cv, -16                      ; 2 uses
  %i.cx = shl i64 %.03552, 3                      ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cn, i64 %.idx.i.i.i38
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.cw
  %scevgep74 = getelementptr i8, ptr %i.cz, i64 %i.cx ; 2 uses
  %i.da = getelementptr i8, ptr %i.cn, i64 %i.br
  %scevgep75 = getelementptr i8, ptr %i.da, i64 %i.bs ; 2 uses
  %i.db = getelementptr i8, ptr %i.cp, i64 %i.cw
  %scevgep76 = getelementptr i8, ptr %i.db, i64 %i.cx
  %scevgep77 = getelementptr i8, ptr %i.cp, i64 %i.br
  %i.dc = getelementptr i8, ptr %i.cr, i64 %i.bt
  %scevgep78 = getelementptr i8, ptr %i.dc, i64 8
  %bound079 = icmp ult ptr %scevgep74, %scevgep77
  %bound180 = icmp ult ptr %scevgep76, %scevgep75
  %found.conflict81 = and i1 %bound079, %bound180
  %bound082 = icmp ult ptr %scevgep74, %scevgep78
  %bound183 = icmp ult ptr %i.cs, %scevgep75
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %found.conflict81, %found.conflict84
  br i1 %conflict.rdx85, label %scalar.ph86.preheader, label %vector.ph88

vector.ph88:                                      ; preds = %vector.memcheck73
  %n.vec89 = and i64 %i.cu, -4                    ; 3 uses
  %i.dd = add i64 %i.bw, %n.vec89
  %i.de = load double, ptr %i.cs, align 8, !tbaa !30, !alias.scope !1700
  %broadcast.splatinsert94 = insertelement <2 x double> poison, double %i.de, i64 0
  %broadcast.splat95 = shufflevector <2 x double> %broadcast.splatinsert94, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph88
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next98, %vector.body90 ] ; 2 uses
  %i.df = add i64 %i.bw, %index91                 ; 2 uses
  %i.dg = getelementptr [8 x i8], ptr %i.co, i64 %i.df ; 3 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.df ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %wide.load92 = load <2 x double>, ptr %i.dh, align 8, !tbaa !30, !alias.scope !1703
  %wide.load93 = load <2 x double>, ptr %i.di, align 8, !tbaa !30, !alias.scope !1703
  %i.dj = fmul <2 x double> %wide.load92, %broadcast.splat95
  %i.dk = fmul <2 x double> %wide.load93, %broadcast.splat95
  %i.dl = getelementptr i8, ptr %i.dg, i64 16     ; 2 uses
  %wide.load96 = load <2 x double>, ptr %i.dg, align 8, !tbaa !30, !alias.scope !1705, !noalias !1707
  %wide.load97 = load <2 x double>, ptr %i.dl, align 8, !tbaa !30, !alias.scope !1705, !noalias !1707
  %i.dm = fsub <2 x double> %wide.load96, %i.dj
  %i.dn = fsub <2 x double> %wide.load97, %i.dk
  store <2 x double> %i.dm, ptr %i.dg, align 8, !tbaa !30, !alias.scope !1705, !noalias !1707
  store <2 x double> %i.dn, ptr %i.dl, align 8, !tbaa !30, !alias.scope !1705, !noalias !1707
  %index.next98 = add nuw i64 %index91, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next98, %n.vec89
  br i1 %i.do, label %middle.block99, label %vector.body90, !llvm.loop !1708

middle.block99:                                   ; preds = %vector.body90
  %cmp.n100 = icmp eq i64 %i.cu, %n.vec89
  br i1 %cmp.n100, label %._crit_edge, label %scalar.ph86.preheader

scalar.ph86.preheader:                            ; preds = %vector.memcheck73, %.lr.ph51, %middle.block99
  %.050.ph = phi i64 [ %i.bw, %vector.memcheck73 ], [ %i.bw, %.lr.ph51 ], [ %i.dd, %middle.block99 ]
  br label %scalar.ph86

bb.d:                                             ; preds = %.lr.ph49, %bb.d
  %.03248 = phi i64 [ %.03552, %.lr.ph49 ], [ %i.eh, %bb.d ] ; 3 uses
  %i.dp = load ptr, ptr %0, align 8, !tbaa !1696, !nonnull !64, !align !65
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !1654
  %i.dr = getelementptr i8, ptr %i.dq, i64 %.idx.i.i.i37
  %i.ds = getelementptr [8 x i8], ptr %i.dr, i64 %.03248 ; 2 uses
  %i.dt = load ptr, ptr %i.bq, align 8, !tbaa !1692, !nonnull !64, !align !1676 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 80
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 88
  %i.dw = load ptr, ptr %i.du, align 16, !tbaa !1709
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %.03248
  %i.dy = load <2 x double>, ptr %i.dx, align 1, !tbaa !82
  %i.dz = load ptr, ptr %i.dv, align 8, !tbaa !1642
  %i.ea = getelementptr [8 x i8], ptr %i.dz, i64 %.03453
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !30
  %i.ec = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x double> %i.dy, %i.ed
  %i.ef = load <2 x double>, ptr %i.ds, align 16, !tbaa !82
  %i.eg = fsub <2 x double> %i.ef, %i.ee
  store <2 x double> %i.eg, ptr %i.ds, align 16, !tbaa !82
  %i.eh = add nsw i64 %.03248, 2                  ; 2 uses
  %i.ei = icmp slt i64 %i.eh, %i.bw
  br i1 %i.ei, label %bb.d, label %.preheader, !llvm.loop !1710

._crit_edge:                                      ; preds = %scalar.ph86, %middle.block99, %.preheader
  %i.ej = srem i64 %.03552, 2
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bj, i64 %i.ej)
  %i.ek = add nuw nsw i64 %.03453, 1              ; 2 uses
  %exitcond56.not = icmp eq i64 %i.ek, %i.bl
  br i1 %exitcond56.not, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS4_INS4_IS6_Li4ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit, label %bb.c, !llvm.loop !1711

scalar.ph86:                                      ; preds = %scalar.ph86.preheader, %scalar.ph86
  %.050 = phi i64 [ %i.es, %scalar.ph86 ], [ %.050.ph, %scalar.ph86.preheader ] ; 3 uses
  %i.el = getelementptr [8 x i8], ptr %i.co, i64 %.050 ; 2 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %.050
  %i.en = load double, ptr %i.em, align 8, !tbaa !30
  %i.eo = load double, ptr %i.cs, align 8, !tbaa !30
  %i.ep = fmul double %i.en, %i.eo
  %i.eq = load double, ptr %i.el, align 8, !tbaa !30
  %i.er = fsub double %i.eq, %i.ep
  store double %i.er, ptr %i.el, align 8, !tbaa !30
  %i.es = add nsw i64 %.050, 1                    ; 2 uses
  %i.et = icmp slt i64 %i.es, %i.bj
  br i1 %i.et, label %scalar.ph86, label %._crit_edge, !llvm.loop !1712

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS4_INS4_IS6_Li4ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi4EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit: ; preds = %._crit_edge.i, %._crit_edge, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, %.preheader.lr.ph.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEEE11_solve_implINS1_IdLi4ELi1ELi0ELi4ELi1EEES5_EEvRKT_RT0_(ptr noundef nonnull align 16 dereferenceable(344) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, ptr noundef nonnull align 16 dereferenceable(32) %2) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Block.4036", align 8 ; 10 uses
  %4 = alloca %"class.Eigen::Block.4047", align 8 ; 9 uses
  %5 = alloca %"class.Eigen::Matrix.1717", align 8 ; 3 uses
  %6 = alloca %"class.Eigen::Matrix.391", align 16 ; 12 uses
  %7 = alloca %"class.Eigen::TriangularView.4005", align 8 ; 9 uses
  %8 = alloca %"class.Eigen::Block.432", align 8  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1563 ; 14 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !1713
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.e = icmp sgt i64 %i.b, 0                     ; 2 uses
  br i1 %i.e, label %.lr.ph.i.i, label %_ZNK5Eigen18TriangularViewImplIKNS_5BlockIKNS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELj2ENS_5DenseEE12solveInPlaceINS1_INS2_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEEvRKNS_10MatrixBaseIT_EE.exit

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 48
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i, %.lr.ph.i.i
  %.061.i.i = phi i64 [ %i.s, %.lr.ph.split.i.i ], [ 0, %.lr.ph.i.i ] ; 8 uses
  %i.q = sub nsw i64 4, %.061.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.061.i.i
  store ptr %i.r, ptr %3, align 8, !tbaa !1714, !alias.scope !1716
  store i64 %i.q, ptr %i.f, align 8, !tbaa !46, !alias.scope !1716
  store i64 1, ptr %i.g, align 8, !tbaa !46, !alias.scope !1716
  store ptr %6, ptr %i.h, align 8, !tbaa !1719, !alias.scope !1716
  store i64 %.061.i.i, ptr %i.i, align 8, !tbaa !46, !alias.scope !1716
  store i64 0, ptr %i.j, align 8, !tbaa !46, !alias.scope !1716
  store i64 4, ptr %i.k, align 8, !tbaa !1721, !alias.scope !1716
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.s = add nuw nsw i64 %.061.i.i, 1             ; 4 uses
  %i.t = sub nsw i64 3, %.061.i.i
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.s
  %.idx.i.i.i.i.i.i.i = shl nsw i64 %.061.i.i, 5
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.i.i.i.i.i.i.i
  store ptr %i.v, ptr %4, align 8, !tbaa !1724, !alias.scope !1726
  store i64 %i.t, ptr %i.l, align 8, !tbaa !46, !alias.scope !1726
  store ptr %0, ptr %i.m, align 8, !tbaa !312, !alias.scope !1726
  store i64 %i.s, ptr %i.n, align 8, !tbaa !46, !alias.scope !1726
  store i64 %.061.i.i, ptr %i.o, align 8, !tbaa !46, !alias.scope !1726
  store i64 4, ptr %i.p, align 8, !tbaa !1731, !alias.scope !1726
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.061.i.i
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %exitcond.not = icmp eq i64 %i.s, %i.b
  br i1 %exitcond.not, label %_ZNK5Eigen18TriangularViewImplIKNS_5BlockIKNS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELj2ENS_5DenseEE12solveInPlaceINS1_INS2_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEEvRKNS_10MatrixBaseIT_EE.exit, label %.lr.ph.split.i.i, !llvm.loop !1733

_ZNK5Eigen18TriangularViewImplIKNS_5BlockIKNS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELj2ENS_5DenseEE12solveInPlaceINS1_INS2_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEEvRKNS_10MatrixBaseIT_EE.exit: ; preds = %.lr.ph.split.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %0, ptr %7, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.b, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.b, ptr %.sroa.536.0..sroa_idx, align 8
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %0, ptr %.sroa.637.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i64 4, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store ptr %6, ptr %8, align 8, !tbaa !1734, !alias.scope !1736
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.b, ptr %i.x, align 8, !tbaa !46, !alias.scope !1736
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %6, ptr %i.y, align 8, !tbaa !1719, !alias.scope !1736
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 0, ptr %i.z, align 8, !tbaa !46, !alias.scope !1736
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i64 4, ptr %i.aa, align 8, !tbaa !1739, !alias.scope !1736
  call void @_ZN5Eigen8internal26triangular_solver_selectorIKNS_5BlockIKNS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEENS2_INS3_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEELi1ELi2ELi0ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br i1 %i.e, label %.lr.ph, label %.lr.ph52

.lr.ph:                                           ; preds = %_ZNK5Eigen18TriangularViewImplIKNS_5BlockIKNS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELj2ENS_5DenseEE12solveInPlaceINS1_INS2_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEEvRKNS_10MatrixBaseIT_EE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.ac = icmp ult i64 %i.b, 4
  br i1 %i.ac, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.b, 9223372036854775804
  br label %bb.e

.preheader.unr-lcssa:                             ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.unr-lcssa, %.lr.ph
  %.01850.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.bu, %.preheader.unr-lcssa ]
  %lcmp.mod55 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod55)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.01850.epil = phi i64 [ %.01850.epil.init, %.epil.preheader ], [ %i.aj, %bb.d ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.01850.epil
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.01850.epil
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !29
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ag
  %i.ai = load double, ptr %i.ad, align 8, !tbaa !30
  store double %i.ai, ptr %i.ah, align 8, !tbaa !30
  %i.aj = add nuw nsw i64 %.01850.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %bb.d, !llvm.loop !1742

.preheader:                                       ; preds = %bb.d, %.preheader.unr-lcssa
  %i.ak = icmp samesign ult i64 %i.b, 4
  br i1 %i.ak, label %.lr.ph52, label %._crit_edge

.lr.ph52:                                         ; preds = %_ZNK5Eigen18TriangularViewImplIKNS_5BlockIKNS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELj2ENS_5DenseEE12solveInPlaceINS1_INS2_IdLi4ELi1ELi0ELi4ELi1EEELin1ELi1ELb0EEEEEvRKNS_10MatrixBaseIT_EE.exit, %.preheader
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.am = sub i64 0, %i.b
  %xtraiter56 = and i64 %i.am, 3                  ; 2 uses
  %lcmp.mod57.not = icmp eq i64 %xtraiter56, 0
  br i1 %lcmp.mod57.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph52, %.prol.preheader
  %.051.prol = phi i64 [ %i.ar, %.prol.preheader ], [ %i.b, %.lr.ph52 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph52 ]
  %i.an = getelementptr inbounds [4 x i8], ptr %i.al, i64 %.051.prol
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !29
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ap
  store double 0.000000e+00, ptr %i.aq, align 8, !tbaa !30
  %i.ar = add i64 %.051.prol, 1                   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter56
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1743

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph52
  %.051.unr = phi i64 [ %i.b, %.lr.ph52 ], [ %i.ar, %.prol.preheader ]
  %i.as = icmp ult i64 %i.b, 4
  br i1 %i.as, label %._crit_edge, label %.lr.ph52.new

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %.01850 = phi i64 [ 0, %.lr.ph.new ], [ %i.bu, %bb.e ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.e ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.01850
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.01850
  %i.av = load i32, ptr %i.au, align 16, !tbaa !29
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %2, i64 %i.aw
  %i.ay = load double, ptr %i.at, align 16, !tbaa !30
  store double %i.ay, ptr %i.ax, align 8, !tbaa !30
  %i.az = or disjoint i64 %.01850, 1              ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.az
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.az
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !29
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bd
  %i.bf = load double, ptr %i.ba, align 8, !tbaa !30
  store double %i.bf, ptr %i.be, align 8, !tbaa !30
  %i.bg = or disjoint i64 %.01850, 2              ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.bg
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bg
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !29
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bk
  %i.bm = load double, ptr %i.bh, align 16, !tbaa !30
  store double %i.bm, ptr %i.bl, align 8, !tbaa !30
  %i.bn = or disjoint i64 %.01850, 3              ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.bn
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bn
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !29
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %2, i64 %i.br
  %i.bt = load double, ptr %i.bo, align 8, !tbaa !30
  store double %i.bt, ptr %i.bs, align 8, !tbaa !30
  %i.bu = add nuw nsw i64 %.01850, 4              ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.unr-lcssa, label %bb.e, !llvm.loop !1744

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph52.new, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.f

.lr.ph52.new:                                     ; preds = %.prol.loopexit, %.lr.ph52.new
  %.051 = phi i64 [ %i.co, %.lr.ph52.new ], [ %.051.unr, %.prol.loopexit ] ; 6 uses
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.al, i64 %.051
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !29
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bx
  store double 0.000000e+00, ptr %i.by, align 8, !tbaa !30
  %i.bz = getelementptr [4 x i8], ptr %i.al, i64 %.051
  %i.ca = getelementptr i8, ptr %i.bz, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !29
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cc
  store double 0.000000e+00, ptr %i.cd, align 8, !tbaa !30
  %i.ce = getelementptr [4 x i8], ptr %i.al, i64 %.051
  %i.cf = getelementptr i8, ptr %i.ce, i64 8
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !29
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ch
  store double 0.000000e+00, ptr %i.ci, align 8, !tbaa !30
  %i.cj = getelementptr [4 x i8], ptr %i.al, i64 %.051
  %i.ck = getelementptr i8, ptr %i.cj, i64 12
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !29
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cm
  store double 0.000000e+00, ptr %i.cn, align 8, !tbaa !30
  %i.co = add i64 %.051, 4
  %exitcond54.not.3 = icmp eq i64 %.051, 0
  br i1 %exitcond54.not.3, label %._crit_edge, label %.lr.ph52.new, !llvm.loop !1745

bb.f:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi4ELi1ELi0ELi4ELi1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IdLi4ELi4ELi0ELi4ELi4EEELin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::evaluator.4521", align 16 ; 19 uses
  %i.a = ptrtoaddr ptr %4 to i64
  %5 = alloca %"struct.Eigen::internal::evaluator.4361", align 8 ; 4 uses
  %6 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.4527", align 8 ; 7 uses
  %7 = alloca %"struct.Eigen::internal::sub_assign_op", align 1 ; 3 uses
  %8 = alloca %"class.Eigen::Block.4339", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !46   ; 9 uses
  %i.d = icmp eq i64 %i.c, 1
  %i.e = load double, ptr %2, align 8, !tbaa !30  ; 3 uses
  br i1 %i.d, label %bb.b, label %bb.d

end_hunk_0
begin_hunk_1_@_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEEE14computeInPlaceEv:bb.a
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i32 4, ptr %i.da, align 8, !tbaa !29
  %i.db = load i64, ptr %i.bt, align 8, !tbaa !795
  %sext80 = shl i64 %i.db, 32
  %i.dc = ashr exact i64 %sext80, 30
  %i.dd = getelementptr inbounds i8, ptr %i.cz, i64 %i.dc ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !29
  store i32 %i.de, ptr %i.cz, align 8, !tbaa !29
  store i32 0, ptr %i.dd, align 4, !tbaa !29
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !795
  %sext80.1 = shl i64 %i.dg, 32
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.di = ashr exact i64 %sext80.1, 30
  %i.dj = getelementptr inbounds i8, ptr %i.cz, i64 %i.di ; 2 uses
  %i.dk = load i32, ptr %i.dh, align 4, !tbaa !29
  %i.dl = load i32, ptr %i.dj, align 4, !tbaa !29
  store i32 %i.dl, ptr %i.dh, align 4, !tbaa !29
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !29
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !795
  %sext80.2 = shl i64 %i.dn, 32
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.dp = ashr exact i64 %sext80.2, 30
  %i.dq = getelementptr inbounds i8, ptr %i.cz, i64 %i.dp ; 2 uses
  %i.dr = load i32, ptr %i.do, align 8, !tbaa !29
  %i.ds = load i32, ptr %i.dq, align 4, !tbaa !29
  store i32 %i.ds, ptr %i.do, align 8, !tbaa !29
  store i32 %i.dr, ptr %i.dq, align 4, !tbaa !29
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !795
  %sext80.3 = shl i64 %i.du, 32
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 2 uses
  %i.dw = ashr exact i64 %sext80.3, 30
  %i.dx = getelementptr inbounds i8, ptr %i.cz, i64 %i.dw ; 2 uses
  %i.dy = load i32, ptr %i.dv, align 4, !tbaa !29
  %i.dz = load i32, ptr %i.dx, align 4, !tbaa !29
  store i32 %i.dz, ptr %i.dv, align 4, !tbaa !29
  store i32 %i.dy, ptr %i.dx, align 4, !tbaa !29
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !795
  %sext80.4 = shl i64 %i.eb, 32
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.ed = ashr exact i64 %sext80.4, 30
  %i.ee = getelementptr inbounds i8, ptr %i.cz, i64 %i.ed ; 2 uses
  %i.ef = load i32, ptr %i.ec, align 8, !tbaa !29
  %i.eg = load i32, ptr %i.ee, align 4, !tbaa !29
  store i32 %i.eg, ptr %i.ec, align 8, !tbaa !29
  store i32 %i.ef, ptr %i.ee, align 4, !tbaa !29
  %i.eh = and i64 %.1, 1
  %.not = icmp eq i64 %i.eh, 0
  %i.ei = select i1 %.not, i64 1, i64 -1
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !2016
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 424
  store i8 1, ptr %i.ek, align 8, !tbaa !627
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.073152 = phi i64 [ 0, %bb.a ], [ %i.gs, %._crit_edge ] ; 24 uses
  %.075151 = phi i64 [ 0, %bb.a ], [ %.1, %._crit_edge ] ; 2 uses
  %i.el = sub nsw i64 4, %.073152                 ; 2 uses
  %i.em = and i64 %i.el, -2
  %i.en = and i64 %i.el, 1                        ; 2 uses
  %i.eo = add i64 %.073152, %i.em
  %i.ep = sub nsw i64 4, %.073152                 ; 3 uses
  %i.eq = sub nuw nsw i64 5, %.073152             ; 3 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.073152 ; 6 uses
  %i.es = load double, ptr %i.er, align 8, !tbaa !30 ; 5 uses
  %.not146 = icmp eq i64 %.073152, 4
  br i1 %.not146, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi5ELi1ELi1ELi5EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit, label %.preheader.i.i.i.i.preheader

.preheader.i.i.i.i.preheader:                     ; preds = %bb.c
  %xtraiter = and i64 %i.ep, 1
  %i.et = icmp eq i64 %.073152, 3
  br i1 %i.et, label %.preheader.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.preheader.new

.preheader.i.i.i.i.preheader.new:                 ; preds = %.preheader.i.i.i.i.preheader
  %unroll_iter = and i64 %i.ep, -2
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i, %.preheader.i.i.i.i.preheader.new
  %.sroa.7.0.i.i = phi double [ %i.es, %.preheader.i.i.i.i.preheader.new ], [ %.sroa.7.1.i.i.1, %.preheader.i.i.i.i ]
  %.sroa.5.0.i.i = phi i64 [ 0, %.preheader.i.i.i.i.preheader.new ], [ %.sroa.5.1.i.i.1, %.preheader.i.i.i.i ]
  %.02030.i.i.i.i = phi i64 [ 1, %.preheader.i.i.i.i.preheader.new ], [ %i.fb, %.preheader.i.i.i.i ] ; 4 uses
  %.promoted2829.i.i.i.i = phi double [ %i.es, %.preheader.i.i.i.i.preheader.new ], [ %.promoted27.i.i.i.i.1, %.preheader.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i ]
  %i.eu = getelementptr [8 x i8], ptr %i.er, i64 %.02030.i.i.i.i
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !30 ; 3 uses
  %i.ew = fcmp ogt double %i.ev, %.promoted2829.i.i.i.i ; 3 uses
  %.sroa.7.1.i.i = select i1 %i.ew, double %i.ev, double %.sroa.7.0.i.i
  %.sroa.5.1.i.i = select i1 %i.ew, i64 %.02030.i.i.i.i, i64 %.sroa.5.0.i.i
  %.promoted27.i.i.i.i = select i1 %i.ew, double %i.ev, double %.promoted2829.i.i.i.i ; 2 uses
  %i.ex = add nuw nsw i64 %.02030.i.i.i.i, 1      ; 2 uses
  %i.ey = getelementptr [8 x i8], ptr %i.er, i64 %i.ex
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !30 ; 3 uses
  %i.fa = fcmp ogt double %i.ez, %.promoted27.i.i.i.i ; 3 uses
  %.sroa.7.1.i.i.1 = select i1 %i.fa, double %i.ez, double %.sroa.7.1.i.i ; 3 uses
  %.sroa.5.1.i.i.1 = select i1 %i.fa, i64 %i.ex, i64 %.sroa.5.1.i.i ; 3 uses
  %.promoted27.i.i.i.i.1 = select i1 %i.fa, double %i.ez, double %.promoted27.i.i.i.i ; 2 uses
  %i.fb = add nuw nsw i64 %.02030.i.i.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi5ELi1ELi1ELi5EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa, label %.preheader.i.i.i.i, !llvm.loop !2017

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi5ELi1ELi1ELi5EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi5ELi1ELi1ELi5EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit, label %.preheader.i.i.i.i.epil.preheader

.preheader.i.i.i.i.epil.preheader:                ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi5ELi1ELi1ELi5EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa, %.preheader.i.i.i.i.preheader
  %.sroa.7.0.i.i.epil.init = phi double [ %i.es, %.preheader.i.i.i.i.preheader ], [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi5ELi1ELi1ELi5EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ]
  %.sroa.5.0.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.preheader ], [ %.sroa.5.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi5ELi1ELi1ELi5EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ]
  %.02030.i.i.i.i.epil.init = phi i64 [ 1, %.preheader.i.i.i.i.preheader ], [ %i.fb, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi5ELi1ELi1ELi5EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.promoted2829.i.i.i.i.epil.init = phi double [ %i.es, %.preheader.i.i.i.i.preheader ], [ %.promoted27.i.i.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi5ELi1ELi1ELi5EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ]
  %lcmp.mod171 = trunc i64 %i.ep to i1
  call void @llvm.assume(i1 %lcmp.mod171)
  %i.fc = getelementptr [8 x i8], ptr %i.er, i64 %.02030.i.i.i.i.epil.init
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !30 ; 2 uses
  %i.fe = fcmp ogt double %i.fd, %.promoted2829.i.i.i.i.epil.init ; 2 uses
  %.sroa.7.1.i.i.epil = select i1 %i.fe, double %i.fd, double %.sroa.7.0.i.i.epil.init
  %.sroa.5.1.i.i.epil = select i1 %i.fe, i64 %.02030.i.i.i.i.epil.init, i64 %.sroa.5.0.i.i.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi5ELi1ELi1ELi5EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi5ELi1ELi1ELi5EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit: ; preds = %.preheader.i.i.i.i.epil.preheader, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi5ELi1ELi1ELi5EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa, %bb.c
  %.sroa.7.2.i.i = phi double [ %i.es, %bb.c ], [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi5ELi1ELi1ELi5EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ], [ %.sroa.7.1.i.i.epil, %.preheader.i.i.i.i.epil.preheader ] ; 2 uses
  %.sroa.5.2.i.i = phi i64 [ 0, %bb.c ], [ %.sroa.5.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi5ELi1ELi1ELi5EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit.loopexit.unr-lcssa ], [ %.sroa.5.1.i.i.epil, %.preheader.i.i.i.i.epil.preheader ] ; 2 uses
  %i.ff = add nsw i64 %.sroa.5.2.i.i, %.073152    ; 4 uses
  %i.fg = load i64, ptr %i.cf, align 8, !tbaa !2014
  %i.fh = icmp eq i64 %i.fg, 5
  br i1 %i.fh, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi5ELi1ELi1ELi5EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit
  %i.fi = fmul double %.sroa.7.2.i.i, %.sroa.7.2.i.i
  %i.fj = uitofp nneg i64 %i.eq to double
  %i.fk = fmul double %i.ce, %i.fj
  %i.fl = fcmp olt double %i.fi, %i.fk
  br i1 %i.fl, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 %.073152, ptr %i.cf, align 8, !tbaa !2014
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi1ELi5ELi1ELi1ELi5EEELi1ELin1ELb0EEEE8maxCoeffIlEEdPT_.exit
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.073152
  store i64 %i.ff, ptr %i.fm, align 8, !tbaa !795
  %.not81 = icmp eq i64 %.sroa.5.2.i.i, 0
  %.pre = mul nuw nsw i64 %.073152, 40            ; 3 uses
  br i1 %.not81, label %._crit_edge157, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 %.pre ; 4 uses
  %.idx.i.i.i.i83 = mul nsw i64 %i.ff, 40
  %i.fo = getelementptr inbounds i8, ptr %0, i64 %.idx.i.i.i.i83 ; 4 uses
  %i.fp = load <2 x double>, ptr %i.fo, align 8, !tbaa !82
  %i.fq = load <2 x double>, ptr %i.fn, align 8, !tbaa !82
  store <2 x double> %i.fq, ptr %i.fo, align 8, !tbaa !82
  store <2 x double> %i.fp, ptr %i.fn, align 8, !tbaa !82
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 2 uses
  %i.fs = load <2 x double>, ptr %i.fr, align 8, !tbaa !82
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fn, i64 16 ; 2 uses
  %i.fu = load <2 x double>, ptr %i.ft, align 8, !tbaa !82
  store <2 x double> %i.fu, ptr %i.fr, align 8, !tbaa !82
  store <2 x double> %i.fs, ptr %i.ft, align 8, !tbaa !82
  %i.fv = getelementptr i8, ptr %i.fn, i64 32     ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fo, i64 32     ; 2 uses
  %i.fx = load double, ptr %i.fv, align 8, !tbaa !30
  %i.fy = load double, ptr %i.fw, align 8, !tbaa !30
  store double %i.fy, ptr %i.fv, align 8, !tbaa !30
  store double %i.fx, ptr %i.fw, align 8, !tbaa !30
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ff ; 2 uses
  %i.ga = load double, ptr %i.er, align 8, !tbaa !30
  %i.gb = load double, ptr %i.fz, align 8, !tbaa !30
  store double %i.gb, ptr %i.er, align 8, !tbaa !30
  store double %i.ga, ptr %i.fz, align 8, !tbaa !30
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.073152 ; 2 uses
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ff ; 2 uses
  %i.ge = load double, ptr %i.gc, align 8, !tbaa !30
  %i.gf = load double, ptr %i.gd, align 8, !tbaa !30
  store double %i.gf, ptr %i.gc, align 8, !tbaa !30
  store double %i.ge, ptr %i.gd, align 8, !tbaa !30
  %i.gg = add nsw i64 %.075151, 1
  br label %._crit_edge157

._crit_edge157:                                   ; preds = %bb.f, %bb.g
  %.1 = phi i64 [ %i.gg, %bb.g ], [ %.075151, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 %.pre ; 4 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %.073152 ; 2 uses
  store ptr %i.gi, ptr %2, align 8, !tbaa !2018, !alias.scope !2020
  store i64 %i.eq, ptr %i.ch, align 8, !tbaa !46, !alias.scope !2020
  store ptr %i.gh, ptr %i.ci, align 8
  store ptr %0, ptr %.sroa.5107.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.6108.0..sroa_idx, align 8
  store i64 %.073152, ptr %.sroa.7109.0..sroa_idx, align 8
  store i64 5, ptr %.sroa.8110.0..sroa_idx, align 8
  store i64 %.073152, ptr %i.cj, align 8, !tbaa !46, !alias.scope !2020
  store i64 5, ptr %i.ck, align 8, !tbaa !2023, !alias.scope !2020
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.073152 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.gk = sub nsw i64 4, %.073152                 ; 7 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store ptr %i.gl, ptr %1, align 8, !tbaa !2032
  store i64 %i.gk, ptr %i.cl, align 8, !tbaa !46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.cm, ptr noundef nonnull align 8 dereferenceable(96) %2, i64 96, i1 false)
  store i64 1, ptr %i.cn, align 8, !tbaa !46
  store i64 5, ptr %i.co, align 8, !tbaa !2034
  call void @_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELi5ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RdSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.gj, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.gm = load double, ptr %i.a, align 8, !tbaa !30 ; 2 uses
  %i.gn = getelementptr [8 x i8], ptr %0, i64 %.073152 ; 3 uses
  %i.go = getelementptr i8, ptr %i.gn, i64 %.pre
  store double %i.gm, ptr %i.go, align 8, !tbaa !30
  %i.gp = call noundef double @llvm.fabs.f64(double %i.gm) ; 2 uses
  %i.gq = load double, ptr %i.cg, align 8, !tbaa !2015
  %i.gr = fcmp ogt double %i.gp, %i.gq
  br i1 %i.gr, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge157
  store double %i.gp, ptr %i.cg, align 8, !tbaa !2015
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge157
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.gs = add nuw nsw i64 %.073152, 1             ; 9 uses
  %.idx.i.i.i.i85 = mul nuw nsw i64 %i.gs, 40
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gn, i64 %.idx.i.i.i.i85
  store ptr %i.gt, ptr %3, align 8, !tbaa !611, !alias.scope !2039
  store i64 %i.eq, ptr %i.cp, align 8, !tbaa !46, !alias.scope !2039
  store i64 %i.gk, ptr %i.cq, align 8, !tbaa !46, !alias.scope !2039
  store ptr %0, ptr %i.cr, align 8, !tbaa !616, !alias.scope !2039
  store i64 %.073152, ptr %i.cs, align 8, !tbaa !46, !alias.scope !2039
  store i64 %i.gs, ptr %i.ct, align 8, !tbaa !46, !alias.scope !2039
  store i64 5, ptr %i.cu, align 8, !tbaa !618, !alias.scope !2039
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.gs
  store ptr %i.gu, ptr %4, align 8, !tbaa !2018, !alias.scope !2042
  store i64 %i.gk, ptr %i.cv, align 8, !tbaa !46, !alias.scope !2042
  store ptr %i.gh, ptr %i.cw, align 8
  store ptr %0, ptr %.sroa.5101.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.6102.0..sroa_idx, align 8
  store i64 %.073152, ptr %.sroa.7103.0..sroa_idx, align 8
  store i64 5, ptr %.sroa.8104.0..sroa_idx, align 8
  store i64 %i.gs, ptr %i.cx, align 8, !tbaa !46, !alias.scope !2042
  store i64 5, ptr %i.cy, align 8, !tbaa !2023, !alias.scope !2042
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.gs
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS_11VectorBlockINS1_IS3_Li5ELi1ELb1EEELin1EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.gj, ptr noundef nonnull %i.gv)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.gs
  %i.gw = icmp samesign ult i64 %.073152, 4
  br i1 %i.gw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i
  %i.gx = and i64 %i.gk, 4                        ; 2 uses
  %i.gy = and i64 %i.gk, 6                        ; 4 uses
  %.not.i.i.i.i.i = icmp eq i64 %.073152, 3
  %i.gz = icmp eq i64 %.073152, 0
  %i.ha = icmp samesign ugt i64 %i.gy, %i.gx
  %.not164 = icmp eq i64 %i.gy, %i.gk
  %lcmp.mod173.not = icmp eq i64 %i.en, 0
  %i.hb = add nsw i64 %i.eo, -1
  %i.hc = icmp ult i64 %i.hb, 3
  br label %bb.j

._crit_edge:                                      ; preds = %bb.r, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %exitcond154.not = icmp eq i64 %i.gs, 5
  br i1 %exitcond154.not, label %bb.b, label %bb.c, !llvm.loop !2045

bb.j:                                             ; preds = %.lr.ph, %bb.r
  %.072150 = phi i64 [ %i.gs, %.lr.ph ], [ %i.ji, %bb.r ] ; 4 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.072150 ; 2 uses
  %i.he = load double, ptr %i.hd, align 8, !tbaa !30 ; 4 uses
  %i.hf = fcmp une double %i.he, 0.000000e+00
  br i1 %i.hf, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %.idx.i87 = mul nuw nsw i64 %.072150, 40        ; 2 uses
  %i.hg = getelementptr i8, ptr %i.gn, i64 %.idx.i87
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !30
  %i.hi = call noundef double @llvm.fabs.f64(double %i.hh)
  %i.hj = fdiv double %i.hi, %i.he                ; 2 uses
  %i.hk = fadd double %i.hj, 1.000000e+00
  %i.hl = fsub double 1.000000e+00, %i.hj
  %i.hm = fmul double %i.hk, %i.hl                ; 2 uses
  %i.hn = fcmp olt double %i.hm, 0.000000e+00
  %i.ho = select i1 %i.hn, double 0.000000e+00, double %i.hm ; 2 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.072150 ; 2 uses
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !30
  %i.hr = fdiv double %i.he, %i.hq                ; 2 uses
  %i.hs = fmul double %i.hr, %i.hr
  %i.ht = fmul double %i.hs, %i.ho
  %i.hu = fcmp ugt double %i.ht, f0x3E50000000000000
  br i1 %i.hu, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx.i87 ; 9 uses
  br i1 %.not.i.i.i.i.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.hv = load <2 x double>, ptr %gep, align 8, !tbaa !82 ; 2 uses
  %i.hw = fmul <2 x double> %i.hv, %i.hv          ; 2 uses
  br i1 %i.gz, label %._crit_edge.i.i.i.i.i, label %bb.o

._crit_edge.i.i.i.i.i:                            ; preds = %bb.m
  %i.hx = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %i.hy = load <2 x double>, ptr %i.hx, align 8, !tbaa !82 ; 2 uses
  %i.hz = fmul <2 x double> %i.hy, %i.hy
  %i.ia = fadd <2 x double> %i.hz, %i.hw          ; 2 uses
  br i1 %i.ha, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %i.gx
  %i.ic = load <2 x double>, ptr %i.ib, align 8, !tbaa !82 ; 2 uses
  %i.id = fmul <2 x double> %i.ic, %i.ic
  %i.ie = fadd <2 x double> %i.ia, %i.id
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i.i.i, %bb.m
  %.274.i.i.i.i.i = phi <2 x double> [ %i.hw, %bb.m ], [ %i.ie, %bb.n ], [ %i.ia, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %shift166 = shufflevector <2 x double> %.274.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop167 = fadd <2 x double> %.274.i.i.i.i.i, %shift166
  %i.if = extractelement <2 x double> %foldExtExtBinop167, i64 0 ; 3 uses
  br i1 %.not164, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELi5ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit, label %.lr.ph85.i.i.i.i.i.preheader

.lr.ph85.i.i.i.i.i.preheader:                     ; preds = %bb.o
  br i1 %lcmp.mod173.not, label %.lr.ph85.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.prol:                          ; preds = %.lr.ph85.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.prol = phi i64 [ %i.ik, %.lr.ph85.i.i.i.i.i.prol ], [ %i.gy, %.lr.ph85.i.i.i.i.i.preheader ] ; 2 uses
  %.182.i.i.i.i.i.prol = phi double [ %i.ij, %.lr.ph85.i.i.i.i.i.prol ], [ %i.if, %.lr.ph85.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.preheader ]
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %.05283.i.i.i.i.i.prol
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !30 ; 2 uses
  %i.ii = fmul double %i.ih, %i.ih
  %i.ij = fadd double %.182.i.i.i.i.i.prol, %i.ii ; 3 uses
  %i.ik = add nuw nsw i64 %.05283.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %i.en
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.prol, !llvm.loop !2046

.lr.ph85.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph85.i.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.ij, %.lr.ph85.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.unr = phi i64 [ %i.gy, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.ik, %.lr.ph85.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.unr = phi double [ %i.if, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.ij, %.lr.ph85.i.i.i.i.i.prol ]
  br i1 %i.hc, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELi5ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit, label %.lr.ph85.i.i.i.i.i

.lr.ph85.i.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i
  %.05283.i.i.i.i.i = phi i64 [ %i.je, %.lr.ph85.i.i.i.i.i ], [ %.05283.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i.i = phi double [ %i.jd, %.lr.ph85.i.i.i.i.i ], [ %.182.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.prol.loopexit ]
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %.05283.i.i.i.i.i
  %i.im = load double, ptr %i.il, align 8, !tbaa !30 ; 2 uses
  %i.in = fmul double %i.im, %i.im
  %i.io = fadd double %.182.i.i.i.i.i, %i.in
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %.05283.i.i.i.i.i
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !30 ; 2 uses
  %i.is = fmul double %i.ir, %i.ir
  %i.it = fadd double %i.io, %i.is
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %.05283.i.i.i.i.i
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !30 ; 2 uses
  %i.ix = fmul double %i.iw, %i.iw
  %i.iy = fadd double %i.it, %i.ix
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %.05283.i.i.i.i.i
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !30 ; 2 uses
  %i.jc = fmul double %i.jb, %i.jb
  %i.jd = fadd double %i.iy, %i.jc                ; 2 uses
  %i.je = add nuw nsw i64 %.05283.i.i.i.i.i, 4    ; 2 uses
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.je, %i.gk
  br i1 %exitcond.not.i.i.i.i.i.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELi5ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit, label %.lr.ph85.i.i.i.i.i, !llvm.loop !2047

bb.p:                                             ; preds = %bb.l
  %i.jf = load double, ptr %gep, align 8, !tbaa !30 ; 2 uses
  %i.jg = fmul double %i.jf, %i.jf
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELi5ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELi5ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit: ; preds = %.lr.ph85.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i, %bb.o, %bb.p
  %.0.i.i.i = phi double [ %i.jg, %bb.p ], [ %i.if, %bb.o ], [ %.lcssa.unr, %.lr.ph85.i.i.i.i.i.prol.loopexit ], [ %i.jd, %.lr.ph85.i.i.i.i.i ]
  %.scalar.i90 = call noundef double @llvm.sqrt.f64(double %.0.i.i.i) ; 2 uses
  store double %.scalar.i90, ptr %i.hp, align 8, !tbaa !30
  br label %.sink.split

bb.q:                                             ; preds = %bb.k
  %.scalar = call double @llvm.sqrt.f64(double %i.ho)
  %i.jh = fmul double %i.he, %.scalar
  br label %.sink.split

.sink.split:                                      ; preds = %bb.q, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELi5ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit
  %.scalar.i90.sink = phi double [ %.scalar.i90, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELi5ELi1ELb1EEELin1ELi1ELb0EEEE4normEv.exit ], [ %i.jh, %bb.q ]
  store double %.scalar.i90.sink, ptr %i.hd, align 8, !tbaa !30
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.j
  %i.ji = add nuw nsw i64 %.072150, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ji, 5
  br i1 %exitcond.not, label %._crit_edge, label %bb.j, !llvm.loop !2048
}
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi5ELi1EEEEEKNS4_INS4_IS6_Li5ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi5EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSY_:bb.a
  %i.bw = add nsw i64 %i.bv, %.03552              ; 6 uses
  %i.bx = icmp sgt i64 %.03552, 0
  br i1 %i.bx, label %.preheader45.loopexit, label %.preheader45

.preheader45.loopexit:                            ; preds = %bb.c
  %i.by = load ptr, ptr %i.bq, align 8, !tbaa !2141, !nonnull !64, !align !65 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !2126, !noalias !2142
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.03453
  %i.cc = load ptr, ptr %0, align 8, !tbaa !2145, !nonnull !64, !align !65
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !2104
  %.idx.i.i.i = mul i64 %.03453, 40
  %i.ce = getelementptr i8, ptr %i.cd, i64 %.idx.i.i.i ; 2 uses
  %i.cf = load double, ptr %i.by, align 8, !tbaa !30
  %i.cg = load double, ptr %i.cb, align 8, !tbaa !30
  %i.ch = fmul double %i.cf, %i.cg
  %i.ci = load double, ptr %i.ce, align 8, !tbaa !30
  %i.cj = fsub double %i.ci, %i.ch
  store double %i.cj, ptr %i.ce, align 8, !tbaa !30
  br label %.preheader45

.preheader45:                                     ; preds = %.preheader45.loopexit, %bb.c
  %i.ck = icmp sgt i64 %i.bu, 1
  br i1 %i.ck, label %.lr.ph49, label %.preheader

.lr.ph49:                                         ; preds = %.preheader45
  %.idx.i.i.i37 = mul i64 %.03453, 40
  br label %bb.d

.preheader:                                       ; preds = %bb.d, %.preheader45
  %i.cl = icmp slt i64 %i.bw, %i.bj
  br i1 %i.cl, label %.lr.ph51, label %._crit_edge

.lr.ph51:                                         ; preds = %.preheader
  %i.cm = load ptr, ptr %0, align 8, !tbaa !2145, !nonnull !64, !align !65
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !2104 ; 3 uses
  %.idx.i.i.i38 = mul i64 %.03453, 40             ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 %.idx.i.i.i38 ; 2 uses
  %i.cp = load ptr, ptr %i.bq, align 8, !tbaa !2141, !nonnull !64, !align !65 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !2126, !noalias !2146 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.03453 ; 3 uses
  %i.ct = add i64 %.03552, %i.bv
  %i.cu = sub i64 %i.bj, %i.ct                    ; 3 uses
  %min.iters.check87 = icmp ult i64 %i.cu, 6
  br i1 %min.iters.check87, label %scalar.ph86.preheader, label %vector.memcheck73

vector.memcheck73:                                ; preds = %.lr.ph51
  %i.cv = shl i64 %i.bu, 3
  %i.cw = and i64 %i.cv, -16                      ; 2 uses
  %i.cx = shl i64 %.03552, 3                      ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cn, i64 %.idx.i.i.i38
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.cw
  %scevgep74 = getelementptr i8, ptr %i.cz, i64 %i.cx ; 2 uses
  %i.da = getelementptr i8, ptr %i.cn, i64 %i.br
  %scevgep75 = getelementptr i8, ptr %i.da, i64 %i.bs ; 2 uses
  %i.db = getelementptr i8, ptr %i.cp, i64 %i.cw
  %scevgep76 = getelementptr i8, ptr %i.db, i64 %i.cx
  %scevgep77 = getelementptr i8, ptr %i.cp, i64 %i.br
  %i.dc = getelementptr i8, ptr %i.cr, i64 %i.bt
  %scevgep78 = getelementptr i8, ptr %i.dc, i64 8
  %bound079 = icmp ult ptr %scevgep74, %scevgep77
  %bound180 = icmp ult ptr %scevgep76, %scevgep75
  %found.conflict81 = and i1 %bound079, %bound180
  %bound082 = icmp ult ptr %scevgep74, %scevgep78
  %bound183 = icmp ult ptr %i.cs, %scevgep75
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %found.conflict81, %found.conflict84
  br i1 %conflict.rdx85, label %scalar.ph86.preheader, label %vector.ph88

vector.ph88:                                      ; preds = %vector.memcheck73
  %n.vec89 = and i64 %i.cu, -4                    ; 3 uses
  %i.dd = add i64 %i.bw, %n.vec89
  %i.de = load double, ptr %i.cs, align 8, !tbaa !30, !alias.scope !2149
  %broadcast.splatinsert94 = insertelement <2 x double> poison, double %i.de, i64 0
  %broadcast.splat95 = shufflevector <2 x double> %broadcast.splatinsert94, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph88
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next98, %vector.body90 ] ; 2 uses
  %i.df = add i64 %i.bw, %index91                 ; 2 uses
  %i.dg = getelementptr [8 x i8], ptr %i.co, i64 %i.df ; 3 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.df ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %wide.load92 = load <2 x double>, ptr %i.dh, align 8, !tbaa !30, !alias.scope !2152
  %wide.load93 = load <2 x double>, ptr %i.di, align 8, !tbaa !30, !alias.scope !2152
  %i.dj = fmul <2 x double> %wide.load92, %broadcast.splat95
  %i.dk = fmul <2 x double> %wide.load93, %broadcast.splat95
  %i.dl = getelementptr i8, ptr %i.dg, i64 16     ; 2 uses
  %wide.load96 = load <2 x double>, ptr %i.dg, align 8, !tbaa !30, !alias.scope !2154, !noalias !2156
  %wide.load97 = load <2 x double>, ptr %i.dl, align 8, !tbaa !30, !alias.scope !2154, !noalias !2156
  %i.dm = fsub <2 x double> %wide.load96, %i.dj
  %i.dn = fsub <2 x double> %wide.load97, %i.dk
  store <2 x double> %i.dm, ptr %i.dg, align 8, !tbaa !30, !alias.scope !2154, !noalias !2156
  store <2 x double> %i.dn, ptr %i.dl, align 8, !tbaa !30, !alias.scope !2154, !noalias !2156
  %index.next98 = add nuw i64 %index91, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next98, %n.vec89
  br i1 %i.do, label %middle.block99, label %vector.body90, !llvm.loop !2157

middle.block99:                                   ; preds = %vector.body90
  %cmp.n100 = icmp eq i64 %i.cu, %n.vec89
  br i1 %cmp.n100, label %._crit_edge, label %scalar.ph86.preheader

scalar.ph86.preheader:                            ; preds = %vector.memcheck73, %.lr.ph51, %middle.block99
  %.050.ph = phi i64 [ %i.bw, %vector.memcheck73 ], [ %i.bw, %.lr.ph51 ], [ %i.dd, %middle.block99 ]
  br label %scalar.ph86

bb.d:                                             ; preds = %.lr.ph49, %bb.d
  %.03248 = phi i64 [ %.03552, %.lr.ph49 ], [ %i.eh, %bb.d ] ; 3 uses
  %i.dp = load ptr, ptr %0, align 8, !tbaa !2145, !nonnull !64, !align !65
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !2104
  %i.dr = getelementptr i8, ptr %i.dq, i64 %.idx.i.i.i37
  %i.ds = getelementptr [8 x i8], ptr %i.dr, i64 %.03248 ; 2 uses
  %i.dt = load ptr, ptr %i.bq, align 8, !tbaa !2141, !nonnull !64, !align !65 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 80
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 88
  %i.dw = load ptr, ptr %i.du, align 8, !tbaa !2158
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %.03248
  %i.dy = load <2 x double>, ptr %i.dx, align 1, !tbaa !82
  %i.dz = load ptr, ptr %i.dv, align 8, !tbaa !2091
  %i.ea = getelementptr [8 x i8], ptr %i.dz, i64 %.03453
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !30
  %i.ec = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x double> %i.dy, %i.ed
  %i.ef = load <2 x double>, ptr %i.ds, align 16, !tbaa !82
  %i.eg = fsub <2 x double> %i.ef, %i.ee
  store <2 x double> %i.eg, ptr %i.ds, align 16, !tbaa !82
  %i.eh = add nsw i64 %.03248, 2                  ; 2 uses
  %i.ei = icmp slt i64 %i.eh, %i.bw
  br i1 %i.ei, label %bb.d, label %.preheader, !llvm.loop !2159

._crit_edge:                                      ; preds = %scalar.ph86, %middle.block99, %.preheader
  %i.ej = add nsw i64 %.03552, 1
  %i.ek = srem i64 %i.ej, 2
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bj, i64 %i.ek)
  %i.el = add nuw nsw i64 %.03453, 1              ; 2 uses
  %exitcond56.not = icmp eq i64 %i.el, %i.bl
  br i1 %exitcond56.not, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi5ELi1EEEEEKNS4_INS4_IS6_Li5ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi5EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit, label %bb.c, !llvm.loop !2160

scalar.ph86:                                      ; preds = %scalar.ph86.preheader, %scalar.ph86
  %.050 = phi i64 [ %i.et, %scalar.ph86 ], [ %.050.ph, %scalar.ph86.preheader ] ; 3 uses
  %i.em = getelementptr [8 x i8], ptr %i.co, i64 %.050 ; 2 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %.050
  %i.eo = load double, ptr %i.en, align 8, !tbaa !30
  %i.ep = load double, ptr %i.cs, align 8, !tbaa !30
  %i.eq = fmul double %i.eo, %i.ep
  %i.er = load double, ptr %i.em, align 8, !tbaa !30
  %i.es = fsub double %i.er, %i.eq
  store double %i.es, ptr %i.em, align 8, !tbaa !30
  %i.et = add nsw i64 %.050, 1                    ; 2 uses
  %i.eu = icmp slt i64 %i.et, %i.bj
  br i1 %i.eu, label %scalar.ph86, label %._crit_edge, !llvm.loop !2161

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi5ELi1EEEEEKNS4_INS4_IS6_Li5ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi5EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit: ; preds = %._crit_edge.i, %._crit_edge, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, %.preheader.lr.ph.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEEE11_solve_implINS1_IdLi5ELi1ELi0ELi5ELi1EEES5_EEvRKT_RT0_(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Block.6013", align 8 ; 10 uses
  %4 = alloca %"class.Eigen::Block.6024", align 8 ; 9 uses
  %5 = alloca %"class.Eigen::Matrix.1717", align 8 ; 3 uses
  %6 = alloca %"class.Eigen::Matrix.709", align 8 ; 12 uses
  %7 = alloca %"class.Eigen::TriangularView.5982", align 8 ; 9 uses
  %8 = alloca %"class.Eigen::Block.748", align 8  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2014 ; 14 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !2162
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.e = icmp sgt i64 %i.b, 0                     ; 2 uses
  br i1 %i.e, label %.lr.ph.i.i, label %_ZNK5Eigen18TriangularViewImplIKNS_5BlockIKNS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELin1ELin1ELb0EEELj2ENS_5DenseEE12solveInPlaceINS1_INS2_IdLi5ELi1ELi0ELi5ELi1EEELin1ELi1ELb0EEEEEvRKNS_10MatrixBaseIT_EE.exit

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 48
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i, %.lr.ph.i.i
  %.061.i.i = phi i64 [ %i.s, %.lr.ph.split.i.i ], [ 0, %.lr.ph.i.i ] ; 8 uses
  %i.q = sub nsw i64 5, %.061.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.061.i.i
  store ptr %i.r, ptr %3, align 8, !tbaa !2163, !alias.scope !2165
  store i64 %i.q, ptr %i.f, align 8, !tbaa !46, !alias.scope !2165
  store i64 1, ptr %i.g, align 8, !tbaa !46, !alias.scope !2165
  store ptr %6, ptr %i.h, align 8, !tbaa !2168, !alias.scope !2165
  store i64 %.061.i.i, ptr %i.i, align 8, !tbaa !46, !alias.scope !2165
  store i64 0, ptr %i.j, align 8, !tbaa !46, !alias.scope !2165
  store i64 5, ptr %i.k, align 8, !tbaa !2170, !alias.scope !2165
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.s = add nuw nsw i64 %.061.i.i, 1             ; 4 uses
  %i.t = sub nsw i64 4, %.061.i.i
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.s
  %.idx.i.i.i.i.i.i.i = mul nuw nsw i64 %.061.i.i, 40
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.i.i.i.i.i.i.i
  store ptr %i.v, ptr %4, align 8, !tbaa !2173, !alias.scope !2175
  store i64 %i.t, ptr %i.l, align 8, !tbaa !46, !alias.scope !2175
  store ptr %0, ptr %i.m, align 8, !tbaa !616, !alias.scope !2175
  store i64 %i.s, ptr %i.n, align 8, !tbaa !46, !alias.scope !2175
  store i64 %.061.i.i, ptr %i.o, align 8, !tbaa !46, !alias.scope !2175
  store i64 5, ptr %i.p, align 8, !tbaa !2180, !alias.scope !2175
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.061.i.i
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi5ELi1ELi0ELi5ELi1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IdLi5ELi5ELi0ELi5ELi5EEELin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %exitcond.not = icmp eq i64 %i.s, %i.b
  br i1 %exitcond.not, label %_ZNK5Eigen18TriangularViewImplIKNS_5BlockIKNS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELin1ELin1ELb0EEELj2ENS_5DenseEE12solveInPlaceINS1_INS2_IdLi5ELi1ELi0ELi5ELi1EEELin1ELi1ELb0EEEEEvRKNS_10MatrixBaseIT_EE.exit, label %.lr.ph.split.i.i, !llvm.loop !2182

_ZNK5Eigen18TriangularViewImplIKNS_5BlockIKNS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELin1ELin1ELb0EEELj2ENS_5DenseEE12solveInPlaceINS1_INS2_IdLi5ELi1ELi0ELi5ELi1EEELin1ELi1ELb0EEEEEvRKNS_10MatrixBaseIT_EE.exit: ; preds = %.lr.ph.split.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %0, ptr %7, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.b, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.b, ptr %.sroa.536.0..sroa_idx, align 8
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %0, ptr %.sroa.637.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i64 5, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store ptr %6, ptr %8, align 8, !tbaa !2183, !alias.scope !2185
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.b, ptr %i.x, align 8, !tbaa !46, !alias.scope !2185
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %6, ptr %i.y, align 8, !tbaa !2168, !alias.scope !2185
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 0, ptr %i.z, align 8, !tbaa !46, !alias.scope !2185
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i64 5, ptr %i.aa, align 8, !tbaa !2188, !alias.scope !2185
  call void @_ZN5Eigen8internal26triangular_solver_selectorIKNS_5BlockIKNS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELin1ELin1ELb0EEENS2_INS3_IdLi5ELi1ELi0ELi5ELi1EEELin1ELi1ELb0EEELi1ELi2ELi0ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br i1 %i.e, label %.lr.ph, label %.lr.ph52

.lr.ph:                                           ; preds = %_ZNK5Eigen18TriangularViewImplIKNS_5BlockIKNS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELin1ELin1ELb0EEELj2ENS_5DenseEE12solveInPlaceINS1_INS2_IdLi5ELi1ELi0ELi5ELi1EEELin1ELi1ELb0EEEEEvRKNS_10MatrixBaseIT_EE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 5 uses
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.ac = icmp ult i64 %i.b, 4
  br i1 %i.ac, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.b, 9223372036854775804
  br label %bb.e

.preheader.unr-lcssa:                             ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.unr-lcssa, %.lr.ph
  %.01850.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.bv, %.preheader.unr-lcssa ]
  %lcmp.mod55 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod55)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.01850.epil = phi i64 [ %.01850.epil.init, %.epil.preheader ], [ %i.aj, %bb.d ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.01850.epil
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.01850.epil
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !29
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ag
  %i.ai = load double, ptr %i.ad, align 8, !tbaa !30
  store double %i.ai, ptr %i.ah, align 8, !tbaa !30
  %i.aj = add nuw nsw i64 %.01850.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %bb.d, !llvm.loop !2191

.preheader:                                       ; preds = %bb.d, %.preheader.unr-lcssa
  %i.ak = icmp samesign ult i64 %i.b, 5
  br i1 %i.ak, label %.lr.ph52, label %._crit_edge

.lr.ph52:                                         ; preds = %_ZNK5Eigen18TriangularViewImplIKNS_5BlockIKNS_6MatrixIdLi5ELi5ELi0ELi5ELi5EEELin1ELin1ELb0EEELj2ENS_5DenseEE12solveInPlaceINS1_INS2_IdLi5ELi1ELi0ELi5ELi1EEELin1ELi1ELb0EEEEEvRKNS_10MatrixBaseIT_EE.exit, %.preheader
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 5 uses
  %i.am = sub i64 1, %i.b
  %xtraiter56 = and i64 %i.am, 3                  ; 2 uses
  %lcmp.mod57.not = icmp eq i64 %xtraiter56, 0
  br i1 %lcmp.mod57.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph52, %.prol.preheader
  %.051.prol = phi i64 [ %i.ar, %.prol.preheader ], [ %i.b, %.lr.ph52 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph52 ]
  %i.an = getelementptr inbounds [4 x i8], ptr %i.al, i64 %.051.prol
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !29
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ap
  store double 0.000000e+00, ptr %i.aq, align 8, !tbaa !30
  %i.ar = add i64 %.051.prol, 1                   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter56
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !2192

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph52
  %.051.unr = phi i64 [ %i.b, %.lr.ph52 ], [ %i.ar, %.prol.preheader ]
  %i.as = add i64 %i.b, -2
  %i.at = icmp ult i64 %i.as, 3
  br i1 %i.at, label %._crit_edge, label %.lr.ph52.new

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %.01850 = phi i64 [ 0, %.lr.ph.new ], [ %i.bv, %bb.e ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.e ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %.01850
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.01850
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !29
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ax
  %i.az = load double, ptr %i.au, align 8, !tbaa !30
  store double %i.az, ptr %i.ay, align 8, !tbaa !30
  %i.ba = or disjoint i64 %.01850, 1              ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.ba
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ba
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !29
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %2, i64 %i.be
  %i.bg = load double, ptr %i.bb, align 8, !tbaa !30
  store double %i.bg, ptr %i.bf, align 8, !tbaa !30
  %i.bh = or disjoint i64 %.01850, 2              ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.bh
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bh
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !29
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bl
  %i.bn = load double, ptr %i.bi, align 8, !tbaa !30
  store double %i.bn, ptr %i.bm, align 8, !tbaa !30
  %i.bo = or disjoint i64 %.01850, 3              ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.bo
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bo
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !29
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bs
  %i.bu = load double, ptr %i.bp, align 8, !tbaa !30
  store double %i.bu, ptr %i.bt, align 8, !tbaa !30
  %i.bv = add nuw nsw i64 %.01850, 4              ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.unr-lcssa, label %bb.e, !llvm.loop !2193

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph52.new, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.f

.lr.ph52.new:                                     ; preds = %.prol.loopexit, %.lr.ph52.new
  %.051 = phi i64 [ %i.cp, %.lr.ph52.new ], [ %.051.unr, %.prol.loopexit ] ; 5 uses
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.al, i64 %.051
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !29
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %2, i64 %i.by
  store double 0.000000e+00, ptr %i.bz, align 8, !tbaa !30
  %i.ca = getelementptr [4 x i8], ptr %i.al, i64 %.051
  %i.cb = getelementptr i8, ptr %i.ca, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !29
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cd
  store double 0.000000e+00, ptr %i.ce, align 8, !tbaa !30
  %i.cf = getelementptr [4 x i8], ptr %i.al, i64 %.051
  %i.cg = getelementptr i8, ptr %i.cf, i64 8
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !29
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ci
  store double 0.000000e+00, ptr %i.cj, align 8, !tbaa !30
  %i.ck = getelementptr [4 x i8], ptr %i.al, i64 %.051
  %i.cl = getelementptr i8, ptr %i.ck, i64 12
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !29
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cn
  store double 0.000000e+00, ptr %i.co, align 8, !tbaa !30
  %i.cp = add i64 %.051, 4                        ; 2 uses
  %exitcond54.not.3 = icmp eq i64 %i.cp, 5
  br i1 %exitcond54.not.3, label %._crit_edge, label %.lr.ph52.new, !llvm.loop !2194

bb.f:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi5ELi1ELi0ELi5ELi1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS1_IKNS2_IdLi5ELi5ELi0ELi5ELi5EEELin1ELi1ELb0EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::evaluator.6498", align 8 ; 20 uses
  %5 = alloca %"struct.Eigen::internal::evaluator.6338", align 8 ; 4 uses
  %6 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.6502", align 8 ; 7 uses
  %7 = alloca %"struct.Eigen::internal::sub_assign_op", align 1 ; 3 uses
  %8 = alloca %"class.Eigen::Block.6316", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !46   ; 9 uses
  %i.c = icmp eq i64 %i.b, 1
  %i.d = load double, ptr %2, align 8, !tbaa !30  ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.d

end_hunk_2
