Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/Sample_TempObstacles?download=true
inline.NumInlined: 189
inline.NumDeleted: 108
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK20Sample_TempObstacles23renderCachedTileOverlayEii:bb.a
  %i.q = load i32, ptr %i.p, align 4, !tbaa !222
  %i.r = mul i32 %i.o, %i.q
  %i.s = add nsw i32 %i.r, 56
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.v = sitofp i32 %i.s to float
  %i.w = fmul nnan float %i.v, f0x3A800000
  %i.x = fpext float %i.w to double
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 4
  %wide.trip.count.i = zext nneg i32 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !62
  %i.ab = call noundef ptr @_ZNK11dtTileCache12getTileByRefEj(ptr noundef nonnull align 8 dereferenceable(912) %i.j, i32 noundef %i.aa) #12 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !154 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.af = load float, ptr %i.ae, align 4, !tbaa !41
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !41
  %i.ai = fadd float %i.af, %i.ah
  %i.aj = fmul float %i.ai, 5.000000e-01          ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.al = load float, ptr %i.ak, align 4, !tbaa !41 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  %i.an = load float, ptr %i.am, align 4, !tbaa !41
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !41
  %i.aq = fadd float %i.an, %i.ap
  %i.ar = fmul float %i.aq, 5.000000e-01          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  %i.as = load ptr, ptr %i.ac, align 8, !tbaa !154 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i32, ptr %i.at, align 4, !tbaa !73
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !74
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !75
  %i.az = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.h, i64 noundef 128, ptr noundef nonnull @.str.56, i32 noundef %i.au, i32 noundef %i.aw, i32 noundef %i.ay) #12 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  call void @_ZNK8AppState13worldToScreenEfffPfS0_(ptr noundef nonnull align 8 dereferenceable(936) @app, float noundef %i.aj, float noundef %i.al, float noundef %i.ar, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #12
  %i.ba = load float, ptr %i.f, align 4, !tbaa !41
  %i.bb = fadd float %i.ba, 2.500000e+01
  store float %i.bb, ptr %i.f, align 4, !tbaa !41
  %i.bc = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull %i.h, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00) #12
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %i.bc, i64 0
  %i.bd = load float, ptr %i.e, align 4, !tbaa !41
  %i.be = fneg float %.sroa.0.0.vec.extract.i.i
  %i.bf = call float @llvm.fmuladd.f32(float %i.be, float 5.000000e-01, float %i.bd)
  store float %i.bf, ptr %i.e, align 4, !tbaa !41
  %i.bg = call noundef ptr @_ZN5ImGui21GetForegroundDrawListEv() #12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.bh = load float, ptr %i.e, align 4, !tbaa !41
  %i.bi = load float, ptr %i.f, align 4, !tbaa !41
  store float %i.bh, ptr %5, align 4, !tbaa !310
  store float %i.bi, ptr %i.t, align 4, !tbaa !311
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %i.bg, ptr noundef nonnull align 4 dereferenceable(8) %5, i32 noundef -603979776, ptr noundef nonnull %i.h, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !155
  %i.bl = sitofp i32 %i.bk to float
  %i.bm = fmul nnan float %i.bl, f0x3A800000
  %i.bn = fpext float %i.bm to double
  %i.bo = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.h, i64 noundef 128, ptr noundef nonnull @.str.57, double noundef %i.bn) #12 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @_ZNK8AppState13worldToScreenEfffPfS0_(ptr noundef nonnull align 8 dereferenceable(936) @app, float noundef %i.aj, float noundef %i.al, float noundef %i.ar, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #12
  %i.bp = load float, ptr %i.d, align 4, !tbaa !41
  %i.bq = fadd float %i.bp, 4.500000e+01
  store float %i.bq, ptr %i.d, align 4, !tbaa !41
  %i.br = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull %i.h, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00) #12
  %.sroa.0.0.vec.extract.i27.i = extractelement <2 x float> %i.br, i64 0
  %i.bs = load float, ptr %i.c, align 4, !tbaa !41
  %i.bt = fneg float %.sroa.0.0.vec.extract.i27.i
  %i.bu = call float @llvm.fmuladd.f32(float %i.bt, float 5.000000e-01, float %i.bs)
  store float %i.bu, ptr %i.c, align 4, !tbaa !41
  %i.bv = call noundef ptr @_ZN5ImGui21GetForegroundDrawListEv() #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.bw = load float, ptr %i.c, align 4, !tbaa !41
  %i.bx = load float, ptr %i.d, align 4, !tbaa !41
  store float %i.bw, ptr %4, align 4, !tbaa !310
  store float %i.bx, ptr %i.u, align 4, !tbaa !311
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %i.bv, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef -2147483648, ptr noundef nonnull %i.h, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.by = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.h, i64 noundef 128, ptr noundef nonnull @.str.58, double noundef %i.x) #12 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @_ZNK8AppState13worldToScreenEfffPfS0_(ptr noundef nonnull align 8 dereferenceable(936) @app, float noundef %i.aj, float noundef %i.al, float noundef %i.ar, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #12
  %i.bz = load float, ptr %i.b, align 4, !tbaa !41
  %i.ca = fadd float %i.bz, 6.500000e+01
  store float %i.ca, ptr %i.b, align 4, !tbaa !41
  %i.cb = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull %i.h, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00) #12
  %.sroa.0.0.vec.extract.i28.i = extractelement <2 x float> %i.cb, i64 0
  %i.cc = load float, ptr %i.a, align 4, !tbaa !41
  %i.cd = fneg float %.sroa.0.0.vec.extract.i28.i
  %i.ce = call float @llvm.fmuladd.f32(float %i.cd, float 5.000000e-01, float %i.cc)
  store float %i.ce, ptr %i.a, align 4, !tbaa !41
  %i.cf = call noundef ptr @_ZN5ImGui21GetForegroundDrawListEv() #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.cg = load float, ptr %i.a, align 4, !tbaa !41
  %i.ch = load float, ptr %i.b, align 4, !tbaa !41
  store float %i.cg, ptr %3, align 4, !tbaa !310
  store float %i.ch, ptr %i.y, align 4, !tbaa !311
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %i.cf, ptr noundef nonnull align 4 dereferenceable(8) %3, i32 noundef -2147483648, ptr noundef nonnull %i.h, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN12_GLOBAL__N_117drawDetailOverlayEPK11dtTileCacheii.exit, label %bb.c, !llvm.loop !308

_ZN12_GLOBAL__N_117drawDetailOverlayEPK11dtTileCacheii.exit: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  br label %bb.d

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_117drawDetailOverlayEPK11dtTileCacheii.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN20Sample_TempObstacles13renderOverlayEv(ptr noundef nonnull align 8 dereferenceable(276) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !159  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #12, !call_target !202
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZNK6Sample23renderOverlayToolStatesEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #12
  ret void
}

declare void @_ZNK6Sample23renderOverlayToolStatesEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN20Sample_TempObstacles13onMeshChangedEP9InputGeom(ptr noundef nonnull align 8 dereferenceable(276) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6Sample13onMeshChangedEP9InputGeom(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1) #12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105
  tail call void @_Z15dtFreeTileCacheP11dtTileCache(ptr noundef %i.b) #12
  store ptr null, ptr %i.a, align 8, !tbaa !105
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !104
  tail call void @_Z13dtFreeNavMeshP9dtNavMesh(ptr noundef %i.d) #12
  store ptr null, ptr %i.c, align 8, !tbaa !104
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !159  ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !38
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #12, !call_target !194
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !159  ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull %0) #12, !call_target !193
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !99
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.q, ptr %i.r, align 8, !tbaa !98
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZNK6Sample15resetToolStatesEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #12
  tail call void @_ZNK6Sample14initToolStatesEPS_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %0) #12
  ret void
}

declare void @_ZN6Sample13onMeshChangedEP9InputGeom(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) unnamed_addr #1

declare void @_ZNK6Sample15resetToolStatesEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #1

declare void @_ZNK6Sample14initToolStatesEPS_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK20Sample_TempObstacles15addTempObstacleEPKf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(276) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !105  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %2 = load float, ptr %1, align 4, !tbaa !41
  store float %2, ptr %i.a, align 4, !tbaa !41
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %4 = load float, ptr %3, align 4, !tbaa !41
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %i.e, ptr %i.f, align 4, !tbaa !41
  %6 = fadd float %4, -5.000000e-01
  store float %6, ptr %5, align 4, !tbaa !41
  %i.g = call noundef i32 @_ZN11dtTileCache11addObstacleEPKfffPj(ptr noundef nonnull align 8 dereferenceable(912) %i.c, ptr noundef nonnull %i.a, float noundef 1.000000e+00, float noundef 2.000000e+00, ptr noundef null) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare noundef i32 @_ZN11dtTileCache11addObstacleEPKfffPj(ptr noundef nonnull align 8 dereferenceable(912), ptr noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK20Sample_TempObstacles18removeTempObstacleEPKfS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(276) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 6 uses
  %i.b = alloca [3 x float], align 4              ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !105  ; 6 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !214  ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.i, label %_ZN12_GLOBAL__N_115hitTestObstacleEPK11dtTileCachePKfS4_.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.n, %.lr.ph.i
  %i.q = phi i32 [ %i.f, %.lr.ph.i ], [ %i.cc, %bb.n ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.n ] ; 2 uses
  %.01342.i = phi ptr [ null, %.lr.ph.i ], [ %.2.i, %bb.n ] ; 8 uses
  %.01441.i = phi float [ f0x7F7FFFFF, %.lr.ph.i ], [ %.216.i, %bb.n ] ; 9 uses
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !215
  %i.s = getelementptr inbounds nuw [112 x i8], ptr %i.r, i64 %indvars.iv.i ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 99
  %i.u = load i8, ptr %i.t, align 1, !tbaa !217
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @_ZNK11dtTileCache17getObstacleBoundsEPK19dtTileCacheObstaclePfS3_(ptr noundef nonnull align 8 dereferenceable(912) %i.d, ptr noundef nonnull %i.s, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #12
  %i.w = load float, ptr %2, align 4, !tbaa !41
  %i.x = load float, ptr %1, align 4, !tbaa !41   ; 5 uses
  %i.y = fsub float %i.w, %i.x                    ; 2 uses
  %i.z = load float, ptr %i.i, align 4, !tbaa !41
  %i.aa = load float, ptr %i.j, align 4, !tbaa !41 ; 5 uses
  %i.ab = fsub float %i.z, %i.aa                  ; 2 uses
  %i.ac = load float, ptr %i.k, align 4, !tbaa !41
  %i.ad = load float, ptr %i.l, align 4, !tbaa !41 ; 5 uses
  %i.ae = fsub float %i.ac, %i.ad                 ; 2 uses
  %i.af = call float @llvm.fabs.f32(float %i.y)
  %i.ag = fcmp olt float %i.af, f0x358637BD
  %i.ah = load float, ptr %i.a, align 4, !tbaa !41 ; 2 uses
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ai = fcmp olt float %i.x, %i.ah
  %i.aj = load float, ptr %i.b, align 4
  %i.ak = fcmp ogt float %i.x, %i.aj
  %or.cond.i = select i1 %i.ai, i1 true, i1 %i.ak
  br i1 %or.cond.i, label %_ZN12_GLOBAL__N_120intersectSegmentAABBEPKfS1_S1_S1_RfS2_.exit.thread.i, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.al = fdiv float 1.000000e+00, %i.y           ; 2 uses
  %i.am = fsub float %i.ah, %i.x
  %i.an = fmul float %i.al, %i.am                 ; 3 uses
  %i.ao = load float, ptr %i.b, align 4, !tbaa !41
  %i.ap = fsub float %i.ao, %i.x
  %i.aq = fmul float %i.al, %i.ap                 ; 3 uses
  %i.ar = fcmp ogt float %i.an, %i.aq             ; 2 uses
  %.047.i.i = select i1 %i.ar, float %i.aq, float %i.an ; 2 uses
  %.0.i.i = select i1 %i.ar, float %i.an, float %i.aq ; 2 uses
  %i.as = fcmp olt float %.047.i.i, 0.000000e+00
  %.sroa.speculated44.i.i = select i1 %i.as, float 0.000000e+00, float %.047.i.i ; 2 uses
  %i.at = fcmp ogt float %.0.i.i, f0x7F7FFFFF
  %.sroa.speculated.i.i = select i1 %i.at, float f0x7F7FFFFF, float %.0.i.i ; 2 uses
  %i.au = fcmp ule float %.sroa.speculated44.i.i, %.sroa.speculated.i.i
  br i1 %i.au, label %bb.g, label %_ZN12_GLOBAL__N_120intersectSegmentAABBEPKfS1_S1_S1_RfS2_.exit.thread.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %.029.i = phi float [ 0.000000e+00, %bb.e ], [ %.sroa.speculated44.i.i, %bb.f ] ; 3 uses
  %.027.i = phi float [ f0x7F7FFFFF, %bb.e ], [ %.sroa.speculated.i.i, %bb.f ] ; 3 uses
  %i.av = call float @llvm.fabs.f32(float %i.ab)
  %i.aw = fcmp olt float %i.av, f0x358637BD
  %i.ax = load float, ptr %i.m, align 4, !tbaa !41 ; 2 uses
  br i1 %i.aw, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = fdiv float 1.000000e+00, %i.ab          ; 2 uses
  %i.az = fsub float %i.ax, %i.aa
  %i.ba = fmul float %i.ay, %i.az                 ; 3 uses
  %i.bb = load float, ptr %i.n, align 4, !tbaa !41
  %i.bc = fsub float %i.bb, %i.aa
  %i.bd = fmul float %i.ay, %i.bc                 ; 3 uses
  %i.be = fcmp ogt float %i.ba, %i.bd             ; 2 uses
  %.047.1.i.i = select i1 %i.be, float %i.bd, float %i.ba ; 2 uses
  %.0.1.i.i = select i1 %i.be, float %i.ba, float %i.bd ; 2 uses
  %i.bf = fcmp olt float %.047.1.i.i, %.029.i
  %.sroa.speculated44.1.i.i = select i1 %i.bf, float %.029.i, float %.047.1.i.i ; 2 uses
  %i.bg = fcmp olt float %.027.i, %.0.1.i.i
  %.sroa.speculated.1.i.i = select i1 %i.bg, float %.027.i, float %.0.1.i.i ; 2 uses
  %i.bh = fcmp ule float %.sroa.speculated44.1.i.i, %.sroa.speculated.1.i.i
  br i1 %i.bh, label %bb.j, label %_ZN12_GLOBAL__N_120intersectSegmentAABBEPKfS1_S1_S1_RfS2_.exit.thread.i

bb.i:                                             ; preds = %bb.g
  %i.bi = fcmp olt float %i.aa, %i.ax
  %i.bj = load float, ptr %i.n, align 4
  %i.bk = fcmp ogt float %i.aa, %i.bj
  %or.cond37.i = select i1 %i.bi, i1 true, i1 %i.bk
  br i1 %or.cond37.i, label %_ZN12_GLOBAL__N_120intersectSegmentAABBEPKfS1_S1_S1_RfS2_.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.130.i = phi float [ %.029.i, %bb.i ], [ %.sroa.speculated44.1.i.i, %bb.h ] ; 3 uses
  %.128.i = phi float [ %.027.i, %bb.i ], [ %.sroa.speculated.1.i.i, %bb.h ] ; 2 uses
  %i.bl = call float @llvm.fabs.f32(float %i.ae)
  %i.bm = fcmp olt float %i.bl, f0x358637BD
  %i.bn = load float, ptr %i.o, align 4, !tbaa !41 ; 2 uses
  br i1 %i.bm, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = fdiv float 1.000000e+00, %i.ae          ; 2 uses
  %i.bp = fsub float %i.bn, %i.ad
  %i.bq = fmul float %i.bo, %i.bp                 ; 3 uses
  %i.br = load float, ptr %i.p, align 4, !tbaa !41
  %i.bs = fsub float %i.br, %i.ad
  %i.bt = fmul float %i.bo, %i.bs                 ; 3 uses
  %i.bu = fcmp ogt float %i.bq, %i.bt             ; 2 uses
  %.047.2.i.i = select i1 %i.bu, float %i.bt, float %i.bq ; 2 uses
  %.0.2.i.i = select i1 %i.bu, float %i.bq, float %i.bt ; 2 uses
  %i.bv = fcmp olt float %.047.2.i.i, %.130.i
  %.sroa.speculated44.2.i.i = select i1 %i.bv, float %.130.i, float %.047.2.i.i ; 2 uses
  %i.bw = fcmp olt float %.128.i, %.0.2.i.i
  %.sroa.speculated.2.i.i = select i1 %i.bw, float %.128.i, float %.0.2.i.i
  %i.bx = fcmp ule float %.sroa.speculated44.2.i.i, %.sroa.speculated.2.i.i
  br i1 %i.bx, label %_ZN12_GLOBAL__N_120intersectSegmentAABBEPKfS1_S1_S1_RfS2_.exit.i, label %_ZN12_GLOBAL__N_120intersectSegmentAABBEPKfS1_S1_S1_RfS2_.exit.thread.i

bb.l:                                             ; preds = %bb.j
  %i.by = fcmp olt float %i.ad, %i.bn
  %i.bz = load float, ptr %i.p, align 4
  %i.ca = fcmp ogt float %i.ad, %i.bz
  %or.cond40.i = select i1 %i.by, i1 true, i1 %i.ca
  br i1 %or.cond40.i, label %_ZN12_GLOBAL__N_120intersectSegmentAABBEPKfS1_S1_S1_RfS2_.exit.thread.i, label %_ZN12_GLOBAL__N_120intersectSegmentAABBEPKfS1_S1_S1_RfS2_.exit.i

_ZN12_GLOBAL__N_120intersectSegmentAABBEPKfS1_S1_S1_RfS2_.exit.i: ; preds = %bb.l, %bb.k
  %.231.i = phi float [ %.130.i, %bb.l ], [ %.sroa.speculated44.2.i.i, %bb.k ] ; 2 uses
  %i.cb = fcmp olt float %.231.i, %.01441.i
  br i1 %i.cb, label %bb.m, label %_ZN12_GLOBAL__N_120intersectSegmentAABBEPKfS1_S1_S1_RfS2_.exit.thread.i

bb.m:                                             ; preds = %_ZN12_GLOBAL__N_120intersectSegmentAABBEPKfS1_S1_S1_RfS2_.exit.i
  br label %_ZN12_GLOBAL__N_120intersectSegmentAABBEPKfS1_S1_S1_RfS2_.exit.thread.i

_ZN12_GLOBAL__N_120intersectSegmentAABBEPKfS1_S1_S1_RfS2_.exit.thread.i: ; preds = %bb.m, %_ZN12_GLOBAL__N_120intersectSegmentAABBEPKfS1_S1_S1_RfS2_.exit.i, %bb.l, %bb.k, %bb.i, %bb.h, %bb.f, %bb.e
  %.115.i = phi float [ %.231.i, %bb.m ], [ %.01441.i, %_ZN12_GLOBAL__N_120intersectSegmentAABBEPKfS1_S1_S1_RfS2_.exit.i ], [ %.01441.i, %bb.f ], [ %.01441.i, %bb.l ], [ %.01441.i, %bb.e ], [ %.01441.i, %bb.h ], [ %.01441.i, %bb.i ], [ %.01441.i, %bb.k ]
  %.1.i = phi ptr [ %i.s, %bb.m ], [ %.01342.i, %_ZN12_GLOBAL__N_120intersectSegmentAABBEPKfS1_S1_S1_RfS2_.exit.i ], [ %.01342.i, %bb.f ], [ %.01342.i, %bb.l ], [ %.01342.i, %bb.e ], [ %.01342.i, %bb.h ], [ %.01342.i, %bb.i ], [ %.01342.i, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !214
  br label %bb.n

bb.n:                                             ; preds = %_ZN12_GLOBAL__N_120intersectSegmentAABBEPKfS1_S1_S1_RfS2_.exit.thread.i, %bb.c
  %i.cc = phi i32 [ %.pre.i, %_ZN12_GLOBAL__N_120intersectSegmentAABBEPKfS1_S1_S1_RfS2_.exit.thread.i ], [ %i.q, %bb.c ] ; 2 uses
  %.216.i = phi float [ %.115.i, %_ZN12_GLOBAL__N_120intersectSegmentAABBEPKfS1_S1_S1_RfS2_.exit.thread.i ], [ %.01441.i, %bb.c ]
  %.2.i = phi ptr [ %.1.i, %_ZN12_GLOBAL__N_120intersectSegmentAABBEPKfS1_S1_S1_RfS2_.exit.thread.i ], [ %.01342.i, %bb.c ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = icmp slt i64 %indvars.iv.next.i, %i.cd
  br i1 %i.ce, label %bb.c, label %_ZN12_GLOBAL__N_115hitTestObstacleEPK11dtTileCachePKfS4_.exit, !llvm.loop !312

_ZN12_GLOBAL__N_115hitTestObstacleEPK11dtTileCachePKfS4_.exit: ; preds = %bb.n, %bb.b
  %.013.lcssa.i = phi ptr [ null, %bb.b ], [ %.2.i, %bb.n ]
  %i.cf = call noundef i32 @_ZNK11dtTileCache14getObstacleRefEPK19dtTileCacheObstacle(ptr noundef nonnull align 8 dereferenceable(912) %i.d, ptr noundef %.013.lcssa.i) #12
  %i.cg = call noundef i32 @_ZN11dtTileCache14removeObstacleEj(ptr noundef nonnull align 8 dereferenceable(912) %i.d, i32 noundef %i.cf) #12 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %_ZN12_GLOBAL__N_115hitTestObstacleEPK11dtTileCachePKfS4_.exit
  ret void
}

declare noundef i32 @_ZN11dtTileCache14removeObstacleEj(ptr noundef nonnull align 8 dereferenceable(912), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK20Sample_TempObstacles21clearAllTempObstaclesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(276) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit, label %.preheader
end_hunk_0
begin_hunk_1_@_ZN11MeshProcess7processEP21dtNavMeshCreateParamsPhPt:bb.a
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !98   ; 8 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.f, label %bb.e

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.pre34 = phi i32 [ %.pre35, %bb.d ], [ %i.b, %bb.a ] ; 9 uses
  %i.f = phi i32 [ %i.j, %bb.d ], [ %i.b, %bb.a ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.a ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !76
  switch i8 %i.h, label %bb.d [
    i8 63, label %.thread
    i8 0, label %.sink.split
    i8 4, label %.sink.split
    i8 2, label %.sink.split
    i8 1, label %bb.b
    i8 3, label %bb.c
  ]

.thread:                                          ; preds = %.lr.ph
  store i8 0, ptr %i.g, align 1, !tbaa !76
  %.pre.pre = load i32, ptr %i.a, align 8, !tbaa !403 ; 2 uses
  br label %.sink.split

bb.b:                                             ; preds = %.lr.ph
  br label %.sink.split

bb.c:                                             ; preds = %.lr.ph
  br label %.sink.split

.sink.split:                                      ; preds = %.thread, %.lr.ph, %.lr.ph, %.lr.ph, %bb.b, %bb.c
  %.sink = phi i16 [ 2, %bb.b ], [ 5, %bb.c ], [ 1, %.lr.ph ], [ 1, %.lr.ph ], [ 1, %.lr.ph ], [ 1, %.thread ]
  %.pre35.ph = phi i32 [ %.pre34, %bb.b ], [ %.pre34, %bb.c ], [ %.pre34, %.lr.ph ], [ %.pre34, %.lr.ph ], [ %.pre34, %.lr.ph ], [ %.pre.pre, %.thread ]
  %.ph = phi i32 [ %i.f, %bb.b ], [ %i.f, %bb.c ], [ %.pre34, %.lr.ph ], [ %.pre34, %.lr.ph ], [ %.pre34, %.lr.ph ], [ %.pre.pre, %.thread ]
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv
  store i16 %.sink, ptr %i.i, align 2, !tbaa !77
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %.lr.ph
  %.pre35 = phi i32 [ %.pre34, %.lr.ph ], [ %.pre35.ph, %.sink.split ]
  %i.j = phi i32 [ %i.f, %.lr.ph ], [ %.ph, %.sink.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = icmp slt i64 %indvars.iv.next, %i.k
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !llvm.loop !401

bb.e:                                             ; preds = %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 280
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %i.n, ptr %i.o, align 8, !tbaa !404
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 304
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.q, ptr %i.r, align 8, !tbaa !405
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 328
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !406
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr %i.t, ptr %i.u, align 8, !tbaa !407
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 352
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !406  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %i.w, ptr %i.x, align 8, !tbaa !408
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 376
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !409
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !410
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 400
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !411
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !412
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 360
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !413
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.w to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !414
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN22TempObstacleCreateToolD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i8 @_ZN22TempObstacleCreateTool4typeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i8 3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN22TempObstacleCreateTool4initEP6Sample(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN22TempObstacleCreateTool5resetEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN22TempObstacleCreateTool10singleStepEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN22TempObstacleCreateTool6updateEf(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN22TempObstacleCreateTool6renderEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN22TempObstacleCreateTool10drawMenuUIEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.46) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  store <2 x float> zeroinitializer, ptr %1, align 8, !tbaa !41
  %i.a = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.47, ptr noundef nonnull align 4 dereferenceable(8) %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  br i1 %i.a, label %bb.b, label %_ZNK20Sample_TempObstacles21clearAllTempObstaclesEv.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !103
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 232 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105  ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNK20Sample_TempObstacles21clearAllTempObstaclesEv.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.g = load i32, ptr %i.f, align 8, !tbaa !214
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.i, label %_ZNK20Sample_TempObstacles21clearAllTempObstaclesEv.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.d
  %i.i = phi ptr [ %i.r, %bb.d ], [ %i.e, %.preheader.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ 0, %.preheader.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !215
  %i.l = getelementptr inbounds nuw [112 x i8], ptr %i.k, i64 %indvars.iv.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 99
  %i.n = load i8, ptr %i.m, align 1, !tbaa !217
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.p = call noundef i32 @_ZNK11dtTileCache14getObstacleRefEPK19dtTileCacheObstacle(ptr noundef nonnull align 8 dereferenceable(912) %i.i, ptr noundef nonnull %i.l) #12
  %i.q = call noundef i32 @_ZN11dtTileCache14removeObstacleEj(ptr noundef nonnull align 8 dereferenceable(912) %i.i, i32 noundef %i.p) #12 ; 0 uses
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !105
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.r = phi ptr [ %i.i, %.lr.ph.i ], [ %.pre.i, %bb.c ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.t = load i32, ptr %i.s, align 8, !tbaa !214
  %i.u = sext i32 %i.t to i64
  %i.v = icmp slt i64 %indvars.iv.next.i, %i.u
  br i1 %i.v, label %.lr.ph.i, label %_ZNK20Sample_TempObstacles21clearAllTempObstaclesEv.exit, !llvm.loop !3

_ZNK20Sample_TempObstacles21clearAllTempObstaclesEv.exit: ; preds = %bb.d, %.preheader.i, %bb.b, %bb.a
  call void @_ZN5ImGui9SeparatorEv() #12
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.48) #12
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.49) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN22TempObstacleCreateTool13drawOverlayUIEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN22TempObstacleCreateTool7onClickEPKfS1_b(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !103  ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %_ZNK20Sample_TempObstacles15addTempObstacleEPKf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK20Sample_TempObstacles18removeTempObstacleEPKfS1_(ptr noundef nonnull align 8 dereferenceable(276) %i.c, ptr noundef %1, ptr noundef %2)
  br label %_ZNK20Sample_TempObstacles15addTempObstacleEPKf.exit

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105  ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNK20Sample_TempObstacles15addTempObstacleEPKf.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %4 = load float, ptr %2, align 4, !tbaa !41
  store float %4, ptr %i.a, align 4, !tbaa !41
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %6 = load float, ptr %5, align 4, !tbaa !41
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %i.g, ptr %i.h, align 4, !tbaa !41
  %8 = fadd float %6, -5.000000e-01
  store float %8, ptr %7, align 4, !tbaa !41
  %i.i = call noundef i32 @_ZN11dtTileCache11addObstacleEPKfffPj(ptr noundef nonnull align 8 dereferenceable(912) %i.e, ptr noundef nonnull %i.a, float noundef 1.000000e+00, float noundef 2.000000e+00, ptr noundef null) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZNK20Sample_TempObstacles15addTempObstacleEPKf.exit

_ZNK20Sample_TempObstacles15addTempObstacleEPKf.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN22TempObstacleCreateTool8onToggleEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10SampleToolD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN25TempObstacleHighlightToolD0Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i8 @_ZN25TempObstacleHighlightTool4typeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i8 2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN25TempObstacleHighlightTool4initEP6Sample(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN25TempObstacleHighlightTool5resetEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN25TempObstacleHighlightTool10singleStepEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN25TempObstacleHighlightTool6updateEf(ptr noundef nonnull align 8 dereferenceable(36) %0, float noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN25TempObstacleHighlightTool6renderEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i8, ptr %i.a, align 4, !tbaa !226, !range !65, !noundef !66
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !227  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load float, ptr %i.f, align 8, !tbaa !415 ; 6 uses
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -128) #12
  tail call void @glLineWidth(float noundef 2.000000e+00) #12
  tail call void @glBegin(i32 noundef 1) #12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.i = load float, ptr %i.h, align 8, !tbaa !41
  %i.j = fsub float %i.i, %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !41
  %i.m = fadd float %i.l, 1.000000e-01
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.o = load float, ptr %i.n, align 8, !tbaa !41
  tail call void @glVertex3f(float noundef %i.j, float noundef %i.m, float noundef %i.o) #12
  %i.p = load float, ptr %i.h, align 8, !tbaa !41
  %i.q = fadd float %i.g, %i.p
  %i.r = load float, ptr %i.k, align 4, !tbaa !41
  %i.s = fadd float %i.r, 1.000000e-01
  %i.t = load float, ptr %i.n, align 8, !tbaa !41
  tail call void @glVertex3f(float noundef %i.q, float noundef %i.s, float noundef %i.t) #12
  %i.u = load float, ptr %i.h, align 8, !tbaa !41
  %i.v = load float, ptr %i.k, align 4, !tbaa !41
  %i.w = fsub float %i.v, %i.g
  %i.x = fadd float %i.w, 1.000000e-01
  %i.y = load float, ptr %i.n, align 8, !tbaa !41
  tail call void @glVertex3f(float noundef %i.u, float noundef %i.x, float noundef %i.y) #12
  %i.z = load float, ptr %i.h, align 8, !tbaa !41
  %i.aa = load float, ptr %i.k, align 4, !tbaa !41
  %i.ab = fadd float %i.g, %i.aa
  %i.ac = fadd float %i.ab, 1.000000e-01
  %i.ad = load float, ptr %i.n, align 8, !tbaa !41
  tail call void @glVertex3f(float noundef %i.z, float noundef %i.ac, float noundef %i.ad) #12
  %i.ae = load float, ptr %i.h, align 8, !tbaa !41
  %i.af = load float, ptr %i.k, align 4, !tbaa !41
  %i.ag = fadd float %i.af, 1.000000e-01
  %i.ah = load float, ptr %i.n, align 8, !tbaa !41
  %i.ai = fsub float %i.ah, %i.g
  tail call void @glVertex3f(float noundef %i.ae, float noundef %i.ag, float noundef %i.ai) #12
  %i.aj = load float, ptr %i.h, align 8, !tbaa !41
  %i.ak = load float, ptr %i.k, align 4, !tbaa !41
  %i.al = fadd float %i.ak, 1.000000e-01
  %i.am = load float, ptr %i.n, align 8, !tbaa !41
  %i.an = fadd float %i.g, %i.am
  tail call void @glVertex3f(float noundef %i.aj, float noundef %i.al, float noundef %i.an) #12
  tail call void @glEnd() #12
  tail call void @glLineWidth(float noundef 1.000000e+00) #12
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !227 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !30 ; 3 uses
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %_ZN20Sample_TempObstacles10getTilePosEPKfRiS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 84
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !131, !range !65, !noundef !66
  %i.at = trunc nuw i8 %i.as to i1
  %.v.i.i = select i1 %i.at, i64 56, i64 192
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.v.i.i ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 272
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !88
  %i.ax = sitofp i32 %i.aw to float
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 52
  %i.az = load float, ptr %i.ay, align 4, !tbaa !132
  %i.ba = fmul float %i.az, %i.ax
  %i.bb = load <2 x float>, ptr %i.h, align 8
  %i.bc = load float, ptr %i.au, align 4, !tbaa !41
  %i.bd = load float, ptr %i.n, align 8, !tbaa !41
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bf = load float, ptr %i.be, align 4, !tbaa !41
  %i.bg = insertelement <2 x float> %i.bb, float %i.bd, i64 1
  %i.bh = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bi = insertelement <2 x float> %i.bh, float %i.bf, i64 1
  %i.bj = fsub <2 x float> %i.bg, %i.bi
  %i.bk = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = fdiv <2 x float> %i.bj, %i.bl
  %i.bn = fptosi <2 x float> %i.bm to <2 x i32>
  br label %_ZN20Sample_TempObstacles10getTilePosEPKfRiS2_.exit

_ZN20Sample_TempObstacles10getTilePosEPKfRiS2_.exit: ; preds = %bb.c, %bb.d
  %i.bo = phi <2 x i32> [ zeroinitializer, %bb.c ], [ %i.bn, %bb.d ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !228
  %i.br = extractelement <2 x i32> %i.bo, i64 0
  %i.bs = extractelement <2 x i32> %i.bo, i64 1
  tail call void @_ZN20Sample_TempObstacles16renderCachedTileEiii(ptr noundef nonnull align 8 dereferenceable(276) %i.ao, i32 noundef %i.br, i32 noundef %i.bs, i32 noundef %i.bq)
  br label %bb.e

bb.e:                                             ; preds = %_ZN20Sample_TempObstacles10getTilePosEPKfRiS2_.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN25TempObstacleHighlightTool10drawMenuUIEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.50) #12
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.51) #12
  tail call void @_ZN5ImGui9SeparatorEv() #12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !228
  %i.c = icmp eq i32 %i.b, 0
  %i.d = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef nonnull @.str.52, i1 noundef zeroext %i.c) #12
  br i1 %i.d, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load i32, ptr %i.a, align 8, !tbaa !228
  %i.e = icmp eq i32 %.pre, 1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 8, !tbaa !228
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.f = phi i1 [ %i.e, %._crit_edge ], [ false, %bb.b ]
  %i.g = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef nonnull @.str.53, i1 noundef zeroext %i.f) #12
  br i1 %i.g, label %bb.d, label %._crit_edge1

._crit_edge1:                                     ; preds = %bb.c
  %.pre2 = load i32, ptr %i.a, align 8, !tbaa !228
  %i.h = icmp eq i32 %.pre2, 2
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %i.a, align 8, !tbaa !228
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge1, %bb.d
end_hunk_1
