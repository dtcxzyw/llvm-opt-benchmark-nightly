Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bezier?download=true
inline.NumInlined: 468
inline.NumDeleted: 294
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN3igl6bezierIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EE:bb.a
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELin1ELi1ELi1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELin1ELi1ELi1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit ] ; 4 uses
  %i.o = shl i64 %indvars.iv, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.p = load ptr, ptr %1, align 8, !tbaa !66
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.r = load double, ptr %i.q, align 8, !tbaa !38
  invoke void @_ZN3igl6bezierIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEvRKNS1_10MatrixBaseIT_EENS6_6ScalarERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, double noundef %i.r, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %2, align 8, !tbaa !19, !noalias !67 ; 2 uses
  %i.t = ptrtoaddr ptr %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv ; 6 uses
  %i.v = load i64, ptr %i.m, align 8, !tbaa !16, !noalias !67 ; 7 uses
  %i.w = load ptr, ptr %3, align 8, !tbaa !40     ; 8 uses
  %i.x = ptrtoaddr ptr %i.w to i64
  %i.y = load i64, ptr %i.n, align 8, !tbaa !20   ; 6 uses
  %i.z = icmp sgt i64 %i.v, 0
  br i1 %i.z, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELin1ELi1ELi1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.e
  %min.iters.check = icmp ugt i64 %i.v, 7
  %ident.check.not = icmp eq i64 %i.y, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader22

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %i.aa = add i64 %i.o, %i.t
  %i.ab = sub i64 %i.x, %i.aa
  %diff.check = icmp ugt i64 %i.ab, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader22, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 9223372036854775804      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %wide.load = load <2 x double>, ptr %i.ad, align 8, !tbaa !38
  %wide.load21 = load <2 x double>, ptr %i.ae, align 8, !tbaa !38
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <2 x double> %wide.load, ptr %i.ac, align 8, !tbaa !38
  store <2 x double> %wide.load21, ptr %i.af, align 8, !tbaa !38
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELin1ELi1ELi1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader22

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader22:           ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader22, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader22 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader22 ]
  %i.ah = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.prol, %i.y
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.ah
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.05.i.i.i.i.i.i.i.i.i.i.prol
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !38
  store double %i.ak, ptr %i.ai, align 8, !tbaa !38
  %i.al = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !63

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader22
  %.05.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader22 ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.am = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, %i.v
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELin1ELi1ELi1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bh, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ao = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.y
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.ao
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.05.i.i.i.i.i.i.i.i.i.i
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !38
  store double %i.ar, ptr %i.ap, align 8, !tbaa !38
  %i.as = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.at = mul nsw i64 %i.as, %i.y
  %i.au = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.at
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.as
  %i.aw = load double, ptr %i.av, align 8, !tbaa !38
  store double %i.aw, ptr %i.au, align 8, !tbaa !38
  %i.ax = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ay = mul nsw i64 %i.ax, %i.y
  %i.az = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.ay
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ax
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !38
  store double %i.bb, ptr %i.az, align 8, !tbaa !38
  %i.bc = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.bd = mul nsw i64 %i.bc, %i.y
  %i.be = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.bd
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bc
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !38
  store double %i.bg, ptr %i.be, align 8, !tbaa !38
  %i.bh = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bh, %i.v
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELin1ELi1ELi1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !64

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELin1ELi1ELi1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %bb.e
  call void @free(ptr noundef %i.w) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !14
  %i.bj = icmp sgt i64 %i.bi, %indvars.iv.next
  br i1 %i.bj, label %bb.d, label %._crit_edge, !llvm.loop !65

bb.f:                                             ; preds = %bb.d
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = load ptr, ptr %3, align 8, !tbaa !40
  call void @free(ptr noundef %i.bl) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  resume { ptr, i32 } %i.bk
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl6bezierIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEEEvRKNS1_10MatrixBaseIT_EENS6_6ScalarERNS1_15PlainObjectBaseIT0_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix", align 8     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20   ; 11 uses
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %i.d = add i32 %i.c, -1
  %.not104 = icmp slt i32 %i.d, 1
  %.pre115 = load ptr, ptr %3, align 8, !tbaa !19, !noalias !44 ; 6 uses
  br i1 %.not104, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = insertelement <2 x double> <double 1.000000e+00, double poison>, double %1, i64 1
  %i.f = insertelement <2 x double> <double poison, double 0.000000e+00>, double %1, i64 0
  %i.g = fsub <2 x double> %i.e, %i.f             ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !16, !noalias !82 ; 19 uses
  %.not8.i.i.i.i.i.i.i.i = icmp eq i64 %i.i, 0
  %i.j = icmp sgt i64 %i.i, 0
  %i.k = icmp samesign ugt i64 %i.i, 2305843009213693951
  %i.l = shl nuw i64 %i.i, 3
  br i1 %.not8.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE16_resize_to_matchINS_5BlockINS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit.i, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.m = sdiv i64 9223372036854775807, %i.i
  %i.n = icmp slt i64 %i.m, 1
  br i1 %i.n, label %.split103.us.invoke, label %.preheader.lr.ph.split.split

.preheader.lr.ph.split.split:                     ; preds = %.preheader.lr.ph.split
  br i1 %i.j, label %.preheader.lr.ph.split.split.split.us, label %._crit_edge.thread

.preheader.lr.ph.split.split.split.us:            ; preds = %.preheader.lr.ph.split.split
  br i1 %i.k, label %.split103.us.invoke, label %.preheader.us106.preheader

.preheader.us106.preheader:                       ; preds = %.preheader.lr.ph.split.split.split.us
  %i.o = add i32 %i.c, -2
  %min.iters.check126 = icmp ugt i64 %i.i, 3
  %ident.check124.not = icmp eq i64 %i.b, 1
  %or.cond = and i1 %min.iters.check126, %ident.check124.not
  %n.vec128 = and i64 %i.i, 2305843009213693948   ; 3 uses
  %broadcast.splat = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert129 = insertelement <2 x double> poison, double %1, i64 0
  %broadcast.splat130 = shufflevector <2 x double> %broadcast.splatinsert129, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n139 = icmp eq i64 %i.i, %n.vec128
  %xtraiter = and i64 %i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp ugt i64 %i.i, 3
  %ident.check.not = icmp eq i64 %i.b, 1
  %or.cond155 = and i1 %min.iters.check, %ident.check.not
  %n.vec = and i64 %i.i, 2305843009213693948      ; 3 uses
  %cmp.n = icmp eq i64 %i.i, %n.vec
  %xtraiter163 = and i64 %i.i, 3                  ; 2 uses
  %lcmp.mod164.not = icmp eq i64 %xtraiter163, 0
  br label %.preheader.us106

.preheader.us106:                                 ; preds = %.preheader.us106.preheader, %.split.split.us.us
  %indvars.iv112 = phi i32 [ %i.o, %.preheader.us106.preheader ], [ %indvars.iv.next113, %.split.split.us.us ] ; 2 uses
  %.017105.us107 = phi i32 [ 1, %.preheader.us106.preheader ], [ %i.cj, %.split.split.us.us ]
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv112, i32 0)
  %i.p = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %i.p to i64
  br label %thread-pre-split.i.i.i.i.i.i.i.us.us

thread-pre-split.i.i.i.i.i.i.i.us.us:             ; preds = %.preheader.us106, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELin1ELi1ELi1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us
  %indvars.iv = phi i64 [ 0, %.preheader.us106 ], [ %indvars.iv.next, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELin1ELi1ELi1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.pre115, i64 %indvars.iv ; 10 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.pre115, i64 %indvars.iv.next
  %i.s = call noalias ptr @malloc(i64 noundef %i.l) #13 ; 12 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.split103.us.invoke, label %.lr.ph.i.i.i.i.i.i.i.i.us.us.preheader

.lr.ph.i.i.i.i.i.i.i.i.us.us.preheader:           ; preds = %thread-pre-split.i.i.i.i.i.i.i.us.us
  br i1 %or.cond, label %vector.body131, label %.lr.ph.i.i.i.i.i.i.i.i.us.us.preheader162

vector.body131:                                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us.us.preheader, %vector.body131
  %index132 = phi i64 [ %index.next137, %vector.body131 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.us.us.preheader ] ; 4 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index132 ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %i.q, i64 %index132 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load133 = load <2 x double>, ptr %i.v, align 8, !tbaa !38
  %wide.load134 = load <2 x double>, ptr %i.w, align 8, !tbaa !38
  %i.x = fmul <2 x double> %broadcast.splat, %wide.load133
  %i.y = fmul <2 x double> %broadcast.splat, %wide.load134
  %i.z = getelementptr inbounds [8 x i8], ptr %i.r, i64 %index132 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load135 = load <2 x double>, ptr %i.z, align 8, !tbaa !38
  %wide.load136 = load <2 x double>, ptr %i.aa, align 8, !tbaa !38
  %i.ab = fmul <2 x double> %broadcast.splat130, %wide.load135
  %i.ac = fmul <2 x double> %broadcast.splat130, %wide.load136
  %i.ad = fadd <2 x double> %i.x, %i.ab
  %i.ae = fadd <2 x double> %i.y, %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <2 x double> %i.ad, ptr %i.u, align 8, !tbaa !38
  store <2 x double> %i.ae, ptr %i.af, align 8, !tbaa !38
  %index.next137 = add nuw i64 %index132, 4       ; 2 uses
  %i.ag = icmp eq i64 %index.next137, %n.vec128
  br i1 %i.ag, label %middle.block138, label %vector.body131, !llvm.loop !70

middle.block138:                                  ; preds = %vector.body131
  br i1 %cmp.n139, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.us.us.preheader162

.lr.ph.i.i.i.i.i.i.i.i.us.us.preheader162:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us.us.preheader, %middle.block138
  %.05.i.i.i.i.i.i.i.i.us.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.us.us.preheader ], [ %n.vec128, %middle.block138 ] ; 5 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.i.i.us.us.ph, 1
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.us.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.us.us.prol

.lr.ph.i.i.i.i.i.i.i.i.us.us.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us.us.preheader162
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.05.i.i.i.i.i.i.i.i.us.us.ph
  %i.ai = mul nsw i64 %.05.i.i.i.i.i.i.i.i.us.us.ph, %i.b
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ai
  %i.ak = load <2 x double>, ptr %i.aj, align 8, !tbaa !38
  %i.al = fmul <2 x double> %i.g, %i.ak           ; 2 uses
  %shift.prol = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.prol = fadd <2 x double> %i.al, %shift.prol
  %i.am = extractelement <2 x double> %foldExtExtBinop.prol, i64 0
  store double %i.am, ptr %i.ah, align 8, !tbaa !38
  %i.an = or disjoint i64 %.05.i.i.i.i.i.i.i.i.us.us.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.us.us.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.us.us.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us.us.prol, %.lr.ph.i.i.i.i.i.i.i.i.us.us.preheader162
  %.05.i.i.i.i.i.i.i.i.us.us.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.us.us.ph, %.lr.ph.i.i.i.i.i.i.i.i.us.us.preheader162 ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.us.us.prol ]
  %i.ao = icmp eq i64 %i.i, %.neg
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.us.us

.lr.ph.i.i.i.i.i.i.i.i.us.us:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.us.us
  %.05.i.i.i.i.i.i.i.i.us.us = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.i.us.us ], [ %.05.i.i.i.i.i.i.i.i.us.us.unr, %.lr.ph.i.i.i.i.i.i.i.i.us.us.prol.loopexit ] ; 4 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.05.i.i.i.i.i.i.i.i.us.us
  %i.aq = mul nsw i64 %.05.i.i.i.i.i.i.i.i.us.us, %i.b
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.aq
  %i.as = load <2 x double>, ptr %i.ar, align 8, !tbaa !38
  %i.at = fmul <2 x double> %i.g, %i.as           ; 2 uses
  %shift = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.at, %shift
  %i.au = extractelement <2 x double> %foldExtExtBinop, i64 0
  store double %i.au, ptr %i.ap, align 8, !tbaa !38
  %i.av = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.us.us, 1 ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.av
  %i.ax = mul nsw i64 %i.av, %i.b
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ax
  %i.az = load <2 x double>, ptr %i.ay, align 8, !tbaa !38
  %i.ba = fmul <2 x double> %i.g, %i.az           ; 2 uses
  %shift.1 = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.1 = fadd <2 x double> %i.ba, %shift.1
  %i.bb = extractelement <2 x double> %foldExtExtBinop.1, i64 0
  store double %i.bb, ptr %i.aw, align 8, !tbaa !38
  %i.bc = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.us.us, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.us.us.1 = icmp eq i64 %i.bc, %i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.us.us.1, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.us.us, !llvm.loop !71

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.preheader:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.us.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.us.us, %middle.block138
  br i1 %or.cond155, label %vector.body, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.preheader161

vector.body:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.preheader ] ; 3 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load = load <2 x double>, ptr %i.be, align 8, !tbaa !38
  %wide.load122 = load <2 x double>, ptr %i.bf, align 8, !tbaa !38
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <2 x double> %wide.load, ptr %i.bd, align 8, !tbaa !38
  store <2 x double> %wide.load122, ptr %i.bg, align 8, !tbaa !38
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELin1ELi1ELi1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.preheader161

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.preheader161:    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.us.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod164.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.prol:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.preheader161, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.prol
  %.05.i.i.i.i.i.i.i.i.i.i.us.us.prol = phi i64 [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.us.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.preheader161 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.preheader161 ]
  %i.bi = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.prol, %i.b
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.bi
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.prol
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !38
  store double %i.bl, ptr %i.bj, align 8, !tbaa !38
  %i.bm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter163
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.prol, !llvm.loop !73

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.prol.loopexit:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.preheader161
  %.05.i.i.i.i.i.i.i.i.i.i.us.us.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.us.us.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.preheader161 ], [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.prol ]
  %i.bn = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us.ph, %i.i
  %i.bo = icmp ugt i64 %i.bn, -4
  br i1 %i.bo, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELin1ELi1ELi1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us

.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us
  %.05.i.i.i.i.i.i.i.i.i.i.us.us = phi i64 [ %i.ci, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us ], [ %.05.i.i.i.i.i.i.i.i.i.i.us.us.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.prol.loopexit ] ; 6 uses
  %i.bp = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us, %i.b
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us
  %i.bs = load double, ptr %i.br, align 8, !tbaa !38
  store double %i.bs, ptr %i.bq, align 8, !tbaa !38
  %i.bt = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us, 1 ; 2 uses
  %i.bu = mul nsw i64 %i.bt, %i.b
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.bu
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bt
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !38
  store double %i.bx, ptr %i.bv, align 8, !tbaa !38
  %i.by = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us, 2 ; 2 uses
  %i.bz = mul nsw i64 %i.by, %i.b
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.bz
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.by
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !38
  store double %i.cc, ptr %i.ca, align 8, !tbaa !38
  %i.cd = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us, 3 ; 2 uses
  %i.ce = mul nsw i64 %i.cd, %i.b
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ce
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.cd
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !38
  store double %i.ch, ptr %i.cf, align 8, !tbaa !38
  %i.ci = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.us.us, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.us.3 = icmp eq i64 %i.ci, %i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.us.us.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELin1ELi1ELi1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us, !llvm.loop !74

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELin1ELi1ELi1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.us.us, %middle.block
  call void @free(ptr noundef nonnull %i.s) #11
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.split.split.us.us, label %thread-pre-split.i.i.i.i.i.i.i.us.us, !llvm.loop !75

.split.split.us.us:                               ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi1ELin1ELi1ELi1ELin1EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.us.us
  %i.cj = add nuw i32 %.017105.us107, 1           ; 2 uses
  %indvars.iv.next113 = add i32 %indvars.iv112, -1
  %exitcond114.not = icmp eq i32 %i.cj, %i.c
  br i1 %exitcond114.not, label %._crit_edge.loopexit109, label %.preheader.us106, !llvm.loop !76

.split103.us.invoke:                              ; preds = %thread-pre-split.i.i.i.i.i.i.i.us.us, %.preheader.lr.ph.split.split.split.us, %.preheader.lr.ph.split
  %i.ck = call ptr @__cxa_allocate_exception(i64 8) #11 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ck, align 8, !tbaa !18
  invoke void @__cxa_throw(ptr nonnull %i.ck, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #12
          to label %.split103.us.cont unwind label %bb.b

.split103.us.cont:                                ; preds = %.split103.us.invoke
  unreachable

bb.b:                                             ; preds = %.split103.us.invoke
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge.loopexit109:                          ; preds = %.split.split.us.us
  %.pre = load ptr, ptr %3, align 8, !tbaa !19, !noalias !83
  br label %._crit_edge.thread

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre116 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !16, !noalias !83 ; 2 uses
  %i.cm = icmp eq i64 %.pre116, 0
  br i1 %i.cm, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE16_resize_to_matchINS_5BlockINS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit.i, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader.lr.ph.split.split, %._crit_edge.loopexit109, %._crit_edge
  %i.cn = phi ptr [ %.pre115, %._crit_edge ], [ %.pre115, %.preheader.lr.ph.split.split ], [ %.pre, %._crit_edge.loopexit109 ]
  %i.co = phi i64 [ %.pre116, %._crit_edge ], [ %i.i, %.preheader.lr.ph.split.split ], [ %i.i, %._crit_edge.loopexit109 ] ; 2 uses
  %i.cp = sdiv i64 9223372036854775807, %i.co
  %i.cq = icmp slt i64 %i.cp, 1
  br i1 %i.cq, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE16_resize_to_matchINS_5BlockINS1_IdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEvRKNS_9EigenBaseIT_EE.exit.i

bb.c:                                             ; preds = %._crit_edge.thread
end_hunk_0
