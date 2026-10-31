Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/content_mapblock?download=true
inline.NumInlined: 881
inline.NumDeleted: 329
loop-unroll.NumCompletelyUnrolled: 77
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN21MapblockMeshGenerator7useTileEP8TileSpecihhb:bb.a
  br label %_ZN21MapblockMeshGenerator14getSpecialTileEiP8TileSpecb.exit

bb.l:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.sroa.0.0.copyload.i = load i32, ptr %i.ay, align 4
  %i.az = trunc i32 %2 to i8
  %i.ba = load ptr, ptr %0, align 8, !tbaa !31
  tail call void @_Z12getNodeTileN7MapNodeRKN4core8vector3dIsEEhP12MeshMakeDataR8TileSpec(i32 %.sroa.0.0.copyload.i, ptr noundef nonnull align 2 dereferenceable(6) %i.a, i8 noundef zeroext %i.az, ptr noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(104) %1)
  br label %_ZN21MapblockMeshGenerator14getSpecialTileEiP8TileSpecb.exit

_ZN21MapblockMeshGenerator14getSpecialTileEiP8TileSpecb.exit: ; preds = %bb.k, %bb.j, %bb.l
  %i.bb = xor i8 %4, -1                           ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 31 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !109
  %i.be = or i8 %i.bd, %3
  %i.bf = and i8 %i.be, %i.bb
  store i8 %i.bf, ptr %i.bc, align 1, !tbaa !109
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 79 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !109
  %i.bi = or i8 %i.bh, %3
  %i.bj = and i8 %i.bi, %i.bb
  store i8 %i.bj, ptr %i.bg, align 1, !tbaa !109
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21MapblockMeshGenerator14getSpecialTileEiP8TileSpecb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(496) %0, i32 noundef %1, ptr noundef initializes((0, 104)) %2, i1 noundef zeroext %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1400 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !101
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 624
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds [104 x i8], ptr %i.e, i64 %i.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %i.g, i64 104, i1 false), !tbaa.struct !104
  %.019.ptr22 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 55 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !105
  %.not.i = icmp eq i32 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.l = load i32, ptr %i.k, align 4
  %.not1.i = icmp eq i32 %i.l, 0
  %i.m = select i1 %.not.i, i1 %.not1.i, i1 false
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.o = load i8, ptr %i.n, align 4, !tbaa !57, !range !106, !noundef !107
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !101
  %i.r = load i8, ptr %i.h, align 1, !tbaa !108
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 48
  tail call void @_ZNK11NodeVisuals8getColorEhPN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(1288) %i.q, i8 noundef zeroext %i.r, ptr noundef nonnull %i.s)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %.019.ptr22, %bb.c ], [ %.019.ptr22, %bb.b ]
  %.019.ptr = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.u = load i32, ptr %i.t, align 8, !tbaa !105
  %.not.i.1 = icmp eq i32 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.w = load i32, ptr %i.v, align 4
  %.not1.i.1 = icmp eq i32 %i.w, 0
  %i.x = select i1 %.not.i.1, i1 %.not1.i.1, i1 false
  br i1 %i.x, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.z = load i8, ptr %i.y, align 4, !tbaa !57, !range !106, !noundef !107
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !101
  %i.ac = load i8, ptr %i.h, align 1, !tbaa !108
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 96
  tail call void @_ZNK11NodeVisuals8getColorEhPN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(1288) %i.ab, i8 noundef zeroext %i.ac, ptr noundef nonnull %i.ad)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.1.1 = phi ptr [ %.1, %bb.d ], [ %.019.ptr, %bb.f ], [ %.019.ptr, %bb.e ]
  br i1 %3, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %.1.1, i64 23 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !109
  %i.ag = or i8 %i.af, 2
  store i8 %i.ag, ptr %i.ae, align 1, !tbaa !109
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21MapblockMeshGenerator7getTileEiP8TileSpec(ptr noundef nonnull align 8 dereferenceable(496) %0, i32 noundef %1, ptr noundef nonnull %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.sroa.0.0.copyload = load i32, ptr %i.b, align 4
  %i.c = trunc i32 %1 to i8
  %i.d = load ptr, ptr %0, align 8, !tbaa !31
  tail call void @_Z12getNodeTileN7MapNodeRKN4core8vector3dIsEEhP12MeshMakeDataR8TileSpec(i32 %.sroa.0.0.copyload, ptr noundef nonnull align 2 dereferenceable(6) %i.a, i8 noundef zeroext %i.c, ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(104) %2)
  ret void
}

declare void @_Z12getNodeTileN7MapNodeRKN4core8vector3dIsEEhP12MeshMakeDataR8TileSpec(i32, ptr noundef nonnull align 2 dereferenceable(6), i8 noundef zeroext, ptr noundef, ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21MapblockMeshGenerator7getTileEN4core8vector3dIsEEP8TileSpec(ptr noundef nonnull align 8 dereferenceable(496) %0, i48 %1, ptr noundef nonnull %2) local_unnamed_addr #4 align 2 {
bb.a:
  %3 = alloca %"class.core::vector3d", align 8    ; 2 uses
  store i48 %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.sroa.0.0.copyload = load i32, ptr %i.b, align 4
  %i.c = load ptr, ptr %0, align 8, !tbaa !31
  call void @_Z11getNodeTile7MapNodeRKN4core8vector3dIsEES4_P12MeshMakeDataR8TileSpec(i32 %.sroa.0.0.copyload, ptr noundef nonnull align 2 dereferenceable(6) %i.a, ptr noundef nonnull align 2 dereferenceable(6) %3, ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(104) %2)
  ret void
}

declare void @_Z11getNodeTile7MapNodeRKN4core8vector3dIsEES4_P12MeshMakeDataR8TileSpec(i32, ptr noundef nonnull align 2 dereferenceable(6), ptr noundef nonnull align 2 dereferenceable(6), ptr noundef, ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #5

declare void @_ZNK11NodeVisuals8getColorEhPN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(1288), i8 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21MapblockMeshGenerator8drawQuadERK8TileSpecPN4core8vector3dIfEERKNS4_IsEEf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(6) %3, float noundef %4) local_unnamed_addr #6 align 2 {
bb.a:
  %5 = alloca [4 x %"struct.video::S3DVertex"], align 16 ; 36 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(38) %5, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.a, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.b, align 4, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 36
  store i16 0, ptr %i.c, align 4, !tbaa !112
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %.ptr.1, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.d, align 16, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 68 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.e, align 4, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 76
  store i16 0, ptr %i.f, align 4, !tbaa !112
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(38) %.ptr.2, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.g, align 8, !tbaa !46
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 108 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.h, align 4, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 116
  store i16 0, ptr %i.i, align 4, !tbaa !112
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %5, i64 120 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %.ptr.3, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.j, align 16, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 148 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.k, align 4, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 156
  store i16 0, ptr %i.l, align 4, !tbaa !112
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !58
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1410
  %i.p = load i8, ptr %i.o, align 2, !tbaa !113   ; 2 uses
  %.not = icmp eq i8 %i.p, 0
  %.pre = load i16, ptr %3, align 2, !tbaa !41    ; 2 uses
  br i1 %.not, label %bb.b, label %_ZNK4core8vector3dIsEneERKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i16 %.pre, 0
  br i1 %i.q, label %bb.c, label %_ZNK4core8vector3dIsEneERKS1_.exit

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.s = load i16, ptr %i.r, align 2, !tbaa !42
  %i.t = icmp eq i16 %i.s, 0
  br i1 %i.t, label %bb.d, label %_ZNK4core8vector3dIsEneERKS1_.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.v = load i16, ptr %i.u, align 2, !tbaa !43
  %i.w = icmp ne i16 %i.v, 0
  br label %_ZNK4core8vector3dIsEneERKS1_.exit

_ZNK4core8vector3dIsEneERKS1_.exit:               ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.x = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.b ], [ %i.w, %bb.d ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.z = load i16, ptr %i.y, align 2, !tbaa !42
  %i.aa = insertelement <2 x i16> poison, i16 %.pre, i64 0
  %i.ab = insertelement <2 x i16> %i.aa, i16 %i.z, i64 1
  %i.ac = sitofp <2 x i16> %i.ab to <2 x float>   ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !43
  %i.af = sitofp nsz i16 %i.ae to float           ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.aj = load <2 x float>, ptr %2, align 4, !tbaa !44
  %i.ak = load <2 x float>, ptr %i.ag, align 8, !tbaa !44
  %i.al = fadd nsz <2 x float> %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load float, ptr %i.am, align 4, !tbaa !45
  %i.ao = load float, ptr %i.ah, align 8, !tbaa !45
  %i.ap = fadd nsz float %i.an, %i.ao
  store <2 x float> %i.al, ptr %5, align 16, !tbaa !44
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.ap, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !44
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 12
  store <2 x float> %i.ac, ptr %i.aq, align 4, !tbaa !44
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 20
  store float %i.af, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !44
  %i.ar = load ptr, ptr %0, align 8, !tbaa !31
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 65
  %i.at = load i8, ptr %i.as, align 1, !tbaa !114, !range !106, !noundef !107
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK4core8vector3dIsEneERKS1_.exit
  %i.av = tail call { <2 x float>, float } @_ZN21MapblockMeshGenerator10blendLightERKN4core8vector3dIfEE(ptr noundef nonnull readonly align 8 dereferenceable(496) %0, ptr noundef nonnull readonly align 4 dereferenceable(12) %2) ; 2 uses
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.av, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.av, 1
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.fca.0.extract.i, i64 0
  %i.aw = fmul nsz float %.fca.1.extract.i, 0.000000e+00
  %i.ax = fadd nsz float %.sroa.03.0.vec.extract.i, %i.aw
  %i.ay = insertelement <2 x float> %.fca.0.extract.i, float %i.ax, i64 0
  %i.az = fadd nsz <2 x float> %i.ay, splat (float 5.000000e-01)
  %i.ba = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.az)
  %i.bb = fptosi <2 x float> %i.ba to <2 x i32>
  %i.bc = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.bb, <2 x i32> zeroinitializer)
  %i.bd = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.bc, <2 x i32> splat (i32 255))
  %i.be = trunc nuw nsw <2 x i32> %i.bd to <2 x i16> ; 2 uses
  %i.bf = extractelement <2 x i16> %i.be, i64 1
  %.sroa.2.0.insert.shift.i.i = shl nuw i16 %i.bf, 8
  %i.bg = extractelement <2 x i16> %i.be, i64 0
  %.sroa.0.0.insert.insert.i.i = or disjoint i16 %.sroa.2.0.insert.shift.i.i, %i.bg
  %i.bh = tail call i32 @_Z12encode_lightth(i16 noundef zeroext %.sroa.0.0.insert.insert.i.i, i8 noundef zeroext %i.p)
  br label %bb.g

bb.f:                                             ; preds = %_ZNK4core8vector3dIsEneERKS1_.exit
  %i.bi = load i32, ptr %i.ai, align 8, !tbaa !115
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink = phi i32 [ %i.bh, %bb.e ], [ %i.bi, %bb.f ]
  store i32 %.sink, ptr %i.a, align 8, !tbaa !115
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_Z17applyFacesShadingRN5video6SColorEN4core8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(4) %i.a, <2 x float> %i.ac, float %i.af)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 0, ptr %i.b, align 4, !tbaa !44
  %.sroa_idx37 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 0, ptr %.sroa_idx37, align 16, !tbaa !44
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.bk = load <2 x float>, ptr %i.bj, align 4, !tbaa !44
  %i.bl = load <2 x float>, ptr %i.ag, align 8, !tbaa !44
  %i.bm = fadd nsz <2 x float> %i.bk, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !45
  %i.bp = load float, ptr %i.ah, align 8, !tbaa !45
  %i.bq = fadd nsz float %i.bo, %i.bp
  store <2 x float> %i.bm, ptr %.ptr.1, align 8, !tbaa !44
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %5, i64 48
  store float %i.bq, ptr %.sroa.4.0..sroa_idx.1, align 16, !tbaa !44
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 52
  store <2 x float> %i.ac, ptr %i.br, align 4, !tbaa !44
  %.sroa.5.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %5, i64 60
  store float %i.af, ptr %.sroa.5.0..sroa_idx.1, align 4, !tbaa !44
  %i.bs = load ptr, ptr %0, align 8, !tbaa !31
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 65
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !114, !range !106, !noundef !107
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bw = load i32, ptr %i.ai, align 8, !tbaa !115
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bx = call { <2 x float>, float } @_ZN21MapblockMeshGenerator10blendLightERKN4core8vector3dIfEE(ptr noundef nonnull readonly align 8 dereferenceable(496) %0, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.bj) ; 2 uses
  %.fca.0.extract.i.1 = extractvalue { <2 x float>, float } %i.bx, 0 ; 2 uses
  %.fca.1.extract.i.1 = extractvalue { <2 x float>, float } %i.bx, 1
  %.sroa.03.0.vec.extract.i.1 = extractelement <2 x float> %.fca.0.extract.i.1, i64 0
  %i.by = fmul nsz float %.fca.1.extract.i.1, 0.000000e+00
  %i.bz = fadd nsz float %.sroa.03.0.vec.extract.i.1, %i.by
  %i.ca = insertelement <2 x float> %.fca.0.extract.i.1, float %i.bz, i64 0
  %i.cb = fadd nsz <2 x float> %i.ca, splat (float 5.000000e-01)
  %i.cc = call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.cb)
  %i.cd = fptosi <2 x float> %i.cc to <2 x i32>
  %i.ce = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.cd, <2 x i32> zeroinitializer)
  %i.cf = call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.ce, <2 x i32> splat (i32 255))
  %i.cg = trunc nuw nsw <2 x i32> %i.cf to <2 x i16> ; 2 uses
  %i.ch = extractelement <2 x i16> %i.cg, i64 1
  %.sroa.2.0.insert.shift.i.i.1 = shl nuw i16 %i.ch, 8
  %i.ci = extractelement <2 x i16> %i.cg, i64 0
  %.sroa.0.0.insert.insert.i.i.1 = or disjoint i16 %.sroa.2.0.insert.shift.i.i.1, %i.ci
  %i.cj = load ptr, ptr %i.m, align 8, !tbaa !58
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1410
  %i.cl = load i8, ptr %i.ck, align 2, !tbaa !113
  %i.cm = call i32 @_Z12encode_lightth(i16 noundef zeroext %.sroa.0.0.insert.insert.i.i.1, i8 noundef zeroext %i.cl)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink44 = phi i32 [ %i.cm, %bb.k ], [ %i.bw, %bb.j ]
  store i32 %.sink44, ptr %i.d, align 16, !tbaa !115
  br i1 %i.x, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @_Z17applyFacesShadingRN5video6SColorEN4core8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(4) %i.d, <2 x float> %i.ac, float %i.af)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i32 1065353216, ptr %i.e, align 4, !tbaa !44
  %.sroa_idx39 = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i32 0, ptr %.sroa_idx39, align 8, !tbaa !44
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.co = load <2 x float>, ptr %i.cn, align 4, !tbaa !44
  %i.cp = load <2 x float>, ptr %i.ag, align 8, !tbaa !44
  %i.cq = fadd nsz <2 x float> %i.co, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !45
  %i.ct = load float, ptr %i.ah, align 8, !tbaa !45
  %i.cu = fadd nsz float %i.cs, %i.ct
  store <2 x float> %i.cq, ptr %.ptr.2, align 16, !tbaa !44
  %.sroa.4.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %5, i64 88
  store float %i.cu, ptr %.sroa.4.0..sroa_idx.2, align 8, !tbaa !44
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 92
  store <2 x float> %i.ac, ptr %i.cv, align 4, !tbaa !44
  %.sroa.5.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %5, i64 100
  store float %i.af, ptr %.sroa.5.0..sroa_idx.2, align 4, !tbaa !44
  %i.cw = load ptr, ptr %0, align 8, !tbaa !31
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 65
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !114, !range !106, !noundef !107
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.da = load i32, ptr %i.ai, align 8, !tbaa !115
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.db = call { <2 x float>, float } @_ZN21MapblockMeshGenerator10blendLightERKN4core8vector3dIfEE(ptr noundef nonnull readonly align 8 dereferenceable(496) %0, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.cn) ; 2 uses
  %.fca.0.extract.i.2 = extractvalue { <2 x float>, float } %i.db, 0 ; 2 uses
  %.fca.1.extract.i.2 = extractvalue { <2 x float>, float } %i.db, 1
  %.sroa.03.0.vec.extract.i.2 = extractelement <2 x float> %.fca.0.extract.i.2, i64 0
  %i.dc = fmul nsz float %.fca.1.extract.i.2, 0.000000e+00
  %i.dd = fadd nsz float %.sroa.03.0.vec.extract.i.2, %i.dc
  %i.de = insertelement <2 x float> %.fca.0.extract.i.2, float %i.dd, i64 0
  %i.df = fadd nsz <2 x float> %i.de, splat (float 5.000000e-01)
  %i.dg = call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.df)
  %i.dh = fptosi <2 x float> %i.dg to <2 x i32>
  %i.di = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.dh, <2 x i32> zeroinitializer)
  %i.dj = call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.di, <2 x i32> splat (i32 255))
  %i.dk = trunc nuw nsw <2 x i32> %i.dj to <2 x i16> ; 2 uses
  %i.dl = extractelement <2 x i16> %i.dk, i64 1
  %.sroa.2.0.insert.shift.i.i.2 = shl nuw i16 %i.dl, 8
  %i.dm = extractelement <2 x i16> %i.dk, i64 0
  %.sroa.0.0.insert.insert.i.i.2 = or disjoint i16 %.sroa.2.0.insert.shift.i.i.2, %i.dm
  %i.dn = load ptr, ptr %i.m, align 8, !tbaa !58
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 1410
  %i.dp = load i8, ptr %i.do, align 2, !tbaa !113
  %i.dq = call i32 @_Z12encode_lightth(i16 noundef zeroext %.sroa.0.0.insert.insert.i.i.2, i8 noundef zeroext %i.dp)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sink45 = phi i32 [ %i.dq, %bb.p ], [ %i.da, %bb.o ]
  store i32 %.sink45, ptr %i.g, align 8, !tbaa !115
  br i1 %i.x, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_Z17applyFacesShadingRN5video6SColorEN4core8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(4) %i.g, <2 x float> %i.ac, float %i.af)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  store i32 1065353216, ptr %i.h, align 4, !tbaa !44
  %.sroa_idx41 = getelementptr inbounds nuw i8, ptr %5, i64 112
  store float %4, ptr %.sroa_idx41, align 16, !tbaa !44
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.ds = load <2 x float>, ptr %i.dr, align 4, !tbaa !44
  %i.dt = load <2 x float>, ptr %i.ag, align 8, !tbaa !44
  %i.du = fadd nsz <2 x float> %i.ds, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !45
  %i.dx = load float, ptr %i.ah, align 8, !tbaa !45
  %i.dy = fadd nsz float %i.dw, %i.dx
  store <2 x float> %i.du, ptr %.ptr.3, align 8, !tbaa !44
  %.sroa.4.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %5, i64 128
  store float %i.dy, ptr %.sroa.4.0..sroa_idx.3, align 16, !tbaa !44
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 132
  store <2 x float> %i.ac, ptr %i.dz, align 4, !tbaa !44
  %.sroa.5.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %5, i64 140
  store float %i.af, ptr %.sroa.5.0..sroa_idx.3, align 4, !tbaa !44
  %i.ea = load ptr, ptr %0, align 8, !tbaa !31
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 65
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !114, !range !106, !noundef !107
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ee = load i32, ptr %i.ai, align 8, !tbaa !115
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.ef = call { <2 x float>, float } @_ZN21MapblockMeshGenerator10blendLightERKN4core8vector3dIfEE(ptr noundef nonnull readonly align 8 dereferenceable(496) %0, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.dr) ; 2 uses
  %.fca.0.extract.i.3 = extractvalue { <2 x float>, float } %i.ef, 0 ; 2 uses
  %.fca.1.extract.i.3 = extractvalue { <2 x float>, float } %i.ef, 1
  %.sroa.03.0.vec.extract.i.3 = extractelement <2 x float> %.fca.0.extract.i.3, i64 0
  %i.eg = fmul nsz float %.fca.1.extract.i.3, 0.000000e+00
  %i.eh = fadd nsz float %.sroa.03.0.vec.extract.i.3, %i.eg
  %i.ei = insertelement <2 x float> %.fca.0.extract.i.3, float %i.eh, i64 0
  %i.ej = fadd nsz <2 x float> %i.ei, splat (float 5.000000e-01)
  %i.ek = call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.ej)
  %i.el = fptosi <2 x float> %i.ek to <2 x i32>
  %i.em = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.el, <2 x i32> zeroinitializer)
  %i.en = call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.em, <2 x i32> splat (i32 255))
  %i.eo = trunc nuw nsw <2 x i32> %i.en to <2 x i16> ; 2 uses
  %i.ep = extractelement <2 x i16> %i.eo, i64 1
  %.sroa.2.0.insert.shift.i.i.3 = shl nuw i16 %i.ep, 8
  %i.eq = extractelement <2 x i16> %i.eo, i64 0
  %.sroa.0.0.insert.insert.i.i.3 = or disjoint i16 %.sroa.2.0.insert.shift.i.i.3, %i.eq
  %i.er = load ptr, ptr %i.m, align 8, !tbaa !58
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 1410
  %i.et = load i8, ptr %i.es, align 2, !tbaa !113
  %i.eu = call i32 @_Z12encode_lightth(i16 noundef zeroext %.sroa.0.0.insert.insert.i.i.3, i8 noundef zeroext %i.et)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sink46 = phi i32 [ %i.eu, %bb.u ], [ %i.ee, %bb.t ]
  store i32 %.sink46, ptr %i.j, align 16, !tbaa !115
  br i1 %i.x, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @_Z17applyFacesShadingRN5video6SColorEN4core8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(4) %i.j, <2 x float> %i.ac, float %i.af)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  store i32 0, ptr %i.k, align 4, !tbaa !44
  %.sroa_idx43 = getelementptr inbounds nuw i8, ptr %5, i64 152
  store float %4, ptr %.sroa_idx43, align 8, !tbaa !44
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !32
  call void @_ZN13MeshCollector6appendERK8TileSpecPKN5video9S3DVertexEjPKtj(ptr noundef nonnull align 8 dereferenceable(76) %i.ew, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull %5, i32 noundef 4, ptr noundef nonnull @_ZL15quad_indices_02, i32 noundef 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local i32 @_ZN21MapblockMeshGenerator15blendLightColorERKN4core8vector3dIfEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(496) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = tail call { <2 x float>, float } @_ZN21MapblockMeshGenerator10blendLightERKN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.a, 0 ; 2 uses
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.a, 1
  %.sroa.03.0.vec.extract = extractelement <2 x float> %.fca.0.extract, i64 0
  %i.b = fmul nsz float %.fca.1.extract, 0.000000e+00
  %i.c = fadd nsz float %.sroa.03.0.vec.extract, %i.b
  %i.d = insertelement <2 x float> %.fca.0.extract, float %i.c, i64 0
  %i.e = fadd nsz <2 x float> %i.d, splat (float 5.000000e-01)
  %i.f = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.e)
  %i.g = fptosi <2 x float> %i.f to <2 x i32>
  %i.h = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.g, <2 x i32> zeroinitializer)
  %i.i = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.h, <2 x i32> splat (i32 255))
  %i.j = trunc nuw nsw <2 x i32> %i.i to <2 x i16> ; 2 uses
  %i.k = extractelement <2 x i16> %i.j, i64 1
  %.sroa.2.0.insert.shift.i = shl nuw i16 %i.k, 8
  %i.l = extractelement <2 x i16> %i.j, i64 0
  %.sroa.0.0.insert.insert.i = or disjoint i16 %.sroa.2.0.insert.shift.i, %i.l
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !58
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1410
  %i.p = load i8, ptr %i.o, align 2, !tbaa !113
  %i.q = tail call i32 @_Z12encode_lightth(i16 noundef zeroext %.sroa.0.0.insert.insert.i, i8 noundef zeroext %i.p)
  ret i32 %i.q
}

declare void @_Z17applyFacesShadingRN5video6SColorEN4core8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(4), <2 x float>, float) local_unnamed_addr #5

declare void @_ZN13MeshCollector6appendERK8TileSpecPKN5video9S3DVertexEjPKtj(ptr noundef nonnull align 8 dereferenceable(76), ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21MapblockMeshGenerator19getSmoothLightFrameEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(496) initializes((128, 136)) %0) local_unnamed_addr #4 align 2 {
.preheader:
  %1 = alloca %"class.core::vector3d", align 8    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.b

bb.a:                                             ; preds = %bb.d
  ret void

bb.b:                                             ; preds = %.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.d ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.j = load i16, ptr %i.b, align 8, !tbaa !41
  %i.k = load i16, ptr %i.c, align 8, !tbaa !41
  %i.l = add i16 %i.k, %i.j
  %i.m = load i16, ptr %i.d, align 2, !tbaa !42
  %i.n = load i16, ptr %i.e, align 2, !tbaa !42
  %i.o = add i16 %i.n, %i.m
  %i.p = load i16, ptr %i.f, align 4, !tbaa !43
  %i.q = load i16, ptr %i.g, align 4, !tbaa !43
  %i.r = add i16 %i.q, %i.p
  %.sroa.3.0.insert.ext.i = zext i16 %i.r to i48
  %.sroa.3.0.insert.shift.i = shl nuw i48 %.sroa.3.0.insert.ext.i, 32
  %.sroa.2.0.insert.ext.i = zext i16 %i.o to i48
  %.sroa.2.0.insert.shift.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i, 16
  %.sroa.2.0.insert.insert.i = or disjoint i48 %.sroa.3.0.insert.shift.i, %.sroa.2.0.insert.shift.i
  %.sroa.0.0.insert.ext.i = zext i16 %i.l to i48
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.2.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  store i48 %.sroa.0.0.insert.insert.i, ptr %1, align 8
  %i.s = getelementptr inbounds nuw [6 x i8], ptr @_ZL10light_dirs, i64 %indvars.iv
  %i.t = load ptr, ptr %0, align 8, !tbaa !31
  %i.u = call noundef zeroext i16 @_Z25getSmoothLightTransparentRKN4core8vector3dIsEES3_P12MeshMakeData(ptr noundef nonnull align 2 dereferenceable(6) %1, ptr noundef nonnull align 2 dereferenceable(6) %i.s, ptr noundef %i.t) ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i16 %i.u to i8 ; 2 uses
  %.sroa.5.0.extract.shift = lshr i16 %i.u, 8
  %.sroa.5.0.extract.trunc = trunc nuw i16 %.sroa.5.0.extract.shift to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.v = uitofp nsz i8 %.sroa.0.0.extract.trunc to float
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  store float %i.v, ptr %i.w, align 4, !tbaa !44
  %i.x = uitofp nsz i8 %.sroa.5.0.extract.trunc to float
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  store float %i.x, ptr %i.y, align 4, !tbaa !44
  %i.z = icmp eq i8 %.sroa.0.0.extract.trunc, -1
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 1, ptr %i.aa, align 1, !tbaa !102
  %i.ab = and i64 %indvars.iv, 4294967295
  %i.ac = xor i64 %i.ab, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ac
  store i8 1, ptr %i.ad, align 1, !tbaa !102
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.a, label %bb.b, !llvm.loop !0
}

declare noundef zeroext i16 @_Z25getSmoothLightTransparentRKN4core8vector3dIsEES3_P12MeshMakeData(ptr noundef nonnull align 2 dereferenceable(6), ptr noundef nonnull align 2 dereferenceable(6), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, float } @_ZN21MapblockMeshGenerator10blendLightERKN4core8vector3dIfEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(496) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.phi.trans.insert58 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 132
  %.phi.trans.insert67 = getelementptr inbounds nuw i8, ptr %0, i64 84
  %.phi.trans.insert70 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = fdiv nsz float %i.b, 1.000000e+01
  %i.h = fpext nsz float %i.g to double
  %i.i = fadd nsz double %i.h, 5.000000e-01       ; 2 uses
  %i.j = fcmp nsz olt double %i.i, -1.000000e+00
  %i.k = select i1 %i.j, double -1.000000e+00, double %i.i ; 2 uses
  %i.l = fcmp nsz olt double %i.k, 2.000000e+00
  %i.m = select i1 %i.l, double %i.k, double 2.000000e+00
  %i.n = fptrunc nsz double %i.m to float         ; 5 uses
  %i.o = load <16 x float>, ptr %i.c, align 8     ; 10 uses
  %.pre68 = load float, ptr %.phi.trans.insert67, align 4, !tbaa !44
  %i.p = load float, ptr %i.e, align 4
  %i.q = load <4 x i8>, ptr %i.d, align 8, !tbaa !102
  %i.r = trunc <4 x i8> %i.q to <4 x i1>
  %i.s = load <4 x float>, ptr %.phi.trans.insert58, align 8
  %i.t = shufflevector <16 x float> %i.o, <16 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.u = insertelement <4 x float> %i.t, float %i.p, i64 1
  %i.v = shufflevector <4 x float> %i.u, <4 x float> %i.s, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.w = select <4 x i1> %i.r, <4 x float> splat (float 2.550000e+02), <4 x float> %i.v ; 4 uses
  %i.x = load <4 x i8>, ptr %i.f, align 4, !tbaa !102
  %i.y = trunc <4 x i8> %i.x to <4 x i1>
  %i.z = load <4 x float>, ptr %.phi.trans.insert70, align 8
  %i.aa = shufflevector <16 x float> %i.o, <16 x float> poison, <4 x i32> <i32 4, i32 poison, i32 poison, i32 poison>
  %i.ab = insertelement <4 x float> %i.aa, float %.pre68, i64 1
  %i.ac = shufflevector <4 x float> %i.ab, <4 x float> %i.z, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ad = select <4 x i1> %i.y, <4 x float> splat (float 2.550000e+02), <4 x float> %i.ac ; 4 uses
  %i.ae = fsub nsz float 1.000000e+00, %i.n       ; 4 uses
  %i.af = load <2 x float>, ptr %1, align 4, !tbaa !44
  %i.ag = fdiv nsz <2 x float> %i.af, splat (float 1.000000e+01)
  %i.ah = fpext <2 x float> %i.ag to <2 x double>
  %i.ai = fadd nsz <2 x double> %i.ah, splat (double 5.000000e-01) ; 2 uses
  %i.aj = fcmp nsz olt <2 x double> %i.ai, splat (double -1.000000e+00)
  %i.ak = select <2 x i1> %i.aj, <2 x double> splat (double -1.000000e+00), <2 x double> %i.ai ; 2 uses
  %i.al = fcmp nsz olt <2 x double> %i.ak, splat (double 2.000000e+00)
  %i.am = select <2 x i1> %i.al, <2 x double> %i.ak, <2 x double> splat (double 2.000000e+00)
  %i.an = fptrunc <2 x double> %i.am to <2 x float> ; 2 uses
  %i.ao = extractelement <2 x float> %i.an, i64 0 ; 3 uses
  %i.ap = extractelement <2 x float> %i.an, i64 1 ; 3 uses
  %i.aq = fmul nsz float %i.ao, %i.ap             ; 2 uses
  %i.ar = fmul nsz float %i.ae, %i.aq             ; 2 uses
  %i.as = fsub nsz float 1.000000e+00, %i.ap      ; 2 uses
  %i.at = fmul nsz float %i.as, %i.ao             ; 2 uses
  %i.au = fmul nsz float %i.at, %i.n              ; 2 uses
  %i.av = fmul nsz float %i.ae, %i.at             ; 2 uses
  %i.aw = fsub nsz float 1.000000e+00, %i.ao      ; 2 uses
  %i.ax = fmul nsz float %i.aw, %i.ap             ; 2 uses
  %i.ay = fmul nsz float %i.ax, %i.n              ; 2 uses
  %i.az = fmul nsz float %i.ae, %i.ax             ; 2 uses
  %i.ba = fmul nsz float %i.aw, %i.as             ; 2 uses
  %i.bb = fmul nsz float %i.ba, %i.n              ; 2 uses
  %i.bc = fmul nsz float %i.ae, %i.ba             ; 2 uses
  %i.bd = extractelement <4 x float> %i.w, i64 0
  %i.be = fmul nsz float %i.bc, %i.bd
  %i.bf = extractelement <4 x float> %i.w, i64 1
  %i.bg = tail call nsz float @llvm.fmuladd.f32(float %i.bb, float %i.bf, float %i.be)
  %i.bh = extractelement <4 x float> %i.w, i64 2
  %i.bi = tail call nsz float @llvm.fmuladd.f32(float %i.az, float %i.bh, float %i.bg)
  %i.bj = extractelement <4 x float> %i.w, i64 3
  %i.bk = tail call nsz float @llvm.fmuladd.f32(float %i.ay, float %i.bj, float %i.bi)
  %i.bl = extractelement <4 x float> %i.ad, i64 0
  %i.bm = tail call nsz float @llvm.fmuladd.f32(float %i.av, float %i.bl, float %i.bk)
  %i.bn = extractelement <4 x float> %i.ad, i64 1
  %i.bo = tail call nsz float @llvm.fmuladd.f32(float %i.au, float %i.bn, float %i.bm)
  %i.bp = extractelement <4 x float> %i.ad, i64 2
  %i.bq = tail call nsz float @llvm.fmuladd.f32(float %i.ar, float %i.bp, float %i.bo)
  %i.br = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bt = shufflevector <16 x float> %i.o, <16 x float> poison, <2 x i32> <i32 0, i32 8>
  %i.bu = fmul nsz <2 x float> %i.bs, %i.bt
  %i.bv = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = shufflevector <16 x float> %i.o, <16 x float> poison, <2 x i32> <i32 1, i32 9>
  %i.by = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> %i.bx, <2 x float> %i.bu)
  %i.bz = insertelement <2 x float> poison, float %i.az, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = shufflevector <16 x float> %i.o, <16 x float> poison, <2 x i32> <i32 2, i32 10>
  %i.cc = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> %i.cb, <2 x float> %i.by)
  %i.cd = insertelement <2 x float> poison, float %i.ay, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = shufflevector <16 x float> %i.o, <16 x float> poison, <2 x i32> <i32 3, i32 11>
  %i.cg = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.cf, <2 x float> %i.cc)
  %i.ch = insertelement <2 x float> poison, float %i.av, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cj = shufflevector <16 x float> %i.o, <16 x float> poison, <2 x i32> <i32 4, i32 12>
  %i.ck = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> %i.cj, <2 x float> %i.cg)
  %i.cl = insertelement <2 x float> poison, float %i.au, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = shufflevector <16 x float> %i.o, <16 x float> poison, <2 x i32> <i32 5, i32 13>
  %i.co = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> %i.cn, <2 x float> %i.ck)
  %i.cp = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cr = shufflevector <16 x float> %i.o, <16 x float> poison, <2 x i32> <i32 6, i32 14>
  %i.cs = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cq, <2 x float> %i.cr, <2 x float> %i.co)
  %i.ct = fmul nsz float %i.aq, %i.n              ; 2 uses
  %i.cu = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = shufflevector <16 x float> %i.o, <16 x float> poison, <2 x i32> <i32 7, i32 15>
  %i.cx = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cv, <2 x float> %i.cw, <2 x float> %i.cs)
  %i.cy = extractelement <4 x float> %i.ad, i64 3
  %i.cz = tail call nsz float @llvm.fmuladd.f32(float %i.ct, float %i.cy, float %i.bq)
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.cx, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.cz, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

declare i32 @_Z12encode_lightth(i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local i32 @_ZN21MapblockMeshGenerator15blendLightColorERKN4core8vector3dIfEES4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(496) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %3 = alloca %"class.video::SColor", align 4     ; 3 uses
  %i.a = tail call { <2 x float>, float } @_ZN21MapblockMeshGenerator10blendLightERKN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.a, 0 ; 2 uses
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.a, 1
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !117 ; 2 uses
  %i.d = fcmp nsz olt float %i.c, 0.000000e+00
  %i.e = select nsz i1 %i.d, float 0.000000e+00, float %i.c ; 2 uses
  %i.f = fsub nsz float 1.000000e+00, %i.e
  %.sroa.09.0.vec.extract = extractelement <2 x float> %.fca.0.extract, i64 0
  %i.g = fmul nsz float %.fca.1.extract, %i.e
  %i.h = tail call nsz float @llvm.fmuladd.f32(float %i.f, float %.sroa.09.0.vec.extract, float %i.g)
  %i.i = insertelement <2 x float> %.fca.0.extract, float %i.h, i64 0
  %i.j = fadd nsz <2 x float> %i.i, splat (float 5.000000e-01)
  %i.k = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.j)
  %i.l = fptosi <2 x float> %i.k to <2 x i32>
  %i.m = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.l, <2 x i32> zeroinitializer)
  %i.n = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.m, <2 x i32> splat (i32 255))
  %i.o = trunc nuw nsw <2 x i32> %i.n to <2 x i16> ; 2 uses
  %i.p = extractelement <2 x i16> %i.o, i64 1
  %.sroa.2.0.insert.shift.i = shl nuw i16 %i.p, 8
  %i.q = extractelement <2 x i16> %i.o, i64 0
  %.sroa.0.0.insert.insert.i = or disjoint i16 %.sroa.2.0.insert.shift.i, %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !58
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1410
  %i.u = load i8, ptr %i.t, align 2, !tbaa !113
  %i.v = tail call i32 @_Z12encode_lightth(i16 noundef zeroext %.sroa.0.0.insert.insert.i, i8 noundef zeroext %i.u) ; 2 uses
  store i32 %i.v, ptr %3, align 4
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !58
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1410
  %i.y = load i8, ptr %i.x, align 2, !tbaa !113
  %.not = icmp eq i8 %i.y, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.01.0.copyload = load <2 x float>, ptr %2, align 4, !tbaa !44
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !44
  call void @_Z17applyFacesShadingRN5video6SColorEN4core8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(4) %3, <2 x float> %.sroa.01.0.copyload, float %.sroa.22.0.copyload)
  %.pre = load i32, ptr %3, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.z = phi i32 [ %.pre, %bb.b ], [ %i.v, %bb.a ]
  ret i32 %i.z
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN21MapblockMeshGenerator27generateCuboidTextureCoordsERKN4core8aabbox3dIfEEPf(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %0, ptr nofree noundef writeonly captures(none) initializes((0, 96)) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load <4 x float>, ptr %0, align 4, !tbaa !44
  %i.c = shufflevector <4 x float> %i.b, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.d = fdiv nsz <2 x float> %i.c, splat (float 1.000000e+01)
  %i.e = fadd nsz <2 x float> %i.d, splat (float 5.000000e-01) ; 3 uses
  %i.f = fsub nsz <2 x float> splat (float 1.000000e+00), %i.e ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.g = load <5 x float>, ptr %i.a, align 4, !tbaa !44
  %i.h = shufflevector <5 x float> %i.g, <5 x float> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 4>
  %i.i = fdiv nsz <4 x float> %i.h, splat (float 1.000000e+01)
  %i.j = fadd nsz <4 x float> %i.i, splat (float 5.000000e-01) ; 3 uses
  %i.k = fsub nsz <4 x float> splat (float 1.000000e+00), %i.j ; 5 uses
  %i.l = extractelement <2 x float> %i.e, i64 0   ; 3 uses
  store float %i.l, ptr %1, align 4, !tbaa !44
  %i.m = extractelement <4 x float> %i.k, i64 3
  store float %i.m, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !44
  %i.n = extractelement <2 x float> %i.e, i64 1   ; 3 uses
  store float %i.n, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !44
  %i.o = extractelement <4 x float> %i.k, i64 1
  store float %i.o, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !44
  store float %i.l, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !44
  %i.p = extractelement <4 x float> %i.j, i64 1   ; 2 uses
  store float %i.p, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !44
  store float %i.n, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !44
  %i.q = extractelement <4 x float> %i.j, i64 3   ; 2 uses
  store float %i.q, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !44
  store float %i.p, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !44
  %i.r = extractelement <4 x float> %i.k, i64 2   ; 3 uses
  store float %i.r, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !44
  store float %i.q, ptr %.sroa.13.0..sroa_idx, align 4, !tbaa !44
  %i.s = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 2, i32 1>
  store <4 x float> %i.s, ptr %.sroa.14.0..sroa_idx, align 4, !tbaa !44
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.t = extractelement <4 x float> %i.k, i64 0   ; 3 uses
  store float %i.t, ptr %.sroa.18.0..sroa_idx, align 4, !tbaa !44
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = extractelement <2 x float> %i.f, i64 1
  store float %i.u, ptr %.sroa.19.0..sroa_idx, align 4, !tbaa !44
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 68
  store float %i.r, ptr %.sroa.20.0..sroa_idx, align 4, !tbaa !44
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = extractelement <2 x float> %i.f, i64 0
  store float %i.v, ptr %.sroa.21.0..sroa_idx, align 4, !tbaa !44
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 76
  store float %i.t, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !44
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  store float %i.l, ptr %.sroa.23.0..sroa_idx, align 4, !tbaa !44
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 84
  store float %i.r, ptr %.sroa.24.0..sroa_idx, align 4, !tbaa !44
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  store float %i.n, ptr %.sroa.25.0..sroa_idx, align 4, !tbaa !44
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 92
  store float %i.t, ptr %.sroa.26.0..sroa_idx, align 4, !tbaa !44
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21MapblockMeshGenerator21drawAutoLightedCuboidEN4core8aabbox3dIfEERK8TileSpecPKfh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(496) %0, ptr nofree noundef readonly byval(%"class.core::aabbox3d") align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr nofree noundef readonly captures(address_is_null) %3, i8 noundef zeroext %4) local_unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN21MapblockMeshGenerator21drawAutoLightedCuboidEN4core8aabbox3dIfEEPK8TileSpeciPKfh(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull byval(%"class.core::aabbox3d") align 8 %1, ptr noundef nonnull %2, i32 noundef 1, ptr noundef %3, i8 noundef zeroext %4)
  ret void
}
end_hunk_0
begin_hunk_1_@_ZN21MapblockMeshGenerator15drawLiquidSidesEv:bb.a
bb.a:
  %1 = alloca [4 x %"struct.video::S3DVertex"], align 16 ; 20 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 132
  %.phi.trans.insert64.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 76
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 116
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 156
  br label %bb.c

bb.b:                                             ; preds = %bb.s
  ret void

bb.c:                                             ; preds = %bb.a, %bb.s
  %.0.idx51 = phi i64 [ 0, %bb.a ], [ %.0.add, %bb.s ] ; 2 uses
  %.0.ptr52 = getelementptr inbounds nuw i8, ptr @_ZN12_GLOBAL__N_117liquid_base_facesE, i64 %.0.idx51 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.ptr52, i64 4
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !210 ; 2 uses
  %i.ai = sext i16 %i.ah to i64
  %i.aj = getelementptr [24 x i8], ptr %0, i64 %i.ai
  %i.ak = load i16, ptr %.0.ptr52, align 2, !tbaa !211 ; 2 uses
  %i.al = sext i16 %i.ak to i64
  %i.am = getelementptr [8 x i8], ptr %i.aj, i64 %i.al ; 3 uses
  %i.an = getelementptr i8, ptr %i.am, i64 406    ; 2 uses
  %i.ao = load i8, ptr %i.an, align 2, !tbaa !151, !range !106, !noundef !107
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.aq = load i8, ptr %i.a, align 8, !tbaa !145, !range !106, !noundef !107
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr i8, ptr %i.am, i64 407
  %i.at = load i8, ptr %i.as, align 1, !tbaa !152, !range !106, !noundef !107
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.s, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !40  ; 2 uses
  %i.aw = getelementptr i8, ptr %i.am, i64 404
  %i.ax = load i16, ptr %i.aw, align 4, !tbaa !149
  %i.ay = zext i16 %i.ax to i64                   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !132
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !133 ; 3 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = sdiv exact i64 %i.bf, 2080
  %i.bh = icmp ugt i64 %i.bg, %i.ay
  br i1 %i.bh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw [2080 x i8], ptr %i.bc, i64 %i.ay ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !134
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.h, label %_ZNK14NodeDefManager3getEt.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 260000
  br label %_ZNK14NodeDefManager3getEt.exit

_ZNK14NodeDefManager3getEt.exit:                  ; preds = %bb.g, %bb.h
  %i.bn = phi ptr [ %i.bm, %bb.h ], [ %i.bi, %bb.g ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1400
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !101
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1248
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !138
  %i.bs = icmp eq i8 %i.br, 2
  br i1 %i.bs, label %bb.s, label %.preheader

.preheader:                                       ; preds = %_ZNK14NodeDefManager3getEt.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(38) %1, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.u, align 8, !tbaa !46
  store <2 x float> zeroinitializer, ptr %i.v, align 4, !tbaa !44
  store i16 0, ptr %i.w, align 4, !tbaa !112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %.ptr.1, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.x, align 16, !tbaa !46
  store <2 x float> zeroinitializer, ptr %i.y, align 4, !tbaa !44
  store i16 0, ptr %i.z, align 4, !tbaa !112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(38) %.ptr.2, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.aa, align 8, !tbaa !46
  store <2 x float> zeroinitializer, ptr %i.ab, align 4, !tbaa !44
  store i16 0, ptr %i.ac, align 4, !tbaa !112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %.ptr.3, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.ad, align 16, !tbaa !46
  store <2 x float> zeroinitializer, ptr %i.ae, align 4, !tbaa !44
  store i16 0, ptr %i.af, align 4, !tbaa !112
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.ptr52, i64 6
  %i.bu = sitofp nsz i16 %i.ak to float
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.ptr52, i64 2
  %i.bw = sitofp nsz i16 %i.ah to float
  br label %bb.j

bb.i:                                             ; preds = %bb.r
  %i.bx = load ptr, ptr %i.s, align 8, !tbaa !32
  call void @_ZN13MeshCollector6appendERK8TileSpecPKN5video9S3DVertexEjPKtj(ptr noundef nonnull align 8 dereferenceable(76) %i.bx, ptr noundef nonnull align 8 dereferenceable(104) %i.t, ptr noundef nonnull %1, i32 noundef 4, ptr noundef nonnull @_ZL15quad_indices_02, i32 noundef 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.s

bb.j:                                             ; preds = %.preheader, %bb.r
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.r ] ; 4 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr @_ZN12_GLOBAL__N_120liquid_base_verticesE, i64 %indvars.iv ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !213 ; 2 uses
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [6 x i8], ptr %i.bt, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !214
  %i.ce = sitofp nsz i32 %i.cd to float           ; 4 uses
  %i.cf = load i16, ptr %i.cb, align 2, !tbaa !41 ; 3 uses
  %i.cg = sitofp i16 %i.cf to float
  %i.ch = fadd nnan nsz float %i.cg, -5.000000e-01
  %i.ci = fmul nnan nsz float %i.ch, 1.000000e+01 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !43 ; 3 uses
  %i.cl = sitofp i16 %i.ck to float
  %i.cm = fadd nnan nsz float %i.cl, -5.000000e-01
  %i.cn = fmul nnan nsz float %i.cm, 1.000000e+01 ; 2 uses
  %.not39.not = icmp samesign ult i64 %indvars.iv, 2
  br i1 %.not39.not, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.co = load i8, ptr %i.an, align 2, !tbaa !151, !range !106, !noundef !107
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.cq = sext i16 %i.ck to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.cq
  %i.cs = sext i16 %i.cf to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.cs
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !44
  %i.cv = fmul nsz float %i.cu, 1.000000e+01
  br label %bb.o

bb.m:                                             ; preds = %bb.j
  %i.cw = load i8, ptr %i.a, align 8, !tbaa !145, !range !106, !noundef !107
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cy = sext i16 %i.ck to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.cy
  %i.da = sext i16 %i.cf to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.da
  %i.dc = load float, ptr %i.db, align 4, !tbaa !44 ; 2 uses
  %i.dd = fmul nsz float %i.dc, 1.000000e+01
  %i.de = fsub nsz float 5.000000e-01, %i.dc
  %i.df = fadd nsz float %i.de, %i.ce
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.n
  %.sroa.845.0 = phi nsz float [ %i.dd, %bb.n ], [ -5.000000e+00, %bb.k ], [ %i.cv, %bb.l ], [ 5.000000e+00, %bb.m ] ; 2 uses
  %.035 = phi nsz float [ %i.df, %bb.n ], [ %i.ce, %bb.k ], [ %i.ce, %bb.l ], [ %i.ce, %bb.m ]
  %i.dg = load ptr, ptr %0, align 8, !tbaa !31
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 65
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !114, !range !106, !noundef !107
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dk = load float, ptr %i.g, align 8, !tbaa !44
  %i.dl = load float, ptr %i.h, align 4, !tbaa !44
  %i.dm = load float, ptr %i.i, align 8, !tbaa !44
  %i.dn = load <4 x i8>, ptr %i.f, align 8, !tbaa !102
  %i.do = trunc <4 x i8> %i.dn to <4 x i1>
  %i.dp = load <4 x float>, ptr %i.e, align 8     ; 5 uses
  %i.dq = select <4 x i1> %i.do, <4 x float> splat (float 2.550000e+02), <4 x float> %i.dp ; 4 uses
  %i.dr = load float, ptr %i.j, align 4, !tbaa !44
  %i.ds = load float, ptr %i.l, align 8, !tbaa !44
  %i.dt = load float, ptr %i.m, align 4, !tbaa !44
  %i.du = load float, ptr %i.n, align 8, !tbaa !44
  %i.dv = load <4 x i8>, ptr %i.k, align 4, !tbaa !102
  %i.dw = trunc <4 x i8> %i.dv to <4 x i1>
  %i.dx = load <4 x float>, ptr %.phi.trans.insert64.i, align 8, !tbaa !44 ; 5 uses
  %i.dy = select <4 x i1> %i.dw, <4 x float> splat (float 2.550000e+02), <4 x float> %i.dx ; 4 uses
  %i.dz = fdiv nsz float %i.cn, 1.000000e+01
  %i.ea = fpext nsz float %i.dz to double
  %i.eb = fadd nsz double %i.ea, 5.000000e-01     ; 2 uses
  %i.ec = fcmp nsz olt double %i.eb, -1.000000e+00
  %i.ed = select i1 %i.ec, double -1.000000e+00, double %i.eb ; 2 uses
  %i.ee = fcmp nsz olt double %i.ed, 2.000000e+00
  %i.ef = select i1 %i.ee, double %i.ed, double 2.000000e+00
  %i.eg = fptrunc nsz double %i.ef to float       ; 5 uses
  %i.eh = fsub nsz float 1.000000e+00, %i.eg      ; 4 uses
  %i.ei = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.ej = insertelement <2 x float> %i.ei, float %.sroa.845.0, i64 1
  %i.ek = fdiv nsz <2 x float> %i.ej, splat (float 1.000000e+01)
  %i.el = fpext <2 x float> %i.ek to <2 x double>
  %i.em = fadd nsz <2 x double> %i.el, splat (double 5.000000e-01) ; 2 uses
  %i.en = fcmp nsz olt <2 x double> %i.em, splat (double -1.000000e+00)
  %i.eo = select <2 x i1> %i.en, <2 x double> splat (double -1.000000e+00), <2 x double> %i.em ; 2 uses
  %i.ep = fcmp nsz olt <2 x double> %i.eo, splat (double 2.000000e+00)
  %i.eq = select <2 x i1> %i.ep, <2 x double> %i.eo, <2 x double> splat (double 2.000000e+00)
  %i.er = fptrunc <2 x double> %i.eq to <2 x float> ; 2 uses
  %i.es = extractelement <2 x float> %i.er, i64 0 ; 3 uses
  %i.et = extractelement <2 x float> %i.er, i64 1 ; 3 uses
  %i.eu = fmul nsz float %i.es, %i.et             ; 2 uses
  %i.ev = fmul nsz float %i.eh, %i.eu             ; 3 uses
  %i.ew = fsub nsz float 1.000000e+00, %i.et      ; 2 uses
  %i.ex = fmul nsz float %i.ew, %i.es             ; 2 uses
  %i.ey = fmul nsz float %i.ex, %i.eg             ; 3 uses
  %i.ez = fmul nsz float %i.eh, %i.ex             ; 3 uses
  %i.fa = fsub nsz float 1.000000e+00, %i.es      ; 2 uses
  %i.fb = fmul nsz float %i.fa, %i.et             ; 2 uses
  %i.fc = fmul nsz float %i.fb, %i.eg             ; 3 uses
  %i.fd = fmul nsz float %i.eh, %i.fb             ; 3 uses
  %i.fe = fmul nsz float %i.fa, %i.ew             ; 2 uses
  %i.ff = fmul nsz float %i.fe, %i.eg             ; 3 uses
  %i.fg = fmul nsz float %i.eh, %i.fe             ; 3 uses
  %i.fh = extractelement <4 x float> %i.dq, i64 0
  %i.fi = fmul nsz float %i.fg, %i.fh
  %i.fj = extractelement <4 x float> %i.dq, i64 1
  %i.fk = call nsz float @llvm.fmuladd.f32(float %i.ff, float %i.fj, float %i.fi)
  %i.fl = extractelement <4 x float> %i.dq, i64 2
  %i.fm = call nsz float @llvm.fmuladd.f32(float %i.fd, float %i.fl, float %i.fk)
  %i.fn = extractelement <4 x float> %i.dq, i64 3
  %i.fo = call nsz float @llvm.fmuladd.f32(float %i.fc, float %i.fn, float %i.fm)
  %i.fp = extractelement <4 x float> %i.dy, i64 0
  %i.fq = call nsz float @llvm.fmuladd.f32(float %i.ez, float %i.fp, float %i.fo)
  %i.fr = extractelement <4 x float> %i.dy, i64 1
  %i.fs = call nsz float @llvm.fmuladd.f32(float %i.ey, float %i.fr, float %i.fq)
  %i.ft = extractelement <4 x float> %i.dy, i64 2
  %i.fu = call nsz float @llvm.fmuladd.f32(float %i.ev, float %i.ft, float %i.fs)
  %i.fv = fmul nsz float %i.fg, %i.dk
  %i.fw = call nsz float @llvm.fmuladd.f32(float %i.ff, float %i.dl, float %i.fv)
  %i.fx = call nsz float @llvm.fmuladd.f32(float %i.fd, float %i.dm, float %i.fw)
  %i.fy = call nsz float @llvm.fmuladd.f32(float %i.fc, float %i.dr, float %i.fx)
  %i.fz = call nsz float @llvm.fmuladd.f32(float %i.ez, float %i.ds, float %i.fy)
  %i.ga = call nsz float @llvm.fmuladd.f32(float %i.ey, float %i.dt, float %i.fz)
  %i.gb = call nsz float @llvm.fmuladd.f32(float %i.ev, float %i.du, float %i.ga)
  %i.gc = extractelement <4 x float> %i.dp, i64 0
  %i.gd = fmul nsz float %i.fg, %i.gc
  %i.ge = extractelement <4 x float> %i.dp, i64 1
  %i.gf = call nsz float @llvm.fmuladd.f32(float %i.ff, float %i.ge, float %i.gd)
  %i.gg = extractelement <4 x float> %i.dp, i64 2
  %i.gh = call nsz float @llvm.fmuladd.f32(float %i.fd, float %i.gg, float %i.gf)
  %i.gi = extractelement <4 x float> %i.dp, i64 3
  %i.gj = call nsz float @llvm.fmuladd.f32(float %i.fc, float %i.gi, float %i.gh)
  %i.gk = extractelement <4 x float> %i.dx, i64 0
  %i.gl = call nsz float @llvm.fmuladd.f32(float %i.ez, float %i.gk, float %i.gj)
  %i.gm = extractelement <4 x float> %i.dx, i64 1
  %i.gn = call nsz float @llvm.fmuladd.f32(float %i.ey, float %i.gm, float %i.gl)
  %i.go = extractelement <4 x float> %i.dx, i64 2
  %i.gp = call nsz float @llvm.fmuladd.f32(float %i.ev, float %i.go, float %i.gn)
  %i.gq = fmul nsz float %i.eu, %i.eg             ; 3 uses
  %i.gr = extractelement <4 x float> %i.dx, i64 3
  %i.gs = call nsz float @llvm.fmuladd.f32(float %i.gq, float %i.gr, float %i.gp)
  %i.gt = load float, ptr %i.o, align 4, !tbaa !44
  %i.gu = call nsz float @llvm.fmuladd.f32(float %i.gq, float %i.gt, float %i.gb)
  %i.gv = extractelement <4 x float> %i.dy, i64 3
  %i.gw = call nsz float @llvm.fmuladd.f32(float %i.gq, float %i.gv, float %i.fu)
  %i.gx = fmul nsz float %i.gw, 0.000000e+00
  %i.gy = fadd nsz float %i.gs, %i.gx
  %i.gz = fadd nsz float %i.gy, 5.000000e-01
  %i.ha = call nsz noundef float @llvm.floor.f32(float %i.gz)
  %i.hb = fptosi float %i.ha to i32
  %i.hc = call i32 @llvm.smax.i32(i32 %i.hb, i32 0)
  %i.hd = call i32 @llvm.umin.i32(i32 %i.hc, i32 255)
  %.sroa.0.0.insert.ext.i.i = trunc nuw nsw i32 %i.hd to i16
  %i.he = fadd nsz float %i.gu, 5.000000e-01
  %i.hf = call nsz noundef float @llvm.floor.f32(float %i.he)
  %i.hg = fptosi float %i.hf to i32
  %i.hh = call i32 @llvm.smax.i32(i32 %i.hg, i32 0)
  %i.hi = call i32 @llvm.umin.i32(i32 %i.hh, i32 255)
  %.sroa.2.0.insert.ext.i.i = trunc nuw nsw i32 %i.hi to i16
  %.sroa.2.0.insert.shift.i.i = shl nuw i16 %.sroa.2.0.insert.ext.i.i, 8
  %.sroa.0.0.insert.insert.i.i = or disjoint i16 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.hj = load ptr, ptr %i.p, align 8, !tbaa !58
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 1410
  %i.hl = load i8, ptr %i.hk, align 2, !tbaa !113
  %i.hm = call i32 @_Z12encode_lightth(i16 noundef zeroext %.sroa.0.0.insert.insert.i.i, i8 noundef zeroext %i.hl)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.hn = load i32, ptr %i.d, align 8, !tbaa !115
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %storemerge = phi i32 [ %i.hn, %bb.q ], [ %i.hm, %bb.p ]
  %i.ho = load float, ptr %i.r, align 8, !tbaa !45
  %i.hp = fadd nsz float %i.cn, %i.ho
  %i.hq = load i16, ptr %i.bv, align 2, !tbaa !215
  %i.hr = sitofp nsz i16 %i.hq to float
  %i.hs = sitofp nsz i32 %i.bz to float
  %i.ht = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %indvars.iv ; 9 uses
  %i.hu = load <2 x float>, ptr %i.q, align 8, !tbaa !44
  %i.hv = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.hw = insertelement <2 x float> %i.hv, float %.sroa.845.0, i64 1
  %i.hx = fadd nsz <2 x float> %i.hw, %i.hu
  store <2 x float> %i.hx, ptr %i.ht, align 8, !tbaa !44
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  store float %i.hp, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !44
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 12
  store float %i.bu, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !44
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  store float %i.hr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !44
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 20
  store float %i.bw, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !44
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  store i32 %storemerge, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !115
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 28
  store float %i.hs, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !44
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 32
  store float %.035, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !44
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ht, i64 36
  store i16 0, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !121
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.i, label %bb.j, !llvm.loop !208

bb.s:                                             ; preds = %bb.i, %_ZNK14NodeDefManager3getEt.exit, %bb.e, %bb.d
  %.0.add = add nuw nsw i64 %.0.idx51, 18         ; 2 uses
  %.not = icmp eq i64 %.0.add, 72
  br i1 %.not, label %bb.b, label %bb.c
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21MapblockMeshGenerator13drawLiquidTopEv(ptr noundef nonnull align 8 dereferenceable(496) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %1 = alloca [4 x %"struct.video::S3DVertex"], align 16 ; 42 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 364
  %.sroa.052.0.copyload = load i32, ptr %i.a, align 4, !tbaa !115 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  store <4 x float> <float -5.000000e+00, float 0.000000e+00, float 5.000000e+00, float 0.000000e+00>, ptr %1, align 16, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20
  store <2 x float> zeroinitializer, ptr %i.c, align 16, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %.sroa.052.0.copyload, ptr %i.e, align 8, !tbaa !115
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 5 uses
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.f, align 4, !tbaa !44
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i16 0, ptr %i.g, align 4, !tbaa !112
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  store <4 x float> <float 5.000000e+00, float 0.000000e+00, float 5.000000e+00, float 0.000000e+00>, ptr %i.h, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  store <2 x float> zeroinitializer, ptr %i.i, align 8, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 %.sroa.052.0.copyload, ptr %i.j, align 16, !tbaa !115
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 68
  store <2 x float> splat (float 1.000000e+00), ptr %i.k, align 4, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i16 0, ptr %i.l, align 4, !tbaa !112
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <4 x float> <float 5.000000e+00, float 0.000000e+00, float -5.000000e+00, float 0.000000e+00>, ptr %i.m, align 16, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <2 x float> zeroinitializer, ptr %i.n, align 16, !tbaa !44
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i32 %.sroa.052.0.copyload, ptr %i.o, align 8, !tbaa !115
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 108 ; 3 uses
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.p, align 4, !tbaa !44
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 116
  store i16 0, ptr %i.q, align 4, !tbaa !112
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 120
  store <4 x float> <float -5.000000e+00, float 0.000000e+00, float -5.000000e+00, float 0.000000e+00>, ptr %i.r, align 8, !tbaa !44
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 136
  store <2 x float> zeroinitializer, ptr %i.s, align 8, !tbaa !44
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i32 %.sroa.052.0.copyload, ptr %i.t, align 16, !tbaa !115
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 148
  store <2 x float> zeroinitializer, ptr %i.u, align 4, !tbaa !44
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 156
  store i16 0, ptr %i.v, align 4, !tbaa !112
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.d

bb.b:                                             ; preds = %bb.g
  %i.ab = load float, ptr %i.w, align 8, !tbaa !44 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !44 ; 2 uses
  %i.ae = fadd nsz float %i.ab, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ag = load float, ptr %i.af, align 8, !tbaa !44 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !44 ; 2 uses
  %i.aj = fadd nsz float %i.ag, %i.ai
  %i.ak = fsub nsz float %i.ae, %i.aj             ; 7 uses
  %i.al = fadd nsz float %i.ab, %i.ag
  %i.am = fadd nsz float %i.ad, %i.ai
  %i.an = fsub nsz float %i.al, %i.am             ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aq = load i16, ptr %i.ap, align 4, !tbaa !217
  %i.ar = sext i16 %i.aq to i32
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.au = load i16, ptr %i.at, align 4, !tbaa !153
  %i.av = sext i16 %i.au to i32
  %i.aw = add nsw i32 %i.av, %i.ar
  %i.ax = sitofp nsz i32 %i.aw to float
  %i.ay = load i16, ptr %i.ao, align 8, !tbaa !218
  %i.az = sext i16 %i.ay to i32
  %i.ba = load i16, ptr %i.as, align 8, !tbaa !154
  %i.bb = sext i16 %i.ba to i32
  %i.bc = add nsw i32 %i.bb, %i.az
  %i.bd = sitofp nsz i32 %i.bc to float           ; 2 uses
  %i.be = fmul nsz float %i.ak, %i.ak
  %i.bf = tail call nsz float @llvm.fmuladd.f32(float %i.an, float %i.an, float %i.be) ; 2 uses
  %i.bg = fcmp nsz oeq float %i.bf, 0.000000e+00
  br i1 %i.bg, label %_ZN4core8vector2dIfE9normalizeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bh = tail call nsz float @llvm.sqrt.f32(float %i.bf)
  %i.bi = fdiv nsz float 1.000000e+00, %i.bh      ; 2 uses
  %i.bj = fmul nsz float %i.an, %i.bi
  %i.bk = fmul nsz float %i.ak, %i.bi
  br label %_ZN4core8vector2dIfE9normalizeEv.exit

_ZN4core8vector2dIfE9normalizeEv.exit:            ; preds = %bb.b, %bb.c
  %.sroa.662.0 = phi nsz float [ %i.ak, %bb.b ], [ %i.bk, %bb.c ] ; 4 uses
  %.sroa.061.0 = phi nsz float [ %i.an, %bb.b ], [ %i.bj, %bb.c ] ; 2 uses
  %i.bl = fcmp nsz oeq float %.sroa.061.0, 0.000000e+00
  %i.bm = fcmp nsz oeq float %.sroa.662.0, 0.000000e+00
  %i.bn = and i1 %i.bm, %i.bl
  %.sroa.063.0 = select nsz i1 %i.bn, float 1.000000e+00, float %.sroa.061.0 ; 3 uses
  %i.bo = fneg nsz float %i.bd
  %i.bp = insertelement <2 x float> poison, float %.sroa.662.0, i64 0
  %i.bq = insertelement <2 x float> %i.bp, float %.sroa.063.0, i64 1 ; 6 uses
  %i.br = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.bs = insertelement <2 x float> %i.br, float %i.bd, i64 1
  %i.bt = fmul nsz <2 x float> %i.bq, %i.bs
  %i.bu = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 5 uses
  %i.bv = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.bw, <2 x float> %i.bt)
  %i.by = fpext <2 x float> %i.bx to <2 x double> ; 3 uses
  %i.bz = extractelement <2 x double> %i.by, i64 0
  %i.ca = tail call nsz double @llvm.floor.f64(double %i.bz)
  %i.cb = extractelement <2 x double> %i.by, i64 1
  %i.cc = tail call nsz double @llvm.floor.f64(double %i.cb)
  %i.cd = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.ce = insertelement <2 x double> %i.cd, double %i.cc, i64 1
  %i.cf = fsub nsz <2 x double> %i.by, %i.ce
  %i.cg = fptrunc <2 x double> %i.cf to <2 x float> ; 8 uses
  %i.ch = load ptr, ptr %0, align 8, !tbaa !31
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 66
  %i.cj = load i8, ptr %i.ci, align 2, !tbaa !219, !range !106, !noundef !107
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %_ZN4core8vector2dIfE9normalizeEv.exit.split.us.preheader, label %_ZN4core8vector3dIfE9normalizeEv.exit55.preheader

_ZN4core8vector3dIfE9normalizeEv.exit55.preheader: ; preds = %_ZN4core8vector2dIfE9normalizeEv.exit
  %i.cl = tail call nsz float @llvm.fmuladd.f32(float %i.an, float %i.an, float 1.000000e+00)
  %i.cm = tail call nsz float @llvm.fmuladd.f32(float %i.ak, float %i.ak, float %i.cl)
  %i.cn = fpext nsz float %i.cm to double
  %i.co = tail call nsz double @llvm.sqrt.f64(double %i.cn)
  %i.cp = fdiv nsz double 1.000000e+00, %i.co     ; 3 uses
  %i.cq = fpext nsz float %i.ak to double
  %i.cr = fmul nsz double %i.cp, %i.cq
  %i.cs = fptrunc nsz double %i.cr to float       ; 4 uses
  %i.ct = fptrunc nsz double %i.cp to float       ; 4 uses
  %i.cu = fpext nsz float %i.an to double
  %i.cv = fmul nsz double %i.cp, %i.cu
  %i.cw = fptrunc nsz double %i.cv to float       ; 4 uses
  %i.cx = fmul nsz <2 x float> %i.bq, <float -5.000000e-01, float 5.000000e-01> ; 2 uses
  %i.cy = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> splat (float -5.000000e-01), <2 x float> %i.cx)
  %i.cz = fadd nsz <2 x float> %i.cy, splat (float 5.000000e-01)
  %i.da = fadd nsz <2 x float> %i.cz, %i.cg
  store <2 x float> %i.da, ptr %i.f, align 4, !tbaa !44
  store float %i.cw, ptr %i.b, align 4, !tbaa !44
  store float %i.ct, ptr %i.c, align 16, !tbaa !44
  store float %i.cs, ptr %i.d, align 4, !tbaa !44
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.dc = insertelement <2 x float> poison, float %.sroa.063.0, i64 0
  %i.dd = insertelement <2 x float> %i.dc, float %.sroa.662.0, i64 1 ; 2 uses
  %i.de = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dd, <2 x float> splat (float 5.000000e-01), <2 x float> %i.cx)
  %i.df = fadd nsz <2 x float> %i.de, splat (float 5.000000e-01)
  %i.dg = fadd nsz <2 x float> %i.df, %i.cg
  store <2 x float> %i.dg, ptr %i.db, align 4, !tbaa !44
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 52
  store float %i.cw, ptr %i.dh, align 4, !tbaa !44
  %.sroa.6.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %1, i64 56
  store float %i.ct, ptr %.sroa.6.0..sroa_idx.1, align 8, !tbaa !44
  %.sroa.9.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %1, i64 60
  store float %i.cs, ptr %.sroa.9.0..sroa_idx.1, align 4, !tbaa !44
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.dj = fmul nsz <2 x float> %i.bq, <float 5.000000e-01, float -5.000000e-01> ; 2 uses
  %i.dk = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> splat (float 5.000000e-01), <2 x float> %i.dj)
  %i.dl = fadd nsz <2 x float> %i.dk, splat (float 5.000000e-01)
  %i.dm = fadd nsz <2 x float> %i.dl, %i.cg
  store <2 x float> %i.dm, ptr %i.di, align 4, !tbaa !44
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 92
  store float %i.cw, ptr %i.dn, align 4, !tbaa !44
  %.sroa.6.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %1, i64 96
  store float %i.ct, ptr %.sroa.6.0..sroa_idx.2, align 16, !tbaa !44
  %.sroa.9.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %1, i64 100
  store float %i.cs, ptr %.sroa.9.0..sroa_idx.2, align 4, !tbaa !44
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.dp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dd, <2 x float> splat (float -5.000000e-01), <2 x float> %i.dj)
  %i.dq = fadd nsz <2 x float> %i.dp, splat (float 5.000000e-01)
  %i.dr = fadd nsz <2 x float> %i.dq, %i.cg
  store <2 x float> %i.dr, ptr %i.do, align 4, !tbaa !44
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 132
  store float %i.cw, ptr %i.ds, align 4, !tbaa !44
  %.sroa.6.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %1, i64 136
  store float %i.ct, ptr %.sroa.6.0..sroa_idx.3, align 8, !tbaa !44
  %.sroa.9.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %1, i64 140
  store float %i.cs, ptr %.sroa.9.0..sroa_idx.3, align 4, !tbaa !44
  br label %.split.us

_ZN4core8vector2dIfE9normalizeEv.exit.split.us.preheader: ; preds = %_ZN4core8vector2dIfE9normalizeEv.exit
  %i.dt = fmul nsz <2 x float> %i.bq, <float -5.000000e-01, float 5.000000e-01> ; 2 uses
  %i.du = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> splat (float -5.000000e-01), <2 x float> %i.dt)
  %i.dv = fadd nsz <2 x float> %i.du, splat (float 5.000000e-01)
  %i.dw = fadd nsz <2 x float> %i.dv, %i.cg
  store <2 x float> %i.dw, ptr %i.f, align 4, !tbaa !44
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.dy = insertelement <2 x float> poison, float %.sroa.063.0, i64 0
  %i.dz = insertelement <2 x float> %i.dy, float %.sroa.662.0, i64 1 ; 2 uses
  %i.ea = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dz, <2 x float> splat (float 5.000000e-01), <2 x float> %i.dt)
  %i.eb = fadd nsz <2 x float> %i.ea, splat (float 5.000000e-01)
  %i.ec = fadd nsz <2 x float> %i.eb, %i.cg
  store <2 x float> %i.ec, ptr %i.dx, align 4, !tbaa !44
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.ee = fmul nsz <2 x float> %i.bq, <float 5.000000e-01, float -5.000000e-01> ; 2 uses
  %i.ef = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> splat (float 5.000000e-01), <2 x float> %i.ee)
  %i.eg = fadd nsz <2 x float> %i.ef, splat (float 5.000000e-01)
  %i.eh = fadd nsz <2 x float> %i.eg, %i.cg
  store <2 x float> %i.eh, ptr %i.ed, align 4, !tbaa !44
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.ej = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dz, <2 x float> splat (float -5.000000e-01), <2 x float> %i.ee)
  %i.ek = fadd nsz <2 x float> %i.ej, splat (float 5.000000e-01)
  %i.el = fadd nsz <2 x float> %i.ek, %i.cg
  store <2 x float> %i.el, ptr %i.ei, align 4, !tbaa !44
  br label %.split.us

bb.d:                                             ; preds = %bb.a, %bb.g
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr @_ZZN21MapblockMeshGenerator13drawLiquidTopEvE14corner_resolve, i64 %indvars.iv ; 2 uses
  %i.en = load i32, ptr %i.em, align 8, !tbaa !115
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !115
  %i.eq = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 66
  %i.es = load i8, ptr %i.er, align 2, !tbaa !219, !range !106, !noundef !107
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %_ZN4core8vector3dIfE9normalizeEv.exit, label %bb.e

_ZN4core8vector3dIfE9normalizeEv.exit:            ; preds = %bb.d
  %i.eu = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.ev = load float, ptr %i.eu, align 8, !tbaa !220
  %i.ew = fcmp nsz ogt float %i.ev, 0.000000e+00  ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ey = load float, ptr %i.ex, align 8, !tbaa !221
  %i.ez = fcmp nsz ogt float %i.ey, 0.000000e+00  ; 2 uses
  %i.fa = zext i1 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.fa ; 2 uses
  %i.fc = zext i1 %i.ew to i64                    ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.fc
  %i.fe = load float, ptr %i.fd, align 8, !tbaa !150 ; 2 uses
  %i.ff = select i1 %i.ew, i64 2, i64 1           ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.ff
  %i.fh = load float, ptr %i.fg, align 8, !tbaa !150 ; 2 uses
  %i.fi = fsub nsz float %i.fe, %i.fh
  %i.fj = select i1 %i.ez, i64 2, i64 1
  %i.fk = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.fj ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fc
  %i.fm = load float, ptr %i.fl, align 8, !tbaa !150 ; 2 uses
  %i.fn = fadd nsz float %i.fi, %i.fm
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.ff
  %i.fp = load float, ptr %i.fo, align 8, !tbaa !150 ; 2 uses
  %i.fq = fsub nsz float %i.fn, %i.fp
  %i.fr = fmul nsz float %i.fq, 5.000000e-01      ; 3 uses
  %i.fs = fsub nsz float %i.fe, %i.fm
  %i.ft = fadd nsz float %i.fh, %i.fs
  %i.fu = fsub nsz float %i.ft, %i.fp
  %i.fv = fmul nsz float %i.fu, 5.000000e-01      ; 3 uses
  %i.fw = tail call nsz float @llvm.fmuladd.f32(float %i.fr, float %i.fr, float 1.000000e+00)
  %i.fx = tail call nsz float @llvm.fmuladd.f32(float %i.fv, float %i.fv, float %i.fw)
  %i.fy = fpext nsz float %i.fx to double
  %i.fz = tail call nsz double @llvm.sqrt.f64(double %i.fy)
  %i.ga = fdiv nsz double 1.000000e+00, %i.fz     ; 3 uses
  %i.gb = fpext nsz float %i.fr to double
  %i.gc = fmul nsz double %i.ga, %i.gb
  %i.gd = fpext nsz float %i.fv to double
  %i.ge = fmul nsz double %i.ga, %i.gd
  %i.gf = fptrunc nsz double %i.ge to float
  %i.gg = getelementptr inbounds nuw i8, ptr %i.eu, i64 12
  %i.gh = insertelement <2 x double> poison, double %i.gc, i64 0
  %i.gi = insertelement <2 x double> %i.gh, double %i.ga, i64 1
  %i.gj = fptrunc <2 x double> %i.gi to <2 x float>
  store <2 x float> %i.gj, ptr %i.gg, align 4, !tbaa !44
  %.sroa.978.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eu, i64 20
  store float %i.gf, ptr %.sroa.978.0..sroa_idx, align 4, !tbaa !44
  br label %bb.e

bb.e:                                             ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit, %bb.d
  %i.gk = sext i32 %i.ep to i64
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.gk
  %i.gm = sext i32 %i.en to i64
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.gl, i64 %i.gm
  %i.go = load float, ptr %i.gn, align 4, !tbaa !44
  %i.gp = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %indvars.iv ; 6 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 4 ; 2 uses
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !222
  %i.gs = tail call nsz float @llvm.fmuladd.f32(float %i.go, float 1.000000e+01, float %i.gr) ; 2 uses
  store float %i.gs, ptr %i.gq, align 4, !tbaa !222
  %i.gt = getelementptr inbounds nuw i8, ptr %i.eq, i64 65
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !114, !range !106, !noundef !107
  %i.gv = trunc nuw i8 %i.gu to i1
  br i1 %i.gv, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.gw = call { <2 x float>, float } @_ZN21MapblockMeshGenerator10blendLightERKN4core8vector3dIfEE(ptr noundef nonnull readonly align 8 dereferenceable(496) %0, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.gp) ; 2 uses
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.gw, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.gw, 1
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.fca.0.extract.i, i64 0
  %i.gx = fmul nsz float %.fca.1.extract.i, 0.000000e+00
  %i.gy = fadd nsz float %.sroa.03.0.vec.extract.i, %i.gx
  %i.gz = insertelement <2 x float> %.fca.0.extract.i, float %i.gy, i64 0
  %i.ha = fadd nsz <2 x float> %i.gz, splat (float 5.000000e-01)
  %i.hb = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.ha)
  %i.hc = fptosi <2 x float> %i.hb to <2 x i32>
  %i.hd = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.hc, <2 x i32> zeroinitializer)
  %i.he = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.hd, <2 x i32> splat (i32 255))
  %i.hf = trunc nuw nsw <2 x i32> %i.he to <2 x i16> ; 2 uses
  %i.hg = extractelement <2 x i16> %i.hf, i64 1
  %.sroa.2.0.insert.shift.i.i = shl nuw i16 %i.hg, 8
  %i.hh = extractelement <2 x i16> %i.hf, i64 0
  %.sroa.0.0.insert.insert.i.i = or disjoint i16 %.sroa.2.0.insert.shift.i.i, %i.hh
  %i.hi = load ptr, ptr %i.y, align 8, !tbaa !58
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 1410
  %i.hk = load i8, ptr %i.hj, align 2, !tbaa !113
  %i.hl = tail call i32 @_Z12encode_lightth(i16 noundef zeroext %.sroa.0.0.insert.insert.i.i, i8 noundef zeroext %i.hk)
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  store i32 %i.hl, ptr %i.hm, align 8, !tbaa !115
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.hn = load float, ptr %i.gp, align 8, !tbaa !120
  %i.ho = load <2 x float>, ptr %i.z, align 8, !tbaa !44
  %i.hp = insertelement <2 x float> poison, float %i.hn, i64 0
  %i.hq = insertelement <2 x float> %i.hp, float %i.gs, i64 1
  %i.hr = fadd nsz <2 x float> %i.ho, %i.hq
  store <2 x float> %i.hr, ptr %i.gp, align 8, !tbaa !44
  %i.hs = load float, ptr %i.aa, align 8, !tbaa !45
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 2 uses
  %i.hu = load float, ptr %i.ht, align 8, !tbaa !45
  %i.hv = fadd nsz float %i.hs, %i.hu
  store float %i.hv, ptr %i.ht, align 8, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.b, label %bb.d, !llvm.loop !216

.split.us:                                        ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit55.preheader, %_ZN4core8vector2dIfE9normalizeEv.exit.split.us.preheader
  %i.hw = load i64, ptr %i.f, align 4, !tbaa !44
  %i.hx = load i64, ptr %i.p, align 4, !tbaa !44
  store i64 %i.hx, ptr %i.f, align 4, !tbaa !44
  store i64 %i.hw, ptr %i.p, align 4, !tbaa !44
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !32
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @_ZN13MeshCollector6appendERK8TileSpecPKN5video9S3DVertexEjPKtj(ptr noundef nonnull align 8 dereferenceable(76) %i.hz, ptr noundef nonnull align 8 dereferenceable(104) %i.ia, ptr noundef nonnull %1, i32 noundef 4, ptr noundef nonnull @_ZL15quad_indices_02, i32 noundef 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21MapblockMeshGenerator16drawLiquidBottomEv(ptr noundef nonnull align 8 dereferenceable(496) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %1 = alloca [4 x %"struct.video::S3DVertex"], align 16 ; 40 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 364
  %.sroa.08.0.copyload = load i32, ptr %i.a, align 4, !tbaa !115 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store <4 x float> <float -5.000000e+00, float -5.000000e+00, float -5.000000e+00, float 0.000000e+00>, ptr %1, align 16, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <2 x float> zeroinitializer, ptr %i.c, align 16, !tbaa !44
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store i32 %.sroa.08.0.copyload, ptr %i.d, align 8, !tbaa !115
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  store <2 x float> zeroinitializer, ptr %i.e, align 4, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i16 0, ptr %i.f, align 4, !tbaa !112
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  store <4 x float> <float 5.000000e+00, float -5.000000e+00, float -5.000000e+00, float 0.000000e+00>, ptr %i.g, align 8, !tbaa !44
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  store <2 x float> zeroinitializer, ptr %i.h, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 %.sroa.08.0.copyload, ptr %i.i, align 16, !tbaa !115
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 68
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.j, align 4, !tbaa !44
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i16 0, ptr %i.k, align 4, !tbaa !112
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  store <4 x float> <float 5.000000e+00, float -5.000000e+00, float 5.000000e+00, float 0.000000e+00>, ptr %i.l, align 16, !tbaa !44
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 96
  store <2 x float> zeroinitializer, ptr %i.m, align 16, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i32 %.sroa.08.0.copyload, ptr %i.n, align 8, !tbaa !115
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 108
  store <2 x float> splat (float 1.000000e+00), ptr %i.o, align 4, !tbaa !44
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 116
  store i16 0, ptr %i.p, align 4, !tbaa !112
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  store <4 x float> <float -5.000000e+00, float -5.000000e+00, float 5.000000e+00, float 0.000000e+00>, ptr %i.q, align 8, !tbaa !44
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 136
  store <2 x float> zeroinitializer, ptr %i.r, align 8, !tbaa !44
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i32 %.sroa.08.0.copyload, ptr %i.s, align 16, !tbaa !115
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 148
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.t, align 4, !tbaa !44
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 156
  store i16 0, ptr %i.u, align 4, !tbaa !112
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !31
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 65
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !114, !range !106, !noundef !107
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %.split.1, label %.split.us

.split.us:                                        ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load float, ptr %i.w, align 8, !tbaa !120 ; 2 uses
  %i.af = fadd nsz float %i.ae, -5.000000e+00     ; 2 uses
  store float %i.af, ptr %1, align 16, !tbaa !120
  %i.ag = fadd nsz float %i.ae, 5.000000e+00      ; 2 uses
  store float %i.ag, ptr %i.g, align 8, !tbaa !120
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 48
  store float %i.ag, ptr %i.l, align 16, !tbaa !120
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ak = load float, ptr %i.y, align 8, !tbaa !45
  %i.al = load <2 x float>, ptr %i.x, align 4, !tbaa !44
  %i.am = fadd nsz <2 x float> %i.al, <float -5.000000e+00, float 5.000000e+00> ; 3 uses
  %i.an = extractelement <2 x float> %i.am, i64 0 ; 2 uses
  store float %i.an, ptr %i.b, align 4, !tbaa !117
  %i.ao = fadd nsz float %i.ak, -5.000000e+00     ; 2 uses
  store float %i.ao, ptr %i.ad, align 8, !tbaa !45
  store float %i.an, ptr %i.ah, align 4, !tbaa !117
  store float %i.ao, ptr %i.ai, align 16, !tbaa !45
  store <2 x float> %i.am, ptr %i.aj, align 4, !tbaa !44
  br label %.split11.us

.split11.us:                                      ; preds = %.split.us, %.split11.us.loopexit
  %.sink50 = phi float [ %i.af, %.split.us ], [ %i.em, %.split11.us.loopexit ]
  %i.ap = phi <2 x float> [ %i.am, %.split.us ], [ %i.el, %.split11.us.loopexit ]
  store float %.sink50, ptr %i.q, align 8, !tbaa !120
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 124
  store <2 x float> %i.ap, ptr %i.aq, align 4, !tbaa !44
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !32
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @_ZN13MeshCollector6appendERK8TileSpecPKN5video9S3DVertexEjPKtj(ptr noundef nonnull align 8 dereferenceable(76) %i.as, ptr noundef nonnull align 8 dereferenceable(104) %i.at, ptr noundef nonnull %1, i32 noundef 4, ptr noundef nonnull @_ZL15quad_indices_02, i32 noundef 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void

.split.1:                                         ; preds = %bb.a
  %i.au = call { <2 x float>, float } @_ZN21MapblockMeshGenerator10blendLightERKN4core8vector3dIfEE(ptr noundef nonnull readonly align 8 dereferenceable(496) %0, ptr noundef nonnull readonly align 4 dereferenceable(12) %1) ; 2 uses
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.au, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.au, 1
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.fca.0.extract.i, i64 0
  %i.av = fmul nsz float %.fca.1.extract.i, 0.000000e+00
  %i.aw = fadd nsz float %.sroa.03.0.vec.extract.i, %i.av
  %i.ax = insertelement <2 x float> %.fca.0.extract.i, float %i.aw, i64 0
  %i.ay = fadd nsz <2 x float> %i.ax, splat (float 5.000000e-01)
  %i.az = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.ay)
  %i.ba = fptosi <2 x float> %i.az to <2 x i32>
  %i.bb = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ba, <2 x i32> zeroinitializer)
  %i.bc = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.bb, <2 x i32> splat (i32 255))
  %i.bd = trunc nuw nsw <2 x i32> %i.bc to <2 x i16> ; 2 uses
  %i.be = extractelement <2 x i16> %i.bd, i64 1
  %.sroa.2.0.insert.shift.i.i = shl nuw i16 %i.be, 8
  %i.bf = extractelement <2 x i16> %i.bd, i64 0
  %.sroa.0.0.insert.insert.i.i = or disjoint i16 %.sroa.2.0.insert.shift.i.i, %i.bf
  %i.bg = load ptr, ptr %i.v, align 8, !tbaa !58
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1410
  %i.bi = load i8, ptr %i.bh, align 2, !tbaa !113
  %i.bj = tail call i32 @_Z12encode_lightth(i16 noundef zeroext %.sroa.0.0.insert.insert.i.i, i8 noundef zeroext %i.bi)
  store i32 %i.bj, ptr %i.d, align 8, !tbaa !115
  %.pre = load ptr, ptr %0, align 8, !tbaa !31
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 65
  %.pre15 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !114, !range !106
  %i.bk = load float, ptr %i.w, align 8, !tbaa !120 ; 3 uses
  %i.bl = fadd nsz float %i.bk, -5.000000e+00
end_hunk_1
begin_hunk_2_@_ZN21MapblockMeshGenerator17drawTorchlikeNodeEv:bb.a
  store float %i.dj, ptr %i.ag, align 4, !tbaa !120
  store float %i.dl, ptr %i.dh, align 4, !tbaa !45
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 32
  store float %i.dj, ptr %i.al, align 8, !tbaa !120
  store float %i.dl, ptr %i.dm, align 16, !tbaa !45
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 44
  store float %i.dd, ptr %i.ao, align 4, !tbaa !120
  store float %i.df, ptr %i.dn, align 4, !tbaa !45
  br label %.split76.us

.split.us83.preheader:                            ; preds = %bb.a
  %i.do = fsub nsz float %i.as, %.scalar          ; 2 uses
  store float %i.do, ptr %2, align 16, !tbaa !120
  %i.dp = fadd nsz float %i.as, %.scalar          ; 2 uses
  store float %i.dp, ptr %i.ag, align 4, !tbaa !120
  store float %i.dp, ptr %i.al, align 8, !tbaa !120
  store float %i.do, ptr %i.ao, align 4, !tbaa !120
  br label %.split76.us

.split.us77.preheader:                            ; preds = %bb.a
  %i.dq = fadd nsz float %i.ar, %.scalar          ; 2 uses
  store float %i.dq, ptr %i.ae, align 4, !tbaa !117
  %i.dr = fpext nsz float %i.aj to double         ; 2 uses
  %i.ds = fmul nsz double %i.dr, f0x3FE6A09E667F3BCD
  %i.dt = fptrunc nsz double %i.ds to float       ; 2 uses
  %i.du = fmul nsz double %i.dr, f0x3FE6A09E667F3BCC
  %i.dv = fptrunc nsz double %i.du to float       ; 2 uses
  store float %i.dt, ptr %2, align 16, !tbaa !120
  store float %i.dv, ptr %i.af, align 8, !tbaa !45
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %i.dq, ptr %i.dw, align 16, !tbaa !117
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.dy = fpext nsz float %.scalar to double      ; 2 uses
  %i.dz = fmul nsz double %i.dy, f0x3FE6A09E667F3BCD
  %i.ea = fptrunc nsz double %i.dz to float       ; 2 uses
  %i.eb = fmul nsz double %i.dy, f0x3FE6A09E667F3BCC
  %i.ec = fptrunc nsz double %i.eb to float       ; 2 uses
  store float %i.ea, ptr %i.ag, align 4, !tbaa !120
  store float %i.ec, ptr %i.dx, align 4, !tbaa !45
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ee = fsub nsz float %i.ar, %.scalar          ; 2 uses
  store float %i.ee, ptr %i.ed, align 4, !tbaa !117
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 32
  store float %i.ea, ptr %i.al, align 8, !tbaa !120
  store float %i.ec, ptr %i.ef, align 16, !tbaa !45
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 40
  store float %i.ee, ptr %i.eg, align 8, !tbaa !117
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 44
  store float %i.dt, ptr %i.ao, align 4, !tbaa !120
  store float %i.dv, ptr %i.eh, align 4, !tbaa !45
  br label %.split76.us

.split.us.preheader:                              ; preds = %bb.a
  %i.ei = fadd nsz float %i.as, %.scalar          ; 2 uses
  store float %i.ei, ptr %i.ae, align 4, !tbaa !117
  %i.ej = fpext nsz float %i.aj to double         ; 2 uses
  %i.ek = fmul nsz double %i.ej, f0x3FE6A09E667F3BCD
  %i.el = fptrunc nsz double %i.ek to float       ; 2 uses
  %i.em = fmul nsz double %i.ej, f0xBFE6A09E667F3BCC
  %i.en = fptrunc nsz double %i.em to float       ; 2 uses
  store float %i.el, ptr %2, align 16, !tbaa !120
  store float %i.en, ptr %i.af, align 8, !tbaa !45
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %i.ei, ptr %i.eo, align 16, !tbaa !117
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.eq = fpext nsz float %.scalar to double      ; 2 uses
  %i.er = fmul nsz double %i.eq, f0x3FE6A09E667F3BCD
  %i.es = fptrunc nsz double %i.er to float       ; 2 uses
  %i.et = fmul nsz double %i.eq, f0xBFE6A09E667F3BCC
  %i.eu = fptrunc nsz double %i.et to float       ; 2 uses
  store float %i.es, ptr %i.ag, align 4, !tbaa !120
  store float %i.eu, ptr %i.ep, align 4, !tbaa !45
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ew = fsub nsz float %i.as, %.scalar          ; 2 uses
  store float %i.ew, ptr %i.ev, align 4, !tbaa !117
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 32
  store float %i.es, ptr %i.al, align 8, !tbaa !120
  store float %i.eu, ptr %i.ex, align 16, !tbaa !45
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 40
  store float %i.ew, ptr %i.ey, align 8, !tbaa !117
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 44
  store float %i.el, ptr %i.ao, align 4, !tbaa !120
  store float %i.en, ptr %i.ez, align 4, !tbaa !45
  br label %.split76.us

.split76.us:                                      ; preds = %bb.a, %.split.us113.preheader, %.split.us107.preheader, %.split.us101.preheader, %.split.us95.preheader, %.split.us89.preheader, %.split.us83.preheader, %.split.us77.preheader, %.split.us.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i16 0, ptr %3, align 2, !tbaa !41
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 0, ptr %i.fa, align 2, !tbaa !42
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i16 0, ptr %i.fb, align 2, !tbaa !43
  call void @_ZN21MapblockMeshGenerator8drawQuadERK8TileSpecPN4core8vector3dIfEERKNS4_IsEEf(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull %2, ptr noundef nonnull align 2 dereferenceable(6) %3, float noundef 1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void
}

declare noundef zeroext i8 @_ZNK7MapNode14getWallMountedEPK14NodeDefManager(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21MapblockMeshGenerator16drawSignlikeNodeEv(ptr noundef nonnull align 8 dereferenceable(496) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %struct.TileSpec, align 8           ; 22 uses
  %2 = alloca [4 x %"class.core::vector3d.0"], align 16 ; 47 uses
  %3 = alloca %"class.core::vector3d", align 2    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.d = tail call noundef zeroext i8 @_ZNK7MapNode14getWallMountedEPK14NodeDefManager(ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store i8 0, ptr %1, align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 0, ptr %i.e, align 1, !tbaa !48
  %.ptr.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %.ptr.i, i8 0, i64 18, i1 false)
  store i16 1, ptr %i.f, align 2, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i16 0, ptr %i.g, align 4, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 31 ; 2 uses
  store <4 x i8> <i8 0, i8 97, i8 1, i8 0>, ptr %i.h, align 2, !tbaa !55
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr null, ptr %i.j, align 8, !tbaa !56
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 0, ptr %i.k, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i8 0, ptr %i.l, align 4, !tbaa !57
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 74
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %.ptr.1.i, i8 0, i64 18, i1 false)
  store i16 1, ptr %i.m, align 2, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i16 0, ptr %i.n, align 4, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 78
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 79 ; 2 uses
  store <4 x i8> <i8 0, i8 97, i8 1, i8 0>, ptr %i.o, align 2, !tbaa !55
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr null, ptr %i.q, align 8, !tbaa !56
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 0, ptr %i.r, align 8, !tbaa !46
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 100
  store i8 0, ptr %i.s, align 4, !tbaa !57
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.a, align 4
  %i.u = load ptr, ptr %0, align 8, !tbaa !31
  call void @_Z12getNodeTileN7MapNodeRKN4core8vector3dIsEEhP12MeshMakeDataR8TileSpec(i32 %.sroa.0.0.copyload.i.i, ptr noundef nonnull align 2 dereferenceable(6) %i.t, i8 noundef zeroext 0, ptr noundef %i.u, ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.v = load i8, ptr %i.i, align 1, !tbaa !109
  %i.w = and i8 %i.v, -2
  store i8 %i.w, ptr %i.i, align 1, !tbaa !109
  %i.x = load i8, ptr %i.p, align 1, !tbaa !109
  %i.y = and i8 %i.x, -2
  store i8 %i.y, ptr %i.p, align 1, !tbaa !109
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !58
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 136
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !118
  %i.ad = fmul nsz float %i.ac, 5.000000e+00      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 6 uses
  %i.ah = fneg nsz float %i.ad                    ; 14 uses
  %i.ai = insertelement <4 x float> <float 4.375000e+00, float poison, float poison, float 4.375000e+00>, float %i.ad, i64 1
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  store <4 x float> %i.aj, ptr %2, align 16, !tbaa !44
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %i.ad, ptr %i.ak, align 16, !tbaa !117
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 20
  store float %i.ah, ptr %i.al, align 4, !tbaa !45
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 7 uses
  store float 4.375000e+00, ptr %i.am, align 8, !tbaa !120
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 28
  store float %i.ah, ptr %i.an, align 4, !tbaa !117
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 32
  store float %i.ah, ptr %i.ao, align 16, !tbaa !45
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 7 uses
  store float 4.375000e+00, ptr %i.ap, align 4, !tbaa !120
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 40
  store float %i.ah, ptr %i.aq, align 8, !tbaa !117
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 44
  store float %i.ad, ptr %i.ar, align 4, !tbaa !45
  switch i8 %i.d, label %.split74.us [
    i8 0, label %.split.us.preheader
    i8 1, label %.split.us75.preheader
    i8 2, label %.split.us81.preheader
    i8 3, label %.split.us87.preheader
    i8 4, label %.split.us93.preheader
    i8 5, label %.split.us99.preheader
    i8 6, label %.split.us105.preheader
    i8 7, label %.split.us111.preheader
  ]

.split.us111.preheader:                           ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.au = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.av = insertelement <2 x float> %i.au, float %i.ad, i64 1
  %i.aw = fpext <2 x float> %i.av to <2 x double> ; 4 uses
  %i.ax = extractelement <2 x double> %i.aw, i64 1 ; 2 uses
  %i.ay = fadd nsz double %i.ax, f0x3CB34DB9C7DE44A8
  %i.az = fptrunc nsz double %i.ay to float
  %i.ba = fmul nsz double %i.ax, f0x3C91A62633145C07 ; 2 uses
  %i.bb = fpext nsz float %i.az to double         ; 3 uses
  %i.bc = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.bd = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.be = insertelement <2 x double> <double 4.375000e+00, double poison>, double %i.bb, i64 1
  %i.bf = fsub nsz <2 x double> %i.bd, %i.be      ; 2 uses
  %i.bg = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> splat (double f0x3C91A62633145C07), <2 x double> %i.aw)
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> %i.bf, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.bk = fptrunc <4 x double> %i.bj to <4 x float>
  %i.bl = extractelement <2 x double> %i.aw, i64 0 ; 2 uses
  %i.bm = fmul nsz double %i.bl, f0x3C91A62633145C07 ; 2 uses
  %i.bn = fsub nsz double %i.bm, %i.bb
  store <4 x float> %i.bk, ptr %2, align 16, !tbaa !44
  %i.bo = fadd nsz double %i.bl, f0x3CB34DB9C7DE44A8
  %i.bp = fptrunc nsz double %i.bo to float
  %i.bq = fpext nsz float %i.bp to double         ; 2 uses
  %i.br = shufflevector <2 x double> %i.bf, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bs = insertelement <4 x double> %i.br, double %i.bn, i64 1
  %i.bt = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> splat (double f0x3C91A62633145C07), <2 x double> %i.aw)
  %i.bw = shufflevector <2 x double> %i.bv, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bx = shufflevector <4 x double> %i.bs, <4 x double> %i.bw, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.by = insertelement <4 x double> %i.bw, double %i.bm, i64 0
  %i.bz = insertelement <4 x double> %i.by, double %i.ba, i64 3
  %i.ca = shufflevector <4 x double> %i.bz, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.cb = insertelement <4 x double> <double poison, double 0.000000e+00, double 4.375000e+00, double poison>, double %i.bq, i64 0
  %i.cc = shufflevector <4 x double> %i.cb, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.cd = fsub nsz <4 x double> %i.ca, %i.cc      ; 2 uses
  %i.ce = shufflevector <4 x double> %i.bx, <4 x double> %i.cd, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.cf = fptrunc <4 x double> %i.ce to <4 x float>
  store <4 x float> %i.cf, ptr %i.as, align 16, !tbaa !44
  %i.cg = fptrunc <4 x double> %i.cd to <4 x float>
  store <4 x float> %i.cg, ptr %i.at, align 16, !tbaa !44
  br label %.split74.us

.split.us105.preheader:                           ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cj = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.ck = insertelement <2 x float> %i.cj, float %i.ad, i64 1
  %i.cl = fpext <2 x float> %i.ck to <2 x double> ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.co = fneg nsz <2 x double> %i.cl             ; 2 uses
  %i.cp = fmul nsz <2 x double> %i.cl, splat (double f0x3C91A62633145C07) ; 3 uses
  %i.cq = fsub nsz <2 x double> splat (double f0x3CB34DB9C7DE44A8), %i.cl
  %i.cr = fptrunc <2 x double> %i.cq to <2 x float>
  %i.cs = fpext <2 x float> %i.cr to <2 x double> ; 5 uses
  %i.ct = shufflevector <2 x double> %i.cs, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cu = shufflevector <4 x double> <double 4.375000e+00, double poison, double -0.000000e+00, double 4.375000e+00>, <4 x double> %i.ct, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.cv = shufflevector <2 x double> %i.cs, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cw = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cv, <2 x double> splat (double f0x3C91A62633145C07), <2 x double> %i.co) ; 2 uses
  %i.cx = shufflevector <2 x double> %i.cw, <2 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cy = shufflevector <2 x double> %i.cw, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cz = fadd nsz <2 x double> %i.cp, %i.cs      ; 2 uses
  %i.da = shufflevector <2 x double> %i.cs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.db = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.da, <2 x double> splat (double f0x3C91A62633145C07), <2 x double> %i.co) ; 2 uses
  %i.dc = shufflevector <2 x double> %i.cp, <2 x double> %i.db, <4 x i32> <i32 1, i32 0, i32 2, i32 0>
  %i.dd = fadd nsz <4 x double> %i.dc, %i.cu      ; 2 uses
  %i.de = shufflevector <4 x double> %i.cx, <4 x double> %i.dd, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.df = shufflevector <2 x double> %i.cz, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dg = shufflevector <4 x double> %i.de, <4 x double> %i.df, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.dh = shufflevector <4 x double> %i.dg, <4 x double> %i.cy, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.di = fptrunc <4 x double> %i.dh to <4 x float>
  store <4 x float> %i.di, ptr %2, align 16, !tbaa !44
  %i.dj = fptrunc <4 x double> %i.dd to <4 x float> ; 2 uses
  store <4 x float> %i.dj, ptr %i.ch, align 16, !tbaa !44
  %i.dk = extractelement <4 x float> %i.dj, i64 3
  store float %i.dk, ptr %i.cm, align 8, !tbaa !117
  %i.dl = shufflevector <2 x double> %i.cz, <2 x double> %i.db, <2 x i32> <i32 0, i32 3>
  %i.dm = fptrunc <2 x double> %i.dl to <2 x float>
  %shift = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd nsz <2 x double> %shift, %i.cs
  %i.dn = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.do = fptrunc nsz double %i.dn to float
  store <2 x float> %i.dm, ptr %i.ci, align 16, !tbaa !44
  store float %i.do, ptr %i.cn, align 4, !tbaa !45
  br label %.split74.us

.split.us99.preheader:                            ; preds = %bb.a
  %i.dp = fpext nsz float %i.ad to double         ; 2 uses
  %i.dq = fadd nsz double %i.dp, f0x3CB34DB9C7DE44A8
  %i.dr = fptrunc nsz double %i.dq to float       ; 2 uses
  %i.ds = fmul nsz double %i.dp, f0x3C91A62633145C07
  %i.dt = fadd nsz double %i.ds, -4.375000e+00
  %i.du = fptrunc nsz double %i.dt to float       ; 2 uses
  store float %i.dr, ptr %2, align 16, !tbaa !120
  store float %i.du, ptr %i.af, align 8, !tbaa !45
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.dw = fpext nsz float %i.ah to double         ; 2 uses
  %i.dx = fadd nsz double %i.dw, f0x3CB34DB9C7DE44A8
  %i.dy = fptrunc nsz double %i.dx to float       ; 2 uses
  %i.dz = fmul nsz double %i.dw, f0x3C91A62633145C07
  %i.ea = fadd nsz double %i.dz, -4.375000e+00
  %i.eb = fptrunc nsz double %i.ea to float       ; 2 uses
  store float %i.dy, ptr %i.ag, align 4, !tbaa !120
  store float %i.eb, ptr %i.dv, align 4, !tbaa !45
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 32
  store float %i.dy, ptr %i.am, align 8, !tbaa !120
  store float %i.eb, ptr %i.ec, align 16, !tbaa !45
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 44
  store float %i.dr, ptr %i.ap, align 4, !tbaa !120
  store float %i.du, ptr %i.ed, align 4, !tbaa !45
  br label %.split74.us

.split.us93.preheader:                            ; preds = %bb.a
  %i.ee = fpext nsz float %i.ad to double         ; 2 uses
  %i.ef = fsub nsz double f0x3CB34DB9C7DE44A8, %i.ee
  %i.eg = fptrunc nsz double %i.ef to float       ; 2 uses
  %i.eh = fmul nsz double %i.ee, f0x3C91A62633145C07
  %i.ei = fadd nsz double %i.eh, 4.375000e+00
  %i.ej = fptrunc nsz double %i.ei to float       ; 2 uses
  store float %i.eg, ptr %2, align 16, !tbaa !120
  store float %i.ej, ptr %i.af, align 8, !tbaa !45
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.el = fpext nsz float %i.ah to double         ; 2 uses
  %i.em = fsub nsz double f0x3CB34DB9C7DE44A8, %i.el
  %i.en = fptrunc nsz double %i.em to float       ; 2 uses
  %i.eo = fmul nsz double %i.el, f0x3C91A62633145C07
  %i.ep = fadd nsz double %i.eo, 4.375000e+00
  %i.eq = fptrunc nsz double %i.ep to float       ; 2 uses
  store float %i.en, ptr %i.ag, align 4, !tbaa !120
  store float %i.eq, ptr %i.ek, align 4, !tbaa !45
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 32
  store float %i.en, ptr %i.am, align 8, !tbaa !120
  store float %i.eq, ptr %i.er, align 16, !tbaa !45
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 44
  store float %i.eg, ptr %i.ap, align 4, !tbaa !120
  store float %i.ej, ptr %i.es, align 4, !tbaa !45
  br label %.split74.us

.split.us87.preheader:                            ; preds = %bb.a
  %i.et = fpext nsz float %i.ad to double         ; 2 uses
  %i.eu = fmul nsz double %i.et, f0xBCA1A62633145C07
  %i.ev = fadd nsz double %i.eu, -4.375000e+00
  %i.ew = fptrunc nsz double %i.ev to float       ; 2 uses
  %i.ex = fsub nsz double f0x3CC34DB9C7DE44A8, %i.et
  %i.ey = fptrunc nsz double %i.ex to float       ; 2 uses
  store float %i.ew, ptr %2, align 16, !tbaa !120
  store float %i.ey, ptr %i.af, align 8, !tbaa !45
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.fa = fpext nsz float %i.ah to double         ; 2 uses
  %i.fb = fmul nsz double %i.fa, f0xBCA1A62633145C07
  %i.fc = fadd nsz double %i.fb, -4.375000e+00
  %i.fd = fptrunc nsz double %i.fc to float       ; 2 uses
  %i.fe = fsub nsz double f0x3CC34DB9C7DE44A8, %i.fa
  %i.ff = fptrunc nsz double %i.fe to float       ; 2 uses
  store float %i.fd, ptr %i.ag, align 4, !tbaa !120
  store float %i.ff, ptr %i.ez, align 4, !tbaa !45
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 32
  store float %i.fd, ptr %i.am, align 8, !tbaa !120
  store float %i.ff, ptr %i.fg, align 16, !tbaa !45
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 44
  store float %i.ew, ptr %i.ap, align 4, !tbaa !120
  store float %i.ey, ptr %i.fh, align 4, !tbaa !45
  br label %.split74.us

.split.us81.preheader:                            ; preds = %bb.a
  %i.fi = fpext nsz float %i.ad to double
  %i.fj = fmul nsz double %i.fi, 0.000000e+00
  %i.fk = fsub nsz double 4.375000e+00, %i.fj
  %i.fl = fptrunc nsz double %i.fk to float       ; 2 uses
  store float %i.fl, ptr %2, align 16, !tbaa !120
  store float %i.ad, ptr %i.af, align 8, !tbaa !45
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.fn = fpext nsz float %i.ah to double
  %i.fo = fmul nsz double %i.fn, 0.000000e+00
  %i.fp = fsub nsz double 4.375000e+00, %i.fo
  %i.fq = fptrunc nsz double %i.fp to float       ; 2 uses
  store float %i.fq, ptr %i.ag, align 4, !tbaa !120
  store float %i.ah, ptr %i.fm, align 4, !tbaa !45
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 32
  store float %i.fq, ptr %i.am, align 8, !tbaa !120
  store float %i.ah, ptr %i.fr, align 16, !tbaa !45
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 44
  store float %i.fl, ptr %i.ap, align 4, !tbaa !120
  store float %i.ad, ptr %i.fs, align 4, !tbaa !45
  br label %.split74.us

.split.us75.preheader:                            ; preds = %bb.a
  %i.ft = fpext nsz float %i.ad to double         ; 2 uses
  %i.fu = fadd nsz double %i.ft, f0x3CB34DB9C7DE44A8
  %i.fv = fptrunc nsz double %i.fu to float       ; 2 uses
  %i.fw = fmul nsz double %i.ft, f0x3C91A62633145C07
  %i.fx = fadd nsz double %i.fw, -4.375000e+00
  %i.fy = fptrunc nsz double %i.fx to float       ; 2 uses
  store float %i.fv, ptr %2, align 16, !tbaa !120
  store float %i.fy, ptr %i.ae, align 4, !tbaa !117
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %i.fv, ptr %i.ag, align 4, !tbaa !120
  store float %i.fy, ptr %i.fz, align 16, !tbaa !117
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.gb = fpext nsz float %i.ah to double         ; 2 uses
  %i.gc = fadd nsz double %i.gb, f0x3CB34DB9C7DE44A8
  %i.gd = fptrunc nsz double %i.gc to float       ; 2 uses
  %i.ge = fmul nsz double %i.gb, f0x3C91A62633145C07
  %i.gf = fadd nsz double %i.ge, -4.375000e+00
  %i.gg = fptrunc nsz double %i.gf to float       ; 2 uses
  store float %i.gd, ptr %i.am, align 8, !tbaa !120
  store float %i.gg, ptr %i.ga, align 4, !tbaa !117
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 40
  store float %i.gd, ptr %i.ap, align 4, !tbaa !120
  store float %i.gg, ptr %i.gh, align 8, !tbaa !117
  br label %.split74.us

.split.us.preheader:                              ; preds = %bb.a
  %i.gi = fpext nsz float %i.ad to double         ; 2 uses
  %i.gj = fsub nsz double f0x3CB34DB9C7DE44A8, %i.gi
  %i.gk = fptrunc nsz double %i.gj to float       ; 2 uses
  %i.gl = fmul nsz double %i.gi, f0x3C91A62633145C07
  %i.gm = fadd nsz double %i.gl, 4.375000e+00
  %i.gn = fptrunc nsz double %i.gm to float       ; 2 uses
  store float %i.gk, ptr %2, align 16, !tbaa !120
  store float %i.gn, ptr %i.ae, align 4, !tbaa !117
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %i.gk, ptr %i.ag, align 4, !tbaa !120
  store float %i.gn, ptr %i.go, align 16, !tbaa !117
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.gq = fpext nsz float %i.ah to double         ; 2 uses
  %i.gr = fsub nsz double f0x3CB34DB9C7DE44A8, %i.gq
  %i.gs = fptrunc nsz double %i.gr to float       ; 2 uses
  %i.gt = fmul nsz double %i.gq, f0x3C91A62633145C07
  %i.gu = fadd nsz double %i.gt, 4.375000e+00
  %i.gv = fptrunc nsz double %i.gu to float       ; 2 uses
  store float %i.gs, ptr %i.am, align 8, !tbaa !120
  store float %i.gv, ptr %i.gp, align 4, !tbaa !117
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 40
  store float %i.gs, ptr %i.ap, align 4, !tbaa !120
  store float %i.gv, ptr %i.gw, align 8, !tbaa !117
  br label %.split74.us

.split74.us:                                      ; preds = %bb.a, %.split.us111.preheader, %.split.us105.preheader, %.split.us99.preheader, %.split.us93.preheader, %.split.us87.preheader, %.split.us81.preheader, %.split.us75.preheader, %.split.us.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i16 0, ptr %3, align 2, !tbaa !41
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 0, ptr %i.gx, align 2, !tbaa !42
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i16 0, ptr %i.gy, align 2, !tbaa !43
  call void @_ZN21MapblockMeshGenerator8drawQuadERK8TileSpecPN4core8vector3dIfEERKNS4_IsEEf(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull %2, ptr noundef nonnull align 2 dereferenceable(6) %3, float noundef 1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21MapblockMeshGenerator17drawPlantlikeQuadERK8TileSpecffb(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, float noundef %2, float noundef %3, i1 noundef zeroext %4) local_unnamed_addr #4 align 2 {
bb.a:
  %5 = alloca [4 x %"class.core::vector3d.0"], align 16 ; 27 uses
  %6 = alloca %"class.core::vector3d", align 2    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 476
  %i.b = load float, ptr %i.a, align 4, !tbaa !159 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.c = fneg nsz float %i.b
  %i.d = fpext nsz float %i.b to double           ; 3 uses
  %i.e = fmul nsz double %i.d, 2.000000e+00
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 492 ; 2 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !160
  %i.h = fpext nsz float %i.g to double
  %i.i = tail call nsz double @llvm.fmuladd.f64(double %i.e, double %i.h, double -5.000000e+00)
  %i.j = fptrunc nsz double %i.i to float
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.k, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 20
  store float 0.000000e+00, ptr %i.m, align 4, !tbaa !45
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 32
  store float 0.000000e+00, ptr %i.o, align 16, !tbaa !45
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 44
  store float 0.000000e+00, ptr %i.q, align 4, !tbaa !45
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.s = load i8, ptr %i.r, align 4, !tbaa !161, !range !106, !noundef !107
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !162  ; 2 uses
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 8, !tbaa !162
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load i16, ptr %i.x, align 8, !tbaa !154
  %i.z = sext i16 %i.y to i32
  %i.aa = shl nsw i32 %i.z, 16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ac = load i16, ptr %i.ab, align 4, !tbaa !153
  %i.ad = sext i16 %i.ac to i32
  %i.ae = shl nsw i32 %i.ad, 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !163
  %i.ah = zext i16 %i.ag to i32
  %i.ai = shl i32 %i.ah, 24
  %i.aj = or i32 %i.aa, %i.ae
  %i.ak = or i32 %i.aj, %i.ai
  %i.al = or i32 %i.ak, %i.v
  %i.am = mul i32 %i.al, 1103515245
  %i.an = add i32 %i.am, 12345
  %i.ao = sdiv i32 %i.an, 65536
  %i.ap = and i32 %i.ao, 15
  %i.aq = uitofp nsz nneg i32 %i.ap to double
  %i.ar = fmul nnan nsz double %i.aq, 6.250000e-02
  %i.as = fmul nnan nsz double %i.ar, 1.250000e-01
  %i.at = fmul nnan nsz double %i.as, -1.000000e+01
  %i.au = fptrunc nsz double %i.at to float
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 468
  store float %i.au, ptr %i.av, align 4, !tbaa !164
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %wide.trip.count = select i1 %4, i64 2, i64 4   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 2         ; 2 uses
  br i1 %4, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.c
  %unroll_iter = and i64 %wide.trip.count, 4
  br label %bb.e

.preheader91.unr-lcssa:                           ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader91, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader91.unr-lcssa, %bb.c
  %indvars.iv.epil.init = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.3, %.preheader91.unr-lcssa ]
  %lcmp.mod126 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod126)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.aw = getelementptr inbounds nuw [12 x i8], ptr %5, i64 %indvars.iv.epil
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !45
  %i.az = fadd nsz float %3, %i.ay
  store float %i.az, ptr %i.ax, align 4, !tbaa !45
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 2
  br i1 %epil.iter.cmp.not, label %.preheader91, label %bb.d, !llvm.loop !228

.preheader91:                                     ; preds = %bb.d, %.preheader91.unr-lcssa
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.bb = load float, ptr %i.ba, align 8, !tbaa !165
  %i.bc = fadd nsz float %2, %i.bb
  %i.bd = fpext nsz float %i.bc to double
  %i.be = fmul nsz double %i.bd, f0x3F91DF46A2529D39
  %sincos.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.be) ; 2 uses
  %sin.i = extractvalue { double, double } %sincos.i, 0 ; 2 uses
  %cos.i = extractvalue { double, double } %sincos.i, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !120 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.bj = load float, ptr %i.k, align 8, !tbaa !45
  %i.bk = fpext nsz float %i.c to double          ; 2 uses
  %i.bl = fpext nsz float %i.bj to double         ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.bn = insertelement <2 x double> poison, double %cos.i, i64 0 ; 2 uses
  %i.bo = insertelement <2 x double> %i.bn, double %sin.i, i64 1 ; 3 uses
  %i.bp = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.bq = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.br = insertelement <2 x double> %i.bq, double %i.d, i64 1 ; 2 uses
  %i.bs = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.bv = load <1 x float>, ptr %i.bh, align 4
  %i.bw = load float, ptr %i.bi, align 8, !tbaa !45 ; 2 uses
  %i.bx = shufflevector <1 x float> %i.bv, <1 x float> poison, <2 x i32> zeroinitializer
  %i.by = insertelement <2 x float> <float poison, float -5.000000e+00>, float %i.j, i64 0
  %i.bz = fadd nsz <2 x float> %i.bx, %i.by       ; 9 uses
  %i.ca = extractelement <2 x float> %i.bz, i64 0 ; 3 uses
  %i.cb = load <4 x float>, ptr %i.bm, align 4, !tbaa !45
  %i.cc = shufflevector <4 x float> %i.cb, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.cd = fpext <2 x float> %i.cc to <2 x double> ; 3 uses
  %i.ce = fneg nsz <2 x double> %i.cd
  %i.cf = shufflevector <2 x double> %i.bp, <2 x double> %i.ce, <2 x i32> <i32 0, i32 2>
  %i.cg = fmul nsz <2 x double> %i.bo, %i.cf
  %i.ch = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> %i.bs, <2 x double> %i.cg)
  %i.ci = fptrunc <2 x double> %i.ch to <2 x float>
  %i.cj = insertelement <2 x float> poison, float %i.bw, i64 0 ; 2 uses
  %i.ck = insertelement <2 x float> %i.cj, float %i.bg, i64 1
  %i.cl = fadd nsz <2 x float> %i.ck, %i.ci       ; 9 uses
  %i.cm = shufflevector <2 x float> %i.bz, <2 x float> %i.cl, <4 x i32> <i32 poison, i32 0, i32 2, i32 3>
  store float %i.ca, ptr %i.bt, align 16, !tbaa !117
  %i.cn = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.co = fmul nsz <2 x double> %i.cn, %i.cd
  %i.cp = insertelement <2 x double> poison, double %i.d, i64 0
  %i.cq = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cr = insertelement <2 x double> poison, double %sin.i, i64 0
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ct = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cq, <2 x double> %i.cs, <2 x double> %i.co)
  %i.cu = fptrunc <2 x double> %i.ct to <2 x float>
  %i.cv = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = fadd nsz <2 x float> %i.cv, %i.cu       ; 7 uses
  %i.cx = insertelement <2 x double> %i.cd, double %i.bl, i64 0
  %i.cy = fneg nsz <2 x double> %i.cx
  %i.cz = fmul nsz <2 x double> %i.cs, %i.cy
  %i.da = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> %i.cn, <2 x double> %i.cz)
  %i.db = fptrunc <2 x double> %i.da to <2 x float>
  %i.dc = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.de = fadd nsz <2 x float> %i.dd, %i.db       ; 10 uses
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dg = shufflevector <4 x float> %i.df, <4 x float> %i.cm, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  store <4 x float> %i.dg, ptr %5, align 16, !tbaa !44
  %i.dh = shufflevector <2 x float> %i.cw, <2 x float> %i.bz, <4 x i32> <i32 0, i32 poison, i32 3, i32 1>
  %i.di = shufflevector <4 x float> %i.dh, <4 x float> %i.df, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  store <4 x float> %i.di, ptr %i.bm, align 4, !tbaa !44
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 2 uses
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !45
  %i.dl = fpext nsz float %i.dk to double         ; 2 uses
  %i.dm = fneg nsz double %i.dl
  %i.dn = insertelement <2 x double> poison, double %i.dl, i64 0
  %i.do = insertelement <2 x double> %i.dn, double %i.dm, i64 1
  %i.dp = fmul nsz <2 x double> %i.bo, %i.do
  %i.dq = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ds = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dr, <2 x double> %i.bs, <2 x double> %i.dp) ; 2 uses
  %i.dt = extractelement <2 x double> %i.ds, i64 1
  %i.du = fptrunc nsz double %i.dt to float
  %i.dv = extractelement <2 x double> %i.ds, i64 0
  %i.dw = fptrunc nsz double %i.dv to float
  %i.dx = fadd nsz float %i.bg, %i.du             ; 5 uses
  %i.dy = insertelement <2 x float> %i.bz, float %i.dx, i64 0 ; 2 uses
  store <2 x float> %i.dy, ptr %i.p, align 4, !tbaa !44
  %i.dz = fadd nsz float %i.bw, %i.dw             ; 5 uses
  store float %i.dz, ptr %i.dj, align 4, !tbaa !45
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !40
  %i.ed = tail call noundef zeroext i8 @_ZNK7MapNode14getWallMountedEPK14NodeDefManager(ptr noundef nonnull align 4 dereferenceable(4) %i.ea, ptr noundef %i.ec)
  switch i8 %i.ed, label %.loopexit [
    i8 5, label %.preheader.split.us114.preheader
    i8 0, label %.preheader.split.us.preheader
    i8 2, label %.preheader.split.us96.preheader
    i8 3, label %.preheader.split.us102.preheader
    i8 4, label %.preheader.split.us108.preheader
  ]

bb.e:                                             ; preds = %bb.e, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.3, %bb.e ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.e ]
  %i.ee = getelementptr inbounds nuw [12 x i8], ptr %5, i64 %indvars.iv
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 2 uses
  %i.eg = load float, ptr %i.ef, align 8, !tbaa !45
  %i.eh = fadd nsz float %3, %i.eg
  store float %i.eh, ptr %i.ef, align 8, !tbaa !45
  %i.ei = getelementptr inbounds nuw [12 x i8], ptr %5, i64 %indvars.iv
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 20 ; 2 uses
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !45
  %i.el = fadd nsz float %3, %i.ek
  store float %i.el, ptr %i.ej, align 4, !tbaa !45
  %i.em = getelementptr inbounds nuw [12 x i8], ptr %5, i64 %indvars.iv
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 32 ; 2 uses
  %i.eo = load float, ptr %i.en, align 16, !tbaa !45
  %i.ep = fadd nsz float %3, %i.eo
  store float %i.ep, ptr %i.en, align 16, !tbaa !45
  %i.eq = getelementptr inbounds nuw [12 x i8], ptr %5, i64 %indvars.iv
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 44 ; 2 uses
  %i.es = load float, ptr %i.er, align 4, !tbaa !45
  %i.et = fadd nsz float %3, %i.es
  store float %i.et, ptr %i.er, align 4, !tbaa !45
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader91.unr-lcssa, label %bb.e, !llvm.loop !229

.preheader.split.us114.preheader:                 ; preds = %.preheader91
  %i.eu = fpext <2 x float> %i.bz to <2 x double> ; 5 uses
  %i.ev = fpext <2 x float> %i.cl to <2 x double> ; 3 uses
  %i.ew = extractelement <2 x double> %i.ev, i64 0
  %i.ex = fneg nsz double %i.ew
  %i.ey = extractelement <2 x double> %i.eu, i64 0
  %i.ez = tail call nsz double @llvm.fmuladd.f64(double %i.ey, double f0x3C91A62633145C07, double %i.ex)
  %i.fa = fptrunc nsz double %i.ez to float
  %i.fb = extractelement <2 x float> %i.de, i64 0
  %i.fc = fpext nsz float %i.fb to double         ; 2 uses
  %i.fd = fpext nsz float %i.fa to double         ; 2 uses
  %i.fe = fneg nsz double %i.fd
  %i.ff = tail call nsz double @llvm.fmuladd.f64(double %i.fc, double f0x3C91A62633145C07, double %i.fe)
  %i.fg = fmul nsz double %i.fd, f0x3C91A62633145C07
  %i.fh = fadd nsz double %i.fg, %i.fc
  %i.fi = insertelement <4 x double> poison, double %i.ff, i64 0
  %i.fj = insertelement <4 x double> %i.fi, double %i.fh, i64 1
  %i.fk = fpext <2 x float> %i.cw to <2 x double> ; 3 uses
  %i.fl = fmul nsz <2 x double> %i.ev, <double f0x3C91A62633145C07, double 1.000000e+00>
  %i.fm = extractelement <2 x float> %i.de, i64 1
  %i.fn = fpext nsz float %i.fm to double         ; 2 uses
  %i.fo = shufflevector <2 x double> %i.ev, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fp = shufflevector <4 x double> <double poison, double poison, double -0.000000e+00, double poison>, <4 x double> %i.fo, <4 x i32> <i32 5, i32 poison, i32 2, i32 poison>
  %i.fq = shufflevector <2 x double> %i.eu, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fr = shufflevector <4 x double> %i.fp, <4 x double> %i.fq, <4 x i32> <i32 0, i32 4, i32 2, i32 poison>
  %i.fs = insertelement <4 x double> %i.fr, double %i.fn, i64 3
  %i.ft = fneg nsz <2 x double> %i.fk
  %i.fu = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eu, <2 x double> splat (double f0x3C91A62633145C07), <2 x double> %i.ft) ; 2 uses
  %i.fv = extractelement <2 x double> %i.fu, i64 1
  %i.fw = fptrunc nsz double %i.fv to float
  %i.fx = insertelement <2 x float> poison, float %i.fw, i64 0
  %i.fy = insertelement <2 x float> %i.fx, float %i.dz, i64 1
  %i.fz = fpext <2 x float> %i.fy to <2 x double> ; 2 uses
  %i.ga = fneg nsz <2 x double> %i.fz
  %i.gb = insertelement <2 x double> %i.eu, double %i.fn, i64 0
  %i.gc = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gb, <2 x double> splat (double f0x3C91A62633145C07), <2 x double> %i.ga) ; 2 uses
  %i.gd = shufflevector <2 x double> %i.gc, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ge = shufflevector <2 x double> %i.fz, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gf = fpext nsz float %i.dx to double         ; 2 uses
  %i.gg = shufflevector <2 x double> %i.fu, <2 x double> %i.gc, <2 x i32> <i32 0, i32 3>
  %i.gh = fptrunc <2 x double> %i.gg to <2 x float>
  %i.gi = fpext <2 x float> %i.gh to <2 x double> ; 3 uses
  %i.gj = fneg nsz <2 x double> %i.gi             ; 2 uses
  %i.gk = shufflevector <2 x double> %i.eu, <2 x double> %i.gj, <2 x i32> <i32 0, i32 2>
  %i.gl = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fl, <2 x double> <double 1.000000e+00, double f0x3C91A62633145C07>, <2 x double> %i.gk)
  %i.gm = shufflevector <2 x double> %i.gl, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gn = shufflevector <4 x double> %i.fj, <4 x double> %i.gm, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.go = fptrunc <4 x double> %i.gn to <4 x float>
  store <4 x float> %i.go, ptr %5, align 16, !tbaa !44
  %i.gp = shufflevector <2 x double> %i.gi, <2 x double> %i.fk, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.gq = shufflevector <4 x double> %i.gp, <4 x double> %i.gd, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.gr = shufflevector <4 x double> %i.gq, <4 x double> %i.ge, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.gs = fmul nsz <4 x double> %i.gr, <double f0x3C91A62633145C07, double f0x3C91A62633145C07, double 1.000000e+00, double f0x3C91A62633145C07>
  %i.gt = fadd nsz <4 x double> %i.gs, %i.fs
  %i.gu = fptrunc <4 x double> %i.gt to <4 x float>
  store <4 x float> %i.gu, ptr %i.bt, align 16, !tbaa !44
  %i.gv = extractelement <2 x double> %i.gj, i64 1
  %i.gw = tail call nsz double @llvm.fmuladd.f64(double %i.gf, double f0x3C91A62633145C07, double %i.gv)
  %i.gx = shufflevector <2 x double> %i.fk, <2 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.gy = insertelement <4 x double> %i.gx, double %i.gw, i64 1
  %i.gz = shufflevector <2 x double> %i.gi, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ha = shufflevector <4 x double> %i.gy, <4 x double> %i.gz, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.hb = shufflevector <4 x double> %i.ha, <4 x double> %i.ge, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.hc = fmul nsz <4 x double> %i.hb, <double f0x3C91A62633145C07, double 1.000000e+00, double f0x3C91A62633145C07, double f0x3C91A62633145C07>
  %i.hd = shufflevector <4 x double> <double poison, double -0.000000e+00, double poison, double poison>, <4 x double> %i.fq, <4 x i32> <i32 5, i32 1, i32 poison, i32 poison>
  %i.he = insertelement <4 x double> %i.hd, double %i.gf, i64 2
  %i.hf = shufflevector <4 x double> %i.he, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.hg = fadd nsz <4 x double> %i.hc, %i.hf
  %i.hh = fptrunc <4 x double> %i.hg to <4 x float>
  store <4 x float> %i.hh, ptr %i.bu, align 16, !tbaa !44
  br label %.loopexit

.preheader.split.us108.preheader:                 ; preds = %.preheader91
  %i.hi = fpext <2 x float> %i.de to <2 x double> ; 3 uses
  %i.hj = extractelement <2 x float> %i.cw, i64 0
  %i.hk = extractelement <2 x float> %i.cl, i64 1
  %i.hl = fpext nsz float %i.hj to double         ; 2 uses
  %i.hm = fpext nsz float %i.hk to double         ; 2 uses
  %i.hn = insertelement <2 x double> poison, double %i.hm, i64 0
  %i.ho = fpext nsz float %i.dz to double         ; 2 uses
  %i.hp = fpext <2 x float> %i.dy to <2 x double> ; 5 uses
  %i.hq = fpext nsz float %i.ca to double         ; 3 uses
  %i.hr = shufflevector <2 x float> %i.cl, <2 x float> %i.cw, <2 x i32> <i32 0, i32 3>
  %i.hs = fpext <2 x float> %i.hr to <2 x double> ; 3 uses
  %i.ht = insertelement <2 x double> poison, double %i.hq, i64 0
  %i.hu = shufflevector <2 x double> %i.ht, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hv = insertelement <2 x double> %i.hs, double %i.hl, i64 1
  %i.hw = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hu, <2 x double> splat (double f0x3C91A62633145C07), <2 x double> %i.hv)
  %i.hx = fptrunc <2 x double> %i.hw to <2 x float>
  %i.hy = fpext <2 x float> %i.hx to <2 x double> ; 3 uses
  %i.hz = fneg nsz <2 x double> %i.hy             ; 2 uses
  %i.ia = extractelement <2 x double> %i.hz, i64 0
  %i.ib = extractelement <2 x double> %i.hi, i64 0
  %i.ic = tail call nsz double @llvm.fmuladd.f64(double %i.ib, double f0x3C91A62633145C07, double %i.ia)
  %i.id = extractelement <2 x double> %i.hz, i64 1
  %i.ie = tail call nsz double @llvm.fmuladd.f64(double %i.hm, double f0x3C91A62633145C07, double %i.id)
  %i.if = shufflevector <2 x double> %i.hy, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ig = insertelement <2 x double> %i.if, double %i.hl, i64 1
  %i.ih = fmul nsz <2 x double> %i.ig, splat (double f0x3C91A62633145C07) ; 2 uses
  %i.ii = insertelement <2 x double> %i.hn, double %i.hq, i64 1 ; 2 uses
  %i.ij = fadd nsz <2 x double> %i.ih, %i.ii
  %i.ik = fsub nsz <2 x double> %i.ih, %i.ii
  %i.il = insertelement <4 x double> poison, double %i.ic, i64 0
  %i.im = fmul nsz <2 x double> %i.hs, splat (double f0x3C91A62633145C07)
  %i.in = insertelement <2 x double> %i.hp, double %i.hq, i64 0
  %i.io = fsub nsz <2 x double> %i.im, %i.in      ; 2 uses
  %i.ip = shufflevector <2 x double> %i.io, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.iq = shufflevector <2 x double> %i.ij, <2 x double> %i.ik, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.ir = shufflevector <2 x double> %i.hp, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.is = shufflevector <2 x double> %i.hs, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.it = insertelement <2 x double> %i.is, double %i.ho, i64 1
  %i.iu = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ir, <2 x double> splat (double f0x3C91A62633145C07), <2 x double> %i.it)
  %i.iv = fptrunc <2 x double> %i.iu to <2 x float>
  %i.iw = fpext <2 x float> %i.iv to <2 x double> ; 3 uses
  %i.ix = fneg nsz <2 x double> %i.iw             ; 2 uses
  %i.iy = extractelement <2 x double> %i.ix, i64 0
  %i.iz = extractelement <2 x double> %i.hi, i64 1
  %i.ja = tail call nsz double @llvm.fmuladd.f64(double %i.iz, double f0x3C91A62633145C07, double %i.iy)
  %i.jb = shufflevector <2 x double> %i.hy, <2 x double> %i.iw, <2 x i32> <i32 0, i32 2>
  %i.jc = fmul nsz <2 x double> %i.jb, splat (double f0x3C91A62633145C07)
  %i.jd = fadd nsz <2 x double> %i.jc, %i.hi
  %i.je = shufflevector <2 x double> %i.jd, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.jf = shufflevector <4 x double> %i.il, <4 x double> %i.je, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.jg = shufflevector <4 x double> %i.jf, <4 x double> %i.ip, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.jh = insertelement <4 x double> %i.jg, double %i.ie, i64 3
  %i.ji = fptrunc <4 x double> %i.jh to <4 x float>
  store <4 x float> %i.ji, ptr %5, align 16, !tbaa !44
  %i.jj = insertelement <4 x double> %i.iq, double %i.ja, i64 2
  %i.jk = shufflevector <4 x double> %i.jj, <4 x double> %i.je, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.jl = fptrunc <4 x double> %i.jk to <4 x float>
  store <4 x float> %i.jl, ptr %i.bt, align 16, !tbaa !44
  %i.jm = extractelement <2 x double> %i.hp, i64 0
  %i.jn = extractelement <2 x double> %i.ix, i64 1
  %i.jo = tail call nsz double @llvm.fmuladd.f64(double %i.jm, double f0x3C91A62633145C07, double %i.jn)
  %i.jp = shufflevector <2 x double> %i.iw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.jq = insertelement <2 x double> %i.jp, double %i.ho, i64 1
  %i.jr = fmul nsz <2 x double> %i.jq, splat (double f0x3C91A62633145C07) ; 2 uses
  %i.js = fadd nsz <2 x double> %i.jr, %i.hp
  %i.jt = fsub nsz <2 x double> %i.jr, %i.hp
  %i.ju = shufflevector <2 x double> %i.io, <2 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.jv = insertelement <4 x double> %i.ju, double %i.jo, i64 1
  %i.jw = shufflevector <2 x double> %i.js, <2 x double> %i.jt, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.jx = shufflevector <4 x double> %i.jv, <4 x double> %i.jw, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.jy = fptrunc <4 x double> %i.jx to <4 x float>
  store <4 x float> %i.jy, ptr %i.bu, align 16, !tbaa !44
  br label %.loopexit

.preheader.split.us102.preheader:                 ; preds = %.preheader91
  %i.jz = extractelement <2 x float> %i.de, i64 0
  %i.ka = fpext nsz float %i.jz to double         ; 2 uses
  %i.kb = fpext nsz float %i.ca to double         ; 2 uses
  %i.kc = fmul nsz double %i.kb, f0x3C91A62633145C07 ; 2 uses
  %i.kd = fsub nsz double %i.kc, %i.ka
  %i.ke = fptrunc nsz double %i.kd to float
  %i.kf = insertelement <2 x float> %i.cl, float %i.ke, i64 0
  %i.kg = fpext <2 x float> %i.kf to <2 x double> ; 3 uses
  %i.kh = extractelement <2 x double> %i.kg, i64 1
  %i.ki = fsub nsz double %i.kc, %i.kh
  %i.kj = fptrunc nsz double %i.ki to float
  %i.kk = extractelement <2 x double> %i.kg, i64 0
  %i.kl = insertelement <4 x double> <double poison, double -0.000000e+00, double poison, double poison>, double %i.ka, i64 0
  %i.km = shufflevector <2 x double> %i.kg, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.kn = shufflevector <4 x double> %i.kl, <4 x double> %i.km, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ko = insertelement <4 x double> poison, double %i.kb, i64 0
  %i.kp = extractelement <2 x float> %i.bz, i64 1
  %i.kq = fpext nsz float %i.kp to double         ; 3 uses
  %i.kr = fmul nsz double %i.kq, f0x3C91A62633145C07 ; 2 uses
  %i.ks = insertelement <2 x float> %i.de, float %i.kj, i64 0
  %i.kt = fpext <2 x float> %i.ks to <2 x double> ; 3 uses
  %i.ku = extractelement <2 x double> %i.kt, i64 1
  %i.kv = fsub nsz double %i.kr, %i.ku
  %i.kw = fptrunc nsz double %i.kv to float
  %i.kx = fpext nsz float %i.kw to double         ; 2 uses
  %i.ky = extractelement <2 x double> %i.kt, i64 0
  %i.kz = fpext nsz float %i.dx to double         ; 2 uses
  %i.la = fsub nsz double %i.kr, %i.kz
  %i.lb = fptrunc nsz double %i.la to float
  %i.lc = fpext nsz float %i.lb to double         ; 2 uses
  %i.ld = shufflevector <2 x float> %i.cl, <2 x float> %i.cw, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.le = insertelement <4 x float> %i.ld, float %i.dz, i64 3
  %i.lf = fpext <4 x float> %i.le to <4 x double> ; 5 uses
  %i.lg = extractelement <4 x double> %i.lf, i64 0
  %i.lh = fmul nsz double %i.lg, f0xBCA1A62633145C07
  %i.li = fsub nsz double %i.lh, %i.kk
  %i.lj = insertelement <4 x double> %i.ko, double %i.li, i64 1
  %i.lk = fneg nsz <4 x double> %i.lf             ; 3 uses
  %i.ll = shufflevector <4 x double> %i.lj, <4 x double> %i.lk, <4 x i32> <i32 0, i32 1, i32 4, i32 0>
  %i.lm = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kn, <4 x double> <double f0x3C91A62633145C07, double 0.000000e+00, double f0x3CA1A62633145C07, double f0x3C91A62633145C07>, <4 x double> %i.ll)
  %i.ln = fptrunc <4 x double> %i.lm to <4 x float>
  store <4 x float> %i.ln, ptr %5, align 16, !tbaa !44
  %i.lo = extractelement <4 x double> %i.lf, i64 1
  %i.lp = fmul nsz double %i.lo, f0xBCA1A62633145C07
  %i.lq = extractelement <4 x double> %i.lf, i64 2
  %i.lr = fmul nsz double %i.lq, f0xBCA1A62633145C07
  %i.ls = fsub nsz double %i.lp, %i.ky
  %i.lt = shufflevector <4 x double> %i.lk, <4 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.lu = insertelement <2 x double> %i.lt, double %i.kq, i64 1
  %i.lv = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kt, <2 x double> <double f0x3CA1A62633145C07, double f0x3C91A62633145C07>, <2 x double> %i.lu)
  %i.lw = fsub nsz double %i.lr, %i.kx
  %i.lx = insertelement <4 x double> poison, double %i.ls, i64 0
  %i.ly = shufflevector <2 x double> %i.lv, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.lz = shufflevector <4 x double> %i.lx, <4 x double> %i.ly, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ma = insertelement <4 x double> %i.lz, double %i.lw, i64 3
  %i.mb = fptrunc <4 x double> %i.ma to <4 x float>
  store <4 x float> %i.mb, ptr %i.bt, align 16, !tbaa !44
  %i.mc = extractelement <4 x double> %i.lf, i64 3
  %i.md = fmul nsz double %i.mc, f0xBCA1A62633145C07
  %i.me = fsub nsz double %i.md, %i.lc
  %i.mf = insertelement <4 x double> <double poison, double poison, double -0.000000e+00, double poison>, double %i.kx, i64 0
  %i.mg = insertelement <4 x double> %i.mf, double %i.kz, i64 1
  %i.mh = insertelement <4 x double> %i.mg, double %i.lc, i64 3
  %i.mi = shufflevector <4 x double> %i.lk, <4 x double> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 3>
  %i.mj = insertelement <4 x double> %i.mi, double %i.kq, i64 1
  %i.mk = insertelement <4 x double> %i.mj, double %i.me, i64 2
  %i.ml = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.mh, <4 x double> <double f0x3CA1A62633145C07, double f0x3C91A62633145C07, double 0.000000e+00, double f0x3CA1A62633145C07>, <4 x double> %i.mk)
  %i.mm = fptrunc <4 x double> %i.ml to <4 x float>
  store <4 x float> %i.mm, ptr %i.bu, align 16, !tbaa !44
  br label %.loopexit

.preheader.split.us96.preheader:                  ; preds = %.preheader91
  %i.mn = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.mo = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.mp = extractelement <2 x float> %i.cl, i64 1
  %i.mq = extractelement <2 x float> %i.de, i64 0
  %i.mr = fpext nsz float %i.mq to double         ; 2 uses
  %i.ms = fpext <2 x float> %i.bz to <2 x double> ; 3 uses
  %i.mt = extractelement <2 x double> %i.ms, i64 0
  %i.mu = fmul nsz double %i.mt, f0x3C91A62633145C07 ; 2 uses
  %i.mv = fadd nsz double %i.mu, %i.mr
  %i.mw = fpext nsz float %i.mp to double         ; 2 uses
  %i.mx = extractelement <2 x float> %i.de, i64 1
  %i.my = fpext nsz float %i.mx to double         ; 2 uses
  %i.mz = fneg nsz <2 x double> %i.ms
  %i.na = shufflevector <2 x double> %i.mz, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.nb = fpext nsz float %i.dx to double         ; 2 uses
  %i.nc = insertelement <4 x double> poison, double %i.mr, i64 0
  %i.nd = insertelement <4 x double> %i.nc, double %i.my, i64 1
  %i.ne = insertelement <4 x double> %i.nd, double %i.mw, i64 2
  %i.nf = insertelement <4 x double> %i.ne, double %i.nb, i64 3
  %i.ng = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.nf, <4 x double> splat (double f0x3C91A62633145C07), <4 x double> %i.na) ; 4 uses
  %i.nh = shufflevector <4 x double> %i.ng, <4 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.ni = insertelement <2 x double> %i.nh, double %i.mv, i64 1
  %i.nj = fptrunc <2 x double> %i.ni to <2 x float>
  store <2 x float> %i.nj, ptr %5, align 16, !tbaa !44
  %i.nk = fadd nsz double %i.mu, %i.mw
  %i.nl = shufflevector <4 x double> %i.ng, <4 x double> poison, <2 x i32> <i32 2, i32 poison>
  %i.nm = insertelement <2 x double> %i.nl, double %i.nk, i64 1
  %i.nn = fptrunc <2 x double> %i.nm to <2 x float>
  store <2 x float> %i.nn, ptr %i.l, align 4, !tbaa !44
  %i.no = extractelement <4 x double> %i.ng, i64 1
  %i.np = fptrunc nsz double %i.no to float
  %i.nq = extractelement <2 x double> %i.ms, i64 1
  %i.nr = fmul nsz double %i.nq, f0x3C91A62633145C07 ; 2 uses
  %i.ns = fadd nsz double %i.nr, %i.my
  %i.nt = fptrunc nsz double %i.ns to float
  store float %i.np, ptr %i.n, align 8, !tbaa !120
  store float %i.nt, ptr %i.mo, align 4, !tbaa !117
  %i.nu = extractelement <4 x double> %i.ng, i64 3
  %i.nv = fptrunc nsz double %i.nu to float
  %i.nw = fadd nsz double %i.nr, %i.nb
  %i.nx = fptrunc nsz double %i.nw to float
  store float %i.nv, ptr %i.p, align 4, !tbaa !120
  store float %i.nx, ptr %i.mn, align 8, !tbaa !117
  br label %.loopexit

.preheader.split.us.preheader:                    ; preds = %.preheader91
  %i.ny = extractelement <2 x float> %i.cl, i64 0
  %i.nz = extractelement <2 x float> %i.cw, i64 0
  %i.oa = extractelement <2 x float> %i.cl, i64 1
  %i.ob = fpext nsz float %i.ny to double         ; 2 uses
  %i.oc = fneg nsz double %i.ob
  %i.od = shufflevector <2 x float> %i.de, <2 x float> %i.bz, <2 x i32> <i32 0, i32 2>
  %i.oe = fpext <2 x float> %i.od to <2 x double> ; 3 uses
  %i.of = extractelement <2 x double> %i.oe, i64 1 ; 2 uses
  %i.og = tail call nsz double @llvm.fmuladd.f64(double %i.of, double f0x3CA1A62633145C07, double %i.oc)
  %i.oh = fptrunc nsz double %i.og to float
  %i.oi = fpext nsz float %i.oh to double         ; 2 uses
  %i.oj = fneg nsz double %i.oi
  %i.ok = extractelement <2 x double> %i.oe, i64 0
  %i.ol = tail call nsz double @llvm.fmuladd.f64(double %i.ok, double f0x3CA1A62633145C07, double %i.oj)
  %i.om = insertelement <4 x double> poison, double %i.oi, i64 0
  %i.on = insertelement <4 x double> %i.om, double %i.ob, i64 1
  %i.oo = insertelement <4 x double> %i.on, double %i.ol, i64 2
  %i.op = shufflevector <2 x double> %i.oe, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.oq = insertelement <4 x double> %i.op, double 0.000000e+00, i64 2
  %i.or = extractelement <2 x float> %i.cw, i64 1
  %i.os = shufflevector <2 x float> %i.bz, <2 x float> %i.de, <2 x i32> <i32 3, i32 1>
  %i.ot = fpext <2 x float> %i.os to <2 x double> ; 4 uses
  %i.ou = fpext nsz float %i.nz to double         ; 2 uses
  %i.ov = fneg nsz double %i.ou
  %i.ow = tail call nsz double @llvm.fmuladd.f64(double %i.of, double f0x3CA1A62633145C07, double %i.ov)
  %i.ox = fptrunc nsz double %i.ow to float
  %i.oy = fpext nsz float %i.oa to double         ; 2 uses
  %i.oz = fpext nsz float %i.ox to double         ; 2 uses
  %i.pa = insertelement <4 x double> %i.oo, double %i.oz, i64 3
  %i.pb = fmul nsz <4 x double> %i.pa, <double f0xBCA1A62633145C07, double f0xBCA1A62633145C07, double 1.000000e+00, double f0xBCA1A62633145C07>
  %i.pc = insertelement <4 x double> %i.oq, double %i.oy, i64 3
  %i.pd = fsub nsz <4 x double> %i.pb, %i.pc
  %i.pe = fptrunc <4 x double> %i.pd to <4 x float>
  %i.pf = fneg nsz double %i.oz
  %i.pg = tail call nsz double @llvm.fmuladd.f64(double %i.oy, double f0x3CA1A62633145C07, double %i.pf)
  store <4 x float> %i.pe, ptr %5, align 16, !tbaa !44
  %i.ph = fpext nsz float %i.or to double         ; 2 uses
  %i.pi = fneg nsz double %i.ph
  %i.pj = extractelement <2 x double> %i.ot, i64 1 ; 2 uses
  %i.pk = tail call nsz double @llvm.fmuladd.f64(double %i.pj, double f0x3CA1A62633145C07, double %i.pi)
  %i.pl = fptrunc nsz double %i.pk to float
  %i.pm = fpext nsz float %i.pl to double         ; 2 uses
  %i.pn = insertelement <4 x double> poison, double %i.ou, i64 0
  %i.po = insertelement <4 x double> %i.pn, double %i.pg, i64 1
  %i.pp = insertelement <4 x double> %i.po, double %i.pm, i64 2
  %i.pq = insertelement <4 x double> %i.pp, double %i.ph, i64 3
  %i.pr = fmul nsz <4 x double> %i.pq, <double f0xBCA1A62633145C07, double 1.000000e+00, double f0xBCA1A62633145C07, double f0xBCA1A62633145C07>
  %i.ps = shufflevector <4 x double> <double poison, double 0.000000e+00, double poison, double poison>, <4 x double> %i.op, <4 x i32> <i32 5, i32 1, i32 poison, i32 poison>
  %i.pt = shufflevector <2 x double> %i.ot, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.pu = shufflevector <4 x double> %i.ps, <4 x double> %i.pt, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.pv = fsub nsz <4 x double> %i.pr, %i.pu
  %i.pw = fptrunc <4 x double> %i.pv to <4 x float>
  %i.px = fneg nsz double %i.pm
  %i.py = extractelement <2 x double> %i.ot, i64 0
  %i.pz = tail call nsz double @llvm.fmuladd.f64(double %i.py, double f0x3CA1A62633145C07, double %i.px)
  store <4 x float> %i.pw, ptr %i.bt, align 16, !tbaa !44
  %i.qa = fpext nsz float %i.dz to double         ; 2 uses
  %i.qb = fneg nsz double %i.qa
  %i.qc = tail call nsz double @llvm.fmuladd.f64(double %i.pj, double f0x3CA1A62633145C07, double %i.qb)
  %i.qd = fptrunc nsz double %i.qc to float
  %i.qe = fpext nsz float %i.dx to double         ; 2 uses
  %i.qf = fpext nsz float %i.qd to double         ; 2 uses
  %i.qg = insertelement <2 x double> poison, double %i.qf, i64 0
  %i.qh = insertelement <2 x double> %i.qg, double %i.qa, i64 1
  %i.qi = fmul nsz <2 x double> %i.qh, splat (double f0xBCA1A62633145C07)
  %i.qj = insertelement <2 x double> %i.ot, double %i.qe, i64 0
  %i.qk = fsub nsz <2 x double> %i.qi, %i.qj
  %i.ql = fneg nsz double %i.qf
  %i.qm = tail call nsz double @llvm.fmuladd.f64(double %i.qe, double f0x3CA1A62633145C07, double %i.ql)
  %i.qn = insertelement <4 x double> poison, double %i.pz, i64 0
  %i.qo = shufflevector <2 x double> %i.qk, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qp = shufflevector <4 x double> %i.qn, <4 x double> %i.qo, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.qq = insertelement <4 x double> %i.qp, double %i.qm, i64 3
  %i.qr = fptrunc <4 x double> %i.qq to <4 x float>
  store <4 x float> %i.qr, ptr %i.bu, align 16, !tbaa !44
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader91, %.preheader.split.us114.preheader, %.preheader.split.us108.preheader, %.preheader.split.us102.preheader, %.preheader.split.us96.preheader, %.preheader.split.us.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i16 0, ptr %6, align 2, !tbaa !41
  %i.qs = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i16 0, ptr %i.qs, align 2, !tbaa !42
  %i.qt = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i16 0, ptr %i.qt, align 2, !tbaa !43
  %i.qu = load float, ptr %i.f, align 4, !tbaa !160
  call void @_ZN21MapblockMeshGenerator8drawQuadERK8TileSpecPN4core8vector3dIfEERKNS4_IsEEf(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull %5, ptr noundef nonnull align 2 dereferenceable(6) %6, float noundef %i.qu)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21MapblockMeshGenerator13drawPlantlikeERK8TileSpecb(ptr noundef nonnull align 8 dereferenceable(496) initializes((460, 485), (488, 496)) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i1 noundef zeroext %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 468 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.g = load float, ptr %i.f, align 8, !tbaa !118
  %i.h = fmul nsz float %i.g, 5.000000e+00        ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 476 ; 2 uses
  store float %i.h, ptr %i.i, align 4, !tbaa !159
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  store float 0.000000e+00, ptr %i.j, align 8, !tbaa !165
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 484 ; 2 uses
  store i8 0, ptr %i.k, align 4, !tbaa !161
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i32 0, ptr %i.l, align 8, !tbaa !162
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 492 ; 2 uses
  store float 1.000000e+00, ptr %i.m, align 4, !tbaa !160
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 97
  %i.o = load i8, ptr %i.n, align 1, !tbaa !157
  switch i8 %i.o, label %bb.j [
    i8 7, label %bb.b
    i8 6, label %bb.h
    i8 12, label %bb.h
    i8 5, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 55
  %i.q = load i8, ptr %i.p, align 1, !tbaa !108   ; 4 uses
  %i.r = and i8 %i.q, 7
  %i.s = zext nneg i8 %i.r to i32
  store i32 %i.s, ptr %i.a, align 4, !tbaa !231
  %i.t = and i8 %i.q, 16
  %.not = icmp eq i8 %i.t, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = fpext nsz float %i.h to double
  %i.v = fmul nsz double %i.u, 1.414210e+00
  %i.w = fptrunc nsz double %i.v to float
  store float %i.w, ptr %i.i, align 4, !tbaa !159
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = and i8 %i.q, 8
  %.not17 = icmp eq i8 %i.x, 0
  br i1 %.not17, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load i16, ptr %i.c, align 8, !tbaa !154
  %i.z = sext i16 %i.y to i32
  %i.aa = shl nsw i32 %i.z, 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ac = load i16, ptr %i.ab, align 4, !tbaa !153
  %i.ad = sext i16 %i.ac to i32
  %i.ae = or i32 %i.aa, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !163
  %i.ah = sext i16 %i.ag to i32
  %i.ai = shl nsw i32 %i.ah, 16
  %i.aj = or i32 %i.ae, %i.ai
  %i.ak = mul i32 %i.aj, 1103515245
  %i.al = add i32 %i.ak, 12345                    ; 2 uses
  %i.am = mul i32 %i.al, 1103515245
  %i.an = add i32 %i.am, 12345
  %i.ao = insertelement <2 x i32> poison, i32 %i.al, i64 0
  %i.ap = insertelement <2 x i32> %i.ao, i32 %i.an, i64 1
  %i.aq = sdiv <2 x i32> %i.ap, splat (i32 65536)
  %i.ar = and <2 x i32> %i.aq, splat (i32 15)
  %i.as = uitofp nneg <2 x i32> %i.ar to <2 x double>
  %i.at = fmul nnan nsz <2 x double> %i.as, splat (double 6.250000e-02)
  %i.au = tail call nnan nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> splat (double 2.900000e-01), <2 x double> splat (double -1.450000e-01))
  %i.av = fmul nnan nsz <2 x double> %i.au, splat (double 1.000000e+01)
  %i.aw = fptrunc <2 x double> %i.av to <2 x float> ; 2 uses
  %i.ax = extractelement <2 x float> %i.aw, i64 0
  store float %i.ax, ptr %i.b, align 8, !tbaa !232
  %i.ay = extractelement <2 x float> %i.aw, i64 1
  store float %i.ay, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !233
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.az = and i8 %i.q, 32
  %.not18 = icmp eq i8 %i.az, 0
  br i1 %.not18, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.k, align 4, !tbaa !161
  br label %bb.j

bb.h:                                             ; preds = %bb.a, %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !40
  %i.bd = tail call noundef zeroext i8 @_ZNK7MapNode12getDegRotateEPK14NodeDefManager(ptr noundef nonnull align 4 dereferenceable(4) %i.ba, ptr noundef %i.bc)
  %i.be = uitofp i8 %i.bd to float
  %i.bf = fmul nnan nsz float %i.be, 1.500000e+00
  store float %i.bf, ptr %i.j, align 8, !tbaa !165
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 55
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !108
  %i.bi = uitofp i8 %i.bh to float
  %i.bj = fmul nnan nsz float %i.bi, 6.250000e-02
  store float %i.bj, ptr %i.m, align 4, !tbaa !160
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.f, %bb.g, %bb.i, %bb.h
  br i1 %2, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !40
  %i.bn = tail call noundef zeroext i8 @_ZNK7MapNode14getWallMountedEPK14NodeDefManager(ptr noundef nonnull align 4 dereferenceable(4) %i.bk, ptr noundef %i.bm)
  switch i8 %i.bn, label %bb.m [
    i8 0, label %.sink.split
    i8 3, label %bb.l
    i8 2, label %bb.l
    i8 5, label %bb.l
    i8 4, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k
  %i.bo = load float, ptr %i.b, align 8, !tbaa !232
  %i.bp = fadd nsz float %i.bo, -1.000000e+01
  store float %i.bp, ptr %i.b, align 8, !tbaa !232
  br label %.sink.split

.sink.split:                                      ; preds = %bb.k, %bb.l
  %.sink22 = phi float [ 1.000000e+01, %bb.l ], [ 2.000000e+01, %bb.k ]
  %i.bq = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !164
  %i.br = fadd nsz float %i.bq, %.sink22
  store float %i.br, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !164
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.k, %bb.j
  %i.bs = load i32, ptr %i.a, align 4, !tbaa !231
  switch i32 %i.bs, label %bb.s [
    i32 0, label %bb.n
    i32 1, label %bb.o
    i32 2, label %bb.p
    i32 3, label %bb.q
    i32 4, label %bb.r
  ]

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN21MapblockMeshGenerator17drawPlantlikeQuadERK8TileSpecffb(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, float noundef 4.600000e+01, float noundef 0.000000e+00, i1 noundef zeroext false)
  tail call void @_ZN21MapblockMeshGenerator17drawPlantlikeQuadERK8TileSpecffb(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, float noundef -4.400000e+01, float noundef 0.000000e+00, i1 noundef zeroext false)
  br label %bb.s

bb.o:                                             ; preds = %bb.m
  tail call void @_ZN21MapblockMeshGenerator17drawPlantlikeQuadERK8TileSpecffb(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, float noundef 9.100000e+01, float noundef 0.000000e+00, i1 noundef zeroext false)
  tail call void @_ZN21MapblockMeshGenerator17drawPlantlikeQuadERK8TileSpecffb(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, float noundef 1.000000e+00, float noundef 0.000000e+00, i1 noundef zeroext false)
  br label %bb.s

bb.p:                                             ; preds = %bb.m
  tail call void @_ZN21MapblockMeshGenerator17drawPlantlikeQuadERK8TileSpecffb(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, float noundef 1.210000e+02, float noundef 0.000000e+00, i1 noundef zeroext false)
  tail call void @_ZN21MapblockMeshGenerator17drawPlantlikeQuadERK8TileSpecffb(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, float noundef 2.410000e+02, float noundef 0.000000e+00, i1 noundef zeroext false)
  tail call void @_ZN21MapblockMeshGenerator17drawPlantlikeQuadERK8TileSpecffb(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, float noundef 1.000000e+00, float noundef 0.000000e+00, i1 noundef zeroext false)
  br label %bb.s

bb.q:                                             ; preds = %bb.m
  tail call void @_ZN21MapblockMeshGenerator17drawPlantlikeQuadERK8TileSpecffb(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, float noundef 1.000000e+00, float noundef 2.500000e+00, i1 noundef zeroext false)
  tail call void @_ZN21MapblockMeshGenerator17drawPlantlikeQuadERK8TileSpecffb(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, float noundef 9.100000e+01, float noundef 2.500000e+00, i1 noundef zeroext false)
  tail call void @_ZN21MapblockMeshGenerator17drawPlantlikeQuadERK8TileSpecffb(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, float noundef 1.810000e+02, float noundef 2.500000e+00, i1 noundef zeroext false)
  tail call void @_ZN21MapblockMeshGenerator17drawPlantlikeQuadERK8TileSpecffb(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, float noundef 2.710000e+02, float noundef 2.500000e+00, i1 noundef zeroext false)
  br label %bb.s

bb.r:                                             ; preds = %bb.m
  tail call void @_ZN21MapblockMeshGenerator17drawPlantlikeQuadERK8TileSpecffb(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, float noundef 1.000000e+00, float noundef -5.000000e+00, i1 noundef zeroext true)
  tail call void @_ZN21MapblockMeshGenerator17drawPlantlikeQuadERK8TileSpecffb(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, float noundef 9.100000e+01, float noundef -5.000000e+00, i1 noundef zeroext true)
  tail call void @_ZN21MapblockMeshGenerator17drawPlantlikeQuadERK8TileSpecffb(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, float noundef 1.810000e+02, float noundef -5.000000e+00, i1 noundef zeroext true)
  tail call void @_ZN21MapblockMeshGenerator17drawPlantlikeQuadERK8TileSpecffb(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, float noundef 2.710000e+02, float noundef -5.000000e+00, i1 noundef zeroext true)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  ret void
}

declare noundef zeroext i8 @_ZNK7MapNode12getDegRotateEPK14NodeDefManager(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21MapblockMeshGenerator17drawPlantlikeNodeEv(ptr noundef nonnull align 8 dereferenceable(496) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %struct.TileSpec, align 8           ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store i8 0, ptr %1, align 8, !tbaa !47
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 0, ptr %i.a, align 1, !tbaa !48
  %.ptr.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %.ptr.i, i8 0, i64 18, i1 false)
  store i16 1, ptr %i.b, align 2, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i16 0, ptr %i.c, align 4, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 30
  store <4 x i8> <i8 0, i8 97, i8 1, i8 0>, ptr %i.d, align 2, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr null, ptr %i.e, align 8, !tbaa !56
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 0, ptr %i.f, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i8 0, ptr %i.g, align 4, !tbaa !57
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 74
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %.ptr.1.i, i8 0, i64 18, i1 false)
  store i16 1, ptr %i.h, align 2, !tbaa !53
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i16 0, ptr %i.i, align 4, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 78
  store <4 x i8> <i8 0, i8 97, i8 1, i8 0>, ptr %i.j, align 2, !tbaa !55
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr null, ptr %i.k, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 0, ptr %i.l, align 8, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 100
  store i8 0, ptr %i.m, align 4, !tbaa !57
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.o, align 4
  %i.p = load ptr, ptr %0, align 8, !tbaa !31
  call void @_Z12getNodeTileN7MapNodeRKN4core8vector3dIsEEhP12MeshMakeDataR8TileSpec(i32 %.sroa.0.0.copyload.i.i, ptr noundef nonnull align 2 dereferenceable(6) %i.n, i8 noundef zeroext 0, ptr noundef %i.p, ptr noundef nonnull align 8 dereferenceable(104) %1)
  call void @_ZN21MapblockMeshGenerator13drawPlantlikeERK8TileSpecb(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21MapblockMeshGenerator23drawPlantlikeRootedNodeEv(ptr noundef nonnull align 8 dereferenceable(496) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %class.VoxelArea, align 8           ; 8 uses
  %2 = alloca %"class.core::vector3d", align 8    ; 4 uses
  %3 = alloca %struct.TileSpec, align 8           ; 20 uses
  tail call void @_ZN21MapblockMeshGenerator13drawSolidNodeEv(ptr noundef nonnull align 8 dereferenceable(496) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i8 0, ptr %3, align 8, !tbaa !47
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 0, ptr %i.a, align 1, !tbaa !48
  %.ptr.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %.ptr.i, i8 0, i64 18, i1 false)
  store i16 1, ptr %i.b, align 2, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i16 0, ptr %i.c, align 4, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 30
  store i8 0, ptr %i.d, align 2, !tbaa !156
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 31
  store i8 97, ptr %i.e, align 1, !tbaa !109
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 52
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 100
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !31     ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 58
  %i.m = load i16, ptr %i.j, align 8, !tbaa !41
  %i.n = load i16, ptr %i.l, align 2, !tbaa !41
  %i.o = icmp eq i16 %i.m, %i.n
  br i1 %i.o, label %bb.b, label %_ZNK4core8vector3dIsEeqERKS1_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.q = load i16, ptr %i.p, align 2, !tbaa !42
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 60
  %i.s = load i16, ptr %i.r, align 2, !tbaa !42
  %i.t = icmp eq i16 %i.q, %i.s
  br i1 %i.t, label %bb.c, label %_ZNK4core8vector3dIsEeqERKS1_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.v = load i16, ptr %i.u, align 4, !tbaa !43
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 62
end_hunk_2
begin_hunk_3_@_ZN21MapblockMeshGenerator23drawPlantlikeRootedNodeEv:bb.a

_ZN21MapblockMeshGenerator7useTileEP8TileSpecihhb.exit: ; preds = %bb.i, %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !117
  %i.bc = fadd nsz float %i.bb, 1.000000e+01
  store float %i.bc, ptr %i.ba, align 4, !tbaa !117
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 34 ; 5 uses
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !163
  %i.bf = add i16 %i.be, 1                        ; 2 uses
  store i16 %i.bf, ptr %i.bd, align 2, !tbaa !163
  %i.bg = load ptr, ptr %0, align 8, !tbaa !31    ; 9 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 65
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !114, !range !106, !noundef !107
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.k, label %bb.o

bb.k:                                             ; preds = %_ZN21MapblockMeshGenerator7useTileEP8TileSpecihhb.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store i64 0, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %bb.k
  %indvars.iv.i = phi i64 [ 0, %bb.k ], [ %indvars.iv.next.i, %bb.n ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.br = load i16, ptr %i.bl, align 8, !tbaa !41
  %i.bs = load i16, ptr %i.j, align 8, !tbaa !41
  %i.bt = add i16 %i.bs, %i.br
  %i.bu = load i16, ptr %i.bm, align 2, !tbaa !42
  %i.bv = load i16, ptr %i.bd, align 2, !tbaa !42
  %i.bw = add i16 %i.bv, %i.bu
  %i.bx = load i16, ptr %i.bn, align 4, !tbaa !43
  %i.by = load i16, ptr %i.bo, align 4, !tbaa !43
  %i.bz = add i16 %i.by, %i.bx
  %.sroa.3.0.insert.ext.i.i = zext i16 %i.bz to i48
  %.sroa.3.0.insert.shift.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i.i, 32
  %.sroa.2.0.insert.ext.i.i = zext i16 %i.bw to i48
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i.i, 16
  %.sroa.2.0.insert.insert.i.i = or disjoint i48 %.sroa.3.0.insert.shift.i.i, %.sroa.2.0.insert.shift.i.i
  %.sroa.0.0.insert.ext.i.i = zext i16 %i.bt to i48
  %.sroa.0.0.insert.insert.i.i = or disjoint i48 %.sroa.2.0.insert.insert.i.i, %.sroa.0.0.insert.ext.i.i
  store i48 %.sroa.0.0.insert.insert.i.i, ptr %2, align 8
  %i.ca = getelementptr inbounds nuw [6 x i8], ptr @_ZL10light_dirs, i64 %indvars.iv.i
  %i.cb = load ptr, ptr %0, align 8, !tbaa !31
  %i.cc = call noundef zeroext i16 @_Z25getSmoothLightTransparentRKN4core8vector3dIsEES3_P12MeshMakeData(ptr noundef nonnull align 2 dereferenceable(6) %2, ptr noundef nonnull align 2 dereferenceable(6) %i.ca, ptr noundef %i.cb) ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i16 %i.cc to i8 ; 2 uses
  %.sroa.5.0.extract.shift.i = lshr i16 %i.cc, 8
  %.sroa.5.0.extract.trunc.i = trunc nuw i16 %.sroa.5.0.extract.shift.i to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.cd = uitofp nsz i8 %.sroa.0.0.extract.trunc.i to float
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.i
  store float %i.cd, ptr %i.ce, align 4, !tbaa !44
  %i.cf = uitofp nsz i8 %.sroa.5.0.extract.trunc.i to float
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i
  store float %i.cf, ptr %i.cg, align 4, !tbaa !44
  %i.ch = icmp eq i8 %.sroa.0.0.extract.trunc.i, -1
  br i1 %i.ch, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bk, i64 %indvars.iv.i
  store i8 1, ptr %i.ci, align 1, !tbaa !102
  %i.cj = xor i64 %indvars.iv.i, 2
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.cj
  store i8 1, ptr %i.ck, align 1, !tbaa !102
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 8
  br i1 %exitcond.not.i, label %_ZN21MapblockMeshGenerator19getSmoothLightFrameEv.exit, label %bb.l, !llvm.loop !0

bb.o:                                             ; preds = %_ZN21MapblockMeshGenerator7useTileEP8TileSpecihhb.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cm = load i16, ptr %i.cl, align 8, !tbaa !41
  %i.cn = load i16, ptr %i.j, align 8, !tbaa !41
  %i.co = add i16 %i.cn, %i.cm                    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !42
  %i.cr = add i16 %i.bf, %i.cq                    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ct = load i16, ptr %i.cs, align 4, !tbaa !43
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.cv = load i16, ptr %i.cu, align 4, !tbaa !43
  %i.cw = add i16 %i.cv, %i.ct                    ; 2 uses
  %.sroa.3.0.insert.ext.i = zext i16 %i.cw to i48
  %.sroa.3.0.insert.shift.i = shl nuw i48 %.sroa.3.0.insert.ext.i, 32
  %.sroa.2.0.insert.ext.i = zext i16 %i.cr to i48
  %.sroa.2.0.insert.shift.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i, 16
  %.sroa.0.0.insert.ext.i = zext i16 %i.co to i48
  %i.cx = or disjoint i48 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.3.0.insert.shift.i, %i.cx ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store i48 %.sroa.0.0.insert.insert.i, ptr %1, align 8, !tbaa !121
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i48 %.sroa.0.0.insert.insert.i, ptr %i.cy, align 2, !tbaa !121
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dc = sext i16 %i.cw to i32
  store i32 1, ptr %i.cz, align 4, !tbaa !115
  store i32 1, ptr %i.da, align 8, !tbaa !115
  store i32 1, ptr %i.db, align 4, !tbaa !115
  call void @_ZN16VoxelManipulator7addAreaERK9VoxelArea(ptr noundef nonnull align 8 dereferenceable(48) %i.bg, ptr noundef nonnull align 4 dereferenceable(24) %1)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.df = load i16, ptr %i.de, align 4, !tbaa !123
  %i.dg = sext i16 %i.df to i32
  %i.dh = sub nsw i32 %i.dc, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !124
  %i.dl = mul nsw i32 %i.dh, %i.dk
  %i.dm = load i32, ptr %i.di, align 4, !tbaa !125
  %i.dn = sext i16 %i.cr to i32
  %i.do = getelementptr inbounds nuw i8, ptr %i.bg, i64 10
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !126
  %i.dq = sext i16 %i.dp to i32
  %i.dr = add i32 %i.dl, %i.dn
  %i.ds = sub i32 %i.dr, %i.dq
  %i.dt = mul i32 %i.ds, %i.dm
  %i.du = sext i16 %i.co to i32
  %i.dv = load i16, ptr %i.dd, align 4, !tbaa !127
  %i.dw = sext i16 %i.dv to i32
  %i.dx = sub nsw i32 %i.du, %i.dw
  %i.dy = add nsw i32 %i.dx, %i.dt
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !128
  %i.eb = sext i32 %i.dy to i64                   ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %i.ea, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !55
  %i.ee = and i8 %i.ed, 1
  %.not.i = icmp eq i8 %i.ee, 0
  br i1 %.not.i, label %bb.p, label %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit

bb.p:                                             ; preds = %bb.o
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !129
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.eb
  %i.ei = load i32, ptr %i.eh, align 4
  br label %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit

_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit: ; preds = %bb.o, %bb.p
  %.sroa.0.0.insert.insert.i3 = phi i32 [ %i.ei, %bb.p ], [ 127, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !40
  %i.el = call noundef zeroext i16 @_Z16getInteriorLight7MapNodeiPK14NodeDefManager(i32 %.sroa.0.0.insert.insert.i3, i32 noundef 0, ptr noundef %i.ek)
  %i.em = load ptr, ptr %i.aa, align 8, !tbaa !58
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 1410
  %i.eo = load i8, ptr %i.en, align 2, !tbaa !113
  %i.ep = call i32 @_Z12encode_lightth(i16 noundef zeroext %i.el, i8 noundef zeroext %i.eo)
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.ep, ptr %i.eq, align 8, !tbaa !115
  br label %_ZN21MapblockMeshGenerator19getSmoothLightFrameEv.exit

_ZN21MapblockMeshGenerator19getSmoothLightFrameEv.exit: ; preds = %bb.n, %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit
  call void @_ZN21MapblockMeshGenerator13drawPlantlikeERK8TileSpecb(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %3, i1 noundef zeroext true)
  %i.er = load i16, ptr %i.bd, align 2, !tbaa !163
  %i.es = add i16 %i.er, -1
  store i16 %i.es, ptr %i.bd, align 2, !tbaa !163
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21MapblockMeshGenerator16drawFirelikeQuadERK8TileSpecffff(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #4 align 2 {
bb.a:
  %6 = alloca [4 x %"class.core::vector3d.0"], align 16 ; 11 uses
  %7 = alloca %"class.core::vector3d", align 2    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.d = load float, ptr %i.c, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.i = fpext nsz float %3 to double
  %i.j = fmul nsz double %i.i, f0x3F91DF46A2529D39
  %sincos.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.j) ; 2 uses
  %sin.i = extractvalue { double, double } %sincos.i, 0
  %cos.i = extractvalue { double, double } %sincos.i, 1 ; 3 uses
  %i.k = fpext nsz float %2 to double
  %i.l = fmul nsz double %i.k, f0x3F91DF46A2529D39
  %sincos.i22 = tail call nsz { double, double } @llvm.sincos.f64(double %i.l) ; 2 uses
  %sin.i23 = extractvalue { double, double } %sincos.i22, 0 ; 4 uses
  %cos.i24 = extractvalue { double, double } %sincos.i22, 1 ; 3 uses
  %i.m = fmul nsz double %cos.i, 0.000000e+00
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.o = fmul nsz float %i.d, 5.000000e+00        ; 3 uses
  %i.p = fneg nsz float %i.o
  %i.q = tail call nsz float @llvm.fmuladd.f32(float %i.o, float 2.000000e+00, float -5.000000e+00)
  %i.r = insertelement <2 x float> poison, float %i.o, i64 0
  %i.s = insertelement <2 x float> %i.r, float %i.q, i64 1
  %i.t = fpext <2 x float> %i.s to <2 x double>   ; 3 uses
  %i.u = insertelement <2 x double> %i.t, double -5.000000e+00, i64 0
  %i.v = insertelement <2 x double> poison, double %sin.i, i64 0 ; 2 uses
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = insertelement <2 x double> poison, double %i.m, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.w, <2 x double> %i.y)
  %i.aa = fptrunc <2 x double> %i.z to <2 x float>
  %i.ab = fpext nsz float %i.p to double
  %i.ac = insertelement <2 x float> poison, float %4, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = fadd nsz <2 x float> %i.ad, %i.aa
  %i.af = fpext <2 x float> %i.ae to <2 x double> ; 3 uses
  %i.ag = fneg nsz <2 x double> %i.af             ; 2 uses
  %i.ah = insertelement <2 x double> poison, double %cos.i24, i64 0
  %i.ai = insertelement <2 x double> %i.ah, double %sin.i23, i64 1 ; 3 uses
  %i.aj = shufflevector <2 x double> %i.ag, <2 x double> %i.af, <2 x i32> <i32 3, i32 1>
  %i.ak = fmul nsz <2 x double> %i.ai, %i.aj      ; 2 uses
  %i.al = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.an = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ao = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.an, <2 x double> %i.ak)
  %i.ap = fptrunc <2 x double> %i.ao to <2 x float> ; 2 uses
  %i.aq = extractelement <2 x float> %i.ap, i64 1
  store float %i.aq, ptr %6, align 16, !tbaa !120
  %i.ar = extractelement <2 x float> %i.ap, i64 0
  store float %i.ar, ptr %i.f, align 8, !tbaa !45
  %i.as = extractelement <2 x double> %i.ag, i64 0
  %i.at = fmul nsz double %sin.i23, %i.as         ; 2 uses
  %i.au = shufflevector <2 x double> %i.t, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.av = insertelement <4 x double> poison, double %cos.i24, i64 0
  %i.aw = insertelement <4 x double> %i.av, double %cos.i, i64 1
  %i.ax = insertelement <4 x double> %i.aw, double %sin.i23, i64 2
  %i.ay = shufflevector <4 x double> %i.ax, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.az = insertelement <4 x float> <float -0.000000e+00, float poison, float -0.000000e+00, float -0.000000e+00>, float %5, i64 1
  %i.ba = insertelement <2 x double> %i.v, double %cos.i24, i64 1
  %i.bb = shufflevector <2 x double> <double -0.000000e+00, double poison>, <2 x double> %i.af, <2 x i32> <i32 0, i32 2>
  %i.bc = fmul nsz <2 x double> %i.ba, %i.bb      ; 3 uses
  %i.bd = shufflevector <2 x double> %i.ak, <2 x double> %i.bc, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.be = insertelement <4 x double> %i.bd, double %i.at, i64 3
  %i.bf = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.au, <4 x double> %i.ay, <4 x double> %i.be)
  %i.bg = fptrunc <4 x double> %i.bf to <4 x float>
  %i.bh = fadd nsz <4 x float> %i.az, %i.bg       ; 2 uses
  %i.bi = extractelement <4 x float> %i.bh, i64 1
  store float %i.bi, ptr %i.e, align 4, !tbaa !117
  %i.bj = shufflevector <2 x double> <double -5.000000e+00, double poison>, <2 x double> %i.t, <2 x i32> <i32 0, i32 2>
  %i.bk = insertelement <2 x double> poison, double %cos.i, i64 0
  %i.bl = insertelement <2 x double> %i.bk, double %sin.i23, i64 1
  %i.bm = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bl, <2 x double> %i.bc)
  %i.bn = fptrunc <2 x double> %i.bm to <2 x float>
  store <4 x float> %i.bh, ptr %i.g, align 4, !tbaa !44
  %i.bo = insertelement <2 x float> <float poison, float -0.000000e+00>, float %5, i64 0
  %i.bp = fadd nsz <2 x float> %i.bo, %i.bn       ; 2 uses
  store <2 x float> %i.bp, ptr %i.n, align 4, !tbaa !44
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bs = insertelement <2 x double> %i.bc, double %i.at, i64 0
  %i.bt = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.ai, <2 x double> %i.bs)
  %i.bu = fptrunc <2 x double> %i.bt to <2 x float> ; 2 uses
  %i.bv = extractelement <2 x float> %i.bu, i64 0
  store float %i.bv, ptr %i.h, align 4, !tbaa !120
  %i.bw = extractelement <2 x float> %i.bu, i64 1
  store float %i.bw, ptr %i.bq, align 4, !tbaa !45
  %i.bx = extractelement <2 x float> %i.bp, i64 0
  store float %i.bx, ptr %i.br, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store i16 0, ptr %7, align 2, !tbaa !41
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i16 0, ptr %i.by, align 2, !tbaa !42
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i16 0, ptr %i.bz, align 2, !tbaa !43
  call void @_ZN21MapblockMeshGenerator8drawQuadERK8TileSpecPN4core8vector3dIfEERKNS4_IsEEf(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull %6, ptr noundef nonnull align 2 dereferenceable(6) %7, float noundef 1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21MapblockMeshGenerator16drawFirelikeNodeEv(ptr noundef nonnull align 8 dereferenceable(496) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca [4 x %"class.core::vector3d.0"], align 16 ; 12 uses
  %2 = alloca %"class.core::vector3d", align 2    ; 6 uses
  %3 = alloca [4 x %"class.core::vector3d.0"], align 16 ; 12 uses
  %4 = alloca %"class.core::vector3d", align 2    ; 6 uses
  %5 = alloca [4 x %"class.core::vector3d.0"], align 16 ; 10 uses
  %6 = alloca %"class.core::vector3d", align 2    ; 6 uses
  %7 = alloca [4 x %"class.core::vector3d.0"], align 16 ; 10 uses
  %8 = alloca %"class.core::vector3d", align 2    ; 6 uses
  %9 = alloca [4 x %"class.core::vector3d.0"], align 16 ; 10 uses
  %10 = alloca %"class.core::vector3d", align 2   ; 6 uses
  %11 = alloca [4 x %"class.core::vector3d.0"], align 16 ; 10 uses
  %12 = alloca %"class.core::vector3d", align 2   ; 6 uses
  %13 = alloca [4 x %"class.core::vector3d.0"], align 16 ; 10 uses
  %14 = alloca %"class.core::vector3d", align 2   ; 6 uses
  %15 = alloca [4 x %"class.core::vector3d.0"], align 16 ; 10 uses
  %16 = alloca %"class.core::vector3d", align 2   ; 6 uses
  %17 = alloca [4 x %"class.core::vector3d.0"], align 16 ; 14 uses
  %18 = alloca %"class.core::vector3d", align 2   ; 6 uses
  %19 = alloca [4 x %"class.core::vector3d.0"], align 16 ; 11 uses
  %20 = alloca %"class.core::vector3d", align 2   ; 6 uses
  %21 = alloca %class.VoxelArea, align 8          ; 9 uses
  %22 = alloca %struct.TileSpec, align 8          ; 29 uses
  %i.a = alloca [6 x i8], align 1                 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  store i8 0, ptr %22, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %22, i64 1
  store i8 0, ptr %i.b, align 1, !tbaa !48
  %.ptr.i = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %22, i64 26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %.ptr.i, i8 0, i64 18, i1 false)
  store i16 1, ptr %i.c, align 2, !tbaa !53
  %i.d = getelementptr inbounds nuw i8, ptr %22, i64 28
  store i16 0, ptr %i.d, align 4, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %22, i64 30
  store <4 x i8> <i8 0, i8 97, i8 1, i8 0>, ptr %i.e, align 2, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %22, i64 40
  store ptr null, ptr %i.f, align 8, !tbaa !56
  %i.g = getelementptr inbounds nuw i8, ptr %22, i64 48
  store i32 0, ptr %i.g, align 8, !tbaa !46
  %i.h = getelementptr inbounds nuw i8, ptr %22, i64 52
  store i8 0, ptr %i.h, align 4, !tbaa !57
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %22, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %22, i64 74
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %.ptr.1.i, i8 0, i64 18, i1 false)
  store i16 1, ptr %i.i, align 2, !tbaa !53
  %i.j = getelementptr inbounds nuw i8, ptr %22, i64 76
  store i16 0, ptr %i.j, align 4, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %22, i64 78
  store <4 x i8> <i8 0, i8 97, i8 1, i8 0>, ptr %i.k, align 2, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %22, i64 88
  store ptr null, ptr %i.l, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %22, i64 96
  store i32 0, ptr %i.m, align 8, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %22, i64 100
  store i8 0, ptr %i.n, align 4, !tbaa !57
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.p, align 4
  %i.q = load ptr, ptr %0, align 8, !tbaa !31
  call void @_Z12getNodeTileN7MapNodeRKN4core8vector3dIsEEhP12MeshMakeDataR8TileSpec(i32 %.sroa.0.0.copyload.i.i, ptr noundef nonnull align 2 dereferenceable(6) %i.o, i8 noundef zeroext 0, ptr noundef %i.q, ptr noundef nonnull align 8 dereferenceable(104) %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.a, i8 0, i64 6, i1 false)
  %i.r = load i16, ptr %i.p, align 4, !tbaa !122
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.v = getelementptr inbounds nuw i8, ptr %21, i64 6
  %i.w = getelementptr inbounds nuw i8, ptr %21, i64 12
  %i.x = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %21, i64 20
  br label %bb.c

bb.b:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !102, !range !106, !noundef !107
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = xor i1 %.1, true                        ; 3 uses
  %i.ad = select i1 %i.ab, i1 true, i1 %i.ac      ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !102, !range !106, !noundef !107
  %i.ag = trunc nuw i8 %i.af to i1                ; 4 uses
  %i.ah = load i8, ptr %i.a, align 1, !range !106
  %i.ai = trunc nuw i8 %i.ah to i1
  %or.cond5 = select i1 %i.ad, i1 true, i1 %i.ai
  br i1 %or.cond5, label %bb.g, label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.e
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.03272 = phi i1 [ false, %bb.a ], [ %.1, %bb.e ] ; 2 uses
  %i.aj = load i16, ptr %i.s, align 8, !tbaa !41
  %i.ak = load i16, ptr %i.o, align 8, !tbaa !41
  %i.al = add i16 %i.ak, %i.aj
  %i.am = load <2 x i16>, ptr %i.t, align 2, !tbaa !121
  %i.an = load <2 x i16>, ptr %i.u, align 2, !tbaa !121
  %i.ao = add <2 x i16> %i.an, %i.am              ; 2 uses
  %i.ap = getelementptr inbounds nuw [6 x i8], ptr @g_6dirs, i64 %indvars.iv ; 3 uses
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !41
  %i.ar = add i16 %i.al, %i.aq                    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.at = load i16, ptr %i.as, align 2, !tbaa !42
  %i.au = extractelement <2 x i16> %i.ao, i64 0
  %i.av = add i16 %i.au, %i.at                    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !43
  %i.ay = extractelement <2 x i16> %i.ao, i64 1
  %i.az = add i16 %i.ay, %i.ax                    ; 2 uses
  %.sroa.3.0.insert.ext.i35 = zext i16 %i.az to i48
  %.sroa.3.0.insert.shift.i36 = shl nuw i48 %.sroa.3.0.insert.ext.i35, 32
  %.sroa.2.0.insert.ext.i37 = zext i16 %i.av to i48
  %.sroa.2.0.insert.shift.i38 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i37, 16
  %.sroa.0.0.insert.ext.i40 = zext i16 %i.ar to i48
  %i.ba = or disjoint i48 %.sroa.2.0.insert.shift.i38, %.sroa.0.0.insert.ext.i40
  %.sroa.0.0.insert.insert.i41 = or disjoint i48 %i.ba, %.sroa.3.0.insert.shift.i36 ; 2 uses
  %i.bb = load ptr, ptr %0, align 8, !tbaa !31    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  store i48 %.sroa.0.0.insert.insert.i41, ptr %21, align 8, !tbaa !121
  store i48 %.sroa.0.0.insert.insert.i41, ptr %i.v, align 2, !tbaa !121
  %i.bc = sext i16 %i.az to i32
  store i32 1, ptr %i.w, align 4, !tbaa !115
  store i32 1, ptr %i.x, align 8, !tbaa !115
  store i32 1, ptr %i.y, align 4, !tbaa !115
  call void @_ZN16VoxelManipulator7addAreaERK9VoxelArea(ptr noundef nonnull align 8 dereferenceable(48) %i.bb, ptr noundef nonnull align 4 dereferenceable(24) %21)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.bf = load i16, ptr %i.be, align 4, !tbaa !123
  %i.bg = sext i16 %i.bf to i32
  %i.bh = sub nsw i32 %i.bc, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !124
  %i.bl = mul nsw i32 %i.bh, %i.bk
  %i.bm = load i32, ptr %i.bi, align 4, !tbaa !125
  %i.bn = sext i16 %i.av to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 10
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !126
  %i.bq = sext i16 %i.bp to i32
  %i.br = add i32 %i.bl, %i.bn
  %i.bs = sub i32 %i.br, %i.bq
  %i.bt = mul i32 %i.bs, %i.bm
  %i.bu = sext i16 %i.ar to i32
  %i.bv = load i16, ptr %i.bd, align 4, !tbaa !127
  %i.bw = sext i16 %i.bv to i32
  %i.bx = sub nsw i32 %i.bu, %i.bw
  %i.by = add nsw i32 %i.bx, %i.bt
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !128
  %i.cb = sext i32 %i.by to i64                   ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.ca, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !55
  %i.ce = and i8 %i.cd, 1
  %.not.i = icmp eq i8 %i.ce, 0
  br i1 %.not.i, label %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit, label %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit.thread

_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br label %bb.e

_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit: ; preds = %bb.c
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !129
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.cb
  %i.ci = load i32, ptr %i.ch, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  %.sroa.0.0.extract.trunc = trunc i32 %i.ci to i16 ; 2 uses
  %i.cj = and i16 %.sroa.0.0.extract.trunc, -2
  %or.cond = icmp eq i16 %i.cj, 126
  %.not = icmp eq i16 %i.r, %.sroa.0.0.extract.trunc
  %or.cond34 = or i1 %.not, %or.cond
  br i1 %or.cond34, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 1, ptr %i.ck, align 1, !tbaa !102
  br label %bb.e

bb.e:                                             ; preds = %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit.thread, %bb.d, %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit
  %.1 = phi i1 [ true, %bb.d ], [ %.03272, %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit ], [ %.03272, %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit.thread ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !234

bb.f:                                             ; preds = %bb.b
  br i1 %i.ag, label %.thread56, label %.thread

bb.g:                                             ; preds = %bb.b
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !58
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 136
  %i.co = load float, ptr %i.cn, align 8, !tbaa !118
  %i.cp = fmul nsz float %i.co, 5.000000e+00      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.cq = fneg nsz float %i.cp                    ; 2 uses
  %i.cr = call nsz float @llvm.fmuladd.f32(float %i.cp, float 2.000000e+00, float -5.000000e+00)
  %i.cs = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %19, i64 36
  %i.cu = fpext nsz float %i.cr to double         ; 2 uses
  %i.cv = fmul nsz double %i.cu, f0x3FEF838B8C811C17 ; 2 uses
  %i.cw = fmul nsz double %i.cu, f0xBFC63A1A7E0B7389
  %i.cx = fptrunc nsz double %i.cw to float
  %i.cy = fadd nsz float %i.cx, 4.000000e+00
  %i.cz = fpext nsz float %i.cy to double         ; 2 uses
  %i.da = fmul nsz double %i.cz, -0.000000e+00
  %i.db = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.dc = insertelement <4 x double> poison, double %i.cv, i64 0
  %i.dd = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %19, i64 28
  store float %i.cp, ptr %i.cs, align 8, !tbaa !120
  store float f0xC09D91BA, ptr %i.de, align 4, !tbaa !117
  %i.df = getelementptr inbounds nuw i8, ptr %19, i64 44
  %i.dg = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.dh = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.di = insertelement <2 x float> %i.dh, float %i.cp, i64 1
  %i.dj = fpext <2 x float> %i.di to <2 x double> ; 2 uses
  %i.dk = shufflevector <2 x double> %i.dj, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dl = insertelement <2 x double> poison, double %i.da, i64 0
  %i.dm = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dn = fadd nsz <2 x double> %i.dm, %i.dj      ; 2 uses
  %i.do = shufflevector <2 x double> %i.dn, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dp = insertelement <4 x double> %i.do, double %i.cv, i64 1
  %i.dq = insertelement <4 x double> <double poison, double poison, double f0x4013791420000000, double f0x4013791420000000>, double %i.cz, i64 0
  %i.dr = shufflevector <4 x double> %i.dq, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.ds = call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dk, <4 x double> zeroinitializer, <4 x double> %i.dr) ; 3 uses
  %i.dt = shufflevector <4 x double> %i.dp, <4 x double> %i.ds, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.du = shufflevector <2 x double> %i.dn, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dv = shufflevector <4 x double> %i.dt, <4 x double> %i.du, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.dw = fptrunc <4 x double> %i.dv to <4 x float>
  store <4 x float> %i.dw, ptr %19, align 16, !tbaa !44
  %i.dx = shufflevector <4 x double> %i.dc, <4 x double> %i.ds, <2 x i32> <i32 0, i32 5>
  %i.dy = fptrunc <2 x double> %i.dx to <2 x float>
  store <2 x float> %i.dy, ptr %i.db, align 16, !tbaa !44
  %i.dz = shufflevector <4 x double> %i.ds, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.ea = fptrunc <2 x double> %i.dz to <2 x float> ; 2 uses
  %i.eb = extractelement <2 x float> %i.ea, i64 1
  store float %i.eb, ptr %i.dd, align 16, !tbaa !45
  store float %i.cq, ptr %i.ct, align 4, !tbaa !120
  %i.ec = extractelement <2 x float> %i.ea, i64 0
  store float %i.ec, ptr %i.df, align 4, !tbaa !45
  store float f0xC09D91BA, ptr %i.dg, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  store i16 0, ptr %20, align 2, !tbaa !41
  %i.ed = getelementptr inbounds nuw i8, ptr %20, i64 2
  store i16 0, ptr %i.ed, align 2, !tbaa !42
  %i.ee = getelementptr inbounds nuw i8, ptr %20, i64 4
  store i16 0, ptr %i.ee, align 2, !tbaa !43
  call void @_ZN21MapblockMeshGenerator8drawQuadERK8TileSpecPN4core8vector3dIfEERKNS4_IsEEf(ptr noundef nonnull readonly align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %22, ptr noundef nonnull %19, ptr noundef nonnull align 2 dereferenceable(6) %20, float noundef 1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.eg = load i8, ptr %i.ef, align 1, !range !106
  %i.eh = trunc nuw i8 %i.eg to i1
  %or.cond8 = select i1 %i.ad, i1 true, i1 %i.eh
  br i1 %or.cond8, label %bb.h, label %bb.i

.thread56:                                        ; preds = %bb.f
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !58
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 136
  %i.el = load float, ptr %i.ek, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.em = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.en = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.ep = getelementptr inbounds nuw i8, ptr %17, i64 36
  %i.eq = getelementptr inbounds nuw i8, ptr %17, i64 20
  %i.er = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.es = fmul nsz float %i.el, 5.000000e+00      ; 4 uses
  %i.et = fneg nsz float %i.es                    ; 2 uses
  %i.eu = call nsz float @llvm.fmuladd.f32(float %i.es, float 2.000000e+00, float -5.000000e+00)
  %i.ev = fpext nsz float %i.eu to double         ; 2 uses
  %i.ew = fmul nsz double %i.ev, f0x3FD5E3A8748A0BF7
  %i.ex = fptrunc nsz double %i.ew to float
  %i.ey = fmul nsz double %i.ev, f0x3FEE11F642522D1B
  %i.ez = fptrunc nsz double %i.ey to float
  %i.fa = fadd nsz float %i.ez, 4.700000e+00
  %i.fb = fpext nsz float %i.fa to double         ; 2 uses
  %i.fc = fmul nsz double %i.fb, -0.000000e+00    ; 2 uses
  %i.fd = fadd nsz float %i.ex, 4.840000e+00      ; 2 uses
  store float %i.fd, ptr %i.em, align 4, !tbaa !117
  store float %i.fd, ptr %i.er, align 16, !tbaa !117
  %i.fe = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.ff = getelementptr inbounds nuw i8, ptr %17, i64 28
  store float %i.es, ptr %i.eo, align 8, !tbaa !120
  store float f0x40485046, ptr %i.ff, align 4, !tbaa !117
  %i.fg = getelementptr inbounds nuw i8, ptr %17, i64 44
  %i.fh = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.fi = insertelement <2 x float> poison, float %i.et, i64 0
  %i.fj = insertelement <2 x float> %i.fi, float %i.es, i64 1
  %i.fk = fpext <2 x float> %i.fj to <2 x double> ; 3 uses
  %i.fl = shufflevector <2 x double> %i.fk, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.fm = extractelement <2 x double> %i.fk, i64 0
  %i.fn = fadd nsz double %i.fc, %i.fm
  %i.fo = fptrunc nsz double %i.fn to float
  store float %i.fo, ptr %17, align 16, !tbaa !120
  %i.fp = extractelement <2 x double> %i.fk, i64 1
  %i.fq = fadd nsz double %i.fc, %i.fp
  %i.fr = insertelement <4 x double> <double poison, double poison, double f0x3F592E0000000000, double f0x3F592E0000000000>, double %i.fb, i64 0
  %i.fs = shufflevector <4 x double> %i.fr, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.ft = call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fl, <4 x double> zeroinitializer, <4 x double> %i.fs) ; 3 uses
  %i.fu = shufflevector <4 x double> %i.ft, <4 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.fv = insertelement <2 x double> %i.fu, double %i.fq, i64 1
  %i.fw = fptrunc <2 x double> %i.fv to <2 x float>
  store <2 x float> %i.fw, ptr %i.en, align 8, !tbaa !44
  %i.fx = shufflevector <4 x double> %i.ft, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.fy = fptrunc <2 x double> %i.fx to <2 x float> ; 2 uses
  %i.fz = extractelement <2 x float> %i.fy, i64 0
  store float %i.fz, ptr %i.eq, align 4, !tbaa !45
  %i.ga = extractelement <2 x float> %i.fy, i64 1
  store float %i.ga, ptr %i.fe, align 16, !tbaa !45
  %i.gb = extractelement <4 x double> %i.ft, i64 2
  %i.gc = fptrunc nsz double %i.gb to float
  store float %i.et, ptr %i.ep, align 4, !tbaa !120
  store float %i.gc, ptr %i.fg, align 4, !tbaa !45
  store float f0x40485046, ptr %i.fh, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  store i16 0, ptr %18, align 2, !tbaa !41
  %i.gd = getelementptr inbounds nuw i8, ptr %18, i64 2
  store i16 0, ptr %i.gd, align 2, !tbaa !42
  %i.ge = getelementptr inbounds nuw i8, ptr %18, i64 4
  store i16 0, ptr %i.ge, align 2, !tbaa !43
  call void @_ZN21MapblockMeshGenerator8drawQuadERK8TileSpecPN4core8vector3dIfEERKNS4_IsEEf(ptr noundef nonnull readonly align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %22, ptr noundef nonnull %17, ptr noundef nonnull align 2 dereferenceable(6) %18, float noundef 1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  %i.gf = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.gg = load i8, ptr %i.gf, align 1, !range !106
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %bb.h, label %.thread59

.thread:                                          ; preds = %bb.f
  %i.gi = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.gj = load i8, ptr %i.gi, align 1, !range !106
  %i.gk = trunc nuw i8 %i.gj to i1
  br i1 %i.gk, label %bb.h, label %.thread55

bb.h:                                             ; preds = %.thread56, %.thread, %bb.g
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !58
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 136
  %i.go = load float, ptr %i.gn, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.gp = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.gq = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.gr = fmul nsz float %i.go, 5.000000e+00      ; 3 uses
  %i.gs = fneg nsz float %i.gr
  %i.gt = call nsz float @llvm.fmuladd.f32(float %i.gr, float 2.000000e+00, float -5.000000e+00)
  %i.gu = fpext nsz float %i.gt to double         ; 2 uses
  %i.gv = fmul nsz double %i.gu, f0x3FEF838B8C811C17 ; 2 uses
  %i.gw = fmul nsz double %i.gu, f0xBFC63A1A7E0B7389
  %i.gx = fptrunc nsz double %i.gw to float
  %i.gy = fadd nsz float %i.gx, 4.000000e+00
  %i.gz = fpext nsz float %i.gy to double         ; 2 uses
  %i.ha = fneg nsz double %i.gz
  %i.hb = fmul nsz double %i.gz, f0x3C91A62633145C07 ; 2 uses
  %i.hc = insertelement <2 x double> poison, double %i.gv, i64 0
  %i.hd = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.he = getelementptr inbounds nuw i8, ptr %15, i64 28
  store float f0xC09D91BA, ptr %i.he, align 4, !tbaa !117
  %i.hf = getelementptr inbounds nuw i8, ptr %15, i64 44
  %i.hg = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.hh = insertelement <2 x float> poison, float %i.gs, i64 0
  %i.hi = insertelement <2 x float> %i.hh, float %i.gr, i64 1
  %i.hj = fpext <2 x float> %i.hi to <2 x double> ; 4 uses
  %i.hk = shufflevector <2 x double> %i.hj, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hl = extractelement <2 x double> %i.hj, i64 0
  %i.hm = extractelement <2 x double> %i.hj, i64 1
  %i.hn = fadd nsz double %i.hb, %i.hm
  %i.ho = insertelement <4 x double> <double poison, double poison, double f0xC013791420000000, double f0xC013791420000000>, double %i.ha, i64 0
  %i.hp = shufflevector <4 x double> %i.ho, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.hq = call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.hk, <4 x double> splat (double f0x3C91A62633145C07), <4 x double> %i.hp) ; 3 uses
  %i.hr = shufflevector <4 x double> %i.hq, <4 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 1>
  %i.hs = insertelement <4 x double> %i.hr, double %i.gv, i64 1
  %i.ht = insertelement <2 x double> %i.hc, double %i.hn, i64 1
  %i.hu = fptrunc <2 x double> %i.ht to <2 x float>
  store <2 x float> %i.hu, ptr %i.gq, align 16, !tbaa !44
  %i.hv = extractelement <4 x double> %i.hq, i64 3
  %i.hw = fptrunc nsz double %i.hv to float
  %i.hx = insertelement <2 x double> <double poison, double f0x3CB57ADC10868380>, double %i.hb, i64 0
  %i.hy = fadd nsz <2 x double> %i.hx, %i.hj      ; 2 uses
  %i.hz = shufflevector <2 x double> %i.hy, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ia = shufflevector <4 x double> %i.hs, <4 x double> %i.hz, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.ib = fptrunc <4 x double> %i.ia to <4 x float>
  store <4 x float> %i.ib, ptr %15, align 16, !tbaa !44
  store float %i.hw, ptr %i.gp, align 8, !tbaa !120
  %i.ic = shufflevector <2 x double> %i.hy, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.id = shufflevector <4 x double> %i.hq, <4 x double> poison, <2 x i32> <i32 poison, i32 2>
  %i.ie = shufflevector <2 x double> %i.ic, <2 x double> %i.id, <2 x i32> <i32 0, i32 3>
  %i.if = fptrunc <2 x double> %i.ie to <2 x float>
  %i.ig = fadd nsz double %i.hl, f0x3CB57ADC10868380
  %i.ih = fptrunc nsz double %i.ig to float
  store <2 x float> %i.if, ptr %i.hd, align 16, !tbaa !44
  store float %i.ih, ptr %i.hf, align 4, !tbaa !45
  store float f0xC09D91BA, ptr %i.hg, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  store i16 0, ptr %16, align 2, !tbaa !41
  %i.ii = getelementptr inbounds nuw i8, ptr %16, i64 2
  store i16 0, ptr %i.ii, align 2, !tbaa !42
  %i.ij = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i16 0, ptr %i.ij, align 2, !tbaa !43
  call void @_ZN21MapblockMeshGenerator8drawQuadERK8TileSpecPN4core8vector3dIfEERKNS4_IsEEf(ptr noundef nonnull readonly align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %22, ptr noundef nonnull %15, ptr noundef nonnull align 2 dereferenceable(6) %16, float noundef 1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %.thread55

bb.i:                                             ; preds = %bb.g
  br i1 %i.ag, label %.thread59, label %.thread55

.thread55:                                        ; preds = %.thread, %bb.i, %bb.h
  %i.ik = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.il = load i8, ptr %i.ik, align 1, !range !106
  %i.im = trunc nuw i8 %i.il to i1
  %or.cond11 = select i1 %i.ad, i1 true, i1 %i.im
  br i1 %or.cond11, label %bb.k, label %bb.j

.thread59:                                        ; preds = %bb.i, %.thread56
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !58
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 136
  %i.iq = load float, ptr %i.ip, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.ir = getelementptr inbounds nuw i8, ptr %13, i64 20
  %i.is = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.it = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.iu = getelementptr inbounds nuw i8, ptr %13, i64 28
  %i.iv = fmul nsz float %i.iq, 5.000000e+00      ; 3 uses
  %i.iw = fneg nsz float %i.iv
  %i.ix = call nsz float @llvm.fmuladd.f32(float %i.iv, float 2.000000e+00, float -5.000000e+00)
  %i.iy = fpext nsz float %i.ix to double         ; 2 uses
  %i.iz = fmul nsz double %i.iy, f0x3FD5E3A8748A0BF7
  %i.ja = fmul nsz double %i.iy, f0x3FEE11F642522D1B
  %i.jb = fptrunc nsz double %i.ja to float
  %i.jc = fadd nsz float %i.jb, 4.700000e+00
  %i.jd = fpext nsz float %i.jc to double         ; 2 uses
  %i.je = fneg nsz double %i.jd
  %i.jf = fmul nsz double %i.jd, f0x3C91A62633145C07
  store float f0x40485046, ptr %i.iu, align 4, !tbaa !117
  %i.jg = getelementptr inbounds nuw i8, ptr %13, i64 44
  %i.jh = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.ji = insertelement <2 x float> poison, float %i.iw, i64 0
  %i.jj = insertelement <2 x float> %i.ji, float %i.iv, i64 1
  %i.jk = fpext <2 x float> %i.jj to <2 x double> ; 3 uses
  %i.jl = shufflevector <2 x double> %i.jk, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.jm = insertelement <2 x double> poison, double %i.jf, i64 0
  %i.jn = shufflevector <2 x double> %i.jm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jo = fadd nsz <2 x double> %i.jn, %i.jk      ; 2 uses
  %i.jp = insertelement <4 x double> <double poison, double poison, double f0xBF592E0000000000, double f0xBF592E0000000000>, double %i.je, i64 0
  %i.jq = shufflevector <4 x double> %i.jp, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.jr = call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.jl, <4 x double> splat (double f0x3C91A62633145C07), <4 x double> %i.jq) ; 3 uses
  %i.js = shufflevector <4 x double> %i.jr, <4 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 1>
  %i.jt = insertelement <4 x double> %i.js, double %i.iz, i64 1
  %i.ju = shufflevector <2 x double> %i.jo, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.jv = shufflevector <4 x double> %i.jt, <4 x double> %i.ju, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.jw = fptrunc <4 x double> %i.jv to <4 x float>
  %i.jx = fadd nsz <4 x float> %i.jw, <float -0.000000e+00, float 4.840000e+00, float -0.000000e+00, float -0.000000e+00> ; 2 uses
  store <4 x float> %i.jx, ptr %13, align 16, !tbaa !44
  %i.jy = extractelement <4 x float> %i.jx, i64 1
  store float %i.jy, ptr %i.is, align 16, !tbaa !117
  %i.jz = shufflevector <2 x double> %i.jo, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ka = shufflevector <4 x double> %i.jr, <4 x double> poison, <2 x i32> <i32 poison, i32 3>
  %i.kb = shufflevector <2 x double> %i.jz, <2 x double> %i.ka, <2 x i32> <i32 0, i32 3>
  %i.kc = fptrunc <2 x double> %i.kb to <2 x float>
  store <2 x float> %i.kc, ptr %i.ir, align 4, !tbaa !44
  %i.kd = shufflevector <4 x double> %i.jr, <4 x double> poison, <2 x i32> <i32 poison, i32 2>
  %i.ke = fadd nsz <2 x double> %i.jk, splat (double f0x3BFBC6595DA2AA54) ; 2 uses
  %i.kf = shufflevector <2 x double> %i.ke, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.kg = shufflevector <2 x double> %i.kf, <2 x double> %i.kd, <2 x i32> <i32 0, i32 3>
  %i.kh = fptrunc <2 x double> %i.kg to <2 x float>
  %i.ki = extractelement <2 x double> %i.ke, i64 0
  %i.kj = fptrunc nsz double %i.ki to float
  store <2 x float> %i.kh, ptr %i.it, align 16, !tbaa !44
  store float %i.kj, ptr %i.jg, align 4, !tbaa !45
  store float f0x40485046, ptr %i.jh, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  store i16 0, ptr %14, align 2, !tbaa !41
  %i.kk = getelementptr inbounds nuw i8, ptr %14, i64 2
  store i16 0, ptr %i.kk, align 2, !tbaa !42
  %i.kl = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i16 0, ptr %i.kl, align 2, !tbaa !43
  call void @_ZN21MapblockMeshGenerator8drawQuadERK8TileSpecPN4core8vector3dIfEERKNS4_IsEEf(ptr noundef nonnull readonly align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %22, ptr noundef nonnull %13, ptr noundef nonnull align 2 dereferenceable(6) %14, float noundef 1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %i.km = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.kn = load i8, ptr %i.km, align 1, !range !106
  %i.ko = trunc nuw i8 %i.kn to i1
  %or.cond1160 = select i1 %i.ac, i1 true, i1 %i.ko
  br i1 %or.cond1160, label %bb.k, label %.thread65

bb.j:                                             ; preds = %.thread55
  br i1 %i.ag, label %.thread65, label %.thread62

bb.k:                                             ; preds = %.thread55, %.thread59
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !58
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 136
  %i.ks = load float, ptr %i.kr, align 8, !tbaa !118
  %i.kt = fmul nsz float %i.ks, 5.000000e+00      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.ku = fneg nsz float %i.kt
  %i.kv = call nsz float @llvm.fmuladd.f32(float %i.kt, float 2.000000e+00, float -5.000000e+00)
  %i.kw = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.kx = fpext nsz float %i.kv to double         ; 2 uses
  %i.ky = fmul nsz double %i.kx, f0x3FEF838B8C811C17 ; 2 uses
  %i.kz = fmul nsz double %i.kx, f0xBFC63A1A7E0B7389
  %i.la = fptrunc nsz double %i.kz to float
  %i.lb = fadd nsz float %i.la, 4.000000e+00
  %i.lc = fpext nsz float %i.lb to double         ; 2 uses
  %i.ld = fmul nsz double %i.lc, f0xBCA1A62633145C07
  %i.le = fneg nsz double %i.lc
  %i.lf = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.lg = insertelement <4 x double> poison, double %i.ky, i64 0
  %i.lh = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.li = getelementptr inbounds nuw i8, ptr %11, i64 28
  store float f0xC09D91BA, ptr %i.li, align 4, !tbaa !117
  %i.lj = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.lk = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.ll = insertelement <2 x float> poison, float %i.ku, i64 0
  %i.lm = insertelement <2 x float> %i.ll, float %i.kt, i64 1
  %i.ln = fpext <2 x float> %i.lm to <2 x double> ; 3 uses
  %i.lo = shufflevector <2 x double> %i.ln, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.lp = insertelement <2 x double> poison, double %i.ld, i64 0
  %i.lq = shufflevector <2 x double> %i.lp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lr = fsub nsz <2 x double> %i.lq, %i.ln      ; 2 uses
  %i.ls = shufflevector <2 x double> %i.lr, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.lt = insertelement <4 x double> %i.ls, double %i.ky, i64 1
  %i.lu = insertelement <4 x double> <double poison, double poison, double f0xC013791420000000, double f0xC013791420000000>, double %i.le, i64 0
  %i.lv = shufflevector <4 x double> %i.lu, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.lw = call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.lo, <4 x double> splat (double f0x3CA1A62633145C07), <4 x double> %i.lv) ; 4 uses
  %i.lx = shufflevector <4 x double> %i.lt, <4 x double> %i.lw, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ly = shufflevector <2 x double> %i.lr, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.lz = shufflevector <4 x double> %i.lx, <4 x double> %i.ly, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ma = fptrunc <4 x double> %i.lz to <4 x float>
  store <4 x float> %i.ma, ptr %11, align 16, !tbaa !44
  %i.mb = shufflevector <4 x double> %i.lw, <4 x double> poison, <2 x i32> <i32 3, i32 poison>
  %i.mc = shufflevector <4 x double> %i.lg, <4 x double> %i.lw, <2 x i32> <i32 0, i32 5>
  %i.md = fptrunc <2 x double> %i.mc to <2 x float>
  store <2 x float> %i.md, ptr %i.lf, align 16, !tbaa !44
  %i.me = fsub nsz <2 x double> splat (double f0xBCC57ADC10868380), %i.ln ; 2 uses
  %i.mf = extractelement <2 x double> %i.me, i64 1
  %i.mg = fptrunc nsz double %i.mf to float
  store float %i.mg, ptr %i.kw, align 8, !tbaa !120
  %i.mh = extractelement <4 x double> %i.lw, i64 2
  %i.mi = fptrunc nsz double %i.mh to float
  %i.mj = shufflevector <2 x double> %i.mb, <2 x double> %i.me, <2 x i32> <i32 0, i32 2>
  %i.mk = fptrunc <2 x double> %i.mj to <2 x float>
  store <2 x float> %i.mk, ptr %i.lh, align 16, !tbaa !44
  store float %i.mi, ptr %i.lj, align 4, !tbaa !45
  store float f0xC09D91BA, ptr %i.lk, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  store i16 0, ptr %12, align 2, !tbaa !41
  %i.ml = getelementptr inbounds nuw i8, ptr %12, i64 2
  store i16 0, ptr %i.ml, align 2, !tbaa !42
  %i.mm = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i16 0, ptr %i.mm, align 2, !tbaa !43
  call void @_ZN21MapblockMeshGenerator8drawQuadERK8TileSpecPN4core8vector3dIfEERKNS4_IsEEf(ptr noundef nonnull readonly align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %22, ptr noundef nonnull %11, ptr noundef nonnull align 2 dereferenceable(6) %12, float noundef 1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.mn = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.mo = load i8, ptr %i.mn, align 1, !range !106
  %i.mp = trunc nuw i8 %i.mo to i1
  %or.cond14 = select i1 %i.ad, i1 true, i1 %i.mp
  br i1 %or.cond14, label %bb.l, label %bb.m

.thread65:                                        ; preds = %bb.j, %.thread59
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !58
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 136
  %i.mt = load float, ptr %i.ms, align 8, !tbaa !118
  %i.mu = fmul nsz float %i.mt, 5.000000e+00      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.mv = fneg nsz float %i.mu
  %i.mw = call nsz float @llvm.fmuladd.f32(float %i.mu, float 2.000000e+00, float -5.000000e+00)
  %i.mx = fpext nsz float %i.mw to double         ; 2 uses
  %i.my = fmul nsz double %i.mx, f0x3FD5E3A8748A0BF7
  %i.mz = fmul nsz double %i.mx, f0x3FEE11F642522D1B
  %i.na = fptrunc nsz double %i.mz to float
  %i.nb = fadd nsz float %i.na, 4.700000e+00
  %i.nc = fpext nsz float %i.nb to double         ; 2 uses
  %i.nd = fmul nsz double %i.nc, f0xBCA1A62633145C07
  %i.ne = fneg nsz double %i.nc
  %i.nf = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.ng = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.nh = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ni = getelementptr inbounds nuw i8, ptr %9, i64 28
  store float f0x40485046, ptr %i.ni, align 4, !tbaa !117
  %i.nj = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.nk = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.nl = insertelement <2 x float> poison, float %i.mv, i64 0
  %i.nm = insertelement <2 x float> %i.nl, float %i.mu, i64 1
  %i.nn = fpext <2 x float> %i.nm to <2 x double> ; 3 uses
  %i.no = shufflevector <2 x double> %i.nn, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.np = insertelement <2 x double> poison, double %i.nd, i64 0
  %i.nq = shufflevector <2 x double> %i.np, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nr = fsub nsz <2 x double> %i.nq, %i.nn      ; 2 uses
  %i.ns = shufflevector <2 x double> %i.nr, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.nt = insertelement <4 x double> %i.ns, double %i.my, i64 1
  %i.nu = insertelement <4 x double> <double poison, double poison, double f0xBF592E0000000000, double f0xBF592E0000000000>, double %i.ne, i64 0
  %i.nv = shufflevector <4 x double> %i.nu, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.nw = call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.no, <4 x double> splat (double f0x3CA1A62633145C07), <4 x double> %i.nv) ; 4 uses
  %i.nx = shufflevector <4 x double> %i.nt, <4 x double> %i.nw, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ny = shufflevector <2 x double> %i.nr, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.nz = shufflevector <4 x double> %i.nx, <4 x double> %i.ny, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.oa = fptrunc <4 x double> %i.nz to <4 x float>
  %i.ob = fadd nsz <4 x float> %i.oa, <float -0.000000e+00, float 4.840000e+00, float -0.000000e+00, float -0.000000e+00> ; 2 uses
  store <4 x float> %i.ob, ptr %9, align 16, !tbaa !44
  %i.oc = extractelement <4 x float> %i.ob, i64 1
  store float %i.oc, ptr %i.ng, align 16, !tbaa !117
  %i.od = shufflevector <4 x double> %i.nw, <4 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.oe = fsub nsz <2 x double> splat (double f0xBC0BC6595DA2AA54), %i.nn ; 2 uses
  %i.of = shufflevector <2 x double> %i.od, <2 x double> %i.oe, <2 x i32> <i32 0, i32 3>
  %i.og = fptrunc <2 x double> %i.of to <2 x float>
  store <2 x float> %i.og, ptr %i.nf, align 4, !tbaa !44
  %i.oh = extractelement <4 x double> %i.nw, i64 2
  %i.oi = fptrunc nsz double %i.oh to float
  %i.oj = shufflevector <4 x double> %i.nw, <4 x double> poison, <2 x i32> <i32 3, i32 poison>
  %i.ok = shufflevector <2 x double> %i.oj, <2 x double> %i.oe, <2 x i32> <i32 0, i32 2>
  %i.ol = fptrunc <2 x double> %i.ok to <2 x float>
  store <2 x float> %i.ol, ptr %i.nh, align 16, !tbaa !44
  store float %i.oi, ptr %i.nj, align 4, !tbaa !45
  store float f0x40485046, ptr %i.nk, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store i16 0, ptr %10, align 2, !tbaa !41
  %i.om = getelementptr inbounds nuw i8, ptr %10, i64 2
  store i16 0, ptr %i.om, align 2, !tbaa !42
  %i.on = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i16 0, ptr %i.on, align 2, !tbaa !43
  call void @_ZN21MapblockMeshGenerator8drawQuadERK8TileSpecPN4core8vector3dIfEERKNS4_IsEEf(ptr noundef nonnull readonly align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %22, ptr noundef nonnull %9, ptr noundef nonnull align 2 dereferenceable(6) %10, float noundef 1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.oo = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.op = load i8, ptr %i.oo, align 1, !range !106
  %i.oq = trunc nuw i8 %i.op to i1
  %or.cond1466 = select i1 %i.ac, i1 true, i1 %i.oq
  br i1 %or.cond1466, label %bb.l, label %.thread67

.thread62:                                        ; preds = %bb.j
  %i.or = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.os = load i8, ptr %i.or, align 1, !range !106
  %i.ot = trunc nuw i8 %i.os to i1
  br i1 %i.ot, label %bb.l, label %.thread64

bb.l:                                             ; preds = %.thread65, %.thread62, %bb.k
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !58
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 136
  %i.ox = load float, ptr %i.ow, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.oy = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.oz = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.pa = fmul nsz float %i.ox, 5.000000e+00      ; 3 uses
  %i.pb = fneg nsz float %i.pa
  %i.pc = call nsz float @llvm.fmuladd.f32(float %i.pa, float 2.000000e+00, float -5.000000e+00)
  %i.pd = fpext nsz float %i.pc to double         ; 2 uses
  %i.pe = fmul nsz double %i.pd, f0x3FEF838B8C811C17 ; 2 uses
  %i.pf = fmul nsz double %i.pd, f0xBFC63A1A7E0B7389
  %i.pg = fptrunc nsz double %i.pf to float
  %i.ph = fadd nsz float %i.pg, 4.000000e+00
  %i.pi = fpext nsz float %i.ph to double         ; 2 uses
  %i.pj = fmul nsz double %i.pi, f0xBCAA79394C9E8A0A ; 2 uses
  %i.pk = insertelement <2 x double> poison, double %i.pe, i64 0
  %i.pl = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.pm = getelementptr inbounds nuw i8, ptr %7, i64 28
  store float f0xC09D91BA, ptr %i.pm, align 4, !tbaa !117
  %i.pn = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.po = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.pp = insertelement <2 x float> poison, float %i.pb, i64 0
  %i.pq = insertelement <2 x float> %i.pp, float %i.pa, i64 1
  %i.pr = fpext <2 x float> %i.pq to <2 x double> ; 3 uses
  %i.ps = shufflevector <2 x double> %i.pr, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.pt = extractelement <2 x double> %i.pr, i64 0 ; 2 uses
  %i.pu = fsub nsz double %i.pj, %i.pt
  %i.pv = extractelement <2 x double> %i.pr, i64 1 ; 2 uses
  %i.pw = fsub nsz double %i.pj, %i.pv
  %i.px = insertelement <4 x double> <double poison, double poison, double f0x4013791420000000, double f0x4013791420000000>, double %i.pi, i64 0
  %i.py = shufflevector <4 x double> %i.px, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.pz = call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ps, <4 x double> splat (double f0xBCAA79394C9E8A0A), <4 x double> %i.py) ; 3 uses
  %i.qa = shufflevector <4 x double> %i.pz, <4 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 1>
  %i.qb = insertelement <4 x double> %i.qa, double %i.pe, i64 1
  %i.qc = insertelement <4 x double> %i.qb, double %i.pu, i64 2
  %i.qd = fptrunc <4 x double> %i.qc to <4 x float>
  %i.qe = insertelement <2 x double> %i.pk, double %i.pw, i64 1
  %i.qf = fptrunc <2 x double> %i.qe to <2 x float>
  store <4 x float> %i.qd, ptr %7, align 16, !tbaa !44
  store <2 x float> %i.qf, ptr %i.oz, align 16, !tbaa !44
  %i.qg = extractelement <4 x double> %i.pz, i64 3
  %i.qh = fptrunc nsz double %i.qg to float
  store float %i.qh, ptr %i.oy, align 8, !tbaa !120
  %i.qi = fsub nsz double f0xBCD01C250C64E2A0, %i.pt
  %i.qj = fptrunc nsz double %i.qi to float
  %i.qk = fsub nsz double f0xBCD01C250C64E2A0, %i.pv
  %i.ql = shufflevector <4 x double> %i.pz, <4 x double> poison, <2 x i32> <i32 poison, i32 2>
  %i.qm = insertelement <2 x double> %i.ql, double %i.qk, i64 0
  %i.qn = fptrunc <2 x double> %i.qm to <2 x float>
  store <2 x float> %i.qn, ptr %i.pl, align 16, !tbaa !44
  store float %i.qj, ptr %i.pn, align 4, !tbaa !45
  store float f0xC09D91BA, ptr %i.po, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store i16 0, ptr %8, align 2, !tbaa !41
  %i.qo = getelementptr inbounds nuw i8, ptr %8, i64 2
  store i16 0, ptr %i.qo, align 2, !tbaa !42
  %i.qp = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i16 0, ptr %i.qp, align 2, !tbaa !43
  call void @_ZN21MapblockMeshGenerator8drawQuadERK8TileSpecPN4core8vector3dIfEERKNS4_IsEEf(ptr noundef nonnull readonly align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %22, ptr noundef nonnull %7, ptr noundef nonnull align 2 dereferenceable(6) %8, float noundef 1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %.thread64

bb.m:                                             ; preds = %bb.k
  br i1 %i.ag, label %.thread67, label %.thread64

.thread67:                                        ; preds = %.thread65, %bb.m
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !58
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 136
  %i.qt = load float, ptr %i.qs, align 8, !tbaa !118
  %i.qu = fmul nsz float %i.qt, 5.000000e+00      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.qv = fneg nsz float %i.qu
  %i.qw = call nsz float @llvm.fmuladd.f32(float %i.qu, float 2.000000e+00, float -5.000000e+00)
  %i.qx = fpext nsz float %i.qw to double         ; 2 uses
  %i.qy = fmul nsz double %i.qx, f0x3FD5E3A8748A0BF7
  %i.qz = fmul nsz double %i.qx, f0x3FEE11F642522D1B
  %i.ra = fptrunc nsz double %i.qz to float
  %i.rb = fadd nsz float %i.ra, 4.700000e+00
  %i.rc = fpext nsz float %i.rb to double         ; 2 uses
  %i.rd = fmul nsz double %i.rc, f0xBCAA79394C9E8A0A
  %i.re = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.rf = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.rg = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.rh = getelementptr inbounds nuw i8, ptr %5, i64 28
  store float f0x40485046, ptr %i.rh, align 4, !tbaa !117
  %i.ri = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.rj = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.rk = insertelement <2 x float> poison, float %i.qv, i64 0
  %i.rl = insertelement <2 x float> %i.rk, float %i.qu, i64 1
  %i.rm = fpext <2 x float> %i.rl to <2 x double> ; 3 uses
  %i.rn = shufflevector <2 x double> %i.rm, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ro = insertelement <4 x double> <double poison, double poison, double f0x3F592E0000000000, double f0x3F592E0000000000>, double %i.rc, i64 0
  %i.rp = shufflevector <4 x double> %i.ro, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.rq = call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.rn, <4 x double> splat (double f0xBCAA79394C9E8A0A), <4 x double> %i.rp) ; 3 uses
  %i.rr = shufflevector <4 x double> %i.rq, <4 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 1>
  %i.rs = insertelement <4 x double> %i.rr, double %i.qy, i64 1
  %i.rt = insertelement <2 x double> poison, double %i.rd, i64 0
  %i.ru = shufflevector <2 x double> %i.rt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rv = fsub nsz <2 x double> %i.ru, %i.rm      ; 2 uses
  %i.rw = shufflevector <2 x double> %i.rv, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.rx = shufflevector <4 x double> %i.rs, <4 x double> %i.rw, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.ry = fptrunc <4 x double> %i.rx to <4 x float>
  %i.rz = fadd nsz <4 x float> %i.ry, <float -0.000000e+00, float 4.840000e+00, float -0.000000e+00, float -0.000000e+00> ; 2 uses
  store <4 x float> %i.rz, ptr %5, align 16, !tbaa !44
  %i.sa = extractelement <4 x float> %i.rz, i64 1
  store float %i.sa, ptr %i.rf, align 16, !tbaa !117
  %i.sb = shufflevector <2 x double> %i.rv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.sc = shufflevector <4 x double> %i.rq, <4 x double> poison, <2 x i32> <i32 poison, i32 3>
  %i.sd = shufflevector <2 x double> %i.sb, <2 x double> %i.sc, <2 x i32> <i32 0, i32 3>
  %i.se = fptrunc <2 x double> %i.sd to <2 x float>
  store <2 x float> %i.se, ptr %i.re, align 4, !tbaa !44
  %i.sf = fsub nsz <2 x double> splat (double f0xBC14D4C30639FFBE), %i.rm ; 2 uses
  %i.sg = extractelement <2 x double> %i.sf, i64 0
  %i.sh = fptrunc nsz double %i.sg to float
  %i.si = shufflevector <2 x double> %i.sf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.sj = shufflevector <4 x double> %i.rq, <4 x double> poison, <2 x i32> <i32 poison, i32 2>
  %i.sk = shufflevector <2 x double> %i.si, <2 x double> %i.sj, <2 x i32> <i32 0, i32 3>
  %i.sl = fptrunc <2 x double> %i.sk to <2 x float>
  store <2 x float> %i.sl, ptr %i.rg, align 16, !tbaa !44
  store float %i.sh, ptr %i.ri, align 4, !tbaa !45
  store float f0x40485046, ptr %i.rj, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store i16 0, ptr %6, align 2, !tbaa !41
  %i.sm = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i16 0, ptr %i.sm, align 2, !tbaa !42
  %i.sn = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i16 0, ptr %i.sn, align 2, !tbaa !43
  call void @_ZN21MapblockMeshGenerator8drawQuadERK8TileSpecPN4core8vector3dIfEERKNS4_IsEEf(ptr noundef nonnull readonly align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %22, ptr noundef nonnull %5, ptr noundef nonnull align 2 dereferenceable(6) %6, float noundef 1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %.thread64

.thread64:                                        ; preds = %.thread62, %bb.m, %.thread67, %bb.l
  br i1 %i.ad, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.thread64
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !58
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 136
  %i.sr = load float, ptr %i.sq, align 8, !tbaa !118
  %i.ss = fmul nsz float %i.sr, 5.000000e+00      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.st = fneg nsz float %i.ss
  %i.su = call nsz float @llvm.fmuladd.f32(float %i.ss, float 2.000000e+00, float -5.000000e+00) ; 3 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.sw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.sx = fmul nsz float %i.su, 0.000000e+00
  %i.sy = fpext ninf nsz float %i.sx to double
  store float %i.su, ptr %i.sv, align 4, !tbaa !117
  %i.sz = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ta = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.tb = insertelement <2 x double> poison, double %i.sy, i64 0
  %i.tc = shufflevector <2 x double> %i.tb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.td = fmul ninf nsz <2 x double> %i.tc, <double f0x3FE6A09E667F3BCD, double f0xBFE6A09E667F3BCC> ; 2 uses
  %i.te = insertelement <2 x float> poison, float %i.st, i64 0
  %i.tf = insertelement <2 x float> %i.te, float %i.ss, i64 1
  %i.tg = fpext <2 x float> %i.tf to <2 x double> ; 4 uses
  %i.th = shufflevector <2 x double> %i.td, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ti = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tg, <2 x double> <double f0x3FE6A09E667F3BCC, double f0x3FE6A09E667F3BCD>, <2 x double> %i.td)
  %i.tj = fptrunc <2 x double> %i.ti to <2 x float>
  store <2 x float> %i.tj, ptr %i.sw, align 8, !tbaa !44
  store float %i.su, ptr %i.ta, align 16, !tbaa !117
  %i.tk = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.tl = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.tm = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tg, <2 x double> <double f0x3FE6A09E667F3BCD, double f0x3FE6A09E667F3BCC>, <2 x double> %i.th) ; 2 uses
  %i.tn = extractelement <2 x double> %i.tm, i64 0
  %i.to = fptrunc nsz double %i.tn to float
  store float %i.to, ptr %3, align 16, !tbaa !120
  store float -5.000000e+00, ptr %i.tl, align 4, !tbaa !117
  %i.tp = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.tq = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.tr = fmul nsz <2 x double> %i.tg, <double f0x3FE6A09E667F3BCC, double f0x3FE6A09E667F3BCD> ; 2 uses
  %i.ts = shufflevector <2 x double> %i.tm, <2 x double> %i.tr, <2 x i32> <i32 1, i32 3>
  %i.tt = fptrunc <2 x double> %i.ts to <2 x float>
  store <2 x float> %i.tt, ptr %i.sz, align 4, !tbaa !44
  %i.tu = extractelement <2 x double> %i.tr, i64 0
  %i.tv = fptrunc nsz double %i.tu to float
  %i.tw = fmul nsz <2 x double> %i.tg, <double f0x3FE6A09E667F3BCD, double f0x3FE6A09E667F3BCC>
  %i.tx = shufflevector <2 x double> %i.tw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ty = fptrunc <2 x double> %i.tx to <2 x float>
  store <2 x float> %i.ty, ptr %i.tk, align 16, !tbaa !44
  store float %i.tv, ptr %i.tp, align 4, !tbaa !45
  store float -5.000000e+00, ptr %i.tq, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i16 0, ptr %4, align 2, !tbaa !41
  %i.tz = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 0, ptr %i.tz, align 2, !tbaa !42
  %i.ua = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 0, ptr %i.ua, align 2, !tbaa !43
  call void @_ZN21MapblockMeshGenerator8drawQuadERK8TileSpecPN4core8vector3dIfEERKNS4_IsEEf(ptr noundef nonnull readonly align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %22, ptr noundef nonnull %3, ptr noundef nonnull align 2 dereferenceable(6) %4, float noundef 1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.ub = load ptr, ptr %i.so, align 8, !tbaa !58
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 136
  %i.ud = load float, ptr %i.uc, align 8, !tbaa !118
  %i.ue = fmul nsz float %i.ud, 5.000000e+00      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.uf = fneg nsz float %i.ue
  %i.ug = call nsz float @llvm.fmuladd.f32(float %i.ue, float 2.000000e+00, float -5.000000e+00) ; 3 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ui = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.uj = fmul nsz float %i.ug, 0.000000e+00
  %i.uk = fpext ninf nsz float %i.uj to double
  store float %i.ug, ptr %i.uh, align 4, !tbaa !117
  %i.ul = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.um = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.un = insertelement <2 x double> poison, double %i.uk, i64 0
  %i.uo = shufflevector <2 x double> %i.un, <2 x double> poison, <2 x i32> zeroinitializer
  %i.up = fmul ninf nsz <2 x double> %i.uo, <double f0x3FE6A09E667F3BCD, double f0x3FE6A09E667F3BCC> ; 2 uses
  %i.uq = insertelement <2 x float> poison, float %i.uf, i64 0
  %i.ur = insertelement <2 x float> %i.uq, float %i.ue, i64 1
  %i.us = fpext <2 x float> %i.ur to <2 x double> ; 4 uses
  %i.ut = shufflevector <2 x double> %i.up, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.uu = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.us, <2 x double> <double f0xBFE6A09E667F3BCC, double f0x3FE6A09E667F3BCD>, <2 x double> %i.up)
  %i.uv = fptrunc <2 x double> %i.uu to <2 x float>
  store <2 x float> %i.uv, ptr %i.ui, align 8, !tbaa !44
  store float %i.ug, ptr %i.um, align 16, !tbaa !117
  %i.uw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ux = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.uy = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.us, <2 x double> <double f0x3FE6A09E667F3BCD, double f0xBFE6A09E667F3BCC>, <2 x double> %i.ut) ; 2 uses
  %i.uz = extractelement <2 x double> %i.uy, i64 0
  %i.va = fptrunc nsz double %i.uz to float
  store float %i.va, ptr %1, align 16, !tbaa !120
  store float -5.000000e+00, ptr %i.ux, align 4, !tbaa !117
  %i.vb = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.vc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.vd = fmul nsz <2 x double> %i.us, <double f0xBFE6A09E667F3BCC, double f0x3FE6A09E667F3BCD> ; 2 uses
  %i.ve = shufflevector <2 x double> %i.uy, <2 x double> %i.vd, <2 x i32> <i32 1, i32 3>
  %i.vf = fptrunc <2 x double> %i.ve to <2 x float>
  store <2 x float> %i.vf, ptr %i.ul, align 4, !tbaa !44
  %i.vg = extractelement <2 x double> %i.vd, i64 0
  %i.vh = fptrunc nsz double %i.vg to float
  %i.vi = fmul nsz <2 x double> %i.us, <double f0x3FE6A09E667F3BCD, double f0xBFE6A09E667F3BCC>
  %i.vj = shufflevector <2 x double> %i.vi, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.vk = fptrunc <2 x double> %i.vj to <2 x float>
  store <2 x float> %i.vk, ptr %i.uw, align 16, !tbaa !44
  store float %i.vh, ptr %i.vb, align 4, !tbaa !45
  store float -5.000000e+00, ptr %i.vc, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i16 0, ptr %2, align 2, !tbaa !41
  %i.vl = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 0, ptr %i.vl, align 2, !tbaa !42
  %i.vm = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i16 0, ptr %i.vm, align 2, !tbaa !43
  call void @_ZN21MapblockMeshGenerator8drawQuadERK8TileSpecPN4core8vector3dIfEERKNS4_IsEEf(ptr noundef nonnull readonly align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %22, ptr noundef nonnull %1, ptr noundef nonnull align 2 dereferenceable(6) %2, float noundef 1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21MapblockMeshGenerator17drawFencelikeNodeEv(ptr noundef nonnull align 8 dereferenceable(496) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %class.VoxelArea, align 8           ; 8 uses
  %2 = alloca %class.VoxelArea, align 8           ; 8 uses
  %3 = alloca %struct.TileSpec, align 8           ; 26 uses
  %4 = alloca %struct.TileSpec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i8 0, ptr %3, align 8, !tbaa !47
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 0, ptr %i.a, align 1, !tbaa !48
  %.ptr.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %.ptr.i, i8 0, i64 18, i1 false)
  store i16 1, ptr %i.b, align 2, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i16 0, ptr %i.c, align 4, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 30
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 31 ; 2 uses
  store <4 x i8> <i8 0, i8 97, i8 1, i8 0>, ptr %i.d, align 2, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.f, align 8, !tbaa !56
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 0, ptr %i.g, align 8, !tbaa !46
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i8 0, ptr %i.h, align 4, !tbaa !57
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 74
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %.ptr.1.i, i8 0, i64 18, i1 false)
  store i16 1, ptr %i.i, align 2, !tbaa !53
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 76
  store i16 0, ptr %i.j, align 4, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 78
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 79 ; 2 uses
  store <4 x i8> <i8 0, i8 97, i8 1, i8 0>, ptr %i.k, align 2, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr null, ptr %i.m, align 8, !tbaa !56
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i32 0, ptr %i.n, align 8, !tbaa !46
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 100
  store i8 0, ptr %i.o, align 4, !tbaa !57
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.q, align 4
  %i.r = load ptr, ptr %0, align 8, !tbaa !31
  call void @_Z12getNodeTileN7MapNodeRKN4core8vector3dIsEEhP12MeshMakeDataR8TileSpec(i32 %.sroa.0.0.copyload.i.i, ptr noundef nonnull align 2 dereferenceable(6) %i.p, i8 noundef zeroext 0, ptr noundef %i.r, ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.s = load i8, ptr %i.e, align 1, !tbaa !109
  %i.t = and i8 %i.s, -3
  store i8 %i.t, ptr %i.e, align 1, !tbaa !109
  %i.u = load i8, ptr %i.l, align 1, !tbaa !109
  %i.v = and i8 %i.u, -3
  store i8 %i.v, ptr %i.l, align 1, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 104, i1 false), !tbaa.struct !104
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 1, ptr %i.w, align 1, !tbaa !48
  call void @_ZN21MapblockMeshGenerator21drawAutoLightedCuboidEN4core8aabbox3dIfEEPK8TileSpeciPKfh(ptr noundef nonnull readonly align 8 dereferenceable(496) %0, ptr noundef nonnull byval(%"class.core::aabbox3d") align 8 @_ZZN21MapblockMeshGenerator17drawFencelikeNodeEvE4post, ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef 1, ptr noundef nonnull @_ZZN21MapblockMeshGenerator17drawFencelikeNodeEvE6postuv, i8 noundef zeroext 0)
  %.sroa.027.0.copyload = load i16, ptr %i.p, align 8, !tbaa !121
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34 ; 2 uses
  %.sroa.8.0.copyload = load i16, ptr %.sroa.8.0..sroa_idx, align 2, !tbaa !121
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %.sroa.10.0.copyload = load i16, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !121
  %i.x = add i16 %.sroa.027.0.copyload, 1
  %i.y = load ptr, ptr %0, align 8, !tbaa !31     ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !41
  %i.ab = add i16 %i.x, %i.aa                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !42
  %i.ae = add i16 %i.ad, %.sroa.8.0.copyload      ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 4, !tbaa !43
  %i.ah = add i16 %i.ag, %.sroa.10.0.copyload     ; 2 uses
  %.sroa.3.0.insert.ext.i = zext i16 %i.ah to i48
  %.sroa.3.0.insert.shift.i = shl nuw i48 %.sroa.3.0.insert.ext.i, 32
  %.sroa.2.0.insert.ext.i = zext i16 %i.ae to i48
  %.sroa.2.0.insert.shift.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i, 16
  %.sroa.0.0.insert.ext.i = zext i16 %i.ab to i48
  %i.ai = or disjoint i48 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %.sroa.0.0.insert.insert.i = or disjoint i48 %i.ai, %.sroa.3.0.insert.shift.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i48 %.sroa.0.0.insert.insert.i, ptr %2, align 8, !tbaa !121
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i48 %.sroa.0.0.insert.insert.i, ptr %i.aj, align 2, !tbaa !121
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.an = sext i16 %i.ah to i32
  store i32 1, ptr %i.ak, align 4, !tbaa !115
  store i32 1, ptr %i.al, align 8, !tbaa !115
  store i32 1, ptr %i.am, align 4, !tbaa !115
  call void @_ZN16VoxelManipulator7addAreaERK9VoxelArea(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef nonnull align 4 dereferenceable(24) %2)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.aq = load i16, ptr %i.ap, align 4, !tbaa !123
  %i.ar = sext i16 %i.aq to i32
  %i.as = sub nsw i32 %i.an, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.au = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.av = load i32, ptr %i.au, align 4, !tbaa !124
  %i.aw = mul nsw i32 %i.as, %i.av
  %i.ax = load i32, ptr %i.at, align 4, !tbaa !125
  %i.ay = sext i16 %i.ae to i32
  %i.az = getelementptr inbounds nuw i8, ptr %i.y, i64 10
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !126
  %i.bb = sext i16 %i.ba to i32
  %i.bc = add i32 %i.aw, %i.ay
  %i.bd = sub i32 %i.bc, %i.bb
  %i.be = mul i32 %i.bd, %i.ax
  %i.bf = sext i16 %i.ab to i32
  %i.bg = load i16, ptr %i.ao, align 4, !tbaa !127
  %i.bh = sext i16 %i.bg to i32
  %i.bi = sub nsw i32 %i.bf, %i.bh
  %i.bj = add nsw i32 %i.bi, %i.be
  %i.bk = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !128
  %i.bm = sext i32 %i.bj to i64                   ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !55
  %i.bp = and i8 %i.bo, 1
  %.not.i = icmp eq i8 %i.bp, 0
  br i1 %.not.i, label %bb.b, label %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit

bb.b:                                             ; preds = %bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !129
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bm
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = and i32 %i.bt, 65535
  %i.bv = zext nneg i32 %i.bu to i64
  br label %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit

_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.insert.insert.i3 = phi i64 [ %i.bv, %bb.b ], [ 127, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !40 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !132
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !133 ; 3 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = sdiv exact i64 %i.ce, 2080
  %i.cg = icmp ugt i64 %i.cf, %.sroa.0.0.insert.insert.i3
  br i1 %i.cg, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit
  %i.ch = getelementptr inbounds nuw [2080 x i8], ptr %i.cb, i64 %.sroa.0.0.insert.insert.i3 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !134
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.d, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.d:                                             ; preds = %bb.c, %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cb, i64 260000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.c, %bb.d
  %i.cm = phi ptr [ %i.cl, %bb.d ], [ %i.ch, %bb.c ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 98
  %i.co = load i8, ptr %i.cn, align 2, !tbaa !130
  %i.cp = icmp eq i8 %i.co, 10
  br i1 %i.cp, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  call void @_ZN21MapblockMeshGenerator21drawAutoLightedCuboidEN4core8aabbox3dIfEEPK8TileSpeciPKfh(ptr noundef nonnull readonly align 8 dereferenceable(496) %0, ptr noundef nonnull byval(%"class.core::aabbox3d") align 8 @_ZZN21MapblockMeshGenerator17drawFencelikeNodeEvE6bar_x1, ptr noundef nonnull align 8 dereferenceable(104) %3, i32 noundef 1, ptr noundef nonnull @_ZZN21MapblockMeshGenerator17drawFencelikeNodeEvE7xrailuv, i8 noundef zeroext 0)
  call void @_ZN21MapblockMeshGenerator21drawAutoLightedCuboidEN4core8aabbox3dIfEEPK8TileSpeciPKfh(ptr noundef nonnull readonly align 8 dereferenceable(496) %0, ptr noundef nonnull byval(%"class.core::aabbox3d") align 8 @_ZZN21MapblockMeshGenerator17drawFencelikeNodeEvE6bar_x2, ptr noundef nonnull align 8 dereferenceable(104) %3, i32 noundef 1, ptr noundef nonnull @_ZZN21MapblockMeshGenerator17drawFencelikeNodeEvE7xrailuv, i8 noundef zeroext 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK14NodeDefManager3getERK7MapNode.exit
  %.sroa.027.0.copyload30 = load i16, ptr %i.p, align 8, !tbaa !121
  %.sroa.8.0.copyload32 = load i16, ptr %.sroa.8.0..sroa_idx, align 2, !tbaa !121
  %.sroa.10.0.copyload35 = load i16, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !121
  %i.cq = add i16 %.sroa.10.0.copyload35, 1
  %i.cr = load ptr, ptr %0, align 8, !tbaa !31    ; 8 uses
  %i.cs = load i16, ptr %i.z, align 8, !tbaa !41
  %i.ct = add i16 %i.cs, %.sroa.027.0.copyload30  ; 2 uses
  %i.cu = load i16, ptr %i.ac, align 2, !tbaa !42
end_hunk_3
begin_hunk_4_@_ZN21MapblockMeshGenerator10isSameRailEN4core8vector3dIsEE:bb.a
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !167
  br label %_ZNK15ContentFeatures8getGroupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNK15ContentFeatures8getGroupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi i32 [ %i.ci, %bb.g ], [ 0, %bb.f ]
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !168
  %i.cl = icmp eq i32 %.0.i.i, %i.ck
  br label %bb.h

bb.h:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit, %_ZNK15ContentFeatures8getGroupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit
  %.0 = phi i1 [ true, %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit ], [ false, %_ZNK14NodeDefManager3getERK7MapNode.exit ], [ %i.cl, %_ZNK15ContentFeatures8getGroupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21MapblockMeshGenerator16drawRaillikeNodeEv(ptr noundef nonnull align 8 dereferenceable(496) initializes((456, 460)) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %struct.TileSpec, align 8           ; 22 uses
  %2 = alloca [4 x %"class.core::vector3d.0"], align 16 ; 14 uses
  %3 = alloca %"class.core::vector3d", align 2    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = tail call ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @_ZN21MapblockMeshGenerator18raillike_groupnameB5cxx11E) ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNK15ContentFeatures8getGroupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !167
  br label %_ZNK15ContentFeatures8getGroupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNK15ContentFeatures8getGroupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i32 %.0.i.i, ptr %i.h, align 8, !tbaa !168
  %i.i = tail call noundef zeroext i1 @_ZN21MapblockMeshGenerator10isSameRailEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(496) %0, i48 4295032832) ; 4 uses
  br i1 %i.i, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNK15ContentFeatures8getGroupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.j = tail call noundef zeroext i1 @_ZN21MapblockMeshGenerator10isSameRailEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(496) %0, i48 4294967296)
  br i1 %i.j, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef zeroext i1 @_ZN21MapblockMeshGenerator10isSameRailEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(496) %0, i48 8589869056)
  br i1 %i.k, label %.critedge, label %bb.e

.critedge:                                        ; preds = %_ZNK15ContentFeatures8getGroupERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.c, %bb.d
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %bb.d
  %.1 = phi i64 [ 1, %.critedge ], [ 0, %bb.d ]   ; 2 uses
  %i.l = tail call noundef zeroext i1 @_ZN21MapblockMeshGenerator10isSameRailEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(496) %0, i48 -4294901760)
  br i1 %i.l, label %.critedge.1, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = tail call noundef zeroext i1 @_ZN21MapblockMeshGenerator10isSameRailEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(496) %0, i48 -4294967296)
  br i1 %i.m, label %.critedge.1, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = tail call noundef zeroext i1 @_ZN21MapblockMeshGenerator10isSameRailEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(496) %0, i48 -65536)
  br i1 %i.n, label %.critedge.1, label %bb.h

.critedge.1:                                      ; preds = %bb.e, %bb.g, %bb.f
  %.13358.1 = phi i32 [ 0, %bb.g ], [ 0, %bb.f ], [ 180, %bb.e ]
  %.13655.1 = phi i1 [ %i.i, %bb.g ], [ %i.i, %bb.f ], [ true, %bb.e ]
  %i.o = or disjoint i64 %.1, 2
  br label %bb.h

bb.h:                                             ; preds = %.critedge.1, %bb.g
  %.13357.1 = phi i32 [ %.13358.1, %.critedge.1 ], [ 0, %bb.g ] ; 3 uses
  %.13654.1 = phi i1 [ %.13655.1, %.critedge.1 ], [ %i.i, %bb.g ] ; 3 uses
  %.1.1 = phi i64 [ %i.o, %.critedge.1 ], [ %.1, %bb.g ] ; 2 uses
  %i.p = tail call noundef zeroext i1 @_ZN21MapblockMeshGenerator10isSameRailEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(496) %0, i48 131071)
  br i1 %i.p, label %.critedge.2, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = tail call noundef zeroext i1 @_ZN21MapblockMeshGenerator10isSameRailEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(496) %0, i48 65535)
  br i1 %i.q, label %.critedge.2, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = tail call noundef zeroext i1 @_ZN21MapblockMeshGenerator10isSameRailEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(496) %0, i48 4294967295)
  br i1 %i.r, label %.critedge.2, label %bb.k

.critedge.2:                                      ; preds = %bb.h, %bb.j, %bb.i
  %.13358.2 = phi i32 [ %.13357.1, %bb.j ], [ %.13357.1, %bb.i ], [ 90, %bb.h ]
  %.13655.2 = phi i1 [ %.13654.1, %bb.j ], [ %.13654.1, %bb.i ], [ true, %bb.h ]
  %i.s = or i64 %.1.1, 4
  br label %bb.k

bb.k:                                             ; preds = %.critedge.2, %bb.j
  %.13357.2 = phi i32 [ %.13358.2, %.critedge.2 ], [ %.13357.1, %bb.j ] ; 2 uses
  %.13654.2 = phi i1 [ %.13655.2, %.critedge.2 ], [ %.13654.1, %bb.j ] ; 2 uses
  %.1.2 = phi i64 [ %i.s, %.critedge.2 ], [ %.1.1, %bb.j ] ; 2 uses
  %i.t = tail call noundef zeroext i1 @_ZN21MapblockMeshGenerator10isSameRailEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(496) %0, i48 65537)
  br i1 %i.t, label %.critedge.3.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = tail call noundef zeroext i1 @_ZN21MapblockMeshGenerator10isSameRailEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(496) %0, i48 1)
  br i1 %i.u, label %.critedge.3, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = tail call noundef zeroext i1 @_ZN21MapblockMeshGenerator10isSameRailEN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(496) %0, i48 4294901761)
  br i1 %i.v, label %.critedge.3, label %bb.n

.critedge.3:                                      ; preds = %bb.m, %bb.l
  %i.w = or i64 %.1.2, 8
  br i1 %.13654.2, label %.critedge.3.thread, label %bb.o

bb.n:                                             ; preds = %bb.m
  br i1 %.13654.2, label %.critedge.3.thread, label %bb.o

bb.o:                                             ; preds = %.critedge.3, %bb.n
  %.1.365 = phi i64 [ %i.w, %.critedge.3 ], [ %.1.2, %bb.n ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @_ZN12_GLOBAL__N_110rail_kindsE, i64 %.1.365 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !236
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !237
  %i.ab = trunc i32 %i.y to i8
  br label %.critedge.3.thread

.critedge.3.thread:                               ; preds = %bb.k, %.critedge.3, %bb.n, %bb.o
  %i.ac = phi float [ -4.843750e+00, %bb.o ], [ 5.156250e+00, %bb.n ], [ 5.156250e+00, %.critedge.3 ], [ 5.156250e+00, %bb.k ] ; 2 uses
  %.034 = phi i8 [ %i.ab, %bb.o ], [ 0, %bb.n ], [ 0, %.critedge.3 ], [ 0, %bb.k ]
  %.2 = phi i32 [ %i.aa, %bb.o ], [ %.13357.2, %bb.n ], [ %.13357.2, %.critedge.3 ], [ -90, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store i8 0, ptr %1, align 8, !tbaa !47
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 0, ptr %i.ad, align 1, !tbaa !48
  %.ptr.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %.ptr.i, i8 0, i64 18, i1 false)
  store i16 1, ptr %i.ae, align 2, !tbaa !53
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i16 0, ptr %i.af, align 4, !tbaa !54
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 31 ; 2 uses
  store <4 x i8> <i8 0, i8 97, i8 1, i8 0>, ptr %i.ag, align 2, !tbaa !55
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr null, ptr %i.ai, align 8, !tbaa !56
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 0, ptr %i.aj, align 8, !tbaa !46
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i8 0, ptr %i.ak, align 4, !tbaa !57
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 74
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %.ptr.1.i, i8 0, i64 18, i1 false)
  store i16 1, ptr %i.al, align 2, !tbaa !53
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i16 0, ptr %i.am, align 4, !tbaa !54
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 78
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 79 ; 2 uses
  store <4 x i8> <i8 0, i8 97, i8 1, i8 0>, ptr %i.an, align 2, !tbaa !55
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr null, ptr %i.ap, align 8, !tbaa !56
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i32 0, ptr %i.aq, align 8, !tbaa !46
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 100
  store i8 0, ptr %i.ar, align 4, !tbaa !57
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.at, align 4
  %i.au = load ptr, ptr %0, align 8, !tbaa !31
  call void @_Z12getNodeTileN7MapNodeRKN4core8vector3dIsEEhP12MeshMakeDataR8TileSpec(i32 %.sroa.0.0.copyload.i.i, ptr noundef nonnull align 2 dereferenceable(6) %i.as, i8 noundef zeroext %.034, ptr noundef %i.au, ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.av = load i8, ptr %i.ah, align 1, !tbaa !109
  %i.aw = and i8 %i.av, -2
  store i8 %i.aw, ptr %i.ah, align 1, !tbaa !109
  %i.ax = load i8, ptr %i.ao, align 1, !tbaa !109
  %i.ay = and i8 %i.ax, -2
  store i8 %i.ay, ptr %i.ao, align 1, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store float -5.000000e+00, ptr %2, align 16, !tbaa !120
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.ac, ptr %i.az, align 4, !tbaa !117
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store <2 x float> splat (float 5.000000e+00), ptr %i.ba, align 8, !tbaa !44
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %i.ac, ptr %i.bb, align 16, !tbaa !117
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 20
  store <4 x float> <float 5.000000e+00, float 5.000000e+00, float -4.843750e+00, float -5.000000e+00>, ptr %i.bc, align 4, !tbaa !44
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 36
  store <2 x float> <float -5.000000e+00, float -4.843750e+00>, ptr %i.bd, align 4, !tbaa !44
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 44
  store float -5.000000e+00, ptr %i.be, align 4, !tbaa !45
  %.not = icmp eq i32 %.2, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.critedge.3.thread
  %i.bf = sitofp nsz i32 %.2 to double
  %i.bg = fmul nnan nsz double %i.bf, f0x3F91DF46A2529D39
  %sincos.i = call nsz { double, double } @llvm.sincos.f64(double %i.bg) ; 2 uses
  %sin.i = extractvalue { double, double } %sincos.i, 0 ; 2 uses
  %cos.i = extractvalue { double, double } %sincos.i, 1 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.bi = insertelement <2 x double> poison, double %cos.i, i64 0
  %i.bj = insertelement <2 x double> %i.bi, double %sin.i, i64 1 ; 5 uses
  %i.bk = fmul nsz <2 x double> %i.bj, <double 5.000000e+00, double -5.000000e+00> ; 2 uses
  %i.bl = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bm = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bl, <2 x double> <double -5.000000e+00, double 5.000000e+00>, <2 x double> %i.bk)
  %i.bn = fptrunc <2 x double> %i.bm to <2 x float>
  store <2 x float> %i.bn, ptr %i.ba, align 8, !tbaa !44
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bp = insertelement <2 x double> poison, double %sin.i, i64 0
  %i.bq = insertelement <2 x double> %i.bp, double %cos.i, i64 1
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.bs = fmul nsz <2 x double> %i.bj, <double -5.000000e+00, double 5.000000e+00> ; 2 uses
  %i.bt = fmul nsz <2 x double> %i.bj, splat (double 5.000000e+00)
  %i.bu = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> splat (double 5.000000e+00), <2 x double> %i.bt)
  %i.bv = fptrunc <2 x double> %i.bu to <2 x float>
  store <2 x float> %i.bv, ptr %i.bh, align 4, !tbaa !44
  %i.bw = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bl, <2 x double> <double 5.000000e+00, double -5.000000e+00>, <2 x double> %i.bs)
  %i.bx = fptrunc <2 x double> %i.bw to <2 x float>
  %i.by = shufflevector <2 x double> %i.bk, <2 x double> %i.bs, <2 x i32> <i32 1, i32 2>
  %i.bz = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> splat (double -5.000000e+00), <2 x double> %i.by)
  %i.ca = fptrunc <2 x double> %i.bz to <2 x float> ; 2 uses
  %i.cb = extractelement <2 x float> %i.ca, i64 0
  store float %i.cb, ptr %2, align 16, !tbaa !120
  store <2 x float> %i.bx, ptr %i.bo, align 16, !tbaa !44
  %i.cc = extractelement <2 x float> %i.ca, i64 1
  store float %i.cc, ptr %i.br, align 4, !tbaa !45
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.critedge.3.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i16 0, ptr %3, align 2, !tbaa !41
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 0, ptr %i.cd, align 2, !tbaa !42
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i16 0, ptr %i.ce, align 2, !tbaa !43
  call void @_ZN21MapblockMeshGenerator8drawQuadERK8TileSpecPN4core8vector3dIfEERKNS4_IsEEf(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull %2, ptr noundef nonnull align 2 dereferenceable(6) %3, float noundef 1.000000e+00)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21MapblockMeshGenerator16drawAllfacesNodeEv(ptr noundef nonnull align 8 dereferenceable(496) %0) local_unnamed_addr #4 align 2 {
.preheader:
  %1 = alloca %"class.core::vector3d", align 8    ; 4 uses
  %2 = alloca %"class.core::vector3d", align 8    ; 24 uses
  %3 = alloca [6 x %struct.TileSpec], align 16    ; 100 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i8 0, ptr %3, align 16, !tbaa !47
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 0, ptr %i.a, align 1, !tbaa !48
  %.ptr.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %.ptr.i, i8 0, i64 18, i1 false)
  store i16 1, ptr %i.b, align 2, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i16 0, ptr %i.c, align 4, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 30
  store <4 x i8> <i8 0, i8 97, i8 1, i8 0>, ptr %i.d, align 2, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.e, align 8, !tbaa !56
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 0, ptr %i.f, align 16, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i8 0, ptr %i.g, align 4, !tbaa !57
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 74
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %.ptr.1.i, i8 0, i64 18, i1 false)
  store i16 1, ptr %i.h, align 2, !tbaa !53
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 76
  store i16 0, ptr %i.i, align 4, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 78
  store <4 x i8> <i8 0, i8 97, i8 1, i8 0>, ptr %i.j, align 2, !tbaa !55
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr null, ptr %i.k, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i32 0, ptr %i.l, align 16, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 100
  store i8 0, ptr %i.m, align 4, !tbaa !57
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  store i8 0, ptr %.ptr.1, align 8, !tbaa !47
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 105
  store i8 0, ptr %i.n, align 1, !tbaa !48
  %.ptr.i.1 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 130
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(45) %.ptr.i.1, i8 0, i64 18, i1 false)
  store i16 1, ptr %i.o, align 2, !tbaa !53
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 132
  store i16 0, ptr %i.p, align 4, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 134
  store <4 x i8> <i8 0, i8 97, i8 1, i8 0>, ptr %i.q, align 2, !tbaa !55
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 144
  store ptr null, ptr %i.r, align 16, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 152
  store i32 0, ptr %i.s, align 8, !tbaa !46
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i8 0, ptr %i.t, align 4, !tbaa !57
  %.ptr.1.i.1 = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 178
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(45) %.ptr.1.i.1, i8 0, i64 18, i1 false)
  store i16 1, ptr %i.u, align 2, !tbaa !53
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 180
  store i16 0, ptr %i.v, align 4, !tbaa !54
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 182
  store <4 x i8> <i8 0, i8 97, i8 1, i8 0>, ptr %i.w, align 2, !tbaa !55
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 192
  store ptr null, ptr %i.x, align 16, !tbaa !56
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 200
  store i32 0, ptr %i.y, align 8, !tbaa !46
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 204
  store i8 0, ptr %i.z, align 4, !tbaa !57
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 2 uses
  store i8 0, ptr %.ptr.2, align 16, !tbaa !47
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 209
  store i8 0, ptr %i.aa, align 1, !tbaa !48
  %.ptr.i.2 = getelementptr inbounds nuw i8, ptr %3, i64 216
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 234
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %.ptr.i.2, i8 0, i64 18, i1 false)
  store i16 1, ptr %i.ab, align 2, !tbaa !53
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 236
  store i16 0, ptr %i.ac, align 4, !tbaa !54
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 238
  store <4 x i8> <i8 0, i8 97, i8 1, i8 0>, ptr %i.ad, align 2, !tbaa !55
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 248
  store ptr null, ptr %i.ae, align 8, !tbaa !56
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 256
  store i32 0, ptr %i.af, align 16, !tbaa !46
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 260
  store i8 0, ptr %i.ag, align 4, !tbaa !57
  %.ptr.1.i.2 = getelementptr inbounds nuw i8, ptr %3, i64 264
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 282
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %.ptr.1.i.2, i8 0, i64 18, i1 false)
  store i16 1, ptr %i.ah, align 2, !tbaa !53
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 284
  store i16 0, ptr %i.ai, align 4, !tbaa !54
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 286
  store <4 x i8> <i8 0, i8 97, i8 1, i8 0>, ptr %i.aj, align 2, !tbaa !55
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 296
  store ptr null, ptr %i.ak, align 8, !tbaa !56
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 304
  store i32 0, ptr %i.al, align 16, !tbaa !46
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 308
  store i8 0, ptr %i.am, align 4, !tbaa !57
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %3, i64 312 ; 2 uses
  store i8 0, ptr %.ptr.3, align 8, !tbaa !47
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 313
  store i8 0, ptr %i.an, align 1, !tbaa !48
  %.ptr.i.3 = getelementptr inbounds nuw i8, ptr %3, i64 320
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 338
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(45) %.ptr.i.3, i8 0, i64 18, i1 false)
  store i16 1, ptr %i.ao, align 2, !tbaa !53
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 340
  store i16 0, ptr %i.ap, align 4, !tbaa !54
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 342
  store <4 x i8> <i8 0, i8 97, i8 1, i8 0>, ptr %i.aq, align 2, !tbaa !55
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 352
  store ptr null, ptr %i.ar, align 16, !tbaa !56
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 360
  store i32 0, ptr %i.as, align 8, !tbaa !46
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 364
  store i8 0, ptr %i.at, align 4, !tbaa !57
  %.ptr.1.i.3 = getelementptr inbounds nuw i8, ptr %3, i64 368
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 386
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(45) %.ptr.1.i.3, i8 0, i64 18, i1 false)
  store i16 1, ptr %i.au, align 2, !tbaa !53
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 388
  store i16 0, ptr %i.av, align 4, !tbaa !54
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 390
  store <4 x i8> <i8 0, i8 97, i8 1, i8 0>, ptr %i.aw, align 2, !tbaa !55
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 400
  store ptr null, ptr %i.ax, align 16, !tbaa !56
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 408
  store i32 0, ptr %i.ay, align 8, !tbaa !46
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 412
  store i8 0, ptr %i.az, align 4, !tbaa !57
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %3, i64 416 ; 2 uses
  store i8 0, ptr %.ptr.4, align 16, !tbaa !47
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 417
  store i8 0, ptr %i.ba, align 1, !tbaa !48
  %.ptr.i.4 = getelementptr inbounds nuw i8, ptr %3, i64 424
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 442
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %.ptr.i.4, i8 0, i64 18, i1 false)
  store i16 1, ptr %i.bb, align 2, !tbaa !53
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 444
  store i16 0, ptr %i.bc, align 4, !tbaa !54
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 446
  store <4 x i8> <i8 0, i8 97, i8 1, i8 0>, ptr %i.bd, align 2, !tbaa !55
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 456
  store ptr null, ptr %i.be, align 8, !tbaa !56
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 464
  store i32 0, ptr %i.bf, align 16, !tbaa !46
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 468
  store i8 0, ptr %i.bg, align 4, !tbaa !57
  %.ptr.1.i.4 = getelementptr inbounds nuw i8, ptr %3, i64 472
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 490
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %.ptr.1.i.4, i8 0, i64 18, i1 false)
  store i16 1, ptr %i.bh, align 2, !tbaa !53
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 492
  store i16 0, ptr %i.bi, align 4, !tbaa !54
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 494
  store <4 x i8> <i8 0, i8 97, i8 1, i8 0>, ptr %i.bj, align 2, !tbaa !55
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 504
  store ptr null, ptr %i.bk, align 8, !tbaa !56
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 512
  store i32 0, ptr %i.bl, align 16, !tbaa !46
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 516
  store i8 0, ptr %i.bm, align 4, !tbaa !57
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %3, i64 520 ; 2 uses
  store i8 0, ptr %.ptr.5, align 8, !tbaa !47
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 521
  store i8 0, ptr %i.bn, align 1, !tbaa !48
  %.ptr.i.5 = getelementptr inbounds nuw i8, ptr %3, i64 528
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 546
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(45) %.ptr.i.5, i8 0, i64 18, i1 false)
  store i16 1, ptr %i.bo, align 2, !tbaa !53
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 548
  store i16 0, ptr %i.bp, align 4, !tbaa !54
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 550
  store <4 x i8> <i8 0, i8 97, i8 1, i8 0>, ptr %i.bq, align 2, !tbaa !55
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 560
end_hunk_4
begin_hunk_5_@_ZN21MapblockMeshGenerator12drawMeshNodeEv:bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 52
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 74
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 78
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 132
  %.phi.trans.insert64.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.t

bb.k:                                             ; preds = %bb.e
  %.not.i = icmp eq ptr @_ZTH13warningstream, null
  br i1 %.not.i, label %_ZTW13warningstream.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZTH13warningstream()
  br label %_ZTW13warningstream.exit

_ZTW13warningstream.exit:                         ; preds = %bb.k, %bb.l
  %i.bl = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @warningstream) ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !183, !nonnull !107, !align !184 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !170
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call noundef zeroext i1 %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %i.bm), !inline_history !255
  %.v.i = select i1 %i.bp, i64 976, i64 984
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.v.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.2, ptr %i.a, align 8, !tbaa !147
  %i.br = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !185 ; 5 uses
  %.not.i58 = icmp eq ptr %i.bs, null
  br i1 %.not.i58, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.m

bb.m:                                             ; preds = %_ZTW13warningstream.exit
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !170
  %i.bu = getelementptr i8, ptr %i.bt, i64 -24
  %i.bv = load i64, ptr %i.bu, align 8            ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bs, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !192
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.bs)
  %.pre.i = load ptr, ptr %i.bq, align 8, !tbaa !185 ; 2 uses
  %.pre85 = load ptr, ptr %.pre.i, align 8, !tbaa !170
  %.phi.trans.insert = getelementptr i8, ptr %.pre85, i64 -24
  %.pre86 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ca = phi i64 [ %.pre86, %bb.n ], [ %i.bv, %bb.m ]
  %i.cb = phi ptr [ %.pre.i, %bb.n ], [ %i.bs, %bb.m ] ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 %i.ca
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 240
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !271 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i, label %bb.p, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.p:                                             ; preds = %bb.o
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.o
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !276
  %.not.i1.i.i = icmp eq i8 %i.cg, 0
  br i1 %.not.i1.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 67
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !55
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ce)
  %i.cj = load ptr, ptr %i.ce, align 8, !tbaa !170
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = call noundef signext i8 %i.cl(ptr noundef nonnull align 8 dereferenceable(570) %i.ce, i8 noundef signext 10), !inline_history !256
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.q, %bb.r
  %.0.i.i.i = phi i8 [ %i.ci, %bb.q ], [ %i.cm, %bb.r ]
  %i.cn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, i8 noundef signext %.0.i.i.i)
  %i.co = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cn) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

._crit_edge:                                      ; preds = %.loopexit, %bb.j
  %i.cp = load ptr, ptr %i.aa, align 8, !tbaa !170
  %i.cq = getelementptr i8, ptr %i.cp, i64 -24
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds i8, ptr %i.aa, i64 %i.cr ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !278
  %i.cv = add nsw i32 %i.cu, -1                   ; 2 uses
  store i32 %i.cv, ptr %i.ct, align 8, !tbaa !278
  %.not.i59 = icmp eq i32 %i.cv, 0
  br i1 %.not.i59, label %bb.s, label %_ZN11StreamProxylsEPFRSoS0_E.exit

bb.s:                                             ; preds = %._crit_edge
  %i.cw = load ptr, ptr %i.cs, align 8, !tbaa !170
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(12) %i.cs) #26, !inline_history !257
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

bb.t:                                             ; preds = %.lr.ph68, %.loopexit
  %.05267 = phi i32 [ 0, %.lr.ph68 ], [ %i.lj, %.loopexit ] ; 3 uses
  %i.cz = load ptr, ptr %i.aa, align 8, !tbaa !170
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = call noundef i32 %i.db(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i32 noundef %.05267)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i8 0, ptr %2, align 8, !tbaa !47
  store i8 0, ptr %i.ah, align 1, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %.ptr.i, i8 0, i64 18, i1 false)
  store i16 1, ptr %i.ai, align 2, !tbaa !53
  store i16 0, ptr %i.aj, align 4, !tbaa !54
  store <4 x i8> <i8 0, i8 97, i8 1, i8 0>, ptr %i.ak, align 2, !tbaa !55
  store ptr null, ptr %i.al, align 8, !tbaa !56
  store i32 0, ptr %i.am, align 8, !tbaa !46
  store i8 0, ptr %i.an, align 4, !tbaa !57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %.ptr.1.i, i8 0, i64 18, i1 false)
  store i16 1, ptr %i.ao, align 2, !tbaa !53
  store i16 0, ptr %i.ap, align 4, !tbaa !54
  store <4 x i8> <i8 0, i8 97, i8 1, i8 0>, ptr %i.aq, align 2, !tbaa !55
  store ptr null, ptr %i.ar, align 8, !tbaa !56
  store i32 0, ptr %i.as, align 8, !tbaa !46
  store i8 0, ptr %i.at, align 4, !tbaa !57
  %i.dd = call i32 @llvm.umin.i32(i32 %i.dc, i32 5)
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.av, align 4
  %i.de = trunc nuw nsw i32 %i.dd to i8
  %i.df = load ptr, ptr %0, align 8, !tbaa !31
  call void @_Z12getNodeTileN7MapNodeRKN4core8vector3dIsEEhP12MeshMakeDataR8TileSpec(i32 %.sroa.0.0.copyload.i.i, ptr noundef nonnull align 2 dereferenceable(6) %i.au, i8 noundef zeroext %i.de, ptr noundef %i.df, ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.dg = load ptr, ptr %i.aa, align 8, !tbaa !170
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = call noundef ptr %i.di(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i32 noundef %.05267) ; 8 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !170
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = call noundef ptr %i.dm(ptr noundef nonnull align 8 dereferenceable(8) %i.dj), !inline_history !258 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !170
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 56
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = call noundef ptr %i.dq(ptr noundef nonnull align 8 dereferenceable(28) %i.dn), !inline_history !258 ; 6 uses
  %i.ds = load ptr, ptr %i.dj, align 8, !tbaa !170
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = call noundef ptr %i.du(ptr noundef nonnull align 8 dereferenceable(8) %i.dj), !inline_history !259 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !170
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = call noundef i32 %i.dy(ptr noundef nonnull align 8 dereferenceable(28) %i.dv), !inline_history !259 ; 6 uses
  %i.ea = load ptr, ptr %0, align 8, !tbaa !31
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 65
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !114, !range !106, !noundef !107
  %i.ed = trunc nuw i8 %i.ec to i1
  %.not71 = icmp eq i32 %i.dz, 0                  ; 2 uses
  br i1 %i.ed, label %.preheader, label %bb.v

.preheader:                                       ; preds = %bb.t
  br i1 %.not71, label %.loopexit, label %.lr.ph66.preheader

.lr.ph66.preheader:                               ; preds = %.preheader
  %wide.trip.count83 = zext i32 %i.dz to i64
  br label %.lr.ph66

.lr.ph66:                                         ; preds = %.lr.ph66.preheader, %_ZN21MapblockMeshGenerator15blendLightColorERKN4core8vector3dIfEES4_.exit
  %indvars.iv80 = phi i64 [ 0, %.lr.ph66.preheader ], [ %indvars.iv.next81, %_ZN21MapblockMeshGenerator15blendLightColorERKN4core8vector3dIfEES4_.exit ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [40 x i8], ptr %i.dr, i64 %indvars.iv80 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 3 uses
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !45
  %i.eh = load float, ptr %i.bb, align 8, !tbaa !44
  %i.ei = load float, ptr %i.bc, align 4, !tbaa !44
  %i.ej = load float, ptr %i.bd, align 8, !tbaa !44
  %i.ek = load <4 x i8>, ptr %i.ba, align 8, !tbaa !102
  %i.el = trunc <4 x i8> %i.ek to <4 x i1>
  %i.em = load <4 x float>, ptr %i.az, align 8    ; 5 uses
  %i.en = select <4 x i1> %i.el, <4 x float> splat (float 2.550000e+02), <4 x float> %i.em ; 4 uses
  %i.eo = load float, ptr %i.be, align 4, !tbaa !44
  %i.ep = load float, ptr %i.bg, align 8, !tbaa !44
  %i.eq = load float, ptr %i.bh, align 4, !tbaa !44
  %i.er = load float, ptr %i.bi, align 8, !tbaa !44
  %i.es = load <4 x i8>, ptr %i.bf, align 4, !tbaa !102
  %i.et = trunc <4 x i8> %i.es to <4 x i1>
  %i.eu = load <4 x float>, ptr %.phi.trans.insert64.i, align 8, !tbaa !44 ; 5 uses
  %i.ev = select <4 x i1> %i.et, <4 x float> splat (float 2.550000e+02), <4 x float> %i.eu ; 4 uses
  %i.ew = fdiv nsz float %i.eg, 1.000000e+01
  %i.ex = fpext nsz float %i.ew to double
  %i.ey = fadd nsz double %i.ex, 5.000000e-01     ; 2 uses
  %i.ez = fcmp nsz olt double %i.ey, -1.000000e+00
  %i.fa = select i1 %i.ez, double -1.000000e+00, double %i.ey ; 2 uses
  %i.fb = fcmp nsz olt double %i.fa, 2.000000e+00
  %i.fc = select i1 %i.fb, double %i.fa, double 2.000000e+00
  %i.fd = fptrunc nsz double %i.fc to float       ; 5 uses
  %i.fe = fsub nsz float 1.000000e+00, %i.fd      ; 4 uses
  %i.ff = load <2 x float>, ptr %i.ee, align 4, !tbaa !44
  %i.fg = fdiv nsz <2 x float> %i.ff, splat (float 1.000000e+01)
  %i.fh = fpext <2 x float> %i.fg to <2 x double>
  %i.fi = fadd nsz <2 x double> %i.fh, splat (double 5.000000e-01) ; 2 uses
  %i.fj = fcmp nsz olt <2 x double> %i.fi, splat (double -1.000000e+00)
  %i.fk = select <2 x i1> %i.fj, <2 x double> splat (double -1.000000e+00), <2 x double> %i.fi ; 2 uses
  %i.fl = fcmp nsz olt <2 x double> %i.fk, splat (double 2.000000e+00)
  %i.fm = select <2 x i1> %i.fl, <2 x double> %i.fk, <2 x double> splat (double 2.000000e+00)
  %i.fn = fptrunc <2 x double> %i.fm to <2 x float> ; 2 uses
  %i.fo = extractelement <2 x float> %i.fn, i64 0 ; 3 uses
  %i.fp = extractelement <2 x float> %i.fn, i64 1 ; 3 uses
  %i.fq = fmul nsz float %i.fo, %i.fp             ; 2 uses
  %i.fr = fmul nsz float %i.fq, %i.fe             ; 3 uses
  %i.fs = fsub nsz float 1.000000e+00, %i.fp      ; 2 uses
  %i.ft = fmul nsz float %i.fs, %i.fo             ; 2 uses
  %i.fu = fmul nsz float %i.ft, %i.fd             ; 3 uses
  %i.fv = fmul nsz float %i.fe, %i.ft             ; 3 uses
  %i.fw = fsub nsz float 1.000000e+00, %i.fo      ; 2 uses
  %i.fx = fmul nsz float %i.fw, %i.fp             ; 2 uses
  %i.fy = fmul nsz float %i.fx, %i.fd             ; 3 uses
  %i.fz = fmul nsz float %i.fx, %i.fe             ; 3 uses
  %i.ga = fmul nsz float %i.fw, %i.fs             ; 2 uses
  %i.gb = fmul nsz float %i.ga, %i.fd             ; 3 uses
  %i.gc = fmul nsz float %i.fe, %i.ga             ; 3 uses
  %i.gd = extractelement <4 x float> %i.en, i64 0
  %i.ge = fmul nsz float %i.gd, %i.gc
  %i.gf = extractelement <4 x float> %i.en, i64 1
  %i.gg = call nsz float @llvm.fmuladd.f32(float %i.gb, float %i.gf, float %i.ge)
  %i.gh = extractelement <4 x float> %i.en, i64 2
  %i.gi = call nsz float @llvm.fmuladd.f32(float %i.fz, float %i.gh, float %i.gg)
  %i.gj = extractelement <4 x float> %i.en, i64 3
  %i.gk = call nsz float @llvm.fmuladd.f32(float %i.fy, float %i.gj, float %i.gi)
  %i.gl = extractelement <4 x float> %i.ev, i64 0
  %i.gm = call nsz float @llvm.fmuladd.f32(float %i.fv, float %i.gl, float %i.gk)
  %i.gn = extractelement <4 x float> %i.ev, i64 1
  %i.go = call nsz float @llvm.fmuladd.f32(float %i.fu, float %i.gn, float %i.gm)
  %i.gp = extractelement <4 x float> %i.ev, i64 2
  %i.gq = call nsz float @llvm.fmuladd.f32(float %i.fr, float %i.gp, float %i.go)
  %i.gr = fmul nsz float %i.eh, %i.gc
  %i.gs = call nsz float @llvm.fmuladd.f32(float %i.gb, float %i.ei, float %i.gr)
  %i.gt = call nsz float @llvm.fmuladd.f32(float %i.fz, float %i.ej, float %i.gs)
  %i.gu = call nsz float @llvm.fmuladd.f32(float %i.fy, float %i.eo, float %i.gt)
  %i.gv = call nsz float @llvm.fmuladd.f32(float %i.fv, float %i.ep, float %i.gu)
  %i.gw = call nsz float @llvm.fmuladd.f32(float %i.fu, float %i.eq, float %i.gv)
  %i.gx = call nsz float @llvm.fmuladd.f32(float %i.fr, float %i.er, float %i.gw)
  %i.gy = extractelement <4 x float> %i.em, i64 0
  %i.gz = fmul nsz float %i.gy, %i.gc
  %i.ha = extractelement <4 x float> %i.em, i64 1
  %i.hb = call nsz float @llvm.fmuladd.f32(float %i.gb, float %i.ha, float %i.gz)
  %i.hc = extractelement <4 x float> %i.em, i64 2
  %i.hd = call nsz float @llvm.fmuladd.f32(float %i.fz, float %i.hc, float %i.hb)
  %i.he = extractelement <4 x float> %i.em, i64 3
  %i.hf = call nsz float @llvm.fmuladd.f32(float %i.fy, float %i.he, float %i.hd)
  %i.hg = extractelement <4 x float> %i.eu, i64 0
  %i.hh = call nsz float @llvm.fmuladd.f32(float %i.fv, float %i.hg, float %i.hf)
  %i.hi = extractelement <4 x float> %i.eu, i64 1
  %i.hj = call nsz float @llvm.fmuladd.f32(float %i.fu, float %i.hi, float %i.hh)
  %i.hk = extractelement <4 x float> %i.eu, i64 2
  %i.hl = call nsz float @llvm.fmuladd.f32(float %i.fr, float %i.hk, float %i.hj)
  %i.hm = fmul nsz float %i.fq, %i.fd             ; 3 uses
  %i.hn = extractelement <4 x float> %i.eu, i64 3
  %i.ho = call nsz float @llvm.fmuladd.f32(float %i.hm, float %i.hn, float %i.hl)
  %i.hp = load float, ptr %i.bj, align 4, !tbaa !44
  %i.hq = call nsz float @llvm.fmuladd.f32(float %i.hm, float %i.hp, float %i.gx)
  %i.hr = extractelement <4 x float> %i.ev, i64 3
  %i.hs = call nsz float @llvm.fmuladd.f32(float %i.hm, float %i.hr, float %i.gq)
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !117 ; 2 uses
  %i.hv = fcmp nsz olt float %i.hu, 0.000000e+00
  %i.hw = select nsz i1 %i.hv, float 0.000000e+00, float %i.hu ; 2 uses
  %i.hx = fsub nsz float 1.000000e+00, %i.hw
  %i.hy = fmul nsz float %i.hs, %i.hw
  %i.hz = call nsz float @llvm.fmuladd.f32(float %i.hx, float %i.ho, float %i.hy)
  %i.ia = fadd nsz float %i.hz, 5.000000e-01
  %i.ib = call nsz noundef float @llvm.floor.f32(float %i.ia)
  %i.ic = fptosi float %i.ib to i32
  %i.id = call i32 @llvm.smax.i32(i32 %i.ic, i32 0)
  %i.ie = call i32 @llvm.umin.i32(i32 %i.id, i32 255)
  %.sroa.0.0.insert.ext.i.i = trunc nuw nsw i32 %i.ie to i16
  %i.if = fadd nsz float %i.hq, 5.000000e-01
  %i.ig = call nsz noundef float @llvm.floor.f32(float %i.if)
  %i.ih = fptosi float %i.ig to i32
  %i.ii = call i32 @llvm.smax.i32(i32 %i.ih, i32 0)
  %i.ij = call i32 @llvm.umin.i32(i32 %i.ii, i32 255)
  %.sroa.2.0.insert.ext.i.i = trunc nuw nsw i32 %i.ij to i16
  %.sroa.2.0.insert.shift.i.i = shl nuw i16 %.sroa.2.0.insert.ext.i.i, 8
  %.sroa.0.0.insert.insert.i.i = or disjoint i16 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.ik = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 1410
  %i.im = load i8, ptr %i.il, align 2, !tbaa !113
  %i.in = call i32 @_Z12encode_lightth(i16 noundef zeroext %.sroa.0.0.insert.insert.i.i, i8 noundef zeroext %i.im) ; 2 uses
  store i32 %i.in, ptr %1, align 4
  %i.io = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 1410
  %i.iq = load i8, ptr %i.ip, align 2, !tbaa !113
  %.not.i60 = icmp eq i8 %i.iq, 0
  br i1 %.not.i60, label %bb.u, label %_ZN21MapblockMeshGenerator15blendLightColorERKN4core8vector3dIfEES4_.exit

bb.u:                                             ; preds = %.lr.ph66
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.ir, align 4, !tbaa !44
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 20
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !44
  call void @_Z17applyFacesShadingRN5video6SColorEN4core8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(4) %1, <2 x float> %.sroa.01.0.copyload.i, float %.sroa.22.0.copyload.i)
  %.pre.i61 = load i32, ptr %1, align 4
  br label %_ZN21MapblockMeshGenerator15blendLightColorERKN4core8vector3dIfEES4_.exit

_ZN21MapblockMeshGenerator15blendLightColorERKN4core8vector3dIfEES4_.exit: ; preds = %.lr.ph66, %bb.u
  %i.is = phi i32 [ %.pre.i61, %bb.u ], [ %i.in, %.lr.ph66 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.it = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  store i32 %i.is, ptr %i.it, align 4, !tbaa !115
  %i.iu = load <2 x float>, ptr %i.ax, align 8, !tbaa !44
  %i.iv = load <2 x float>, ptr %i.ee, align 4, !tbaa !44
  %i.iw = fadd nsz <2 x float> %i.iu, %i.iv
  store <2 x float> %i.iw, ptr %i.ee, align 4, !tbaa !44
  %i.ix = load float, ptr %i.ay, align 8, !tbaa !45
  %i.iy = load float, ptr %i.ef, align 4, !tbaa !45
  %i.iz = fadd nsz float %i.ix, %i.iy
  store float %i.iz, ptr %i.ef, align 4, !tbaa !45
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count83
  br i1 %exitcond84.not, label %.loopexit, label %.lr.ph66, !llvm.loop !260

bb.v:                                             ; preds = %bb.t
  br i1 %.not71, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v
  %i.ja = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 1410
  %i.jc = load i8, ptr %i.jb, align 2, !tbaa !113
  %.not57 = icmp eq i8 %i.jc, 0
  %wide.trip.count78 = zext i32 %i.dz to i64      ; 3 uses
  br i1 %.not57, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %.pre = load i32, ptr %i.aw, align 8, !tbaa !115 ; 6 uses
  %xtraiter = and i64 %wide.trip.count78, 1
  %i.jd = icmp eq i32 %i.dz, 1
  br i1 %i.jd, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter = and i64 %wide.trip.count78, 4294967294
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.je = getelementptr inbounds nuw [40 x i8], ptr %i.dr, i64 %indvars.iv75 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.jf = load i32, ptr %i.aw, align 8, !tbaa !115
  store i32 %i.jf, ptr %3, align 4, !tbaa !115
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 12
  %.sroa.01.0.copyload.us = load <2 x float>, ptr %i.jg, align 4, !tbaa !44
  %.sroa.22.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.je, i64 20
  %.sroa.22.0.copyload.us = load float, ptr %.sroa.22.0..sroa_idx.us, align 4, !tbaa !44
  call void @_Z17applyFacesShadingRN5video6SColorEN4core8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(4) %3, <2 x float> %.sroa.01.0.copyload.us, float %.sroa.22.0.copyload.us)
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  %i.ji = load i32, ptr %3, align 4, !tbaa !115
  store i32 %i.ji, ptr %i.jh, align 4, !tbaa !115
  %i.jj = load <2 x float>, ptr %i.ax, align 8, !tbaa !44
  %i.jk = load <2 x float>, ptr %i.je, align 4, !tbaa !44
  %i.jl = fadd nsz <2 x float> %i.jj, %i.jk
  store <2 x float> %i.jl, ptr %i.je, align 4, !tbaa !44
  %i.jm = load float, ptr %i.ay, align 8, !tbaa !45
  %i.jn = getelementptr inbounds nuw i8, ptr %i.je, i64 8 ; 2 uses
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !45
  %i.jp = fadd nsz float %i.jm, %i.jo
  store float %i.jp, ptr %i.jn, align 4, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond79.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count78
  br i1 %exitcond79.not, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !261

.lr.ph.split:                                     ; preds = %.lr.ph.split, %.lr.ph.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %indvars.iv.next.1, %.lr.ph.split ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.1, %.lr.ph.split ]
  %i.jq = getelementptr inbounds nuw [40 x i8], ptr %i.dr, i64 %indvars.iv ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i32 %.pre, ptr %3, align 4, !tbaa !115
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 24
  store i32 %.pre, ptr %i.jr, align 4, !tbaa !115
  %i.js = load <2 x float>, ptr %i.ax, align 8, !tbaa !44
  %i.jt = load <2 x float>, ptr %i.jq, align 4, !tbaa !44
  %i.ju = fadd nsz <2 x float> %i.js, %i.jt
  store <2 x float> %i.ju, ptr %i.jq, align 4, !tbaa !44
  %i.jv = load float, ptr %i.ay, align 8, !tbaa !45
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jq, i64 8 ; 2 uses
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !45
  %i.jy = fadd nsz float %i.jv, %i.jx
  store float %i.jy, ptr %i.jw, align 4, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.jz = getelementptr inbounds nuw [40 x i8], ptr %i.dr, i64 %indvars.iv ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i32 %.pre, ptr %3, align 4, !tbaa !115
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 64
  store i32 %.pre, ptr %i.kb, align 4, !tbaa !115
  %i.kc = load <2 x float>, ptr %i.ax, align 8, !tbaa !44
  %i.kd = load <2 x float>, ptr %i.ka, align 4, !tbaa !44
  %i.ke = fadd nsz <2 x float> %i.kc, %i.kd
  store <2 x float> %i.ke, ptr %i.ka, align 4, !tbaa !44
  %i.kf = load float, ptr %i.ay, align 8, !tbaa !45
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jz, i64 48 ; 2 uses
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !45
  %i.ki = fadd nsz float %i.kf, %i.kh
  store float %i.ki, ptr %i.kg, align 4, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN21MapblockMeshGenerator12drawMeshNodeEv:bb.a
  %i.km = load <2 x float>, ptr %i.kj, align 4, !tbaa !44
  %i.kn = fadd nsz <2 x float> %i.kl, %i.km
  store <2 x float> %i.kn, ptr %i.kj, align 4, !tbaa !44
  %i.ko = load float, ptr %i.ay, align 8, !tbaa !45
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kj, i64 8 ; 2 uses
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !45
  %i.kr = fadd nsz float %i.ko, %i.kq
  store float %i.kr, ptr %i.kp, align 4, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.split.epil.preheader, %.loopexit.loopexit97.unr-lcssa, %.lr.ph.split.us, %_ZN21MapblockMeshGenerator15blendLightColorERKN4core8vector3dIfEES4_.exit, %bb.v, %.preheader
  %i.ks = load ptr, ptr %i.bk, align 8, !tbaa !32
  %i.kt = load ptr, ptr %i.dj, align 8, !tbaa !170
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 40
  %i.kv = load ptr, ptr %i.ku, align 8
  %i.kw = call noundef ptr %i.kv(ptr noundef nonnull align 8 dereferenceable(8) %i.dj), !inline_history !262 ; 2 uses
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !170
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 56
  %i.kz = load ptr, ptr %i.ky, align 8
  %i.la = call noundef ptr %i.kz(ptr noundef nonnull align 8 dereferenceable(28) %i.kw), !inline_history !262
  %i.lb = load ptr, ptr %i.dj, align 8, !tbaa !170
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 32
  %i.ld = load ptr, ptr %i.lc, align 8
  %i.le = call noundef ptr %i.ld(ptr noundef nonnull align 8 dereferenceable(8) %i.dj), !inline_history !263 ; 2 uses
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !170
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %i.lh = load ptr, ptr %i.lg, align 8
  %i.li = call noundef i32 %i.lh(ptr noundef nonnull align 8 dereferenceable(28) %i.le), !inline_history !263
  call void @_ZN13MeshCollector6appendERK8TileSpecPKN5video9S3DVertexEjPKtj(ptr noundef nonnull align 8 dereferenceable(76) %i.ks, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef %i.dr, i32 noundef %i.dz, ptr noundef %i.la, i32 noundef %i.li)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.lj = add nuw i32 %.05267, 1                  ; 2 uses
  %i.lk = load ptr, ptr %i.aa, align 8, !tbaa !170
  %i.ll = load ptr, ptr %i.lk, align 8
  %i.lm = call noundef i32 %i.ll(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
  %i.ln = icmp ult i32 %i.lj, %i.lm
  br i1 %i.ln, label %bb.t, label %._crit_edge, !llvm.loop !264

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %bb.s, %._crit_edge, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZTW13warningstream.exit
  ret void
}

declare noundef zeroext i8 @_ZNK7MapNode10getFaceDirEPK14NodeDefManagerb(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare noundef ptr @_Z15cloneStaticMeshPN5scene5IMeshE(ptr noundef) local_unnamed_addr #5

declare void @_Z21rotateMeshBy6dFacedirPN5scene5IMeshEh(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

declare void @_Z14rotateMeshXZbyPN5scene5IMeshEd(ptr noundef, double noundef) local_unnamed_addr #5

declare void @_Z22recalculateBoundingBoxPN5scene5IMeshE(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsEPFRSoS0_E(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !185    ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !170
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !192
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load ptr, ptr %0, align 8, !tbaa !185
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %.pre, %bb.c ], [ %i.a, %bb.b ]
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr %1(ptr noundef nonnull align 8 dereferenceable(8) %i.i), !inline_history !279 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #12

; Function Attrs: mustprogress noreturn uwtable
define dso_local void @_ZN21MapblockMeshGenerator20errorUnknownDrawtypeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(496) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = tail call ptr @_ZTW10infostream()
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9LogStreamlsIRA14_KcEER11StreamProxyOT_(ptr noundef nonnull align 8 dereferenceable(992) %i.a, ptr noundef nonnull align 1 dereferenceable(14) @.str.3)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 98
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRK12NodeDrawTypeEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.e)
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsEPFRSoS0_E(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_) ; 0 uses
  tail call void @_Z14fatal_error_fnPKcS0_jS0_(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 1789, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN21MapblockMeshGenerator20errorUnknownDrawtypeEv) #27
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr hidden noundef ptr @_ZTW10infostream() local_unnamed_addr #11 comdat {
bb.a:
  %.not = icmp eq ptr @_ZTH10infostream, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZTH10infostream()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @infostream)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9LogStreamlsIRA14_KcEER11StreamProxyOT_(ptr noundef nonnull align 8 dereferenceable(992) %0, ptr noundef nonnull align 1 dereferenceable(14) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !183, !nonnull !107, !align !184 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !170
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.v = select i1 %i.e, i64 976, i64 984
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %.v ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !tbaa !147
  %i.g = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRK12NodeDrawTypeEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !185    ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !170
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !192
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pre = load ptr, ptr %0, align 8, !tbaa !185   ; 2 uses
  %.pre2 = load ptr, ptr %.pre, align 8, !tbaa !170
  %.phi.trans.insert = getelementptr i8, ptr %.pre2, i64 -24
  %.pre3 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = phi i64 [ %.pre3, %bb.c ], [ %i.e, %bb.b ]
  %i.k = phi ptr [ %.pre, %bb.c ], [ %i.b, %bb.b ] ; 3 uses
  %i.l = load i8, ptr %1, align 1, !tbaa !280     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.l, ptr %i.a, align 1, !tbaa !55
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !281
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_h.exit

bb.f:                                             ; preds = %bb.d
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext %i.l) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_h.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_h.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_h.exit, %bb.a
  ret ptr %0
}

; Function Attrs: noreturn
declare void @_Z14fatal_error_fnPKcS0_jS0_(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21MapblockMeshGenerator8drawNodeEv(ptr noundef nonnull align 8 dereferenceable(496) initializes((40, 52)) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %1 = alloca %"class.core::vector3d", align 8    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.03.0.copyload = load i48, ptr %i.a, align 8, !tbaa !121 ; 2 uses
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.03.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16
  %i.b = sitofp nsz i16 %.sroa.3.0.extract.trunc.i to float
  %i.c = bitcast i48 %.sroa.03.0.copyload to <3 x i16>
  %i.d = shufflevector <3 x i16> %i.c, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.e = sitofp <2 x i16> %i.d to <2 x float>
  %i.f = fmul nnan nsz <2 x float> %i.e, splat (float 1.000000e+01)
  %i.g = fmul nnan nsz float %i.b, 1.000000e+01
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x float> %i.f, ptr %i.h, align 8, !tbaa !44
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.g, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !58
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 98
  %i.l = load i8, ptr %i.k, align 2, !tbaa !130
  switch i8 %i.l, label %bb.c [
    i8 1, label %bb.w
    i8 2, label %bb.b
    i8 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  tail call void @_ZN21MapblockMeshGenerator13drawSolidNodeEv(ptr noundef nonnull align 8 dereferenceable(496) %0)
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %0, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 65
  %i.o = load i8, ptr %i.n, align 1, !tbaa !114, !range !106, !noundef !107
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %indvars.iv.i = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.i, %bb.g ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.y = load i16, ptr %i.r, align 8, !tbaa !41
  %i.z = load i16, ptr %i.a, align 8, !tbaa !41
  %i.aa = add i16 %i.z, %i.y
  %i.ab = load i16, ptr %i.s, align 2, !tbaa !42
  %i.ac = load i16, ptr %i.t, align 2, !tbaa !42
  %i.ad = add i16 %i.ac, %i.ab
  %i.ae = load i16, ptr %i.u, align 4, !tbaa !43
  %i.af = load i16, ptr %i.v, align 4, !tbaa !43
  %i.ag = add i16 %i.af, %i.ae
  %.sroa.3.0.insert.ext.i.i = zext i16 %i.ag to i48
  %.sroa.3.0.insert.shift.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i.i, 32
  %.sroa.2.0.insert.ext.i.i = zext i16 %i.ad to i48
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i.i, 16
  %.sroa.2.0.insert.insert.i.i = or disjoint i48 %.sroa.3.0.insert.shift.i.i, %.sroa.2.0.insert.shift.i.i
  %.sroa.0.0.insert.ext.i.i = zext i16 %i.aa to i48
  %.sroa.0.0.insert.insert.i.i = or disjoint i48 %.sroa.2.0.insert.insert.i.i, %.sroa.0.0.insert.ext.i.i
  store i48 %.sroa.0.0.insert.insert.i.i, ptr %1, align 8
  %i.ah = getelementptr inbounds nuw [6 x i8], ptr @_ZL10light_dirs, i64 %indvars.iv.i
  %i.ai = load ptr, ptr %0, align 8, !tbaa !31
  %i.aj = call noundef zeroext i16 @_Z25getSmoothLightTransparentRKN4core8vector3dIsEES3_P12MeshMakeData(ptr noundef nonnull align 2 dereferenceable(6) %1, ptr noundef nonnull align 2 dereferenceable(6) %i.ah, ptr noundef %i.ai) ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i16 %i.aj to i8 ; 2 uses
  %.sroa.5.0.extract.shift.i = lshr i16 %i.aj, 8
  %.sroa.5.0.extract.trunc.i = trunc nuw i16 %.sroa.5.0.extract.shift.i to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.ak = uitofp nsz i8 %.sroa.0.0.extract.trunc.i to float
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i
  store float %i.ak, ptr %i.al, align 4, !tbaa !44
  %i.am = uitofp nsz i8 %.sroa.5.0.extract.trunc.i to float
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i
  store float %i.am, ptr %i.an, align 4, !tbaa !44
  %i.ao = icmp eq i8 %.sroa.0.0.extract.trunc.i, -1
  br i1 %i.ao, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.i
  store i8 1, ptr %i.ap, align 1, !tbaa !102
  %i.aq = xor i64 %indvars.iv.i, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aq
  store i8 1, ptr %i.ar, align 1, !tbaa !102
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 8
  br i1 %exitcond.not.i, label %_ZN21MapblockMeshGenerator19getSmoothLightFrameEv.exit, label %bb.e, !llvm.loop !0

bb.h:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.sroa.01.0.copyload = load i32, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !40
  %i.av = tail call noundef zeroext i16 @_Z16getInteriorLight7MapNodeiPK14NodeDefManager(i32 %.sroa.01.0.copyload, i32 noundef 0, ptr noundef %i.au)
  %i.aw = load ptr, ptr %i.i, align 8, !tbaa !58
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1410
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !113
  %i.az = tail call i32 @_Z12encode_lightth(i16 noundef zeroext %i.av, i8 noundef zeroext %i.ay)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !115
  br label %_ZN21MapblockMeshGenerator19getSmoothLightFrameEv.exit

_ZN21MapblockMeshGenerator19getSmoothLightFrameEv.exit: ; preds = %bb.g, %bb.h
  %i.bb = load ptr, ptr %i.i, align 8, !tbaa !58
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 98
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !130
  switch i8 %i.bd, label %bb.v [
    i8 3, label %bb.i
    i8 4, label %bb.j
    i8 13, label %bb.k
    i8 5, label %bb.l
    i8 7, label %bb.m
    i8 8, label %bb.n
    i8 9, label %bb.o
    i8 17, label %bb.p
    i8 14, label %bb.q
    i8 10, label %bb.r
    i8 11, label %bb.s
    i8 12, label %bb.t
    i8 16, label %bb.u
  ]

bb.i:                                             ; preds = %_ZN21MapblockMeshGenerator19getSmoothLightFrameEv.exit
  call void @_ZN21MapblockMeshGenerator14drawLiquidNodeEv(ptr noundef nonnull align 8 dereferenceable(496) %0)
  br label %bb.w

bb.j:                                             ; preds = %_ZN21MapblockMeshGenerator19getSmoothLightFrameEv.exit
  call void @_ZN21MapblockMeshGenerator17drawGlasslikeNodeEv(ptr noundef nonnull align 8 dereferenceable(496) %0)
  br label %bb.w

bb.k:                                             ; preds = %_ZN21MapblockMeshGenerator19getSmoothLightFrameEv.exit
  call void @_ZN21MapblockMeshGenerator23drawGlasslikeFramedNodeEv(ptr noundef nonnull align 8 dereferenceable(496) %0)
  br label %bb.w

bb.l:                                             ; preds = %_ZN21MapblockMeshGenerator19getSmoothLightFrameEv.exit
  call void @_ZN21MapblockMeshGenerator16drawAllfacesNodeEv(ptr noundef nonnull align 8 dereferenceable(496) %0)
  br label %bb.w

bb.m:                                             ; preds = %_ZN21MapblockMeshGenerator19getSmoothLightFrameEv.exit
  call void @_ZN21MapblockMeshGenerator17drawTorchlikeNodeEv(ptr noundef nonnull align 8 dereferenceable(496) %0)
  br label %bb.w

bb.n:                                             ; preds = %_ZN21MapblockMeshGenerator19getSmoothLightFrameEv.exit
  call void @_ZN21MapblockMeshGenerator16drawSignlikeNodeEv(ptr noundef nonnull align 8 dereferenceable(496) %0)
  br label %bb.w

bb.o:                                             ; preds = %_ZN21MapblockMeshGenerator19getSmoothLightFrameEv.exit
  call void @_ZN21MapblockMeshGenerator17drawPlantlikeNodeEv(ptr noundef nonnull align 8 dereferenceable(496) %0)
  br label %bb.w

bb.p:                                             ; preds = %_ZN21MapblockMeshGenerator19getSmoothLightFrameEv.exit
  call void @_ZN21MapblockMeshGenerator23drawPlantlikeRootedNodeEv(ptr noundef nonnull align 8 dereferenceable(496) %0)
  br label %bb.w

bb.q:                                             ; preds = %_ZN21MapblockMeshGenerator19getSmoothLightFrameEv.exit
  call void @_ZN21MapblockMeshGenerator16drawFirelikeNodeEv(ptr noundef nonnull align 8 dereferenceable(496) %0)
  br label %bb.w

bb.r:                                             ; preds = %_ZN21MapblockMeshGenerator19getSmoothLightFrameEv.exit
  call void @_ZN21MapblockMeshGenerator17drawFencelikeNodeEv(ptr noundef nonnull align 8 dereferenceable(496) %0)
  br label %bb.w

bb.s:                                             ; preds = %_ZN21MapblockMeshGenerator19getSmoothLightFrameEv.exit
  call void @_ZN21MapblockMeshGenerator16drawRaillikeNodeEv(ptr noundef nonnull align 8 dereferenceable(496) %0)
  br label %bb.w

bb.t:                                             ; preds = %_ZN21MapblockMeshGenerator19getSmoothLightFrameEv.exit
  call void @_ZN21MapblockMeshGenerator15drawNodeboxNodeEv(ptr noundef nonnull align 8 dereferenceable(496) %0)
  br label %bb.w

bb.u:                                             ; preds = %_ZN21MapblockMeshGenerator19getSmoothLightFrameEv.exit
  call void @_ZN21MapblockMeshGenerator12drawMeshNodeEv(ptr noundef nonnull align 8 dereferenceable(496) %0)
  br label %bb.w

bb.v:                                             ; preds = %_ZN21MapblockMeshGenerator19getSmoothLightFrameEv.exit
  call void @_ZN21MapblockMeshGenerator20errorUnknownDrawtypeEv(ptr noundef nonnull align 8 dereferenceable(496) %0)
  unreachable

bb.w:                                             ; preds = %bb.a, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21MapblockMeshGenerator8generateEv(ptr noundef nonnull align 8 dereferenceable(496) initializes((36, 38)) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %class.VoxelArea, align 8           ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  store i16 0, ptr %i.b, align 4, !tbaa !153
  %i.c = load ptr, ptr %0, align 8, !tbaa !31     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 54
  %i.e = load i16, ptr %i.d, align 2, !tbaa !285
  %.not = icmp eq i16 %i.e, 0
  br i1 %.not, label %._crit_edge13, label %.lr.ph12

.lr.ph12:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 34 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
end_hunk_6
