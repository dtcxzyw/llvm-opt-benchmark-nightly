Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBody?download=true
inline.NumInlined: 5223
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 199
loop-unroll.NumUnrolled: 249
begin_hunk_0_@_ZN6btDbvt9collideTTEPK10btDbvtNodeS2_RNS_8ICollideE:bb.a
  %i.ct = getelementptr i8, ptr %i.cq, i64 16
  store ptr %i.cr, ptr %i.ct, align 8, !tbaa !443
  %.sroa.490.0..sroa_idx = getelementptr i8, ptr %i.cq, i64 24
  store ptr %i.cs, ptr %.sroa.490.0..sroa_idx, align 8, !tbaa !443
  %i.cu = load ptr, ptr %i.ce, align 8, !tbaa !259
  %i.cv = load ptr, ptr %i.cg, align 8, !tbaa !259
  %i.cw = add nsw i32 %.056, 3
  %i.cx = getelementptr i8, ptr %i.cq, i64 32
  store ptr %i.cu, ptr %i.cx, align 8, !tbaa !443
  %.sroa.488.0..sroa_idx = getelementptr i8, ptr %i.cq, i64 40
  store ptr %i.cv, ptr %.sroa.488.0..sroa_idx, align 8, !tbaa !443
  br label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread

bb.r:                                             ; preds = %bb.p
  %i.cy = getelementptr inbounds [16 x i8], ptr %i.al, i64 %i.o ; 2 uses
  store ptr %i.cj, ptr %i.cy, align 8, !tbaa !443
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %.sroa.23.0.copyload, ptr %.sroa.486.0..sroa_idx, align 8, !tbaa !443
  %i.cz = load ptr, ptr %i.ce, align 8, !tbaa !259
  %i.da = add nsw i32 %.056, 1
  %i.db = sext i32 %.056 to i64
  %i.dc = getelementptr inbounds [16 x i8], ptr %i.al, i64 %i.db ; 2 uses
  store ptr %i.cz, ptr %i.dc, align 8, !tbaa !443
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr %.sroa.23.0.copyload, ptr %.sroa.484.0..sroa_idx, align 8, !tbaa !443
  br label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread

bb.s:                                             ; preds = %bb.o
  br i1 %.not108, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload, i64 40
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !259
  %i.df = getelementptr inbounds [16 x i8], ptr %i.ak, i64 %i.o ; 2 uses
  store ptr %.sroa.0.0.copyload, ptr %i.df, align 8, !tbaa !443
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store ptr %i.de, ptr %.sroa.482.0..sroa_idx, align 8, !tbaa !443
  %i.dg = load ptr, ptr %i.cg, align 8, !tbaa !259
  %i.dh = add nsw i32 %.056, 1
  %i.di = sext i32 %.056 to i64
  %i.dj = getelementptr inbounds [16 x i8], ptr %i.ak, i64 %i.di ; 2 uses
  store ptr %.sroa.0.0.copyload, ptr %i.dj, align 8, !tbaa !443
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr %i.dg, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !443
  br label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread

bb.u:                                             ; preds = %bb.s
  %i.dk = load ptr, ptr %3, align 8, !tbaa !41
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8
  invoke void %i.dm(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %.sroa.0.0.copyload, ptr noundef nonnull %.sroa.23.0.copyload)
          to label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread:      ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %_Z9IntersectRK12btDbvtAabbMmS1_.exit, %bb.t, %bb.u, %bb.q, %bb.r, %bb.h, %bb.i
  %i.dn = phi ptr [ %i.aj, %bb.i ], [ %i.ak, %bb.h ], [ %i.ak, %bb.q ], [ %i.ak, %bb.r ], [ %i.ak, %bb.t ], [ %i.ak, %bb.u ], [ %i.ak, %_Z9IntersectRK12btDbvtAabbMmS1_.exit ], [ %i.ak, %bb.n ], [ %i.ak, %bb.m ], [ %i.ak, %bb.l ], [ %i.ak, %bb.k ], [ %i.ak, %bb.j ]
  %i.do = phi ptr [ %i.aj, %bb.i ], [ %i.al, %bb.h ], [ %i.al, %bb.q ], [ %i.al, %bb.r ], [ %i.ak, %bb.t ], [ %i.al, %bb.u ], [ %i.al, %_Z9IntersectRK12btDbvtAabbMmS1_.exit ], [ %i.al, %bb.n ], [ %i.al, %bb.m ], [ %i.al, %bb.l ], [ %i.al, %bb.k ], [ %i.al, %bb.j ]
  %i.dp = phi ptr [ %i.aj, %bb.i ], [ %i.am, %bb.h ], [ %i.am, %bb.q ], [ %i.al, %bb.r ], [ %i.ak, %bb.t ], [ %i.am, %bb.u ], [ %i.am, %_Z9IntersectRK12btDbvtAabbMmS1_.exit ], [ %i.am, %bb.n ], [ %i.am, %bb.m ], [ %i.am, %bb.l ], [ %i.am, %bb.k ], [ %i.am, %bb.j ]
  %i.dq = phi ptr [ %i.aj, %bb.i ], [ %i.ap, %bb.h ], [ %i.am, %bb.q ], [ %i.al, %bb.r ], [ %i.ak, %bb.t ], [ %i.ap, %bb.u ], [ %i.ap, %_Z9IntersectRK12btDbvtAabbMmS1_.exit ], [ %i.ap, %bb.n ], [ %i.ap, %bb.m ], [ %i.ap, %bb.l ], [ %i.ap, %bb.k ], [ %i.ap, %bb.j ]
  %.157 = phi i32 [ %i.az, %bb.i ], [ %i.n, %bb.h ], [ %i.cw, %bb.q ], [ %i.da, %bb.r ], [ %i.dh, %bb.t ], [ %i.n, %bb.u ], [ %i.n, %_Z9IntersectRK12btDbvtAabbMmS1_.exit ], [ %i.n, %bb.n ], [ %i.n, %bb.m ], [ %i.n, %bb.l ], [ %i.n, %bb.k ], [ %i.n, %bb.j ] ; 2 uses
  %.not = icmp eq i32 %.157, 0
  br i1 %.not, label %bb.v, label %bb.c, !llvm.loop !1293

bb.v:                                             ; preds = %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread
  %.not.i.i.i79.not = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i79.not, label %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.aj)
          to label %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEED2Ev.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  tail call void @__clang_call_terminate(ptr %i.ds) #40
  unreachable

_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEED2Ev.exit: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br label %bb.y

bb.y:                                             ; preds = %_ZN20btAlignedObjectArrayIN6btDbvt6sStkNNEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL19calculateNormalConeP11btDbvntNode(ptr nofree noundef captures(address_is_null) %0) unnamed_addr #32 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !315  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !479
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !260
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !315  ; 2 uses
  %.not18 = icmp eq ptr %i.i, null
  br i1 %.not18, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_ZL19calculateNormalConeP11btDbvntNode(ptr noundef nonnull %i.i)
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !315  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  %.sroa.635.0.copyload = load float, ptr %.sroa.635.0..sroa_idx, align 4 ; 3 uses
  %i.l = load <2 x float>, ptr %i.k, align 8      ; 2 uses
  %.sroa.937.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.937.0.copyload = load float, ptr %.sroa.937.0..sroa_idx, align 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.n = load float, ptr %i.m, align 8, !tbaa !533 ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !315 ; 2 uses
  %.not19 = icmp eq ptr %.pre, null
  %i.o = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sroa.635.0.copyload, i64 0
  br i1 %.not19, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.d, %bb.e
  %.04057 = phi float [ %i.n, %bb.e ], [ 0.000000e+00, %bb.d ]
  %.sroa.937.055 = phi float [ %.sroa.937.0.copyload, %bb.e ], [ 0.000000e+00, %bb.d ]
  %.sroa.635.053 = phi float [ %.sroa.635.0.copyload, %bb.e ], [ 0.000000e+00, %bb.d ] ; 2 uses
  %i.p = phi ptr [ %.pre, %bb.e ], [ %i.b, %bb.d ]
  %i.q = phi <2 x float> [ %i.l, %bb.e ], [ zeroinitializer, %bb.d ]
  tail call fastcc void @_ZL19calculateNormalConeP11btDbvntNode(ptr noundef nonnull %i.p)
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !315  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load <2 x float>, ptr %i.s, align 8      ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.v = load float, ptr %i.u, align 8, !tbaa !533
  %i.w = insertelement <2 x float> %i.t, float %.sroa.635.053, i64 0
  %i.x = extractelement <2 x float> %i.t, i64 0
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e
  %.04058 = phi float [ %i.n, %bb.e ], [ %.04057, %.thread ] ; 2 uses
  %.sroa.937.056 = phi float [ %.sroa.937.0.copyload, %bb.e ], [ %.sroa.937.055, %.thread ] ; 3 uses
  %.sroa.635.054 = phi float [ %.sroa.635.0.copyload, %bb.e ], [ %.sroa.635.053, %.thread ]
  %.sroa.9.0 = phi float [ 0.000000e+00, %bb.e ], [ %.sroa.9.0.copyload, %.thread ] ; 3 uses
  %.sroa.026.0 = phi float [ 0.000000e+00, %bb.e ], [ %i.x, %.thread ] ; 3 uses
  %.0 = phi float [ 0.000000e+00, %bb.e ], [ %i.v, %.thread ] ; 2 uses
  %i.y = phi <2 x float> [ %i.o, %bb.e ], [ %i.w, %.thread ] ; 4 uses
  %i.z = phi <2 x float> [ %i.l, %bb.e ], [ %i.q, %.thread ] ; 3 uses
  %i.aa = insertelement <2 x float> %i.y, float %.sroa.026.0, i64 0
  %i.ab = fadd <2 x float> %i.z, %i.aa            ; 4 uses
  %i.ac = fadd float %.sroa.937.056, %.sroa.9.0   ; 4 uses
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ac, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.ab, %i.ab
  %i.ad = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ae = extractelement <2 x float> %i.ab, i64 0 ; 2 uses
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.ae, float %i.ad)
  %i.ag = tail call noundef float @llvm.fmuladd.f32(float %i.ac, float %i.ac, float %i.af) ; 2 uses
  %i.ah = fcmp ult float %i.ag, f0x28800000
  br i1 %i.ah, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.ag)
  %i.ai = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.aj = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = fmul <2 x float> %i.ab, %i.ak
  %i.am = fmul float %i.ac, %i.ai
  br label %_ZN9btVector313safeNormalizeEv.exit

bb.h:                                             ; preds = %bb.f
  %.sroa.8.12.vec.insert = insertelement <2 x float> %.sroa.3.12.vec.insert.i, float 0.000000e+00, i64 1
  br label %_ZN9btVector313safeNormalizeEv.exit

_ZN9btVector313safeNormalizeEv.exit:              ; preds = %bb.g, %bb.h
  %.sroa.8.0 = phi <2 x float> [ %.sroa.8.12.vec.insert, %bb.h ], [ %.sroa.3.12.vec.insert.i, %bb.g ]
  %.sink.i = phi float [ 0.000000e+00, %bb.h ], [ %i.am, %bb.g ]
  %i.an = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %bb.h ], [ %i.al, %bb.g ]
  %.sroa.8.8.vec.insert = insertelement <2 x float> %.sroa.8.0, float %.sink.i, i64 0
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x float> %i.an, ptr %i.ao, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x float> %.sroa.8.8.vec.insert, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !259
  %i.ap = fcmp ogt float %.04058, %.0
  %.sroa.speculated = select i1 %i.ap, float %.04058, float %.0
  %i.aq = fpext float %.sroa.speculated to double
  %i.ar = fmul <2 x float> %i.y, %i.y
  %i.as = insertelement <2 x float> %i.z, float %.sroa.026.0, i64 1 ; 2 uses
  %i.at = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.as, <2 x float> %i.ar)
  %i.au = insertelement <2 x float> poison, float %.sroa.937.056, i64 0
  %i.av = insertelement <2 x float> %i.au, float %.sroa.9.0, i64 1 ; 2 uses
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.av, <2 x float> %i.av, <2 x float> %i.at) ; 2 uses
  %shift = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop61 = fmul <2 x float> %i.aw, %shift
  %i.ax = extractelement <2 x float> %foldExtExtBinop61, i64 0
  %i.ay = tail call float @llvm.sqrt.f32(float %i.ax)
  %i.az = extractelement <2 x float> %i.y, i64 1
  %i.ba = fmul float %.sroa.635.054, %i.az
  %i.bb = extractelement <2 x float> %i.z, i64 0
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.bb, float %.sroa.026.0, float %i.ba)
  %i.bd = tail call noundef float @llvm.fmuladd.f32(float %.sroa.937.056, float %.sroa.9.0, float %i.bc)
  %i.be = fdiv float %i.bd, %i.ay                 ; 2 uses
  %i.bf = fcmp olt float %i.be, -1.000000e+00
  %spec.store.select.i.i.i = select i1 %i.bf, float -1.000000e+00, float %i.be ; 2 uses
  %i.bg = fcmp ogt float %spec.store.select.i.i.i, 1.000000e+00
  %spec.store.select1.i.i.i = select i1 %i.bg, float 1.000000e+00, float %spec.store.select.i.i.i
  %i.bh = tail call noundef float @acosf(float noundef %spec.store.select1.i.i.i) #39
  %i.bi = fpext float %i.bh to double
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.bi, double 5.000000e-01, double %i.aq)
  %i.bk = fptrunc double %i.bj to float
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %_ZN9btVector313safeNormalizeEv.exit
  %.sink = phi float [ %i.bk, %_ZN9btVector313safeNormalizeEv.exit ], [ 0.000000e+00, %bb.c ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %.sink, ptr %i.bl, align 8, !tbaa !533
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN6btDbvt12selfCollideTEPK11btDbvntNodeRNS_8ICollideE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.btAlignedObjectArray.112, align 8 ; 8 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i8 1, ptr %i.a, align 8, !tbaa !1300
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr null, ptr %i.b, align 8, !tbaa !537
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  store i32 0, ptr %i.c, align 4, !tbaa !1301
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !1302
  %i.e = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 2048, i32 noundef 16)
          to label %.lr.ph.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

.lr.ph.i:                                         ; preds = %bb.b
  store i8 1, ptr %i.a, align 8, !tbaa !1300
  store ptr %i.e, ptr %i.b, align 8, !tbaa !537
  store i32 128, ptr %i.d, align 8, !tbaa !1302
  store i32 128, ptr %i.c, align 4, !tbaa !1301
  store ptr %1, ptr %i.e, align 8, !tbaa !315
  %.sroa.4101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %1, ptr %.sroa.4101.0..sroa_idx, align 8, !tbaa !315
  br label %bb.c

bb.c:                                             ; preds = %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread, %.lr.ph.i
  %i.f = phi ptr [ %i.e, %.lr.ph.i ], [ %i.ah, %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread ] ; 2 uses
  %i.g = phi ptr [ %i.e, %.lr.ph.i ], [ %i.do, %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread ] ; 2 uses
  %i.h = phi ptr [ %i.e, %.lr.ph.i ], [ %i.dp, %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread ] ; 2 uses
  %i.i = phi ptr [ %i.e, %.lr.ph.i ], [ %i.dq, %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread ] ; 2 uses
  %i.j = phi i32 [ 128, %.lr.ph.i ], [ %i.al, %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread ] ; 3 uses
  %.pre.i66 = phi i32 [ 128, %.lr.ph.i ], [ %i.am, %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread ] ; 5 uses
  %i.k = phi ptr [ %i.e, %.lr.ph.i ], [ %i.dr, %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread ] ; 6 uses
  %.055 = phi i32 [ 1, %.lr.ph.i ], [ %.156, %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread ] ; 9 uses
  %.053 = phi i32 [ 124, %.lr.ph.i ], [ %.154, %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread ] ; 2 uses
  %i.l = add nsw i32 %.055, -1                    ; 11 uses
  %i.m = sext i32 %i.l to i64                     ; 5 uses
  %i.n = getelementptr inbounds [16 x i8], ptr %i.k, i64 %i.m ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.n, align 8, !tbaa !315 ; 15 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.24.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !315 ; 13 uses
  %i.o = icmp sgt i32 %i.l, %.053
  br i1 %i.o, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.p = shl nsw i32 %.pre.i66, 1                 ; 8 uses
  %i.q = icmp sgt i32 %i.p, %.pre.i66
  %i.r = icmp slt i32 %i.j, %i.p
  %or.cond = select i1 %i.q, i1 %i.r, i1 false
  br i1 %or.cond, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.s = zext nneg i32 %i.p to i64
  %i.t = shl nuw nsw i64 %i.s, 4
  %i.u = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.t, i32 noundef 16)
          to label %.noexc75 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

.noexc75:                                         ; preds = %bb.e
  %i.v = icmp sgt i32 %.pre.i66, 0
  br i1 %i.v, label %.lr.ph.i.i.i70.new, label %_ZNK20btAlignedObjectArrayIN6btDbvt7sStknNNEE4copyEiiPS1_.exit.i.i67

.lr.ph.i.i.i70.new:                               ; preds = %.noexc75
  %wide.trip.count.i.i.i71 = zext nneg i32 %.pre.i66 to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i70.new
  %indvars.iv.i.i.i72 = phi i64 [ 0, %.lr.ph.i.i.i70.new ], [ %indvars.iv.next.i.i.i73.1, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i70.new ], [ %niter.next.1, %bb.f ]
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %indvars.iv.i.i.i72
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv.i.i.i72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !tbaa.struct !1303
  %indvars.iv.next.i.i.i73 = or disjoint i64 %indvars.iv.i.i.i72, 1 ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i73
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.i73
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !1303
  %indvars.iv.next.i.i.i73.1 = add nuw nsw i64 %indvars.iv.i.i.i72, 2
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %wide.trip.count.i.i.i71
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayIN6btDbvt7sStknNNEE4copyEiiPS1_.exit.i.i67, label %bb.f, !llvm.loop !1298

_ZNK20btAlignedObjectArrayIN6btDbvt7sStknNNEE4copyEiiPS1_.exit.i.i67: ; preds = %bb.f, %.noexc75
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.k)
          to label %_ZN20btAlignedObjectArrayIN6btDbvt7sStknNNEE10deallocateEv.exit.i.i69 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN20btAlignedObjectArrayIN6btDbvt7sStknNNEE10deallocateEv.exit.i.i69: ; preds = %_ZNK20btAlignedObjectArrayIN6btDbvt7sStknNNEE4copyEiiPS1_.exit.i.i67
  store i8 1, ptr %i.a, align 8, !tbaa !1300
  store ptr %i.u, ptr %i.b, align 8, !tbaa !537
  store i32 %i.p, ptr %i.d, align 8, !tbaa !1302
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN20btAlignedObjectArrayIN6btDbvt7sStknNNEE10deallocateEv.exit.i.i69, %bb.d
  %i.aa = phi ptr [ %i.f, %bb.d ], [ %i.u, %_ZN20btAlignedObjectArrayIN6btDbvt7sStknNNEE10deallocateEv.exit.i.i69 ]
  %i.ab = phi ptr [ %i.g, %bb.d ], [ %i.u, %_ZN20btAlignedObjectArrayIN6btDbvt7sStknNNEE10deallocateEv.exit.i.i69 ]
  %i.ac = phi ptr [ %i.h, %bb.d ], [ %i.u, %_ZN20btAlignedObjectArrayIN6btDbvt7sStknNNEE10deallocateEv.exit.i.i69 ]
  %i.ad = phi ptr [ %i.i, %bb.d ], [ %i.u, %_ZN20btAlignedObjectArrayIN6btDbvt7sStknNNEE10deallocateEv.exit.i.i69 ]
  %i.ae = phi i32 [ %i.j, %bb.d ], [ %i.p, %_ZN20btAlignedObjectArrayIN6btDbvt7sStknNNEE10deallocateEv.exit.i.i69 ]
  %i.af = phi ptr [ %i.k, %bb.d ], [ %i.u, %_ZN20btAlignedObjectArrayIN6btDbvt7sStknNNEE10deallocateEv.exit.i.i69 ]
  store i32 %i.p, ptr %i.c, align 4, !tbaa !1301
  %i.ag = add nsw i32 %i.p, -4
  br label %bb.g

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.v, %_ZNK20btAlignedObjectArrayIN6btDbvt7sStknNNEE4copyEiiPS1_.exit.i.i67, %bb.e, %bb.b
  %lpad.loopexit.split-lp115 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN20btAlignedObjectArrayIN6btDbvt7sStknNNEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %3) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  resume { ptr, i32 } %lpad.loopexit.split-lp115

bb.g:                                             ; preds = %.loopexit, %bb.c
  %i.ah = phi ptr [ %i.aa, %.loopexit ], [ %i.f, %bb.c ] ; 9 uses
  %i.ai = phi ptr [ %i.ab, %.loopexit ], [ %i.g, %bb.c ] ; 17 uses
  %i.aj = phi ptr [ %i.ac, %.loopexit ], [ %i.h, %bb.c ] ; 15 uses
  %i.ak = phi ptr [ %i.ad, %.loopexit ], [ %i.i, %bb.c ] ; 13 uses
  %i.al = phi i32 [ %i.ae, %.loopexit ], [ %i.j, %bb.c ]
  %i.am = phi i32 [ %i.p, %.loopexit ], [ %.pre.i66, %bb.c ]
  %i.an = phi ptr [ %i.af, %.loopexit ], [ %i.k, %bb.c ] ; 9 uses
  %.154 = phi i32 [ %i.ag, %.loopexit ], [ %.053, %bb.c ]
  %i.ao = icmp eq ptr %.sroa.0.0.copyload, %.sroa.24.0.copyload
  br i1 %i.ao, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 64 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !315
  %.not108 = icmp eq ptr %i.aq, null
  br i1 %.not108, label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 48
  %i.as = load float, ptr %i.ar, align 8, !tbaa !533
  %i.at = fcmp ogt float %i.as, f0x40490FDB
  br i1 %i.at, label %bb.j, label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 56 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !315 ; 2 uses
  %i.aw = getelementptr inbounds [16 x i8], ptr %i.ah, i64 %i.m ; 2 uses
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !315
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.av, ptr %.sroa.499.0..sroa_idx, align 8, !tbaa !315
  %i.ax = load ptr, ptr %i.ap, align 8, !tbaa !315 ; 2 uses
  %i.ay = sext i32 %.055 to i64
  %i.az = getelementptr [16 x i8], ptr %i.ah, i64 %i.ay ; 3 uses
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !315
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.ax, ptr %.sroa.497.0..sroa_idx, align 8, !tbaa !315
  %i.ba = add nsw i32 %.055, 2
  %i.bb = getelementptr i8, ptr %i.az, i64 16
  %i.bc = load <2 x ptr>, ptr %i.au, align 8, !tbaa !315
  store <2 x ptr> %i.bc, ptr %i.bb, align 8, !tbaa !315
  br label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread

bb.k:                                             ; preds = %bb.g
  %i.bd = load float, ptr %.sroa.0.0.copyload, align 4, !tbaa !253
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.24.0.copyload, i64 16
  %i.bf = load float, ptr %i.be, align 4, !tbaa !253
  %i.bg = fcmp ugt float %i.bd, %i.bf
  br i1 %i.bg, label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !253
  %i.bj = load float, ptr %.sroa.24.0.copyload, align 4, !tbaa !253
  %i.bk = fcmp ult float %i.bi, %i.bj
  br i1 %i.bk, label %_Z9IntersectRK12btDbvtAabbMmS1_.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 4
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !253
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.24.0.copyload, i64 20
end_hunk_0
