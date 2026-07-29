inline.NumInlined: 162
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZdlPv
; Function Attrs: inlinehint uwtable
define internal void @_ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN14CenterCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %0) #17
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %0) #17
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN14CenterCallback28internalProcessTriangleIndexEPS2_ii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef readonly captures(none) %1, i32 %2, i32 %3) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !31, !range !35, !noundef !36
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !30
  store i8 0, ptr %i.a, align 8, !tbaa !31
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !27 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load float, ptr %i.g, align 4, !tbaa !27 ; 4 uses
  %i.i = fsub float %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load float, ptr %i.k, align 4, !tbaa !27 ; 2 uses
  %i.m = fsub float %i.l, %i.h                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load float, ptr %i.o, align 4, !tbaa !27 ; 2 uses
  %i.q = fsub float %i.p, %i.h                    ; 2 uses
  %i.r = fneg float %i.q
  %i.s = fadd float %i.f, %i.l
  %i.t = fadd float %i.s, %i.p
  %i.u = fadd float %i.h, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.w = load <2 x float>, ptr %1, align 4, !tbaa !27 ; 3 uses
  %i.x = load <2 x float>, ptr %i.d, align 4, !tbaa !27 ; 7 uses
  %foldExtExtBinop = fsub <2 x float> %i.w, %i.x
  %i.y = extractelement <2 x float> %foldExtExtBinop, i64 0
  %foldExtExtBinop48 = fsub <2 x float> %i.w, %i.x
  %i.z = extractelement <2 x float> %foldExtExtBinop48, i64 1
  %i.aa = load <2 x float>, ptr %i.j, align 4, !tbaa !27 ; 3 uses
  %foldExtExtBinop50 = fsub <2 x float> %i.aa, %i.x
  %i.ab = extractelement <2 x float> %foldExtExtBinop50, i64 0 ; 2 uses
  %foldExtExtBinop52 = fsub <2 x float> %i.aa, %i.x
  %i.ac = extractelement <2 x float> %foldExtExtBinop52, i64 1 ; 2 uses
  %i.ad = load <2 x float>, ptr %i.n, align 4, !tbaa !27 ; 3 uses
  %foldExtExtBinop54 = fsub <2 x float> %i.ad, %i.x
  %i.ae = extractelement <2 x float> %foldExtExtBinop54, i64 0 ; 2 uses
  %foldExtExtBinop56 = fsub <2 x float> %i.ad, %i.x
  %i.af = extractelement <2 x float> %foldExtExtBinop56, i64 1 ; 2 uses
  %i.ag = fneg float %i.af
  %i.ah = fmul float %i.m, %i.ag
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.q, float %i.ah)
  %i.aj = fmul float %i.ab, %i.r
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.m, float %i.ae, float %i.aj)
  %i.al = fmul float %i.z, %i.ak
  %i.am = tail call float @llvm.fmuladd.f32(float %i.y, float %i.ai, float %i.al)
  %i.an = fneg float %i.ae
  %i.ao = fmul float %i.ac, %i.an
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.af, float %i.ao)
  %i.aq = tail call noundef float @llvm.fmuladd.f32(float %i.i, float %i.ap, float %i.am)
  %i.ar = tail call noundef float @llvm.fabs.f32(float %i.aq) ; 2 uses
  %i.as = fmul float %i.ar, 2.500000e-01          ; 2 uses
  %i.at = fadd <2 x float> %i.w, %i.aa
  %i.au = fadd <2 x float> %i.at, %i.ad
  %i.av = fadd <2 x float> %i.x, %i.au
  %i.aw = insertelement <2 x float> poison, float %i.as, i64 0
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = fmul <2 x float> %i.av, %i.ax
  %i.az = fmul float %i.u, %i.as
  %i.ba = load <2 x float>, ptr %i.v, align 4, !tbaa !27
  %i.bb = fadd <2 x float> %i.ba, %i.ay
  store <2 x float> %i.bb, ptr %i.v, align 4, !tbaa !27
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !27
  %i.be = fadd float %i.bd, %i.az
  store float %i.be, ptr %i.bc, align 4, !tbaa !27
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !33
  %i.bh = fadd float %i.bg, %i.ar
  store float %i.bh, ptr %i.bf, align 4, !tbaa !33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: inlinehint uwtable
define internal void @_ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN15InertiaCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %0) #17
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %0) #17
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN15InertiaCallback28internalProcessTriangleIndexEPS2_ii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef readonly captures(none) %1, i32 %2, i32 %3) unnamed_addr #12 align 2 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load float, ptr %i.b, align 4, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load float, ptr %i.d, align 8, !tbaa !27 ; 3 uses
  %i.f = fsub float %i.c, %i.e                    ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load float, ptr %i.h, align 4, !tbaa !27
  %i.j = fsub float %i.i, %i.e                    ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load float, ptr %i.l, align 4, !tbaa !27
  %i.n = fsub float %i.m, %i.e                    ; 9 uses
  %i.o = fneg float %i.n
  %i.p = fmul float %i.j, %i.j
  %i.q = tail call float @llvm.fmuladd.f32(float %i.f, float %i.f, float %i.p)
  %i.r = tail call float @llvm.fmuladd.f32(float %i.n, float %i.n, float %i.q)
  %i.s = fmul float %i.f, %i.j
  %i.t = tail call float @llvm.fmuladd.f32(float %i.f, float %i.j, float %i.s)
  %i.u = tail call float @llvm.fmuladd.f32(float %i.f, float %i.n, float %i.t)
  %i.v = tail call float @llvm.fmuladd.f32(float %i.f, float %i.n, float %i.u)
  %i.w = tail call float @llvm.fmuladd.f32(float %i.j, float %i.n, float %i.v)
  %i.x = tail call float @llvm.fmuladd.f32(float %i.j, float %i.n, float %i.w)
  %i.y = fmul float %i.x, 5.000000e-02
  %i.z = tail call float @llvm.fmuladd.f32(float %i.r, float 1.000000e-01, float %i.y)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load <2 x float>, ptr %i.aa, align 8, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.af = load <2 x float>, ptr %i.ae, align 8, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aj = load <2 x float>, ptr %1, align 4, !tbaa !27
  %i.ak = load <2 x float>, ptr %i.a, align 8, !tbaa !27 ; 3 uses
  %i.al = fsub <2 x float> %i.aj, %i.ak           ; 6 uses
  %i.am = load <2 x float>, ptr %i.g, align 4, !tbaa !27
  %i.an = fsub <2 x float> %i.am, %i.ak           ; 8 uses
  %i.ao = load <2 x float>, ptr %i.k, align 4, !tbaa !27
  %i.ap = fsub <2 x float> %i.ao, %i.ak           ; 5 uses
  %i.aq = extractelement <2 x float> %i.ap, i64 1 ; 11 uses
  %i.ar = fneg float %i.aq
  %i.as = fmul float %i.j, %i.ar
  %i.at = extractelement <2 x float> %i.an, i64 1 ; 11 uses
  %i.au = tail call float @llvm.fmuladd.f32(float %i.at, float %i.n, float %i.as)
  %i.av = extractelement <2 x float> %i.an, i64 0 ; 8 uses
  %i.aw = fmul float %i.av, %i.o
  %i.ax = extractelement <2 x float> %i.ap, i64 0 ; 11 uses
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.j, float %i.ax, float %i.aw)
  %i.az = extractelement <2 x float> %i.al, i64 1 ; 10 uses
  %i.ba = fmul float %i.az, %i.ay
  %i.bb = extractelement <2 x float> %i.al, i64 0 ; 9 uses
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.au, float %i.ba)
  %i.bd = fneg float %i.ax
  %i.be = fmul float %i.at, %i.bd
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.av, float %i.aq, float %i.be)
  %i.bg = tail call noundef float @llvm.fmuladd.f32(float %i.f, float %i.bf, float %i.bc)
  %i.bh = tail call noundef float @llvm.fabs.f32(float %i.bg)
  %foldExtExtBinop = fmul <2 x float> %i.an, %i.an
  %i.bi = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.bb, float %i.bi)
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.ax, float %i.bj)
  %foldExtExtBinop124 = fmul <2 x float> %i.al, %i.an
  %i.bl = extractelement <2 x float> %foldExtExtBinop124, i64 0
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.av, float %i.bl)
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.ax, float %i.bm)
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.ax, float %i.bn)
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.av, float %i.ax, float %i.bo)
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.av, float %i.ax, float %i.bp)
  %i.br = fmul float %i.bq, 5.000000e-02
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.bk, float 1.000000e-01, float %i.br)
  %i.bt = fmul float %i.at, %i.av
  %4 = tail call float @llvm.fmuladd.f32(float %i.az, float %i.bb, float %i.bt)
  %5 = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.ax, float %4)
  %i.bu = fmul float %i.bb, %i.at
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.az, float %i.av, float %i.bu)
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.az, float %i.ax, float %i.bv)
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.aq, float %i.bw)
  %i.by = tail call float @llvm.fmuladd.f32(float %i.at, float %i.ax, float %i.bx)
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.av, float %i.aq, float %i.by)
  %i.ca = fmul float %i.bz, 5.000000e-02
  %6 = tail call float @llvm.fmuladd.f32(float %5, float 1.000000e-01, float %i.ca)
  %i.cb = fmul float %i.at, %i.at
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.az, float %i.az, float %i.cb)
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.aq, float %i.cc)
  %i.ce = fmul float %i.az, %i.at
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.az, float %i.at, float %i.ce)
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.az, float %i.aq, float %i.cf)
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.az, float %i.aq, float %i.cg)
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.at, float %i.aq, float %i.ch)
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.at, float %i.aq, float %i.ci)
  %i.ck = fmul float %i.cj, 5.000000e-02
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.cd, float 1.000000e-01, float %i.ck)
  %i.cm = insertelement <2 x float> poison, float %i.j, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.co = fmul <2 x float> %i.cn, %i.an
  %i.cp = insertelement <2 x float> poison, float %i.f, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cq, <2 x float> %i.al, <2 x float> %i.co)
  %i.cs = insertelement <2 x float> poison, float %i.n, i64 0
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> %i.ap, <2 x float> %i.cr)
  %i.cv = fmul <2 x float> %i.al, %i.cn
  %i.cw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cq, <2 x float> %i.an, <2 x float> %i.cv)
  %i.cx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cq, <2 x float> %i.ap, <2 x float> %i.cw)
  %i.cy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %i.ct, <2 x float> %i.cx)
  %i.cz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cn, <2 x float> %i.ap, <2 x float> %i.cy)
  %i.da = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> %i.ct, <2 x float> %i.cz)
  %i.db = fmul <2 x float> %i.da, splat (float 5.000000e-02)
  %i.dc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cu, <2 x float> splat (float 1.000000e-01), <2 x float> %i.db)
  %i.dd = fmul float %i.bh, f0xBE2AAAAB           ; 5 uses
  %i.de = fmul float %i.dd, %i.bs                 ; 2 uses
  %i.df = fmul float %i.dd, %i.cl                 ; 2 uses
  %i.dg = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.di = fmul <2 x float> %i.dh, %i.dc           ; 3 uses
  %i.dj = fmul float %i.dd, %i.z                  ; 2 uses
  %i.dk = fneg float %i.de
  %i.dl = fneg float %i.df
  %i.dm = fneg float %i.dj
  %i.dn = fsub float %i.dm, %i.df
  %i.do = fsub float %i.dk, %i.dj
  %i.dp = fmul float %i.dd, %6                    ; 2 uses
  %i.dq = fsub float %i.dl, %i.de
  %i.dr = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.ds = insertelement <2 x float> %i.dr, float %i.dp, i64 1
  %i.dt = fadd <2 x float> %i.ds, %i.ab
  store <2 x float> %i.dt, ptr %i.aa, align 8, !tbaa !27
  %i.du = extractelement <2 x float> %i.di, i64 0
  %i.dv = fadd float %i.du, %i.ad
  store float %i.dv, ptr %i.ac, align 8, !tbaa !27
  %i.dw = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.dx = insertelement <2 x float> %i.dw, float %i.do, i64 1
  %i.dy = fadd <2 x float> %i.dx, %i.af
  store <2 x float> %i.dy, ptr %i.ae, align 8, !tbaa !27
  %i.dz = extractelement <2 x float> %i.di, i64 1
  %i.ea = fadd float %i.dz, %i.ah
  store float %i.ea, ptr %i.ag, align 8, !tbaa !27
  %i.eb = load <2 x float>, ptr %i.ai, align 8, !tbaa !27
  %i.ec = fadd <2 x float> %i.di, %i.eb
  store <2 x float> %i.ec, ptr %i.ai, align 8, !tbaa !27
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ee = load float, ptr %i.ed, align 8, !tbaa !27
  %i.ef = fadd float %i.dq, %i.ee
  store float %i.ef, ptr %i.ed, align 8, !tbaa !27
  ret void
}

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #10

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind }
attributes #17 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !21, i64 104}
!11 = !{!"_ZTS25btConvexTriangleMeshShape", !12, i64 0, !21, i64 104}
!12 = !{!"_ZTS34btPolyhedralConvexAabbCachingShape", !13, i64 0, !18, i64 64, !18, i64 80, !20, i64 96}
!13 = !{!"_ZTS23btPolyhedralConvexShape", !14, i64 0}
!14 = !{!"_ZTS21btConvexInternalShape", !15, i64 0, !18, i64 24, !18, i64 40, !19, i64 56, !19, i64 60}
!15 = !{!"_ZTS13btConvexShape", !16, i64 0}
!16 = !{!"_ZTS16btCollisionShape", !5, i64 8, !17, i64 16}
!17 = !{!"any pointer", !6, i64 0}
!18 = !{!"_ZTS9btVector3", !6, i64 0}
!19 = !{!"float", !6, i64 0}
!20 = !{!"bool", !6, i64 0}
!21 = !{!"p1 _ZTS23btStridingMeshInterface", !17, i64 0}
!22 = !{!16, !5, i64 8}
!23 = !{!6, !6, i64 0}
!24 = !{!25, !19, i64 24}
!25 = !{!"_ZTS26LocalSupportVertexCallback", !26, i64 0, !18, i64 8, !19, i64 24, !18, i64 28}
!26 = !{!"_ZTS31btInternalTriangleIndexCallback"}
!27 = !{!19, !19, i64 0}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.unroll.disable"}
!30 = !{i64 0, i64 16, !23}
!31 = !{!32, !20, i64 8}
!32 = !{!"_ZTSZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfE14CenterCallback", !26, i64 0, !20, i64 8, !18, i64 12, !18, i64 28, !19, i64 44}
!33 = !{!32, !19, i64 44}
!34 = !{!14, !19, i64 56}
!35 = !{i8 0, i8 2}
!36 = !{}
end_hunk_0
