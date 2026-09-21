Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/texturesys?download=true
inline.NumInlined: 5128
inline.NumDeleted: 1476
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 108
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl14texture_lookupERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_:bb.a
bb.ap:                                            ; preds = %bb.ao
  %i.ne = call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl15sample_bilinearEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef %i.jd, ptr noundef %i.ix, ptr noundef %i.ja, i32 noundef %.sroa.10.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef %i.is, ptr noundef nonnull %15, ptr noundef %.3, ptr noundef %i.ki)
  %i.nf = and i1 %i.ne, %.2162
  %i.ng = add nuw nsw i32 %.2154, 1
  br label %bb.au

bb.aq:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %i.nh = call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl14sample_bicubicEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef %i.jd, ptr noundef %i.ix, ptr noundef %i.ja, i32 noundef %.sroa.10.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef %i.is, ptr noundef nonnull %15, ptr noundef %.3, ptr noundef %i.ki)
  %i.ni = and i1 %i.nh, %.2162
  %i.nj = add nuw nsw i32 %.2151, 1
  br label %bb.au

bb.ar:                                            ; preds = %bb.al
  %i.nk = call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl14sample_bicubicEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef %i.jd, ptr noundef %i.ix, ptr noundef %i.ja, i32 noundef %.sroa.10.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef %i.is, ptr noundef nonnull %15, ptr noundef %.3, ptr noundef %i.ki)
  %i.nl = and i1 %i.nk, %.2162
  %i.nm = add nuw nsw i32 %.2151, 1
  br label %bb.au

bb.as:                                            ; preds = %bb.al
  %i.nn = call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl15sample_bilinearEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef %i.jd, ptr noundef %i.ix, ptr noundef %i.ja, i32 noundef %.sroa.10.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef %i.is, ptr noundef nonnull %15, ptr noundef %.3, ptr noundef %i.ki)
  %i.no = and i1 %i.nn, %.2162
  %i.np = add nuw nsw i32 %.2154, 1
  br label %bb.au

bb.at:                                            ; preds = %bb.al
  %i.nq = call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl14sample_closestEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef %i.jd, ptr noundef %i.ix, ptr noundef %i.ja, i32 noundef %.sroa.10.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef %i.is, ptr noundef nonnull %15, ptr noundef null, ptr noundef null)
  %i.nr = and i1 %i.nq, %.2162
  %i.ns = add nuw nsw i32 %.2157, 1
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.al
  %.1161.1 = phi i1 [ %.2162, %bb.al ], [ %i.nr, %bb.at ], [ %i.no, %bb.as ], [ %i.nl, %bb.ar ], [ %i.ni, %bb.aq ], [ %i.nf, %bb.ap ]
  %.1156.1 = phi i32 [ %.2157, %bb.al ], [ %i.ns, %bb.at ], [ %.2157, %bb.as ], [ %.2157, %bb.ar ], [ %.2157, %bb.aq ], [ %.2157, %bb.ap ]
  %.1153.1 = phi i32 [ %.2154, %bb.al ], [ %.2154, %bb.at ], [ %i.np, %bb.as ], [ %.2154, %bb.ar ], [ %.2154, %bb.aq ], [ %i.ng, %bb.ap ]
  %.1150.1 = phi i32 [ %.2151, %bb.al ], [ %.2151, %bb.at ], [ %.2151, %bb.as ], [ %i.nm, %bb.ar ], [ %i.nj, %bb.aq ], [ %.2151, %bb.ap ]
  %i.nt = insertelement <4 x float> poison, float %.sroa.9.1, i64 0
  %i.nu = shufflevector <4 x float> %i.nt, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.nv = load <4 x float>, ptr %15, align 16, !tbaa !83
  %i.nw = fmul <4 x float> %i.nu, %i.nv
  %i.nx = fadd <4 x float> %.sroa.0220.1, %i.nw
  br i1 %.not168, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ny = load <4 x float>, ptr %16, align 16, !tbaa !83
  %i.nz = fmul <4 x float> %i.nu, %i.ny
  %i.oa = fadd <4 x float> %.sroa.0219.3, %i.nz
  %i.ob = load <4 x float>, ptr %17, align 16, !tbaa !83
  %i.oc = fmul <4 x float> %i.nu, %i.ob
  %i.od = fadd <4 x float> %.sroa.0218.3, %i.oc
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.sroa.0219.2.1 = phi <4 x float> [ %.sroa.0219.3, %bb.au ], [ %i.oa, %bb.av ]
  %.sroa.0218.2.1 = phi <4 x float> [ %.sroa.0218.3, %bb.au ], [ %i.od, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #3
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.ak
  %.sroa.0220.1.1 = phi <4 x float> [ %i.nx, %bb.aw ], [ %.sroa.0220.1, %bb.ak ]
  %.sroa.0219.3.1 = phi <4 x float> [ %.sroa.0219.2.1, %bb.aw ], [ %.sroa.0219.3, %bb.ak ]
  %.sroa.0218.3.1 = phi <4 x float> [ %.sroa.0218.2.1, %bb.aw ], [ %.sroa.0218.3, %bb.ak ]
  %.2162.1 = phi i1 [ %.1161.1, %bb.aw ], [ %.2162, %bb.ak ]
  %.1159.1 = phi i32 [ %i.mk, %bb.aw ], [ %.1159, %bb.ak ] ; 2 uses
  %.2157.1 = phi i32 [ %.1156.1, %bb.aw ], [ %.2157, %bb.ak ]
  %.2154.1 = phi i32 [ %.1153.1, %bb.aw ], [ %.2154, %bb.ak ]
  %.2151.1 = phi i32 [ %.1150.1, %bb.aw ], [ %.2151, %bb.ak ]
  store <4 x float> %.sroa.0220.1.1, ptr %12, align 16, !tbaa !83
  br i1 %.not168, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store <4 x float> %.sroa.0219.3.1, ptr %13, align 16, !tbaa !83
  store <4 x float> %.sroa.0218.3.1, ptr %14, align 16, !tbaa !83
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.oe = zext nneg i32 %.1159.1 to i64
  %i.of = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 2 uses
  %i.og = load i64, ptr %i.of, align 8, !tbaa !315
  %i.oh = add nsw i64 %i.og, %i.oe
  store i64 %i.oh, ptr %i.of, align 8, !tbaa !315
  %i.oi = mul nsw i32 %.1159.1, %i.jd
  %i.oj = sext i32 %i.oi to i64
  %i.ok = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 2 uses
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !316
  %i.om = add nsw i64 %i.ol, %i.oj
  store i64 %i.om, ptr %i.ok, align 8, !tbaa !316
  %i.on = getelementptr inbounds nuw i8, ptr %2, i64 296 ; 2 uses
  %i.oo = load float, ptr %i.on, align 8, !tbaa !707
  %i.op = fcmp ogt float %.1.i.i205, %i.oo
  br i1 %i.op, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store float %.1.i.i205, ptr %i.on, align 8, !tbaa !707
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.oq = mul nsw i32 %.2157.1, %i.jd
  %i.or = sext i32 %i.oq to i64
  %i.os = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  %i.ot = load i64, ptr %i.os, align 8, !tbaa !708
  %i.ou = add nsw i64 %i.ot, %i.or
  store i64 %i.ou, ptr %i.os, align 8, !tbaa !708
  %i.ov = mul nsw i32 %.2154.1, %i.jd
  %i.ow = sext i32 %i.ov to i64
  %i.ox = getelementptr inbounds nuw i8, ptr %2, i64 312 ; 2 uses
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !709
  %i.oz = add nsw i64 %i.oy, %i.ow
  store i64 %i.oz, ptr %i.ox, align 8, !tbaa !709
  %i.pa = mul nsw i32 %.2151.1, %i.jd
  %i.pb = sext i32 %i.pa to i64
  %i.pc = getelementptr inbounds nuw i8, ptr %2, i64 320 ; 2 uses
  %i.pd = load i64, ptr %i.pc, align 8, !tbaa !710
  %i.pe = add nsw i64 %i.pd, %i.pb
  store i64 %i.pe, ptr %i.pc, align 8, !tbaa !710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i1 %.2162.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl20texture_lookup_nomipERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, float noundef %6, float noundef %7, float %8, float %9, float %10, float %11, ptr noundef initializes((0, 16)) %12, ptr noundef %13, ptr noundef %14) #11 align 2 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 6 uses
  %i.b = alloca [4 x float], align 16             ; 6 uses
  store <4 x float> zeroinitializer, ptr %12, align 16, !tbaa !83
  %.not = icmp eq ptr %13, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store <4 x float> zeroinitializer, ptr %13, align 16, !tbaa !83
  store <4 x float> zeroinitializer, ptr %14, align 16, !tbaa !83
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !258
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [16 x i8], ptr @_ZZN11OpenImageIO4v3_117TextureSystemImpl31texture_lookup_trilinear_mipmapERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_E16sample_functions, i64 %i.e
  %.unpack = load i64, ptr %i.f, align 16, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store float %6, ptr %i.a, align 16, !tbaa !75
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store <2 x float> zeroinitializer, ptr %i.g, align 4, !tbaa !75
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float 0.000000e+00, ptr %i.h, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store float %7, ptr %i.b, align 16, !tbaa !75
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store <2 x float> zeroinitializer, ptr %i.i, align 4, !tbaa !75
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float 0.000000e+00, ptr %i.j, align 4, !tbaa !75
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !202
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.n = sext i32 %i.l to i64
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !203
  %i.p = getelementptr inbounds nuw [128 x i8], ptr %i.o, i64 %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 100
  %i.r = load i32, ptr %i.q, align 4, !tbaa !343
  %i.s = inttoptr i64 %.unpack to ptr
  %i.t = call noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %i.r, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull @_ZZN11OpenImageIO4v3_117TextureSystemImpl20texture_lookup_nomipERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_E6weight, ptr noundef nonnull %12, ptr noundef %13, ptr noundef %14)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 2 uses
  %i.v = load <2 x i64>, ptr %i.u, align 8, !tbaa !200
  %i.w = add nsw <2 x i64> %i.v, splat (i64 1)
  store <2 x i64> %i.w, ptr %i.u, align 8, !tbaa !200
  %i.x = load i8, ptr %i.c, align 4, !tbaa !258   ; 2 uses
  %i.y = icmp ult i8 %i.x, 4
  br i1 %i.y, label %switch.lookup, label %bb.d

switch.lookup:                                    ; preds = %bb.c
  %i.z = zext nneg i8 %i.x to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN11OpenImageIO4v3_117TextureSystemImpl31texture_lookup_trilinear_mipmapERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_, i64 %i.z
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %switch.ext ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !200
  %i.ac = add nsw i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !200
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %switch.lookup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i1 %i.t
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl31texture_lookup_trilinear_mipmapERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10, float noundef %11, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %12, ptr nofree noundef writeonly captures(address_is_null) %13, ptr nofree noundef writeonly captures(none) %14) #11 align 2 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 9 uses
  %i.b = alloca [4 x float], align 16             ; 9 uses
  %i.c = alloca [4 x float], align 16             ; 7 uses
  %15 = alloca %"class.OpenImageIO::v3_1::simd::vfloat4", align 16 ; 16 uses
  %16 = alloca %"class.OpenImageIO::v3_1::simd::vfloat4", align 16 ; 12 uses
  %17 = alloca %"class.OpenImageIO::v3_1::simd::vfloat4", align 16 ; 12 uses
  store <4 x float> zeroinitializer, ptr %12, align 16, !tbaa !83
  %.not = icmp eq ptr %13, null                   ; 2 uses
  br i1 %.not, label %18, label %bb.b

bb.b:                                             ; preds = %bb.a
  store <4 x float> zeroinitializer, ptr %13, align 16, !tbaa !83
  store <4 x float> zeroinitializer, ptr %14, align 16, !tbaa !83
  br label %18

18:                                               ; preds = %bb.b, %bb.a
  %19 = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %20 = load float, ptr %19, align 8, !tbaa !262  ; 4 uses
  %21 = fcmp ult float %20, 0.000000e+00
  br i1 %21, label %bb.c, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %24 = load i32, ptr %23, align 8, !tbaa !138
  %25 = trunc i32 %24 to i1
  br label %bb.c

bb.c:                                             ; preds = %22, %18
  %26 = phi i1 [ false, %18 ], [ %25, %22 ]
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.e = load <2 x float>, ptr %i.d, align 4, !tbaa !75 ; 2 uses
  %i.f = insertelement <2 x float> poison, float %10, i64 0
  %i.g = insertelement <2 x float> %i.f, float %8, i64 1
  %i.h = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> zeroinitializer
  %i.i = fmul <2 x float> %i.g, %i.h              ; 5 uses
  %i.j = insertelement <2 x float> poison, float %11, i64 0
  %i.k = insertelement <2 x float> %i.j, float %9, i64 1
  %i.l = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.m = fmul <2 x float> %i.k, %i.l              ; 5 uses
  %i.n = fmul <2 x float> %i.m, %i.m
  %i.o = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.i, <2 x float> %i.i, <2 x float> %i.n) ; 3 uses
  %i.p = fcmp olt <2 x float> %i.o, splat (float 1.000000e-16) ; 3 uses
  %i.q = extractelement <2 x i1> %i.p, i64 1
  br i1 %i.q, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.r = extractelement <2 x i1> %i.p, i64 0
  br i1 %i.r, label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = extractelement <2 x float> %i.o, i64 0
  %i.t = tail call float @llvm.sqrt.f32(float %i.s)
  %i.u = fdiv float f0x322BCC77, %i.t             ; 2 uses
  %i.v = extractelement <2 x float> %i.m, i64 0   ; 2 uses
  %i.w = fmul float %i.v, %i.u
  %i.x = extractelement <2 x float> %i.i, i64 0   ; 2 uses
  %i.y = fneg float %i.x
  %i.z = fmul float %i.u, %i.y
  br label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit

bb.f:                                             ; preds = %bb.c
  %i.aa = extractelement <2 x i1> %i.p, i64 0
  %i.ab = extractelement <2 x float> %i.i, i64 0
  %i.ac = extractelement <2 x float> %i.i, i64 1  ; 3 uses
  %i.ad = extractelement <2 x float> %i.m, i64 0
  %i.ae = extractelement <2 x float> %i.m, i64 1  ; 3 uses
  br i1 %i.aa, label %bb.g, label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit

bb.g:                                             ; preds = %bb.f
  %i.af = extractelement <2 x float> %i.o, i64 1
  %i.ag = tail call float @llvm.sqrt.f32(float %i.af)
  %i.ah = fdiv float f0x322BCC77, %i.ag           ; 2 uses
  %i.ai = fneg float %i.ae
  %i.aj = fmul float %i.ah, %i.ai
  %i.ak = fmul float %i.ac, %i.ah
  br label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit

_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.0122 = phi float [ %i.ad, %bb.f ], [ %i.v, %bb.e ], [ %i.ak, %bb.g ], [ f0x322BCC77, %bb.d ]
  %.0121 = phi float [ %i.ab, %bb.f ], [ %i.x, %bb.e ], [ %i.aj, %bb.g ], [ 0.000000e+00, %bb.d ]
  %.0120 = phi float [ %i.ae, %bb.f ], [ %i.z, %bb.e ], [ %i.ae, %bb.g ], [ 0.000000e+00, %bb.d ]
  %.0119 = phi float [ %i.ac, %bb.f ], [ %i.w, %bb.e ], [ %i.ac, %bb.g ], [ f0x322BCC77, %bb.d ]
  %i.al = tail call float @llvm.fabs.f32(float %.0119) ; 2 uses
  %i.am = tail call float @llvm.fabs.f32(float %.0121) ; 2 uses
  %i.an = fcmp olt float %i.al, %i.am
  %.sroa.speculated92 = select i1 %i.an, float %i.am, float %i.al ; 4 uses
  %i.ao = tail call float @llvm.fabs.f32(float %.0120) ; 2 uses
  %i.ap = tail call float @llvm.fabs.f32(float %.0122) ; 2 uses
  %i.aq = fcmp olt float %i.ao, %i.ap
  %.sroa.speculated = select i1 %i.aq, float %i.ap, float %i.ao ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 21
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !260, !range !102, !noundef !103
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = fcmp olt float %.sroa.speculated92, %.sroa.speculated
  %i.av = fcmp olt float %.sroa.speculated, %.sroa.speculated92
  %..i75.val = select i1 %i.au, float %.sroa.speculated, float %.sroa.speculated92
  %..i76.val = select i1 %i.av, float %.sroa.speculated, float %.sroa.speculated92
  %i.aw = select i1 %i.at, float %..i75.val, float %..i76.val
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.az = load float, ptr %i.ax, align 8, !tbaa !75 ; 2 uses
  %i.ba = load float, ptr %i.ay, align 4, !tbaa !75 ; 2 uses
  %i.bb = fcmp olt float %i.az, %i.ba
  %i.bc = select i1 %i.bb, float %i.ba, float %i.az
  %i.bd = fadd float %i.aw, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !202
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bh = sext i32 %i.bf to i64
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !203
  %i.bj = getelementptr inbounds nuw [128 x i8], ptr %i.bi, i64 %i.bh ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 96
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !342 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 100
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !343 ; 7 uses
  %i.bo = icmp slt i32 %i.bn, %i.bl
  br i1 %i.bo, label %.lr.ph.i, label %.loopexit.i.thread

.lr.ph.i:                                         ; preds = %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 104
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !344
  %i.br = sext i32 %i.bn to i64
  br label %bb.h

bb.h:                                             ; preds = %.critedge.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.br, %.lr.ph.i ], [ %indvars.iv.next.i, %.critedge.i ] ; 4 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !55
  %i.bu = sitofp i32 %i.bt to float
  %i.bv = fmul float %i.bd, %i.bu                 ; 2 uses
  %i.bw = fcmp ugt float %i.bv, 1.000000e+00
  br i1 %i.bw, label %.critedge.i, label %.loopexit.i

.critedge.i:                                      ; preds = %bb.h
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.bl, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %.loopexit.i.thread, label %bb.h, !llvm.loop !9

.loopexit.i:                                      ; preds = %bb.h
  %i.bx = trunc nsw i64 %indvars.iv.i to i32      ; 6 uses
  %i.by = add nsw i32 %i.bx, -1                   ; 2 uses
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.bv, float 2.000000e+00, float -1.000000e+00) ; 2 uses
  %.inv.i = fcmp oge float %i.bz, 0.000000e+00
  %.0.i77.i = select i1 %.inv.i, float %i.bz, float 0.000000e+00 ; 2 uses
  %i.ca = fcmp ogt float %.0.i77.i, 1.000000e+00
  %.1.i78.i = select i1 %i.ca, float 1.000000e+00, float %.0.i77.i ; 6 uses
  %i.cb = fsub float 1.000000e+00, %.1.i78.i
  %i.cc = icmp slt i64 %indvars.iv.i, 0
  br i1 %i.cc, label %.loopexit.i.thread, label %bb.i

.loopexit.i.thread:                               ; preds = %.critedge.i, %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit, %.loopexit.i
  %i.cd = add nsw i32 %i.bl, -1                   ; 2 uses
  br label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

bb.i:                                             ; preds = %.loopexit.i
  %.not175 = icmp slt i32 %i.bn, %i.bx
  br i1 %.not175, label %bb.j, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

bb.j:                                             ; preds = %bb.i
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 19
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !198
  switch i8 %i.cf, label %bb.l [
    i8 1, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit
    i8 2, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  br label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

bb.l:                                             ; preds = %bb.j
  br i1 %26, label %bb.m, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

bb.m:                                             ; preds = %bb.l
  %i.cg = fcmp ult float %20, %.1.i78.i           ; 2 uses
  %i.ch = fdiv float %20, %.1.i78.i
  %i.ci = fsub float %20, %.1.i78.i
  %i.cj = fsub float 1.000000e+00, %.1.i78.i
  %i.ck = fdiv float %i.ci, %i.cj
  %.sroa.11.1 = select i1 %i.cg, i32 %i.bx, i32 %i.by ; 2 uses
  %.sink109.i = select i1 %i.cg, float %i.ch, float %i.ck ; 2 uses
  %.inv91.i = fcmp oge float %.sink109.i, 0.000000e+00
  %.0.i.i = select i1 %.inv91.i, float %.sink109.i, float 0.000000e+00 ; 2 uses
  %i.cl = fcmp ogt float %.0.i.i, 1.000000e+00
  %.1.i.i = select i1 %i.cl, float 1.000000e+00, float %.0.i.i
  store float %.1.i.i, ptr %19, align 8, !tbaa !262
  br label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit: ; preds = %bb.i, %bb.j, %.loopexit.i.thread, %bb.k, %bb.l, %bb.m
  %.sroa.11.2 = phi i32 [ %i.cd, %.loopexit.i.thread ], [ %i.bx, %bb.k ], [ %.sroa.11.1, %bb.m ], [ %i.bx, %bb.l ], [ %i.bn, %bb.j ], [ %i.bn, %bb.i ] ; 2 uses
  %.sroa.0146.2 = phi i32 [ %i.cd, %.loopexit.i.thread ], [ %i.bx, %bb.k ], [ %.sroa.11.1, %bb.m ], [ %i.by, %bb.l ], [ %i.bn, %bb.j ], [ %i.bn, %bb.i ] ; 2 uses
  %.sroa.10.1 = phi float [ 0.000000e+00, %.loopexit.i.thread ], [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %bb.m ], [ %.1.i78.i, %bb.l ], [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %bb.i ] ; 4 uses
  %.sroa.0.1 = phi float [ 1.000000e+00, %.loopexit.i.thread ], [ 1.000000e+00, %bb.k ], [ 1.000000e+00, %bb.m ], [ %i.cb, %bb.l ], [ 1.000000e+00, %bb.j ], [ 1.000000e+00, %bb.i ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 4, !tbaa !258
  %i.co = zext i8 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr @_ZZN11OpenImageIO4v3_117TextureSystemImpl31texture_lookup_trilinear_mipmapERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_E16sample_functions, i64 %i.co
  %.unpack = load i64, ptr %i.cp, align 16, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store float %6, ptr %i.a, align 16, !tbaa !75
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store <2 x float> zeroinitializer, ptr %i.cq, align 4, !tbaa !75
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float 0.000000e+00, ptr %i.cr, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store float %7, ptr %i.b, align 16, !tbaa !75
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store <2 x float> zeroinitializer, ptr %i.cs, align 4, !tbaa !75
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float 0.000000e+00, ptr %i.ct, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN11OpenImageIO4v3_117TextureSystemImpl31texture_lookup_trilinear_mipmapERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_.weight, i64 16, i1 false)
  %i.cu = inttoptr i64 %.unpack to ptr            ; 4 uses
  %i.cv = fcmp une float %.sroa.0.1, 0.000000e+00 ; 2 uses
  br i1 %.not, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.preheader, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.preheader

_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.preheader: ; preds = %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit
  br i1 %i.cv, label %bb.p, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.1

_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.preheader: ; preds = %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit
  br i1 %i.cv, label %bb.n, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.1

bb.n:                                             ; preds = %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #3
  %i.cw = call noundef zeroext i1 %i.cu(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.sroa.0146.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %i.c, ptr noundef nonnull %15, ptr noundef null, ptr noundef null)
  %i.cx = zext i1 %i.cw to i8
  %i.cy = insertelement <4 x float> poison, float %.sroa.0.1, i64 0
  %i.cz = shufflevector <4 x float> %i.cy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.da = load <4 x float>, ptr %15, align 16, !tbaa !83
  %i.db = fmul <4 x float> %i.cz, %i.da
  %i.dc = fadd <4 x float> %i.db, zeroinitializer
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #3
  br label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.1

_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.1: ; preds = %bb.n, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.preheader
  %.sroa.088.1.us = phi <4 x float> [ %i.dc, %bb.n ], [ zeroinitializer, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.preheader ] ; 2 uses
  %.158.us = phi i8 [ %i.cx, %bb.n ], [ 1, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.preheader ] ; 2 uses
  %.1.us = phi i64 [ 1, %bb.n ], [ 0, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.preheader ] ; 2 uses
  %i.dd = fcmp une float %.sroa.10.1, 0.000000e+00
  br i1 %i.dd, label %bb.o, label %.split.us.thread

bb.o:                                             ; preds = %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.1
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #3
  %i.de = call noundef zeroext i1 %i.cu(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.sroa.11.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %i.c, ptr noundef nonnull %15, ptr noundef null, ptr noundef null)
  %i.df = icmp ne i8 %.158.us, 0
  %i.dg = and i1 %i.de, %i.df
  %i.dh = zext i1 %i.dg to i8
  %i.di = add nuw nsw i64 %.1.us, 1
  %i.dj = insertelement <4 x float> poison, float %.sroa.10.1, i64 0
  %i.dk = shufflevector <4 x float> %i.dj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dl = load <4 x float>, ptr %15, align 16, !tbaa !83
  %i.dm = fmul <4 x float> %i.dk, %i.dl
  %i.dn = fadd <4 x float> %.sroa.088.1.us, %i.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #3
  br label %.split.us.thread

.split.us.thread:                                 ; preds = %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.1, %bb.o
  %.us-phi.ph = phi <4 x float> [ %.sroa.088.1.us, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.1 ], [ %i.dn, %bb.o ]
  %.us-phi138.ph = phi i8 [ %.158.us, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.1 ], [ %i.dh, %bb.o ]
  %.us-phi139.ph = phi i64 [ %.1.us, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.1 ], [ %i.di, %bb.o ]
  store <4 x float> %.us-phi.ph, ptr %12, align 16, !tbaa !83
  br label %bb.s

bb.p:                                             ; preds = %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #3
  %i.do = call noundef zeroext i1 %i.cu(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.sroa.0146.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %i.c, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17)
  %i.dp = zext i1 %i.do to i8
  %i.dq = insertelement <4 x float> poison, float %.sroa.0.1, i64 0
  %i.dr = shufflevector <4 x float> %i.dq, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.ds = load <4 x float>, ptr %15, align 16, !tbaa !83
  %i.dt = fmul <4 x float> %i.dr, %i.ds
  %i.du = fadd <4 x float> %i.dt, zeroinitializer
  %i.dv = load <4 x float>, ptr %16, align 16, !tbaa !83
  %i.dw = fmul <4 x float> %i.dr, %i.dv
  %i.dx = fadd <4 x float> %i.dw, zeroinitializer
  %i.dy = load <4 x float>, ptr %17, align 16, !tbaa !83
  %i.dz = fmul <4 x float> %i.dr, %i.dy
  %i.ea = fadd <4 x float> %i.dz, zeroinitializer
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #3
  br label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.1

_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.1: ; preds = %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.preheader, %bb.p
  %.sroa.088.1 = phi <4 x float> [ %i.du, %bb.p ], [ zeroinitializer, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.preheader ] ; 2 uses
  %.sroa.087.3 = phi <4 x float> [ %i.dx, %bb.p ], [ zeroinitializer, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.preheader ] ; 2 uses
  %.sroa.086.3 = phi <4 x float> [ %i.ea, %bb.p ], [ zeroinitializer, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.preheader ] ; 2 uses
  %.158 = phi i8 [ %i.dp, %bb.p ], [ 1, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.preheader ] ; 2 uses
  %.1 = phi i64 [ 1, %bb.p ], [ 0, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.preheader ] ; 2 uses
  %i.eb = fcmp une float %.sroa.10.1, 0.000000e+00
  br i1 %i.eb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.1
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #3
  %i.ec = call noundef zeroext i1 %i.cu(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.sroa.11.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %i.c, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17)
  %i.ed = icmp ne i8 %.158, 0
  %i.ee = and i1 %i.ec, %i.ed
  %i.ef = zext i1 %i.ee to i8
  %i.eg = add nuw nsw i64 %.1, 1
  %i.eh = insertelement <4 x float> poison, float %.sroa.10.1, i64 0
  %i.ei = shufflevector <4 x float> %i.eh, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.ej = load <4 x float>, ptr %15, align 16, !tbaa !83
  %i.ek = fmul <4 x float> %i.ei, %i.ej
  %i.el = fadd <4 x float> %.sroa.088.1, %i.ek
  %i.em = load <4 x float>, ptr %16, align 16, !tbaa !83
  %i.en = fmul <4 x float> %i.ei, %i.em
  %i.eo = fadd <4 x float> %.sroa.087.3, %i.en
  %i.ep = load <4 x float>, ptr %17, align 16, !tbaa !83
  %i.eq = fmul <4 x float> %i.ei, %i.ep
  %i.er = fadd <4 x float> %.sroa.086.3, %i.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #3
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.1
  %.sroa.088.1.1 = phi <4 x float> [ %i.el, %bb.q ], [ %.sroa.088.1, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.1 ]
  %.sroa.087.3.1 = phi <4 x float> [ %i.eo, %bb.q ], [ %.sroa.087.3, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.1 ]
  %.sroa.086.3.1 = phi <4 x float> [ %i.er, %bb.q ], [ %.sroa.086.3, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.1 ]
  %.158.1 = phi i8 [ %i.ef, %bb.q ], [ %.158, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.1 ]
  %.1.1 = phi i64 [ %i.eg, %bb.q ], [ %.1, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.1 ]
  store <4 x float> %.sroa.088.1.1, ptr %12, align 16, !tbaa !83
  store <4 x float> %.sroa.087.3.1, ptr %13, align 16, !tbaa !83
  store <4 x float> %.sroa.086.3.1, ptr %14, align 16, !tbaa !83
  br label %bb.s

bb.s:                                             ; preds = %.split.us.thread, %bb.r
  %.us-phi139169 = phi i64 [ %.us-phi139.ph, %.split.us.thread ], [ %.1.1, %bb.r ] ; 2 uses
  %.us-phi138168 = phi i8 [ %.us-phi138.ph, %.split.us.thread ], [ %.158.1, %bb.r ]
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 2 uses
  %i.et = load <2 x i64>, ptr %i.es, align 8, !tbaa !200
  %i.eu = insertelement <2 x i64> poison, i64 %.us-phi139169, i64 0
  %i.ev = shufflevector <2 x i64> %i.eu, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ew = add nsw <2 x i64> %i.et, %i.ev
  store <2 x i64> %i.ew, ptr %i.es, align 8, !tbaa !200
  %i.ex = load i8, ptr %i.cm, align 4, !tbaa !258 ; 2 uses
  %i.ey = icmp ult i8 %i.ex, 4
  br i1 %i.ey, label %switch.lookup, label %bb.t

switch.lookup:                                    ; preds = %bb.s
  %i.ez = zext nneg i8 %i.ex to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN11OpenImageIO4v3_117TextureSystemImpl31texture_lookup_trilinear_mipmapERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_, i64 %i.ez
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 %switch.ext ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !200
  %i.fc = add nsw i64 %i.fb, %.us-phi139169
  store i64 %i.fc, ptr %i.fa, align 8, !tbaa !200
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %switch.lookup
  %i.fd = trunc nuw i8 %.us-phi138168 to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i1 %i.fd
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #25

declare noundef i32 @_ZN11OpenImageIO4v3_114ImageCacheImpl18subimage_from_nameEPNS0_14ImageCacheFileENS0_7ustringE(ptr noundef nonnull align 64 dereferenceable(25240), ptr noundef, ptr) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK11OpenImageIO4v3_117TextureSystemImpl5errorIJNS0_7ustringES3_EEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store.324", align 16 ; 7 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #3
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #3, !noalias !713
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #3, !noalias !713
  %i.b = load ptr, ptr %2, align 8, !tbaa !201, !noalias !713 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, null
end_hunk_0
