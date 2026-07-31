inline.NumInlined: 560
inline.NumDeleted: 162
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN27btGImpactCollisionAlgorithm21collide_gjk_trianglesEP17btCollisionObjectS1_P22btGImpactMeshShapePartS3_PKii:bb.a

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.m
  %.in = phi i32 [ %6, %.lr.ph ], [ %i.t, %bb.m ]
  %.027 = phi ptr [ %5, %.lr.ph ], [ %i.x, %bb.m ] ; 3 uses
  %i.t = add nsw i32 %.in, -1                     ; 2 uses
  %i.u = load i32, ptr %.027, align 4, !tbaa !4   ; 2 uses
  store i32 %i.u, ptr %i.i, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %.027, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  store i32 %i.w, ptr %i.j, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %.027, i64 8
  %i.y = load ptr, ptr %3, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 176
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(272) %3, i32 noundef %i.u, ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.e unwind label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.ab = load i32, ptr %i.j, align 8, !tbaa !29
  %i.ac = load ptr, ptr %4, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 176
  %i.ae = load ptr, ptr %i.ad, align 8
  invoke void %i.ae(ptr noundef nonnull align 8 dereferenceable(272) %4, i32 noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(112) %8)
          to label %bb.f unwind label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.af = invoke noundef zeroext i1 @_ZN17btTriangleShapeEx25overlap_test_conservativeERKS_(ptr noundef nonnull align 8 dereferenceable(112) %7, ptr noundef nonnull align 8 dereferenceable(112) %8)
          to label %bb.g unwind label %.loopexit

bb.g:                                             ; preds = %bb.f
  br i1 %i.af, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.ah = load ptr, ptr %i.l, align 8, !tbaa !38
  store ptr %7, ptr %i.k, align 8, !tbaa !38
  store ptr %8, ptr %i.l, align 8, !tbaa !38
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !25  ; 2 uses
  %i.aj = load i32, ptr %i.n, align 4, !tbaa !26
  %i.ak = load i32, ptr %i.i, align 8, !tbaa !27
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  invoke void %i.an(ptr noundef nonnull align 8 dereferenceable(176) %i.ai, i32 noundef %i.aj, i32 noundef %i.ak)
          to label %.noexc unwind label %.loopexit, !inline_history !94

.noexc:                                           ; preds = %bb.h
  %i.ao = load ptr, ptr %i.m, align 8, !tbaa !25  ; 2 uses
  %i.ap = load i32, ptr %i.o, align 4, !tbaa !28
  %i.aq = load i32, ptr %i.j, align 8, !tbaa !29
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  invoke void %i.at(ptr noundef nonnull align 8 dereferenceable(176) %i.ao, i32 noundef %i.ap, i32 noundef %i.aq)
          to label %.noexc22 unwind label %.loopexit, !inline_history !94

.noexc22:                                         ; preds = %.noexc
  %i.au = load ptr, ptr %i.p, align 8, !tbaa !22  ; 2 uses
  %.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i, label %bb.i, label %_ZN27btGImpactCollisionAlgorithm20checkConvexAlgorithmEP17btCollisionObjectS1_.exit.i

bb.i:                                             ; preds = %.noexc22
  %i.av = load ptr, ptr %i.q, align 8, !tbaa !10  ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.j, label %_ZN27btGImpactCollisionAlgorithm12newAlgorithmEP17btCollisionObjectS1_.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %i.r, align 8, !tbaa !20  ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef ptr %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull %1, ptr noundef nonnull %2)
          to label %.noexc23 unwind label %.loopexit, !inline_history !94 ; 2 uses

.noexc23:                                         ; preds = %bb.j
  store ptr %i.bb, ptr %i.q, align 8, !tbaa !10
  br label %_ZN27btGImpactCollisionAlgorithm12newAlgorithmEP17btCollisionObjectS1_.exit.i.i

_ZN27btGImpactCollisionAlgorithm12newAlgorithmEP17btCollisionObjectS1_.exit.i.i: ; preds = %.noexc23, %bb.i
  %i.bc = phi ptr [ %i.bb, %.noexc23 ], [ %i.av, %bb.i ] ; 2 uses
  %i.bd = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !31
  %i.bf = load ptr, ptr %i.r, align 8, !tbaa !20  ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = invoke noundef ptr %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %i.bc)
          to label %.noexc24 unwind label %.loopexit, !inline_history !94 ; 2 uses

.noexc24:                                         ; preds = %_ZN27btGImpactCollisionAlgorithm12newAlgorithmEP17btCollisionObjectS1_.exit.i.i
  store ptr %i.bj, ptr %i.p, align 8, !tbaa !22
  br label %_ZN27btGImpactCollisionAlgorithm20checkConvexAlgorithmEP17btCollisionObjectS1_.exit.i

_ZN27btGImpactCollisionAlgorithm20checkConvexAlgorithmEP17btCollisionObjectS1_.exit.i: ; preds = %.noexc24, %.noexc22
  %i.bk = phi ptr [ %i.au, %.noexc22 ], [ %i.bj, %.noexc24 ] ; 2 uses
  %i.bl = load ptr, ptr %i.s, align 8, !tbaa !46
  %i.bm = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.bn = load ptr, ptr %i.bk, align 8, !tbaa !8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  invoke void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(56) %i.bl, ptr noundef %i.bm)
          to label %_ZN27btGImpactCollisionAlgorithm26convex_vs_convex_collisionEP17btCollisionObjectS1_P16btCollisionShapeS3_.exit unwind label %.loopexit, !inline_history !94

_ZN27btGImpactCollisionAlgorithm26convex_vs_convex_collisionEP17btCollisionObjectS1_P16btCollisionShapeS3_.exit: ; preds = %_ZN27btGImpactCollisionAlgorithm20checkConvexAlgorithmEP17btCollisionObjectS1_.exit.i
  store ptr %i.ag, ptr %i.k, align 8, !tbaa !38
  store ptr %i.ah, ptr %i.l, align 8, !tbaa !38
  br label %bb.m

bb.k:                                             ; preds = %bb.a, %bb.o
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.l:                                             ; preds = %bb.c, %bb.b
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit:                                        ; preds = %bb.d, %bb.e, %bb.f, %bb.h, %.noexc, %bb.j, %_ZN27btGImpactCollisionAlgorithm12newAlgorithmEP17btCollisionObjectS1_.exit.i.i, %_ZN27btGImpactCollisionAlgorithm20checkConvexAlgorithmEP17btCollisionObjectS1_.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %._crit_edge, %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.m:                                             ; preds = %_ZN27btGImpactCollisionAlgorithm26convex_vs_convex_collisionEP17btCollisionObjectS1_P16btCollisionShapeS3_.exit, %bb.g
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.m, %.preheader
  %i.bs = load ptr, ptr %3, align 8, !tbaa !8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 200
  %i.bu = load ptr, ptr %i.bt, align 8
  invoke void %i.bu(ptr noundef nonnull align 8 dereferenceable(272) %3)
          to label %bb.n unwind label %.loopexit.split-lp

bb.n:                                             ; preds = %._crit_edge
  %i.bv = load ptr, ptr %4, align 8, !tbaa !8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 200
  %i.bx = load ptr, ptr %i.bw, align 8
  invoke void %i.bx(ptr noundef nonnull align 8 dereferenceable(272) %4)
          to label %bb.o unwind label %.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %8)
          to label %bb.p unwind label %bb.k

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  ret void

bb.q:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.l
  %.pn = phi { ptr, i32 } [ %i.br, %bb.l ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %8)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.q ], [ %i.bq, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  resume { ptr, i32 } %.pn.pn

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #13
  unreachable
}

declare noundef zeroext i1 @_ZN17btTriangleShapeEx25overlap_test_conservativeERKS_(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #1

; Function Attrs: uwtable
define dso_local void @_ZN27btGImpactCollisionAlgorithm21collide_sat_trianglesEP17btCollisionObjectS1_P22btGImpactMeshShapePartS3_PKii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6) local_unnamed_addr #6 align 2 {
bb.a:
  %7 = alloca %class.btPrimitiveTriangle, align 8 ; 20 uses
  %8 = alloca %class.btPrimitiveTriangle, align 8 ; 19 uses
  %9 = alloca %struct.GIM_TRIANGLE_CONTACT, align 4 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.1670.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.2680.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.2983.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.2983.32.copyload = load float, ptr %.sroa.2983.32..sroa_idx, align 4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.3287.48.copyload = load float, ptr %i.d, align 4 ; 2 uses
  %.sroa.3690.48..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.e = load <2 x float>, ptr %i.a, align 4      ; 3 uses
  %i.f = load <2 x float>, ptr %i.b, align 4      ; 3 uses
  %i.g = load <2 x float>, ptr %.sroa.660.0..sroa_idx, align 4 ; 3 uses
  %i.h = load <2 x float>, ptr %.sroa.1670.16..sroa_idx, align 4 ; 3 uses
  %i.i = load <2 x float>, ptr %i.c, align 4      ; 5 uses
  %.sroa.2680.32.copyload = load float, ptr %.sroa.2680.32..sroa_idx, align 4
  %i.j = load <2 x float>, ptr %.sroa.3690.48..sroa_idx, align 4 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.16.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.26.32..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.sroa.29.32..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.29.32.copyload = load float, ptr %.sroa.29.32..sroa_idx, align 4 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.3250.48.copyload = load float, ptr %i.n, align 4 ; 2 uses
  %.sroa.36.48..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.o = load <2 x float>, ptr %i.k, align 4      ; 3 uses
  %i.p = load <2 x float>, ptr %i.l, align 4      ; 3 uses
  %i.q = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4 ; 3 uses
  %10 = load <2 x float>, ptr %.sroa.16.16..sroa_idx, align 4 ; 3 uses
  %11 = load <2 x float>, ptr %i.m, align 4       ; 5 uses
  %.sroa.26.32.copyload = load float, ptr %.sroa.26.32..sroa_idx, align 4
  %12 = load <2 x float>, ptr %.sroa.36.48..sroa_idx, align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 64
  store float f0x3C23D70A, ptr %i.r, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 64
  store float f0x3C23D70A, ptr %i.s, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.t = load ptr, ptr %3, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 192
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(272) %3)
  %i.w = load ptr, ptr %4, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(272) %4)
  %.not99 = icmp eq i32 %6, 0
  br i1 %.not99, label %._crit_edge, label %.lr.ph101

.lr.ph101:                                        ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 60
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 60
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bc = insertelement <2 x float> %i.bb, float %.sroa.3287.48.copyload, i64 1 ; 2 uses
  %i.bd = extractelement <2 x float> %i.j, i64 1
  %i.be = extractelement <2 x float> %i.i, i64 0
  %i.bf = shufflevector <2 x float> %i.f, <2 x float> %i.i, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bg = shufflevector <2 x float> %i.f, <2 x float> %i.i, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bh = shufflevector <2 x float> %i.i, <2 x float> %i.e, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bi = shufflevector <2 x float> %i.i, <2 x float> %i.e, <2 x i32> <i32 1, i32 3> ; 2 uses
  %17 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %18 = insertelement <2 x float> %17, float %.sroa.3250.48.copyload, i64 1 ; 2 uses
  %i.bj = extractelement <2 x float> %12, i64 1
  %19 = extractelement <2 x float> %11, i64 0
  %20 = shufflevector <2 x float> %i.p, <2 x float> %11, <2 x i32> <i32 0, i32 2> ; 2 uses
  %21 = shufflevector <2 x float> %i.p, <2 x float> %11, <2 x i32> <i32 1, i32 3> ; 2 uses
  %22 = shufflevector <2 x float> %11, <2 x float> %i.o, <2 x i32> <i32 0, i32 2> ; 2 uses
  %23 = shufflevector <2 x float> %11, <2 x float> %i.o, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bk = insertelement <2 x float> %i.bb, float %.sroa.3287.48.copyload, i64 0
  %i.bl = shufflevector <2 x float> %i.e, <2 x float> %i.f, <2 x i32> <i32 0, i32 2>
  %i.bm = insertelement <2 x float> %i.g, float %.sroa.2983.32.copyload, i64 0 ; 2 uses
  %i.bn = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bo = shufflevector <2 x float> %i.g, <2 x float> %i.h, <2 x i32> <i32 1, i32 3>
  %i.bp = shufflevector <2 x float> %i.g, <2 x float> %i.h, <2 x i32> <i32 0, i32 2>
  %i.bq = insertelement <2 x float> %17, float %.sroa.3250.48.copyload, i64 0
  %i.br = shufflevector <2 x float> %i.o, <2 x float> %i.p, <2 x i32> <i32 0, i32 2>
  %24 = insertelement <2 x float> %i.q, float %.sroa.29.32.copyload, i64 0 ; 2 uses
  %25 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bs = shufflevector <2 x float> %i.q, <2 x float> %10, <2 x i32> <i32 1, i32 3>
  %i.bt = shufflevector <2 x float> %i.q, <2 x float> %10, <2 x i32> <i32 0, i32 2>
  %i.bu = insertelement <2 x float> %i.bn, float %.sroa.2983.32.copyload, i64 1 ; 2 uses
  %26 = insertelement <2 x float> %25, float %.sroa.29.32.copyload, i64 1 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph101, %.loopexit
  %.in = phi i32 [ %6, %.lr.ph101 ], [ %i.bv, %.loopexit ]
  %.017100 = phi ptr [ %5, %.lr.ph101 ], [ %i.bz, %.loopexit ] ; 3 uses
  %i.bv = add nsw i32 %.in, -1                    ; 2 uses
  %i.bw = load i32, ptr %.017100, align 4, !tbaa !4 ; 2 uses
  store i32 %i.bw, ptr %i.z, align 8, !tbaa !27
  %i.bx = getelementptr inbounds nuw i8, ptr %.017100, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !4
  store i32 %i.by, ptr %i.aa, align 8, !tbaa !29
  %i.bz = getelementptr inbounds nuw i8, ptr %.017100, i64 8
  %i.ca = load ptr, ptr %3, align 8, !tbaa !8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 136
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = call noundef ptr %i.cc(ptr noundef nonnull align 8 dereferenceable(176) %3), !inline_history !98 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, i32 noundef %i.bw, ptr noundef nonnull align 4 dereferenceable(72) %7), !inline_history !98
  %i.ch = load i32, ptr %i.aa, align 8, !tbaa !29
  %i.ci = load ptr, ptr %4, align 8, !tbaa !8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 136
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = call noundef ptr %i.ck(ptr noundef nonnull align 8 dereferenceable(176) %4), !inline_history !98 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, i32 noundef %i.ch, ptr noundef nonnull align 4 dereferenceable(72) %8), !inline_history !98
  %i.cp = load float, ptr %7, align 8, !tbaa !56  ; 2 uses
  %i.cq = load float, ptr %13, align 4, !tbaa !56 ; 2 uses
  %i.cr = load float, ptr %14, align 8, !tbaa !56 ; 2 uses
  %i.cs = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cu = fmul <2 x float> %i.bp, %i.ct
  %i.cv = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> %i.cw, <2 x float> %i.cu)
  %i.cy = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bo, <2 x float> %i.cz, <2 x float> %i.cx)
  %i.db = fadd <2 x float> %i.bk, %i.da
  %i.dc = fmul float %.sroa.2680.32.copyload, %i.cq
  %i.dd = call float @llvm.fmuladd.f32(float %i.be, float %i.cp, float %i.dc)
  %i.de = call noundef float @llvm.fmuladd.f32(float %.sroa.2983.32.copyload, float %i.cr, float %i.dd)
  %i.df = fadd float %i.bd, %i.de
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.df, i64 0
  store <2 x float> %i.db, ptr %7, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %14, align 8, !tbaa !81
  %i.dg = load <4 x float>, ptr %15, align 8
  %i.dh = load <4 x float>, ptr %16, align 4
  %i.di = load <4 x float>, ptr %i.ab, align 8
  %i.dj = load <4 x float>, ptr %i.ac, align 8
  %i.dk = load <4 x float>, ptr %i.ad, align 4
  %i.dl = load <4 x float>, ptr %i.ae, align 8
  %i.dm = load float, ptr %8, align 8, !tbaa !56  ; 2 uses
  %i.dn = load float, ptr %i.af, align 4, !tbaa !56 ; 2 uses
  %i.do = load float, ptr %i.ag, align 8, !tbaa !56 ; 2 uses
  %27 = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.dp = shufflevector <2 x float> %27, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = fmul <2 x float> %i.bt, %i.dp
  %28 = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.dr = shufflevector <2 x float> %28, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ds = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> %i.dr, <2 x float> %i.dq)
  %29 = insertelement <2 x float> poison, float %i.do, i64 0
  %i.dt = shufflevector <2 x float> %29, <2 x float> poison, <2 x i32> zeroinitializer
  %i.du = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.dt, <2 x float> %i.ds)
  %30 = fadd <2 x float> %i.bq, %i.du             ; 3 uses
  %31 = fmul float %.sroa.26.32.copyload, %i.dn
  %32 = call float @llvm.fmuladd.f32(float %19, float %i.dm, float %31)
  %33 = call noundef float @llvm.fmuladd.f32(float %.sroa.29.32.copyload, float %i.do, float %32)
  %34 = fadd float %i.bj, %33
  %.sroa.3.12.vec.insert.i.i22 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %34, i64 0
  store <2 x float> %30, ptr %8, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i22, ptr %i.ag, align 8, !tbaa !81
  %35 = load <4 x float>, ptr %i.ah, align 8
  %36 = load <4 x float>, ptr %i.ai, align 4
  %37 = load <4 x float>, ptr %i.aj, align 8
  %38 = load <4 x float>, ptr %i.ak, align 8
  %39 = load <4 x float>, ptr %i.al, align 4
  %40 = load <4 x float>, ptr %i.am, align 8
  %41 = load float, ptr %7, align 8, !tbaa !56    ; 2 uses
  %i.dv = shufflevector <4 x float> %i.dh, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dw = fmul <2 x float> %i.bg, %i.dv
  %i.dx = fmul <2 x float> %i.bi, %i.dv
  %i.dy = shufflevector <4 x float> %i.dg, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.dy, <2 x float> %i.dw)
  %i.ea = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.dy, <2 x float> %i.dx)
  %i.eb = shufflevector <4 x float> %i.di, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ec = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.eb, <2 x float> %i.dz)
  %i.ed = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.eb, <2 x float> %i.ea)
  %i.ee = fadd <2 x float> %i.j, %i.ec            ; 3 uses
  %i.ef = fadd <2 x float> %i.bc, %i.ed           ; 2 uses
  %42 = shufflevector <2 x float> %i.ee, <2 x float> %i.ef, <2 x i32> <i32 3, i32 0>
  %43 = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.ee, <2 x i32> <i32 3, i32 1>
  store <2 x float> %42, ptr %15, align 8
  store <2 x float> %43, ptr %i.ab, align 8, !tbaa !81
  %44 = shufflevector <4 x float> %i.dk, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %45 = fmul <2 x float> %i.bi, %44
  %46 = fmul <2 x float> %i.bg, %44
  %47 = shufflevector <4 x float> %i.dj, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %47, <2 x float> %45)
  %48 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %47, <2 x float> %46)
  %49 = shufflevector <4 x float> %i.dl, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %50 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %49, <2 x float> %i.eg)
  %51 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %49, <2 x float> %48)
  %52 = fadd <2 x float> %i.bc, %50               ; 3 uses
  %53 = fadd <2 x float> %i.j, %51                ; 2 uses
  %54 = shufflevector <2 x float> %52, <2 x float> %53, <2 x i32> <i32 1, i32 2>
  %i.eh = insertelement <2 x float> %52, float 0.000000e+00, i64 1
  store <2 x float> %54, ptr %i.ac, align 8
  store <2 x float> %i.eh, ptr %i.ae, align 8, !tbaa !81
  %55 = load <2 x float>, ptr %13, align 4, !tbaa !56 ; 5 uses
  %56 = fsub <2 x float> %i.ee, %55               ; 2 uses
  %57 = shufflevector <2 x float> %55, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ei = insertelement <2 x float> %57, float %41, i64 1 ; 2 uses
  %58 = fsub <2 x float> %i.ef, %i.ei             ; 2 uses
  %59 = fsub <2 x float> %52, %i.ei               ; 2 uses
  %60 = fsub <2 x float> %53, %55                 ; 2 uses
  %61 = fneg <2 x float> %60
  %62 = fmul <2 x float> %58, %61
  %63 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %56, <2 x float> %59, <2 x float> %62) ; 3 uses
  %64 = extractelement <2 x float> %55, i64 1
  %65 = shufflevector <4 x float> %36, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %66 = fmul <2 x float> %21, %65
  %67 = fmul <2 x float> %23, %65
  %68 = shufflevector <4 x float> %35, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %69 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %20, <2 x float> %68, <2 x float> %66)
  %70 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %22, <2 x float> %68, <2 x float> %67)
  %71 = shufflevector <4 x float> %37, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %72 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %26, <2 x float> %71, <2 x float> %69)
  %73 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %24, <2 x float> %71, <2 x float> %70)
  %74 = fadd <2 x float> %12, %72                 ; 3 uses
  %75 = fadd <2 x float> %18, %73                 ; 2 uses
  %76 = shufflevector <2 x float> %74, <2 x float> %75, <2 x i32> <i32 3, i32 0>
  %77 = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %74, <2 x i32> <i32 3, i32 1>
  store <2 x float> %76, ptr %i.ah, align 8
  store <2 x float> %77, ptr %i.aj, align 8, !tbaa !81
  %78 = shufflevector <4 x float> %39, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %79 = fmul <2 x float> %23, %78
  %80 = fmul <2 x float> %21, %78
  %81 = shufflevector <4 x float> %38, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %82 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %22, <2 x float> %81, <2 x float> %79)
  %83 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %20, <2 x float> %81, <2 x float> %80)
  %84 = shufflevector <4 x float> %40, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %85 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %24, <2 x float> %84, <2 x float> %82)
  %86 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %26, <2 x float> %84, <2 x float> %83)
  %87 = fadd <2 x float> %18, %85                 ; 3 uses
  %88 = fadd <2 x float> %12, %86                 ; 2 uses
  %89 = shufflevector <2 x float> %87, <2 x float> %88, <2 x i32> <i32 1, i32 2>
  %i.ej = insertelement <2 x float> %87, float 0.000000e+00, i64 1
  store <2 x float> %89, ptr %i.ak, align 8
  store <2 x float> %i.ej, ptr %i.am, align 8, !tbaa !81
  %i.ek = load <2 x float>, ptr %i.af, align 4, !tbaa !56 ; 5 uses
  %90 = fsub <2 x float> %74, %i.ek               ; 2 uses
  %91 = shufflevector <2 x float> %i.ek, <2 x float> %30, <2 x i32> <i32 1, i32 2> ; 2 uses
  %92 = fsub <2 x float> %75, %91                 ; 2 uses
  %93 = fsub <2 x float> %87, %91                 ; 2 uses
  %94 = fsub <2 x float> %88, %i.ek               ; 2 uses
  %95 = fneg <2 x float> %94
  %96 = fmul <2 x float> %92, %95
  %97 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %90, <2 x float> %93, <2 x float> %96) ; 3 uses
  %98 = shufflevector <2 x float> %59, <2 x float> %93, <2 x i32> <i32 1, i32 3>
  %99 = fneg <2 x float> %98
  %100 = shufflevector <2 x float> %56, <2 x float> %90, <2 x i32> <i32 0, i32 2>
  %101 = fmul <2 x float> %100, %99
  %102 = shufflevector <2 x float> %58, <2 x float> %92, <2 x i32> <i32 1, i32 3>
  %103 = shufflevector <2 x float> %60, <2 x float> %94, <2 x i32> <i32 0, i32 2>
  %i.el = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %102, <2 x float> %103, <2 x float> %101) ; 4 uses
  %i.em = shufflevector <2 x float> %63, <2 x float> %97, <2 x i32> <i32 1, i32 3> ; 2 uses
  %104 = fmul <2 x float> %i.em, %i.em
  %105 = shufflevector <2 x float> %63, <2 x float> %97, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.en = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %105, <2 x float> %105, <2 x float> %104)
  %i.eo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> %i.el, <2 x float> %i.en)
  %i.ep = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.eo)
  %i.eq = fdiv <2 x float> splat (float 1.000000e+00), %i.ep ; 4 uses
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.es = fmul <2 x float> %63, %i.er             ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.el, %i.eq
  %i.et = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %shift = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop112 = fmul <2 x float> %55, %shift
  %i.eu = extractelement <2 x float> %foldExtExtBinop112, i64 0
  %i.ev = extractelement <2 x float> %i.es, i64 0
  %i.ew = call float @llvm.fmuladd.f32(float %41, float %i.ev, float %i.eu)
  %i.ex = call noundef float @llvm.fmuladd.f32(float %64, float %i.et, float %i.ew)
  store <2 x float> %i.es, ptr %i.an, align 8, !tbaa !56
  store float %i.et, ptr %i.ao, align 8, !tbaa !56
  store float %i.ex, ptr %i.ap, align 4, !tbaa !56
  %106 = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %107 = fmul <2 x float> %97, %106               ; 3 uses
  %foldExtExtBinop114 = fmul <2 x float> %i.el, %i.eq
  %i.ey = extractelement <2 x float> %foldExtExtBinop114, i64 1 ; 2 uses
  %shift116 = shufflevector <2 x float> %107, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop117 = fmul <2 x float> %i.ek, %shift116
  %108 = extractelement <2 x float> %foldExtExtBinop117, i64 0
  %i.ez = extractelement <2 x float> %107, i64 0
  %i.fa = extractelement <2 x float> %30, i64 0
  %i.fb = call float @llvm.fmuladd.f32(float %i.fa, float %i.ez, float %108)
  %109 = extractelement <2 x float> %i.ek, i64 1
  %110 = call noundef float @llvm.fmuladd.f32(float %109, float %i.ey, float %i.fb)
  store <2 x float> %107, ptr %i.aq, align 8, !tbaa !56
  store float %i.ey, ptr %i.ar, align 8, !tbaa !56
  store float %110, ptr %i.as, align 4, !tbaa !56
  %i.fc = call noundef zeroext i1 @_ZN19btPrimitiveTriangle25overlap_test_conservativeERKS_(ptr noundef nonnull align 4 dereferenceable(72) %7, ptr noundef nonnull align 4 dereferenceable(72) %8)
  br i1 %i.fc, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.fd = call noundef zeroext i1 @_ZN19btPrimitiveTriangle35find_triangle_collision_clip_methodERS_R20GIM_TRIANGLE_CONTACT(ptr noundef nonnull align 4 dereferenceable(72) %7, ptr noundef nonnull align 4 dereferenceable(72) %8, ptr noundef nonnull align 4 dereferenceable(280) %9)
  %i.fe = load i32, ptr %i.at, align 4            ; 2 uses
  %.not1997 = icmp ne i32 %i.fe, 0
  %or.cond.not = select i1 %i.fd, i1 %.not1997, i1 false
  br i1 %or.cond.not, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ff = sext i32 %i.fe to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN27btGImpactCollisionAlgorithm15addContactPointEP17btCollisionObjectS1_RK9btVector3S4_f.exit
  %indvars.iv = phi i64 [ %i.ff, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN27btGImpactCollisionAlgorithm15addContactPointEP17btCollisionObjectS1_RK9btVector3S4_f.exit ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.fg = getelementptr inbounds [16 x i8], ptr %i.au, i64 %indvars.iv.next
  %i.fh = load float, ptr %9, align 4, !tbaa !99
  %i.fi = fneg float %i.fh
  %i.fj = load ptr, ptr %i.aw, align 8, !tbaa !25 ; 2 uses
  %i.fk = load i32, ptr %i.ax, align 4, !tbaa !26
  %i.fl = load i32, ptr %i.z, align 8, !tbaa !27
  %i.fm = load ptr, ptr %i.fj, align 8, !tbaa !8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8
  call void %i.fo(ptr noundef nonnull align 8 dereferenceable(176) %i.fj, i32 noundef %i.fk, i32 noundef %i.fl), !inline_history !101
  %i.fp = load ptr, ptr %i.aw, align 8, !tbaa !25 ; 2 uses
  %i.fq = load i32, ptr %i.ay, align 4, !tbaa !28
  %i.fr = load i32, ptr %i.aa, align 8, !tbaa !29
  %i.fs = load ptr, ptr %i.fp, align 8, !tbaa !8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(176) %i.fp, i32 noundef %i.fq, i32 noundef %i.fr), !inline_history !101
  %i.fv = load ptr, ptr %i.az, align 8, !tbaa !10 ; 2 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %bb.d, label %_ZN27btGImpactCollisionAlgorithm15addContactPointEP17btCollisionObjectS1_RK9btVector3S4_f.exit

bb.d:                                             ; preds = %.lr.ph
  %i.fx = load ptr, ptr %i.ba, align 8, !tbaa !20 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = call noundef ptr %i.ga(ptr noundef nonnull align 8 dereferenceable(8) %i.fx, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !102 ; 2 uses
  store ptr %i.gb, ptr %i.az, align 8, !tbaa !10
  br label %_ZN27btGImpactCollisionAlgorithm15addContactPointEP17btCollisionObjectS1_RK9btVector3S4_f.exit

_ZN27btGImpactCollisionAlgorithm15addContactPointEP17btCollisionObjectS1_RK9btVector3S4_f.exit: ; preds = %.lr.ph, %bb.d
  %i.gc = phi ptr [ %i.gb, %bb.d ], [ %i.fv, %.lr.ph ]
  %i.gd = load ptr, ptr %i.aw, align 8, !tbaa !25 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store ptr %i.gc, ptr %i.ge, align 8, !tbaa !31
  %i.gf = load ptr, ptr %i.gd, align 8, !tbaa !8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(176) %i.gd, ptr noundef nonnull align 4 dereferenceable(16) %i.av, ptr noundef nonnull align 4 dereferenceable(16) %i.fg, float noundef %i.fi), !inline_history !101
  %.not19 = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %_ZN27btGImpactCollisionAlgorithm15addContactPointEP17btCollisionObjectS1_RK9btVector3S4_f.exit, %bb.c, %bb.b
  %.not = icmp eq i32 %i.bv, 0
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %i.gi = load ptr, ptr %3, align 8, !tbaa !8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 200
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(272) %3)
  %i.gl = load ptr, ptr %4, align 8, !tbaa !8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 200
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(272) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  ret void
}

declare noundef zeroext i1 @_ZN19btPrimitiveTriangle25overlap_test_conservativeERKS_(ptr noundef nonnull align 4 dereferenceable(72), ptr noundef nonnull align 4 dereferenceable(72)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN19btPrimitiveTriangle35find_triangle_collision_clip_methodERS_R20GIM_TRIANGLE_CONTACT(ptr noundef nonnull align 4 dereferenceable(72), ptr noundef nonnull align 4 dereferenceable(72), ptr noundef nonnull align 4 dereferenceable(280)) local_unnamed_addr #1

; Function Attrs: uwtable
define dso_local void @_ZN27btGImpactCollisionAlgorithm18gimpact_vs_gimpactEP17btCollisionObjectS1_P23btGImpactShapeInterfaceS3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.btTransform, align 8         ; 15 uses
  %6 = alloca %class.btTransform, align 8         ; 15 uses
  %7 = alloca %class.btPairSet, align 8           ; 8 uses
  %8 = alloca %class.GIM_ShapeRetriever, align 8  ; 9 uses
  %9 = alloca %class.GIM_ShapeRetriever, align 8  ; 9 uses
  %10 = alloca %class.btTransform, align 8        ; 16 uses
  %11 = alloca %class.btTransform, align 8        ; 16 uses
  %i.a = load ptr, ptr %3, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(176) %3)
  %i.e = icmp eq i32 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 188
  %i.g = load i32, ptr %i.f, align 4, !tbaa !103  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.i = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.i, ptr %i.h, align 4, !tbaa !26
  %.not73121 = icmp eq i32 %i.g, 0
  br i1 %.not73121, label %.loopexit, label %.lr.ph123

.lr.ph123:                                        ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 200
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph123, %bb.c
  %i.k = phi i32 [ %i.i, %.lr.ph123 ], [ %i.p, %bb.c ]
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !108
  %i.m = sext i32 %i.k to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !109
  tail call void @_ZN27btGImpactCollisionAlgorithm18gimpact_vs_gimpactEP17btCollisionObjectS1_P23btGImpactShapeInterfaceS3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %i.o, ptr noundef %4)
  %.pr = load i32, ptr %i.h, align 4, !tbaa !26   ; 2 uses
  %i.p = add nsw i32 %.pr, -1                     ; 2 uses
  store i32 %i.p, ptr %i.h, align 4, !tbaa !26
  %.not73 = icmp eq i32 %.pr, 0
  br i1 %.not73, label %.loopexit, label %bb.c

bb.d:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %4, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef i32 %i.s(ptr noundef nonnull align 8 dereferenceable(176) %4)
  %i.u = icmp eq i32 %i.t, 2
  br i1 %i.u, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 188
  %i.w = load i32, ptr %i.v, align 4, !tbaa !103  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.y = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.y, ptr %i.x, align 4, !tbaa !28
  %.not72118 = icmp eq i32 %i.w, 0
  br i1 %.not72118, label %.loopexit, label %.lr.ph120

.lr.ph120:                                        ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 200
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph120, %bb.f
  %i.aa = phi i32 [ %i.y, %.lr.ph120 ], [ %i.af, %bb.f ]
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !108
  %i.ac = sext i32 %i.aa to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !109
  tail call void @_ZN27btGImpactCollisionAlgorithm18gimpact_vs_gimpactEP17btCollisionObjectS1_P23btGImpactShapeInterfaceS3_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %i.ae)
  %.pr115 = load i32, ptr %i.x, align 4, !tbaa !28 ; 2 uses
  %i.af = add nsw i32 %.pr115, -1                 ; 2 uses
  store i32 %i.af, ptr %i.x, align 4, !tbaa !28
  %.not72 = icmp eq i32 %.pr115, 0
  br i1 %.not72, label %.loopexit, label %bb.f

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(64) %i.ag, i64 16, i1 false), !tbaa.struct !111
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 4 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !111
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 4 dereferenceable(16) %i.aj, i64 16, i1 false), !tbaa.struct !111
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 4 dereferenceable(16) %i.am, i64 16, i1 false), !tbaa.struct !111
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 4 dereferenceable(64) %i.an, i64 16, i1 false), !tbaa.struct !111
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 4 dereferenceable(16) %i.ao, i64 16, i1 false), !tbaa.struct !111
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 4 dereferenceable(16) %i.aq, i64 16, i1 false), !tbaa.struct !111
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 4 dereferenceable(16) %i.at, i64 16, i1 false), !tbaa.struct !111
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 7 uses
  store i8 1, ptr %i.au, align 8, !tbaa !69
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  store ptr null, ptr %i.av, align 8, !tbaa !62
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 5 uses
  store i32 0, ptr %i.aw, align 4, !tbaa !57
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 0, ptr %i.ax, align 8, !tbaa !61
  %i.ay = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 256, i32 noundef 16)
          to label %.noexc.i unwind label %bb.i   ; 12 uses

.noexc.i:                                         ; preds = %bb.g
  %i.az = load i32, ptr %i.aw, align 4, !tbaa !57 ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 0
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !62 ; 13 uses
end_hunk_0
