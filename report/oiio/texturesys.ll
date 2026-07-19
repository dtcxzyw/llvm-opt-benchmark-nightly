inline.NumInlined: 5128
inline.NumDeleted: 1476
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 108
begin_hunk_0_@_ZN11OpenImageIO4v3_113TextureSystem7textureENS0_7ustringERNS0_18TextureOptBatch_v1EmPKfS6_S6_S6_S6_S6_iPfS7_S7_:bb.a
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !92
  %i.g = tail call noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl18get_perthread_infoEPNS0_23ImageCachePerThreadInfoE(ptr noundef nonnull align 64 dereferenceable(25240) %i.f, ptr noundef null)
  br label %_ZN11OpenImageIO4v3_117TextureSystemImpl7textureENS0_7ustringERNS0_18TextureOptBatch_v1EmPKfS6_S6_S6_S6_S6_iPfS7_S7_.exit

_ZN11OpenImageIO4v3_117TextureSystemImpl7textureENS0_7ustringERNS0_18TextureOptBatch_v1EmPKfS6_S6_S6_S6_S6_iPfS7_S7_.exit: ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.e, %bb.a ]
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !92
  %i.j = tail call noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl9find_fileENS0_7ustringEPNS0_23ImageCachePerThreadInfoEPFPNS0_10ImageInputEvEPKNS0_9ImageSpecEb(ptr noundef nonnull align 64 dereferenceable(25240) %i.i, ptr %1, ptr noundef %i.h, ptr noundef null, ptr noundef null, i1 noundef zeroext false)
  %i.k = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl7textureEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_18TextureOptBatch_v1EmPKfSA_SA_SA_SA_SA_iPfSB_SB_(ptr noundef nonnull align 8 dereferenceable(188) %i.b, ptr noundef %i.j, ptr noundef %i.e, ptr noundef nonnull readonly align 64 dereferenceable(512) %2, i64 noundef %3, ptr noundef readonly %4, ptr noundef readonly %5, ptr noundef readonly %6, ptr noundef readonly %7, ptr noundef readonly %8, ptr noundef readonly %9, i32 noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13)
  ret i1 %i.k
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl7textureENS0_7ustringERNS0_18TextureOptBatch_v1EmPKfS6_S6_S6_S6_S6_iPfS7_S7_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr %1, ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(512) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef readonly captures(none) %9, i32 noundef %10, ptr nofree noundef writeonly captures(none) %11, ptr nofree noundef writeonly captures(address_is_null) %12, ptr nofree noundef writeonly captures(none) %13) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92
  %i.c = tail call noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl18get_perthread_infoEPNS0_23ImageCachePerThreadInfoE(ptr noundef nonnull align 64 dereferenceable(25240) %i.b, ptr noundef null) ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %_ZN11OpenImageIO4v3_117TextureSystemImpl18get_texture_handleENS0_7ustringEPNS0_13TextureSystem9PerthreadEPKNS0_13TextureOpt_v2E.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !92
  %i.e = tail call noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl18get_perthread_infoEPNS0_23ImageCachePerThreadInfoE(ptr noundef nonnull align 64 dereferenceable(25240) %i.d, ptr noundef null)
  br label %_ZN11OpenImageIO4v3_117TextureSystemImpl18get_texture_handleENS0_7ustringEPNS0_13TextureSystem9PerthreadEPKNS0_13TextureOpt_v2E.exit

_ZN11OpenImageIO4v3_117TextureSystemImpl18get_texture_handleENS0_7ustringEPNS0_13TextureSystem9PerthreadEPKNS0_13TextureOpt_v2E.exit: ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %i.c, %bb.a ]
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !92
  %i.h = tail call noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl9find_fileENS0_7ustringEPNS0_23ImageCachePerThreadInfoEPFPNS0_10ImageInputEvEPKNS0_9ImageSpecEb(ptr noundef nonnull align 64 dereferenceable(25240) %i.g, ptr %1, ptr noundef %i.f, ptr noundef null, ptr noundef null, i1 noundef zeroext false)
  %i.i = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl7textureEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_18TextureOptBatch_v1EmPKfSA_SA_SA_SA_SA_iPfSB_SB_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef %i.h, ptr noundef %i.c, ptr noundef nonnull align 64 dereferenceable(512) %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13)
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_113TextureSystem7textureEPNS1_13TextureHandleEPNS1_9PerthreadERNS0_18TextureOptBatch_v1EmPKfS9_S9_S9_S9_S9_iPfSA_SA_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(512) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(none) %10, i32 noundef %11, ptr nofree noundef writeonly captures(none) %12, ptr nofree noundef writeonly captures(address_is_null) %13, ptr nofree noundef writeonly captures(none) %14) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.c = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl7textureEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_18TextureOptBatch_v1EmPKfSA_SA_SA_SA_SA_iPfSB_SB_(ptr noundef nonnull align 8 dereferenceable(188) %i.b, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 64 dereferenceable(512) %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, i32 noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14)
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl7textureEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_18TextureOptBatch_v1EmPKfSA_SA_SA_SA_SA_iPfSB_SB_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(512) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(none) %10, i32 noundef %11, ptr nofree noundef writeonly captures(none) %12, ptr nofree noundef writeonly captures(address_is_null) %13, ptr nofree noundef writeonly captures(none) %14) local_unnamed_addr #7 align 2 {
bb.a:
  %15 = alloca %"class.OpenImageIO::v3_1::TextureOpt_v2", align 8 ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #3
  %i.a = getelementptr inbounds nuw i8, ptr %15, i64 20
  %i.b = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %15, i64 21
  %i.d = getelementptr inbounds nuw i8, ptr %15, i64 22
  %i.e = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %15, i64 28 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %15, i64 36 ; 4 uses
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.e, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 5 uses
  store <2 x float> splat (float 1.000000e+00), ptr %i.h, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %15, i64 64 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %15, i64 68
  %i.m = getelementptr inbounds nuw i8, ptr %15, i64 72
  store i32 0, ptr %i.m, align 8, !tbaa !265
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 448
  %i.o = load <2 x i32>, ptr %i.n, align 64, !tbaa !3
  store <2 x i32> %i.o, ptr %15, align 8, !tbaa !3
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 456
  %i.q = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.r = load i64, ptr %i.p, align 8, !tbaa !108
  store i64 %i.r, ptr %i.q, align 8, !tbaa !108
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 464
  %i.t = load i32, ptr %i.s, align 16, !tbaa !266
  %i.u = trunc i32 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i8 %i.u, ptr %i.v, align 8, !tbaa !245
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 468
  %i.x = load i32, ptr %i.w, align 4, !tbaa !268
  %i.y = trunc i32 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %15, i64 17
  store i8 %i.y, ptr %i.z, align 1, !tbaa !248
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 476
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !269
  %i.ac = trunc i32 %i.ab to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 19
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !193
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 480
  %i.af = load i32, ptr %i.ae, align 32, !tbaa !270
  %i.ag = trunc i32 %i.af to i8
  store i8 %i.ag, ptr %i.a, align 4, !tbaa !271
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 484
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !272
  %i.aj = trunc i32 %i.ai to i16
  store i16 %i.aj, ptr %i.d, align 2, !tbaa !273
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 488
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !274
  %i.am = icmp ne i32 %i.al, 0
  %i.an = zext i1 %i.am to i8
  store i8 %i.an, ptr %i.c, align 1, !tbaa !275
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 492
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !276
  store float %i.ap, ptr %i.i, align 8, !tbaa !259
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 496
  %i.ar = load ptr, ptr %i.aq, align 16, !tbaa !277
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !278
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 504
  %i.at = load i32, ptr %i.as, align 8, !tbaa !279
  store i32 %i.at, ptr %i.l, align 4, !tbaa !252
  %.not = icmp eq i32 %11, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.au = mul nsw i32 %11, 3
  %i.av = sext i32 %i.au to i64
  %i.aw = shl nsw i64 %i.av, 2
  %i.ax = alloca i8, i64 %i.aw, align 16          ; 13 uses
  %i.ay = sext i32 %11 to i64                     ; 2 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ay ; 6 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.ay ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 384 ; 2 uses
  %.not104 = icmp eq ptr %13, null
  %i.bf = icmp sgt i32 %11, 0                     ; 2 uses
  br i1 %.not104, label %.split.us, label %.split

.thread:                                          ; preds = %bb.a
  %i.bg = zext nneg i32 %11 to i64                ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr null, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bg
  %.not104146 = icmp eq ptr %13, null
  br i1 %.not104146, label %.split.us.split.preheader, label %.split.split.preheader

.split.us:                                        ; preds = %bb.b
  br i1 %i.bf, label %.split.us.split.us.preheader, label %.split.us.split.preheader

.split.us.split.preheader:                        ; preds = %.thread, %.split.us
  %i.bj = phi ptr [ %i.ax, %.split.us ], [ null, %.thread ]
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 384
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 64
  br label %.split.us.split

.split.us.split.us.preheader:                     ; preds = %.split.us
  %wide.trip.count139 = zext nneg i32 %11 to i64  ; 2 uses
  %xtraiter158 = and i64 %wide.trip.count139, 3   ; 3 uses
  %i.bo = icmp ult i32 %11, 4
  %unroll_iter161 = and i64 %wide.trip.count139, 2147483644
  %lcmp.mod159.not = icmp eq i64 %xtraiter158, 0
  %lcmp.mod160 = icmp ne i64 %xtraiter158, 0
  br label %.split.us.split.us

.split.us.split.us:                               ; preds = %.split.us.split.us.preheader, %..loopexit_crit_edge.us.us
  %indvars.iv141 = phi i64 [ 0, %.split.us.split.us.preheader ], [ %indvars.iv.next142, %..loopexit_crit_edge.us.us ] ; 13 uses
  %.099110.us.us = phi i1 [ true, %.split.us.split.us.preheader ], [ %.1.us.us, %..loopexit_crit_edge.us.us ] ; 2 uses
  %.0100109.us.us = phi i64 [ 1, %.split.us.split.us.preheader ], [ %i.cy, %..loopexit_crit_edge.us.us ] ; 2 uses
  %i.bp = and i64 %.0100109.us.us, %4
  %.not103.us.us = icmp eq i64 %i.bp, 0
  br i1 %.not103.us.us, label %..loopexit_crit_edge.us.us, label %.lr.ph108.us.us

.lr.ph108.us.us:                                  ; preds = %.split.us.split.us
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv141
  %i.br = load float, ptr %i.bq, align 4, !tbaa !26
  store float %i.br, ptr %i.e, align 8, !tbaa !280
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv141
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !26
  store float %i.bt, ptr %i.f, align 4, !tbaa !281
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv141
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !26
  store float %i.bv, ptr %i.g, align 4, !tbaa !282
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv141
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !26
  store float %i.bx, ptr %i.h, align 8, !tbaa !283
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv141
  %i.bz = load float, ptr %i.by, align 4, !tbaa !26
  store float %i.bz, ptr %i.k, align 8, !tbaa !284
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv141
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !26
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv141
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !26
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv141
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !26
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv141
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !26
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv141
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !26
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv141
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !26
  %i.cm = call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl7textureEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_13TextureOpt_v2EffffffiPfS9_S9_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %15, float noundef %i.cb, float noundef %i.cd, float noundef %i.cf, float noundef %i.ch, float noundef %i.cj, float noundef %i.cl, i32 noundef %11, ptr noundef nonnull %i.ax, ptr noundef null, ptr noundef null)
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %indvars.iv141 ; 5 uses
  br i1 %i.bo, label %.epil.preheader157, label %.lr.ph108.us.us.new

.lr.ph108.us.us.new:                              ; preds = %.lr.ph108.us.us, %.lr.ph108.us.us.new
  %indvars.iv136 = phi i64 [ %indvars.iv.next137.3, %.lr.ph108.us.us.new ], [ 0, %.lr.ph108.us.us ] ; 6 uses
  %niter162 = phi i64 [ %niter162.next.3, %.lr.ph108.us.us.new ], [ 0, %.lr.ph108.us.us ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv136
  %i.co = load float, ptr %i.cn, align 16, !tbaa !26
  %.idx = shl nsw i64 %indvars.iv136, 6
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx
  store float %i.co, ptr %gep, align 4, !tbaa !26
  %indvars.iv.next137 = or disjoint i64 %indvars.iv136, 1 ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.next137
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !26
  %.idx.1 = shl nsw i64 %indvars.iv.next137, 6
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx.1
  store float %i.cq, ptr %gep.1, align 4, !tbaa !26
  %indvars.iv.next137.1 = or disjoint i64 %indvars.iv136, 2 ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.next137.1
  %i.cs = load float, ptr %i.cr, align 8, !tbaa !26
  %.idx.2 = shl nsw i64 %indvars.iv.next137.1, 6
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx.2
  store float %i.cs, ptr %gep.2, align 4, !tbaa !26
  %indvars.iv.next137.2 = or disjoint i64 %indvars.iv136, 3 ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.next137.2
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !26
  %.idx.3 = shl nsw i64 %indvars.iv.next137.2, 6
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx.3
  store float %i.cu, ptr %gep.3, align 4, !tbaa !26
  %indvars.iv.next137.3 = add nuw nsw i64 %indvars.iv136, 4 ; 2 uses
  %niter162.next.3 = add i64 %niter162, 4         ; 2 uses
  %niter162.ncmp.3 = icmp eq i64 %niter162.next.3, %unroll_iter161
  br i1 %niter162.ncmp.3, label %..loopexit_crit_edge.us.us.loopexit.unr-lcssa, label %.lr.ph108.us.us.new, !llvm.loop !285

..loopexit_crit_edge.us.us.loopexit.unr-lcssa:    ; preds = %.lr.ph108.us.us.new
  br i1 %lcmp.mod159.not, label %..loopexit_crit_edge.us.us.loopexit, label %.epil.preheader157

.epil.preheader157:                               ; preds = %..loopexit_crit_edge.us.us.loopexit.unr-lcssa, %.lr.ph108.us.us
  %indvars.iv136.epil.init = phi i64 [ 0, %.lr.ph108.us.us ], [ %indvars.iv.next137.3, %..loopexit_crit_edge.us.us.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod160)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader157
  %indvars.iv136.epil = phi i64 [ %indvars.iv136.epil.init, %.epil.preheader157 ], [ %indvars.iv.next137.epil, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader157 ], [ %epil.iter.next, %bb.c ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv136.epil
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !26
  %.idx.epil = shl nsw i64 %indvars.iv136.epil, 6
  %gep.epil = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx.epil
  store float %i.cw, ptr %gep.epil, align 4, !tbaa !26
  %indvars.iv.next137.epil = add nuw nsw i64 %indvars.iv136.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter158
  br i1 %epil.iter.cmp.not, label %..loopexit_crit_edge.us.us.loopexit, label %bb.c, !llvm.loop !286

..loopexit_crit_edge.us.us.loopexit:              ; preds = %bb.c, %..loopexit_crit_edge.us.us.loopexit.unr-lcssa
  %i.cx = select i1 %i.cm, i1 %.099110.us.us, i1 false
  br label %..loopexit_crit_edge.us.us

..loopexit_crit_edge.us.us:                       ; preds = %..loopexit_crit_edge.us.us.loopexit, %.split.us.split.us
  %.1.us.us = phi i1 [ %.099110.us.us, %.split.us.split.us ], [ %i.cx, %..loopexit_crit_edge.us.us.loopexit ] ; 2 uses
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %i.cy = shl i64 %.0100109.us.us, 1
  %exitcond143.not = icmp eq i64 %indvars.iv.next142, 16
  br i1 %exitcond143.not, label %.split114.us, label %.split.us.split.us, !llvm.loop !287

.split.us.split:                                  ; preds = %.split.us.split.preheader, %bb.d
  %indvars.iv133 = phi i64 [ 0, %.split.us.split.preheader ], [ %indvars.iv.next134, %bb.d ] ; 12 uses
  %.099110.us = phi i1 [ true, %.split.us.split.preheader ], [ %.1.us, %bb.d ] ; 2 uses
  %.0100109.us = phi i64 [ 1, %.split.us.split.preheader ], [ %i.dy, %bb.d ] ; 2 uses
  %i.cz = and i64 %.0100109.us, %4
  %.not103.us = icmp eq i64 %i.cz, 0
  br i1 %.not103.us, label %bb.d, label %.loopexit.us

.loopexit.us:                                     ; preds = %.split.us.split
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv133
  %i.db = load float, ptr %i.da, align 4, !tbaa !26
  store float %i.db, ptr %i.e, align 8, !tbaa !280
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv133
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !26
  store float %i.dd, ptr %i.f, align 4, !tbaa !281
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv133
  %i.df = load float, ptr %i.de, align 4, !tbaa !26
  store float %i.df, ptr %i.g, align 4, !tbaa !282
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv133
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !26
  store float %i.dh, ptr %i.h, align 8, !tbaa !283
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv133
  %i.dj = load float, ptr %i.di, align 4, !tbaa !26
  store float %i.dj, ptr %i.k, align 8, !tbaa !284
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv133
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !26
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv133
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !26
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv133
  %i.dp = load float, ptr %i.do, align 4, !tbaa !26
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv133
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !26
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv133
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !26
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv133
  %i.dv = load float, ptr %i.du, align 4, !tbaa !26
  %i.dw = call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl7textureEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_13TextureOpt_v2EffffffiPfS9_S9_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %15, float noundef %i.dl, float noundef %i.dn, float noundef %i.dp, float noundef %i.dr, float noundef %i.dt, float noundef %i.dv, i32 noundef %11, ptr noundef %i.bj, ptr noundef null, ptr noundef null)
  %i.dx = select i1 %i.dw, i1 %.099110.us, i1 false
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.us, %.split.us.split
  %.1.us = phi i1 [ %.099110.us, %.split.us.split ], [ %i.dx, %.loopexit.us ] ; 2 uses
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1 ; 2 uses
  %i.dy = shl i64 %.0100109.us, 1
  %exitcond135.not = icmp eq i64 %indvars.iv.next134, 16
  br i1 %exitcond135.not, label %.split114.us, label %.split.us.split, !llvm.loop !287

.split:                                           ; preds = %bb.b
  br i1 %i.bf, label %.split.split.us.preheader, label %.split.split.preheader

.split.split.preheader:                           ; preds = %.thread, %.split
  %i.dz = phi ptr [ %i.ax, %.split ], [ null, %.thread ]
  %i.ea = phi ptr [ %i.az, %.split ], [ %i.bh, %.thread ]
  %i.eb = phi ptr [ %i.ba, %.split ], [ %i.bi, %.thread ]
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 384
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 64
  br label %.split.split

.split.split.us.preheader:                        ; preds = %.split
  %wide.trip.count = zext nneg i32 %11 to i64     ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.eg = icmp eq i32 %11, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod156 = trunc i32 %11 to i1
  br label %.split.split.us

.split.split.us:                                  ; preds = %.split.split.us.preheader, %..loopexit105_crit_edge.us
  %indvars.iv130 = phi i64 [ 0, %.split.split.us.preheader ], [ %indvars.iv.next131, %..loopexit105_crit_edge.us ] ; 15 uses
  %.099110.us116 = phi i1 [ true, %.split.split.us.preheader ], [ %.1.us119, %..loopexit105_crit_edge.us ] ; 2 uses
  %.0100109.us117 = phi i64 [ 1, %.split.split.us.preheader ], [ %i.gn, %..loopexit105_crit_edge.us ] ; 2 uses
  %i.eh = and i64 %.0100109.us117, %4
  %.not103.us118 = icmp eq i64 %i.eh, 0
  br i1 %.not103.us118, label %..loopexit105_crit_edge.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.split.split.us
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv130
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !26
  store float %i.ej, ptr %i.e, align 8, !tbaa !280
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv130
  %i.el = load float, ptr %i.ek, align 4, !tbaa !26
  store float %i.el, ptr %i.f, align 4, !tbaa !281
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv130
  %i.en = load float, ptr %i.em, align 4, !tbaa !26
  store float %i.en, ptr %i.g, align 4, !tbaa !282
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv130
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !26
  store float %i.ep, ptr %i.h, align 8, !tbaa !283
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv130
  %i.er = load float, ptr %i.eq, align 4, !tbaa !26
  store float %i.er, ptr %i.k, align 8, !tbaa !284
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv130
  %i.et = load float, ptr %i.es, align 4, !tbaa !26
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv130
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !26
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv130
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !26
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv130
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !26
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv130
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !26
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv130
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !26
  %i.fe = call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl7textureEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_13TextureOpt_v2EffffffiPfS9_S9_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %15, float noundef %i.et, float noundef %i.ev, float noundef %i.ex, float noundef %i.ez, float noundef %i.fb, float noundef %i.fd, i32 noundef %11, ptr noundef nonnull %i.ax, ptr noundef nonnull %i.az, ptr noundef nonnull %i.ba)
  br i1 %i.eg, label %.epil.preheader, label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %.lr.ph.us.new
  %indvars.iv126 = phi i64 [ %indvars.iv.next127.1, %.lr.ph.us.new ], [ 0, %.lr.ph.us ] ; 6 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.new ], [ 0, %.lr.ph.us ]
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv126
  %i.fg = load float, ptr %i.ff, align 8, !tbaa !26
  %i.fh = shl nsw i64 %indvars.iv126, 4
  %i.fi = add nuw nsw i64 %i.fh, %indvars.iv130   ; 3 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %i.fi
  store float %i.fg, ptr %i.fj, align 4, !tbaa !26
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv126
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !26
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %i.fi
  store float %i.fl, ptr %i.fm, align 4, !tbaa !26
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv126
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !26
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %i.fi
  store float %i.fo, ptr %i.fp, align 4, !tbaa !26
  %indvars.iv.next127 = or disjoint i64 %indvars.iv126, 1 ; 4 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.next127
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !26
  %i.fs = shl nsw i64 %indvars.iv.next127, 4
  %i.ft = add nuw nsw i64 %i.fs, %indvars.iv130   ; 3 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %i.ft
  store float %i.fr, ptr %i.fu, align 4, !tbaa !26
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next127
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !26
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %i.ft
  store float %i.fw, ptr %i.fx, align 4, !tbaa !26
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next127
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !26
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %i.ft
  store float %i.fz, ptr %i.ga, align 4, !tbaa !26
  %indvars.iv.next127.1 = add nuw nsw i64 %indvars.iv126, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit105_crit_edge.us.loopexit.unr-lcssa, label %.lr.ph.us.new, !llvm.loop !288

..loopexit105_crit_edge.us.loopexit.unr-lcssa:    ; preds = %.lr.ph.us.new
  br i1 %lcmp.mod.not, label %..loopexit105_crit_edge.us.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit105_crit_edge.us.loopexit.unr-lcssa, %.lr.ph.us
  %indvars.iv126.epil.init = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next127.1, %..loopexit105_crit_edge.us.loopexit.unr-lcssa ] ; 4 uses
  call void @llvm.assume(i1 %lcmp.mod156)
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv126.epil.init
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !26
  %i.gd = shl nsw i64 %indvars.iv126.epil.init, 4
  %i.ge = add nuw nsw i64 %i.gd, %indvars.iv130   ; 3 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %i.ge
  store float %i.gc, ptr %i.gf, align 4, !tbaa !26
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv126.epil.init
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !26
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %i.ge
  store float %i.gh, ptr %i.gi, align 4, !tbaa !26
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv126.epil.init
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !26
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %i.ge
  store float %i.gk, ptr %i.gl, align 4, !tbaa !26
  br label %..loopexit105_crit_edge.us.loopexit

..loopexit105_crit_edge.us.loopexit:              ; preds = %..loopexit105_crit_edge.us.loopexit.unr-lcssa, %.epil.preheader
  %i.gm = select i1 %i.fe, i1 %.099110.us116, i1 false
  br label %..loopexit105_crit_edge.us

..loopexit105_crit_edge.us:                       ; preds = %..loopexit105_crit_edge.us.loopexit, %.split.split.us
  %.1.us119 = phi i1 [ %.099110.us116, %.split.split.us ], [ %i.gm, %..loopexit105_crit_edge.us.loopexit ] ; 2 uses
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %i.gn = shl i64 %.0100109.us117, 1
  %exitcond132.not = icmp eq i64 %indvars.iv.next131, 16
  br i1 %exitcond132.not, label %.split114.us, label %.split.split.us, !llvm.loop !287

.split114.us:                                     ; preds = %..loopexit105_crit_edge.us, %..loopexit_crit_edge.us.us, %bb.e, %bb.d
  %.us-phi = phi i1 [ %.1.us, %bb.d ], [ %.1, %bb.e ], [ %.1.us.us, %..loopexit_crit_edge.us.us ], [ %.1.us119, %..loopexit105_crit_edge.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #3
  ret i1 %.us-phi

.split.split:                                     ; preds = %.split.split.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.split.split.preheader ], [ %indvars.iv.next, %bb.e ] ; 12 uses
  %.099110 = phi i1 [ true, %.split.split.preheader ], [ %.1, %bb.e ] ; 2 uses
  %.0100109 = phi i64 [ 1, %.split.split.preheader ], [ %i.hn, %bb.e ] ; 2 uses
  %i.go = and i64 %.0100109, %4
  %.not103 = icmp eq i64 %i.go, 0
  br i1 %.not103, label %bb.e, label %.loopexit105

.loopexit105:                                     ; preds = %.split.split
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !26
  store float %i.gq, ptr %i.e, align 8, !tbaa !280
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !26
  store float %i.gs, ptr %i.f, align 4, !tbaa !281
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !26
  store float %i.gu, ptr %i.g, align 4, !tbaa !282
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !26
  store float %i.gw, ptr %i.h, align 8, !tbaa !283
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !26
  store float %i.gy, ptr %i.k, align 8, !tbaa !284
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !26
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !26
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv
  %i.he = load float, ptr %i.hd, align 4, !tbaa !26
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !26
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !26
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !26
  %i.hl = call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl7textureEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_13TextureOpt_v2EffffffiPfS9_S9_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %15, float noundef %i.ha, float noundef %i.hc, float noundef %i.he, float noundef %i.hg, float noundef %i.hi, float noundef %i.hk, i32 noundef %11, ptr noundef %i.dz, ptr noundef %i.ea, ptr noundef %i.eb)
  %i.hm = select i1 %i.hl, i1 %.099110, i1 false
  br label %bb.e

bb.e:                                             ; preds = %.loopexit105, %.split.split
  %.1 = phi i1 [ %.099110, %.split.split ], [ %i.hm, %.loopexit105 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hn = shl i64 %.0100109, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %.split114.us, label %.split.split, !llvm.loop !287
}

; Function Attrs: mustprogress uwtable
define void @_ZNK11OpenImageIO4v3_113TextureSystem16resolve_filenameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !92, !noalias !289
  tail call void @_ZNK11OpenImageIO4v3_114ImageCacheImpl16resolve_filenameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 64 dereferenceable(25240) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK11OpenImageIO4v3_117TextureSystemImpl16resolve_filenameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(188) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92
  tail call void @_ZNK11OpenImageIO4v3_114ImageCacheImpl16resolve_filenameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 64 dereferenceable(25240) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_113TextureSystem16get_texture_infoENS0_7ustringEiS2_NS0_8TypeDescEPv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr %1, i32 noundef %2, ptr %3, i64 %4, ptr noundef %5) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.c = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl16get_texture_infoENS0_7ustringEiS2_NS0_8TypeDescEPv(ptr noundef nonnull align 8 dereferenceable(188) %i.b, ptr %1, i32 noundef %2, ptr %3, i64 %4, ptr noundef %5)
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl16get_texture_infoENS0_7ustringEiS2_NS0_8TypeDescEPv(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr %1, i32 noundef %2, ptr %3, i64 %4, ptr noundef %5) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92
  %i.c = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_114ImageCacheImpl14get_image_infoENS0_7ustringEiiS2_NS0_8TypeDescEPv(ptr noundef nonnull align 64 dereferenceable(25240) %i.b, ptr %1, i32 noundef %2, i32 noundef 0, ptr %3, i64 %4, ptr noundef %5) ; 2 uses
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #3
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !92
  call void @_ZNK11OpenImageIO4v3_114ImageCacheImpl8geterrorB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 64 dereferenceable(25240) %i.d, i1 noundef zeroext true)
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !107
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNK11OpenImageIO4v3_117TextureSystemImpl5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull @.str.53, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %6, align 8, !tbaa !30     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.j, align 8, !tbaa !34
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #3
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.n = load ptr, ptr %6, align 8, !tbaa !30     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.e
  %i.q = load i64, ptr %i.o, align 8, !tbaa !34
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #3
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %bb.a
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_113TextureSystem16get_texture_infoEPNS1_13TextureHandleEPNS1_9PerthreadEiNS0_7ustringENS0_8TypeDescEPv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr %4, i64 %5, ptr noundef %6) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.c = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl16get_texture_infoEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadEiNS0_7ustringENS0_8TypeDescEPv(ptr noundef nonnull align 8 dereferenceable(188) %i.b, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr %4, i64 %5, ptr noundef %6)
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl16get_texture_infoEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadEiNS0_7ustringENS0_8TypeDescEPv(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr %4, i64 %5, ptr noundef %6) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92
  %i.c = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_114ImageCacheImpl14get_image_infoEPNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoEiiNS0_7ustringENS0_8TypeDescEPv(ptr noundef nonnull align 64 dereferenceable(25240) %i.b, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 0, ptr %4, i64 %5, ptr noundef %6) ; 2 uses
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #3
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !92
  call void @_ZNK11OpenImageIO4v3_114ImageCacheImpl8geterrorB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 64 dereferenceable(25240) %i.d, i1 noundef zeroext true)
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !107
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNK11OpenImageIO4v3_117TextureSystemImpl5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull @.str.53, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %7, align 8, !tbaa !30     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.j, align 8, !tbaa !34
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #3
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.n = load ptr, ptr %7, align 8, !tbaa !30     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.e
  %i.q = load i64, ptr %i.o, align 8, !tbaa !34
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #3
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %bb.a
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_113TextureSystem13get_imagespecENS0_7ustringERNS0_9ImageSpecEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(160) %2, i32 noundef %3) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.c = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl13get_imagespecENS0_7ustringERNS0_9ImageSpecEi(ptr noundef nonnull align 8 dereferenceable(188) %i.b, ptr %1, ptr noundef nonnull align 8 dereferenceable(160) %2, i32 noundef %3)
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl13get_imagespecENS0_7ustringERNS0_9ImageSpecEi(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(160) %2, i32 noundef %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92
  %i.c = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_114ImageCacheImpl13get_imagespecENS0_7ustringERNS0_9ImageSpecEi(ptr noundef nonnull align 64 dereferenceable(25240) %i.b, ptr %1, ptr noundef nonnull align 8 dereferenceable(160) %2, i32 noundef %3) ; 2 uses
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #3
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !92
  call void @_ZNK11OpenImageIO4v3_114ImageCacheImpl8geterrorB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 64 dereferenceable(25240) %i.d, i1 noundef zeroext true)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !107
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNK11OpenImageIO4v3_117TextureSystemImpl5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull @.str.53, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %4, align 8, !tbaa !30     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_117TextureSystemImpl14sample_bicubicEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_:bb.a
  %i.nv = call noundef zeroext i1 @_ZN11OpenImageIO4v3_114ImageCacheImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb(ptr noundef nonnull align 64 dereferenceable(25240) %i.nu, ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef %6, i1 noundef zeroext %i.nt)
  br i1 %i.nv, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.nw = load ptr, ptr %i.dr, align 8, !tbaa !92
  %i.nx = call noundef zeroext i1 @_ZNK11OpenImageIO4v3_114ImageCacheImpl9has_errorEv(ptr noundef nonnull align 64 dereferenceable(25240) %i.nw)
  br i1 %i.nx, label %bb.w, label %.loopexit2409

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #3
  %i.ny = load ptr, ptr %i.dr, align 8, !tbaa !92
  call void @_ZNK11OpenImageIO4v3_114ImageCacheImpl8geterrorB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %32, ptr noundef nonnull align 64 dereferenceable(25240) %i.ny, i1 noundef zeroext true)
  invoke void @_ZNK11OpenImageIO4v3_117TextureSystemImpl5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull @.str.53, ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.nz = load ptr, ptr %32, align 8, !tbaa !30   ; 2 uses
  %i.oa = icmp eq ptr %i.nz, %i.ee
  br i1 %i.oa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.x
  %i.ob = load i64, ptr %i.ee, align 8, !tbaa !34
  %i.oc = add i64 %i.ob, 1
  call void @_ZdlPvm(ptr noundef %i.nz, i64 noundef %i.oc) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #3
  br label %.loopexit2409

bb.y:                                             ; preds = %bb.w
  %i.od = landingpad { ptr, i32 }
          cleanup
  %i.oe = load ptr, ptr %32, align 8, !tbaa !30   ; 2 uses
  %i.of = icmp eq ptr %i.oe, %i.ee
  br i1 %i.of, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1139: ; preds = %bb.y
  %i.og = load i64, ptr %i.ee, align 8, !tbaa !34
  %i.oh = add i64 %i.og, 1
  call void @_ZdlPvm(ptr noundef %i.oe, i64 noundef %i.oh) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1141: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1139
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #3
  br label %bb.cf

bb.z:                                             ; preds = %bb.u
  %i.oi = load ptr, ptr %i.dt, align 8, !tbaa !326 ; 4 uses
  %.not2164 = icmp eq ptr %i.oi, null
  br i1 %.not2164, label %.loopexit2409, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 68
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !493
  %i.ol = sext i32 %i.ok to i64
  %i.om = sext i32 %.0333 to i64
  %i.on = getelementptr inbounds nuw i8, ptr %i.oi, i64 72
  %i.oo = load i32, ptr %i.on, align 8, !tbaa !481
  %i.op = sext i32 %i.oo to i64
  %i.oq = mul nsw i64 %i.op, %i.om
  %i.or = sext i32 %.0332 to i64
  %i.os = add nsw i64 %i.oq, %i.or
  %i.ot = mul i64 %i.os, %i.ol
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oi, i64 48
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !108
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.ot
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 %i.dc ; 46 uses
  switch i8 %i.p, label %.preheader2184 [
    i8 2, label %.preheader2186
    i8 4, label %.preheader2180
    i8 10, label %.preheader2181
  ]

.preheader2186:                                   ; preds = %bb.aa
  %i.oy = load <4 x float>, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_17u8scaleE.0, align 16, !tbaa !34 ; 4 uses
  %i.oz = load i32, ptr %i.aw, align 4, !tbaa !325
  %i.pa = mul i32 %i.oz, %i.cz
  %i.pb = sext i32 %i.pa to i64
  %invariant.gep2412 = getelementptr i8, ptr %i.ox, i64 %i.eo
  br label %.preheader2179

.preheader2184:                                   ; preds = %bb.aa
  %i.pc = load i32, ptr %i.aw, align 4, !tbaa !325
  %i.pd = mul i32 %i.pc, %i.cz
  %i.pe = sext i32 %i.pd to i64                   ; 4 uses
  %i.pf = load <4 x float>, ptr %i.ox, align 1, !tbaa !34
  store <4 x float> %i.pf, ptr %31, align 16, !tbaa !34
  %i.pg = getelementptr inbounds i8, ptr %i.ox, i64 %i.eo
  %i.ph = load <4 x float>, ptr %i.pg, align 1, !tbaa !34
  store <4 x float> %i.ph, ptr %i.ej, align 16, !tbaa !34
  %i.pi = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2323.1
  %i.pj = load <4 x float>, ptr %i.pi, align 1, !tbaa !34
  store <4 x float> %i.pj, ptr %i.ek, align 16, !tbaa !34
  %i.pk = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2323.2
  %i.pl = load <4 x float>, ptr %i.pk, align 1, !tbaa !34
  store <4 x float> %i.pl, ptr %i.el, align 16, !tbaa !34
  %i.pm = getelementptr inbounds i8, ptr %i.ox, i64 %i.pe
  %i.pn = load <4 x float>, ptr %i.pm, align 1, !tbaa !34
  store <4 x float> %i.pn, ptr %i.eg, align 16, !tbaa !34
  %indvars.iv.next2323.12334 = add nsw i64 %i.pe, %i.eo ; 2 uses
  %i.po = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2323.12334
  %i.pp = load <4 x float>, ptr %i.po, align 1, !tbaa !34
  store <4 x float> %i.pp, ptr %i.ep, align 16, !tbaa !34
  %indvars.iv.next2323.1.1 = add nsw i64 %indvars.iv.next2323.12334, %i.eo ; 2 uses
  %i.pq = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2323.1.1
  %i.pr = load <4 x float>, ptr %i.pq, align 1, !tbaa !34
  store <4 x float> %i.pr, ptr %i.eq, align 16, !tbaa !34
  %i.ps = getelementptr i8, ptr %i.ox, i64 %indvars.iv.next2323.1.1
  %i.pt = getelementptr i8, ptr %i.ps, i64 %i.eo
  %i.pu = load <4 x float>, ptr %i.pt, align 1, !tbaa !34
  store <4 x float> %i.pu, ptr %i.er, align 16, !tbaa !34
  %indvars.iv.next2321.1 = shl nsw i64 %i.pe, 1   ; 2 uses
  %i.pv = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2321.1
  %i.pw = load <4 x float>, ptr %i.pv, align 1, !tbaa !34
  store <4 x float> %i.pw, ptr %i.eh, align 16, !tbaa !34
  %indvars.iv.next2323.22335 = add nsw i64 %indvars.iv.next2321.1, %i.eo ; 2 uses
  %i.px = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2323.22335
  %i.py = load <4 x float>, ptr %i.px, align 1, !tbaa !34
  store <4 x float> %i.py, ptr %i.es, align 16, !tbaa !34
  %indvars.iv.next2323.1.2 = add nsw i64 %indvars.iv.next2323.22335, %i.eo ; 2 uses
  %i.pz = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2323.1.2
  %i.qa = load <4 x float>, ptr %i.pz, align 1, !tbaa !34
  store <4 x float> %i.qa, ptr %i.et, align 16, !tbaa !34
  %i.qb = getelementptr i8, ptr %i.ox, i64 %indvars.iv.next2323.1.2
  %i.qc = getelementptr i8, ptr %i.qb, i64 %i.eo
  %i.qd = load <4 x float>, ptr %i.qc, align 1, !tbaa !34
  store <4 x float> %i.qd, ptr %i.eu, align 16, !tbaa !34
  %indvars.iv.next2321.2 = mul nsw i64 %i.pe, 3   ; 2 uses
  %i.qe = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2321.2
  %i.qf = load <4 x float>, ptr %i.qe, align 1, !tbaa !34
  store <4 x float> %i.qf, ptr %i.ei, align 16, !tbaa !34
  %indvars.iv.next2323.3 = add nsw i64 %indvars.iv.next2321.2, %i.eo ; 2 uses
  %i.qg = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2323.3
  %i.qh = load <4 x float>, ptr %i.qg, align 1, !tbaa !34
  store <4 x float> %i.qh, ptr %i.ev, align 16, !tbaa !34
  %indvars.iv.next2323.1.3 = add nsw i64 %indvars.iv.next2323.3, %i.eo ; 2 uses
  %i.qi = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2323.1.3
  %i.qj = load <4 x float>, ptr %i.qi, align 1, !tbaa !34
  store <4 x float> %i.qj, ptr %i.ew, align 16, !tbaa !34
  %i.qk = getelementptr i8, ptr %i.ox, i64 %indvars.iv.next2323.1.3
  %i.ql = getelementptr i8, ptr %i.qk, i64 %i.eo
  %i.qm = load <4 x float>, ptr %i.ql, align 1, !tbaa !34
  store <4 x float> %i.qm, ptr %i.ex, align 16, !tbaa !34
  br label %.loopexit2185

.preheader2179:                                   ; preds = %.preheader2186, %.preheader2179
  %indvars.iv2312 = phi i64 [ 0, %.preheader2186 ], [ %indvars.iv.next2313, %.preheader2179 ] ; 2 uses
  %indvars.iv2304 = phi i64 [ 0, %.preheader2186 ], [ %indvars.iv.next2305, %.preheader2179 ] ; 3 uses
  %i.qn = getelementptr inbounds nuw [64 x i8], ptr %31, i64 %indvars.iv2312 ; 4 uses
  %i.qo = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv2304
  %i.qp = load float, ptr %i.qo, align 1, !tbaa !34
  %i.qq = insertelement <4 x float> poison, float %i.qp, i64 0
  %i.qr = bitcast <4 x float> %i.qq to <16 x i8>
  %i.qs = shufflevector <16 x i8> %i.qr, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qt = bitcast <16 x i8> %i.qs to <8 x i16>
  %i.qu = shufflevector <8 x i16> %i.qt, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.qv = bitcast <8 x i16> %i.qu to <4 x i32>
  %i.qw = uitofp nneg <4 x i32> %i.qv to <4 x float>
  %i.qx = fmul <4 x float> %i.oy, %i.qw
  store <4 x float> %i.qx, ptr %i.qn, align 16
  %indvars.iv.next2307 = add nsw i64 %indvars.iv2304, %i.eo ; 2 uses
  %i.qy = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2307
  %i.qz = load float, ptr %i.qy, align 1, !tbaa !34
  %i.ra = insertelement <4 x float> poison, float %i.qz, i64 0
  %i.rb = bitcast <4 x float> %i.ra to <16 x i8>
  %i.rc = shufflevector <16 x i8> %i.rb, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rd = bitcast <16 x i8> %i.rc to <8 x i16>
  %i.re = shufflevector <8 x i16> %i.rd, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rf = bitcast <8 x i16> %i.re to <4 x i32>
  %i.rg = uitofp nneg <4 x i32> %i.rf to <4 x float>
  %i.rh = fmul <4 x float> %i.oy, %i.rg
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qn, i64 16
  store <4 x float> %i.rh, ptr %i.ri, align 16
  %indvars.iv.next2307.1 = add nsw i64 %indvars.iv.next2307, %i.eo ; 2 uses
  %i.rj = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2307.1
  %i.rk = load float, ptr %i.rj, align 1, !tbaa !34
  %i.rl = insertelement <4 x float> poison, float %i.rk, i64 0
  %i.rm = bitcast <4 x float> %i.rl to <16 x i8>
  %i.rn = shufflevector <16 x i8> %i.rm, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ro = bitcast <16 x i8> %i.rn to <8 x i16>
  %i.rp = shufflevector <8 x i16> %i.ro, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rq = bitcast <8 x i16> %i.rp to <4 x i32>
  %i.rr = uitofp nneg <4 x i32> %i.rq to <4 x float>
  %i.rs = fmul <4 x float> %i.oy, %i.rr
  %i.rt = getelementptr inbounds nuw i8, ptr %i.qn, i64 32
  store <4 x float> %i.rs, ptr %i.rt, align 16
  %gep2413 = getelementptr i8, ptr %invariant.gep2412, i64 %indvars.iv.next2307.1
  %i.ru = load float, ptr %gep2413, align 1, !tbaa !34
  %i.rv = insertelement <4 x float> poison, float %i.ru, i64 0
  %i.rw = bitcast <4 x float> %i.rv to <16 x i8>
  %i.rx = shufflevector <16 x i8> %i.rw, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ry = bitcast <16 x i8> %i.rx to <8 x i16>
  %i.rz = shufflevector <8 x i16> %i.ry, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sa = bitcast <8 x i16> %i.rz to <4 x i32>
  %i.sb = uitofp nneg <4 x i32> %i.sa to <4 x float>
  %i.sc = fmul <4 x float> %i.oy, %i.sb
  %i.sd = getelementptr inbounds nuw i8, ptr %i.qn, i64 48
  store <4 x float> %i.sc, ptr %i.sd, align 16
  %indvars.iv.next2313 = add nuw nsw i64 %indvars.iv2312, 1 ; 2 uses
  %indvars.iv.next2305 = add i64 %indvars.iv2304, %i.pb
  %exitcond2317.not = icmp eq i64 %indvars.iv.next2313, 4
  br i1 %exitcond2317.not, label %.loopexit2185, label %.preheader2179, !llvm.loop !519

.preheader2180:                                   ; preds = %bb.aa
  %invariant.gep2410 = getelementptr i8, ptr %i.ox, i64 %i.eo ; 4 uses
  %i.se = load i32, ptr %i.aw, align 4, !tbaa !325
  %i.sf = mul i32 %i.se, %i.cz
  %i.sg = sext i32 %i.sf to i64                   ; 4 uses
  %i.sh = load <4 x float>, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_18u16scaleE.0, align 16, !tbaa !34 ; 16 uses
  %i.si = load <4 x i16>, ptr %i.ox, align 2, !tbaa !489
  %i.sj = uitofp <4 x i16> %i.si to <4 x float>
  %i.sk = fmul <4 x float> %i.sh, %i.sj
  store <4 x float> %i.sk, ptr %31, align 16
  %i.sl = getelementptr inbounds i8, ptr %i.ox, i64 %i.eo
  %i.sm = load <4 x i16>, ptr %i.sl, align 2, !tbaa !489
  %i.sn = uitofp <4 x i16> %i.sm to <4 x float>
  %i.so = fmul <4 x float> %i.sh, %i.sn
  store <4 x float> %i.so, ptr %i.fy, align 16
  %i.sp = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2291.1
  %i.sq = load <4 x i16>, ptr %i.sp, align 2, !tbaa !489
  %i.sr = uitofp <4 x i16> %i.sq to <4 x float>
  %i.ss = fmul <4 x float> %i.sh, %i.sr
  store <4 x float> %i.ss, ptr %i.fz, align 16
  %gep2411 = getelementptr i8, ptr %invariant.gep2410, i64 %indvars.iv.next2291.1
  %i.st = load <4 x i16>, ptr %gep2411, align 2, !tbaa !489
  %i.su = uitofp <4 x i16> %i.st to <4 x float>
  %i.sv = fmul <4 x float> %i.sh, %i.su
  store <4 x float> %i.sv, ptr %i.ga, align 16
  %i.sw = getelementptr inbounds i8, ptr %i.ox, i64 %i.sg
  %i.sx = load <4 x i16>, ptr %i.sw, align 2, !tbaa !489
  %i.sy = uitofp <4 x i16> %i.sx to <4 x float>
  %i.sz = fmul <4 x float> %i.sh, %i.sy
  store <4 x float> %i.sz, ptr %i.gb, align 16
  %indvars.iv.next2291.12431 = add nsw i64 %i.sg, %i.eo ; 2 uses
  %i.ta = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2291.12431
  %i.tb = load <4 x i16>, ptr %i.ta, align 2, !tbaa !489
  %i.tc = uitofp <4 x i16> %i.tb to <4 x float>
  %i.td = fmul <4 x float> %i.sh, %i.tc
  store <4 x float> %i.td, ptr %i.gc, align 16
  %indvars.iv.next2291.1.1 = add nsw i64 %indvars.iv.next2291.12431, %i.eo ; 2 uses
  %i.te = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2291.1.1
  %i.tf = load <4 x i16>, ptr %i.te, align 2, !tbaa !489
  %i.tg = uitofp <4 x i16> %i.tf to <4 x float>
  %i.th = fmul <4 x float> %i.sh, %i.tg
  store <4 x float> %i.th, ptr %i.gd, align 16
  %gep2411.1 = getelementptr i8, ptr %invariant.gep2410, i64 %indvars.iv.next2291.1.1
  %i.ti = load <4 x i16>, ptr %gep2411.1, align 2, !tbaa !489
  %i.tj = uitofp <4 x i16> %i.ti to <4 x float>
  %i.tk = fmul <4 x float> %i.sh, %i.tj
  store <4 x float> %i.tk, ptr %i.ge, align 16
  %indvars.iv.next2289.1 = shl nsw i64 %i.sg, 1   ; 2 uses
  %i.tl = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2289.1
  %i.tm = load <4 x i16>, ptr %i.tl, align 2, !tbaa !489
  %i.tn = uitofp <4 x i16> %i.tm to <4 x float>
  %i.to = fmul <4 x float> %i.sh, %i.tn
  store <4 x float> %i.to, ptr %i.gf, align 16
  %indvars.iv.next2291.2 = add nsw i64 %indvars.iv.next2289.1, %i.eo ; 2 uses
  %i.tp = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2291.2
  %i.tq = load <4 x i16>, ptr %i.tp, align 2, !tbaa !489
  %i.tr = uitofp <4 x i16> %i.tq to <4 x float>
  %i.ts = fmul <4 x float> %i.sh, %i.tr
  store <4 x float> %i.ts, ptr %i.gg, align 16
  %indvars.iv.next2291.1.2 = add nsw i64 %indvars.iv.next2291.2, %i.eo ; 2 uses
  %i.tt = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2291.1.2
  %i.tu = load <4 x i16>, ptr %i.tt, align 2, !tbaa !489
  %i.tv = uitofp <4 x i16> %i.tu to <4 x float>
  %i.tw = fmul <4 x float> %i.sh, %i.tv
  store <4 x float> %i.tw, ptr %i.gh, align 16
  %gep2411.2 = getelementptr i8, ptr %invariant.gep2410, i64 %indvars.iv.next2291.1.2
  %i.tx = load <4 x i16>, ptr %gep2411.2, align 2, !tbaa !489
  %i.ty = uitofp <4 x i16> %i.tx to <4 x float>
  %i.tz = fmul <4 x float> %i.sh, %i.ty
  store <4 x float> %i.tz, ptr %i.gi, align 16
  %indvars.iv.next2289.2 = mul nsw i64 %i.sg, 3   ; 2 uses
  %i.ua = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2289.2
  %i.ub = load <4 x i16>, ptr %i.ua, align 2, !tbaa !489
  %i.uc = uitofp <4 x i16> %i.ub to <4 x float>
  %i.ud = fmul <4 x float> %i.sh, %i.uc
  store <4 x float> %i.ud, ptr %i.gj, align 16
  %indvars.iv.next2291.3 = add nsw i64 %indvars.iv.next2289.2, %i.eo ; 2 uses
  %i.ue = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2291.3
  %i.uf = load <4 x i16>, ptr %i.ue, align 2, !tbaa !489
  %i.ug = uitofp <4 x i16> %i.uf to <4 x float>
  %i.uh = fmul <4 x float> %i.sh, %i.ug
  store <4 x float> %i.uh, ptr %i.gk, align 16
  %indvars.iv.next2291.1.3 = add nsw i64 %indvars.iv.next2291.3, %i.eo ; 2 uses
  %i.ui = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2291.1.3
  %i.uj = load <4 x i16>, ptr %i.ui, align 2, !tbaa !489
  %i.uk = uitofp <4 x i16> %i.uj to <4 x float>
  %i.ul = fmul <4 x float> %i.sh, %i.uk
  store <4 x float> %i.ul, ptr %i.gl, align 16
  %gep2411.3 = getelementptr i8, ptr %invariant.gep2410, i64 %indvars.iv.next2291.1.3
  %i.um = load <4 x i16>, ptr %gep2411.3, align 2, !tbaa !489
  %i.un = uitofp <4 x i16> %i.um to <4 x float>
  %i.uo = fmul <4 x float> %i.sh, %i.un
  store <4 x float> %i.uo, ptr %i.gm, align 16
  br label %.loopexit2185

.preheader2181:                                   ; preds = %bb.aa
  %invariant.gep = getelementptr i8, ptr %i.ox, i64 %i.eo ; 4 uses
  %i.up = load i32, ptr %i.aw, align 4, !tbaa !325
  %i.uq = mul i32 %i.up, %i.cz
  %i.ur = sext i32 %i.uq to i64                   ; 4 uses
  %i.us = load <4 x i16>, ptr %i.ox, align 2, !tbaa !489 ; 2 uses
  %i.ut = and <4 x i16> %i.us, splat (i16 32767)  ; 2 uses
  %i.uu = zext nneg <4 x i16> %i.ut to <4 x i32>
  %i.uv = shl nuw nsw <4 x i32> %i.uu, splat (i32 13)
  %i.uw = bitcast <4 x i32> %i.uv to <4 x float>
  %i.ux = fmul nnan <4 x float> %i.uw, splat (float f0x77800000)
  %i.uy = icmp samesign ugt <4 x i16> %i.ut, splat (i16 31743)
  %i.uz = select <4 x i1> %i.uy, <4 x i32> splat (i32 2139095040), <4 x i32> zeroinitializer
  %.signext2424 = sext <4 x i16> %i.us to <4 x i32>
  %i.va = and <4 x i32> %.signext2424, splat (i32 -2147483648)
  %i.vb = or disjoint <4 x i32> %i.uz, %i.va
  %i.vc = bitcast <4 x float> %i.ux to <4 x i32>
  %i.vd = or <4 x i32> %i.vb, %i.vc
  store <4 x i32> %i.vd, ptr %31, align 16, !tbaa !34
  %i.ve = getelementptr inbounds i8, ptr %i.ox, i64 %i.eo
  %i.vf = load <4 x i16>, ptr %i.ve, align 2, !tbaa !489 ; 2 uses
  %i.vg = and <4 x i16> %i.vf, splat (i16 32767)  ; 2 uses
  %i.vh = zext nneg <4 x i16> %i.vg to <4 x i32>
  %i.vi = shl nuw nsw <4 x i32> %i.vh, splat (i32 13)
  %i.vj = bitcast <4 x i32> %i.vi to <4 x float>
  %i.vk = fmul nnan <4 x float> %i.vj, splat (float f0x77800000)
  %i.vl = icmp samesign ugt <4 x i16> %i.vg, splat (i16 31743)
  %i.vm = select <4 x i1> %i.vl, <4 x i32> splat (i32 2139095040), <4 x i32> zeroinitializer
  %.signext2425 = sext <4 x i16> %i.vf to <4 x i32>
  %i.vn = and <4 x i32> %.signext2425, splat (i32 -2147483648)
  %i.vo = or disjoint <4 x i32> %i.vm, %i.vn
  %i.vp = bitcast <4 x float> %i.vk to <4 x i32>
  %i.vq = or <4 x i32> %i.vo, %i.vp
  store <4 x i32> %i.vq, ptr %i.fj, align 16, !tbaa !34
  %i.vr = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2275.1
  %i.vs = load <4 x i16>, ptr %i.vr, align 2, !tbaa !489 ; 2 uses
  %i.vt = and <4 x i16> %i.vs, splat (i16 32767)  ; 2 uses
  %i.vu = zext nneg <4 x i16> %i.vt to <4 x i32>
  %i.vv = shl nuw nsw <4 x i32> %i.vu, splat (i32 13)
  %i.vw = bitcast <4 x i32> %i.vv to <4 x float>
  %i.vx = fmul nnan <4 x float> %i.vw, splat (float f0x77800000)
  %i.vy = icmp samesign ugt <4 x i16> %i.vt, splat (i16 31743)
  %i.vz = select <4 x i1> %i.vy, <4 x i32> splat (i32 2139095040), <4 x i32> zeroinitializer
  %.signext2426 = sext <4 x i16> %i.vs to <4 x i32>
  %i.wa = and <4 x i32> %.signext2426, splat (i32 -2147483648)
  %i.wb = or disjoint <4 x i32> %i.vz, %i.wa
  %i.wc = bitcast <4 x float> %i.vx to <4 x i32>
  %i.wd = or <4 x i32> %i.wb, %i.wc
  store <4 x i32> %i.wd, ptr %i.fk, align 16, !tbaa !34
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next2275.1
  %i.we = load <4 x i16>, ptr %gep, align 2, !tbaa !489 ; 2 uses
  %i.wf = and <4 x i16> %i.we, splat (i16 32767)  ; 2 uses
  %i.wg = zext nneg <4 x i16> %i.wf to <4 x i32>
  %i.wh = shl nuw nsw <4 x i32> %i.wg, splat (i32 13)
  %i.wi = bitcast <4 x i32> %i.wh to <4 x float>
  %i.wj = fmul nnan <4 x float> %i.wi, splat (float f0x77800000)
  %i.wk = icmp samesign ugt <4 x i16> %i.wf, splat (i16 31743)
  %i.wl = select <4 x i1> %i.wk, <4 x i32> splat (i32 2139095040), <4 x i32> zeroinitializer
  %.signext2427 = sext <4 x i16> %i.we to <4 x i32>
  %i.wm = and <4 x i32> %.signext2427, splat (i32 -2147483648)
  %i.wn = or disjoint <4 x i32> %i.wl, %i.wm
  %i.wo = bitcast <4 x float> %i.wj to <4 x i32>
  %i.wp = or <4 x i32> %i.wn, %i.wo
  store <4 x i32> %i.wp, ptr %i.fl, align 16, !tbaa !34
  %i.wq = getelementptr inbounds i8, ptr %i.ox, i64 %i.ur
  %i.wr = load <4 x i16>, ptr %i.wq, align 2, !tbaa !489 ; 2 uses
  %i.ws = and <4 x i16> %i.wr, splat (i16 32767)  ; 2 uses
  %i.wt = zext nneg <4 x i16> %i.ws to <4 x i32>
  %i.wu = shl nuw nsw <4 x i32> %i.wt, splat (i32 13)
  %i.wv = bitcast <4 x i32> %i.wu to <4 x float>
  %i.ww = fmul nnan <4 x float> %i.wv, splat (float f0x77800000)
  %i.wx = icmp samesign ugt <4 x i16> %i.ws, splat (i16 31743)
  %i.wy = select <4 x i1> %i.wx, <4 x i32> splat (i32 2139095040), <4 x i32> zeroinitializer
  %.signext2424.1 = sext <4 x i16> %i.wr to <4 x i32>
  %i.wz = and <4 x i32> %.signext2424.1, splat (i32 -2147483648)
  %i.xa = or disjoint <4 x i32> %i.wy, %i.wz
  %i.xb = bitcast <4 x float> %i.ww to <4 x i32>
  %i.xc = or <4 x i32> %i.xa, %i.xb
  store <4 x i32> %i.xc, ptr %i.fm, align 16, !tbaa !34
  %indvars.iv.next2275.12430 = add nsw i64 %i.ur, %i.eo ; 2 uses
  %i.xd = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2275.12430
  %i.xe = load <4 x i16>, ptr %i.xd, align 2, !tbaa !489 ; 2 uses
  %i.xf = and <4 x i16> %i.xe, splat (i16 32767)  ; 2 uses
  %i.xg = zext nneg <4 x i16> %i.xf to <4 x i32>
  %i.xh = shl nuw nsw <4 x i32> %i.xg, splat (i32 13)
  %i.xi = bitcast <4 x i32> %i.xh to <4 x float>
  %i.xj = fmul nnan <4 x float> %i.xi, splat (float f0x77800000)
  %i.xk = icmp samesign ugt <4 x i16> %i.xf, splat (i16 31743)
  %i.xl = select <4 x i1> %i.xk, <4 x i32> splat (i32 2139095040), <4 x i32> zeroinitializer
  %.signext2425.1 = sext <4 x i16> %i.xe to <4 x i32>
  %i.xm = and <4 x i32> %.signext2425.1, splat (i32 -2147483648)
  %i.xn = or disjoint <4 x i32> %i.xl, %i.xm
  %i.xo = bitcast <4 x float> %i.xj to <4 x i32>
  %i.xp = or <4 x i32> %i.xn, %i.xo
  store <4 x i32> %i.xp, ptr %i.fn, align 16, !tbaa !34
  %indvars.iv.next2275.1.1 = add nsw i64 %indvars.iv.next2275.12430, %i.eo ; 2 uses
  %i.xq = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv.next2275.1.1
  %i.xr = load <4 x i16>, ptr %i.xq, align 2, !tbaa !489 ; 2 uses
  %i.xs = and <4 x i16> %i.xr, splat (i16 32767)  ; 2 uses
  %i.xt = zext nneg <4 x i16> %i.xs to <4 x i32>
  %i.xu = shl nuw nsw <4 x i32> %i.xt, splat (i32 13)
  %i.xv = bitcast <4 x i32> %i.xu to <4 x float>
end_hunk_1
