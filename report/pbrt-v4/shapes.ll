Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/shapes?download=true
inline.NumInlined: 6411
inline.NumDeleted: 1459
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4pbrt13BilinearPatch27InteractionFromIntersectionEPKNS_17BilinearPatchMeshEiNS_6Point2IfEEfNS_7Vector3IfEE:bb.a
  %i.sg = fadd float %i.sc, %i.sf
  %i.sh = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.si = load float, ptr %i.sh, align 8, !tbaa !28 ; 2 uses
  %i.sj = fmul float %.sroa.161407.1, %i.si
  %i.sk = fadd float %i.sg, %i.sj
  %i.sl = load <6 x float>, ptr %i.ro, align 4, !tbaa !28 ; 3 uses
  %i.sm = shufflevector <6 x float> %i.sl, <6 x float> poison, <2 x i32> <i32 1, i32 5> ; 2 uses
  %i.sn = fmul <2 x float> %i.rz, %i.sm
  %i.so = fadd <2 x float> %i.rx, %i.sn           ; 2 uses
  %i.sp = shufflevector <2 x float> %i.rr, <2 x float> poison, <6 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sq = shufflevector <2 x float> %.sroa.01378.1, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.sr = shufflevector <6 x float> %i.sp, <6 x float> %i.sl, <2 x i32> <i32 6, i32 0>
  %i.ss = fmul <2 x float> %i.sq, %i.sr
  %i.st = shufflevector <6 x float> %i.sl, <6 x float> poison, <2 x i32> <i32 poison, i32 4>
  %i.su = shufflevector <2 x float> %i.rq, <2 x float> %i.st, <2 x i32> <i32 0, i32 3>
  %i.sv = fmul <2 x float> %.sroa.01378.1, %i.su
  %i.sw = fadd <2 x float> %i.ss, %i.sv
  %i.sx = insertelement <2 x float> poison, float %.sroa.16.1, i64 0
  %i.sy = shufflevector <2 x float> %i.sx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sz = fmul <2 x float> %i.sy, %i.sm
  %i.ta = fadd <2 x float> %i.sw, %i.sz           ; 2 uses
  %i.tb = fmul float %.sroa.01.0.vec.extract.i1002, %i.sb
  %i.tc = fmul float %.sroa.01.4.vec.extract.i1004, %i.se
  %i.td = fadd float %i.tb, %i.tc
  %i.te = fmul float %.sroa.16.1, %i.si
  %i.tf = fadd float %i.td, %i.te
  store <2 x float> %i.pz, ptr %i.nq, align 8
  %.sroa.247.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  store float %i.qa, ptr %.sroa.247.0..sroa_idx.i, align 8
  %.sroa.229.0.copyload.i = load float, ptr %.sroa.214.0..sroa_idx.i.i.i, align 8 ; 4 uses
  %i.tg = fmul float %i.qa, %.sroa.229.0.copyload.i ; 2 uses
  %i.th = fneg float %i.tg
  %i.ti = call noundef float @llvm.fma.f32(float %.sroa.229.0.copyload.i, float %i.qa, float %i.th)
  %i.tj = extractelement <2 x float> %i.pz, i64 1
  %i.tk = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i.i1260, float %i.tj, float %i.tg)
  %i.tl = fadd float %i.tk, %i.ti
  %i.tm = extractelement <2 x float> %i.pz, i64 0
  %i.tn = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i.i1259, float %i.tm, float %i.tl)
  %i.to = fcmp olt float %i.tn, 0.000000e+00      ; 2 uses
  %i.tp = fneg <2 x float> %.sroa.045.0.copyload
  %i.tq = fneg float %.sroa.229.0.copyload.i
  %.sroa.0.4.vec.insert.i.pn.i.i = select i1 %i.to, <2 x float> %i.tp, <2 x float> %.sroa.045.0.copyload
  %.pn.i.i = select i1 %i.to, float %i.tq, float %.sroa.229.0.copyload.i
  store <2 x float> %.sroa.0.4.vec.insert.i.pn.i.i, ptr %i.nj, align 8
  store float %.pn.i.i, ptr %.sroa.214.0..sroa_idx.i.i.i, align 8
  store <2 x float> %i.so, ptr %i.ns, align 4
  store <2 x float> %i.ta, ptr %i.nt, align 8
  store <2 x float> %i.qy, ptr %i.nu, align 4
  store float %i.ql, ptr %.sroa.51465.0..sroa_idx1466, align 4
  store <2 x float> %i.re, ptr %i.nv, align 8
  store float %i.rd, ptr %.sroa.51470.0..sroa_idx1471, align 8
  %.promoted = load <2 x float>, ptr %i.nt, align 8
  %.promoted1575 = load <2 x float>, ptr %i.ns, align 1
  br label %bb.v

bb.v:                                             ; preds = %.critedge.i, %bb.u
  %i.tr = phi <2 x float> [ %i.ui, %.critedge.i ], [ %.promoted1575, %bb.u ]
  %i.ts = phi <2 x float> [ %i.uk, %.critedge.i ], [ %.promoted, %bb.u ] ; 4 uses
  %i.tt = phi float [ %i.ul, %.critedge.i ], [ %i.tf, %bb.u ] ; 4 uses
  %i.tu = phi float [ %i.uj, %.critedge.i ], [ %i.sk, %bb.u ] ; 4 uses
  %i.tv = phi <2 x float> [ %i.ui, %.critedge.i ], [ %i.so, %bb.u ] ; 3 uses
  %i.tw = phi <2 x float> [ %i.uk, %.critedge.i ], [ %i.ta, %bb.u ]
  %i.tx = fmul <2 x float> %i.tv, %i.tv           ; 2 uses
  %shift1566 = shufflevector <2 x float> %i.tx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1567 = fadd <2 x float> %i.tx, %shift1566
  %i.ty = extractelement <2 x float> %foldExtExtBinop1567, i64 0
  %i.tz = fmul float %i.tu, %i.tu
  %i.ua = fadd float %i.tz, %i.ty
  %i.ub = fcmp ogt float %i.ua, 1.000000e+16
  br i1 %i.ub, label %.critedge.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.uc = fmul <2 x float> %i.ts, %i.ts           ; 2 uses
  %shift1569 = shufflevector <2 x float> %i.uc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1570 = fadd <2 x float> %i.uc, %shift1569
  %i.ud = extractelement <2 x float> %foldExtExtBinop1570, i64 0
  %i.ue = fmul float %i.tt, %i.tt
  %i.uf = fadd float %i.ue, %i.ud
  %i.ug = fcmp ogt float %i.uf, 1.000000e+16
  br i1 %i.ug, label %.critedge.i, label %_ZN4pbrt18SurfaceInteraction18SetShadingGeometryENS_7Normal3IfEENS_7Vector3IfEES4_S2_S2_b.exit

.critedge.i:                                      ; preds = %bb.w, %bb.v
  %i.uh = phi <2 x float> [ %i.tw, %bb.v ], [ %i.ts, %bb.w ]
  %i.ui = fdiv <2 x float> %i.tv, splat (float 1.000000e+08) ; 2 uses
  %i.uj = fdiv float %i.tu, 1.000000e+08
  %i.uk = fdiv <2 x float> %i.uh, splat (float 1.000000e+08) ; 2 uses
  %i.ul = fdiv float %i.tt, 1.000000e+08
  br label %bb.v, !llvm.loop !2

_ZN4pbrt18SurfaceInteraction18SetShadingGeometryENS_7Normal3IfEENS_7Vector3IfEES4_S2_S2_b.exit: ; preds = %bb.w
  store <2 x float> %i.ts, ptr %i.nt, align 8
  store <2 x float> %i.tr, ptr %i.ns, align 1
  store float %i.tu, ptr %.sroa.439.0..sroa_idx40.i.i, align 4
  store float %i.tt, ptr %.sroa.4.0..sroa_idx33.i.i, align 8
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
  %.sroa.0810.0.copyload = load <2 x float>, ptr %i.x, align 4 ; 8 uses
  %.sroa.12820.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.12820.0.copyload = load float, ptr %.sroa.12820.0..sroa_idx, align 4 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !89
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [12 x i8], ptr %i.q, i64 %i.aa ; 2 uses
  %.sroa.0798.0.copyload = load <2 x float>, ptr %i.ab, align 4 ; 8 uses
  %.sroa.12808.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.12808.0.copyload = load float, ptr %.sroa.12808.0..sroa_idx, align 4 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 12 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !89
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [12 x i8], ptr %i.q, i64 %i.ae ; 2 uses
  %.sroa.0778.0.copyload = load <2 x float>, ptr %i.af, align 4 ; 7 uses
  %.sroa.14794.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.14794.0.copyload = load float, ptr %.sroa.14794.0..sroa_idx, align 4 ; 3 uses
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
  %i.ak = insertelement <2 x float> poison, float %.sroa.12808.0.copyload, i64 0
  %i.al = insertelement <2 x float> %i.ak, float %.sroa.12820.0.copyload, i64 1 ; 3 uses
  %i.am = insertelement <2 x float> poison, float %.sroa.10.0.copyload, i64 0 ; 2 uses
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = fsub <2 x float> %i.al, %i.an           ; 5 uses
  %i.ap = extractelement <2 x float> %i.ao, i64 1
  %i.aq = insertelement <2 x float> poison, float %.sroa.14794.0.copyload, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = fsub <2 x float> %i.ar, %i.al           ; 5 uses
  %i.at = shufflevector <2 x float> %.sroa.0798.0.copyload, <2 x float> %.sroa.0810.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.au = shufflevector <2 x float> %.sroa.0435.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = fsub <2 x float> %i.at, %i.au           ; 5 uses
  %i.aw = extractelement <2 x float> %i.av, i64 1 ; 2 uses
  %i.ax = shufflevector <2 x float> %.sroa.0798.0.copyload, <2 x float> %.sroa.0810.0.copyload, <2 x i32> <i32 1, i32 3> ; 2 uses
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
  %i.bm = shufflevector <2 x float> %.sroa.0810.0.copyload, <2 x float> %i.al, <2 x i32> <i32 1, i32 3>
  %i.bn = shufflevector <2 x float> %.sroa.0435.0.copyload, <2 x float> %i.am, <2 x i32> <i32 1, i32 2>
  %i.bo = fsub <2 x float> %i.bm, %i.bn           ; 2 uses
  %i.bp = fsub <2 x float> %.sroa.0798.0.copyload, %.sroa.0435.0.copyload ; 2 uses
  %i.bq = fmul <2 x float> %i.bo, %i.bp           ; 2 uses
  %i.br = fneg <2 x float> %i.bq
  %i.bs = insertelement <2 x float> %.sroa.0810.0.copyload, float %.sroa.12808.0.copyload, i64 1
  %i.bt = insertelement <2 x float> %.sroa.0435.0.copyload, float %.sroa.10.0.copyload, i64 1
  %i.bu = fsub <2 x float> %i.bs, %i.bt
  %i.bv = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.az, <2 x float> %i.bu, <2 x float> %i.br)
  %i.bw = fneg <2 x float> %i.bo
  %i.bx = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.bw, <2 x float> %i.bp, <2 x float> %i.bq)
  %i.by = fadd <2 x float> %i.bv, %i.bx           ; 2 uses
  %i.bz = fmul <2 x float> %i.by, %i.by           ; 2 uses
  %i.ca = extractelement <2 x float> %i.bz, i64 1
  %i.cb = fadd float %i.ca, %i.bl
  %i.cc = extractelement <2 x float> %i.bz, i64 0
  %i.cd = fadd float %i.cc, %i.cb
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.cd) ; 3 uses
  %i.ce = shufflevector <2 x float> %.sroa.0778.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = fsub <2 x float> %i.ce, %i.at           ; 5 uses
  %i.cg = shufflevector <2 x float> %.sroa.0778.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ch = fsub <2 x float> %i.cg, %i.ax           ; 5 uses
  %i.ci = fmul <2 x float> %i.ao, %i.ch           ; 2 uses
  %i.cj = fneg <2 x float> %i.ci
  %i.ck = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.az, <2 x float> %i.as, <2 x float> %i.cj)
  %i.cl = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.bb, <2 x float> %i.ch, <2 x float> %i.ci)
  %i.cm = fadd <2 x float> %i.ck, %i.cl           ; 2 uses
  %i.cn = fmul <2 x float> %i.av, %i.as           ; 2 uses
  %i.co = fneg <2 x float> %i.cn
  %i.cp = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ao, <2 x float> %i.cf, <2 x float> %i.co)
  %i.cq = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.bh, <2 x float> %i.as, <2 x float> %i.cn)
  %i.cr = fadd <2 x float> %i.cp, %i.cq           ; 2 uses
  %i.cs = fmul <2 x float> %i.az, %i.cf           ; 2 uses
  %i.ct = fneg <2 x float> %i.cs
  %i.cu = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.av, <2 x float> %i.ch, <2 x float> %i.ct)
  %i.cv = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.bk, <2 x float> %i.cf, <2 x float> %i.cs)
  %i.cw = fadd <2 x float> %i.cu, %i.cv           ; 2 uses
  %i.cx = fmul <2 x float> %i.cm, %i.cm
  %i.cy = fmul <2 x float> %i.cr, %i.cr
  %i.cz = fadd <2 x float> %i.cx, %i.cy
  %i.da = fmul <2 x float> %i.cw, %i.cw
  %i.db = fadd <2 x float> %i.da, %i.cz
  %i.dc = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.db) ; 4 uses
  %i.dd = extractelement <2 x float> %i.ch, i64 0 ; 3 uses
  %i.de = extractelement <2 x float> %i.as, i64 1 ; 3 uses
  %i.df = fmul float %i.de, %i.dd                 ; 2 uses
  %i.dg = fneg float %i.df
  %i.dh = extractelement <2 x float> %i.ch, i64 1 ; 3 uses
  %i.di = extractelement <2 x float> %i.as, i64 0 ; 3 uses
  %i.dj = tail call noundef float @llvm.fma.f32(float %i.dh, float %i.di, float %i.dg)
  %i.dk = fneg float %i.de
  %i.dl = tail call noundef float @llvm.fma.f32(float %i.dk, float %i.dd, float %i.df)
  %i.dm = fadd float %i.dj, %i.dl                 ; 2 uses
  %i.dn = extractelement <2 x float> %i.cf, i64 1 ; 3 uses
  %i.do = fmul float %i.dn, %i.di                 ; 2 uses
  %i.dp = fneg float %i.do
  %i.dq = extractelement <2 x float> %i.cf, i64 0 ; 3 uses
  %i.dr = tail call noundef float @llvm.fma.f32(float %i.de, float %i.dq, float %i.dp)
  %i.ds = fneg float %i.dn
  %i.dt = tail call noundef float @llvm.fma.f32(float %i.ds, float %i.di, float %i.do)
  %i.du = fadd float %i.dr, %i.dt                 ; 2 uses
  %i.dv = fmul float %i.dh, %i.dq                 ; 2 uses
  %i.dw = fneg float %i.dv
  %i.dx = tail call noundef float @llvm.fma.f32(float %i.dn, float %i.dd, float %i.dw)
  %i.dy = fneg float %i.dh
  %i.dz = tail call noundef float @llvm.fma.f32(float %i.dy, float %i.dq, float %i.dv)
  %i.ea = fadd float %i.dx, %i.dz                 ; 2 uses
  %i.eb = fmul float %i.dm, %i.dm
  %i.ec = fmul float %i.du, %i.du
  %i.ed = fadd float %i.eb, %i.ec
  %i.ee = fmul float %i.ea, %i.ea
  %i.ef = fadd float %i.ee, %i.ed
  %sqrt.i561 = tail call noundef float @llvm.sqrt.f32(float %i.ef) ; 4 uses
  %.sroa.012.4.vec.extract.i = extractelement <2 x float> %2, i64 1 ; 4 uses
  %i.eg = extractelement <2 x float> %i.dc, i64 1 ; 2 uses
  %i.eh = fadd float %sqrt.i, %i.eg               ; 6 uses
  %i.ei = fcmp oeq float %.sroa.012.4.vec.extract.i, 0.000000e+00
  %i.ej = fcmp oeq float %i.eh, 0.000000e+00
  %or.cond.i.i = and i1 %i.ei, %i.ej
  br i1 %or.cond.i.i, label %_ZN4pbrt12SampleLinearEfff.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4pstd5arrayIfLi4EEC2ESt16initializer_listIfE.exit
  %i.ek = extractelement <2 x float> %i.dc, i64 0
  %i.el = fadd float %i.ek, %sqrt.i561            ; 3 uses
  %i.em = fadd float %i.eh, %i.el
  %i.en = fmul float %.sroa.012.4.vec.extract.i, %i.em
  %i.eo = fmul float %i.eh, %i.eh
  %i.ep = fmul float %i.el, %i.el
  %i.eq = fsub float 1.000000e+00, %.sroa.012.4.vec.extract.i
  %i.er = fmul float %i.eq, %i.eo
  %i.es = fmul float %.sroa.012.4.vec.extract.i, %i.ep
  %i.et = fadd float %i.er, %i.es
  %i.eu = tail call noundef float @sqrtf(float noundef %i.et) #32
  %i.ev = fadd float %i.eh, %i.eu
  %i.ew = fdiv float %i.en, %i.ev                 ; 2 uses
  %i.ex = fcmp ogt float %i.ew, f0x3F7FFFFF
  %.sroa.speculated.i.i = select i1 %i.ex, float f0x3F7FFFFF, float %i.ew
  br label %_ZN4pbrt12SampleLinearEfff.exit.i

_ZN4pbrt12SampleLinearEfff.exit.i:                ; preds = %bb.d, %_ZN4pstd5arrayIfLi4EEC2ESt16initializer_listIfE.exit
  %.0.i.i = phi float [ %.sroa.speculated.i.i, %bb.d ], [ 0.000000e+00, %_ZN4pstd5arrayIfLi4EEC2ESt16initializer_listIfE.exit ] ; 8 uses
  %.sroa.012.0.vec.extract.i = extractelement <2 x float> %2, i64 0 ; 4 uses
  %i.ey = fsub float 1.000000e+00, %.0.i.i        ; 4 uses
  %i.ez = fmul float %sqrt.i, %i.ey
  %i.fa = extractelement <2 x float> %i.dc, i64 0 ; 2 uses
  %i.fb = fmul float %i.fa, %.0.i.i
  %i.fc = fadd float %i.fb, %i.ez                 ; 5 uses
  %i.fd = fcmp oeq float %.sroa.012.0.vec.extract.i, 0.000000e+00
  %i.fe = fcmp oeq float %i.fc, 0.000000e+00
  %or.cond.i1.i = and i1 %i.fd, %i.fe
  br i1 %or.cond.i1.i, label %_ZN4pbrt14SampleBilinearENS_6Point2IfEEN4pstd4spanIKfEE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4pbrt12SampleLinearEfff.exit.i
  %i.ff = fmul float %i.eg, %i.ey
  %i.fg = fmul float %sqrt.i561, %.0.i.i
  %i.fh = fadd float %i.fg, %i.ff                 ; 3 uses
  %i.fi = fadd float %i.fc, %i.fh
  %i.fj = fmul float %.sroa.012.0.vec.extract.i, %i.fi
  %i.fk = fmul float %i.fc, %i.fc
  %i.fl = fmul float %i.fh, %i.fh
  %i.fm = fsub float 1.000000e+00, %.sroa.012.0.vec.extract.i
  %i.fn = fmul float %i.fm, %i.fk
  %i.fo = fmul float %.sroa.012.0.vec.extract.i, %i.fl
  %i.fp = fadd float %i.fn, %i.fo
  %i.fq = tail call noundef float @sqrtf(float noundef %i.fp) #32
  %i.fr = fadd float %i.fc, %i.fq
  %i.fs = fdiv float %i.fj, %i.fr                 ; 2 uses
  %i.ft = fcmp ogt float %i.fs, f0x3F7FFFFF
  %.sroa.speculated.i2.i = select i1 %i.ft, float f0x3F7FFFFF, float %i.fs
  br label %_ZN4pbrt14SampleBilinearENS_6Point2IfEEN4pstd4spanIKfEE.exit

_ZN4pbrt14SampleBilinearENS_6Point2IfEEN4pstd4spanIKfEE.exit: ; preds = %_ZN4pbrt12SampleLinearEfff.exit.i, %bb.e
  %.0.i3.i = phi float [ %.sroa.speculated.i2.i, %bb.e ], [ 0.000000e+00, %_ZN4pbrt12SampleLinearEfff.exit.i ] ; 6 uses
  %i.fu = insertelement <2 x float> poison, float %.0.i3.i, i64 0
  %.sroa.013.0.vec.insert.i = insertelement <2 x float> %i.fu, float %.0.i.i, i64 1
  %i.fv = fcmp olt float %.0.i3.i, 0.000000e+00
  %i.fw = fcmp ogt float %.0.i3.i, 1.000000e+00
  %or.cond.i = or i1 %i.fv, %i.fw
  %i.fx = fcmp olt float %.0.i.i, 0.000000e+00
  %i.fy = fcmp ogt float %.0.i.i, 1.000000e+00
  %i.fz = or i1 %i.fx, %i.fy
  %or.cond8.i = or i1 %i.fz, %or.cond.i
  br i1 %or.cond8.i, label %_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4pbrt14SampleBilinearENS_6Point2IfEEN4pstd4spanIKfEE.exit
  %i.ga = fadd float %i.eh, %i.fa
  %i.gb = fadd float %i.ga, %sqrt.i561            ; 2 uses
  %i.gc = fcmp oeq float %i.gb, 0.000000e+00
  br i1 %i.gc, label %_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.gd = fsub float 1.000000e+00, %.0.i3.i       ; 2 uses
  %i.ge = fmul float %i.ey, %i.gd
  %i.gf = fmul float %sqrt.i, %i.ge
  %i.gg = insertelement <2 x float> poison, float %.0.i.i, i64 0
  %i.gh = insertelement <2 x float> %i.gg, float %i.ey, i64 1
  %i.gi = insertelement <2 x float> poison, float %i.gd, i64 0
  %i.gj = insertelement <2 x float> %i.gi, float %.0.i3.i, i64 1
  %i.gk = fmul <2 x float> %i.gh, %i.gj
  %i.gl = fmul <2 x float> %i.dc, %i.gk           ; 2 uses
  %i.gm = extractelement <2 x float> %i.gl, i64 1
  %i.gn = fadd float %i.gm, %i.gf
  %i.go = extractelement <2 x float> %i.gl, i64 0
  %i.gp = fadd float %i.go, %i.gn
  %i.gq = fmul float %.0.i.i, %.0.i3.i
  %i.gr = fmul float %sqrt.i561, %i.gq
  %i.gs = fadd float %i.gr, %i.gp
  %i.gt = fmul float %i.gs, 4.000000e+00
  %i.gu = fdiv float %i.gt, %i.gb
  br label %_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit

_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit: ; preds = %_ZN4pbrt14SampleBilinearENS_6Point2IfEEN4pstd4spanIKfEE.exit, %bb.f, %bb.g
  %.0.i = phi float [ %i.gu, %bb.g ], [ 0.000000e+00, %_ZN4pbrt14SampleBilinearENS_6Point2IfEEN4pstd4spanIKfEE.exit ], [ 1.000000e+00, %bb.f ]
  store float %.0.i, ptr %i.a, align 4, !tbaa !28
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit, %bb.b
  %.sroa.0757.0 = phi <2 x float> [ %i.ai, %bb.b ], [ %.sroa.013.0.vec.insert.i, %_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit ], [ %2, %bb.c ] ; 8 uses
  %.sroa.0757.4.vec.extract = extractelement <2 x float> %.sroa.0757.0, i64 1 ; 7 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0435.0.copyload, i64 0
  %.sroa.0.0.vec.extract.i34.i = extractelement <2 x float> %.sroa.0798.0.copyload, i64 0
  %.sroa.0.4.vec.extract.i35.i565 = extractelement <2 x float> %.sroa.0778.0.copyload, i64 1
  %.sroa.0757.0.vec.extract = extractelement <2 x float> %.sroa.0757.0, i64 0 ; 4 uses
  %i.gv = fsub float 1.000000e+00, %.sroa.0757.0.vec.extract ; 9 uses
  %i.gw = fsub float 1.000000e+00, %.sroa.0757.4.vec.extract ; 7 uses
  %i.gx = insertelement <2 x float> poison, float %i.gw, i64 0
  %i.gy = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.gz = fmul <2 x float> %.sroa.0435.0.copyload, %i.gy
  %i.ha = shufflevector <2 x float> %.sroa.0435.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hb = insertelement <2 x float> %i.ha, float %.sroa.10.0.copyload, i64 1 ; 2 uses
  %i.hc = fmul <2 x float> %i.hb, %i.gy
  %i.hd = shufflevector <2 x float> %.sroa.0757.0, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 6 uses
  %i.he = fmul <2 x float> %.sroa.0798.0.copyload, %i.hd
  %i.hf = shufflevector <2 x float> %.sroa.0798.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hg = insertelement <2 x float> %i.hf, float %.sroa.12808.0.copyload, i64 1 ; 2 uses
  %i.hh = fmul <2 x float> %i.hg, %i.hd
  %i.hi = fadd <2 x float> %i.he, %i.gz           ; 3 uses
  %i.hj = fadd <2 x float> %i.hh, %i.hc           ; 2 uses
  %i.hk = fmul <2 x float> %.sroa.0810.0.copyload, %i.gy
  %i.hl = shufflevector <2 x float> %.sroa.0810.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hm = insertelement <2 x float> %i.hl, float %.sroa.12820.0.copyload, i64 1 ; 2 uses
  %i.hn = fmul <2 x float> %i.hm, %i.gy
  %i.ho = fmul <2 x float> %.sroa.0778.0.copyload, %i.hd
  %i.hp = shufflevector <2 x float> %.sroa.0778.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hq = insertelement <2 x float> %i.hp, float %.sroa.14794.0.copyload, i64 1 ; 2 uses
  %i.hr = fmul <2 x float> %i.hq, %i.hd
  %i.hs = fadd <2 x float> %i.ho, %i.hk           ; 3 uses
  %i.ht = fadd <2 x float> %i.hr, %i.hn           ; 2 uses
  %i.hu = extractelement <2 x float> %i.hi, i64 0
  %i.hv = fmul float %i.gv, %i.hu
  %i.hw = extractelement <2 x float> %i.hi, i64 1
  %i.hx = fmul float %i.gv, %i.hw
  %i.hy = extractelement <2 x float> %i.hj, i64 1
  %i.hz = fmul float %i.gv, %i.hy
  %foldExtExtBinop = fmul <2 x float> %.sroa.0757.0, %i.hs
  %i.ia = extractelement <2 x float> %foldExtExtBinop, i64 0
  %shift = shufflevector <2 x float> %i.hs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop838 = fmul <2 x float> %.sroa.0757.0, %shift
  %i.ib = extractelement <2 x float> %foldExtExtBinop838, i64 0
  %shift840 = shufflevector <2 x float> %i.ht, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop841 = fmul <2 x float> %.sroa.0757.0, %shift840
  %i.ic = extractelement <2 x float> %foldExtExtBinop841, i64 0
  %i.id = fadd float %i.hv, %i.ia                 ; 3 uses
  %i.ie = fadd float %i.hx, %i.ib                 ; 3 uses
  %i.if = fadd float %i.hz, %i.ic                 ; 3 uses
  %.sroa.0.0.vec.insert.i.i574 = insertelement <2 x float> poison, float %i.id, i64 0
  %i.ig = fsub <2 x float> %i.hs, %i.hi           ; 4 uses
  %i.ih = fsub <2 x float> %i.ht, %i.hj           ; 3 uses
  %i.ii = insertelement <2 x float> poison, float %i.gv, i64 0
  %i.ij = shufflevector <2 x float> %i.ii, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ik = fmul <2 x float> %.sroa.0798.0.copyload, %i.ij
  %i.il = fmul <2 x float> %i.hg, %i.ij
  %i.im = shufflevector <2 x float> %.sroa.0757.0, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.in = fmul <2 x float> %.sroa.0778.0.copyload, %i.im
  %i.io = fmul <2 x float> %i.hq, %i.im
  %i.ip = fadd <2 x float> %i.in, %i.ik
  %i.iq = fadd <2 x float> %i.io, %i.il
  %i.ir = fmul <2 x float> %.sroa.0435.0.copyload, %i.ij
  %i.is = fmul <2 x float> %i.hb, %i.ij
  %i.it = fmul <2 x float> %.sroa.0810.0.copyload, %i.im
  %i.iu = fmul <2 x float> %i.hm, %i.im
  %i.iv = fadd <2 x float> %i.it, %i.ir
  %i.iw = fadd <2 x float> %i.iu, %i.is
  %i.ix = fsub <2 x float> %i.ip, %i.iv           ; 5 uses
  %i.iy = fsub <2 x float> %i.iq, %i.iw           ; 4 uses
  %i.iz = fmul <2 x float> %i.ig, %i.ig           ; 2 uses
  %shift843 = shufflevector <2 x float> %i.iz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop844 = fadd <2 x float> %i.iz, %shift843
  %i.ja = extractelement <2 x float> %foldExtExtBinop844, i64 0
  %i.jb = extractelement <2 x float> %i.ih, i64 1 ; 3 uses
  %i.jc = fmul float %i.jb, %i.jb
  %i.jd = fadd float %i.jc, %i.ja
  %i.je = fcmp oeq float %i.jd, 0.000000e+00
  br i1 %i.je, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.jf = extractelement <2 x float> %i.ix, i64 0
  %foldExtExtBinop846 = fmul <2 x float> %i.ix, %i.ix
  %i.jg = fmul <2 x float> %i.iy, %i.iy           ; 2 uses
  %foldExtExtBinop848 = fadd <2 x float> %foldExtExtBinop846, %i.jg
  %shift850 = shufflevector <2 x float> %i.jg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop851 = fadd <2 x float> %shift850, %foldExtExtBinop848
  %i.jh = extractelement <2 x float> %foldExtExtBinop851, i64 0
  %i.ji = fcmp oeq float %i.jh, 0.000000e+00
  br i1 %i.ji, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, i8 0, i64 96, i1 false)
  br label %bb.ad

bb.k:                                             ; preds = %bb.i
  %i.jj = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !226 ; 5 uses
  %.not478 = icmp eq ptr %i.jk, null
  br i1 %.not478, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.jl = load i32, ptr %i.o, align 4, !tbaa !89
  %i.jm = sext i32 %i.jl to i64
  %i.jn = getelementptr inbounds [8 x i8], ptr %i.jk, i64 %i.jm
  %.sroa.0203.0.copyload = load <2 x float>, ptr %i.jn, align 4 ; 2 uses
  %i.jo = load i32, ptr %i.u, align 4, !tbaa !89
  %i.jp = sext i32 %i.jo to i64
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.jk, i64 %i.jp
  %.sroa.0202.0.copyload = load <2 x float>, ptr %i.jq, align 4 ; 2 uses
  %i.jr = load i32, ptr %i.y, align 4, !tbaa !89
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.jk, i64 %i.js
  %.sroa.0201.0.copyload = load <2 x float>, ptr %i.jt, align 4 ; 2 uses
  %i.ju = load i32, ptr %i.ac, align 4, !tbaa !89
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr inbounds [8 x i8], ptr %i.jk, i64 %i.jv
  %.sroa.0200.0.copyload = load <2 x float>, ptr %i.jw, align 4 ; 2 uses
  %.sroa.0.0.vec.extract.i.i608 = extractelement <2 x float> %.sroa.0203.0.copyload, i64 0
  %i.jx = fmul float %i.gw, %.sroa.0.0.vec.extract.i.i608
  %.sroa.0.0.vec.extract.i7.i = extractelement <2 x float> %.sroa.0201.0.copyload, i64 0
  %i.jy = fmul float %.sroa.0757.4.vec.extract, %.sroa.0.0.vec.extract.i7.i
  %i.jz = fadd float %i.jx, %i.jy
  %.sroa.0.0.vec.extract.i.i612 = extractelement <2 x float> %.sroa.0202.0.copyload, i64 0
  %i.ka = fmul float %i.gw, %.sroa.0.0.vec.extract.i.i612
  %.sroa.0.0.vec.extract.i7.i614 = extractelement <2 x float> %.sroa.0200.0.copyload, i64 0
  %i.kb = fmul float %.sroa.0757.4.vec.extract, %.sroa.0.0.vec.extract.i7.i614
  %i.kc = fadd float %i.ka, %i.kb
  %i.kd = fmul float %i.gv, %i.jz
  %i.ke = fmul float %.sroa.0757.0.vec.extract, %i.kc
  %i.kf = shufflevector <2 x float> %.sroa.0203.0.copyload, <2 x float> %.sroa.0202.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.kg = fmul <2 x float> %i.gy, %i.kf
  %i.kh = shufflevector <2 x float> %.sroa.0201.0.copyload, <2 x float> %.sroa.0200.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.ki = fmul <2 x float> %i.hd, %i.kh
  %i.kj = fadd <2 x float> %i.kg, %i.ki
  %i.kk = insertelement <2 x float> %i.im, float %i.gv, i64 0
  %i.kl = fmul <2 x float> %i.kk, %i.kj           ; 2 uses
  %i.km = fadd float %i.kd, %i.ke
  %shift853 = shufflevector <2 x float> %i.kl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop854 = fadd <2 x float> %i.kl, %shift853
  %.sroa.0.0.vec.insert.i.i622 = insertelement <2 x float> poison, float %i.km, i64 0
  %.sroa.0.4.vec.insert.i.i623 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i622, <2 x float> %foldExtExtBinop854, <2 x i32> <i32 0, i32 2>
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.0204.0 = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i623, %bb.l ], [ %.sroa.0757.0, %bb.k ]
  %i.kn = fmul <2 x float> %i.ih, %i.ix           ; 2 uses
  %i.ko = fneg <2 x float> %i.ih
  %i.kp = extractelement <2 x float> %i.ig, i64 0 ; 2 uses
  %i.kq = extractelement <2 x float> %i.iy, i64 1 ; 2 uses
  %i.kr = fmul float %i.kp, %i.kq                 ; 2 uses
  %i.ks = fneg float %i.kr
  %i.kt = call noundef float @llvm.fma.f32(float %i.jb, float %i.jf, float %i.ks)
  %i.ku = fneg float %i.kp
  %i.kv = call noundef float @llvm.fma.f32(float %i.ku, float %i.kq, float %i.kr)
  %i.kw = fadd float %i.kt, %i.kv                 ; 3 uses
  %i.kx = fmul float %i.kw, %i.kw
  %i.ky = fneg <2 x float> %i.kn
  %i.kz = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ig, <2 x float> %i.iy, <2 x float> %i.ky)
  %i.la = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ko, <2 x float> %i.ix, <2 x float> %i.kn)
  %i.lb = fadd <2 x float> %i.kz, %i.la           ; 4 uses
  %i.lc = fmul <2 x float> %i.lb, %i.lb           ; 2 uses
  %i.ld = extractelement <2 x float> %i.lc, i64 1
  %i.le = fadd float %i.ld, %i.kx
  %i.lf = extractelement <2 x float> %i.lc, i64 0
  %i.lg = fadd float %i.lf, %i.le
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.lg) ; 4 uses
  %i.lh = extractelement <2 x float> %i.lb, i64 1
  %i.li = fdiv float %i.lh, %sqrt.i.i             ; 4 uses
  %i.lj = fdiv float %i.kw, %sqrt.i.i             ; 4 uses
  %i.lk = extractelement <2 x float> %i.lb, i64 0
  %i.ll = fdiv float %i.lk, %sqrt.i.i             ; 6 uses
  %.sroa.0743.0.vec.insert = insertelement <2 x float> poison, float %i.li, i64 0
  %.sroa.0743.4.vec.insert = insertelement <2 x float> %.sroa.0743.0.vec.insert, float %i.lj, i64 1 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !219 ; 5 uses
  %.not479 = icmp eq ptr %i.ln, null
  br i1 %.not479, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.lo = load i32, ptr %i.o, align 4, !tbaa !89
  %i.lp = sext i32 %i.lo to i64
  %i.lq = getelementptr inbounds [12 x i8], ptr %i.ln, i64 %i.lp ; 2 uses
  %.sroa.0165.0.copyload = load <2 x float>, ptr %i.lq, align 4 ; 2 uses
  %.sroa.4166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %.sroa.4166.0.copyload = load float, ptr %.sroa.4166.0..sroa_idx, align 4
  %i.lr = load i32, ptr %i.u, align 4, !tbaa !89
  %i.ls = sext i32 %i.lr to i64
  %i.lt = getelementptr inbounds [12 x i8], ptr %i.ln, i64 %i.ls ; 2 uses
  %.sroa.0163.0.copyload = load <2 x float>, ptr %i.lt, align 4 ; 2 uses
  %.sroa.4164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %.sroa.4164.0.copyload = load float, ptr %.sroa.4164.0..sroa_idx, align 4
  %i.lu = load i32, ptr %i.y, align 4, !tbaa !89
  %i.lv = sext i32 %i.lu to i64
  %i.lw = getelementptr inbounds [12 x i8], ptr %i.ln, i64 %i.lv ; 2 uses
  %.sroa.0161.0.copyload = load <2 x float>, ptr %i.lw, align 4 ; 2 uses
  %.sroa.4162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %.sroa.4162.0.copyload = load float, ptr %.sroa.4162.0..sroa_idx, align 4
  %i.lx = load i32, ptr %i.ac, align 4, !tbaa !89
  %i.ly = sext i32 %i.lx to i64
  %i.lz = getelementptr inbounds [12 x i8], ptr %i.ln, i64 %i.ly ; 2 uses
  %.sroa.0159.0.copyload = load <2 x float>, ptr %i.lz, align 4 ; 2 uses
  %.sroa.4160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %.sroa.4160.0.copyload = load float, ptr %.sroa.4160.0..sroa_idx, align 4
  %.sroa.0.0.vec.extract.i.i638 = extractelement <2 x float> %.sroa.0165.0.copyload, i64 0
  %i.ma = fmul float %i.gw, %.sroa.0.0.vec.extract.i.i638
  %i.mb = fmul float %i.gw, %.sroa.4166.0.copyload
  %.sroa.0.0.vec.extract.i34.i640 = extractelement <2 x float> %.sroa.0161.0.copyload, i64 0
  %i.mc = fmul float %.sroa.0757.4.vec.extract, %.sroa.0.0.vec.extract.i34.i640
  %i.md = fmul float %.sroa.0757.4.vec.extract, %.sroa.4162.0.copyload
  %i.me = fadd float %i.ma, %i.mc
  %i.mf = fadd float %i.mb, %i.md
  %.sroa.0.0.vec.extract.i.i646 = extractelement <2 x float> %.sroa.0163.0.copyload, i64 0
  %i.mg = fmul float %i.gw, %.sroa.0.0.vec.extract.i.i646
  %i.mh = fmul float %i.gw, %.sroa.4164.0.copyload
  %.sroa.0.0.vec.extract.i34.i648 = extractelement <2 x float> %.sroa.0159.0.copyload, i64 0
  %i.mi = fmul float %.sroa.0757.4.vec.extract, %.sroa.0.0.vec.extract.i34.i648
  %i.mj = fmul float %.sroa.0757.4.vec.extract, %.sroa.4160.0.copyload
  %i.mk = fadd float %i.mg, %i.mi
  %i.ml = fadd float %i.mh, %i.mj
  %i.mm = fmul float %i.gv, %i.me
  %i.mn = fmul float %i.gv, %i.mf
  %i.mo = fmul float %.sroa.0757.0.vec.extract, %i.mk
  %i.mp = shufflevector <2 x float> %.sroa.0165.0.copyload, <2 x float> %.sroa.0163.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.mq = fmul <2 x float> %i.gy, %i.mp
  %i.mr = shufflevector <2 x float> %.sroa.0161.0.copyload, <2 x float> %.sroa.0159.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.ms = fmul <2 x float> %i.hd, %i.mr
  %i.mt = fadd <2 x float> %i.mq, %i.ms
  %i.mu = insertelement <2 x float> %i.im, float %i.gv, i64 0
  %i.mv = fmul <2 x float> %i.mu, %i.mt           ; 2 uses
  %i.mw = fmul float %.sroa.0757.0.vec.extract, %i.ml
  %i.mx = fadd float %i.mm, %i.mo
  %shift856 = shufflevector <2 x float> %i.mv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop857 = fadd <2 x float> %i.mv, %shift856
  %i.my = extractelement <2 x float> %foldExtExtBinop857, i64 0
  %i.mz = fadd float %i.mn, %i.mw                 ; 2 uses
  %i.na = fmul float %i.ll, %i.mz                 ; 2 uses
  %i.nb = call noundef float @llvm.fma.f32(float %i.lj, float %i.my, float %i.na)
  %i.nc = fneg float %i.na
  %i.nd = call noundef float @llvm.fma.f32(float %i.ll, float %i.mz, float %i.nc)
  %i.ne = fadd float %i.nb, %i.nd
  %i.nf = call noundef float @llvm.fma.f32(float %i.li, float %i.mx, float %i.ne)
  %i.ng = fcmp olt float %i.nf, 0.000000e+00      ; 2 uses
  %i.nh = fneg float %i.li
  %i.ni = fneg float %i.lj
  %i.nj = fneg float %i.ll
  %.sroa.0.0.vec.insert.i.i664 = insertelement <2 x float> poison, float %i.nh, i64 0
  %.sroa.0.4.vec.insert.i.i665 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i664, float %i.ni, i64 1
  %.sroa.0.4.vec.insert.i.pn.i = select i1 %i.ng, <2 x float> %.sroa.0.4.vec.insert.i.i665, <2 x float> %.sroa.0743.4.vec.insert
  %.pn.i = select i1 %i.ng, float %i.nj, float %i.ll
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.nk = load i8, ptr %i.h, align 8, !tbaa !220, !range !30, !noundef !31
  %i.nl = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !221, !range !30, !noundef !31
  %.not480 = icmp eq i8 %i.nk, %i.nm
  br i1 %.not480, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.nn = fneg float %i.li
  %i.no = fneg float %i.lj
  %i.np = fneg float %i.ll
  %.sroa.0.0.vec.insert.i666 = insertelement <2 x float> poison, float %i.nn, i64 0
  %.sroa.0.4.vec.insert.i667 = insertelement <2 x float> %.sroa.0.0.vec.insert.i666, float %i.no, i64 1
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %.sroa.10748.0 = phi float [ %i.ll, %bb.o ], [ %i.np, %bb.p ], [ %.pn.i, %bb.n ]
  %.sroa.0743.0 = phi <2 x float> [ %.sroa.0743.4.vec.insert, %bb.o ], [ %.sroa.0.4.vec.insert.i667, %bb.p ], [ %.sroa.0.4.vec.insert.i.pn.i, %bb.n ]
  %i.nq = call noundef float @llvm.fabs.f32(float %.sroa.0.0.vec.extract.i.i)
  %i.nr = shufflevector <2 x float> %.sroa.0435.0.copyload, <2 x float> %.sroa.0798.0.copyload, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.ns = insertelement <4 x float> %i.nr, float %.sroa.10.0.copyload, i64 1
  %i.nt = insertelement <4 x float> %i.ns, float %.sroa.12808.0.copyload, i64 3
  %i.nu = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.nt) ; 4 uses
  %i.nv = call noundef float @llvm.fabs.f32(float %.sroa.0.0.vec.extract.i34.i)
  %i.nw = fadd float %i.nq, %i.nv
  %shift859 = shufflevector <4 x float> %i.nu, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop860 = fadd <4 x float> %i.nu, %shift859
  %shift862 = shufflevector <4 x float> %i.nu, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop863 = fadd <4 x float> %i.nu, %shift862
  %i.nx = shufflevector <2 x float> %.sroa.0810.0.copyload, <2 x float> %.sroa.0778.0.copyload, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.ny = insertelement <4 x float> %i.nx, float %.sroa.12820.0.copyload, i64 2
  %i.nz = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ny) ; 4 uses
  %i.oa = extractelement <4 x float> %i.nz, i64 0
  %i.ob = fadd float %i.oa, %i.nw
  %shift865 = shufflevector <4 x float> %i.nz, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop866 = fadd <4 x float> %shift865, %foldExtExtBinop860
  %i.oc = extractelement <4 x float> %foldExtExtBinop866, i64 0
  %shift868 = shufflevector <4 x float> %i.nz, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %foldExtExtBinop869 = fadd <4 x float> %shift868, %foldExtExtBinop863
  %3 = extractelement <4 x float> %foldExtExtBinop869, i64 1
  %4 = call noundef float @llvm.fabs.f32(float %.sroa.0.4.vec.extract.i35.i565)
  %5 = call noundef float @llvm.fabs.f32(float %.sroa.14794.0.copyload)
  %6 = extractelement <4 x float> %i.nz, i64 3
  %7 = fadd float %i.ob, %6
  %8 = fadd float %i.oc, %4
  %9 = fadd float %3, %5
  %i.od = fmul float %7, 3.576280e-07             ; 3 uses
  %10 = fmul float %8, 3.576280e-07               ; 3 uses
  %i.oe = fmul float %9, 3.576280e-07             ; 3 uses
  %i.of = fcmp oeq float %i.od, 0.000000e+00
  br i1 %i.of, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.0.0.vec.insert.i.i718 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i574, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i

bb.s:                                             ; preds = %bb.q
  %i.og = fsub float %i.id, %i.od                 ; 3 uses
  %or.cond.i.i.i.i.i = fcmp oeq float %i.og, -inf
  br i1 %or.cond.i.i.i.i.i, label %_ZN4pbrt12SubRoundDownEff.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.oh = fcmp oeq float %i.og, 0.000000e+00
  %spec.store.select.i.i.i.i.i = select i1 %i.oh, float -0.000000e+00, float %i.og ; 2 uses
  %i.oi = bitcast float %spec.store.select.i.i.i.i.i to i32
  %i.oj = fcmp ogt float %spec.store.select.i.i.i.i.i, 0.000000e+00
  %.0.v.i.i.i.i.i = select i1 %i.oj, i32 -1, i32 1
  %.0.i.i.i.i.i = add i32 %.0.v.i.i.i.i.i, %i.oi
  %i.ok = bitcast i32 %.0.i.i.i.i.i to float
  br label %_ZN4pbrt12SubRoundDownEff.exit.i.i

_ZN4pbrt12SubRoundDownEff.exit.i.i:               ; preds = %bb.t, %bb.s
  %.09.i.i.i.i.i = phi float [ %i.ok, %bb.t ], [ -inf, %bb.s ]
  %.sroa.0.0.vec.insert8.i.i = insertelement <2 x float> poison, float %.09.i.i.i.i.i, i64 0
  %i.ol = fadd float %i.od, %i.id                 ; 3 uses
  %or.cond.i.i.i.i = fcmp oeq float %i.ol, +inf
  br i1 %or.cond.i.i.i.i, label %_ZN4pbrt10AddRoundUpEff.exit.i.i, label %bb.u

bb.u:                                             ; preds = %_ZN4pbrt12SubRoundDownEff.exit.i.i
  %i.om = fcmp oeq float %i.ol, 0.000000e+00
  %spec.store.select.i.i.i.i = select i1 %i.om, float 0.000000e+00, float %i.ol ; 2 uses
  %i.on = bitcast float %spec.store.select.i.i.i.i to i32
  %i.oo = fcmp ult float %spec.store.select.i.i.i.i, 0.000000e+00
  %.0.v.i.i.i.i = select i1 %i.oo, i32 -1, i32 1
  %.0.i.i.i.i = add i32 %.0.v.i.i.i.i, %i.on
  %i.op = bitcast i32 %.0.i.i.i.i to float
  br label %_ZN4pbrt10AddRoundUpEff.exit.i.i

_ZN4pbrt10AddRoundUpEff.exit.i.i:                 ; preds = %bb.u, %_ZN4pbrt12SubRoundDownEff.exit.i.i
  %.010.i.i.i.i = phi float [ %i.op, %bb.u ], [ +inf, %_ZN4pbrt12SubRoundDownEff.exit.i.i ]
  %.sroa.0.4.vec.insert10.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert8.i.i, float %.010.i.i.i.i, i64 1
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i

_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i:   ; preds = %_ZN4pbrt10AddRoundUpEff.exit.i.i, %bb.r
  %.sroa.0.0.i.i = phi <2 x float> [ %.sroa.0.0.vec.insert.i.i718, %bb.r ], [ %.sroa.0.4.vec.insert10.i.i, %_ZN4pbrt10AddRoundUpEff.exit.i.i ]
  %i.oq = fcmp oeq float %10, 0.000000e+00
  br i1 %i.oq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i
  %i.or = insertelement <2 x float> poison, float %i.ie, i64 0
  %.sroa.0.0.vec.insert.i24.i = shufflevector <2 x float> %i.or, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i

bb.w:                                             ; preds = %_ZN4pbrt8Interval17FromValueAndErrorEff.exit.i
  %i.os = fsub float %i.ie, %10                   ; 3 uses
  %or.cond.i.i.i.i9.i = fcmp oeq float %i.os, -inf
  br i1 %or.cond.i.i.i.i9.i, label %_ZN4pbrt12SubRoundDownEff.exit.i13.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ot = fcmp oeq float %i.os, 0.000000e+00
  %spec.store.select.i.i.i.i10.i = select i1 %i.ot, float -0.000000e+00, float %i.os ; 2 uses
  %i.ou = bitcast float %spec.store.select.i.i.i.i10.i to i32
  %i.ov = fcmp ogt float %spec.store.select.i.i.i.i10.i, 0.000000e+00
  %.0.v.i.i.i.i11.i = select i1 %i.ov, i32 -1, i32 1
  %.0.i.i.i.i12.i = add i32 %.0.v.i.i.i.i11.i, %i.ou
  %i.ow = bitcast i32 %.0.i.i.i.i12.i to float
  br label %_ZN4pbrt12SubRoundDownEff.exit.i13.i

_ZN4pbrt12SubRoundDownEff.exit.i13.i:             ; preds = %bb.x, %bb.w
  %.09.i.i.i.i14.i = phi float [ %i.ow, %bb.x ], [ -inf, %bb.w ]
  %.sroa.0.0.vec.insert8.i15.i = insertelement <2 x float> poison, float %.09.i.i.i.i14.i, i64 0
  %i.ox = fadd float %10, %i.ie                   ; 3 uses
  %or.cond.i.i.i16.i = fcmp oeq float %i.ox, +inf
  br i1 %or.cond.i.i.i16.i, label %_ZN4pbrt10AddRoundUpEff.exit.i20.i, label %bb.y

bb.y:                                             ; preds = %_ZN4pbrt12SubRoundDownEff.exit.i13.i
  %i.oy = fcmp oeq float %i.ox, 0.000000e+00
  %spec.store.select.i.i.i17.i = select i1 %i.oy, float 0.000000e+00, float %i.ox ; 2 uses
  %i.oz = bitcast float %spec.store.select.i.i.i17.i to i32
  %i.pa = fcmp ult float %spec.store.select.i.i.i17.i, 0.000000e+00
  %.0.v.i.i.i18.i = select i1 %i.pa, i32 -1, i32 1
  %.0.i.i.i19.i = add i32 %.0.v.i.i.i18.i, %i.oz
  %i.pb = bitcast i32 %.0.i.i.i19.i to float
  br label %_ZN4pbrt10AddRoundUpEff.exit.i20.i

_ZN4pbrt10AddRoundUpEff.exit.i20.i:               ; preds = %bb.y, %_ZN4pbrt12SubRoundDownEff.exit.i13.i
  %.010.i.i.i21.i = phi float [ %i.pb, %bb.y ], [ +inf, %_ZN4pbrt12SubRoundDownEff.exit.i13.i ]
  %.sroa.0.4.vec.insert10.i22.i = insertelement <2 x float> %.sroa.0.0.vec.insert8.i15.i, float %.010.i.i.i21.i, i64 1
  br label %_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i

_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i: ; preds = %_ZN4pbrt10AddRoundUpEff.exit.i20.i, %bb.v
  %.sroa.0.0.i23.i = phi <2 x float> [ %.sroa.0.0.vec.insert.i24.i, %bb.v ], [ %.sroa.0.4.vec.insert10.i22.i, %_ZN4pbrt10AddRoundUpEff.exit.i20.i ]
  %i.pc = fcmp oeq float %i.oe, 0.000000e+00
  br i1 %i.pc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i
  %i.pd = insertelement <2 x float> poison, float %i.if, i64 0
  %.sroa.0.0.vec.insert.i41.i = shufflevector <2 x float> %i.pd, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit

bb.aa:                                            ; preds = %_ZN4pbrt8Interval17FromValueAndErrorEff.exit25.i
  %i.pe = fsub float %i.if, %i.oe                 ; 3 uses
  %or.cond.i.i.i.i26.i = fcmp oeq float %i.pe, -inf
  br i1 %or.cond.i.i.i.i26.i, label %_ZN4pbrt12SubRoundDownEff.exit.i30.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.pf = fcmp oeq float %i.pe, 0.000000e+00
  %spec.store.select.i.i.i.i27.i = select i1 %i.pf, float -0.000000e+00, float %i.pe ; 2 uses
  %i.pg = bitcast float %spec.store.select.i.i.i.i27.i to i32
  %i.ph = fcmp ogt float %spec.store.select.i.i.i.i27.i, 0.000000e+00
  %.0.v.i.i.i.i28.i = select i1 %i.ph, i32 -1, i32 1
  %.0.i.i.i.i29.i = add i32 %.0.v.i.i.i.i28.i, %i.pg
  %i.pi = bitcast i32 %.0.i.i.i.i29.i to float
  br label %_ZN4pbrt12SubRoundDownEff.exit.i30.i

_ZN4pbrt12SubRoundDownEff.exit.i30.i:             ; preds = %bb.ab, %bb.aa
  %.09.i.i.i.i31.i = phi float [ %i.pi, %bb.ab ], [ -inf, %bb.aa ]
  %.sroa.0.0.vec.insert8.i32.i = insertelement <2 x float> poison, float %.09.i.i.i.i31.i, i64 0
  %i.pj = fadd float %i.oe, %i.if                 ; 3 uses
  %or.cond.i.i.i33.i = fcmp oeq float %i.pj, +inf
  br i1 %or.cond.i.i.i33.i, label %_ZN4pbrt10AddRoundUpEff.exit.i37.i, label %bb.ac

bb.ac:                                            ; preds = %_ZN4pbrt12SubRoundDownEff.exit.i30.i
  %i.pk = fcmp oeq float %i.pj, 0.000000e+00
  %spec.store.select.i.i.i34.i = select i1 %i.pk, float 0.000000e+00, float %i.pj ; 2 uses
  %i.pl = bitcast float %spec.store.select.i.i.i34.i to i32
  %i.pm = fcmp ult float %spec.store.select.i.i.i34.i, 0.000000e+00
  %.0.v.i.i.i35.i = select i1 %i.pm, i32 -1, i32 1
  %.0.i.i.i36.i = add i32 %.0.v.i.i.i35.i, %i.pl
  %i.pn = bitcast i32 %.0.i.i.i36.i to float
  br label %_ZN4pbrt10AddRoundUpEff.exit.i37.i

_ZN4pbrt10AddRoundUpEff.exit.i37.i:               ; preds = %bb.ac, %_ZN4pbrt12SubRoundDownEff.exit.i30.i
  %.010.i.i.i38.i = phi float [ %i.pn, %bb.ac ], [ +inf, %_ZN4pbrt12SubRoundDownEff.exit.i30.i ]
  %.sroa.0.4.vec.insert10.i39.i = insertelement <2 x float> %.sroa.0.0.vec.insert8.i32.i, float %.010.i.i.i38.i, i64 1
  br label %_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit

_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit: ; preds = %bb.z, %_ZN4pbrt10AddRoundUpEff.exit.i37.i
  %.sroa.0.0.i40.i = phi <2 x float> [ %.sroa.0.0.vec.insert.i41.i, %bb.z ], [ %.sroa.0.4.vec.insert10.i39.i, %_ZN4pbrt10AddRoundUpEff.exit.i37.i ]
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.po = load float, ptr %i.a, align 4, !tbaa !28
  %i.pp = fdiv float %i.po, %sqrt.i.i
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.pq, align 8, !tbaa !36
  store <2 x float> %.sroa.0.0.i.i, ptr %0, align 8
  %.sroa.4731.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %.sroa.0.0.i23.i, ptr %.sroa.4731.0..sroa_idx, align 8
  %.sroa.5732.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %.sroa.0.0.i40.i, ptr %.sroa.5732.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x float> %.sroa.0743.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %.sroa.10748.0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store <2 x float> %.sroa.0204.0, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.sroa.3.0..sroa.10.0..sroa_idx733.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.sroa.3.0..sroa.10.0..sroa_idx733.sroa_idx, i8 0, i64 16, i1 false)
  store float %i.pp, ptr %i.pr, align 8, !tbaa !53
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local <2 x float> @_ZNK4pbrt19PiecewiseConstant2D6SampleENS_6Point2IfEEPfPNS1_IiEE(ptr noundef nonnull align 8 dereferenceable(128) %0, <2 x float> %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.sroa.024.4.vec.extract = extractelement <2 x float> %1, i64 1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i64, ptr %i.a, align 8, !tbaa !230
  %sext.i = shl i64 %i.b, 32
  %i.c = ashr exact i64 %sext.i, 32               ; 2 uses
  %i.d = add nsw i64 %i.c, -2                     ; 2 uses
  %i.e = icmp sgt i64 %i.c, 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !231  ; 2 uses
  br i1 %i.e, label %.lr.ph.i.i, label %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.017.i.i = phi i64 [ %.fr.i.i, %.lr.ph.i.i ], [ 1, %bb.a ] ; 2 uses
  %.01516.i.i = phi i64 [ %i.q, %.lr.ph.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.h = lshr i64 %.01516.i.i, 1                  ; 3 uses
  %i.i = add i64 %i.h, %.017.i.i                  ; 2 uses
  %sext.i.i = shl i64 %i.i, 32
  %i.j = ashr exact i64 %sext.i.i, 30
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j
  %i.l = load float, ptr %i.k, align 4, !tbaa !28
  %i.m = fcmp ole float %i.l, %.sroa.024.4.vec.extract ; 2 uses
  %i.n = add i64 %i.i, 1
  %i.o = select i1 %i.m, i64 %i.n, i64 %.017.i.i
  %.fr.i.i = freeze i64 %i.o                      ; 3 uses
  %.neg.i.i = xor i64 %i.h, -1
  %i.p = add nsw i64 %.01516.i.i, %.neg.i.i
  %i.q = select i1 %i.m, i64 %i.p, i64 %i.h       ; 2 uses
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !492

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.s = add nsw i64 %.fr.i.i, -1
  %..i.i.i = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.d)
  %.inv.i.i = icmp sgt i64 %.fr.i.i, 0
  %spec.select.i.i = select i1 %.inv.i.i, i64 %..i.i.i, i64 0
  br label %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i

_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i: ; preds = %bb.a, %._crit_edge.i.i
  %i.t = phi i64 [ %spec.select.i.i, %._crit_edge.i.i ], [ 0, %bb.a ] ; 5 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.t
  %i.v = load <2 x float>, ptr %i.u, align 4, !tbaa !28 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.x = load float, ptr %i.w, align 8, !tbaa !233 ; 2 uses
  %i.y = fcmp ogt float %i.x, 0.000000e+00
  br i1 %i.y, label %bb.b, label %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit

bb.b:                                             ; preds = %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !231
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.t
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !28
  %i.ad = fdiv float %i.ac, %i.x
  br label %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit

_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit: ; preds = %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i, %bb.b
  %i.ae = phi float [ %i.ad, %bb.b ], [ 0.000000e+00, %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !230
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ai = load <2 x float>, ptr %i.ah, align 8, !tbaa !28 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !237
  %i.al = getelementptr inbounds nuw [80 x i8], ptr %i.ak, i64 %i.t ; 6 uses
  %.sroa.024.0.vec.extract = extractelement <2 x float> %1, i64 0
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.an = load i64, ptr %i.am, align 8, !tbaa !230
  %sext.i9 = shl i64 %i.an, 32
  %i.ao = ashr exact i64 %sext.i9, 32             ; 2 uses
  %i.ap = add nsw i64 %i.ao, -2                   ; 2 uses
  %i.aq = icmp sgt i64 %i.ao, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !231 ; 2 uses
  br i1 %i.aq, label %.lr.ph.i.i12, label %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i10

.lr.ph.i.i12:                                     ; preds = %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit, %.lr.ph.i.i12
  %.017.i.i13 = phi i64 [ %.fr.i.i16, %.lr.ph.i.i12 ], [ 1, %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit ] ; 2 uses
  %.01516.i.i14 = phi i64 [ %i.bc, %.lr.ph.i.i12 ], [ %i.ap, %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit ] ; 2 uses
  %i.at = lshr i64 %.01516.i.i14, 1               ; 3 uses
  %i.au = add i64 %i.at, %.017.i.i13              ; 2 uses
  %sext.i.i15 = shl i64 %i.au, 32
  %i.av = ashr exact i64 %sext.i.i15, 30
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.av
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !28
  %i.ay = fcmp ole float %i.ax, %.sroa.024.0.vec.extract ; 2 uses
  %i.az = add i64 %i.au, 1
  %i.ba = select i1 %i.ay, i64 %i.az, i64 %.017.i.i13
  %.fr.i.i16 = freeze i64 %i.ba                   ; 3 uses
  %.neg.i.i17 = xor i64 %i.at, -1
  %i.bb = add nsw i64 %.01516.i.i14, %.neg.i.i17
  %i.bc = select i1 %i.ay, i64 %i.bb, i64 %i.at   ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.i.i12, label %._crit_edge.i.i18, !llvm.loop !492

._crit_edge.i.i18:                                ; preds = %.lr.ph.i.i12
  %i.be = add nsw i64 %.fr.i.i16, -1
  %..i.i.i19 = tail call i64 @llvm.umin.i64(i64 %i.be, i64 %i.ap)
  %.inv.i.i20 = icmp sgt i64 %.fr.i.i16, 0
  %spec.select.i.i21 = select i1 %.inv.i.i20, i64 %..i.i.i19, i64 0
  br label %_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i10

_ZN4pbrt12FindIntervalIZNKS_19PiecewiseConstant1D6SampleEfPfPiEUliE_EEmmRKT_.exit.i10: ; preds = %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit, %._crit_edge.i.i18
  %i.bf = phi i64 [ %spec.select.i.i21, %._crit_edge.i.i18 ], [ 0, %_ZNK4pbrt19PiecewiseConstant1D6SampleEfPfPi.exit ] ; 4 uses
end_hunk_0
