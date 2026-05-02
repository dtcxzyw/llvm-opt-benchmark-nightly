inline.NumInlined: 5153
inline.NumDeleted: 1482
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl31texture_lookup_trilinear_mipmapERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #3
  %i.ct = call noundef zeroext i1 %i.cr(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.sroa.0146.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %i.c, ptr noundef nonnull %15, ptr noundef null, ptr noundef null)
  %18 = zext i1 %i.ct to i8
  %i.cu = insertelement <4 x float> poison, float %.sroa.0.1, i64 0
  %i.cv = shufflevector <4 x float> %i.cu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cw = load <4 x float>, ptr %15, align 16, !tbaa !34
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_117TextureSystemImpl31texture_lookup_trilinear_mipmapERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_:bb.a
_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.1: ; preds = %bb.n, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.preheader
  %.sroa.088.1.us = phi <4 x float> [ %i.cy, %bb.n ], [ zeroinitializer, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.preheader ] ; 2 uses
  %.158.us = phi i64 [ 1, %bb.n ], [ 0, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.preheader ] ; 2 uses
  %.1.us = phi i8 [ %18, %bb.n ], [ 1, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.preheader ] ; 2 uses
  %i.cz = fcmp une float %.sroa.10.1, 0.000000e+00
  br i1 %i.cz, label %bb.o, label %.split.us.thread

end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_117TextureSystemImpl31texture_lookup_trilinear_mipmapERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #3
  %i.da = call noundef zeroext i1 %i.cr(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.sroa.11.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %i.c, ptr noundef nonnull %15, ptr noundef null, ptr noundef null)
  %19 = icmp ne i8 %.1.us, 0
  %i.db = and i1 %i.da, %19
  %20 = zext i1 %i.db to i8
  %i.dc = add nuw nsw i64 %.158.us, 1
  %i.dd = insertelement <4 x float> poison, float %.sroa.10.1, i64 0
  %i.de = shufflevector <4 x float> %i.dd, <4 x float> poison, <4 x i32> zeroinitializer
end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_117TextureSystemImpl31texture_lookup_trilinear_mipmapERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_:bb.a
.split.us.thread:                                 ; preds = %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.1, %bb.o
  %.us-phi.ph = phi <4 x float> [ %.sroa.088.1.us, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.1 ], [ %i.dh, %bb.o ]
  %.us-phi138.ph = phi i64 [ %.158.us, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.1 ], [ %i.dc, %bb.o ]
  %.us-phi139.ph = phi i8 [ %.1.us, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.1 ], [ %20, %bb.o ]
  store <4 x float> %.us-phi.ph, ptr %12, align 16, !tbaa !34
  br label %bb.s

end_hunk_3
begin_hunk_4_@_ZN11OpenImageIO4v3_117TextureSystemImpl31texture_lookup_trilinear_mipmapERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #3
  %i.di = call noundef zeroext i1 %i.cr(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.sroa.0146.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %i.c, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17)
  %21 = zext i1 %i.di to i8
  %i.dj = insertelement <4 x float> poison, float %.sroa.0.1, i64 0
  %i.dk = shufflevector <4 x float> %i.dj, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.dl = load <4 x float>, ptr %15, align 16, !tbaa !34
end_hunk_4
begin_hunk_5_@_ZN11OpenImageIO4v3_117TextureSystemImpl31texture_lookup_trilinear_mipmapERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_:bb.a
  %.sroa.087.3 = phi <4 x float> [ %i.dq, %bb.p ], [ zeroinitializer, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.preheader ] ; 2 uses
  %.sroa.086.3 = phi <4 x float> [ %i.dt, %bb.p ], [ zeroinitializer, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.preheader ] ; 2 uses
  %.158 = phi i64 [ 1, %bb.p ], [ 0, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.preheader ] ; 2 uses
  %.1 = phi i8 [ %21, %bb.p ], [ 1, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.preheader ] ; 2 uses
  %i.du = fcmp une float %.sroa.10.1, 0.000000e+00
  br i1 %i.du, label %bb.q, label %bb.r

end_hunk_5
begin_hunk_6_@_ZN11OpenImageIO4v3_117TextureSystemImpl31texture_lookup_trilinear_mipmapERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #3
  %i.dv = call noundef zeroext i1 %i.cr(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.sroa.11.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %i.c, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17)
  %22 = icmp ne i8 %.1, 0
  %i.dw = and i1 %i.dv, %22
  %23 = zext i1 %i.dw to i8
  %i.dx = add nuw nsw i64 %.158, 1
  %i.dy = insertelement <4 x float> poison, float %.sroa.10.1, i64 0
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
end_hunk_6
begin_hunk_7_@_ZN11OpenImageIO4v3_117TextureSystemImpl31texture_lookup_trilinear_mipmapERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_:bb.a
  %.sroa.087.3.1 = phi <4 x float> [ %i.ef, %bb.q ], [ %.sroa.087.3, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.1 ]
  %.sroa.086.3.1 = phi <4 x float> [ %i.ei, %bb.q ], [ %.sroa.086.3, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.1 ]
  %.158.1 = phi i64 [ %i.dx, %bb.q ], [ %.158, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.1 ]
  %.1.1 = phi i8 [ %23, %bb.q ], [ %.1, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.1 ]
  store <4 x float> %.sroa.088.1.1, ptr %12, align 16, !tbaa !34
  store <4 x float> %.sroa.087.3.1, ptr %13, align 16, !tbaa !34
  store <4 x float> %.sroa.086.3.1, ptr %14, align 16, !tbaa !34
  br label %bb.s

bb.s:                                             ; preds = %.split.us.thread, %bb.r
  %.us-phi139168 = phi i8 [ %.us-phi139.ph, %.split.us.thread ], [ %.1.1, %bb.r ]
  %.us-phi138167 = phi i64 [ %.us-phi138.ph, %.split.us.thread ], [ %.158.1, %bb.r ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 2 uses
  %i.ek = load <2 x i64>, ptr %i.ej, align 8, !tbaa !194
end_hunk_7
begin_hunk_8_@_ZN11OpenImageIO4v3_117TextureSystemImpl31texture_lookup_trilinear_mipmapERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_:bb.a
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %switch.lookup
  %24 = trunc nuw i8 %.us-phi139168 to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i1 %24
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_8
