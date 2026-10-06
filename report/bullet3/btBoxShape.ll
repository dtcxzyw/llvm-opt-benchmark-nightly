Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btBoxShape?download=true
inline.NumInlined: 171
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK10btBoxShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i:bb.a
  %i.f = getelementptr i8, ptr %2, i64 %i.e       ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 %i.e
  %i.h = getelementptr i8, ptr %i.g, i64 -4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  %bound0 = icmp ult ptr %2, %i.h
  %bound1 = icmp ult ptr %1, %i.f
  %found.conflict = and i1 %bound0, %bound1
  %bound025 = icmp ult ptr %2, %i.i
  %bound126 = icmp ult ptr %i.a, %i.f
  %found.conflict27 = and i1 %bound025, %bound126
  %conflict.rdx = or i1 %found.conflict, %found.conflict27
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.j = and i64 %wide.trip.count, 3              ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = select i1 %i.k, i64 4, i64 %i.j
  %n.vec = sub nsw i64 %wide.trip.count, %i.l     ; 2 uses
  %i.m = load <4 x float>, ptr %i.a, align 8
  %broadcast.splat = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.n = fneg <4 x float> %broadcast.splat
  %i.o = load <4 x float>, ptr %i.c, align 4
  %broadcast.splat29 = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.p = fneg <4 x float> %broadcast.splat29
  %i.q = load <4 x float>, ptr %i.d, align 8
  %broadcast.splat31 = shufflevector <4 x float> %i.q, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.r = fneg <4 x float> %broadcast.splat31
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index
  %i.aa = load float, ptr %i.s, align 4, !tbaa !19, !alias.scope !38
  %i.ab = load float, ptr %i.u, align 4, !tbaa !19, !alias.scope !38
  %i.ac = load float, ptr %i.w, align 4, !tbaa !19, !alias.scope !38
  %i.ad = load float, ptr %i.y, align 4, !tbaa !19, !alias.scope !38
  %i.ae = insertelement <4 x float> poison, float %i.aa, i64 0
  %i.af = insertelement <4 x float> %i.ae, float %i.ab, i64 1
  %i.ag = insertelement <4 x float> %i.af, float %i.ac, i64 2
  %i.ah = insertelement <4 x float> %i.ag, float %i.ad, i64 3
  %i.ai = fcmp oge <4 x float> %i.ah, zeroinitializer
  %i.aj = select <4 x i1> %i.ai, <4 x float> %broadcast.splat, <4 x float> %i.n
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 36
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 52
  %i.ao = load float, ptr %i.ak, align 4, !tbaa !19, !alias.scope !38
  %i.ap = load float, ptr %i.al, align 4, !tbaa !19, !alias.scope !38
  %i.aq = load float, ptr %i.am, align 4, !tbaa !19, !alias.scope !38
  %i.ar = load float, ptr %i.an, align 4, !tbaa !19, !alias.scope !38
  %i.as = insertelement <4 x float> poison, float %i.ao, i64 0
  %i.at = insertelement <4 x float> %i.as, float %i.ap, i64 1
  %i.au = insertelement <4 x float> %i.at, float %i.aq, i64 2
  %i.av = insertelement <4 x float> %i.au, float %i.ar, i64 3
  %i.aw = fcmp oge <4 x float> %i.av, zeroinitializer
  %i.ax = select <4 x i1> %i.aw, <4 x float> %broadcast.splat29, <4 x float> %i.p
  %i.ay = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.bc = load float, ptr %i.ay, align 4, !tbaa !19, !alias.scope !38
  %i.bd = load float, ptr %i.az, align 4, !tbaa !19, !alias.scope !38
  %i.be = load float, ptr %i.ba, align 4, !tbaa !19, !alias.scope !38
  %i.bf = load float, ptr %i.bb, align 4, !tbaa !19, !alias.scope !38
  %i.bg = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.bh = insertelement <4 x float> %i.bg, float %i.bd, i64 1
  %i.bi = insertelement <4 x float> %i.bh, float %i.be, i64 2
  %i.bj = insertelement <4 x float> %i.bi, float %i.bf, i64 3
  %i.bk = fcmp oge <4 x float> %i.bj, zeroinitializer
  %i.bl = select <4 x i1> %i.bk, <4 x float> %broadcast.splat31, <4 x float> %i.r
  %i.bm = shufflevector <4 x float> %i.aj, <4 x float> %i.ax, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bn = shufflevector <4 x float> %i.bl, <4 x float> zeroinitializer, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.bm, <8 x float> %i.bn, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.z, align 4, !tbaa !19, !alias.scope !39, !noalias !40
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %scalar.ph.preheader, label %vector.body, !llvm.loop !36

._crit_edge:                                      ; preds = %scalar.ph, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bs = load float, ptr %i.br, align 4, !tbaa !19
  %i.bt = load float, ptr %i.d, align 8, !tbaa !19 ; 2 uses
  %i.bu = fneg float %i.bt
  %i.bv = fcmp oge float %i.bs, 0.000000e+00
  %i.bw = select i1 %i.bv, float %i.bt, float %i.bu
  %i.bx = load <2 x float>, ptr %i.bp, align 4, !tbaa !19
  %i.by = load <2 x float>, ptr %i.a, align 8, !tbaa !19 ; 2 uses
  %i.bz = fneg <2 x float> %i.by
  %i.ca = fcmp oge <2 x float> %i.bx, zeroinitializer
  %i.cb = select <2 x i1> %i.ca, <2 x float> %i.by, <2 x float> %i.bz
  store <2 x float> %i.cb, ptr %i.bq, align 4, !tbaa !19
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store float %i.bw, ptr %i.cc, align 4, !tbaa !19
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store float 0.000000e+00, ptr %i.cd, align 4, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !37
}

declare void @_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10btBoxShape36getNumPreferredPenetrationDirectionsEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 6
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK10btBoxShape32getPreferredPenetrationDirectionEiR9btVector3(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = icmp ult i32 %1, 6
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK10btBoxShape32getPreferredPenetrationDirectionEiR9btVector3, i64 %i.b
  %switch.load = load float, ptr %switch.gep, align 4
  %i.c = zext nneg i32 %1 to i64
  %switch.gep27 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK10btBoxShape32getPreferredPenetrationDirectionEiR9btVector3.1, i64 %i.c
  %switch.load28 = load float, ptr %switch.gep27, align 4
  %i.d = zext nneg i32 %1 to i64
  %switch.gep29 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK10btBoxShape32getPreferredPenetrationDirectionEiR9btVector3.2, i64 %i.d
  %switch.load30 = load float, ptr %switch.gep29, align 4
  store float %switch.load, ptr %2, align 4, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %switch.load28, ptr %i.e, align 4, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = insertelement <2 x float> <float poison, float 0.000000e+00>, float %switch.load30, i64 0
  store <2 x float> %i.g, ptr %i.f, align 4, !tbaa !19
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  ret void
}

declare noundef zeroext i1 @_ZN23btPolyhedralConvexShape28initializePolyhedralFeaturesEi(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) unnamed_addr #1

declare void @_ZN23btPolyhedralConvexShape21setPolyhedralFeaturesER18btConvexPolyhedron(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10btBoxShape14getNumVerticesEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 8
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10btBoxShape11getNumEdgesEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 12
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK10btBoxShape7getEdgeEiR9btVector3S1_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = icmp ult i32 %1, 12
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK10btBoxShape7getEdgeEiR9btVector3S1_, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.c = zext nneg i32 %1 to i64
  %switch.gep6 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK10btBoxShape7getEdgeEiR9btVector3S1_.3, i64 %i.c
  %switch.load7 = load i8, ptr %switch.gep6, align 1
  %switch.ext8 = zext i8 %switch.load7 to i32
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.05 = phi i32 [ 0, %bb.a ], [ %switch.ext, %switch.lookup ]
  %.0 = phi i32 [ 0, %bb.a ], [ %switch.ext8, %switch.lookup ]
  %i.d = load ptr, ptr %0, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %.05, ptr noundef nonnull align 4 dereferenceable(16) %2)
  %i.g = load ptr, ptr %0, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %.0, ptr noundef nonnull align 4 dereferenceable(16) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK10btBoxShape9getVertexEiR9btVector3(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %3 = load <4 x float>, ptr %i.a, align 8
  %i.b = load ptr, ptr %0, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef float %i.d(ptr noundef nonnull align 8 dereferenceable(80) %0), !inline_history !0
  %i.f = load ptr, ptr %0, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef float %i.h(ptr noundef nonnull align 8 dereferenceable(80) %0), !inline_history !0
  %i.j = load ptr, ptr %0, align 8, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef float %i.l(ptr noundef nonnull align 8 dereferenceable(80) %0), !inline_history !0
  %i.n = lshr i32 %1, 1
  %i.o = lshr i32 %1, 2
  %i.p = and i32 %i.o, 1                          ; 2 uses
  %i.q = xor i32 %i.p, 1
  %i.r = uitofp nneg i32 %i.q to float
  %i.s = uitofp nneg i32 %i.p to float
  %i.t = fneg float %i.s
  %i.u = insertelement <4 x float> %3, float 0.000000e+00, i64 3
  %i.v = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.e, i64 0
  %i.w = insertelement <4 x float> %i.v, float %i.i, i64 1
  %i.x = insertelement <4 x float> %i.w, float %i.m, i64 2
  %i.y = fadd <4 x float> %i.u, %i.x              ; 2 uses
  %i.z = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.aa = insertelement <2 x i32> %i.z, i32 %i.n, i64 1
  %i.ab = and <2 x i32> %i.aa, splat (i32 1)      ; 2 uses
  %i.ac = xor <2 x i32> %i.ab, splat (i32 1)
  %i.ad = uitofp nneg <2 x i32> %i.ab to <2 x float>
  %i.ae = fneg <2 x float> %i.ad
  %i.af = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.t, i64 2
  %i.ag = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> %i.af, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ai = fmul <4 x float> %i.y, %i.ah
  %i.aj = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.r, i64 2
  %i.ak = shufflevector <2 x i32> %i.ac, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.al = uitofp <4 x i32> %i.ak to <4 x float>
  %i.am = shufflevector <4 x float> %i.al, <4 x float> %i.aj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.an = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.y, <4 x float> %i.am, <4 x float> %i.ai)
  store <4 x float> %i.an, ptr %2, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10btBoxShape12getNumPlanesEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK10btBoxShape8getPlaneER9btVector3S1_i(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %class.btVector4, align 8           ; 5 uses
  %5 = alloca %class.btVector3, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %3)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load float, ptr %i.d, align 8, !tbaa !19 ; 2 uses
  %i.f = load <2 x float>, ptr %4, align 8, !tbaa !19 ; 2 uses
  store <2 x float> %i.f, ptr %1, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.e, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.g = fneg <2 x float> %i.f
  %i.h = fneg float %i.e
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.h, i64 0
  store <2 x float> %i.g, ptr %5, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.i, align 8
  %i.j = load ptr, ptr %0, align 8, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = call { <2 x float>, <2 x float> } %i.l(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(16) %5) ; 2 uses
  %i.n = extractvalue { <2 x float>, <2 x float> } %i.m, 0
  %i.o = extractvalue { <2 x float>, <2 x float> } %i.m, 1
  store <2 x float> %i.n, ptr %2, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %i.o, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10btBoxShape8isInsideERK9btVector3f(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, float noundef %2) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload = load float, ptr %i.a, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %i.b = load float, ptr %1, align 4, !tbaa !19   ; 2 uses
  %i.c = fadd float %2, %.sroa.0.0.copyload
  %i.d = fcmp ugt float %i.b, %i.c
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = fneg float %.sroa.0.0.copyload
  %i.f = fsub float %i.e, %2
  %i.g = fcmp ult float %i.b, %i.f
  br i1 %i.g, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load float, ptr %i.h, align 4, !tbaa !19 ; 2 uses
  %i.j = fadd float %2, %.sroa.5.0.copyload
  %i.k = fcmp ugt float %i.i, %i.j
  br i1 %i.k, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = fneg float %.sroa.5.0.copyload
  %i.m = fsub float %i.l, %2
  %i.n = fcmp ult float %i.i, %i.m
  br i1 %i.n, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load float, ptr %i.o, align 4, !tbaa !19 ; 2 uses
  %i.q = fadd float %2, %.sroa.7.0.copyload
  %i.r = fcmp ugt float %i.p, %i.q
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = fneg float %.sroa.7.0.copyload
  %i.t = fsub float %i.s, %2
  %i.u = fcmp oge float %i.p, %i.t
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.v = phi i1 [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ %i.u, %bb.f ]
  ret i1 %i.v
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK10btBoxShape16getPlaneEquationER9btVector4i(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload = load float, ptr %i.a, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  switch i32 %2, label %bb.g [
    i32 0, label %.sink.split
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.7.0.copyload.sink = phi float [ %.sroa.7.0.copyload, %bb.f ], [ %.sroa.7.0.copyload, %bb.e ], [ %.sroa.5.0.copyload, %bb.d ], [ %.sroa.5.0.copyload, %bb.c ], [ %.sroa.0.0.copyload, %bb.b ], [ %.sroa.0.0.copyload, %bb.a ]
  %.sink34 = phi float [ -1.000000e+00, %bb.f ], [ 1.000000e+00, %bb.e ], [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.b = phi <2 x float> [ zeroinitializer, %bb.f ], [ zeroinitializer, %bb.e ], [ <float 0.000000e+00, float -1.000000e+00>, %bb.d ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.c ], [ <float -1.000000e+00, float 0.000000e+00>, %bb.b ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.a ]
  %i.c = fneg float %.sroa.7.0.copyload.sink
  store <2 x float> %i.b, ptr %1, align 4, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %.sink34, ptr %i.d, align 4, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.c, ptr %i.e, align 4, !tbaa !19
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #11 ; 0 uses
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

declare void @_ZN21btConvexInternalShape15setLocalScalingERK9btVector3(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

declare noundef ptr @_ZNK16btCollisionShape9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #3

end_hunk_0
