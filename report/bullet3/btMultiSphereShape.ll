Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btMultiSphereShape?download=true
inline.NumInlined: 103
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN18btMultiSphereShapeC2EPK9btVector3PKfi:bb.a
.lr.ph.preheader:                                 ; preds = %.lr.ph.i21, %.loopexit37
  store i32 %3, ptr %i.g, align 4, !tbaa !25
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  %xtraiter48 = and i64 %wide.trip.count, 1
  %i.bp = icmp eq i32 %3, 1
  br i1 %i.bp, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter51 = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod50 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod50)
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.br = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %indvars.iv.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bs, ptr noundef nonnull align 4 dereferenceable(16) %i.bq, i64 16, i1 false), !tbaa.struct !29
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.epil.init
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !35
  %i.bv = load ptr, ptr %i.f, align 8, !tbaa !24
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.epil.init
  store float %i.bu, ptr %i.bw, align 4, !tbaa !35
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.loopexit
  invoke void @_ZN32btConvexInternalAabbCachingShape15recalcLocalAabbEv(ptr noundef nonnull align 8 dereferenceable(105) %0)
          to label %bb.k unwind label %bb.l

bb.i:                                             ; preds = %bb.e, %bb.b
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 6 uses
  %niter52 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter52.next.1, %.lr.ph ]
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cb, ptr noundef nonnull align 4 dereferenceable(16) %i.bz, i64 16, i1 false), !tbaa.struct !29
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !35
  %i.ce = load ptr, ptr %i.f, align 8, !tbaa !24
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv
  store float %i.cd, ptr %i.cf, align 4, !tbaa !35
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 4 uses
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.next
  %i.ch = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %indvars.iv.next
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ci, ptr noundef nonnull align 4 dereferenceable(16) %i.cg, i64 16, i1 false), !tbaa.struct !29
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !35
  %i.cl = load ptr, ptr %i.f, align 8, !tbaa !24
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.next
  store float %i.ck, ptr %i.cm, align 4, !tbaa !35
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter52.next.1 = add i64 %niter52, 2           ; 2 uses
  %niter52.ncmp.1 = icmp eq i64 %niter52.next.1, %unroll_iter51
  br i1 %niter52.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !43

bb.k:                                             ; preds = %._crit_edge
  ret void

bb.l:                                             ; preds = %._crit_edge
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.cn, %bb.l ], [ %i.by, %bb.j ], [ %i.bx, %bb.i ]
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN20btAlignedObjectArrayIfED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.co) #13
  tail call void @_ZN20btAlignedObjectArrayI9btVector3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.cp) #13
  tail call void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(105) dereferenceable(105) %0) #13
  resume { ptr, i32 } %.pn
}

declare void @_ZN32btConvexInternalAabbCachingShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(105)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @_ZN32btConvexInternalAabbCachingShape15recalcLocalAabbEv(ptr noundef nonnull align 8 dereferenceable(105)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayIfED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !33
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
  tail call void @__clang_call_terminate(ptr %i.g) #14
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayI9btVector3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !33
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
  tail call void @__clang_call_terminate(ptr %i.g) #14
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK18btMultiSphereShape37localGetSupportingVertexWithoutMarginERK9btVector3(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #5 align 2 {
bb.a:
  %2 = alloca [128 x %class.btVector3], align 16  ; 5 uses
  %i.a = load <2 x float>, ptr %1, align 4        ; 4 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.17.0.copyload = load float, ptr %.sroa.17.0..sroa_idx, align 4 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.a, %i.a
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.c = extractelement <2 x float> %i.a, i64 0   ; 2 uses
  %i.d = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.b)
  %i.e = tail call noundef float @llvm.fmuladd.f32(float %.sroa.17.0.copyload, float %.sroa.17.0.copyload, float %i.d) ; 2 uses
  %i.f = fcmp olt float %i.e, f0x28800000
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %sqrt = tail call float @llvm.sqrt.f32(float %i.e)
  %i.g = fdiv float 1.000000e+00, %sqrt           ; 2 uses
  %i.h = insertelement <2 x float> poison, float %i.g, i64 0
  %i.i = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer
  %i.j = fmul <2 x float> %i.a, %i.i
  %i.k = fmul float %.sroa.17.0.copyload, %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.17.0 = phi float [ %i.k, %bb.b ], [ 0.000000e+00, %bb.a ] ; 3 uses
  %i.l = phi <2 x float> [ %i.j, %bb.b ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.a ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.n = load i32, ptr %i.m, align 4, !tbaa !18   ; 4 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph105, label %._crit_edge106

.lr.ph105:                                        ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = extractelement <2 x float> %i.l, i64 0
  %i.w = extractelement <2 x float> %i.l, i64 1
  br label %bb.d

._crit_edge106:                                   ; preds = %bb.f, %bb.c
  %.sroa.089.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.c ], [ %.sroa.089.1, %bb.f ]
  %.sroa.4.0.lcssa = phi <2 x float> [ zeroinitializer, %bb.c ], [ %.sroa.4.1, %bb.f ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.089.0.lcssa, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.4.0.lcssa, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert

bb.d:                                             ; preds = %.lr.ph105, %bb.f
  %indvars.iv = phi i32 [ %i.n, %.lr.ph105 ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.0103 = phi float [ f0xDD5E0B6B, %.lr.ph105 ], [ %.1, %bb.f ] ; 2 uses
  %.022102 = phi i32 [ 0, %.lr.ph105 ], [ %i.bt, %bb.f ] ; 2 uses
  %.023101 = phi ptr [ %i.q, %.lr.ph105 ], [ %.124.lcssa, %bb.f ] ; 2 uses
  %.025100 = phi ptr [ %i.s, %.lr.ph105 ], [ %.126.lcssa, %bb.f ] ; 2 uses
  %.sroa.4.099 = phi <2 x float> [ zeroinitializer, %.lr.ph105 ], [ %.sroa.4.1, %bb.f ]
  %.sroa.089.098 = phi <2 x float> [ zeroinitializer, %.lr.ph105 ], [ %.sroa.089.1, %bb.f ]
  %i.x = tail call i32 @llvm.smax.i32(i32 %indvars.iv, i32 1)
  %i.y = tail call i32 @llvm.umin.i32(i32 %i.x, i32 128)
  %smax = zext nneg i32 %i.y to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.z = sub nsw i32 %i.n, %.022102               ; 2 uses
  %i.aa = tail call i32 @llvm.smin.i32(i32 %i.z, i32 128)
  %3 = sext i32 %i.aa to i64
  %4 = icmp sgt i32 %i.z, 0
  br i1 %4, label %.lr.ph, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph, %bb.d
  %.126.lcssa = phi ptr [ %.025100, %bb.d ], [ %i.bo, %.lr.ph ]
  %.124.lcssa = phi ptr [ %.023101, %bb.d ], [ %i.bp, %.lr.ph ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %.019.i = phi i32 [ %.1.i, %.lr.ph.i ], [ -1, %.lr.ph.i.preheader ]
  %.01317.i = phi float [ %.114.i, %.lr.ph.i ], [ f0xFF7FFFFF, %.lr.ph.i.preheader ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.i ; 3 uses
  %i.ac = load float, ptr %i.ab, align 16, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !35
  %i.af = fmul float %i.w, %i.ae
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.v, float %i.af)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !35
  %i.aj = tail call noundef float @llvm.fmuladd.f32(float %i.ai, float %.sroa.17.0, float %i.ag) ; 2 uses
  %i.ak = fcmp ogt float %i.aj, %.01317.i         ; 2 uses
  %.114.i = select i1 %i.ak, float %i.aj, float %.01317.i ; 3 uses
  %i.al = trunc nuw nsw i64 %indvars.iv.i to i32
  %.1.i = select i1 %i.ak, i32 %i.al, i32 %.019.i ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %3
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !44

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.am = fcmp ogt float %.114.i, %.0103
  br i1 %i.am, label %bb.e, label %bb.f

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.02195 = phi i64 [ %i.bq, %.lr.ph ], [ 0, %bb.d ] ; 2 uses
  %.12494 = phi ptr [ %i.bp, %.lr.ph ], [ %.023101, %bb.d ] ; 2 uses
  %.12693 = phi ptr [ %i.bo, %.lr.ph ], [ %.025100, %bb.d ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.12693, i64 8
  %i.ao = load float, ptr %i.an, align 4, !tbaa !35
  %i.ap = load float, ptr %i.u, align 8, !tbaa !35 ; 2 uses
  %i.aq = fmul float %i.ao, %i.ap
  %i.ar = fmul float %.sroa.17.0, %i.ap
  %i.as = load float, ptr %.12494, align 4, !tbaa !35 ; 2 uses
  %i.at = fmul float %i.as, %i.ar
  %i.au = fadd float %i.aq, %i.at
  %i.av = load ptr, ptr %0, align 8, !tbaa !9
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = load <2 x float>, ptr %.12693, align 4, !tbaa !35
  %i.az = load <2 x float>, ptr %i.t, align 8, !tbaa !35 ; 2 uses
  %i.ba = fmul <2 x float> %i.ay, %i.az
  %i.bb = fmul <2 x float> %i.l, %i.az
  %i.bc = insertelement <2 x float> poison, float %i.as, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = fmul <2 x float> %i.bb, %i.bd
  %i.bf = fadd <2 x float> %i.ba, %i.be
  %i.bg = tail call noundef float %i.ax(ptr noundef nonnull align 8 dereferenceable(72) %0) ; 2 uses
  %i.bh = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = fmul <2 x float> %i.l, %i.bi
  %i.bk = fmul float %.sroa.17.0, %i.bg
  %i.bl = fsub <2 x float> %i.bf, %i.bj
  %i.bm = fsub float %i.au, %i.bk
  %.sroa.3.12.vec.insert.i54 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bm, i64 0
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.02195 ; 2 uses
  store <2 x float> %i.bl, ptr %i.bn, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i54, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !30
  %i.bo = getelementptr inbounds nuw i8, ptr %.12693, i64 16 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.12494, i64 4 ; 2 uses
  %i.bq = add nuw nsw i64 %.02195, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bq, %smax
  br i1 %exitcond.not, label %.lr.ph.i.preheader, label %.lr.ph, !llvm.loop !45

bb.e:                                             ; preds = %._crit_edge.loopexit.i
  %i.br = sext i32 %.1.i to i64
  %i.bs = getelementptr inbounds [16 x i8], ptr %2, i64 %i.br ; 2 uses
  %.sroa.089.0.copyload = load <2 x float>, ptr %i.bs, align 16
  %.sroa.4.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.4.0.copyload = load <2 x float>, ptr %.sroa.4.0..sroa_idx91, align 8, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.loopexit.i
  %.sroa.089.1 = phi <2 x float> [ %.sroa.089.0.copyload, %bb.e ], [ %.sroa.089.098, %._crit_edge.loopexit.i ] ; 2 uses
  %.sroa.4.1 = phi <2 x float> [ %.sroa.4.0.copyload, %bb.e ], [ %.sroa.4.099, %._crit_edge.loopexit.i ] ; 2 uses
  %.1 = phi float [ %.114.i, %bb.e ], [ %.0103, %._crit_edge.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %i.bt = add nuw nsw i32 %.022102, 128           ; 2 uses
  %i.bu = icmp slt i32 %i.bt, %i.n
  %indvars.iv.next = add i32 %indvars.iv, -128
  br i1 %i.bu, label %bb.d, label %._crit_edge106, !llvm.loop !46
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK18btMultiSphereShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) unnamed_addr #5 align 2 {
bb.a:
  %4 = alloca [128 x %class.btVector3], align 16  ; 5 uses
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph88, label %._crit_edge89

.lr.ph88:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i32, ptr %i.d, align 4, !tbaa !18   ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph88.split.preheader, label %._crit_edge89

.lr.ph88.split.preheader:                         ; preds = %.lr.ph88
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph88.split

._crit_edge89:                                    ; preds = %._crit_edge85, %.lr.ph88, %bb.a
  ret void

.lr.ph88.splitthread-pre-split:                   ; preds = %._crit_edge85
  %.pr = load i32, ptr %i.d, align 4, !tbaa !18
  br label %.lr.ph88.split

.lr.ph88.split:                                   ; preds = %.lr.ph88.splitthread-pre-split, %.lr.ph88.split.preheader
  %i.i = phi i32 [ %.pr, %.lr.ph88.splitthread-pre-split ], [ %i.g, %.lr.ph88.split.preheader ] ; 4 uses
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %.lr.ph88.splitthread-pre-split ], [ 0, %.lr.ph88.split.preheader ] ; 3 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv92 ; 4 uses
  %i.k = icmp sgt i32 %i.i, 0
  br i1 %i.k, label %.lr.ph84, label %._crit_edge85

.lr.ph84:                                         ; preds = %.lr.ph88.split
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !17
  %5 = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv92
  br label %bb.b

._crit_edge85:                                    ; preds = %bb.e, %.lr.ph88.split
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %exitcond95.not = icmp eq i64 %indvars.iv.next93, %wide.trip.count
  br i1 %exitcond95.not, label %._crit_edge89, label %.lr.ph88.splitthread-pre-split, !llvm.loop !47

bb.b:                                             ; preds = %.lr.ph84, %bb.e
  %indvars.iv = phi i32 [ %i.i, %.lr.ph84 ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.02982 = phi i32 [ 0, %.lr.ph84 ], [ %i.bq, %bb.e ] ; 2 uses
  %.03081 = phi ptr [ %i.l, %.lr.ph84 ], [ %.1.lcssa, %bb.e ] ; 2 uses
  %.03180 = phi ptr [ %i.m, %.lr.ph84 ], [ %.132.lcssa, %bb.e ] ; 2 uses
  %.03379 = phi float [ f0xDD5E0B6B, %.lr.ph84 ], [ %.134, %bb.e ] ; 2 uses
  %i.p = tail call i32 @llvm.smax.i32(i32 %indvars.iv, i32 1)
  %i.q = tail call i32 @llvm.umin.i32(i32 %i.p, i32 128)
  %smax = zext nneg i32 %i.q to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.r = sub nsw i32 %i.i, %.02982                ; 2 uses
  %i.s = tail call i32 @llvm.smin.i32(i32 %i.r, i32 128)
  %6 = sext i32 %i.s to i64
  %7 = icmp sgt i32 %i.r, 0
  %.pre = load float, ptr %5, align 4, !tbaa !35
  %i.t = load <2 x float>, ptr %i.j, align 4, !tbaa !35 ; 2 uses
  %.pre99 = load float, ptr %i.n, align 4, !tbaa !35 ; 2 uses
  %8 = extractelement <2 x float> %i.t, i64 0
  br i1 %7, label %.lr.ph, label %.lr.ph.i

.lr.ph.i.loopexit:                                ; preds = %.lr.ph
  %9 = extractelement <2 x float> %i.bc, i64 1
  %10 = extractelement <2 x float> %i.bc, i64 0
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.loopexit, %bb.b
  %11 = phi float [ %.pre99, %bb.b ], [ %i.bg, %.lr.ph.i.loopexit ]
  %12 = phi float [ %.pre, %bb.b ], [ %9, %.lr.ph.i.loopexit ]
  %13 = phi float [ %8, %bb.b ], [ %10, %.lr.ph.i.loopexit ]
  %.132.lcssa = phi ptr [ %.03180, %bb.b ], [ %i.bl, %.lr.ph.i.loopexit ]
  %.1.lcssa = phi ptr [ %.03081, %bb.b ], [ %i.bm, %.lr.ph.i.loopexit ]
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %.019.i = phi i32 [ -1, %.lr.ph.i ], [ %.1.i, %bb.c ]
  %.01317.i = phi float [ f0xFF7FFFFF, %.lr.ph.i ], [ %.114.i, %bb.c ] ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv.i ; 3 uses
  %i.v = load float, ptr %i.u, align 16, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.x = load float, ptr %i.w, align 4, !tbaa !35
  %i.y = fmul float %12, %i.x
  %i.z = tail call float @llvm.fmuladd.f32(float %i.v, float %13, float %i.y)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !35
  %i.ac = tail call noundef float @llvm.fmuladd.f32(float %i.ab, float %11, float %i.z) ; 2 uses
  %i.ad = fcmp ogt float %i.ac, %.01317.i         ; 2 uses
  %.114.i = select i1 %i.ad, float %i.ac, float %.01317.i ; 3 uses
  %i.ae = trunc nuw nsw i64 %indvars.iv.i to i32
  %.1.i = select i1 %i.ad, i32 %i.ae, i32 %.019.i ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %6
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.c, !llvm.loop !44

._crit_edge.loopexit.i:                           ; preds = %bb.c
  %i.af = fcmp ogt float %.114.i, %.03379
  br i1 %i.af, label %bb.d, label %bb.e

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %i.ag = phi float [ %i.bg, %.lr.ph ], [ %.pre99, %bb.b ]
  %.02876 = phi i64 [ %i.bn, %.lr.ph ], [ 0, %bb.b ] ; 2 uses
  %.175 = phi ptr [ %i.bm, %.lr.ph ], [ %.03081, %bb.b ] ; 2 uses
  %.13274 = phi ptr [ %i.bl, %.lr.ph ], [ %.03180, %bb.b ] ; 3 uses
  %i.ah = phi <2 x float> [ %i.bc, %.lr.ph ], [ %i.t, %bb.b ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.13274, i64 8
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !35
  %i.ak = load float, ptr %i.f, align 8, !tbaa !35 ; 2 uses
  %i.al = fmul float %i.aj, %i.ak
  %i.am = fmul float %i.ak, %i.ag
  %i.an = load float, ptr %.175, align 4, !tbaa !35 ; 2 uses
  %i.ao = fmul float %i.an, %i.am
  %i.ap = fadd float %i.al, %i.ao
  %i.aq = load ptr, ptr %0, align 8, !tbaa !9
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = load <2 x float>, ptr %.13274, align 4, !tbaa !35
  %i.au = load <2 x float>, ptr %i.e, align 8, !tbaa !35 ; 2 uses
  %i.av = fmul <2 x float> %i.at, %i.au
  %i.aw = fmul <2 x float> %i.au, %i.ah
  %i.ax = insertelement <2 x float> poison, float %i.an, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = fmul <2 x float> %i.aw, %i.ay
  %i.ba = fadd <2 x float> %i.av, %i.az
  %i.bb = tail call noundef float %i.as(ptr noundef nonnull align 8 dereferenceable(72) %0) ; 2 uses
  %i.bc = load <2 x float>, ptr %i.j, align 4, !tbaa !35 ; 4 uses
  %i.bd = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = fmul <2 x float> %i.be, %i.bc
  %i.bg = load float, ptr %i.n, align 4, !tbaa !35 ; 3 uses
  %i.bh = fmul float %i.bb, %i.bg
  %i.bi = fsub <2 x float> %i.ba, %i.bf
  %i.bj = fsub float %i.ap, %i.bh
  %.sroa.3.12.vec.insert.i61 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bj, i64 0
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.02876 ; 2 uses
  store <2 x float> %i.bi, ptr %i.bk, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i61, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !30
  %i.bl = getelementptr inbounds nuw i8, ptr %.13274, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.175, i64 4 ; 2 uses
  %i.bn = add nuw nsw i64 %.02876, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bn, %smax
  br i1 %exitcond.not, label %.lr.ph.i.loopexit, label %.lr.ph, !llvm.loop !49

bb.d:                                             ; preds = %._crit_edge.loopexit.i
  %i.bo = sext i32 %.1.i to i64
  %i.bp = getelementptr inbounds [16 x i8], ptr %4, i64 %i.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.o, ptr noundef nonnull align 16 dereferenceable(16) %i.bp, i64 16, i1 false), !tbaa.struct !29
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.loopexit.i
  %.134 = phi float [ %.114.i, %bb.d ], [ %.03379, %._crit_edge.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.bq = add nuw nsw i32 %.02982, 128            ; 2 uses
  %i.br = icmp slt i32 %i.bq, %i.i
  %indvars.iv.next = add i32 %indvars.iv, -128
  br i1 %i.br, label %bb.b, label %._crit_edge85, !llvm.loop !50
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZNK18btMultiSphereShape21calculateLocalInertiaEfR9btVector3(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0, float noundef %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %2) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 92
  %.sroa.029.0.copyload = load float, ptr %i.a, align 8
  %.sroa.027.0.copyload = load float, ptr %i.b, align 8
  %i.c = fsub float %.sroa.027.0.copyload, %.sroa.029.0.copyload
  %i.d = load <2 x float>, ptr %.sroa.430.0..sroa_idx, align 4
  %i.e = load <2 x float>, ptr %.sroa.4.0..sroa_idx, align 4
  %i.f = fsub <2 x float> %i.e, %i.d              ; 2 uses
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.h = insertelement <4 x float> %i.g, float 1.000000e+00, i64 3
  %i.i = insertelement <4 x float> %i.h, float %i.c, i64 1
  %i.j = fmul <4 x float> %i.i, <float 5.000000e-01, float 5.000000e-01, float poison, float 1.000000e+00>
  %i.k = shufflevector <4 x float> %i.j, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3> ; 2 uses
  %i.l = shufflevector <2 x float> %i.f, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.m = shufflevector <4 x float> %i.l, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 0, i32 2, i32 7>
  %i.n = fmul <4 x float> %i.m, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00>
  %i.o = fmul <4 x float> %i.k, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 0.000000e+00>
  %i.p = fmul <4 x float> %i.k, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float -0.000000e+00>
  %i.q = fmul <4 x float> %i.n, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 1.000000e+00> ; 2 uses
  %i.r = fdiv float %1, 1.200000e+01
  %i.s = fmul <4 x float> %i.q, %i.q
  %i.t = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.o, <4 x float> %i.p, <4 x float> %i.s)
  %i.u = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.r, i64 0
  %i.v = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.w = fmul <4 x float> %i.v, %i.t
  store <4 x float> %i.w, ptr %2, align 4, !tbaa !35
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZNK18btMultiSphereShape9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK16btCollisionShape9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load float, ptr %i.b, align 8, !tbaa !35
  store float %i.d, ptr %i.c, align 4, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.f = load float, ptr %i.e, align 4, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36
  store float %i.f, ptr %i.g, align 4, !tbaa !35
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load float, ptr %i.h, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float %i.i, ptr %i.j, align 4, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.l = load float, ptr %i.k, align 4, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 44
  store float %i.l, ptr %i.m, align 4, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load float, ptr %i.n, align 8, !tbaa !35
  store float %i.p, ptr %i.o, align 4, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.r = load float, ptr %i.q, align 4, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float %i.r, ptr %i.s, align 4, !tbaa !35
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load float, ptr %i.t, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  store float %i.u, ptr %i.v, align 4, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.x = load float, ptr %i.w, align 4, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 28
  store float %i.x, ptr %i.y, align 4, !tbaa !35
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = load float, ptr %i.z, align 8, !tbaa !51
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  store float %i.aa, ptr %i.ab, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i32 0, ptr %i.ac, align 4, !tbaa !60
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !18 ; 7 uses
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !17
  %i.ah = load ptr, ptr %2, align 8, !tbaa !9
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noundef ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.ag)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !61
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 %i.ae, ptr %i.am, align 8, !tbaa !64
  %i.an = load ptr, ptr %2, align 8, !tbaa !9
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 20, i32 noundef %i.ae) ; 2 uses
  %i.ar = icmp sgt i32 %i.ae, 0
  %.pre = load ptr, ptr %i.af, align 8, !tbaa !17 ; 4 uses
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !65 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !24 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.ae to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.aw = icmp eq i32 %i.ae, 1
  br i1 %i.aw, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.02325.epil.init = phi ptr [ %i.at, %.lr.ph ], [ %i.cr, %._crit_edge.loopexit.unr-lcssa ] ; 5 uses
  %lcmp.mod28 = trunc i32 %i.ae to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %indvars.iv.epil.init ; 4 uses
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !35
  store float %i.ay, ptr %.02325.epil.init, align 4, !tbaa !35
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.ba = load float, ptr %i.az, align 4, !tbaa !35
  %i.bb = getelementptr inbounds nuw i8, ptr %.02325.epil.init, i64 4
  store float %i.ba, ptr %i.bb, align 4, !tbaa !35
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !35
  %i.be = getelementptr inbounds nuw i8, ptr %.02325.epil.init, i64 8
  store float %i.bd, ptr %i.be, align 4, !tbaa !35
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !35
  %i.bh = getelementptr inbounds nuw i8, ptr %.02325.epil.init, i64 12
  store float %i.bg, ptr %i.bh, align 4, !tbaa !35
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.epil.init
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !35
  %i.bk = getelementptr inbounds nuw i8, ptr %.02325.epil.init, i64 16
  store float %i.bj, ptr %i.bk, align 4, !tbaa !67
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.b
  %i.bl = load ptr, ptr %2, align 8, !tbaa !9
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.aq, ptr noundef nonnull @.str, i32 noundef 1497453121, ptr noundef nonnull %.pre)
  br label %bb.d

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 4 uses
  %.02325 = phi ptr [ %i.at, %.lr.ph.new ], [ %i.cr, %bb.c ] ; 11 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %indvars.iv ; 4 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !35
  store float %i.bp, ptr %.02325, align 4, !tbaa !35
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.br = load float, ptr %i.bq, align 4, !tbaa !35
  %i.bs = getelementptr inbounds nuw i8, ptr %.02325, i64 4
  store float %i.br, ptr %i.bs, align 4, !tbaa !35
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !35
  %i.bv = getelementptr inbounds nuw i8, ptr %.02325, i64 8
  store float %i.bu, ptr %i.bv, align 4, !tbaa !35
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !35
  %i.by = getelementptr inbounds nuw i8, ptr %.02325, i64 12
  store float %i.bx, ptr %i.by, align 4, !tbaa !35
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !35
  %i.cb = getelementptr inbounds nuw i8, ptr %.02325, i64 16
  store float %i.ca, ptr %i.cb, align 4, !tbaa !67
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.02325, i64 20
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %indvars.iv.next ; 4 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !35
  store float %i.ce, ptr %i.cc, align 4, !tbaa !35
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !35
end_hunk_0
begin_hunk_1_@_ZN18btMultiSphereShapeD2Ev:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load i8, ptr %i.c, align 8, !range !33
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN20btAlignedObjectArrayIfED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #14
  unreachable

_ZN20btAlignedObjectArrayIfED2Ev.exit:            ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17   ; 2 uses
  %.not.i.i.i1 = icmp ne ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load i8, ptr %i.j, align 8, !range !33
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond.i.i2 = select i1 %.not.i.i.i1, i1 %i.l, i1 false
  br i1 %or.cond.i.i2, label %bb.d, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit

bb.d:                                             ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.i)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #14
  unreachable

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit:   ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit, %bb.d
  tail call void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(105) dereferenceable(105) %0) #13
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18btMultiSphereShapeD0Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTV18btMultiSphereShape, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load i8, ptr %i.c, align 8, !range !33
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i.i, label %bb.b, label %_ZN20btAlignedObjectArrayIfED2Ev.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit.i unwind label %bb.c, !inline_history !70

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #14, !inline_history !70
  unreachable

_ZN20btAlignedObjectArrayIfED2Ev.exit.i:          ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17   ; 2 uses
  %.not.i.i.i1.i = icmp ne ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load i8, ptr %i.j, align 8, !range !33
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond.i.i2.i = select i1 %.not.i.i.i1.i, i1 %i.l, i1 false
  br i1 %or.cond.i.i2.i, label %bb.d, label %_ZN18btMultiSphereShapeD2Ev.exit

bb.d:                                             ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.i)
          to label %_ZN18btMultiSphereShapeD2Ev.exit unwind label %bb.e, !inline_history !70

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #14, !inline_history !70
  unreachable

_ZN18btMultiSphereShapeD2Ev.exit:                 ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit.i, %bb.d
  tail call void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(105) dereferenceable(176) %0) #13, !inline_history !70
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN18btMultiSphereShapedlEPv.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZN18btMultiSphereShapeD2Ev.exit
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #14
  unreachable

_ZN18btMultiSphereShapedlEPv.exit:                ; preds = %_ZN18btMultiSphereShapeD2Ev.exit
  ret void
}

declare void @_ZNK32btConvexInternalAabbCachingShape7getAabbERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(105), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

declare void @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #1

declare noundef float @_ZNK16btCollisionShape20getAngularMotionDiscEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare noundef float @_ZNK16btCollisionShape27getContactBreakingThresholdEf(ptr noundef nonnull align 8 dereferenceable(32), float noundef) unnamed_addr #1

declare void @_ZN32btConvexInternalAabbCachingShape15setLocalScalingERK9btVector3(ptr noundef nonnull align 8 dereferenceable(105), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZNK21btConvexInternalShape15getLocalScalingEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK18btMultiSphereShape7getNameEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #3 comdat align 2 {
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
  store float %1, ptr %i.a, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef float @_ZNK21btConvexInternalShape9getMarginEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load float, ptr %i.a, align 8, !tbaa !51
  ret float %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK18btMultiSphereShape28calculateSerializeBufferSizeEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret i32 72
}

declare void @_ZNK16btCollisionShape20serializeSingleShapeEP12btSerializer(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #1

declare { <2 x float>, <2 x float> } @_ZNK21btConvexInternalShape24localGetSupportingVertexERK9btVector3(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

declare void @_ZNK13btConvexShape7projectERK11btTransformRK9btVector3RfS6_RS3_S7_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

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

declare noundef ptr @_ZNK16btCollisionShape9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) unnamed_addr #1

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #13 ; 0 uses
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !16, i64 24}
!12 = !{!"_ZTS20btAlignedObjectArrayI9btVector3E", !13, i64 0, !6, i64 4, !6, i64 8, !14, i64 16, !16, i64 24}
!13 = !{!"_ZTS18btAlignedAllocatorI9btVector3Lj16EE"}
!14 = !{!"p1 _ZTS9btVector3", !15, i64 0}
!15 = !{!"any pointer", !7, i64 0}
!16 = !{!"bool", !7, i64 0}
!17 = !{!12, !14, i64 16}
!18 = !{!12, !6, i64 4}
!19 = !{!12, !6, i64 8}
!20 = !{!21, !16, i64 24}
!21 = !{!"_ZTS20btAlignedObjectArrayIfE", !22, i64 0, !6, i64 4, !6, i64 8, !23, i64 16, !16, i64 24}
!22 = !{!"_ZTS18btAlignedAllocatorIfLj16EE"}
!23 = !{!"p1 float", !15, i64 0}
!24 = !{!21, !23, i64 16}
!25 = !{!21, !6, i64 4}
!26 = !{!21, !6, i64 8}
!27 = !{!28, !6, i64 8}
!28 = !{!"_ZTS16btCollisionShape", !6, i64 8, !15, i64 16, !6, i64 24, !6, i64 28}
!29 = !{i64 0, i64 16, !30}
!30 = !{!7, !7, i64 0}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{i8 0, i8 2}
!34 = !{}
!35 = !{!36, !36, i64 0}
!36 = !{!"float", !7, i64 0}
!37 = distinct !{!37, !32, !38, !39}
!38 = !{!"llvm.loop.isvectorized", i32 1}
!39 = !{!"llvm.loop.unroll.runtime.disable"}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = distinct !{!42, !32, !38}
!43 = distinct !{!43, !32}
!44 = distinct !{!44, !32}
!45 = distinct !{!45, !32}
!46 = distinct !{!46, !32}
!47 = distinct !{!47, !32, !48}
!48 = !{!"llvm.loop.unswitch.partial.disable"}
!49 = distinct !{!49, !32}
!50 = distinct !{!50, !32}
!51 = !{!52, !36, i64 64}
!52 = !{!"_ZTS21btConvexInternalShape", !53, i64 0, !54, i64 32, !54, i64 48, !36, i64 64, !36, i64 68}
!53 = !{!"_ZTS13btConvexShape", !28, i64 0}
!54 = !{!"_ZTS9btVector3", !7, i64 0}
!55 = !{!56, !36, i64 48}
!56 = !{!"_ZTS25btConvexInternalShapeData", !57, i64 0, !59, i64 16, !59, i64 32, !36, i64 48, !6, i64 52}
!57 = !{!"_ZTS20btCollisionShapeData", !58, i64 0, !6, i64 8, !7, i64 12}
!58 = !{!"p1 omnipotent char", !15, i64 0}
!59 = !{!"_ZTS18btVector3FloatData", !7, i64 0}
!60 = !{!56, !6, i64 52}
!61 = !{!62, !63, i64 56}
!62 = !{!"_ZTS22btMultiSphereShapeData", !56, i64 0, !63, i64 56, !6, i64 64, !7, i64 68}
!63 = !{!"p1 _ZTS19btPositionAndRadius", !15, i64 0}
!64 = !{!62, !6, i64 64}
!65 = !{!66, !15, i64 8}
!66 = !{!"_ZTS7btChunk", !6, i64 0, !6, i64 4, !15, i64 8, !6, i64 16, !6, i64 20}
!67 = !{!68, !36, i64 16}
!68 = !{!"_ZTS19btPositionAndRadius", !59, i64 0, !36, i64 16}
!69 = distinct !{!69, !32}
!70 = !{ptr @_ZN18btMultiSphereShapeD2Ev}
end_hunk_1
