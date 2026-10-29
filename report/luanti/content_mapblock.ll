Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/content_mapblock?download=true
inline.NumInlined: 881
inline.NumDeleted: 329
loop-unroll.NumCompletelyUnrolled: 77
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN21MapblockMeshGenerator13drawSolidNodeEv:bb.a
  %.not.2.i = icmp eq i32 %i.ny, 0
  br i1 %.not.2.i, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.nz = getelementptr inbounds nuw i8, ptr %2, i64 320
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.oa = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ob = load i16, ptr %i.oa, align 2, !tbaa !121
  %i.oc = load ptr, ptr %i.cn, align 8, !tbaa !58
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 1410
  %i.oe = load i8, ptr %i.od, align 2, !tbaa !113
  %i.of = call i32 @_Z12encode_lightth(i16 noundef zeroext %i.ob, i8 noundef zeroext %i.oe) ; 2 uses
  store i32 %i.of, ptr %1, align 4
  %i.og = load ptr, ptr %i.cn, align 8, !tbaa !58
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 1410
  %i.oi = load i8, ptr %i.oh, align 2, !tbaa !113
  %.not.i.2.i = icmp eq i8 %i.oi, 0
  br i1 %.not.i.2.i, label %bb.ak, label %"_ZZN21MapblockMeshGenerator13drawSolidNodeEvENK3$_1clEiPN5video9S3DVertexE.exit.2.i"

bb.ak:                                            ; preds = %bb.aj
  %i.oj = getelementptr inbounds nuw i8, ptr %2, i64 332
  %.sroa.03.0.copyload.i.2.i = load <2 x float>, ptr %i.oj, align 4, !tbaa !44
  %.sroa.24.0..sroa_idx.i.2.i = getelementptr inbounds nuw i8, ptr %2, i64 340
  %.sroa.24.0.copyload.i.2.i = load float, ptr %.sroa.24.0..sroa_idx.i.2.i, align 4, !tbaa !44
  call void @_Z17applyFacesShadingRN5video6SColorEN4core8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(4) %1, <2 x float> %.sroa.03.0.copyload.i.2.i, float %.sroa.24.0.copyload.i.2.i)
  %.pre.i.2.i = load i32, ptr %1, align 4, !tbaa !115
  br label %"_ZZN21MapblockMeshGenerator13drawSolidNodeEvENK3$_1clEiPN5video9S3DVertexE.exit.2.i"

"_ZZN21MapblockMeshGenerator13drawSolidNodeEvENK3$_1clEiPN5video9S3DVertexE.exit.2.i": ; preds = %bb.ak, %bb.aj
  %i.ok = phi i32 [ %.pre.i.2.i, %bb.ak ], [ %i.of, %bb.aj ] ; 4 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %2, i64 344
  store i32 %i.ok, ptr %i.ol, align 4, !tbaa !115
  %i.om = getelementptr inbounds nuw i8, ptr %2, i64 384
  store i32 %i.ok, ptr %i.om, align 4, !tbaa !115
  %i.on = getelementptr inbounds nuw i8, ptr %2, i64 424
  store i32 %i.ok, ptr %i.on, align 4, !tbaa !115
  %i.oo = getelementptr inbounds nuw i8, ptr %2, i64 464
  store i32 %i.ok, ptr %i.oo, align 4, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.op = load ptr, ptr %i.mp, align 8, !tbaa !32
  call void @_ZN13MeshCollector6appendERK8TileSpecPKN5video9S3DVertexEjPKtj(ptr noundef nonnull align 8 dereferenceable(76) %i.op, ptr noundef nonnull align 8 dereferenceable(104) %.ptr.2, ptr noundef nonnull %i.nz, i32 noundef 4, ptr noundef nonnull @_ZL15quad_indices_02, i32 noundef 6)
  br label %bb.al

bb.al:                                            ; preds = %"_ZZN21MapblockMeshGenerator13drawSolidNodeEvENK3$_1clEiPN5video9S3DVertexE.exit.2.i", %bb.ai
  %i.oq = and i32 %i.mo, 8
  %.not.3.i = icmp eq i32 %i.oq, 0
  br i1 %.not.3.i, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.or = getelementptr inbounds nuw i8, ptr %2, i64 480
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.os = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ot = load i16, ptr %i.os, align 2, !tbaa !121
  %i.ou = load ptr, ptr %i.cn, align 8, !tbaa !58
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 1410
  %i.ow = load i8, ptr %i.ov, align 2, !tbaa !113
  %i.ox = call i32 @_Z12encode_lightth(i16 noundef zeroext %i.ot, i8 noundef zeroext %i.ow) ; 2 uses
  store i32 %i.ox, ptr %1, align 4
  %i.oy = load ptr, ptr %i.cn, align 8, !tbaa !58
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 1410
  %i.pa = load i8, ptr %i.oz, align 2, !tbaa !113
  %.not.i.3.i = icmp eq i8 %i.pa, 0
  br i1 %.not.i.3.i, label %bb.an, label %"_ZZN21MapblockMeshGenerator13drawSolidNodeEvENK3$_1clEiPN5video9S3DVertexE.exit.3.i"

bb.an:                                            ; preds = %bb.am
  %i.pb = getelementptr inbounds nuw i8, ptr %2, i64 492
  %.sroa.03.0.copyload.i.3.i = load <2 x float>, ptr %i.pb, align 4, !tbaa !44
  %.sroa.24.0..sroa_idx.i.3.i = getelementptr inbounds nuw i8, ptr %2, i64 500
  %.sroa.24.0.copyload.i.3.i = load float, ptr %.sroa.24.0..sroa_idx.i.3.i, align 4, !tbaa !44
  call void @_Z17applyFacesShadingRN5video6SColorEN4core8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(4) %1, <2 x float> %.sroa.03.0.copyload.i.3.i, float %.sroa.24.0.copyload.i.3.i)
  %.pre.i.3.i = load i32, ptr %1, align 4, !tbaa !115
  br label %"_ZZN21MapblockMeshGenerator13drawSolidNodeEvENK3$_1clEiPN5video9S3DVertexE.exit.3.i"

"_ZZN21MapblockMeshGenerator13drawSolidNodeEvENK3$_1clEiPN5video9S3DVertexE.exit.3.i": ; preds = %bb.an, %bb.am
  %i.pc = phi i32 [ %.pre.i.3.i, %bb.an ], [ %i.ox, %bb.am ] ; 4 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %2, i64 504
  store i32 %i.pc, ptr %i.pd, align 4, !tbaa !115
  %i.pe = getelementptr inbounds nuw i8, ptr %2, i64 544
  store i32 %i.pc, ptr %i.pe, align 4, !tbaa !115
  %i.pf = getelementptr inbounds nuw i8, ptr %2, i64 584
  store i32 %i.pc, ptr %i.pf, align 4, !tbaa !115
  %i.pg = getelementptr inbounds nuw i8, ptr %2, i64 624
  store i32 %i.pc, ptr %i.pg, align 4, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.ph = load ptr, ptr %i.mp, align 8, !tbaa !32
  call void @_ZN13MeshCollector6appendERK8TileSpecPKN5video9S3DVertexEjPKtj(ptr noundef nonnull align 8 dereferenceable(76) %i.ph, ptr noundef nonnull align 8 dereferenceable(104) %.ptr.3, ptr noundef nonnull %i.or, i32 noundef 4, ptr noundef nonnull @_ZL15quad_indices_02, i32 noundef 6)
  br label %bb.ao

bb.ao:                                            ; preds = %"_ZZN21MapblockMeshGenerator13drawSolidNodeEvENK3$_1clEiPN5video9S3DVertexE.exit.3.i", %bb.al
  %i.pi = and i32 %i.mo, 16
  %.not.4.i = icmp eq i32 %i.pi, 0
  br i1 %.not.4.i, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.pj = getelementptr inbounds nuw i8, ptr %2, i64 640
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.pk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.pl = load i16, ptr %i.pk, align 2, !tbaa !121
  %i.pm = load ptr, ptr %i.cn, align 8, !tbaa !58
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 1410
  %i.po = load i8, ptr %i.pn, align 2, !tbaa !113
  %i.pp = call i32 @_Z12encode_lightth(i16 noundef zeroext %i.pl, i8 noundef zeroext %i.po) ; 2 uses
  store i32 %i.pp, ptr %1, align 4
  %i.pq = load ptr, ptr %i.cn, align 8, !tbaa !58
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 1410
  %i.ps = load i8, ptr %i.pr, align 2, !tbaa !113
  %.not.i.4.i = icmp eq i8 %i.ps, 0
  br i1 %.not.i.4.i, label %bb.aq, label %"_ZZN21MapblockMeshGenerator13drawSolidNodeEvENK3$_1clEiPN5video9S3DVertexE.exit.4.i"

bb.aq:                                            ; preds = %bb.ap
  %i.pt = getelementptr inbounds nuw i8, ptr %2, i64 652
  %.sroa.03.0.copyload.i.4.i = load <2 x float>, ptr %i.pt, align 4, !tbaa !44
  %.sroa.24.0..sroa_idx.i.4.i = getelementptr inbounds nuw i8, ptr %2, i64 660
  %.sroa.24.0.copyload.i.4.i = load float, ptr %.sroa.24.0..sroa_idx.i.4.i, align 4, !tbaa !44
  call void @_Z17applyFacesShadingRN5video6SColorEN4core8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(4) %1, <2 x float> %.sroa.03.0.copyload.i.4.i, float %.sroa.24.0.copyload.i.4.i)
  %.pre.i.4.i = load i32, ptr %1, align 4, !tbaa !115
  br label %"_ZZN21MapblockMeshGenerator13drawSolidNodeEvENK3$_1clEiPN5video9S3DVertexE.exit.4.i"

"_ZZN21MapblockMeshGenerator13drawSolidNodeEvENK3$_1clEiPN5video9S3DVertexE.exit.4.i": ; preds = %bb.aq, %bb.ap
  %i.pu = phi i32 [ %.pre.i.4.i, %bb.aq ], [ %i.pp, %bb.ap ] ; 4 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %2, i64 664
  store i32 %i.pu, ptr %i.pv, align 4, !tbaa !115
  %i.pw = getelementptr inbounds nuw i8, ptr %2, i64 704
  store i32 %i.pu, ptr %i.pw, align 4, !tbaa !115
  %i.px = getelementptr inbounds nuw i8, ptr %2, i64 744
  store i32 %i.pu, ptr %i.px, align 4, !tbaa !115
  %i.py = getelementptr inbounds nuw i8, ptr %2, i64 784
  store i32 %i.pu, ptr %i.py, align 4, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.pz = load ptr, ptr %i.mp, align 8, !tbaa !32
  call void @_ZN13MeshCollector6appendERK8TileSpecPKN5video9S3DVertexEjPKtj(ptr noundef nonnull align 8 dereferenceable(76) %i.pz, ptr noundef nonnull align 8 dereferenceable(104) %.ptr.4, ptr noundef nonnull %i.pj, i32 noundef 4, ptr noundef nonnull @_ZL15quad_indices_02, i32 noundef 6)
  br label %bb.ar

bb.ar:                                            ; preds = %"_ZZN21MapblockMeshGenerator13drawSolidNodeEvENK3$_1clEiPN5video9S3DVertexE.exit.4.i", %bb.ao
  %i.qa = and i32 %i.mo, 32
  %.not.5.i = icmp eq i32 %i.qa, 0
  br i1 %.not.5.i, label %bb.as, label %"_ZN21MapblockMeshGenerator10drawCuboidIZNS_13drawSolidNodeEvE3$_1EEvRKN4core8aabbox3dIfEEPK8TileSpeciPKfhOT_.exit"

bb.as:                                            ; preds = %bb.ar
  %i.qb = getelementptr inbounds nuw i8, ptr %2, i64 800
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.qc = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.qd = load i16, ptr %i.qc, align 2, !tbaa !121
  %i.qe = load ptr, ptr %i.cn, align 8, !tbaa !58
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 1410
  %i.qg = load i8, ptr %i.qf, align 2, !tbaa !113
  %i.qh = call i32 @_Z12encode_lightth(i16 noundef zeroext %i.qd, i8 noundef zeroext %i.qg) ; 2 uses
  store i32 %i.qh, ptr %1, align 4
  %i.qi = load ptr, ptr %i.cn, align 8, !tbaa !58
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 1410
  %i.qk = load i8, ptr %i.qj, align 2, !tbaa !113
  %.not.i.5.i = icmp eq i8 %i.qk, 0
  br i1 %.not.i.5.i, label %bb.at, label %"_ZZN21MapblockMeshGenerator13drawSolidNodeEvENK3$_1clEiPN5video9S3DVertexE.exit.5.i"

bb.at:                                            ; preds = %bb.as
  %i.ql = getelementptr inbounds nuw i8, ptr %2, i64 812
  %.sroa.03.0.copyload.i.5.i = load <2 x float>, ptr %i.ql, align 4, !tbaa !44
  %.sroa.24.0..sroa_idx.i.5.i = getelementptr inbounds nuw i8, ptr %2, i64 820
  %.sroa.24.0.copyload.i.5.i = load float, ptr %.sroa.24.0..sroa_idx.i.5.i, align 4, !tbaa !44
  call void @_Z17applyFacesShadingRN5video6SColorEN4core8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(4) %1, <2 x float> %.sroa.03.0.copyload.i.5.i, float %.sroa.24.0.copyload.i.5.i)
  %.pre.i.5.i = load i32, ptr %1, align 4, !tbaa !115
  br label %"_ZZN21MapblockMeshGenerator13drawSolidNodeEvENK3$_1clEiPN5video9S3DVertexE.exit.5.i"

"_ZZN21MapblockMeshGenerator13drawSolidNodeEvENK3$_1clEiPN5video9S3DVertexE.exit.5.i": ; preds = %bb.at, %bb.as
  %i.qm = phi i32 [ %.pre.i.5.i, %bb.at ], [ %i.qh, %bb.as ] ; 4 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %2, i64 824
  store i32 %i.qm, ptr %i.qn, align 4, !tbaa !115
  %i.qo = getelementptr inbounds nuw i8, ptr %2, i64 864
  store i32 %i.qm, ptr %i.qo, align 4, !tbaa !115
  %i.qp = getelementptr inbounds nuw i8, ptr %2, i64 904
  store i32 %i.qm, ptr %i.qp, align 4, !tbaa !115
  %i.qq = getelementptr inbounds nuw i8, ptr %2, i64 944
  store i32 %i.qm, ptr %i.qq, align 4, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.qr = load ptr, ptr %i.mp, align 8, !tbaa !32
  call void @_ZN13MeshCollector6appendERK8TileSpecPKN5video9S3DVertexEjPKtj(ptr noundef nonnull align 8 dereferenceable(76) %i.qr, ptr noundef nonnull align 8 dereferenceable(104) %.ptr.5, ptr noundef nonnull %i.qb, i32 noundef 4, ptr noundef nonnull @_ZL15quad_indices_02, i32 noundef 6)
  br label %"_ZN21MapblockMeshGenerator10drawCuboidIZNS_13drawSolidNodeEvE3$_1EEvRKN4core8aabbox3dIfEEPK8TileSpeciPKfhOT_.exit"

"_ZN21MapblockMeshGenerator10drawCuboidIZNS_13drawSolidNodeEvE3$_1EEvRKN4core8aabbox3dIfEEPK8TileSpeciPKfhOT_.exit": ; preds = %bb.ar, %"_ZZN21MapblockMeshGenerator13drawSolidNodeEvENK3$_1clEiPN5video9S3DVertexE.exit.5.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.au

bb.au:                                            ; preds = %"_ZN21MapblockMeshGenerator10drawCuboidIZNS_13drawSolidNodeEvE3$_1EEvRKN4core8aabbox3dIfEEPK8TileSpeciPKfhOT_.exit", %"_ZN21MapblockMeshGenerator10drawCuboidIZNS_13drawSolidNodeEvE3$_0EEvRKN4core8aabbox3dIfEEPK8TileSpeciPKfhOT_.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.av

bb.av:                                            ; preds = %bb.b, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  ret void
}

declare noundef zeroext i16 @_Z12getFaceLight7MapNodeS_PK14NodeDefManager(i32, i32, ptr noundef) local_unnamed_addr #5

declare noundef zeroext i16 @_Z19getSmoothLightSolidRKN4core8vector3dIsEES3_S3_P12MeshMakeData(ptr noundef nonnull align 2 dereferenceable(6), ptr noundef nonnull align 2 dereferenceable(6), ptr noundef nonnull align 2 dereferenceable(6), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext range(i8 0, 64) i8 @_ZNK21MapblockMeshGenerator14getNodeBoxMaskEN4core8aabbox3dIfEEhh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(496) %0, ptr nofree noundef readonly byval(%"class.core::aabbox3d") align 8 captures(none) %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load float, ptr %i.a, align 8            ; 2 uses
  %i.c = fcmp nsz ogt float %i.b, 5.000000e+00
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.e = load float, ptr %i.d, align 4            ; 2 uses
  %i.f = fcmp nsz ogt float %i.e, 5.000000e+00
  %i.g = load <4 x float>, ptr %1, align 8        ; 6 uses
  %i.h = fcmp nsz olt <4 x float> %i.g, <float -5.000000e+00, float -5.000000e+00, float -5.000000e+00, float 5.000000e+00>
  %i.i = fcmp nsz ogt <4 x float> %i.g, <float -5.000000e+00, float -5.000000e+00, float -5.000000e+00, float 5.000000e+00>
  %i.j = shufflevector <4 x i1> %i.h, <4 x i1> %i.i, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.k = freeze <4 x i1> %i.j
  %i.l = bitcast <4 x i1> %i.k to i4
  %i.m = icmp ne i4 %i.l, 0
  %op.rdx = select i1 %i.m, i1 true, i1 %i.c
  %op.rdx34 = select i1 %op.rdx, i1 true, i1 %i.f
  br i1 %op.rdx34, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = fcmp nsz oeq float %i.b, 5.000000e+00
  %i.o = zext i1 %i.n to i8
  %i.p = extractelement <4 x float> %i.g, i64 1
  %i.q = fcmp nsz oeq float %i.p, -5.000000e+00
  %i.r = select i1 %i.q, i8 2, i8 0
  %i.s = extractelement <4 x float> %i.g, i64 3
  %i.t = fcmp nsz oeq float %i.s, 5.000000e+00
  %i.u = select i1 %i.t, i8 4, i8 0
  %i.v = extractelement <4 x float> %i.g, i64 0
  %i.w = fcmp nsz oeq float %i.v, -5.000000e+00
  %i.x = select i1 %i.w, i8 8, i8 0
  %i.y = fcmp nsz oeq float %i.e, 5.000000e+00
  %i.z = select i1 %i.y, i8 16, i8 0
  %i.aa = extractelement <4 x float> %i.g, i64 2
  %i.ab = fcmp nsz oeq float %i.aa, -5.000000e+00
  %i.ac = select i1 %i.ab, i8 32, i8 0
  %i.ad = or disjoint i8 %i.x, %i.u
  %i.ae = or disjoint i8 %i.ad, %i.o
  %i.af = or disjoint i8 %i.ae, %i.r
  %i.ag = or disjoint i8 %i.af, %i.z
  %i.ah = or disjoint i8 %i.ag, %i.ac             ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !58
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1296
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !142
  %i.am = icmp eq i8 %i.al, 2
  br i1 %i.am, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.an = zext nneg i8 %i.ah to i32               ; 3 uses
  %i.ao = and i32 %i.an, 3
  %i.ap = icmp eq i32 %i.ao, 3
  %i.aq = select i1 %i.ap, i8 3, i8 0
  %i.ar = and i32 %i.an, 12
  %i.as = icmp eq i32 %i.ar, 12
  %i.at = select i1 %i.as, i8 12, i8 0
  %i.au = or disjoint i8 %i.aq, %i.at
  %i.av = and i32 %i.an, 48
  %i.aw = icmp eq i32 %i.av, 48
  %i.ax = select i1 %i.aw, i8 48, i8 0
  %i.ay = or disjoint i8 %i.au, %i.ax
  %i.az = and i8 %i.ay, %3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i8 [ %i.az, %bb.c ], [ 0, %bb.b ]
  %i.ba = and i8 %i.ah, %2
  %i.bb = or i8 %.0, %i.ba
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.027 = phi i8 [ %i.bb, %bb.d ], [ 0, %bb.a ]
  ret i8 %.027
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21MapblockMeshGenerator24prepareLiquidNodeDrawingEv(ptr noundef nonnull align 8 dereferenceable(496) initializes((256, 360)) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %class.VoxelArea, align 8           ; 8 uses
  %2 = alloca %class.VoxelArea, align 8           ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1400 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !101
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 624
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.g, i64 104, i1 false), !tbaa.struct !104
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 55 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.j = load i32, ptr %i.i, align 8, !tbaa !105
  %.not.i.i = icmp eq i32 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.l = load i32, ptr %i.k, align 4
  %.not1.i.i = icmp eq i32 %i.l, 0
  %i.m = select i1 %.not.i.i, i1 %.not1.i.i, i1 false
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.o = load i8, ptr %i.n, align 4, !range !106
  %i.p = trunc nuw i8 %i.o to i1
  %or.cond = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !101
  %i.r = load i8, ptr %i.h, align 1, !tbaa !108
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 304
  tail call void @_ZNK11NodeVisuals8getColorEhPN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(1288) %i.q, i8 noundef zeroext %i.r, ptr noundef nonnull %i.s)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.u = load i32, ptr %i.t, align 8, !tbaa !105
  %.not.i.1.i = icmp eq i32 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.w = load i32, ptr %i.v, align 4
  %.not1.i.1.i = icmp eq i32 %i.w, 0
  %i.x = select i1 %.not.i.1.i, i1 %.not1.i.1.i, i1 false
  br i1 %i.x, label %_ZN21MapblockMeshGenerator14getSpecialTileEiP8TileSpecb.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.z = load i8, ptr %i.y, align 4, !tbaa !57, !range !106, !noundef !107
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN21MapblockMeshGenerator14getSpecialTileEiP8TileSpecb.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !101
  %i.ac = load i8, ptr %i.h, align 1, !tbaa !108
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 352
  tail call void @_ZNK11NodeVisuals8getColorEhPN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(1288) %i.ab, i8 noundef zeroext %i.ac, ptr noundef nonnull %i.ad)
  br label %_ZN21MapblockMeshGenerator14getSpecialTileEiP8TileSpecb.exit

_ZN21MapblockMeshGenerator14getSpecialTileEiP8TileSpecb.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1400 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !101
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 728
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ae, ptr noundef nonnull align 8 dereferenceable(104) %i.ai, i64 104, i1 false), !tbaa.struct !104
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !105
  %.not.i.i9 = icmp eq i32 %i.ak, 0
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.am = load i32, ptr %i.al, align 4
  %.not1.i.i10 = icmp eq i32 %i.am, 0
  %i.an = select i1 %.not.i.i9, i1 %.not1.i.i10, i1 false
  br i1 %i.an, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZN21MapblockMeshGenerator14getSpecialTileEiP8TileSpecb.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !57, !range !106, !noundef !107
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = load ptr, ptr %i.ag, align 8, !tbaa !101
  %i.as = load i8, ptr %i.h, align 1, !tbaa !108
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @_ZNK11NodeVisuals8getColorEhPN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(1288) %i.ar, i8 noundef zeroext %i.as, ptr noundef nonnull %i.at)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %_ZN21MapblockMeshGenerator14getSpecialTileEiP8TileSpecb.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.av = load i32, ptr %i.au, align 8, !tbaa !105
  %.not.i.1.i13 = icmp eq i32 %i.av, 0
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.ax = load i32, ptr %i.aw, align 4
  %.not1.i.1.i14 = icmp eq i32 %i.ax, 0
  %i.ay = select i1 %.not.i.1.i13, i1 %.not1.i.1.i14, i1 false
  br i1 %i.ay, label %_ZN21MapblockMeshGenerator14getSpecialTileEiP8TileSpecb.exit16, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.ba = load i8, ptr %i.az, align 4, !tbaa !57, !range !106, !noundef !107
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %_ZN21MapblockMeshGenerator14getSpecialTileEiP8TileSpecb.exit16, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = load ptr, ptr %i.ag, align 8, !tbaa !101
  %i.bd = load i8, ptr %i.h, align 1, !tbaa !108
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @_ZNK11NodeVisuals8getColorEhPN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(1288) %i.bc, i8 noundef zeroext %i.bd, ptr noundef nonnull %i.be)
  br label %_ZN21MapblockMeshGenerator14getSpecialTileEiP8TileSpecb.exit16

_ZN21MapblockMeshGenerator14getSpecialTileEiP8TileSpecb.exit16: ; preds = %bb.h, %bb.i, %bb.j
  %i.bf = load ptr, ptr %0, align 8, !tbaa !31    ; 8 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bi = load i16, ptr %i.bg, align 8, !tbaa !41
  %i.bj = load i16, ptr %i.bh, align 8, !tbaa !41
  %i.bk = add i16 %i.bj, %i.bi                    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !42
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 34 ; 2 uses
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !42
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.bq = load i16, ptr %i.bp, align 4, !tbaa !43
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bs = load i16, ptr %i.br, align 4, !tbaa !43
  %i.bt = add i16 %i.bs, %i.bq                    ; 2 uses
  %i.bu = add i16 %i.bm, 1
  %i.bv = add i16 %i.bu, %i.bo                    ; 2 uses
  %.sroa.3.0.insert.ext.i17 = zext i16 %i.bt to i48
  %.sroa.3.0.insert.shift.i18 = shl nuw i48 %.sroa.3.0.insert.ext.i17, 32
  %.sroa.2.0.insert.ext.i19 = zext i16 %i.bv to i48
  %.sroa.2.0.insert.shift.i20 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i19, 16
  %.sroa.0.0.insert.ext.i22 = zext i16 %i.bk to i48
  %i.bw = or disjoint i48 %.sroa.2.0.insert.shift.i20, %.sroa.0.0.insert.ext.i22
  %.sroa.0.0.insert.insert.i23 = or disjoint i48 %.sroa.3.0.insert.shift.i18, %i.bw ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i48 %.sroa.0.0.insert.insert.i23, ptr %2, align 8, !tbaa !121
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i48 %.sroa.0.0.insert.insert.i23, ptr %i.bx, align 2, !tbaa !121
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.cb = sext i16 %i.bt to i32
  store i32 1, ptr %i.by, align 4, !tbaa !115
  store i32 1, ptr %i.bz, align 8, !tbaa !115
  store i32 1, ptr %i.ca, align 4, !tbaa !115
  call void @_ZN16VoxelManipulator7addAreaERK9VoxelArea(ptr noundef nonnull align 8 dereferenceable(48) %i.bf, ptr noundef nonnull align 4 dereferenceable(24) %2)
end_hunk_0
begin_hunk_1_@_ZN21MapblockMeshGenerator15drawNodeboxNodeEv:.preheader376
bb.g:                                             ; preds = %bb.f
  %i.fl = load i8, ptr %i.cx, align 1, !tbaa !108
  %.not124 = icmp ugt i8 %i.fl, %.sroa.6302.0.extract.trunc
  br i1 %.not124, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.fm = or i8 %.0106514, %i.dg
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e, %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit
  %.1107 = phi i8 [ %i.fm, %bb.h ], [ %.0106514, %bb.g ], [ %.0106514, %bb.e ], [ %.0106514, %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit ] ; 2 uses
  %i.fn = load ptr, ptr %i.cy, align 8, !tbaa !40 ; 2 uses
  %.sroa.0296.0.extract.trunc.mask = and i32 %.sroa.0.0.insert.insert.i133, 65535
  %i.fo = zext nneg i32 %.sroa.0296.0.extract.trunc.mask to i64 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !132
  %i.fs = load ptr, ptr %i.fp, align 8, !tbaa !133 ; 3 uses
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = sdiv exact i64 %i.fv, 2080
  %i.fx = icmp ugt i64 %i.fw, %i.fo
  br i1 %i.fx, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.fy = getelementptr inbounds nuw [2080 x i8], ptr %i.fs, i64 %i.fo ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !134
  %i.gb = icmp eq i64 %i.ga, 0
  br i1 %i.gb, label %bb.k, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fs, i64 260000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.j, %bb.k
  %i.gd = phi ptr [ %i.gc, %bb.k ], [ %i.fy, %bb.j ]
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 98
  %i.gf = load i8, ptr %i.ge, align 2, !tbaa !130
  %i.gg = icmp eq i8 %i.gf, 0
  %i.gh = select i1 %i.gg, i8 %i.dg, i8 0
  %.1109 = or i8 %i.gh, %.0108513                 ; 2 uses
  %i.gi = load ptr, ptr %i.cj, align 8, !tbaa !58
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 1544
  %i.gk = load i8, ptr %i.gj, align 8, !tbaa !248
  %i.gl = icmp eq i8 %i.gk, 4
  br i1 %i.gl, label %bb.l, label %bb.n

bb.l:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  %i.gm = load i16, ptr %i.cq, align 8, !tbaa !41
  %i.gn = load i16, ptr %i.cb, align 8, !tbaa !41
  %i.go = add i16 %i.gn, %i.gm
  %i.gp = load <2 x i16>, ptr %i.cr, align 2, !tbaa !121
  %i.gq = load <2 x i16>, ptr %i.cs, align 2, !tbaa !121
  %i.gr = add <2 x i16> %i.gq, %i.gp              ; 2 uses
  %i.gs = getelementptr inbounds nuw [6 x i8], ptr @_ZN12_GLOBAL__N_123nodebox_connection_dirsE, i64 %indvars.iv ; 3 uses
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !41
  %i.gu = add i16 %i.go, %i.gt                    ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 2
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !42
  %i.gx = extractelement <2 x i16> %i.gr, i64 0
  %i.gy = add i16 %i.gx, %i.gw                    ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  %i.ha = load i16, ptr %i.gz, align 2, !tbaa !43
  %i.hb = extractelement <2 x i16> %i.gr, i64 1
  %i.hc = add i16 %i.hb, %i.ha                    ; 2 uses
  %.sroa.3.0.insert.ext.i141 = zext i16 %i.hc to i48
  %.sroa.3.0.insert.shift.i142 = shl nuw i48 %.sroa.3.0.insert.ext.i141, 32
  %.sroa.2.0.insert.ext.i143 = zext i16 %i.gy to i48
  %.sroa.2.0.insert.shift.i144 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i143, 16
  %.sroa.0.0.insert.ext.i146 = zext i16 %i.gu to i48
  %i.hd = or disjoint i48 %.sroa.2.0.insert.shift.i144, %.sroa.0.0.insert.ext.i146
  %.sroa.0.0.insert.insert.i147 = or disjoint i48 %i.hd, %.sroa.3.0.insert.shift.i142 ; 2 uses
  %i.he = load ptr, ptr %0, align 8, !tbaa !31    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store i48 %.sroa.0.0.insert.insert.i147, ptr %1, align 8, !tbaa !121
  store i48 %.sroa.0.0.insert.insert.i147, ptr %i.cz, align 2, !tbaa !121
  %i.hf = sext i16 %i.hc to i32
  store i32 1, ptr %i.da, align 4, !tbaa !115
  store i32 1, ptr %i.db, align 8, !tbaa !115
  store i32 1, ptr %i.dc, align 4, !tbaa !115
  call void @_ZN16VoxelManipulator7addAreaERK9VoxelArea(ptr noundef nonnull align 8 dereferenceable(48) %i.he, ptr noundef nonnull align 4 dereferenceable(24) %1)
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 12
  %i.hi = load i16, ptr %i.hh, align 4, !tbaa !123
  %i.hj = sext i16 %i.hi to i32
  %i.hk = sub nsw i32 %i.hf, %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %i.he, i64 20
  %i.hm = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !124
  %i.ho = mul nsw i32 %i.hk, %i.hn
  %i.hp = load i32, ptr %i.hl, align 4, !tbaa !125
  %i.hq = sext i16 %i.gy to i32
  %i.hr = getelementptr inbounds nuw i8, ptr %i.he, i64 10
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !126
  %i.ht = sext i16 %i.hs to i32
  %i.hu = add i32 %i.ho, %i.hq
  %i.hv = sub i32 %i.hu, %i.ht
  %i.hw = mul i32 %i.hv, %i.hp
  %i.hx = sext i16 %i.gu to i32
  %i.hy = load i16, ptr %i.hg, align 4, !tbaa !127
  %i.hz = sext i16 %i.hy to i32
  %i.ia = sub nsw i32 %i.hx, %i.hz
  %i.ib = add nsw i32 %i.ia, %i.hw
  %i.ic = getelementptr inbounds nuw i8, ptr %i.he, i64 40
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !128
  %i.ie = sext i32 %i.ib to i64                   ; 2 uses
  %i.if = getelementptr inbounds i8, ptr %i.id, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !55
  %i.ih = and i8 %i.ig, 1
  %.not.i152 = icmp eq i8 %i.ih, 0
  br i1 %.not.i152, label %bb.m, label %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit154

bb.m:                                             ; preds = %bb.l
  %i.ii = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !129
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.ij, i64 %i.ie
  %i.il = load i32, ptr %i.ik, align 4
  br label %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit154

_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit154: ; preds = %bb.l, %bb.m
  %.sroa.0.0.insert.insert.i153 = phi i32 [ %i.il, %bb.m ], [ 127, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.im = load ptr, ptr %i.cy, align 8, !tbaa !40
  %.sroa.057.0.copyload = load i32, ptr %i.cc, align 4
  %i.in = call noundef zeroext i1 @_ZNK14NodeDefManager15nodeboxConnectsE7MapNodeS0_h(ptr noundef nonnull align 8 dereferenceable(65872) %i.im, i32 %.sroa.057.0.copyload, i32 %.sroa.0.0.insert.insert.i153, i8 noundef zeroext %i.dg)
  %i.io = select i1 %i.in, i8 %i.dg, i8 0
  %spec.select = or i8 %i.io, %.0103516
  br label %bb.n

bb.n:                                             ; preds = %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit154, %_ZNK14NodeDefManager3getERK7MapNode.exit
  %.1104 = phi i8 [ %.0103516, %_ZNK14NodeDefManager3getERK7MapNode.exit ], [ %spec.select, %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit154 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %.not, label %bb.a, label %bb.b, !llvm.loop !238

bb.o:                                             ; preds = %bb.a
  %i.ip = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 12 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !249 ; 3 uses
  %i.ir = load ptr, ptr %5, align 8, !tbaa !250   ; 3 uses
  %i.is = ptrtoint ptr %i.iq to i64
  %i.it = ptrtoint ptr %i.ir to i64
  %i.iu = sub i64 %i.is, %i.it                    ; 2 uses
  %i.iv = sdiv exact i64 %i.iu, 24                ; 2 uses
  %i.iw = icmp slt i64 %i.iu, 0
  br i1 %i.iw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #27
          to label %.noexc unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit211.thread

.noexc:                                           ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.o
  %.not337 = icmp eq ptr %i.iq, %i.ir
  br i1 %.not337, label %_ZNSt6vectorIhSaIhEE7reserveEm.exit, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i: ; preds = %bb.q
  %i.ix = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iv) #28
          to label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit211.thread ; 2 uses

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i: ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.iv
  %.pre = load ptr, ptr %5, align 8, !tbaa !251
  %.pre679 = load ptr, ptr %i.ip, align 8, !tbaa !251
  br label %_ZNSt6vectorIhSaIhEE7reserveEm.exit

_ZNSt6vectorIhSaIhEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i, %bb.q
  %i.iz = phi ptr [ %.pre679, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i ], [ %i.iq, %bb.q ] ; 2 uses
  %i.ja = phi ptr [ %.pre, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i ], [ %i.ir, %bb.q ] ; 2 uses
  %.sroa.27.9 = phi ptr [ %i.iy, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i ], [ null, %bb.q ] ; 2 uses
  %.sroa.16.5 = phi ptr [ %i.ix, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i ], [ null, %bb.q ] ; 4 uses
  %.not338517 = icmp eq ptr %i.ja, %i.iz
  br i1 %.not338517, label %.preheader370, label %.lr.ph

.preheader370:                                    ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit, %_ZNSt6vectorIhSaIhEE7reserveEm.exit
  %.sroa.27.0.lcssa = phi ptr [ %.sroa.27.9, %_ZNSt6vectorIhSaIhEE7reserveEm.exit ], [ %.sroa.27.10, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ] ; 6 uses
  %.sroa.16.0.lcssa = phi ptr [ %.sroa.16.5, %_ZNSt6vectorIhSaIhEE7reserveEm.exit ], [ %.sroa.16.6, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ]
  %.sroa.0272.0.lcssa = phi ptr [ %.sroa.16.5, %_ZNSt6vectorIhSaIhEE7reserveEm.exit ], [ %.sroa.0272.10, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ] ; 6 uses
  %i.jb = load i8, ptr %i.e, align 2, !tbaa !156
  switch i8 %i.jb, label %_ZNK9TileLayer13isTransparentEv.exit [
    i8 1, label %.thread
    i8 11, label %.thread
    i8 2, label %.thread
    i8 8, label %.thread
  ]

_ZNSt6vectorIfSaIfEED2Ev.exit211.thread:          ; preds = %bb.a, %bb.p, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit215

.lr.ph:                                           ; preds = %_ZNSt6vectorIhSaIhEE7reserveEm.exit, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  %.sroa.0272.0521 = phi ptr [ %.sroa.0272.10, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ], [ %.sroa.16.5, %_ZNSt6vectorIhSaIhEE7reserveEm.exit ] ; 6 uses
  %.sroa.16.0520 = phi ptr [ %.sroa.16.6, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ], [ %.sroa.16.5, %_ZNSt6vectorIhSaIhEE7reserveEm.exit ] ; 5 uses
  %.sroa.0269.0519 = phi ptr [ %i.lm, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ], [ %i.ja, %_ZNSt6vectorIhSaIhEE7reserveEm.exit ] ; 4 uses
  %.sroa.27.0518 = phi ptr [ %.sroa.27.10, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ], [ %.sroa.27.9, %_ZNSt6vectorIhSaIhEE7reserveEm.exit ] ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0269.0519, i64 16
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !44 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0269.0519, i64 20
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !44 ; 2 uses
  %i.jd = fcmp nsz ogt float %.sroa.5.0.copyload, 5.000000e+00
  %i.je = fcmp nsz ogt float %.sroa.6.0.copyload, 5.000000e+00
  %i.jf = load <4 x float>, ptr %.sroa.0269.0519, align 4, !tbaa !44 ; 6 uses
  %i.jg = fcmp nsz olt <4 x float> %i.jf, <float -5.000000e+00, float -5.000000e+00, float -5.000000e+00, float 5.000000e+00>
  %i.jh = fcmp nsz ogt <4 x float> %i.jf, <float -5.000000e+00, float -5.000000e+00, float -5.000000e+00, float 5.000000e+00>
  %i.ji = shufflevector <4 x i1> %i.jg, <4 x i1> %i.jh, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.jj = freeze <4 x i1> %i.ji
  %i.jk = bitcast <4 x i1> %i.jj to i4
  %i.jl = icmp ne i4 %i.jk, 0
  %op.rdx = select i1 %i.jl, i1 true, i1 %i.jd
  %op.rdx904 = select i1 %op.rdx, i1 true, i1 %i.je
  br i1 %op.rdx904, label %_ZNK21MapblockMeshGenerator14getNodeBoxMaskEN4core8aabbox3dIfEEhh.exit, label %bb.r

bb.r:                                             ; preds = %.lr.ph
  %i.jm = fcmp nsz oeq float %.sroa.5.0.copyload, 5.000000e+00
  %i.jn = zext i1 %i.jm to i8
  %i.jo = extractelement <4 x float> %i.jf, i64 1
  %i.jp = fcmp nsz oeq float %i.jo, -5.000000e+00
  %i.jq = select i1 %i.jp, i8 2, i8 0
  %i.jr = extractelement <4 x float> %i.jf, i64 3
  %i.js = fcmp nsz oeq float %i.jr, 5.000000e+00
  %i.jt = select i1 %i.js, i8 4, i8 0
  %i.ju = extractelement <4 x float> %i.jf, i64 0
  %i.jv = fcmp nsz oeq float %i.ju, -5.000000e+00
  %i.jw = select i1 %i.jv, i8 8, i8 0
  %i.jx = fcmp nsz oeq float %.sroa.6.0.copyload, 5.000000e+00
  %i.jy = select i1 %i.jx, i8 16, i8 0
  %i.jz = extractelement <4 x float> %i.jf, i64 2
  %i.ka = fcmp nsz oeq float %i.jz, -5.000000e+00
  %i.kb = select i1 %i.ka, i8 32, i8 0
  %i.kc = or disjoint i8 %i.jq, %i.jw
  %i.kd = or disjoint i8 %i.kc, %i.kb
  %i.ke = or disjoint i8 %i.kd, %i.jt
  %i.kf = or disjoint i8 %i.ke, %i.jn
  %i.kg = or disjoint i8 %i.kf, %i.jy             ; 2 uses
  %i.kh = load ptr, ptr %i.cj, align 8, !tbaa !58
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 1296
  %i.kj = load i8, ptr %i.ki, align 8, !tbaa !142
  %i.kk = icmp eq i8 %i.kj, 2
  br i1 %i.kk, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.kl = zext nneg i8 %i.kg to i32               ; 3 uses
  %i.km = and i32 %i.kl, 3
  %i.kn = icmp eq i32 %i.km, 3
  %i.ko = select i1 %i.kn, i8 3, i8 0
  %i.kp = and i32 %i.kl, 12
  %i.kq = icmp eq i32 %i.kp, 12
  %i.kr = select i1 %i.kq, i8 12, i8 0
  %i.ks = or disjoint i8 %i.ko, %i.kr
  %i.kt = and i32 %i.kl, 48
  %i.ku = icmp eq i32 %i.kt, 48
  %i.kv = select i1 %i.ku, i8 48, i8 0
  %i.kw = or disjoint i8 %i.ks, %i.kv
  %i.kx = and i8 %i.kw, %.1107
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0.i = phi i8 [ %i.kx, %bb.s ], [ 0, %bb.r ]
  %i.ky = and i8 %i.kg, %.1109
  %i.kz = or i8 %.0.i, %i.ky
  br label %_ZNK21MapblockMeshGenerator14getNodeBoxMaskEN4core8aabbox3dIfEEhh.exit

_ZNK21MapblockMeshGenerator14getNodeBoxMaskEN4core8aabbox3dIfEEhh.exit: ; preds = %.lr.ph, %bb.t
  %.027.i = phi i8 [ %i.kz, %bb.t ], [ 0, %.lr.ph ] ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.16.0520, %.sroa.27.0518
  br i1 %.not.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNK21MapblockMeshGenerator14getNodeBoxMaskEN4core8aabbox3dIfEEhh.exit
  store i8 %.027.i, ptr %.sroa.16.0520, align 1, !tbaa !55
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

bb.v:                                             ; preds = %_ZNK21MapblockMeshGenerator14getNodeBoxMaskEN4core8aabbox3dIfEEhh.exit
  %i.la = ptrtoint ptr %.sroa.16.0520 to i64
  %i.lb = ptrtoint ptr %.sroa.0272.0521 to i64
  %i.lc = sub i64 %i.la, %i.lb                    ; 8 uses
  %i.ld = icmp eq i64 %i.lc, 9223372036854775807
  br i1 %i.ld, label %bb.w, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #27
          to label %.noexc156 unwind label %.loopexit.split-lp372.loopexit.split-lp

.noexc156:                                        ; preds = %bb.w
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.v
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.lc, i64 1)
  %i.le = add i64 %.sroa.speculated.i.i.i.i, %i.lc ; 2 uses
  %i.lf = icmp ult i64 %i.le, %i.lc
  %i.lg = call i64 @llvm.umin.i64(i64 %i.le, i64 9223372036854775807)
  %i.lh = select i1 %i.lf, i64 9223372036854775807, i64 %i.lg ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.lh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.li = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lh) #28
          to label %.noexc157 unwind label %.loopexit.split-lp372.loopexit.split-lp ; 4 uses

.noexc157:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.lc ; 2 uses
  store i8 %.027.i, ptr %i.lj, align 1, !tbaa !55
  %i.lk = icmp sgt i64 %i.lc, 0
  br i1 %i.lk, label %bb.x, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.x:                                             ; preds = %.noexc157
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.li, ptr align 1 %.sroa.0272.0521, i64 %i.lc, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.x, %.noexc157
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0272.0521, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0272.0521, i64 noundef %i.lc) #29
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.y, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  %i.ll = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.lh
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

_ZNSt6vectorIhSaIhEE9push_backEOh.exit:           ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, %bb.u
  %.sroa.27.10 = phi ptr [ %i.ll, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ], [ %.sroa.27.0518, %bb.u ] ; 2 uses
  %.pn344 = phi ptr [ %i.lj, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ], [ %.sroa.16.0520, %bb.u ]
  %.sroa.0272.10 = phi ptr [ %i.li, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ], [ %.sroa.0272.0521, %bb.u ] ; 2 uses
  %.sroa.16.6 = getelementptr inbounds nuw i8, ptr %.pn344, i64 1 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.0269.0519, i64 24 ; 2 uses
  %.not338 = icmp eq ptr %i.lm, %i.iz
  br i1 %.not338, label %.preheader370, label %.lr.ph

.loopexit.split-lp372.loopexit.split-lp:          ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i, %bb.w
  %lpad.loopexit.split-lp980 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit211

_ZNK9TileLayer13isTransparentEv.exit:             ; preds = %.preheader370
  %i.ln = load i8, ptr %i.r, align 2, !tbaa !156
  switch i8 %i.ln, label %_ZNK9TileLayer13isTransparentEv.exit.1 [
    i8 1, label %.thread
    i8 11, label %.thread
    i8 2, label %.thread
    i8 8, label %.thread
  ]

_ZNK9TileLayer13isTransparentEv.exit.1:           ; preds = %_ZNK9TileLayer13isTransparentEv.exit
  %i.lo = load i8, ptr %i.ae, align 2, !tbaa !156
  switch i8 %i.lo, label %_ZNK9TileLayer13isTransparentEv.exit.2 [
    i8 1, label %.thread
    i8 11, label %.thread
    i8 2, label %.thread
    i8 8, label %.thread
  ]

_ZNK9TileLayer13isTransparentEv.exit.2:           ; preds = %_ZNK9TileLayer13isTransparentEv.exit.1
  %i.lp = load i8, ptr %i.ar, align 2, !tbaa !156
  switch i8 %i.lp, label %_ZNK9TileLayer13isTransparentEv.exit.3 [
    i8 1, label %.thread
    i8 11, label %.thread
    i8 2, label %.thread
    i8 8, label %.thread
  ]

_ZNK9TileLayer13isTransparentEv.exit.3:           ; preds = %_ZNK9TileLayer13isTransparentEv.exit.2
  %i.lq = load i8, ptr %i.be, align 2, !tbaa !156
  switch i8 %i.lq, label %_ZNK9TileLayer13isTransparentEv.exit.4 [
    i8 1, label %.thread
    i8 11, label %.thread
    i8 2, label %.thread
    i8 8, label %.thread
  ]

_ZNK9TileLayer13isTransparentEv.exit.4:           ; preds = %_ZNK9TileLayer13isTransparentEv.exit.3
  %i.lr = load i8, ptr %i.br, align 2, !tbaa !156
  switch i8 %i.lr, label %_ZNSt6vectorIfSaIfEED2Ev.exit [
    i8 1, label %.thread
    i8 11, label %.thread
    i8 2, label %.thread
    i8 8, label %.thread
  ]

.thread:                                          ; preds = %_ZNK9TileLayer13isTransparentEv.exit.4, %_ZNK9TileLayer13isTransparentEv.exit.4, %_ZNK9TileLayer13isTransparentEv.exit.4, %_ZNK9TileLayer13isTransparentEv.exit.4, %_ZNK9TileLayer13isTransparentEv.exit.3, %_ZNK9TileLayer13isTransparentEv.exit.3, %_ZNK9TileLayer13isTransparentEv.exit.3, %_ZNK9TileLayer13isTransparentEv.exit.3, %_ZNK9TileLayer13isTransparentEv.exit.2, %_ZNK9TileLayer13isTransparentEv.exit.2, %_ZNK9TileLayer13isTransparentEv.exit.2, %_ZNK9TileLayer13isTransparentEv.exit.2, %_ZNK9TileLayer13isTransparentEv.exit.1, %_ZNK9TileLayer13isTransparentEv.exit.1, %_ZNK9TileLayer13isTransparentEv.exit.1, %_ZNK9TileLayer13isTransparentEv.exit.1, %_ZNK9TileLayer13isTransparentEv.exit, %_ZNK9TileLayer13isTransparentEv.exit, %_ZNK9TileLayer13isTransparentEv.exit, %_ZNK9TileLayer13isTransparentEv.exit, %.preheader370, %.preheader370, %.preheader370, %.preheader370
  %i.ls = load ptr, ptr %i.ip, align 8, !tbaa !249
  %i.lt = load ptr, ptr %5, align 8, !tbaa !250
  %i.lu = ptrtoint ptr %i.ls to i64
  %i.lv = ptrtoint ptr %i.lt to i64
  %i.lw = sub i64 %i.lu, %i.lv
  %i.lx = sdiv exact i64 %i.lw, 24
  %i.ly = shl nsw i64 %i.lx, 1
  %i.lz = add nsw i64 %i.ly, 8                    ; 4 uses
  %i.ma = icmp ugt i64 %i.lz, 2305843009213693951
  br i1 %i.ma, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.thread
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #27
          to label %.noexc160 unwind label %.loopexit.split-lp355.loopexit.split-lp

.noexc160:                                        ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %.thread
  %.not339 = icmp eq i64 %i.lz, 0
  br i1 %.not339, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i: ; preds = %bb.aa
  %i.mb = shl nuw nsw i64 %i.lz, 2
  %i.mc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mb) #28
          to label %_ZNSt6vectorIfSaIfEE7reserveEm.exit unwind label %.loopexit.split-lp355.loopexit.split-lp ; 3 uses

_ZNSt6vectorIfSaIfEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i
  %.idx = shl nuw nsw i64 %i.lz, 2
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 %.idx
  store float -3.500000e+01, ptr %i.mc, align 4, !tbaa !44
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

bb.ab:                                            ; preds = %bb.av, %bb.as, %bb.ap, %bb.am, %bb.aj, %bb.ag, %bb.ad
  %.sroa.37.0527.lcssa = phi ptr [ %.sroa.37.6.6, %bb.av ], [ %.sroa.37.6, %bb.ad ], [ %.sroa.37.6.1, %bb.ag ], [ %.sroa.37.6.2, %bb.aj ], [ %.sroa.37.6.3, %bb.am ], [ %.sroa.37.6.4, %bb.ap ], [ %.sroa.37.6.5, %bb.as ]
  %.sroa.0237.0525.lcssa = phi ptr [ %.sroa.0237.6.6, %bb.av ], [ %.sroa.0237.6, %bb.ad ], [ %.sroa.0237.6.1, %bb.ag ], [ %.sroa.0237.6.2, %bb.aj ], [ %.sroa.0237.6.3, %bb.am ], [ %.sroa.0237.6.4, %bb.ap ], [ %.sroa.0237.6.5, %bb.as ]
end_hunk_1
