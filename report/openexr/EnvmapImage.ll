Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/EnvmapImage?download=true
inline.NumInlined: 109
inline.NumDeleted: 37
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK11EnvmapImage4typeEv
define dso_local noundef i32 @_ZNK11EnvmapImage4typeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !29
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZNK11EnvmapImage10dataWindowEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(48) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN11EnvmapImage6pixelsEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(48) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNK11EnvmapImage6pixelsEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(48) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define dso_local i64 @_ZNK11EnvmapImage14filteredLookupEN9Imath_3_24Vec3IfEEfi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef align 4 dead_on_return %1, float noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Imath_3_2::Vec3", align 8   ; 6 uses
  %5 = alloca %"class.Imath_3_2::Vec3", align 8   ; 7 uses
  %6 = alloca %"class.Imath_3_2::Vec3", align 8   ; 6 uses
  %7 = alloca %"class.Imath_3_2::Vec2.0", align 4 ; 4 uses
  %8 = alloca %"class.Imath_3_2::Vec3", align 8   ; 5 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !29
  %i.b = icmp eq i32 %i.a, 0
  %_ZN12_GLOBAL__N_115dirToPosLatLongERKN9Imath_3_23BoxINS0_4Vec2IiEEEERKNS0_4Vec3IfEE._ZN12_GLOBAL__N_112dirToPosCubeERKN9Imath_3_23BoxINS0_4Vec2IiEEEERKNS0_4Vec3IfEE = select i1 %i.b, ptr @_ZN12_GLOBAL__N_115dirToPosLatLongERKN9Imath_3_23BoxINS0_4Vec2IiEEEERKNS0_4Vec3IfEE, ptr @_ZN12_GLOBAL__N_112dirToPosCubeERKN9Imath_3_23BoxINS0_4Vec2IiEEEERKNS0_4Vec3IfEE
  %i.c = load float, ptr %1, align 4, !tbaa !35   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.e = load float, ptr %i.d, align 4, !tbaa !66 ; 2 uses
  %i.f = fmul float %i.e, %i.e
  %i.g = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !67 ; 2 uses
  %i.j = tail call noundef float @llvm.fmuladd.f32(float %i.i, float %i.i, float %i.g) ; 2 uses
  %i.k = fcmp olt float %i.j, f0x01000000
  br i1 %i.k, label %bb.b, label %bb.c, !prof !36

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef float @_ZNK9Imath_3_24Vec3IfE10lengthTinyEv(ptr noundef nonnull align 4 dereferenceable(12) %1) #16
  %.pre.pre = load float, ptr %1, align 4, !tbaa !35
  br label %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i

bb.c:                                             ; preds = %bb.a
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.j)
  br label %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i

_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i:           ; preds = %bb.c, %bb.b
  %.pre = phi float [ %.pre.pre, %bb.b ], [ %i.c, %bb.c ] ; 2 uses
  %.0.i.i = phi float [ %i.l, %bb.b ], [ %sqrt.i.i, %bb.c ] ; 3 uses
  %i.m = fcmp une float %.0.i.i, 0.000000e+00
  br i1 %i.m, label %bb.d, label %_ZN9Imath_3_24Vec3IfE9normalizeEv.exit, !prof !68

bb.d:                                             ; preds = %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i
  %i.n = load float, ptr %i.d, align 4, !tbaa !66
  %i.o = insertelement <2 x float> poison, float %.pre, i64 0
  %i.p = insertelement <2 x float> %i.o, float %i.n, i64 1
  %i.q = insertelement <2 x float> poison, float %.0.i.i, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fdiv <2 x float> %i.p, %i.r              ; 2 uses
  store <2 x float> %i.s, ptr %1, align 4, !tbaa !37
  %i.t = load float, ptr %i.h, align 4, !tbaa !67
  %i.u = fdiv float %i.t, %.0.i.i
  store float %i.u, ptr %i.h, align 4, !tbaa !67
  %i.v = extractelement <2 x float> %i.s, i64 0
  br label %_ZN9Imath_3_24Vec3IfE9normalizeEv.exit

_ZN9Imath_3_24Vec3IfE9normalizeEv.exit:           ; preds = %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i, %bb.d
  %i.w = phi float [ %.pre, %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i ], [ %i.v, %bb.d ] ; 5 uses
  %i.x = tail call noundef float @llvm.fabs.f32(float %i.w)
  %i.y = fcmp ogt float %i.x, 7.070000e-01
  br i1 %i.y, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZN9Imath_3_24Vec3IfE9normalizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.z = fmul float %i.w, -0.000000e+00
  %i.aa = load <2 x float>, ptr %i.d, align 4, !tbaa !37, !noalias !69 ; 3 uses
  %i.ab = extractelement <2 x float> %i.aa, i64 1
  %i.ac = fneg float %i.ab
  %i.ad = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ae = insertelement <2 x float> %i.ad, float %i.z, i64 1
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> zeroinitializer, <2 x float> %i.ae) ; 4 uses
  %i.ag = extractelement <2 x float> %i.aa, i64 0
  %i.ah = fmul float %i.ag, 0.000000e+00
  %i.ai = fsub float %i.w, %i.ah                  ; 3 uses
  store <2 x float> %i.af, ptr %4, align 8, !tbaa !37, !alias.scope !69
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store float %i.ai, ptr %i.aj, align 8, !tbaa !67, !alias.scope !69
  %foldExtExtBinop = fmul <2 x float> %i.af, %i.af
  %i.ak = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.al = extractelement <2 x float> %i.af, i64 0 ; 2 uses
  %i.am = tail call float @llvm.fmuladd.f32(float %i.al, float %i.al, float %i.ak)
  %i.an = tail call noundef float @llvm.fmuladd.f32(float %i.ai, float %i.ai, float %i.am) ; 2 uses
  %i.ao = fcmp olt float %i.an, f0x01000000
  br i1 %i.ao, label %bb.f, label %bb.g, !prof !36

bb.f:                                             ; preds = %bb.e
  %i.ap = call noundef float @_ZNK9Imath_3_24Vec3IfE10lengthTinyEv(ptr noundef nonnull align 4 dereferenceable(12) %4) #16, !noalias !70
  br label %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i52

bb.g:                                             ; preds = %bb.e
  %sqrt.i.i51 = tail call float @llvm.sqrt.f32(float %i.an)
  br label %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i52

_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i52:         ; preds = %bb.g, %bb.f
  %.0.i.i53 = phi float [ %i.ap, %bb.f ], [ %sqrt.i.i51, %bb.g ] ; 3 uses
  %i.aq = fcmp oeq float %.0.i.i53, 0.000000e+00
  br i1 %i.aq, label %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit, label %bb.h, !prof !36

bb.h:                                             ; preds = %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i52
  %i.ar = load <2 x float>, ptr %4, align 8, !tbaa !37, !noalias !70
  %i.as = insertelement <2 x float> poison, float %.0.i.i53, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fdiv <2 x float> %i.ar, %i.at
  %i.av = load float, ptr %i.aj, align 8, !tbaa !67, !noalias !70
  %i.aw = fdiv float %i.av, %.0.i.i53
  br label %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit

_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit:        ; preds = %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i52, %bb.h
  %.sink.i = phi float [ %i.aw, %bb.h ], [ 0.000000e+00, %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i52 ]
  %i.ax = phi <2 x float> [ %i.au, %bb.h ], [ zeroinitializer, %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i52 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.m

bb.i:                                             ; preds = %_ZN9Imath_3_24Vec3IfE9normalizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %i.ay = load float, ptr %i.d, align 4, !tbaa !66, !noalias !71 ; 2 uses
  %i.az = load float, ptr %i.h, align 4, !tbaa !67, !noalias !71 ; 2 uses
  %i.ba = fmul float %i.az, -0.000000e+00
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ay, float 0.000000e+00, float %i.ba) ; 3 uses
  %i.bc = fmul ninf float %i.w, 0.000000e+00
  %i.bd = fsub float %i.az, %i.bc                 ; 3 uses
  %i.be = fneg float %i.ay
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.w, float 0.000000e+00, float %i.be) ; 3 uses
  store float %i.bb, ptr %5, align 8, !tbaa !35, !alias.scope !71
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.bd, ptr %i.bg, align 4, !tbaa !66, !alias.scope !71
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store float %i.bf, ptr %i.bh, align 8, !tbaa !67, !alias.scope !71
  %i.bi = fmul float %i.bd, %i.bd
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.bb, float %i.bi)
  %i.bk = tail call noundef float @llvm.fmuladd.f32(float %i.bf, float %i.bf, float %i.bj) ; 2 uses
  %i.bl = fcmp olt float %i.bk, f0x01000000
  br i1 %i.bl, label %bb.j, label %bb.k, !prof !36

bb.j:                                             ; preds = %bb.i
  %i.bm = call noundef float @_ZNK9Imath_3_24Vec3IfE10lengthTinyEv(ptr noundef nonnull align 4 dereferenceable(12) %5) #16, !noalias !72
  br label %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i55

bb.k:                                             ; preds = %bb.i
  %sqrt.i.i54 = tail call float @llvm.sqrt.f32(float %i.bk)
  br label %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i55

_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i55:         ; preds = %bb.k, %bb.j
  %.0.i.i56 = phi float [ %i.bm, %bb.j ], [ %sqrt.i.i54, %bb.k ] ; 3 uses
  %i.bn = fcmp oeq float %.0.i.i56, 0.000000e+00
  br i1 %i.bn, label %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit60, label %bb.l, !prof !36

bb.l:                                             ; preds = %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i55
  %i.bo = load <2 x float>, ptr %5, align 8, !tbaa !37, !noalias !72
  %i.bp = insertelement <2 x float> poison, float %.0.i.i56, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = fdiv <2 x float> %i.bo, %i.bq
  %i.bs = load float, ptr %i.bh, align 8, !tbaa !67, !noalias !72
  %i.bt = fdiv float %i.bs, %.0.i.i56
  br label %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit60

_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit60:      ; preds = %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i55, %bb.l
  %.sink.i59 = phi float [ %i.bt, %bb.l ], [ 0.000000e+00, %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i55 ]
  %i.bu = phi <2 x float> [ %i.br, %bb.l ], [ zeroinitializer, %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i55 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.m

bb.m:                                             ; preds = %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit60, %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit
  %.sink.i.pn = phi float [ %.sink.i, %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit ], [ %.sink.i59, %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit60 ]
  %i.bv = phi <2 x float> [ %i.ax, %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit ], [ %i.bu, %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit60 ]
  %.sroa.10.0 = fmul float %2, %.sink.i.pn        ; 3 uses
  %i.bw = insertelement <2 x float> poison, float %2, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.by = fmul <2 x float> %i.bx, %i.bv           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.bz = extractelement <2 x float> %i.by, i64 1 ; 2 uses
  %i.ca = load float, ptr %1, align 4, !tbaa !35, !noalias !73 ; 2 uses
  %i.cb = extractelement <2 x float> %i.by, i64 0
  %i.cc = fneg float %i.cb
  %i.cd = load <2 x float>, ptr %i.d, align 4, !tbaa !37, !noalias !73 ; 3 uses
  %i.ce = fneg float %.sroa.10.0
  %9 = fneg float %i.bz
  %i.cf = fmul float %i.ca, %i.ce
  %10 = extractelement <2 x float> %i.cd, i64 1
  %i.cg = fmul float %10, %9
  %i.ch = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ci = insertelement <2 x float> %i.ch, float %.sroa.10.0, i64 0
  %i.cj = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.ck = insertelement <2 x float> %i.cj, float %i.cf, i64 1
  %i.cl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> %i.ci, <2 x float> %i.ck) ; 4 uses
  %i.cm = extractelement <2 x float> %i.cd, i64 0
  %i.cn = fmul float %i.cm, %i.cc
  %i.co = call float @llvm.fmuladd.f32(float %i.ca, float %i.bz, float %i.cn) ; 3 uses
  store <2 x float> %i.cl, ptr %6, align 8, !tbaa !37, !alias.scope !73
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store float %i.co, ptr %i.cp, align 8, !tbaa !67, !alias.scope !73
  %foldExtExtBinop181 = fmul <2 x float> %i.cl, %i.cl
  %i.cq = extractelement <2 x float> %foldExtExtBinop181, i64 1
  %i.cr = extractelement <2 x float> %i.cl, i64 0 ; 2 uses
  %i.cs = call float @llvm.fmuladd.f32(float %i.cr, float %i.cr, float %i.cq)
  %i.ct = call noundef float @llvm.fmuladd.f32(float %i.co, float %i.co, float %i.cs) ; 2 uses
  %i.cu = fcmp olt float %i.ct, f0x01000000
  br i1 %i.cu, label %bb.n, label %bb.o, !prof !36

bb.n:                                             ; preds = %bb.m
  %i.cv = call noundef float @_ZNK9Imath_3_24Vec3IfE10lengthTinyEv(ptr noundef nonnull align 4 dereferenceable(12) %6) #16, !noalias !74
  br label %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i62

bb.o:                                             ; preds = %bb.m
  %sqrt.i.i61 = call float @llvm.sqrt.f32(float %i.ct)
  br label %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i62

_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i62:         ; preds = %bb.o, %bb.n
  %.0.i.i63 = phi float [ %i.cv, %bb.n ], [ %sqrt.i.i61, %bb.o ] ; 3 uses
  %i.cw = fcmp oeq float %.0.i.i63, 0.000000e+00
  br i1 %i.cw, label %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit67, label %bb.p, !prof !36

bb.p:                                             ; preds = %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i62
  %i.cx = load <2 x float>, ptr %6, align 8, !tbaa !37, !noalias !74
  %i.cy = insertelement <2 x float> poison, float %.0.i.i63, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = fdiv <2 x float> %i.cx, %i.cz
  %i.db = load float, ptr %i.cp, align 8, !tbaa !67, !noalias !74
  %i.dc = fdiv float %i.db, %.0.i.i63
  br label %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit67

_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit67:      ; preds = %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i62, %bb.p
  %.sink.i66 = phi float [ %i.dc, %bb.p ], [ 0.000000e+00, %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i62 ]
  %i.dd = phi <2 x float> [ %i.da, %bb.p ], [ zeroinitializer, %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i62 ]
  %i.de = fmul <2 x float> %i.bx, %i.dd
  %i.df = fmul float %2, %.sink.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.dg = icmp sgt i32 %3, 0
  br i1 %i.dg, label %.lr.ph139, label %._crit_edge140

.lr.ph139:                                        ; preds = %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit67
  %i.dh = add nuw nsw i32 %3, 1
  %i.di = uitofp nneg i32 %i.dh to float          ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %._crit_edge.us, %.lr.ph139
  %.039138.us = phi float [ 0.000000e+00, %.lr.ph139 ], [ %i.er, %._crit_edge.us ]
  %.043136.us = phi i32 [ 0, %.lr.ph139 ], [ %i.fm, %._crit_edge.us ] ; 2 uses
  %i.dl = phi <4 x float> [ zeroinitializer, %.lr.ph139 ], [ %i.fk, %._crit_edge.us ]
  %i.dm = shl nuw nsw i32 %.043136.us, 1
  %i.dn = add nuw nsw i32 %i.dm, 2
  %i.do = uitofp nneg i32 %i.dn to float
  %i.dp = fdiv float %i.do, %i.di
  %i.dq = fadd float %i.dp, -1.000000e+00         ; 3 uses
  %i.dr = call noundef float @llvm.fabs.f32(float %i.dq)
  %i.ds = fsub float 1.000000e+00, %i.dr
  %i.dt = insertelement <2 x float> poison, float %i.dq, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = fmul <2 x float> %i.de, %i.du
  %i.dw = fmul float %i.df, %i.dq
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph.us, %bb.q
  %.1128.us = phi float [ %.039138.us, %.lr.ph.us ], [ %i.er, %bb.q ]
  %.042126.us = phi i32 [ 0, %.lr.ph.us ], [ %i.fl, %bb.q ] ; 2 uses
  %i.dx = phi <4 x float> [ %i.dl, %.lr.ph.us ], [ %i.fk, %bb.q ]
  %i.dy = shl nuw nsw i32 %.042126.us, 1
  %i.dz = add nuw nsw i32 %i.dy, 2
  %i.ea = uitofp nneg i32 %i.dz to float
  %i.eb = fdiv float %i.ea, %i.di
  %i.ec = fadd float %i.eb, -1.000000e+00         ; 3 uses
  %i.ed = call noundef float @llvm.fabs.f32(float %i.ec)
  %i.ee = fsub float 1.000000e+00, %i.ed
  %i.ef = fmul float %.sroa.10.0, %i.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.eg = load float, ptr %i.h, align 4, !tbaa !67, !noalias !75
  %i.eh = fadd float %i.ef, %i.eg
  %i.ei = fadd float %i.dw, %i.eh
  %i.ej = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = fmul <2 x float> %i.by, %i.ek
  %i.em = load <2 x float>, ptr %1, align 4, !tbaa !37, !noalias !75
  %i.en = fadd <2 x float> %i.el, %i.em
  %i.eo = fadd <2 x float> %i.dv, %i.en
  store <2 x float> %i.eo, ptr %8, align 8, !tbaa !37, !alias.scope !76
  store float %i.ei, ptr %i.dk, align 8, !tbaa !67, !alias.scope !76
  call void %_ZN12_GLOBAL__N_115dirToPosLatLongERKN9Imath_3_23BoxINS0_4Vec2IiEEEERKNS0_4Vec3IfEE._ZN12_GLOBAL__N_112dirToPosCubeERKN9Imath_3_23BoxINS0_4Vec2IiEEEERKNS0_4Vec3IfEE(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Vec2.0") align 4 %7, ptr noundef nonnull align 4 dereferenceable(16) %i.dj, ptr noundef nonnull align 4 dereferenceable(12) %8), !callees !77
  %i.ep = call i64 @_ZNK11EnvmapImage6sampleERKN9Imath_3_24Vec2IfEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(8) %7) ; 4 uses
  %.sroa.481.0.extract.shift.us = lshr i64 %i.ep, 16
  %.sroa.5.0.extract.shift.us = lshr i64 %i.ep, 32
  %.sroa.682.0.extract.shift.us = lshr i64 %i.ep, 48
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.eq = fmul float %i.ds, %i.ee                 ; 2 uses
  %i.er = fadd float %.1128.us, %i.eq             ; 3 uses
  %i.es = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !39 ; 4 uses
  %i.et = and i64 %i.ep, 65535
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.et
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !40
  %i.ew = and i64 %.sroa.481.0.extract.shift.us, 65535
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.ew
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !40
  %i.ez = and i64 %.sroa.5.0.extract.shift.us, 65535
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.ez
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !40
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %.sroa.682.0.extract.shift.us
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !40
  %i.fe = insertelement <4 x float> poison, float %i.ev, i64 0
  %i.ff = insertelement <4 x float> %i.fe, float %i.ey, i64 1
  %i.fg = insertelement <4 x float> %i.ff, float %i.fb, i64 2
  %i.fh = insertelement <4 x float> %i.fg, float %i.fd, i64 3
  %i.fi = insertelement <4 x float> poison, float %i.eq, i64 0
  %i.fj = shufflevector <4 x float> %i.fi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fh, <4 x float> %i.fj, <4 x float> %i.dx) ; 3 uses
  %i.fl = add nuw nsw i32 %.042126.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.fl, %3
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.q, !llvm.loop !64

._crit_edge.us:                                   ; preds = %bb.q
  %i.fm = add nuw nsw i32 %.043136.us, 1          ; 2 uses
  %exitcond154.not = icmp eq i32 %i.fm, %3
  br i1 %exitcond154.not, label %._crit_edge140, label %.lr.ph.us, !llvm.loop !65

._crit_edge140:                                   ; preds = %._crit_edge.us, %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit67
  %.039.lcssa = phi float [ 0.000000e+00, %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit67 ], [ %i.er, %._crit_edge.us ]
  %i.fn = phi <4 x float> [ zeroinitializer, %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit67 ], [ %i.fk, %._crit_edge.us ] ; 4 uses
  %i.fo = fdiv float 1.000000e+00, %.039.lcssa    ; 4 uses
  %i.fp = extractelement <4 x float> %i.fn, i64 0
  %i.fq = fmul float %i.fp, %i.fo                 ; 2 uses
  %i.fr = bitcast float %i.fq to i32
  %i.fs = call float @llvm.fabs.f32(float %i.fq)
  %i.ft = bitcast float %i.fs to i32              ; 10 uses
  %i.fu = lshr i32 %i.fr, 16                      ; 3 uses
  %i.fv = trunc nuw i32 %i.fu to i16
  %i.fw = and i16 %i.fv, -32768                   ; 3 uses
  %i.fx = icmp samesign ugt i32 %i.ft, 947912703
  br i1 %i.fx, label %bb.r, label %bb.x

bb.r:                                             ; preds = %._crit_edge140
  %i.fy = icmp samesign ugt i32 %i.ft, 2139095039
  br i1 %i.fy, label %bb.s, label %bb.u, !prof !36

bb.s:                                             ; preds = %bb.r
  %i.fz = or disjoint i16 %i.fw, 31744            ; 2 uses
  %i.ga = icmp eq i32 %i.ft, 2139095040
  br i1 %i.ga, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gb = lshr i32 %i.ft, 13
  %i.gc = and i32 %i.gb, 1023                     ; 2 uses
  %i.gd = icmp eq i32 %i.gc, 0
  %i.ge = zext i1 %i.gd to i16
  %i.gf = trunc nuw nsw i32 %i.gc to i16
  %i.gg = or i16 %i.gf, %i.ge
  %i.gh = or disjoint i16 %i.gg, %i.fz
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.u:                                             ; preds = %bb.r
  %i.gi = icmp samesign ugt i32 %i.ft, 1199566847
  br i1 %i.gi, label %bb.v, label %bb.w, !prof !36

bb.v:                                             ; preds = %bb.u
  %i.gj = or disjoint i16 %i.fw, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.w:                                             ; preds = %bb.u
  %i.gk = add nuw nsw i32 %i.ft, 134221823
  %i.gl = lshr i32 %i.ft, 13
  %i.gm = and i32 %i.gl, 1
  %i.gn = add nuw nsw i32 %i.gk, %i.gm
  %i.go = lshr i32 %i.gn, 13
  %i.gp = and i32 %i.fu, 32768
  %i.gq = or i32 %i.go, %i.gp
  %i.gr = trunc i32 %i.gq to i16
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.x:                                             ; preds = %._crit_edge140
  %i.gs = icmp samesign ult i32 %i.ft, 855638017
  br i1 %i.gs, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gt = lshr i32 %i.ft, 23                      ; 2 uses
  %i.gu = sub nuw nsw i32 126, %i.gt
  %i.gv = and i32 %i.ft, 8388607
  %i.gw = or disjoint i32 %i.gv, 8388608          ; 2 uses
  %i.gx = add nsw i32 %i.gt, -94
  %i.gy = shl i32 %i.gw, %i.gx                    ; 2 uses
  %i.gz = lshr i32 %i.gw, %i.gu                   ; 2 uses
  %i.ha = and i32 %i.fu, 32768
  %i.hb = or i32 %i.gz, %i.ha
  %i.hc = trunc nuw i32 %i.hb to i16              ; 2 uses
end_hunk_0
