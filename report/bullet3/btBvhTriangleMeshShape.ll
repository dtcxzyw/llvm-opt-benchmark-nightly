Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btBvhTriangleMeshShape?download=true
inline.NumInlined: 72
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK22btBvhTriangleMeshShape9serializeEPvP12btSerializer:bb.a
  %i.cl = tail call noundef ptr %i.ck(ptr noundef nonnull align 8 dereferenceable(160) %i.cf, ptr noundef %i.ch, ptr noundef nonnull %2)
  %i.cm = load ptr, ptr %i.bc, align 8, !tbaa !59
  %i.cn = load ptr, ptr %2, align 8, !tbaa !9
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %i.cp = load ptr, ptr %i.co, align 8
  tail call void %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.ce, ptr noundef %i.cl, i32 noundef 1346456916, ptr noundef %i.cm)
  br label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.g
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr null, ptr %i.cq, align 8, !tbaa !60
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i32 0, ptr %i.cr, align 4
  ret ptr @.str
}

declare noundef ptr @_ZNK16btCollisionShape9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK22btBvhTriangleMeshShape18serializeSingleBvhEP12btSerializer(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(109) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(244) %i.b)
  %i.g = sext i32 %i.f to i64
  %i.h = load ptr, ptr %1, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.g, i32 noundef 1) ; 2 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef ptr %i.q(ptr noundef nonnull align 8 dereferenceable(244) %i.l, ptr noundef %i.n, ptr noundef nonnull %1)
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.t = load ptr, ptr %1, align 8, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.k, ptr noundef %i.r, i32 noundef 1213612625, ptr noundef %i.s)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK22btBvhTriangleMeshShape30serializeSingleTriangleInfoMapEP12btSerializer(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(109) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(160) %i.b)
  %i.g = sext i32 %i.f to i64
  %i.h = load ptr, ptr %1, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.g, i32 noundef 1) ; 2 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef ptr %i.q(ptr noundef nonnull align 8 dereferenceable(160) %i.l, ptr noundef %i.n, ptr noundef nonnull %1)
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.t = load ptr, ptr %1, align 8, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.k, ptr noundef %i.r, i32 noundef 1346456916, ptr noundef %i.s)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_ZNK19btTriangleMeshShape7getAabbERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

declare void @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #1

declare noundef float @_ZNK16btCollisionShape20getAngularMotionDiscEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare noundef float @_ZNK16btCollisionShape27getContactBreakingThresholdEf(ptr noundef nonnull align 8 dereferenceable(32), float noundef) unnamed_addr #1

declare noundef nonnull align 4 dereferenceable(16) ptr @_ZNK19btTriangleMeshShape15getLocalScalingEv(ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #1

declare void @_ZNK19btTriangleMeshShape21calculateLocalInertiaEfR9btVector3(ptr noundef nonnull align 8 dereferenceable(80), float noundef, ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK22btBvhTriangleMeshShape7getNameEv(ptr noundef nonnull align 8 dereferenceable(109) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret ptr @.str.4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK16btCollisionShape38getAnisotropicRollingFrictionDirectionEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret { <2 x float>, <2 x float> } { <2 x float> splat (float 1.000000e+00), <2 x float> <float 1.000000e+00, float 0.000000e+00> }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14btConcaveShape9setMarginEf(ptr noundef nonnull align 8 dereferenceable(36) %0, float noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %1, ptr %i.a, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef float @_ZNK14btConcaveShape9getMarginEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load float, ptr %i.a, align 8, !tbaa !44
  ret float %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK22btBvhTriangleMeshShape28calculateSerializeBufferSizeEv(ptr noundef nonnull align 8 dereferenceable(109) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret i32 80
}

declare void @_ZNK16btCollisionShape20serializeSingleShapeEP12btSerializer(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #1

declare { <2 x float>, <2 x float> } @_ZNK19btTriangleMeshShape24localGetSupportingVertexERK9btVector3(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK19btTriangleMeshShape37localGetSupportingVertexWithoutMarginERK9btVector3(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { <2 x float>, <2 x float> } %i.c(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(16) %1)
  ret { <2 x float>, <2 x float> } %i.d
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_EN21MyNodeOverlapCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #14
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZZN22btBvhTriangleMeshShape14performRaycastEP18btTriangleCallbackRK9btVector3S4_EN21MyNodeOverlapCallback11processNodeEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca [3 x %class.btVector3], align 16    ; 13 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 3 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, i32 noundef %1)
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !61
  %i.o = load i32, ptr %i.f, align 4, !tbaa !62
  %i.p = mul nsw i32 %i.o, %2
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 %i.q ; 18 uses
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !31   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.h, align 4, !tbaa !63   ; 5 uses
  %i.v = load i32, ptr %i.c, align 4, !tbaa !63
  %i.w = icmp eq i32 %i.v, 0
  %i.x = load ptr, ptr %i.a, align 8              ; 9 uses
  %i.y = load i32, ptr %i.d, align 4              ; 9 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  br i1 %i.w, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  switch i32 %i.u, label %.split.1 [
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 5, label %bb.g
  ]

.split.us.preheader:                              ; preds = %bb.a
  switch i32 %i.u, label %.split.us.1 [
    i32 2, label %bb.d
    i32 3, label %bb.c
    i32 5, label %bb.b
  ]

bb.b:                                             ; preds = %.split.us.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !65
  %i.ac = zext i8 %i.ab to i32
  br label %.split.us.1

bb.c:                                             ; preds = %.split.us.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !66
  %i.af = zext i16 %i.ae to i32
  br label %.split.us.1

bb.d:                                             ; preds = %.split.us.preheader
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !62
  br label %.split.us.1

.split.us.1:                                      ; preds = %bb.d, %bb.c, %bb.b, %.split.us.preheader
  %.0.us = phi i32 [ undef, %.split.us.preheader ], [ %i.ah, %bb.d ], [ %i.af, %bb.c ], [ %i.ac, %bb.b ] ; 3 uses
  %i.ai = mul nsw i32 %i.y, %.0.us
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds i8, ptr %i.x, i64 %i.aj ; 2 uses
  %i.al = load <2 x float>, ptr %i.t, align 4, !tbaa !29 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load float, ptr %i.am, align 4, !tbaa !29
  %i.ao = load float, ptr %i.z, align 4, !tbaa !29 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aq = load <2 x float>, ptr %i.ak, align 4, !tbaa !29
  %i.ar = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.an, i64 2
  %i.as = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.at = shufflevector <4 x float> %i.as, <4 x float> %i.ar, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.au = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.av = insertelement <4 x float> %i.au, float 1.000000e+00, i64 3
  %i.aw = insertelement <4 x float> %i.av, float %i.ao, i64 2 ; 5 uses
  %i.ax = fmul <4 x float> %i.at, %i.aw
  store <4 x float> %i.ax, ptr %i.ap, align 16
  switch i32 %i.u, label %.split.us.2 [
    i32 2, label %.split.us.2.thread
    i32 3, label %.split.us.2.thread50
    i32 5, label %.split.us.2.thread55
  ]

.split.us.2.thread55:                             ; preds = %.split.us.1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !65
  %i.ba = zext i8 %i.az to i32
  %i.bb = mul nsw i32 %i.y, %i.ba
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr %i.x, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load float, ptr %i.be, align 4, !tbaa !29
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bh = load <2 x float>, ptr %i.bd, align 4, !tbaa !29
  %i.bi = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bf, i64 2
  %i.bj = shufflevector <2 x float> %i.bh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> %i.bi, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bl = fmul <4 x float> %i.bk, %i.aw
  store <4 x float> %i.bl, ptr %i.bg, align 16
  %i.bm = load i8, ptr %i.r, align 1, !tbaa !65
  %i.bn = zext i8 %i.bm to i32
  br label %.split42.us.loopexit

.split.us.2.thread50:                             ; preds = %.split.us.1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !66
  %i.bq = zext i16 %i.bp to i32
  %i.br = mul nsw i32 %i.y, %i.bq
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds i8, ptr %i.x, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !29
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bx = load <2 x float>, ptr %i.bt, align 4, !tbaa !29
  %i.by = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bv, i64 2
  %i.bz = shufflevector <2 x float> %i.bx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> %i.by, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cb = fmul <4 x float> %i.ca, %i.aw
  store <4 x float> %i.cb, ptr %i.bw, align 16
  %i.cc = load i16, ptr %i.r, align 2, !tbaa !66
  %i.cd = zext i16 %i.cc to i32
  br label %.split42.us.loopexit

.split.us.2.thread:                               ; preds = %.split.us.1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !62
  %i.cg = mul nsw i32 %i.y, %i.cf
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds i8, ptr %i.x, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !29
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cm = load <2 x float>, ptr %i.ci, align 4, !tbaa !29
  %i.cn = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ck, i64 2
  %i.co = shufflevector <2 x float> %i.cm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cp = shufflevector <4 x float> %i.co, <4 x float> %i.cn, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cq = fmul <4 x float> %i.cp, %i.aw
  store <4 x float> %i.cq, ptr %i.cl, align 16
  %i.cr = load i32, ptr %i.r, align 4, !tbaa !62
  br label %.split42.us.loopexit

.split.us.2:                                      ; preds = %.split.us.1
  %4 = mul nsw i32 %i.y, %.0.us
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i8, ptr %i.x, i64 %5 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !29
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cv = load <2 x float>, ptr %6, align 4, !tbaa !29
  %i.cw = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ct, i64 2
  %i.cx = shufflevector <2 x float> %i.cv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> %i.cw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cz = fmul <4 x float> %i.cy, %i.aw
  store <4 x float> %i.cz, ptr %i.cu, align 16
  br label %.split42.us.loopexit

.split42.us.loopexit:                             ; preds = %.split.us.2, %.split.us.2.thread, %.split.us.2.thread50, %.split.us.2.thread55
  %.0.us.2 = phi i32 [ %.0.us, %.split.us.2 ], [ %i.cr, %.split.us.2.thread ], [ %i.cd, %.split.us.2.thread50 ], [ %i.bn, %.split.us.2.thread55 ]
  %i.da = mul nsw i32 %i.y, %.0.us.2
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds i8, ptr %i.x, i64 %i.db ; 2 uses
  %i.dd = load <2 x float>, ptr %i.dc, align 4, !tbaa !29
  %i.de = fmul <2 x float> %i.dd, %i.al
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dg = load float, ptr %i.df, align 4, !tbaa !29
  %i.dh = fmul float %i.dg, %i.ao
  br label %.split42.us

.split42.us:                                      ; preds = %.split42.us.loopexit43, %.split42.us.loopexit
  %.sink = phi float [ %i.gb, %.split42.us.loopexit43 ], [ %i.dh, %.split42.us.loopexit ]
  %i.di = phi <2 x float> [ %i.fx, %.split42.us.loopexit43 ], [ %i.de, %.split42.us.loopexit ]
  store <2 x float> %i.di, ptr %3, align 16
  %.sroa.5.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %.sink, ptr %.sroa.5.0..sroa_idx.2, align 8
  %.sroa.6.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx.2, align 4, !tbaa !65
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !35 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !9
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, ptr noundef nonnull %3, i32 noundef %1, i32 noundef %2)
  %i.do = load ptr, ptr %i.i, align 8, !tbaa !31  ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !9
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(24) %i.do, i32 noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void

bb.e:                                             ; preds = %.split.preheader
  %i.ds = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !62
  br label %.split.1

bb.f:                                             ; preds = %.split.preheader
  %i.du = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !66
  %i.dw = zext i16 %i.dv to i32
  br label %.split.1

bb.g:                                             ; preds = %.split.preheader
  %i.dx = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !65
  %i.dz = zext i8 %i.dy to i32
  br label %.split.1

.split.1:                                         ; preds = %.split.preheader, %bb.g, %bb.f, %bb.e
  %.0 = phi i32 [ undef, %.split.preheader ], [ %i.dt, %bb.e ], [ %i.dw, %bb.f ], [ %i.dz, %bb.g ] ; 2 uses
  %i.ea = mul nsw i32 %i.y, %.0
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds i8, ptr %i.x, i64 %i.eb ; 2 uses
  %i.ed = load <2 x float>, ptr %i.t, align 4, !tbaa !29 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !68
  %i.eg = fptrunc double %i.ef to float
  %i.eh = load float, ptr %i.z, align 4, !tbaa !29 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ej = load <2 x double>, ptr %i.ec, align 8, !tbaa !68
  %i.ek = fptrunc <2 x double> %i.ej to <2 x float>
  %i.el = shufflevector <2 x float> %i.ed, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.em = insertelement <4 x float> %i.el, float 0.000000e+00, i64 3
  %i.en = insertelement <4 x float> %i.em, float %i.eh, i64 2 ; 2 uses
  %i.eo = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.eg, i64 2
  %i.ep = shufflevector <2 x float> %i.ek, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.eq = shufflevector <4 x float> %i.ep, <4 x float> %i.eo, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.er = fmul <4 x float> %i.en, %i.eq
  store <4 x float> %i.er, ptr %i.ei, align 16
  switch i32 %i.u, label %.split.2 [
    i32 2, label %bb.j
    i32 3, label %bb.i
    i32 5, label %bb.h
  ]

bb.h:                                             ; preds = %.split.1
  %i.es = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.et = load i8, ptr %i.es, align 1, !tbaa !65
  %i.eu = zext i8 %i.et to i32
  br label %.split.2

bb.i:                                             ; preds = %.split.1
  %i.ev = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !66
  %i.ex = zext i16 %i.ew to i32
  br label %.split.2

bb.j:                                             ; preds = %.split.1
  %i.ey = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !62
  br label %.split.2

.split.2:                                         ; preds = %bb.j, %bb.i, %bb.h, %.split.1
  %.0.1 = phi i32 [ %.0, %.split.1 ], [ %i.ez, %bb.j ], [ %i.ex, %bb.i ], [ %i.eu, %bb.h ] ; 2 uses
  %i.fa = mul nsw i32 %i.y, %.0.1
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds i8, ptr %i.x, i64 %i.fb ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !68
  %i.ff = fptrunc double %i.fe to float
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fh = load <2 x double>, ptr %i.fc, align 8, !tbaa !68
  %i.fi = fptrunc <2 x double> %i.fh to <2 x float>
  %i.fj = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.ff, i64 2
  %i.fk = shufflevector <2 x float> %i.fi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fl = shufflevector <4 x float> %i.fk, <4 x float> %i.fj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fm = fmul <4 x float> %i.en, %i.fl
  store <4 x float> %i.fm, ptr %i.fg, align 16
  switch i32 %i.u, label %.split42.us.loopexit43 [
    i32 2, label %bb.m
    i32 3, label %bb.l
    i32 5, label %bb.k
  ]

bb.k:                                             ; preds = %.split.2
  %i.fn = load i8, ptr %i.r, align 1, !tbaa !65
  %i.fo = zext i8 %i.fn to i32
  br label %.split42.us.loopexit43

bb.l:                                             ; preds = %.split.2
  %i.fp = load i16, ptr %i.r, align 2, !tbaa !66
  %i.fq = zext i16 %i.fp to i32
  br label %.split42.us.loopexit43

bb.m:                                             ; preds = %.split.2
  %i.fr = load i32, ptr %i.r, align 4, !tbaa !62
  br label %.split42.us.loopexit43

.split42.us.loopexit43:                           ; preds = %bb.m, %bb.l, %bb.k, %.split.2
  %.0.2 = phi i32 [ %.0.1, %.split.2 ], [ %i.fr, %bb.m ], [ %i.fq, %bb.l ], [ %i.fo, %bb.k ]
  %i.fs = mul nsw i32 %i.y, %.0.2
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds i8, ptr %i.x, i64 %i.ft ; 2 uses
  %i.fv = load <2 x double>, ptr %i.fu, align 8, !tbaa !68
  %i.fw = fptrunc <2 x double> %i.fv to <2 x float>
  %i.fx = fmul <2 x float> %i.ed, %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !68
  %i.ga = fptrunc double %i.fz to float
  %i.gb = fmul float %i.eh, %i.ga
  br label %.split42.us
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_EN21MyNodeOverlapCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #14
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZZN22btBvhTriangleMeshShape17performConvexcastEP18btTriangleCallbackRK9btVector3S4_S4_S4_EN21MyNodeOverlapCallback11processNodeEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca [3 x %class.btVector3], align 16    ; 13 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 3 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, i32 noundef %1)
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !61
  %i.o = load i32, ptr %i.f, align 4, !tbaa !62
  %i.p = mul nsw i32 %i.o, %2
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 %i.q ; 18 uses
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !36   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.h, align 4, !tbaa !63   ; 5 uses
  %i.v = load i32, ptr %i.c, align 4, !tbaa !63
  %i.w = icmp eq i32 %i.v, 0
  %i.x = load ptr, ptr %i.a, align 8              ; 9 uses
  %i.y = load i32, ptr %i.d, align 4              ; 9 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  br i1 %i.w, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  switch i32 %i.u, label %.split.1 [
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 5, label %bb.g
  ]

.split.us.preheader:                              ; preds = %bb.a
  switch i32 %i.u, label %.split.us.1 [
    i32 2, label %bb.d
    i32 3, label %bb.c
    i32 5, label %bb.b
  ]

bb.b:                                             ; preds = %.split.us.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !65
  %i.ac = zext i8 %i.ab to i32
  br label %.split.us.1

bb.c:                                             ; preds = %.split.us.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !66
  %i.af = zext i16 %i.ae to i32
  br label %.split.us.1

bb.d:                                             ; preds = %.split.us.preheader
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !62
  br label %.split.us.1

.split.us.1:                                      ; preds = %bb.d, %bb.c, %bb.b, %.split.us.preheader
  %.0.us = phi i32 [ undef, %.split.us.preheader ], [ %i.ah, %bb.d ], [ %i.af, %bb.c ], [ %i.ac, %bb.b ] ; 3 uses
  %i.ai = mul nsw i32 %i.y, %.0.us
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds i8, ptr %i.x, i64 %i.aj ; 2 uses
  %i.al = load <2 x float>, ptr %i.t, align 4, !tbaa !29 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load float, ptr %i.am, align 4, !tbaa !29
  %i.ao = load float, ptr %i.z, align 4, !tbaa !29 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aq = load <2 x float>, ptr %i.ak, align 4, !tbaa !29
  %i.ar = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.an, i64 2
  %i.as = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.at = shufflevector <4 x float> %i.as, <4 x float> %i.ar, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.au = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.av = insertelement <4 x float> %i.au, float 1.000000e+00, i64 3
  %i.aw = insertelement <4 x float> %i.av, float %i.ao, i64 2 ; 5 uses
  %i.ax = fmul <4 x float> %i.at, %i.aw
  store <4 x float> %i.ax, ptr %i.ap, align 16
  switch i32 %i.u, label %.split.us.2 [
    i32 2, label %.split.us.2.thread
    i32 3, label %.split.us.2.thread50
    i32 5, label %.split.us.2.thread55
  ]

.split.us.2.thread55:                             ; preds = %.split.us.1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !65
  %i.ba = zext i8 %i.az to i32
  %i.bb = mul nsw i32 %i.y, %i.ba
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr %i.x, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load float, ptr %i.be, align 4, !tbaa !29
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bh = load <2 x float>, ptr %i.bd, align 4, !tbaa !29
  %i.bi = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bf, i64 2
  %i.bj = shufflevector <2 x float> %i.bh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> %i.bi, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bl = fmul <4 x float> %i.bk, %i.aw
  store <4 x float> %i.bl, ptr %i.bg, align 16
  %i.bm = load i8, ptr %i.r, align 1, !tbaa !65
  %i.bn = zext i8 %i.bm to i32
  br label %.split42.us.loopexit

.split.us.2.thread50:                             ; preds = %.split.us.1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !66
  %i.bq = zext i16 %i.bp to i32
  %i.br = mul nsw i32 %i.y, %i.bq
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds i8, ptr %i.x, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !29
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bx = load <2 x float>, ptr %i.bt, align 4, !tbaa !29
  %i.by = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bv, i64 2
  %i.bz = shufflevector <2 x float> %i.bx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> %i.by, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cb = fmul <4 x float> %i.ca, %i.aw
  store <4 x float> %i.cb, ptr %i.bw, align 16
  %i.cc = load i16, ptr %i.r, align 2, !tbaa !66
  %i.cd = zext i16 %i.cc to i32
  br label %.split42.us.loopexit

.split.us.2.thread:                               ; preds = %.split.us.1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !62
  %i.cg = mul nsw i32 %i.y, %i.cf
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds i8, ptr %i.x, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !29
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cm = load <2 x float>, ptr %i.ci, align 4, !tbaa !29
  %i.cn = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ck, i64 2
  %i.co = shufflevector <2 x float> %i.cm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cp = shufflevector <4 x float> %i.co, <4 x float> %i.cn, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cq = fmul <4 x float> %i.cp, %i.aw
  store <4 x float> %i.cq, ptr %i.cl, align 16
  %i.cr = load i32, ptr %i.r, align 4, !tbaa !62
  br label %.split42.us.loopexit

.split.us.2:                                      ; preds = %.split.us.1
  %4 = mul nsw i32 %i.y, %.0.us
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i8, ptr %i.x, i64 %5 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !29
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cv = load <2 x float>, ptr %6, align 4, !tbaa !29
  %i.cw = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ct, i64 2
  %i.cx = shufflevector <2 x float> %i.cv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> %i.cw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cz = fmul <4 x float> %i.cy, %i.aw
  store <4 x float> %i.cz, ptr %i.cu, align 16
  br label %.split42.us.loopexit

.split42.us.loopexit:                             ; preds = %.split.us.2, %.split.us.2.thread, %.split.us.2.thread50, %.split.us.2.thread55
  %.0.us.2 = phi i32 [ %.0.us, %.split.us.2 ], [ %i.cr, %.split.us.2.thread ], [ %i.cd, %.split.us.2.thread50 ], [ %i.bn, %.split.us.2.thread55 ]
  %i.da = mul nsw i32 %i.y, %.0.us.2
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds i8, ptr %i.x, i64 %i.db ; 2 uses
  %i.dd = load <2 x float>, ptr %i.dc, align 4, !tbaa !29
  %i.de = fmul <2 x float> %i.dd, %i.al
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dg = load float, ptr %i.df, align 4, !tbaa !29
  %i.dh = fmul float %i.dg, %i.ao
  br label %.split42.us

.split42.us:                                      ; preds = %.split42.us.loopexit43, %.split42.us.loopexit
  %.sink = phi float [ %i.gb, %.split42.us.loopexit43 ], [ %i.dh, %.split42.us.loopexit ]
  %i.di = phi <2 x float> [ %i.fx, %.split42.us.loopexit43 ], [ %i.de, %.split42.us.loopexit ]
  store <2 x float> %i.di, ptr %3, align 16
  %.sroa.5.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %.sink, ptr %.sroa.5.0..sroa_idx.2, align 8
  %.sroa.6.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx.2, align 4, !tbaa !65
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !38 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !9
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, ptr noundef nonnull %3, i32 noundef %1, i32 noundef %2)
  %i.do = load ptr, ptr %i.i, align 8, !tbaa !36  ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !9
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(24) %i.do, i32 noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void

bb.e:                                             ; preds = %.split.preheader
  %i.ds = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !62
  br label %.split.1

bb.f:                                             ; preds = %.split.preheader
  %i.du = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !66
  %i.dw = zext i16 %i.dv to i32
  br label %.split.1

bb.g:                                             ; preds = %.split.preheader
  %i.dx = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !65
  %i.dz = zext i8 %i.dy to i32
  br label %.split.1

.split.1:                                         ; preds = %.split.preheader, %bb.g, %bb.f, %bb.e
  %.0 = phi i32 [ undef, %.split.preheader ], [ %i.dt, %bb.e ], [ %i.dw, %bb.f ], [ %i.dz, %bb.g ] ; 2 uses
  %i.ea = mul nsw i32 %i.y, %.0
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds i8, ptr %i.x, i64 %i.eb ; 2 uses
  %i.ed = load <2 x float>, ptr %i.t, align 4, !tbaa !29 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !68
  %i.eg = fptrunc double %i.ef to float
  %i.eh = load float, ptr %i.z, align 4, !tbaa !29 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ej = load <2 x double>, ptr %i.ec, align 8, !tbaa !68
  %i.ek = fptrunc <2 x double> %i.ej to <2 x float>
  %i.el = shufflevector <2 x float> %i.ed, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.em = insertelement <4 x float> %i.el, float 0.000000e+00, i64 3
  %i.en = insertelement <4 x float> %i.em, float %i.eh, i64 2 ; 2 uses
  %i.eo = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.eg, i64 2
  %i.ep = shufflevector <2 x float> %i.ek, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.eq = shufflevector <4 x float> %i.ep, <4 x float> %i.eo, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.er = fmul <4 x float> %i.en, %i.eq
  store <4 x float> %i.er, ptr %i.ei, align 16
  switch i32 %i.u, label %.split.2 [
    i32 2, label %bb.j
    i32 3, label %bb.i
    i32 5, label %bb.h
  ]

bb.h:                                             ; preds = %.split.1
  %i.es = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.et = load i8, ptr %i.es, align 1, !tbaa !65
  %i.eu = zext i8 %i.et to i32
  br label %.split.2

bb.i:                                             ; preds = %.split.1
  %i.ev = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !66
  %i.ex = zext i16 %i.ew to i32
  br label %.split.2

bb.j:                                             ; preds = %.split.1
  %i.ey = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !62
  br label %.split.2

.split.2:                                         ; preds = %bb.j, %bb.i, %bb.h, %.split.1
  %.0.1 = phi i32 [ %.0, %.split.1 ], [ %i.ez, %bb.j ], [ %i.ex, %bb.i ], [ %i.eu, %bb.h ] ; 2 uses
  %i.fa = mul nsw i32 %i.y, %.0.1
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds i8, ptr %i.x, i64 %i.fb ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !68
  %i.ff = fptrunc double %i.fe to float
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fh = load <2 x double>, ptr %i.fc, align 8, !tbaa !68
  %i.fi = fptrunc <2 x double> %i.fh to <2 x float>
  %i.fj = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.ff, i64 2
  %i.fk = shufflevector <2 x float> %i.fi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fl = shufflevector <4 x float> %i.fk, <4 x float> %i.fj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fm = fmul <4 x float> %i.en, %i.fl
  store <4 x float> %i.fm, ptr %i.fg, align 16
  switch i32 %i.u, label %.split42.us.loopexit43 [
    i32 2, label %bb.m
    i32 3, label %bb.l
    i32 5, label %bb.k
  ]

bb.k:                                             ; preds = %.split.2
  %i.fn = load i8, ptr %i.r, align 1, !tbaa !65
  %i.fo = zext i8 %i.fn to i32
  br label %.split42.us.loopexit43

bb.l:                                             ; preds = %.split.2
  %i.fp = load i16, ptr %i.r, align 2, !tbaa !66
  %i.fq = zext i16 %i.fp to i32
  br label %.split42.us.loopexit43

bb.m:                                             ; preds = %.split.2
  %i.fr = load i32, ptr %i.r, align 4, !tbaa !62
  br label %.split42.us.loopexit43

.split42.us.loopexit43:                           ; preds = %bb.m, %bb.l, %bb.k, %.split.2
  %.0.2 = phi i32 [ %.0.1, %.split.2 ], [ %i.fr, %bb.m ], [ %i.fq, %bb.l ], [ %i.fo, %bb.k ]
  %i.fs = mul nsw i32 %i.y, %.0.2
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds i8, ptr %i.x, i64 %i.ft ; 2 uses
  %i.fv = load <2 x double>, ptr %i.fu, align 8, !tbaa !68
  %i.fw = fptrunc <2 x double> %i.fv to <2 x float>
  %i.fx = fmul <2 x float> %i.ed, %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !68
  %i.ga = fptrunc double %i.fz to float
  %i.gb = fmul float %i.eh, %i.ga
  br label %.split42.us
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_EN21MyNodeOverlapCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(76) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #14
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZZNK22btBvhTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_EN21MyNodeOverlapCallback11processNodeEii(ptr noundef nonnull align 8 dereferenceable(76) initializes((24, 72)) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 3 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !42
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !39   ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, i32 noundef %1)
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !61
  %i.r = load i32, ptr %i.f, align 4, !tbaa !62
  %i.s = mul nsw i32 %i.r, %2
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 %i.t ; 18 uses
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !39   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 12 uses
  %i.x = load i32, ptr %i.h, align 4, !tbaa !63   ; 4 uses
  %i.y = load i32, ptr %i.c, align 4, !tbaa !63
  %i.z = icmp eq i32 %i.y, 0
  %i.aa = load ptr, ptr %i.a, align 8             ; 12 uses
  %i.ab = load i32, ptr %i.d, align 4             ; 12 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 12 uses
  br i1 %i.z, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.a
  switch i32 %i.x, label %bb.d [
    i32 3, label %bb.c
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %.split.us.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !62
  br label %.split.us.1

bb.c:                                             ; preds = %.split.us.preheader
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !66
  %i.ah = zext i16 %i.ag to i32
  br label %.split.us.1

bb.d:                                             ; preds = %.split.us.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !65
  %i.ak = zext i8 %i.aj to i32
  br label %.split.us.1

.split.us.1:                                      ; preds = %bb.d, %bb.c, %bb.b
  %i.al = phi i32 [ %i.ah, %bb.c ], [ %i.ae, %bb.b ], [ %i.ak, %bb.d ]
  %i.am = mul nsw i32 %i.ab, %i.al
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %i.aa, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !29
  %i.ar = load float, ptr %i.ac, align 4, !tbaa !29
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.at = load <2 x float>, ptr %i.ao, align 4, !tbaa !29
  %i.au = load <2 x float>, ptr %i.w, align 4, !tbaa !29
  %i.av = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.aq, i64 2
  %i.aw = shufflevector <2 x float> %i.at, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ax = shufflevector <4 x float> %i.aw, <4 x float> %i.av, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ay = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.ar, i64 2
  %i.az = shufflevector <2 x float> %i.au, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ba = shufflevector <4 x float> %i.az, <4 x float> %i.ay, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bb = fmul <4 x float> %i.ax, %i.ba
  store <4 x float> %i.bb, ptr %i.as, align 8
  switch i32 %i.x, label %bb.g [
    i32 3, label %bb.f
    i32 2, label %bb.e
  ]

bb.e:                                             ; preds = %.split.us.1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !62
  br label %.split.us.2

bb.f:                                             ; preds = %.split.us.1
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !66
  %i.bg = zext i16 %i.bf to i32
  br label %.split.us.2

bb.g:                                             ; preds = %.split.us.1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !65
  %i.bj = zext i8 %i.bi to i32
  br label %.split.us.2

.split.us.2:                                      ; preds = %bb.g, %bb.f, %bb.e
  %i.bk = phi i32 [ %i.bg, %bb.f ], [ %i.bd, %bb.e ], [ %i.bj, %bb.g ]
  %i.bl = mul nsw i32 %i.ab, %i.bk
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds i8, ptr %i.aa, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !29
  %i.bq = load float, ptr %i.ac, align 4, !tbaa !29
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bs = load <2 x float>, ptr %i.bn, align 4, !tbaa !29
  %i.bt = load <2 x float>, ptr %i.w, align 4, !tbaa !29
  %i.bu = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.bp, i64 2
  %i.bv = shufflevector <2 x float> %i.bs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bw = shufflevector <4 x float> %i.bv, <4 x float> %i.bu, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bx = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.bq, i64 2
  %i.by = shufflevector <2 x float> %i.bt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bz = shufflevector <4 x float> %i.by, <4 x float> %i.bx, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ca = fmul <4 x float> %i.bw, %i.bz
  store <4 x float> %i.ca, ptr %i.br, align 8
  switch i32 %i.x, label %bb.j [
    i32 3, label %bb.i
    i32 2, label %bb.h
  ]

bb.h:                                             ; preds = %.split.us.2
  %i.cb = load i32, ptr %i.u, align 4, !tbaa !62
  br label %.split41.us.loopexit

bb.i:                                             ; preds = %.split.us.2
  %i.cc = load i16, ptr %i.u, align 2, !tbaa !66
  %i.cd = zext i16 %i.cc to i32
  br label %.split41.us.loopexit

bb.j:                                             ; preds = %.split.us.2
  %i.ce = load i8, ptr %i.u, align 1, !tbaa !65
  %i.cf = zext i8 %i.ce to i32
  br label %.split41.us.loopexit

.split41.us.loopexit:                             ; preds = %bb.j, %bb.i, %bb.h
  %i.cg = phi i32 [ %i.cd, %bb.i ], [ %i.cb, %bb.h ], [ %i.cf, %bb.j ]
  %i.ch = mul nsw i32 %i.ab, %i.cg
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds i8, ptr %i.aa, i64 %i.ci ; 2 uses
  %i.ck = load <2 x float>, ptr %i.cj, align 4, !tbaa !29
  %i.cl = load <2 x float>, ptr %i.w, align 4, !tbaa !29
  %i.cm = fmul <2 x float> %i.ck, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.co = load float, ptr %i.cn, align 4, !tbaa !29
  %i.cp = load float, ptr %i.ac, align 4, !tbaa !29
  %i.cq = fmul float %i.co, %i.cp
  br label %.split41.us

.split:                                           ; preds = %bb.a
  switch i32 %i.x, label %.split.split.preheader [
    i32 3, label %.split.split.us.preheader
    i32 2, label %.split.split.us43.preheader
  ]

.split.split.us43.preheader:                      ; preds = %.split
  %i.cr = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !62
  %i.ct = mul nsw i32 %i.ab, %i.cs
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds i8, ptr %i.aa, i64 %i.cu ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !68
  %i.cy = fptrunc double %i.cx to float
  %i.cz = load float, ptr %i.ac, align 4, !tbaa !29
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.db = load <2 x double>, ptr %i.cv, align 8, !tbaa !68
  %i.dc = fptrunc <2 x double> %i.db to <2 x float>
  %i.dd = load <2 x float>, ptr %i.w, align 4, !tbaa !29
end_hunk_0
