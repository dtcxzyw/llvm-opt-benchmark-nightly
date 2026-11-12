Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/texturesys?download=true
inline.NumInlined: 5128
inline.NumDeleted: 1476
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_ZNK11OpenImageIO4v3_117TextureSystemImpl21get_colortransform_idENS0_7ustringES2_:bb.a

_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit15.thread: ; preds = %bb.b, %bb.f, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit18, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit24, %bb.d, %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit15
  %.1 = phi i32 [ 0, %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit15 ], [ %i.ab, %bb.f ], [ -1, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit18 ], [ 0, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit24 ], [ 0, %bb.d ], [ 0, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK11OpenImageIO4v3_113TextureSystem21get_colortransform_idENS0_11ustringhashES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #7 align 2 !guid !793 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !290
  %i.c = tail call ptr @_ZN11OpenImageIO4v3_17ustring9from_hashEm(i64 noundef %1)
  %i.d = tail call ptr @_ZN11OpenImageIO4v3_17ustring9from_hashEm(i64 noundef %2)
  %i.e = tail call noundef i32 @_ZNK11OpenImageIO4v3_117TextureSystemImpl21get_colortransform_idENS0_7ustringES2_(ptr noundef nonnull readonly align 8 dereferenceable(188) %i.b, ptr %i.c, ptr %i.d)
  ret i32 %i.e
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZNK11OpenImageIO4v3_117TextureSystemImpl21get_colortransform_idENS0_11ustringhashES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(188) %0, i64 %1, i64 %2) local_unnamed_addr #7 align 2 !guid !794 {
bb.a:
  %i.a = tail call ptr @_ZN11OpenImageIO4v3_17ustring9from_hashEm(i64 noundef %1)
  %i.b = tail call ptr @_ZN11OpenImageIO4v3_17ustring9from_hashEm(i64 noundef %2)
  %i.c = tail call noundef i32 @_ZNK11OpenImageIO4v3_117TextureSystemImpl21get_colortransform_idENS0_7ustringES2_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr %i.a, ptr %i.b)
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_113TextureSystem7textureENS0_7ustringERNS0_13TextureOpt_v2EffffffiPfS5_S5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(76) %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12) local_unnamed_addr #7 align 2 !guid !795 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !290  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !313
  %i.e = tail call noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl18get_perthread_infoEPNS0_23ImageCachePerThreadInfoE(ptr noundef nonnull align 64 dereferenceable(25240) %i.d, ptr noundef null) ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !313
  %i.g = tail call noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl9find_fileENS0_7ustringEPNS0_23ImageCachePerThreadInfoEPFPNS0_10ImageInputEvEPKNS0_9ImageSpecEb(ptr noundef nonnull align 64 dereferenceable(25240) %i.f, ptr %1, ptr noundef %i.e, ptr noundef null, ptr noundef null, i1 noundef zeroext false)
  %i.h = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl7textureEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_13TextureOpt_v2EffffffiPfS9_S9_(ptr noundef nonnull align 8 dereferenceable(188) %i.b, ptr noundef %i.g, ptr noundef %i.e, ptr noundef nonnull align 8 dereferenceable(76) %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12)
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl7textureENS0_7ustringERNS0_13TextureOpt_v2EffffffiPfS5_S5_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(76) %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12) local_unnamed_addr #7 align 2 !guid !796 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !313
  %i.c = tail call noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl18get_perthread_infoEPNS0_23ImageCachePerThreadInfoE(ptr noundef nonnull align 64 dereferenceable(25240) %i.b, ptr noundef null) ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !313
  %i.e = tail call noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl9find_fileENS0_7ustringEPNS0_23ImageCachePerThreadInfoEPFPNS0_10ImageInputEvEPKNS0_9ImageSpecEb(ptr noundef nonnull align 64 dereferenceable(25240) %i.d, ptr %1, ptr noundef %i.c, ptr noundef null, ptr noundef null, i1 noundef zeroext false)
  %i.f = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl7textureEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_13TextureOpt_v2EffffffiPfS9_S9_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef %i.e, ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(76) %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12)
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_113TextureSystem7textureEPNS1_13TextureHandleEPNS1_9PerthreadERNS0_13TextureOpt_v2EffffffiPfS8_S8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, i32 noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13) local_unnamed_addr #7 align 2 !guid !797 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !290
  %i.c = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl7textureEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_13TextureOpt_v2EffffffiPfS9_S9_(ptr noundef nonnull align 8 dereferenceable(188) %i.b, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, i32 noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13)
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl7textureEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_13TextureOpt_v2EffffffiPfS9_S9_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, i32 noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13) local_unnamed_addr #11 align 2 !guid !801 {
bb.a:
  %14 = alloca %"class.OpenImageIO::v3_1::ustring", align 8 ; 4 uses
  %15 = alloca %"class.OpenImageIO::v3_1::simd::vfloat4", align 16 ; 9 uses
  %16 = alloca %"class.OpenImageIO::v3_1::simd::vfloat4", align 16 ; 8 uses
  %17 = alloca %"class.OpenImageIO::v3_1::simd::vfloat4", align 16 ; 10 uses
  %i.a = icmp sgt i32 %10, 4
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %3, align 8, !tbaa !388
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.d
  %.0215318 = phi ptr [ %13, %bb.b ], [ %.1216, %bb.d ] ; 3 uses
  %.0219317 = phi ptr [ %12, %bb.b ], [ %spec.select, %bb.d ] ; 3 uses
  %.0223316 = phi ptr [ %11, %bb.b ], [ %i.e, %bb.d ] ; 2 uses
  %.0315 = phi i32 [ %10, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %.0315, i32 4) ; 4 uses
  %i.c = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl7textureEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_13TextureOpt_v2EffffffiPfS9_S9_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, i32 noundef %.sroa.speculated, ptr noundef %.0223316, ptr noundef %.0219317, ptr noundef %.0215318)
  br i1 %i.c, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.d = zext nneg i32 %.sroa.speculated to i64   ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %.0223316, i64 %i.d
  %.not250 = icmp eq ptr %.0219317, null
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %.0219317, i64 %i.d
  %spec.select = select i1 %.not250, ptr null, ptr %i.f
  %.not251 = icmp eq ptr %.0215318, null
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %.0215318, i64 %i.d
  %.1216 = select i1 %.not251, ptr null, ptr %i.g
  %i.h = load i32, ptr %3, align 8, !tbaa !388
  %i.i = add nsw i32 %i.h, %.sroa.speculated
  store i32 %i.i, ptr %3, align 8, !tbaa !388
  %i.j = sub nsw i32 %.0315, %.sroa.speculated    ; 2 uses
  %.not249 = icmp eq i32 %i.j, 0
  br i1 %.not249, label %bb.e, label %bb.c, !llvm.loop !798

bb.e:                                             ; preds = %bb.d
  store i32 %i.b, ptr %3, align 8, !tbaa !388
  br label %.critedge

bb.f:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 19
  %i.l = load i8, ptr %i.k, align 1, !tbaa !389
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr @_ZZN11OpenImageIO4v3_117TextureSystemImpl7textureEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_13TextureOpt_v2EffffffiPfS9_S9_E16lookup_functions, i64 %i.m
  %.unpack = load i64, ptr %i.n, align 16, !tbaa !274 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !313
  %i.q = tail call noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl18get_perthread_infoEPNS0_23ImageCachePerThreadInfoE(ptr noundef nonnull align 64 dereferenceable(25240) %i.p, ptr noundef %2) ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 166
  %i.s = load i16, ptr %i.r, align 2, !tbaa !390
  %.not302 = icmp eq i16 %i.s, 0
  br i1 %.not302, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = fptosi float %4 to i32
  %.sroa.speculated10.i = tail call i32 @llvm.smax.i32(i32 %i.t, i32 0)
  %i.u = fptosi float %5 to i32
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.u, i32 0)
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !313
  %i.w = tail call noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl12resolve_udimEPNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoEii(ptr noundef nonnull align 64 dereferenceable(25240) %i.v, ptr noundef nonnull %1, ptr noundef %i.q, i32 noundef %.sroa.speculated10.i, i32 noundef %.sroa.speculated.i)
  %i.x = tail call float @llvm.floor.f32(float %4)
  %i.y = fsub float %4, %i.x
  %i.z = tail call float @llvm.floor.f32(float %5)
  %i.aa = fsub float %5, %i.z
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0212 = phi ptr [ %i.w, %bb.g ], [ %1, %bb.f ]
  %.0202 = phi float [ %i.aa, %bb.g ], [ %5, %bb.f ] ; 2 uses
  %.0200 = phi float [ %i.y, %bb.g ], [ %4, %bb.f ] ; 2 uses
  %i.ab = tail call noundef ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl18verify_texturefileEPNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoE(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef %.0212, ptr noundef %i.q) ; 9 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 208 ; 2 uses
  %i.ad = load <2 x i64>, ptr %i.ac, align 8, !tbaa !391
  %i.ae = add nsw <2 x i64> %i.ad, splat (i64 1)
  store <2 x i64> %i.ae, ptr %i.ac, align 8, !tbaa !391
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 25
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !381, !range !293, !noundef !294
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ai = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl15missing_textureERNS0_13TextureOpt_v2EiPfS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef null)
  br label %.critedge

bb.k:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !392 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit.thread, label %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit

_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit:      ; preds = %bb.k
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !383
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit
  %i.ao = load ptr, ptr %i.o, align 8, !tbaa !313
  %i.ap = tail call noundef i32 @_ZN11OpenImageIO4v3_114ImageCacheImpl18subimage_from_nameEPNS0_14ImageCacheFileENS0_7ustringE(ptr noundef nonnull align 64 dereferenceable(25240) %i.ao, ptr noundef nonnull %i.ab, ptr nonnull %i.ak) ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, -1
  br i1 %i.aq, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.ap, ptr %i.ar, align 4, !tbaa !393
  store ptr null, ptr %i.aj, align 8, !tbaa !392
  br label %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit.thread

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #3
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.as, align 8, !tbaa !323
  store ptr %.sroa.0.0.copyload.i, ptr %14, align 8
  call void @_ZNK11OpenImageIO4v3_117TextureSystemImpl5errorIJNS0_7ustringES3_EEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull @.str.59, ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #3
  %i.at = call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl15missing_textureERNS0_13TextureOpt_v2EiPfS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef null)
  br label %.critedge

_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit.thread: ; preds = %bb.k, %.thread, %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !393
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %i.ax = sext i32 %i.av to i64
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !394
  %i.az = getelementptr inbounds nuw [128 x i8], ptr %i.ay, i64 %i.ax ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 120
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !422 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 60
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !440
  %i.be = load i32, ptr %3, align 8, !tbaa !388   ; 3 uses
  %i.bf = sub i32 %i.bd, %i.be                    ; 2 uses
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.bf, i32 0) ; 5 uses
  %.1.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %10) ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !441 ; 2 uses
  %i.bi = icmp eq i8 %i.bh, 0
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit.thread
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ab, i64 156
  %i.bk = load i8, ptr %i.bj, align 4, !tbaa !802 ; 2 uses
  store i8 %i.bk, ptr %i.bg, align 8, !tbaa !441
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit.thread
  %i.bl = phi i8 [ %i.bk, %bb.n ], [ %i.bh, %_ZNK11OpenImageIO4v3_17ustring5emptyEv.exit.thread ] ; 2 uses
  %i.bm = icmp eq i8 %i.bl, 3
  br i1 %i.bm, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !803 ; 2 uses
  %i.bp = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bo)
  %i.bq = icmp samesign ult i32 %i.bp, 2
  %i.br = icmp sgt i32 %i.bo, -1
  %i.bs = and i1 %i.br, %i.bq
  br i1 %i.bs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i8 5, ptr %i.bg, align 8, !tbaa !441
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.bt = phi i8 [ 5, %bb.q ], [ 3, %bb.p ], [ %i.bl, %bb.o ]
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 17 ; 3 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !442 ; 2 uses
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ab, i64 157
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !804 ; 2 uses
  store i8 %i.by, ptr %i.bu, align 1, !tbaa !442
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bz = phi i8 [ %i.by, %bb.s ], [ %i.bv, %bb.r ] ; 2 uses
  %i.ca = icmp eq i8 %i.bz, 3
  br i1 %i.ca, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !805 ; 2 uses
  %i.cd = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.cc)
  %i.ce = icmp samesign ult i32 %i.cd, 2
  %i.cf = icmp sgt i32 %i.cc, -1
  %i.cg = and i1 %i.cf, %i.ce
  br i1 %i.cg, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i8 5, ptr %i.bu, align 1, !tbaa !442
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.ch = phi i8 [ 5, %bb.v ], [ 3, %bb.u ], [ %i.bz, %bb.t ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.az, i64 45
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !806, !range !293, !noundef !294
  %i.ck = trunc nuw i8 %i.cj to i1
  %.not338 = xor i1 %i.ck, true
  %.not240 = icmp eq i8 %i.bt, 1
  %or.cond339 = or i1 %.not240, %.not338
  %.not241 = icmp eq i8 %i.ch, 1
  %or.cond340 = or i1 %or.cond339, %.not241
  br i1 %or.cond340, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !443
  %i.cn = icmp slt i32 %i.cm, 1
  br i1 %i.cn, label %.preheader309, label %bb.ad

.preheader309:                                    ; preds = %bb.x
  %i.co = icmp sgt i32 %.1.i, 0
  br i1 %i.co, label %.lr.ph, label %.preheader308

.lr.ph:                                           ; preds = %.preheader309
  %i.cp = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !807
  %i.cr = sext i32 %i.be to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.cq, i64 %i.cr ; 4 uses
  %i.cs = load float, ptr %invariant.gep, align 4, !tbaa !266
  store float %i.cs, ptr %11, align 4, !tbaa !266
  %exitcond.not = icmp eq i32 %.1.i, 1
  br i1 %exitcond.not, label %.preheader308, label %bb.y

.preheader308:                                    ; preds = %.lr.ph, %bb.y, %bb.z, %bb.aa, %.preheader309
  %i.ct = icmp slt i32 %spec.select.i, %10        ; 2 uses
  br i1 %i.ct, label %.lr.ph312, label %._crit_edge

.lr.ph312:                                        ; preds = %.preheader308
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cv = zext nneg i32 %spec.select.i to i64     ; 3 uses
  %.pre = load float, ptr %i.cu, align 8, !tbaa !444 ; 2 uses
  %i.cw = xor i32 %spec.select.i, -1
  %i.cx = add i32 %10, %i.cw                      ; 2 uses
  %i.cy = zext i32 %i.cx to i64
  %i.cz = add nuw nsw i64 %i.cy, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.cx, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph312
  %n.vec = and i64 %i.cz, 8589934584              ; 3 uses
  %i.da = add nuw nsw i64 %n.vec, %i.cv
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.pre, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep341 = getelementptr [4 x i8], ptr %11, i64 %i.cv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep341, i64 %index ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x float> %broadcast.splat, ptr %gep, align 4, !tbaa !266
  store <4 x float> %broadcast.splat, ptr %i.db, align 4, !tbaa !266
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !799

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cz, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph312, %middle.block
  %indvars.iv321.ph = phi i64 [ %i.cv, %.lr.ph312 ], [ %i.da, %middle.block ]
  br label %scalar.ph

bb.y:                                             ; preds = %.lr.ph
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 4
  %i.dd = load float, ptr %gep.1, align 4, !tbaa !266
  %i.de = getelementptr inbounds nuw i8, ptr %11, i64 4
  store float %i.dd, ptr %i.de, align 4, !tbaa !266
  %exitcond.not.1 = icmp eq i32 %.1.i, 2
  br i1 %exitcond.not.1, label %.preheader308, label %bb.z

bb.z:                                             ; preds = %bb.y
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 8
  %i.df = load float, ptr %gep.2, align 4, !tbaa !266
  %i.dg = getelementptr inbounds nuw i8, ptr %11, i64 8
  store float %i.df, ptr %i.dg, align 4, !tbaa !266
  %exitcond.not.2 = icmp eq i32 %.1.i, 3
  br i1 %exitcond.not.2, label %.preheader308, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 12
  %i.dh = load float, ptr %gep.3, align 4, !tbaa !266
  %i.di = getelementptr inbounds nuw i8, ptr %11, i64 12
  store float %i.dh, ptr %i.di, align 4, !tbaa !266
  br label %.preheader308

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader308
  %.not248 = icmp ne ptr %12, null
  %i.dj = icmp sgt i32 %10, 0
  %or.cond319 = and i1 %.not248, %i.dj
  br i1 %or.cond319, label %.lr.ph314.preheader, label %.loopexit

.lr.ph314.preheader:                              ; preds = %._crit_edge
  %i.dk = zext nneg i32 %10 to i64
  %i.dl = shl nuw nsw i64 %i.dk, 2                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %12, i8 0, i64 %i.dl, i1 false), !tbaa !266
  tail call void @llvm.memset.p0.i64(ptr align 4 %13, i8 0, i64 %i.dl, i1 false), !tbaa !266
  br label %.loopexit

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv321 = phi i64 [ %indvars.iv.next322, %scalar.ph ], [ %indvars.iv321.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv321
  store float %.pre, ptr %i.dm, align 4, !tbaa !266
  %indvars.iv.next322 = add nuw nsw i64 %indvars.iv321, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next322 to i32
  %exitcond323.not = icmp eq i32 %10, %lftr.wideiv
  br i1 %exitcond323.not, label %._crit_edge, label %scalar.ph, !llvm.loop !800

.loopexit:                                        ; preds = %.lr.ph314.preheader, %._crit_edge
  %i.dn = icmp eq i32 %i.be, 0
  %or.cond301 = select i1 %i.ct, i1 %i.dn, i1 false
  br i1 %or.cond301, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %.loopexit
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !326, !range !293, !noundef !294
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZN11OpenImageIO4v3_117TextureSystemImpl18fill_gray_channelsERKNS0_9ImageSpecEiPfS5_S5_S5_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(160) %i.bb, i32 noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef null)
  br label %.critedge

bb.ad:                                            ; preds = %bb.x, %bb.w
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 162 ; 3 uses
  %i.ds = load i8, ptr %i.dr, align 2, !tbaa !327, !range !293, !noundef !294
  %i.dt = trunc nuw i8 %i.ds to i1                ; 3 uses
  %i.du = fsub float 1.000000e+00, %.0202
  %i.dv = fneg float %7
  %i.dw = fneg float %9
  %.0225 = select i1 %i.dt, float %i.dw, float %9 ; 2 uses
  %.0210 = select i1 %i.dt, float %i.dv, float %7 ; 2 uses
  %.1203 = select i1 %i.dt, float %i.du, float %.0202 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.az, i64 44
  %i.dy = load i8, ptr %i.dx, align 4, !tbaa !808, !range !293, !noundef !294
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ea = getelementptr inbounds nuw i8, ptr %i.az, i64 80
  %i.eb = getelementptr inbounds nuw i8, ptr %i.az, i64 88
  %i.ec = load <4 x float>, ptr %i.ea, align 8, !tbaa !266 ; 3 uses
  %i.ed = load float, ptr %i.eb, align 8, !tbaa !809 ; 2 uses
  %i.ee = extractelement <4 x float> %i.ec, i64 0 ; 2 uses
  %i.ef = fmul float %6, %i.ee
  %i.eg = fmul float %8, %i.ee
  %i.eh = insertelement <2 x float> poison, float %.0200, i64 0
  %i.ei = insertelement <2 x float> %i.eh, float %.1203, i64 1
  %i.ej = shufflevector <4 x float> %i.ec, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.ek = shufflevector <4 x float> %i.ec, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.el = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> %i.ej, <2 x float> %i.ek) ; 2 uses
  %i.em = fmul float %.0210, %i.ed
  %i.en = fmul float %.0225, %i.ed
  %i.eo = extractelement <2 x float> %i.el, i64 0
  %i.ep = extractelement <2 x float> %i.el, i64 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.0227 = phi float [ %8, %bb.ad ], [ %i.eg, %bb.ae ] ; 2 uses
  %.1226 = phi float [ %.0225, %bb.ad ], [ %i.en, %bb.ae ] ; 2 uses
  %.1211 = phi float [ %.0210, %bb.ad ], [ %i.em, %bb.ae ] ; 2 uses
  %.0205 = phi float [ %6, %bb.ad ], [ %i.ef, %bb.ae ] ; 2 uses
  %.2204 = phi float [ %.1203, %bb.ad ], [ %i.ep, %bb.ae ] ; 2 uses
  %.1201 = phi float [ %.0200, %bb.ad ], [ %i.eo, %bb.ae ] ; 2 uses
  %.not242 = icmp ne i32 %10, 4
  %i.eq = ptrtoint ptr %11 to i64
  %i.er = ptrtoint ptr %12 to i64
  %i.es = or i64 %i.er, %i.eq
  %i.et = ptrtoint ptr %13 to i64
  %i.eu = or i64 %i.es, %i.et
  %i.ev = and i64 %i.eu, 15
  %i.ew = icmp ne i64 %i.ev, 0
  %or.cond262 = or i1 %.not242, %i.ew
  br i1 %or.cond262, label %.critedge257, label %bb.ar

.critedge257:                                     ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #3
  %.not246 = icmp eq ptr %12, null                ; 3 uses
  %spec.select258 = select i1 %.not246, ptr null, ptr %16 ; 2 uses
  %spec.select259 = select i1 %.not246, ptr %13, ptr %17 ; 2 uses
  %i.ex = inttoptr i64 %.unpack to ptr
  %i.ey = call noundef zeroext i1 %i.ex(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(400) %i.ab, ptr noundef nonnull %i.q, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %10, i32 noundef %.1.i, float noundef %.1201, float noundef %.2204, float noundef %.0205, float noundef %.1211, float noundef %.0227, float noundef %.1226, ptr noundef nonnull %15, ptr noundef %spec.select258, ptr noundef %spec.select259)
  %i.ez = icmp slt i32 %spec.select.i, %10
  br i1 %i.ez, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %.critedge257
  %i.fa = load i32, ptr %3, align 8, !tbaa !388
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !326, !range !293, !noundef !294
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN11OpenImageIO4v3_117TextureSystemImpl18fill_gray_channelsERKNS0_9ImageSpecEiPfS5_S5_S5_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(160) %i.bb, i32 noundef %10, ptr noundef nonnull %15, ptr noundef %spec.select258, ptr noundef %spec.select259, ptr noundef null)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %.critedge257
  switch i32 %10, label %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit264 [
    i32 1, label %bb.ak
    i32 2, label %bb.al
    i32 3, label %bb.am
    i32 4, label %bb.an
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.ff = load float, ptr %15, align 16, !tbaa !274
  store float %i.ff, ptr %11, align 1, !tbaa !274
  br label %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit264

bb.al:                                            ; preds = %bb.aj
  %i.fg = load double, ptr %15, align 16, !tbaa !274
  store double %i.fg, ptr %11, align 1, !tbaa !274
  br label %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit264

bb.am:                                            ; preds = %bb.aj
  %i.fh = load <2 x float>, ptr %15, align 16, !tbaa !274
  store <2 x float> %i.fh, ptr %11, align 4, !tbaa !266
  %i.fi = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.fj = load float, ptr %i.fi, align 8, !tbaa !274
  %i.fk = getelementptr inbounds nuw i8, ptr %11, i64 8
  store float %i.fj, ptr %i.fk, align 4, !tbaa !266
  br label %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit264

bb.an:                                            ; preds = %bb.aj
  %i.fl = load <4 x float>, ptr %15, align 16, !tbaa !274
  store <4 x float> %i.fl, ptr %11, align 1, !tbaa !274
  br label %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit264

_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit264: ; preds = %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an
  br i1 %.not246, label %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit264
  %i.fm = load i8, ptr %i.dr, align 2, !tbaa !327, !range !293, !noundef !294
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fo = load <4 x float>, ptr %17, align 16, !tbaa !274
  %i.fp = fsub <4 x float> zeroinitializer, %i.fo
  store <4 x float> %i.fp, ptr %17, align 16
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  switch i32 %10, label %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit [
    i32 1, label %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit263.thread
    i32 2, label %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit263.thread298
    i32 3, label %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit263.thread299
    i32 4, label %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit263.thread300
  ]

_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit263.thread: ; preds = %bb.aq
  %i.fq = load float, ptr %16, align 16, !tbaa !274
  store float %i.fq, ptr %12, align 1, !tbaa !274
  %i.fr = load float, ptr %17, align 16, !tbaa !274
  store float %i.fr, ptr %13, align 1, !tbaa !274
  br label %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit

_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit263.thread298: ; preds = %bb.aq
  %i.fs = load double, ptr %16, align 16, !tbaa !274
  store double %i.fs, ptr %12, align 1, !tbaa !274
  %i.ft = load double, ptr %17, align 16, !tbaa !274
  store double %i.ft, ptr %13, align 1, !tbaa !274
  br label %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit

_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit263.thread299: ; preds = %bb.aq
  %i.fu = load <2 x float>, ptr %16, align 16, !tbaa !274
  store <2 x float> %i.fu, ptr %12, align 4, !tbaa !266
  %i.fv = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.fw = load float, ptr %i.fv, align 8, !tbaa !274
  %i.fx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store float %i.fw, ptr %i.fx, align 4, !tbaa !266
  %i.fy = load <2 x float>, ptr %17, align 16, !tbaa !274
  store <2 x float> %i.fy, ptr %13, align 4, !tbaa !266
  %i.fz = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ga = load float, ptr %i.fz, align 8, !tbaa !274
  %i.gb = getelementptr inbounds nuw i8, ptr %13, i64 8
  store float %i.ga, ptr %i.gb, align 4, !tbaa !266
  br label %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit

_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit263.thread300: ; preds = %bb.aq
  %i.gc = load <4 x float>, ptr %16, align 16, !tbaa !274
  store <4 x float> %i.gc, ptr %12, align 1, !tbaa !274
  %i.gd = load <4 x float>, ptr %17, align 16, !tbaa !274
  store <4 x float> %i.gd, ptr %13, align 1, !tbaa !274
  br label %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit

_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit: ; preds = %bb.aq, %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit263.thread300, %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit263.thread299, %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit263.thread298, %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit263.thread, %_ZNK11OpenImageIO4v3_14simd7vfloat45storeEPfi.exit264
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #3
  br label %.critedge

bb.ar:                                            ; preds = %bb.af
  %i.ge = inttoptr i64 %.unpack to ptr
  %i.gf = tail call noundef zeroext i1 %i.ge(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(400) %i.ab, ptr noundef nonnull %i.q, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef 4, i32 noundef %.1.i, float noundef %.1201, float noundef %.2204, float noundef %.0205, float noundef %.1211, float noundef %.0227, float noundef %.1226, ptr noundef %11, ptr noundef %12, ptr noundef %13) ; 2 uses
  %i.gg = icmp slt i32 %i.bf, 4
  br i1 %i.gg, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.gh = load i32, ptr %3, align 8, !tbaa !388
end_hunk_0
