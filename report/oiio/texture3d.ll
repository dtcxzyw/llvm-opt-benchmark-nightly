inline.NumInlined: 2854
inline.NumDeleted: 714
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN11OpenImageIO4v3_113TextureSystem9texture3dENS0_7ustringERNS0_18TextureOptBatch_v1EmPKfS6_S6_S6_iPfS7_S7_S7_:bb.a
  ret i1 %i.k
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl9texture3dENS0_7ustringERNS0_18TextureOptBatch_v1EmPKfS6_S6_S6_iPfS7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr %1, ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(512) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8, ptr nofree noundef writeonly captures(none) %9, ptr nofree noundef writeonly captures(address_is_null) %10, ptr nofree noundef writeonly captures(none) %11, ptr nofree noundef writeonly captures(none) %12) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.c = tail call noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl18get_perthread_infoEPNS0_23ImageCachePerThreadInfoE(ptr noundef nonnull align 64 dereferenceable(25240) %i.b, ptr noundef null) ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %_ZN11OpenImageIO4v3_117TextureSystemImpl18get_texture_handleENS0_7ustringEPNS0_13TextureSystem9PerthreadEPKNS0_13TextureOpt_v2E.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.e = tail call noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl18get_perthread_infoEPNS0_23ImageCachePerThreadInfoE(ptr noundef nonnull align 64 dereferenceable(25240) %i.d, ptr noundef null)
  br label %_ZN11OpenImageIO4v3_117TextureSystemImpl18get_texture_handleENS0_7ustringEPNS0_13TextureSystem9PerthreadEPKNS0_13TextureOpt_v2E.exit

_ZN11OpenImageIO4v3_117TextureSystemImpl18get_texture_handleENS0_7ustringEPNS0_13TextureSystem9PerthreadEPKNS0_13TextureOpt_v2E.exit: ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %i.c, %bb.a ]
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.h = tail call noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl9find_fileENS0_7ustringEPNS0_23ImageCachePerThreadInfoEPFPNS0_10ImageInputEvEPKNS0_9ImageSpecEb(ptr noundef nonnull align 64 dereferenceable(25240) %i.g, ptr %1, ptr noundef %i.f, ptr noundef null, ptr noundef null, i1 noundef zeroext false)
  %i.i = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl9texture3dEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_18TextureOptBatch_v1EmPKfSA_SA_SA_iPfSB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef %i.h, ptr noundef %i.c, ptr noundef nonnull align 64 dereferenceable(512) %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12)
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_113TextureSystem9texture3dEPNS1_13TextureHandleEPNS1_9PerthreadERNS0_18TextureOptBatch_v1EmPKfS9_S9_S9_iPfSA_SA_SA_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(512) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, i32 noundef %9, ptr nofree noundef writeonly captures(none) %10, ptr nofree noundef writeonly captures(address_is_null) %11, ptr nofree noundef writeonly captures(none) %12, ptr nofree noundef writeonly captures(none) %13) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl9texture3dEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_18TextureOptBatch_v1EmPKfSA_SA_SA_iPfSB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(188) %i.b, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 64 dereferenceable(512) %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13)
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl9texture3dEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_18TextureOptBatch_v1EmPKfSA_SA_SA_iPfSB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(512) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, i32 noundef %9, ptr nofree noundef writeonly captures(none) %10, ptr nofree noundef writeonly captures(address_is_null) %11, ptr nofree noundef writeonly captures(none) %12, ptr nofree noundef writeonly captures(none) %13) local_unnamed_addr #0 align 2 {
bb.a:
  %14 = alloca %"class.OpenImageIO::v3_1::TextureOpt_v2", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.a = getelementptr inbounds nuw i8, ptr %14, i64 20
  %i.b = getelementptr inbounds nuw i8, ptr %14, i64 21
  %i.c = getelementptr inbounds nuw i8, ptr %14, i64 22
  %i.d = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %14, i64 28 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %14, i64 36 ; 2 uses
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.d, align 8, !tbaa !156
  %i.h = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %14, i64 44 ; 2 uses
  store <2 x float> splat (float 1.000000e+00), ptr %i.h, align 8, !tbaa !156
  %i.j = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %14, i64 64
  store float -1.000000e+00, ptr %i.l, align 8, !tbaa !163
  %i.m = getelementptr inbounds nuw i8, ptr %14, i64 68
  store i32 0, ptr %i.m, align 4, !tbaa !164
  %i.n = getelementptr inbounds nuw i8, ptr %14, i64 72
  store i32 0, ptr %i.n, align 8, !tbaa !165
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 448
  %i.p = load <2 x i32>, ptr %i.o, align 64, !tbaa !3
  store <2 x i32> %i.p, ptr %14, align 8, !tbaa !3
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 456
  %i.r = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.s = load i64, ptr %i.q, align 8, !tbaa !95
  store i64 %i.s, ptr %i.r, align 8, !tbaa !95
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 464
  %i.u = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 480
  %i.w = load i32, ptr %i.v, align 32, !tbaa !166
  %i.x = trunc i32 %i.w to i8
  store i8 %i.x, ptr %i.a, align 4, !tbaa !159
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 484
  %i.z = load i32, ptr %i.y, align 4, !tbaa !168
  %i.aa = trunc i32 %i.z to i16
  store i16 %i.aa, ptr %i.c, align 2, !tbaa !169
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 488
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !170
  %i.ad = icmp ne i32 %i.ac, 0
  %i.ae = zext i1 %i.ad to i8
  store i8 %i.ae, ptr %i.b, align 1, !tbaa !171
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 492
  %i.ag = load float, ptr %i.af, align 4, !tbaa !172
  store float %i.ag, ptr %i.j, align 8, !tbaa !173
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 496
  %i.ai = load ptr, ptr %i.ah, align 16, !tbaa !174
  store ptr %i.ai, ptr %i.k, align 8, !tbaa !175
  %i.aj = load <4 x i32>, ptr %i.t, align 16, !tbaa !3
  %i.ak = trunc <4 x i32> %i.aj to <4 x i8>
  store <4 x i8> %i.ak, ptr %i.u, align 8, !tbaa !160
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.al = shl nsw i32 %9, 6
  %i.am = sext i32 %i.al to i64
  %i.an = shl nsw i64 %i.am, 2
  %i.ao = alloca i8, i64 %i.an, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.ap = phi ptr [ %i.ao, %bb.b ], [ null, %bb.a ] ; 11 uses
  %i.aq = shl nsw i32 %9, 4
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.ar ; 2 uses
  %i.at = shl nsw i32 %9, 5
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.au ; 2 uses
  %i.aw = mul nsw i32 %9, 48
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 320 ; 2 uses
  %.not128 = icmp eq ptr %11, null
  %i.be = icmp sgt i32 %9, 0                      ; 2 uses
  %wide.trip.count191 = zext i32 %9 to i64        ; 3 uses
  br i1 %.not128, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.c
  %xtraiter = and i64 %wide.trip.count191, 3      ; 3 uses
  %i.bf = icmp ult i32 %9, 4
  %unroll_iter = and i64 %wide.trip.count191, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod201 = icmp ne i64 %xtraiter, 0
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %.loopexit.us
  %indvars.iv193 = phi i64 [ %indvars.iv.next194, %.loopexit.us ], [ 0, %.split.us.preheader ] ; 11 uses
  %.0121180.us = phi i1 [ %.2.us, %.loopexit.us ], [ true, %.split.us.preheader ] ; 2 uses
  %.0122179.us = phi i64 [ %i.cn, %.loopexit.us ], [ 1, %.split.us.preheader ] ; 2 uses
  %i.bg = and i64 %.0122179.us, %4
  %.not127.us = icmp eq i64 %i.bg, 0
  br i1 %.not127.us, label %.loopexit.us, label %bb.d

bb.d:                                             ; preds = %.split.us
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv193
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !156
  store float %i.bi, ptr %i.d, align 8, !tbaa !176
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv193
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !156
  store float %i.bk, ptr %i.e, align 4, !tbaa !177
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv193
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !156
  store float %i.bm, ptr %i.f, align 8, !tbaa !178
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv193
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !156
  store float %i.bo, ptr %i.g, align 4, !tbaa !179
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv193
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !156
  store float %i.bq, ptr %i.h, align 8, !tbaa !180
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv193
  %i.bs = load float, ptr %i.br, align 4, !tbaa !156
  store float %i.bs, ptr %i.i, align 4, !tbaa !181
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv193
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !156
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv193
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !156
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv193
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 128
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !156
  %.sroa.0136.0.vec.insert.us = insertelement <2 x float> poison, float %i.bu, i64 0
  %.sroa.0136.4.vec.insert.us = insertelement <2 x float> %.sroa.0136.0.vec.insert.us, float %i.bx, i64 1
  %i.cb = call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl9texture3dEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_13TextureOpt_v2ENS0_9Vec3ParamIfEESA_SA_SA_iPfSB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %14, <2 x float> %.sroa.0136.4.vec.insert.us, float %i.ca, <2 x float> poison, float poison, <2 x float> poison, float poison, <2 x float> poison, float poison, i32 noundef %9, ptr noundef %i.ap, ptr noundef null, ptr noundef null, ptr noundef null)
  %i.cc = select i1 %i.cb, i1 %.0121180.us, i1 false ; 3 uses
  br i1 %i.be, label %.lr.ph176.us.preheader, label %.loopexit.us

.lr.ph176.us.preheader:                           ; preds = %bb.d
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv193 ; 5 uses
  br i1 %i.bf, label %.lr.ph176.us.epil.preheader, label %.lr.ph176.us

.lr.ph176.us:                                     ; preds = %.lr.ph176.us.preheader, %.lr.ph176.us
  %indvars.iv188 = phi i64 [ %indvars.iv.next189.3, %.lr.ph176.us ], [ 0, %.lr.ph176.us.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph176.us ], [ 0, %.lr.ph176.us.preheader ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv188
  %i.ce = load float, ptr %i.cd, align 16, !tbaa !156
  %.idx = shl nuw nsw i64 %indvars.iv188, 6
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx
  store float %i.ce, ptr %gep, align 4, !tbaa !156
  %indvars.iv.next189 = or disjoint i64 %indvars.iv188, 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next189
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !156
  %.idx.1 = shl nuw nsw i64 %indvars.iv.next189, 6
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx.1
  store float %i.cg, ptr %gep.1, align 4, !tbaa !156
  %indvars.iv.next189.1 = or disjoint i64 %indvars.iv188, 2 ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next189.1
  %i.ci = load float, ptr %i.ch, align 8, !tbaa !156
  %.idx.2 = shl nuw nsw i64 %indvars.iv.next189.1, 6
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx.2
  store float %i.ci, ptr %gep.2, align 4, !tbaa !156
  %indvars.iv.next189.2 = or disjoint i64 %indvars.iv188, 3 ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next189.2
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !156
  %.idx.3 = shl nuw nsw i64 %indvars.iv.next189.2, 6
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx.3
  store float %i.ck, ptr %gep.3, align 4, !tbaa !156
  %indvars.iv.next189.3 = add nuw nsw i64 %indvars.iv188, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.us.loopexit.unr-lcssa, label %.lr.ph176.us, !llvm.loop !182

.loopexit.us.loopexit.unr-lcssa:                  ; preds = %.lr.ph176.us
  br i1 %lcmp.mod.not, label %.loopexit.us, label %.lr.ph176.us.epil.preheader

.lr.ph176.us.epil.preheader:                      ; preds = %.loopexit.us.loopexit.unr-lcssa, %.lr.ph176.us.preheader
  %indvars.iv188.epil.init = phi i64 [ 0, %.lr.ph176.us.preheader ], [ %indvars.iv.next189.3, %.loopexit.us.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod201)
  br label %.lr.ph176.us.epil

.lr.ph176.us.epil:                                ; preds = %.lr.ph176.us.epil, %.lr.ph176.us.epil.preheader
  %indvars.iv188.epil = phi i64 [ %indvars.iv188.epil.init, %.lr.ph176.us.epil.preheader ], [ %indvars.iv.next189.epil, %.lr.ph176.us.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph176.us.epil.preheader ], [ %epil.iter.next, %.lr.ph176.us.epil ]
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv188.epil
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !156
  %.idx.epil = shl nuw nsw i64 %indvars.iv188.epil, 6
  %gep.epil = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %.idx.epil
  store float %i.cm, ptr %gep.epil, align 4, !tbaa !156
  %indvars.iv.next189.epil = add nuw nsw i64 %indvars.iv188.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.us, label %.lr.ph176.us.epil, !llvm.loop !184

.loopexit.us:                                     ; preds = %.loopexit.us.loopexit.unr-lcssa, %.lr.ph176.us.epil, %bb.d, %.split.us
  %.2.us = phi i1 [ %.0121180.us, %.split.us ], [ %i.cc, %bb.d ], [ %i.cc, %.lr.ph176.us.epil ], [ %i.cc, %.loopexit.us.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1 ; 2 uses
  %i.cn = shl nuw nsw i64 %.0122179.us, 1
  %exitcond195.not = icmp eq i64 %indvars.iv.next194, 16
  br i1 %exitcond195.not, label %.split182.us, label %.split.us, !llvm.loop !186

.split182.us:                                     ; preds = %.loopexit173, %.loopexit.us
  %.us-phi = phi i1 [ %.2.us, %.loopexit.us ], [ %.2, %.loopexit173 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  ret i1 %.us-phi

.split:                                           ; preds = %bb.c, %.loopexit173
  %indvars.iv185 = phi i64 [ %indvars.iv.next186, %.loopexit173 ], [ 0, %bb.c ] ; 11 uses
  %.0121180 = phi i1 [ %.2, %.loopexit173 ], [ true, %bb.c ] ; 2 uses
  %.0122179 = phi i64 [ %i.dz, %.loopexit173 ], [ 1, %bb.c ] ; 2 uses
  %i.co = and i64 %.0122179, %4
  %.not127 = icmp eq i64 %i.co, 0
  br i1 %.not127, label %.loopexit173, label %bb.e

bb.e:                                             ; preds = %.split
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv185
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !156
  store float %i.cq, ptr %i.d, align 8, !tbaa !176
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv185
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !156
  store float %i.cs, ptr %i.e, align 4, !tbaa !177
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv185
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !156
  store float %i.cu, ptr %i.f, align 8, !tbaa !178
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv185
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !156
  store float %i.cw, ptr %i.g, align 4, !tbaa !179
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv185
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !156
  store float %i.cy, ptr %i.h, align 8, !tbaa !180
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv185
  %i.da = load float, ptr %i.cz, align 4, !tbaa !156
  store float %i.da, ptr %i.i, align 4, !tbaa !181
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv185
  %i.dc = load float, ptr %i.db, align 4, !tbaa !156
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv185
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 64
  %i.df = load float, ptr %i.de, align 4, !tbaa !156
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv185
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 128
  %i.di = load float, ptr %i.dh, align 4, !tbaa !156
  %.sroa.0148.0.vec.insert = insertelement <2 x float> poison, float %i.dc, i64 0
  %.sroa.0148.4.vec.insert = insertelement <2 x float> %.sroa.0148.0.vec.insert, float %i.df, i64 1
  %i.dj = call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl9texture3dEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_13TextureOpt_v2ENS0_9Vec3ParamIfEESA_SA_SA_iPfSB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %14, <2 x float> %.sroa.0148.4.vec.insert, float %i.di, <2 x float> poison, float poison, <2 x float> poison, float poison, <2 x float> poison, float poison, i32 noundef %9, ptr noundef %i.ap, ptr noundef %i.as, ptr noundef %i.av, ptr noundef %i.ay)
  %i.dk = select i1 %i.dj, i1 %.0121180, i1 false ; 2 uses
  br i1 %i.be, label %.lr.ph, label %.loopexit173

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.e ] ; 6 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !156
  %i.dn = shl nuw nsw i64 %indvars.iv, 4
  %i.do = add nuw nsw i64 %i.dn, %indvars.iv185   ; 4 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %i.do
  store float %i.dm, ptr %i.dp, align 4, !tbaa !156
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !156
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %i.do
  store float %i.dr, ptr %i.ds, align 4, !tbaa !156
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv
  %i.du = load float, ptr %i.dt, align 4, !tbaa !156
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %i.do
  store float %i.du, ptr %i.dv, align 4, !tbaa !156
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !156
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %i.do
  store float %i.dx, ptr %i.dy, align 4, !tbaa !156
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count191
  br i1 %exitcond.not, label %.loopexit173, label %.lr.ph, !llvm.loop !187

.loopexit173:                                     ; preds = %.lr.ph, %bb.e, %.split
  %.2 = phi i1 [ %.0121180, %.split ], [ %i.dk, %bb.e ], [ %i.dk, %.lr.ph ] ; 2 uses
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 2 uses
  %i.dz = shl nuw nsw i64 %.0122179, 1
  %exitcond187.not = icmp eq i64 %indvars.iv.next186, 16
  br i1 %exitcond187.not, label %.split182.us, label %.split, !llvm.loop !186
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl18get_perthread_infoEPNS0_23ImageCachePerThreadInfoE(ptr noundef nonnull align 64 dereferenceable(25240), ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl22texture3d_lookup_nomipERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiRKN9Imath_3_14Vec3IfEESC_SC_SC_PfSD_SD_SD_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(12) %7, ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(12) %8, ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(12) %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %._crit_edge, label %._crit_edge.thread

._crit_edge:                                      ; preds = %bb.a
  %i.b = zext nneg i32 %4 to i64
  %i.c = shl nuw nsw i64 %i.b, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %10, i8 0, i64 %i.c, i1 false), !tbaa !156
  %.not = icmp eq ptr %11, null
  br i1 %.not, label %.loopexit, label %.lr.ph69.preheader

._crit_edge.thread:                               ; preds = %bb.a
  %i.d = icmp ne ptr %11, null
  br label %.loopexit

.lr.ph69.preheader:                               ; preds = %._crit_edge
  %i.e = zext nneg i32 %4 to i64
  %i.f = shl nuw nsw i64 %i.e, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %11, i8 0, i64 %i.f, i1 false), !tbaa !156
  %i.g = zext nneg i32 %4 to i64
  %i.h = shl nuw nsw i64 %i.g, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %12, i8 0, i64 %i.h, i1 false), !tbaa !156
  %i.i = zext nneg i32 %4 to i64
  %i.j = shl nuw nsw i64 %i.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %13, i8 0, i64 %i.j, i1 false), !tbaa !156
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge.thread, %.lr.ph69.preheader, %._crit_edge
  %i.k = phi i1 [ %i.d, %._crit_edge.thread ], [ true, %.lr.ph69.preheader ], [ false, %._crit_edge ]
  %i.l = icmp ne ptr %12, null
  %i.m = icmp ne ptr %13, null
  %i.n = and i1 %i.l, %i.m                        ; 2 uses
  %or.cond3 = and i1 %i.k, %i.n                   ; 2 uses
  %.054 = select i1 %i.n, ptr %11, ptr null
  %.053 = select i1 %or.cond3, ptr %12, ptr null
  %.052 = select i1 %or.cond3, ptr %13, ptr null
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.p = load i8, ptr %i.o, align 4, !tbaa !159
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr @_ZZN11OpenImageIO4v3_117TextureSystemImpl22texture3d_lookup_nomipERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiRKN9Imath_3_14Vec3IfEESC_SC_SC_PfSD_SD_SD_E15accum_functions, i64 %i.q
  %.unpack = load i64, ptr %i.r, align 16, !tbaa !160
  %i.s = inttoptr i64 %.unpack to ptr
  %i.t = tail call noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 4 dereferenceable(12) %6, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, float noundef 1.000000e+00, ptr noundef %10, ptr noundef %.054, ptr noundef %.053, ptr noundef %.052)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 2 uses
  %i.v = load <2 x i64>, ptr %i.u, align 8, !tbaa !28
  %i.w = add nsw <2 x i64> %i.v, splat (i64 1)
  store <2 x i64> %i.w, ptr %i.u, align 8, !tbaa !28
  %i.x = load i8, ptr %i.o, align 4, !tbaa !159   ; 2 uses
  %i.y = icmp ult i8 %i.x, 4
  br i1 %i.y, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %.loopexit
  %i.z = zext nneg i8 %i.x to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN11OpenImageIO4v3_117TextureSystemImpl22texture3d_lookup_nomipERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiRKN9Imath_3_14Vec3IfEESC_SC_SC_PfSD_SD_SD_, i64 %i.z
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %switch.ext ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !28
  %i.ac = add nsw i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !28
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %switch.lookup
  ret i1 %i.t
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl18verify_texturefileEPNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoE(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.c = tail call noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl11verify_fileEPNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoEb(ptr noundef nonnull align 64 dereferenceable(25240) %i.b, ptr noundef %1, ptr noundef %2, i1 noundef zeroext false) ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 25
  %i.e = load i8, ptr %i.d, align 1, !tbaa !30, !range !84, !noundef !85
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.g
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_117TextureSystemImpl22accum3d_sample_closestERKN9Imath_3_14Vec3IfEEiRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiifPfSD_SD_SD_:bb.a
bb.j:                                             ; preds = %bb.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.p, i64 60 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !219 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !220
  %i.cy = icmp sgt i32 %i.cv, %i.cx
  br i1 %i.cy, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cz = load i32, ptr %5, align 8, !tbaa !154   ; 2 uses
  %i.da = add nsw i32 %i.cz, %7
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0159 = phi i32 [ %i.cz, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %.0158 = phi i32 [ %i.da, %bb.k ], [ %i.cv, %bb.j ] ; 2 uses
  %i.db = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %i.dc = load i32, ptr %i.p, align 4, !tbaa !213
  %i.dd = sub nsw i32 %i.db, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !221
  %i.dg = srem i32 %i.dd, %i.df                   ; 2 uses
  %i.dh = load i32, ptr %i.b, align 4, !tbaa !3   ; 2 uses
  %i.di = load i32, ptr %i.bk, align 4, !tbaa !215
  %i.dj = sub nsw i32 %i.dh, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.p, i64 52 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !222
  %i.dm = srem i32 %i.dj, %i.dl                   ; 2 uses
  %i.dn = load i32, ptr %i.c, align 4, !tbaa !3   ; 2 uses
  %i.do = load i32, ptr %i.bp, align 4, !tbaa !217
  %i.dp = sub nsw i32 %i.dn, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !223
  %i.ds = srem i32 %i.dp, %i.dr                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.dt = load i32, ptr %i.d, align 4, !tbaa !89  ; 2 uses
  %i.du = sub nsw i32 %i.db, %i.dg
  %i.dv = sub nsw i32 %i.dh, %i.dm
  %i.dw = sub nsw i32 %i.dn, %i.ds
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 68
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !164
  store i32 %i.du, ptr %13, align 8, !tbaa !224
  %i.dz = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i32 %i.dv, ptr %i.dz, align 4, !tbaa !226
  %i.ea = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %i.dw, ptr %i.ea, align 8, !tbaa !227
  %i.eb = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 %i.dt, ptr %i.eb, align 4, !tbaa !228
  %i.ec = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 %2, ptr %i.ec, align 8, !tbaa !229
  %i.ed = getelementptr inbounds nuw i8, ptr %13, i64 20 ; 2 uses
  %i.ee = trunc i32 %.0159 to i16
  store i16 %i.ee, ptr %i.ed, align 4, !tbaa !230
  %i.ef = getelementptr inbounds nuw i8, ptr %13, i64 22 ; 2 uses
  %i.eg = trunc i32 %.0158 to i16
  store i16 %i.eg, ptr %i.ef, align 2, !tbaa !231
  %i.eh = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 %i.dy, ptr %i.eh, align 8, !tbaa !232
  %i.ei = getelementptr inbounds nuw i8, ptr %13, i64 28
  store i32 0, ptr %i.ei, align 4, !tbaa !233
  %i.ej = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %3, ptr %i.ej, align 8, !tbaa !234
  %i.ek = icmp slt i32 %.0158, %.0159
  br i1 %i.ek, label %bb.m, label %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit

bb.m:                                             ; preds = %bb.l
  %i.el = sext i32 %i.dt to i64
  %i.em = load ptr, ptr %i.f, align 8, !tbaa !97
  %i.en = getelementptr inbounds nuw [128 x i8], ptr %i.em, i64 %i.el
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 120
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !98
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 60
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !153
  %i.es = trunc i32 %i.er to i16
  store i16 %i.es, ptr %i.ef, align 2, !tbaa !231
  br label %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit

_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit: ; preds = %bb.l, %bb.m
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !10
  %i.ev = call noundef zeroext i1 @_ZN11OpenImageIO4v3_114ImageCacheImpl9find_tileERKNS0_6TileIDEPNS0_23ImageCachePerThreadInfoEb(ptr noundef nonnull align 64 dereferenceable(25240) %i.eu, ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef %4, i1 noundef zeroext true)
  br i1 %i.ev, label %bb.q, label %bb.n

bb.n:                                             ; preds = %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.ew = load ptr, ptr %i.et, align 8, !tbaa !10
  call void @_ZNK11OpenImageIO4v3_114ImageCacheImpl8geterrorB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 64 dereferenceable(25240) %i.ew, i1 noundef zeroext true)
  invoke void @_ZNK11OpenImageIO4v3_117TextureSystemImpl5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull @.str.1, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ex = load ptr, ptr %14, align 8, !tbaa !189  ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.fa = load i64, ptr %i.ey, align 8, !tbaa !160
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fb) #27
  br label %.thread

.thread:                                          ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  %i.fc = landingpad { ptr, i32 }
          cleanup
  %i.fd = load ptr, ptr %14, align 8, !tbaa !189  ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178: ; preds = %bb.p
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !160
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  resume { ptr, i32 } %i.fc

bb.q:                                             ; preds = %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !235 ; 2 uses
  %.not183 = icmp eq ptr %i.fj, null
  br i1 %.not183, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fk = load i32, ptr %i.dk, align 4, !tbaa !222
  %i.fl = mul i32 %i.fk, %i.ds
  %i.fm = sext i32 %i.fl to i64
  %i.fn = sext i32 %i.dm to i64
  %i.fo = add nsw i64 %i.fm, %i.fn
  %i.fp = load i32, ptr %i.de, align 4, !tbaa !221
  %i.fq = sext i32 %i.fp to i64
  %i.fr = mul i64 %i.fo, %i.fq
  %i.fs = sext i32 %i.dg to i64
  %i.ft = add i64 %i.fr, %i.fs
  %i.fu = load i32, ptr %5, align 8, !tbaa !154   ; 2 uses
  %i.fv = load i16, ptr %i.ed, align 4, !tbaa !230 ; 2 uses
  %i.fw = sext i16 %i.fv to i32
  %i.fx = sub nsw i32 %i.fu, %i.fw
  %i.fy = load i32, ptr %i.cu, align 4, !tbaa !219
  %i.fz = sext i32 %i.fy to i64
  %i.ga = mul i64 %i.ft, %i.fz                    ; 2 uses
  %i.gb = sext i32 %i.fx to i64
  %i.gc = add i64 %i.ga, %i.gb                    ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fj, i64 48
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !95 ; 6 uses
  %i.gf = icmp sgt i32 %7, 0                      ; 4 uses
  switch i8 %i.r, label %bb.aa [
    i8 2, label %bb.s
    i8 4, label %bb.t
    i8 10, label %bb.u
  ]

bb.s:                                             ; preds = %bb.r
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gc ; 3 uses
  br i1 %i.gf, label %.lr.ph192.preheader, label %.loopexit184

.lr.ph192.preheader:                              ; preds = %bb.s
  %wide.trip.count211 = zext nneg i32 %7 to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count211, 1
  %i.gh = icmp eq i32 %7, 1
  br i1 %i.gh, label %.lr.ph192.epil.preheader, label %.lr.ph192.preheader.new

.lr.ph192.preheader.new:                          ; preds = %.lr.ph192.preheader
  %unroll_iter = and i64 %wide.trip.count211, 2147483646
  br label %.lr.ph192

.lr.ph192:                                        ; preds = %.lr.ph192, %.lr.ph192.preheader.new
  %indvars.iv208 = phi i64 [ 0, %.lr.ph192.preheader.new ], [ %indvars.iv.next209.1, %.lr.ph192 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph192.preheader.new ], [ %niter.next.1, %.lr.ph192 ]
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 %indvars.iv208
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !160
  %i.gk = zext i8 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl11uchar2floatE, i64 %i.gk
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !156
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv208 ; 2 uses
  %i.go = load float, ptr %i.gn, align 4, !tbaa !156
  %i.gp = call float @llvm.fmuladd.f32(float %8, float %i.gm, float %i.go)
  store float %i.gp, ptr %i.gn, align 4, !tbaa !156
  %indvars.iv.next209 = or disjoint i64 %indvars.iv208, 1 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gg, i64 %indvars.iv.next209
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !160
  %i.gs = zext i8 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl11uchar2floatE, i64 %i.gs
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !156
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv.next209 ; 2 uses
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !156
  %i.gx = call float @llvm.fmuladd.f32(float %8, float %i.gu, float %i.gw)
  store float %i.gx, ptr %i.gv, align 4, !tbaa !156
  %indvars.iv.next209.1 = add nuw nsw i64 %indvars.iv208, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit184.loopexit306.unr-lcssa, label %.lr.ph192, !llvm.loop !238

bb.t:                                             ; preds = %bb.r
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %i.ge, i64 %i.gc ; 2 uses
  br i1 %i.gf, label %.lr.ph190.preheader, label %.loopexit184

.lr.ph190.preheader:                              ; preds = %bb.t
  %wide.trip.count206 = zext nneg i32 %7 to i64   ; 3 uses
  %min.iters.check256 = icmp ult i32 %7, 8
  br i1 %min.iters.check256, label %.lr.ph190.preheader307, label %vector.ph257

vector.ph257:                                     ; preds = %.lr.ph190.preheader
  %n.vec258 = and i64 %wide.trip.count206, 2147483640 ; 3 uses
  %broadcast.splatinsert259 = insertelement <4 x float> poison, float %8, i64 0
  %broadcast.splat260 = shufflevector <4 x float> %broadcast.splatinsert259, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body261

vector.body261:                                   ; preds = %vector.body261, %vector.ph257
  %index262 = phi i64 [ 0, %vector.ph257 ], [ %index.next267, %vector.body261 ] ; 3 uses
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %i.gy, i64 %index262 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %wide.load263 = load <4 x i16>, ptr %i.gz, align 2, !tbaa !239
  %wide.load264 = load <4 x i16>, ptr %i.ha, align 2, !tbaa !239
  %i.hb = uitofp <4 x i16> %wide.load263 to <4 x float>
  %i.hc = uitofp <4 x i16> %wide.load264 to <4 x float>
  %i.hd = fmul nnan <4 x float> %i.hb, splat (float f0x37800080)
  %i.he = fmul nnan <4 x float> %i.hc, splat (float f0x37800080)
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %index262 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16 ; 2 uses
  %wide.load265 = load <4 x float>, ptr %i.hf, align 4, !tbaa !156
  %wide.load266 = load <4 x float>, ptr %i.hg, align 4, !tbaa !156
  %i.hh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat260, <4 x float> %i.hd, <4 x float> %wide.load265)
  %i.hi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat260, <4 x float> %i.he, <4 x float> %wide.load266)
  store <4 x float> %i.hh, ptr %i.hf, align 4, !tbaa !156
  store <4 x float> %i.hi, ptr %i.hg, align 4, !tbaa !156
  %index.next267 = add nuw i64 %index262, 8       ; 2 uses
  %i.hj = icmp eq i64 %index.next267, %n.vec258
  br i1 %i.hj, label %middle.block268, label %vector.body261, !llvm.loop !240

middle.block268:                                  ; preds = %vector.body261
  %cmp.n269 = icmp eq i64 %n.vec258, %wide.trip.count206
  br i1 %cmp.n269, label %.loopexit184, label %.lr.ph190.preheader307

.lr.ph190.preheader307:                           ; preds = %.lr.ph190.preheader, %middle.block268
  %indvars.iv203.ph = phi i64 [ 0, %.lr.ph190.preheader ], [ %n.vec258, %middle.block268 ]
  br label %.lr.ph190

.lr.ph190:                                        ; preds = %.lr.ph190.preheader307, %.lr.ph190
  %indvars.iv203 = phi i64 [ %indvars.iv.next204, %.lr.ph190 ], [ %indvars.iv203.ph, %.lr.ph190.preheader307 ] ; 3 uses
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %i.gy, i64 %indvars.iv203
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !239
  %i.hm = uitofp i16 %i.hl to float
  %i.hn = fmul nnan float %i.hm, f0x37800080
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv203 ; 2 uses
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !156
  %i.hq = call float @llvm.fmuladd.f32(float %8, float %i.hn, float %i.hp)
  store float %i.hq, ptr %i.ho, align 4, !tbaa !156
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1 ; 2 uses
  %exitcond207.not = icmp eq i64 %indvars.iv.next204, %wide.trip.count206
  br i1 %exitcond207.not, label %.loopexit184, label %.lr.ph190, !llvm.loop !243

bb.u:                                             ; preds = %bb.r
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %i.ge, i64 %i.gc ; 2 uses
  br i1 %i.gf, label %.lr.ph.preheader, label %.loopexit184

.lr.ph.preheader:                                 ; preds = %bb.u
  %wide.trip.count = zext nneg i32 %7 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %7, 4
  br i1 %min.iters.check, label %.lr.ph.preheader309, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %8, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %i.hr, i64 %index
  %wide.load = load <4 x i16>, ptr %i.hs, align 2, !tbaa !244 ; 2 uses
  %i.ht = zext <4 x i16> %wide.load to <4 x i32>
  %i.hu = shl nuw nsw <4 x i32> %i.ht, splat (i32 13)
  %i.hv = and <4 x i32> %i.hu, splat (i32 268427264) ; 6 uses
  %i.hw = sext <4 x i16> %wide.load to <4 x i32>
  %i.hx = and <4 x i32> %i.hw, splat (i32 -2147483648) ; 3 uses
  %i.hy = icmp samesign ugt <4 x i32> %i.hv, splat (i32 8388607)
  %i.hz = icmp eq <4 x i32> %i.hv, zeroinitializer ; 2 uses
  %i.ia = xor <4 x i1> %i.hz, %i.hy
  %i.ib = call range(i32 4, 33) <4 x i32> @llvm.ctlz.v4i32(<4 x i32> %i.hv, i1 true)
  %i.ic = add nsw <4 x i32> %i.ib, splat (i32 -8) ; 2 uses
  %i.id = shl <4 x i32> %i.hv, %i.ic
  %i.ie = or <4 x i32> %i.hx, %i.id
  %i.if = or <4 x i32> %i.ie, splat (i32 947912704)
  %i.ig = shl nuw nsw <4 x i32> %i.ic, splat (i32 23)
  %i.ih = sub nuw <4 x i32> %i.if, %i.ig
  %i.ii = or disjoint <4 x i32> %i.hv, %i.hx      ; 2 uses
  %i.ij = icmp samesign ugt <4 x i32> %i.hv, splat (i32 260046847)
  %i.ik = or <4 x i32> %i.ii, splat (i32 2139095040)
  %i.il = add nuw nsw <4 x i32> %i.ii, splat (i32 939524096)
  %predphi = select <4 x i1> %i.ij, <4 x i32> %i.ik, <4 x i32> %i.il
  %predphi252 = select <4 x i1> %i.hz, <4 x i32> %i.hx, <4 x i32> %predphi
  %predphi253 = select <4 x i1> %i.ia, <4 x i32> %predphi252, <4 x i32> %i.ih
  %i.im = bitcast <4 x i32> %predphi253 to <4 x float>
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %index ; 2 uses
  %wide.load254 = load <4 x float>, ptr %i.in, align 4, !tbaa !156
  %i.io = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.im, <4 x float> %wide.load254)
  store <4 x float> %i.io, ptr %i.in, align 4, !tbaa !156
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ip = icmp eq i64 %index.next, %n.vec
  br i1 %i.ip, label %middle.block, label %vector.body, !llvm.loop !246

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit184, label %.lr.ph.preheader309

.lr.ph.preheader309:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader309, %_ZNK9Imath_3_14halfcvfEv.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK9Imath_3_14halfcvfEv.exit ], [ %indvars.iv.ph, %.lr.ph.preheader309 ] ; 3 uses
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.hr, i64 %indvars.iv
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !244 ; 2 uses
  %i.is = zext i16 %i.ir to i32
  %i.it = shl nuw nsw i32 %i.is, 13
  %i.iu = and i32 %i.it, 268427264                ; 6 uses
  %.signext.i.i = sext i16 %i.ir to i32
  %i.iv = and i32 %.signext.i.i, -2147483648      ; 3 uses
  %i.iw = icmp samesign ugt i32 %i.iu, 8388607
  br i1 %i.iw, label %bb.v, label %bb.y, !prof !247

bb.v:                                             ; preds = %.lr.ph
  %i.ix = or disjoint i32 %i.iu, %i.iv            ; 2 uses
  %i.iy = icmp samesign ult i32 %i.iu, 260046848
  br i1 %i.iy, label %bb.w, label %bb.x, !prof !247

bb.w:                                             ; preds = %bb.v
  %i.iz = add nuw nsw i32 %i.ix, 939524096
  br label %_ZNK9Imath_3_14halfcvfEv.exit

bb.x:                                             ; preds = %bb.v
  %i.ja = or i32 %i.ix, 2139095040
  br label %_ZNK9Imath_3_14halfcvfEv.exit

bb.y:                                             ; preds = %.lr.ph
  %.not.i.i = icmp eq i32 %i.iu, 0
  br i1 %.not.i.i, label %_ZNK9Imath_3_14halfcvfEv.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.jb = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.iu, i1 true)
  %i.jc = add nsw i32 %i.jb, -8                   ; 2 uses
  %i.jd = shl i32 %i.iu, %i.jc
  %i.je = or i32 %i.iv, %i.jd
  %i.jf = or i32 %i.je, 947912704
  %i.jg = shl nuw nsw i32 %i.jc, 23
  %i.jh = sub nuw i32 %i.jf, %i.jg
  br label %_ZNK9Imath_3_14halfcvfEv.exit

_ZNK9Imath_3_14halfcvfEv.exit:                    ; preds = %bb.w, %bb.x, %bb.y, %bb.z
  %.sroa.0.0.i.i = phi i32 [ %i.iz, %bb.w ], [ %i.ja, %bb.x ], [ %i.jh, %bb.z ], [ %i.iv, %bb.y ]
  %i.ji = bitcast i32 %.sroa.0.0.i.i to float
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv ; 2 uses
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !156
  %i.jl = call float @llvm.fmuladd.f32(float %8, float %i.ji, float %i.jk)
  store float %i.jl, ptr %i.jj, align 4, !tbaa !156
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit184, label %.lr.ph, !llvm.loop !248

bb.aa:                                            ; preds = %bb.r
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.gc ; 4 uses
  br i1 %i.gf, label %.lr.ph194.preheader, label %.loopexit184

.lr.ph194.preheader:                              ; preds = %bb.aa
  %wide.trip.count216 = zext nneg i32 %7 to i64   ; 6 uses
  %min.iters.check275 = icmp ult i32 %7, 12
  br i1 %min.iters.check275, label %.lr.ph194.preheader305, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph194.preheader
  %i.jn = shl nuw nsw i64 %wide.trip.count216, 2  ; 2 uses
  %scevgep271 = getelementptr i8, ptr %9, i64 %i.jn
  %i.jo = sext i32 %i.fu to i64
  %i.jp = add i64 %i.ga, %i.jo
  %i.jq = sext i16 %i.fv to i64
  %i.jr = sub i64 %i.jp, %i.jq
  %i.js = shl i64 %i.jr, 2                        ; 2 uses
  %scevgep272 = getelementptr i8, ptr %i.ge, i64 %i.js
  %i.jt = getelementptr i8, ptr %i.ge, i64 %i.js
  %scevgep273 = getelementptr i8, ptr %i.jt, i64 %i.jn
  %bound0 = icmp ult ptr %9, %scevgep273
  %bound1 = icmp ult ptr %scevgep272, %scevgep271
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph194.preheader305, label %vector.ph276

vector.ph276:                                     ; preds = %vector.memcheck
  %n.vec277 = and i64 %wide.trip.count216, 2147483640 ; 3 uses
  %broadcast.splatinsert278 = insertelement <4 x float> poison, float %8, i64 0
  %broadcast.splat279 = shufflevector <4 x float> %broadcast.splatinsert278, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body280
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_117TextureSystemImpl23accum3d_sample_bilinearERKN9Imath_3_14Vec3IfEEiRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiifPfSD_SD_SD_:bb.a
  %i.bch = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.bci = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.bck = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.bcl = fsub float 1.000000e+00, %i.ao         ; 2 uses
  %i.bcm = fsub float 1.000000e+00, %i.ax         ; 3 uses
  %i.bcn = fsub float 1.000000e+00, %i.aw         ; 2 uses
  %wide.trip.count.i404 = zext nneg i32 %7 to i64 ; 4 uses
  %i.bco = load ptr, ptr %i.e, align 16, !tbaa !95 ; 4 uses
  %i.bcp = load ptr, ptr %i.bce, align 8, !tbaa !95 ; 4 uses
  %i.bcq = load ptr, ptr %i.bcf, align 16, !tbaa !95 ; 4 uses
  %i.bcr = load ptr, ptr %i.bcg, align 8, !tbaa !95 ; 4 uses
  %i.bcs = load ptr, ptr %i.bch, align 16, !tbaa !95 ; 4 uses
  %i.bct = load ptr, ptr %i.bci, align 8, !tbaa !95 ; 4 uses
  %i.bcu = load ptr, ptr %i.bcj, align 16, !tbaa !95 ; 4 uses
  %i.bcv = load ptr, ptr %i.bck, align 8, !tbaa !95 ; 4 uses
  %min.iters.check833 = icmp ult i32 %7, 8
  br i1 %min.iters.check833, label %scalar.ph832.preheader, label %vector.memcheck791

vector.memcheck791:                               ; preds = %.lr.ph.i403
  %i.bcw = shl nuw nsw i64 %wide.trip.count.i404, 2 ; 9 uses
  %scevgep792 = getelementptr i8, ptr %9, i64 %i.bcw ; 8 uses
  %scevgep793 = getelementptr i8, ptr %i.bco, i64 %i.bcw
  %scevgep794 = getelementptr i8, ptr %i.bcp, i64 %i.bcw
  %scevgep795 = getelementptr i8, ptr %i.bcq, i64 %i.bcw
  %scevgep796 = getelementptr i8, ptr %i.bcr, i64 %i.bcw
  %scevgep797 = getelementptr i8, ptr %i.bcs, i64 %i.bcw
  %scevgep798 = getelementptr i8, ptr %i.bct, i64 %i.bcw
  %scevgep799 = getelementptr i8, ptr %i.bcu, i64 %i.bcw
  %scevgep800 = getelementptr i8, ptr %i.bcv, i64 %i.bcw
  %bound0801 = icmp ult ptr %9, %scevgep793
  %bound1802 = icmp ult ptr %i.bco, %scevgep792
  %found.conflict803 = and i1 %bound0801, %bound1802
  %bound0804 = icmp ult ptr %9, %scevgep794
  %bound1805 = icmp ult ptr %i.bcp, %scevgep792
  %found.conflict806 = and i1 %bound0804, %bound1805
  %conflict.rdx807 = or i1 %found.conflict803, %found.conflict806
  %bound0808 = icmp ult ptr %9, %scevgep795
  %bound1809 = icmp ult ptr %i.bcq, %scevgep792
  %found.conflict810 = and i1 %bound0808, %bound1809
  %conflict.rdx811 = or i1 %conflict.rdx807, %found.conflict810
  %bound0812 = icmp ult ptr %9, %scevgep796
  %bound1813 = icmp ult ptr %i.bcr, %scevgep792
  %found.conflict814 = and i1 %bound0812, %bound1813
  %conflict.rdx815 = or i1 %conflict.rdx811, %found.conflict814
  %bound0816 = icmp ult ptr %9, %scevgep797
  %bound1817 = icmp ult ptr %i.bcs, %scevgep792
  %found.conflict818 = and i1 %bound0816, %bound1817
  %conflict.rdx819 = or i1 %conflict.rdx815, %found.conflict818
  %bound0820 = icmp ult ptr %9, %scevgep798
  %bound1821 = icmp ult ptr %i.bct, %scevgep792
  %found.conflict822 = and i1 %bound0820, %bound1821
  %conflict.rdx823 = or i1 %conflict.rdx819, %found.conflict822
  %bound0824 = icmp ult ptr %9, %scevgep799
  %bound1825 = icmp ult ptr %i.bcu, %scevgep792
  %found.conflict826 = and i1 %bound0824, %bound1825
  %conflict.rdx827 = or i1 %conflict.rdx823, %found.conflict826
  %bound0828 = icmp ult ptr %9, %scevgep800
  %bound1829 = icmp ult ptr %i.bcv, %scevgep792
  %found.conflict830 = and i1 %bound0828, %bound1829
  %conflict.rdx831 = or i1 %conflict.rdx827, %found.conflict830
  br i1 %conflict.rdx831, label %scalar.ph832.preheader, label %vector.ph834

vector.ph834:                                     ; preds = %vector.memcheck791
  %n.vec835 = and i64 %wide.trip.count.i404, 2147483644 ; 3 uses
  %broadcast.splatinsert836 = insertelement <4 x float> poison, float %i.bcl, i64 0
  %broadcast.splat837 = shufflevector <4 x float> %broadcast.splatinsert836, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert838 = insertelement <4 x float> poison, float %i.bcm, i64 0
  %broadcast.splat839 = shufflevector <4 x float> %broadcast.splatinsert838, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert840 = insertelement <4 x float> poison, float %i.bcn, i64 0
  %broadcast.splat841 = shufflevector <4 x float> %broadcast.splatinsert840, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert842 = insertelement <4 x float> poison, float %i.ao, i64 0
  %broadcast.splat843 = shufflevector <4 x float> %broadcast.splatinsert842, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splat845 = shufflevector <2 x float> %i.av, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat847 = shufflevector <2 x float> %i.av, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert848 = insertelement <4 x float> poison, float %8, i64 0
  %broadcast.splat849 = shufflevector <4 x float> %broadcast.splatinsert848, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body850

vector.body850:                                   ; preds = %vector.body850, %vector.ph834
  %index851 = phi i64 [ 0, %vector.ph834 ], [ %index.next861, %vector.body850 ] ; 10 uses
  %i.bcx = getelementptr inbounds nuw [4 x i8], ptr %i.bco, i64 %index851
  %wide.load852 = load <4 x float>, ptr %i.bcx, align 4, !tbaa !156, !alias.scope !316
  %i.bcy = getelementptr inbounds nuw [4 x i8], ptr %i.bcp, i64 %index851
  %wide.load853 = load <4 x float>, ptr %i.bcy, align 4, !tbaa !156, !alias.scope !319
  %i.bcz = getelementptr inbounds nuw [4 x i8], ptr %i.bcq, i64 %index851
  %wide.load854 = load <4 x float>, ptr %i.bcz, align 4, !tbaa !156, !alias.scope !321
  %i.bda = getelementptr inbounds nuw [4 x i8], ptr %i.bcr, i64 %index851
  %wide.load855 = load <4 x float>, ptr %i.bda, align 4, !tbaa !156, !alias.scope !323
  %i.bdb = getelementptr inbounds nuw [4 x i8], ptr %i.bcs, i64 %index851
  %wide.load856 = load <4 x float>, ptr %i.bdb, align 4, !tbaa !156, !alias.scope !325
  %i.bdc = getelementptr inbounds nuw [4 x i8], ptr %i.bct, i64 %index851
  %wide.load857 = load <4 x float>, ptr %i.bdc, align 4, !tbaa !156, !alias.scope !327
  %i.bdd = getelementptr inbounds nuw [4 x i8], ptr %i.bcu, i64 %index851
  %wide.load858 = load <4 x float>, ptr %i.bdd, align 4, !tbaa !156, !alias.scope !329
  %i.bde = getelementptr inbounds nuw [4 x i8], ptr %i.bcv, i64 %index851
  %wide.load859 = load <4 x float>, ptr %i.bde, align 4, !tbaa !156, !alias.scope !331
  %i.bdf = fmul <4 x float> %broadcast.splat843, %wide.load853
  %i.bdg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load852, <4 x float> %broadcast.splat837, <4 x float> %i.bdf)
  %i.bdh = fmul <4 x float> %broadcast.splat843, %wide.load855
  %i.bdi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load854, <4 x float> %broadcast.splat837, <4 x float> %i.bdh)
  %i.bdj = fmul <4 x float> %broadcast.splat845, %i.bdi
  %i.bdk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat839, <4 x float> %i.bdg, <4 x float> %i.bdj)
  %i.bdl = fmul <4 x float> %broadcast.splat843, %wide.load857
  %i.bdm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load856, <4 x float> %broadcast.splat837, <4 x float> %i.bdl)
  %i.bdn = fmul <4 x float> %broadcast.splat843, %wide.load859
  %i.bdo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load858, <4 x float> %broadcast.splat837, <4 x float> %i.bdn)
  %i.bdp = fmul <4 x float> %broadcast.splat845, %i.bdo
  %i.bdq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat839, <4 x float> %i.bdm, <4 x float> %i.bdp)
  %i.bdr = fmul <4 x float> %broadcast.splat847, %i.bdq
  %i.bds = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat841, <4 x float> %i.bdk, <4 x float> %i.bdr)
  %i.bdt = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %index851 ; 2 uses
  %wide.load860 = load <4 x float>, ptr %i.bdt, align 4, !tbaa !156, !alias.scope !333, !noalias !335
  %i.bdu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat849, <4 x float> %i.bds, <4 x float> %wide.load860)
  store <4 x float> %i.bdu, ptr %i.bdt, align 4, !tbaa !156, !alias.scope !333, !noalias !335
  %index.next861 = add nuw i64 %index851, 4       ; 2 uses
  %i.bdv = icmp eq i64 %index.next861, %n.vec835
  br i1 %i.bdv, label %middle.block862, label %vector.body850, !llvm.loop !336

middle.block862:                                  ; preds = %vector.body850
  %cmp.n863 = icmp eq i64 %n.vec835, %wide.trip.count.i404
  br i1 %cmp.n863, label %._crit_edge.i396, label %scalar.ph832.preheader

scalar.ph832.preheader:                           ; preds = %vector.memcheck791, %.lr.ph.i403, %middle.block862
  %indvars.iv.i405.ph = phi i64 [ 0, %vector.memcheck791 ], [ 0, %.lr.ph.i403 ], [ %n.vec835, %middle.block862 ]
  %i.bdw = insertelement <4 x float> poison, float %i.ao, i64 0
  %i.bdx = shufflevector <4 x float> %i.bdw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bdy = insertelement <4 x float> poison, float %i.bcl, i64 0
  %i.bdz = shufflevector <4 x float> %i.bdy, <4 x float> poison, <4 x i32> zeroinitializer
  br label %scalar.ph832

._crit_edge.i396:                                 ; preds = %scalar.ph832, %middle.block862, %bb.if
  %.not.i397 = icmp eq ptr %10, null
  br i1 %.not.i397, label %.critedge, label %bb.ig

scalar.ph832:                                     ; preds = %scalar.ph832.preheader, %scalar.ph832
  %indvars.iv.i405 = phi i64 [ %indvars.iv.next.i406, %scalar.ph832 ], [ %indvars.iv.i405.ph, %scalar.ph832.preheader ] ; 10 uses
  %i.bea = getelementptr inbounds nuw [4 x i8], ptr %i.bco, i64 %indvars.iv.i405
  %i.beb = load float, ptr %i.bea, align 4, !tbaa !156
  %i.bec = getelementptr inbounds nuw [4 x i8], ptr %i.bcp, i64 %indvars.iv.i405
  %i.bed = load float, ptr %i.bec, align 4, !tbaa !156
  %i.bee = getelementptr inbounds nuw [4 x i8], ptr %i.bcq, i64 %indvars.iv.i405
  %i.bef = load float, ptr %i.bee, align 4, !tbaa !156
  %i.beg = getelementptr inbounds nuw [4 x i8], ptr %i.bcr, i64 %indvars.iv.i405
  %i.beh = load float, ptr %i.beg, align 4, !tbaa !156
  %i.bei = getelementptr inbounds nuw [4 x i8], ptr %i.bcs, i64 %indvars.iv.i405
  %i.bej = load float, ptr %i.bei, align 4, !tbaa !156
  %i.bek = getelementptr inbounds nuw [4 x i8], ptr %i.bct, i64 %indvars.iv.i405
  %i.bel = load float, ptr %i.bek, align 4, !tbaa !156
  %i.bem = getelementptr inbounds nuw [4 x i8], ptr %i.bcu, i64 %indvars.iv.i405
  %i.ben = load float, ptr %i.bem, align 4, !tbaa !156
  %i.beo = getelementptr inbounds nuw [4 x i8], ptr %i.bcv, i64 %indvars.iv.i405
  %i.bep = load float, ptr %i.beo, align 4, !tbaa !156
  %i.beq = insertelement <4 x float> poison, float %i.bed, i64 0
  %i.ber = insertelement <4 x float> %i.beq, float %i.beh, i64 1
  %i.bes = insertelement <4 x float> %i.ber, float %i.bel, i64 2
  %i.bet = insertelement <4 x float> %i.bes, float %i.bep, i64 3
  %i.beu = fmul <4 x float> %i.bdx, %i.bet
  %i.bev = insertelement <4 x float> poison, float %i.beb, i64 0
  %i.bew = insertelement <4 x float> %i.bev, float %i.bef, i64 1
  %i.bex = insertelement <4 x float> %i.bew, float %i.bej, i64 2
  %i.bey = insertelement <4 x float> %i.bex, float %i.ben, i64 3
  %i.bez = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bey, <4 x float> %i.bdz, <4 x float> %i.beu) ; 4 uses
  %i.bfa = extractelement <4 x float> %i.bez, i64 1
  %i.bfb = fmul float %i.ax, %i.bfa
  %i.bfc = extractelement <4 x float> %i.bez, i64 0
  %i.bfd = call float @llvm.fmuladd.f32(float %i.bcm, float %i.bfc, float %i.bfb)
  %i.bfe = extractelement <4 x float> %i.bez, i64 3
  %i.bff = fmul float %i.ax, %i.bfe
  %i.bfg = extractelement <4 x float> %i.bez, i64 2
  %i.bfh = call float @llvm.fmuladd.f32(float %i.bcm, float %i.bfg, float %i.bff)
  %i.bfi = fmul float %i.aw, %i.bfh
  %i.bfj = call noundef float @llvm.fmuladd.f32(float %i.bcn, float %i.bfd, float %i.bfi)
  %i.bfk = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv.i405 ; 2 uses
  %i.bfl = load float, ptr %i.bfk, align 4, !tbaa !156
  %i.bfm = call float @llvm.fmuladd.f32(float %8, float %i.bfj, float %i.bfl)
  store float %i.bfm, ptr %i.bfk, align 4, !tbaa !156
  %indvars.iv.next.i406 = add nuw nsw i64 %indvars.iv.i405, 1 ; 2 uses
  %exitcond.not.i407 = icmp eq i64 %indvars.iv.next.i406, %wide.trip.count.i404
  br i1 %exitcond.not.i407, label %._crit_edge.i396, label %scalar.ph832, !llvm.loop !337

bb.ig:                                            ; preds = %._crit_edge.i396
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.bcd, i64 36
  %i.bfo = load i32, ptr %i.bfn, align 4, !tbaa !209
  %i.bfp = sitofp i32 %i.bfo to float
  %i.bfq = fmul float %8, %i.bfp                  ; 2 uses
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.bcd, i64 40
  %i.bfs = load <2 x i32>, ptr %i.bfr, align 4, !tbaa !3
  %i.bft = sitofp <2 x i32> %i.bfs to <2 x float> ; 2 uses
  %i.bfu = extractelement <2 x float> %i.bft, i64 0
  %i.bfv = fmul float %8, %i.bfu                  ; 2 uses
  %i.bfw = extractelement <2 x float> %i.bft, i64 1
  %i.bfx = fmul float %8, %i.bfw                  ; 2 uses
  br i1 %.not550, label %.critedge, label %.lr.ph148.i398

.lr.ph148.i398:                                   ; preds = %bb.ig
  %i.bfy = fsub float 1.000000e+00, %i.ax         ; 4 uses
  %i.bfz = fsub float 1.000000e+00, %i.aw         ; 3 uses
  %i.bga = fsub float 1.000000e+00, %i.ao         ; 5 uses
  %wide.trip.count153.i399 = zext nneg i32 %7 to i64 ; 4 uses
  %i.bgb = load <8 x ptr>, ptr %i.e, align 16, !tbaa !95 ; 19 uses
  %min.iters.check985 = icmp ult i32 %7, 12
  br i1 %min.iters.check985, label %scalar.ph984.preheader, label %vector.memcheck865

vector.memcheck865:                               ; preds = %.lr.ph148.i398
  %i.bgc = shl nuw nsw i64 %wide.trip.count153.i399, 2 ; 11 uses
  %scevgep866 = getelementptr i8, ptr %10, i64 %i.bgc ; 3 uses
  %scevgep867 = getelementptr i8, ptr %11, i64 %i.bgc ; 3 uses
  %scevgep868 = getelementptr i8, ptr %12, i64 %i.bgc
  %i.bgd = extractelement <8 x ptr> %i.bgb, i64 1 ; 2 uses
  %scevgep869 = getelementptr i8, ptr %i.bgd, i64 %i.bgc ; 2 uses
  %i.bge = extractelement <8 x ptr> %i.bgb, i64 0 ; 2 uses
  %scevgep870 = getelementptr i8, ptr %i.bge, i64 %i.bgc ; 2 uses
  %i.bgf = extractelement <8 x ptr> %i.bgb, i64 3 ; 2 uses
  %scevgep871 = getelementptr i8, ptr %i.bgf, i64 %i.bgc ; 2 uses
  %i.bgg = extractelement <8 x ptr> %i.bgb, i64 2 ; 2 uses
  %scevgep872 = getelementptr i8, ptr %i.bgg, i64 %i.bgc ; 2 uses
  %i.bgh = extractelement <8 x ptr> %i.bgb, i64 5 ; 2 uses
  %scevgep873 = getelementptr i8, ptr %i.bgh, i64 %i.bgc ; 2 uses
  %i.bgi = extractelement <8 x ptr> %i.bgb, i64 4 ; 2 uses
  %scevgep874 = getelementptr i8, ptr %i.bgi, i64 %i.bgc ; 2 uses
  %i.bgj = extractelement <8 x ptr> %i.bgb, i64 7 ; 2 uses
  %scevgep875 = getelementptr i8, ptr %i.bgj, i64 %i.bgc ; 2 uses
  %i.bgk = extractelement <8 x ptr> %i.bgb, i64 6 ; 4 uses
  %scevgep876 = getelementptr i8, ptr %i.bgk, i64 %i.bgc ; 3 uses
  %bound0877 = icmp ult ptr %10, %scevgep867
  %bound1878 = icmp ult ptr %11, %scevgep866
  %found.conflict879 = and i1 %bound0877, %bound1878
  %i.bgl = insertelement <8 x ptr> poison, ptr %10, i64 0
  %i.bgm = shufflevector <8 x ptr> %i.bgl, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bgn = insertelement <8 x ptr> poison, ptr %scevgep868, i64 0 ; 2 uses
  %i.bgo = insertelement <8 x ptr> %i.bgn, ptr %scevgep869, i64 1
  %i.bgp = insertelement <8 x ptr> %i.bgo, ptr %scevgep870, i64 2
  %i.bgq = insertelement <8 x ptr> %i.bgp, ptr %scevgep871, i64 3
  %i.bgr = insertelement <8 x ptr> %i.bgq, ptr %scevgep872, i64 4
  %i.bgs = insertelement <8 x ptr> %i.bgr, ptr %scevgep873, i64 5
  %i.bgt = insertelement <8 x ptr> %i.bgs, ptr %scevgep874, i64 6
  %i.bgu = insertelement <8 x ptr> %i.bgt, ptr %scevgep875, i64 7 ; 2 uses
  %i.bgv = icmp ult <8 x ptr> %i.bgm, %i.bgu
  %21 = shufflevector <8 x ptr> %i.bgb, <8 x ptr> poison, <8 x i32> <i32 poison, i32 1, i32 0, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bgw = insertelement <8 x ptr> %21, ptr %12, i64 0
  %22 = shufflevector <8 x ptr> %i.bgw, <8 x ptr> %i.bgb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 10, i32 13, i32 12, i32 15> ; 2 uses
  %i.bgx = insertelement <8 x ptr> poison, ptr %scevgep866, i64 0
  %i.bgy = shufflevector <8 x ptr> %i.bgx, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bgz = icmp ult <8 x ptr> %22, %i.bgy
  %i.bha = and <8 x i1> %i.bgv, %i.bgz
  %bound0912 = icmp ult ptr %10, %scevgep876
  %bound1913 = icmp ult ptr %i.bgk, %scevgep866
  %found.conflict914 = and i1 %bound0912, %bound1913
  %i.bhb = insertelement <8 x ptr> poison, ptr %11, i64 0
  %i.bhc = shufflevector <8 x ptr> %i.bhb, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bhd = icmp ult <8 x ptr> %i.bhc, %i.bgu
  %i.bhe = insertelement <8 x ptr> poison, ptr %scevgep867, i64 0
  %i.bhf = shufflevector <8 x ptr> %i.bhe, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bhg = icmp ult <8 x ptr> %22, %i.bhf
  %i.bhh = and <8 x i1> %i.bhd, %i.bhg
  %bound0948 = icmp ult ptr %11, %scevgep876
  %bound1949 = icmp ult ptr %i.bgk, %scevgep867
  %found.conflict950 = and i1 %bound0948, %bound1949
  %i.bhi = insertelement <8 x ptr> poison, ptr %12, i64 0
  %i.bhj = shufflevector <8 x ptr> %i.bhi, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bhk = insertelement <8 x ptr> poison, ptr %scevgep870, i64 0
  %i.bhl = insertelement <8 x ptr> %i.bhk, ptr %scevgep869, i64 1
  %i.bhm = insertelement <8 x ptr> %i.bhl, ptr %scevgep872, i64 2
  %i.bhn = insertelement <8 x ptr> %i.bhm, ptr %scevgep871, i64 3
  %i.bho = insertelement <8 x ptr> %i.bhn, ptr %scevgep874, i64 4
  %i.bhp = insertelement <8 x ptr> %i.bho, ptr %scevgep873, i64 5
  %i.bhq = insertelement <8 x ptr> %i.bhp, ptr %scevgep876, i64 6
  %i.bhr = insertelement <8 x ptr> %i.bhq, ptr %scevgep875, i64 7
  %i.bhs = icmp ult <8 x ptr> %i.bhj, %i.bhr
  %i.bht = shufflevector <8 x ptr> %i.bgn, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bhu = icmp ult <8 x ptr> %i.bgb, %i.bht
  %i.bhv = and <8 x i1> %i.bhs, %i.bhu
  %rdx.op = or <8 x i1> %i.bha, %i.bhh
  %rdx.op1037 = or <8 x i1> %rdx.op, %i.bhv
  %i.bhw = bitcast <8 x i1> %rdx.op1037 to i8
  %i.bhx = icmp ne i8 %i.bhw, 0
  %op.rdx = or i1 %i.bhx, %found.conflict879
  %op.rdx1038 = or i1 %found.conflict914, %found.conflict950
  %op.rdx1039 = or i1 %op.rdx, %op.rdx1038
  br i1 %op.rdx1039, label %scalar.ph984.preheader, label %vector.ph986

vector.ph986:                                     ; preds = %vector.memcheck865
  %n.vec987 = and i64 %wide.trip.count153.i399, 2147483644 ; 3 uses
  %broadcast.splatinsert988 = insertelement <4 x float> poison, float %i.bfy, i64 0
  %broadcast.splat989 = shufflevector <4 x float> %broadcast.splatinsert988, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert990 = insertelement <4 x float> poison, float %i.bfz, i64 0
  %broadcast.splat991 = shufflevector <4 x float> %broadcast.splatinsert990, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert992 = insertelement <4 x float> poison, float %i.bga, i64 0
  %broadcast.splat993 = shufflevector <4 x float> %broadcast.splatinsert992, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splat995 = shufflevector <2 x float> %i.av, <2 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %broadcast.splat997 = shufflevector <2 x float> %i.av, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splatinsert998 = insertelement <4 x float> poison, float %i.bfq, i64 0
  %broadcast.splat999 = shufflevector <4 x float> %broadcast.splatinsert998, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1000 = insertelement <4 x float> poison, float %i.ao, i64 0
  %broadcast.splat1001 = shufflevector <4 x float> %broadcast.splatinsert1000, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert1002 = insertelement <4 x float> poison, float %i.bfv, i64 0
  %broadcast.splat1003 = shufflevector <4 x float> %broadcast.splatinsert1002, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1004 = insertelement <4 x float> poison, float %i.bfx, i64 0
  %broadcast.splat1005 = shufflevector <4 x float> %broadcast.splatinsert1004, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1006

vector.body1006:                                  ; preds = %vector.body1006, %vector.ph986
  %index1007 = phi i64 [ 0, %vector.ph986 ], [ %index.next1033, %vector.body1006 ] ; 12 uses
  %i.bhy = getelementptr inbounds nuw [4 x i8], ptr %i.bgd, i64 %index1007 ; 3 uses
  %wide.load1008 = load <4 x float>, ptr %i.bhy, align 4, !tbaa !156, !alias.scope !338
  %i.bhz = getelementptr inbounds nuw [4 x i8], ptr %i.bge, i64 %index1007 ; 2 uses
  %wide.load1009 = load <4 x float>, ptr %i.bhz, align 4, !tbaa !156, !alias.scope !341
  %i.bia = fsub <4 x float> %wide.load1008, %wide.load1009
  %i.bib = getelementptr inbounds nuw [4 x i8], ptr %i.bgf, i64 %index1007 ; 3 uses
  %wide.load1010 = load <4 x float>, ptr %i.bib, align 4, !tbaa !156, !alias.scope !343
  %i.bic = getelementptr inbounds nuw [4 x i8], ptr %i.bgg, i64 %index1007 ; 3 uses
  %wide.load1011 = load <4 x float>, ptr %i.bic, align 4, !tbaa !156, !alias.scope !345
  %i.bid = fsub <4 x float> %wide.load1010, %wide.load1011
  %i.bie = getelementptr inbounds nuw [4 x i8], ptr %i.bgh, i64 %index1007 ; 2 uses
  %wide.load1012 = load <4 x float>, ptr %i.bie, align 4, !tbaa !156, !alias.scope !347
  %i.bif = getelementptr inbounds nuw [4 x i8], ptr %i.bgi, i64 %index1007 ; 3 uses
  %wide.load1013 = load <4 x float>, ptr %i.bif, align 4, !tbaa !156, !alias.scope !349
  %i.big = fsub <4 x float> %wide.load1012, %wide.load1013
  %i.bih = getelementptr inbounds nuw [4 x i8], ptr %i.bgj, i64 %index1007 ; 3 uses
  %wide.load1014 = load <4 x float>, ptr %i.bih, align 4, !tbaa !156, !alias.scope !351
  %i.bii = getelementptr inbounds nuw [4 x i8], ptr %i.bgk, i64 %index1007 ; 3 uses
  %wide.load1015 = load <4 x float>, ptr %i.bii, align 4, !tbaa !156, !alias.scope !353
  %i.bij = fsub <4 x float> %wide.load1014, %wide.load1015
  %i.bik = fmul <4 x float> %broadcast.splat995, %i.bid
  %i.bil = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bia, <4 x float> %broadcast.splat989, <4 x float> %i.bik)
  %i.bim = fmul <4 x float> %broadcast.splat995, %i.bij
  %i.bin = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.big, <4 x float> %broadcast.splat989, <4 x float> %i.bim)
  %i.bio = fmul <4 x float> %broadcast.splat997, %i.bin
  %i.bip = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat991, <4 x float> %i.bil, <4 x float> %i.bio)
  %i.biq = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %index1007 ; 2 uses
  %wide.load1016 = load <4 x float>, ptr %i.biq, align 4, !tbaa !156, !alias.scope !355, !noalias !357
  %i.bir = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat999, <4 x float> %i.bip, <4 x float> %wide.load1016)
  store <4 x float> %i.bir, ptr %i.biq, align 4, !tbaa !156, !alias.scope !355, !noalias !357
  %wide.load1017 = load <4 x float>, ptr %i.bic, align 4, !tbaa !156, !alias.scope !345
  %wide.load1018 = load <4 x float>, ptr %i.bhz, align 4, !tbaa !156, !alias.scope !341
  %i.bis = fsub <4 x float> %wide.load1017, %wide.load1018
  %wide.load1019 = load <4 x float>, ptr %i.bib, align 4, !tbaa !156, !alias.scope !343
  %wide.load1020 = load <4 x float>, ptr %i.bhy, align 4, !tbaa !156, !alias.scope !338
  %i.bit = fsub <4 x float> %wide.load1019, %wide.load1020
  %wide.load1021 = load <4 x float>, ptr %i.bii, align 4, !tbaa !156, !alias.scope !353
  %wide.load1022 = load <4 x float>, ptr %i.bif, align 4, !tbaa !156, !alias.scope !349
  %i.biu = fsub <4 x float> %wide.load1021, %wide.load1022
  %wide.load1023 = load <4 x float>, ptr %i.bih, align 4, !tbaa !156, !alias.scope !351
  %wide.load1024 = load <4 x float>, ptr %i.bie, align 4, !tbaa !156, !alias.scope !347
  %i.biv = fsub <4 x float> %wide.load1023, %wide.load1024
  %i.biw = fmul <4 x float> %broadcast.splat1001, %i.bit
  %i.bix = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bis, <4 x float> %broadcast.splat993, <4 x float> %i.biw)
  %i.biy = fmul <4 x float> %broadcast.splat1001, %i.biv
  %i.biz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.biu, <4 x float> %broadcast.splat993, <4 x float> %i.biy)
  %i.bja = fmul <4 x float> %broadcast.splat997, %i.biz
  %i.bjb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat991, <4 x float> %i.bix, <4 x float> %i.bja)
  %i.bjc = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %index1007 ; 2 uses
  %wide.load1025 = load <4 x float>, ptr %i.bjc, align 4, !tbaa !156, !alias.scope !360, !noalias !361
  %i.bjd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1003, <4 x float> %i.bjb, <4 x float> %wide.load1025)
  store <4 x float> %i.bjd, ptr %i.bjc, align 4, !tbaa !156, !alias.scope !360, !noalias !361
  %wide.load1026 = load <4 x float>, ptr %i.bic, align 4, !tbaa !156, !alias.scope !345
  %wide.load1027 = load <4 x float>, ptr %i.bii, align 4, !tbaa !156, !alias.scope !353
  %i.bje = fsub <4 x float> %wide.load1026, %wide.load1027
  %wide.load1028 = load <4 x float>, ptr %i.bib, align 4, !tbaa !156, !alias.scope !343
  %wide.load1029 = load <4 x float>, ptr %i.bih, align 4, !tbaa !156, !alias.scope !351
  %i.bjf = fsub <4 x float> %wide.load1028, %wide.load1029
  %wide.load1030 = load <4 x float>, ptr %i.bhy, align 4, !tbaa !156, !alias.scope !338
  %wide.load1031 = load <4 x float>, ptr %i.bif, align 4, !tbaa !156, !alias.scope !349
  %i.bjg = fsub <4 x float> %wide.load1030, %wide.load1031
  %i.bjh = fmul <4 x float> %broadcast.splat1001, %i.bjf ; 2 uses
  %i.bji = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bje, <4 x float> %broadcast.splat993, <4 x float> %i.bjh)
  %i.bjj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bjg, <4 x float> %broadcast.splat993, <4 x float> %i.bjh)
  %i.bjk = fmul <4 x float> %broadcast.splat995, %i.bjj
  %i.bjl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat989, <4 x float> %i.bji, <4 x float> %i.bjk)
  %i.bjm = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %index1007 ; 2 uses
  %wide.load1032 = load <4 x float>, ptr %i.bjm, align 4, !tbaa !156, !alias.scope !362, !noalias !363
  %i.bjn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1005, <4 x float> %i.bjl, <4 x float> %wide.load1032)
  store <4 x float> %i.bjn, ptr %i.bjm, align 4, !tbaa !156, !alias.scope !362, !noalias !363
  %index.next1033 = add nuw i64 %index1007, 4     ; 2 uses
  %i.bjo = icmp eq i64 %index.next1033, %n.vec987
  br i1 %i.bjo, label %middle.block1034, label %vector.body1006, !llvm.loop !364

middle.block1034:                                 ; preds = %vector.body1006
  %cmp.n1035 = icmp eq i64 %n.vec987, %wide.trip.count153.i399
  br i1 %cmp.n1035, label %.critedge, label %scalar.ph984.preheader

scalar.ph984.preheader:                           ; preds = %vector.memcheck865, %.lr.ph148.i398, %middle.block1034
  %indvars.iv150.i400.ph = phi i64 [ 0, %vector.memcheck865 ], [ 0, %.lr.ph148.i398 ], [ %n.vec987, %middle.block1034 ]
  %i.bjp = extractelement <8 x ptr> %i.bgb, i64 1
  %i.bjq = extractelement <8 x ptr> %i.bgb, i64 0
  %i.bjr = extractelement <8 x ptr> %i.bgb, i64 3
  %i.bjs = extractelement <8 x ptr> %i.bgb, i64 2
  %i.bjt = extractelement <8 x ptr> %i.bgb, i64 5
  %i.bju = extractelement <8 x ptr> %i.bgb, i64 4
  %i.bjv = extractelement <8 x ptr> %i.bgb, i64 7
  %i.bjw = extractelement <8 x ptr> %i.bgb, i64 6
  br label %scalar.ph984

scalar.ph984:                                     ; preds = %scalar.ph984.preheader, %scalar.ph984
  %indvars.iv150.i400 = phi i64 [ %indvars.iv.next151.i401, %scalar.ph984 ], [ %indvars.iv150.i400.ph, %scalar.ph984.preheader ] ; 12 uses
  %i.bjx = getelementptr inbounds nuw [4 x i8], ptr %i.bjp, i64 %indvars.iv150.i400 ; 3 uses
  %i.bjy = load float, ptr %i.bjx, align 4, !tbaa !156
  %i.bjz = getelementptr inbounds nuw [4 x i8], ptr %i.bjq, i64 %indvars.iv150.i400 ; 2 uses
  %i.bka = load float, ptr %i.bjz, align 4, !tbaa !156
  %i.bkb = fsub float %i.bjy, %i.bka
  %i.bkc = getelementptr inbounds nuw [4 x i8], ptr %i.bjr, i64 %indvars.iv150.i400 ; 3 uses
  %i.bkd = load float, ptr %i.bkc, align 4, !tbaa !156
  %i.bke = getelementptr inbounds nuw [4 x i8], ptr %i.bjs, i64 %indvars.iv150.i400 ; 3 uses
  %i.bkf = load float, ptr %i.bke, align 4, !tbaa !156
  %i.bkg = fsub float %i.bkd, %i.bkf
  %i.bkh = getelementptr inbounds nuw [4 x i8], ptr %i.bjt, i64 %indvars.iv150.i400 ; 2 uses
  %i.bki = load float, ptr %i.bkh, align 4, !tbaa !156
  %i.bkj = getelementptr inbounds nuw [4 x i8], ptr %i.bju, i64 %indvars.iv150.i400 ; 3 uses
  %i.bkk = load float, ptr %i.bkj, align 4, !tbaa !156
  %i.bkl = fsub float %i.bki, %i.bkk
  %i.bkm = getelementptr inbounds nuw [4 x i8], ptr %i.bjv, i64 %indvars.iv150.i400 ; 3 uses
  %i.bkn = load float, ptr %i.bkm, align 4, !tbaa !156
  %i.bko = getelementptr inbounds nuw [4 x i8], ptr %i.bjw, i64 %indvars.iv150.i400 ; 3 uses
  %i.bkp = load float, ptr %i.bko, align 4, !tbaa !156
  %i.bkq = fsub float %i.bkn, %i.bkp
  %i.bkr = fmul float %i.ax, %i.bkg
  %i.bks = call float @llvm.fmuladd.f32(float %i.bkb, float %i.bfy, float %i.bkr)
  %i.bkt = fmul float %i.ax, %i.bkq
  %i.bku = call float @llvm.fmuladd.f32(float %i.bkl, float %i.bfy, float %i.bkt)
  %i.bkv = fmul float %i.aw, %i.bku
  %i.bkw = call noundef float @llvm.fmuladd.f32(float %i.bfz, float %i.bks, float %i.bkv)
  %i.bkx = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv150.i400 ; 2 uses
  %i.bky = load float, ptr %i.bkx, align 4, !tbaa !156
  %i.bkz = call float @llvm.fmuladd.f32(float %i.bfq, float %i.bkw, float %i.bky)
  store float %i.bkz, ptr %i.bkx, align 4, !tbaa !156
  %i.bla = load float, ptr %i.bke, align 4, !tbaa !156
  %i.blb = load float, ptr %i.bjz, align 4, !tbaa !156
  %i.blc = fsub float %i.bla, %i.blb
  %i.bld = load float, ptr %i.bkc, align 4, !tbaa !156
  %i.ble = load float, ptr %i.bjx, align 4, !tbaa !156
  %i.blf = fsub float %i.bld, %i.ble
  %i.blg = load float, ptr %i.bko, align 4, !tbaa !156
  %i.blh = load float, ptr %i.bkj, align 4, !tbaa !156
  %i.bli = fsub float %i.blg, %i.blh
  %i.blj = load float, ptr %i.bkm, align 4, !tbaa !156
  %i.blk = load float, ptr %i.bkh, align 4, !tbaa !156
  %i.bll = fsub float %i.blj, %i.blk
  %i.blm = fmul float %i.ao, %i.blf
  %i.bln = call float @llvm.fmuladd.f32(float %i.blc, float %i.bga, float %i.blm)
  %i.blo = fmul float %i.ao, %i.bll
  %i.blp = call float @llvm.fmuladd.f32(float %i.bli, float %i.bga, float %i.blo)
  %i.blq = fmul float %i.aw, %i.blp
  %i.blr = call noundef float @llvm.fmuladd.f32(float %i.bfz, float %i.bln, float %i.blq)
  %i.bls = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv150.i400 ; 2 uses
  %i.blt = load float, ptr %i.bls, align 4, !tbaa !156
  %i.blu = call float @llvm.fmuladd.f32(float %i.bfv, float %i.blr, float %i.blt)
  store float %i.blu, ptr %i.bls, align 4, !tbaa !156
  %i.blv = load float, ptr %i.bke, align 4, !tbaa !156
  %i.blw = load float, ptr %i.bko, align 4, !tbaa !156
  %i.blx = fsub float %i.blv, %i.blw
  %i.bly = load float, ptr %i.bkc, align 4, !tbaa !156
  %i.blz = load float, ptr %i.bkm, align 4, !tbaa !156
  %i.bma = fsub float %i.bly, %i.blz
  %i.bmb = load float, ptr %i.bjx, align 4, !tbaa !156
end_hunk_2
begin_hunk_3_@_ZN3fmt3v126detail6bigint6squareEv:bb.a
.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %.idx.i.i = shl i64 %i.b, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.j, i64 %.idx.i.i, i1 false), !tbaa !3
  br label %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i

bb.c:                                             ; preds = %bb.a
  store ptr %i.g, ptr %1, align 8, !tbaa !643
  store i64 %i.i, ptr %i.e, align 8, !tbaa !644
  store ptr %i.j, ptr %0, align 8, !tbaa !643
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i

_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i: ; preds = %.lr.ph.i.i.i.preheader, %bb.c, %bb.b
  %i.m = phi ptr [ %i.l, %.lr.ph.i.i.i.preheader ], [ %i.g, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %i.n = phi i64 [ %i.i, %.lr.ph.i.i.i.preheader ], [ 0, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %i.o = icmp ugt i64 %i.b, %i.i
  br i1 %i.o, label %bb.d, label %.noexc.i

bb.d:                                             ; preds = %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i
  %i.p = lshr i64 %i.i, 1
  %i.q = add i64 %i.p, %i.i                       ; 3 uses
  %i.r = icmp ugt i64 %i.b, %i.q
  br i1 %i.r, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp ugt i64 %i.q, 4611686018427387903
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = call noundef i64 @llvm.umax.i64(i64 %i.b, i64 4611686018427387903)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0.i = phi i64 [ %i.q, %bb.e ], [ %i.t, %bb.f ], [ %i.b, %bb.d ] ; 3 uses
  %i.u = shl i64 %.0.i, 2
  %i.v = call noalias ptr @malloc(i64 noundef %i.u) #30 ; 2 uses
  %.not.i.i112 = icmp eq ptr %i.v, null
  br i1 %.not.i.i112, label %bb.h, label %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i

bb.h:                                             ; preds = %bb.g
  %i.w = call ptr @__cxa_allocate_exception(i64 8) #26 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.w, align 8, !tbaa !382
  invoke void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
          to label %.noexc113 unwind label %bb.j

.noexc113:                                        ; preds = %bb.h
  unreachable

_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i: ; preds = %bb.g
  store ptr %i.v, ptr %1, align 8, !tbaa !643
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !644
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i = icmp eq ptr %i.m, %i.x
  br i1 %.not.i, label %.noexc.i, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i
  call void @free(ptr noundef %i.m) #26
  %.pre.i.i.i.i.pre = load i64, ptr %i.e, align 8, !tbaa !644
  %.pre.pre = load i64, ptr %i.h, align 8, !tbaa !644
  br label %.noexc.i

bb.j:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #29
  unreachable

.noexc.i:                                         ; preds = %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i, %bb.i, %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i
  %i.aa = phi i64 [ %i.n, %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i ], [ %.pre.pre, %bb.i ], [ %i.n, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ] ; 2 uses
  %i.ab = phi i64 [ %i.i, %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i ], [ %.pre.i.i.i.i.pre, %bb.i ], [ %.0.i, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = call noundef i64 @llvm.umin.i64(i64 %i.b, i64 %i.ab)
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !653
  %i.ae = zext i32 %i.d to i64                    ; 3 uses
  %i.af = icmp ult i64 %i.aa, %i.ae
  br i1 %i.af, label %bb.k, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit

bb.k:                                             ; preds = %.noexc.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !641
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(161) %0, i64 noundef %i.ae)
          to label %.noexc unwind label %bb.l, !inline_history !700

.noexc:                                           ; preds = %bb.k
  %.pre.i.i42 = load i64, ptr %i.h, align 8, !tbaa !644
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit: ; preds = %.noexc.i, %.noexc
  %i.ai = phi i64 [ %i.aa, %.noexc.i ], [ %.pre.i.i42, %.noexc ] ; 3 uses
  %i.aj = call noundef i64 @llvm.umin.i64(i64 %i.ae, i64 %i.ai) ; 4 uses
  store i64 %i.aj, ptr %i.a, align 8, !tbaa !653
  %i.ak = icmp sgt i32 %i.c, 0
  %.pre93.pre94 = load ptr, ptr %0, align 8       ; 2 uses
  br i1 %i.ak, label %.preheader46.lr.ph, label %.preheader

.preheader46.lr.ph:                               ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit
  %i.al = load ptr, ptr %1, align 8, !tbaa !643   ; 6 uses
  %wide.trip.count76 = and i64 %i.b, 2147483647
  br label %.preheader46

.preheader46:                                     ; preds = %.preheader46.lr.ph, %bb.m
  %indvars.iv71 = phi i64 [ 1, %.preheader46.lr.ph ], [ %indvars.iv.next72, %bb.m ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.preheader46.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 5 uses
  %.03750 = phi i128 [ 0, %.preheader46.lr.ph ], [ %i.bf, %bb.m ] ; 2 uses
  %xtraiter = and i64 %indvars.iv71, 1
  %i.am = icmp eq i64 %indvars.iv, 0
  br i1 %i.am, label %.epil.preheader, label %.preheader46.new

.preheader46.new:                                 ; preds = %.preheader46
  %unroll_iter = and i64 %indvars.iv71, 9223372036854775806
  br label %bb.n

.preheader.loopexit:                              ; preds = %bb.m
  %.pre93.pre = load ptr, ptr %0, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit
  %.pre93 = phi ptr [ %.pre93.pre94, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit ], [ %.pre93.pre, %.preheader.loopexit ] ; 2 uses
  %.037.lcssa = phi i128 [ 0, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit ], [ %i.bf, %.preheader.loopexit ]
  %i.an = icmp sgt i32 %i.d, %i.c
  br i1 %i.an, label %.lr.ph58, label %._crit_edge59

.lr.ph58:                                         ; preds = %.preheader
  %i.ao = load ptr, ptr %1, align 8               ; 6 uses
  %sext = shl i64 %i.b, 32                        ; 2 uses
  %i.ap = ashr exact i64 %sext, 32                ; 4 uses
  %sext109 = add i64 %sext, -4294967296
  %i.aq = ashr exact i64 %sext109, 32
  %wide.trip.count = sext i32 %i.d to i64
  %invariant.op = add nsw i64 %i.aq, %i.ap
  %i.ar = add i32 %i.c, -2
  %indvars.iv82.prol = add nsw i64 %i.ap, -1      ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %indvars.iv82.prol
  br label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.unr-lcssa:                                       ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.m, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader46
  %indvars.iv64.epil.init = phi i64 [ 0, %.preheader46 ], [ %indvars.iv.next65.1, %.unr-lcssa ]
  %indvars.iv62.epil.init = phi i64 [ %indvars.iv, %.preheader46 ], [ %indvars.iv.next63.1, %.unr-lcssa ]
  %.147.epil.init = phi i128 [ %.03750, %.preheader46 ], [ %i.bz, %.unr-lcssa ]
  %lcmp.mod151 = trunc i64 %indvars.iv71 to i1
  call void @llvm.assume(i1 %lcmp.mod151)
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv64.epil.init
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv62.epil.init
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = zext i32 %i.ay to i64
  %i.ba = mul nuw i64 %i.az, %i.aw
  %i.bb = zext i64 %i.ba to i128
  %i.bc = add i128 %.147.epil.init, %i.bb
  br label %bb.m

bb.m:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa148 = phi i128 [ %i.bz, %.unr-lcssa ], [ %i.bc, %.epil.preheader ] ; 2 uses
  %i.bd = trunc i128 %.lcssa148 to i32
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.pre93.pre94, i64 %indvars.iv
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !3
  %i.bf = lshr i128 %.lcssa148, 32                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %exitcond77.not = icmp eq i64 %indvars.iv.next, %wide.trip.count76
  br i1 %exitcond77.not, label %.preheader.loopexit, label %.preheader46, !llvm.loop !701

bb.n:                                             ; preds = %bb.n, %.preheader46.new
  %indvars.iv64 = phi i64 [ 0, %.preheader46.new ], [ %indvars.iv.next65.1, %bb.n ] ; 3 uses
  %indvars.iv62 = phi i64 [ %indvars.iv, %.preheader46.new ], [ %indvars.iv.next63.1, %bb.n ] ; 3 uses
  %.147 = phi i128 [ %.03750, %.preheader46.new ], [ %i.bz, %bb.n ]
  %niter = phi i64 [ 0, %.preheader46.new ], [ %niter.next.1, %bb.n ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv64
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv62
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3
  %i.bl = zext i32 %i.bk to i64
  %i.bm = mul nuw i64 %i.bl, %i.bi
  %i.bn = zext i64 %i.bm to i128
  %i.bo = add i128 %.147, %i.bn
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr [4 x i8], ptr %i.al, i64 %indvars.iv62
  %i.bu = getelementptr i8, ptr %i.bt, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3
  %i.bw = zext i32 %i.bv to i64
  %i.bx = mul nuw i64 %i.bw, %i.bs
  %i.by = zext i64 %i.bx to i128
  %i.bz = add i128 %i.bo, %i.by                   ; 3 uses
  %indvars.iv.next65.1 = add nuw nsw i64 %indvars.iv64, 2 ; 2 uses
  %indvars.iv.next63.1 = add nsw i64 %indvars.iv62, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.n, !llvm.loop !702

._crit_edge59.loopexit:                           ; preds = %._crit_edge
  %.pre92 = load ptr, ptr %0, align 8
  br label %._crit_edge59

._crit_edge59:                                    ; preds = %._crit_edge59.loopexit, %.preheader
  %i.ca = phi ptr [ %.pre92, %._crit_edge59.loopexit ], [ %.pre93, %.preheader ]
  %i.cb = trunc nuw i64 %i.aj to i32
  %smin.i = call i32 @llvm.smin.i32(i32 %i.cb, i32 1) ; 2 uses
  %i.cc = trunc nuw i64 %i.aj to i32              ; 2 uses
  %i.cd = icmp sgt i32 %i.cc, 1
  br i1 %i.cd, label %.lr.ph143, label %.critedge.i

bb.o:                                             ; preds = %.lr.ph143
  %i.ce = trunc nuw i64 %i.ch to i32              ; 2 uses
  %i.cf = icmp sgt i32 %i.ce, 1
  br i1 %i.cf, label %.lr.ph143, label %.critedge.i, !llvm.loop !697

.lr.ph143:                                        ; preds = %._crit_edge59, %bb.o
  %i.cg = phi i32 [ %i.ce, %bb.o ], [ %i.cc, %._crit_edge59 ]
  %indvars.iv.i142 = phi i64 [ %i.ch, %bb.o ], [ %i.aj, %._crit_edge59 ]
  %i.ch = add nsw i64 %indvars.iv.i142, -1        ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.o, label %..critedge.i_crit_edge, !llvm.loop !697

..critedge.i_crit_edge:                           ; preds = %.lr.ph143
  br label %.critedge.i, !llvm.loop !697

.critedge.i:                                      ; preds = %bb.o, %..critedge.i_crit_edge, %._crit_edge59
  %.0.in.lcssa.i = phi i32 [ %smin.i, %._crit_edge59 ], [ %i.cg, %..critedge.i_crit_edge ], [ %smin.i, %bb.o ]
  %i.cl = zext i32 %.0.in.lcssa.i to i64          ; 3 uses
  %i.cm = icmp ult i64 %i.ai, %i.cl
  br i1 %i.cm, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.critedge.i
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !641
  invoke void %i.co(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.cl)
          to label %.noexc43 unwind label %bb.t, !inline_history !703

.noexc43:                                         ; preds = %bb.p
  %.pre.i.i.i = load i64, ptr %i.h, align 8, !tbaa !644
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph58, %._crit_edge
  %indvar = phi i32 [ 0, %.lr.ph58 ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %indvars.iv88 = phi i64 [ %i.ap, %.lr.ph58 ], [ %indvars.iv.next89, %._crit_edge ] ; 3 uses
  %indvars.iv78 = phi i32 [ 1, %.lr.ph58 ], [ %indvars.iv.next79, %._crit_edge ] ; 2 uses
  %.256 = phi i128 [ %.037.lcssa, %.lr.ph58 ], [ %i.de, %._crit_edge ] ; 3 uses
  %i.cp = icmp slt i64 %indvars.iv88, %invariant.op
  br i1 %i.cp, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.cq = sext i32 %indvars.iv78 to i64           ; 3 uses
  %i.cr = sub i32 %indvar, %i.c
  %i.cs = and i32 %i.cr, 1
  %lcmp.mod153.not.not = icmp eq i32 %i.cs, 0
  br i1 %lcmp.mod153.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %indvars.iv.next81.prol = add nsw i64 %i.cq, 1
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.cq
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !3
  %i.cv = zext i32 %i.cu to i64
  %i.cw = load i32, ptr %i.as, align 4, !tbaa !3
  %i.cx = zext i32 %i.cw to i64
  %i.cy = mul nuw i64 %i.cx, %i.cv
  %i.cz = zext i64 %i.cy to i128
  %i.da = add nsw i128 %.256, %i.cz               ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa147.unr = phi i128 [ poison, %.lr.ph.preheader ], [ %i.da, %.lr.ph.prol ]
  %indvars.iv82.in.unr = phi i64 [ %i.ap, %.lr.ph.preheader ], [ %indvars.iv82.prol, %.lr.ph.prol ]
  %indvars.iv80.unr = phi i64 [ %i.cq, %.lr.ph.preheader ], [ %indvars.iv.next81.prol, %.lr.ph.prol ]
  %.352.unr = phi i128 [ %.256, %.lr.ph.preheader ], [ %i.da, %.lr.ph.prol ]
  %i.db = icmp eq i32 %i.ar, %indvar
  br i1 %i.db, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.q
  %.3.lcssa = phi i128 [ %.256, %bb.q ], [ %.lcssa147.unr, %.lr.ph.prol.loopexit ], [ %i.dy, %.lr.ph ] ; 2 uses
  %i.dc = trunc i128 %.3.lcssa to i32
  %i.dd = getelementptr inbounds [4 x i8], ptr %.pre93, i64 %indvars.iv88
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !3
  %i.de = lshr i128 %.3.lcssa, 32
  %indvars.iv.next89 = add nsw i64 %indvars.iv88, 1 ; 2 uses
  %indvars.iv.next79 = add i32 %indvars.iv78, 1
  %exitcond91.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond91.not, label %._crit_edge59.loopexit, label %bb.q, !llvm.loop !704

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv82.in = phi i64 [ %indvars.iv82.1, %.lr.ph ], [ %indvars.iv82.in.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %indvars.iv80 = phi i64 [ %indvars.iv.next81.1, %.lr.ph ], [ %indvars.iv80.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.352 = phi i128 [ %i.dy, %.lr.ph ], [ %.352.unr, %.lr.ph.prol.loopexit ]
  %i.df = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %indvars.iv80
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr [4 x i8], ptr %i.ao, i64 %indvars.iv82.in
  %i.dj = getelementptr i8, ptr %i.di, i64 -4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !3
  %i.dl = zext i32 %i.dk to i64
  %i.dm = mul nuw i64 %i.dl, %i.dh
  %i.dn = zext i64 %i.dm to i128
  %i.do = add i128 %.352, %i.dn
  %indvars.iv82.1 = add nsw i64 %indvars.iv82.in, -2 ; 2 uses
  %indvars.iv.next81.1 = add nsw i64 %indvars.iv80, 2 ; 2 uses
  %i.dp = getelementptr [4 x i8], ptr %i.ao, i64 %indvars.iv80
  %i.dq = getelementptr i8, ptr %i.dp, i64 4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !3
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %indvars.iv82.1
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !3
  %i.dv = zext i32 %i.du to i64
  %i.dw = mul nuw i64 %i.dv, %i.ds
  %i.dx = zext i64 %i.dw to i128
  %i.dy = add i128 %i.do, %i.dx                   ; 2 uses
  %lftr.wideiv118.1 = trunc i64 %indvars.iv.next81.1 to i32
  %exitcond.1 = icmp eq i32 %lftr.wideiv118.1, %i.c
  br i1 %exitcond.1, label %._crit_edge, label %.lr.ph, !llvm.loop !705

bb.r:                                             ; preds = %.noexc43, %.critedge.i
  %i.dz = phi i64 [ %i.ai, %.critedge.i ], [ %.pre.i.i.i, %.noexc43 ]
  %i.ea = call noundef i64 @llvm.umin.i64(i64 %i.cl, i64 %i.dz)
  store i64 %i.ea, ptr %i.a, align 8, !tbaa !653
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !645
  %i.ed = shl nsw i32 %i.ec, 1
  store i32 %i.ed, ptr %i.eb, align 8, !tbaa !645
  %i.ee = load ptr, ptr %1, align 8, !tbaa !643   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i = icmp eq ptr %i.ee, %i.ef
  br i1 %.not.i.i, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef %i.ee) #26
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void

bb.t:                                             ; preds = %bb.p
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.l
  %.pn = phi { ptr, i32 } [ %i.eg, %bb.t ], [ %i.at, %bb.l ]
  %i.eh = load ptr, ptr %1, align 8, !tbaa !643   ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i44 = icmp eq ptr %i.eh, %i.ei
  br i1 %.not.i.i44, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit45, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef %i.eh) #26
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit45

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit45: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, ptr %5) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::locale", align 8       ; 8 uses
  %7 = alloca %class.anon.170, align 8            ; 11 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !395    ; 2 uses
  %i.b = and i32 %i.a, 16384
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %.not.i.i.i = icmp eq ptr %5, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  br label %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i

bb.d:                                             ; preds = %bb.b
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #26
  br label %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i

_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i: ; preds = %bb.d, %bb.c
  %i.c = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt7__cxx118numpunctIcE2idE) #26
  %i.d = load ptr, ptr %6, align 8, !tbaa !429
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !437
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.c
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !438  ; 3 uses
  %.not.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.not.i.i.i, label %bb.e, label %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit.i.i

bb.e:                                             ; preds = %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i
  invoke void @_ZSt16__throw_bad_castv() #28
          to label %.noexc.i.i unwind label %bb.f

.noexc.i.i:                                       ; preds = %bb.e
  unreachable

_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit.i.i: ; preds = %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !382
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = invoke noundef signext i8 %i.k(ptr noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit unwind label %bb.f, !inline_history !706

bb.f:                                             ; preds = %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit.i.i, %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  resume { ptr, i32 } %i.m

_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit: ; preds = %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit.i.i
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %.pre = load i32, ptr %2, align 4, !tbaa !395
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit
  %i.n = phi i32 [ %.pre, %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit ], [ %i.a, %bb.a ] ; 5 uses
  %i.o = phi i8 [ %i.l, %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit ], [ 46, %bb.a ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !622  ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !623
  %i.t = add nsw i32 %i.s, %i.q                   ; 3 uses
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  %i.v = trunc i32 %i.n to i8
  %i.w = and i8 %i.v, 7
  switch i8 %i.w, label %bb.h [
    i8 2, label %bb.i
    i8 1, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !397  ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  %. = select i1 %i.z, i32 %i.y, i32 %4
  %i.aa = icmp sgt i32 %i.t, -4
  %i.ab = icmp sle i32 %i.t, %.
  %i.ac = and i1 %i.aa, %i.ab
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ad = ptrtoint ptr %5 to i64
  %i.ae = call ptr @_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.q, i8 noundef signext %i.o, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i64 %i.ad)
  br label %bb.u

bb.j:                                             ; preds = %bb.g, %bb.h
  %.not51 = icmp ne i32 %3, 0
  %i.af = zext i1 %.not51 to i32
  %i.ag = add nsw i32 %i.q, %i.af
  %i.ah = sext i32 %i.ag to i64                   ; 2 uses
  %i.ai = and i32 %i.n, 8192
  %.not53 = icmp eq i32 %i.ai, 0
  br i1 %.not53, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !397
  %i.al = sub nsw i32 %i.ak, %i.q
  %i.am = call noundef i32 @llvm.smax.i32(i32 %i.al, i32 0) ; 2 uses
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = add nsw i64 %i.an, %i.ah
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ap = icmp eq i32 %i.q, 1
  %spec.select = select i1 %i.ap, i8 0, i8 %i.o
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.049 = phi i32 [ %i.am, %bb.k ], [ 0, %bb.l ]
  %.048 = phi i64 [ %i.ao, %bb.k ], [ %i.ah, %bb.l ]
  %.0 = phi i8 [ %i.o, %bb.k ], [ %spec.select, %bb.l ] ; 2 uses
  %.not52 = icmp ne i8 %.0, 0
  %i.aq = zext i1 %.not52 to i64
  %i.ar = call i32 @llvm.abs.i32(i32 %i.u, i1 true) ; 2 uses
  %i.as = icmp samesign ult i32 %i.ar, 100
  %i.at = icmp samesign ugt i32 %i.ar, 999
  %i.au = select i1 %i.at, i64 6, i64 5
end_hunk_3
