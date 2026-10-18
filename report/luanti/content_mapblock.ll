Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/content_mapblock?download=true
inline.NumInlined: 881
inline.NumDeleted: 329
loop-unroll.NumCompletelyUnrolled: 77
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN21MapblockMeshGenerator13drawSolidNodeEv:bb.a
  br i1 %.not56, label %bb.l, label %.thread

bb.l:                                             ; preds = %_ZNK15ContentFeatures16sameLiquidRenderERKS_.exit.thread
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fm, i64 1249
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !205
  %i.gg = icmp ne i8 %i.gf, 0
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.l, %_ZNK15ContentFeatures16sameLiquidRenderERKS_.exit.thread, %bb.e
  %.2 = phi i1 [ %i.es, %bb.e ], [ %i.gg, %bb.l ], [ true, %_ZNK15ContentFeatures16sameLiquidRenderERKS_.exit.thread ], [ %i.es, %bb.i ]
  %i.gh = trunc nuw nsw i64 %indvars.iv to i32
  %i.gi = shl nuw nsw i32 1, %i.gh
  %i.gj = trunc nuw nsw i32 %i.gi to i8
  %i.gk = or i8 %.046112, %i.gj                   ; 2 uses
  %.sroa.021.0.copyload = load i48, ptr %i.cv, align 2, !tbaa !121
  %i.gl = getelementptr inbounds nuw [104 x i8], ptr %6, i64 %indvars.iv ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i48 %.sroa.021.0.copyload, ptr %4, align 8
  %.sroa.0.0.copyload.i71 = load i32, ptr %i.cc, align 4
  %i.gm = load ptr, ptr %0, align 8, !tbaa !31
  call void @_Z11getNodeTile7MapNodeRKN4core8vector3dIsEES4_P12MeshMakeDataR8TileSpec(i32 %.sroa.0.0.copyload.i71, ptr noundef nonnull align 2 dereferenceable(6) %i.cb, ptr noundef nonnull align 2 dereferenceable(6) %4, ptr noundef %i.gm, ptr noundef nonnull align 8 dereferenceable(104) %i.gl)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br i1 %.2, label %.thread.split.preheader, label %.split

.thread.split.preheader:                          ; preds = %.thread
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 31 ; 2 uses
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !109
  %i.gp = or i8 %i.go, 1
  store i8 %i.gp, ptr %i.gn, align 1, !tbaa !109
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 79 ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !109
  %i.gs = or i8 %i.gr, 1
  store i8 %i.gs, ptr %i.gq, align 1, !tbaa !109
  br label %.split

.split:                                           ; preds = %.thread.split.preheader, %.thread
  %i.gt = load ptr, ptr %0, align 8, !tbaa !31
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 65
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !114, !range !106, !noundef !107
  %i.gw = trunc nuw i8 %i.gv to i1
  br i1 %i.gw, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.split
  %.sroa.013.0.copyload = load i32, ptr %i.cc, align 4
  %i.gx = load ptr, ptr %i.co, align 8, !tbaa !40
  %i.gy = call noundef zeroext i16 @_Z12getFaceLight7MapNodeS_PK14NodeDefManager(i32 %.sroa.013.0.copyload, i32 %.sroa.0.0.insert.insert.i70, ptr noundef %i.gx)
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  store i16 %i.gy, ptr %i.gz, align 2, !tbaa !121
  br label %bb.n

bb.n:                                             ; preds = %_ZNK14NodeDefManager3getEt.exit, %_ZNK15ContentFeatures16sameLiquidRenderERKS_.exit, %.split, %bb.m, %bb.e, %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit
  %.1 = phi i8 [ %i.gk, %.split ], [ %.046112, %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit ], [ %.046112, %bb.e ], [ %i.gk, %bb.m ], [ %.046112, %_ZNK15ContentFeatures16sameLiquidRenderERKS_.exit ], [ %.046112, %_ZNK14NodeDefManager3getEt.exit ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !202

bb.o:                                             ; preds = %bb.b
  %i.ha = xor i8 %.1, 63                          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hc = load <3 x float>, ptr %i.hb, align 8, !tbaa !44 ; 2 uses
  %i.hd = shufflevector <3 x float> %i.hc, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.he = fadd nsz <4 x float> %i.hd, <float -5.000000e+00, float -5.000000e+00, float -5.000000e+00, float 5.000000e+00>
  store <4 x float> %i.he, ptr %7, align 16, !tbaa !44
  %i.hf = shufflevector <3 x float> %i.hc, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.hg = fadd nsz <2 x float> %i.hf, splat (float 5.000000e+00)
  store <2 x float> %i.hg, ptr %.sroa.490.0..sroa_idx, align 16, !tbaa !44
  %i.hh = load ptr, ptr %0, align 8, !tbaa !31
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 65
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !114, !range !106, !noundef !107
  %i.hk = trunc nuw i8 %i.hj to i1
  br i1 %i.hk, label %bb.p, label %bb.ac

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.hl = zext i8 %i.ha to i32                    ; 2 uses
  br label %bb.ab

bb.q:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %.sroa.0.0.copyload.i72 = load i48, ptr %i.cb, align 8, !tbaa !121
  call fastcc void @_ZL19setupCuboidVerticesRKN4core8aabbox3dIfEEPKfPK8TileSpeciNS_8vector3dIsEE(ptr dead_on_unwind noalias writable align 4 %3, ptr noundef nonnull readonly align 4 dereferenceable(24) %7, ptr noundef null, ptr noundef nonnull %6, i32 noundef 6, i48 %.sroa.0.0.copyload.i72)
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.r

bb.r:                                             ; preds = %bb.aa, %bb.q
  %indvars.iv.i = phi i64 [ 0, %bb.q ], [ %indvars.iv.next.i, %bb.aa ] ; 5 uses
  %i.hn = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ho = shl nuw nsw i32 1, %i.hn
  %i.hp = and i32 %i.ho, %i.hl
  %.not.i73 = icmp eq i32 %i.hp, 0
  br i1 %.not.i73, label %bb.s, label %bb.aa

bb.s:                                             ; preds = %bb.r
  %.idx.i = mul nuw nsw i64 %indvars.iv.i, 160
  %i.hq = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.i ; 13 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv.i ; 4 uses
  %i.hs = load i16, ptr %i.hr, align 8            ; 2 uses
  %i.ht = load ptr, ptr %i.cn, align 8, !tbaa !58
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 1410
  %i.hv = load i8, ptr %i.hu, align 2, !tbaa !113
  %i.hw = call i32 @_Z12encode_lightth(i16 noundef zeroext %i.hs, i8 noundef zeroext %i.hv)
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hq, i64 24 ; 2 uses
  store i32 %i.hw, ptr %i.hx, align 4, !tbaa !115
  %i.hy = load ptr, ptr %i.cn, align 8, !tbaa !58
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 1410
  %i.ia = load i8, ptr %i.hz, align 2, !tbaa !113 ; 2 uses
  %.not.i.i = icmp eq i8 %i.ia, 0
  br i1 %.not.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hq, i64 12
  %.sroa.05.0.copyload.i.i = load <2 x float>, ptr %i.ib, align 4, !tbaa !44
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hq, i64 20
  %.sroa.26.0.copyload.i.i = load float, ptr %.sroa.26.0..sroa_idx.i.i, align 4, !tbaa !44
  call void @_Z17applyFacesShadingRN5video6SColorEN4core8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(4) %i.hx, <2 x float> %.sroa.05.0.copyload.i.i, float %.sroa.26.0.copyload.i.i)
  %.pre.i.i = load ptr, ptr %i.cn, align 8, !tbaa !58
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 1410
  %.pre3.i.i = load i8, ptr %.phi.trans.insert.i.i, align 2, !tbaa !113
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ic = phi i8 [ %.pre3.i.i, %bb.t ], [ %i.ia, %bb.s ]
  %i.id = getelementptr inbounds nuw i8, ptr %i.hr, i64 2
  %i.ie = load i16, ptr %i.id, align 2            ; 2 uses
  %i.if = call i32 @_Z12encode_lightth(i16 noundef zeroext %i.ie, i8 noundef zeroext %i.ic)
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hq, i64 64 ; 2 uses
  store i32 %i.if, ptr %i.ig, align 4, !tbaa !115
  %i.ih = load ptr, ptr %i.cn, align 8, !tbaa !58
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 1410
  %i.ij = load i8, ptr %i.ii, align 2, !tbaa !113 ; 2 uses
  %.not.1.i.i = icmp eq i8 %i.ij, 0
  br i1 %.not.1.i.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hq, i64 52
  %.sroa.05.0.copyload.1.i.i = load <2 x float>, ptr %i.ik, align 4, !tbaa !44
  %.sroa.26.0..sroa_idx.1.i.i = getelementptr inbounds nuw i8, ptr %i.hq, i64 60
  %.sroa.26.0.copyload.1.i.i = load float, ptr %.sroa.26.0..sroa_idx.1.i.i, align 4, !tbaa !44
  call void @_Z17applyFacesShadingRN5video6SColorEN4core8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(4) %i.ig, <2 x float> %.sroa.05.0.copyload.1.i.i, float %.sroa.26.0.copyload.1.i.i)
  %.pre4.i.i = load ptr, ptr %i.cn, align 8, !tbaa !58
  %.phi.trans.insert5.i.i = getelementptr inbounds nuw i8, ptr %.pre4.i.i, i64 1410
  %.pre6.i.i = load i8, ptr %.phi.trans.insert5.i.i, align 2, !tbaa !113
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.il = phi i8 [ %.pre6.i.i, %bb.v ], [ %i.ij, %bb.u ]
  %i.im = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  %i.in = load i16, ptr %i.im, align 4            ; 2 uses
  %i.io = call i32 @_Z12encode_lightth(i16 noundef zeroext %i.in, i8 noundef zeroext %i.il)
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hq, i64 104 ; 2 uses
  store i32 %i.io, ptr %i.ip, align 4, !tbaa !115
  %i.iq = load ptr, ptr %i.cn, align 8, !tbaa !58
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 1410
  %i.is = load i8, ptr %i.ir, align 2, !tbaa !113 ; 2 uses
  %.not.2.i.i = icmp eq i8 %i.is, 0
  br i1 %.not.2.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.it = getelementptr inbounds nuw i8, ptr %i.hq, i64 92
  %.sroa.05.0.copyload.2.i.i = load <2 x float>, ptr %i.it, align 4, !tbaa !44
  %.sroa.26.0..sroa_idx.2.i.i = getelementptr inbounds nuw i8, ptr %i.hq, i64 100
  %.sroa.26.0.copyload.2.i.i = load float, ptr %.sroa.26.0..sroa_idx.2.i.i, align 4, !tbaa !44
  call void @_Z17applyFacesShadingRN5video6SColorEN4core8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(4) %i.ip, <2 x float> %.sroa.05.0.copyload.2.i.i, float %.sroa.26.0.copyload.2.i.i)
  %.pre7.i.i = load ptr, ptr %i.cn, align 8, !tbaa !58
  %.phi.trans.insert8.i.i = getelementptr inbounds nuw i8, ptr %.pre7.i.i, i64 1410
  %.pre9.i.i = load i8, ptr %.phi.trans.insert8.i.i, align 2, !tbaa !113
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.iu = phi i8 [ %.pre9.i.i, %bb.x ], [ %i.is, %bb.w ]
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hr, i64 6
  %i.iw = load i16, ptr %i.iv, align 2            ; 2 uses
  %i.ix = call i32 @_Z12encode_lightth(i16 noundef zeroext %i.iw, i8 noundef zeroext %i.iu)
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hq, i64 144 ; 2 uses
  store i32 %i.ix, ptr %i.iy, align 4, !tbaa !115
  %i.iz = load ptr, ptr %i.cn, align 8, !tbaa !58
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 1410
  %i.jb = load i8, ptr %i.ja, align 2, !tbaa !113
  %.not.3.i.i = icmp eq i8 %i.jb, 0
  br i1 %.not.3.i.i, label %bb.z, label %"_ZZN21MapblockMeshGenerator13drawSolidNodeEvENK3$_0clEiPN5video9S3DVertexE.exit.i"

bb.z:                                             ; preds = %bb.y
  %i.jc = getelementptr inbounds nuw i8, ptr %i.hq, i64 132
  %.sroa.05.0.copyload.3.i.i = load <2 x float>, ptr %i.jc, align 4, !tbaa !44
  %.sroa.26.0..sroa_idx.3.i.i = getelementptr inbounds nuw i8, ptr %i.hq, i64 140
  %.sroa.26.0.copyload.3.i.i = load float, ptr %.sroa.26.0..sroa_idx.3.i.i, align 4, !tbaa !44
  call void @_Z17applyFacesShadingRN5video6SColorEN4core8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(4) %i.iy, <2 x float> %.sroa.05.0.copyload.3.i.i, float %.sroa.26.0.copyload.3.i.i)
  br label %"_ZZN21MapblockMeshGenerator13drawSolidNodeEvENK3$_0clEiPN5video9S3DVertexE.exit.i"

"_ZZN21MapblockMeshGenerator13drawSolidNodeEvENK3$_0clEiPN5video9S3DVertexE.exit.i": ; preds = %bb.z, %bb.y
  %i.jd = insertelement <2 x i16> poison, i16 %i.ie, i64 0
  %i.je = insertelement <2 x i16> %i.jd, i16 %i.hs, i64 1 ; 2 uses
  %i.jf = lshr <2 x i16> %i.je, splat (i16 8)
  %i.jg = insertelement <2 x i16> poison, i16 %i.iw, i64 0
  %i.jh = insertelement <2 x i16> %i.jg, i16 %i.in, i64 1 ; 2 uses
  %i.ji = lshr <2 x i16> %i.jh, splat (i16 8)
  %i.jj = and <2 x i16> %i.je, splat (i16 255)
  %i.jk = and <2 x i16> %i.jh, splat (i16 255)
  %11 = zext nneg <2 x i16> %i.jf to <2 x i32>
  %12 = zext nneg <2 x i16> %i.ji to <2 x i32>
  %13 = zext nneg <2 x i16> %i.jj to <2 x i32>
  %14 = zext nneg <2 x i16> %i.jk to <2 x i32>
  %15 = sub nsw <2 x i32> %13, %14
  %16 = call <2 x i32> @llvm.abs.v2i32(<2 x i32> %15, i1 true)
  %17 = sub nsw <2 x i32> %11, %12
  %18 = call <2 x i32> @llvm.abs.v2i32(<2 x i32> %17, i1 true)
  %19 = add nuw nsw <2 x i32> %16, %18            ; 2 uses
  %20 = extractelement <2 x i32> %19, i64 0
  %21 = extractelement <2 x i32> %19, i64 1
  %.not1.i = icmp samesign ult i32 %20, %21
  %_ZL15quad_indices_13._ZL15quad_indices_02.i = select i1 %.not1.i, ptr @_ZL15quad_indices_13, ptr @_ZL15quad_indices_02
  %i.jl = load ptr, ptr %i.hm, align 8, !tbaa !32
  %i.jm = getelementptr inbounds nuw [104 x i8], ptr %6, i64 %indvars.iv.i
  call void @_ZN13MeshCollector6appendERK8TileSpecPKN5video9S3DVertexEjPKtj(ptr noundef nonnull align 8 dereferenceable(76) %i.jl, ptr noundef nonnull align 8 dereferenceable(104) %i.jm, ptr noundef nonnull %i.hq, i32 noundef 4, ptr noundef nonnull %_ZL15quad_indices_13._ZL15quad_indices_02.i, i32 noundef 6)
  br label %bb.aa

bb.aa:                                            ; preds = %"_ZZN21MapblockMeshGenerator13drawSolidNodeEvENK3$_0clEiPN5video9S3DVertexE.exit.i", %bb.r
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 6
  br i1 %exitcond.not.i, label %"_ZN21MapblockMeshGenerator10drawCuboidIZNS_13drawSolidNodeEvE3$_0EEvRKN4core8aabbox3dIfEEPK8TileSpeciPKfhOT_.exit", label %bb.r, !llvm.loop !203

"_ZN21MapblockMeshGenerator10drawCuboidIZNS_13drawSolidNodeEvE3$_0EEvRKN4core8aabbox3dIfEEPK8TileSpeciPKfhOT_.exit": ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.au

bb.ab:                                            ; preds = %bb.p, %.loopexit
  %indvars.iv120 = phi i64 [ 0, %bb.p ], [ %indvars.iv.next121, %.loopexit ] ; 5 uses
  %i.jn = trunc nuw nsw i64 %indvars.iv120 to i32
  %i.jo = shl nuw nsw i32 1, %i.jn
  %i.jp = and i32 %i.jo, %i.hl
  %.not54 = icmp eq i32 %i.jp, 0
  br i1 %.not54, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.ab
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr @_ZL13light_indices, i64 %indvars.iv120 ; 4 uses
  %i.jr = getelementptr inbounds nuw [6 x i8], ptr @_ZN12_GLOBAL__N_117nodebox_tile_dirsE, i64 %indvars.iv120 ; 4 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv120 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.jt = load i8, ptr %i.jq, align 4, !tbaa !55
  %i.ju = zext i8 %i.jt to i64
  %i.jv = getelementptr inbounds nuw [6 x i8], ptr @_ZL10light_dirs, i64 %i.ju
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %9, ptr noundef nonnull align 2 dereferenceable(6) %i.jv, i64 6, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.jw = load i16, ptr %i.ce, align 8, !tbaa !41
  %i.jx = load i16, ptr %i.cb, align 8, !tbaa !41
  %i.jy = add i16 %i.jx, %i.jw
  %i.jz = load i16, ptr %i.cf, align 2, !tbaa !42
  %i.ka = load i16, ptr %i.cg, align 2, !tbaa !42
  %i.kb = add i16 %i.ka, %i.jz
  %i.kc = load i16, ptr %i.ch, align 4, !tbaa !43
  %i.kd = load i16, ptr %i.ci, align 4, !tbaa !43
  %i.ke = add i16 %i.kd, %i.kc
  %.sroa.3.0.insert.ext.i74 = zext i16 %i.ke to i48
  %.sroa.3.0.insert.shift.i75 = shl nuw i48 %.sroa.3.0.insert.ext.i74, 32
  %.sroa.2.0.insert.ext.i76 = zext i16 %i.kb to i48
  %.sroa.2.0.insert.shift.i77 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i76, 16
  %.sroa.2.0.insert.insert.i78 = or disjoint i48 %.sroa.3.0.insert.shift.i75, %.sroa.2.0.insert.shift.i77
  %.sroa.0.0.insert.ext.i79 = zext i16 %i.jy to i48
  %.sroa.0.0.insert.insert.i80 = or disjoint i48 %.sroa.2.0.insert.insert.i78, %.sroa.0.0.insert.ext.i79
  store i48 %.sroa.0.0.insert.insert.i80, ptr %10, align 8
  %i.kf = load ptr, ptr %0, align 8, !tbaa !31
  %i.kg = call noundef zeroext i16 @_Z19getSmoothLightSolidRKN4core8vector3dIsEES3_S3_P12MeshMakeData(ptr noundef nonnull align 2 dereferenceable(6) %10, ptr noundef nonnull align 2 dereferenceable(6) %i.jr, ptr noundef nonnull align 2 dereferenceable(6) %9, ptr noundef %i.kf)
  store i16 %i.kg, ptr %i.js, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jq, i64 1
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !55
  %i.kj = zext i8 %i.ki to i64
  %i.kk = getelementptr inbounds nuw [6 x i8], ptr @_ZL10light_dirs, i64 %i.kj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %9, ptr noundef nonnull align 2 dereferenceable(6) %i.kk, i64 6, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.kl = load i16, ptr %i.ce, align 8, !tbaa !41
  %i.km = load i16, ptr %i.cb, align 8, !tbaa !41
  %i.kn = add i16 %i.km, %i.kl
  %i.ko = load i16, ptr %i.cf, align 2, !tbaa !42
  %i.kp = load i16, ptr %i.cg, align 2, !tbaa !42
  %i.kq = add i16 %i.kp, %i.ko
  %i.kr = load i16, ptr %i.ch, align 4, !tbaa !43
  %i.ks = load i16, ptr %i.ci, align 4, !tbaa !43
  %i.kt = add i16 %i.ks, %i.kr
  %.sroa.3.0.insert.ext.i74.1 = zext i16 %i.kt to i48
  %.sroa.3.0.insert.shift.i75.1 = shl nuw i48 %.sroa.3.0.insert.ext.i74.1, 32
  %.sroa.2.0.insert.ext.i76.1 = zext i16 %i.kq to i48
  %.sroa.2.0.insert.shift.i77.1 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i76.1, 16
  %.sroa.2.0.insert.insert.i78.1 = or disjoint i48 %.sroa.3.0.insert.shift.i75.1, %.sroa.2.0.insert.shift.i77.1
  %.sroa.0.0.insert.ext.i79.1 = zext i16 %i.kn to i48
  %.sroa.0.0.insert.insert.i80.1 = or disjoint i48 %.sroa.2.0.insert.insert.i78.1, %.sroa.0.0.insert.ext.i79.1
  store i48 %.sroa.0.0.insert.insert.i80.1, ptr %10, align 8
  %i.ku = load ptr, ptr %0, align 8, !tbaa !31
  %i.kv = call noundef zeroext i16 @_Z19getSmoothLightSolidRKN4core8vector3dIsEES3_S3_P12MeshMakeData(ptr noundef nonnull align 2 dereferenceable(6) %10, ptr noundef nonnull align 2 dereferenceable(6) %i.jr, ptr noundef nonnull align 2 dereferenceable(6) %9, ptr noundef %i.ku)
  %i.kw = getelementptr inbounds nuw i8, ptr %i.js, i64 2
  store i16 %i.kv, ptr %i.kw, align 2, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.kx = getelementptr inbounds nuw i8, ptr %i.jq, i64 2
  %i.ky = load i8, ptr %i.kx, align 2, !tbaa !55
  %i.kz = zext i8 %i.ky to i64
  %i.la = getelementptr inbounds nuw [6 x i8], ptr @_ZL10light_dirs, i64 %i.kz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %9, ptr noundef nonnull align 2 dereferenceable(6) %i.la, i64 6, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.lb = load i16, ptr %i.ce, align 8, !tbaa !41
  %i.lc = load i16, ptr %i.cb, align 8, !tbaa !41
  %i.ld = add i16 %i.lc, %i.lb
  %i.le = load i16, ptr %i.cf, align 2, !tbaa !42
  %i.lf = load i16, ptr %i.cg, align 2, !tbaa !42
  %i.lg = add i16 %i.lf, %i.le
  %i.lh = load i16, ptr %i.ch, align 4, !tbaa !43
  %i.li = load i16, ptr %i.ci, align 4, !tbaa !43
  %i.lj = add i16 %i.li, %i.lh
  %.sroa.3.0.insert.ext.i74.2 = zext i16 %i.lj to i48
  %.sroa.3.0.insert.shift.i75.2 = shl nuw i48 %.sroa.3.0.insert.ext.i74.2, 32
  %.sroa.2.0.insert.ext.i76.2 = zext i16 %i.lg to i48
  %.sroa.2.0.insert.shift.i77.2 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i76.2, 16
  %.sroa.2.0.insert.insert.i78.2 = or disjoint i48 %.sroa.3.0.insert.shift.i75.2, %.sroa.2.0.insert.shift.i77.2
  %.sroa.0.0.insert.ext.i79.2 = zext i16 %i.ld to i48
  %.sroa.0.0.insert.insert.i80.2 = or disjoint i48 %.sroa.2.0.insert.insert.i78.2, %.sroa.0.0.insert.ext.i79.2
  store i48 %.sroa.0.0.insert.insert.i80.2, ptr %10, align 8
  %i.lk = load ptr, ptr %0, align 8, !tbaa !31
  %i.ll = call noundef zeroext i16 @_Z19getSmoothLightSolidRKN4core8vector3dIsEES3_S3_P12MeshMakeData(ptr noundef nonnull align 2 dereferenceable(6) %10, ptr noundef nonnull align 2 dereferenceable(6) %i.jr, ptr noundef nonnull align 2 dereferenceable(6) %9, ptr noundef %i.lk)
  %i.lm = getelementptr inbounds nuw i8, ptr %i.js, i64 4
  store i16 %i.ll, ptr %i.lm, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.ln = getelementptr inbounds nuw i8, ptr %i.jq, i64 3
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !55
  %i.lp = zext i8 %i.lo to i64
  %i.lq = getelementptr inbounds nuw [6 x i8], ptr @_ZL10light_dirs, i64 %i.lp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %9, ptr noundef nonnull align 2 dereferenceable(6) %i.lq, i64 6, i1 false), !tbaa.struct !141
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.lr = load i16, ptr %i.ce, align 8, !tbaa !41
  %i.ls = load i16, ptr %i.cb, align 8, !tbaa !41
  %i.lt = add i16 %i.ls, %i.lr
  %i.lu = load i16, ptr %i.cf, align 2, !tbaa !42
  %i.lv = load i16, ptr %i.cg, align 2, !tbaa !42
  %i.lw = add i16 %i.lv, %i.lu
  %i.lx = load i16, ptr %i.ch, align 4, !tbaa !43
  %i.ly = load i16, ptr %i.ci, align 4, !tbaa !43
  %i.lz = add i16 %i.ly, %i.lx
  %.sroa.3.0.insert.ext.i74.3 = zext i16 %i.lz to i48
  %.sroa.3.0.insert.shift.i75.3 = shl nuw i48 %.sroa.3.0.insert.ext.i74.3, 32
  %.sroa.2.0.insert.ext.i76.3 = zext i16 %i.lw to i48
  %.sroa.2.0.insert.shift.i77.3 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i76.3, 16
  %.sroa.2.0.insert.insert.i78.3 = or disjoint i48 %.sroa.3.0.insert.shift.i75.3, %.sroa.2.0.insert.shift.i77.3
  %.sroa.0.0.insert.ext.i79.3 = zext i16 %i.lt to i48
  %.sroa.0.0.insert.insert.i80.3 = or disjoint i48 %.sroa.2.0.insert.insert.i78.3, %.sroa.0.0.insert.ext.i79.3
  store i48 %.sroa.0.0.insert.insert.i80.3, ptr %10, align 8
  %i.ma = load ptr, ptr %0, align 8, !tbaa !31
  %i.mb = call noundef zeroext i16 @_Z19getSmoothLightSolidRKN4core8vector3dIsEES3_S3_P12MeshMakeData(ptr noundef nonnull align 2 dereferenceable(6) %10, ptr noundef nonnull align 2 dereferenceable(6) %i.jr, ptr noundef nonnull align 2 dereferenceable(6) %9, ptr noundef %i.ma)
  %i.mc = getelementptr inbounds nuw i8, ptr %i.js, i64 6
  store i16 %i.mb, ptr %i.mc, align 2, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.ab
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next121, 6
  br i1 %exitcond123.not, label %bb.q, label %bb.ab, !llvm.loop !204

bb.ac:                                            ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %.sroa.0.0.copyload.i81 = load i48, ptr %i.cb, align 8, !tbaa !121
  call fastcc void @_ZL19setupCuboidVerticesRKN4core8aabbox3dIfEEPKfPK8TileSpeciNS_8vector3dIsEE(ptr dead_on_unwind noalias writable align 4 %2, ptr noundef nonnull readonly align 4 dereferenceable(24) %7, ptr noundef null, ptr noundef nonnull %6, i32 noundef 6, i48 %.sroa.0.0.copyload.i81)
  %i.md = zext i8 %i.ha to i32                    ; 6 uses
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.mf = and i32 %i.md, 1
  %.not.i82 = icmp eq i32 %i.mf, 0
  br i1 %.not.i82, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.mg = load i16, ptr %i.a, align 2, !tbaa !121
  %i.mh = load ptr, ptr %i.cn, align 8, !tbaa !58
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 1410
  %i.mj = load i8, ptr %i.mi, align 2, !tbaa !113
  %i.mk = call i32 @_Z12encode_lightth(i16 noundef zeroext %i.mg, i8 noundef zeroext %i.mj) ; 2 uses
  store i32 %i.mk, ptr %1, align 4
  %i.ml = load ptr, ptr %i.cn, align 8, !tbaa !58
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 1410
  %i.mn = load i8, ptr %i.mm, align 2, !tbaa !113
  %.not.i.i83 = icmp eq i8 %i.mn, 0
  br i1 %.not.i.i83, label %bb.ae, label %"_ZZN21MapblockMeshGenerator13drawSolidNodeEvENK3$_1clEiPN5video9S3DVertexE.exit.i"

bb.ae:                                            ; preds = %bb.ad
  %i.mo = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.03.0.copyload.i.i84 = load <2 x float>, ptr %i.mo, align 4, !tbaa !44
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.24.0.copyload.i.i = load float, ptr %.sroa.24.0..sroa_idx.i.i, align 4, !tbaa !44
  call void @_Z17applyFacesShadingRN5video6SColorEN4core8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(4) %1, <2 x float> %.sroa.03.0.copyload.i.i84, float %.sroa.24.0.copyload.i.i)
  %.pre.i.i85 = load i32, ptr %1, align 4, !tbaa !115
  br label %"_ZZN21MapblockMeshGenerator13drawSolidNodeEvENK3$_1clEiPN5video9S3DVertexE.exit.i"

"_ZZN21MapblockMeshGenerator13drawSolidNodeEvENK3$_1clEiPN5video9S3DVertexE.exit.i": ; preds = %bb.ae, %bb.ad
  %i.mp = phi i32 [ %.pre.i.i85, %bb.ae ], [ %i.mk, %bb.ad ] ; 4 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.mp, ptr %i.mq, align 4, !tbaa !115
  %i.mr = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 %i.mp, ptr %i.mr, align 4, !tbaa !115
  %i.ms = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i32 %i.mp, ptr %i.ms, align 4, !tbaa !115
  %i.mt = getelementptr inbounds nuw i8, ptr %2, i64 144
  store i32 %i.mp, ptr %i.mt, align 4, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.mu = load ptr, ptr %i.me, align 8, !tbaa !32
  call void @_ZN13MeshCollector6appendERK8TileSpecPKN5video9S3DVertexEjPKtj(ptr noundef nonnull align 8 dereferenceable(76) %i.mu, ptr noundef nonnull align 8 dereferenceable(104) %6, ptr noundef nonnull %2, i32 noundef 4, ptr noundef nonnull @_ZL15quad_indices_02, i32 noundef 6)
  br label %bb.af
end_hunk_0
begin_hunk_1_@_ZL19setupCuboidVerticesRKN4core8aabbox3dIfEEPKfPK8TileSpeciNS_8vector3dIsEE:bb.a
  %i.qo = load float, ptr %i.qn, align 4, !tbaa !300
  %i.qp = load float, ptr %i.qm, align 4, !tbaa !299
  %i.qq = fsub nsz float 1.000000e+00, %i.qp
  store float %i.qo, ptr %i.qm, align 4, !tbaa !299
  store float %i.qq, ptr %i.qn, align 4, !tbaa !300
  %i.qr = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.ih ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 148 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qr, i64 152 ; 2 uses
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !300
  %i.qv = load float, ptr %i.qs, align 4, !tbaa !299
  %i.qw = fsub nsz float 1.000000e+00, %i.qv
  store float %i.qu, ptr %i.qs, align 4, !tbaa !299
  store float %i.qw, ptr %i.qt, align 4, !tbaa !300
  br label %.split294.us

.split294.us:                                     ; preds = %.split, %.split.split.us298.preheader, %.split.split.us296.preheader, %.split.split.us.preheader, %.split294.us.loopexit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !298

.split290.us:                                     ; preds = %bb.aq, %bb.ae, %bb.s, %bb.g
  unreachable

.split292.us:                                     ; preds = %_ZN4core8vector3dIsEixEj.exit.us.3, %_ZN4core8vector3dIsEixEj.exit.us.2, %_ZN4core8vector3dIsEixEj.exit.us.1, %_ZN4core8vector3dIsEixEj.exit.us
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #8

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !147    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  %i.c = load ptr, ptr %0, align 8, !tbaa !185    ; 9 uses
  %.not.i = icmp eq ptr %i.c, null                ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %_ZN11StreamProxylsIPKcEERS_OT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !192
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !185
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.k = phi ptr [ %.pre.i, %bb.d ], [ %i.c, %bb.c ]
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.11, i64 noundef 6) ; 0 uses
  br label %_ZN11StreamProxylsIPKcEERS_OT_.exit

bb.f:                                             ; preds = %bb.a
  br i1 %.not.i, label %_ZN11StreamProxylsIPKcEERS_OT_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !170
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %i.c, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !192
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pre.i5 = load ptr, ptr %0, align 8, !tbaa !185 ; 3 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !147   ; 2 uses
  %.not.i.i6 = icmp eq ptr %.pre, null
  br i1 %.not.i.i6, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %.pre.i5, align 8, !tbaa !170
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %.pre.i5, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !192
  %i.z = or i32 %i.y, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.w, i32 noundef %i.z)
  br label %_ZN11StreamProxylsIPKcEERS_OT_.exit

.thread:                                          ; preds = %bb.g, %bb.h
  %i.aa = phi ptr [ %.pre.i5, %bb.h ], [ %i.c, %bb.g ]
  %i.ab = phi ptr [ %.pre, %bb.h ], [ %i.a, %bb.g ] ; 2 uses
  %i.ac = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #26
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull %i.ab, i64 noundef %i.ac) ; 0 uses
  br label %_ZN11StreamProxylsIPKcEERS_OT_.exit

_ZN11StreamProxylsIPKcEERS_OT_.exit:              ; preds = %.thread, %bb.i, %bb.f, %bb.e, %bb.b
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #14

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #5

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_content_mapblock.cpp() #23 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN21MapblockMeshGenerator18raillike_groupnameB5cxx11E, i64 16), ptr @_ZN21MapblockMeshGenerator18raillike_groupnameB5cxx11E, align 8, !tbaa !302
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 19, ptr %i.a, align 8, !tbaa !303
  %i.b = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN21MapblockMeshGenerator18raillike_groupnameB5cxx11E, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.b, ptr @_ZN21MapblockMeshGenerator18raillike_groupnameB5cxx11E, align 8, !tbaa !193
  %i.c = load i64, ptr %i.a, align 8, !tbaa !303  ; 3 uses
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZN21MapblockMeshGenerator18raillike_groupnameB5cxx11E, i64 16), align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.b, ptr noundef nonnull align 1 dereferenceable(19) @.str, i64 19, i1 false)
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZN21MapblockMeshGenerator18raillike_groupnameB5cxx11E, i64 8), align 8, !tbaa !134
  %i.d = load ptr, ptr @_ZN21MapblockMeshGenerator18raillike_groupnameB5cxx11E, align 8, !tbaa !193
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.c
  store i8 0, ptr %i.e, align 1, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.f = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN21MapblockMeshGenerator18raillike_groupnameB5cxx11E, ptr nonnull @__dso_handle) #26 ; 0 uses
  ret void
}

declare extern_weak void @_ZTH13warningstream() #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #21

declare extern_weak void @_ZTH10infostream() #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.sincos.f64(double) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.abs.v2i32(<2 x i32>, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #8

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nofree noreturn }
attributes #18 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { nounwind }
attributes #27 = { noreturn }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { builtin nounwind }
attributes #30 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !116}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTS12MeshMakeData", !10, i64 0}
!12 = !{!"p1 _ZTS13MeshCollector", !10, i64 0}
!13 = !{!"p1 _ZTS14NodeDefManager", !10, i64 0}
!14 = !{!"short", !6, i64 0}
!15 = !{!"_ZTSN4core8vector3dIsEE", !14, i64 0, !14, i64 2, !14, i64 4}
!16 = !{!"float", !6, i64 0}
!17 = !{!"_ZTSN4core8vector3dIfEE", !16, i64 0, !16, i64 4, !16, i64 8}
!18 = !{!"_ZTS7MapNode", !14, i64 0, !6, i64 2, !6, i64 3}
!19 = !{!"p1 _ZTS15ContentFeatures", !10, i64 0}
!20 = !{!"_ZTS10LightFrame", !6, i64 0, !6, i64 32, !6, i64 64}
!21 = !{!"_ZTSN5video6SColorE", !7, i64 0}
!22 = !{!"_ZTSN21MapblockMeshGeneratorUt_E", !15, i64 0, !17, i64 8, !18, i64 20, !19, i64 24, !20, i64 32, !21, i64 104}
!23 = !{!"bool", !6, i64 0}
!24 = !{!"_ZTS12TileRotation", !6, i64 0}
!25 = !{!"_ZTS8TileSpec", !23, i64 0, !24, i64 1, !6, i64 8}
!26 = !{!"_ZTSN21MapblockMeshGenerator10LiquidDataE", !23, i64 0, !23, i64 1, !25, i64 8, !25, i64 112, !14, i64 216, !14, i64 218, !21, i64 220, !6, i64 224, !6, i64 296}
!27 = !{!"_ZTSN21MapblockMeshGenerator12RaillikeDataE", !7, i64 0}
!28 = !{!"_ZTS14PlantlikeStyle", !6, i64 0}
!29 = !{!"_ZTSN21MapblockMeshGenerator13PlantlikeDataE", !28, i64 0, !17, i64 4, !16, i64 16, !16, i64 20, !23, i64 24, !7, i64 28, !16, i64 32}
!30 = !{!"_ZTS21MapblockMeshGenerator", !11, i64 0, !12, i64 8, !13, i64 16, !15, i64 24, !22, i64 32, !26, i64 144, !27, i64 456, !29, i64 460}
!31 = !{!30, !11, i64 0}
!32 = !{!30, !12, i64 8}
!33 = !{!"_ZTSN4core8vector3dIiEE", !7, i64 0, !7, i64 4, !7, i64 8}
!34 = !{!"_ZTS9VoxelArea", !15, i64 0, !15, i64 6, !33, i64 12}
!35 = !{!"p1 _ZTS7MapNode", !10, i64 0}
!36 = !{!"p1 omnipotent char", !10, i64 0}
!37 = !{!"_ZTS16VoxelManipulator", !34, i64 8, !35, i64 32, !36, i64 40}
!38 = !{!"_ZTS8MeshGrid", !14, i64 0}
!39 = !{!"_ZTS12MeshMakeData", !37, i64 0, !15, i64 48, !14, i64 54, !38, i64 56, !15, i64 58, !23, i64 64, !23, i64 65, !23, i64 66, !13, i64 72}
!40 = !{!30, !13, i64 16}
!41 = !{!15, !14, i64 0}
!42 = !{!15, !14, i64 2}
!43 = !{!15, !14, i64 4}
!44 = !{!16, !16, i64 0}
!45 = !{!17, !16, i64 8}
!46 = !{!21, !7, i64 0}
!47 = !{!25, !23, i64 0}
!48 = !{!25, !24, i64 1}
!49 = !{!"p1 _ZTSN5video8ITextureE", !10, i64 0}
!50 = !{!"_ZTS12MaterialType", !6, i64 0}
!51 = !{!"p1 _ZTSSt6vectorI9FrameSpecSaIS0_EE", !10, i64 0}
!52 = !{!"_ZTS9TileLayer", !49, i64 0, !7, i64 8, !7, i64 12, !14, i64 16, !14, i64 18, !14, i64 20, !50, i64 22, !6, i64 23, !6, i64 24, !23, i64 25, !51, i64 32, !21, i64 40, !23, i64 44}
!53 = !{!52, !14, i64 18}
!54 = !{!52, !14, i64 20}
!55 = !{!6, !6, i64 0}
!56 = !{!52, !51, i64 32}
!57 = !{!52, !23, i64 44}
!58 = !{!30, !19, i64 56}
!59 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !36, i64 0}
!60 = !{!"long", !6, i64 0}
!61 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !59, i64 0, !60, i64 8, !6, i64 16}
!62 = !{!"any p2 pointer", !10, i64 0}
!63 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !62, i64 0}
!64 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !10, i64 0}
!65 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !64, i64 0}
!66 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !16, i64 0, !60, i64 8}
!67 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !63, i64 0, !60, i64 8, !65, i64 16, !60, i64 24, !66, i64 32, !64, i64 48}
!68 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE", !67, i64 0}
!69 = !{!"_ZTS16ContentParamType", !6, i64 0}
!70 = !{!"_ZTS17ContentParamType2", !6, i64 0}
!71 = !{!"_ZTS12NodeDrawType", !6, i64 0}
!72 = !{!"_ZTS9AlphaMode", !6, i64 0}
!73 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!74 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !73, i64 0, !73, i64 8, !73, i64 16}
!75 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !74, i64 0}
!76 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !75, i64 0}
!77 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !76, i64 0}
!78 = !{!"p1 short", !10, i64 0}
!79 = !{!"_ZTSNSt12_Vector_baseItSaItEE17_Vector_impl_dataE", !78, i64 0, !78, i64 8, !78, i64 16}
!80 = !{!"_ZTSNSt12_Vector_baseItSaItEE12_Vector_implE", !79, i64 0}
!81 = !{!"_ZTSSt12_Vector_baseItSaItEE", !80, i64 0}
!82 = !{!"_ZTSSt6vectorItSaItEE", !81, i64 0}
!83 = !{!"p1 _ZTS11NodeVisuals", !10, i64 0}
!84 = !{!"_ZTS16PointabilityType", !6, i64 0}
!85 = !{!"_ZTS10LiquidType", !6, i64 0}
!86 = !{!"_ZTS11NodeBoxType", !6, i64 0}
!87 = !{!"p1 _ZTSN4core8aabbox3dIfEE", !10, i64 0}
!88 = !{!"_ZTSNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE17_Vector_impl_dataE", !87, i64 0, !87, i64 8, !87, i64 16}
!89 = !{!"_ZTSNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE12_Vector_implE", !88, i64 0}
!90 = !{!"_ZTSSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE", !89, i64 0}
!91 = !{!"_ZTSSt6vectorIN4core8aabbox3dIfEESaIS2_EE", !90, i64 0}
!92 = !{!"_ZTSN4core8aabbox3dIfEE", !17, i64 0, !17, i64 12}
!93 = !{!"p1 _ZTS16NodeBoxConnected", !10, i64 0}
!94 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!95 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !94, i64 0}
!96 = !{!"_ZTSSt12__shared_ptrI16NodeBoxConnectedLN9__gnu_cxx12_Lock_policyE2EE", !93, i64 0, !95, i64 8}
!97 = !{!"_ZTSSt10shared_ptrI16NodeBoxConnectedE", !96, i64 0}
!98 = !{!"_ZTS7NodeBox", !86, i64 0, !91, i64 8, !92, i64 32, !92, i64 56, !92, i64 80, !97, i64 104}
!99 = !{!"_ZTS9SoundSpec", !61, i64 0, !16, i64 32, !16, i64 36, !16, i64 40, !16, i64 44, !23, i64 48, !23, i64 49}
!100 = !{!"_ZTS15ContentFeatures", !23, i64 0, !23, i64 1, !23, i64 2, !23, i64 3, !61, i64 8, !68, i64 40, !69, i64 96, !70, i64 97, !71, i64 98, !61, i64 104, !16, i64 136, !6, i64 144, !6, i64 528, !6, i64 912, !72, i64 1296, !21, i64 1300, !61, i64 1304, !6, i64 1336, !6, i64 1337, !77, i64 1344, !82, i64 1368, !21, i64 1392, !23, i64 1396, !6, i64 1397, !6, i64 1398, !83, i64 1400, !23, i64 1408, !23, i64 1409, !6, i64 1410, !23, i64 1411, !23, i64 1412, !84, i64 1413, !23, i64 1414, !23, i64 1415, !23, i64 1416, !23, i64 1417, !7, i64 1420, !61, i64 1424, !6, i64 1456, !85, i64 1457, !23, i64 1458, !61, i64 1464, !14, i64 1496, !61, i64 1504, !14, i64 1536, !6, i64 1538, !23, i64 1539, !6, i64 1540, !6, i64 1541, !23, i64 1542, !98, i64 1544, !98, i64 1664, !98, i64 1784, !99, i64 1904, !99, i64 1960, !99, i64 2016, !23, i64 2072, !23, i64 2073}
!101 = !{!100, !83, i64 1400}
!102 = !{!23, !23, i64 0}
!103 = !{!24, !24, i64 0}
!104 = !{i64 0, i64 1, !102, i64 1, i64 1, !103, i64 8, i64 96, !55}
!105 = !{!52, !7, i64 8}
!106 = !{i8 0, i8 2}
!107 = !{}
!108 = !{!30, !6, i64 55}
!109 = !{!52, !6, i64 23}
!110 = !{!"_ZTSN4core8vector2dIfEE", !16, i64 0, !16, i64 4}
!111 = !{!"_ZTSN5video9S3DVertexE", !17, i64 0, !17, i64 12, !21, i64 24, !110, i64 28, !14, i64 36}
!112 = !{!111, !14, i64 36}
!113 = !{!100, !6, i64 1410}
!114 = !{!39, !23, i64 65}
!115 = !{!7, !7, i64 0}
!116 = !{!"llvm.loop.mustprogress"}
!117 = !{!17, !16, i64 4}
!118 = !{!100, !16, i64 136}
!119 = !{!92, !16, i64 0}
!120 = !{!17, !16, i64 0}
!121 = !{!14, !14, i64 0}
!122 = !{!18, !14, i64 0}
!123 = !{!34, !14, i64 4}
!124 = !{!34, !7, i64 16}
!125 = !{!34, !7, i64 12}
!126 = !{!34, !14, i64 2}
!127 = !{!34, !14, i64 0}
!128 = !{!37, !36, i64 40}
!129 = !{!37, !35, i64 32}
!130 = !{!100, !71, i64 98}
!131 = !{!"_ZTSNSt12_Vector_baseI15ContentFeaturesSaIS0_EE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!132 = !{!131, !19, i64 8}
!133 = !{!131, !19, i64 0}
!134 = !{!61, !60, i64 8}
!135 = !{!"p1 _ZTSN5scene5SMeshE", !10, i64 0}
!136 = !{!"p1 _ZTSSt6vectorIN5video6SColorESaIS1_EE", !10, i64 0}
!137 = !{!"_ZTS11NodeVisuals", !6, i64 0, !6, i64 624, !6, i64 1248, !6, i64 1249, !23, i64 1250, !135, i64 1256, !21, i64 1264, !136, i64 1272, !19, i64 1280}
!138 = !{!137, !6, i64 1248}
!139 = !{!100, !14, i64 1496}
!140 = !{!100, !14, i64 1536}
!141 = !{i64 0, i64 2, !121, i64 2, i64 2, !121, i64 4, i64 2, !121}
!142 = !{!100, !72, i64 1296}
!143 = !{!30, !14, i64 360}
!144 = !{!30, !14, i64 362}
!145 = !{!30, !23, i64 144}
!146 = !{!30, !23, i64 145}
!147 = !{!36, !36, i64 0}
!148 = !{!"_ZTSN21MapblockMeshGenerator10LiquidData12NeighborDataE", !16, i64 0, !14, i64 4, !23, i64 6, !23, i64 7}
!149 = !{!148, !14, i64 4}
!150 = !{!148, !16, i64 0}
!151 = !{!148, !23, i64 6}
!152 = !{!148, !23, i64 7}
!153 = !{!30, !14, i64 36}
!154 = !{!30, !14, i64 32}
!155 = !{i64 0, i64 48, !55}
!156 = !{!52, !50, i64 22}
end_hunk_1
