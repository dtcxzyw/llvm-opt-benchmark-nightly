Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btConvexConcaveCollisionAlgorithm?download=true
inline.NumInlined: 393
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN33btConvexConcaveCollisionAlgorithm16processCollisionEPK24btCollisionObjectWrapperS2_RK16btDispatcherInfoP16btManifoldResult:bb.a
  %i.iw = shufflevector <2 x float> %i.iv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ix = fmul <2 x float> %i.hx, %i.iw
  %i.iy = fmul float %i.iu, %i.ig
  %i.iz = fsub <2 x float> %.sroa.0126.0, %i.ix
  %.sroa.12.8.vec.extract141 = extractelement <2 x float> %.sroa.12.0, i64 0
  %i.ja = fsub float %.sroa.12.8.vec.extract141, %i.iy
  %.sroa.3.12.vec.insert.i112 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ja, i64 0
  store <2 x float> %i.iz, ptr %11, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i112, ptr %i.da, align 8
  %i.jb = load ptr, ptr %4, align 8, !tbaa !10
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 32
  %i.jd = load ptr, ptr %i.jc, align 8
  invoke void %i.jd(ptr noundef nonnull align 8 dereferenceable(52) %4, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %11, float noundef %i.iu)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.je = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jf = icmp samesign ult i64 %indvars.iv.next, %i.db
  br i1 %i.jf, label %bb.v, label %._crit_edge.loopexit, !llvm.loop !111

bb.ah:                                            ; preds = %bb.af, %bb.ac
  %.pn70.pn = phi { ptr, i32 } [ %i.je, %bb.af ], [ %i.it, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader, %.thread181, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i91.thread, %.sink.split.i
  %lpad.loopexit.split-lp204 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZN16btManifoldResult20refreshContactPointsEv.exit: ; preds = %.thread, %._crit_edge, %.sink.split.i, %bb.t
  %i.jg = load ptr, ptr %i.t, align 8, !tbaa !65  ; 2 uses
  %.not.i.i.i115 = icmp ne ptr %i.jg, null
  %i.jh = load i8, ptr %i.s, align 8, !range !42
  %i.ji = trunc nuw i8 %i.jh to i1
  %or.cond.i.i = select i1 %.not.i.i.i115, i1 %i.ji, i1 false
  br i1 %or.cond.i.i, label %bb.ai, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit

bb.ai:                                            ; preds = %_ZN16btManifoldResult20refreshContactPointsEv.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.jg)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jj = landingpad { ptr, i32 }
          catch ptr null
  %i.jk = extractvalue { ptr, i32 } %i.jj, 0
  call void @__clang_call_terminate(ptr %i.jk) #15
  unreachable

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit:   ; preds = %_ZN16btManifoldResult20refreshContactPointsEv.exit, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.aq

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ah, %bb.m
  %.pn77.pn = phi { ptr, i32 } [ %i.bd, %bb.m ], [ %.pn70.pn, %bb.ah ], [ %lpad.loopexit.split-lp204, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN20btAlignedObjectArrayI9btVector3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.ar

bb.ak:                                            ; preds = %bb.b
  br i1 %i.r, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.jl = load ptr, ptr %i.h, align 8, !tbaa !10
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 96
  %i.jn = load ptr, ptr %i.jm, align 8
  %i.jo = invoke noundef float %i.jn(ptr noundef nonnull align 8 dereferenceable(36) %i.h)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !39
  %i.js = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.jr, ptr %i.js, align 8, !tbaa !115
  invoke void @_ZN24btConvexTriangleCallback22setTimeStepAndCountersEfRK16btDispatcherInfoPK24btCollisionObjectWrapperS5_P16btManifoldResult(ptr noundef nonnull align 8 dereferenceable(96) %i.jp, float noundef %i.jo, ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %4)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.jt = load ptr, ptr %i.jq, align 8, !tbaa !39 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !29
  %i.jw = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !29
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jt, i64 840
  store ptr %i.jv, ptr %i.jy, align 8, !tbaa !119
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jt, i64 848
  store ptr %i.jx, ptr %i.jz, align 8, !tbaa !121
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.kc = load ptr, ptr %i.h, align 8, !tbaa !10
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 128
  %i.ke = load ptr, ptr %i.kd, align 8
  invoke void %i.ke(ptr noundef nonnull align 8 dereferenceable(36) %i.h, ptr noundef nonnull %i.jp, ptr noundef nonnull align 4 dereferenceable(16) %i.ka, ptr noundef nonnull align 4 dereferenceable(16) %i.kb)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.kf = load ptr, ptr %i.js, align 8, !tbaa !115 ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 856
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !118
  %.not.i116 = icmp eq i32 %i.kh, 0
  br i1 %.not.i116, label %_ZN16btManifoldResult20refreshContactPointsEv.exit123, label %.sink.split.i118

.sink.split.i118:                                 ; preds = %bb.ao
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 840
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !119
  %i.kk = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !58
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !29 ; 3 uses
  %.not1.i117 = icmp eq ptr %i.kj, %i.kn          ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !59
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !29 ; 2 uses
  %.195 = select i1 %.not1.i117, ptr %i.kr, ptr %i.kn
  %.196 = select i1 %.not1.i117, ptr %i.kn, ptr %i.kr
  %.sink.i121 = getelementptr inbounds nuw i8, ptr %.196, i64 8
  %i.ks = getelementptr inbounds nuw i8, ptr %.195, i64 8
  invoke void @_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(880) %i.kf, ptr noundef nonnull align 4 dereferenceable(64) %.sink.i121, ptr noundef nonnull align 4 dereferenceable(64) %i.ks)
          to label %_ZN16btManifoldResult20refreshContactPointsEv.exit123 unwind label %bb.ap

_ZN16btManifoldResult20refreshContactPointsEv.exit123: ; preds = %bb.ao, %.sink.split.i118
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kt, i8 0, i64 16, i1 false)
  br label %bb.aq

bb.ap:                                            ; preds = %.sink.split.i118, %bb.an, %bb.am, %bb.al
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ak, %_ZN16btManifoldResult20refreshContactPointsEv.exit123, %bb.c, %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit, %bb.a
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret void

bb.ar:                                            ; preds = %.loopexit.split-lp, %bb.ap
  %.pn77.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn77.pn, %.loopexit.split-lp ], [ %i.ku, %bb.ap ]
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  resume { ptr, i32 } %.pn77.pn.pn.pn.pn
}

declare noundef zeroext i1 @_ZN19btSdfCollisionShape10queryPointERK9btVector3RfRS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayI9btVector3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !42
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #15
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZN33btConvexConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(113) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.btVector3, align 8           ; 9 uses
  %6 = alloca %class.btVector3, align 8           ; 6 uses
  %7 = alloca %struct.LocalTriangleSphereCastCallback, align 8 ; 31 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i8, ptr %i.a, align 8, !tbaa !36, !range !42, !noundef !43
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = select i1 %i.c, ptr %2, ptr %1           ; 21 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.g = load float, ptr %i.e, align 4, !tbaa !44 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 124 ; 2 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.k = load <2 x float>, ptr %i.f, align 4, !tbaa !44 ; 3 uses
  %i.l = load float, ptr %i.j, align 4, !tbaa !44 ; 2 uses
  %i.m = extractelement <2 x float> %i.k, i64 0   ; 2 uses
  %i.n = fsub float %i.g, %i.m                    ; 2 uses
  %i.o = fsub float %i.i, %i.l                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.q = load float, ptr %i.p, align 4, !tbaa !44
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.s = load float, ptr %i.r, align 4, !tbaa !44 ; 3 uses
  %i.t = fsub float %i.q, %i.s                    ; 2 uses
  %i.u = fmul float %i.o, %i.o
  %i.v = tail call float @llvm.fmuladd.f32(float %i.n, float %i.n, float %i.u)
  %i.w = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 308
  %i.y = load float, ptr %i.x, align 4, !tbaa !139 ; 2 uses
  %i.z = fmul float %i.y, %i.y
  %i.aa = fcmp olt float %i.w, %i.z
  br i1 %i.aa, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.ad = select i1 %i.c, ptr %1, ptr %2          ; 10 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.ak = load float, ptr %i.ah, align 4, !tbaa !44, !noalias !140 ; 4 uses
  %i.al = load float, ptr %i.ai, align 4, !tbaa !44, !noalias !140 ; 4 uses
  %i.am = load float, ptr %i.aj, align 4, !tbaa !44, !noalias !140 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 60
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.as = load <2 x float>, ptr %i.ab, align 4, !tbaa !44, !noalias !141 ; 3 uses
  %i.at = load <2 x float>, ptr %i.aq, align 4, !tbaa !44, !noalias !141 ; 3 uses
  %i.au = load <2 x float>, ptr %i.ar, align 4, !tbaa !44, !noalias !141 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.aw = load float, ptr %i.av, align 4, !tbaa !44, !noalias !141 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !44, !noalias !141 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ba = load float, ptr %i.az, align 4, !tbaa !44, !noalias !141 ; 2 uses
  %i.bb = insertelement <2 x float> poison, float %i.al, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bd = fmul <2 x float> %i.bc, %i.at
  %i.be = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.bf, <2 x float> %i.bd)
  %i.bh = insertelement <2 x float> poison, float %i.am, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.bi, <2 x float> %i.bg)
  %i.bk = fmul float %i.al, %i.ay
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.ak, float %i.bk)
  %i.bm = tail call noundef float @llvm.fmuladd.f32(float %i.ba, float %i.am, float %i.bl)
  %i.bn = fmul float %i.al, %i.l
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.m, float %i.ak, float %i.bn)
  %i.bp = tail call noundef float @llvm.fmuladd.f32(float %i.s, float %i.am, float %i.bo)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.bs = load <2 x float>, ptr %i.ac, align 4, !tbaa !44, !noalias !142 ; 3 uses
  %i.bt = load <2 x float>, ptr %i.bq, align 4, !tbaa !44, !noalias !142 ; 3 uses
  %i.bu = load <2 x float>, ptr %i.br, align 4, !tbaa !44, !noalias !142 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !44, !noalias !142 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.by = load float, ptr %i.bx, align 4, !tbaa !44, !noalias !142 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !44, !noalias !142 ; 2 uses
  %i.cb = fmul <2 x float> %i.bc, %i.bt
  %i.cc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.bf, <2 x float> %i.cb)
  %i.cd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.bi, <2 x float> %i.cc)
  %i.ce = load <2 x float>, ptr %i.ae, align 4, !tbaa !44, !noalias !140 ; 7 uses
  %i.cf = load <2 x float>, ptr %i.af, align 4, !tbaa !44, !noalias !140 ; 7 uses
  %i.cg = load <2 x float>, ptr %i.ag, align 4, !tbaa !44, !noalias !140 ; 7 uses
  %i.ch = load float, ptr %i.an, align 4, !tbaa !44, !noalias !143
  %i.ci = fneg float %i.ch                        ; 2 uses
  %i.cj = load float, ptr %i.ao, align 4, !tbaa !44, !noalias !143
  %i.ck = fneg float %i.cj                        ; 2 uses
  %i.cl = load float, ptr %i.ap, align 4, !tbaa !44, !noalias !143
  %i.cm = fneg float %i.cl                        ; 2 uses
  %i.cn = load <2 x float>, ptr %i.h, align 4, !tbaa !44, !noalias !144 ; 3 uses
  %8 = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.co = insertelement <2 x float> %8, float %i.ck, i64 0
  %i.cp = fmul <2 x float> %i.bc, %i.co
  %9 = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.cq = insertelement <2 x float> %9, float %i.g, i64 1
  %i.cr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.cq, <2 x float> %i.cp)
  %i.cs = insertelement <2 x float> %i.cn, float %i.cm, i64 0
  %i.ct = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.cs, <2 x float> %i.cr) ; 3 uses
  %i.cu = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cv = fmul <2 x float> %i.cu, %i.at
  %i.cw = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.cw, <2 x float> %i.cv)
  %i.cy = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.cy, <2 x float> %i.cx)
  %i.da = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.db = fmul <2 x float> %i.da, %i.at
  %i.dc = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.dc, <2 x float> %i.db)
  %i.de = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.df = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.de, <2 x float> %i.dd)
  %i.dg = extractelement <2 x float> %i.cf, i64 1
  %i.dh = extractelement <2 x float> %i.ce, i64 1
  %i.di = extractelement <2 x float> %i.cg, i64 1
  %i.dj = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dk = insertelement <2 x float> %i.dj, float %i.ck, i64 1 ; 2 uses
  %i.dl = fmul <2 x float> %i.cf, %i.dk
  %i.dm = insertelement <2 x float> %i.k, float %i.ci, i64 1 ; 2 uses
  %i.dn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> %i.ce, <2 x float> %i.dl)
  %i.do = insertelement <2 x float> poison, float %i.s, i64 0
  %i.dp = insertelement <2 x float> %i.do, float %i.cm, i64 1 ; 2 uses
  %i.dq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dp, <2 x float> %i.cg, <2 x float> %i.dn) ; 2 uses
  %i.dr = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ds = fmul <2 x float> %i.cf, %i.dr
  %i.dt = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.du = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.dt, <2 x float> %i.ds)
  %i.dv = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.dv, <2 x float> %i.du) ; 2 uses
  %i.dx = fadd <2 x float> %i.dq, %i.dw           ; 6 uses
  %i.dy = extractelement <2 x float> %i.ct, i64 0
  %i.dz = fadd float %i.dy, %i.bp                 ; 5 uses
  %.sroa.3.12.vec.insert.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dz, i64 0 ; 3 uses
  %i.ea = fmul <2 x float> %i.cu, %i.bt
  %i.eb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.cw, <2 x float> %i.ea)
  %i.ec = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.cy, <2 x float> %i.eb)
  %i.ed = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 1>
  %i.ee = insertelement <4 x float> %i.ed, float %i.al, i64 0
  %i.ef = insertelement <4 x float> poison, float %i.by, i64 0
  %i.eg = insertelement <4 x float> %i.ef, float %i.ay, i64 1
  %i.eh = shufflevector <4 x float> %i.eg, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ei = fmul <4 x float> %i.ee, %i.eh
  %i.ej = insertelement <4 x float> poison, float %i.bw, i64 0
  %i.ek = insertelement <4 x float> %i.ej, float %i.aw, i64 1
  %i.el = shufflevector <4 x float> %i.ek, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.em = shufflevector <2 x float> %i.ce, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 1>
  %i.en = insertelement <4 x float> %i.em, float %i.ak, i64 0
  %i.eo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.el, <4 x float> %i.en, <4 x float> %i.ei)
  %i.ep = insertelement <4 x float> poison, float %i.ca, i64 0
  %i.eq = insertelement <4 x float> %i.ep, float %i.ba, i64 1
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.es = shufflevector <2 x float> %i.cg, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 1>
  %i.et = insertelement <4 x float> %i.es, float %i.am, i64 0
  %i.eu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.er, <4 x float> %i.et, <4 x float> %i.eo) ; 4 uses
  %i.ev = fmul <2 x float> %i.da, %i.bt
  %i.ew = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.dc, <2 x float> %i.ev)
  %i.ex = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.de, <2 x float> %i.ew)
  %i.ey = fmul float %i.dg, %i.by
  %i.ez = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.dh, float %i.ey)
  %i.fa = tail call noundef float @llvm.fmuladd.f32(float %i.ca, float %i.di, float %i.ez)
  %i.fb = fmul <2 x float> %i.cf, %8
  %i.fc = insertelement <2 x float> poison, float %i.g, i64 0
  %i.fd = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fe = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fd, <2 x float> %i.ce, <2 x float> %i.fb)
  %10 = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ff = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %10, <2 x float> %i.cg, <2 x float> %i.fe)
  %i.fg = shufflevector <2 x float> %i.dw, <2 x float> %i.dq, <2 x i32> <i32 0, i32 3>
  %i.fh = fadd <2 x float> %i.fg, %i.ff           ; 5 uses
  %shift = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ct, %shift ; 2 uses
  %i.fi = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 4 uses
  %.sroa.3.12.vec.insert.i4.i.i31119 = insertelement <2 x float> %foldExtExtBinop, float 0.000000e+00, i64 1
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ad, i64 200
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !145 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !47
  %i.fn = add i32 %i.fm, -21
  %i.fo = icmp ult i32 %i.fn, 9
  br i1 %i.fo, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store <2 x float> %i.dx, ptr %5, align 8
  %.sroa.22.48..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %.sroa.22.48..sroa_idx, align 8, !tbaa !48
  %i.fp = extractelement <2 x float> %i.dx, i64 0 ; 2 uses
  %i.fq = extractelement <2 x float> %i.fh, i64 0 ; 3 uses
  %i.fr = fcmp olt float %i.fq, %i.fp
  br i1 %i.fr, label %bb.d, label %_Z8btSetMinIfEvRT_RKS0_.exit.i

bb.d:                                             ; preds = %bb.c
  store float %i.fq, ptr %5, align 8, !tbaa !44
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i

_Z8btSetMinIfEvRT_RKS0_.exit.i:                   ; preds = %bb.d, %bb.c
  %i.fs = phi float [ %i.fq, %bb.d ], [ %i.fp, %bb.c ]
  %i.ft = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.fu = extractelement <2 x float> %i.dx, i64 1 ; 2 uses
  %i.fv = extractelement <2 x float> %i.fh, i64 1 ; 3 uses
  %i.fw = fcmp olt float %i.fv, %i.fu
  br i1 %i.fw, label %bb.e, label %_Z8btSetMinIfEvRT_RKS0_.exit5.i

bb.e:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i
  store float %i.fv, ptr %i.ft, align 4, !tbaa !44
  br label %_Z8btSetMinIfEvRT_RKS0_.exit5.i

_Z8btSetMinIfEvRT_RKS0_.exit5.i:                  ; preds = %bb.e, %_Z8btSetMinIfEvRT_RKS0_.exit.i
  %i.fx = phi float [ %i.fv, %bb.e ], [ %i.fu, %_Z8btSetMinIfEvRT_RKS0_.exit.i ]
  %i.fy = fcmp olt float %i.fi, %i.dz
  %i.fz = select i1 %i.fy, float %i.fi, float %i.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %.sroa.22.48..sroa_idx77 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %.sroa.22.48..sroa_idx77, align 8, !tbaa !48
  %i.ga = fcmp olt <2 x float> %i.dx, %i.fh
  %i.gb = fcmp olt float %i.dz, %i.fi
  %i.gc = select i1 %i.gb, float %i.fi, float %i.dz
  %i.gd = getelementptr inbounds nuw i8, ptr %i.d, i64 304
  %i.ge = load float, ptr %i.gd, align 8, !tbaa !146 ; 6 uses
  %i.gf = fsub float %i.fs, %i.ge
  store float %i.gf, ptr %5, align 8, !tbaa !44
  %i.gg = fsub float %i.fx, %i.ge
  store float %i.gg, ptr %i.ft, align 4, !tbaa !44
  %i.gh = fsub float %i.fz, %i.ge
  store float %i.gh, ptr %.sroa.22.48..sroa_idx, align 8, !tbaa !44
  %i.gi = select <2 x i1> %i.ga, <2 x float> %i.fh, <2 x float> %i.dx
  %i.gj = insertelement <2 x float> poison, float %i.ge, i64 0
  %i.gk = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gl = fadd <2 x float> %i.gk, %i.gi
  store <2 x float> %i.gl, ptr %6, align 8, !tbaa !44
  %i.gm = fadd float %i.ge, %i.gc
  store float %i.gm, ptr %.sroa.22.48..sroa_idx77, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVZN33btConvexConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultE31LocalTriangleSphereCastCallback, i64 16), ptr %7, align 8, !tbaa !10
  %i.gn = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %i.cz, ptr %i.gn, align 8
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.go = extractelement <4 x float> %i.eu, i64 1
  store float %i.go, ptr %.sroa.664.0..sroa_idx, align 8
  %.sroa.765.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 20
  store float 0.000000e+00, ptr %.sroa.765.0..sroa_idx, align 4, !tbaa !48
  %i.gp = getelementptr inbounds nuw i8, ptr %7, i64 24
  store <2 x float> %i.df, ptr %i.gp, align 8
  %.sroa.1168.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.gq = extractelement <4 x float> %i.eu, i64 3
  store float %i.gq, ptr %.sroa.1168.16..sroa_idx, align 8
  %.sroa.1269.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 36
  store float 0.000000e+00, ptr %.sroa.1269.16..sroa_idx, align 4, !tbaa !48
  %i.gr = getelementptr inbounds nuw i8, ptr %7, i64 40
  store <2 x float> %i.bj, ptr %i.gr, align 8
  %.sroa.1672.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  store float %i.bm, ptr %.sroa.1672.32..sroa_idx, align 8
  %.sroa.1773.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 52
  store float 0.000000e+00, ptr %.sroa.1773.32..sroa_idx, align 4, !tbaa !48
  %i.gs = getelementptr inbounds nuw i8, ptr %7, i64 56
  store <2 x float> %i.dx, ptr %i.gs, align 8
  %.sroa.22.48..sroa_idx79 = getelementptr inbounds nuw i8, ptr %7, i64 64
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %.sroa.22.48..sroa_idx79, align 8, !tbaa !48
  %i.gt = getelementptr inbounds nuw i8, ptr %7, i64 72
  store <2 x float> %i.ec, ptr %i.gt, align 8
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.gu = extractelement <4 x float> %i.eu, i64 2
  store float %i.gu, ptr %.sroa.652.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 84
  store float 0.000000e+00, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !48
  %i.gv = getelementptr inbounds nuw i8, ptr %7, i64 88
  store <2 x float> %i.ex, ptr %i.gv, align 8
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 96
  store float %i.fa, ptr %.sroa.11.16..sroa_idx, align 8
  %.sroa.12.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 100
  store float 0.000000e+00, ptr %.sroa.12.16..sroa_idx, align 4, !tbaa !48
  %i.gw = getelementptr inbounds nuw i8, ptr %7, i64 104
  store <2 x float> %i.cd, ptr %i.gw, align 8
  %.sroa.16.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.gx = extractelement <4 x float> %i.eu, i64 0
  store float %i.gx, ptr %.sroa.16.32..sroa_idx, align 8
  %.sroa.17.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 116
  store float 0.000000e+00, ptr %.sroa.17.32..sroa_idx, align 4, !tbaa !48
  %i.gy = getelementptr inbounds nuw i8, ptr %7, i64 120
  store <2 x float> %i.fh, ptr %i.gy, align 8
  %.sroa.24.48..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 128
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i31119, ptr %.sroa.24.48..sroa_idx, align 8, !tbaa !48
  %i.gz = getelementptr inbounds nuw i8, ptr %7, i64 200
  store float %i.ge, ptr %i.gz, align 8, !tbaa !69
  %i.ha = getelementptr inbounds nuw i8, ptr %7, i64 204 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.d, i64 300 ; 3 uses
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !147
  store float %i.hc, ptr %i.ha, align 4, !tbaa !70
  %i.hd = load ptr, ptr %i.fk, align 8, !tbaa !10
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 128
  %i.hf = load ptr, ptr %i.he, align 8
  invoke void %i.hf(ptr noundef nonnull align 8 dereferenceable(36) %i.fk, ptr noundef nonnull %7, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit5.i
  %i.hg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  resume { ptr, i32 } %i.hg

bb.g:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit5.i
  %i.hh = load float, ptr %i.ha, align 4, !tbaa !70 ; 3 uses
  %i.hi = load float, ptr %i.hb, align 4, !tbaa !147
  %i.hj = fcmp uge float %i.hh, %i.hi
  br i1 %i.hj, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  store float %i.hh, ptr %i.hb, align 4, !tbaa !147
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.h
  %.2.ph = phi float [ %i.hh, %bb.h ], [ 1.000000e+00, %bb.g ]
  call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.2 = phi float [ 1.000000e+00, %bb.a ], [ 1.000000e+00, %bb.b ], [ %.2.ph, %.sink.split ]
  ret float %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nounwind
declare void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #1

declare void @_ZN23btPolyhedralConvexShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN15btTriangleShapeD0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN23btPolyhedralConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #14
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN15btTriangleShapedlEPv.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #15
  unreachable

_ZN15btTriangleShapedlEPv.exit:                   ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK15btTriangleShape7getAabbERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3)
  ret void
}

declare void @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #1

declare noundef float @_ZNK16btCollisionShape20getAngularMotionDiscEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1
end_hunk_0
begin_hunk_1_@_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform:bb.a
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12btConvexCast10CastResult13reportFailureEii(ptr noundef nonnull align 8 dereferenceable(196) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12btConvexCast10CastResultD0Ev(ptr noundef nonnull align 8 dereferenceable(196) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 200) #16
  ret void
}

declare void @_ZN21btConvexInternalShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"vtable pointer", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 _ZTS12btDispatcher", !11, i64 0}
!13 = !{!"p1 _ZTS20btPersistentManifold", !11, i64 0}
!14 = !{!"_ZTS18btTriangleCallback"}
!15 = !{!"_ZTS9btVector3", !5, i64 0}
!16 = !{!"p1 _ZTS24btCollisionObjectWrapper", !11, i64 0}
!17 = !{!"p1 _ZTS16btManifoldResult", !11, i64 0}
!18 = !{!"p1 _ZTS16btDispatcherInfo", !11, i64 0}
!19 = !{!"float", !5, i64 0}
!20 = !{!"_ZTS24btConvexTriangleCallback", !14, i64 0, !15, i64 8, !15, i64 24, !16, i64 40, !16, i64 48, !17, i64 56, !12, i64 64, !18, i64 72, !19, i64 80, !6, i64 84, !13, i64 88}
!21 = !{!20, !12, i64 64}
!22 = !{!20, !18, i64 72}
!23 = !{!20, !16, i64 40}
!24 = !{!20, !16, i64 48}
!25 = !{!"p1 _ZTS16btCollisionShape", !11, i64 0}
!26 = !{!"p1 _ZTS17btCollisionObject", !11, i64 0}
!27 = !{!"p1 _ZTS11btTransform", !11, i64 0}
!28 = !{!"_ZTS24btCollisionObjectWrapper", !16, i64 0, !25, i64 8, !26, i64 16, !27, i64 24, !27, i64 32, !6, i64 40, !6, i64 44}
!29 = !{!28, !26, i64 16}
!30 = !{!20, !13, i64 88}
!31 = !{ptr @_ZN24btConvexTriangleCallback10clearCacheEv}
!32 = !{!"_ZTS20btCollisionAlgorithm", !12, i64 8}
!33 = !{!"_ZTS30btActivatingCollisionAlgorithm", !32, i64 0}
!34 = !{!"bool", !5, i64 0}
!35 = !{!"_ZTS33btConvexConcaveCollisionAlgorithm", !33, i64 0, !20, i64 16, !34, i64 112}
!36 = !{!35, !34, i64 112}
!37 = !{ptr @_ZN24btConvexTriangleCallbackD2Ev, ptr @_ZN24btConvexTriangleCallback10clearCacheEv}
!38 = !{ptr @_ZN24btConvexTriangleCallbackD2Ev}
!39 = !{!35, !13, i64 104}
!40 = !{!"any p2 pointer", !11, i64 0}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{i8 0, i8 2}
!43 = !{}
!44 = !{!19, !19, i64 0}
!45 = !{!28, !25, i64 8}
!46 = !{!"_ZTS16btCollisionShape", !6, i64 8, !11, i64 16, !6, i64 24, !6, i64 28}
!47 = !{!46, !6, i64 8}
!48 = !{!5, !5, i64 0}
!49 = !{i64 0, i64 16, !48}
!50 = !{!20, !19, i64 80}
!51 = !{!"_ZTS13btConvexShape", !46, i64 0}
!52 = !{!"_ZTS21btConvexInternalShape", !51, i64 0, !15, i64 32, !15, i64 48, !19, i64 64, !19, i64 68}
!53 = !{!52, !19, i64 64}
!54 = !{!20, !17, i64 56}
!55 = !{!"_ZTSN36btDiscreteCollisionDetectorInterface6ResultE"}
!56 = !{!"_ZTS16btManifoldResult", !55, i64 0, !13, i64 8, !16, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !19, i64 48}
!57 = !{!56, !19, i64 48}
!58 = !{!56, !16, i64 16}
!59 = !{!56, !16, i64 24}
!60 = !{!28, !27, i64 24}
!61 = !{i64 4}
!62 = !{!"_ZTS18btAlignedAllocatorI9btVector3Lj16EE"}
!63 = !{!"p1 _ZTS9btVector3", !11, i64 0}
!64 = !{!"_ZTS20btAlignedObjectArrayI9btVector3E", !62, i64 0, !6, i64 4, !6, i64 8, !63, i64 16, !34, i64 24}
!65 = !{!64, !63, i64 16}
!66 = !{!"_ZTS11btMatrix3x3", !5, i64 0}
!67 = !{!"_ZTS11btTransform", !66, i64 0, !15, i64 48}
!68 = !{!"_ZTSZN33btConvexConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultE31LocalTriangleSphereCastCallback", !14, i64 0, !67, i64 8, !67, i64 72, !67, i64 136, !19, i64 200, !19, i64 204}
!69 = !{!68, !19, i64 200}
!70 = !{!68, !19, i64 204}
!71 = !{!"_ZTS36btCollisionAlgorithmConstructionInfo", !12, i64 0, !13, i64 8}
!72 = !{!71, !12, i64 0}
!73 = !{ptr @_ZN33btConvexConcaveCollisionAlgorithmD2Ev, ptr @_ZN24btConvexTriangleCallbackD2Ev, ptr @_ZN24btConvexTriangleCallback10clearCacheEv}
!74 = !{ptr @_ZN33btConvexConcaveCollisionAlgorithmD2Ev, ptr @_ZN24btConvexTriangleCallbackD2Ev}
!75 = !{ptr @_ZN33btConvexConcaveCollisionAlgorithmD2Ev}
!76 = distinct !{!76, !41, !86, !87}
!77 = distinct !{!77, !88}
!78 = distinct !{!78, !41, !86}
!79 = !{!"_ZTS18btAlignedAllocatorIP20btPersistentManifoldLj16EE"}
!80 = !{!"p2 _ZTS20btPersistentManifold", !40, i64 0}
!81 = !{!"_ZTS20btAlignedObjectArrayIP20btPersistentManifoldE", !79, i64 0, !6, i64 4, !6, i64 8, !80, i64 16, !34, i64 24}
!82 = !{!81, !6, i64 4}
!83 = !{!81, !6, i64 8}
!84 = !{!81, !80, i64 16}
!85 = !{!13, !13, i64 0}
!86 = !{!"llvm.loop.isvectorized", i32 1}
!87 = !{!"llvm.loop.unroll.runtime.disable"}
!88 = !{!"llvm.loop.unroll.disable"}
!89 = !{!81, !34, i64 24}
!90 = !{!28, !16, i64 0}
!91 = !{!11, !11, i64 0}
!92 = !{!28, !27, i64 32}
!93 = !{!28, !6, i64 40}
!94 = !{!28, !6, i64 44}
!95 = distinct !{!95, i1 true, !"_ZNK11btTransform7inverseEv"}
!96 = distinct !{!96, !95, !"_ZNK11btTransform7inverseEv: argument 0"}
!97 = distinct !{!97, i1 true, !"_ZNK11btMatrix3x39transposeEv"}
!98 = distinct !{!98, !97, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!99 = distinct !{!99, i1 true, !"_ZNK11btTransformmlERKS_"}
!100 = distinct !{!100, !99, !"_ZNK11btTransformmlERKS_: argument 0"}
!101 = distinct !{!101, i1 true, !"_ZmlRK11btMatrix3x3S1_"}
!102 = distinct !{!102, !101, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!103 = !{!98, !96}
!104 = !{!102, !100}
!105 = !{!100}
!106 = !{!96}
!107 = distinct !{!107, !41}
!108 = distinct !{!108, !41}
!109 = distinct !{!109, i1 true, !"_ZNK11btMatrix3x39transposeEv"}
!110 = distinct !{!110, !109, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!111 = distinct !{!111, !41}
!112 = !{!64, !34, i64 24}
!113 = !{!64, !6, i64 4}
!114 = !{!64, !6, i64 8}
!115 = !{!56, !13, i64 8}
!116 = !{!"_ZTS13btTypedObject", !6, i64 0}
!117 = !{!"_ZTS20btPersistentManifold", !116, i64 0, !5, i64 8, !26, i64 840, !26, i64 848, !6, i64 856, !19, i64 860, !19, i64 864, !6, i64 868, !6, i64 872, !6, i64 876}
!118 = !{!117, !6, i64 856}
!119 = !{!117, !26, i64 840}
!120 = !{!110}
!121 = !{!117, !26, i64 848}
!122 = distinct !{!122, i1 true, !"_ZNK11btTransform7inverseEv"}
!123 = distinct !{!123, !122, !"_ZNK11btTransform7inverseEv: argument 0"}
!124 = distinct !{!124, i1 true, !"_ZNK11btMatrix3x39transposeEv"}
!125 = distinct !{!125, !124, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!126 = distinct !{!126, i1 true, !"_ZNK11btTransformmlERKS_"}
!127 = distinct !{!127, !126, !"_ZNK11btTransformmlERKS_: argument 0"}
!128 = distinct !{!128, i1 true, !"_ZmlRK11btMatrix3x3S1_"}
!129 = distinct !{!129, !128, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!130 = distinct !{!130, i1 true, !"_ZNK11btTransformmlERKS_"}
!131 = distinct !{!131, !130, !"_ZNK11btTransformmlERKS_: argument 0"}
!132 = distinct !{!132, i1 true, !"_ZmlRK11btMatrix3x3S1_"}
!133 = distinct !{!133, !132, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!134 = !{!"p1 _ZTS17btBroadphaseProxy", !11, i64 0}
!135 = !{!"_ZTS18btAlignedAllocatorIPK17btCollisionObjectLj16EE"}
!136 = !{!"p2 _ZTS17btCollisionObject", !40, i64 0}
!137 = !{!"_ZTS20btAlignedObjectArrayIPK17btCollisionObjectE", !135, i64 0, !6, i64 4, !6, i64 8, !136, i64 16, !34, i64 24}
!138 = !{!"_ZTS17btCollisionObject", !67, i64 8, !67, i64 72, !15, i64 136, !15, i64 152, !15, i64 168, !6, i64 184, !19, i64 188, !134, i64 192, !25, i64 200, !11, i64 208, !25, i64 216, !6, i64 224, !6, i64 228, !6, i64 232, !6, i64 236, !6, i64 240, !19, i64 244, !19, i64 248, !19, i64 252, !19, i64 256, !19, i64 260, !19, i64 264, !19, i64 268, !6, i64 272, !11, i64 280, !6, i64 288, !6, i64 292, !6, i64 296, !19, i64 300, !19, i64 304, !19, i64 308, !6, i64 312, !137, i64 320, !6, i64 352, !15, i64 356}
!139 = !{!138, !19, i64 308}
!140 = !{!125, !123}
!141 = !{!129, !127}
!142 = !{!133, !131}
!143 = !{!123}
!144 = !{!131}
!145 = !{!138, !25, i64 200}
!146 = !{!138, !19, i64 304}
!147 = !{!138, !19, i64 300}
!148 = !{!"p1 omnipotent char", !11, i64 0}
!149 = !{!"_ZTS20btCollisionShapeData", !148, i64 0, !6, i64 8, !5, i64 12}
!150 = !{!"_ZTS18btVector3FloatData", !5, i64 0}
!151 = !{!"_ZTS25btConvexInternalShapeData", !149, i64 0, !150, i64 16, !150, i64 32, !19, i64 48, !6, i64 52}
!152 = !{!151, !19, i64 48}
!153 = !{!151, !6, i64 52}
!154 = distinct !{!154, !41}
!155 = !{!"p1 _ZTS12btIDebugDraw", !11, i64 0}
!156 = !{!"_ZTSN12btConvexCast10CastResultE", !67, i64 8, !67, i64 72, !15, i64 136, !15, i64 152, !19, i64 168, !155, i64 176, !19, i64 184, !6, i64 188, !19, i64 192}
!157 = !{!156, !155, i64 176}
!158 = !{!156, !19, i64 184}
!159 = !{!156, !6, i64 188}
!160 = !{!156, !19, i64 192}
!161 = !{!156, !19, i64 168}
!162 = !{!52, !19, i64 68}
!163 = !{!"short", !5, i64 0}
!164 = !{!"_ZTS15btUsageBitfield", !163, i64 0, !163, i64 0, !163, i64 0, !163, i64 0, !163, i64 0, !163, i64 0, !163, i64 0, !163, i64 0}
!165 = !{!"_ZTS25btSubSimplexClosestResult", !15, i64 0, !164, i64 16, !5, i64 20, !34, i64 36}
!166 = !{!"_ZTS22btVoronoiSimplexSolver", !6, i64 0, !5, i64 4, !5, i64 84, !5, i64 164, !15, i64 244, !15, i64 260, !15, i64 276, !15, i64 292, !19, i64 308, !34, i64 312, !165, i64 316, !34, i64 356}
!167 = !{!166, !19, i64 308}
end_hunk_1
