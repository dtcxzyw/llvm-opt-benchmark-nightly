Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mapblock_mesh?download=true
inline.NumInlined: 2550
inline.NumDeleted: 1173
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZNK17PartialMeshBuffer4drawEPN5video12IVideoDriverE:bb.a
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
  %indvars.iv.sroa.gep770 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.e = invoke noundef ptr @_ZN6Client16getTextureSourceEv(ptr noundef nonnull align 8 dereferenceable(1674) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  store ptr %i.e, ptr %i.d, align 8, !tbaa !409
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = invoke noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(1674) %1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  store ptr %i.j, ptr %i.f, align 8, !tbaa !410
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
  store i32 0, ptr %i.w, align 8, !tbaa !411
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store ptr null, ptr %i.x, align 8, !tbaa !218
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr %i.w, ptr %i.y, align 8, !tbaa !219
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.w, ptr %i.z, align 8, !tbaa !412
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
  store i32 1, ptr %i.ao, align 8, !tbaa !221, !noalias !413
  store ptr getelementptr inbounds nuw inrange(-24, 112) (i8, ptr @_ZTVN5scene5SMeshE, i64 24), ptr %i.af, align 8, !tbaa !25, !noalias !413
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5scene5SMeshE, i64 160), ptr %i.an, align 8, !tbaa !25, !noalias !413
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ap, i8 0, i64 72, i1 false), !noalias !413
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
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(12) %i.au) #30, !inline_history !376
  br label %_ZN7irr_ptrIN5scene5SMeshEED2Ev.exit

_ZN7irr_ptrIN5scene5SMeshEED2Ev.exit:             ; preds = %bb.h, %bb.g, %bb.f
  store ptr %i.af, ptr %0, align 8, !tbaa !224
  %.091.ptr481.1 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bb = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #33
          to label %bb.i unwind label %bb.l       ; 5 uses

bb.i:                                             ; preds = %_ZN7irr_ptrIN5scene5SMeshEED2Ev.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 88
  store i32 1, ptr %i.bd, align 8, !tbaa !221, !noalias !413
  store ptr getelementptr inbounds nuw inrange(-24, 112) (i8, ptr @_ZTVN5scene5SMeshE, i64 24), ptr %i.bb, align 8, !tbaa !25, !noalias !413
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5scene5SMeshE, i64 160), ptr %i.bc, align 8, !tbaa !25, !noalias !413
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.be, i8 0, i64 72, i1 false), !noalias !413
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
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(12) %i.bj) #30, !inline_history !376
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
  %storemerge484 = phi i16 [ 0, %_ZNSt6vectorIP15MinimapMapblockSaIS1_EE6resizeEmRKS1_.exit ], [ %i.fo, %bb.ab ] ; 3 uses
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
  %i.dl = load i16, ptr %i.cs, align 2, !tbaa !414
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
  br i1 %i.fk, label %bb.r, label %bb.aa, !llvm.loop !377

bb.z:                                             ; preds = %bb.x, %bb.w
  %.pn121 = phi { ptr, i32 } [ %i.fh, %bb.x ], [ %i.fg, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.en

bb.aa:                                            ; preds = %bb.y
  %i.fl = add i16 %storemerge118483, 1            ; 2 uses
  %i.fm = sext i16 %i.fl to i32
  %i.fn = icmp slt i32 %i.fm, %i.bu
  br i1 %i.fn, label %.preheader, label %bb.ab, !llvm.loop !378

bb.ab:                                            ; preds = %bb.aa
  %i.fo = add i16 %storemerge484, 1               ; 2 uses
  %i.fp = sext i16 %i.fo to i32
  %i.fq = icmp slt i32 %i.fp, %i.bu
  br i1 %i.fq, label %.preheader363, label %_ZNK8MeshGrid9isMeshPosERN4core8vector3dIsEE.exit.thread, !llvm.loop !379

_ZNK8MeshGrid9isMeshPosERN4core8vector3dIsEE.exit.thread: ; preds = %bb.ab, %_ZN7irr_ptrIN5scene5SMeshEED2Ev.exit.1, %bb.d, %bb.m, %_ZNK8MeshGrid9isMeshPosERN4core8vector3dIsEE.exit
  %.sroa.045.0.copyload = load i48, ptr %i.bs, align 8 ; 5 uses
  %.sroa.2.0.extract.shift.i140 = lshr i48 %.sroa.045.0.copyload, 16
  %.sroa.3.0.extract.shift.i = lshr i48 %.sroa.045.0.copyload, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i48 %.sroa.3.0.extract.shift.i to i16 ; 3 uses
  %i.fr = add nsw i32 %i.bu, -1                   ; 3 uses
  %i.fs = sext i16 %.sroa.3.0.extract.trunc.i to i32
  %.lobit.i.i2.i = lshr i16 %.sroa.3.0.extract.trunc.i, 15
  %i.ft = zext nneg i16 %.lobit.i.i2.i to i32
  %i.fu = mul nuw nsw i32 %i.fr, %i.ft
  %i.fv = sub nsw i32 %i.fs, %i.fu
  %i.fw = sdiv i32 %i.fv, %i.bu
  %i.fx = trunc i32 %i.fw to i16
  %i.fy = mul i16 %i.br, %i.fx
  %i.fz = sub i16 %.sroa.3.0.extract.trunc.i, %i.fy
  %i.ga = shl i16 %i.fz, 4
  %i.gb = sitofp nsz i16 %i.ga to float
  %i.gc = trunc i48 %.sroa.045.0.copyload to i16
  %i.gd = insertelement <2 x i16> poison, i16 %i.gc, i64 0
  %i.ge = trunc i48 %.sroa.2.0.extract.shift.i140 to i16
  %i.gf = insertelement <2 x i16> %i.gd, i16 %i.ge, i64 1 ; 2 uses
  %11 = sext <2 x i16> %i.gf to <2 x i32>
  %12 = and i48 %.sroa.045.0.copyload, 2147483648
  %isneg.not = icmp eq i48 %12, 0
  %13 = select i1 %isneg.not, i32 0, i32 %i.fr
  %14 = and i48 %.sroa.045.0.copyload, 32768
  %.not = icmp eq i48 %14, 0
  %15 = select i1 %.not, i32 0, i32 %i.fr
  %16 = insertelement <2 x i32> poison, i32 %15, i64 0
  %17 = insertelement <2 x i32> %16, i32 %13, i64 1
  %18 = sub nsw <2 x i32> %11, %17
  %19 = insertelement <2 x i32> poison, i32 %i.bu, i64 0
  %20 = shufflevector <2 x i32> %19, <2 x i32> poison, <2 x i32> zeroinitializer
  %21 = sdiv <2 x i32> %18, %20
  %22 = trunc <2 x i32> %21 to <2 x i16>
  %i.gg = insertelement <2 x i16> poison, i16 %i.br, i64 0
  %i.gh = shufflevector <2 x i16> %i.gg, <2 x i16> poison, <2 x i32> zeroinitializer
  %i.gi = mul <2 x i16> %i.gh, %22
  %i.gj = sub <2 x i16> %i.gf, %i.gi
  %i.gk = shl <2 x i16> %i.gj, splat (i16 4)
  %i.gl = sitofp <2 x i16> %i.gk to <2 x float>
  %i.gm = fmul nnan nsz <2 x float> %i.gl, splat (float 1.000000e+01)
  %i.gn = fmul nnan nsz float %i.gb, 1.000000e+01
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %.sroa.038.0.copyload = load <2 x float>, ptr %i.k, align 4
  %.sroa.239.0.copyload = load float, ptr %i.r, align 4, !tbaa !75
  %i.go = getelementptr inbounds nuw i8, ptr %7, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %7, i8 0, i64 52, i1 false)
  store <2 x float> %.sroa.038.0.copyload, ptr %i.go, align 4
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 60
  store float %.sroa.239.0.copyload, ptr %.sroa.26.0..sroa_idx.i, align 4, !tbaa !75
  %i.gp = getelementptr inbounds nuw i8, ptr %7, i64 64
  store <2 x float> %i.gm, ptr %i.gp, align 8
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 72
  store float %i.gn, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  invoke void @_ZN21MapblockMeshGeneratorC1EP12MeshMakeDataP13MeshCollector(ptr noundef nonnull align 8 dereferenceable(496) %8, ptr noundef nonnull %2, ptr noundef nonnull %7)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %_ZNK8MeshGrid9isMeshPosERN4core8vector3dIsEE.exit.thread
  invoke void @_ZN21MapblockMeshGenerator8generateEv(ptr noundef nonnull align 8 dereferenceable(496) %8)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.gq = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.gr = load float, ptr %i.gq, align 8, !tbaa !417
  %i.gs = call nsz noundef float @llvm.sqrt.f32(float %i.gr)
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.gs, ptr %i.gt, align 8, !tbaa !418
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ha = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %9, i64 10
  %i.hc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %9, i64 34
  %i.hf = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %9, i64 58
  %i.hi = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %9, i64 82
  %i.hl = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %9, i64 108
  %i.hn = getelementptr inbounds nuw i8, ptr %9, i64 124
  %i.ho = getelementptr inbounds nuw i8, ptr %9, i64 126
  %i.hp = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.hq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.hv = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 6 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 7 uses
  br label %bb.ah

bb.ae:                                            ; preds = %_ZN5scene5SMesh22setHardwareMappingHintENS_18E_HARDWARE_MAPPINGENS_13E_BUFFER_TYPEE.exit
  %i.ia = load i16, ptr %i.l, align 2, !tbaa !41
  invoke void @_ZN15MapBlockBspTree9buildTreeEPKSt6vectorI12MeshTriangleSaIS1_EEt(ptr noundef nonnull align 8 dereferenceable(36) %i.ac, ptr noundef nonnull %i.ab, i16 noundef zeroext %i.ia)
          to label %bb.ek unwind label %bb.ag

bb.af:                                            ; preds = %bb.ac, %_ZNK8MeshGrid9isMeshPosERN4core8vector3dIsEE.exit.thread
  %i.ib = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %.body

bb.ag:                                            ; preds = %bb.ae
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ah:                                            ; preds = %bb.ad, %_ZN5scene5SMesh22setHardwareMappingHintENS_18E_HARDWARE_MAPPINGENS_13E_BUFFER_TYPEE.exit
  %i.id = phi i1 [ true, %bb.ad ], [ false, %_ZN5scene5SMesh22setHardwareMappingHintENS_18E_HARDWARE_MAPPINGENS_13E_BUFFER_TYPEE.exit ]
  %indvars.iv.sroa.phi = phi ptr [ %7, %bb.ad ], [ %indvars.iv.sroa.gep770, %_ZN5scene5SMesh22setHardwareMappingHintENS_18E_HARDWARE_MAPPINGENS_13E_BUFFER_TYPEE.exit ] ; 8 uses
  %indvars.iv = phi i64 [ 0, %bb.ad ], [ 1, %_ZN5scene5SMesh22setHardwareMappingHintENS_18E_HARDWARE_MAPPINGENS_13E_BUFFER_TYPEE.exit ] ; 3 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !224 ; 9 uses
  %i.ig = load ptr, ptr %indvars.iv.sroa.phi, align 8, !tbaa !231 ; 4 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %indvars.iv.sroa.phi, i64 8 ; 5 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !231 ; 2 uses
  %.not76.i = icmp eq ptr %i.ig, %i.ii
  br i1 %.not76.i, label %"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIP13PreMeshBufferSt6vectorIS2_SaIS2_EEEEZL18applyColorAndMergeRS6_E3$_0ET_SA_SA_T0_.exit.i.critedge", label %.lr.ph.i

.lr.ph80.i.preheader:                             ; preds = %_ZN13PreMeshBuffer14applyTileColorEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store ptr %i.gu, ptr %4, align 8, !tbaa !233
  store i64 1, ptr %i.gv, align 8, !tbaa !234
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gw, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.gx, align 8, !tbaa !235
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gy, i8 0, i64 16, i1 false)
  br label %.lr.ph80.i

.lr.ph.i:                                         ; preds = %bb.ah, %_ZN13PreMeshBuffer14applyTileColorEv.exit.i
  %.sroa.055.077.i = phi ptr [ %i.lu, %_ZN13PreMeshBuffer14applyTileColorEv.exit.i ], [ %i.ig, %bb.ah ] ; 5 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.055.077.i, i64 40 ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 8, !tbaa !46 ; 4 uses
  %i.il = icmp eq i32 %i.ik, -1
  br i1 %i.il, label %_ZN13PreMeshBuffer14applyTileColorEv.exit.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.055.077.i, i64 72
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !237 ; 8 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.055.077.i, i64 80
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !237 ; 3 uses
  %.not21.i.i = icmp eq ptr %i.in, %i.ip
  br i1 %.not21.i.i, label %_ZN13PreMeshBuffer14applyTileColorEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ai
  %i.iq = lshr i32 %i.ik, 16
  %i.ir = and i32 %i.iq, 255                      ; 2 uses
  %i.is = lshr i32 %i.ik, 8
  %i.it = and i32 %i.is, 255                      ; 2 uses
  %i.iu = and i32 %i.ik, 255                      ; 2 uses
  %i.iv = ptrtoaddr ptr %i.ip to i64
  %i.iw = ptrtoaddr ptr %i.in to i64
  %i.ix = add i64 %i.iv, -40
  %i.iy = sub i64 %i.ix, %i.iw                    ; 2 uses
  %i.iz = udiv i64 %i.iy, 40
  %i.ja = add nuw nsw i64 %i.iz, 1                ; 2 uses
  %min.iters.check710 = icmp ult i64 %i.iy, 120
  br i1 %min.iters.check710, label %scalar.ph709.preheader, label %vector.ph711

vector.ph711:                                     ; preds = %.lr.ph.i.i
  %n.vec712 = and i64 %i.ja, 1152921504606846972  ; 3 uses
  %i.jb = mul i64 %n.vec712, 40
  %i.jc = getelementptr i8, ptr %i.in, i64 %i.jb
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ir, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert713 = insertelement <4 x i32> poison, i32 %i.it, i64 0
  %broadcast.splat714 = shufflevector <4 x i32> %broadcast.splatinsert713, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert715 = insertelement <4 x i32> poison, i32 %i.iu, i64 0
  %broadcast.splat716 = shufflevector <4 x i32> %broadcast.splatinsert715, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body717

vector.body717:                                   ; preds = %vector.body717, %vector.ph711
  %index718 = phi i64 [ 0, %vector.ph711 ], [ %index.next723, %vector.body717 ] ; 2 uses
  %i.jd = mul i64 %index718, 40                   ; 4 uses
  %next.gep719 = getelementptr i8, ptr %i.in, i64 %i.jd
  %i.je = getelementptr i8, ptr %i.in, i64 %i.jd
  %i.jf = getelementptr i8, ptr %i.in, i64 %i.jd
  %i.jg = getelementptr i8, ptr %i.in, i64 %i.jd
  %i.jh = getelementptr inbounds nuw i8, ptr %next.gep719, i64 24 ; 2 uses
  %i.ji = getelementptr i8, ptr %i.je, i64 64     ; 2 uses
  %i.jj = getelementptr i8, ptr %i.jf, i64 104    ; 2 uses
  %i.jk = getelementptr i8, ptr %i.jg, i64 144    ; 2 uses
  %i.jl = load i32, ptr %i.jh, align 4, !tbaa !78
  %i.jm = load i32, ptr %i.ji, align 4, !tbaa !78
  %i.jn = load i32, ptr %i.jj, align 4, !tbaa !78
  %i.jo = load i32, ptr %i.jk, align 4, !tbaa !78
  %i.jp = insertelement <4 x i32> poison, i32 %i.jl, i64 0
  %i.jq = insertelement <4 x i32> %i.jp, i32 %i.jm, i64 1
  %i.jr = insertelement <4 x i32> %i.jq, i32 %i.jn, i64 2
  %i.js = insertelement <4 x i32> %i.jr, i32 %i.jo, i64 3 ; 4 uses
  %i.jt = and <4 x i32> %i.js, splat (i32 -16777216)
  %i.ju = lshr <4 x i32> %i.js, splat (i32 16)
  %i.jv = and <4 x i32> %i.ju, splat (i32 255)
  %i.jw = mul nuw nsw <4 x i32> %i.jv, %broadcast.splat
  %i.jx = trunc nuw <4 x i32> %i.jw to <4 x i16>
  %i.jy = udiv <4 x i16> %i.jx, splat (i16 255)
  %i.jz = zext nneg <4 x i16> %i.jy to <4 x i32>
  %i.ka = lshr <4 x i32> %i.js, splat (i32 8)
  %i.kb = and <4 x i32> %i.ka, splat (i32 255)
  %i.kc = mul nuw nsw <4 x i32> %i.kb, %broadcast.splat714
  %i.kd = trunc nuw <4 x i32> %i.kc to <4 x i16>
  %i.ke = udiv <4 x i16> %i.kd, splat (i16 255)
  %i.kf = zext nneg <4 x i16> %i.ke to <4 x i32>
  %i.kg = and <4 x i32> %i.js, splat (i32 255)
  %i.kh = mul nuw nsw <4 x i32> %i.kg, %broadcast.splat716
  %i.ki = trunc nuw <4 x i32> %i.kh to <4 x i16>
  %i.kj = udiv <4 x i16> %i.ki, splat (i16 255)
  %i.kk = zext nneg <4 x i16> %i.kj to <4 x i32>
  %i.kl = shl nuw nsw <4 x i32> %i.jz, splat (i32 16)
  %i.km = and <4 x i32> %i.kl, splat (i32 16711680)
  %i.kn = shl nuw nsw <4 x i32> %i.kf, splat (i32 8)
  %i.ko = and <4 x i32> %i.kn, splat (i32 65280)
  %i.kp = or disjoint <4 x i32> %i.jt, %i.kk
  %i.kq = or disjoint <4 x i32> %i.kp, %i.km
  %i.kr = or disjoint <4 x i32> %i.kq, %i.ko      ; 4 uses
  %i.ks = extractelement <4 x i32> %i.kr, i64 0
  store i32 %i.ks, ptr %i.jh, align 4, !tbaa !78
  %i.kt = extractelement <4 x i32> %i.kr, i64 1
  store i32 %i.kt, ptr %i.ji, align 4, !tbaa !78
  %i.ku = extractelement <4 x i32> %i.kr, i64 2
  store i32 %i.ku, ptr %i.jj, align 4, !tbaa !78
  %i.kv = extractelement <4 x i32> %i.kr, i64 3
  store i32 %i.kv, ptr %i.jk, align 4, !tbaa !78
  %index.next723 = add nuw i64 %index718, 4       ; 2 uses
  %i.kw = icmp eq i64 %index.next723, %n.vec712
  br i1 %i.kw, label %middle.block724, label %vector.body717, !llvm.loop !380
end_hunk_0
