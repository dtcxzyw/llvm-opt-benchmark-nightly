Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mapblock_mesh?download=true
inline.NumInlined: 2550
inline.NumDeleted: 1173
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZNK17PartialMeshBuffer4drawEPN5video12IVideoDriverE:bb.a
bb.c:                                             ; preds = %bb.a
  %i.m = lshr i32 %i.k, 1
  br label %_ZNK5scene12IIndexBuffer17getPrimitiveCountENS_16E_PRIMITIVE_TYPEE.exit

bb.d:                                             ; preds = %bb.a
  %i.n = add i32 %i.k, -2
  br label %_ZNK5scene12IIndexBuffer17getPrimitiveCountENS_16E_PRIMITIVE_TYPEE.exit

bb.e:                                             ; preds = %bb.a
  %i.o = add i32 %i.k, -2
  br label %_ZNK5scene12IIndexBuffer17getPrimitiveCountENS_16E_PRIMITIVE_TYPEE.exit

bb.f:                                             ; preds = %bb.a
  %i.p = udiv i32 %i.k, 3
  br label %_ZNK5scene12IIndexBuffer17getPrimitiveCountENS_16E_PRIMITIVE_TYPEE.exit

bb.g:                                             ; preds = %bb.a
  br label %_ZNK5scene12IIndexBuffer17getPrimitiveCountENS_16E_PRIMITIVE_TYPEE.exit

_ZNK5scene12IIndexBuffer17getPrimitiveCountENS_16E_PRIMITIVE_TYPEE.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i32 [ 0, %bb.g ], [ %i.k, %bb.a ], [ %i.l, %bb.b ], [ %i.k, %bb.a ], [ %i.m, %bb.c ], [ %i.n, %bb.d ], [ %i.o, %bb.e ], [ %i.p, %bb.f ], [ %i.k, %bb.a ]
  %i.q = load ptr, ptr %1, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 456
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.e, ptr noundef nonnull %i.g, i32 noundef %.0.i, i32 noundef %i.c)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK5scene11CMeshBufferIN5video9S3DVertexEE16getPrimitiveTypeEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load i32, ptr %i.a, align 8, !tbaa !183
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN5scene11CMeshBufferIN5video9S3DVertexEE15getVertexBufferEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !184
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12MapBlockMeshC2EP6ClientP12MeshMakeData(ptr noundef nonnull align 8 dereferenceable(249) initializes((0, 40)) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::unordered_map.438", align 8 ; 18 uses
  %5 = alloca %class.VoxelArea, align 4           ; 11 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %6 = alloca %"class.core::vector3d", align 8    ; 8 uses
  %7 = alloca %struct.MeshCollector, align 8      ; 14 uses
  %8 = alloca %class.MapblockMeshGenerator, align 8 ; 5 uses
  %9 = alloca %"class.video::SMaterial", align 8  ; 24 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %indvars.iv.sroa.gep756 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.e = invoke noundef ptr @_ZN6Client16getTextureSourceEv(ptr noundef nonnull align 8 dereferenceable(1674) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  store ptr %i.e, ptr %i.d, align 8, !tbaa !406
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = invoke noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(1674) %1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  store ptr %i.j, ptr %i.f, align 8, !tbaa !407
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 54 ; 2 uses
  %i.m = load i16, ptr %i.l, align 2, !tbaa !41
  %i.n = uitofp i16 %i.m to float
  %i.o = tail call nnan nsz float @llvm.fmuladd.f32(float %i.n, float 5.000000e-01, float -5.000000e-01)
  %i.p = fmul nnan nsz float %i.o, 1.000000e+01   ; 3 uses
  store float %i.p, ptr %i.k, align 4, !tbaa !153
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %i.p, ptr %i.q, align 8, !tbaa !154
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  store float %i.p, ptr %i.r, align 4, !tbaa !152
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.s, align 4, !tbaa !216
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 -1, ptr %i.t, align 8, !tbaa !217
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 6 uses
  store i32 0, ptr %i.w, align 8, !tbaa !408
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store ptr null, ptr %i.x, align 8, !tbaa !218
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr %i.w, ptr %i.y, align 8, !tbaa !219
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.w, ptr %i.z, align 8, !tbaa !409
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aa, i8 0, i64 64, i1 false)
  store i32 -1, ptr %i.ad, align 8, !tbaa !150
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ae, i8 0, i64 25, i1 false)
  %i.af = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #33
          to label %bb.f unwind label %bb.l       ; 5 uses

bb.d:                                             ; preds = %_ZN7irr_ptrIN5scene5SMeshEED2Ev.exit.1
  %i.ag = sext i16 %.sroa.6316.0.copyload to i32
  %i.ah = srem i32 %i.ag, %i.bu
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %_ZNK8MeshGrid9isMeshPosERN4core8vector3dIsEE.exit, label %_ZNK8MeshGrid9isMeshPosERN4core8vector3dIsEE.exit.thread

_ZNK8MeshGrid9isMeshPosERN4core8vector3dIsEE.exit: ; preds = %bb.d
  %i.aj = sext i16 %.sroa.8318.0.copyload to i32
  %i.ak = srem i32 %i.aj, %i.bu
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.m, label %_ZNK8MeshGrid9isMeshPosERN4core8vector3dIsEE.exit.thread

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIhjESaIS1_EED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  store i32 1, ptr %i.ao, align 8, !tbaa !221, !noalias !410
  store ptr getelementptr inbounds nuw inrange(-24, 112) (i8, ptr @_ZTVN5scene5SMeshE, i64 24), ptr %i.af, align 8, !tbaa !25, !noalias !410
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5scene5SMeshE, i64 160), ptr %i.an, align 8, !tbaa !25, !noalias !410
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ap, i8 0, i64 72, i1 false), !noalias !410
  %i.aq = load ptr, ptr %0, align 8, !tbaa !224   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %_ZN7irr_ptrIN5scene5SMeshEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !25
  %i.as = getelementptr i8, ptr %i.ar, i64 -24
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds i8, ptr %i.aq, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !221
  %i.ax = add nsw i32 %i.aw, -1                   ; 2 uses
  store i32 %i.ax, ptr %i.av, align 8, !tbaa !221
  %.not.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i.i, label %bb.h, label %_ZN7irr_ptrIN5scene5SMeshEED2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !25
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(12) %i.au) #30, !inline_history !374
  br label %_ZN7irr_ptrIN5scene5SMeshEED2Ev.exit

_ZN7irr_ptrIN5scene5SMeshEED2Ev.exit:             ; preds = %bb.h, %bb.g, %bb.f
  store ptr %i.af, ptr %0, align 8, !tbaa !224
  %.091.ptr481.1 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bb = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #33
          to label %bb.i unwind label %bb.l       ; 5 uses

bb.i:                                             ; preds = %_ZN7irr_ptrIN5scene5SMeshEED2Ev.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 88
  store i32 1, ptr %i.bd, align 8, !tbaa !221, !noalias !410
  store ptr getelementptr inbounds nuw inrange(-24, 112) (i8, ptr @_ZTVN5scene5SMeshE, i64 24), ptr %i.bb, align 8, !tbaa !25, !noalias !410
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5scene5SMeshE, i64 160), ptr %i.bc, align 8, !tbaa !25, !noalias !410
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.be, i8 0, i64 72, i1 false), !noalias !410
  %i.bf = load ptr, ptr %.091.ptr481.1, align 8, !tbaa !224 ; 3 uses
  %.not.i.i.1 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.1, label %_ZN7irr_ptrIN5scene5SMeshEED2Ev.exit.1, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !25
  %i.bh = getelementptr i8, ptr %i.bg, i64 -24
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr %i.bf, i64 %i.bi ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !221
  %i.bm = add nsw i32 %i.bl, -1                   ; 2 uses
  store i32 %i.bm, ptr %i.bk, align 8, !tbaa !221
  %.not.i.i.i.1 = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i.i.1, label %bb.k, label %_ZN7irr_ptrIN5scene5SMeshEED2Ev.exit.1

bb.k:                                             ; preds = %bb.j
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !25
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(12) %i.bj) #30, !inline_history !374
  br label %_ZN7irr_ptrIN5scene5SMeshEED2Ev.exit.1

_ZN7irr_ptrIN5scene5SMeshEED2Ev.exit.1:           ; preds = %bb.k, %bb.j, %bb.i
  store ptr %i.bb, ptr %.091.ptr481.1, align 8, !tbaa !224
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.br = load i16, ptr %i.bq, align 8, !tbaa !42 ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %.sroa.0314.0.copyload = load i16, ptr %i.bs, align 8, !tbaa !42 ; 2 uses
  %.sroa.6316.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 50
  %.sroa.6316.0.copyload = load i16, ptr %.sroa.6316.0..sroa_idx, align 2, !tbaa !42 ; 2 uses
  %.sroa.8318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 52
  %.sroa.8318.0.copyload = load i16, ptr %.sroa.8318.0..sroa_idx, align 4, !tbaa !42 ; 2 uses
  %i.bt = sext i16 %.sroa.0314.0.copyload to i32
  %i.bu = zext i16 %i.br to i32                   ; 12 uses
  %i.bv = srem i32 %i.bt, %i.bu
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.d, label %_ZNK8MeshGrid9isMeshPosERN4core8vector3dIsEE.exit.thread

bb.l:                                             ; preds = %_ZN7irr_ptrIN5scene5SMeshEED2Ev.exit, %bb.c
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.m:                                             ; preds = %_ZNK8MeshGrid9isMeshPosERN4core8vector3dIsEE.exit
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !43, !range !68, !noundef !69
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.n, label %_ZNK8MeshGrid9isMeshPosERN4core8vector3dIsEE.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.cb = mul nuw nsw i32 %i.bu, %i.bu
  %i.cc = mul nuw nsw i32 %i.cb, %i.bu
  %i.cd = zext nneg i32 %i.cc to i64              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store ptr null, ptr %i.b, align 8, !tbaa !226
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !227 ; 3 uses
  %i.cg = load ptr, ptr %i.c, align 8, !tbaa !228 ; 2 uses
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = ashr exact i64 %i.cj, 3                 ; 3 uses
  %i.cl = icmp ult i64 %i.ck, %i.cd
  br i1 %i.cl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cm = sub nuw nsw i64 %i.cd, %i.ck
  invoke void @_ZNSt6vectorIP15MinimapMapblockSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr %i.cf, i64 noundef %i.cm, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNSt6vectorIP15MinimapMapblockSaIS1_EE6resizeEmRKS1_.exit unwind label %bb.v

bb.p:                                             ; preds = %bb.n
  %i.cn = icmp ugt i64 %i.ck, %i.cd
  br i1 %i.cn, label %bb.q, label %_ZNSt6vectorIP15MinimapMapblockSaIS1_EE6resizeEmRKS1_.exit

bb.q:                                             ; preds = %bb.p
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cd ; 2 uses
  %.not.i.i129 = icmp eq ptr %i.cf, %i.co
  br i1 %.not.i.i129, label %_ZNSt6vectorIP15MinimapMapblockSaIS1_EE6resizeEmRKS1_.exit, label %_ZSt8_DestroyIPP15MinimapMapblockS1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPP15MinimapMapblockS1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.q
  store ptr %i.co, ptr %i.ce, align 8, !tbaa !227
  br label %_ZNSt6vectorIP15MinimapMapblockSaIS1_EE6resizeEmRKS1_.exit

_ZNSt6vectorIP15MinimapMapblockSaIS1_EE6resizeEmRKS1_.exit: ; preds = %_ZSt8_DestroyIPP15MinimapMapblockS1_EvT_S3_RSaIT0_E.exit.i.i, %bb.q, %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 6 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 10
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 72
  br label %.preheader363

.preheader363:                                    ; preds = %_ZNSt6vectorIP15MinimapMapblockSaIS1_EE6resizeEmRKS1_.exit, %bb.ab
  %storemerge484 = phi i16 [ 0, %_ZNSt6vectorIP15MinimapMapblockSaIS1_EE6resizeEmRKS1_.exit ], [ %i.fm, %bb.ab ] ; 3 uses
  %i.dc = add i16 %storemerge484, %.sroa.8318.0.copyload
  %i.dd = shl i16 %i.dc, 4
  %.sroa.3.0.insert.ext.i130 = zext i16 %i.dd to i48
  %.sroa.3.0.insert.shift.i131 = shl nuw i48 %.sroa.3.0.insert.ext.i130, 32
  %i.de = mul i16 %storemerge484, %i.br
  br label %.preheader

.preheader:                                       ; preds = %.preheader363, %bb.aa
  %storemerge118483 = phi i16 [ 0, %.preheader363 ], [ %i.fl, %bb.aa ] ; 3 uses
  %i.df = add i16 %storemerge118483, %.sroa.6316.0.copyload
  %i.dg = shl i16 %i.df, 4
  %.sroa.2.0.insert.ext.i132 = zext i16 %i.dg to i48
  %.sroa.2.0.insert.shift.i133 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i132, 16
  %.sroa.2.0.insert.insert.i134 = or disjoint i48 %.sroa.2.0.insert.shift.i133, %.sroa.3.0.insert.shift.i131
  %i.dh = add i16 %storemerge118483, %i.de
  %i.di = mul i16 %i.dh, %i.br
  br label %bb.r

bb.r:                                             ; preds = %.preheader, %bb.y
  %storemerge119482 = phi i16 [ 0, %.preheader ], [ %i.fi, %bb.y ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.dj = add i16 %storemerge119482, %.sroa.0314.0.copyload
  %i.dk = shl i16 %i.dj, 4
  %.sroa.0.0.insert.ext.i135 = zext i16 %i.dk to i48
  %.sroa.0.0.insert.insert.i136 = or disjoint i48 %.sroa.2.0.insert.insert.i134, %.sroa.0.0.insert.ext.i135
  store i48 %.sroa.0.0.insert.insert.i136, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(6) %6, i64 6, i1 false), !tbaa.struct !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.cp, ptr noundef nonnull align 8 dereferenceable(6) %6, i64 6, i1 false), !tbaa.struct !45
  %i.dl = load i16, ptr %i.cs, align 2, !tbaa !411
  %i.dm = sext i16 %i.dl to i32
  %i.dn = load i16, ptr %i.ct, align 4, !tbaa !51
  %i.do = sext i16 %i.dn to i32
  %i.dp = add nsw i32 %i.dm, 1
  %i.dq = sub nsw i32 %i.dp, %i.do
  %i.dr = load <2 x i16>, ptr %i.cp, align 2, !tbaa !42
  %i.ds = sext <2 x i16> %i.dr to <2 x i32>
  %i.dt = load <2 x i16>, ptr %5, align 4, !tbaa !42
  %i.du = sext <2 x i16> %i.dt to <2 x i32>
  %i.dv = add nsw <2 x i32> %i.ds, splat (i32 1)
  %i.dw = sub nsw <2 x i32> %i.dv, %i.du
  store <2 x i32> %i.dw, ptr %i.cq, align 4, !tbaa !46
  store i32 %i.dq, ptr %i.cr, align 4, !tbaa !46
  invoke void @_ZN16VoxelManipulator7addAreaERK9VoxelArea(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 4 dereferenceable(24) %5)
          to label %.noexc138 unwind label %bb.w

.noexc138:                                        ; preds = %bb.r
  %.sroa.0.0.copyload.i = load i48, ptr %6, align 8 ; 3 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i48 %.sroa.0.0.copyload.i to i16
  %.sroa.2.0.extract.shift.i.i = lshr i48 %.sroa.0.0.copyload.i, 16
  %.sroa.2.0.extract.trunc.i.i = trunc i48 %.sroa.2.0.extract.shift.i.i to i16
  %i.dx = ashr i48 %.sroa.0.0.copyload.i, 32
  %i.dy = trunc nsw i48 %i.dx to i32
  %i.dz = load i16, ptr %i.cv, align 4, !tbaa !51
  %i.ea = sext i16 %i.dz to i32
  %i.eb = sub nsw i32 %i.dy, %i.ea
  %i.ec = load i32, ptr %i.cx, align 8, !tbaa !48
  %i.ed = mul nsw i32 %i.eb, %i.ec
  %i.ee = load i32, ptr %i.cw, align 4, !tbaa !47
  %i.ef = sext i16 %.sroa.2.0.extract.trunc.i.i to i32
  %i.eg = load i16, ptr %i.cy, align 2, !tbaa !229
  %i.eh = sext i16 %i.eg to i32
  %i.ei = add i32 %i.ed, %i.ef
  %i.ej = sub i32 %i.ei, %i.eh
  %i.ek = mul i32 %i.ej, %i.ee
  %i.el = sext i16 %.sroa.0.0.extract.trunc.i.i to i32
  %i.em = load i16, ptr %i.cu, align 8, !tbaa !50
  %i.en = sext i16 %i.em to i32
  %i.eo = sub nsw i32 %i.el, %i.en
  %i.ep = add nsw i32 %i.eo, %i.ek
  %i.eq = load ptr, ptr %i.cz, align 8, !tbaa !53
  %i.er = sext i32 %i.ep to i64                   ; 2 uses
  %i.es = getelementptr inbounds i8, ptr %i.eq, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !49
  %i.eu = and i8 %i.et, 1
  %.not.i = icmp eq i8 %i.eu, 0
  br i1 %.not.i, label %bb.s, label %.thread

.thread:                                          ; preds = %.noexc138
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.y

bb.s:                                             ; preds = %.noexc138
  %i.ev = load ptr, ptr %i.da, align 8, !tbaa !52
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %i.er
  %i.ex = load i32, ptr %i.ew, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.ey = and i32 %i.ex, 65535
  %.not120 = icmp eq i32 %i.ey, 127
  br i1 %.not120, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ez = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znwm(i64 noundef 2048) #33
          to label %bb.u unwind label %bb.x       ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.fa = add i16 %storemerge119482, %i.di
  %i.fb = zext i16 %i.fa to i64
  %i.fc = load ptr, ptr %i.c, align 8, !tbaa !228
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.fb
  store ptr %i.ez, ptr %i.fd, align 8, !tbaa !226
  %i.fe = load ptr, ptr %i.db, align 8, !tbaa !44
  invoke void @_ZN15MinimapMapblock15getMinimapNodesEP16VoxelManipulatorPK14NodeDefManagerRKN4core8vector3dIsEE(ptr noundef nonnull align 4 dereferenceable(2048) %i.ez, ptr noundef nonnull %2, ptr noundef %i.fe, ptr noundef nonnull align 2 dereferenceable(6) %6)
          to label %bb.y unwind label %bb.x

bb.v:                                             ; preds = %bb.o
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.en

bb.w:                                             ; preds = %bb.r
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.x:                                             ; preds = %bb.u, %bb.t
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %.thread, %bb.u, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.fi = add i16 %storemerge119482, 1            ; 2 uses
  %i.fj = sext i16 %i.fi to i32
  %i.fk = icmp slt i32 %i.fj, %i.bu
  br i1 %i.fk, label %bb.r, label %bb.aa, !llvm.loop !375

bb.z:                                             ; preds = %bb.x, %bb.w
  %.pn121 = phi { ptr, i32 } [ %i.fh, %bb.x ], [ %i.fg, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.en

bb.aa:                                            ; preds = %bb.y
  %i.fl = add i16 %storemerge118483, 1            ; 2 uses
  %11 = sext i16 %i.fl to i32
  %12 = icmp slt i32 %11, %i.bu
  br i1 %12, label %.preheader, label %bb.ab, !llvm.loop !376

bb.ab:                                            ; preds = %bb.aa
  %i.fm = add i16 %storemerge484, 1               ; 2 uses
  %13 = sext i16 %i.fm to i32
  %14 = icmp slt i32 %13, %i.bu
  br i1 %14, label %.preheader363, label %_ZNK8MeshGrid9isMeshPosERN4core8vector3dIsEE.exit.thread, !llvm.loop !377

_ZNK8MeshGrid9isMeshPosERN4core8vector3dIsEE.exit.thread: ; preds = %bb.ab, %_ZN7irr_ptrIN5scene5SMeshEED2Ev.exit.1, %bb.d, %bb.m, %_ZNK8MeshGrid9isMeshPosERN4core8vector3dIsEE.exit
  %.sroa.045.0.copyload = load i48, ptr %i.bs, align 8 ; 5 uses
  %.sroa.2.0.extract.shift.i140 = lshr i48 %.sroa.045.0.copyload, 16
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.045.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16 ; 3 uses
  %i.fn = add nsw i32 %i.bu, -1                   ; 3 uses
  %i.fo = sext i16 %.sroa.3.0.extract.trunc.i to i32
  %.lobit.i.i2.i = lshr i16 %.sroa.3.0.extract.trunc.i, 15
  %i.fp = zext nneg i16 %.lobit.i.i2.i to i32
  %i.fq = mul nuw nsw i32 %i.fn, %i.fp
  %i.fr = sub nsw i32 %i.fo, %i.fq
  %i.fs = sdiv i32 %i.fr, %i.bu
  %i.ft = trunc i32 %i.fs to i16
  %i.fu = mul i16 %i.br, %i.ft
  %i.fv = sub i16 %.sroa.3.0.extract.trunc.i, %i.fu
  %i.fw = shl i16 %i.fv, 4
  %i.fx = sitofp nsz i16 %i.fw to float
  %i.fy = trunc i48 %.sroa.045.0.copyload to i16
  %i.fz = insertelement <2 x i16> poison, i16 %i.fy, i64 0
  %i.ga = trunc i48 %.sroa.2.0.extract.shift.i140 to i16
  %i.gb = insertelement <2 x i16> %i.fz, i16 %i.ga, i64 1 ; 2 uses
  %i.gc = sext <2 x i16> %i.gb to <2 x i32>
  %i.gd = and i48 %.sroa.045.0.copyload, 2147483648
  %isneg.not = icmp eq i48 %i.gd, 0
  %i.ge = select i1 %isneg.not, i32 0, i32 %i.fn
  %i.gf = and i48 %.sroa.045.0.copyload, 32768
  %.not = icmp eq i48 %i.gf, 0
  %i.gg = select i1 %.not, i32 0, i32 %i.fn
  %i.gh = insertelement <2 x i32> poison, i32 %i.gg, i64 0
  %i.gi = insertelement <2 x i32> %i.gh, i32 %i.ge, i64 1
  %i.gj = sub nsw <2 x i32> %i.gc, %i.gi
  %i.gk = insertelement <2 x i32> poison, i32 %i.bu, i64 0
  %i.gl = shufflevector <2 x i32> %i.gk, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.gm = sdiv <2 x i32> %i.gj, %i.gl
  %i.gn = trunc <2 x i32> %i.gm to <2 x i16>
  %i.go = insertelement <2 x i16> poison, i16 %i.br, i64 0
  %i.gp = shufflevector <2 x i16> %i.go, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.gq = mul <2 x i16> %i.gp, %i.gn
  %i.gr = sub <2 x i16> %i.gb, %i.gq
  %i.gs = shl <2 x i16> %i.gr, splat (i16 4)
  %i.gt = sitofp <2 x i16> %i.gs to <2 x float>
  %i.gu = fmul nnan nsz <2 x float> %i.gt, splat (float 1.000000e+01)
  %i.gv = fmul nnan nsz float %i.fx, 1.000000e+01
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %.sroa.038.0.copyload = load <2 x float>, ptr %i.k, align 4
  %.sroa.239.0.copyload = load float, ptr %i.r, align 4, !tbaa !75
  %i.gw = getelementptr inbounds nuw i8, ptr %7, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %7, i8 0, i64 52, i1 false)
  store <2 x float> %.sroa.038.0.copyload, ptr %i.gw, align 4
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 60
  store float %.sroa.239.0.copyload, ptr %.sroa.26.0..sroa_idx.i, align 4, !tbaa !75
  %i.gx = getelementptr inbounds nuw i8, ptr %7, i64 64
  store <2 x float> %i.gu, ptr %i.gx, align 8
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 72
  store float %i.gv, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  invoke void @_ZN21MapblockMeshGeneratorC1EP12MeshMakeDataP13MeshCollector(ptr noundef nonnull align 8 dereferenceable(496) %8, ptr noundef nonnull %2, ptr noundef nonnull %7)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %_ZNK8MeshGrid9isMeshPosERN4core8vector3dIsEE.exit.thread
  invoke void @_ZN21MapblockMeshGenerator8generateEv(ptr noundef nonnull align 8 dereferenceable(496) %8)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.gy = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.gz = load float, ptr %i.gy, align 8, !tbaa !414
  %i.ha = call nsz noundef float @llvm.sqrt.f32(float %i.gz)
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.ha, ptr %i.hb, align 8, !tbaa !415
  %i.hc = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.he = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.hi = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %9, i64 10
  %i.hk = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %9, i64 34
  %i.hn = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %9, i64 58
  %i.hq = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %9, i64 82
  %i.ht = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %9, i64 108
  %i.hv = getelementptr inbounds nuw i8, ptr %9, i64 124
  %i.hw = getelementptr inbounds nuw i8, ptr %9, i64 126
  %i.hx = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.hy = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.id = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 6 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 7 uses
  br label %bb.ah

bb.ae:                                            ; preds = %_ZN5scene5SMesh22setHardwareMappingHintENS_18E_HARDWARE_MAPPINGENS_13E_BUFFER_TYPEE.exit
  %i.ii = load i16, ptr %i.l, align 2, !tbaa !41
  invoke void @_ZN15MapBlockBspTree9buildTreeEPKSt6vectorI12MeshTriangleSaIS1_EEt(ptr noundef nonnull align 8 dereferenceable(36) %i.ac, ptr noundef nonnull %i.ab, i16 noundef zeroext %i.ii)
          to label %bb.ek unwind label %bb.ag

bb.af:                                            ; preds = %bb.ac, %_ZNK8MeshGrid9isMeshPosERN4core8vector3dIsEE.exit.thread
  %i.ij = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %.body

bb.ag:                                            ; preds = %bb.ae
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ah:                                            ; preds = %bb.ad, %_ZN5scene5SMesh22setHardwareMappingHintENS_18E_HARDWARE_MAPPINGENS_13E_BUFFER_TYPEE.exit
  %i.il = phi i1 [ true, %bb.ad ], [ false, %_ZN5scene5SMesh22setHardwareMappingHintENS_18E_HARDWARE_MAPPINGENS_13E_BUFFER_TYPEE.exit ]
  %indvars.iv.sroa.phi = phi ptr [ %7, %bb.ad ], [ %indvars.iv.sroa.gep756, %_ZN5scene5SMesh22setHardwareMappingHintENS_18E_HARDWARE_MAPPINGENS_13E_BUFFER_TYPEE.exit ] ; 8 uses
  %indvars.iv = phi i64 [ 0, %bb.ad ], [ 1, %_ZN5scene5SMesh22setHardwareMappingHintENS_18E_HARDWARE_MAPPINGENS_13E_BUFFER_TYPEE.exit ] ; 3 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !224 ; 9 uses
  %i.io = load ptr, ptr %indvars.iv.sroa.phi, align 8, !tbaa !231 ; 4 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi, i64 8 ; 5 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !231 ; 2 uses
  %.not76.i = icmp eq ptr %i.io, %i.iq
  br i1 %.not76.i, label %"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIP13PreMeshBufferSt6vectorIS2_SaIS2_EEEEZL18applyColorAndMergeRS6_E3$_0ET_SA_SA_T0_.exit.i.critedge", label %.lr.ph.i

.lr.ph80.i.preheader:                             ; preds = %_ZN13PreMeshBuffer14applyTileColorEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store ptr %i.hc, ptr %4, align 8, !tbaa !233
  store i64 1, ptr %i.hd, align 8, !tbaa !234
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.he, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.hf, align 8, !tbaa !235
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hg, i8 0, i64 16, i1 false)
  br label %.lr.ph80.i

.lr.ph.i:                                         ; preds = %bb.ah, %_ZN13PreMeshBuffer14applyTileColorEv.exit.i
  %.sroa.055.077.i = phi ptr [ %i.mc, %_ZN13PreMeshBuffer14applyTileColorEv.exit.i ], [ %i.io, %bb.ah ] ; 5 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.055.077.i, i64 40 ; 2 uses
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !46 ; 4 uses
  %i.it = icmp eq i32 %i.is, -1
  br i1 %i.it, label %_ZN13PreMeshBuffer14applyTileColorEv.exit.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.055.077.i, i64 72
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !237 ; 8 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.055.077.i, i64 80
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !237 ; 3 uses
  %.not21.i.i = icmp eq ptr %i.iv, %i.ix
  br i1 %.not21.i.i, label %_ZN13PreMeshBuffer14applyTileColorEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ai
  %i.iy = lshr i32 %i.is, 16
  %i.iz = and i32 %i.iy, 255                      ; 2 uses
  %i.ja = lshr i32 %i.is, 8
  %i.jb = and i32 %i.ja, 255                      ; 2 uses
  %i.jc = and i32 %i.is, 255                      ; 2 uses
  %i.jd = ptrtoaddr ptr %i.ix to i64
  %i.je = ptrtoaddr ptr %i.iv to i64
  %i.jf = add i64 %i.jd, -40
  %i.jg = sub i64 %i.jf, %i.je                    ; 2 uses
  %i.jh = udiv i64 %i.jg, 40
  %i.ji = add nuw nsw i64 %i.jh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.jg, 120
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %i.ji, 1152921504606846972     ; 3 uses
  %i.jj = mul i64 %n.vec, 40
  %i.jk = getelementptr i8, ptr %i.iv, i64 %i.jj
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.iz, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert706 = insertelement <4 x i32> poison, i32 %i.jb, i64 0
  %broadcast.splat707 = shufflevector <4 x i32> %broadcast.splatinsert706, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert708 = insertelement <4 x i32> poison, i32 %i.jc, i64 0
  %broadcast.splat709 = shufflevector <4 x i32> %broadcast.splatinsert708, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jl = mul i64 %index, 40                      ; 4 uses
  %next.gep = getelementptr i8, ptr %i.iv, i64 %i.jl
  %i.jm = getelementptr i8, ptr %i.iv, i64 %i.jl
  %i.jn = getelementptr i8, ptr %i.iv, i64 %i.jl
  %i.jo = getelementptr i8, ptr %i.iv, i64 %i.jl
  %i.jp = getelementptr inbounds nuw i8, ptr %next.gep, i64 24 ; 2 uses
  %i.jq = getelementptr i8, ptr %i.jm, i64 64     ; 2 uses
  %i.jr = getelementptr i8, ptr %i.jn, i64 104    ; 2 uses
  %i.js = getelementptr i8, ptr %i.jo, i64 144    ; 2 uses
  %i.jt = load i32, ptr %i.jp, align 4, !tbaa !78
  %i.ju = load i32, ptr %i.jq, align 4, !tbaa !78
  %i.jv = load i32, ptr %i.jr, align 4, !tbaa !78
  %i.jw = load i32, ptr %i.js, align 4, !tbaa !78
  %i.jx = insertelement <4 x i32> poison, i32 %i.jt, i64 0
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt4pairIPN5scene11CMeshBufferIN5video9S3DVertexEEES_ItSaItEEESaIS9_EE17_M_realloc_insertIJRS6_S8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_:bb.a
  store <2 x ptr> %i.aj, ptr %i.ah, align 8, !tbaa !61, !alias.scope !597, !noalias !598
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false), !alias.scope !598, !noalias !597
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 32 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.ak, %i.b
  br i1 %.not.i.i.i31, label %_ZNSt6vectorISt4pairIPN5scene11CMeshBufferIN5video9S3DVertexEEES_ItSaItEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit33, label %.lr.ph.i.i.i28, !llvm.loop !591

_ZNSt6vectorISt4pairIPN5scene11CMeshBufferIN5video9S3DVertexEEES_ItSaItEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit33: ; preds = %.lr.ph.i.i.i28, %_ZNSt6vectorISt4pairIPN5scene11CMeshBufferIN5video9S3DVertexEEES_ItSaItEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit
  %.0.lcssa.i.i.i32 = phi ptr [ %i.ae, %_ZNSt6vectorISt4pairIPN5scene11CMeshBufferIN5video9S3DVertexEEES_ItSaItEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit ], [ %i.al, %.lr.ph.i.i.i28 ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseISt4pairIPN5scene11CMeshBufferIN5video9S3DVertexEEESt6vectorItSaItEEESaISA_EE13_M_deallocateEPSA_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt4pairIPN5scene11CMeshBufferIN5video9S3DVertexEEES_ItSaItEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit33
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !316
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ap) #31
  br label %_ZNSt12_Vector_baseISt4pairIPN5scene11CMeshBufferIN5video9S3DVertexEEESt6vectorItSaItEEESaISA_EE13_M_deallocateEPSA_m.exit

_ZNSt12_Vector_baseISt4pairIPN5scene11CMeshBufferIN5video9S3DVertexEEESt6vectorItSaItEEESaISA_EE13_M_deallocateEPSA_m.exit: ; preds = %_ZNSt6vectorISt4pairIPN5scene11CMeshBufferIN5video9S3DVertexEEES_ItSaItEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit33, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !315
  store ptr %.0.lcssa.i.i.i32, ptr %i.a, align 8, !tbaa !314
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aq, ptr %i.am, align 8, !tbaa !316
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI17PartialMeshBufferSaIS0_EE17_M_realloc_insertIJRPN5scene11CMeshBufferIN5video9S3DVertexEEES_ItSaItEEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !298  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !297    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorI17PartialMeshBufferSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #32
  unreachable

_ZNKSt6vectorI17PartialMeshBufferSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #33 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !281
  store ptr %i.r, ptr %i.q, align 8, !tbaa !171
  tail call void @llvm.experimental.noalias.scope.decl(metadata !607)
  %i.s = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #33
          to label %bb.c unwind label %bb.f       ; 9 uses

bb.c:                                             ; preds = %_ZNKSt6vectorI17PartialMeshBufferSaIS0_EE12_M_check_lenEmPKc.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store i32 1, ptr %i.v, align 8, !tbaa !221, !noalias !607
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr null, ptr %i.x, align 8, !tbaa !275, !noalias !607
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i32 1, ptr %i.y, align 8, !tbaa !276, !noalias !607
  store ptr getelementptr inbounds nuw inrange(-24, 64) (i8, ptr @_ZTVN5scene12CIndexBufferItEE, i64 24), ptr %i.s, align 8, !tbaa !25, !noalias !607
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5scene12CIndexBufferItEE, i64 112), ptr %i.u, align 8, !tbaa !25, !noalias !607
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.s, ptr %i.t, align 8, !tbaa !185, !alias.scope !607
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.ab = load <2 x ptr>, ptr %3, align 8, !tbaa !61
  store <2 x ptr> %i.ab, ptr %i.z, align 8, !tbaa !61
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !247
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !247
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.w, align 8, !tbaa !274
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorI17PartialMeshBufferSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %i.p, %bb.c ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %i.c, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !609)
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.af = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !319, !alias.scope !609, !noalias !608
  store ptr null, ptr %i.ae, align 8, !tbaa !185, !alias.scope !609, !noalias !608
  store <2 x ptr> %i.af, ptr %.012.i.i.i, align 8, !tbaa !319, !alias.scope !608, !noalias !609
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorI17PartialMeshBufferSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !7

_ZNSt6vectorI17PartialMeshBufferSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.ah, %.lr.ph.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorI17PartialMeshBufferSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorI17PartialMeshBufferSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %.lr.ph.i.i.i28
  %.012.i.i.i29 = phi ptr [ %i.am, %.lr.ph.i.i.i28 ], [ %i.ai, %_ZNSt6vectorI17PartialMeshBufferSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 2 uses
  %.0911.i.i.i30 = phi ptr [ %i.al, %.lr.ph.i.i.i28 ], [ %1, %_ZNSt6vectorI17PartialMeshBufferSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !611)
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8
  %i.ak = load <2 x ptr>, ptr %.0911.i.i.i30, align 8, !tbaa !319, !alias.scope !611, !noalias !610
  store ptr null, ptr %i.aj, align 8, !tbaa !185, !alias.scope !611, !noalias !610
  store <2 x ptr> %i.ak, ptr %.012.i.i.i29, align 8, !tbaa !319, !alias.scope !610, !noalias !611
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 16 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.al, %i.b
  br i1 %.not.i.i.i31, label %_ZNSt6vectorI17PartialMeshBufferSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33, label %.lr.ph.i.i.i28, !llvm.loop !7

_ZNSt6vectorI17PartialMeshBufferSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33: ; preds = %.lr.ph.i.i.i28, %_ZNSt6vectorI17PartialMeshBufferSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i32 = phi ptr [ %i.ai, %_ZNSt6vectorI17PartialMeshBufferSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.am, %.lr.ph.i.i.i28 ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseI17PartialMeshBufferSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI17PartialMeshBufferSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !299
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.aq) #31
  br label %_ZNSt12_Vector_baseI17PartialMeshBufferSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI17PartialMeshBufferSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorI17PartialMeshBufferSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit33, %bb.d
  store ptr %i.p, ptr %0, align 8, !tbaa !297
  store ptr %.0.lcssa.i.i.i32, ptr %i.a, align 8, !tbaa !298
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ar, ptr %i.an, align 8, !tbaa !299
  ret void

bb.e:                                             ; preds = %bb.f
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %_ZNKSt6vectorI17PartialMeshBufferSaIS0_EE12_M_check_lenEmPKc.exit
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  %i.av = tail call ptr @__cxa_begin_catch(ptr %i.au) #30 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #31
  invoke void @__cxa_rethrow() #32
          to label %bb.i unwind label %bb.e

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.as

bb.h:                                             ; preds = %bb.e
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  tail call void @__clang_call_terminate(ptr %i.ax) #35
  unreachable

bb.i:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.exp2.v2f32(<2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #25 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { nounwind }
attributes #31 = { builtin nounwind }
attributes #32 = { noreturn }
attributes #33 = { builtin allocsize(0) }
attributes #34 = { nounwind willreturn memory(read) }
attributes #35 = { noreturn nounwind }

!llvm.module.flags = !{!15, !16, !17}
!llvm.ident = !{!18}
!llvm.errno.tbaa = !{!23}

!0 = distinct !{!0, !54}
!1 = distinct !{!1, !54}
!2 = distinct !{null}
!3 = distinct !{null, null, null, null, null, null, null, null}
!4 = distinct !{!4, !54}
!5 = distinct !{null, null, null}
!6 = distinct !{null, null, null, null, null, null, null, null, null}
!7 = distinct !{!7, !54}
!8 = distinct !{!8, !54}
!9 = distinct !{!9, !54}
!10 = distinct !{!10, !54}
!11 = distinct !{!11, !54}
!12 = distinct !{!12, !54}
!13 = distinct !{ptr @_ZN5scene5SMeshD1Ev, null, null}
!14 = distinct !{ptr @_ZN5scene13CVertexBufferIN5video9S3DVertexEED1Ev, null, null, null, null}
!15 = !{i32 8, !"PIC Level", i32 2}
!16 = !{i32 7, !"PIE Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 2}
!18 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!19 = !{!"Simple C++ TBAA"}
!20 = !{!"omnipotent char", !19, i64 0}
!21 = !{!"int", !20, i64 0}
!22 = !{!"__libc_errno", !21, i64 0}
!23 = !{!22, !21, i64 0}
!24 = !{!"vtable pointer", !19, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"short", !20, i64 0}
!27 = !{!"_ZTSN4core8vector3dIsEE", !26, i64 0, !26, i64 2, !26, i64 4}
!28 = !{!27, !26, i64 0}
!29 = !{!27, !26, i64 2}
!30 = !{!27, !26, i64 4}
!31 = !{!"_ZTSN4core8vector3dIiEE", !21, i64 0, !21, i64 4, !21, i64 8}
!32 = !{!"_ZTS9VoxelArea", !27, i64 0, !27, i64 6, !31, i64 12}
!33 = !{!"any pointer", !20, i64 0}
!34 = !{!"p1 _ZTS7MapNode", !33, i64 0}
!35 = !{!"p1 omnipotent char", !33, i64 0}
!36 = !{!"_ZTS16VoxelManipulator", !32, i64 8, !34, i64 32, !35, i64 40}
!37 = !{!"_ZTS8MeshGrid", !26, i64 0}
!38 = !{!"bool", !20, i64 0}
!39 = !{!"p1 _ZTS14NodeDefManager", !33, i64 0}
!40 = !{!"_ZTS12MeshMakeData", !36, i64 0, !27, i64 48, !26, i64 54, !37, i64 56, !27, i64 58, !38, i64 64, !38, i64 65, !38, i64 66, !39, i64 72}
!41 = !{!40, !26, i64 54}
!42 = !{!26, !26, i64 0}
!43 = !{!40, !38, i64 64}
!44 = !{!40, !39, i64 72}
!45 = !{i64 0, i64 2, !42, i64 2, i64 2, !42, i64 4, i64 2, !42}
!46 = !{!21, !21, i64 0}
!47 = !{!32, !21, i64 12}
!48 = !{!32, !21, i64 16}
!49 = !{!20, !20, i64 0}
!50 = !{!32, !26, i64 0}
!51 = !{!32, !26, i64 4}
!52 = !{!36, !34, i64 32}
!53 = !{!36, !35, i64 40}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!35, !35, i64 0}
!56 = !{!"p1 _ZTS12MeshMakeData", !33, i64 0}
!57 = !{!56, !56, i64 0}
!58 = !{!39, !39, i64 0}
!59 = !{!38, !38, i64 0}
!60 = !{!"p1 short", !33, i64 0}
!61 = !{!60, !60, i64 0}
!62 = !{!"any p2 pointer", !33, i64 0}
!63 = !{!"p2 _ZTS12MeshMakeData", !62, i64 0}
!64 = !{!"p1 _ZTSN4core8vector3dIsEE", !33, i64 0}
!65 = !{!"p1 _ZTSSt5arrayIN4core8vector3dIsEELm8EE", !33, i64 0}
!66 = !{!"p2 _ZTS14NodeDefManager", !62, i64 0}
!67 = !{!"p1 bool", !33, i64 0}
!68 = !{i8 0, i8 2}
!69 = !{}
!70 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !35, i64 0}
!71 = !{!"long", !20, i64 0}
!72 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !70, i64 0, !71, i64 8, !20, i64 16}
!73 = !{!72, !35, i64 0}
!74 = !{!"float", !20, i64 0}
!75 = !{!74, !74, i64 0}
!76 = !{!"_ZTSN5video7SColorfE", !74, i64 0, !74, i64 4, !74, i64 8, !74, i64 12}
!77 = !{!"_ZTSN5video6SColorE", !21, i64 0}
!78 = !{!77, !21, i64 0}
!79 = !{!"p1 _ZTS15ContentFeatures", !33, i64 0}
!80 = !{!"_ZTSNSt12_Vector_baseI15ContentFeaturesSaIS0_EE17_Vector_impl_dataE", !79, i64 0, !79, i64 8, !79, i64 16}
!81 = !{!80, !79, i64 8}
!82 = !{!80, !79, i64 0}
!83 = !{!72, !71, i64 8}
!84 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !62, i64 0}
!85 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !33, i64 0}
!86 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !85, i64 0}
!87 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !74, i64 0, !71, i64 8}
!88 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !84, i64 0, !71, i64 8, !86, i64 16, !71, i64 24, !87, i64 32, !85, i64 48}
!89 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE", !88, i64 0}
!90 = !{!"_ZTS16ContentParamType", !20, i64 0}
!91 = !{!"_ZTS17ContentParamType2", !20, i64 0}
!92 = !{!"_ZTS12NodeDrawType", !20, i64 0}
!93 = !{!"_ZTS9AlphaMode", !20, i64 0}
!94 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !33, i64 0}
!95 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !94, i64 0, !94, i64 8, !94, i64 16}
!96 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !95, i64 0}
!97 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !96, i64 0}
!98 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !97, i64 0}
!99 = !{!"_ZTSNSt12_Vector_baseItSaItEE17_Vector_impl_dataE", !60, i64 0, !60, i64 8, !60, i64 16}
!100 = !{!"_ZTSNSt12_Vector_baseItSaItEE12_Vector_implE", !99, i64 0}
!101 = !{!"_ZTSSt12_Vector_baseItSaItEE", !100, i64 0}
!102 = !{!"_ZTSSt6vectorItSaItEE", !101, i64 0}
!103 = !{!"p1 _ZTS11NodeVisuals", !33, i64 0}
!104 = !{!"_ZTS16PointabilityType", !20, i64 0}
!105 = !{!"_ZTS10LiquidType", !20, i64 0}
!106 = !{!"_ZTS11NodeBoxType", !20, i64 0}
!107 = !{!"p1 _ZTSN4core8aabbox3dIfEE", !33, i64 0}
!108 = !{!"_ZTSNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE17_Vector_impl_dataE", !107, i64 0, !107, i64 8, !107, i64 16}
!109 = !{!"_ZTSNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE12_Vector_implE", !108, i64 0}
!110 = !{!"_ZTSSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE", !109, i64 0}
!111 = !{!"_ZTSSt6vectorIN4core8aabbox3dIfEESaIS2_EE", !110, i64 0}
!112 = !{!"_ZTSN4core8vector3dIfEE", !74, i64 0, !74, i64 4, !74, i64 8}
!113 = !{!"_ZTSN4core8aabbox3dIfEE", !112, i64 0, !112, i64 12}
!114 = !{!"p1 _ZTS16NodeBoxConnected", !33, i64 0}
!115 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !33, i64 0}
!116 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !115, i64 0}
!117 = !{!"_ZTSSt12__shared_ptrI16NodeBoxConnectedLN9__gnu_cxx12_Lock_policyE2EE", !114, i64 0, !116, i64 8}
!118 = !{!"_ZTSSt10shared_ptrI16NodeBoxConnectedE", !117, i64 0}
!119 = !{!"_ZTS7NodeBox", !106, i64 0, !111, i64 8, !113, i64 32, !113, i64 56, !113, i64 80, !118, i64 104}
!120 = !{!"_ZTS9SoundSpec", !72, i64 0, !74, i64 32, !74, i64 36, !74, i64 40, !74, i64 44, !38, i64 48, !38, i64 49}
!121 = !{!"_ZTS15ContentFeatures", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !72, i64 8, !89, i64 40, !90, i64 96, !91, i64 97, !92, i64 98, !72, i64 104, !74, i64 136, !20, i64 144, !20, i64 528, !20, i64 912, !93, i64 1296, !77, i64 1300, !72, i64 1304, !20, i64 1336, !20, i64 1337, !98, i64 1344, !102, i64 1368, !77, i64 1392, !38, i64 1396, !20, i64 1397, !20, i64 1398, !103, i64 1400, !38, i64 1408, !38, i64 1409, !20, i64 1410, !38, i64 1411, !38, i64 1412, !104, i64 1413, !38, i64 1414, !38, i64 1415, !38, i64 1416, !38, i64 1417, !21, i64 1420, !72, i64 1424, !20, i64 1456, !105, i64 1457, !38, i64 1458, !72, i64 1464, !26, i64 1496, !72, i64 1504, !26, i64 1536, !20, i64 1538, !38, i64 1539, !20, i64 1540, !20, i64 1541, !38, i64 1542, !119, i64 1544, !119, i64 1664, !119, i64 1784, !120, i64 1904, !120, i64 1960, !120, i64 2016, !38, i64 2072, !38, i64 2073}
!122 = !{!121, !103, i64 1400}
!123 = !{!"_ZTS12TileRotation", !20, i64 0}
!124 = !{!"p1 _ZTSN5video8ITextureE", !33, i64 0}
!125 = !{!"_ZTS12MaterialType", !20, i64 0}
!126 = !{!"p1 _ZTSSt6vectorI9FrameSpecSaIS0_EE", !33, i64 0}
!127 = !{!"_ZTS9TileLayer", !124, i64 0, !21, i64 8, !21, i64 12, !26, i64 16, !26, i64 18, !26, i64 20, !125, i64 22, !20, i64 23, !20, i64 24, !38, i64 25, !126, i64 32, !77, i64 40, !38, i64 44}
!128 = !{!127, !21, i64 8}
!129 = !{!127, !38, i64 44}
!130 = !{!127, !20, i64 23}
!131 = !{!"p1 _ZTSSt6vectorI12MeshTriangleSaIS0_EE", !33, i64 0}
!132 = !{!"p1 _ZTSN15MapBlockBspTree8TreeNodeE", !33, i64 0}
!133 = !{!"_ZTSNSt12_Vector_baseIN15MapBlockBspTree8TreeNodeESaIS1_EE17_Vector_impl_dataE", !132, i64 0, !132, i64 8, !132, i64 16}
!134 = !{!"_ZTSNSt12_Vector_baseIN15MapBlockBspTree8TreeNodeESaIS1_EE12_Vector_implE", !133, i64 0}
!135 = !{!"_ZTSSt12_Vector_baseIN15MapBlockBspTree8TreeNodeESaIS1_EE", !134, i64 0}
!136 = !{!"_ZTSSt6vectorIN15MapBlockBspTree8TreeNodeESaIS1_EE", !135, i64 0}
!137 = !{!"_ZTS15MapBlockBspTree", !131, i64 0, !136, i64 8, !21, i64 32}
!138 = !{!137, !131, i64 0}
!139 = !{!133, !132, i64 0}
!140 = !{!133, !132, i64 8}
!141 = !{!"p1 int", !33, i64 0}
!142 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !141, i64 0, !141, i64 8, !141, i64 16}
!143 = !{!142, !141, i64 0}
!144 = !{!142, !141, i64 16}
end_hunk_1
