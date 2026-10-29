Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btGjkEpa2?download=true
inline.NumInlined: 449
inline.NumDeleted: 83
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN15btGjkEpaSolver214SignedDistanceERK9btVector3fPK13btConvexShapeRK11btTransformRNS_8sResultsE:bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 44
  store <2 x float> %.sroa.3.12.vec.insert.i.i99, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !28
  br label %bb.q

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i, %_ZNK12gjkepa2_impl13MinkowskiDiff8Support1ERK9btVector3.exit.i, %._crit_edge, %bb.k, %bb.m
  %lpad.loopexit.split-lp201 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.iw = fneg float %i.io
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.b, %bb.q, %bb.l
  %.047 = phi float [ %i.hy, %bb.l ], [ %i.iw, %bb.q ], [ f0x7F7FFFFF, %bb.b ], [ f0x7F7FFFFF, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  ret float %.047

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.c
  %.pn55.pn.pn.pn = phi { ptr, i32 } [ %i.al, %bb.c ], [ %lpad.loopexit.split-lp201, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.loopexit.split-lp
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  resume { ptr, i32 } %.pn55.pn.pn.pn

bb.t:                                             ; preds = %.loopexit.split-lp
  %i.ix = landingpad { ptr, i32 }
          catch ptr null
  %i.iy = extractvalue { ptr, i32 } %i.ix, 0
  call void @__clang_call_terminate(ptr %i.iy) #12
  unreachable
}

declare i32 @__gxx_personality_v0(...)

declare noundef float @_ZNK13btConvexShape19getMarginNonVirtualEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #11 ; 0 uses
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: uwtable
define dso_local noundef zeroext i1 @_ZN15btGjkEpaSolver214SignedDistanceEPK13btConvexShapeRK11btTransformS2_S5_RK9btVector3RNS_8sResultsE(ptr noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(56) initializes((0, 36)) %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN15btGjkEpaSolver28DistanceEPK13btConvexShapeRK11btTransformS2_S5_RK9btVector3RNS_8sResultsE(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(56) %5)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN15btGjkEpaSolver211PenetrationEPK13btConvexShapeRK11btTransformS2_S5_RK9btVector3RNS_8sResultsEb(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(56) %5, i1 noundef zeroext false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.b, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

declare { <2 x float>, <2 x float> } @_ZNK13btConvexShape31localGetSupportVertexNonVirtualERK9btVector3(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(16)) #4

declare { <2 x float>, <2 x float> } @_ZNK13btConvexShape44localGetSupportVertexWithoutMarginNonVirtualERK9btVector3(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(16)) #4

; Function Attrs: uwtable
define linkonce_odr dso_local noundef float @_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_S3_PfRj(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load <2 x float>, ptr %0, align 4, !tbaa !27 ; 5 uses
  %i.h = load <2 x float>, ptr %1, align 4, !tbaa !27 ; 5 uses
  %i.i = load <2 x float>, ptr %i.a, align 4, !tbaa !27 ; 2 uses
  %i.j = load <2 x float>, ptr %i.b, align 4, !tbaa !27 ; 3 uses
  %i.k = fsub <2 x float> %i.g, %i.h              ; 3 uses
  %i.l = fsub <2 x float> %i.i, %i.j              ; 2 uses
  %i.m = load <2 x float>, ptr %2, align 4, !tbaa !27 ; 3 uses
  %i.n = load <2 x float>, ptr %i.e, align 4, !tbaa !27 ; 3 uses
  %i.o = fsub <2 x float> %i.h, %i.m              ; 2 uses
  %i.p = fsub <2 x float> %i.j, %i.n              ; 3 uses
  %i.q = extractelement <2 x float> %i.g, i64 0   ; 5 uses
  %foldExtExtBinop = fsub <2 x float> %i.m, %i.g  ; 2 uses
  %i.r = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %i.s = extractelement <2 x float> %i.g, i64 1   ; 7 uses
  %i.t = extractelement <2 x float> %i.n, i64 0   ; 2 uses
  %i.u = fsub float %i.t, %i.s                    ; 4 uses
  %i.v = extractelement <2 x float> %i.n, i64 1   ; 2 uses
  %i.w = extractelement <2 x float> %i.i, i64 1   ; 7 uses
  %i.x = fsub float %i.v, %i.w                    ; 4 uses
  %i.y = extractelement <2 x float> %i.p, i64 1   ; 5 uses
  %i.z = fneg float %i.y
  %i.aa = extractelement <2 x float> %i.k, i64 0  ; 3 uses
  %i.ab = fmul float %i.aa, %i.z
  %i.ac = extractelement <2 x float> %i.l, i64 1  ; 3 uses
  %i.ad = extractelement <2 x float> %i.o, i64 0  ; 5 uses
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.ad, float %i.ab) ; 8 uses
  %i.af = fneg <2 x float> %i.o
  %i.ag = fmul <2 x float> %i.l, %i.af
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> %i.p, <2 x float> %i.ag) ; 3 uses
  %i.ai = fmul float %i.ae, %i.ae
  %i.aj = extractelement <2 x float> %i.ah, i64 1 ; 7 uses
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.aj, float %i.ai)
  %i.al = extractelement <2 x float> %i.ah, i64 0 ; 7 uses
  %i.am = tail call noundef float @llvm.fmuladd.f32(float %i.al, float %i.al, float %i.ak) ; 3 uses
  %i.an = fcmp ogt float %i.am, 0.000000e+00
  br i1 %i.an, label %.preheader, label %bb.z

.preheader:                                       ; preds = %bb.a
  %i.ao = extractelement <2 x float> %i.m, i64 0
  %i.ap = fneg float %i.ae                        ; 3 uses
  %i.aq = fneg float %i.al                        ; 3 uses
  %i.ar = fneg float %i.aj                        ; 3 uses
  %i.as = fmul float %i.ac, %i.ap
  %i.at = extractelement <2 x float> %i.k, i64 1  ; 2 uses
  %i.au = tail call float @llvm.fmuladd.f32(float %i.at, float %i.al, float %i.as)
  %i.av = fmul float %i.aa, %i.aq
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.aj, float %i.av)
  %i.ax = fmul float %i.at, %i.ar
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.ae, float %i.ax)
  %i.az = fmul float %i.s, %i.aw
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.q, float %i.au, float %i.az)
  %i.bb = tail call noundef float @llvm.fmuladd.f32(float %i.w, float %i.ay, float %i.ba)
  %i.bc = fcmp ogt float %i.bb, 0.000000e+00
  %i.bd = extractelement <2 x float> %i.h, i64 0  ; 3 uses
  %i.be = extractelement <2 x float> %i.h, i64 1  ; 4 uses
  %i.bf = extractelement <2 x float> %i.j, i64 1  ; 4 uses
  br i1 %i.bc, label %bb.b, label %bb.h

bb.b:                                             ; preds = %.preheader
  %foldExtExtBinop180 = fsub <2 x float> %i.h, %i.g
  %i.bg = extractelement <2 x float> %foldExtExtBinop180, i64 0 ; 4 uses
  %i.bh = fsub float %i.be, %i.s                  ; 4 uses
  %i.bi = fsub float %i.bf, %i.w                  ; 4 uses
  %i.bj = fmul float %i.bh, %i.bh
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.bg, float %i.bj)
  %i.bl = tail call noundef float @llvm.fmuladd.f32(float %i.bi, float %i.bi, float %i.bk) ; 2 uses
  %i.bm = fcmp ogt float %i.bl, 0.000000e+00
  br i1 %i.bm, label %bb.c, label %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit

bb.c:                                             ; preds = %bb.b
  %i.bn = fmul float %i.s, %i.bh
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.q, float %i.bg, float %i.bn)
  %i.bp = tail call noundef float @llvm.fmuladd.f32(float %i.w, float %i.bi, float %i.bo)
  %i.bq = fneg float %i.bp
  %i.br = fdiv float %i.bq, %i.bl                 ; 7 uses
  %i.bs = fcmp ult float %i.br, 1.000000e+00
  br i1 %i.bs, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bt = fmul float %i.be, %i.be
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.bd, float %i.bt)
  %i.bv = tail call noundef float @llvm.fmuladd.f32(float %i.bf, float %i.bf, float %i.bu)
  br label %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit

bb.e:                                             ; preds = %bb.c
  %i.bw = fcmp ugt float %i.br, 0.000000e+00
  br i1 %i.bw, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bx = fmul float %i.s, %i.s
  %i.by = tail call float @llvm.fmuladd.f32(float %i.q, float %i.q, float %i.bx)
  %i.bz = tail call noundef float @llvm.fmuladd.f32(float %i.w, float %i.w, float %i.by)
  br label %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit

bb.g:                                             ; preds = %bb.e
  %i.ca = fsub float 1.000000e+00, %i.br
  %i.cb = fmul float %i.bg, %i.br
  %i.cc = fmul float %i.bh, %i.br
  %i.cd = fmul float %i.bi, %i.br
  %i.ce = fadd float %i.q, %i.cb                  ; 2 uses
  %i.cf = fadd float %i.s, %i.cc                  ; 2 uses
  %i.cg = fadd float %i.w, %i.cd                  ; 2 uses
  %i.ch = fmul float %i.cf, %i.cf
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.ce, float %i.ch)
  %i.cj = tail call noundef float @llvm.fmuladd.f32(float %i.cg, float %i.cg, float %i.ci)
  br label %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit

_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit: ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.2132 = phi i32 [ 3, %bb.g ], [ 1, %bb.f ], [ 2, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0111.2 = phi float [ %i.ca, %bb.g ], [ 1.000000e+00, %bb.f ], [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %.sroa.7.2 = phi float [ %i.br, %bb.g ], [ 0.000000e+00, %bb.f ], [ 1.000000e+00, %bb.d ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %.1.i = phi float [ %i.cj, %bb.g ], [ %i.bz, %bb.f ], [ %i.bv, %bb.d ], [ -1.000000e+00, %bb.b ]
  store i32 %.2132, ptr %4, align 4, !tbaa !10
  store float %.sroa.0111.2, ptr %3, align 4, !tbaa !27
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %.sroa.7.2, ptr %i.ck, align 4, !tbaa !27
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float 0.000000e+00, ptr %i.cl, align 4, !tbaa !27
  %.pre = load float, ptr %1, align 4, !tbaa !27
  %.pre161 = load float, ptr %i.b, align 4, !tbaa !27
  %.pre162 = load float, ptr %i.d, align 4, !tbaa !27
  %.pre164.pre = load float, ptr %2, align 4, !tbaa !27
  %.pre166.pre = load float, ptr %i.e, align 4, !tbaa !27
  %.pre168.pre = load float, ptr %i.f, align 4, !tbaa !27
  br label %bb.h

bb.h:                                             ; preds = %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit, %.preheader
  %.pre168 = phi float [ %.pre168.pre, %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit ], [ %i.v, %.preheader ] ; 5 uses
  %.pre166 = phi float [ %.pre166.pre, %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit ], [ %i.t, %.preheader ] ; 5 uses
  %.pre164 = phi float [ %.pre164.pre, %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit ], [ %i.ao, %.preheader ] ; 5 uses
  %i.cm = phi float [ %.pre162, %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit ], [ %i.bf, %.preheader ] ; 6 uses
  %i.cn = phi float [ %.pre161, %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit ], [ %i.be, %.preheader ] ; 6 uses
  %i.co = phi float [ %.pre, %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit ], [ %i.bd, %.preheader ] ; 6 uses
  %.1 = phi i32 [ %.2132, %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit ], [ 0, %.preheader ] ; 2 uses
  %.sroa.0111.1 = phi float [ %.sroa.0111.2, %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit ], [ 0.000000e+00, %.preheader ] ; 2 uses
  %.sroa.7.1 = phi float [ %.sroa.7.2, %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit ], [ 0.000000e+00, %.preheader ] ; 2 uses
  %.2 = phi float [ %.1.i, %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit ], [ -1.000000e+00, %.preheader ] ; 4 uses
  %i.cp = fmul float %i.y, %i.ap
  %i.cq = extractelement <2 x float> %i.p, i64 0  ; 4 uses
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.al, float %i.cp)
  %i.cs = fmul float %i.ad, %i.aq
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.y, float %i.aj, float %i.cs)
  %i.cu = fmul float %i.cq, %i.ar
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.ae, float %i.cu)
  %i.cw = fmul float %i.cn, %i.ct
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.co, float %i.cr, float %i.cw)
  %i.cy = tail call noundef float @llvm.fmuladd.f32(float %i.cm, float %i.cv, float %i.cx)
  %i.cz = fcmp ogt float %i.cy, 0.000000e+00
  br i1 %i.cz, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.da = fsub float %.pre164, %i.co              ; 4 uses
  %i.db = fsub float %.pre166, %i.cn              ; 4 uses
  %i.dc = fsub float %.pre168, %i.cm              ; 4 uses
  %i.dd = fmul float %i.db, %i.db
  %i.de = tail call float @llvm.fmuladd.f32(float %i.da, float %i.da, float %i.dd)
  %i.df = tail call noundef float @llvm.fmuladd.f32(float %i.dc, float %i.dc, float %i.de) ; 2 uses
  %i.dg = fcmp ogt float %i.df, 0.000000e+00
  br i1 %i.dg, label %bb.j, label %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit.1

bb.j:                                             ; preds = %bb.i
  %i.dh = fmul float %i.cn, %i.db
  %i.di = tail call float @llvm.fmuladd.f32(float %i.co, float %i.da, float %i.dh)
  %i.dj = tail call noundef float @llvm.fmuladd.f32(float %i.cm, float %i.dc, float %i.di)
  %i.dk = fneg float %i.dj
  %i.dl = fdiv float %i.dk, %i.df                 ; 7 uses
  %i.dm = fcmp ult float %i.dl, 1.000000e+00
  br i1 %i.dm, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dn = fmul float %.pre166, %.pre166
  %i.do = tail call float @llvm.fmuladd.f32(float %.pre164, float %.pre164, float %i.dn)
  %i.dp = tail call noundef float @llvm.fmuladd.f32(float %.pre168, float %.pre168, float %i.do)
  br label %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit.1

bb.l:                                             ; preds = %bb.j
  %i.dq = fcmp ugt float %i.dl, 0.000000e+00
  br i1 %i.dq, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dr = fmul float %i.cn, %i.cn
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.co, float %i.co, float %i.dr)
  %i.dt = tail call noundef float @llvm.fmuladd.f32(float %i.cm, float %i.cm, float %i.ds)
  br label %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit.1

bb.n:                                             ; preds = %bb.l
  %i.du = fsub float 1.000000e+00, %i.dl
  %i.dv = fmul float %i.da, %i.dl
  %i.dw = fmul float %i.db, %i.dl
  %i.dx = fmul float %i.dc, %i.dl
  %i.dy = fadd float %i.co, %i.dv                 ; 2 uses
  %i.dz = fadd float %i.cn, %i.dw                 ; 2 uses
  %i.ea = fadd float %i.cm, %i.dx                 ; 2 uses
  %i.eb = fmul float %i.dz, %i.dz
  %i.ec = tail call float @llvm.fmuladd.f32(float %i.dy, float %i.dy, float %i.eb)
  %i.ed = tail call noundef float @llvm.fmuladd.f32(float %i.ea, float %i.ea, float %i.ec)
  br label %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit.1

_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit.1: ; preds = %bb.n, %bb.m, %bb.k, %bb.i
  %.2132.1 = phi i32 [ 3, %bb.n ], [ 1, %bb.m ], [ 2, %bb.k ], [ %.1, %bb.i ] ; 4 uses
  %.sroa.0111.2.1 = phi float [ %i.du, %bb.n ], [ 1.000000e+00, %bb.m ], [ 0.000000e+00, %bb.k ], [ %.sroa.0111.1, %bb.i ] ; 3 uses
  %.sroa.7.2.1 = phi float [ %i.dl, %bb.n ], [ 0.000000e+00, %bb.m ], [ 1.000000e+00, %bb.k ], [ %.sroa.7.1, %bb.i ] ; 3 uses
  %.1.i.1 = phi float [ %i.ed, %bb.n ], [ %i.dt, %bb.m ], [ %i.dp, %bb.k ], [ -1.000000e+00, %bb.i ] ; 2 uses
  %i.ee = fcmp olt float %.2, 0.000000e+00
  %i.ef = fcmp olt float %.1.i.1, %.2
  %or.cond.1 = or i1 %i.ee, %i.ef
  br i1 %or.cond.1, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit.1
  %i.eg = shl nuw nsw i32 %.2132.1, 1
  %i.eh = and i32 %i.eg, 2
  %i.ei = shl nuw nsw i32 %.2132.1, 1
  %i.ej = and i32 %i.ei, 4
  %i.ek = or disjoint i32 %i.eh, %i.ej
  store i32 %i.ek, ptr %4, align 4, !tbaa !10
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %.sroa.0111.2.1, ptr %i.el, align 4, !tbaa !27
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %.sroa.7.2.1, ptr %i.em, align 4, !tbaa !27
  store float 0.000000e+00, ptr %3, align 4, !tbaa !27
  %.pre163 = load float, ptr %2, align 4, !tbaa !27
  %.pre165 = load float, ptr %i.e, align 4, !tbaa !27
  %.pre167 = load float, ptr %i.f, align 4, !tbaa !27
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit.1, %bb.h
  %i.en = phi float [ %.pre167, %bb.o ], [ %.pre168, %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit.1 ], [ %.pre168, %bb.h ] ; 6 uses
  %i.eo = phi float [ %.pre165, %bb.o ], [ %.pre166, %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit.1 ], [ %.pre166, %bb.h ] ; 6 uses
  %i.ep = phi float [ %.pre163, %bb.o ], [ %.pre164, %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit.1 ], [ %.pre164, %bb.h ] ; 6 uses
  %.1.1 = phi i32 [ %.2132.1, %bb.o ], [ %.2132.1, %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit.1 ], [ %.1, %bb.h ]
  %.sroa.0111.1.1 = phi float [ %.sroa.0111.2.1, %bb.o ], [ %.sroa.0111.2.1, %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit.1 ], [ %.sroa.0111.1, %bb.h ]
  %.sroa.7.1.1 = phi float [ %.sroa.7.2.1, %bb.o ], [ %.sroa.7.2.1, %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit.1 ], [ %.sroa.7.1, %bb.h ]
  %.2.1 = phi float [ %.1.i.1, %bb.o ], [ %.2, %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit.1 ], [ %.2, %bb.h ] ; 4 uses
  %i.eq = fmul float %i.x, %i.ap
  %i.er = tail call float @llvm.fmuladd.f32(float %i.u, float %i.al, float %i.eq)
  %i.es = fmul float %i.r, %i.aq
  %i.et = tail call float @llvm.fmuladd.f32(float %i.x, float %i.aj, float %i.es)
  %i.eu = fmul float %i.u, %i.ar
  %i.ev = tail call float @llvm.fmuladd.f32(float %i.r, float %i.ae, float %i.eu)
  %i.ew = fmul float %i.eo, %i.et
  %i.ex = tail call float @llvm.fmuladd.f32(float %i.ep, float %i.er, float %i.ew)
  %i.ey = tail call noundef float @llvm.fmuladd.f32(float %i.en, float %i.ev, float %i.ex)
  %i.ez = fcmp ogt float %i.ey, 0.000000e+00
  br i1 %i.ez, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.fa = load float, ptr %0, align 4, !tbaa !27  ; 3 uses
  %i.fb = fsub float %i.fa, %i.ep                 ; 4 uses
  %i.fc = load float, ptr %i.a, align 4, !tbaa !27 ; 3 uses
  %i.fd = fsub float %i.fc, %i.eo                 ; 4 uses
  %i.fe = load float, ptr %i.c, align 4, !tbaa !27 ; 3 uses
  %i.ff = fsub float %i.fe, %i.en                 ; 4 uses
  %i.fg = fmul float %i.fd, %i.fd
  %i.fh = tail call float @llvm.fmuladd.f32(float %i.fb, float %i.fb, float %i.fg)
  %i.fi = tail call noundef float @llvm.fmuladd.f32(float %i.ff, float %i.ff, float %i.fh) ; 2 uses
  %i.fj = fcmp ogt float %i.fi, 0.000000e+00
  br i1 %i.fj, label %bb.r, label %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit.2

bb.r:                                             ; preds = %bb.q
  %i.fk = fmul float %i.eo, %i.fd
  %i.fl = tail call float @llvm.fmuladd.f32(float %i.ep, float %i.fb, float %i.fk)
  %i.fm = tail call noundef float @llvm.fmuladd.f32(float %i.en, float %i.ff, float %i.fl)
  %i.fn = fneg float %i.fm
  %i.fo = fdiv float %i.fn, %i.fi                 ; 7 uses
  %i.fp = fcmp ult float %i.fo, 1.000000e+00
  br i1 %i.fp, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fq = fmul float %i.fc, %i.fc
  %i.fr = tail call float @llvm.fmuladd.f32(float %i.fa, float %i.fa, float %i.fq)
  %i.fs = tail call noundef float @llvm.fmuladd.f32(float %i.fe, float %i.fe, float %i.fr)
  br label %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit.2

bb.t:                                             ; preds = %bb.r
  %i.ft = fcmp ugt float %i.fo, 0.000000e+00
  br i1 %i.ft, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fu = fmul float %i.eo, %i.eo
  %i.fv = tail call float @llvm.fmuladd.f32(float %i.ep, float %i.ep, float %i.fu)
  %i.fw = tail call noundef float @llvm.fmuladd.f32(float %i.en, float %i.en, float %i.fv)
  br label %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit.2

bb.v:                                             ; preds = %bb.t
  %i.fx = fsub float 1.000000e+00, %i.fo
  %i.fy = fmul float %i.fb, %i.fo
  %i.fz = fmul float %i.fd, %i.fo
  %i.ga = fmul float %i.ff, %i.fo
  %i.gb = fadd float %i.ep, %i.fy                 ; 2 uses
  %i.gc = fadd float %i.eo, %i.fz                 ; 2 uses
  %i.gd = fadd float %i.en, %i.ga                 ; 2 uses
  %i.ge = fmul float %i.gc, %i.gc
  %i.gf = tail call float @llvm.fmuladd.f32(float %i.gb, float %i.gb, float %i.ge)
  %i.gg = tail call noundef float @llvm.fmuladd.f32(float %i.gd, float %i.gd, float %i.gf)
  br label %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit.2

_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit.2: ; preds = %bb.v, %bb.u, %bb.s, %bb.q
  %.2132.2 = phi i32 [ 3, %bb.v ], [ 1, %bb.u ], [ 2, %bb.s ], [ %.1.1, %bb.q ] ; 2 uses
  %.sroa.0111.2.2 = phi float [ %i.fx, %bb.v ], [ 1.000000e+00, %bb.u ], [ 0.000000e+00, %bb.s ], [ %.sroa.0111.1.1, %bb.q ]
  %.sroa.7.2.2 = phi float [ %i.fo, %bb.v ], [ 0.000000e+00, %bb.u ], [ 1.000000e+00, %bb.s ], [ %.sroa.7.1.1, %bb.q ]
  %.1.i.2 = phi float [ %i.gg, %bb.v ], [ %i.fw, %bb.u ], [ %i.fs, %bb.s ], [ -1.000000e+00, %bb.q ] ; 2 uses
  %i.gh = fcmp olt float %.2.1, 0.000000e+00
  %i.gi = fcmp olt float %.1.i.2, %.2.1
  %or.cond.2 = or i1 %i.gh, %i.gi
  br i1 %or.cond.2, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit.2
  %i.gj = shl nuw nsw i32 %.2132.2, 2
  %i.gk = and i32 %i.gj, 4
  %i.gl = lshr i32 %.2132.2, 1
  %i.gm = or disjoint i32 %i.gk, %i.gl
  store i32 %i.gm, ptr %4, align 4, !tbaa !10
  %i.gn = getelementptr inbounds nuw i8, ptr %3, i64 8
end_hunk_0
