Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/shapes?download=true
inline.NumInlined: 6411
inline.NumDeleted: 1459
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4pbrt13BilinearPatch27InteractionFromIntersectionEPKNS_17BilinearPatchMeshEiNS_6Point2IfEEfNS_7Vector3IfEE:bb.a
  %i.ro = shufflevector <2 x float> %i.rn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rp = fdiv <2 x float> %.sroa.045.0.copyload, %i.ro
  %i.rq = fdiv float %.sroa.246.0.copyload, %i.rm
  call void @_ZN4pbrt12RotateFromToENS_7Vector3IfEES1_(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %7, <2 x float> %i.rp, float %i.rq, <2 x float> %i.qb, float %i.qc)
  %i.rr = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.rs = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.rt = load <2 x float>, ptr %7, align 8, !tbaa !28 ; 3 uses
  %i.ru = load <2 x float>, ptr %i.rs, align 8, !tbaa !28 ; 3 uses
  %i.rv = shufflevector <2 x float> %.sroa.01392.1, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.rw = shufflevector <2 x float> %i.ru, <2 x float> %i.rt, <2 x i32> <i32 3, i32 0>
  %i.rx = fmul <2 x float> %i.rv, %i.rw
  %i.ry = shufflevector <2 x float> %i.rt, <2 x float> %i.ru, <2 x i32> <i32 0, i32 3>
  %i.rz = fmul <2 x float> %.sroa.01392.1, %i.ry
  %i.sa = fadd <2 x float> %i.rx, %i.rz
  %i.sb = insertelement <2 x float> poison, float %.sroa.161405.1, i64 0
  %i.sc = shufflevector <2 x float> %i.sb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sd = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.se = load float, ptr %i.sd, align 8, !tbaa !28 ; 2 uses
  %i.sf = fmul float %.sroa.04.0.vec.extract.i997, %i.se
  %i.sg = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !28 ; 2 uses
  %i.si = fmul float %.sroa.04.4.vec.extract.i999, %i.sh
  %i.sj = fadd float %i.sf, %i.si
  %i.sk = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.sl = load float, ptr %i.sk, align 8, !tbaa !28 ; 2 uses
  %i.sm = fmul float %.sroa.161405.1, %i.sl
  %i.sn = fadd float %i.sj, %i.sm
  %i.so = load <6 x float>, ptr %i.rr, align 4, !tbaa !28 ; 3 uses
  %i.sp = shufflevector <6 x float> %i.so, <6 x float> poison, <2 x i32> <i32 1, i32 5> ; 2 uses
  %i.sq = fmul <2 x float> %i.sc, %i.sp
  %i.sr = fadd <2 x float> %i.sa, %i.sq           ; 2 uses
  %i.ss = shufflevector <2 x float> %i.ru, <2 x float> poison, <6 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.st = shufflevector <2 x float> %.sroa.01376.1, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.su = shufflevector <6 x float> %i.ss, <6 x float> %i.so, <2 x i32> <i32 6, i32 0>
  %i.sv = fmul <2 x float> %i.st, %i.su
  %i.sw = shufflevector <6 x float> %i.so, <6 x float> poison, <2 x i32> <i32 poison, i32 4>
  %i.sx = shufflevector <2 x float> %i.rt, <2 x float> %i.sw, <2 x i32> <i32 0, i32 3>
  %i.sy = fmul <2 x float> %.sroa.01376.1, %i.sx
  %i.sz = fadd <2 x float> %i.sv, %i.sy
  %i.ta = insertelement <2 x float> poison, float %.sroa.16.1, i64 0
  %i.tb = shufflevector <2 x float> %i.ta, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tc = fmul <2 x float> %i.tb, %i.sp
  %i.td = fadd <2 x float> %i.sz, %i.tc           ; 2 uses
  %i.te = fmul float %.sroa.01.0.vec.extract.i1002, %i.se
  %i.tf = fmul float %.sroa.01.4.vec.extract.i1004, %i.sh
  %i.tg = fadd float %i.te, %i.tf
  %i.th = fmul float %.sroa.16.1, %i.sl
  %i.ti = fadd float %i.tg, %i.th
  store <2 x float> %i.qb, ptr %i.nr, align 8
  %.sroa.247.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  store float %i.qc, ptr %.sroa.247.0..sroa_idx.i, align 8
  %i.tj = fmul float %i.qc, %.sroa.246.0.copyload ; 2 uses
  %i.tk = fneg float %i.tj
  %i.tl = call noundef float @llvm.fma.f32(float %.sroa.246.0.copyload, float %i.qc, float %i.tk)
  %i.tm = extractelement <2 x float> %i.qb, i64 1
  %i.tn = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i.i1259, float %i.tm, float %i.tj)
  %i.to = fadd float %i.tn, %i.tl
  %i.tp = extractelement <2 x float> %i.qb, i64 0
  %i.tq = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i.i1258, float %i.tp, float %i.to)
  %i.tr = fcmp olt float %i.tq, 0.000000e+00      ; 2 uses
  %i.ts = fneg <2 x float> %.sroa.045.0.copyload
  %i.tt = fneg float %.sroa.246.0.copyload
  %.sroa.0.4.vec.insert.i.pn.i.i = select i1 %i.tr, <2 x float> %i.ts, <2 x float> %.sroa.045.0.copyload
  %.pn.i.i = select i1 %i.tr, float %i.tt, float %.sroa.246.0.copyload
  store <2 x float> %.sroa.0.4.vec.insert.i.pn.i.i, ptr %i.nk, align 8
  store float %.pn.i.i, ptr %.sroa.214.0..sroa_idx.i.i.i, align 8
  store <2 x float> %i.sr, ptr %i.nt, align 4
  store <2 x float> %i.td, ptr %i.nu, align 8
  store <2 x float> %i.ra, ptr %i.nv, align 4
  store float %i.qn, ptr %.sroa.51463.0..sroa_idx1464, align 4
  store <2 x float> %i.rg, ptr %i.nw, align 8
  store float %i.rf, ptr %.sroa.51468.0..sroa_idx1469, align 8
  %.promoted = load <2 x float>, ptr %i.nu, align 8
  %.promoted1573 = load <2 x float>, ptr %i.nt, align 1
  br label %bb.v

bb.v:                                             ; preds = %.critedge.i, %bb.u
  %i.tu = phi <2 x float> [ %i.ul, %.critedge.i ], [ %.promoted1573, %bb.u ]
  %i.tv = phi <2 x float> [ %i.un, %.critedge.i ], [ %.promoted, %bb.u ] ; 4 uses
  %i.tw = phi float [ %i.uo, %.critedge.i ], [ %i.ti, %bb.u ] ; 4 uses
  %i.tx = phi float [ %i.um, %.critedge.i ], [ %i.sn, %bb.u ] ; 4 uses
  %i.ty = phi <2 x float> [ %i.ul, %.critedge.i ], [ %i.sr, %bb.u ] ; 3 uses
  %i.tz = phi <2 x float> [ %i.un, %.critedge.i ], [ %i.td, %bb.u ]
  %i.ua = fmul <2 x float> %i.ty, %i.ty           ; 2 uses
  %shift1564 = shufflevector <2 x float> %i.ua, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1565 = fadd <2 x float> %i.ua, %shift1564
  %i.ub = extractelement <2 x float> %foldExtExtBinop1565, i64 0
  %i.uc = fmul float %i.tx, %i.tx
  %i.ud = fadd float %i.uc, %i.ub
  %i.ue = fcmp ogt float %i.ud, 1.000000e+16
  br i1 %i.ue, label %.critedge.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.uf = fmul <2 x float> %i.tv, %i.tv           ; 2 uses
  %shift1567 = shufflevector <2 x float> %i.uf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1568 = fadd <2 x float> %i.uf, %shift1567
  %i.ug = extractelement <2 x float> %foldExtExtBinop1568, i64 0
  %i.uh = fmul float %i.tw, %i.tw
  %i.ui = fadd float %i.uh, %i.ug
  %i.uj = fcmp ogt float %i.ui, 1.000000e+16
  br i1 %i.uj, label %.critedge.i, label %_ZN4pbrt18SurfaceInteraction18SetShadingGeometryENS_7Normal3IfEENS_7Vector3IfEES4_S2_S2_b.exit

.critedge.i:                                      ; preds = %bb.w, %bb.v
  %i.uk = phi <2 x float> [ %i.tz, %bb.v ], [ %i.tv, %bb.w ]
  %i.ul = fdiv <2 x float> %i.ty, splat (float 1.000000e+08) ; 2 uses
  %i.um = fdiv float %i.tx, 1.000000e+08
  %i.un = fdiv <2 x float> %i.uk, splat (float 1.000000e+08) ; 2 uses
  %i.uo = fdiv float %i.tw, 1.000000e+08
  br label %bb.v, !llvm.loop !2

_ZN4pbrt18SurfaceInteraction18SetShadingGeometryENS_7Normal3IfEENS_7Vector3IfEES4_S2_S2_b.exit: ; preds = %bb.w
  store <2 x float> %i.tv, ptr %i.nu, align 8
  store <2 x float> %i.tu, ptr %i.nt, align 1
  store float %i.tx, ptr %.sroa.439.0..sroa_idx40.i.i, align 4
  store float %i.tw, ptr %.sroa.4.0..sroa_idx33.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.x

bb.x:                                             ; preds = %bb.t, %_ZN4pbrt18SurfaceInteraction18SetShadingGeometryENS_7Normal3IfEENS_7Vector3IfEES4_S2_S2_b.exit, %_ZN4pbrt18SurfaceInteractionC2ENS_8Point3fiENS_6Point2IfEENS_7Vector3IfEES5_S5_NS_7Normal3IfEES7_fbi.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4pbrt13BilinearPatch10IntersectPERKNS_3RayEf(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, float noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.pstd::optional.117", align 4 ; 4 uses
  %4 = alloca %"class.pbrt::Point3", align 8      ; 2 uses
  %i.a = load ptr, ptr @_ZN4pbrt13BilinearPatch9allMeshesE, align 8, !tbaa !206
  %i.b = load i32, ptr %0, align 4, !tbaa !215
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !210
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.c
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !212  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !217
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !216
  %i.l = shl nsw i32 %i.k, 2
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.m ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !218  ; 4 uses
  %i.q = load i32, ptr %i.n, align 4, !tbaa !89
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [12 x i8], ptr %i.p, i64 %i.r ; 2 uses
  %.sroa.015.0.copyload = load <2 x float>, ptr %i.s, align 4
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.416.0.copyload = load float, ptr %.sroa.416.0..sroa_idx, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !89
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [12 x i8], ptr %i.p, i64 %i.v ; 2 uses
  %.sroa.013.0.copyload = load <2 x float>, ptr %i.w, align 4
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.414.0.copyload = load float, ptr %.sroa.414.0..sroa_idx, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !89
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [12 x i8], ptr %i.p, i64 %i.z ; 2 uses
  %.sroa.012.0.copyload = load <2 x float>, ptr %i.aa, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !89
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [12 x i8], ptr %i.p, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %i.ae, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @_ZN4pbrt22IntersectBilinearPatchERKNS_3RayEfNS_6Point3IfEES4_S4_S4_(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.117") align 4 %3, ptr noundef nonnull align 8 dereferenceable(40) %1, float noundef %2, <2 x float> %.sroa.015.0.copyload, float %.sroa.416.0.copyload, <2 x float> %.sroa.013.0.copyload, float %.sroa.414.0.copyload, <2 x float> %.sroa.012.0.copyload, float %.sroa.4.0.copyload, ptr noundef nonnull byval(%"class.pbrt::Point3") align 8 %4)
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !223, !range !30, !noundef !31
  %i.ah = trunc nuw i8 %i.ag to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret i1 %i.ah
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt13BilinearPatch6SampleENS_6Point2IfEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pstd::optional") align 8 captures(none) initializes((0, 60), (64, 84), (88, 89)) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, <2 x float> %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 6 uses
  %i.b = load ptr, ptr @_ZN4pbrt13BilinearPatch9allMeshesE, align 8, !tbaa !206
  %i.c = load i32, ptr %1, align 4, !tbaa !215
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !210
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !212  ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !217
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !216
  %i.m = shl nsw i32 %i.l, 2
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.n ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !218  ; 4 uses
  %i.r = load i32, ptr %i.o, align 4, !tbaa !89
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [12 x i8], ptr %i.q, i64 %i.s ; 2 uses
  %.sroa.0435.0.copyload = load <2 x float>, ptr %i.t, align 4 ; 10 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.10.0.copyload = load float, ptr %.sroa.10.0..sroa_idx, align 4 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !89
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [12 x i8], ptr %i.q, i64 %i.w ; 2 uses
  %.sroa.0806.0.copyload = load <2 x float>, ptr %i.x, align 4 ; 8 uses
  %.sroa.12816.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.12816.0.copyload = load float, ptr %.sroa.12816.0..sroa_idx, align 4 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !89
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [12 x i8], ptr %i.q, i64 %i.aa ; 2 uses
  %.sroa.0794.0.copyload = load <2 x float>, ptr %i.ab, align 4 ; 8 uses
  %.sroa.12804.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.12804.0.copyload = load float, ptr %.sroa.12804.0..sroa_idx, align 4 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 12 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !89
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [12 x i8], ptr %i.q, i64 %i.ae ; 2 uses
  %.sroa.0774.0.copyload = load <2 x float>, ptr %i.af, align 4 ; 6 uses
  %.sroa.14790.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.14790.0.copyload = load float, ptr %.sroa.14790.0..sroa_idx, align 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store float 1.000000e+00, ptr %i.a, align 4, !tbaa !28
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !227 ; 2 uses
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = call <2 x float> @_ZNK4pbrt19PiecewiseConstant2D6SampleENS_6Point2IfEEPfPNS1_IiEE(ptr noundef nonnull align 8 dereferenceable(128) %i.ah, <2 x float> %2, ptr noundef nonnull %i.a, ptr noundef null)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.aj = tail call noundef zeroext i1 @_ZNK4pbrt13BilinearPatch11IsRectangleEPKNS_17BilinearPatchMeshE(ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull %i.h)
  br i1 %i.aj, label %bb.h, label %_ZN4pstd5arrayIfLi4EEC2ESt16initializer_listIfE.exit

_ZN4pstd5arrayIfLi4EEC2ESt16initializer_listIfE.exit: ; preds = %bb.c
  %i.ak = insertelement <2 x float> poison, float %.sroa.12804.0.copyload, i64 0
  %i.al = insertelement <2 x float> %i.ak, float %.sroa.12816.0.copyload, i64 1 ; 3 uses
  %i.am = insertelement <2 x float> poison, float %.sroa.10.0.copyload, i64 0 ; 2 uses
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = fsub <2 x float> %i.al, %i.an           ; 5 uses
  %i.ap = extractelement <2 x float> %i.ao, i64 1
  %i.aq = insertelement <2 x float> poison, float %.sroa.14790.0.copyload, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = fsub <2 x float> %i.ar, %i.al           ; 5 uses
  %i.at = shufflevector <2 x float> %.sroa.0794.0.copyload, <2 x float> %.sroa.0806.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.au = shufflevector <2 x float> %.sroa.0435.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = fsub <2 x float> %i.at, %i.au           ; 5 uses
  %i.aw = extractelement <2 x float> %i.av, i64 1 ; 2 uses
  %i.ax = shufflevector <2 x float> %.sroa.0794.0.copyload, <2 x float> %.sroa.0806.0.copyload, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ay = shufflevector <2 x float> %.sroa.0435.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.az = fsub <2 x float> %i.ax, %i.ay           ; 4 uses
  %i.ba = extractelement <2 x float> %i.ao, i64 0 ; 2 uses
  %i.bb = fneg <2 x float> %i.ao
  %i.bc = fmul float %i.aw, %i.ba                 ; 2 uses
  %i.bd = fneg float %i.bc
  %i.be = extractelement <2 x float> %i.av, i64 0
  %i.bf = tail call noundef float @llvm.fma.f32(float %i.ap, float %i.be, float %i.bd)
  %i.bg = fneg float %i.aw
  %i.bh = fneg <2 x float> %i.av
  %i.bi = tail call noundef float @llvm.fma.f32(float %i.bg, float %i.ba, float %i.bc)
  %i.bj = fadd float %i.bf, %i.bi                 ; 2 uses
  %i.bk = fneg <2 x float> %i.az
  %i.bl = fmul float %i.bj, %i.bj
  %i.bm = shufflevector <2 x float> %.sroa.0806.0.copyload, <2 x float> %i.al, <2 x i32> <i32 1, i32 3>
  %3 = shufflevector <2 x float> %.sroa.0435.0.copyload, <2 x float> %i.am, <2 x i32> <i32 1, i32 2>
  %4 = fsub <2 x float> %i.bm, %3                 ; 2 uses
  %5 = fsub <2 x float> %.sroa.0794.0.copyload, %.sroa.0435.0.copyload ; 2 uses
  %i.bn = fmul <2 x float> %4, %5                 ; 2 uses
  %i.bo = fneg <2 x float> %i.bn
  %6 = insertelement <2 x float> %.sroa.0806.0.copyload, float %.sroa.12804.0.copyload, i64 1
  %7 = insertelement <2 x float> %.sroa.0435.0.copyload, float %.sroa.10.0.copyload, i64 1
  %8 = fsub <2 x float> %6, %7
  %i.bp = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.az, <2 x float> %8, <2 x float> %i.bo)
  %i.bq = fneg <2 x float> %4
  %i.br = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.bq, <2 x float> %5, <2 x float> %i.bn)
  %i.bs = fadd <2 x float> %i.bp, %i.br           ; 2 uses
  %i.bt = fmul <2 x float> %i.bs, %i.bs           ; 2 uses
  %i.bu = extractelement <2 x float> %i.bt, i64 1
  %i.bv = fadd float %i.bu, %i.bl
  %i.bw = extractelement <2 x float> %i.bt, i64 0
  %i.bx = fadd float %i.bw, %i.bv
  %sqrt820 = tail call float @llvm.sqrt.f32(float %i.bx) ; 3 uses
  %i.by = shufflevector <2 x float> %.sroa.0774.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fsub <2 x float> %i.by, %i.at           ; 5 uses
  %i.ca = shufflevector <2 x float> %.sroa.0774.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cb = fsub <2 x float> %i.ca, %i.ax           ; 5 uses
  %i.cc = fmul <2 x float> %i.ao, %i.cb           ; 2 uses
  %i.cd = fneg <2 x float> %i.cc
  %i.ce = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.az, <2 x float> %i.as, <2 x float> %i.cd)
  %i.cf = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.bb, <2 x float> %i.cb, <2 x float> %i.cc)
  %i.cg = fadd <2 x float> %i.ce, %i.cf           ; 2 uses
  %i.ch = fmul <2 x float> %i.av, %i.as           ; 2 uses
  %i.ci = fneg <2 x float> %i.ch
  %i.cj = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ao, <2 x float> %i.bz, <2 x float> %i.ci)
  %i.ck = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.bh, <2 x float> %i.as, <2 x float> %i.ch)
  %i.cl = fadd <2 x float> %i.cj, %i.ck           ; 2 uses
  %i.cm = fmul <2 x float> %i.az, %i.bz           ; 2 uses
  %i.cn = fneg <2 x float> %i.cm
  %i.co = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.av, <2 x float> %i.cb, <2 x float> %i.cn)
  %i.cp = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.bk, <2 x float> %i.bz, <2 x float> %i.cm)
  %i.cq = fadd <2 x float> %i.co, %i.cp           ; 2 uses
  %i.cr = fmul <2 x float> %i.cg, %i.cg
  %i.cs = fmul <2 x float> %i.cl, %i.cl
  %i.ct = fadd <2 x float> %i.cr, %i.cs
  %i.cu = fmul <2 x float> %i.cq, %i.cq
  %i.cv = fadd <2 x float> %i.cu, %i.ct
  %i.cw = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.cv) ; 4 uses
  %i.cx = extractelement <2 x float> %i.cb, i64 0 ; 3 uses
  %i.cy = extractelement <2 x float> %i.as, i64 1 ; 3 uses
  %i.cz = fmul float %i.cy, %i.cx                 ; 2 uses
  %i.da = fneg float %i.cz
  %i.db = extractelement <2 x float> %i.cb, i64 1 ; 3 uses
  %i.dc = extractelement <2 x float> %i.as, i64 0 ; 3 uses
  %i.dd = tail call noundef float @llvm.fma.f32(float %i.db, float %i.dc, float %i.da)
  %i.de = fneg float %i.cy
  %i.df = tail call noundef float @llvm.fma.f32(float %i.de, float %i.cx, float %i.cz)
  %i.dg = fadd float %i.dd, %i.df                 ; 2 uses
  %i.dh = extractelement <2 x float> %i.bz, i64 1 ; 3 uses
  %i.di = fmul float %i.dh, %i.dc                 ; 2 uses
  %i.dj = fneg float %i.di
  %i.dk = extractelement <2 x float> %i.bz, i64 0 ; 3 uses
  %i.dl = tail call noundef float @llvm.fma.f32(float %i.cy, float %i.dk, float %i.dj)
  %i.dm = fneg float %i.dh
  %i.dn = tail call noundef float @llvm.fma.f32(float %i.dm, float %i.dc, float %i.di)
  %i.do = fadd float %i.dl, %i.dn                 ; 2 uses
  %i.dp = fmul float %i.db, %i.dk                 ; 2 uses
  %i.dq = fneg float %i.dp
  %i.dr = tail call noundef float @llvm.fma.f32(float %i.dh, float %i.cx, float %i.dq)
  %i.ds = fneg float %i.db
  %i.dt = tail call noundef float @llvm.fma.f32(float %i.ds, float %i.dk, float %i.dp)
  %i.du = fadd float %i.dr, %i.dt                 ; 2 uses
  %i.dv = fmul float %i.dg, %i.dg
  %i.dw = fmul float %i.do, %i.do
  %i.dx = fadd float %i.dv, %i.dw
  %i.dy = fmul float %i.du, %i.du
  %i.dz = fadd float %i.dy, %i.dx
  %sqrt = tail call float @llvm.sqrt.f32(float %i.dz) ; 4 uses
  %.sroa.012.4.vec.extract.i = extractelement <2 x float> %2, i64 1 ; 4 uses
  %i.ea = extractelement <2 x float> %i.cw, i64 1 ; 2 uses
  %i.eb = fadd float %sqrt820, %i.ea              ; 6 uses
  %i.ec = fcmp oeq float %.sroa.012.4.vec.extract.i, 0.000000e+00
  %i.ed = fcmp oeq float %i.eb, 0.000000e+00
  %or.cond.i.i = and i1 %i.ec, %i.ed
  br i1 %or.cond.i.i, label %_ZN4pbrt12SampleLinearEfff.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4pstd5arrayIfLi4EEC2ESt16initializer_listIfE.exit
  %i.ee = extractelement <2 x float> %i.cw, i64 0
  %i.ef = fadd float %i.ee, %sqrt                 ; 3 uses
  %i.eg = fadd float %i.eb, %i.ef
  %i.eh = fmul float %.sroa.012.4.vec.extract.i, %i.eg
  %i.ei = fmul float %i.eb, %i.eb
  %i.ej = fmul float %i.ef, %i.ef
  %i.ek = fsub float 1.000000e+00, %.sroa.012.4.vec.extract.i
  %i.el = fmul float %i.ek, %i.ei
  %i.em = fmul float %.sroa.012.4.vec.extract.i, %i.ej
  %i.en = fadd float %i.el, %i.em
  %i.eo = tail call noundef float @sqrtf(float noundef %i.en) #32
  %i.ep = fadd float %i.eb, %i.eo
  %i.eq = fdiv float %i.eh, %i.ep                 ; 2 uses
  %i.er = fcmp ogt float %i.eq, f0x3F7FFFFF
  %.sroa.speculated.i.i = select i1 %i.er, float f0x3F7FFFFF, float %i.eq
  br label %_ZN4pbrt12SampleLinearEfff.exit.i

_ZN4pbrt12SampleLinearEfff.exit.i:                ; preds = %bb.d, %_ZN4pstd5arrayIfLi4EEC2ESt16initializer_listIfE.exit
  %.0.i.i = phi float [ %.sroa.speculated.i.i, %bb.d ], [ 0.000000e+00, %_ZN4pstd5arrayIfLi4EEC2ESt16initializer_listIfE.exit ] ; 8 uses
  %.sroa.012.0.vec.extract.i = extractelement <2 x float> %2, i64 0 ; 4 uses
  %i.es = fsub float 1.000000e+00, %.0.i.i        ; 4 uses
  %i.et = fmul float %sqrt820, %i.es
  %i.eu = extractelement <2 x float> %i.cw, i64 0 ; 2 uses
  %i.ev = fmul float %i.eu, %.0.i.i
  %i.ew = fadd float %i.ev, %i.et                 ; 5 uses
  %i.ex = fcmp oeq float %.sroa.012.0.vec.extract.i, 0.000000e+00
  %i.ey = fcmp oeq float %i.ew, 0.000000e+00
  %or.cond.i1.i = and i1 %i.ex, %i.ey
  br i1 %or.cond.i1.i, label %_ZN4pbrt14SampleBilinearENS_6Point2IfEEN4pstd4spanIKfEE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4pbrt12SampleLinearEfff.exit.i
  %i.ez = fmul float %i.ea, %i.es
  %i.fa = fmul float %sqrt, %.0.i.i
  %i.fb = fadd float %i.fa, %i.ez                 ; 3 uses
  %i.fc = fadd float %i.ew, %i.fb
  %i.fd = fmul float %.sroa.012.0.vec.extract.i, %i.fc
  %i.fe = fmul float %i.ew, %i.ew
  %i.ff = fmul float %i.fb, %i.fb
  %i.fg = fsub float 1.000000e+00, %.sroa.012.0.vec.extract.i
  %i.fh = fmul float %i.fg, %i.fe
  %i.fi = fmul float %.sroa.012.0.vec.extract.i, %i.ff
  %i.fj = fadd float %i.fh, %i.fi
  %i.fk = tail call noundef float @sqrtf(float noundef %i.fj) #32
  %i.fl = fadd float %i.ew, %i.fk
  %i.fm = fdiv float %i.fd, %i.fl                 ; 2 uses
  %i.fn = fcmp ogt float %i.fm, f0x3F7FFFFF
  %.sroa.speculated.i2.i = select i1 %i.fn, float f0x3F7FFFFF, float %i.fm
  br label %_ZN4pbrt14SampleBilinearENS_6Point2IfEEN4pstd4spanIKfEE.exit

_ZN4pbrt14SampleBilinearENS_6Point2IfEEN4pstd4spanIKfEE.exit: ; preds = %_ZN4pbrt12SampleLinearEfff.exit.i, %bb.e
  %.0.i3.i = phi float [ %.sroa.speculated.i2.i, %bb.e ], [ 0.000000e+00, %_ZN4pbrt12SampleLinearEfff.exit.i ] ; 6 uses
  %i.fo = insertelement <2 x float> poison, float %.0.i3.i, i64 0
  %.sroa.013.0.vec.insert.i = insertelement <2 x float> %i.fo, float %.0.i.i, i64 1
  %i.fp = fcmp olt float %.0.i3.i, 0.000000e+00
  %i.fq = fcmp ogt float %.0.i3.i, 1.000000e+00
  %or.cond.i = or i1 %i.fp, %i.fq
  %i.fr = fcmp olt float %.0.i.i, 0.000000e+00
  %i.fs = fcmp ogt float %.0.i.i, 1.000000e+00
  %i.ft = or i1 %i.fr, %i.fs
  %or.cond8.i = or i1 %i.ft, %or.cond.i
  br i1 %or.cond8.i, label %_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4pbrt14SampleBilinearENS_6Point2IfEEN4pstd4spanIKfEE.exit
  %i.fu = fadd float %i.eb, %i.eu
  %i.fv = fadd float %i.fu, %sqrt                 ; 2 uses
  %i.fw = fcmp oeq float %i.fv, 0.000000e+00
  br i1 %i.fw, label %_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fx = fsub float 1.000000e+00, %.0.i3.i       ; 2 uses
  %i.fy = fmul float %i.es, %i.fx
  %i.fz = fmul float %sqrt820, %i.fy
  %i.ga = insertelement <2 x float> poison, float %.0.i.i, i64 0
  %i.gb = insertelement <2 x float> %i.ga, float %i.es, i64 1
  %i.gc = insertelement <2 x float> poison, float %i.fx, i64 0
  %i.gd = insertelement <2 x float> %i.gc, float %.0.i3.i, i64 1
  %i.ge = fmul <2 x float> %i.gb, %i.gd
  %i.gf = fmul <2 x float> %i.cw, %i.ge           ; 2 uses
  %i.gg = extractelement <2 x float> %i.gf, i64 1
  %i.gh = fadd float %i.gg, %i.fz
  %i.gi = extractelement <2 x float> %i.gf, i64 0
  %i.gj = fadd float %i.gi, %i.gh
  %i.gk = fmul float %.0.i.i, %.0.i3.i
  %i.gl = fmul float %sqrt, %i.gk
  %i.gm = fadd float %i.gl, %i.gj
  %i.gn = fmul float %i.gm, 4.000000e+00
  %i.go = fdiv float %i.gn, %i.fv
  br label %_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit

_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit: ; preds = %_ZN4pbrt14SampleBilinearENS_6Point2IfEEN4pstd4spanIKfEE.exit, %bb.f, %bb.g
  %.0.i = phi float [ %i.go, %bb.g ], [ 0.000000e+00, %_ZN4pbrt14SampleBilinearENS_6Point2IfEEN4pstd4spanIKfEE.exit ], [ 1.000000e+00, %bb.f ]
  store float %.0.i, ptr %i.a, align 4, !tbaa !28
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit, %bb.b
  %.sroa.0753.0 = phi <2 x float> [ %i.ai, %bb.b ], [ %.sroa.013.0.vec.insert.i, %_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit ], [ %2, %bb.c ] ; 8 uses
  %.sroa.0753.4.vec.extract = extractelement <2 x float> %.sroa.0753.0, i64 1 ; 7 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0435.0.copyload, i64 0
  %.sroa.0.0.vec.extract.i34.i = extractelement <2 x float> %.sroa.0794.0.copyload, i64 0
  %.sroa.0753.0.vec.extract = extractelement <2 x float> %.sroa.0753.0, i64 0 ; 4 uses
  %i.gp = fsub float 1.000000e+00, %.sroa.0753.4.vec.extract ; 7 uses
  %i.gq = insertelement <2 x float> poison, float %i.gp, i64 0
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.gs = fmul <2 x float> %.sroa.0435.0.copyload, %i.gr
  %i.gt = shufflevector <2 x float> %.sroa.0435.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gu = insertelement <2 x float> %i.gt, float %.sroa.10.0.copyload, i64 1 ; 2 uses
  %i.gv = fmul <2 x float> %i.gu, %i.gr
  %i.gw = shufflevector <2 x float> %.sroa.0753.0, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 6 uses
  %i.gx = fmul <2 x float> %.sroa.0794.0.copyload, %i.gw
  %i.gy = shufflevector <2 x float> %.sroa.0794.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gz = insertelement <2 x float> %i.gy, float %.sroa.12804.0.copyload, i64 1 ; 2 uses
  %i.ha = fmul <2 x float> %i.gz, %i.gw
  %i.hb = fadd <2 x float> %i.gx, %i.gs           ; 3 uses
  %i.hc = fadd <2 x float> %i.ha, %i.gv           ; 2 uses
  %i.hd = fmul <2 x float> %.sroa.0806.0.copyload, %i.gr
  %i.he = shufflevector <2 x float> %.sroa.0806.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hf = insertelement <2 x float> %i.he, float %.sroa.12816.0.copyload, i64 1 ; 2 uses
  %i.hg = fmul <2 x float> %i.hf, %i.gr
  %i.hh = fmul <2 x float> %.sroa.0774.0.copyload, %i.gw
  %i.hi = shufflevector <2 x float> %.sroa.0774.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hj = insertelement <2 x float> %i.hi, float %.sroa.14790.0.copyload, i64 1 ; 3 uses
  %i.hk = fmul <2 x float> %i.hj, %i.gw
  %i.hl = fadd <2 x float> %i.hh, %i.hd           ; 3 uses
  %i.hm = fadd <2 x float> %i.hk, %i.hg           ; 2 uses
  %i.hn = fsub float 1.000000e+00, %.sroa.0753.0.vec.extract ; 9 uses
  %i.ho = extractelement <2 x float> %i.hb, i64 0
  %i.hp = fmul float %i.hn, %i.ho
  %i.hq = extractelement <2 x float> %i.hb, i64 1
  %i.hr = fmul float %i.hn, %i.hq
end_hunk_0
