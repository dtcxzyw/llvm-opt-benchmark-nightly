Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btConvexHullShape?download=true
inline.NumInlined: 137
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK17btConvexHullShape12getNumPlanesEv
define dso_local noundef i32 @_ZNK17btConvexHullShape12getNumPlanesEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #11 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZNK17btConvexHullShape8getPlaneER9btVector3S1_i(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1, ptr nofree nonnull readnone align 4 captures(none) %2, i32 %3) unnamed_addr #11 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK17btConvexHullShape8isInsideERK9btVector3f(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1, float %2) unnamed_addr #11 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZNK17btConvexHullShape9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK16btCollisionShape9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load float, ptr %i.b, align 8, !tbaa !28
  store float %i.d, ptr %i.c, align 4, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.f = load float, ptr %i.e, align 4, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36
  store float %i.f, ptr %i.g, align 4, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load float, ptr %i.h, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float %i.i, ptr %i.j, align 4, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.l = load float, ptr %i.k, align 4, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 44
  store float %i.l, ptr %i.m, align 4, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load float, ptr %i.n, align 8, !tbaa !28
  store float %i.p, ptr %i.o, align 4, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.r = load float, ptr %i.q, align 4, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float %i.r, ptr %i.s, align 4, !tbaa !28
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load float, ptr %i.t, align 8, !tbaa !28
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  store float %i.u, ptr %i.v, align 4, !tbaa !28
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.x = load float, ptr %i.w, align 4, !tbaa !28
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 28
  store float %i.x, ptr %i.y, align 4, !tbaa !28
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = load float, ptr %i.z, align 8, !tbaa !54
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  store float %i.aa, ptr %i.ab, align 8, !tbaa !58
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i32 0, ptr %i.ac, align 4, !tbaa !63
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !18 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !64
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !17
  %i.ai = load ptr, ptr %2, align 8, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef ptr %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.ah)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.al, ptr %i.am, align 8, !tbaa !68
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr null, ptr %i.an, align 8, !tbaa !69
  %i.ao = load ptr, ptr %2, align 8, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef ptr %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 16, i32 noundef %i.ae) ; 2 uses
  %i.as = icmp sgt i32 %i.ae, 0
  %.pre = load ptr, ptr %i.ag, align 8, !tbaa !17 ; 4 uses
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !70 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ae to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.av = icmp eq i32 %i.ae, 1
  br i1 %i.av, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.02325.epil.init = phi ptr [ %i.au, %.lr.ph ], [ %i.ci, %._crit_edge.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod28 = trunc i32 %i.ae to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %indvars.iv.epil.init ; 4 uses
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !28
  store float %i.ax, ptr %.02325.epil.init, align 4, !tbaa !28
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.az = load float, ptr %i.ay, align 4, !tbaa !28
  %i.ba = getelementptr inbounds nuw i8, ptr %.02325.epil.init, i64 4
  store float %i.az, ptr %i.ba, align 4, !tbaa !28
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !28
  %i.bd = getelementptr inbounds nuw i8, ptr %.02325.epil.init, i64 8
  store float %i.bc, ptr %i.bd, align 4, !tbaa !28
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.bf = load float, ptr %i.be, align 4, !tbaa !28
  %i.bg = getelementptr inbounds nuw i8, ptr %.02325.epil.init, i64 12
  store float %i.bf, ptr %i.bg, align 4, !tbaa !28
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.b
  %i.bh = load ptr, ptr %2, align 8, !tbaa !9
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.ar, ptr noundef nonnull @.str, i32 noundef 1497453121, ptr noundef nonnull %.pre)
  br label %bb.d

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.02325 = phi ptr [ %i.au, %.lr.ph.new ], [ %i.ci, %bb.c ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %indvars.iv ; 4 uses
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !28
  store float %i.bl, ptr %.02325, align 4, !tbaa !28
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !28
  %i.bo = getelementptr inbounds nuw i8, ptr %.02325, i64 4
  store float %i.bn, ptr %i.bo, align 4, !tbaa !28
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !28
  %i.br = getelementptr inbounds nuw i8, ptr %.02325, i64 8
  store float %i.bq, ptr %i.br, align 4, !tbaa !28
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !28
  %i.bu = getelementptr inbounds nuw i8, ptr %.02325, i64 12
  store float %i.bt, ptr %i.bu, align 4, !tbaa !28
  %i.bv = getelementptr inbounds nuw i8, ptr %.02325, i64 16
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %indvars.iv ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load float, ptr %i.bx, align 4, !tbaa !28
  store float %i.by, ptr %i.bv, align 4, !tbaa !28
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 20
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !28
  %i.cb = getelementptr inbounds nuw i8, ptr %.02325, i64 20
  store float %i.ca, ptr %i.cb, align 4, !tbaa !28
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !28
  %i.ce = getelementptr inbounds nuw i8, ptr %.02325, i64 24
  store float %i.cd, ptr %i.ce, align 4, !tbaa !28
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 28
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !28
  %i.ch = getelementptr inbounds nuw i8, ptr %.02325, i64 28
  store float %i.cg, ptr %i.ch, align 4, !tbaa !28
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.02325, i64 32 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !72

.critedge:                                        ; preds = %bb.a
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %._crit_edge
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i32 0, ptr %i.ck, align 4
  ret ptr @.str.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK17btConvexHullShape7projectERK11btTransformRK9btVector3RfS6_RS3_S7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %6) unnamed_addr #6 align 2 {
bb.a:
  %.sroa.0.i = alloca [4 x float], align 4        ; 4 uses
  store float f0x7F7FFFFF, ptr %3, align 4, !tbaa !28
  store float f0xFF7FFFFF, ptr %4, align 4, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.7.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre = load float, ptr %4, align 4, !tbaa !28
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.p = phi float [ %.pre, %._crit_edge.loopexit ], [ f0xFF7FFFFF, %bb.a ] ; 2 uses
  %i.q = load float, ptr %3, align 4, !tbaa !28   ; 2 uses
  %i.r = fcmp ogt float %i.q, %i.p
  br i1 %i.r, label %bb.g, label %bb.h

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv ; 3 uses
  %9 = load float, ptr %i.t, align 4, !tbaa !28
  %10 = load float, ptr %i.e, align 8, !tbaa !28
  %11 = fmul float %9, %10                        ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %13 = load float, ptr %12, align 4, !tbaa !28
  %14 = load float, ptr %7, align 4, !tbaa !28
  %15 = fmul float %13, %14                       ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %17 = load float, ptr %16, align 4, !tbaa !28
  %18 = load float, ptr %8, align 8, !tbaa !28
  %19 = fmul float %17, %18                       ; 2 uses
  %i.u = load <4 x float>, ptr %i.h, align 4
  %i.v = shufflevector <4 x float> %i.u, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.w = load float, ptr %i.i, align 4, !tbaa !28
  %i.x = load float, ptr %i.g, align 4, !tbaa !28
  %i.y = load float, ptr %i.j, align 4, !tbaa !28
  %20 = fmul float %15, %i.y
  %21 = tail call float @llvm.fmuladd.f32(float %11, float %i.x, float %20)
  %22 = load float, ptr %i.k, align 4, !tbaa !28
  %23 = tail call noundef float @llvm.fmuladd.f32(float %19, float %22, float %21)
  %i.z = load <2 x float>, ptr %1, align 4, !tbaa !28 ; 2 uses
  %i.aa = load <2 x float>, ptr %i.f, align 4, !tbaa !28 ; 2 uses
  %24 = insertelement <2 x float> poison, float %15, i64 0
  %i.ab = shufflevector <2 x float> %24, <2 x float> poison, <2 x i32> zeroinitializer
  %25 = shufflevector <2 x float> %i.z, <2 x float> %i.aa, <2 x i32> <i32 1, i32 3>
  %26 = fmul <2 x float> %i.ab, %25
  %i.ac = insertelement <2 x float> poison, float %11, i64 0
  %27 = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %28 = shufflevector <2 x float> %i.z, <2 x float> %i.aa, <2 x i32> <i32 0, i32 2>
  %29 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %27, <2 x float> %28, <2 x float> %26)
  %30 = insertelement <2 x float> poison, float %19, i64 0
  %31 = shufflevector <2 x float> %30, <2 x float> poison, <2 x i32> zeroinitializer
  %32 = insertelement <2 x float> %i.v, float %i.w, i64 1
  %33 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %31, <2 x float> %32, <2 x float> %29)
  %i.ad = load <2 x float>, ptr %i.l, align 4, !tbaa !28
  %i.ae = fadd <2 x float> %33, %i.ad             ; 4 uses
  %i.af = load float, ptr %i.m, align 4, !tbaa !28
  %i.ag = fadd float %23, %i.af                   ; 2 uses
  %.sroa.3.12.vec.insert.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ag, i64 0 ; 2 uses
  %i.ah = load float, ptr %2, align 4, !tbaa !28
  %i.ai = load float, ptr %i.n, align 4, !tbaa !28
  %i.aj = extractelement <2 x float> %i.ae, i64 1
  %i.ak = fmul float %i.aj, %i.ai
  %i.al = extractelement <2 x float> %i.ae, i64 0
  %i.am = tail call float @llvm.fmuladd.f32(float %i.al, float %i.ah, float %i.ak)
  %i.an = load float, ptr %i.o, align 4, !tbaa !28
  %i.ao = tail call noundef float @llvm.fmuladd.f32(float %i.ag, float %i.an, float %i.am) ; 4 uses
  %i.ap = load float, ptr %3, align 4, !tbaa !28
  %i.aq = fcmp olt float %i.ao, %i.ap
  br i1 %i.aq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store float %i.ao, ptr %3, align 4, !tbaa !28
  store <2 x float> %i.ae, ptr %5, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ar = load float, ptr %4, align 4, !tbaa !28
  %i.as = fcmp ogt float %i.ao, %i.ar
  br i1 %i.as, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store float %i.ao, ptr %4, align 4, !tbaa !28
  store <2 x float> %i.ae, ptr %6, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %.sroa.7.0..sroa_idx26, align 4, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !73

bb.g:                                             ; preds = %._crit_edge
  store float %i.p, ptr %3, align 4, !tbaa !28
  store float %i.q, ptr %4, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.i, i64 16, i1 false), !tbaa.struct !22
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17btConvexHullShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTV17btConvexHullShape, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load i8, ptr %i.c, align 8, !range !26
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #18
  unreachable

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit:   ; preds = %bb.a, %bb.b
  tail call void @_ZN23btPolyhedralConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(113) dereferenceable(113) %0) #17
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17btConvexHullShapeD0Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTV17btConvexHullShape, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load i8, ptr %i.c, align 8, !range !26
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i.i, label %bb.b, label %_ZN17btConvexHullShapeD2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN17btConvexHullShapeD2Ev.exit unwind label %bb.c, !inline_history !74

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #18, !inline_history !74
  unreachable

_ZN17btConvexHullShapeD2Ev.exit:                  ; preds = %bb.a, %bb.b
  tail call void @_ZN23btPolyhedralConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(113) dereferenceable(152) %0) #17, !inline_history !74
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN17btConvexHullShapedlEPv.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZN17btConvexHullShapeD2Ev.exit
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #18
  unreachable

_ZN17btConvexHullShapedlEPv.exit:                 ; preds = %_ZN17btConvexHullShapeD2Ev.exit
  ret void
}

declare void @_ZNK34btPolyhedralConvexAabbCachingShape7getAabbERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(113), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

declare void @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #1

declare noundef float @_ZNK16btCollisionShape20getAngularMotionDiscEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare noundef float @_ZNK16btCollisionShape27getContactBreakingThresholdEf(ptr noundef nonnull align 8 dereferenceable(32), float noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZNK21btConvexInternalShape15getLocalScalingEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  ret ptr %i.a
}

declare void @_ZNK23btPolyhedralConvexShape21calculateLocalInertiaEfR9btVector3(ptr noundef nonnull align 8 dereferenceable(80), float noundef, ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17btConvexHullShape7getNameEv(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret ptr @.str.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK16btCollisionShape38getAnisotropicRollingFrictionDirectionEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret { <2 x float>, <2 x float> } { <2 x float> splat (float 1.000000e+00), <2 x float> <float 1.000000e+00, float 0.000000e+00> }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN21btConvexInternalShape9setMarginEf(ptr noundef nonnull align 8 dereferenceable(72) %0, float noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %1, ptr %i.a, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef float @_ZNK21btConvexInternalShape9getMarginEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load float, ptr %i.a, align 8, !tbaa !54
  ret float %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK17btConvexHullShape28calculateSerializeBufferSizeEv(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret i32 80
}

declare void @_ZNK16btCollisionShape20serializeSingleShapeEP12btSerializer(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #1

declare void @_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

declare noundef zeroext i1 @_ZN23btPolyhedralConvexShape28initializePolyhedralFeaturesEi(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) unnamed_addr #1

declare void @_ZN23btPolyhedralConvexShape21setPolyhedralFeaturesER18btConvexPolyhedron(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(172)) unnamed_addr #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr
end_hunk_0
