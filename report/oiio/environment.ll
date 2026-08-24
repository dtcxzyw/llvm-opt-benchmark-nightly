Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/environment?download=true
inline.NumInlined: 2631
inline.NumDeleted: 666
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl11environmentENS0_7ustringERNS0_13TextureOpt_v2ENS0_9Vec3ParamIfEES6_S6_iPfS7_S7_:bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.e = tail call noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl9find_fileENS0_7ustringEPNS0_23ImageCachePerThreadInfoEPFPNS0_10ImageInputEvEPKNS0_9ImageSpecEb(ptr noundef nonnull align 64 dereferenceable(25240) %i.d, ptr %1, ptr noundef %i.c, ptr noundef null, ptr noundef null, i1 noundef zeroext false)
  %i.f = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl11environmentEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_13TextureOpt_v2ENS0_9Vec3ParamIfEESA_SA_iPfSB_SB_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef %i.e, ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(76) %2, <2 x float> %3, float %4, <2 x float> %5, float %6, <2 x float> %7, float %8, i32 noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12)
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_113TextureSystem11environmentEPNS1_13TextureHandleEPNS1_9PerthreadERNS0_13TextureOpt_v2ENS0_9Vec3ParamIfEES9_S9_iPfSA_SA_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, <2 x float> %4, float %5, <2 x float> %6, float %7, <2 x float> %8, float %9, i32 noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl11environmentEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_13TextureOpt_v2ENS0_9Vec3ParamIfEESA_SA_iPfSB_SB_(ptr noundef nonnull align 8 dereferenceable(188) %i.b, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, <2 x float> %4, float %5, <2 x float> %6, float %7, <2 x float> %8, float %9, i32 noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13)
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl11environmentEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_13TextureOpt_v2ENS0_9Vec3ParamIfEESA_SA_iPfSB_SB_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, <2 x float> %4, float %5, <2 x float> %6, float %7, <2 x float> %8, float %9, i32 noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %14 = alloca %"class.OpenImageIO::v3_1::ustring", align 8 ; 4 uses
  %15 = alloca %"class.OpenImageIO::v3_1::ustring", align 8 ; 4 uses
  %16 = alloca %"class.Imath_3_1::Vec3", align 8  ; 10 uses
  %17 = alloca %"class.Imath_3_1::Vec3", align 8  ; 9 uses
  %18 = alloca %"class.Imath_3_1::Vec3", align 8  ; 9 uses
  %i.a = alloca [4 x float], align 16             ; 10 uses
  %i.b = alloca [4 x float], align 16             ; 10 uses
  %i.c = alloca [4 x float], align 16             ; 10 uses
  %19 = alloca %"class.OpenImageIO::v3_1::simd::vfloat4", align 16 ; 10 uses
  %20 = alloca %"class.OpenImageIO::v3_1::simd::vfloat4", align 16 ; 13 uses
  %21 = alloca %"class.OpenImageIO::v3_1::simd::vfloat4", align 16 ; 13 uses
  %i.d = icmp sgt i32 %10, 4
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %3, align 8, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.d
  %.0246423 = phi ptr [ %11, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %.0248422 = phi ptr [ %12, %bb.b ], [ %spec.select, %bb.d ] ; 3 uses
  %.0252421 = phi ptr [ %13, %bb.b ], [ %.1253, %bb.d ] ; 3 uses
  %.0381420 = phi i32 [ %10, %bb.b ], [ %i.m, %bb.d ] ; 2 uses
  %.sroa.speculated344 = tail call i32 @llvm.smin.i32(i32 %.0381420, i32 4) ; 4 uses
  %i.f = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl11environmentEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_13TextureOpt_v2ENS0_9Vec3ParamIfEESA_SA_iPfSB_SB_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, <2 x float> %4, float %5, <2 x float> %6, float %7, <2 x float> %8, float %9, i32 noundef %.sroa.speculated344, ptr noundef %.0246423, ptr noundef %.0248422, ptr noundef %.0252421)
  br i1 %i.f, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.g = zext nneg i32 %.sroa.speculated344 to i64 ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.0246423, i64 %i.g
  %.not276 = icmp eq ptr %.0248422, null
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.0248422, i64 %i.g
  %spec.select = select i1 %.not276, ptr null, ptr %i.i
  %.not277 = icmp eq ptr %.0252421, null
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.0252421, i64 %i.g
  %.1253 = select i1 %.not277, ptr null, ptr %i.j
  %i.k = load i32, ptr %3, align 8, !tbaa !28
  %i.l = add nsw i32 %i.k, %.sroa.speculated344
  store i32 %i.l, ptr %3, align 8, !tbaa !28
  %i.m = sub nsw i32 %.0381420, %.sroa.speculated344 ; 2 uses
  %.not275 = icmp eq i32 %i.m, 0
  br i1 %.not275, label %bb.e, label %bb.c, !llvm.loop !38

bb.e:                                             ; preds = %bb.d
  store i32 %i.e, ptr %3, align 8, !tbaa !28
  br label %.critedge

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !10
  %i.p = tail call noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl18get_perthread_infoEPNS0_23ImageCachePerThreadInfoE(ptr noundef nonnull align 64 dereferenceable(25240) %i.o, ptr noundef %2) ; 9 uses
  %i.q = tail call noundef ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl18verify_texturefileEPNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoE(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef %1, ptr noundef %i.p) ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 256 ; 2 uses
  %i.s = load <2 x i64>, ptr %i.r, align 8, !tbaa !40
  %i.t = add nsw <2 x i64> %i.s, splat (i64 1)
  store <2 x i64> %i.t, ptr %i.r, align 8, !tbaa !40
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 25
  %i.v = load i8, ptr %i.u, align 1, !tbaa !42, !range !92, !noundef !93
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl15missing_textureERNS0_13TextureOpt_v2EiPfS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef null)
  br label %.critedge

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !94   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit.thread, label %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit

_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit:      ; preds = %bb.i
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !95
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit
  %i.ad = load ptr, ptr %i.n, align 8, !tbaa !10
  %i.ae = tail call noundef i32 @_ZN11OpenImageIO4v3_114ImageCacheImpl18subimage_from_nameEPNS0_14ImageCacheFileENS0_7ustringE(ptr noundef nonnull align 64 dereferenceable(25240) %i.ad, ptr noundef nonnull %i.q, ptr nonnull %i.z) ; 2 uses
  %i.af = icmp sgt i32 %i.ae, -1
  br i1 %i.af, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.ae, ptr %i.ag, align 4, !tbaa !97
  store ptr null, ptr %i.y, align 8, !tbaa !94
  br label %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit.thread

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ah, align 8, !tbaa !98
  store ptr %.sroa.0.0.copyload.i, ptr %14, align 8
  call void @_ZNK11OpenImageIO4v3_117TextureSystemImpl5errorIJNS0_7ustringES3_EEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  %i.ai = call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl15missing_textureERNS0_13TextureOpt_v2EiPfS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef null)
  br label %.critedge

_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit.thread: ; preds = %bb.i, %.thread, %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !97 ; 3 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit.thread
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 80 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !99
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !100 ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = lshr exact i64 %i.as, 7
  %i.au = trunc i64 %i.at to i32
  %.not271 = icmp slt i32 %i.ak, %i.au
  br i1 %.not271, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.0.0.copyload.i284 = load ptr, ptr %i.av, align 8, !tbaa !98
  store ptr %.sroa.0.0.copyload.i284, ptr %15, align 8
  call void @_ZNK11OpenImageIO4v3_117TextureSystemImpl5errorIJNS0_7ustringES3_EEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  %i.aw = call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl15missing_textureERNS0_13TextureOpt_v2EiPfS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef null)
  br label %.critedge

bb.n:                                             ; preds = %bb.l
  %i.ax = zext nneg i32 %i.ak to i64
  %i.ay = getelementptr inbounds nuw [128 x i8], ptr %i.ap, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !101 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 165
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !130, !range !92, !noundef !93
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = select i1 %i.bd, i8 6, i8 3
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 %i.be, ptr %i.bf, align 8, !tbaa !131
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 2, ptr %i.bg, align 1, !tbaa !132
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i32 1, ptr %i.bh, align 8, !tbaa !133
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 60
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !134
  %i.bk = load i32, ptr %3, align 8, !tbaa !28
  %i.bl = sub nsw i32 %i.bj, %i.bk
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.bl, i32 0) ; 2 uses
  %.1.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %10) ; 2 uses
  %i.bm = icmp sgt i32 %10, 0                     ; 3 uses
  br i1 %i.bm, label %._crit_edge, label %._crit_edge.thread

._crit_edge:                                      ; preds = %bb.n
  %i.bn = zext nneg i32 %10 to i64
  %i.bo = shl nuw nsw i64 %i.bn, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %11, i8 0, i64 %i.bo, i1 false), !tbaa !152
  %.not391 = icmp eq ptr %12, null
  br i1 %.not391, label %.loopexit397, label %.lr.ph404.preheader

._crit_edge.thread:                               ; preds = %bb.n
  %.not391468 = icmp eq ptr %12, null
  %spec.select476 = select i1 %.not391468, ptr null, ptr %13
  br label %.loopexit397

.lr.ph404.preheader:                              ; preds = %._crit_edge
  %i.bp = zext nneg i32 %10 to i64
  %i.bq = shl nuw nsw i64 %i.bp, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %12, i8 0, i64 %i.bq, i1 false), !tbaa !152
  %i.br = zext nneg i32 %10 to i64
  %i.bs = shl nuw nsw i64 %i.br, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %13, i8 0, i64 %i.bs, i1 false), !tbaa !152
  br label %.loopexit397

.loopexit397:                                     ; preds = %._crit_edge.thread, %.lr.ph404.preheader, %._crit_edge
  %spec.select278 = phi ptr [ null, %._crit_edge ], [ %spec.select476, %._crit_edge.thread ], [ %13, %.lr.ph404.preheader ] ; 12 uses
  %.not392 = icmp eq ptr %13, null
  %spec.select279 = select i1 %.not392, ptr null, ptr %12 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  %.sroa.0368.0.vec.extract = extractelement <2 x float> %4, i64 0 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %16, i64 4 ; 2 uses
  store <2 x float> %4, ptr %16, align 8, !tbaa !152
  %i.bu = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 5 uses
  store float %5, ptr %i.bu, align 8, !tbaa !153
  %foldExtExtBinop = fmul <2 x float> %4, %4
  %22 = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bv = tail call float @llvm.fmuladd.f32(float %.sroa.0368.0.vec.extract, float %.sroa.0368.0.vec.extract, float %22)
  %i.bw = tail call noundef float @llvm.fmuladd.f32(float %5, float %5, float %i.bv) ; 2 uses
  %i.bx = fcmp olt float %i.bw, f0x01000000
  br i1 %i.bx, label %bb.o, label %bb.p, !prof !155

bb.o:                                             ; preds = %.loopexit397
  %i.by = call noundef float @_ZNK9Imath_3_14Vec3IfE10lengthTinyEv(ptr noundef nonnull align 4 dereferenceable(12) %16) #27
  br label %_ZNK9Imath_3_14Vec3IfE6lengthEv.exit.i

bb.p:                                             ; preds = %.loopexit397
  %i.bz = tail call noundef float @llvm.sqrt.f32(float %i.bw)
  br label %_ZNK9Imath_3_14Vec3IfE6lengthEv.exit.i

_ZNK9Imath_3_14Vec3IfE6lengthEv.exit.i:           ; preds = %bb.p, %bb.o
  %.0.i.i = phi float [ %i.by, %bb.o ], [ %i.bz, %bb.p ] ; 3 uses
  %i.ca = fcmp une float %.0.i.i, 0.000000e+00
  br i1 %i.ca, label %bb.q, label %_ZN9Imath_3_14Vec3IfE9normalizeEv.exit, !prof !156

bb.q:                                             ; preds = %_ZNK9Imath_3_14Vec3IfE6lengthEv.exit.i
  %i.cb = load <2 x float>, ptr %16, align 8, !tbaa !152
  %i.cc = insertelement <2 x float> poison, float %.0.i.i, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = fdiv <2 x float> %i.cb, %i.cd
  store <2 x float> %i.ce, ptr %16, align 8, !tbaa !152
  %i.cf = load float, ptr %i.bu, align 8, !tbaa !153
  %i.cg = fdiv float %i.cf, %.0.i.i
  store float %i.cg, ptr %i.bu, align 8, !tbaa !153
  br label %_ZN9Imath_3_14Vec3IfE9normalizeEv.exit

_ZN9Imath_3_14Vec3IfE9normalizeEv.exit:           ; preds = %_ZNK9Imath_3_14Vec3IfE6lengthEv.exit.i, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  %23 = fadd float %5, %7                         ; 3 uses
  %24 = getelementptr inbounds nuw i8, ptr %17, i64 4
  %foldExtExtBinop533.a = fadd <2 x float> %4, %6 ; 4 uses
  store <2 x float> %foldExtExtBinop533.a, ptr %17, align 8, !tbaa !152, !alias.scope !157
  %i.ch = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  store float %23, ptr %i.ch, align 8, !tbaa !153, !alias.scope !157
  %foldExtExtBinop533 = fmul <2 x float> %foldExtExtBinop533.a, %foldExtExtBinop533.a
  %25 = extractelement <2 x float> %foldExtExtBinop533, i64 1
  %26 = extractelement <2 x float> %foldExtExtBinop533.a, i64 0 ; 2 uses
  %i.ci = call float @llvm.fmuladd.f32(float %26, float %26, float %25)
  %i.cj = call noundef float @llvm.fmuladd.f32(float %23, float %23, float %i.ci) ; 2 uses
  %i.ck = fcmp olt float %i.cj, f0x01000000
  br i1 %i.ck, label %bb.r, label %bb.s, !prof !155

bb.r:                                             ; preds = %_ZN9Imath_3_14Vec3IfE9normalizeEv.exit
  %i.cl = call noundef float @_ZNK9Imath_3_14Vec3IfE10lengthTinyEv(ptr noundef nonnull align 4 dereferenceable(12) %17) #27
  br label %_ZNK9Imath_3_14Vec3IfE6lengthEv.exit.i285

bb.s:                                             ; preds = %_ZN9Imath_3_14Vec3IfE9normalizeEv.exit
  %i.cm = call noundef float @llvm.sqrt.f32(float %i.cj)
  br label %_ZNK9Imath_3_14Vec3IfE6lengthEv.exit.i285

_ZNK9Imath_3_14Vec3IfE6lengthEv.exit.i285:        ; preds = %bb.s, %bb.r
  %.0.i.i286 = phi float [ %i.cl, %bb.r ], [ %i.cm, %bb.s ] ; 3 uses
  %i.cn = fcmp une float %.0.i.i286, 0.000000e+00
  br i1 %i.cn, label %bb.t, label %_ZN9Imath_3_14Vec3IfE9normalizeEv.exit287, !prof !156

bb.t:                                             ; preds = %_ZNK9Imath_3_14Vec3IfE6lengthEv.exit.i285
  %i.co = load <2 x float>, ptr %17, align 8, !tbaa !152
  %i.cp = insertelement <2 x float> poison, float %.0.i.i286, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cr = fdiv <2 x float> %i.co, %i.cq
  store <2 x float> %i.cr, ptr %17, align 8, !tbaa !152
  %i.cs = load float, ptr %i.ch, align 8, !tbaa !153
  %i.ct = fdiv float %i.cs, %.0.i.i286
  store float %i.ct, ptr %i.ch, align 8, !tbaa !153
  br label %_ZN9Imath_3_14Vec3IfE9normalizeEv.exit287

_ZN9Imath_3_14Vec3IfE9normalizeEv.exit287:        ; preds = %_ZNK9Imath_3_14Vec3IfE6lengthEv.exit.i285, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  %27 = fadd float %5, %9                         ; 3 uses
  %28 = getelementptr inbounds nuw i8, ptr %18, i64 4
  %foldExtExtBinop537 = fadd <2 x float> %4, %8   ; 4 uses
  store <2 x float> %foldExtExtBinop537, ptr %18, align 8, !tbaa !152, !alias.scope !160
  %i.cu = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 4 uses
  store float %27, ptr %i.cu, align 8, !tbaa !153, !alias.scope !160
  %foldExtExtBinop535 = fmul <2 x float> %foldExtExtBinop537, %foldExtExtBinop537
  %29 = extractelement <2 x float> %foldExtExtBinop535, i64 1
  %30 = extractelement <2 x float> %foldExtExtBinop537, i64 0 ; 2 uses
  %i.cv = call float @llvm.fmuladd.f32(float %30, float %30, float %29)
  %i.cw = call noundef float @llvm.fmuladd.f32(float %27, float %27, float %i.cv) ; 2 uses
  %i.cx = fcmp olt float %i.cw, f0x01000000
  br i1 %i.cx, label %bb.u, label %bb.v, !prof !155

bb.u:                                             ; preds = %_ZN9Imath_3_14Vec3IfE9normalizeEv.exit287
  %i.cy = call noundef float @_ZNK9Imath_3_14Vec3IfE10lengthTinyEv(ptr noundef nonnull align 4 dereferenceable(12) %18) #27
  br label %_ZNK9Imath_3_14Vec3IfE6lengthEv.exit.i288

bb.v:                                             ; preds = %_ZN9Imath_3_14Vec3IfE9normalizeEv.exit287
  %i.cz = call noundef float @llvm.sqrt.f32(float %i.cw)
  br label %_ZNK9Imath_3_14Vec3IfE6lengthEv.exit.i288

_ZNK9Imath_3_14Vec3IfE6lengthEv.exit.i288:        ; preds = %bb.v, %bb.u
  %.0.i.i289 = phi float [ %i.cy, %bb.u ], [ %i.cz, %bb.v ] ; 3 uses
  %i.da = fcmp une float %.0.i.i289, 0.000000e+00
  br i1 %i.da, label %bb.w, label %_ZN9Imath_3_14Vec3IfE9normalizeEv.exit290, !prof !156

bb.w:                                             ; preds = %_ZNK9Imath_3_14Vec3IfE6lengthEv.exit.i288
  %i.db = load <2 x float>, ptr %18, align 8, !tbaa !152
  %i.dc = insertelement <2 x float> poison, float %.0.i.i289, i64 0
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.de = fdiv <2 x float> %i.db, %i.dd
  store <2 x float> %i.de, ptr %18, align 8, !tbaa !152
  %i.df = load float, ptr %i.cu, align 8, !tbaa !153
  %i.dg = fdiv float %i.df, %.0.i.i289
  store float %i.dg, ptr %i.cu, align 8, !tbaa !153
  br label %_ZN9Imath_3_14Vec3IfE9normalizeEv.exit290

_ZN9Imath_3_14Vec3IfE9normalizeEv.exit290:        ; preds = %_ZNK9Imath_3_14Vec3IfE6lengthEv.exit.i288, %bb.w
  %i.dh = load float, ptr %16, align 8, !tbaa !163 ; 2 uses
  %i.di = load float, ptr %17, align 8, !tbaa !163 ; 2 uses
  %i.dj = load float, ptr %i.bt, align 4, !tbaa !164 ; 2 uses
  %i.dk = load float, ptr %24, align 4, !tbaa !164 ; 2 uses
  %i.dl = fmul float %i.dj, %i.dk
  %i.dm = call float @llvm.fmuladd.f32(float %i.dh, float %i.di, float %i.dl)
  %i.dn = load float, ptr %i.bu, align 8, !tbaa !153 ; 2 uses
  %i.do = load float, ptr %i.ch, align 8, !tbaa !153 ; 2 uses
  %i.dp = call noundef float @llvm.fmuladd.f32(float %i.dn, float %i.do, float %i.dm) ; 3 uses
  %i.dq = fcmp ugt float %i.dp, -1.000000e+00
  br i1 %i.dq, label %bb.x, label %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit281

bb.x:                                             ; preds = %_ZN9Imath_3_14Vec3IfE9normalizeEv.exit290
  %i.dr = fcmp ult float %i.dp, 1.000000e+00
  br i1 %i.dr, label %bb.y, label %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit281

bb.y:                                             ; preds = %bb.x
  %i.ds = call noundef float @llvm.acos.f32(float %i.dp)
  br label %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit281

_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit281: ; preds = %_ZN9Imath_3_14Vec3IfE9normalizeEv.exit290, %bb.x, %bb.y
  %.0.i280 = phi float [ %i.ds, %bb.y ], [ f0x40490FDB, %_ZN9Imath_3_14Vec3IfE9normalizeEv.exit290 ], [ 0.000000e+00, %bb.x ] ; 2 uses
  %i.dt = fcmp olt float %.0.i280, f0x322BCC77
  %.sroa.speculated335 = select i1 %i.dt, float f0x322BCC77, float %.0.i280 ; 3 uses
  %i.du = load float, ptr %18, align 8, !tbaa !163 ; 2 uses
  %i.dv = load float, ptr %28, align 4, !tbaa !164 ; 2 uses
  %i.dw = fmul float %i.dj, %i.dv
  %i.dx = call float @llvm.fmuladd.f32(float %i.dh, float %i.du, float %i.dw)
  %i.dy = load float, ptr %i.cu, align 8, !tbaa !153 ; 2 uses
  %i.dz = call noundef float @llvm.fmuladd.f32(float %i.dn, float %i.dy, float %i.dx) ; 3 uses
  %i.ea = fcmp ugt float %i.dz, -1.000000e+00
  br i1 %i.ea, label %bb.z, label %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit

bb.z:                                             ; preds = %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit281
  %i.eb = fcmp ult float %i.dz, 1.000000e+00
  br i1 %i.eb, label %bb.aa, label %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit

bb.aa:                                            ; preds = %bb.z
  %i.ec = call noundef float @llvm.acos.f32(float %i.dz)
  br label %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit

_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit:    ; preds = %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit281, %bb.z, %bb.aa
  %.0.i = phi float [ %i.ec, %bb.aa ], [ f0x40490FDB, %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit281 ], [ 0.000000e+00, %bb.z ] ; 2 uses
  %i.ed = fcmp olt float %.0.i, f0x322BCC77
  %.sroa.speculated327 = select i1 %i.ed, float f0x322BCC77, float %.0.i ; 3 uses
  %i.ee = fcmp olt float %.sroa.speculated327, %.sroa.speculated335
  %.sroa.speculated331 = select i1 %i.ee, float %.sroa.speculated327, float %.sroa.speculated335
  %i.ef = fdiv float f0x40490FDB, %.sroa.speculated331
  %i.eg = fptosi float %i.ef to i32
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ej = load <2 x float>, ptr %i.eh, align 4, !tbaa !152
  %i.ek = load <2 x float>, ptr %i.ei, align 8, !tbaa !152
  %i.el = insertelement <2 x float> poison, float %.sroa.speculated335, i64 0
  %i.em = insertelement <2 x float> %i.el, float %.sroa.speculated327, i64 1
  %i.en = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.em, <2 x float> %i.ej, <2 x float> %i.ek) ; 4 uses
  %i.eo = extractelement <2 x float> %i.en, i64 0
  %i.ep = extractelement <2 x float> %i.en, i64 1
  %i.eq = fcmp ult float %i.eo, %i.ep
  %i.er = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br i1 %i.eq, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit, %bb.ab
  %.sroa.0325.0 = phi float [ %i.du, %bb.ab ], [ %i.di, %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit ]
  %.sroa.5.0 = phi float [ %i.dv, %bb.ab ], [ %i.dk, %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit ]
  %.sroa.8.0 = phi float [ %i.dy, %bb.ab ], [ %i.do, %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit ]
  %i.es = phi <2 x float> [ %i.en, %bb.ab ], [ %i.er, %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit ] ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  %i.eu = load i8, ptr %i.et, align 4, !tbaa !165
  switch i8 %i.eu, label %bb.ae [
    i8 0, label %bb.af
    i8 2, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ae, %bb.ad
  %.sink = phi i64 [ 312, %bb.ae ], [ 320, %bb.ad ], [ 304, %bb.ac ]
  %.sroa.0.0 = phi i64 [ ptrtoint (ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl15sample_bilinearEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_ to i64), %bb.ae ], [ ptrtoint (ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl14sample_bicubicEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_ to i64), %bb.ad ], [ ptrtoint (ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl14sample_closestEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_ to i64), %bb.ac ]
  %i.ev = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sink ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 19 ; 2 uses
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !166 ; 2 uses
  %i.ey = and i8 %i.ex, -5
  %i.ez = icmp eq i8 %i.ey, 0
  br i1 %i.ez, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.fa = extractelement <2 x float> %i.es, i64 0 ; 4 uses
  %i.fb = extractelement <2 x float> %i.es, i64 1 ; 2 uses
  %i.fc = fdiv float %i.fb, %i.fa                 ; 2 uses
  %.inv.i = fcmp oge float %i.fc, 1.000000e+00
  %.0.i.i294 = select i1 %.inv.i, float %i.fc, float 1.000000e+00 ; 2 uses
  %i.fd = fcmp ogt float %.0.i.i294, 1.000000e+06
  %.1.i.i = select i1 %i.fd, float 1.000000e+06, float %.0.i.i294 ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !167
  %i.fg = uitofp i16 %i.ff to float               ; 5 uses
  %i.fh = fcmp ogt float %.1.i.i, %i.fg
  br i1 %i.fh, label %bb.ah, label %_ZN11OpenImageIO4v3_117TextureSystemImpl18anisotropic_aspectERfS2_RNS0_13TextureOpt_v2ES2_.exit

bb.ah:                                            ; preds = %bb.ag
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 21
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !168, !range !92, !noundef !93
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.ai, label %_ZN11OpenImageIO4v3_117TextureSystemImpl18anisotropic_aspectERfS2_RNS0_13TextureOpt_v2ES2_.exit

bb.ai:                                            ; preds = %bb.ah
  %i.fl = call float @llvm.fmuladd.f32(float %i.fa, float %i.fg, float %i.fb)
  %i.fm = fmul float %i.fl, 5.000000e-01
  %i.fn = fdiv float %i.fm, %i.fg
  br label %_ZN11OpenImageIO4v3_117TextureSystemImpl18anisotropic_aspectERfS2_RNS0_13TextureOpt_v2ES2_.exit

_ZN11OpenImageIO4v3_117TextureSystemImpl18anisotropic_aspectERfS2_RNS0_13TextureOpt_v2ES2_.exit: ; preds = %bb.ah, %bb.ag, %bb.ai
  %.0385 = phi float [ %i.fn, %bb.ai ], [ %i.fa, %bb.ag ], [ %i.fa, %bb.ah ]
  %.0.i295 = phi float [ %i.fg, %bb.ai ], [ %.1.i.i, %bb.ag ], [ %i.fg, %bb.ah ]
  %i.fo = getelementptr inbounds nuw i8, ptr %i.p, i64 296 ; 2 uses
  %i.fp = load float, ptr %i.fo, align 8, !tbaa !169
  %i.fq = fcmp ogt float %.1.i.i, %i.fp
  br i1 %i.fq, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZN11OpenImageIO4v3_117TextureSystemImpl18anisotropic_aspectERfS2_RNS0_13TextureOpt_v2ES2_.exit
  store float %.1.i.i, ptr %i.fo, align 8, !tbaa !169
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZN11OpenImageIO4v3_117TextureSystemImpl18anisotropic_aspectERfS2_RNS0_13TextureOpt_v2ES2_.exit
  %i.fr = fadd float %.0.i295, -2.500000e-01
  %i.fs = call float @llvm.ceil.f32(float %i.fr)
  %i.ft = fptosi float %i.fs to i32
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.ft, i32 1) ; 2 uses
  %i.fu = uitofp nneg i32 %.sroa.speculated to float
  %i.fv = fdiv float 1.000000e+00, %i.fu
  br label %bb.am

bb.al:                                            ; preds = %bb.af
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 21
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !168, !range !92, !noundef !93
  %i.fy = trunc nuw i8 %i.fx to i1
  %i.fz = extractelement <2 x float> %i.es, i64 0
  %i.ga = extractelement <2 x float> %i.es, i64 1
  %i.gb = select i1 %i.fy, float %i.ga, float %i.fz
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.0233 = phi float [ %.0385, %bb.ak ], [ %i.gb, %bb.al ]
  %.0232 = phi i32 [ %.sroa.speculated, %bb.ak ], [ 1, %bb.al ] ; 2 uses
  %.0231 = phi float [ %i.fv, %bb.ak ], [ 1.000000e+00, %bb.al ] ; 4 uses
  %i.gc = load i32, ptr %i.aj, align 4, !tbaa !97
  %i.gd = sext i32 %i.gc to i64
  %i.ge = load ptr, ptr %i.am, align 8, !tbaa !100
  %i.gf = getelementptr inbounds nuw [128 x i8], ptr %i.ge, i64 %i.gd ; 5 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 100
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !171 ; 7 uses
  %i.gi = call float @llvm.fmuladd.f32(float %.0231, float 5.000000e-01, float -5.000000e-01)
  %i.gj = getelementptr inbounds nuw i8, ptr %i.q, i64 164
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gf, i64 120 ; 3 uses
  %i.gm = sdiv i32 %i.eg, 2                       ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.p, i64 312 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.p, i64 320 ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %.not274 = icmp eq ptr %spec.select279, null    ; 4 uses
  %. = select i1 %.not274, ptr null, ptr %20      ; 2 uses
  %i.gv = select i1 %.not274, ptr null, ptr %21   ; 2 uses
  %i.gw = icmp slt i32 %10, 1                     ; 2 uses
  %i.gx = icmp ne i8 %i.ex, 1                     ; 3 uses
  %i.gy = sext i32 %i.gh to i64
  %wide.trip.count = zext i32 %10 to i64          ; 14 uses
  %brmerge = or i1 %.not274, %i.gw
  %wide.trip.count438 = zext nneg i32 %10 to i64
  %wide.trip.count.1 = zext nneg i32 %10 to i64
  %brmerge.1 = or i1 %.not274, %i.gw
  %wide.trip.count438.1 = zext nneg i32 %10 to i64
  %i.gz = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %scevgep = getelementptr i8, ptr %spec.select279, i64 %i.gz ; 2 uses
  %scevgep482 = getelementptr i8, ptr %spec.select278, i64 %i.gz ; 2 uses
  %min.iters.check519 = icmp ult i32 %10, 8
  %n.vec521 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n530 = icmp eq i64 %n.vec521, %wide.trip.count
  %min.iters.check505 = icmp ult i32 %10, 4
  %bound0501 = icmp ult ptr %spec.select279, %scevgep482
  %bound1502 = icmp ult ptr %spec.select278, %scevgep
  %found.conflict503 = and i1 %bound0501, %bound1502
  %n.vec507 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n516 = icmp eq i64 %n.vec507, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ha = add nsw i64 %wide.trip.count, -1
  %min.iters.check487 = icmp ult i32 %10, 8
  %n.vec489 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n498 = icmp eq i64 %n.vec489, %wide.trip.count
  %min.iters.check = icmp ult i32 %10, 4
  %bound0 = icmp ult ptr %spec.select279, %scevgep482
  %bound1 = icmp ult ptr %spec.select278, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter548 = and i64 %wide.trip.count, 1
  %lcmp.mod549.not = icmp eq i64 %xtraiter548, 0
  %i.hb = add nsw i64 %wide.trip.count, -1
  br label %bb.ao

bb.an:                                            ; preds = %bb.br
  %i.hc = zext nneg i32 %.0232 to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %i.p, i64 280 ; 2 uses
  %i.he = load <2 x i64>, ptr %i.hd, align 8, !tbaa !40
  %i.hf = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.hc, i64 1
  %i.hg = add nsw <2 x i64> %i.he, %i.hf
  store <2 x i64> %i.hg, ptr %i.hd, align 8, !tbaa !40
  %i.hh = icmp slt i32 %spec.select.i, %10
  br i1 %i.hh, label %bb.bs, label %bb.bv

bb.ao:                                            ; preds = %bb.am, %bb.br
  %.0226419 = phi i32 [ 0, %bb.am ], [ %i.pk, %bb.br ]
  %.0227418 = phi float [ %i.gi, %bb.am ], [ %i.pl, %bb.br ] ; 4 uses
  %.0228417 = phi i8 [ 1, %bb.am ], [ %.2230.1, %bb.br ] ; 2 uses
  %.sroa.0.1416 = phi i64 [ %.sroa.0.0, %bb.am ], [ %.sroa.0.4.1, %bb.br ] ; 2 uses
  %i.hi = fmul float %.sroa.0325.0, %.0227418
  %i.hj = fmul float %.sroa.5.0, %.0227418
  %i.hk = fmul float %.sroa.8.0, %.0227418
  %i.hl = load float, ptr %16, align 8, !tbaa !163, !noalias !172
  %i.hm = fadd float %i.hi, %i.hl                 ; 3 uses
  %i.hn = load float, ptr %i.bt, align 4, !tbaa !164, !noalias !172
  %i.ho = fadd float %i.hj, %i.hn                 ; 3 uses
  %i.hp = load float, ptr %i.bu, align 8, !tbaa !153, !noalias !172
  %i.hq = fadd float %i.hk, %i.hp                 ; 3 uses
  %i.hr = load i8, ptr %i.gj, align 4, !tbaa !175, !range !92, !noundef !93
  %i.hs = trunc nuw i8 %i.hr to i1
  br i1 %i.hs, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ht = fneg float %i.hm                        ; 2 uses
  %i.hu = call float @llvm.atan2.f32(float %i.ht, float %i.hq)
  %i.hv = call float @hypotf(float noundef %i.hq, float noundef %i.ht) #28
  %i.hw = call float @llvm.atan2.f32(float %i.ho, float %i.hv)
  br label %_ZN11OpenImageIO4v3_13pvt17vector_to_latlongERKN9Imath_3_14Vec3IfEEbRfS7_.exit

bb.aq:                                            ; preds = %bb.ao
  %i.hx = call float @llvm.atan2.f32(float %i.ho, float %i.hm)
  %i.hy = call float @hypotf(float noundef %i.hm, float noundef %i.ho) #28
  %i.hz = call float @llvm.atan2.f32(float %i.hq, float %i.hy)
  br label %_ZN11OpenImageIO4v3_13pvt17vector_to_latlongERKN9Imath_3_14Vec3IfEEbRfS7_.exit

_ZN11OpenImageIO4v3_13pvt17vector_to_latlongERKN9Imath_3_14Vec3IfEEbRfS7_.exit: ; preds = %bb.aq, %bb.ap
  %.0383.in.in = phi float [ %i.hu, %bb.ap ], [ %i.hx, %bb.aq ]
  %.pn.in.i = phi float [ %i.hw, %bb.ap ], [ %i.hz, %bb.aq ]
  %.0383.in = fdiv float %.0383.in.in, f0x40C90FDB
  %.0383 = fadd float %.0383.in, 5.000000e-01     ; 2 uses
  %.pn.i = fdiv float %.pn.in.i, f0x40490FDB
  %storemerge.i = fsub float 5.000000e-01, %.pn.i ; 2 uses
  %.inv = fcmp ord float %.0383, 0.000000e+00
  %.1384 = select i1 %.inv, float %.0383, float 0.000000e+00 ; 2 uses
  %.inv393 = fcmp ord float %storemerge.i, 0.000000e+00
  %.0382 = select i1 %.inv393, float %storemerge.i, float 0.000000e+00 ; 2 uses
  %i.ia = load ptr, ptr %i.gk, align 8, !tbaa !176
  %i.ib = load ptr, ptr %i.gf, align 8, !tbaa !177 ; 3 uses
  %i.ic = ptrtoint ptr %i.ia to i64
  %i.id = ptrtoint ptr %i.ib to i64
  %i.ie = sub i64 %i.ic, %i.id
  %i.if = sdiv exact i64 %i.ie, 40
  %i.ig = trunc i64 %i.if to i32                  ; 3 uses
  %i.ih = icmp slt i32 %i.gh, %i.ig
  br i1 %i.ih, label %.lr.ph406, label %.loopexit395.thread

.lr.ph406:                                        ; preds = %_ZN11OpenImageIO4v3_13pvt17vector_to_latlongERKN9Imath_3_14Vec3IfEEbRfS7_.exit
  %i.ii = load ptr, ptr %i.gl, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph406, %bb.as
  %indvars.iv = phi i64 [ %i.gy, %.lr.ph406 ], [ %indvars.iv.next, %bb.as ] ; 4 uses
  %i.ij = getelementptr inbounds nuw [40 x i8], ptr %i.ib, i64 %indvars.iv
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !178 ; 2 uses
  %.not.i297 = icmp eq ptr %i.ik, null
  %i.il = select i1 %.not.i297, ptr %i.ii, ptr %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 40
  %i.in = load i32, ptr %i.im, align 4, !tbaa !188
  %i.io = sitofp i32 %i.in to float
  %i.ip = fmul float %.0233, %i.io
  %i.iq = fpext float %i.ip to double
  %i.ir = fmul double %i.iq, f0x3FD45F306DC9C883  ; 2 uses
  %i.is = fcmp ugt double %i.ir, f0x3FF0000010000000
  br i1 %i.is, label %bb.as, label %.loopexit395

bb.as:                                            ; preds = %bb.ar
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %lftr.wideiv, %i.ig
  br i1 %exitcond.not, label %.loopexit395.thread, label %bb.ar, !llvm.loop !190

.loopexit395:                                     ; preds = %bb.ar
  %i.it = icmp slt i64 %indvars.iv, 0
  br i1 %i.it, label %.loopexit395.thread, label %bb.at

.loopexit395.thread:                              ; preds = %bb.as, %_ZN11OpenImageIO4v3_13pvt17vector_to_latlongERKN9Imath_3_14Vec3IfEEbRfS7_.exit, %.loopexit395
  %i.iu = add nsw i32 %i.ig, -1                   ; 2 uses
  br label %bb.av

bb.at:                                            ; preds = %.loopexit395
  %i.iv = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  %i.iw = fptrunc double %i.ir to float
  %i.ix = call float @llvm.fmuladd.f32(float %i.iw, float 2.000000e+00, float -1.000000e+00) ; 2 uses
  %.inv394 = fcmp oge float %i.ix, 0.000000e+00
  %.0.i282 = select i1 %.inv394, float %i.ix, float 0.000000e+00 ; 2 uses
  %i.iy = fcmp ogt float %.0.i282, 1.000000e+00
  %.1.i283 = select i1 %i.iy, float 1.000000e+00, float %.0.i282
  %i.iz = add nsw i32 %i.iv, -1
  %.not479 = icmp slt i32 %i.gh, %i.iv
  br i1 %.not479, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au, %.loopexit395.thread
  %.sroa.10.1 = phi i32 [ %i.iu, %.loopexit395.thread ], [ %i.gh, %bb.au ], [ %i.iv, %bb.at ]
  %.sroa.0443.1 = phi i32 [ %i.iu, %.loopexit395.thread ], [ %i.gh, %bb.au ], [ %i.iz, %bb.at ] ; 2 uses
  %.3 = phi float [ 0.000000e+00, %.loopexit395.thread ], [ 0.000000e+00, %bb.au ], [ %.1.i283, %bb.at ]
  %i.ja = load i8, ptr %i.ew, align 1, !tbaa !166
  %i.jb = icmp eq i8 %i.ja, 2                     ; 3 uses
  %brmerge478 = or i1 %i.jb, %i.gx
  %.sroa.0443.1.mux = select i1 %i.gx, i32 %.sroa.10.1, i32 %i.gh
  %.sroa.10.2 = select i1 %i.jb, i32 %.sroa.0443.1, i32 %.sroa.0443.1.mux ; 3 uses
  %.sroa.0443.2 = select i1 %brmerge478, i32 %.sroa.0443.1, i32 %i.gh ; 3 uses
  %i.jc = xor i1 %i.jb, true
  %i.jd = and i1 %i.gx, %i.jc
  %.4 = select i1 %i.jd, float %.3, float 0.000000e+00 ; 3 uses
  %i.je = fsub float 1.000000e+00, %.4            ; 2 uses
  %i.jf = fcmp une float %i.je, 0.000000e+00
  br i1 %i.jf, label %bb.aw, label %bb.bg

bb.aw:                                            ; preds = %bb.av
  %i.jg = load i8, ptr %i.et, align 4, !tbaa !165
  %i.jh = icmp eq i8 %i.jg, 3
  br i1 %i.jh, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  %i.ji = icmp eq i32 %.sroa.0443.2, 0
  br i1 %i.ji, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jj = sext i32 %.sroa.0443.2 to i64
  %i.jk = getelementptr inbounds nuw [40 x i8], ptr %i.ib, i64 %i.jj
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !178 ; 2 uses
  %.not.i298 = icmp eq ptr %i.jl, null
  %i.jm = load ptr, ptr %i.gl, align 8
  %i.jn = select i1 %.not.i298, ptr %i.jm, ptr %i.jl
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 40
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !188
  %i.jq = icmp slt i32 %i.jp, %i.gm
  br i1 %i.jq, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.jr = load i64, ptr %i.go, align 8, !tbaa !191
  %i.js = add nsw i64 %i.jr, 1
  store i64 %i.js, ptr %i.go, align 8, !tbaa !191
  br label %bb.bc

bb.ba:                                            ; preds = %bb.ay
  %i.jt = load i64, ptr %i.gn, align 8, !tbaa !192
  %i.ju = add nsw i64 %i.jt, 1
  store i64 %i.ju, ptr %i.gn, align 8, !tbaa !192
  br label %bb.bc

bb.bb:                                            ; preds = %bb.aw
  %i.jv = load i64, ptr %i.ev, align 8, !tbaa !40
  %i.jw = add nsw i64 %i.jv, 1
  store i64 %i.jw, ptr %i.ev, align 8, !tbaa !40
  br label %bb.bc

bb.bc:                                            ; preds = %bb.az, %bb.ba, %bb.bb
  %.sroa.0.3 = phi i64 [ ptrtoint (ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl14sample_bicubicEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_ to i64), %bb.az ], [ ptrtoint (ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl15sample_bilinearEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_ to i64), %bb.ba ], [ %.sroa.0.1416, %bb.bb ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store float %.1384, ptr %i.a, align 16, !tbaa !152
  store <2 x float> zeroinitializer, ptr %i.gp, align 4, !tbaa !152
  store float 0.000000e+00, ptr %i.gq, align 4, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store float %.0382, ptr %i.b, align 16, !tbaa !152
  store <2 x float> zeroinitializer, ptr %i.gr, align 4, !tbaa !152
  store float 0.000000e+00, ptr %i.gs, align 4, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.jx = fmul float %.0231, %i.je
  store float %i.jx, ptr %i.c, align 16, !tbaa !152
  store <2 x float> zeroinitializer, ptr %i.gt, align 4, !tbaa !152
  store float 0.000000e+00, ptr %i.gu, align 4, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  %i.jy = and i64 %.sroa.0.3, 1
  %.not273 = icmp eq i64 %i.jy, 0
  br i1 %.not273, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jz = load ptr, ptr %0, align 8, !tbaa !193
  %i.ka = getelementptr i8, ptr %i.jz, i64 %.sroa.0.3
  %i.kb = getelementptr i8, ptr %i.ka, i64 -1
  %i.kc = load ptr, ptr %i.kb, align 8, !nosanitize !93
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.kd = inttoptr i64 %.sroa.0.3 to ptr
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.ke = phi ptr [ %i.kc, %bb.bd ], [ %i.kd, %bb.be ]
  %i.kf = call noundef zeroext i1 %i.ke(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.sroa.0443.2, ptr noundef nonnull align 8 dereferenceable(400) %i.q, ptr noundef %i.p, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %10, i32 noundef %.1.i, ptr noundef nonnull %i.c, ptr noundef nonnull %19, ptr noundef %., ptr noundef %i.gv)
  %i.kg = icmp ne i8 %.0228417, 0
  %i.kh = select i1 %i.kf, i1 %i.kg, i1 false
  %i.ki = zext i1 %i.kh to i8
  br i1 %i.bm, label %.lr.ph409.preheader, label %.loopexit

.lr.ph409.preheader:                              ; preds = %bb.bf
  br i1 %min.iters.check519, label %.lr.ph409.preheader542, label %vector.body522

vector.body522:                                   ; preds = %.lr.ph409.preheader, %vector.body522
  %index523 = phi i64 [ %index.next528, %vector.body522 ], [ 0, %.lr.ph409.preheader ] ; 3 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %index523 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %wide.load524 = load <4 x float>, ptr %i.kj, align 16, !tbaa !152
  %wide.load525 = load <4 x float>, ptr %i.kk, align 16, !tbaa !152
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %index523 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16 ; 2 uses
  %wide.load526 = load <4 x float>, ptr %i.kl, align 4, !tbaa !152
  %wide.load527 = load <4 x float>, ptr %i.km, align 4, !tbaa !152
  %i.kn = fadd <4 x float> %wide.load524, %wide.load526
  %i.ko = fadd <4 x float> %wide.load525, %wide.load527
  store <4 x float> %i.kn, ptr %i.kl, align 4, !tbaa !152
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail15write_codepointILm8EcZNS1_5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SA_NS0_17basic_string_viewIS7_EERKNS0_12format_specsEE23bounded_output_iteratorEET1_SH_cj:bb.a
  %i.as = load i64, ptr %i.ae, align 8, !tbaa !254
  %i.at = icmp ugt i64 %i.ar, %i.as
  br i1 %i.at, label %bb.i, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.1

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %i.af, align 8, !tbaa !251
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ar), !inline_history !840
  %.pre.i.i.i.i.1 = load i64, ptr %i.ad, align 8, !tbaa !258 ; 2 uses
  %.pre2.i.i.i.i.1 = add i64 %.pre.i.i.i.i.1, 1
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.1

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.1: ; preds = %bb.h, %bb.i
  %.pre-phi.i.i.i.i.1 = phi i64 [ %i.ar, %bb.h ], [ %.pre2.i.i.i.i.1, %bb.i ]
  %i.av = phi i64 [ %i.aq, %bb.h ], [ %.pre.i.i.i.i.1, %bb.i ]
  %i.aw = load ptr, ptr %0, align 8, !tbaa !253
  store i64 %.pre-phi.i.i.i.i.1, ptr %i.ad, align 8, !tbaa !258
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av
  store i8 %i.ap, ptr %i.ax, align 1, !tbaa !241
  %.07.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ay = load i8, ptr %.07.i.ptr.2, align 2, !tbaa !241
  %.not.i.i11.2 = icmp eq i64 %.sroa.4.1, 2
  br i1 %.not.i.i11.2, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7, label %bb.j

bb.j:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.1
  %i.az = load i64, ptr %i.ad, align 8, !tbaa !258 ; 2 uses
  %i.ba = add i64 %i.az, 1                        ; 3 uses
  %i.bb = load i64, ptr %i.ae, align 8, !tbaa !254
  %i.bc = icmp ugt i64 %i.ba, %i.bb
  br i1 %i.bc, label %bb.k, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.2

bb.k:                                             ; preds = %bb.j
  %i.bd = load ptr, ptr %i.af, align 8, !tbaa !251
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ba), !inline_history !840
  %.pre.i.i.i.i.2 = load i64, ptr %i.ad, align 8, !tbaa !258 ; 2 uses
  %.pre2.i.i.i.i.2 = add i64 %.pre.i.i.i.i.2, 1
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.2

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.2: ; preds = %bb.j, %bb.k
  %.pre-phi.i.i.i.i.2 = phi i64 [ %i.ba, %bb.j ], [ %.pre2.i.i.i.i.2, %bb.k ]
  %i.be = phi i64 [ %i.az, %bb.j ], [ %.pre.i.i.i.i.2, %bb.k ]
  %i.bf = load ptr, ptr %0, align 8, !tbaa !253
  store i64 %.pre-phi.i.i.i.i.2, ptr %i.ad, align 8, !tbaa !258
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.be
  store i8 %i.ay, ptr %i.bg, align 1, !tbaa !241
  %.07.i.ptr.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.bh = load i8, ptr %.07.i.ptr.3, align 1, !tbaa !241
  %.not.i.i11.3 = icmp eq i64 %.sroa.4.1, 3
  br i1 %.not.i.i11.3, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7, label %bb.l

bb.l:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.2
  %i.bi = load i64, ptr %i.ad, align 8, !tbaa !258 ; 2 uses
  %i.bj = add i64 %i.bi, 1                        ; 3 uses
  %i.bk = load i64, ptr %i.ae, align 8, !tbaa !254
  %i.bl = icmp ugt i64 %i.bj, %i.bk
  br i1 %i.bl, label %bb.m, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.3

bb.m:                                             ; preds = %bb.l
  %i.bm = load ptr, ptr %i.af, align 8, !tbaa !251
  tail call void %i.bm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bj), !inline_history !840
  %.pre.i.i.i.i.3 = load i64, ptr %i.ad, align 8, !tbaa !258 ; 2 uses
  %.pre2.i.i.i.i.3 = add i64 %.pre.i.i.i.i.3, 1
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.3

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.3: ; preds = %bb.l, %bb.m
  %.pre-phi.i.i.i.i.3 = phi i64 [ %i.bj, %bb.l ], [ %.pre2.i.i.i.i.3, %bb.m ]
  %i.bn = phi i64 [ %i.bi, %bb.l ], [ %.pre.i.i.i.i.3, %bb.m ]
  %i.bo = load ptr, ptr %0, align 8, !tbaa !253
  store i64 %.pre-phi.i.i.i.i.3, ptr %i.ad, align 8, !tbaa !258
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bn
  store i8 %i.bh, ptr %i.bp, align 1, !tbaa !241
  %.07.i.ptr.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bq = load i8, ptr %.07.i.ptr.4, align 4, !tbaa !241
  %.not.i.i11.4 = icmp eq i64 %.sroa.4.1, 4
  br i1 %.not.i.i11.4, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7, label %bb.n

bb.n:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.3
  %i.br = load i64, ptr %i.ad, align 8, !tbaa !258 ; 2 uses
  %i.bs = add i64 %i.br, 1                        ; 3 uses
  %i.bt = load i64, ptr %i.ae, align 8, !tbaa !254
  %i.bu = icmp ugt i64 %i.bs, %i.bt
  br i1 %i.bu, label %bb.o, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4

bb.o:                                             ; preds = %bb.n
  %i.bv = load ptr, ptr %i.af, align 8, !tbaa !251
  tail call void %i.bv(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bs), !inline_history !840
  %.pre.i.i.i.i.4 = load i64, ptr %i.ad, align 8, !tbaa !258 ; 2 uses
  %.pre2.i.i.i.i.4 = add i64 %.pre.i.i.i.i.4, 1
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4: ; preds = %bb.n, %bb.o
  %.pre-phi.i.i.i.i.4 = phi i64 [ %i.bs, %bb.n ], [ %.pre2.i.i.i.i.4, %bb.o ]
  %i.bw = phi i64 [ %i.br, %bb.n ], [ %.pre.i.i.i.i.4, %bb.o ]
  %i.bx = load ptr, ptr %0, align 8, !tbaa !253
  store i64 %.pre-phi.i.i.i.i.4, ptr %i.ad, align 8, !tbaa !258
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bw
  store i8 %i.bq, ptr %i.by, align 1, !tbaa !241
  %.07.i.ptr.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.bz = load i8, ptr %.07.i.ptr.5, align 1, !tbaa !241
  %.not.i.i11.5 = icmp eq i64 %.sroa.4.1, 5
  br i1 %.not.i.i11.5, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7, label %bb.p

bb.p:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4
  %i.ca = load i64, ptr %i.ad, align 8, !tbaa !258 ; 2 uses
  %i.cb = add i64 %i.ca, 1                        ; 3 uses
  %i.cc = load i64, ptr %i.ae, align 8, !tbaa !254
  %i.cd = icmp ugt i64 %i.cb, %i.cc
  br i1 %i.cd, label %bb.q, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5

bb.q:                                             ; preds = %bb.p
  %i.ce = load ptr, ptr %i.af, align 8, !tbaa !251
  tail call void %i.ce(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cb), !inline_history !840
  %.pre.i.i.i.i.5 = load i64, ptr %i.ad, align 8, !tbaa !258 ; 2 uses
  %.pre2.i.i.i.i.5 = add i64 %.pre.i.i.i.i.5, 1
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5: ; preds = %bb.p, %bb.q
  %.pre-phi.i.i.i.i.5 = phi i64 [ %i.cb, %bb.p ], [ %.pre2.i.i.i.i.5, %bb.q ]
  %i.cf = phi i64 [ %i.ca, %bb.p ], [ %.pre.i.i.i.i.5, %bb.q ]
  %i.cg = load ptr, ptr %0, align 8, !tbaa !253
  store i64 %.pre-phi.i.i.i.i.5, ptr %i.ad, align 8, !tbaa !258
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cf
  store i8 %i.bz, ptr %i.ch, align 1, !tbaa !241
  %.07.i.ptr.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ci = load i8, ptr %.07.i.ptr.6, align 2, !tbaa !241
  %.not.i.i11.6 = icmp eq i64 %.sroa.4.1, 6
  br i1 %.not.i.i11.6, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7, label %bb.r

bb.r:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5
  %i.cj = load i64, ptr %i.ad, align 8, !tbaa !258 ; 2 uses
  %i.ck = add i64 %i.cj, 1                        ; 3 uses
  %i.cl = load i64, ptr %i.ae, align 8, !tbaa !254
  %i.cm = icmp ugt i64 %i.ck, %i.cl
  br i1 %i.cm, label %bb.s, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6

bb.s:                                             ; preds = %bb.r
  %i.cn = load ptr, ptr %i.af, align 8, !tbaa !251
  tail call void %i.cn(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ck), !inline_history !840
  %.pre.i.i.i.i.6 = load i64, ptr %i.ad, align 8, !tbaa !258 ; 2 uses
  %.pre2.i.i.i.i.6 = add i64 %.pre.i.i.i.i.6, 1
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6: ; preds = %bb.r, %bb.s
  %.pre-phi.i.i.i.i.6 = phi i64 [ %i.ck, %bb.r ], [ %.pre2.i.i.i.i.6, %bb.s ]
  %i.co = phi i64 [ %i.cj, %bb.r ], [ %.pre.i.i.i.i.6, %bb.s ]
  %i.cp = load ptr, ptr %0, align 8, !tbaa !253
  store i64 %.pre-phi.i.i.i.i.6, ptr %i.ad, align 8, !tbaa !258
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.co
  store i8 %i.ci, ptr %i.cq, align 1, !tbaa !241
  %.07.i.ptr.7 = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.cr = load i8, ptr %.07.i.ptr.7, align 1, !tbaa !241
  %.not.i.i11.7 = icmp eq i64 %.sroa.4.1, 7
  br i1 %.not.i.i11.7, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7, label %bb.t

bb.t:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6
  %i.cs = load i64, ptr %i.ad, align 8, !tbaa !258 ; 2 uses
  %i.ct = add i64 %i.cs, 1                        ; 3 uses
  %i.cu = load i64, ptr %i.ae, align 8, !tbaa !254
  %i.cv = icmp ugt i64 %i.ct, %i.cu
  br i1 %i.cv, label %bb.u, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7

bb.u:                                             ; preds = %bb.t
  %i.cw = load ptr, ptr %i.af, align 8, !tbaa !251
  tail call void %i.cw(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ct), !inline_history !840
  %.pre.i.i.i.i.7 = load i64, ptr %i.ad, align 8, !tbaa !258 ; 2 uses
  %.pre2.i.i.i.i.7 = add i64 %.pre.i.i.i.i.7, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7:    ; preds = %bb.u, %bb.t
  %.pre-phi.i.i.i.i.7 = phi i64 [ %i.ct, %bb.t ], [ %.pre2.i.i.i.i.7, %bb.u ]
  %i.cx = phi i64 [ %i.cs, %bb.t ], [ %.pre.i.i.i.i.7, %bb.u ]
  %i.cy = load ptr, ptr %0, align 8, !tbaa !253
  store i64 %.pre-phi.i.i.i.i.7, ptr %i.ad, align 8, !tbaa !258
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cx
  store i8 %i.cr, ptr %i.cz, align 1, !tbaa !241
  %i.da = add i64 %.sroa.4.1, -8
  br label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.7: ; preds = %_ZN3fmt3v126detail13format_base2eIcjEEPT_iS4_T0_ib.exit, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.1, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.2, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.3, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6
  %.sroa.3.1.i.7 = phi i64 [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.6 ], [ %i.da, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i.7 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.5 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.4 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.3 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.2 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i.1 ], [ 0, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEN23bounded_output_iteratoraSEc.exit.i ], [ 0, %_ZN3fmt3v126detail13format_base2eIcjEEPT_iS4_T0_ib.exit ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %0, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.sroa.3.1.i.7, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @hypotf(float noundef, float noundef) local_unnamed_addr #24

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef float @_ZNK9Imath_3_14Vec3IfE10lengthTinyEv(ptr noundef nonnull align 4 dereferenceable(12) %0) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !163  ; 3 uses
  %i.b = fcmp ult float %i.a, 0.000000e+00
  %i.c = fneg float %i.a
  %i.d = select i1 %i.b, float %i.c, float %i.a   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load <2 x float>, ptr %i.e, align 4, !tbaa !152 ; 3 uses
  %i.g = fcmp ult <2 x float> %i.f, zeroinitializer
  %i.h = fneg <2 x float> %i.f
  %i.i = select <2 x i1> %i.g, <2 x float> %i.h, <2 x float> %i.f ; 3 uses
  %i.j = extractelement <2 x float> %i.i, i64 0   ; 2 uses
  %i.k = fcmp olt float %i.d, %i.j
  %.0 = select i1 %i.k, float %i.j, float %i.d    ; 2 uses
  %i.l = extractelement <2 x float> %i.i, i64 1   ; 2 uses
  %i.m = fcmp olt float %.0, %i.l
  %.1 = select i1 %i.m, float %i.l, float %.0     ; 4 uses
  %i.n = fcmp oeq float %.1, 0.000000e+00
  br i1 %i.n, label %bb.c, label %bb.b, !prof !155

bb.b:                                             ; preds = %bb.a
  %i.o = fdiv float %i.d, %.1                     ; 2 uses
  %i.p = insertelement <2 x float> poison, float %.1, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = fdiv <2 x float> %i.i, %i.q              ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.r, %i.r
  %i.s = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.t = tail call float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.s)
  %i.u = extractelement <2 x float> %i.r, i64 1   ; 2 uses
  %i.v = tail call float @llvm.fmuladd.f32(float %i.u, float %i.u, float %i.t)
  %i.w = tail call noundef float @llvm.sqrt.f32(float %i.v)
  %i.x = fmul float %.1, %i.w
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.023 = phi float [ %i.x, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.023
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.acos.f32(float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nounwind }
attributes #28 = { nounwind willreturn memory(none) }
attributes #29 = { builtin nounwind }
attributes #30 = { noreturn }
attributes #31 = { nounwind allocsize(0) }
attributes #32 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 _ZTSN11OpenImageIO4v3_117TextureSystemImplE", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !17, i64 16}
!11 = !{!"_ZTSN11OpenImageIO4v3_117TextureSystemImplE", !12, i64 0, !17, i64 16, !18, i64 24, !19, i64 32, !19, i64 96, !20, i64 160, !20, i64 161, !20, i64 162, !4, i64 164, !4, i64 168, !21, i64 176, !4, i64 184}
!12 = !{!"_ZTSSt10shared_ptrIN11OpenImageIO4v3_110ImageCacheEE", !13, i64 0}
!13 = !{!"_ZTSSt12__shared_ptrIN11OpenImageIO4v3_110ImageCacheELN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0, !15, i64 8}
!14 = !{!"p1 _ZTSN11OpenImageIO4v3_110ImageCacheE", !9, i64 0}
!15 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !16, i64 0}
!16 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !9, i64 0}
!17 = !{!"p1 _ZTSN11OpenImageIO4v3_114ImageCacheImplE", !9, i64 0}
!18 = !{!"long", !5, i64 0}
!19 = !{!"_ZTSN9Imath_3_18Matrix44IfEE", !5, i64 0}
!20 = !{!"bool", !5, i64 0}
!21 = !{!"_ZTSSt10unique_ptrIN11OpenImageIO4v3_18Filter1DESt14default_deleteIS2_EE", !22, i64 0}
!22 = !{!"_ZTSSt15__uniq_ptr_dataIN11OpenImageIO4v3_18Filter1DESt14default_deleteIS2_ELb1ELb1EE", !23, i64 0}
!23 = !{!"_ZTSSt15__uniq_ptr_implIN11OpenImageIO4v3_18Filter1DESt14default_deleteIS2_EE", !24, i64 0}
!24 = !{!"_ZTSSt5tupleIJPN11OpenImageIO4v3_18Filter1DESt14default_deleteIS2_EEE", !25, i64 0}
!25 = !{!"_ZTSSt11_Tuple_implILm0EJPN11OpenImageIO4v3_18Filter1DESt14default_deleteIS2_EEE", !26, i64 0}
!26 = !{!"_ZTSSt10_Head_baseILm0EPN11OpenImageIO4v3_18Filter1DELb0EE", !27, i64 0}
!27 = !{!"p1 _ZTSN11OpenImageIO4v3_18Filter1DE", !9, i64 0}
!28 = !{!29, !4, i64 0}
!29 = !{!"_ZTSN11OpenImageIO4v3_113TextureOpt_v2E", !4, i64 0, !4, i64 4, !30, i64 8, !32, i64 16, !32, i64 17, !32, i64 18, !33, i64 19, !34, i64 20, !20, i64 21, !35, i64 22, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !37, i64 56, !36, i64 64, !4, i64 68, !4, i64 72}
!30 = !{!"_ZTSN11OpenImageIO4v3_17ustringE", !31, i64 0}
!31 = !{!"p1 omnipotent char", !9, i64 0}
!32 = !{!"_ZTSN11OpenImageIO4v3_13Tex4WrapE", !5, i64 0}
!33 = !{!"_ZTSN11OpenImageIO4v3_13Tex7MipModeE", !5, i64 0}
!34 = !{!"_ZTSN11OpenImageIO4v3_13Tex10InterpModeE", !5, i64 0}
!35 = !{!"short", !5, i64 0}
!36 = !{!"float", !5, i64 0}
!37 = !{!"p1 float", !9, i64 0}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!41, !41, i64 0}
!41 = !{!"long long", !5, i64 0}
!42 = !{!43, !20, i64 25}
!43 = !{!"_ZTSN11OpenImageIO4v3_114ImageCacheFileE", !44, i64 0, !30, i64 8, !30, i64 16, !20, i64 24, !20, i64 25, !20, i64 26, !47, i64 32, !49, i64 64, !52, i64 80, !57, i64 104, !62, i64 128, !67, i64 152, !32, i64 156, !32, i64 157, !32, i64 158, !68, i64 160, !20, i64 164, !20, i64 165, !35, i64 166, !35, i64 168, !30, i64 176, !18, i64 184, !18, i64 192, !69, i64 200, !69, i64 208, !18, i64 216, !71, i64 224, !71, i64 232, !20, i64 240, !20, i64 241, !4, i64 244, !72, i64 248, !17, i64 272, !77, i64 280, !18, i64 320, !30, i64 328, !79, i64 336, !18, i64 344, !18, i64 352, !9, i64 360, !80, i64 368, !87, i64 376}
!44 = !{!"_ZTSN11OpenImageIO4v3_16RefCntE", !45, i64 0}
!45 = !{!"_ZTSSt6atomicIiE", !46, i64 0}
!46 = !{!"_ZTSSt13__atomic_baseIiE", !4, i64 0}
!47 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !48, i64 0, !18, i64 8, !5, i64 16}
!48 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !31, i64 0}
!49 = !{!"_ZTSSt10shared_ptrIN11OpenImageIO4v3_110ImageInputEE", !50, i64 0}
!50 = !{!"_ZTSSt12__shared_ptrIN11OpenImageIO4v3_110ImageInputELN9__gnu_cxx12_Lock_policyE2EE", !51, i64 0, !15, i64 8}
!51 = !{!"p1 _ZTSN11OpenImageIO4v3_110ImageInputE", !9, i64 0}
!52 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoESaIS3_EE", !53, i64 0}
!53 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoESaIS3_EE", !54, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoESaIS3_EE12_Vector_implE", !55, i64 0}
!55 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoESaIS3_EE17_Vector_impl_dataE", !56, i64 0, !56, i64 8, !56, i64 16}
!56 = !{!"p1 _ZTSN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoE", !9, i64 0}
!57 = !{!"_ZTSSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE", !58, i64 0}
!58 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE", !59, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE12_Vector_implE", !60, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!61 = !{!"p1 _ZTSSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EE", !9, i64 0}
!62 = !{!"_ZTSSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EE", !63, i64 0}
!63 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EE", !64, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EE12_Vector_implE", !65, i64 0}
!65 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EE17_Vector_impl_dataE", !66, i64 0, !66, i64 8, !66, i64 16}
!66 = !{!"p1 _ZTSSt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS3_EE", !9, i64 0}
!67 = !{!"_ZTSN11OpenImageIO4v3_13pvt9TexFormatE", !5, i64 0}
!68 = !{!"_ZTSN11OpenImageIO4v3_13pvt9EnvLayoutE", !5, i64 0}
!69 = !{!"_ZTSSt6atomicIxE", !70, i64 0}
!70 = !{!"_ZTSSt13__atomic_baseIxE", !41, i64 0}
!71 = !{!"double", !5, i64 0}
!72 = !{!"_ZTSSt6vectorImSaImEE", !73, i64 0}
!73 = !{!"_ZTSSt12_Vector_baseImSaImEE", !74, i64 0}
!74 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !75, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !76, i64 0, !76, i64 8, !76, i64 16}
!76 = !{!"p1 long", !9, i64 0}
!77 = !{!"_ZTSSt21recursive_timed_mutex", !78, i64 0}
!78 = !{!"_ZTSSt22__recursive_mutex_base", !5, i64 0}
!79 = !{!"p1 _ZTSN11OpenImageIO4v3_114ImageCacheFileE", !9, i64 0}
!80 = !{!"_ZTSSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EE", !81, i64 0}
!81 = !{!"_ZTSSt15__uniq_ptr_dataIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_ELb1ELb1EE", !82, i64 0}
!82 = !{!"_ZTSSt15__uniq_ptr_implIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EE", !83, i64 0}
!83 = !{!"_ZTSSt5tupleIJPN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EEE", !84, i64 0}
!84 = !{!"_ZTSSt11_Tuple_implILm0EJPN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EEE", !85, i64 0}
!85 = !{!"_ZTSSt10_Head_baseILm0EPN11OpenImageIO4v3_19ImageSpecELb0EE", !86, i64 0}
!86 = !{!"p1 _ZTSN11OpenImageIO4v3_19ImageSpecE", !9, i64 0}
!87 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE", !88, i64 0}
!88 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE", !89, i64 0}
!89 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE12_Vector_implE", !90, i64 0}
!90 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_13pvt8UdimInfoESaIS3_EE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!91 = !{!"p1 _ZTSN11OpenImageIO4v3_13pvt8UdimInfoE", !9, i64 0}
!92 = !{i8 0, i8 2}
!93 = !{}
!94 = !{!30, !31, i64 0}
!95 = !{!96, !18, i64 40}
!96 = !{!"_ZTSN11OpenImageIO4v3_17ustring8TableRepE", !18, i64 0, !47, i64 8, !18, i64 40, !18, i64 48, !4, i64 56}
!97 = !{!29, !4, i64 4}
!98 = !{!31, !31, i64 0}
!99 = !{!55, !56, i64 8}
!100 = !{!55, !56, i64 0}
!101 = !{!102, !86, i64 120}
!102 = !{!"_ZTSN11OpenImageIO4v3_114ImageCacheFile12SubimageInfoE", !103, i64 0, !108, i64 24, !4, i64 32, !4, i64 36, !20, i64 40, !20, i64 41, !20, i64 42, !20, i64 43, !20, i64 44, !20, i64 45, !20, i64 46, !109, i64 47, !112, i64 48, !116, i64 72, !36, i64 80, !36, i64 84, !36, i64 88, !36, i64 92, !4, i64 96, !4, i64 100, !123, i64 104, !30, i64 112, !86, i64 120}
!103 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoESaIS3_EE", !104, i64 0}
!104 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoESaIS3_EE", !105, i64 0}
!105 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoESaIS3_EE12_Vector_implE", !106, i64 0}
!106 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoESaIS3_EE17_Vector_impl_dataE", !107, i64 0, !107, i64 8, !107, i64 16}
!107 = !{!"p1 _ZTSN11OpenImageIO4v3_114ImageCacheFile9LevelInfoE", !9, i64 0}
!108 = !{!"_ZTSN11OpenImageIO4v3_18TypeDescE", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !4, i64 4}
!109 = !{!"_ZTSN11OpenImageIO4v3_110spin_mutexE", !110, i64 0}
!110 = !{!"_ZTSSt11atomic_flag", !111, i64 0}
!111 = !{!"_ZTSSt18__atomic_flag_base", !20, i64 0}
!112 = !{!"_ZTSSt6vectorIfSaIfEE", !113, i64 0}
!113 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !114, i64 0}
!114 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !115, i64 0}
!115 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!116 = !{!"_ZTSSt10unique_ptrIN9Imath_3_18Matrix44IfEESt14default_deleteIS2_EE", !117, i64 0}
!117 = !{!"_ZTSSt15__uniq_ptr_dataIN9Imath_3_18Matrix44IfEESt14default_deleteIS2_ELb1ELb1EE", !118, i64 0}
!118 = !{!"_ZTSSt15__uniq_ptr_implIN9Imath_3_18Matrix44IfEESt14default_deleteIS2_EE", !119, i64 0}
!119 = !{!"_ZTSSt5tupleIJPN9Imath_3_18Matrix44IfEESt14default_deleteIS2_EEE", !120, i64 0}
!120 = !{!"_ZTSSt11_Tuple_implILm0EJPN9Imath_3_18Matrix44IfEESt14default_deleteIS2_EEE", !121, i64 0}
!121 = !{!"_ZTSSt10_Head_baseILm0EPN9Imath_3_18Matrix44IfEELb0EE", !122, i64 0}
!122 = !{!"p1 _ZTSN9Imath_3_18Matrix44IfEE", !9, i64 0}
!123 = !{!"_ZTSSt10unique_ptrIA_iSt14default_deleteIS0_EE", !124, i64 0}
!124 = !{!"_ZTSSt15__uniq_ptr_dataIiSt14default_deleteIA_iELb1ELb1EE", !125, i64 0}
!125 = !{!"_ZTSSt15__uniq_ptr_implIiSt14default_deleteIA_iEE", !126, i64 0}
!126 = !{!"_ZTSSt5tupleIJPiSt14default_deleteIA_iEEE", !127, i64 0}
!127 = !{!"_ZTSSt11_Tuple_implILm0EJPiSt14default_deleteIA_iEEE", !128, i64 0}
!128 = !{!"_ZTSSt10_Head_baseILm0EPiLb0EE", !129, i64 0}
!129 = !{!"p1 int", !9, i64 0}
!130 = !{!43, !20, i64 165}
!131 = !{!29, !32, i64 16}
!132 = !{!29, !32, i64 17}
!133 = !{!29, !4, i64 72}
!134 = !{!135, !4, i64 60}
!135 = !{!"_ZTSN11OpenImageIO4v3_19ImageSpecE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !108, i64 64, !136, i64 72, !141, i64 96, !4, i64 120, !4, i64 124, !20, i64 128, !146, i64 136}
!136 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !137, i64 0}
!137 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !138, i64 0}
!138 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_Vector_implE", !139, i64 0}
!139 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE17_Vector_impl_dataE", !140, i64 0, !140, i64 8, !140, i64 16}
!140 = !{!"p1 _ZTSN11OpenImageIO4v3_18TypeDescE", !9, i64 0}
!141 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !142, i64 0}
!142 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !143, i64 0}
!143 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !144, i64 0}
!144 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !145, i64 0, !145, i64 8, !145, i64 16}
!145 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0}
!146 = !{!"_ZTSN11OpenImageIO4v3_114ParamValueListE", !147, i64 0}
!147 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !148, i64 0}
!148 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !149, i64 0}
!149 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE12_Vector_implE", !150, i64 0}
!150 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE17_Vector_impl_dataE", !151, i64 0, !151, i64 8, !151, i64 16}
!151 = !{!"p1 _ZTSN11OpenImageIO4v3_110ParamValueE", !9, i64 0}
!152 = !{!36, !36, i64 0}
!153 = !{!154, !36, i64 8}
!154 = !{!"_ZTSN9Imath_3_14Vec3IfEE", !36, i64 0, !36, i64 4, !36, i64 8}
!155 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!156 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!157 = !{!158}
!158 = distinct !{!158, !159, !"_ZNK9Imath_3_14Vec3IfEplERKS1_: argument 0"}
!159 = distinct !{!159, !"_ZNK9Imath_3_14Vec3IfEplERKS1_"}
!160 = !{!161}
!161 = distinct !{!161, !162, !"_ZNK9Imath_3_14Vec3IfEplERKS1_: argument 0"}
!162 = distinct !{!162, !"_ZNK9Imath_3_14Vec3IfEplERKS1_"}
!163 = !{!154, !36, i64 0}
!164 = !{!154, !36, i64 4}
!165 = !{!29, !34, i64 20}
!166 = !{!29, !33, i64 19}
!167 = !{!29, !35, i64 22}
!168 = !{!29, !20, i64 21}
!169 = !{!170, !36, i64 192}
!170 = !{!"_ZTSN11OpenImageIO4v3_120ImageCacheStatisticsE", !41, i64 0, !41, i64 8, !4, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !4, i64 48, !71, i64 56, !71, i64 64, !71, i64 72, !71, i64 80, !71, i64 88, !71, i64 96, !41, i64 104, !41, i64 112, !41, i64 120, !41, i64 128, !41, i64 136, !41, i64 144, !41, i64 152, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !36, i64 192, !41, i64 200, !41, i64 208, !41, i64 216, !4, i64 224, !4, i64 228}
!171 = !{!102, !4, i64 100}
!172 = !{!173}
!173 = distinct !{!173, !174, !"_ZNK9Imath_3_14Vec3IfEplERKS1_: argument 0"}
!174 = distinct !{!174, !"_ZNK9Imath_3_14Vec3IfEplERKS1_"}
!175 = !{!43, !20, i64 164}
!176 = !{!106, !107, i64 8}
!177 = !{!106, !107, i64 0}
!178 = !{!179, !180, i64 0}
!179 = !{!"_ZTSN11OpenImageIO4v3_114ImageCacheFile9LevelInfoE", !180, i64 0, !181, i64 8, !187, i64 16, !4, i64 24, !4, i64 28, !4, i64 32, !35, i64 36, !20, i64 38, !20, i64 38, !20, i64 38}
!180 = !{!"p1 _ZTSN11OpenImageIO4v3_114ImageCacheFile9ImageDimsE", !9, i64 0}
!181 = !{!"_ZTSSt10unique_ptrIA_fSt14default_deleteIS0_EE", !182, i64 0}
!182 = !{!"_ZTSSt15__uniq_ptr_dataIfSt14default_deleteIA_fELb1ELb1EE", !183, i64 0}
!183 = !{!"_ZTSSt15__uniq_ptr_implIfSt14default_deleteIA_fEE", !184, i64 0}
!184 = !{!"_ZTSSt5tupleIJPfSt14default_deleteIA_fEEE", !185, i64 0}
!185 = !{!"_ZTSSt11_Tuple_implILm0EJPfSt14default_deleteIA_fEEE", !186, i64 0}
!186 = !{!"_ZTSSt10_Head_baseILm0EPfLb0EE", !37, i64 0}
!187 = !{!"p1 _ZTSSt6atomicIxE", !9, i64 0}
!188 = !{!189, !4, i64 40}
!189 = !{!"_ZTSN11OpenImageIO4v3_114ImageCacheFile9ImageDimsE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60}
!190 = distinct !{!190, !39}
!191 = !{!170, !41, i64 216}
!192 = !{!170, !41, i64 208}
!193 = !{!194, !194, i64 0}
!194 = !{!"vtable pointer", !6, i64 0}
!195 = distinct !{!195, !39, !196, !197}
!196 = !{!"llvm.loop.isvectorized", i32 1}
!197 = !{!"llvm.loop.unroll.runtime.disable"}
!198 = !{!199}
!199 = distinct !{!199, !200}
!200 = distinct !{!200, !"LVerDomain"}
!201 = !{!202}
!202 = distinct !{!202, !200}
!203 = distinct !{!203, !39, !196, !197}
!204 = distinct !{!204, !39, !197, !196}
!205 = distinct !{!205, !39, !196}
!206 = distinct !{!206, !39, !196, !197}
!207 = distinct !{!207, !39, !197, !196}
!208 = !{!209}
!209 = distinct !{!209, !210}
!210 = distinct !{!210, !"LVerDomain"}
!211 = !{!212}
!212 = distinct !{!212, !210}
!213 = distinct !{!213, !39, !196, !197}
!214 = distinct !{!214, !39, !196}
!215 = distinct !{!215, !39}
!216 = !{!11, !20, i64 161}
!217 = !{!29, !4, i64 68}
!218 = !{!219, !4, i64 464}
!219 = !{!"_ZTSN11OpenImageIO4v3_118TextureOptBatch_v1E", !5, i64 0, !5, i64 64, !5, i64 128, !5, i64 192, !5, i64 256, !5, i64 320, !5, i64 384, !4, i64 448, !4, i64 452, !30, i64 456, !4, i64 464, !4, i64 468, !4, i64 472, !4, i64 476, !4, i64 480, !4, i64 484, !4, i64 488, !36, i64 492, !37, i64 496, !4, i64 504, !4, i64 508}
!220 = !{!219, !4, i64 468}
!221 = !{!219, !4, i64 476}
!222 = !{!219, !4, i64 480}
!223 = !{!219, !4, i64 484}
!224 = !{!219, !4, i64 488}
!225 = !{!219, !36, i64 492}
!226 = !{!29, !36, i64 48}
!227 = !{!219, !37, i64 496}
!228 = !{!29, !37, i64 56}
!229 = !{!29, !36, i64 24}
!230 = !{!29, !36, i64 28}
!231 = !{!29, !36, i64 36}
!232 = !{!29, !36, i64 40}
!233 = !{!29, !36, i64 64}
!234 = distinct !{!234, !39}
!235 = distinct !{!235, !236}
!236 = !{!"llvm.loop.unroll.disable"}
!237 = distinct !{!237, !39}
!238 = distinct !{!238, !39}
!239 = !{!47, !18, i64 8}
!240 = !{!47, !31, i64 0}
!241 = !{!5, !5, i64 0}
!242 = !{!243}
!243 = distinct !{!243, !244, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_7ustringES8_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!244 = distinct !{!244, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_7ustringES8_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!245 = !{!246, !31, i64 0}
!246 = !{!"_ZTSN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEE", !31, i64 0, !18, i64 8}
!247 = !{!246, !18, i64 8}
!248 = !{!249}
!249 = distinct !{!249, !250, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESB_RKT_DpOT0_: argument 0"}
!250 = distinct !{!250, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESB_RKT_DpOT0_"}
!251 = !{!252, !9, i64 24}
!252 = !{!"_ZTSN3fmt3v126detail6bufferIcEE", !31, i64 0, !18, i64 8, !18, i64 16, !9, i64 24}
!253 = !{!252, !31, i64 0}
!254 = !{!252, !18, i64 16}
!255 = !{!256}
!256 = distinct !{!256, !257, !"_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!257 = distinct !{!257, !"_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!258 = !{!252, !18, i64 8}
!259 = !{!48, !31, i64 0}
!260 = !{!18, !18, i64 0}
!261 = !{!262, !262, i64 0}
!262 = !{!"_ZTSN3fmt3v126detail4typeE", !5, i64 0}
!263 = !{!264, !264, i64 0}
!264 = !{!"p1 _ZTSN3fmt3v126detail6bufferIcEE", !9, i64 0}
!265 = distinct !{null, null}
!266 = !{!267, !4, i64 16}
!267 = !{!"_ZTSN3fmt3v1213parse_contextIcEE", !268, i64 0, !4, i64 16}
!268 = !{!"_ZTSN3fmt3v1217basic_string_viewIcEE", !31, i64 0, !18, i64 8}
!269 = !{!9, !9, i64 0}
!270 = !{!271, !41, i64 0}
!271 = !{!"_ZTSN3fmt3v1217basic_format_argsINS0_7contextEEE", !41, i64 0, !5, i64 8}
!272 = !{!273, !275}
!273 = distinct !{!273, !274, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!274 = distinct !{!274, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!275 = distinct !{!275, !276, !"_ZNK3fmt3v127context3argEi: argument 0"}
!276 = distinct !{!276, !"_ZNK3fmt3v127context3argEi"}
!277 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIjTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_, null, null, null}
!278 = distinct !{!278, !39}
!279 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIyTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_, null, null, null}
!280 = distinct !{!280, !39}
!281 = !{!282, !4, i64 0}
!282 = !{!"_ZTSN3fmt3v1211basic_specsE", !4, i64 0, !5, i64 4}
!283 = !{!284, !4, i64 12}
!284 = !{!"_ZTSN3fmt3v1212format_specsE", !282, i64 0, !4, i64 8, !4, i64 12}
!285 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_, null, null, null}
!286 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_, null, null, null, null}
!287 = distinct !{!287, !39}
!288 = !{!289, !18, i64 0}
!289 = !{!"_ZTSZN3fmt3v126detail9write_ptrIcNS0_14basic_appenderIcEEmEET0_S5_T1_PKNS0_12format_specsEEUlS4_E_", !18, i64 0, !4, i64 8}
!290 = !{!289, !4, i64 8}
!291 = !{!292, !292, i64 0}
!292 = !{!"p1 _ZTSN3fmt3v126detail14format_handlerIcEE", !9, i64 0}
!293 = !{!294, !4, i64 8}
!294 = !{!"_ZTSZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_E10id_adapter", !292, i64 0, !4, i64 8}
!295 = !{!296, !298}
!296 = distinct !{!296, !297, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!297 = distinct !{!297, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!298 = distinct !{!298, !299, !"_ZNK3fmt3v127context3argEi: argument 0"}
!299 = distinct !{!299, !"_ZNK3fmt3v127context3argEi"}
!300 = distinct !{null, null, null}
!301 = distinct !{null, null, null}
!302 = distinct !{null, null, null}
!303 = distinct !{null, null, null, null}
!304 = distinct !{null, null}
!305 = distinct !{null, null, null}
!306 = distinct !{null, null}
!307 = distinct !{!307, !39, !196, !197}
!308 = !{!"branch_weights", i32 4, i32 28}
!309 = distinct !{!309, !39, !196, !197}
!310 = distinct !{!310, !236}
!311 = distinct !{!311, !39}
!312 = distinct !{!312, !39, !196}
!313 = distinct !{!313, !39}
!314 = distinct !{!314, !39}
!315 = !{!316, !317, i64 0}
!316 = !{!"_ZTSSt6locale", !317, i64 0}
!317 = !{!"p1 _ZTSNSt6locale5_ImplE", !9, i64 0}
!318 = !{!319, !18, i64 16}
!319 = !{!"_ZTSNSt6locale5_ImplE", !4, i64 0, !320, i64 8, !18, i64 16, !320, i64 24, !322, i64 32}
!320 = !{!"p2 _ZTSNSt6locale5facetE", !321, i64 0}
!321 = !{!"any p2 pointer", !9, i64 0}
!322 = !{!"p2 omnipotent char", !321, i64 0}
!323 = !{!319, !320, i64 8}
!324 = !{!325, !325, i64 0}
!325 = !{!"p1 _ZTSNSt6locale5facetE", !9, i64 0}
!326 = !{ptr @_ZN3fmt3v1212format_facetISt6localeED2Ev}
!327 = distinct !{!327, !39}
!328 = !{!329, !20, i64 0}
!329 = !{!"_ZTSZN3fmt3v126detail10write_charIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsEEUlS4_E_", !20, i64 0, !5, i64 1}
!330 = !{!329, !5, i64 1}
!331 = !{!284, !4, i64 8}
!332 = distinct !{null, null}
!333 = distinct !{null, null}
!334 = distinct !{!334, !39}
!335 = distinct !{null, null, null, null}
!336 = distinct !{null, null, null, null, null}
!337 = distinct !{!337, !39}
!338 = distinct !{null, null, null}
!339 = distinct !{null, null, null, null}
!340 = distinct !{!340, !39}
!341 = !{!342, !4, i64 8}
!342 = !{!"_ZTSNSt6locale5facetE", !4, i64 8}
!343 = !{!344}
!344 = distinct !{!344, !345, !"_ZNKSt7__cxx118numpunctIcE8groupingEv: argument 0"}
!345 = distinct !{!345, !"_ZNKSt7__cxx118numpunctIcE8groupingEv"}
!346 = distinct !{null}
!347 = distinct !{null}
!348 = !{!349, !349, i64 0}
!349 = !{!"p1 _ZTSN3fmt3v1212format_specsE", !9, i64 0}
!350 = !{!351, !262, i64 16}
!351 = !{!"_ZTSN3fmt3v1216basic_format_argINS0_7contextEEE", !352, i64 0, !262, i64 16}
!352 = !{!"_ZTSN3fmt3v126detail5valueINS0_7contextEEE", !5, i64 0}
!353 = !{!354, !349, i64 8}
!354 = !{!"_ZTSN3fmt3v126detail10loc_writerIcEE", !355, i64 0, !349, i64 8, !47, i64 16, !47, i64 48, !47, i64 80}
!355 = !{!"_ZTSN3fmt3v1214basic_appenderIcEE", !264, i64 0}
!356 = !{i64 4}
!357 = !{!358}
!358 = distinct !{!358, !359, !"_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE: argument 0"}
!359 = distinct !{!359, !"_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE"}
!360 = !{!361}
!361 = distinct !{!361, !362, !"_ZN3fmt3v126detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE: argument 0"}
!362 = distinct !{!362, !"_ZN3fmt3v126detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE"}
!363 = distinct !{!363, !39}
!364 = distinct !{!364, !39}
end_hunk_1
