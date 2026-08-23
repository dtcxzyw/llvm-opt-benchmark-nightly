Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/min_quad_with_fixed.1?download=true
inline.NumInlined: 11154
inline.NumDeleted: 5577
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 97
loop-unroll.NumUnrolled: 107
begin_hunk_0_@_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7computeIS2_EERS3_RKNS_9EigenBaseIT_EE:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load = load <2 x double>, ptr %i.ae, align 8, !tbaa !52
  %wide.load7 = load <2 x double>, ptr %i.af, align 8, !tbaa !52
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <2 x double> %wide.load, ptr %i.ad, align 8, !tbaa !52
  store <2 x double> %wide.load7, ptr %i.ag, align 8, !tbaa !52
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !547

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader8

.lr.ph.i.i.i.i.i.i.i.i.i.preheader8:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ] ; 4 uses
  %i.ai = sub i64 %i.u, %.05.i.i.i.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.ai, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader8, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader8 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader8 ]
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.s, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.al = load double, ptr %i.ak, align 8, !tbaa !52
  store double %i.al, ptr %i.aj, align 8, !tbaa !52
  %i.am = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !548

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader8
  %.05.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader8 ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.an = sub i64 %.05.i.i.i.i.i.i.i.i.i.ph, %i.u
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.s, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !52
  store double %i.ar, ptr %i.ap, align 8, !tbaa !52
  %i.as = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.as
  %i.au = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.as
  %i.av = load double, ptr %i.au, align 8, !tbaa !52
  store double %i.av, ptr %i.at, align 8, !tbaa !52
  %i.aw = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 2   ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.aw
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.aw
  %i.az = load double, ptr %i.ay, align 8, !tbaa !52
  store double %i.az, ptr %i.ax, align 8, !tbaa !52
  %i.ba = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 3   ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ba
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ba
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !52
  store double %i.bd, ptr %i.bb, align 8, !tbaa !52
  %i.be = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.be, %i.u
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !549

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.d ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.011.i.i.i.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.011.i.i.i.i.i.i.i.i
  %i.bh = load <2 x double>, ptr %i.bg, align 16, !tbaa !44
  store <2 x double> %i.bh, ptr %i.bf, align 16, !tbaa !44
  %i.bi = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bj = icmp slt i64 %i.bi, %i.w
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !211

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i
  tail call void @_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14computeInPlaceEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen31CompleteOrthogonalDecompositionINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14computeInPlaceEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Eigen::Block.37", align 8   ; 10 uses
  %2 = alloca %"class.Eigen::Transpose.1143", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load double, ptr %i.a, align 8, !tbaa !550
  %i.c = tail call noundef double @llvm.fabs.f64(double %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.e = load i8, ptr %i.d, align 1, !tbaa !546, !range !31, !noundef !32
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load double, ptr %i.g, align 8, !tbaa !551
  br label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !75
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.smin.i64(i64 %i.l, i64 %i.j)
  %i.m = sitofp i64 %.sroa.speculated.i.i.i to double
  %i.n = fmul nnan double %i.m, f0x3CB0000000000000
  br label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i

_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i: ; preds = %bb.c, %bb.b
  %i.o = phi double [ %i.h, %bb.b ], [ %i.n, %bb.c ]
  %i.p = fmul double %i.c, %i.o                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.r = load i64, ptr %i.q, align 8, !tbaa !552  ; 5 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %.lr.ph.i, label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i._ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit_crit_edge

_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i._ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit_crit_edge: ; preds = %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !9
  br label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit

.lr.ph.i:                                         ; preds = %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i
  %i.t = load ptr, ptr %0, align 8, !tbaa !69     ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !9    ; 7 uses
  %min.iters.check = icmp ult i64 %i.r, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.r, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.p, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.az, %vector.body ]
  %vec.phi182 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ba, %vector.body ]
  %i.w = or disjoint i64 %index, 1                ; 2 uses
  %i.x = or disjoint i64 %index, 2                ; 2 uses
  %i.y = or disjoint i64 %index, 3                ; 2 uses
  %i.z = mul nsw i64 %index, %i.v
  %i.aa = mul nsw i64 %i.w, %i.v
  %i.ab = mul nsw i64 %i.x, %i.v
  %i.ac = mul nsw i64 %i.y, %i.v
  %i.ad = getelementptr [8 x i8], ptr %i.t, i64 %index
  %i.ae = getelementptr [8 x i8], ptr %i.t, i64 %i.w
  %i.af = getelementptr [8 x i8], ptr %i.t, i64 %i.x
  %i.ag = getelementptr [8 x i8], ptr %i.t, i64 %i.y
  %i.ah = getelementptr [8 x i8], ptr %i.ad, i64 %i.z
  %i.ai = getelementptr [8 x i8], ptr %i.ae, i64 %i.aa
  %i.aj = getelementptr [8 x i8], ptr %i.af, i64 %i.ab
  %i.ak = getelementptr [8 x i8], ptr %i.ag, i64 %i.ac
  %i.al = load double, ptr %i.ah, align 8, !tbaa !52
  %i.am = load double, ptr %i.ai, align 8, !tbaa !52
  %i.an = insertelement <2 x double> poison, double %i.al, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.am, i64 1
  %i.ap = load double, ptr %i.aj, align 8, !tbaa !52
  %i.aq = load double, ptr %i.ak, align 8, !tbaa !52
  %i.ar = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.as = insertelement <2 x double> %i.ar, double %i.aq, i64 1
  %i.at = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ao)
  %i.au = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.as)
  %i.av = fcmp ogt <2 x double> %i.at, %broadcast.splat
  %i.aw = fcmp ogt <2 x double> %i.au, %broadcast.splat
  %i.ax = zext <2 x i1> %i.av to <2 x i64>
  %i.ay = zext <2 x i1> %i.aw to <2 x i64>
  %i.az = add <2 x i64> %vec.phi, %i.ax           ; 2 uses
  %i.ba = add <2 x i64> %vec.phi182, %i.ay        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !553

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ba, %i.az
  %i.bc = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.078.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.bc, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i = phi i64 [ %i.bl, %scalar.ph ], [ %.09.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.078.i = phi i64 [ %i.bk, %scalar.ph ], [ %.078.i.ph, %scalar.ph.preheader ]
  %i.bd = mul nsw i64 %.09.i, %i.v
  %i.be = getelementptr [8 x i8], ptr %i.t, i64 %.09.i
  %i.bf = getelementptr [8 x i8], ptr %i.be, i64 %i.bd
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !52
  %i.bh = tail call noundef double @llvm.fabs.f64(double %i.bg)
  %i.bi = fcmp ogt double %i.bh, %i.p
  %i.bj = zext i1 %i.bi to i64
  %i.bk = add nuw nsw i64 %.078.i, %i.bj          ; 2 uses
  %i.bl = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bl, %i.r
  br i1 %exitcond.not.i, label %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit, label %scalar.ph, !llvm.loop !554

_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit: ; preds = %scalar.ph, %middle.block, %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i._ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit_crit_edge
  %i.bm = phi i64 [ %.pre, %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i._ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit_crit_edge ], [ %i.v, %middle.block ], [ %i.v, %scalar.ph ]
  %.07.lcssa.i = phi i64 [ 0, %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE9thresholdEv.exit.i._ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit_crit_edge ], [ %i.bc, %middle.block ], [ %i.bk, %scalar.ph ] ; 11 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !75 ; 13 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bo, i64 %i.bm) ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !61
  %.not.i.i = icmp eq i64 %.sroa.speculated, %i.bs
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !50
  tail call void @free(ptr noundef %i.bt) #20
  %i.bu = icmp sgt i64 %.sroa.speculated, 0
  br i1 %i.bu, label %bb.e, label %.sink.split.i.i

bb.e:                                             ; preds = %bb.d
  %i.bv = icmp samesign ugt i64 %.sroa.speculated, 2305843009213693951
  br i1 %i.bv, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.bw = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bw, align 8, !tbaa !24
  tail call void @__cxa_throw(ptr nonnull %i.bw, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i: ; preds = %bb.e
  %i.bx = shl nuw i64 %.sroa.speculated, 3
  %i.by = tail call noalias ptr @malloc(i64 noundef %i.bx) #22 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.g, label %.sink.split.i.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i
  %i.ca = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ca, align 8, !tbaa !24
  tail call void @__cxa_throw(ptr nonnull %i.ca, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i, %bb.d
  %.sink.i.i = phi ptr [ %i.by, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i ], [ null, %bb.d ]
  store ptr %.sink.i.i, ptr %i.bq, align 8, !tbaa !50
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %_ZNK5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rankEv.exit, %.sink.split.i.i
  store i64 %.sroa.speculated, ptr %i.br, align 8, !tbaa !61
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !517
  %.not.i.i30 = icmp eq i64 %i.bo, %i.cd
  br i1 %.not.i.i30, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !156
  tail call void @free(ptr noundef %i.ce) #20
  %i.cf = icmp sgt i64 %i.bo, 0
  br i1 %i.cf, label %bb.i, label %.sink.split.i.i31

bb.i:                                             ; preds = %bb.h
  %i.cg = icmp samesign ugt i64 %i.bo, 2305843009213693951
  br i1 %i.cg, label %bb.j, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i33

bb.j:                                             ; preds = %bb.i
  %i.ch = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ch, align 8, !tbaa !24
  tail call void @__cxa_throw(ptr nonnull %i.ch, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i33: ; preds = %bb.i
  %i.ci = shl nuw i64 %i.bo, 3
  %i.cj = tail call noalias ptr @malloc(i64 noundef %i.ci) #22 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.k, label %.sink.split.i.i31

bb.k:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i33
  %i.cl = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cl, align 8, !tbaa !24
  tail call void @__cxa_throw(ptr nonnull %i.cl, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

.sink.split.i.i31:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i33, %bb.h
  %.sink.i.i32 = phi ptr [ %i.cj, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i33 ], [ null, %bb.h ]
  store ptr %.sink.i.i32, ptr %i.cb, align 8, !tbaa !156
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, %.sink.split.i.i31
  store i64 %i.bo, ptr %i.cc, align 8, !tbaa !517
  %i.cm = icmp slt i64 %.07.lcssa.i, %i.bo
  br i1 %i.cm, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit
  %i.cn = add i64 %.07.lcssa.i, -1                ; 9 uses
  %i.co = icmp sgt i64 %.07.lcssa.i, 0
  br i1 %i.co, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.l
  %i.cp = sub i64 %i.bo, %.07.lcssa.i             ; 13 uses
  %i.cq = add nsw i64 %i.cp, 1                    ; 2 uses
  %i.cr = icmp sgt i64 %i.cp, 1
  %i.cs = add i64 %i.cp, -1                       ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.788.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.889.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.990.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.1091.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.1192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.sroa.1294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.sroa.1395.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.cz = shl i64 %i.cn, 3
  %i.da = shl i64 %i.cn, 3
  %i.db = shl i64 %i.cn, 3
  %i.dc = shl i64 %i.cn, 3
  %i.dd = add i64 %i.bo, -2
  %i.de = sub i64 %i.dd, %.07.lcssa.i
  %xtraiter299 = and i64 %i.cs, 3                 ; 3 uses
  %i.df = icmp ult i64 %i.de, 3
  %unroll_iter = and i64 %i.cs, -4
  %lcmp.mod300.not = icmp eq i64 %xtraiter299, 0
  %lcmp.mod302 = icmp ne i64 %xtraiter299, 0
  %min.iters.check236 = icmp ugt i64 %i.cp, 3
  %n.vec238 = and i64 %i.cp, -4                   ; 3 uses
  %cmp.n243 = icmp eq i64 %i.cp, %n.vec238
  %i.dg = sub i64 %i.bo, %.07.lcssa.i
  %xtraiter303 = and i64 %i.dg, 3                 ; 2 uses
  %lcmp.mod304.not = icmp eq i64 %xtraiter303, 0
  %i.dh = sub i64 %.07.lcssa.i, %i.bo
  %min.iters.check221 = icmp ugt i64 %i.cp, 1
  %n.vec223 = and i64 %i.cp, -2                   ; 3 uses
  %cmp.n231 = icmp eq i64 %i.cp, %n.vec223
  %i.di = sub i64 %.07.lcssa.i, %i.bo
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit48
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit48 ] ; 3 uses
  %.0169 = phi i64 [ %i.cn, %.lr.ph ], [ %i.oj, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit48 ] ; 22 uses
  %i.dj = shl i64 %.0169, 3
  %3 = shl i64 %.0169, 3                          ; 2 uses
  %4 = sub i64 %.07.lcssa.i, %indvar
  %5 = shl i64 %4, 3
  %i.dk = shl i64 %.0169, 3
  %6 = shl i64 %.0169, 3                          ; 2 uses
  %7 = sub i64 %.07.lcssa.i, %indvar
  %8 = shl i64 %7, 3
  %.not = icmp eq i64 %.0169, %i.cn               ; 2 uses
  br i1 %.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.m
  %i.dl = load ptr, ptr %0, align 8, !tbaa !69, !noalias !555 ; 8 uses
  %i.dm = load i64, ptr %i.bp, align 8, !tbaa !9, !noalias !555 ; 7 uses
  %i.dn = mul nsw i64 %i.dm, %.0169
  %i.do = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.dn ; 11 uses
  %i.dp = add nuw nsw i64 %.0169, 1               ; 4 uses
  %i.dq = mul i64 %i.dm, %i.cn
  %i.dr = getelementptr [8 x i8], ptr %i.dl, i64 %i.dq ; 10 uses
  %i.ds = ptrtoint ptr %i.do to i64               ; 2 uses
  %i.dt = and i64 %i.ds, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.dt, 0
  %i.du = lshr exact i64 %i.ds, 3
  %i.dv = and i64 %i.du, 1
  %.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 %i.dv, i64 %i.dp ; 13 uses
  %i.dw = sub nsw i64 %i.dp, %.0.i.i.i.i.i.i.i    ; 2 uses
  %i.dx = sdiv i64 %i.dw, 2                       ; 2 uses
  %i.dy = shl nsw i64 %i.dx, 1                    ; 2 uses
  %i.dz = add nsw i64 %i.dy, %.0.i.i.i.i.i.i.i    ; 6 uses
  %.not180 = icmp eq i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %.not180, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check275 = icmp ult i64 %.0.i.i.i.i.i.i.i, 10
  br i1 %min.iters.check275, label %.lr.ph.i.i.i.i.i.i.i.preheader293, label %vector.memcheck268

vector.memcheck268:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ea = mul i64 %i.dm, %i.dj
  %i.eb = shl i64 %.0.i.i.i.i.i.i.i, 3            ; 2 uses
  %i.ec = getelementptr i8, ptr %i.dl, i64 %i.ea
  %scevgep269 = getelementptr i8, ptr %i.ec, i64 %i.eb
  %i.ed = mul i64 %i.dc, %i.dm
  %i.ee = getelementptr i8, ptr %i.dl, i64 %i.ed
  %scevgep270 = getelementptr i8, ptr %i.ee, i64 %i.eb
  %bound0271 = icmp ult ptr %i.do, %scevgep270
  %bound1272 = icmp ult ptr %i.dr, %scevgep269
  %found.conflict273 = and i1 %bound0271, %bound1272
  br i1 %found.conflict273, label %.lr.ph.i.i.i.i.i.i.i.preheader293, label %vector.ph276

vector.ph276:                                     ; preds = %vector.memcheck268
  %n.vec277 = and i64 %.0.i.i.i.i.i.i.i, -4       ; 3 uses
  br label %vector.body278

vector.body278:                                   ; preds = %vector.body278, %vector.ph276
  %index279 = phi i64 [ 0, %vector.ph276 ], [ %index.next284, %vector.body278 ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %index279 ; 3 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %index279 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 2 uses
  %wide.load280 = load <2 x double>, ptr %i.ef, align 8, !tbaa !52, !alias.scope !558, !noalias !561
  %wide.load281 = load <2 x double>, ptr %i.eh, align 8, !tbaa !52, !alias.scope !558, !noalias !561
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 2 uses
  %wide.load282 = load <2 x double>, ptr %i.eg, align 8, !tbaa !52, !alias.scope !561
  %wide.load283 = load <2 x double>, ptr %i.ei, align 8, !tbaa !52, !alias.scope !561
  store <2 x double> %wide.load282, ptr %i.ef, align 8, !tbaa !52, !alias.scope !558, !noalias !561
  store <2 x double> %wide.load283, ptr %i.eh, align 8, !tbaa !52, !alias.scope !558, !noalias !561
  store <2 x double> %wide.load280, ptr %i.eg, align 8, !tbaa !52, !alias.scope !561
  store <2 x double> %wide.load281, ptr %i.ei, align 8, !tbaa !52, !alias.scope !561
  %index.next284 = add nuw i64 %index279, 4       ; 2 uses
  %i.ej = icmp eq i64 %index.next284, %n.vec277
  br i1 %i.ej, label %middle.block285, label %vector.body278, !llvm.loop !563

middle.block285:                                  ; preds = %vector.body278
  %cmp.n286 = icmp eq i64 %.0.i.i.i.i.i.i.i, %n.vec277
  br i1 %cmp.n286, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader293

.lr.ph.i.i.i.i.i.i.i.preheader293:                ; preds = %vector.memcheck268, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block285
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck268 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec277, %middle.block285 ] ; 5 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader293
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.05.i.i.i.i.i.i.i.ph ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.05.i.i.i.i.i.i.i.ph ; 2 uses
  %i.em = load double, ptr %i.ek, align 8, !tbaa !52
  %i.en = load double, ptr %i.el, align 8, !tbaa !52
  store double %i.en, ptr %i.ek, align 8, !tbaa !52
  store double %i.em, ptr %i.el, align 8, !tbaa !52
  %i.eo = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader293
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader293 ], [ %i.eo, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.ep = icmp eq i64 %.0.i.i.i.i.i.i.i, %.neg
  br i1 %i.ep, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.ez, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.es = load double, ptr %i.eq, align 8, !tbaa !52
  %i.et = load double, ptr %i.er, align 8, !tbaa !52
  store double %i.et, ptr %i.eq, align 8, !tbaa !52
  store double %i.es, ptr %i.er, align 8, !tbaa !52
  %i.eu = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.eu ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.eu ; 2 uses
  %i.ex = load double, ptr %i.ev, align 8, !tbaa !52
  %i.ey = load double, ptr %i.ew, align 8, !tbaa !52
  store double %i.ey, ptr %i.ev, align 8, !tbaa !52
  store double %i.ex, ptr %i.ew, align 8, !tbaa !52
  %i.ez = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.ez, %.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !564

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %middle.block285, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.fa = icmp sgt i64 %i.dw, 1
  br i1 %i.fa, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %.not166 = icmp sgt i64 %i.dz, %.0169
  br i1 %.not166, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.fb = add i64 %.0.i.i.i.i.i.i.i, %i.dy
  %i.fc = sub i64 %i.dp, %i.fb                    ; 3 uses
  %min.iters.check255 = icmp ult i64 %i.fc, 14
  br i1 %min.iters.check255, label %.lr.ph.i17.i.i.i.i.i.i.preheader292, label %vector.memcheck245

vector.memcheck245:                               ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %i.fd = mul i64 %i.dm, %3
  %i.fe = shl i64 %i.dx, 4                        ; 2 uses
  %i.ff = shl i64 %.0.i.i.i.i.i.i.i, 3            ; 2 uses
  %i.fg = getelementptr i8, ptr %i.dl, i64 %i.fd
  %i.fh = getelementptr i8, ptr %i.fg, i64 %i.fe
  %scevgep246 = getelementptr i8, ptr %i.fh, i64 %i.ff
  %scevgep247 = getelementptr i8, ptr %i.dl, i64 8
  %i.fi = add i64 %i.dm, 1
  %i.fj = mul i64 %3, %i.fi
  %scevgep248 = getelementptr i8, ptr %scevgep247, i64 %i.fj
  %i.fk = mul i64 %i.db, %i.dm                    ; 2 uses
  %i.fl = getelementptr i8, ptr %i.dl, i64 %i.fk
  %scevgep249.a = getelementptr i8, ptr %i.fl, i64 %i.fe
  %i.fm = getelementptr i8, ptr %scevgep249.a, i64 %i.ff
  %i.fn = getelementptr i8, ptr %i.dl, i64 %5
  %scevgep250 = getelementptr i8, ptr %i.fn, i64 %i.fk
  %bound0251 = icmp ult ptr %scevgep246, %scevgep250
  %bound1252 = icmp ult ptr %i.fm, %scevgep248
  %found.conflict253 = and i1 %bound0251, %bound1252
  br i1 %found.conflict253, label %.lr.ph.i17.i.i.i.i.i.i.preheader292, label %vector.ph256

vector.ph256:                                     ; preds = %vector.memcheck245
  %n.vec257 = and i64 %i.fc, -4                   ; 3 uses
  %i.fo = add i64 %i.dz, %n.vec257
  br label %vector.body258

vector.body258:                                   ; preds = %vector.body258, %vector.ph256
  %index259 = phi i64 [ 0, %vector.ph256 ], [ %index.next264, %vector.body258 ] ; 2 uses
  %i.fp = add i64 %i.dz, %index259                ; 2 uses
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.fp ; 3 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.fp ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 16 ; 2 uses
  %wide.load260 = load <2 x double>, ptr %i.fq, align 8, !tbaa !52, !alias.scope !565, !noalias !568
  %wide.load261 = load <2 x double>, ptr %i.fs, align 8, !tbaa !52, !alias.scope !565, !noalias !568
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  %wide.load262 = load <2 x double>, ptr %i.fr, align 8, !tbaa !52, !alias.scope !568
  %wide.load263 = load <2 x double>, ptr %i.ft, align 8, !tbaa !52, !alias.scope !568
  store <2 x double> %wide.load262, ptr %i.fq, align 8, !tbaa !52, !alias.scope !565, !noalias !568
  store <2 x double> %wide.load263, ptr %i.fs, align 8, !tbaa !52, !alias.scope !565, !noalias !568
  store <2 x double> %wide.load260, ptr %i.fr, align 8, !tbaa !52, !alias.scope !568
  store <2 x double> %wide.load261, ptr %i.ft, align 8, !tbaa !52, !alias.scope !568
  %index.next264 = add nuw i64 %index259, 4       ; 2 uses
  %i.fu = icmp eq i64 %index.next264, %n.vec257
  br i1 %i.fu, label %middle.block265, label %vector.body258, !llvm.loop !570

middle.block265:                                  ; preds = %vector.body258
  %cmp.n266 = icmp eq i64 %i.fc, %n.vec257
  br i1 %cmp.n266, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader292

.lr.ph.i17.i.i.i.i.i.i.preheader292:              ; preds = %vector.memcheck245, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block265
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.dz, %vector.memcheck245 ], [ %i.dz, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.fo, %middle.block265 ] ; 6 uses
  %i.fv = sub i64 %i.dp, %.05.i18.i.i.i.i.i.i.ph
  %xtraiter297 = and i64 %i.fv, 1
  %lcmp.mod298.not = icmp eq i64 %xtraiter297, 0
  br i1 %lcmp.mod298.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader292
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.do, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.fy = load double, ptr %i.fw, align 8, !tbaa !52
  %i.fz = load double, ptr %i.fx, align 8, !tbaa !52
  store double %i.fz, ptr %i.fw, align 8, !tbaa !52
  store double %i.fy, ptr %i.fx, align 8, !tbaa !52
  %i.ga = add nsw i64 %.05.i18.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader292
  %.05.i18.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader292 ], [ %i.ga, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.gb = icmp eq i64 %.0169, %.05.i18.i.i.i.i.i.i.ph
  br i1 %i.gb, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.gl, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.do, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.ge = load double, ptr %i.gc, align 8, !tbaa !52
  %i.gf = load double, ptr %i.gd, align 8, !tbaa !52
  store double %i.gf, ptr %i.gc, align 8, !tbaa !52
  store double %i.ge, ptr %i.gd, align 8, !tbaa !52
  %i.gg = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 3 uses
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.gg ; 2 uses
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.gg ; 2 uses
  %i.gj = load double, ptr %i.gh, align 8, !tbaa !52
  %i.gk = load double, ptr %i.gi, align 8, !tbaa !52
  store double %i.gk, ptr %i.gh, align 8, !tbaa !52
  store double %i.gj, ptr %i.gi, align 8, !tbaa !52
  %i.gl = add nsw i64 %.05.i18.i.i.i.i.i.i, 2
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.gg, %.0169
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !571

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.gq, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i ] ; 3 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.gn = load <2 x double>, ptr %i.gm, align 1, !tbaa !44
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.gp = load <2 x double>, ptr %i.go, align 16, !tbaa !44
  store <2 x double> %i.gp, ptr %i.gm, align 1, !tbaa !44
  store <2 x double> %i.gn, ptr %i.go, align 16, !tbaa !44
  %i.gq = add nuw nsw i64 %.021.i.i.i.i.i.i, 2    ; 2 uses
  %i.gr = icmp slt i64 %i.gq, %i.dz
  br i1 %i.gr, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !572

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i, %middle.block265, %._crit_edge.i.i.i.i.i.i, %bb.m
  %i.gs = load ptr, ptr %0, align 8, !tbaa !69, !noalias !573 ; 2 uses
  %i.gt = getelementptr [8 x i8], ptr %i.gs, i64 %.0169 ; 4 uses
  %i.gu = load i64, ptr %i.bn, align 8, !tbaa !75, !noalias !573 ; 3 uses
  %i.gv = sub nsw i64 %i.gu, %i.cq                ; 2 uses
  %i.gw = load i64, ptr %i.bp, align 8, !tbaa !9, !noalias !576 ; 22 uses
  %i.gx = mul nsw i64 %i.gw, %i.gv                ; 2 uses
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.gx ; 2 uses
  %i.gz = load ptr, ptr %i.bq, align 8, !tbaa !50
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %.0169 ; 3 uses
  %i.hb = getelementptr inbounds [8 x i8], ptr %i.gy, i64 %i.gw ; 18 uses
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !52 ; 2 uses
  %i.hd = fmul double %i.hc, %i.hc                ; 3 uses
  br i1 %i.cr, label %.lr.ph.i.i.i.i.i.i34.preheader, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i

.lr.ph.i.i.i.i.i.i34.preheader:                   ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit
  br i1 %i.df, label %.lr.ph.i.i.i.i.i.i34.epil.preheader, label %.lr.ph.i.i.i.i.i.i34

.lr.ph.i.i.i.i.i.i34:                             ; preds = %.lr.ph.i.i.i.i.i.i34.preheader, %.lr.ph.i.i.i.i.i.i34
  %.01724.i.i.i.i.i.i = phi i64 [ %i.ib, %.lr.ph.i.i.i.i.i.i34 ], [ 1, %.lr.ph.i.i.i.i.i.i34.preheader ] ; 5 uses
  %.02223.i.i.i.i.i.i = phi double [ %i.ia, %.lr.ph.i.i.i.i.i.i34 ], [ %i.hd, %.lr.ph.i.i.i.i.i.i34.preheader ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i.i.i.i.i34 ], [ 0, %.lr.ph.i.i.i.i.i.i34.preheader ]
  %i.he = mul nsw i64 %.01724.i.i.i.i.i.i, %i.gw
  %i.hf = getelementptr [8 x i8], ptr %i.hb, i64 %i.he
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !52 ; 2 uses
  %i.hh = fmul double %i.hg, %i.hg
  %i.hi = fadd double %.02223.i.i.i.i.i.i, %i.hh
  %i.hj = add nuw nsw i64 %.01724.i.i.i.i.i.i, 1
  %i.hk = mul nsw i64 %i.hj, %i.gw
  %i.hl = getelementptr [8 x i8], ptr %i.hb, i64 %i.hk
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !52 ; 2 uses
  %i.hn = fmul double %i.hm, %i.hm
  %i.ho = fadd double %i.hi, %i.hn
  %i.hp = add nuw nsw i64 %.01724.i.i.i.i.i.i, 2
  %i.hq = mul nsw i64 %i.hp, %i.gw
  %i.hr = getelementptr [8 x i8], ptr %i.hb, i64 %i.hq
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !52 ; 2 uses
  %i.ht = fmul double %i.hs, %i.hs
  %i.hu = fadd double %i.ho, %i.ht
  %i.hv = add nuw nsw i64 %.01724.i.i.i.i.i.i, 3
  %i.hw = mul nsw i64 %i.hv, %i.gw
  %i.hx = getelementptr [8 x i8], ptr %i.hb, i64 %i.hw
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !52 ; 2 uses
  %i.hz = fmul double %i.hy, %i.hy
  %i.ia = fadd double %i.hu, %i.hz                ; 3 uses
  %i.ib = add nuw nsw i64 %.01724.i.i.i.i.i.i, 4  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i34, !llvm.loop !579

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i34
  br i1 %lcmp.mod300.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i34.epil.preheader

.lr.ph.i.i.i.i.i.i34.epil.preheader:              ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i34.preheader
  %.01724.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i34.preheader ], [ %i.ib, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i.loopexit.unr-lcssa ]
  %.02223.i.i.i.i.i.i.epil.init = phi double [ %i.hd, %.lr.ph.i.i.i.i.i.i34.preheader ], [ %i.ia, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod302)
  br label %.lr.ph.i.i.i.i.i.i34.epil

.lr.ph.i.i.i.i.i.i34.epil:                        ; preds = %.lr.ph.i.i.i.i.i.i34.epil, %.lr.ph.i.i.i.i.i.i34.epil.preheader
  %.01724.i.i.i.i.i.i.epil = phi i64 [ %i.ih, %.lr.ph.i.i.i.i.i.i34.epil ], [ %.01724.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i34.epil.preheader ] ; 2 uses
  %.02223.i.i.i.i.i.i.epil = phi double [ %i.ig, %.lr.ph.i.i.i.i.i.i34.epil ], [ %.02223.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i34.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i34.epil ], [ 0, %.lr.ph.i.i.i.i.i.i34.epil.preheader ]
  %i.ic = mul nsw i64 %.01724.i.i.i.i.i.i.epil, %i.gw
  %i.id = getelementptr [8 x i8], ptr %i.hb, i64 %i.ic
  %i.ie = load double, ptr %i.id, align 8, !tbaa !52 ; 2 uses
  %i.if = fmul double %i.ie, %i.ie
  %i.ig = fadd double %.02223.i.i.i.i.i.i.epil, %i.if ; 2 uses
  %i.ih = add nuw nsw i64 %.01724.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter299
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i34.epil, !llvm.loop !580

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i34.epil, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit
  %i.ii = phi double [ %i.hd, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit ], [ %i.ia, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i.loopexit.unr-lcssa ], [ %i.ig, %.lr.ph.i.i.i.i.i.i34.epil ] ; 2 uses
  %i.ij = load double, ptr %i.gy, align 8, !tbaa !52 ; 8 uses
  %i.ik = fcmp ugt double %i.ii, f0x0010000000000000
  br i1 %i.ik, label %.critedge.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader:     ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i
  store double 0.000000e+00, ptr %i.ha, align 8, !tbaa !52
  %ident.check234.not = icmp eq i64 %i.gw, 1
  %or.cond = and i1 %min.iters.check236, %ident.check234.not
  br i1 %or.cond, label %vector.body239, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader291

vector.body239:                                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %vector.body239
  %index240 = phi i64 [ %index.next241, %vector.body239 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.il = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %index240 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  store <2 x double> zeroinitializer, ptr %i.il, align 8, !tbaa !52
  store <2 x double> zeroinitializer, ptr %i.im, align 8, !tbaa !52
  %index.next241 = add nuw i64 %index240, 4       ; 2 uses
  %i.in = icmp eq i64 %index.next241, %n.vec238
  br i1 %i.in, label %middle.block242, label %vector.body239, !llvm.loop !581

middle.block242:                                  ; preds = %vector.body239
  br i1 %cmp.n243, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERdS7_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader291

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader291:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block242
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec238, %middle.block242 ] ; 3 uses
  br i1 %lcmp.mod304.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader291, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.iq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader291 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader291 ]
  %i.io = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %i.gw
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.io
  store double 0.000000e+00, ptr %i.ip, align 8, !tbaa !52
  %i.iq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter303
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !582

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader291
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader291 ], [ %i.iq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ir = add i64 %i.dh, %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.is = icmp ugt i64 %i.ir, -4
  br i1 %i.is, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERdS7_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.je, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.it = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.gw
  %i.iu = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.it
  store double 0.000000e+00, ptr %i.iu, align 8, !tbaa !52
  %i.iv = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.iw = mul nsw i64 %i.iv, %i.gw
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.iw
  store double 0.000000e+00, ptr %i.ix, align 8, !tbaa !52
  %i.iy = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.iz = mul nsw i64 %i.iy, %i.gw
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.iz
  store double 0.000000e+00, ptr %i.ja, align 8, !tbaa !52
  %i.jb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.jc = mul nsw i64 %i.jb, %i.gw
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.jc
  store double 0.000000e+00, ptr %i.jd, align 8, !tbaa !52
  %i.je = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.je, %i.cp
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERdS7_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !583

.critedge.i.i:                                    ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_INS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.i
  %i.jf = fmul double %i.ij, %i.ij
  %i.jg = fadd double %i.ii, %i.jf
  %i.jh = call double @sqrt(double noundef %i.jg) #20 ; 2 uses
  %i.ji = fcmp ult double %i.ij, 0.000000e+00
  %i.jj = fneg double %i.jh
  %storemerge.i.i = select i1 %i.ji, double %i.jh, double %i.jj ; 4 uses
  %i.jk = fsub double %i.ij, %storemerge.i.i      ; 6 uses
  %ident.check.not = icmp eq i64 %i.gw, 1
  %or.cond288 = and i1 %min.iters.check221, %ident.check.not
  br i1 %or.cond288, label %vector.ph222, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader

vector.ph222:                                     ; preds = %.critedge.i.i
  %broadcast.splatinsert224 = insertelement <2 x double> poison, double %i.jk, i64 0
  %broadcast.splat225 = shufflevector <2 x double> %broadcast.splatinsert224, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body226

vector.body226:                                   ; preds = %vector.body226, %vector.ph222
  %index227 = phi i64 [ 0, %vector.ph222 ], [ %index.next229, %vector.body226 ] ; 2 uses
  %i.jl = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %index227 ; 2 uses
  %wide.load228 = load <2 x double>, ptr %i.jl, align 8, !tbaa !52
  %i.jm = fdiv <2 x double> %wide.load228, %broadcast.splat225
  store <2 x double> %i.jm, ptr %i.jl, align 8, !tbaa !52
  %index.next229 = add nuw i64 %index227, 2       ; 2 uses
  %i.jn = icmp eq i64 %index.next229, %n.vec223
  br i1 %i.jn, label %middle.block230, label %vector.body226, !llvm.loop !584

middle.block230:                                  ; preds = %vector.body226
  br i1 %cmp.n231, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %.critedge.i.i, %middle.block230
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.critedge.i.i ], [ %n.vec223, %middle.block230 ] ; 4 uses
  %i.jo = add i64 %.07.lcssa.i, %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.jp = sub i64 %i.bo, %i.jo
  %xtraiter305 = and i64 %i.jp, 3                 ; 2 uses
  %lcmp.mod306.not = icmp eq i64 %xtraiter305, 0
  br i1 %lcmp.mod306.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.ju, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter307 = phi i64 [ %prol.iter307.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.jq = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol, %i.gw
  %i.jr = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.jq ; 2 uses
  %i.js = load double, ptr %i.jr, align 8, !tbaa !52
  %i.jt = fdiv double %i.js, %i.jk
  store double %i.jt, ptr %i.jr, align 8, !tbaa !52
  %i.ju = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter307.next = add i64 %prol.iter307, 1   ; 2 uses
  %prol.iter307.cmp.not = icmp eq i64 %prol.iter307.next, %xtraiter305
  br i1 %prol.iter307.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !585

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ju, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.jv = add i64 %i.di, %.05.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.jw = icmp ugt i64 %i.jv, -4
  br i1 %i.jw, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.kq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.jx = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, %i.gw
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.jx ; 2 uses
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !52
  %i.ka = fdiv double %i.jz, %i.jk
  store double %i.ka, ptr %i.jy, align 8, !tbaa !52
  %i.kb = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.kc = mul nsw i64 %i.kb, %i.gw
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.kc ; 2 uses
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !52
  %i.kf = fdiv double %i.ke, %i.jk
  store double %i.kf, ptr %i.kd, align 8, !tbaa !52
  %i.kg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.kh = mul nsw i64 %i.kg, %i.gw
  %i.ki = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.kh ; 2 uses
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !52
  %i.kk = fdiv double %i.kj, %i.jk
  store double %i.kk, ptr %i.ki, align 8, !tbaa !52
  %i.kl = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.km = mul nsw i64 %i.kl, %i.gw
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.km ; 2 uses
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !52
  %i.kp = fdiv double %i.ko, %i.jk
  store double %i.kp, ptr %i.kn, align 8, !tbaa !52
  %i.kq = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.kq, %i.cp
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !586

_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block230
  %i.kr = fsub double %storemerge.i.i, %i.ij
  %i.ks = fdiv double %i.kr, %storemerge.i.i
  store double %i.ks, ptr %i.ha, align 8, !tbaa !52
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERdS7_.exit

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERdS7_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block242, %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i.loopexit
  %.0165 = phi double [ %storemerge.i.i, %_ZN5Eigen5BlockINS0_INS0_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEELi1ELin1ELb0EEaSINS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIddEEKNS0_IKS4_Li1ELin1ELb0EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS1_IdLi1ELin1ELi1ELi1ELin1EEEEEEEEERS5_RKNS_9DenseBaseIT_EE.exit.i.i.loopexit ], [ %i.ij, %middle.block242 ], [ %i.ij, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ij, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.kt = mul nsw i64 %i.gw, %i.cn
  %i.ku = getelementptr [8 x i8], ptr %i.gt, i64 %i.kt
  store double %.0165, ptr %i.ku, align 8, !tbaa !52
  %.not29 = icmp eq i64 %.0169, 0
  br i1 %.not29, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERdS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.gs, i64 %i.gx
  store ptr %i.kv, ptr %1, align 8, !tbaa !97, !alias.scope !587
  store i64 %.0169, ptr %i.ct, align 8, !tbaa !81, !alias.scope !587
  store i64 %i.cq, ptr %i.cu, align 8, !tbaa !81, !alias.scope !587
  store ptr %0, ptr %i.cv, align 8, !tbaa !17, !alias.scope !587
  store i64 0, ptr %i.cw, align 8, !tbaa !81, !alias.scope !587
  store i64 %i.gv, ptr %i.cx, align 8, !tbaa !81, !alias.scope !587
  store i64 %i.gw, ptr %i.cy, align 8, !tbaa !99, !alias.scope !587
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.kw = sub nsw i64 %i.gu, %i.cp                ; 2 uses
  %i.kx = mul nsw i64 %i.gw, %i.kw
  %i.ky = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.kx
  store ptr %i.ky, ptr %2, align 8
  store i64 %i.cp, ptr %.sroa.485.0..sroa_idx, align 8
  store ptr %i.gt, ptr %.sroa.586.0..sroa_idx, align 8
  store i64 %i.gu, ptr %.sroa.788.0..sroa_idx, align 8
  store ptr %0, ptr %.sroa.889.0..sroa_idx, align 8
  store i64 %.0169, ptr %.sroa.990.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.1091.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.1192.0..sroa_idx, align 8
  store i64 %i.kw, ptr %.sroa.1294.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.1395.0..sroa_idx, align 8
  %i.kz = load ptr, ptr %i.cb, align 8, !tbaa !156
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS_9TransposeIKNS1_INS1_IS3_Li1ELin1ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.ha, ptr noundef nonnull %i.kz)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE22makeHouseholderInPlaceERdS7_.exit
  br i1 %.not, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit48, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.la = load ptr, ptr %0, align 8, !tbaa !69, !noalias !590 ; 8 uses
  %i.lb = load i64, ptr %i.bp, align 8, !tbaa !9, !noalias !590 ; 7 uses
  %i.lc = mul nsw i64 %i.lb, %.0169
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.la, i64 %i.lc ; 11 uses
  %i.le = add nuw nsw i64 %.0169, 1               ; 5 uses
  %i.lf = mul i64 %i.lb, %i.cn
  %i.lg = getelementptr [8 x i8], ptr %i.la, i64 %i.lf ; 10 uses
  %i.lh = ptrtoint ptr %i.ld to i64               ; 2 uses
  %i.li = and i64 %i.lh, 7
  %.not.i.i.i.i.i.i.i35 = icmp eq i64 %i.li, 0
  br i1 %.not.i.i.i.i.i.i.i35, label %bb.q, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i36

bb.q:                                             ; preds = %bb.p
  %i.lj = lshr exact i64 %i.lh, 3
  %i.lk = and i64 %i.lj, 1
  %i.ll = call i64 @llvm.smin.i64(i64 %i.lk, i64 %i.le)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i36

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i36: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i.i37 = phi i64 [ %i.ll, %bb.q ], [ %i.le, %bb.p ] ; 13 uses
  %i.lm = sub nsw i64 %i.le, %.0.i.i.i.i.i.i.i37  ; 2 uses
  %i.ln = sdiv i64 %i.lm, 2                       ; 2 uses
  %i.lo = shl nsw i64 %i.ln, 1                    ; 2 uses
  %i.lp = add nsw i64 %i.lo, %.0.i.i.i.i.i.i.i37  ; 6 uses
  %i.lq = icmp sgt i64 %.0.i.i.i.i.i.i.i37, 0
  br i1 %i.lq, label %.lr.ph.i.i.i.i.i.i.i45.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i38

.lr.ph.i.i.i.i.i.i.i45.preheader:                 ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i36
  %min.iters.check207 = icmp ult i64 %.0.i.i.i.i.i.i.i37, 10
  br i1 %min.iters.check207, label %.lr.ph.i.i.i.i.i.i.i45.preheader290, label %vector.memcheck200

vector.memcheck200:                               ; preds = %.lr.ph.i.i.i.i.i.i.i45.preheader
  %i.lr = mul i64 %i.lb, %i.dk
  %i.ls = shl i64 %.0.i.i.i.i.i.i.i37, 3          ; 2 uses
  %i.lt = getelementptr i8, ptr %i.la, i64 %i.lr
  %scevgep201 = getelementptr i8, ptr %i.lt, i64 %i.ls
  %i.lu = mul i64 %i.da, %i.lb
  %i.lv = getelementptr i8, ptr %i.la, i64 %i.lu
  %scevgep202 = getelementptr i8, ptr %i.lv, i64 %i.ls
  %bound0203 = icmp ult ptr %i.ld, %scevgep202
  %bound1204 = icmp ult ptr %i.lg, %scevgep201
  %found.conflict205 = and i1 %bound0203, %bound1204
  br i1 %found.conflict205, label %.lr.ph.i.i.i.i.i.i.i45.preheader290, label %vector.ph208

vector.ph208:                                     ; preds = %vector.memcheck200
  %n.vec209 = and i64 %.0.i.i.i.i.i.i.i37, 9223372036854775804 ; 3 uses
  br label %vector.body210

vector.body210:                                   ; preds = %vector.body210, %vector.ph208
  %index211 = phi i64 [ 0, %vector.ph208 ], [ %index.next216, %vector.body210 ] ; 3 uses
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %index211 ; 3 uses
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %index211 ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 16 ; 2 uses
  %wide.load212 = load <2 x double>, ptr %i.lw, align 8, !tbaa !52, !alias.scope !593, !noalias !596
  %wide.load213 = load <2 x double>, ptr %i.ly, align 8, !tbaa !52, !alias.scope !593, !noalias !596
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 16 ; 2 uses
  %wide.load214 = load <2 x double>, ptr %i.lx, align 8, !tbaa !52, !alias.scope !596
  %wide.load215 = load <2 x double>, ptr %i.lz, align 8, !tbaa !52, !alias.scope !596
  store <2 x double> %wide.load214, ptr %i.lw, align 8, !tbaa !52, !alias.scope !593, !noalias !596
  store <2 x double> %wide.load215, ptr %i.ly, align 8, !tbaa !52, !alias.scope !593, !noalias !596
  store <2 x double> %wide.load212, ptr %i.lx, align 8, !tbaa !52, !alias.scope !596
  store <2 x double> %wide.load213, ptr %i.lz, align 8, !tbaa !52, !alias.scope !596
  %index.next216 = add nuw i64 %index211, 4       ; 2 uses
  %i.ma = icmp eq i64 %index.next216, %n.vec209
  br i1 %i.ma, label %middle.block217, label %vector.body210, !llvm.loop !598

middle.block217:                                  ; preds = %vector.body210
  %cmp.n218 = icmp eq i64 %.0.i.i.i.i.i.i.i37, %n.vec209
  br i1 %cmp.n218, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i38, label %.lr.ph.i.i.i.i.i.i.i45.preheader290

.lr.ph.i.i.i.i.i.i.i45.preheader290:              ; preds = %vector.memcheck200, %.lr.ph.i.i.i.i.i.i.i45.preheader, %middle.block217
  %.05.i.i.i.i.i.i.i46.ph = phi i64 [ 0, %vector.memcheck200 ], [ 0, %.lr.ph.i.i.i.i.i.i.i45.preheader ], [ %n.vec209, %middle.block217 ] ; 5 uses
  %.neg314 = or disjoint i64 %.05.i.i.i.i.i.i.i46.ph, 1
  %xtraiter308 = and i64 %.0.i.i.i.i.i.i.i37, 1
  %lcmp.mod309.not = icmp eq i64 %xtraiter308, 0
  br i1 %lcmp.mod309.not, label %.lr.ph.i.i.i.i.i.i.i45.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i45.prol

.lr.ph.i.i.i.i.i.i.i45.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i45.preheader290
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %.05.i.i.i.i.i.i.i46.ph ; 2 uses
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %.05.i.i.i.i.i.i.i46.ph ; 2 uses
  %i.md = load double, ptr %i.mb, align 8, !tbaa !52
  %i.me = load double, ptr %i.mc, align 8, !tbaa !52
  store double %i.me, ptr %i.mb, align 8, !tbaa !52
  store double %i.md, ptr %i.mc, align 8, !tbaa !52
  %i.mf = or disjoint i64 %.05.i.i.i.i.i.i.i46.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i45.prol.loopexit

.lr.ph.i.i.i.i.i.i.i45.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i45.prol, %.lr.ph.i.i.i.i.i.i.i45.preheader290
  %.05.i.i.i.i.i.i.i46.unr = phi i64 [ %.05.i.i.i.i.i.i.i46.ph, %.lr.ph.i.i.i.i.i.i.i45.preheader290 ], [ %i.mf, %.lr.ph.i.i.i.i.i.i.i45.prol ]
  %i.mg = icmp eq i64 %.0.i.i.i.i.i.i.i37, %.neg314
  br i1 %i.mg, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i38, label %.lr.ph.i.i.i.i.i.i.i45

.lr.ph.i.i.i.i.i.i.i45:                           ; preds = %.lr.ph.i.i.i.i.i.i.i45.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i45
  %.05.i.i.i.i.i.i.i46 = phi i64 [ %i.mq, %.lr.ph.i.i.i.i.i.i.i45 ], [ %.05.i.i.i.i.i.i.i46.unr, %.lr.ph.i.i.i.i.i.i.i45.prol.loopexit ] ; 4 uses
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %.05.i.i.i.i.i.i.i46 ; 2 uses
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %.05.i.i.i.i.i.i.i46 ; 2 uses
  %i.mj = load double, ptr %i.mh, align 8, !tbaa !52
  %i.mk = load double, ptr %i.mi, align 8, !tbaa !52
  store double %i.mk, ptr %i.mh, align 8, !tbaa !52
  store double %i.mj, ptr %i.mi, align 8, !tbaa !52
  %i.ml = add nuw nsw i64 %.05.i.i.i.i.i.i.i46, 1 ; 2 uses
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %i.ml ; 2 uses
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.lg, i64 %i.ml ; 2 uses
  %i.mo = load double, ptr %i.mm, align 8, !tbaa !52
  %i.mp = load double, ptr %i.mn, align 8, !tbaa !52
  store double %i.mp, ptr %i.mm, align 8, !tbaa !52
  store double %i.mo, ptr %i.mn, align 8, !tbaa !52
  %i.mq = add nuw nsw i64 %.05.i.i.i.i.i.i.i46, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i47.1 = icmp eq i64 %i.mq, %.0.i.i.i.i.i.i.i37
  br i1 %exitcond.not.i.i.i.i.i.i.i47.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i38, label %.lr.ph.i.i.i.i.i.i.i45, !llvm.loop !599

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i38: ; preds = %.lr.ph.i.i.i.i.i.i.i45.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i45, %middle.block217, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i36
  %i.mr = icmp sgt i64 %i.lm, 1
  br i1 %i.mr, label %.lr.ph.i.i.i.i.i.i43, label %._crit_edge.i.i.i.i.i.i39

._crit_edge.i.i.i.i.i.i39:                        ; preds = %.lr.ph.i.i.i.i.i.i43, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i38
  %.not167 = icmp sgt i64 %i.lp, %.0169
  br i1 %.not167, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit48, label %.lr.ph.i17.i.i.i.i.i.i40.preheader

.lr.ph.i17.i.i.i.i.i.i40.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i39
  %i.ms = add i64 %.0.i.i.i.i.i.i.i37, %i.lo
  %i.mt = sub i64 %i.le, %i.ms                    ; 3 uses
  %min.iters.check188 = icmp ult i64 %i.mt, 14
  br i1 %min.iters.check188, label %.lr.ph.i17.i.i.i.i.i.i40.preheader289, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i40.preheader
  %i.mu = mul i64 %i.lb, %6
  %i.mv = shl i64 %i.ln, 4                        ; 2 uses
  %i.mw = shl i64 %.0.i.i.i.i.i.i.i37, 3          ; 2 uses
  %i.mx = getelementptr i8, ptr %i.la, i64 %i.mu
  %i.my = getelementptr i8, ptr %i.mx, i64 %i.mv
  %scevgep = getelementptr i8, ptr %i.my, i64 %i.mw
  %scevgep183 = getelementptr i8, ptr %i.la, i64 8
  %i.mz = add i64 %i.lb, 1
  %i.na = mul i64 %6, %i.mz
  %scevgep184 = getelementptr i8, ptr %scevgep183, i64 %i.na
  %i.nb = mul i64 %i.cz, %i.lb                    ; 2 uses
  %i.nc = getelementptr i8, ptr %i.la, i64 %i.nb
  %scevgep185.a = getelementptr i8, ptr %i.nc, i64 %i.mv
  %i.nd = getelementptr i8, ptr %scevgep185.a, i64 %i.mw
  %i.ne = getelementptr i8, ptr %i.la, i64 %8
  %scevgep186 = getelementptr i8, ptr %i.ne, i64 %i.nb
  %bound0 = icmp ult ptr %scevgep, %scevgep186
  %bound1 = icmp ult ptr %i.nd, %scevgep184
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i17.i.i.i.i.i.i40.preheader289, label %vector.ph189

vector.ph189:                                     ; preds = %vector.memcheck
  %n.vec190 = and i64 %i.mt, -4                   ; 3 uses
  %i.nf = add i64 %i.lp, %n.vec190
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph189
  %index192 = phi i64 [ 0, %vector.ph189 ], [ %index.next196, %vector.body191 ] ; 2 uses
  %i.ng = add i64 %i.lp, %index192                ; 2 uses
  %i.nh = getelementptr inbounds [8 x i8], ptr %i.ld, i64 %i.ng ; 3 uses
  %i.ni = getelementptr inbounds [8 x i8], ptr %i.lg, i64 %i.ng ; 3 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nh, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.nh, align 8, !tbaa !52, !alias.scope !600, !noalias !603
  %wide.load193 = load <2 x double>, ptr %i.nj, align 8, !tbaa !52, !alias.scope !600, !noalias !603
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ni, i64 16 ; 2 uses
  %wide.load194 = load <2 x double>, ptr %i.ni, align 8, !tbaa !52, !alias.scope !603
  %wide.load195 = load <2 x double>, ptr %i.nk, align 8, !tbaa !52, !alias.scope !603
  store <2 x double> %wide.load194, ptr %i.nh, align 8, !tbaa !52, !alias.scope !600, !noalias !603
  store <2 x double> %wide.load195, ptr %i.nj, align 8, !tbaa !52, !alias.scope !600, !noalias !603
  store <2 x double> %wide.load, ptr %i.ni, align 8, !tbaa !52, !alias.scope !603
  store <2 x double> %wide.load193, ptr %i.nk, align 8, !tbaa !52, !alias.scope !603
  %index.next196 = add nuw i64 %index192, 4       ; 2 uses
  %i.nl = icmp eq i64 %index.next196, %n.vec190
  br i1 %i.nl, label %middle.block197, label %vector.body191, !llvm.loop !605

middle.block197:                                  ; preds = %vector.body191
  %cmp.n198 = icmp eq i64 %i.mt, %n.vec190
  br i1 %cmp.n198, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit48, label %.lr.ph.i17.i.i.i.i.i.i40.preheader289

.lr.ph.i17.i.i.i.i.i.i40.preheader289:            ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i40.preheader, %middle.block197
  %.05.i18.i.i.i.i.i.i41.ph = phi i64 [ %i.lp, %vector.memcheck ], [ %i.lp, %.lr.ph.i17.i.i.i.i.i.i40.preheader ], [ %i.nf, %middle.block197 ] ; 6 uses
  %i.nm = sub i64 %i.le, %.05.i18.i.i.i.i.i.i41.ph
  %xtraiter311 = and i64 %i.nm, 1
  %lcmp.mod312.not = icmp eq i64 %xtraiter311, 0
  br i1 %lcmp.mod312.not, label %.lr.ph.i17.i.i.i.i.i.i40.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i40.prol

.lr.ph.i17.i.i.i.i.i.i40.prol:                    ; preds = %.lr.ph.i17.i.i.i.i.i.i40.preheader289
  %i.nn = getelementptr inbounds [8 x i8], ptr %i.ld, i64 %.05.i18.i.i.i.i.i.i41.ph ; 2 uses
  %i.no = getelementptr inbounds [8 x i8], ptr %i.lg, i64 %.05.i18.i.i.i.i.i.i41.ph ; 2 uses
  %i.np = load double, ptr %i.nn, align 8, !tbaa !52
  %i.nq = load double, ptr %i.no, align 8, !tbaa !52
  store double %i.nq, ptr %i.nn, align 8, !tbaa !52
  store double %i.np, ptr %i.no, align 8, !tbaa !52
  %i.nr = add nsw i64 %.05.i18.i.i.i.i.i.i41.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i40.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i40.prol.loopexit:           ; preds = %.lr.ph.i17.i.i.i.i.i.i40.prol, %.lr.ph.i17.i.i.i.i.i.i40.preheader289
  %.05.i18.i.i.i.i.i.i41.unr = phi i64 [ %.05.i18.i.i.i.i.i.i41.ph, %.lr.ph.i17.i.i.i.i.i.i40.preheader289 ], [ %i.nr, %.lr.ph.i17.i.i.i.i.i.i40.prol ]
  %i.ns = icmp eq i64 %.0169, %.05.i18.i.i.i.i.i.i41.ph
  br i1 %i.ns, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit48, label %.lr.ph.i17.i.i.i.i.i.i40

.lr.ph.i17.i.i.i.i.i.i40:                         ; preds = %.lr.ph.i17.i.i.i.i.i.i40.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i40
  %.05.i18.i.i.i.i.i.i41 = phi i64 [ %i.oc, %.lr.ph.i17.i.i.i.i.i.i40 ], [ %.05.i18.i.i.i.i.i.i41.unr, %.lr.ph.i17.i.i.i.i.i.i40.prol.loopexit ] ; 4 uses
  %i.nt = getelementptr inbounds [8 x i8], ptr %i.ld, i64 %.05.i18.i.i.i.i.i.i41 ; 2 uses
  %i.nu = getelementptr inbounds [8 x i8], ptr %i.lg, i64 %.05.i18.i.i.i.i.i.i41 ; 2 uses
  %i.nv = load double, ptr %i.nt, align 8, !tbaa !52
  %i.nw = load double, ptr %i.nu, align 8, !tbaa !52
  store double %i.nw, ptr %i.nt, align 8, !tbaa !52
  store double %i.nv, ptr %i.nu, align 8, !tbaa !52
  %i.nx = add nsw i64 %.05.i18.i.i.i.i.i.i41, 1   ; 3 uses
  %i.ny = getelementptr inbounds [8 x i8], ptr %i.ld, i64 %i.nx ; 2 uses
  %i.nz = getelementptr inbounds [8 x i8], ptr %i.lg, i64 %i.nx ; 2 uses
  %i.oa = load double, ptr %i.ny, align 8, !tbaa !52
  %i.ob = load double, ptr %i.nz, align 8, !tbaa !52
  store double %i.ob, ptr %i.ny, align 8, !tbaa !52
  store double %i.oa, ptr %i.nz, align 8, !tbaa !52
  %i.oc = add nsw i64 %.05.i18.i.i.i.i.i.i41, 2
  %exitcond.not.i19.i.i.i.i.i.i42.1 = icmp eq i64 %i.nx, %.0169
  br i1 %exitcond.not.i19.i.i.i.i.i.i42.1, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit48, label %.lr.ph.i17.i.i.i.i.i.i40, !llvm.loop !606

.lr.ph.i.i.i.i.i.i43:                             ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i38, %.lr.ph.i.i.i.i.i.i43
  %.021.i.i.i.i.i.i44 = phi i64 [ %i.oh, %.lr.ph.i.i.i.i.i.i43 ], [ %.0.i.i.i.i.i.i.i37, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i38 ] ; 3 uses
  %i.od = getelementptr inbounds [8 x i8], ptr %i.lg, i64 %.021.i.i.i.i.i.i44 ; 2 uses
  %i.oe = load <2 x double>, ptr %i.od, align 1, !tbaa !44
  %i.of = getelementptr inbounds [8 x i8], ptr %i.ld, i64 %.021.i.i.i.i.i.i44 ; 2 uses
  %i.og = load <2 x double>, ptr %i.of, align 16, !tbaa !44
  store <2 x double> %i.og, ptr %i.od, align 1, !tbaa !44
  store <2 x double> %i.oe, ptr %i.of, align 16, !tbaa !44
  %i.oh = add nsw i64 %.021.i.i.i.i.i.i44, 2      ; 2 uses
  %i.oi = icmp slt i64 %i.oh, %i.lp
  br i1 %i.oi, label %.lr.ph.i.i.i.i.i.i43, label %._crit_edge.i.i.i.i.i.i39, !llvm.loop !572

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit48: ; preds = %.lr.ph.i17.i.i.i.i.i.i40.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i40, %middle.block197, %._crit_edge.i.i.i.i.i.i39, %bb.o
  %i.oj = add nsw i64 %.0169, -1
  %i.ok = icmp sgt i64 %.0169, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ok, label %bb.m, label %.loopexit, !llvm.loop !607

.loopexit:                                        ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit48, %bb.l, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen19ColPivHouseholderQRINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14computeInPlaceEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Eigen::VectorBlock.860", align 8 ; 9 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %2 = alloca %"class.Eigen::VectorBlock.150", align 8 ; 14 uses
  %3 = alloca %"class.Eigen::Block.37", align 8   ; 10 uses
  %4 = alloca %"class.Eigen::VectorBlock.150", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !9    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !75   ; 32 uses
  %.sroa.speculated.i = tail call noundef i64 @llvm.smin.i64(i64 %i.e, i64 %i.c) ; 13 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !61
  %.not.i.i = icmp eq i64 %.sroa.speculated.i, %i.h
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !50
  tail call void @free(ptr noundef %i.i) #20
  %i.j = icmp sgt i64 %.sroa.speculated.i, 0
  br i1 %i.j, label %bb.c, label %.sink.split.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = icmp samesign ugt i64 %.sroa.speculated.i, 2305843009213693951
  br i1 %i.k, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !24
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i: ; preds = %bb.c
  %i.m = shl nuw i64 %.sroa.speculated.i, 3
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #22 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %.sink.split.i.i

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !24
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i, %bb.b
  %.sink.i.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i ], [ null, %bb.b ]
  store ptr %.sink.i.i, ptr %i.f, align 8, !tbaa !50
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %bb.a, %.sink.split.i.i
  store i64 %.sroa.speculated.i, ptr %i.g, align 8, !tbaa !61
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !517
  %.not.i.i82 = icmp eq i64 %i.e, %i.s
  br i1 %.not.i.i82, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !156
  tail call void @free(ptr noundef %i.t) #20
  %i.u = icmp sgt i64 %i.e, 0
  br i1 %i.u, label %bb.g, label %.sink.split.i.i83

bb.g:                                             ; preds = %bb.f
  %i.v = icmp samesign ugt i64 %i.e, 2305843009213693951
  br i1 %i.v, label %bb.h, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i85

bb.h:                                             ; preds = %bb.g
  %i.w = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.w, align 8, !tbaa !24
  tail call void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i85: ; preds = %bb.g
  %i.x = shl nuw i64 %i.e, 3
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.x) #22 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.i, label %.sink.split.i.i83

bb.i:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i85
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aa, align 8, !tbaa !24
  tail call void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

.sink.split.i.i83:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i85, %bb.f
  %.sink.i.i84 = phi ptr [ %i.y, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i85 ], [ null, %bb.f ]
  store ptr %.sink.i.i84, ptr %i.q, align 8, !tbaa !156
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, %.sink.split.i.i83
  store i64 %i.e, ptr %i.r, align 8, !tbaa !517
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !75  ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !534
  %.not.i.i86 = icmp eq i64 %i.ac, %i.ae
  br i1 %.not.i.i86, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIlLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !158
  tail call void @free(ptr noundef %i.af) #20
  %i.ag = icmp sgt i64 %i.ac, 0
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal26call_dense_assignment_loopINS_5BlockINS2_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS4_EEKNS2_IKNS3_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS_3MapINS3_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEENS0_13sub_assign_opIddEEEEvRT_RKT0_RKT1_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %4, ptr %5, align 8, !tbaa !1019
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.by, align 8, !tbaa !1021
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %2, ptr %i.bz, align 8, !tbaa !1023
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %0, ptr %i.ca, align 8, !tbaa !1025
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS6_EEKNS4_IKNS5_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSY_(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.cb = load ptr, ptr %3, align 8, !tbaa !50
  call void @free(ptr noundef %i.cb) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.d:                                             ; preds = %.loopexit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.cd = load ptr, ptr %3, align 8, !tbaa !50
  call void @free(ptr noundef %i.cd) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS6_EEKNS4_IKNS5_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSY_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1027, !nonnull !32, !align !80 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !932
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 7
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !81   ; 4 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS6_EEKNS4_IKNS5_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !81   ; 9 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS6_EEKNS4_IKNS5_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !32, !align !80 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %0, align 8, !nonnull !32, !align !80 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !1017 ; 4 uses
  %i.r = load i64, ptr %i.p, align 8, !tbaa !81   ; 3 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !50, !noalias !1029 ; 6 uses
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !1005, !noalias !1032 ; 3 uses
  %i.u = add nuw i64 %i.g, 2305843009213693951
  %i.v = mul i64 %i.r, %i.u
  %i.w = shl i64 %i.j, 3
  %i.x = add i64 %i.v, %i.j
  %i.y = shl i64 %i.x, 3
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.y ; 2 uses
  %scevgep63 = getelementptr i8, ptr %i.s, i64 %i.w
  %i.z = shl i64 %i.g, 3
  %scevgep64 = getelementptr i8, ptr %i.t, i64 %i.z
  %min.iters.check = icmp ult i64 %i.j, 6
  %bound0 = icmp ult ptr %i.q, %scevgep63
  %bound1 = icmp ult ptr %i.s, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound065 = icmp ult ptr %i.q, %scevgep64
  %bound166 = icmp ult ptr %i.t, %scevgep
  %found.conflict67 = and i1 %bound065, %bound166
  %.mask = and i64 %i.r, 1152921504606846976
  %stride.check68 = icmp ne i64 %.mask, 0
  %i.aa = or i1 %found.conflict67, %stride.check68
  %conflict.rdx = or i1 %found.conflict, %i.aa
  %n.vec = and i64 %i.j, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  %xtraiter = and i64 %i.j, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0810.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.ax, %._crit_edge.i ] ; 3 uses
  %i.ab = mul nsw i64 %.0810.i, %i.r
  %i.ac = getelementptr [8 x i8], ptr %i.q, i64 %i.ab ; 4 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0810.i ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !52, !alias.scope !1035
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ae, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.af = getelementptr [8 x i8], ptr %i.ac, i64 %index ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <2 x double>, ptr %i.ag, align 8, !tbaa !52, !alias.scope !1038
  %wide.load69 = load <2 x double>, ptr %i.ah, align 8, !tbaa !52, !alias.scope !1038
  %i.ai = fmul <2 x double> %wide.load, %broadcast.splat
  %i.aj = fmul <2 x double> %wide.load69, %broadcast.splat
  %i.ak = getelementptr i8, ptr %i.af, i64 16     ; 2 uses
  %wide.load70 = load <2 x double>, ptr %i.af, align 8, !tbaa !52, !alias.scope !1040, !noalias !1042
  %wide.load71 = load <2 x double>, ptr %i.ak, align 8, !tbaa !52, !alias.scope !1040, !noalias !1042
  %i.al = fsub <2 x double> %wide.load70, %i.ai
  %i.am = fsub <2 x double> %wide.load71, %i.aj
  store <2 x double> %i.al, ptr %i.af, align 8, !tbaa !52, !alias.scope !1040, !noalias !1042
  store <2 x double> %i.am, ptr %i.ak, align 8, !tbaa !52, !alias.scope !1040, !noalias !1042
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !1043

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ao = getelementptr [8 x i8], ptr %i.ac, i64 %.09.i.ph ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.09.i.ph
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !52
  %i.ar = load double, ptr %i.ad, align 8, !tbaa !52
  %i.as = fmul double %i.aq, %i.ar
  %i.at = load double, ptr %i.ao, align 8, !tbaa !52
  %i.au = fsub double %i.at, %i.as
  store double %i.au, ptr %i.ao, align 8, !tbaa !52
  %i.av = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.av, %scalar.ph.prol ]
  %i.aw = icmp eq i64 %i.j, %.neg
  br i1 %i.aw, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ax = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.ax, %i.g
  br i1 %exitcond12.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS6_EEKNS4_IKNS5_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit, label %.preheader.i, !llvm.loop !1044

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.bn, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ay = getelementptr [8 x i8], ptr %i.ac, i64 %.09.i ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.09.i
  %i.ba = load double, ptr %i.az, align 8, !tbaa !52
  %i.bb = load double, ptr %i.ad, align 8, !tbaa !52
  %i.bc = fmul double %i.ba, %i.bb
  %i.bd = load double, ptr %i.ay, align 8, !tbaa !52
  %i.be = fsub double %i.bd, %i.bc
  store double %i.be, ptr %i.ay, align 8, !tbaa !52
  %i.bf = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.bg = getelementptr [8 x i8], ptr %i.ac, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bf
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !52
  %i.bj = load double, ptr %i.ad, align 8, !tbaa !52
  %i.bk = fmul double %i.bi, %i.bj
  %i.bl = load double, ptr %i.bg, align 8, !tbaa !52
  %i.bm = fsub double %i.bl, %i.bk
  store double %i.bm, ptr %i.bg, align 8, !tbaa !52
  %i.bn = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bn, %i.j
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !1045

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !81 ; 7 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !81 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !925, !nonnull !32, !align !80
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !61
  %i.bw = and i64 %i.bv, 1
  %i.bx = icmp sgt i64 %i.br, 0
  br i1 %i.bx, label %.lr.ph52, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS6_EEKNS4_IKNS5_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit

.lr.ph52:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.by = lshr exact i64 %i.d, 3
  %i.bz = and i64 %i.by, 1
  %i.ca = tail call i64 @llvm.smin.i64(i64 %i.bz, i64 %i.bp)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cc = shl i64 %i.bp, 3                        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph52, %._crit_edge
  %.03451 = phi i64 [ 0, %.lr.ph52 ], [ %i.fg, %._crit_edge ] ; 8 uses
  %.03550 = phi i64 [ %i.ca, %.lr.ph52 ], [ %.sroa.speculated, %._crit_edge ] ; 7 uses
  %i.cd = shl nuw nsw i64 %.03451, 3              ; 2 uses
  %i.ce = sub i64 %i.bp, %.03550                  ; 3 uses
  %i.cf = and i64 %i.ce, -2                       ; 2 uses
  %i.cg = add nsw i64 %i.cf, %.03550              ; 6 uses
  %i.ch = icmp sgt i64 %.03550, 0
  br i1 %i.ch, label %.preheader43.loopexit, label %.preheader43

.preheader43.loopexit:                            ; preds = %bb.c
  %i.ci = load ptr, ptr %i.cb, align 8, !tbaa !1046, !nonnull !32, !align !80 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !1005, !noalias !1047
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %.03451
  %i.cm = load ptr, ptr %i.ci, align 8, !tbaa !50, !noalias !1050
  %i.cn = load ptr, ptr %0, align 8, !tbaa !1053, !nonnull !32, !align !80 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !1017
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !81
  %i.cr = mul nsw i64 %i.cq, %.03451
  %i.cs = getelementptr [8 x i8], ptr %i.co, i64 %i.cr ; 2 uses
  %i.ct = load double, ptr %i.cm, align 8, !tbaa !52
  %i.cu = load double, ptr %i.cl, align 8, !tbaa !52
  %i.cv = fmul double %i.ct, %i.cu
  %i.cw = load double, ptr %i.cs, align 8, !tbaa !52
  %i.cx = fsub double %i.cw, %i.cv
  store double %i.cx, ptr %i.cs, align 8, !tbaa !52
  br label %.preheader43

.preheader43:                                     ; preds = %.preheader43.loopexit, %bb.c
  %i.cy = icmp sgt i64 %i.ce, 1
  br i1 %i.cy, label %.lr.ph47, label %.preheader

.preheader:                                       ; preds = %.lr.ph47, %.preheader43
  %i.cz = icmp slt i64 %i.cg, %i.bp
  br i1 %i.cz, label %.lr.ph49, label %._crit_edge

.lr.ph49:                                         ; preds = %.preheader
  %i.da = load ptr, ptr %0, align 8, !tbaa !1053, !nonnull !32, !align !80 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1017 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !81 ; 2 uses
  %i.de = mul nsw i64 %i.dd, %.03451
  %i.df = getelementptr [8 x i8], ptr %i.db, i64 %i.de ; 2 uses
  %i.dg = load ptr, ptr %i.cb, align 8, !tbaa !1046, !nonnull !32, !align !80 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !50, !noalias !1054 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !1005, !noalias !1057 ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.03451 ; 3 uses
  %i.dl = add i64 %.03550, %i.cf
  %i.dm = sub i64 %i.bp, %i.dl                    ; 3 uses
  %min.iters.check87 = icmp ult i64 %i.dm, 8
  br i1 %min.iters.check87, label %scalar.ph86.preheader, label %vector.memcheck72

vector.memcheck72:                                ; preds = %.lr.ph49
  %i.dn = mul i64 %i.dd, %i.cd                    ; 2 uses
  %i.do = shl i64 %i.ce, 3
  %i.dp = and i64 %i.do, -16                      ; 2 uses
  %i.dq = shl i64 %.03550, 3                      ; 2 uses
  %i.dr = getelementptr i8, ptr %i.db, i64 %i.dn
  %i.ds = getelementptr i8, ptr %i.dr, i64 %i.dp
  %scevgep73 = getelementptr i8, ptr %i.ds, i64 %i.dq ; 2 uses
  %scevgep74 = getelementptr i8, ptr %i.db, i64 %i.cc
  %scevgep75 = getelementptr i8, ptr %scevgep74, i64 %i.dn ; 2 uses
  %i.dt = getelementptr i8, ptr %i.dh, i64 %i.dp
  %scevgep76 = getelementptr i8, ptr %i.dt, i64 %i.dq
  %scevgep77 = getelementptr i8, ptr %i.dh, i64 %i.cc
  %i.du = getelementptr i8, ptr %i.dj, i64 %i.cd
  %scevgep78 = getelementptr i8, ptr %i.du, i64 8
  %bound079 = icmp ult ptr %scevgep73, %scevgep77
  %bound180 = icmp ult ptr %scevgep76, %scevgep75
  %found.conflict81 = and i1 %bound079, %bound180
  %bound082 = icmp ult ptr %scevgep73, %scevgep78
  %bound183 = icmp ult ptr %i.dk, %scevgep75
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %found.conflict81, %found.conflict84
  br i1 %conflict.rdx85, label %scalar.ph86.preheader, label %vector.ph88

vector.ph88:                                      ; preds = %vector.memcheck72
  %n.vec89 = and i64 %i.dm, -4                    ; 3 uses
  %i.dv = add i64 %i.cg, %n.vec89
  %i.dw = load double, ptr %i.dk, align 8, !tbaa !52, !alias.scope !1060
  %broadcast.splatinsert94 = insertelement <2 x double> poison, double %i.dw, i64 0
  %broadcast.splat95 = shufflevector <2 x double> %broadcast.splatinsert94, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph88
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next98, %vector.body90 ] ; 2 uses
  %i.dx = add i64 %i.cg, %index91                 ; 2 uses
  %i.dy = getelementptr [8 x i8], ptr %i.df, i64 %i.dx ; 3 uses
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.dx ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %wide.load92 = load <2 x double>, ptr %i.dz, align 8, !tbaa !52, !alias.scope !1063
  %wide.load93 = load <2 x double>, ptr %i.ea, align 8, !tbaa !52, !alias.scope !1063
  %i.eb = fmul <2 x double> %wide.load92, %broadcast.splat95
  %i.ec = fmul <2 x double> %wide.load93, %broadcast.splat95
  %i.ed = getelementptr i8, ptr %i.dy, i64 16     ; 2 uses
  %wide.load96 = load <2 x double>, ptr %i.dy, align 8, !tbaa !52, !alias.scope !1065, !noalias !1067
  %wide.load97 = load <2 x double>, ptr %i.ed, align 8, !tbaa !52, !alias.scope !1065, !noalias !1067
  %i.ee = fsub <2 x double> %wide.load96, %i.eb
  %i.ef = fsub <2 x double> %wide.load97, %i.ec
  store <2 x double> %i.ee, ptr %i.dy, align 8, !tbaa !52, !alias.scope !1065, !noalias !1067
  store <2 x double> %i.ef, ptr %i.ed, align 8, !tbaa !52, !alias.scope !1065, !noalias !1067
  %index.next98 = add nuw i64 %index91, 4         ; 2 uses
  %i.eg = icmp eq i64 %index.next98, %n.vec89
  br i1 %i.eg, label %middle.block99, label %vector.body90, !llvm.loop !1068

middle.block99:                                   ; preds = %vector.body90
  %cmp.n100 = icmp eq i64 %i.dm, %n.vec89
  br i1 %cmp.n100, label %._crit_edge, label %scalar.ph86.preheader

scalar.ph86.preheader:                            ; preds = %vector.memcheck72, %.lr.ph49, %middle.block99
  %.048.ph = phi i64 [ %i.cg, %vector.memcheck72 ], [ %i.cg, %.lr.ph49 ], [ %i.dv, %middle.block99 ]
  br label %scalar.ph86

.lr.ph47:                                         ; preds = %.preheader43, %.lr.ph47
  %.03246 = phi i64 [ %i.fc, %.lr.ph47 ], [ %.03550, %.preheader43 ] ; 3 uses
  %i.eh = load ptr, ptr %0, align 8, !tbaa !1053, !nonnull !32, !align !80 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !1017
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !81
  %i.el = mul nsw i64 %i.ek, %.03451
  %i.em = getelementptr [8 x i8], ptr %i.ei, i64 %i.el
  %i.en = getelementptr [8 x i8], ptr %i.em, i64 %.03246 ; 2 uses
  %i.eo = load ptr, ptr %i.cb, align 8, !tbaa !1046, !nonnull !32, !align !80 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 56
  %i.er = load ptr, ptr %i.ep, align 8, !tbaa !1069
  %i.es = getelementptr inbounds [8 x i8], ptr %i.er, i64 %.03246
  %i.et = load <2 x double>, ptr %i.es, align 1, !tbaa !44
  %i.eu = load ptr, ptr %i.eq, align 8, !tbaa !1007
  %i.ev = getelementptr [8 x i8], ptr %i.eu, i64 %.03451
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !52
  %i.ex = insertelement <2 x double> poison, double %i.ew, i64 0
  %i.ey = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ez = fmul <2 x double> %i.et, %i.ey
  %i.fa = load <2 x double>, ptr %i.en, align 16, !tbaa !44
  %i.fb = fsub <2 x double> %i.fa, %i.ez
  store <2 x double> %i.fb, ptr %i.en, align 16, !tbaa !44
  %i.fc = add nsw i64 %.03246, 2                  ; 2 uses
  %i.fd = icmp slt i64 %i.fc, %i.cg
  br i1 %i.fd, label %.lr.ph47, label %.preheader, !llvm.loop !1070

._crit_edge:                                      ; preds = %scalar.ph86, %middle.block99, %.preheader
  %i.fe = add nsw i64 %.03550, %i.bw
  %i.ff = srem i64 %i.fe, 2
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bp, i64 %i.ff)
  %i.fg = add nuw nsw i64 %.03451, 1              ; 2 uses
  %exitcond54.not = icmp eq i64 %i.fg, %i.br
  br i1 %exitcond54.not, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS6_EEKNS4_IKNS5_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit, label %bb.c, !llvm.loop !1071

scalar.ph86:                                      ; preds = %scalar.ph86.preheader, %scalar.ph86
  %.048 = phi i64 [ %i.fo, %scalar.ph86 ], [ %.048.ph, %scalar.ph86.preheader ] ; 3 uses
  %i.fh = getelementptr [8 x i8], ptr %i.df, i64 %.048 ; 2 uses
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %.048
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !52
  %i.fk = load double, ptr %i.dk, align 8, !tbaa !52
  %i.fl = fmul double %i.fj, %i.fk
  %i.fm = load double, ptr %i.fh, align 8, !tbaa !52
  %i.fn = fsub double %i.fm, %i.fl
  store double %i.fn, ptr %i.fh, align 8, !tbaa !52
  %i.fo = add nsw i64 %.048, 1                    ; 2 uses
  %i.fp = icmp slt i64 %i.fo, %i.bp
  br i1 %i.fp, label %scalar.ph86, label %._crit_edge, !llvm.loop !1072

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS6_EEKNS4_IKNS5_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit: ; preds = %._crit_edge.i, %._crit_edge, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, %.preheader.lr.ph.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26triangular_solver_selectorIKNS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS2_INS3_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELi1ELi2ELi0ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !81   ; 4 uses
  %i.c = icmp ugt i64 %i.b, 2305843009213693951
  br i1 %i.c, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.d, align 8, !tbaa !24
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !879    ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.f = shl nuw i64 %i.b, 3                      ; 2 uses
  %i.g = icmp samesign ult i64 %i.b, 16385
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = add nuw nsw i64 %i.f, 15
  %i.i = alloca i8, i64 %i.h, align 16            ; 2 uses
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.e:                                             ; preds = %bb.c
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.f) #22 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit

end_hunk_1
