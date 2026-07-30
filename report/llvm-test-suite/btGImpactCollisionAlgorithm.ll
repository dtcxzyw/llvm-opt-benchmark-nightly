inline.NumInlined: 560
inline.NumDeleted: 162
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN27btGImpactCollisionAlgorithm21collide_gjk_trianglesEP17btCollisionObjectS1_P22btGImpactMeshShapePartS3_PKii:bb.a
  br i1 %.not26, label %._crit_edge, label %.lr.ph

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
  %7 = alloca %class.btPrimitiveTriangle, align 8 ; 19 uses
  %8 = alloca %class.btPrimitiveTriangle, align 8 ; 18 uses
  %9 = alloca %struct.GIM_TRIANGLE_CONTACT, align 4 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.963.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.1670.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.2680.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.2983.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.2983.32.copyload = load float, ptr %.sroa.2983.32..sroa_idx, align 4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.3287.48.copyload = load float, ptr %i.d, align 4 ; 3 uses
  %.sroa.3690.48..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.e = load <2 x float>, ptr %i.a, align 4      ; 4 uses
  %i.f = load <2 x float>, ptr %i.b, align 4      ; 3 uses
  %i.g = load <2 x float>, ptr %.sroa.660.0..sroa_idx, align 4 ; 4 uses
  %.sroa.963.0.copyload = load float, ptr %.sroa.963.0..sroa_idx, align 4
  %i.h = load <2 x float>, ptr %.sroa.1670.16..sroa_idx, align 4 ; 3 uses
  %i.i = load <2 x float>, ptr %i.c, align 4      ; 5 uses
  %.sroa.2680.32.copyload = load float, ptr %.sroa.2680.32..sroa_idx, align 4
  %i.j = load <2 x float>, ptr %.sroa.3690.48..sroa_idx, align 4 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.16.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.26.32..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.sroa.29.32..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.29.32.copyload = load float, ptr %.sroa.29.32..sroa_idx, align 4 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.3250.48.copyload = load float, ptr %i.n, align 4 ; 3 uses
  %.sroa.36.48..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.o = load <2 x float>, ptr %i.k, align 4      ; 4 uses
  %i.p = load <2 x float>, ptr %i.l, align 4      ; 3 uses
  %i.q = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4 ; 4 uses
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4
  %i.r = load <2 x float>, ptr %.sroa.16.16..sroa_idx, align 4 ; 3 uses
  %i.s = load <2 x float>, ptr %i.m, align 4      ; 5 uses
  %.sroa.26.32.copyload = load float, ptr %.sroa.26.32..sroa_idx, align 4
  %i.t = load <2 x float>, ptr %.sroa.36.48..sroa_idx, align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 64
  store float f0x3C23D70A, ptr %i.u, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 64
  store float f0x3C23D70A, ptr %i.v, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.w = load ptr, ptr %3, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(272) %3)
  %i.z = load ptr, ptr %4, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 192
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(272) %4)
  %.not99 = icmp eq i32 %6, 0
  br i1 %.not99, label %._crit_edge, label %.lr.ph101

.lr.ph101:                                        ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 60
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 60
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bh = insertelement <2 x float> %i.bg, float %.sroa.3287.48.copyload, i64 1
  %i.bi = extractelement <2 x float> %i.j, i64 1
  %i.bj = extractelement <2 x float> %i.i, i64 0
  %i.bk = shufflevector <2 x float> %i.f, <2 x float> %i.i, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bl = shufflevector <2 x float> %i.f, <2 x float> %i.i, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bm = shufflevector <2 x float> %i.i, <2 x float> %i.e, <2 x i32> <i32 0, i32 2>
  %i.bn = shufflevector <2 x float> %i.i, <2 x float> %i.e, <2 x i32> <i32 1, i32 3>
  %i.bo = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bp = insertelement <2 x float> %i.bo, float %.sroa.3250.48.copyload, i64 1
  %i.bq = extractelement <2 x float> %i.t, i64 1
  %i.br = extractelement <2 x float> %i.s, i64 0
  %i.bs = shufflevector <2 x float> %i.p, <2 x float> %i.s, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bt = shufflevector <2 x float> %i.p, <2 x float> %i.s, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bu = shufflevector <2 x float> %i.s, <2 x float> %i.o, <2 x i32> <i32 0, i32 2>
  %i.bv = shufflevector <2 x float> %i.s, <2 x float> %i.o, <2 x i32> <i32 1, i32 3>
  %i.bw = insertelement <2 x float> %i.bg, float %.sroa.3287.48.copyload, i64 0
  %i.bx = shufflevector <2 x float> %i.e, <2 x float> %i.f, <2 x i32> <i32 0, i32 2>
  %i.by = insertelement <2 x float> %i.g, float %.sroa.2983.32.copyload, i64 0
  %i.bz = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ca = shufflevector <2 x float> %i.g, <2 x float> %i.h, <2 x i32> <i32 1, i32 3>
  %i.cb = shufflevector <2 x float> %i.g, <2 x float> %i.h, <2 x i32> <i32 0, i32 2>
  %i.cc = insertelement <2 x float> %i.bo, float %.sroa.3250.48.copyload, i64 0
  %i.cd = shufflevector <2 x float> %i.o, <2 x float> %i.p, <2 x i32> <i32 0, i32 2>
  %i.ce = insertelement <2 x float> %i.q, float %.sroa.29.32.copyload, i64 0
  %i.cf = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cg = shufflevector <2 x float> %i.q, <2 x float> %i.r, <2 x i32> <i32 1, i32 3>
  %i.ch = shufflevector <2 x float> %i.q, <2 x float> %i.r, <2 x i32> <i32 0, i32 2>
  %10 = insertelement <2 x float> poison, float %.sroa.3287.48.copyload, i64 0
  %11 = insertelement <2 x float> %10, float %.sroa.3250.48.copyload, i64 1
  %12 = insertelement <2 x float> poison, float %.sroa.963.0.copyload, i64 0
  %13 = insertelement <2 x float> %12, float %.sroa.9.0.copyload, i64 1
  %14 = shufflevector <2 x float> %i.e, <2 x float> %i.o, <2 x i32> <i32 0, i32 2>
  %15 = shufflevector <2 x float> %i.g, <2 x float> %i.q, <2 x i32> <i32 0, i32 2>
  %i.ci = insertelement <2 x float> %i.bz, float %.sroa.2983.32.copyload, i64 1 ; 2 uses
  %i.cj = insertelement <2 x float> %i.cf, float %.sroa.29.32.copyload, i64 1 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph101, %.loopexit
  %.in = phi i32 [ %6, %.lr.ph101 ], [ %i.ck, %.loopexit ]
  %.017100 = phi ptr [ %5, %.lr.ph101 ], [ %i.co, %.loopexit ] ; 3 uses
  %i.ck = add nsw i32 %.in, -1                    ; 2 uses
  %i.cl = load i32, ptr %.017100, align 4, !tbaa !4 ; 2 uses
  store i32 %i.cl, ptr %i.ac, align 8, !tbaa !27
  %i.cm = getelementptr inbounds nuw i8, ptr %.017100, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !4
  store i32 %i.cn, ptr %i.ad, align 8, !tbaa !29
  %i.co = getelementptr inbounds nuw i8, ptr %.017100, i64 8
  %i.cp = load ptr, ptr %3, align 8, !tbaa !8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 136
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = call noundef ptr %i.cr(ptr noundef nonnull align 8 dereferenceable(176) %3), !inline_history !98 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, i32 noundef %i.cl, ptr noundef nonnull align 4 dereferenceable(72) %7), !inline_history !98
  %i.cw = load i32, ptr %i.ad, align 8, !tbaa !29
  %i.cx = load ptr, ptr %4, align 8, !tbaa !8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 136
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = call noundef ptr %i.cz(ptr noundef nonnull align 8 dereferenceable(176) %4), !inline_history !98 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %i.da, i32 noundef %i.cw, ptr noundef nonnull align 4 dereferenceable(72) %8), !inline_history !98
  %i.de = load float, ptr %7, align 8, !tbaa !56  ; 2 uses
  %i.df = load float, ptr %i.ae, align 4, !tbaa !56 ; 2 uses
  %i.dg = load float, ptr %i.af, align 8, !tbaa !56 ; 2 uses
  %i.dh = insertelement <2 x float> poison, float %i.df, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = fmul <2 x float> %i.cb, %i.di
  %i.dk = insertelement <2 x float> poison, float %i.de, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.dl, <2 x float> %i.dj)
  %i.dn = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> %i.do, <2 x float> %i.dm)
  %i.dq = fadd <2 x float> %i.bw, %i.dp
  %i.dr = fmul float %.sroa.2680.32.copyload, %i.df
  %i.ds = call float @llvm.fmuladd.f32(float %i.bj, float %i.de, float %i.dr)
  %i.dt = call noundef float @llvm.fmuladd.f32(float %.sroa.2983.32.copyload, float %i.dg, float %i.ds)
  %i.du = fadd float %i.bi, %i.dt
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.du, i64 0
  store <2 x float> %i.dq, ptr %7, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %i.af, align 8, !tbaa !81
  %i.dv = load <4 x float>, ptr %i.ah, align 8    ; 2 uses
  %16 = shufflevector <4 x float> %i.dv, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.dw = load <4 x float>, ptr %i.ai, align 8
  %i.dx = load <4 x float>, ptr %i.aj, align 4
  %i.dy = load <4 x float>, ptr %i.ak, align 8
  %i.dz = load float, ptr %8, align 8, !tbaa !56  ; 2 uses
  %i.ea = load float, ptr %i.al, align 4, !tbaa !56 ; 2 uses
  %i.eb = load float, ptr %i.am, align 8, !tbaa !56 ; 2 uses
  %i.ec = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x float> %i.ch, %i.ed
  %i.ef = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> %i.eg, <2 x float> %i.ee)
  %i.ei = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ek = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.ej, <2 x float> %i.eh)
  %i.el = fadd <2 x float> %i.cc, %i.ek           ; 4 uses
  %i.em = fmul float %.sroa.26.32.copyload, %i.ea
  %i.en = call float @llvm.fmuladd.f32(float %i.br, float %i.dz, float %i.em)
  %i.eo = call noundef float @llvm.fmuladd.f32(float %.sroa.29.32.copyload, float %i.eb, float %i.en)
  %i.ep = fadd float %i.bq, %i.eo
  %.sroa.3.12.vec.insert.i.i22 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ep, i64 0
  store <2 x float> %i.el, ptr %8, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i22, ptr %i.am, align 8, !tbaa !81
  %17 = load float, ptr %i.ao, align 8, !tbaa !56 ; 2 uses
  %i.eq = load <4 x float>, ptr %i.ap, align 8
  %i.er = load <4 x float>, ptr %i.aq, align 4
  %i.es = load <4 x float>, ptr %i.ar, align 8
  %i.et = load float, ptr %7, align 8, !tbaa !56  ; 3 uses
  %18 = shufflevector <4 x float> %i.dv, <4 x float> poison, <2 x i32> zeroinitializer
  %i.eu = shufflevector <4 x float> %i.dx, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ev = fmul <2 x float> %i.bn, %i.eu
  %i.ew = fmul <2 x float> %i.bl, %i.eu
  %i.ex = shufflevector <4 x float> %i.dw, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ey = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.ex, <2 x float> %i.ev)
  %i.ez = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.ex, <2 x float> %i.ew)
  %i.fa = shufflevector <4 x float> %i.dy, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.by, <2 x float> %i.fa, <2 x float> %i.ey)
  %i.fc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> %i.fa, <2 x float> %i.ez)
  %i.fd = fadd <2 x float> %i.bh, %i.fb           ; 3 uses
  %i.fe = fadd <2 x float> %i.j, %i.fc            ; 2 uses
  %19 = shufflevector <2 x float> %i.fd, <2 x float> %i.fe, <2 x i32> <i32 1, i32 2>
  %20 = insertelement <2 x float> %i.fd, float 0.000000e+00, i64 1
  store <2 x float> %19, ptr %i.ai, align 8
  store <2 x float> %20, ptr %i.ak, align 8, !tbaa !81
  %21 = load <2 x float>, ptr %i.ae, align 4, !tbaa !56 ; 5 uses
  %22 = shufflevector <2 x float> %21, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %23 = insertelement <2 x float> %22, float %i.et, i64 1
  %24 = fsub <2 x float> %i.fd, %23               ; 2 uses
  %25 = fsub <2 x float> %i.fe, %21               ; 2 uses
  %26 = fneg <2 x float> %25
  %27 = extractelement <2 x float> %21, i64 1
  %28 = insertelement <2 x float> poison, float %17, i64 0
  %29 = shufflevector <2 x float> %28, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ff = shufflevector <4 x float> %i.er, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fg = fmul <2 x float> %i.bv, %i.ff
  %i.fh = fmul <2 x float> %i.bt, %i.ff
  %i.fi = shufflevector <4 x float> %i.eq, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.fi, <2 x float> %i.fg)
  %i.fk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.fi, <2 x float> %i.fh)
  %i.fl = shufflevector <4 x float> %i.es, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.fl, <2 x float> %i.fj)
  %i.fn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cj, <2 x float> %i.fl, <2 x float> %i.fk)
  %i.fo = fadd <2 x float> %i.bp, %i.fm           ; 3 uses
  %i.fp = fadd <2 x float> %i.t, %i.fn            ; 2 uses
  %i.fq = shufflevector <2 x float> %i.fo, <2 x float> %i.fp, <2 x i32> <i32 1, i32 2>
  %i.fr = insertelement <2 x float> %i.fo, float 0.000000e+00, i64 1
  store <2 x float> %i.fq, ptr %i.ap, align 8
  store <2 x float> %i.fr, ptr %i.ar, align 8, !tbaa !81
  %i.fs = load <2 x float>, ptr %i.al, align 4, !tbaa !56 ; 5 uses
  %30 = extractelement <2 x float> %i.el, i64 0
  %31 = shufflevector <2 x float> %i.fs, <2 x float> %i.el, <2 x i32> <i32 1, i32 2>
  %i.ft = fsub <2 x float> %i.fo, %31             ; 2 uses
  %i.fu = fsub <2 x float> %i.fp, %i.fs           ; 2 uses
  %i.fv = fneg <2 x float> %i.fu
  %32 = load <2 x float>, ptr %i.ag, align 8, !tbaa !56 ; 4 uses
  %33 = load <2 x float>, ptr %i.an, align 8, !tbaa !56 ; 4 uses
  %34 = shufflevector <2 x float> %32, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fw = fmul <2 x float> %i.bl, %34
  %i.fx = shufflevector <2 x float> %32, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.fx, <2 x float> %i.fw)
  %i.fz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> %18, <2 x float> %i.fy)
  %i.ga = fadd <2 x float> %i.j, %i.fz            ; 3 uses
  %35 = shufflevector <2 x float> %32, <2 x float> %33, <2 x i32> <i32 1, i32 3>
  %36 = fmul <2 x float> %15, %35
  %37 = shufflevector <2 x float> %32, <2 x float> %33, <2 x i32> <i32 0, i32 2>
  %38 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %14, <2 x float> %37, <2 x float> %36)
  %39 = insertelement <2 x float> %16, float %17, i64 1
  %40 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %13, <2 x float> %39, <2 x float> %38)
  %41 = fadd <2 x float> %11, %40                 ; 3 uses
  %42 = shufflevector <2 x float> %41, <2 x float> %i.ga, <2 x i32> <i32 0, i32 2>
  %43 = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.ga, <2 x i32> <i32 3, i32 1>
  store <2 x float> %42, ptr %i.ag, align 8
  store <2 x float> %43, ptr %i.ah, align 8, !tbaa !81
  %44 = fsub <2 x float> %i.ga, %21               ; 3 uses
  %45 = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %46 = insertelement <2 x float> %45, float %i.et, i64 0
  %47 = fsub <2 x float> %41, %46                 ; 3 uses
  %i.gb = shufflevector <2 x float> %44, <2 x float> %47, <2 x i32> <i32 1, i32 2>
  %48 = fmul <2 x float> %i.gb, %26
  %49 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %44, <2 x float> %24, <2 x float> %48) ; 3 uses
  %50 = shufflevector <2 x float> %33, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %51 = fmul <2 x float> %i.bt, %50
  %52 = shufflevector <2 x float> %33, <2 x float> poison, <2 x i32> zeroinitializer
  %53 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %52, <2 x float> %51)
  %54 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cj, <2 x float> %29, <2 x float> %53)
  %55 = fadd <2 x float> %i.t, %54                ; 3 uses
  %i.gc = fsub <2 x float> %55, %i.fs             ; 3 uses
  %56 = shufflevector <2 x float> %i.gc, <2 x float> %47, <2 x i32> <i32 1, i32 3>
  %i.gd = fmul <2 x float> %56, %i.fv
  %i.ge = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gc, <2 x float> %i.ft, <2 x float> %i.gd) ; 3 uses
  %i.gf = shufflevector <2 x float> %24, <2 x float> %i.ft, <2 x i32> <i32 1, i32 3>
  %i.gg = fneg <2 x float> %i.gf
  %i.gh = shufflevector <2 x float> %44, <2 x float> %i.gc, <2 x i32> <i32 0, i32 2>
  %i.gi = fmul <2 x float> %i.gh, %i.gg
  %i.gj = shufflevector <2 x float> %25, <2 x float> %i.fu, <2 x i32> <i32 0, i32 2>
  %i.gk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %47, <2 x float> %i.gj, <2 x float> %i.gi) ; 4 uses
  %i.gl = shufflevector <2 x float> %49, <2 x float> %i.ge, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.gm = fmul <2 x float> %i.gl, %i.gl
  %i.gn = shufflevector <2 x float> %49, <2 x float> %i.ge, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.go = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gn, <2 x float> %i.gn, <2 x float> %i.gm)
  %i.gp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gk, <2 x float> %i.gk, <2 x float> %i.go)
  %i.gq = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.gp)
  %i.gr = fdiv <2 x float> splat (float 1.000000e+00), %i.gq ; 4 uses
  %i.gs = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gt = fmul <2 x float> %49, %i.gs             ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.gk, %i.gr
  %i.gu = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %shift = shufflevector <2 x float> %i.gt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop112 = fmul <2 x float> %21, %shift
  %i.gv = extractelement <2 x float> %foldExtExtBinop112, i64 0
  %i.gw = extractelement <2 x float> %i.gt, i64 0
  %i.gx = call float @llvm.fmuladd.f32(float %i.et, float %i.gw, float %i.gv)
  %i.gy = call noundef float @llvm.fmuladd.f32(float %27, float %i.gu, float %i.gx)
  store <2 x float> %i.gt, ptr %i.as, align 8, !tbaa !56
  store float %i.gu, ptr %i.at, align 8, !tbaa !56
  store float %i.gy, ptr %i.au, align 4, !tbaa !56
  %57 = shufflevector <2 x float> %41, <2 x float> %55, <2 x i32> <i32 1, i32 2>
  %58 = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %55, <2 x i32> <i32 3, i32 1>
  store <2 x float> %57, ptr %i.an, align 8
  store <2 x float> %58, ptr %i.ao, align 8, !tbaa !81
  %i.gz = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ha = fmul <2 x float> %i.ge, %i.gz           ; 3 uses
  %foldExtExtBinop114 = fmul <2 x float> %i.gk, %i.gr
  %i.hb = extractelement <2 x float> %foldExtExtBinop114, i64 1 ; 2 uses
  %shift116 = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop117 = fmul <2 x float> %i.fs, %shift116
  %i.hc = extractelement <2 x float> %foldExtExtBinop117, i64 0
  %i.hd = extractelement <2 x float> %i.ha, i64 0
  %i.he = call float @llvm.fmuladd.f32(float %30, float %i.hd, float %i.hc)
  %i.hf = extractelement <2 x float> %i.fs, i64 1
  %i.hg = call noundef float @llvm.fmuladd.f32(float %i.hf, float %i.hb, float %i.he)
  store <2 x float> %i.ha, ptr %i.av, align 8, !tbaa !56
  store float %i.hb, ptr %i.aw, align 8, !tbaa !56
  store float %i.hg, ptr %i.ax, align 4, !tbaa !56
  %i.hh = call noundef zeroext i1 @_ZN19btPrimitiveTriangle25overlap_test_conservativeERKS_(ptr noundef nonnull align 4 dereferenceable(72) %7, ptr noundef nonnull align 4 dereferenceable(72) %8)
  br i1 %i.hh, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.hi = call noundef zeroext i1 @_ZN19btPrimitiveTriangle35find_triangle_collision_clip_methodERS_R20GIM_TRIANGLE_CONTACT(ptr noundef nonnull align 4 dereferenceable(72) %7, ptr noundef nonnull align 4 dereferenceable(72) %8, ptr noundef nonnull align 4 dereferenceable(280) %9)
  %i.hj = load i32, ptr %i.ay, align 4            ; 2 uses
  %.not1997 = icmp ne i32 %i.hj, 0
  %or.cond.not = select i1 %i.hi, i1 %.not1997, i1 false
  br i1 %or.cond.not, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.hk = sext i32 %i.hj to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN27btGImpactCollisionAlgorithm15addContactPointEP17btCollisionObjectS1_RK9btVector3S4_f.exit
  %indvars.iv = phi i64 [ %i.hk, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN27btGImpactCollisionAlgorithm15addContactPointEP17btCollisionObjectS1_RK9btVector3S4_f.exit ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.hl = getelementptr inbounds [16 x i8], ptr %i.az, i64 %indvars.iv.next
  %i.hm = load float, ptr %9, align 4, !tbaa !99
  %i.hn = fneg float %i.hm
  %i.ho = load ptr, ptr %i.bb, align 8, !tbaa !25 ; 2 uses
  %i.hp = load i32, ptr %i.bc, align 4, !tbaa !26
  %i.hq = load i32, ptr %i.ac, align 8, !tbaa !27
  %i.hr = load ptr, ptr %i.ho, align 8, !tbaa !8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8
  call void %i.ht(ptr noundef nonnull align 8 dereferenceable(176) %i.ho, i32 noundef %i.hp, i32 noundef %i.hq), !inline_history !101
  %i.hu = load ptr, ptr %i.bb, align 8, !tbaa !25 ; 2 uses
  %i.hv = load i32, ptr %i.bd, align 4, !tbaa !28
  %i.hw = load i32, ptr %i.ad, align 8, !tbaa !29
  %i.hx = load ptr, ptr %i.hu, align 8, !tbaa !8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  %i.hz = load ptr, ptr %i.hy, align 8
  call void %i.hz(ptr noundef nonnull align 8 dereferenceable(176) %i.hu, i32 noundef %i.hv, i32 noundef %i.hw), !inline_history !101
  %i.ia = load ptr, ptr %i.be, align 8, !tbaa !10 ; 2 uses
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %bb.d, label %_ZN27btGImpactCollisionAlgorithm15addContactPointEP17btCollisionObjectS1_RK9btVector3S4_f.exit

bb.d:                                             ; preds = %.lr.ph
  %i.ic = load ptr, ptr %i.bf, align 8, !tbaa !20 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  %i.if = load ptr, ptr %i.ie, align 8
  %i.ig = call noundef ptr %i.if(ptr noundef nonnull align 8 dereferenceable(8) %i.ic, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !102 ; 2 uses
  store ptr %i.ig, ptr %i.be, align 8, !tbaa !10
  br label %_ZN27btGImpactCollisionAlgorithm15addContactPointEP17btCollisionObjectS1_RK9btVector3S4_f.exit

_ZN27btGImpactCollisionAlgorithm15addContactPointEP17btCollisionObjectS1_RK9btVector3S4_f.exit: ; preds = %.lr.ph, %bb.d
  %i.ih = phi ptr [ %i.ig, %bb.d ], [ %i.ia, %.lr.ph ]
  %i.ii = load ptr, ptr %i.bb, align 8, !tbaa !25 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  store ptr %i.ih, ptr %i.ij, align 8, !tbaa !31
  %i.ik = load ptr, ptr %i.ii, align 8, !tbaa !8
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 32
  %i.im = load ptr, ptr %i.il, align 8
  call void %i.im(ptr noundef nonnull align 8 dereferenceable(176) %i.ii, ptr noundef nonnull align 4 dereferenceable(16) %i.ba, ptr noundef nonnull align 4 dereferenceable(16) %i.hl, float noundef %i.hn), !inline_history !101
  %.not19 = icmp eq i64 %indvars.iv.next, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %_ZN27btGImpactCollisionAlgorithm15addContactPointEP17btCollisionObjectS1_RK9btVector3S4_f.exit, %bb.c, %bb.b
  %.not = icmp eq i32 %i.ck, 0
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %i.in = load ptr, ptr %3, align 8, !tbaa !8
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 200
  %i.ip = load ptr, ptr %i.io, align 8
  call void %i.ip(ptr noundef nonnull align 8 dereferenceable(272) %3)
  %i.iq = load ptr, ptr %4, align 8, !tbaa !8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 200
  %i.is = load ptr, ptr %i.ir, align 8
  call void %i.is(ptr noundef nonnull align 8 dereferenceable(272) %4)
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

end_hunk_0
