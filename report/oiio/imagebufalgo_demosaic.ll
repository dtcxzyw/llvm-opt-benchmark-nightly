Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imagebufalgo_demosaic?download=true
inline.NumInlined: 17707
inline.NumDeleted: 3921
loop-unroll.NumCompletelyUnrolled: 167
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 218
begin_hunk_0_@_ZN11OpenImageIO4v3_112ImageBufAlgo23LinearXTransDemosaicingIffE12calc_BGG_grbILb0EEEbRNS1_15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE7ContextE:bb.a
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 112
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !836
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %i.ah
  store float %i.hd, ptr %i.hk, align 4, !tbaa !53
  %i.hl = load i32, ptr %i.d, align 8, !tbaa !3
  %.val.i12.i.i18 = load ptr, ptr %i.a, align 8, !tbaa !1692
  %i.hm = getelementptr inbounds nuw i8, ptr %.val.i12.i.i18, i64 480
  %i.hn = sext i32 %i.hl to i64
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.hm, i64 %i.hn
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !53
  %i.hq = load ptr, ptr %i.aa, align 8, !tbaa !1695, !nonnull !172, !align !336 ; 3 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !832
  %i.hs = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hr)
  %i.ht = icmp eq i32 %i.hs, 3
  br i1 %i.ht, label %bb.i, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffE14IteratorValRefaSEf.exit15.i.i19, !prof !136

bb.i:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffE14IteratorValRefaSEf.exit.i.i17
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %i.hq)
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffE14IteratorValRefaSEf.exit15.i.i19

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffE14IteratorValRefaSEf.exit15.i.i19: ; preds = %bb.i, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffE14IteratorValRefaSEf.exit.i.i17
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 112
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !836
  %i.hw = getelementptr [4 x i8], ptr %i.hv, i64 %i.ah
  %i.hx = getelementptr i8, ptr %i.hw, i64 4
  store float %i.hp, ptr %i.hx, align 4, !tbaa !53
  %i.hy = load i32, ptr %i.d, align 8, !tbaa !3
  %.val.i16.i.i20 = load ptr, ptr %i.a, align 8, !tbaa !1692 ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.val.i16.i.i20, i64 648 ; 2 uses
  %i.ia = sext i32 %i.hy to i64
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.hz, i64 %i.ia
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !53
  %i.id = load i32, ptr %i.p, align 4, !tbaa !3
  %i.ie = getelementptr inbounds nuw i8, ptr %.val.i16.i.i20, i64 312
  %i.if = sext i32 %i.id to i64
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.ie, i64 %i.if
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !53
  %i.ii = load i32, ptr %i.fz, align 8, !tbaa !3
  %i.ij = getelementptr inbounds nuw i8, ptr %.val.i16.i.i20, i64 480
  %i.ik = sext i32 %i.ii to i64
  %i.il = getelementptr inbounds [4 x i8], ptr %i.ij, i64 %i.ik
  %i.im = load float, ptr %i.il, align 4, !tbaa !53
  %i.in = load i32, ptr %i.cu, align 8, !tbaa !3
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.hz, i64 %i.io
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !53
  %i.ir = load ptr, ptr %i.aa, align 8, !tbaa !1695, !nonnull !172, !align !336 ; 3 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !832
  %i.it = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.is)
  %i.iu = icmp eq i32 %i.it, 3
  br i1 %i.iu, label %bb.j, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE16check_and_decodeILb0EZNS1_23LinearXTransDemosaicingIffE12calc_BGG_grbILb0EEEbRNS5_7ContextEEUlvE1_EEbSB_RKT0_.exit, !prof !136

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffE14IteratorValRefaSEf.exit15.i.i19
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %i.ir)
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE16check_and_decodeILb0EZNS1_23LinearXTransDemosaicingIffE12calc_BGG_grbILb0EEEbRNS5_7ContextEEUlvE1_EEbSB_RKT0_.exit

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE16check_and_decodeILb0EZNS1_23LinearXTransDemosaicingIffE12calc_BGG_grbILb0EEEbRNS5_7ContextEEUlvE1_EEbSB_RKT0_.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffE14IteratorValRefaSEf.exit15.i.i19, %bb.j
  %i.iv = fpext float %i.im to double
  %i.iw = fpext float %i.ih to double
  %i.ix = fpext float %i.ic to double
  %i.iy = tail call double @llvm.fmuladd.f64(double %i.iw, double f0x3FE6A09E667F3BCD, double %i.ix)
  %i.iz = tail call double @llvm.fmuladd.f64(double %i.iv, double 5.000000e-01, double %i.iy)
  %i.ja = fpext float %i.iq to double
  %i.jb = fdiv double %i.ja, f0x4001E3779B97F4A8
  %i.jc = fadd double %i.iz, %i.jb
  %i.jd = fdiv double %i.jc, f0x40053C0C5257CCAE
  %i.je = fptrunc double %i.jd to float
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ir, i64 112
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !836
  %i.jh = getelementptr [4 x i8], ptr %i.jg, i64 %i.ah
  %i.ji = getelementptr i8, ptr %i.jh, i64 8
  store float %i.je, ptr %i.ji, align 4, !tbaa !53
  %i.jj = load ptr, ptr %i.aa, align 8, !tbaa !1695, !nonnull !172, !align !336
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %i.jj)
  %i.jk = load i32, ptr %i.cg, align 8, !tbaa !1691
  %i.jl = add nsw i32 %i.jk, -1
  store i32 %i.jl, ptr %i.cg, align 8, !tbaa !1691
  %i.jm = load ptr, ptr %0, align 8, !tbaa !1686, !nonnull !172, !align !336
  tail call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window6updateEv(ptr noundef nonnull align 8 dereferenceable(60) %i.jm)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS4_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<float, float, 6, 5, OpenImageIO::ImageBufAlgo::xtrans_channel_map>::Window::Row", align 8 ; 37 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 8 uses
  %4 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<float, float, 6, 5, OpenImageIO::ImageBufAlgo::xtrans_channel_map>::Window", align 8 ; 20 uses
  %5 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<float, float, 6, 5, OpenImageIO::ImageBufAlgo::xtrans_channel_map>::Context", align 8 ; 11 uses
  %6 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 10 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !58    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1703 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.d = load ptr, ptr %.val, align 8, !tbaa !1705, !nonnull !172, !align !336
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0, i1 noundef zeroext true)
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !868  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !867
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %.lr.ph54.i.i.i, label %._crit_edge55.i.i.i

.lr.ph54.i.i.i:                                   ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 100 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 52 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 132 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br label %bb.d

._crit_edge55.i.i.i:                              ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !888
  %.not.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS7_RA4_KfNS1_3ROIEiEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge55.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS7_RA4_KfNS1_3ROIEiEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #33
  unreachable

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %.lr.ph54.i.i.i
  %.01752.i.i.i = phi i32 [ %i.f, %.lr.ph54.i.i.i ], [ %i.kb, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.bg = load i32, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !1706, !nonnull !172, !align !336 ; 3 uses
  %i.bi = load i32, ptr %i.k, align 8, !tbaa !1671
  %i.bj = load i32, ptr %i.l, align 4, !tbaa !1673
  %i.bk = load ptr, ptr %i.m, align 8, !tbaa !1707, !nonnull !172, !align !315 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %4, i8 0, i64 24, i1 false)
  %i.bl = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh)
          to label %.preheader91.i.i.i.i unwind label %bb.e ; 4 uses

.preheader91.i.i.i.i:                             ; preds = %bb.d
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !891 ; 3 uses
  store i32 %i.bm, ptr %i.n, align 4, !tbaa !1708
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !897
  %i.bp = add nsw i32 %i.bo, %i.bm
  store i32 %i.bp, ptr %i.o, align 8, !tbaa !1713
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !899 ; 2 uses
  store i32 %i.br, ptr %i.p, align 4, !tbaa !1714
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !901
  %i.bu = add nsw i32 %i.bt, %i.br
  store i32 %i.bu, ptr %i.q, align 8, !tbaa !1715
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.r, align 8, !tbaa !3
  store i32 4, ptr %i.s, align 8, !tbaa !3
  %i.bv = sub i32 %i.bm, %i.bg                    ; 3 uses
  %i.bw = call i32 @llvm.smax.i32(i32 %i.bv, i32 -2) ; 4 uses
  %spec.store.select.i.i.i.i = add i32 %i.bw, 2   ; 3 uses
  %i.bx = add i32 %i.bw, %i.bg                    ; 3 uses
  %i.by = add nsw i32 %i.bx, %i.bi
  %i.bz = srem i32 %i.by, 6                       ; 3 uses
  %i.ca = icmp slt i32 %i.bv, 3
  %i.cb = icmp sgt i32 %i.bv, -2
  %i.cc = add i32 %.01752.i.i.i, -2
  %i.cd = sub i32 2, %.01752.i.i.i
  %i.ce = sext i32 %spec.store.select.i.i.i.i to i64
  %i.cf = sub i32 -2, %i.bw
  %7 = add i32 %i.bw, 7
  %smax130.i.i.i.i = call i32 @llvm.smax.i32(i32 %spec.store.select.i.i.i.i, i32 1)
  %wide.trip.count.i.i.i.i = zext nneg i32 %smax130.i.i.i.i to i64
  br label %.preheader90.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.preheader90.i.i.i.i:                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, %.preheader91.i.i.i.i
  %indvars.iv116.i.i.i.i = phi i32 [ %i.cd, %.preheader91.i.i.i.i ], [ %indvars.iv.next117.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i.i = phi i32 [ %i.cc, %.preheader91.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ] ; 3 uses
  %.074105.i.i.i.i = phi i32 [ 0, %.preheader91.i.i.i.i ], [ %i.ig, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ]
  %i.ch = load i32, ptr %i.p, align 4, !tbaa !1714
  %smax.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.ch, i32 %indvars.iv.i.i.i.i)
  %i.ci = add i32 %smax.i.i.i.i, %indvars.iv116.i.i.i.i ; 2 uses
  %i.cj = icmp ne i32 %i.ci, 0
  %umin.i.i.i.i = zext i1 %i.cj to i32            ; 2 uses
  %i.ck = load i32, ptr %i.q, align 8, !tbaa !1715
  %i.cl = sub i32 %i.ci, %umin.i.i.i.i
  %i.cm = udiv i32 %i.cl, 6
  %i.cn = add nuw nsw i32 %i.cm, %umin.i.i.i.i
  %i.co = mul i32 %i.cn, 6
  %i.cp = add i32 %i.co, %indvars.iv.i.i.i.i      ; 4 uses
  %i.cq = add i32 %i.ck, -1                       ; 2 uses
  %smin.i.i.i = call i32 @llvm.smin.i32(i32 %i.cp, i32 %i.cq)
  %i.cr = icmp sgt i32 %i.cp, %i.cq               ; 2 uses
  %umin.i.neg11.i.i = sext i1 %i.cr to i32
  %umin.i.i.i = zext i1 %i.cr to i32
  %.neg.i.i = sub i32 %i.cp, %smin.i.i.i
  %i.cs = add i32 %.neg.i.i, %umin.i.neg11.i.i
  %i.ct = udiv i32 %i.cs, 6
  %i.cu = add nuw nsw i32 %i.ct, %umin.i.i.i
  %.neg.i.i.i = mul i32 %i.cu, -6
  %i.cv = add i32 %.neg.i.i.i, %i.cp              ; 3 uses
  %i.cw = add nsw i32 %i.cv, %i.bj
  %i.cx = srem i32 %i.cw, 6                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_iiiNS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i32 noundef %i.bx, i32 noundef %i.cv, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.f

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %.preheader90.i.i.i.i
  store i32 %i.bz, ptr %i.t, align 8, !tbaa !1699
  store i32 %i.cx, ptr %i.u, align 4, !tbaa !1698
  store ptr %i.bk, ptr %i.v, align 8, !tbaa !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.w, i8 0, i64 20, i1 false)
  br i1 %i.ca, label %.lr.ph.i.i.i.i, label %.lr.ph104.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.s
  br i1 %i.cb, label %.lr.ph104.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph104.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [48 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL18xtrans_channel_mapE, i64 %i.cy
  br label %bb.aj

bb.f:                                             ; preds = %.preheader90.i.i.i.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.s
  %i.db = phi i32 [ %spec.select.i.i.i.i.i, %bb.s ], [ %i.bz, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv118.i.i.i.i = phi i64 [ %indvars.iv.next119.i.i.i.i, %bb.s ], [ %i.ce, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 2 uses
  %i.dc = load ptr, ptr %i.v, align 8, !tbaa !1696, !nonnull !172, !align !315
  %i.dd = load i32, ptr %i.u, align 4, !tbaa !1698
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [48 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL18xtrans_channel_mapE, i64 %i.de
  %i.dg = sext i32 %i.db to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !180
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.di
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !53
  %i.dl = load ptr, ptr %i.x, align 8, !tbaa !836 ; 3 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !53
  %i.dn = load i32, ptr %i.y, align 4, !tbaa !844 ; 3 uses
  %i.do = load i32, ptr %i.z, align 8, !tbaa !845, !noalias !1716 ; 2 uses
  %i.dp = add nsw i32 %i.do, -1
  %i.dq = icmp eq i32 %i.dn, %i.dp
  br i1 %i.dq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dr = add nsw i32 %i.dn, -5
  %i.ds = load i32, ptr %i.ab, align 8, !tbaa !849
  br label %.invoke.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dt = add nsw i32 %i.dn, 1                    ; 7 uses
  store i32 %i.dt, ptr %i.y, align 4, !tbaa !844
  %i.du = icmp slt i32 %i.dt, %i.do
  br i1 %i.du, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.dv = load i8, ptr %i.ah, align 1, !tbaa !850, !range !171, !noundef !172
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.j, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.i
  %.pre.i.i.i.i.i = load i32, ptr %i.ab, align 8, !tbaa !849
  %.pre.i.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !856
  br label %.invoke.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.dx = load i8, ptr %i.ai, align 1, !tbaa !851, !range !171, !noundef !172
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.dz = load i64, ptr %i.ak, align 8, !tbaa !852
  %i.ea = getelementptr inbounds i8, ptr %i.dl, i64 %i.dz
  store ptr %i.ea, ptr %i.x, align 8, !tbaa !836
  %i.eb = load i32, ptr %i.al, align 8, !tbaa !853
  %.not.i.i85.i.i.i.i = icmp slt i32 %i.dt, %i.eb
  br i1 %.not.i.i85.i.i.i.i, label %bb.s, label %bb.l, !prof !55

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.s unwind label %bb.t

bb.m:                                             ; preds = %bb.j
  %i.ec = load i8, ptr %i.aj, align 2, !tbaa !854, !range !171, !noundef !172
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ee = load i64, ptr %i.ak, align 8, !tbaa !852
  %i.ef = getelementptr inbounds i8, ptr %i.dl, i64 %i.ee
  store ptr %i.ef, ptr %i.x, align 8, !tbaa !836
  %i.eg = load i32, ptr %i.al, align 8, !tbaa !853
  %i.eh = icmp slt i32 %i.dt, %i.eg               ; 3 uses
  %i.ei = load i32, ptr %i.am, align 4
  %i.ej = icmp sge i32 %i.dt, %i.ei
  %not..i.i.i.i.i.i = xor i1 %i.eh, true
  %or.cond.i.i.i.i.i.i = select i1 %not..i.i.i.i.i.i, i1 true, i1 %i.ej, !prof !855
  %i.ek = load ptr, ptr %i.an, align 8
  %i.el = icmp eq ptr %i.ek, null
  %i.em = select i1 %or.cond.i.i.i.i.i.i, i1 true, i1 %i.el, !prof !855
  br i1 %i.em, label %bb.o, label %bb.s, !prof !136

bb.o:                                             ; preds = %bb.n
  %i.en = load ptr, ptr %2, align 8, !tbaa !832
  %i.eo = load i32, ptr %i.ab, align 8, !tbaa !849
  %i.ep = load i32, ptr %i.ae, align 4, !tbaa !856
  %i.eq = load i32, ptr %i.as, align 8, !tbaa !857
  %i.er = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.en, i32 noundef %i.dt, i32 noundef %i.eo, i32 noundef %i.ep, ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.am, ptr noundef nonnull align 1 dereferenceable(1) %i.ar, i1 noundef zeroext %i.eh, i32 noundef %i.eq)
          to label %.noexc87.i.i.i.i unwind label %bb.t

.noexc87.i.i.i.i:                                 ; preds = %bb.o
  %i.es = zext i1 %i.eh to i8
  store ptr %i.er, ptr %i.x, align 8, !tbaa !836
  store i8 %i.es, ptr %i.ah, align 1, !tbaa !850
  br label %bb.s

bb.p:                                             ; preds = %bb.h
  %i.et = load i32, ptr %i.aa, align 4, !tbaa !858 ; 3 uses
  store i32 %i.et, ptr %i.y, align 4, !tbaa !844
  %i.eu = load i32, ptr %i.ab, align 8, !tbaa !849
  %i.ev = add nsw i32 %i.eu, 1                    ; 3 uses
  store i32 %i.ev, ptr %i.ab, align 8, !tbaa !849
  %i.ew = load i32, ptr %i.ac, align 8, !tbaa !859
  %.not.i84.i.i.i.i = icmp slt i32 %i.ev, %i.ew
  %.pre133.i.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !856 ; 2 uses
  br i1 %.not.i84.i.i.i.i, label %.invoke.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ex = load i32, ptr %i.ad, align 4, !tbaa !860 ; 2 uses
  store i32 %i.ex, ptr %i.ab, align 8, !tbaa !849
  %i.ey = add nsw i32 %.pre133.i.i.i.i, 1         ; 3 uses
  store i32 %i.ey, ptr %i.ae, align 4, !tbaa !856
  %i.ez = load i32, ptr %i.af, align 8, !tbaa !861
  %.not1.i.i.i.i.i = icmp slt i32 %i.ey, %i.ez
  br i1 %.not1.i.i.i.i.i, label %.invoke.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr %i.ag, align 8, !tbaa !862
  br label %bb.s

.invoke.i.i.i.i:                                  ; preds = %bb.q, %bb.p, %._crit_edge.i.i.i.i.i, %bb.g
  %i.fa = phi i32 [ %i.dr, %bb.g ], [ %i.et, %bb.p ], [ %i.et, %bb.q ], [ %i.dt, %._crit_edge.i.i.i.i.i ]
  %i.fb = phi i32 [ %i.ds, %bb.g ], [ %i.ev, %bb.p ], [ %i.ex, %bb.q ], [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  %i.fc = phi i32 [ 0, %bb.g ], [ %.pre133.i.i.i.i, %bb.p ], [ %i.ey, %bb.q ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(164) %2, i32 noundef %i.fa, i32 noundef %i.fb, i32 noundef %i.fc)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.invoke.i.i.i.i, %bb.r, %.noexc87.i.i.i.i, %bb.n, %bb.m, %bb.l, %bb.k
  %i.fd = load i32, ptr %i.t, align 8, !tbaa !1699
  %i.fe = add nsw i32 %i.fd, 1                    ; 2 uses
  %i.ff = icmp eq i32 %i.fe, 6
  %spec.select.i.i.i.i.i = select i1 %i.ff, i32 0, i32 %i.fe ; 2 uses
  store i32 %spec.select.i.i.i.i.i, ptr %i.t, align 8, !tbaa !1699
  %i.fg = fmul float %i.dk, %i.dm
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv118.i.i.i.i
  store float %i.fg, ptr %i.fh, align 4, !tbaa !53
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1 ; 2 uses
  %i.fi = and i64 %indvars.iv.next119.i.i.i.i, 4294967295
  %exitcond.not.i.i.i.i = icmp eq i64 %i.fi, 5
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1719

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.an, %.preheader.i.i.i.i
  %i.fk = load ptr, ptr %i.at, align 8, !tbaa !1720 ; 7 uses
  %i.fl = load ptr, ptr %i.au, align 8, !tbaa !1721
  %.not.i.i.i.i.i = icmp eq ptr %i.fk, %i.fl
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.fk, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %.noexc80.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc80.i.i.i.i:                                 ; preds = %bb.u
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.fm, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  %i.fn = load ptr, ptr %i.at, align 8, !tbaa !1720
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 168
  store ptr %i.fo, ptr %i.at, align 8, !tbaa !1720
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !1692 ; 6 uses
  %i.fp = ptrtoint ptr %i.fk to i64
  %i.fq = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.fr = sub i64 %i.fp, %i.fq                    ; 3 uses
  %i.fs = icmp eq i64 %i.fr, 9223372036854775800
  br i1 %i.fs, label %bb.w, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc81.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.ft = sdiv exact i64 %i.fr, 168               ; 3 uses
  %i.fu = icmp eq ptr %i.fk, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.fu, i64 1, i64 %i.ft
  %i.fv = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.ft ; 2 uses
  %i.fw = icmp ult i64 %i.fv, %i.ft
  %i.fx = call i64 @llvm.umin.i64(i64 %i.fv, i64 54901024028897475)
  %i.fy = select i1 %i.fw, i64 54901024028897475, i64 %i.fx ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.fy, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.fz = mul nuw nsw i64 %i.fy, 168              ; 2 uses
  %i.ga = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fz) #32
          to label %.noexc82.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc82.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.fr ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.gb, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.x unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i

bb.x:                                             ; preds = %.noexc82.i.i.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gc, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  br i1 %i.fu, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.x
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 168
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.x, %bb.y
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gh, %bb.y ], [ %i.ga, %bb.x ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gg, %bb.y ], [ %.val.i.i.i.i.i.i, %bb.x ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(164) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gf = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ge, ptr noundef nonnull align 8 dereferenceable(36) %i.gf, i64 36, i1 false)
  %i.gg = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 168
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gg, %i.fk
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1722

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gi = landingpad { ptr, i32 }
          catch ptr null
  %i.gj = extractvalue { ptr, i32 } %i.gi, 0
  %i.gk = call ptr @__cxa_begin_catch(ptr %i.gj) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_(ptr noundef nonnull %i.ga, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gl = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gm = landingpad { ptr, i32 }
          catch ptr null
  %i.gn = extractvalue { ptr, i32 } %i.gm, 0
  call void @__clang_call_terminate(ptr %i.gn) #33
  unreachable

bb.ac:                                            ; preds = %bb.z
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.y
  %i.go = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 336
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.gt, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !888
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gr = landingpad { ptr, i32 }
          catch ptr null
  %i.gs = extractvalue { ptr, i32 } %i.gr, 0
  call void @__clang_call_terminate(ptr %i.gs) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gt, %i.fk
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1723

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i
  %i.gu = phi ptr [ %i.gd, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.go, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  %i.gv = load ptr, ptr %i.au, align 8, !tbaa !1721
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = sub i64 %i.gw, %i.fq
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.gx) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc82.i.i.i.i
  %i.gy = landingpad { ptr, i32 }
          catch ptr null
  %i.gz = extractvalue { ptr, i32 } %i.gy, 0
  %i.ha = call ptr @__cxa_begin_catch(ptr %i.gz) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.aa
  %i.hb = extractvalue { ptr, i32 } %i.gl, 0
  %i.hc = call ptr @__cxa_begin_catch(ptr %i.hb) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(164) dereferenceable(164) %i.gb) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  %i.hd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.ah

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ga, i64 noundef %i.fz) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.ai unwind label %bb.ag

bb.ah:                                            ; preds = %bb.ag
  %i.he = landingpad { ptr, i32 }
          catch ptr null
  %i.hf = extractvalue { ptr, i32 } %i.he, 0
  call void @__clang_call_terminate(ptr %i.hf) #33
  unreachable

bb.ai:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.af, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  store ptr %i.ga, ptr %4, align 8, !tbaa !1692
  store ptr %i.gu, ptr %i.at, align 8, !tbaa !1720
  %i.hg = getelementptr inbounds nuw [168 x i8], ptr %i.ga, i64 %i.fy
  store ptr %i.hg, ptr %i.au, align 8, !tbaa !1721
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.an, %.lr.ph104.i.i.i.i
  %indvars.iv127.i.i.i.i = phi i64 [ 0, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next128.i.i.i.i, %bb.an ] ; 3 uses
  %indvars.iv124.i.i.i.i = phi i32 [ %7, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next125.i.i.i.i, %bb.an ] ; 2 uses
  %indvars.iv121.i.i.i.i = phi i32 [ %i.cf, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next122.i.i.i.i, %bb.an ] ; 3 uses
  %smax123.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv121.i.i.i.i, i32 0)
  %i.hh = add i32 %smax123.i.i.i.i, %indvars.iv124.i.i.i.i
  %.fr.i.i.i.i = freeze i32 %i.hh                 ; 2 uses
  %8 = urem i32 %.fr.i.i.i.i, 6
  %i.hi = sub nuw i32 %.fr.i.i.i.i, %8
  %i.hj = add i32 %i.hi, %indvars.iv121.i.i.i.i   ; 3 uses
  %i.hk = add nsw i32 %i.hj, %spec.store.select.i.i.i.i ; 2 uses
  %i.hl = icmp slt i32 %i.hk, 5
  br i1 %i.hl, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.hm = sext i32 %i.hk to i64
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.hm
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !53
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv127.i.i.i.i
  store float %i.ho, ptr %i.hp, align 4, !tbaa !53
  br label %bb.an

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.hq = add nsw i32 %i.hj, %i.bx
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiNS0_4spanIfLm18446744073709551615EEENS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i32 noundef %i.hq, i32 noundef %i.cv, i32 noundef 0, ptr nonnull %i.a, i64 1, i32 noundef 1)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.am

_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %bb.al
  %i.hr = add nsw i32 %i.hj, %i.bz
  %i.hs = srem i32 %i.hr, 6
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.ht
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !180
  %i.hw = load float, ptr %i.a, align 4, !tbaa !53
  %sext.i.i.i.i = shl i64 %i.hv, 32
  %i.hx = ashr exact i64 %sext.i.i.i.i, 30
  %i.hy = getelementptr inbounds i8, ptr %i.bk, i64 %i.hx
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !53
  %i.ia = fmul float %i.hw, %i.hz
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv127.i.i.i.i
  store float %i.ia, ptr %i.ib, align 4, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %.body.i.i.i.i

bb.an:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i, %bb.ak
  %indvars.iv.next128.i.i.i.i = add nuw nsw i64 %indvars.iv127.i.i.i.i, 1 ; 2 uses
  %indvars.iv.next122.i.i.i.i = add i32 %indvars.iv121.i.i.i.i, 1
  %indvars.iv.next125.i.i.i.i = add i32 %indvars.iv124.i.i.i.i, -1
  %exitcond131.not.i.i.i.i.a = icmp eq i64 %indvars.iv.next128.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond131.not.i.i.i.i.a, label %._crit_edge.i.i.i.i, label %bb.aj, !llvm.loop !1724

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, %.noexc80.i.i.i.i
  %i.id = load ptr, ptr %i.an, align 8, !tbaa !888
  %.not.i.i.i.i.i.i = icmp eq ptr %i.id, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ie = landingpad { ptr, i32 }
          catch ptr null
  %i.if = extractvalue { ptr, i32 } %i.ie, 0
  call void @__clang_call_terminate(ptr %i.if) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i: ; preds = %bb.ao, %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.ig = add nuw nsw i32 %.074105.i.i.i.i, 1     ; 2 uses
  %indvars.iv.next.i.i.i.i = add i32 %indvars.iv.i.i.i.i, 1
  %indvars.iv.next117.i.i.i.i = add i32 %indvars.iv116.i.i.i.i, -1
  %exitcond132.not.i.i.i.i = icmp eq i32 %i.ig, 5
  br i1 %exitcond132.not.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i, label %.preheader90.i.i.i.i, !llvm.loop !1725

.loopexit.i.i.i.i:                                ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %bb.u
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.w
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i, %bb.am, %bb.ag, %bb.t
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.fj, %bb.t ], [ %i.ic, %bb.am ], [ %i.hd, %bb.ag ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.ih = load ptr, ptr %i.an, align 8, !tbaa !888
  %.not.i.i28.i.i.i = icmp eq ptr %i.ih, null
  br i1 %.not.i.i28.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %.body.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ii = landingpad { ptr, i32 }
          catch ptr null
  %i.ij = extractvalue { ptr, i32 } %i.ii, 0
  call void @__clang_call_terminate(ptr %i.ij) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i: ; preds = %bb.aq, %.body.i.i.i.i, %bb.f
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.da, %bb.f ], [ %.pn.i.i.i.i, %.body.i.i.i.i ], [ %.pn.i.i.i.i, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.as

bb.as:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, %bb.e
  %.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i ], [ %i.cg, %bb.e ] ; 2 uses
  %i.ik = load ptr, ptr %4, align 8, !tbaa !1692  ; 3 uses
  %i.il = load ptr, ptr %i.at, align 8, !tbaa !1720 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ik, %i.il
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.as, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.iq, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i ], [ %i.ik, %bb.as ] ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 72
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !888
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.in, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.io = landingpad { ptr, i32 }
          catch ptr null
  %i.ip = extractvalue { ptr, i32 } %i.io, 0
  call void @__clang_call_terminate(ptr %i.ip) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.at, %.lr.ph.i.i.i.i.i.i
  %i.iq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i27.i.i.i = icmp eq ptr %i.iq, %i.il
  br i1 %.not.i.i.i27.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1723

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.val.pr.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !1692
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.as
  %.val.i.i.i.i = phi ptr [ %.val.pr.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.ik, %bb.as ] ; 3 uses
  %.not.i.i2.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i2.i.i.i.i, label %.body.i.i.i, label %bb.av

bb.av:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i
  %.val1.i.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !1721
  %i.ir = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.is = ptrtoint ptr %.val.i.i.i.i to i64
  %i.it = sub i64 %i.ir, %i.is
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.it) #30
  br label %.body.i.i.i

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i
  %i.iu = load i32, ptr %i.l, align 4, !tbaa !1673
  %i.iv = add nsw i32 %i.iu, %.01752.i.i.i
  %i.iw = srem i32 %i.iv, 6
  %i.ix = sext i32 %i.iw to i64                   ; 2 uses
  %i.iy = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ix
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.ix ; 2 uses
  %i.ja = load i32, ptr %i.k, align 8, !tbaa !1671
  %i.jb = load i32, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.jc = add nsw i32 %i.jb, %i.ja
  %i.jd = srem i32 %i.jc, 6                       ; 2 uses
  %i.je = load i32, ptr %i.aw, align 4, !tbaa !866
  %i.jf = sub nsw i32 %i.je, %i.jb                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %4, ptr %5, align 8, !tbaa !1726
  store ptr %3, ptr %i.ax, align 8, !tbaa !914
  %i.jg = load i32, ptr %i.az, align 8, !tbaa !29
  store i32 %i.jg, ptr %i.ay, align 8, !tbaa !1689
  store i32 %i.jd, ptr %i.ba, align 4, !tbaa !1690
  store i32 %i.jf, ptr %i.bb, align 8, !tbaa !1691
  %i.jh = icmp sgt i32 %i.jd, 0
  br i1 %i.jh, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.ji = load ptr, ptr %i.iz, align 8, !tbaa !58
  invoke void %i.ji(ptr noundef nonnull align 8 dereferenceable(28) %5)
          to label %._crit_edge65.i.i.i unwind label %bb.ax

._crit_edge65.i.i.i:                              ; preds = %bb.aw
  %.pre.i.i.i = load i32, ptr %i.bb, align 8, !tbaa !1691
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ay:                                            ; preds = %._crit_edge65.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.jk = phi i32 [ %.pre.i.i.i, %._crit_edge65.i.i.i ], [ %i.jf, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i ] ; 2 uses
  %.off.i.i.i = add i32 %i.jk, 5
  %.not.i.i.i = icmp ult i32 %.off.i.i.i, 11
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.ay
  %i.jl = sdiv i32 %i.jk, 6
  %i.jm = call i32 @llvm.umax.i32(i32 %i.jl, i32 1)
  %umax.i.i.i = sext i32 %i.jm to i64
  br label %.lr.ph.i.i.i

end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_112ImageBufAlgo23LinearXTransDemosaicingIfhE12calc_BGG_grbILb0EEEbRNS1_15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE7ContextE:bb.a
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 112
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !836
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %i.ah
  store float %i.hd, ptr %i.hk, align 4, !tbaa !53
  %i.hl = load i32, ptr %i.d, align 8, !tbaa !3
  %.val.i12.i.i18 = load ptr, ptr %i.a, align 8, !tbaa !1751
  %i.hm = getelementptr inbounds nuw i8, ptr %.val.i12.i.i18, i64 480
  %i.hn = sext i32 %i.hl to i64
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.hm, i64 %i.hn
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !53
  %i.hq = load ptr, ptr %i.aa, align 8, !tbaa !1754, !nonnull !172, !align !336 ; 3 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !832
  %i.hs = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hr)
  %i.ht = icmp eq i32 %i.hs, 3
  br i1 %i.ht, label %bb.i, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffE14IteratorValRefaSEf.exit15.i.i19, !prof !136

bb.i:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffE14IteratorValRefaSEf.exit.i.i17
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %i.hq)
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffE14IteratorValRefaSEf.exit15.i.i19

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffE14IteratorValRefaSEf.exit15.i.i19: ; preds = %bb.i, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffE14IteratorValRefaSEf.exit.i.i17
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 112
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !836
  %i.hw = getelementptr [4 x i8], ptr %i.hv, i64 %i.ah
  %i.hx = getelementptr i8, ptr %i.hw, i64 4
  store float %i.hp, ptr %i.hx, align 4, !tbaa !53
  %i.hy = load i32, ptr %i.d, align 8, !tbaa !3
  %.val.i16.i.i20 = load ptr, ptr %i.a, align 8, !tbaa !1751 ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.val.i16.i.i20, i64 648 ; 2 uses
  %i.ia = sext i32 %i.hy to i64
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.hz, i64 %i.ia
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !53
  %i.id = load i32, ptr %i.p, align 4, !tbaa !3
  %i.ie = getelementptr inbounds nuw i8, ptr %.val.i16.i.i20, i64 312
  %i.if = sext i32 %i.id to i64
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.ie, i64 %i.if
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !53
  %i.ii = load i32, ptr %i.fz, align 8, !tbaa !3
  %i.ij = getelementptr inbounds nuw i8, ptr %.val.i16.i.i20, i64 480
  %i.ik = sext i32 %i.ii to i64
  %i.il = getelementptr inbounds [4 x i8], ptr %i.ij, i64 %i.ik
  %i.im = load float, ptr %i.il, align 4, !tbaa !53
  %i.in = load i32, ptr %i.cu, align 8, !tbaa !3
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.hz, i64 %i.io
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !53
  %i.ir = load ptr, ptr %i.aa, align 8, !tbaa !1754, !nonnull !172, !align !336 ; 3 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !832
  %i.it = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.is)
  %i.iu = icmp eq i32 %i.it, 3
  br i1 %i.iu, label %bb.j, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE16check_and_decodeILb0EZNS1_23LinearXTransDemosaicingIfhE12calc_BGG_grbILb0EEEbRNS5_7ContextEEUlvE1_EEbSB_RKT0_.exit, !prof !136

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffE14IteratorValRefaSEf.exit15.i.i19
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %i.ir)
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE16check_and_decodeILb0EZNS1_23LinearXTransDemosaicingIfhE12calc_BGG_grbILb0EEEbRNS5_7ContextEEUlvE1_EEbSB_RKT0_.exit

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE16check_and_decodeILb0EZNS1_23LinearXTransDemosaicingIfhE12calc_BGG_grbILb0EEEbRNS5_7ContextEEUlvE1_EEbSB_RKT0_.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffE14IteratorValRefaSEf.exit15.i.i19, %bb.j
  %i.iv = fpext float %i.im to double
  %i.iw = fpext float %i.ih to double
  %i.ix = fpext float %i.ic to double
  %i.iy = tail call double @llvm.fmuladd.f64(double %i.iw, double f0x3FE6A09E667F3BCD, double %i.ix)
  %i.iz = tail call double @llvm.fmuladd.f64(double %i.iv, double 5.000000e-01, double %i.iy)
  %i.ja = fpext float %i.iq to double
  %i.jb = fdiv double %i.ja, f0x4001E3779B97F4A8
  %i.jc = fadd double %i.iz, %i.jb
  %i.jd = fdiv double %i.jc, f0x40053C0C5257CCAE
  %i.je = fptrunc double %i.jd to float
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ir, i64 112
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !836
  %i.jh = getelementptr [4 x i8], ptr %i.jg, i64 %i.ah
  %i.ji = getelementptr i8, ptr %i.jh, i64 8
  store float %i.je, ptr %i.ji, align 4, !tbaa !53
  %i.jj = load ptr, ptr %i.aa, align 8, !tbaa !1754, !nonnull !172, !align !336
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %i.jj)
  %i.jk = load i32, ptr %i.cg, align 8, !tbaa !1750
  %i.jl = add nsw i32 %i.jk, -1
  store i32 %i.jl, ptr %i.cg, align 8, !tbaa !1750
  %i.jm = load ptr, ptr %0, align 8, !tbaa !1745, !nonnull !172, !align !336
  tail call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window6updateEv(ptr noundef nonnull align 8 dereferenceable(60) %i.jm)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS4_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<float, unsigned char, 6, 5, OpenImageIO::ImageBufAlgo::xtrans_channel_map>::Window::Row", align 8 ; 37 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 8 uses
  %4 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<float, unsigned char, 6, 5, OpenImageIO::ImageBufAlgo::xtrans_channel_map>::Window", align 8 ; 20 uses
  %5 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<float, unsigned char, 6, 5, OpenImageIO::ImageBufAlgo::xtrans_channel_map>::Context", align 8 ; 11 uses
  %6 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 10 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !58    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1762 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.d = load ptr, ptr %.val, align 8, !tbaa !1764, !nonnull !172, !align !336
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0, i1 noundef zeroext true)
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !868  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !867
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %.lr.ph54.i.i.i, label %._crit_edge55.i.i.i

.lr.ph54.i.i.i:                                   ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 100 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 52 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 132 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br label %bb.d

._crit_edge55.i.i.i:                              ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !888
  %.not.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS7_RA4_KfNS1_3ROIEiEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge55.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS7_RA4_KfNS1_3ROIEiEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #33
  unreachable

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %.lr.ph54.i.i.i
  %.01752.i.i.i = phi i32 [ %i.f, %.lr.ph54.i.i.i ], [ %i.kd, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.bg = load i32, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !1765, !nonnull !172, !align !336 ; 3 uses
  %i.bi = load i32, ptr %i.k, align 8, !tbaa !1730
  %i.bj = load i32, ptr %i.l, align 4, !tbaa !1732
  %i.bk = load ptr, ptr %i.m, align 8, !tbaa !1766, !nonnull !172, !align !315 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %4, i8 0, i64 24, i1 false)
  %i.bl = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh)
          to label %.preheader91.i.i.i.i unwind label %bb.e ; 4 uses

.preheader91.i.i.i.i:                             ; preds = %bb.d
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !891 ; 3 uses
  store i32 %i.bm, ptr %i.n, align 4, !tbaa !1767
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !897
  %i.bp = add nsw i32 %i.bo, %i.bm
  store i32 %i.bp, ptr %i.o, align 8, !tbaa !1772
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !899 ; 2 uses
  store i32 %i.br, ptr %i.p, align 4, !tbaa !1773
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !901
  %i.bu = add nsw i32 %i.bt, %i.br
  store i32 %i.bu, ptr %i.q, align 8, !tbaa !1774
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.r, align 8, !tbaa !3
  store i32 4, ptr %i.s, align 8, !tbaa !3
  %i.bv = sub i32 %i.bm, %i.bg                    ; 3 uses
  %i.bw = call i32 @llvm.smax.i32(i32 %i.bv, i32 -2) ; 4 uses
  %spec.store.select.i.i.i.i = add i32 %i.bw, 2   ; 3 uses
  %i.bx = add i32 %i.bw, %i.bg                    ; 3 uses
  %i.by = add nsw i32 %i.bx, %i.bi
  %i.bz = srem i32 %i.by, 6                       ; 3 uses
  %i.ca = icmp slt i32 %i.bv, 3
  %i.cb = icmp sgt i32 %i.bv, -2
  %i.cc = add i32 %.01752.i.i.i, -2
  %i.cd = sub i32 2, %.01752.i.i.i
  %i.ce = sext i32 %spec.store.select.i.i.i.i to i64
  %i.cf = sub i32 -2, %i.bw
  %7 = add i32 %i.bw, 7
  %smax130.i.i.i.i = call i32 @llvm.smax.i32(i32 %spec.store.select.i.i.i.i, i32 1)
  %wide.trip.count.i.i.i.i = zext nneg i32 %smax130.i.i.i.i to i64
  br label %.preheader90.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.preheader90.i.i.i.i:                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, %.preheader91.i.i.i.i
  %indvars.iv116.i.i.i.i = phi i32 [ %i.cd, %.preheader91.i.i.i.i ], [ %indvars.iv.next117.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i.i = phi i32 [ %i.cc, %.preheader91.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ] ; 3 uses
  %.074105.i.i.i.i = phi i32 [ 0, %.preheader91.i.i.i.i ], [ %i.ii, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ]
  %i.ch = load i32, ptr %i.p, align 4, !tbaa !1773
  %smax.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.ch, i32 %indvars.iv.i.i.i.i)
  %i.ci = add i32 %smax.i.i.i.i, %indvars.iv116.i.i.i.i ; 2 uses
  %i.cj = icmp ne i32 %i.ci, 0
  %umin.i.i.i.i = zext i1 %i.cj to i32            ; 2 uses
  %i.ck = load i32, ptr %i.q, align 8, !tbaa !1774
  %i.cl = sub i32 %i.ci, %umin.i.i.i.i
  %i.cm = udiv i32 %i.cl, 6
  %i.cn = add nuw nsw i32 %i.cm, %umin.i.i.i.i
  %i.co = mul i32 %i.cn, 6
  %i.cp = add i32 %i.co, %indvars.iv.i.i.i.i      ; 4 uses
  %i.cq = add i32 %i.ck, -1                       ; 2 uses
  %smin.i.i.i = call i32 @llvm.smin.i32(i32 %i.cp, i32 %i.cq)
  %i.cr = icmp sgt i32 %i.cp, %i.cq               ; 2 uses
  %umin.i.neg11.i.i = sext i1 %i.cr to i32
  %umin.i.i.i = zext i1 %i.cr to i32
  %.neg.i.i = sub i32 %i.cp, %smin.i.i.i
  %i.cs = add i32 %.neg.i.i, %umin.i.neg11.i.i
  %i.ct = udiv i32 %i.cs, 6
  %i.cu = add nuw nsw i32 %i.ct, %umin.i.i.i
  %.neg.i.i.i = mul i32 %i.cu, -6
  %i.cv = add i32 %.neg.i.i.i, %i.cp              ; 3 uses
  %i.cw = add nsw i32 %i.cv, %i.bj
  %i.cx = srem i32 %i.cw, 6                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_iiiNS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i32 noundef %i.bx, i32 noundef %i.cv, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.f

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %.preheader90.i.i.i.i
  store i32 %i.bz, ptr %i.t, align 8, !tbaa !1758
  store i32 %i.cx, ptr %i.u, align 4, !tbaa !1757
  store ptr %i.bk, ptr %i.v, align 8, !tbaa !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.w, i8 0, i64 20, i1 false)
  br i1 %i.ca, label %.lr.ph.i.i.i.i, label %.lr.ph104.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.s
  br i1 %i.cb, label %.lr.ph104.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph104.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [48 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL18xtrans_channel_mapE, i64 %i.cy
  br label %bb.aj

bb.f:                                             ; preds = %.preheader90.i.i.i.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.s
  %i.db = phi i32 [ %spec.select.i.i.i.i.i, %bb.s ], [ %i.bz, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv118.i.i.i.i = phi i64 [ %indvars.iv.next119.i.i.i.i, %bb.s ], [ %i.ce, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 2 uses
  %i.dc = load ptr, ptr %i.v, align 8, !tbaa !1755, !nonnull !172, !align !315
  %i.dd = load i32, ptr %i.u, align 4, !tbaa !1757
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [48 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL18xtrans_channel_mapE, i64 %i.de
  %i.dg = sext i32 %i.db to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !180
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.di
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !53
  %i.dl = load ptr, ptr %i.x, align 8, !tbaa !836 ; 3 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !17
  %i.dn = load i32, ptr %i.y, align 4, !tbaa !844 ; 3 uses
  %i.do = load i32, ptr %i.z, align 8, !tbaa !845, !noalias !1775 ; 2 uses
  %i.dp = add nsw i32 %i.do, -1
  %i.dq = icmp eq i32 %i.dn, %i.dp
  br i1 %i.dq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dr = add nsw i32 %i.dn, -5
  %i.ds = load i32, ptr %i.ab, align 8, !tbaa !849
  br label %.invoke.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dt = add nsw i32 %i.dn, 1                    ; 7 uses
  store i32 %i.dt, ptr %i.y, align 4, !tbaa !844
  %i.du = icmp slt i32 %i.dt, %i.do
  br i1 %i.du, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.dv = load i8, ptr %i.ah, align 1, !tbaa !850, !range !171, !noundef !172
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.j, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.i
  %.pre.i.i.i.i.i = load i32, ptr %i.ab, align 8, !tbaa !849
  %.pre.i.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !856
  br label %.invoke.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.dx = load i8, ptr %i.ai, align 1, !tbaa !851, !range !171, !noundef !172
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.dz = load i64, ptr %i.ak, align 8, !tbaa !852
  %i.ea = getelementptr inbounds i8, ptr %i.dl, i64 %i.dz
  store ptr %i.ea, ptr %i.x, align 8, !tbaa !836
  %i.eb = load i32, ptr %i.al, align 8, !tbaa !853
  %.not.i.i85.i.i.i.i = icmp slt i32 %i.dt, %i.eb
  br i1 %.not.i.i85.i.i.i.i, label %bb.s, label %bb.l, !prof !55

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.s unwind label %bb.t

bb.m:                                             ; preds = %bb.j
  %i.ec = load i8, ptr %i.aj, align 2, !tbaa !854, !range !171, !noundef !172
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ee = load i64, ptr %i.ak, align 8, !tbaa !852
  %i.ef = getelementptr inbounds i8, ptr %i.dl, i64 %i.ee
  store ptr %i.ef, ptr %i.x, align 8, !tbaa !836
  %i.eg = load i32, ptr %i.al, align 8, !tbaa !853
  %i.eh = icmp slt i32 %i.dt, %i.eg               ; 3 uses
  %i.ei = load i32, ptr %i.am, align 4
  %i.ej = icmp sge i32 %i.dt, %i.ei
  %not..i.i.i.i.i.i = xor i1 %i.eh, true
  %or.cond.i.i.i.i.i.i = select i1 %not..i.i.i.i.i.i, i1 true, i1 %i.ej, !prof !855
  %i.ek = load ptr, ptr %i.an, align 8
  %i.el = icmp eq ptr %i.ek, null
  %i.em = select i1 %or.cond.i.i.i.i.i.i, i1 true, i1 %i.el, !prof !855
  br i1 %i.em, label %bb.o, label %bb.s, !prof !136

bb.o:                                             ; preds = %bb.n
  %i.en = load ptr, ptr %2, align 8, !tbaa !832
  %i.eo = load i32, ptr %i.ab, align 8, !tbaa !849
  %i.ep = load i32, ptr %i.ae, align 4, !tbaa !856
  %i.eq = load i32, ptr %i.as, align 8, !tbaa !857
  %i.er = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.en, i32 noundef %i.dt, i32 noundef %i.eo, i32 noundef %i.ep, ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.am, ptr noundef nonnull align 1 dereferenceable(1) %i.ar, i1 noundef zeroext %i.eh, i32 noundef %i.eq)
          to label %.noexc87.i.i.i.i unwind label %bb.t

.noexc87.i.i.i.i:                                 ; preds = %bb.o
  %i.es = zext i1 %i.eh to i8
  store ptr %i.er, ptr %i.x, align 8, !tbaa !836
  store i8 %i.es, ptr %i.ah, align 1, !tbaa !850
  br label %bb.s

bb.p:                                             ; preds = %bb.h
  %i.et = load i32, ptr %i.aa, align 4, !tbaa !858 ; 3 uses
  store i32 %i.et, ptr %i.y, align 4, !tbaa !844
  %i.eu = load i32, ptr %i.ab, align 8, !tbaa !849
  %i.ev = add nsw i32 %i.eu, 1                    ; 3 uses
  store i32 %i.ev, ptr %i.ab, align 8, !tbaa !849
  %i.ew = load i32, ptr %i.ac, align 8, !tbaa !859
  %.not.i84.i.i.i.i = icmp slt i32 %i.ev, %i.ew
  %.pre133.i.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !856 ; 2 uses
  br i1 %.not.i84.i.i.i.i, label %.invoke.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ex = load i32, ptr %i.ad, align 4, !tbaa !860 ; 2 uses
  store i32 %i.ex, ptr %i.ab, align 8, !tbaa !849
  %i.ey = add nsw i32 %.pre133.i.i.i.i, 1         ; 3 uses
  store i32 %i.ey, ptr %i.ae, align 4, !tbaa !856
  %i.ez = load i32, ptr %i.af, align 8, !tbaa !861
  %.not1.i.i.i.i.i = icmp slt i32 %i.ey, %i.ez
  br i1 %.not1.i.i.i.i.i, label %.invoke.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr %i.ag, align 8, !tbaa !862
  br label %bb.s

.invoke.i.i.i.i:                                  ; preds = %bb.q, %bb.p, %._crit_edge.i.i.i.i.i, %bb.g
  %i.fa = phi i32 [ %i.dr, %bb.g ], [ %i.et, %bb.p ], [ %i.et, %bb.q ], [ %i.dt, %._crit_edge.i.i.i.i.i ]
  %i.fb = phi i32 [ %i.ds, %bb.g ], [ %i.ev, %bb.p ], [ %i.ex, %bb.q ], [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  %i.fc = phi i32 [ 0, %bb.g ], [ %.pre133.i.i.i.i, %bb.p ], [ %i.ey, %bb.q ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(164) %2, i32 noundef %i.fa, i32 noundef %i.fb, i32 noundef %i.fc)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.invoke.i.i.i.i, %bb.r, %.noexc87.i.i.i.i, %bb.n, %bb.m, %bb.l, %bb.k
  %i.fd = uitofp i8 %i.dm to float
  %i.fe = fmul nnan float %i.fd, f0x3B808081
  %i.ff = load i32, ptr %i.t, align 8, !tbaa !1758
  %i.fg = add nsw i32 %i.ff, 1                    ; 2 uses
  %i.fh = icmp eq i32 %i.fg, 6
  %spec.select.i.i.i.i.i = select i1 %i.fh, i32 0, i32 %i.fg ; 2 uses
  store i32 %spec.select.i.i.i.i.i, ptr %i.t, align 8, !tbaa !1758
  %i.fi = fmul float %i.dk, %i.fe
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv118.i.i.i.i
  store float %i.fi, ptr %i.fj, align 4, !tbaa !53
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1 ; 2 uses
  %i.fk = and i64 %indvars.iv.next119.i.i.i.i, 4294967295
  %exitcond.not.i.i.i.i = icmp eq i64 %i.fk, 5
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1778

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.an, %.preheader.i.i.i.i
  %i.fm = load ptr, ptr %i.at, align 8, !tbaa !1779 ; 7 uses
  %i.fn = load ptr, ptr %i.au, align 8, !tbaa !1780
  %.not.i.i.i.i.i = icmp eq ptr %i.fm, %i.fn
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.fm, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %.noexc80.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc80.i.i.i.i:                                 ; preds = %bb.u
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.fo, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  %i.fp = load ptr, ptr %i.at, align 8, !tbaa !1779
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 168
  store ptr %i.fq, ptr %i.at, align 8, !tbaa !1779
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !1751 ; 6 uses
  %i.fr = ptrtoint ptr %i.fm to i64
  %i.fs = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.ft = sub i64 %i.fr, %i.fs                    ; 3 uses
  %i.fu = icmp eq i64 %i.ft, 9223372036854775800
  br i1 %i.fu, label %bb.w, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc81.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.fv = sdiv exact i64 %i.ft, 168               ; 3 uses
  %i.fw = icmp eq ptr %i.fm, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.fw, i64 1, i64 %i.fv
  %i.fx = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.fv ; 2 uses
  %i.fy = icmp ult i64 %i.fx, %i.fv
  %i.fz = call i64 @llvm.umin.i64(i64 %i.fx, i64 54901024028897475)
  %i.ga = select i1 %i.fy, i64 54901024028897475, i64 %i.fz ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.ga, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.gb = mul nuw nsw i64 %i.ga, 168              ; 2 uses
  %i.gc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gb) #32
          to label %.noexc82.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc82.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.ft ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.gd, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.x unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i

bb.x:                                             ; preds = %.noexc82.i.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ge, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  br i1 %i.fw, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.x
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 168
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.x, %bb.y
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gj, %bb.y ], [ %i.gc, %bb.x ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gi, %bb.y ], [ %.val.i.i.i.i.i.i, %bb.x ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(164) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gh = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gg, ptr noundef nonnull align 8 dereferenceable(36) %i.gh, i64 36, i1 false)
  %i.gi = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 168
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gi, %i.fm
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1781

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gk = landingpad { ptr, i32 }
          catch ptr null
  %i.gl = extractvalue { ptr, i32 } %i.gk, 0
  %i.gm = call ptr @__cxa_begin_catch(ptr %i.gl) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_(ptr noundef nonnull %i.gc, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gn = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.go = landingpad { ptr, i32 }
          catch ptr null
  %i.gp = extractvalue { ptr, i32 } %i.go, 0
  call void @__clang_call_terminate(ptr %i.gp) #33
  unreachable

bb.ac:                                            ; preds = %bb.z
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.y
  %i.gq = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 336
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.gv, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !888
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.gs, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gv, %i.fm
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1782

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i
  %i.gw = phi ptr [ %i.gf, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.gq, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  %i.gx = load ptr, ptr %i.au, align 8, !tbaa !1780
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = sub i64 %i.gy, %i.fs
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.gz) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc82.i.i.i.i
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  %i.hc = call ptr @__cxa_begin_catch(ptr %i.hb) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.aa
  %i.hd = extractvalue { ptr, i32 } %i.gn, 0
  %i.he = call ptr @__cxa_begin_catch(ptr %i.hd) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(164) dereferenceable(164) %i.gd) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  %i.hf = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.ah

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.gb) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.ai unwind label %bb.ag

bb.ah:                                            ; preds = %bb.ag
  %i.hg = landingpad { ptr, i32 }
          catch ptr null
  %i.hh = extractvalue { ptr, i32 } %i.hg, 0
  call void @__clang_call_terminate(ptr %i.hh) #33
  unreachable

bb.ai:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.af, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  store ptr %i.gc, ptr %4, align 8, !tbaa !1751
  store ptr %i.gw, ptr %i.at, align 8, !tbaa !1779
  %i.hi = getelementptr inbounds nuw [168 x i8], ptr %i.gc, i64 %i.ga
  store ptr %i.hi, ptr %i.au, align 8, !tbaa !1780
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.an, %.lr.ph104.i.i.i.i
  %indvars.iv127.i.i.i.i = phi i64 [ 0, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next128.i.i.i.i, %bb.an ] ; 3 uses
  %indvars.iv124.i.i.i.i = phi i32 [ %7, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next125.i.i.i.i, %bb.an ] ; 2 uses
  %indvars.iv121.i.i.i.i = phi i32 [ %i.cf, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next122.i.i.i.i, %bb.an ] ; 3 uses
  %smax123.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv121.i.i.i.i, i32 0)
  %i.hj = add i32 %smax123.i.i.i.i, %indvars.iv124.i.i.i.i
  %.fr.i.i.i.i = freeze i32 %i.hj                 ; 2 uses
  %8 = urem i32 %.fr.i.i.i.i, 6
  %i.hk = sub nuw i32 %.fr.i.i.i.i, %8
  %i.hl = add i32 %i.hk, %indvars.iv121.i.i.i.i   ; 3 uses
  %i.hm = add nsw i32 %i.hl, %spec.store.select.i.i.i.i ; 2 uses
  %i.hn = icmp slt i32 %i.hm, 5
  br i1 %i.hn, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ho = sext i32 %i.hm to i64
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.ho
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !53
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv127.i.i.i.i
  store float %i.hq, ptr %i.hr, align 4, !tbaa !53
  br label %bb.an

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.hs = add nsw i32 %i.hl, %i.bx
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiNS0_4spanIfLm18446744073709551615EEENS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i32 noundef %i.hs, i32 noundef %i.cv, i32 noundef 0, ptr nonnull %i.a, i64 1, i32 noundef 1)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.am

_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %bb.al
  %i.ht = add nsw i32 %i.hl, %i.bz
  %i.hu = srem i32 %i.ht, 6
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.hv
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !180
  %i.hy = load float, ptr %i.a, align 4, !tbaa !53
  %sext.i.i.i.i = shl i64 %i.hx, 32
  %i.hz = ashr exact i64 %sext.i.i.i.i, 30
  %i.ia = getelementptr inbounds i8, ptr %i.bk, i64 %i.hz
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !53
  %i.ic = fmul float %i.hy, %i.ib
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv127.i.i.i.i
  store float %i.ic, ptr %i.id, align 4, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ie = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %.body.i.i.i.i

bb.an:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i, %bb.ak
  %indvars.iv.next128.i.i.i.i = add nuw nsw i64 %indvars.iv127.i.i.i.i, 1 ; 2 uses
  %indvars.iv.next122.i.i.i.i = add i32 %indvars.iv121.i.i.i.i, 1
  %indvars.iv.next125.i.i.i.i = add i32 %indvars.iv124.i.i.i.i, -1
  %exitcond131.not.i.i.i.i.a = icmp eq i64 %indvars.iv.next128.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond131.not.i.i.i.i.a, label %._crit_edge.i.i.i.i, label %bb.aj, !llvm.loop !1783

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, %.noexc80.i.i.i.i
  %i.if = load ptr, ptr %i.an, align 8, !tbaa !888
  %.not.i.i.i.i.i.i = icmp eq ptr %i.if, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ig = landingpad { ptr, i32 }
          catch ptr null
  %i.ih = extractvalue { ptr, i32 } %i.ig, 0
  call void @__clang_call_terminate(ptr %i.ih) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i: ; preds = %bb.ao, %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.ii = add nuw nsw i32 %.074105.i.i.i.i, 1     ; 2 uses
  %indvars.iv.next.i.i.i.i = add i32 %indvars.iv.i.i.i.i, 1
  %indvars.iv.next117.i.i.i.i = add i32 %indvars.iv116.i.i.i.i, -1
  %exitcond132.not.i.i.i.i = icmp eq i32 %i.ii, 5
  br i1 %exitcond132.not.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i, label %.preheader90.i.i.i.i, !llvm.loop !1784

.loopexit.i.i.i.i:                                ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %bb.u
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.w
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i, %bb.am, %bb.ag, %bb.t
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.fl, %bb.t ], [ %i.ie, %bb.am ], [ %i.hf, %bb.ag ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.ij = load ptr, ptr %i.an, align 8, !tbaa !888
  %.not.i.i28.i.i.i = icmp eq ptr %i.ij, null
  br i1 %.not.i.i28.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %.body.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ik = landingpad { ptr, i32 }
          catch ptr null
  %i.il = extractvalue { ptr, i32 } %i.ik, 0
  call void @__clang_call_terminate(ptr %i.il) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i: ; preds = %bb.aq, %.body.i.i.i.i, %bb.f
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.da, %bb.f ], [ %.pn.i.i.i.i, %.body.i.i.i.i ], [ %.pn.i.i.i.i, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.as

bb.as:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, %bb.e
  %.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i ], [ %i.cg, %bb.e ] ; 2 uses
  %i.im = load ptr, ptr %4, align 8, !tbaa !1751  ; 3 uses
  %i.in = load ptr, ptr %i.at, align 8, !tbaa !1779 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.im, %i.in
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.as, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.is, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i ], [ %i.im, %bb.as ] ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 72
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !888
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ip, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.iq = landingpad { ptr, i32 }
          catch ptr null
  %i.ir = extractvalue { ptr, i32 } %i.iq, 0
  call void @__clang_call_terminate(ptr %i.ir) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.at, %.lr.ph.i.i.i.i.i.i
  %i.is = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i27.i.i.i = icmp eq ptr %i.is, %i.in
  br i1 %.not.i.i.i27.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1782

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.val.pr.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !1751
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.as
  %.val.i.i.i.i = phi ptr [ %.val.pr.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.im, %bb.as ] ; 3 uses
  %.not.i.i2.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i2.i.i.i.i, label %.body.i.i.i, label %bb.av

bb.av:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i
  %.val1.i.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !1780
  %i.it = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.iu = ptrtoint ptr %.val.i.i.i.i to i64
  %i.iv = sub i64 %i.it, %i.iu
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.iv) #30
  br label %.body.i.i.i

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i
  %i.iw = load i32, ptr %i.l, align 4, !tbaa !1732
  %i.ix = add nsw i32 %i.iw, %.01752.i.i.i
  %i.iy = srem i32 %i.ix, 6
  %i.iz = sext i32 %i.iy to i64                   ; 2 uses
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.iz
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.iz ; 2 uses
  %i.jc = load i32, ptr %i.k, align 8, !tbaa !1730
  %i.jd = load i32, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.je = add nsw i32 %i.jd, %i.jc
  %i.jf = srem i32 %i.je, 6                       ; 2 uses
  %i.jg = load i32, ptr %i.aw, align 4, !tbaa !866
  %i.jh = sub nsw i32 %i.jg, %i.jd                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %4, ptr %5, align 8, !tbaa !1785
  store ptr %3, ptr %i.ax, align 8, !tbaa !914
  %i.ji = load i32, ptr %i.az, align 8, !tbaa !29
  store i32 %i.ji, ptr %i.ay, align 8, !tbaa !1748
  store i32 %i.jf, ptr %i.ba, align 4, !tbaa !1749
  store i32 %i.jh, ptr %i.bb, align 8, !tbaa !1750
  %i.jj = icmp sgt i32 %i.jf, 0
  br i1 %i.jj, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.jk = load ptr, ptr %i.jb, align 8, !tbaa !58
  invoke void %i.jk(ptr noundef nonnull align 8 dereferenceable(28) %5)
          to label %._crit_edge65.i.i.i unwind label %bb.ax

._crit_edge65.i.i.i:                              ; preds = %bb.aw
  %.pre.i.i.i = load i32, ptr %i.bb, align 8, !tbaa !1750
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ay:                                            ; preds = %._crit_edge65.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.jm = phi i32 [ %.pre.i.i.i, %._crit_edge65.i.i.i ], [ %i.jh, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i ] ; 2 uses
  %.off.i.i.i = add i32 %i.jm, 5
  %.not.i.i.i = icmp ult i32 %.off.i.i.i, 11
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.ay
  %i.jn = sdiv i32 %i.jm, 6
  %i.jo = call i32 @llvm.umax.i32(i32 %i.jn, i32 1)
  %umax.i.i.i = sext i32 %i.jo to i64
  br label %.lr.ph.i.i.i

end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_112ImageBufAlgo23LinearXTransDemosaicingIfN9Imath_3_14halfEE12calc_BGG_grbILb0EEEbRNS1_15DemosaicingBaseIfS4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE7ContextE:bb.a
  %i.ka = getelementptr inbounds [4 x i8], ptr %i.jy, i64 %i.jz
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !53
  %i.kc = load i32, ptr %i.ht, align 8, !tbaa !3
  %i.kd = getelementptr inbounds nuw i8, ptr %.val.i16.i.i26, i64 480
  %i.ke = sext i32 %i.kc to i64
  %i.kf = getelementptr inbounds [4 x i8], ptr %i.kd, i64 %i.ke
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !53
  %i.kh = load i32, ptr %i.dr, align 8, !tbaa !3
  %i.ki = sext i32 %i.kh to i64
  %i.kj = getelementptr inbounds [4 x i8], ptr %i.jt, i64 %i.ki
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !53
  %i.kl = load ptr, ptr %i.aa, align 8, !tbaa !1813, !nonnull !172, !align !336 ; 3 uses
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !832
  %i.kn = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.km)
  %i.ko = icmp eq i32 %i.kn, 3
  br i1 %i.ko, label %bb.j, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE16check_and_decodeILb0EZNS1_23LinearXTransDemosaicingIfS4_E12calc_BGG_grbILb0EEEbRNS7_7ContextEEUlvE1_EEbSD_RKT0_.exit, !prof !136

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffE14IteratorValRefaSEf.exit15.i.i25
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %i.kl)
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE16check_and_decodeILb0EZNS1_23LinearXTransDemosaicingIfS4_E12calc_BGG_grbILb0EEEbRNS7_7ContextEEUlvE1_EEbSD_RKT0_.exit

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE16check_and_decodeILb0EZNS1_23LinearXTransDemosaicingIfS4_E12calc_BGG_grbILb0EEEbRNS7_7ContextEEUlvE1_EEbSD_RKT0_.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffE14IteratorValRefaSEf.exit15.i.i25, %bb.j
  %i.kp = fpext float %i.kg to double
  %i.kq = fpext float %i.kb to double
  %i.kr = fpext float %i.jw to double
  %i.ks = tail call double @llvm.fmuladd.f64(double %i.kq, double f0x3FE6A09E667F3BCD, double %i.kr)
  %i.kt = tail call double @llvm.fmuladd.f64(double %i.kp, double 5.000000e-01, double %i.ks)
  %i.ku = fpext float %i.kk to double
  %i.kv = fdiv double %i.ku, f0x4001E3779B97F4A8
  %i.kw = fadd double %i.kt, %i.kv
  %i.kx = fdiv double %i.kw, f0x40053C0C5257CCAE
  %i.ky = fptrunc double %i.kx to float
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kl, i64 112
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !836
  %i.lb = getelementptr [4 x i8], ptr %i.la, i64 %i.ah
  %i.lc = getelementptr i8, ptr %i.lb, i64 8
  store float %i.ky, ptr %i.lc, align 4, !tbaa !53
  %i.ld = load ptr, ptr %i.aa, align 8, !tbaa !1813, !nonnull !172, !align !336
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %i.ld)
  %i.le = load i32, ptr %i.cg, align 8, !tbaa !1809
  %i.lf = add nsw i32 %i.le, -1
  store i32 %i.lf, ptr %i.cg, align 8, !tbaa !1809
  %i.lg = load ptr, ptr %0, align 8, !tbaa !1804, !nonnull !172, !align !336 ; 8 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 24 ; 2 uses
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !3  ; 2 uses
  %scevgep.i.i27 = getelementptr inbounds nuw i8, ptr %i.lg, i64 28
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lh, ptr noundef nonnull align 4 dereferenceable(16) %scevgep.i.i27, i64 16, i1 false), !tbaa !3
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 40
  store i32 %i.li, ptr %i.lj, align 8, !tbaa !3
  %i.lk = sext i32 %i.li to i64                   ; 5 uses
  %.val.i.i28 = load ptr, ptr %i.lg, align 8, !tbaa !1810 ; 2 uses
  %i.ll = tail call fastcc noundef float @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3Row5fetchEv(ptr noundef nonnull align 8 dereferenceable(164) %.val.i.i28)
  %i.lm = getelementptr inbounds nuw i8, ptr %.val.i.i28, i64 144
  %i.ln = getelementptr inbounds [4 x i8], ptr %i.lm, i64 %i.lk
  store float %i.ll, ptr %i.ln, align 4, !tbaa !53
  %.val.1.i.i29 = load ptr, ptr %i.lg, align 8, !tbaa !1810 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.val.1.i.i29, i64 168
  %i.lp = tail call fastcc noundef float @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3Row5fetchEv(ptr noundef nonnull align 8 dereferenceable(164) %i.lo)
  %i.lq = getelementptr inbounds nuw i8, ptr %.val.1.i.i29, i64 312
  %i.lr = getelementptr inbounds [4 x i8], ptr %i.lq, i64 %i.lk
  store float %i.lp, ptr %i.lr, align 4, !tbaa !53
  %.val.2.i.i30 = load ptr, ptr %i.lg, align 8, !tbaa !1810 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.val.2.i.i30, i64 336
  %i.lt = tail call fastcc noundef float @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3Row5fetchEv(ptr noundef nonnull align 8 dereferenceable(164) %i.ls)
  %i.lu = getelementptr inbounds nuw i8, ptr %.val.2.i.i30, i64 480
  %i.lv = getelementptr inbounds [4 x i8], ptr %i.lu, i64 %i.lk
  store float %i.lt, ptr %i.lv, align 4, !tbaa !53
  %.val.3.i.i31 = load ptr, ptr %i.lg, align 8, !tbaa !1810 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.val.3.i.i31, i64 504
  %i.lx = tail call fastcc noundef float @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3Row5fetchEv(ptr noundef nonnull align 8 dereferenceable(164) %i.lw)
  %i.ly = getelementptr inbounds nuw i8, ptr %.val.3.i.i31, i64 648
  %i.lz = getelementptr inbounds [4 x i8], ptr %i.ly, i64 %i.lk
  store float %i.lx, ptr %i.lz, align 4, !tbaa !53
  %.val.4.i.i32 = load ptr, ptr %i.lg, align 8, !tbaa !1810 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.val.4.i.i32, i64 672
  %i.mb = tail call fastcc noundef float @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3Row5fetchEv(ptr noundef nonnull align 8 dereferenceable(164) %i.ma)
  %i.mc = getelementptr inbounds nuw i8, ptr %.val.4.i.i32, i64 816
  %i.md = getelementptr inbounds [4 x i8], ptr %i.mc, i64 %i.lk
  store float %i.mb, ptr %i.md, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS4_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKSB_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<float, Imath_3_1::half, 6, 5, OpenImageIO::ImageBufAlgo::xtrans_channel_map>::Window::Row", align 8 ; 37 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 8 uses
  %4 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<float, Imath_3_1::half, 6, 5, OpenImageIO::ImageBufAlgo::xtrans_channel_map>::Window", align 8 ; 20 uses
  %5 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<float, Imath_3_1::half, 6, 5, OpenImageIO::ImageBufAlgo::xtrans_channel_map>::Context", align 8 ; 11 uses
  %6 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 10 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !58    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1821 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.d = load ptr, ptr %.val, align 8, !tbaa !1823, !nonnull !172, !align !336
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0, i1 noundef zeroext true)
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !868  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !867
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %.lr.ph55.i.i.i, label %._crit_edge56.i.i.i

.lr.ph55.i.i.i:                                   ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 100 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 52 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 132 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br label %bb.d

._crit_edge56.i.i.i:                              ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !888
  %.not.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfNS1_3ROIEiEUlSG_E_JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge56.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfNS1_3ROIEiEUlSG_E_JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #33
  unreachable

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %.lr.ph55.i.i.i
  %.01753.i.i.i = phi i32 [ %i.f, %.lr.ph55.i.i.i ], [ %i.ks, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.bg = load i32, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !1824, !nonnull !172, !align !336 ; 3 uses
  %i.bi = load i32, ptr %i.k, align 8, !tbaa !1789
  %i.bj = load i32, ptr %i.l, align 4, !tbaa !1791
  %i.bk = load ptr, ptr %i.m, align 8, !tbaa !1825, !nonnull !172, !align !315 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %4, i8 0, i64 24, i1 false)
  %i.bl = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh)
          to label %.preheader91.i.i.i.i unwind label %bb.e ; 4 uses

.preheader91.i.i.i.i:                             ; preds = %bb.d
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !891 ; 3 uses
  store i32 %i.bm, ptr %i.n, align 4, !tbaa !1826
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !897
  %i.bp = add nsw i32 %i.bo, %i.bm
  store i32 %i.bp, ptr %i.o, align 8, !tbaa !1831
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !899 ; 2 uses
  store i32 %i.br, ptr %i.p, align 4, !tbaa !1832
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !901
  %i.bu = add nsw i32 %i.bt, %i.br
  store i32 %i.bu, ptr %i.q, align 8, !tbaa !1833
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.r, align 8, !tbaa !3
  store i32 4, ptr %i.s, align 8, !tbaa !3
  %i.bv = sub i32 %i.bm, %i.bg                    ; 3 uses
  %i.bw = call i32 @llvm.smax.i32(i32 %i.bv, i32 -2) ; 4 uses
  %spec.store.select.i.i.i.i = add i32 %i.bw, 2   ; 3 uses
  %i.bx = add i32 %i.bw, %i.bg                    ; 3 uses
  %i.by = add nsw i32 %i.bx, %i.bi
  %i.bz = srem i32 %i.by, 6                       ; 3 uses
  %i.ca = icmp slt i32 %i.bv, 3
  %i.cb = icmp sgt i32 %i.bv, -2
  %i.cc = add i32 %.01753.i.i.i, -2
  %i.cd = sub i32 2, %.01753.i.i.i
  %i.ce = sext i32 %spec.store.select.i.i.i.i to i64
  %i.cf = sub i32 -2, %i.bw
  %7 = add i32 %i.bw, 7
  %smax130.i.i.i.i = call i32 @llvm.smax.i32(i32 %spec.store.select.i.i.i.i, i32 1)
  %wide.trip.count.i.i.i.i = zext nneg i32 %smax130.i.i.i.i to i64
  br label %.preheader90.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.preheader90.i.i.i.i:                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, %.preheader91.i.i.i.i
  %indvars.iv116.i.i.i.i = phi i32 [ %i.cd, %.preheader91.i.i.i.i ], [ %indvars.iv.next117.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i.i = phi i32 [ %i.cc, %.preheader91.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ] ; 3 uses
  %.074105.i.i.i.i = phi i32 [ 0, %.preheader91.i.i.i.i ], [ %i.ix, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ]
  %i.ch = load i32, ptr %i.p, align 4, !tbaa !1832
  %smax.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.ch, i32 %indvars.iv.i.i.i.i)
  %i.ci = add i32 %smax.i.i.i.i, %indvars.iv116.i.i.i.i ; 2 uses
  %i.cj = icmp ne i32 %i.ci, 0
  %umin.i.i.i.i = zext i1 %i.cj to i32            ; 2 uses
  %i.ck = load i32, ptr %i.q, align 8, !tbaa !1833
  %i.cl = sub i32 %i.ci, %umin.i.i.i.i
  %i.cm = udiv i32 %i.cl, 6
  %i.cn = add nuw nsw i32 %i.cm, %umin.i.i.i.i
  %i.co = mul i32 %i.cn, 6
  %i.cp = add i32 %i.co, %indvars.iv.i.i.i.i      ; 4 uses
  %i.cq = add i32 %i.ck, -1                       ; 2 uses
  %smin.i.i.i = call i32 @llvm.smin.i32(i32 %i.cp, i32 %i.cq)
  %i.cr = icmp sgt i32 %i.cp, %i.cq               ; 2 uses
  %umin.i.neg11.i.i = sext i1 %i.cr to i32
  %umin.i.i.i = zext i1 %i.cr to i32
  %.neg.i.i = sub i32 %i.cp, %smin.i.i.i
  %i.cs = add i32 %.neg.i.i, %umin.i.neg11.i.i
  %i.ct = udiv i32 %i.cs, 6
  %i.cu = add nuw nsw i32 %i.ct, %umin.i.i.i
  %.neg.i.i.i = mul i32 %i.cu, -6
  %i.cv = add i32 %.neg.i.i.i, %i.cp              ; 3 uses
  %i.cw = add nsw i32 %i.cv, %i.bj
  %i.cx = srem i32 %i.cw, 6                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_iiiNS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i32 noundef %i.bx, i32 noundef %i.cv, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.f

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %.preheader90.i.i.i.i
  store i32 %i.bz, ptr %i.t, align 8, !tbaa !1817
  store i32 %i.cx, ptr %i.u, align 4, !tbaa !1816
  store ptr %i.bk, ptr %i.v, align 8, !tbaa !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.w, i8 0, i64 20, i1 false)
  br i1 %i.ca, label %.lr.ph.i.i.i.i, label %.lr.ph104.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.x
  br i1 %i.cb, label %.lr.ph104.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph104.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [48 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL18xtrans_channel_mapE, i64 %i.cy
  br label %bb.ao

bb.f:                                             ; preds = %.preheader90.i.i.i.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.x
  %i.db = phi i32 [ %spec.select.i.i.i.i.i, %bb.x ], [ %i.bz, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv118.i.i.i.i = phi i64 [ %indvars.iv.next119.i.i.i.i, %bb.x ], [ %i.ce, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 2 uses
  %i.dc = load ptr, ptr %i.v, align 8, !tbaa !1814, !nonnull !172, !align !315
  %i.dd = load i32, ptr %i.u, align 4, !tbaa !1816
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [48 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL18xtrans_channel_mapE, i64 %i.de
  %i.dg = sext i32 %i.db to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !180
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.di
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !53
  %i.dl = load ptr, ptr %i.x, align 8, !tbaa !836 ; 3 uses
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !1004 ; 2 uses
  %i.dn = zext i16 %i.dm to i32
  %i.do = shl nuw nsw i32 %i.dn, 13
  %i.dp = and i32 %i.do, 268427264                ; 6 uses
  %.signext.i.i.i.i.i.i.i.i.i.i = sext i16 %i.dm to i32
  %i.dq = and i32 %.signext.i.i.i.i.i.i.i.i.i.i, -2147483648 ; 3 uses
  %i.dr = icmp samesign ugt i32 %i.dp, 8388607
  br i1 %i.dr, label %bb.g, label %bb.j, !prof !55

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ds = or disjoint i32 %i.dp, %i.dq            ; 2 uses
  %i.dt = icmp samesign ult i32 %i.dp, 260046848
  br i1 %i.dt, label %bb.h, label %bb.i, !prof !55

bb.h:                                             ; preds = %bb.g
  %i.du = add nuw nsw i32 %i.ds, 939524096
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.dv = or i32 %i.ds, 2139095040
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.dp, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dw = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.dp, i1 true)
  %i.dx = add nsw i32 %i.dw, -8                   ; 2 uses
  %i.dy = shl i32 %i.dp, %i.dx
  %i.dz = or i32 %i.dq, %i.dy
  %i.ea = or i32 %i.dz, 947912704
  %i.eb = shl nuw nsw i32 %i.dx, 23
  %i.ec = sub nuw i32 %i.ea, %i.eb
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.du, %bb.h ], [ %i.dv, %bb.i ], [ %i.ec, %bb.k ], [ %i.dq, %bb.j ]
  %i.ed = load i32, ptr %i.y, align 4, !tbaa !844 ; 3 uses
  %i.ee = load i32, ptr %i.z, align 8, !tbaa !845, !noalias !1834 ; 2 uses
  %i.ef = add nsw i32 %i.ee, -1
  %i.eg = icmp eq i32 %i.ed, %i.ef
  br i1 %i.eg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i
  %i.eh = add nsw i32 %i.ed, -5
  %i.ei = load i32, ptr %i.ab, align 8, !tbaa !849
  br label %.invoke.i.i.i.i

bb.m:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i
  %i.ej = add nsw i32 %i.ed, 1                    ; 7 uses
  store i32 %i.ej, ptr %i.y, align 4, !tbaa !844
  %i.ek = icmp slt i32 %i.ej, %i.ee
  br i1 %i.ek, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.el = load i8, ptr %i.ah, align 1, !tbaa !850, !range !171, !noundef !172
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.o, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.n
  %.pre.i.i.i.i.i = load i32, ptr %i.ab, align 8, !tbaa !849
  %.pre.i.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !856
  br label %.invoke.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.en = load i8, ptr %i.ai, align 1, !tbaa !851, !range !171, !noundef !172
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ep = load i64, ptr %i.ak, align 8, !tbaa !852
  %i.eq = getelementptr inbounds i8, ptr %i.dl, i64 %i.ep
  store ptr %i.eq, ptr %i.x, align 8, !tbaa !836
  %i.er = load i32, ptr %i.al, align 8, !tbaa !853
  %.not.i.i85.i.i.i.i = icmp slt i32 %i.ej, %i.er
  br i1 %.not.i.i85.i.i.i.i, label %bb.x, label %bb.q, !prof !55

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.x unwind label %bb.y

bb.r:                                             ; preds = %bb.o
  %i.es = load i8, ptr %i.aj, align 2, !tbaa !854, !range !171, !noundef !172
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eu = load i64, ptr %i.ak, align 8, !tbaa !852
  %i.ev = getelementptr inbounds i8, ptr %i.dl, i64 %i.eu
  store ptr %i.ev, ptr %i.x, align 8, !tbaa !836
  %i.ew = load i32, ptr %i.al, align 8, !tbaa !853
  %i.ex = icmp slt i32 %i.ej, %i.ew               ; 3 uses
  %i.ey = load i32, ptr %i.am, align 4
  %i.ez = icmp sge i32 %i.ej, %i.ey
  %not..i.i.i.i.i.i = xor i1 %i.ex, true
  %or.cond.i.i.i.i.i.i = select i1 %not..i.i.i.i.i.i, i1 true, i1 %i.ez, !prof !855
  %i.fa = load ptr, ptr %i.an, align 8
  %i.fb = icmp eq ptr %i.fa, null
  %i.fc = select i1 %or.cond.i.i.i.i.i.i, i1 true, i1 %i.fb, !prof !855
  br i1 %i.fc, label %bb.t, label %bb.x, !prof !136

bb.t:                                             ; preds = %bb.s
  %i.fd = load ptr, ptr %2, align 8, !tbaa !832
  %i.fe = load i32, ptr %i.ab, align 8, !tbaa !849
  %i.ff = load i32, ptr %i.ae, align 4, !tbaa !856
  %i.fg = load i32, ptr %i.as, align 8, !tbaa !857
  %i.fh = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.fd, i32 noundef %i.ej, i32 noundef %i.fe, i32 noundef %i.ff, ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.am, ptr noundef nonnull align 1 dereferenceable(1) %i.ar, i1 noundef zeroext %i.ex, i32 noundef %i.fg)
          to label %.noexc87.i.i.i.i unwind label %bb.y

.noexc87.i.i.i.i:                                 ; preds = %bb.t
  %i.fi = zext i1 %i.ex to i8
  store ptr %i.fh, ptr %i.x, align 8, !tbaa !836
  store i8 %i.fi, ptr %i.ah, align 1, !tbaa !850
  br label %bb.x

bb.u:                                             ; preds = %bb.m
  %i.fj = load i32, ptr %i.aa, align 4, !tbaa !858 ; 3 uses
  store i32 %i.fj, ptr %i.y, align 4, !tbaa !844
  %i.fk = load i32, ptr %i.ab, align 8, !tbaa !849
  %i.fl = add nsw i32 %i.fk, 1                    ; 3 uses
  store i32 %i.fl, ptr %i.ab, align 8, !tbaa !849
  %i.fm = load i32, ptr %i.ac, align 8, !tbaa !859
  %.not.i84.i.i.i.i = icmp slt i32 %i.fl, %i.fm
  %.pre133.i.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !856 ; 2 uses
  br i1 %.not.i84.i.i.i.i, label %.invoke.i.i.i.i, label %bb.v
end_hunk_2
begin_hunk_3_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS4_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKSB_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.fv = add nsw i32 %i.fu, 1                    ; 2 uses
  %i.fw = icmp eq i32 %i.fv, 6
  %spec.select.i.i.i.i.i = select i1 %i.fw, i32 0, i32 %i.fv ; 2 uses
  store i32 %spec.select.i.i.i.i.i, ptr %i.t, align 8, !tbaa !1817
  %i.fx = fmul float %i.dk, %i.ft
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv118.i.i.i.i
  store float %i.fx, ptr %i.fy, align 4, !tbaa !53
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1 ; 2 uses
  %i.fz = and i64 %indvars.iv.next119.i.i.i.i, 4294967295
  %exitcond.not.i.i.i.i = icmp eq i64 %i.fz, 5
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1837

bb.y:                                             ; preds = %.invoke.i.i.i.i, %bb.t, %bb.q
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.as, %.preheader.i.i.i.i
  %i.gb = load ptr, ptr %i.at, align 8, !tbaa !1838 ; 7 uses
  %i.gc = load ptr, ptr %i.au, align 8, !tbaa !1839
  %.not.i.i.i.i.i = icmp eq ptr %i.gb, %i.gc
  br i1 %.not.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.gb, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %.noexc80.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc80.i.i.i.i:                                 ; preds = %bb.z
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gd, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  %i.ge = load ptr, ptr %i.at, align 8, !tbaa !1838
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 168
  store ptr %i.gf, ptr %i.at, align 8, !tbaa !1838
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !1810 ; 6 uses
  %i.gg = ptrtoint ptr %i.gb to i64
  %i.gh = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.gi = sub i64 %i.gg, %i.gh                    ; 3 uses
  %i.gj = icmp eq i64 %i.gi, 9223372036854775800
  br i1 %i.gj, label %bb.ab, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc81.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.ab
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.aa
  %i.gk = sdiv exact i64 %i.gi, 168               ; 3 uses
  %i.gl = icmp eq ptr %i.gb, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.gl, i64 1, i64 %i.gk
  %i.gm = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.gk ; 2 uses
  %i.gn = icmp ult i64 %i.gm, %i.gk
  %i.go = call i64 @llvm.umin.i64(i64 %i.gm, i64 54901024028897475)
  %i.gp = select i1 %i.gn, i64 54901024028897475, i64 %i.go ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.gp, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.gq = mul nuw nsw i64 %i.gp, 168              ; 2 uses
  %i.gr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gq) #32
          to label %.noexc82.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc82.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gi ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.gs, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.ac unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i.i

bb.ac:                                            ; preds = %.noexc82.i.i.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gt, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  br i1 %i.gl, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.ac
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 168
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ac, %bb.ad
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gy, %bb.ad ], [ %i.gr, %bb.ac ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gx, %bb.ad ], [ %.val.i.i.i.i.i.i, %bb.ac ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(164) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gw = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gv, ptr noundef nonnull align 8 dereferenceable(36) %i.gw, i64 36, i1 false)
  %i.gx = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 168
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gx, %i.gb
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1840

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gz = landingpad { ptr, i32 }
          catch ptr null
  %i.ha = extractvalue { ptr, i32 } %i.gz, 0
  %i.hb = call ptr @__cxa_begin_catch(ptr %i.ha) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SC_(ptr noundef nonnull %i.gr, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ah unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hc = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hd = landingpad { ptr, i32 }
          catch ptr null
  %i.he = extractvalue { ptr, i32 } %i.hd, 0
  call void @__clang_call_terminate(ptr %i.he) #33
  unreachable

bb.ah:                                            ; preds = %bb.ae
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.ad
  %i.hf = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 336
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.hk, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !888
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.hh, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hi = landingpad { ptr, i32 }
          catch ptr null
  %i.hj = extractvalue { ptr, i32 } %i.hi, 0
  call void @__clang_call_terminate(ptr %i.hj) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ai, %.lr.ph.i.i.i.i.i.i.i.i
  %i.hk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.hk, %i.gb
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1841

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i
  %i.hl = phi ptr [ %i.gu, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.hf, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i
  %i.hm = load ptr, ptr %i.au, align 8, !tbaa !1839
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = sub i64 %i.hn, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.ho) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc82.i.i.i.i
  %i.hp = landingpad { ptr, i32 }
          catch ptr null
  %i.hq = extractvalue { ptr, i32 } %i.hp, 0
  %i.hr = call ptr @__cxa_begin_catch(ptr %i.hq) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.af
  %i.hs = extractvalue { ptr, i32 } %i.hc, 0
  %i.ht = call ptr @__cxa_begin_catch(ptr %i.hs) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(164) dereferenceable(164) %i.gs) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i

bb.al:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i
  %i.hu = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.am

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gr, i64 noundef %i.gq) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.an unwind label %bb.al

bb.am:                                            ; preds = %bb.al
  %i.hv = landingpad { ptr, i32 }
          catch ptr null
  %i.hw = extractvalue { ptr, i32 } %i.hv, 0
  call void @__clang_call_terminate(ptr %i.hw) #33
  unreachable

bb.an:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.ak, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i
  store ptr %i.gr, ptr %4, align 8, !tbaa !1810
  store ptr %i.hl, ptr %i.at, align 8, !tbaa !1838
  %i.hx = getelementptr inbounds nuw [168 x i8], ptr %i.gr, i64 %i.gp
  store ptr %i.hx, ptr %i.au, align 8, !tbaa !1839
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i

bb.ao:                                            ; preds = %bb.as, %.lr.ph104.i.i.i.i
  %indvars.iv127.i.i.i.i = phi i64 [ 0, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next128.i.i.i.i, %bb.as ] ; 3 uses
  %indvars.iv124.i.i.i.i = phi i32 [ %7, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next125.i.i.i.i, %bb.as ] ; 2 uses
  %indvars.iv121.i.i.i.i = phi i32 [ %i.cf, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next122.i.i.i.i, %bb.as ] ; 3 uses
  %smax123.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv121.i.i.i.i, i32 0)
  %i.hy = add i32 %smax123.i.i.i.i, %indvars.iv124.i.i.i.i
  %.fr.i.i.i.i = freeze i32 %i.hy                 ; 2 uses
  %8 = urem i32 %.fr.i.i.i.i, 6
  %i.hz = sub nuw i32 %.fr.i.i.i.i, %8
  %i.ia = add i32 %i.hz, %indvars.iv121.i.i.i.i   ; 3 uses
  %i.ib = add nsw i32 %i.ia, %spec.store.select.i.i.i.i ; 2 uses
  %i.ic = icmp slt i32 %i.ib, 5
  br i1 %i.ic, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.id = sext i32 %i.ib to i64
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.id
  %i.if = load float, ptr %i.ie, align 4, !tbaa !53
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv127.i.i.i.i
  store float %i.if, ptr %i.ig, align 4, !tbaa !53
  br label %bb.as

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.ih = add nsw i32 %i.ia, %i.bx
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiNS0_4spanIfLm18446744073709551615EEENS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i32 noundef %i.ih, i32 noundef %i.cv, i32 noundef 0, ptr nonnull %i.a, i64 1, i32 noundef 1)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.ar

_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %bb.aq
  %i.ii = add nsw i32 %i.ia, %i.bz
  %i.ij = srem i32 %i.ii, 6
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.ik
  %i.im = load i64, ptr %i.il, align 8, !tbaa !180
  %i.in = load float, ptr %i.a, align 4, !tbaa !53
  %sext.i.i.i.i = shl i64 %i.im, 32
  %i.io = ashr exact i64 %sext.i.i.i.i, 30
  %i.ip = getelementptr inbounds i8, ptr %i.bk, i64 %i.io
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !53
  %i.ir = fmul float %i.in, %i.iq
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv127.i.i.i.i
  store float %i.ir, ptr %i.is, align 4, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.it = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %.body.i.i.i.i

bb.as:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i, %bb.ap
  %indvars.iv.next128.i.i.i.i = add nuw nsw i64 %indvars.iv127.i.i.i.i, 1 ; 2 uses
  %indvars.iv.next122.i.i.i.i = add i32 %indvars.iv121.i.i.i.i, 1
  %indvars.iv.next125.i.i.i.i = add i32 %indvars.iv124.i.i.i.i, -1
  %exitcond131.not.i.i.i.i.a = icmp eq i64 %indvars.iv.next128.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond131.not.i.i.i.i.a, label %._crit_edge.i.i.i.i, label %bb.ao, !llvm.loop !1842

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i, %.noexc80.i.i.i.i
  %i.iu = load ptr, ptr %i.an, align 8, !tbaa !888
  %.not.i.i.i.i.i.i = icmp eq ptr %i.iu, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.iv = landingpad { ptr, i32 }
          catch ptr null
  %i.iw = extractvalue { ptr, i32 } %i.iv, 0
  call void @__clang_call_terminate(ptr %i.iw) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i: ; preds = %bb.at, %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.ix = add nuw nsw i32 %.074105.i.i.i.i, 1     ; 2 uses
  %indvars.iv.next.i.i.i.i = add i32 %indvars.iv.i.i.i.i, 1
  %indvars.iv.next117.i.i.i.i = add i32 %indvars.iv116.i.i.i.i, -1
  %exitcond132.not.i.i.i.i = icmp eq i32 %i.ix, 5
  br i1 %exitcond132.not.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i, label %.preheader90.i.i.i.i, !llvm.loop !1843

.loopexit.i.i.i.i:                                ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %bb.z
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.ab
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i, %bb.ar, %bb.al, %bb.y
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.ga, %bb.y ], [ %i.it, %bb.ar ], [ %i.hu, %bb.al ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.iy = load ptr, ptr %i.an, align 8, !tbaa !888
  %.not.i.i29.i.i.i = icmp eq ptr %i.iy, null
  br i1 %.not.i.i29.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, label %bb.av

bb.av:                                            ; preds = %.body.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.iz = landingpad { ptr, i32 }
          catch ptr null
  %i.ja = extractvalue { ptr, i32 } %i.iz, 0
  call void @__clang_call_terminate(ptr %i.ja) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i: ; preds = %bb.av, %.body.i.i.i.i, %bb.f
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.da, %bb.f ], [ %.pn.i.i.i.i, %.body.i.i.i.i ], [ %.pn.i.i.i.i, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, %bb.e
  %.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i ], [ %i.cg, %bb.e ] ; 2 uses
  %i.jb = load ptr, ptr %4, align 8, !tbaa !1810  ; 3 uses
  %i.jc = load ptr, ptr %i.at, align 8, !tbaa !1838 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.jb, %i.jc
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ax, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.jh, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i ], [ %i.jb, %bb.ax ] ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 72
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !888
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.je, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jf = landingpad { ptr, i32 }
          catch ptr null
  %i.jg = extractvalue { ptr, i32 } %i.jf, 0
  call void @__clang_call_terminate(ptr %i.jg) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.ay, %.lr.ph.i.i.i.i.i.i
  %i.jh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i28.i.i.i = icmp eq ptr %i.jh, %i.jc
  br i1 %.not.i.i.i28.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1841

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.val.pr.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !1810
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.ax
  %.val.i.i.i.i = phi ptr [ %.val.pr.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.jb, %bb.ax ] ; 3 uses
  %.not.i.i2.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i2.i.i.i.i, label %.body.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i
  %.val1.i.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !1839
  %i.ji = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.jj = ptrtoint ptr %.val.i.i.i.i to i64
  %i.jk = sub i64 %i.ji, %i.jj
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.jk) #30
  br label %.body.i.i.i

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i
  %i.jl = load i32, ptr %i.l, align 4, !tbaa !1791
  %i.jm = add nsw i32 %i.jl, %.01753.i.i.i
  %i.jn = srem i32 %i.jm, 6
  %i.jo = sext i32 %i.jn to i64                   ; 2 uses
  %i.jp = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.jo
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.jo ; 2 uses
  %i.jr = load i32, ptr %i.k, align 8, !tbaa !1789
  %i.js = load i32, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.jt = add nsw i32 %i.js, %i.jr
  %i.ju = srem i32 %i.jt, 6                       ; 2 uses
  %i.jv = load i32, ptr %i.aw, align 4, !tbaa !866
  %i.jw = sub nsw i32 %i.jv, %i.js                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %4, ptr %5, align 8, !tbaa !1844
  store ptr %3, ptr %i.ax, align 8, !tbaa !914
  %i.jx = load i32, ptr %i.az, align 8, !tbaa !29
  store i32 %i.jx, ptr %i.ay, align 8, !tbaa !1807
  store i32 %i.ju, ptr %i.ba, align 4, !tbaa !1808
  store i32 %i.jw, ptr %i.bb, align 8, !tbaa !1809
  %i.jy = icmp sgt i32 %i.ju, 0
  br i1 %i.jy, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.jz = load ptr, ptr %i.jq, align 8, !tbaa !58
  invoke void %i.jz(ptr noundef nonnull align 8 dereferenceable(28) %5)
          to label %._crit_edge66.i.i.i unwind label %bb.bc

._crit_edge66.i.i.i:                              ; preds = %bb.bb
  %.pre.i.i.i = load i32, ptr %i.bb, align 8, !tbaa !1809
  br label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bd:                                            ; preds = %._crit_edge66.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.kb = phi i32 [ %.pre.i.i.i, %._crit_edge66.i.i.i ], [ %i.jw, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i ] ; 2 uses
  %.off.i.i.i = add i32 %i.kb, 5
  %.not.i.i.i = icmp ult i32 %.off.i.i.i, 11
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.bd
  %i.kc = sdiv i32 %i.kb, 6
  %i.kd = call i32 @llvm.umax.i32(i32 %i.kc, i32 1)
  %umax.i.i.i = sext i32 %i.kd to i64
  br label %.lr.ph.i.i.i

end_hunk_3
begin_hunk_4_@_ZN11OpenImageIO4v3_112ImageBufAlgo23LinearXTransDemosaicingIftE12calc_BGG_grbILb0EEEbRNS1_15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE7ContextE:bb.a
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 112
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !836
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %i.ah
  store float %i.hd, ptr %i.hk, align 4, !tbaa !53
  %i.hl = load i32, ptr %i.d, align 8, !tbaa !3
  %.val.i12.i.i18 = load ptr, ptr %i.a, align 8, !tbaa !1869
  %i.hm = getelementptr inbounds nuw i8, ptr %.val.i12.i.i18, i64 480
  %i.hn = sext i32 %i.hl to i64
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.hm, i64 %i.hn
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !53
  %i.hq = load ptr, ptr %i.aa, align 8, !tbaa !1872, !nonnull !172, !align !336 ; 3 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !832
  %i.hs = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hr)
  %i.ht = icmp eq i32 %i.hs, 3
  br i1 %i.ht, label %bb.i, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffE14IteratorValRefaSEf.exit15.i.i19, !prof !136

bb.i:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffE14IteratorValRefaSEf.exit.i.i17
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %i.hq)
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffE14IteratorValRefaSEf.exit15.i.i19

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffE14IteratorValRefaSEf.exit15.i.i19: ; preds = %bb.i, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffE14IteratorValRefaSEf.exit.i.i17
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 112
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !836
  %i.hw = getelementptr [4 x i8], ptr %i.hv, i64 %i.ah
  %i.hx = getelementptr i8, ptr %i.hw, i64 4
  store float %i.hp, ptr %i.hx, align 4, !tbaa !53
  %i.hy = load i32, ptr %i.d, align 8, !tbaa !3
  %.val.i16.i.i20 = load ptr, ptr %i.a, align 8, !tbaa !1869 ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.val.i16.i.i20, i64 648 ; 2 uses
  %i.ia = sext i32 %i.hy to i64
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.hz, i64 %i.ia
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !53
  %i.id = load i32, ptr %i.p, align 4, !tbaa !3
  %i.ie = getelementptr inbounds nuw i8, ptr %.val.i16.i.i20, i64 312
  %i.if = sext i32 %i.id to i64
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.ie, i64 %i.if
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !53
  %i.ii = load i32, ptr %i.fz, align 8, !tbaa !3
  %i.ij = getelementptr inbounds nuw i8, ptr %.val.i16.i.i20, i64 480
  %i.ik = sext i32 %i.ii to i64
  %i.il = getelementptr inbounds [4 x i8], ptr %i.ij, i64 %i.ik
  %i.im = load float, ptr %i.il, align 4, !tbaa !53
  %i.in = load i32, ptr %i.cu, align 8, !tbaa !3
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.hz, i64 %i.io
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !53
  %i.ir = load ptr, ptr %i.aa, align 8, !tbaa !1872, !nonnull !172, !align !336 ; 3 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !832
  %i.it = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.is)
  %i.iu = icmp eq i32 %i.it, 3
  br i1 %i.iu, label %bb.j, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE16check_and_decodeILb0EZNS1_23LinearXTransDemosaicingIftE12calc_BGG_grbILb0EEEbRNS5_7ContextEEUlvE1_EEbSB_RKT0_.exit, !prof !136

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffE14IteratorValRefaSEf.exit15.i.i19
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %i.ir)
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE16check_and_decodeILb0EZNS1_23LinearXTransDemosaicingIftE12calc_BGG_grbILb0EEEbRNS5_7ContextEEUlvE1_EEbSB_RKT0_.exit

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE16check_and_decodeILb0EZNS1_23LinearXTransDemosaicingIftE12calc_BGG_grbILb0EEEbRNS5_7ContextEEUlvE1_EEbSB_RKT0_.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffE14IteratorValRefaSEf.exit15.i.i19, %bb.j
  %i.iv = fpext float %i.im to double
  %i.iw = fpext float %i.ih to double
  %i.ix = fpext float %i.ic to double
  %i.iy = tail call double @llvm.fmuladd.f64(double %i.iw, double f0x3FE6A09E667F3BCD, double %i.ix)
  %i.iz = tail call double @llvm.fmuladd.f64(double %i.iv, double 5.000000e-01, double %i.iy)
  %i.ja = fpext float %i.iq to double
  %i.jb = fdiv double %i.ja, f0x4001E3779B97F4A8
  %i.jc = fadd double %i.iz, %i.jb
  %i.jd = fdiv double %i.jc, f0x40053C0C5257CCAE
  %i.je = fptrunc double %i.jd to float
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ir, i64 112
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !836
  %i.jh = getelementptr [4 x i8], ptr %i.jg, i64 %i.ah
  %i.ji = getelementptr i8, ptr %i.jh, i64 8
  store float %i.je, ptr %i.ji, align 4, !tbaa !53
  %i.jj = load ptr, ptr %i.aa, align 8, !tbaa !1872, !nonnull !172, !align !336
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %i.jj)
  %i.jk = load i32, ptr %i.cg, align 8, !tbaa !1868
  %i.jl = add nsw i32 %i.jk, -1
  store i32 %i.jl, ptr %i.cg, align 8, !tbaa !1868
  %i.jm = load ptr, ptr %0, align 8, !tbaa !1863, !nonnull !172, !align !336
  tail call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window6updateEv(ptr noundef nonnull align 8 dereferenceable(60) %i.jm)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS4_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<float, unsigned short, 6, 5, OpenImageIO::ImageBufAlgo::xtrans_channel_map>::Window::Row", align 8 ; 37 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 8 uses
  %4 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<float, unsigned short, 6, 5, OpenImageIO::ImageBufAlgo::xtrans_channel_map>::Window", align 8 ; 20 uses
  %5 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<float, unsigned short, 6, 5, OpenImageIO::ImageBufAlgo::xtrans_channel_map>::Context", align 8 ; 11 uses
  %6 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 10 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !58    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1880 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.d = load ptr, ptr %.val, align 8, !tbaa !1882, !nonnull !172, !align !336
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0, i1 noundef zeroext true)
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !868  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !867
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %.lr.ph54.i.i.i, label %._crit_edge55.i.i.i

.lr.ph54.i.i.i:                                   ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 100 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 52 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 132 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br label %bb.d

._crit_edge55.i.i.i:                              ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !888
  %.not.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS7_RA4_KfNS1_3ROIEiEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge55.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS7_RA4_KfNS1_3ROIEiEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #33
  unreachable

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %.lr.ph54.i.i.i
  %.01752.i.i.i = phi i32 [ %i.f, %.lr.ph54.i.i.i ], [ %i.kd, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.bg = load i32, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !1883, !nonnull !172, !align !336 ; 3 uses
  %i.bi = load i32, ptr %i.k, align 8, !tbaa !1848
  %i.bj = load i32, ptr %i.l, align 4, !tbaa !1850
  %i.bk = load ptr, ptr %i.m, align 8, !tbaa !1884, !nonnull !172, !align !315 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %4, i8 0, i64 24, i1 false)
  %i.bl = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh)
          to label %.preheader91.i.i.i.i unwind label %bb.e ; 4 uses

.preheader91.i.i.i.i:                             ; preds = %bb.d
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !891 ; 3 uses
  store i32 %i.bm, ptr %i.n, align 4, !tbaa !1885
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !897
  %i.bp = add nsw i32 %i.bo, %i.bm
  store i32 %i.bp, ptr %i.o, align 8, !tbaa !1890
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !899 ; 2 uses
  store i32 %i.br, ptr %i.p, align 4, !tbaa !1891
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !901
  %i.bu = add nsw i32 %i.bt, %i.br
  store i32 %i.bu, ptr %i.q, align 8, !tbaa !1892
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.r, align 8, !tbaa !3
  store i32 4, ptr %i.s, align 8, !tbaa !3
  %i.bv = sub i32 %i.bm, %i.bg                    ; 3 uses
  %i.bw = call i32 @llvm.smax.i32(i32 %i.bv, i32 -2) ; 4 uses
  %spec.store.select.i.i.i.i = add i32 %i.bw, 2   ; 3 uses
  %i.bx = add i32 %i.bw, %i.bg                    ; 3 uses
  %i.by = add nsw i32 %i.bx, %i.bi
  %i.bz = srem i32 %i.by, 6                       ; 3 uses
  %i.ca = icmp slt i32 %i.bv, 3
  %i.cb = icmp sgt i32 %i.bv, -2
  %i.cc = add i32 %.01752.i.i.i, -2
  %i.cd = sub i32 2, %.01752.i.i.i
  %i.ce = sext i32 %spec.store.select.i.i.i.i to i64
  %i.cf = sub i32 -2, %i.bw
  %7 = add i32 %i.bw, 7
  %smax130.i.i.i.i = call i32 @llvm.smax.i32(i32 %spec.store.select.i.i.i.i, i32 1)
  %wide.trip.count.i.i.i.i = zext nneg i32 %smax130.i.i.i.i to i64
  br label %.preheader90.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.preheader90.i.i.i.i:                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, %.preheader91.i.i.i.i
  %indvars.iv116.i.i.i.i = phi i32 [ %i.cd, %.preheader91.i.i.i.i ], [ %indvars.iv.next117.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i.i = phi i32 [ %i.cc, %.preheader91.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ] ; 3 uses
  %.074105.i.i.i.i = phi i32 [ 0, %.preheader91.i.i.i.i ], [ %i.ii, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ]
  %i.ch = load i32, ptr %i.p, align 4, !tbaa !1891
  %smax.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.ch, i32 %indvars.iv.i.i.i.i)
  %i.ci = add i32 %smax.i.i.i.i, %indvars.iv116.i.i.i.i ; 2 uses
  %i.cj = icmp ne i32 %i.ci, 0
  %umin.i.i.i.i = zext i1 %i.cj to i32            ; 2 uses
  %i.ck = load i32, ptr %i.q, align 8, !tbaa !1892
  %i.cl = sub i32 %i.ci, %umin.i.i.i.i
  %i.cm = udiv i32 %i.cl, 6
  %i.cn = add nuw nsw i32 %i.cm, %umin.i.i.i.i
  %i.co = mul i32 %i.cn, 6
  %i.cp = add i32 %i.co, %indvars.iv.i.i.i.i      ; 4 uses
  %i.cq = add i32 %i.ck, -1                       ; 2 uses
  %smin.i.i.i = call i32 @llvm.smin.i32(i32 %i.cp, i32 %i.cq)
  %i.cr = icmp sgt i32 %i.cp, %i.cq               ; 2 uses
  %umin.i.neg11.i.i = sext i1 %i.cr to i32
  %umin.i.i.i = zext i1 %i.cr to i32
  %.neg.i.i = sub i32 %i.cp, %smin.i.i.i
  %i.cs = add i32 %.neg.i.i, %umin.i.neg11.i.i
  %i.ct = udiv i32 %i.cs, 6
  %i.cu = add nuw nsw i32 %i.ct, %umin.i.i.i
  %.neg.i.i.i = mul i32 %i.cu, -6
  %i.cv = add i32 %.neg.i.i.i, %i.cp              ; 3 uses
  %i.cw = add nsw i32 %i.cv, %i.bj
  %i.cx = srem i32 %i.cw, 6                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_iiiNS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i32 noundef %i.bx, i32 noundef %i.cv, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.f

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %.preheader90.i.i.i.i
  store i32 %i.bz, ptr %i.t, align 8, !tbaa !1876
  store i32 %i.cx, ptr %i.u, align 4, !tbaa !1875
  store ptr %i.bk, ptr %i.v, align 8, !tbaa !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.w, i8 0, i64 20, i1 false)
  br i1 %i.ca, label %.lr.ph.i.i.i.i, label %.lr.ph104.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.s
  br i1 %i.cb, label %.lr.ph104.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph104.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [48 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL18xtrans_channel_mapE, i64 %i.cy
  br label %bb.aj

bb.f:                                             ; preds = %.preheader90.i.i.i.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.s
  %i.db = phi i32 [ %spec.select.i.i.i.i.i, %bb.s ], [ %i.bz, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv118.i.i.i.i = phi i64 [ %indvars.iv.next119.i.i.i.i, %bb.s ], [ %i.ce, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 2 uses
  %i.dc = load ptr, ptr %i.v, align 8, !tbaa !1873, !nonnull !172, !align !315
  %i.dd = load i32, ptr %i.u, align 4, !tbaa !1875
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [48 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL18xtrans_channel_mapE, i64 %i.de
  %i.dg = sext i32 %i.db to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !180
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.di
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !53
  %i.dl = load ptr, ptr %i.x, align 8, !tbaa !836 ; 3 uses
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !1064
  %i.dn = load i32, ptr %i.y, align 4, !tbaa !844 ; 3 uses
  %i.do = load i32, ptr %i.z, align 8, !tbaa !845, !noalias !1893 ; 2 uses
  %i.dp = add nsw i32 %i.do, -1
  %i.dq = icmp eq i32 %i.dn, %i.dp
  br i1 %i.dq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dr = add nsw i32 %i.dn, -5
  %i.ds = load i32, ptr %i.ab, align 8, !tbaa !849
  br label %.invoke.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dt = add nsw i32 %i.dn, 1                    ; 7 uses
  store i32 %i.dt, ptr %i.y, align 4, !tbaa !844
  %i.du = icmp slt i32 %i.dt, %i.do
  br i1 %i.du, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.dv = load i8, ptr %i.ah, align 1, !tbaa !850, !range !171, !noundef !172
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.j, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.i
  %.pre.i.i.i.i.i = load i32, ptr %i.ab, align 8, !tbaa !849
  %.pre.i.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !856
  br label %.invoke.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.dx = load i8, ptr %i.ai, align 1, !tbaa !851, !range !171, !noundef !172
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.dz = load i64, ptr %i.ak, align 8, !tbaa !852
  %i.ea = getelementptr inbounds i8, ptr %i.dl, i64 %i.dz
  store ptr %i.ea, ptr %i.x, align 8, !tbaa !836
  %i.eb = load i32, ptr %i.al, align 8, !tbaa !853
  %.not.i.i85.i.i.i.i = icmp slt i32 %i.dt, %i.eb
  br i1 %.not.i.i85.i.i.i.i, label %bb.s, label %bb.l, !prof !55

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.s unwind label %bb.t

bb.m:                                             ; preds = %bb.j
  %i.ec = load i8, ptr %i.aj, align 2, !tbaa !854, !range !171, !noundef !172
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ee = load i64, ptr %i.ak, align 8, !tbaa !852
  %i.ef = getelementptr inbounds i8, ptr %i.dl, i64 %i.ee
  store ptr %i.ef, ptr %i.x, align 8, !tbaa !836
  %i.eg = load i32, ptr %i.al, align 8, !tbaa !853
  %i.eh = icmp slt i32 %i.dt, %i.eg               ; 3 uses
  %i.ei = load i32, ptr %i.am, align 4
  %i.ej = icmp sge i32 %i.dt, %i.ei
  %not..i.i.i.i.i.i = xor i1 %i.eh, true
  %or.cond.i.i.i.i.i.i = select i1 %not..i.i.i.i.i.i, i1 true, i1 %i.ej, !prof !855
  %i.ek = load ptr, ptr %i.an, align 8
  %i.el = icmp eq ptr %i.ek, null
  %i.em = select i1 %or.cond.i.i.i.i.i.i, i1 true, i1 %i.el, !prof !855
  br i1 %i.em, label %bb.o, label %bb.s, !prof !136

bb.o:                                             ; preds = %bb.n
  %i.en = load ptr, ptr %2, align 8, !tbaa !832
  %i.eo = load i32, ptr %i.ab, align 8, !tbaa !849
  %i.ep = load i32, ptr %i.ae, align 4, !tbaa !856
  %i.eq = load i32, ptr %i.as, align 8, !tbaa !857
  %i.er = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.en, i32 noundef %i.dt, i32 noundef %i.eo, i32 noundef %i.ep, ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.am, ptr noundef nonnull align 1 dereferenceable(1) %i.ar, i1 noundef zeroext %i.eh, i32 noundef %i.eq)
          to label %.noexc87.i.i.i.i unwind label %bb.t

.noexc87.i.i.i.i:                                 ; preds = %bb.o
  %i.es = zext i1 %i.eh to i8
  store ptr %i.er, ptr %i.x, align 8, !tbaa !836
  store i8 %i.es, ptr %i.ah, align 1, !tbaa !850
  br label %bb.s

bb.p:                                             ; preds = %bb.h
  %i.et = load i32, ptr %i.aa, align 4, !tbaa !858 ; 3 uses
  store i32 %i.et, ptr %i.y, align 4, !tbaa !844
  %i.eu = load i32, ptr %i.ab, align 8, !tbaa !849
  %i.ev = add nsw i32 %i.eu, 1                    ; 3 uses
  store i32 %i.ev, ptr %i.ab, align 8, !tbaa !849
  %i.ew = load i32, ptr %i.ac, align 8, !tbaa !859
  %.not.i84.i.i.i.i = icmp slt i32 %i.ev, %i.ew
  %.pre133.i.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !856 ; 2 uses
  br i1 %.not.i84.i.i.i.i, label %.invoke.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ex = load i32, ptr %i.ad, align 4, !tbaa !860 ; 2 uses
  store i32 %i.ex, ptr %i.ab, align 8, !tbaa !849
  %i.ey = add nsw i32 %.pre133.i.i.i.i, 1         ; 3 uses
  store i32 %i.ey, ptr %i.ae, align 4, !tbaa !856
  %i.ez = load i32, ptr %i.af, align 8, !tbaa !861
  %.not1.i.i.i.i.i = icmp slt i32 %i.ey, %i.ez
  br i1 %.not1.i.i.i.i.i, label %.invoke.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr %i.ag, align 8, !tbaa !862
  br label %bb.s

.invoke.i.i.i.i:                                  ; preds = %bb.q, %bb.p, %._crit_edge.i.i.i.i.i, %bb.g
  %i.fa = phi i32 [ %i.dr, %bb.g ], [ %i.et, %bb.p ], [ %i.et, %bb.q ], [ %i.dt, %._crit_edge.i.i.i.i.i ]
  %i.fb = phi i32 [ %i.ds, %bb.g ], [ %i.ev, %bb.p ], [ %i.ex, %bb.q ], [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  %i.fc = phi i32 [ 0, %bb.g ], [ %.pre133.i.i.i.i, %bb.p ], [ %i.ey, %bb.q ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(164) %2, i32 noundef %i.fa, i32 noundef %i.fb, i32 noundef %i.fc)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.invoke.i.i.i.i, %bb.r, %.noexc87.i.i.i.i, %bb.n, %bb.m, %bb.l, %bb.k
  %i.fd = uitofp i16 %i.dm to float
  %i.fe = fmul nnan float %i.fd, f0x37800080
  %i.ff = load i32, ptr %i.t, align 8, !tbaa !1876
  %i.fg = add nsw i32 %i.ff, 1                    ; 2 uses
  %i.fh = icmp eq i32 %i.fg, 6
  %spec.select.i.i.i.i.i = select i1 %i.fh, i32 0, i32 %i.fg ; 2 uses
  store i32 %spec.select.i.i.i.i.i, ptr %i.t, align 8, !tbaa !1876
  %i.fi = fmul float %i.dk, %i.fe
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv118.i.i.i.i
  store float %i.fi, ptr %i.fj, align 4, !tbaa !53
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1 ; 2 uses
  %i.fk = and i64 %indvars.iv.next119.i.i.i.i, 4294967295
  %exitcond.not.i.i.i.i = icmp eq i64 %i.fk, 5
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1896

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.an, %.preheader.i.i.i.i
  %i.fm = load ptr, ptr %i.at, align 8, !tbaa !1897 ; 7 uses
  %i.fn = load ptr, ptr %i.au, align 8, !tbaa !1898
  %.not.i.i.i.i.i = icmp eq ptr %i.fm, %i.fn
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.fm, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %.noexc80.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc80.i.i.i.i:                                 ; preds = %bb.u
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.fo, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  %i.fp = load ptr, ptr %i.at, align 8, !tbaa !1897
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 168
  store ptr %i.fq, ptr %i.at, align 8, !tbaa !1897
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !1869 ; 6 uses
  %i.fr = ptrtoint ptr %i.fm to i64
  %i.fs = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.ft = sub i64 %i.fr, %i.fs                    ; 3 uses
  %i.fu = icmp eq i64 %i.ft, 9223372036854775800
  br i1 %i.fu, label %bb.w, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc81.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.fv = sdiv exact i64 %i.ft, 168               ; 3 uses
  %i.fw = icmp eq ptr %i.fm, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.fw, i64 1, i64 %i.fv
  %i.fx = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.fv ; 2 uses
  %i.fy = icmp ult i64 %i.fx, %i.fv
  %i.fz = call i64 @llvm.umin.i64(i64 %i.fx, i64 54901024028897475)
  %i.ga = select i1 %i.fy, i64 54901024028897475, i64 %i.fz ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.ga, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.gb = mul nuw nsw i64 %i.ga, 168              ; 2 uses
  %i.gc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gb) #32
          to label %.noexc82.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc82.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.ft ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.gd, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.x unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i

bb.x:                                             ; preds = %.noexc82.i.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ge, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  br i1 %i.fw, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.x
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 168
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.x, %bb.y
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gj, %bb.y ], [ %i.gc, %bb.x ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gi, %bb.y ], [ %.val.i.i.i.i.i.i, %bb.x ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(164) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gh = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gg, ptr noundef nonnull align 8 dereferenceable(36) %i.gh, i64 36, i1 false)
  %i.gi = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 168
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gi, %i.fm
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1899

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gk = landingpad { ptr, i32 }
          catch ptr null
  %i.gl = extractvalue { ptr, i32 } %i.gk, 0
  %i.gm = call ptr @__cxa_begin_catch(ptr %i.gl) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_(ptr noundef nonnull %i.gc, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gn = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.go = landingpad { ptr, i32 }
          catch ptr null
  %i.gp = extractvalue { ptr, i32 } %i.go, 0
  call void @__clang_call_terminate(ptr %i.gp) #33
  unreachable

bb.ac:                                            ; preds = %bb.z
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.y
  %i.gq = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 336
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.gv, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !888
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.gs, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gv, %i.fm
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1900

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i
  %i.gw = phi ptr [ %i.gf, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.gq, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  %i.gx = load ptr, ptr %i.au, align 8, !tbaa !1898
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = sub i64 %i.gy, %i.fs
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.gz) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc82.i.i.i.i
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  %i.hc = call ptr @__cxa_begin_catch(ptr %i.hb) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.aa
  %i.hd = extractvalue { ptr, i32 } %i.gn, 0
  %i.he = call ptr @__cxa_begin_catch(ptr %i.hd) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(164) dereferenceable(164) %i.gd) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  %i.hf = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.ah

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.gb) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.ai unwind label %bb.ag

bb.ah:                                            ; preds = %bb.ag
  %i.hg = landingpad { ptr, i32 }
          catch ptr null
  %i.hh = extractvalue { ptr, i32 } %i.hg, 0
  call void @__clang_call_terminate(ptr %i.hh) #33
  unreachable

bb.ai:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.af, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  store ptr %i.gc, ptr %4, align 8, !tbaa !1869
  store ptr %i.gw, ptr %i.at, align 8, !tbaa !1897
  %i.hi = getelementptr inbounds nuw [168 x i8], ptr %i.gc, i64 %i.ga
  store ptr %i.hi, ptr %i.au, align 8, !tbaa !1898
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.an, %.lr.ph104.i.i.i.i
  %indvars.iv127.i.i.i.i = phi i64 [ 0, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next128.i.i.i.i, %bb.an ] ; 3 uses
  %indvars.iv124.i.i.i.i = phi i32 [ %7, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next125.i.i.i.i, %bb.an ] ; 2 uses
  %indvars.iv121.i.i.i.i = phi i32 [ %i.cf, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next122.i.i.i.i, %bb.an ] ; 3 uses
  %smax123.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv121.i.i.i.i, i32 0)
  %i.hj = add i32 %smax123.i.i.i.i, %indvars.iv124.i.i.i.i
  %.fr.i.i.i.i = freeze i32 %i.hj                 ; 2 uses
  %8 = urem i32 %.fr.i.i.i.i, 6
  %i.hk = sub nuw i32 %.fr.i.i.i.i, %8
  %i.hl = add i32 %i.hk, %indvars.iv121.i.i.i.i   ; 3 uses
  %i.hm = add nsw i32 %i.hl, %spec.store.select.i.i.i.i ; 2 uses
  %i.hn = icmp slt i32 %i.hm, 5
  br i1 %i.hn, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ho = sext i32 %i.hm to i64
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.ho
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !53
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv127.i.i.i.i
  store float %i.hq, ptr %i.hr, align 4, !tbaa !53
  br label %bb.an

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.hs = add nsw i32 %i.hl, %i.bx
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiNS0_4spanIfLm18446744073709551615EEENS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i32 noundef %i.hs, i32 noundef %i.cv, i32 noundef 0, ptr nonnull %i.a, i64 1, i32 noundef 1)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.am

_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %bb.al
  %i.ht = add nsw i32 %i.hl, %i.bz
  %i.hu = srem i32 %i.ht, 6
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.hv
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !180
  %i.hy = load float, ptr %i.a, align 4, !tbaa !53
  %sext.i.i.i.i = shl i64 %i.hx, 32
  %i.hz = ashr exact i64 %sext.i.i.i.i, 30
  %i.ia = getelementptr inbounds i8, ptr %i.bk, i64 %i.hz
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !53
  %i.ic = fmul float %i.hy, %i.ib
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv127.i.i.i.i
  store float %i.ic, ptr %i.id, align 4, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ie = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %.body.i.i.i.i

bb.an:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i, %bb.ak
  %indvars.iv.next128.i.i.i.i = add nuw nsw i64 %indvars.iv127.i.i.i.i, 1 ; 2 uses
  %indvars.iv.next122.i.i.i.i = add i32 %indvars.iv121.i.i.i.i, 1
  %indvars.iv.next125.i.i.i.i = add i32 %indvars.iv124.i.i.i.i, -1
  %exitcond131.not.i.i.i.i.a = icmp eq i64 %indvars.iv.next128.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond131.not.i.i.i.i.a, label %._crit_edge.i.i.i.i, label %bb.aj, !llvm.loop !1901

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, %.noexc80.i.i.i.i
  %i.if = load ptr, ptr %i.an, align 8, !tbaa !888
  %.not.i.i.i.i.i.i = icmp eq ptr %i.if, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ig = landingpad { ptr, i32 }
          catch ptr null
  %i.ih = extractvalue { ptr, i32 } %i.ig, 0
  call void @__clang_call_terminate(ptr %i.ih) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i: ; preds = %bb.ao, %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.ii = add nuw nsw i32 %.074105.i.i.i.i, 1     ; 2 uses
  %indvars.iv.next.i.i.i.i = add i32 %indvars.iv.i.i.i.i, 1
  %indvars.iv.next117.i.i.i.i = add i32 %indvars.iv116.i.i.i.i, -1
  %exitcond132.not.i.i.i.i = icmp eq i32 %i.ii, 5
  br i1 %exitcond132.not.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i, label %.preheader90.i.i.i.i, !llvm.loop !1902

.loopexit.i.i.i.i:                                ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %bb.u
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.w
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i, %bb.am, %bb.ag, %bb.t
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.fl, %bb.t ], [ %i.ie, %bb.am ], [ %i.hf, %bb.ag ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.ij = load ptr, ptr %i.an, align 8, !tbaa !888
  %.not.i.i28.i.i.i = icmp eq ptr %i.ij, null
  br i1 %.not.i.i28.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %.body.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ik = landingpad { ptr, i32 }
          catch ptr null
  %i.il = extractvalue { ptr, i32 } %i.ik, 0
  call void @__clang_call_terminate(ptr %i.il) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i: ; preds = %bb.aq, %.body.i.i.i.i, %bb.f
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.da, %bb.f ], [ %.pn.i.i.i.i, %.body.i.i.i.i ], [ %.pn.i.i.i.i, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.as

bb.as:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, %bb.e
  %.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i ], [ %i.cg, %bb.e ] ; 2 uses
  %i.im = load ptr, ptr %4, align 8, !tbaa !1869  ; 3 uses
  %i.in = load ptr, ptr %i.at, align 8, !tbaa !1897 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.im, %i.in
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.as, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.is, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i ], [ %i.im, %bb.as ] ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 72
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !888
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ip, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.iq = landingpad { ptr, i32 }
          catch ptr null
  %i.ir = extractvalue { ptr, i32 } %i.iq, 0
  call void @__clang_call_terminate(ptr %i.ir) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.at, %.lr.ph.i.i.i.i.i.i
  %i.is = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i27.i.i.i = icmp eq ptr %i.is, %i.in
  br i1 %.not.i.i.i27.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1900

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.val.pr.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !1869
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.as
  %.val.i.i.i.i = phi ptr [ %.val.pr.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.im, %bb.as ] ; 3 uses
  %.not.i.i2.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i2.i.i.i.i, label %.body.i.i.i, label %bb.av

bb.av:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i
  %.val1.i.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !1898
  %i.it = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.iu = ptrtoint ptr %.val.i.i.i.i to i64
  %i.iv = sub i64 %i.it, %i.iu
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.iv) #30
  br label %.body.i.i.i

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i
  %i.iw = load i32, ptr %i.l, align 4, !tbaa !1850
  %i.ix = add nsw i32 %i.iw, %.01752.i.i.i
  %i.iy = srem i32 %i.ix, 6
  %i.iz = sext i32 %i.iy to i64                   ; 2 uses
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.iz
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.iz ; 2 uses
  %i.jc = load i32, ptr %i.k, align 8, !tbaa !1848
  %i.jd = load i32, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.je = add nsw i32 %i.jd, %i.jc
  %i.jf = srem i32 %i.je, 6                       ; 2 uses
  %i.jg = load i32, ptr %i.aw, align 4, !tbaa !866
  %i.jh = sub nsw i32 %i.jg, %i.jd                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %4, ptr %5, align 8, !tbaa !1903
  store ptr %3, ptr %i.ax, align 8, !tbaa !914
  %i.ji = load i32, ptr %i.az, align 8, !tbaa !29
  store i32 %i.ji, ptr %i.ay, align 8, !tbaa !1866
  store i32 %i.jf, ptr %i.ba, align 4, !tbaa !1867
  store i32 %i.jh, ptr %i.bb, align 8, !tbaa !1868
  %i.jj = icmp sgt i32 %i.jf, 0
  br i1 %i.jj, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.jk = load ptr, ptr %i.jb, align 8, !tbaa !58
  invoke void %i.jk(ptr noundef nonnull align 8 dereferenceable(28) %5)
          to label %._crit_edge65.i.i.i unwind label %bb.ax

._crit_edge65.i.i.i:                              ; preds = %bb.aw
  %.pre.i.i.i = load i32, ptr %i.bb, align 8, !tbaa !1868
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ay:                                            ; preds = %._crit_edge65.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.jm = phi i32 [ %.pre.i.i.i, %._crit_edge65.i.i.i ], [ %i.jh, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i ] ; 2 uses
  %.off.i.i.i = add i32 %i.jm, 5
  %.not.i.i.i = icmp ult i32 %.off.i.i.i, 11
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.ay
  %i.jn = sdiv i32 %i.jm, 6
  %i.jo = call i32 @llvm.umax.i32(i32 %i.jn, i32 1)
  %umax.i.i.i = sext i32 %i.jo to i64
  br label %.lr.ph.i.i.i

end_hunk_4
begin_hunk_5_@_ZN11OpenImageIO4v3_112ImageBufAlgo23LinearXTransDemosaicingIhhE12calc_BGG_grbILb0EEEbRNS1_15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE7ContextE:bb.a
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfE14IteratorValRefaSEf.exit18.i.i28

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfE14IteratorValRefaSEf.exit18.i.i28: ; preds = %bb.i, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfE14IteratorValRefaSEf.exit.i.i23
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jg, i64 112
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !836
  %i.jm = getelementptr i8, ptr %i.jl, i64 %i.ah
  %i.jn = getelementptr i8, ptr %i.jm, i64 1
  %i.jo = fmul float %i.jf, 2.550000e+02          ; 2 uses
  %i.jp = fcmp olt float %i.jo, 0.000000e+00
  %i.jq = select i1 %i.jp, float -5.000000e-01, float 5.000000e-01
  %i.jr = fadd float %i.jo, %i.jq                 ; 2 uses
  %.inv.i.i.i.i.i15.i.i29 = fcmp oge float %i.jr, 0.000000e+00
  %.0.i.i.i.i.i.i16.i.i30 = select i1 %.inv.i.i.i.i.i15.i.i29, float %i.jr, float 0.000000e+00 ; 2 uses
  %i.js = fcmp ogt float %.0.i.i.i.i.i.i16.i.i30, 2.550000e+02
  %.1.i.i.i.i.i.i17.i.i31 = select i1 %i.js, float 2.550000e+02, float %.0.i.i.i.i.i.i16.i.i30
  %i.jt = fptoui float %.1.i.i.i.i.i.i17.i.i31 to i8
  store i8 %i.jt, ptr %i.jn, align 1, !tbaa !17
  %i.ju = load i32, ptr %i.d, align 8, !tbaa !3
  %.val.i19.i.i32 = load ptr, ptr %i.a, align 8, !tbaa !1928 ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.val.i19.i.i32, i64 648 ; 2 uses
  %i.jw = sext i32 %i.ju to i64
  %i.jx = getelementptr inbounds [4 x i8], ptr %i.jv, i64 %i.jw
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !53
  %i.jz = load i32, ptr %i.p, align 4, !tbaa !3
  %i.ka = getelementptr inbounds nuw i8, ptr %.val.i19.i.i32, i64 312
  %i.kb = sext i32 %i.jz to i64
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.ka, i64 %i.kb
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !53
  %i.ke = load i32, ptr %i.hj, align 8, !tbaa !3
  %i.kf = getelementptr inbounds nuw i8, ptr %.val.i19.i.i32, i64 480
  %i.kg = sext i32 %i.ke to i64
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.kf, i64 %i.kg
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !53
  %i.kj = load i32, ptr %i.dm, align 8, !tbaa !3
  %i.kk = sext i32 %i.kj to i64
  %i.kl = getelementptr inbounds [4 x i8], ptr %i.jv, i64 %i.kk
  %i.km = load float, ptr %i.kl, align 4, !tbaa !53
  %i.kn = load ptr, ptr %i.aa, align 8, !tbaa !1931, !nonnull !172, !align !336 ; 3 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !832
  %i.kp = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ko)
  %i.kq = icmp eq i32 %i.kp, 3
  br i1 %i.kq, label %bb.j, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE16check_and_decodeILb0EZNS1_23LinearXTransDemosaicingIhhE12calc_BGG_grbILb0EEEbRNS5_7ContextEEUlvE1_EEbSB_RKT0_.exit, !prof !136

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfE14IteratorValRefaSEf.exit18.i.i28
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %i.kn)
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE16check_and_decodeILb0EZNS1_23LinearXTransDemosaicingIhhE12calc_BGG_grbILb0EEEbRNS5_7ContextEEUlvE1_EEbSB_RKT0_.exit

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE16check_and_decodeILb0EZNS1_23LinearXTransDemosaicingIhhE12calc_BGG_grbILb0EEEbRNS5_7ContextEEUlvE1_EEbSB_RKT0_.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfE14IteratorValRefaSEf.exit18.i.i28, %bb.j
  %i.kr = fpext float %i.ki to double
  %i.ks = fpext float %i.kd to double
  %i.kt = fpext float %i.jy to double
  %i.ku = tail call double @llvm.fmuladd.f64(double %i.ks, double f0x3FE6A09E667F3BCD, double %i.kt)
  %i.kv = tail call double @llvm.fmuladd.f64(double %i.kr, double 5.000000e-01, double %i.ku)
  %i.kw = fpext float %i.km to double
  %i.kx = fdiv double %i.kw, f0x4001E3779B97F4A8
  %i.ky = fadd double %i.kv, %i.kx
  %i.kz = fdiv double %i.ky, f0x40053C0C5257CCAE
  %i.la = fptrunc double %i.kz to float
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kn, i64 112
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !836
  %i.ld = getelementptr i8, ptr %i.lc, i64 %i.ah
  %i.le = getelementptr i8, ptr %i.ld, i64 2
  %i.lf = fmul float %i.la, 2.550000e+02          ; 2 uses
  %i.lg = fcmp olt float %i.lf, 0.000000e+00
  %i.lh = select i1 %i.lg, float -5.000000e-01, float 5.000000e-01
  %i.li = fadd float %i.lf, %i.lh                 ; 2 uses
  %.inv.i.i.i.i.i25.i.i33 = fcmp oge float %i.li, 0.000000e+00
  %.0.i.i.i.i.i.i26.i.i34 = select i1 %.inv.i.i.i.i.i25.i.i33, float %i.li, float 0.000000e+00 ; 2 uses
  %i.lj = fcmp ogt float %.0.i.i.i.i.i.i26.i.i34, 2.550000e+02
  %.1.i.i.i.i.i.i27.i.i35 = select i1 %i.lj, float 2.550000e+02, float %.0.i.i.i.i.i.i26.i.i34
  %i.lk = fptoui float %.1.i.i.i.i.i.i27.i.i35 to i8
  store i8 %i.lk, ptr %i.le, align 1, !tbaa !17
  %i.ll = load ptr, ptr %i.aa, align 8, !tbaa !1931, !nonnull !172, !align !336
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %i.ll)
  %i.lm = load i32, ptr %i.cy, align 8, !tbaa !1927
  %i.ln = add nsw i32 %i.lm, -1
  store i32 %i.ln, ptr %i.cy, align 8, !tbaa !1927
  %i.lo = load ptr, ptr %0, align 8, !tbaa !1922, !nonnull !172, !align !336
  tail call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window6updateEv(ptr noundef nonnull align 8 dereferenceable(60) %i.lo)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS4_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<unsigned char, unsigned char, 6, 5, OpenImageIO::ImageBufAlgo::xtrans_channel_map>::Window::Row", align 8 ; 37 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.221", align 8 ; 8 uses
  %4 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<unsigned char, unsigned char, 6, 5, OpenImageIO::ImageBufAlgo::xtrans_channel_map>::Window", align 8 ; 20 uses
  %5 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<unsigned char, unsigned char, 6, 5, OpenImageIO::ImageBufAlgo::xtrans_channel_map>::Context", align 8 ; 11 uses
  %6 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 10 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !58    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1939 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.d = load ptr, ptr %.val, align 8, !tbaa !1941, !nonnull !172, !align !336
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0, i1 noundef zeroext true)
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !868  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !867
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %.lr.ph54.i.i.i, label %._crit_edge55.i.i.i

.lr.ph54.i.i.i:                                   ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 100 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 52 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 132 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br label %bb.d

._crit_edge55.i.i.i:                              ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !888
  %.not.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS7_RA4_KfNS1_3ROIEiEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge55.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS7_RA4_KfNS1_3ROIEiEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #33
  unreachable

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %.lr.ph54.i.i.i
  %.01752.i.i.i = phi i32 [ %i.f, %.lr.ph54.i.i.i ], [ %i.kd, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.bg = load i32, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !1942, !nonnull !172, !align !336 ; 3 uses
  %i.bi = load i32, ptr %i.k, align 8, !tbaa !1907
  %i.bj = load i32, ptr %i.l, align 4, !tbaa !1909
  %i.bk = load ptr, ptr %i.m, align 8, !tbaa !1943, !nonnull !172, !align !315 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %4, i8 0, i64 24, i1 false)
  %i.bl = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh)
          to label %.preheader91.i.i.i.i unwind label %bb.e ; 4 uses

.preheader91.i.i.i.i:                             ; preds = %bb.d
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !891 ; 3 uses
  store i32 %i.bm, ptr %i.n, align 4, !tbaa !1944
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !897
  %i.bp = add nsw i32 %i.bo, %i.bm
  store i32 %i.bp, ptr %i.o, align 8, !tbaa !1949
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !899 ; 2 uses
  store i32 %i.br, ptr %i.p, align 4, !tbaa !1950
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !901
  %i.bu = add nsw i32 %i.bt, %i.br
  store i32 %i.bu, ptr %i.q, align 8, !tbaa !1951
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.r, align 8, !tbaa !3
  store i32 4, ptr %i.s, align 8, !tbaa !3
  %i.bv = sub i32 %i.bm, %i.bg                    ; 3 uses
  %i.bw = call i32 @llvm.smax.i32(i32 %i.bv, i32 -2) ; 4 uses
  %spec.store.select.i.i.i.i = add i32 %i.bw, 2   ; 3 uses
  %i.bx = add i32 %i.bw, %i.bg                    ; 3 uses
  %i.by = add nsw i32 %i.bx, %i.bi
  %i.bz = srem i32 %i.by, 6                       ; 3 uses
  %i.ca = icmp slt i32 %i.bv, 3
  %i.cb = icmp sgt i32 %i.bv, -2
  %i.cc = add i32 %.01752.i.i.i, -2
  %i.cd = sub i32 2, %.01752.i.i.i
  %i.ce = sext i32 %spec.store.select.i.i.i.i to i64
  %i.cf = sub i32 -2, %i.bw
  %7 = add i32 %i.bw, 7
  %smax130.i.i.i.i = call i32 @llvm.smax.i32(i32 %spec.store.select.i.i.i.i, i32 1)
  %wide.trip.count.i.i.i.i = zext nneg i32 %smax130.i.i.i.i to i64
  br label %.preheader90.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.preheader90.i.i.i.i:                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, %.preheader91.i.i.i.i
  %indvars.iv116.i.i.i.i = phi i32 [ %i.cd, %.preheader91.i.i.i.i ], [ %indvars.iv.next117.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i.i = phi i32 [ %i.cc, %.preheader91.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ] ; 3 uses
  %.074105.i.i.i.i = phi i32 [ 0, %.preheader91.i.i.i.i ], [ %i.ii, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ]
  %i.ch = load i32, ptr %i.p, align 4, !tbaa !1950
  %smax.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.ch, i32 %indvars.iv.i.i.i.i)
  %i.ci = add i32 %smax.i.i.i.i, %indvars.iv116.i.i.i.i ; 2 uses
  %i.cj = icmp ne i32 %i.ci, 0
  %umin.i.i.i.i = zext i1 %i.cj to i32            ; 2 uses
  %i.ck = load i32, ptr %i.q, align 8, !tbaa !1951
  %i.cl = sub i32 %i.ci, %umin.i.i.i.i
  %i.cm = udiv i32 %i.cl, 6
  %i.cn = add nuw nsw i32 %i.cm, %umin.i.i.i.i
  %i.co = mul i32 %i.cn, 6
  %i.cp = add i32 %i.co, %indvars.iv.i.i.i.i      ; 4 uses
  %i.cq = add i32 %i.ck, -1                       ; 2 uses
  %smin.i.i.i = call i32 @llvm.smin.i32(i32 %i.cp, i32 %i.cq)
  %i.cr = icmp sgt i32 %i.cp, %i.cq               ; 2 uses
  %umin.i.neg11.i.i = sext i1 %i.cr to i32
  %umin.i.i.i = zext i1 %i.cr to i32
  %.neg.i.i = sub i32 %i.cp, %smin.i.i.i
  %i.cs = add i32 %.neg.i.i, %umin.i.neg11.i.i
  %i.ct = udiv i32 %i.cs, 6
  %i.cu = add nuw nsw i32 %i.ct, %umin.i.i.i
  %.neg.i.i.i = mul i32 %i.cu, -6
  %i.cv = add i32 %.neg.i.i.i, %i.cp              ; 3 uses
  %i.cw = add nsw i32 %i.cv, %i.bj
  %i.cx = srem i32 %i.cw, 6                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_iiiNS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i32 noundef %i.bx, i32 noundef %i.cv, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.f

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %.preheader90.i.i.i.i
  store i32 %i.bz, ptr %i.t, align 8, !tbaa !1935
  store i32 %i.cx, ptr %i.u, align 4, !tbaa !1934
  store ptr %i.bk, ptr %i.v, align 8, !tbaa !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.w, i8 0, i64 20, i1 false)
  br i1 %i.ca, label %.lr.ph.i.i.i.i, label %.lr.ph104.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.s
  br i1 %i.cb, label %.lr.ph104.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph104.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [48 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL18xtrans_channel_mapE, i64 %i.cy
  br label %bb.aj

bb.f:                                             ; preds = %.preheader90.i.i.i.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.s
  %i.db = phi i32 [ %spec.select.i.i.i.i.i, %bb.s ], [ %i.bz, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv118.i.i.i.i = phi i64 [ %indvars.iv.next119.i.i.i.i, %bb.s ], [ %i.ce, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 2 uses
  %i.dc = load ptr, ptr %i.v, align 8, !tbaa !1932, !nonnull !172, !align !315
  %i.dd = load i32, ptr %i.u, align 4, !tbaa !1934
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [48 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL18xtrans_channel_mapE, i64 %i.de
  %i.dg = sext i32 %i.db to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !180
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.di
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !53
  %i.dl = load ptr, ptr %i.x, align 8, !tbaa !836 ; 3 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !17
  %i.dn = load i32, ptr %i.y, align 4, !tbaa !844 ; 3 uses
  %i.do = load i32, ptr %i.z, align 8, !tbaa !845, !noalias !1952 ; 2 uses
  %i.dp = add nsw i32 %i.do, -1
  %i.dq = icmp eq i32 %i.dn, %i.dp
  br i1 %i.dq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dr = add nsw i32 %i.dn, -5
  %i.ds = load i32, ptr %i.ab, align 8, !tbaa !849
  br label %.invoke.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dt = add nsw i32 %i.dn, 1                    ; 7 uses
  store i32 %i.dt, ptr %i.y, align 4, !tbaa !844
  %i.du = icmp slt i32 %i.dt, %i.do
  br i1 %i.du, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.dv = load i8, ptr %i.ah, align 1, !tbaa !850, !range !171, !noundef !172
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.j, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.i
  %.pre.i.i.i.i.i = load i32, ptr %i.ab, align 8, !tbaa !849
  %.pre.i.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !856
  br label %.invoke.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.dx = load i8, ptr %i.ai, align 1, !tbaa !851, !range !171, !noundef !172
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.dz = load i64, ptr %i.ak, align 8, !tbaa !852
  %i.ea = getelementptr inbounds i8, ptr %i.dl, i64 %i.dz
  store ptr %i.ea, ptr %i.x, align 8, !tbaa !836
  %i.eb = load i32, ptr %i.al, align 8, !tbaa !853
  %.not.i.i85.i.i.i.i = icmp slt i32 %i.dt, %i.eb
  br i1 %.not.i.i85.i.i.i.i, label %bb.s, label %bb.l, !prof !55

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.s unwind label %bb.t

bb.m:                                             ; preds = %bb.j
  %i.ec = load i8, ptr %i.aj, align 2, !tbaa !854, !range !171, !noundef !172
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ee = load i64, ptr %i.ak, align 8, !tbaa !852
  %i.ef = getelementptr inbounds i8, ptr %i.dl, i64 %i.ee
  store ptr %i.ef, ptr %i.x, align 8, !tbaa !836
  %i.eg = load i32, ptr %i.al, align 8, !tbaa !853
  %i.eh = icmp slt i32 %i.dt, %i.eg               ; 3 uses
  %i.ei = load i32, ptr %i.am, align 4
  %i.ej = icmp sge i32 %i.dt, %i.ei
  %not..i.i.i.i.i.i = xor i1 %i.eh, true
  %or.cond.i.i.i.i.i.i = select i1 %not..i.i.i.i.i.i, i1 true, i1 %i.ej, !prof !855
  %i.ek = load ptr, ptr %i.an, align 8
  %i.el = icmp eq ptr %i.ek, null
  %i.em = select i1 %or.cond.i.i.i.i.i.i, i1 true, i1 %i.el, !prof !855
  br i1 %i.em, label %bb.o, label %bb.s, !prof !136

bb.o:                                             ; preds = %bb.n
  %i.en = load ptr, ptr %2, align 8, !tbaa !832
  %i.eo = load i32, ptr %i.ab, align 8, !tbaa !849
  %i.ep = load i32, ptr %i.ae, align 4, !tbaa !856
  %i.eq = load i32, ptr %i.as, align 8, !tbaa !857
  %i.er = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.en, i32 noundef %i.dt, i32 noundef %i.eo, i32 noundef %i.ep, ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.am, ptr noundef nonnull align 1 dereferenceable(1) %i.ar, i1 noundef zeroext %i.eh, i32 noundef %i.eq)
          to label %.noexc87.i.i.i.i unwind label %bb.t

.noexc87.i.i.i.i:                                 ; preds = %bb.o
  %i.es = zext i1 %i.eh to i8
  store ptr %i.er, ptr %i.x, align 8, !tbaa !836
  store i8 %i.es, ptr %i.ah, align 1, !tbaa !850
  br label %bb.s

bb.p:                                             ; preds = %bb.h
  %i.et = load i32, ptr %i.aa, align 4, !tbaa !858 ; 3 uses
  store i32 %i.et, ptr %i.y, align 4, !tbaa !844
  %i.eu = load i32, ptr %i.ab, align 8, !tbaa !849
  %i.ev = add nsw i32 %i.eu, 1                    ; 3 uses
  store i32 %i.ev, ptr %i.ab, align 8, !tbaa !849
  %i.ew = load i32, ptr %i.ac, align 8, !tbaa !859
  %.not.i84.i.i.i.i = icmp slt i32 %i.ev, %i.ew
  %.pre133.i.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !856 ; 2 uses
  br i1 %.not.i84.i.i.i.i, label %.invoke.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ex = load i32, ptr %i.ad, align 4, !tbaa !860 ; 2 uses
  store i32 %i.ex, ptr %i.ab, align 8, !tbaa !849
  %i.ey = add nsw i32 %.pre133.i.i.i.i, 1         ; 3 uses
  store i32 %i.ey, ptr %i.ae, align 4, !tbaa !856
  %i.ez = load i32, ptr %i.af, align 8, !tbaa !861
  %.not1.i.i.i.i.i = icmp slt i32 %i.ey, %i.ez
  br i1 %.not1.i.i.i.i.i, label %.invoke.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr %i.ag, align 8, !tbaa !862
  br label %bb.s

.invoke.i.i.i.i:                                  ; preds = %bb.q, %bb.p, %._crit_edge.i.i.i.i.i, %bb.g
  %i.fa = phi i32 [ %i.dr, %bb.g ], [ %i.et, %bb.p ], [ %i.et, %bb.q ], [ %i.dt, %._crit_edge.i.i.i.i.i ]
  %i.fb = phi i32 [ %i.ds, %bb.g ], [ %i.ev, %bb.p ], [ %i.ex, %bb.q ], [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  %i.fc = phi i32 [ 0, %bb.g ], [ %.pre133.i.i.i.i, %bb.p ], [ %i.ey, %bb.q ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(164) %2, i32 noundef %i.fa, i32 noundef %i.fb, i32 noundef %i.fc)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.invoke.i.i.i.i, %bb.r, %.noexc87.i.i.i.i, %bb.n, %bb.m, %bb.l, %bb.k
  %i.fd = uitofp i8 %i.dm to float
  %i.fe = fmul nnan float %i.fd, f0x3B808081
  %i.ff = load i32, ptr %i.t, align 8, !tbaa !1935
  %i.fg = add nsw i32 %i.ff, 1                    ; 2 uses
  %i.fh = icmp eq i32 %i.fg, 6
  %spec.select.i.i.i.i.i = select i1 %i.fh, i32 0, i32 %i.fg ; 2 uses
  store i32 %spec.select.i.i.i.i.i, ptr %i.t, align 8, !tbaa !1935
  %i.fi = fmul float %i.dk, %i.fe
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv118.i.i.i.i
  store float %i.fi, ptr %i.fj, align 4, !tbaa !53
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1 ; 2 uses
  %i.fk = and i64 %indvars.iv.next119.i.i.i.i, 4294967295
  %exitcond.not.i.i.i.i = icmp eq i64 %i.fk, 5
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1955

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.an, %.preheader.i.i.i.i
  %i.fm = load ptr, ptr %i.at, align 8, !tbaa !1956 ; 7 uses
  %i.fn = load ptr, ptr %i.au, align 8, !tbaa !1957
  %.not.i.i.i.i.i = icmp eq ptr %i.fm, %i.fn
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.fm, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %.noexc80.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc80.i.i.i.i:                                 ; preds = %bb.u
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.fo, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  %i.fp = load ptr, ptr %i.at, align 8, !tbaa !1956
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 168
  store ptr %i.fq, ptr %i.at, align 8, !tbaa !1956
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !1928 ; 6 uses
  %i.fr = ptrtoint ptr %i.fm to i64
  %i.fs = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.ft = sub i64 %i.fr, %i.fs                    ; 3 uses
  %i.fu = icmp eq i64 %i.ft, 9223372036854775800
  br i1 %i.fu, label %bb.w, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc81.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.fv = sdiv exact i64 %i.ft, 168               ; 3 uses
  %i.fw = icmp eq ptr %i.fm, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.fw, i64 1, i64 %i.fv
  %i.fx = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.fv ; 2 uses
  %i.fy = icmp ult i64 %i.fx, %i.fv
  %i.fz = call i64 @llvm.umin.i64(i64 %i.fx, i64 54901024028897475)
  %i.ga = select i1 %i.fy, i64 54901024028897475, i64 %i.fz ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.ga, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.gb = mul nuw nsw i64 %i.ga, 168              ; 2 uses
  %i.gc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gb) #32
          to label %.noexc82.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc82.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.ft ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.gd, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.x unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i

bb.x:                                             ; preds = %.noexc82.i.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ge, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  br i1 %i.fw, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.x
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 168
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.x, %bb.y
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gj, %bb.y ], [ %i.gc, %bb.x ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gi, %bb.y ], [ %.val.i.i.i.i.i.i, %bb.x ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(164) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gh = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gg, ptr noundef nonnull align 8 dereferenceable(36) %i.gh, i64 36, i1 false)
  %i.gi = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 168
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gi, %i.fm
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1958

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gk = landingpad { ptr, i32 }
          catch ptr null
  %i.gl = extractvalue { ptr, i32 } %i.gk, 0
  %i.gm = call ptr @__cxa_begin_catch(ptr %i.gl) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_(ptr noundef nonnull %i.gc, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gn = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.go = landingpad { ptr, i32 }
          catch ptr null
  %i.gp = extractvalue { ptr, i32 } %i.go, 0
  call void @__clang_call_terminate(ptr %i.gp) #33
  unreachable

bb.ac:                                            ; preds = %bb.z
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.y
  %i.gq = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 336
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.gv, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !888
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.gs, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gv, %i.fm
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1959

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i
  %i.gw = phi ptr [ %i.gf, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.gq, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  %i.gx = load ptr, ptr %i.au, align 8, !tbaa !1957
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = sub i64 %i.gy, %i.fs
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.gz) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc82.i.i.i.i
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  %i.hc = call ptr @__cxa_begin_catch(ptr %i.hb) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.aa
  %i.hd = extractvalue { ptr, i32 } %i.gn, 0
  %i.he = call ptr @__cxa_begin_catch(ptr %i.hd) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(164) dereferenceable(164) %i.gd) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  %i.hf = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.ah

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.gb) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.ai unwind label %bb.ag

bb.ah:                                            ; preds = %bb.ag
  %i.hg = landingpad { ptr, i32 }
          catch ptr null
  %i.hh = extractvalue { ptr, i32 } %i.hg, 0
  call void @__clang_call_terminate(ptr %i.hh) #33
  unreachable

bb.ai:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.af, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  store ptr %i.gc, ptr %4, align 8, !tbaa !1928
  store ptr %i.gw, ptr %i.at, align 8, !tbaa !1956
  %i.hi = getelementptr inbounds nuw [168 x i8], ptr %i.gc, i64 %i.ga
  store ptr %i.hi, ptr %i.au, align 8, !tbaa !1957
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.an, %.lr.ph104.i.i.i.i
  %indvars.iv127.i.i.i.i = phi i64 [ 0, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next128.i.i.i.i, %bb.an ] ; 3 uses
  %indvars.iv124.i.i.i.i = phi i32 [ %7, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next125.i.i.i.i, %bb.an ] ; 2 uses
  %indvars.iv121.i.i.i.i = phi i32 [ %i.cf, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next122.i.i.i.i, %bb.an ] ; 3 uses
  %smax123.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv121.i.i.i.i, i32 0)
  %i.hj = add i32 %smax123.i.i.i.i, %indvars.iv124.i.i.i.i
  %.fr.i.i.i.i = freeze i32 %i.hj                 ; 2 uses
  %8 = urem i32 %.fr.i.i.i.i, 6
  %i.hk = sub nuw i32 %.fr.i.i.i.i, %8
  %i.hl = add i32 %i.hk, %indvars.iv121.i.i.i.i   ; 3 uses
  %i.hm = add nsw i32 %i.hl, %spec.store.select.i.i.i.i ; 2 uses
  %i.hn = icmp slt i32 %i.hm, 5
  br i1 %i.hn, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ho = sext i32 %i.hm to i64
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.ho
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !53
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv127.i.i.i.i
  store float %i.hq, ptr %i.hr, align 4, !tbaa !53
  br label %bb.an

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.hs = add nsw i32 %i.hl, %i.bx
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiNS0_4spanIfLm18446744073709551615EEENS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i32 noundef %i.hs, i32 noundef %i.cv, i32 noundef 0, ptr nonnull %i.a, i64 1, i32 noundef 1)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.am

_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %bb.al
  %i.ht = add nsw i32 %i.hl, %i.bz
  %i.hu = srem i32 %i.ht, 6
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.hv
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !180
  %i.hy = load float, ptr %i.a, align 4, !tbaa !53
  %sext.i.i.i.i = shl i64 %i.hx, 32
  %i.hz = ashr exact i64 %sext.i.i.i.i, 30
  %i.ia = getelementptr inbounds i8, ptr %i.bk, i64 %i.hz
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !53
  %i.ic = fmul float %i.hy, %i.ib
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv127.i.i.i.i
  store float %i.ic, ptr %i.id, align 4, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ie = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %.body.i.i.i.i

bb.an:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i, %bb.ak
  %indvars.iv.next128.i.i.i.i = add nuw nsw i64 %indvars.iv127.i.i.i.i, 1 ; 2 uses
  %indvars.iv.next122.i.i.i.i = add i32 %indvars.iv121.i.i.i.i, 1
  %indvars.iv.next125.i.i.i.i = add i32 %indvars.iv124.i.i.i.i, -1
  %exitcond131.not.i.i.i.i.a = icmp eq i64 %indvars.iv.next128.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond131.not.i.i.i.i.a, label %._crit_edge.i.i.i.i, label %bb.aj, !llvm.loop !1960

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, %.noexc80.i.i.i.i
  %i.if = load ptr, ptr %i.an, align 8, !tbaa !888
  %.not.i.i.i.i.i.i = icmp eq ptr %i.if, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ig = landingpad { ptr, i32 }
          catch ptr null
  %i.ih = extractvalue { ptr, i32 } %i.ig, 0
  call void @__clang_call_terminate(ptr %i.ih) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i: ; preds = %bb.ao, %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.ii = add nuw nsw i32 %.074105.i.i.i.i, 1     ; 2 uses
  %indvars.iv.next.i.i.i.i = add i32 %indvars.iv.i.i.i.i, 1
  %indvars.iv.next117.i.i.i.i = add i32 %indvars.iv116.i.i.i.i, -1
  %exitcond132.not.i.i.i.i = icmp eq i32 %i.ii, 5
  br i1 %exitcond132.not.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i, label %.preheader90.i.i.i.i, !llvm.loop !1961

.loopexit.i.i.i.i:                                ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %bb.u
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.w
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i, %bb.am, %bb.ag, %bb.t
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.fl, %bb.t ], [ %i.ie, %bb.am ], [ %i.hf, %bb.ag ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.ij = load ptr, ptr %i.an, align 8, !tbaa !888
  %.not.i.i28.i.i.i = icmp eq ptr %i.ij, null
  br i1 %.not.i.i28.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %.body.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ik = landingpad { ptr, i32 }
          catch ptr null
  %i.il = extractvalue { ptr, i32 } %i.ik, 0
  call void @__clang_call_terminate(ptr %i.il) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i: ; preds = %bb.aq, %.body.i.i.i.i, %bb.f
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.da, %bb.f ], [ %.pn.i.i.i.i, %.body.i.i.i.i ], [ %.pn.i.i.i.i, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.as

bb.as:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, %bb.e
  %.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i ], [ %i.cg, %bb.e ] ; 2 uses
  %i.im = load ptr, ptr %4, align 8, !tbaa !1928  ; 3 uses
  %i.in = load ptr, ptr %i.at, align 8, !tbaa !1956 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.im, %i.in
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.as, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.is, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i ], [ %i.im, %bb.as ] ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 72
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !888
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ip, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.iq = landingpad { ptr, i32 }
          catch ptr null
  %i.ir = extractvalue { ptr, i32 } %i.iq, 0
  call void @__clang_call_terminate(ptr %i.ir) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.at, %.lr.ph.i.i.i.i.i.i
  %i.is = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i27.i.i.i = icmp eq ptr %i.is, %i.in
  br i1 %.not.i.i.i27.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1959

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.val.pr.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !1928
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.as
  %.val.i.i.i.i = phi ptr [ %.val.pr.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.im, %bb.as ] ; 3 uses
  %.not.i.i2.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i2.i.i.i.i, label %.body.i.i.i, label %bb.av

bb.av:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i
  %.val1.i.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !1957
  %i.it = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.iu = ptrtoint ptr %.val.i.i.i.i to i64
  %i.iv = sub i64 %i.it, %i.iu
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.iv) #30
  br label %.body.i.i.i

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i
  %i.iw = load i32, ptr %i.l, align 4, !tbaa !1909
  %i.ix = add nsw i32 %i.iw, %.01752.i.i.i
  %i.iy = srem i32 %i.ix, 6
  %i.iz = sext i32 %i.iy to i64                   ; 2 uses
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.iz
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.iz ; 2 uses
  %i.jc = load i32, ptr %i.k, align 8, !tbaa !1907
  %i.jd = load i32, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.je = add nsw i32 %i.jd, %i.jc
  %i.jf = srem i32 %i.je, 6                       ; 2 uses
  %i.jg = load i32, ptr %i.aw, align 4, !tbaa !866
  %i.jh = sub nsw i32 %i.jg, %i.jd                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %4, ptr %5, align 8, !tbaa !1962
  store ptr %3, ptr %i.ax, align 8, !tbaa !1150
  %i.ji = load i32, ptr %i.az, align 8, !tbaa !29
  store i32 %i.ji, ptr %i.ay, align 8, !tbaa !1925
  store i32 %i.jf, ptr %i.ba, align 4, !tbaa !1926
  store i32 %i.jh, ptr %i.bb, align 8, !tbaa !1927
  %i.jj = icmp sgt i32 %i.jf, 0
  br i1 %i.jj, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.jk = load ptr, ptr %i.jb, align 8, !tbaa !58
  invoke void %i.jk(ptr noundef nonnull align 8 dereferenceable(28) %5)
          to label %._crit_edge65.i.i.i unwind label %bb.ax

._crit_edge65.i.i.i:                              ; preds = %bb.aw
  %.pre.i.i.i = load i32, ptr %i.bb, align 8, !tbaa !1927
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ay:                                            ; preds = %._crit_edge65.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.jm = phi i32 [ %.pre.i.i.i, %._crit_edge65.i.i.i ], [ %i.jh, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i ] ; 2 uses
  %.off.i.i.i = add i32 %i.jm, 5
  %.not.i.i.i = icmp ult i32 %.off.i.i.i, 11
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.ay
  %i.jn = sdiv i32 %i.jm, 6
  %i.jo = call i32 @llvm.umax.i32(i32 %i.jn, i32 1)
  %umax.i.i.i = sext i32 %i.jo to i64
  br label %.lr.ph.i.i.i

end_hunk_5
begin_hunk_6_@_ZN11OpenImageIO4v3_112ImageBufAlgo23LinearXTransDemosaicingIN9Imath_3_14halfES4_E12calc_BGG_grbILb0EEEbRNS1_15DemosaicingBaseIS4_S4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE7ContextE:bb.a
  %i.ho = sext i32 %i.hm to i64
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %i.ho
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !53
  %i.hr = load ptr, ptr %i.aa, align 8, !tbaa !1990, !nonnull !172, !align !336
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfE3setEif(ptr noundef nonnull align 8 dereferenceable(126) %i.hr, i32 noundef %i.be, float noundef %i.hq)
  %i.hs = load i32, ptr %i.d, align 8, !tbaa !3
  %.val.i15.i.i23 = load ptr, ptr %i.a, align 8, !tbaa !1987 ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.val.i15.i.i23, i64 648 ; 2 uses
  %i.hu = sext i32 %i.hs to i64
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.ht, i64 %i.hu
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !53
  %i.hx = load i32, ptr %i.p, align 4, !tbaa !3
  %i.hy = getelementptr inbounds nuw i8, ptr %.val.i15.i.i23, i64 312
  %i.hz = sext i32 %i.hx to i64
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %i.hz
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !53
  %i.ic = load i32, ptr %i.gg, align 8, !tbaa !3
  %i.id = getelementptr inbounds nuw i8, ptr %.val.i15.i.i23, i64 480
  %i.ie = sext i32 %i.ic to i64
  %i.if = getelementptr inbounds [4 x i8], ptr %i.id, i64 %i.ie
  %i.ig = load float, ptr %i.if, align 4, !tbaa !53
  %i.ih = load i32, ptr %i.cy, align 8, !tbaa !3
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.ht, i64 %i.ii
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !53
  %i.il = fpext float %i.hw to double
  %i.im = fpext float %i.ib to double
  %i.in = tail call double @llvm.fmuladd.f64(double %i.im, double f0x3FE6A09E667F3BCD, double %i.il)
  %i.io = fpext float %i.ig to double
  %i.ip = tail call double @llvm.fmuladd.f64(double %i.io, double 5.000000e-01, double %i.in)
  %i.iq = fpext float %i.ik to double
  %i.ir = fdiv double %i.iq, f0x4001E3779B97F4A8
  %i.is = fadd double %i.ip, %i.ir
  %i.it = fdiv double %i.is, f0x40053C0C5257CCAE
  %i.iu = fptrunc double %i.it to float
  %i.iv = load ptr, ptr %i.aa, align 8, !tbaa !1990, !nonnull !172, !align !336
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf8IteratorIN9Imath_3_14halfEfE3setEif(ptr noundef nonnull align 8 dereferenceable(126) %i.iv, i32 noundef %i.bl, float noundef %i.iu)
  %i.iw = load ptr, ptr %i.aa, align 8, !tbaa !1990, !nonnull !172, !align !336
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %i.iw)
  %i.ix = load i32, ptr %i.bn, align 8, !tbaa !1986
  %i.iy = add nsw i32 %i.ix, -1
  store i32 %i.iy, ptr %i.bn, align 8, !tbaa !1986
  %i.iz = load ptr, ptr %0, align 8, !tbaa !1981, !nonnull !172, !align !336 ; 8 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 24 ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !3  ; 2 uses
  %scevgep.i.i24 = getelementptr inbounds nuw i8, ptr %i.iz, i64 28
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ja, ptr noundef nonnull align 4 dereferenceable(16) %scevgep.i.i24, i64 16, i1 false), !tbaa !3
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 40
  store i32 %i.jb, ptr %i.jc, align 8, !tbaa !3
  %i.jd = sext i32 %i.jb to i64                   ; 5 uses
  %.val.i.i25 = load ptr, ptr %i.iz, align 8, !tbaa !1987 ; 2 uses
  %i.je = tail call fastcc noundef float @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3Row5fetchEv(ptr noundef nonnull align 8 dereferenceable(164) %.val.i.i25)
  %i.jf = getelementptr inbounds nuw i8, ptr %.val.i.i25, i64 144
  %i.jg = getelementptr inbounds [4 x i8], ptr %i.jf, i64 %i.jd
  store float %i.je, ptr %i.jg, align 4, !tbaa !53
  %.val.1.i.i26 = load ptr, ptr %i.iz, align 8, !tbaa !1987 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.val.1.i.i26, i64 168
  %i.ji = tail call fastcc noundef float @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3Row5fetchEv(ptr noundef nonnull align 8 dereferenceable(164) %i.jh)
  %i.jj = getelementptr inbounds nuw i8, ptr %.val.1.i.i26, i64 312
  %i.jk = getelementptr inbounds [4 x i8], ptr %i.jj, i64 %i.jd
  store float %i.ji, ptr %i.jk, align 4, !tbaa !53
  %.val.2.i.i27 = load ptr, ptr %i.iz, align 8, !tbaa !1987 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.val.2.i.i27, i64 336
  %i.jm = tail call fastcc noundef float @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3Row5fetchEv(ptr noundef nonnull align 8 dereferenceable(164) %i.jl)
  %i.jn = getelementptr inbounds nuw i8, ptr %.val.2.i.i27, i64 480
  %i.jo = getelementptr inbounds [4 x i8], ptr %i.jn, i64 %i.jd
  store float %i.jm, ptr %i.jo, align 4, !tbaa !53
  %.val.3.i.i28 = load ptr, ptr %i.iz, align 8, !tbaa !1987 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.val.3.i.i28, i64 504
  %i.jq = tail call fastcc noundef float @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3Row5fetchEv(ptr noundef nonnull align 8 dereferenceable(164) %i.jp)
  %i.jr = getelementptr inbounds nuw i8, ptr %.val.3.i.i28, i64 648
  %i.js = getelementptr inbounds [4 x i8], ptr %i.jr, i64 %i.jd
  store float %i.jq, ptr %i.js, align 4, !tbaa !53
  %.val.4.i.i29 = load ptr, ptr %i.iz, align 8, !tbaa !1987 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.val.4.i.i29, i64 672
  %i.ju = tail call fastcc noundef float @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3Row5fetchEv(ptr noundef nonnull align 8 dereferenceable(164) %i.jt)
  %i.jv = getelementptr inbounds nuw i8, ptr %.val.4.i.i29, i64 816
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.jv, i64 %i.jd
  store float %i.ju, ptr %i.jw, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES7_Li6ELi5EXadsoA6_KmL_ZNS4_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKSB_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<Imath_3_1::half, Imath_3_1::half, 6, 5, OpenImageIO::ImageBufAlgo::xtrans_channel_map>::Window::Row", align 8 ; 37 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.277", align 8 ; 8 uses
  %4 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<Imath_3_1::half, Imath_3_1::half, 6, 5, OpenImageIO::ImageBufAlgo::xtrans_channel_map>::Window", align 8 ; 20 uses
  %5 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<Imath_3_1::half, Imath_3_1::half, 6, 5, OpenImageIO::ImageBufAlgo::xtrans_channel_map>::Context", align 8 ; 11 uses
  %6 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 10 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !58    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1998 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.d = load ptr, ptr %.val, align 8, !tbaa !2000, !nonnull !172, !align !336
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0, i1 noundef zeroext true)
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !868  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !867
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %.lr.ph55.i.i.i, label %._crit_edge56.i.i.i

.lr.ph55.i.i.i:                                   ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 100 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 52 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 132 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br label %bb.d

._crit_edge56.i.i.i:                              ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !888
  %.not.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfNS1_3ROIEiEUlSG_E_JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge56.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfNS1_3ROIEiEUlSG_E_JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #33
  unreachable

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %.lr.ph55.i.i.i
  %.01753.i.i.i = phi i32 [ %i.f, %.lr.ph55.i.i.i ], [ %i.ks, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.bg = load i32, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !2001, !nonnull !172, !align !336 ; 3 uses
  %i.bi = load i32, ptr %i.k, align 8, !tbaa !1966
  %i.bj = load i32, ptr %i.l, align 4, !tbaa !1968
  %i.bk = load ptr, ptr %i.m, align 8, !tbaa !2002, !nonnull !172, !align !315 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %4, i8 0, i64 24, i1 false)
  %i.bl = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh)
          to label %.preheader91.i.i.i.i unwind label %bb.e ; 4 uses

.preheader91.i.i.i.i:                             ; preds = %bb.d
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !891 ; 3 uses
  store i32 %i.bm, ptr %i.n, align 4, !tbaa !2003
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !897
  %i.bp = add nsw i32 %i.bo, %i.bm
  store i32 %i.bp, ptr %i.o, align 8, !tbaa !2008
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !899 ; 2 uses
  store i32 %i.br, ptr %i.p, align 4, !tbaa !2009
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !901
  %i.bu = add nsw i32 %i.bt, %i.br
  store i32 %i.bu, ptr %i.q, align 8, !tbaa !2010
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.r, align 8, !tbaa !3
  store i32 4, ptr %i.s, align 8, !tbaa !3
  %i.bv = sub i32 %i.bm, %i.bg                    ; 3 uses
  %i.bw = call i32 @llvm.smax.i32(i32 %i.bv, i32 -2) ; 4 uses
  %spec.store.select.i.i.i.i = add i32 %i.bw, 2   ; 3 uses
  %i.bx = add i32 %i.bw, %i.bg                    ; 3 uses
  %i.by = add nsw i32 %i.bx, %i.bi
  %i.bz = srem i32 %i.by, 6                       ; 3 uses
  %i.ca = icmp slt i32 %i.bv, 3
  %i.cb = icmp sgt i32 %i.bv, -2
  %i.cc = add i32 %.01753.i.i.i, -2
  %i.cd = sub i32 2, %.01753.i.i.i
  %i.ce = sext i32 %spec.store.select.i.i.i.i to i64
  %i.cf = sub i32 -2, %i.bw
  %7 = add i32 %i.bw, 7
  %smax130.i.i.i.i = call i32 @llvm.smax.i32(i32 %spec.store.select.i.i.i.i, i32 1)
  %wide.trip.count.i.i.i.i = zext nneg i32 %smax130.i.i.i.i to i64
  br label %.preheader90.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.preheader90.i.i.i.i:                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, %.preheader91.i.i.i.i
  %indvars.iv116.i.i.i.i = phi i32 [ %i.cd, %.preheader91.i.i.i.i ], [ %indvars.iv.next117.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i.i = phi i32 [ %i.cc, %.preheader91.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ] ; 3 uses
  %.074105.i.i.i.i = phi i32 [ 0, %.preheader91.i.i.i.i ], [ %i.ix, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ]
  %i.ch = load i32, ptr %i.p, align 4, !tbaa !2009
  %smax.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.ch, i32 %indvars.iv.i.i.i.i)
  %i.ci = add i32 %smax.i.i.i.i, %indvars.iv116.i.i.i.i ; 2 uses
  %i.cj = icmp ne i32 %i.ci, 0
  %umin.i.i.i.i = zext i1 %i.cj to i32            ; 2 uses
  %i.ck = load i32, ptr %i.q, align 8, !tbaa !2010
  %i.cl = sub i32 %i.ci, %umin.i.i.i.i
  %i.cm = udiv i32 %i.cl, 6
  %i.cn = add nuw nsw i32 %i.cm, %umin.i.i.i.i
  %i.co = mul i32 %i.cn, 6
  %i.cp = add i32 %i.co, %indvars.iv.i.i.i.i      ; 4 uses
  %i.cq = add i32 %i.ck, -1                       ; 2 uses
  %smin.i.i.i = call i32 @llvm.smin.i32(i32 %i.cp, i32 %i.cq)
  %i.cr = icmp sgt i32 %i.cp, %i.cq               ; 2 uses
  %umin.i.neg11.i.i = sext i1 %i.cr to i32
  %umin.i.i.i = zext i1 %i.cr to i32
  %.neg.i.i = sub i32 %i.cp, %smin.i.i.i
  %i.cs = add i32 %.neg.i.i, %umin.i.neg11.i.i
  %i.ct = udiv i32 %i.cs, 6
  %i.cu = add nuw nsw i32 %i.ct, %umin.i.i.i
  %.neg.i.i.i = mul i32 %i.cu, -6
  %i.cv = add i32 %.neg.i.i.i, %i.cp              ; 3 uses
  %i.cw = add nsw i32 %i.cv, %i.bj
  %i.cx = srem i32 %i.cw, 6                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_iiiNS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i32 noundef %i.bx, i32 noundef %i.cv, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.f

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %.preheader90.i.i.i.i
  store i32 %i.bz, ptr %i.t, align 8, !tbaa !1994
  store i32 %i.cx, ptr %i.u, align 4, !tbaa !1993
  store ptr %i.bk, ptr %i.v, align 8, !tbaa !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.w, i8 0, i64 20, i1 false)
  br i1 %i.ca, label %.lr.ph.i.i.i.i, label %.lr.ph104.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.x
  br i1 %i.cb, label %.lr.ph104.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph104.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [48 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL18xtrans_channel_mapE, i64 %i.cy
  br label %bb.ao

bb.f:                                             ; preds = %.preheader90.i.i.i.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.x
  %i.db = phi i32 [ %spec.select.i.i.i.i.i, %bb.x ], [ %i.bz, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv118.i.i.i.i = phi i64 [ %indvars.iv.next119.i.i.i.i, %bb.x ], [ %i.ce, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 2 uses
  %i.dc = load ptr, ptr %i.v, align 8, !tbaa !1991, !nonnull !172, !align !315
  %i.dd = load i32, ptr %i.u, align 4, !tbaa !1993
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [48 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL18xtrans_channel_mapE, i64 %i.de
  %i.dg = sext i32 %i.db to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !180
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.di
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !53
  %i.dl = load ptr, ptr %i.x, align 8, !tbaa !836 ; 3 uses
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !1004 ; 2 uses
  %i.dn = zext i16 %i.dm to i32
  %i.do = shl nuw nsw i32 %i.dn, 13
  %i.dp = and i32 %i.do, 268427264                ; 6 uses
  %.signext.i.i.i.i.i.i.i.i.i.i = sext i16 %i.dm to i32
  %i.dq = and i32 %.signext.i.i.i.i.i.i.i.i.i.i, -2147483648 ; 3 uses
  %i.dr = icmp samesign ugt i32 %i.dp, 8388607
  br i1 %i.dr, label %bb.g, label %bb.j, !prof !55

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ds = or disjoint i32 %i.dp, %i.dq            ; 2 uses
  %i.dt = icmp samesign ult i32 %i.dp, 260046848
  br i1 %i.dt, label %bb.h, label %bb.i, !prof !55

bb.h:                                             ; preds = %bb.g
  %i.du = add nuw nsw i32 %i.ds, 939524096
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.dv = or i32 %i.ds, 2139095040
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.dp, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dw = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.dp, i1 true)
  %i.dx = add nsw i32 %i.dw, -8                   ; 2 uses
  %i.dy = shl i32 %i.dp, %i.dx
  %i.dz = or i32 %i.dq, %i.dy
  %i.ea = or i32 %i.dz, 947912704
  %i.eb = shl nuw nsw i32 %i.dx, 23
  %i.ec = sub nuw i32 %i.ea, %i.eb
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.du, %bb.h ], [ %i.dv, %bb.i ], [ %i.ec, %bb.k ], [ %i.dq, %bb.j ]
  %i.ed = load i32, ptr %i.y, align 4, !tbaa !844 ; 3 uses
  %i.ee = load i32, ptr %i.z, align 8, !tbaa !845, !noalias !2011 ; 2 uses
  %i.ef = add nsw i32 %i.ee, -1
  %i.eg = icmp eq i32 %i.ed, %i.ef
  br i1 %i.eg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i
  %i.eh = add nsw i32 %i.ed, -5
  %i.ei = load i32, ptr %i.ab, align 8, !tbaa !849
  br label %.invoke.i.i.i.i

bb.m:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i
  %i.ej = add nsw i32 %i.ed, 1                    ; 7 uses
  store i32 %i.ej, ptr %i.y, align 4, !tbaa !844
  %i.ek = icmp slt i32 %i.ej, %i.ee
  br i1 %i.ek, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.el = load i8, ptr %i.ah, align 1, !tbaa !850, !range !171, !noundef !172
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.o, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.n
  %.pre.i.i.i.i.i = load i32, ptr %i.ab, align 8, !tbaa !849
  %.pre.i.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !856
  br label %.invoke.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.en = load i8, ptr %i.ai, align 1, !tbaa !851, !range !171, !noundef !172
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ep = load i64, ptr %i.ak, align 8, !tbaa !852
  %i.eq = getelementptr inbounds i8, ptr %i.dl, i64 %i.ep
  store ptr %i.eq, ptr %i.x, align 8, !tbaa !836
  %i.er = load i32, ptr %i.al, align 8, !tbaa !853
  %.not.i.i85.i.i.i.i = icmp slt i32 %i.ej, %i.er
  br i1 %.not.i.i85.i.i.i.i, label %bb.x, label %bb.q, !prof !55

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.x unwind label %bb.y

bb.r:                                             ; preds = %bb.o
  %i.es = load i8, ptr %i.aj, align 2, !tbaa !854, !range !171, !noundef !172
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eu = load i64, ptr %i.ak, align 8, !tbaa !852
  %i.ev = getelementptr inbounds i8, ptr %i.dl, i64 %i.eu
  store ptr %i.ev, ptr %i.x, align 8, !tbaa !836
  %i.ew = load i32, ptr %i.al, align 8, !tbaa !853
  %i.ex = icmp slt i32 %i.ej, %i.ew               ; 3 uses
  %i.ey = load i32, ptr %i.am, align 4
  %i.ez = icmp sge i32 %i.ej, %i.ey
  %not..i.i.i.i.i.i = xor i1 %i.ex, true
  %or.cond.i.i.i.i.i.i = select i1 %not..i.i.i.i.i.i, i1 true, i1 %i.ez, !prof !855
  %i.fa = load ptr, ptr %i.an, align 8
  %i.fb = icmp eq ptr %i.fa, null
  %i.fc = select i1 %or.cond.i.i.i.i.i.i, i1 true, i1 %i.fb, !prof !855
  br i1 %i.fc, label %bb.t, label %bb.x, !prof !136

bb.t:                                             ; preds = %bb.s
  %i.fd = load ptr, ptr %2, align 8, !tbaa !832
  %i.fe = load i32, ptr %i.ab, align 8, !tbaa !849
  %i.ff = load i32, ptr %i.ae, align 4, !tbaa !856
  %i.fg = load i32, ptr %i.as, align 8, !tbaa !857
  %i.fh = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.fd, i32 noundef %i.ej, i32 noundef %i.fe, i32 noundef %i.ff, ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.am, ptr noundef nonnull align 1 dereferenceable(1) %i.ar, i1 noundef zeroext %i.ex, i32 noundef %i.fg)
          to label %.noexc87.i.i.i.i unwind label %bb.y

.noexc87.i.i.i.i:                                 ; preds = %bb.t
  %i.fi = zext i1 %i.ex to i8
  store ptr %i.fh, ptr %i.x, align 8, !tbaa !836
  store i8 %i.fi, ptr %i.ah, align 1, !tbaa !850
  br label %bb.x

bb.u:                                             ; preds = %bb.m
  %i.fj = load i32, ptr %i.aa, align 4, !tbaa !858 ; 3 uses
  store i32 %i.fj, ptr %i.y, align 4, !tbaa !844
  %i.fk = load i32, ptr %i.ab, align 8, !tbaa !849
  %i.fl = add nsw i32 %i.fk, 1                    ; 3 uses
  store i32 %i.fl, ptr %i.ab, align 8, !tbaa !849
  %i.fm = load i32, ptr %i.ac, align 8, !tbaa !859
  %.not.i84.i.i.i.i = icmp slt i32 %i.fl, %i.fm
  %.pre133.i.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !856 ; 2 uses
  br i1 %.not.i84.i.i.i.i, label %.invoke.i.i.i.i, label %bb.v
end_hunk_6
begin_hunk_7_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES7_Li6ELi5EXadsoA6_KmL_ZNS4_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKSB_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.fv = add nsw i32 %i.fu, 1                    ; 2 uses
  %i.fw = icmp eq i32 %i.fv, 6
  %spec.select.i.i.i.i.i = select i1 %i.fw, i32 0, i32 %i.fv ; 2 uses
  store i32 %spec.select.i.i.i.i.i, ptr %i.t, align 8, !tbaa !1994
  %i.fx = fmul float %i.dk, %i.ft
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv118.i.i.i.i
  store float %i.fx, ptr %i.fy, align 4, !tbaa !53
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1 ; 2 uses
  %i.fz = and i64 %indvars.iv.next119.i.i.i.i, 4294967295
  %exitcond.not.i.i.i.i = icmp eq i64 %i.fz, 5
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2014

bb.y:                                             ; preds = %.invoke.i.i.i.i, %bb.t, %bb.q
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.as, %.preheader.i.i.i.i
  %i.gb = load ptr, ptr %i.at, align 8, !tbaa !2015 ; 7 uses
  %i.gc = load ptr, ptr %i.au, align 8, !tbaa !2016
  %.not.i.i.i.i.i = icmp eq ptr %i.gb, %i.gc
  br i1 %.not.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.gb, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %.noexc80.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc80.i.i.i.i:                                 ; preds = %bb.z
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gd, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  %i.ge = load ptr, ptr %i.at, align 8, !tbaa !2015
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 168
  store ptr %i.gf, ptr %i.at, align 8, !tbaa !2015
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !1987 ; 6 uses
  %i.gg = ptrtoint ptr %i.gb to i64
  %i.gh = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.gi = sub i64 %i.gg, %i.gh                    ; 3 uses
  %i.gj = icmp eq i64 %i.gi, 9223372036854775800
  br i1 %i.gj, label %bb.ab, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc81.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.ab
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.aa
  %i.gk = sdiv exact i64 %i.gi, 168               ; 3 uses
  %i.gl = icmp eq ptr %i.gb, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.gl, i64 1, i64 %i.gk
  %i.gm = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.gk ; 2 uses
  %i.gn = icmp ult i64 %i.gm, %i.gk
  %i.go = call i64 @llvm.umin.i64(i64 %i.gm, i64 54901024028897475)
  %i.gp = select i1 %i.gn, i64 54901024028897475, i64 %i.go ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.gp, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.gq = mul nuw nsw i64 %i.gp, 168              ; 2 uses
  %i.gr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gq) #32
          to label %.noexc82.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc82.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gi ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.gs, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.ac unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i.i

bb.ac:                                            ; preds = %.noexc82.i.i.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gt, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  br i1 %i.gl, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.ac
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 168
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ac, %bb.ad
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gy, %bb.ad ], [ %i.gr, %bb.ac ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gx, %bb.ad ], [ %.val.i.i.i.i.i.i, %bb.ac ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(164) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gw = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gv, ptr noundef nonnull align 8 dereferenceable(36) %i.gw, i64 36, i1 false)
  %i.gx = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 168
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gx, %i.gb
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2017

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gz = landingpad { ptr, i32 }
          catch ptr null
  %i.ha = extractvalue { ptr, i32 } %i.gz, 0
  %i.hb = call ptr @__cxa_begin_catch(ptr %i.ha) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SC_(ptr noundef nonnull %i.gr, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ah unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hc = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hd = landingpad { ptr, i32 }
          catch ptr null
  %i.he = extractvalue { ptr, i32 } %i.hd, 0
  call void @__clang_call_terminate(ptr %i.he) #33
  unreachable

bb.ah:                                            ; preds = %bb.ae
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.ad
  %i.hf = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 336
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.hk, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !888
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.hh, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hi = landingpad { ptr, i32 }
          catch ptr null
  %i.hj = extractvalue { ptr, i32 } %i.hi, 0
  call void @__clang_call_terminate(ptr %i.hj) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ai, %.lr.ph.i.i.i.i.i.i.i.i
  %i.hk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.hk, %i.gb
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2018

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i
  %i.hl = phi ptr [ %i.gu, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.hf, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i
  %i.hm = load ptr, ptr %i.au, align 8, !tbaa !2016
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = sub i64 %i.hn, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.ho) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc82.i.i.i.i
  %i.hp = landingpad { ptr, i32 }
          catch ptr null
  %i.hq = extractvalue { ptr, i32 } %i.hp, 0
  %i.hr = call ptr @__cxa_begin_catch(ptr %i.hq) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.af
  %i.hs = extractvalue { ptr, i32 } %i.hc, 0
  %i.ht = call ptr @__cxa_begin_catch(ptr %i.hs) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(164) dereferenceable(164) %i.gs) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i

bb.al:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i
  %i.hu = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.am

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gr, i64 noundef %i.gq) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.an unwind label %bb.al

bb.am:                                            ; preds = %bb.al
  %i.hv = landingpad { ptr, i32 }
          catch ptr null
  %i.hw = extractvalue { ptr, i32 } %i.hv, 0
  call void @__clang_call_terminate(ptr %i.hw) #33
  unreachable

bb.an:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.ak, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i
  store ptr %i.gr, ptr %4, align 8, !tbaa !1987
  store ptr %i.hl, ptr %i.at, align 8, !tbaa !2015
  %i.hx = getelementptr inbounds nuw [168 x i8], ptr %i.gr, i64 %i.gp
  store ptr %i.hx, ptr %i.au, align 8, !tbaa !2016
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i

bb.ao:                                            ; preds = %bb.as, %.lr.ph104.i.i.i.i
  %indvars.iv127.i.i.i.i = phi i64 [ 0, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next128.i.i.i.i, %bb.as ] ; 3 uses
  %indvars.iv124.i.i.i.i = phi i32 [ %7, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next125.i.i.i.i, %bb.as ] ; 2 uses
  %indvars.iv121.i.i.i.i = phi i32 [ %i.cf, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next122.i.i.i.i, %bb.as ] ; 3 uses
  %smax123.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv121.i.i.i.i, i32 0)
  %i.hy = add i32 %smax123.i.i.i.i, %indvars.iv124.i.i.i.i
  %.fr.i.i.i.i = freeze i32 %i.hy                 ; 2 uses
  %8 = urem i32 %.fr.i.i.i.i, 6
  %i.hz = sub nuw i32 %.fr.i.i.i.i, %8
  %i.ia = add i32 %i.hz, %indvars.iv121.i.i.i.i   ; 3 uses
  %i.ib = add nsw i32 %i.ia, %spec.store.select.i.i.i.i ; 2 uses
  %i.ic = icmp slt i32 %i.ib, 5
  br i1 %i.ic, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.id = sext i32 %i.ib to i64
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.id
  %i.if = load float, ptr %i.ie, align 4, !tbaa !53
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv127.i.i.i.i
  store float %i.if, ptr %i.ig, align 4, !tbaa !53
  br label %bb.as

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.ih = add nsw i32 %i.ia, %i.bx
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiNS0_4spanIfLm18446744073709551615EEENS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i32 noundef %i.ih, i32 noundef %i.cv, i32 noundef 0, ptr nonnull %i.a, i64 1, i32 noundef 1)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.ar

_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %bb.aq
  %i.ii = add nsw i32 %i.ia, %i.bz
  %i.ij = srem i32 %i.ii, 6
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.ik
  %i.im = load i64, ptr %i.il, align 8, !tbaa !180
  %i.in = load float, ptr %i.a, align 4, !tbaa !53
  %sext.i.i.i.i = shl i64 %i.im, 32
  %i.io = ashr exact i64 %sext.i.i.i.i, 30
  %i.ip = getelementptr inbounds i8, ptr %i.bk, i64 %i.io
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !53
  %i.ir = fmul float %i.in, %i.iq
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv127.i.i.i.i
  store float %i.ir, ptr %i.is, align 4, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.it = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %.body.i.i.i.i

bb.as:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i, %bb.ap
  %indvars.iv.next128.i.i.i.i = add nuw nsw i64 %indvars.iv127.i.i.i.i, 1 ; 2 uses
  %indvars.iv.next122.i.i.i.i = add i32 %indvars.iv121.i.i.i.i, 1
  %indvars.iv.next125.i.i.i.i = add i32 %indvars.iv124.i.i.i.i, -1
  %exitcond131.not.i.i.i.i.a = icmp eq i64 %indvars.iv.next128.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond131.not.i.i.i.i.a, label %._crit_edge.i.i.i.i, label %bb.ao, !llvm.loop !2019

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i, %.noexc80.i.i.i.i
  %i.iu = load ptr, ptr %i.an, align 8, !tbaa !888
  %.not.i.i.i.i.i.i = icmp eq ptr %i.iu, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.iv = landingpad { ptr, i32 }
          catch ptr null
  %i.iw = extractvalue { ptr, i32 } %i.iv, 0
  call void @__clang_call_terminate(ptr %i.iw) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i: ; preds = %bb.at, %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.ix = add nuw nsw i32 %.074105.i.i.i.i, 1     ; 2 uses
  %indvars.iv.next.i.i.i.i = add i32 %indvars.iv.i.i.i.i, 1
  %indvars.iv.next117.i.i.i.i = add i32 %indvars.iv116.i.i.i.i, -1
  %exitcond132.not.i.i.i.i = icmp eq i32 %i.ix, 5
  br i1 %exitcond132.not.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i, label %.preheader90.i.i.i.i, !llvm.loop !2020

.loopexit.i.i.i.i:                                ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %bb.z
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.ab
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i, %bb.ar, %bb.al, %bb.y
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.ga, %bb.y ], [ %i.it, %bb.ar ], [ %i.hu, %bb.al ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.iy = load ptr, ptr %i.an, align 8, !tbaa !888
  %.not.i.i29.i.i.i = icmp eq ptr %i.iy, null
  br i1 %.not.i.i29.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, label %bb.av

bb.av:                                            ; preds = %.body.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.iz = landingpad { ptr, i32 }
          catch ptr null
  %i.ja = extractvalue { ptr, i32 } %i.iz, 0
  call void @__clang_call_terminate(ptr %i.ja) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i: ; preds = %bb.av, %.body.i.i.i.i, %bb.f
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.da, %bb.f ], [ %.pn.i.i.i.i, %.body.i.i.i.i ], [ %.pn.i.i.i.i, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, %bb.e
  %.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i ], [ %i.cg, %bb.e ] ; 2 uses
  %i.jb = load ptr, ptr %4, align 8, !tbaa !1987  ; 3 uses
  %i.jc = load ptr, ptr %i.at, align 8, !tbaa !2015 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.jb, %i.jc
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ax, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.jh, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i ], [ %i.jb, %bb.ax ] ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 72
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !888
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.je, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jf = landingpad { ptr, i32 }
          catch ptr null
  %i.jg = extractvalue { ptr, i32 } %i.jf, 0
  call void @__clang_call_terminate(ptr %i.jg) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.ay, %.lr.ph.i.i.i.i.i.i
  %i.jh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i28.i.i.i = icmp eq ptr %i.jh, %i.jc
  br i1 %.not.i.i.i28.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2018

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.val.pr.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !1987
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.ax
  %.val.i.i.i.i = phi ptr [ %.val.pr.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.jb, %bb.ax ] ; 3 uses
  %.not.i.i2.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i2.i.i.i.i, label %.body.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i
  %.val1.i.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !2016
  %i.ji = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.jj = ptrtoint ptr %.val.i.i.i.i to i64
  %i.jk = sub i64 %i.ji, %i.jj
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.jk) #30
  br label %.body.i.i.i

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i
  %i.jl = load i32, ptr %i.l, align 4, !tbaa !1968
  %i.jm = add nsw i32 %i.jl, %.01753.i.i.i
  %i.jn = srem i32 %i.jm, 6
  %i.jo = sext i32 %i.jn to i64                   ; 2 uses
  %i.jp = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.jo
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.jo ; 2 uses
  %i.jr = load i32, ptr %i.k, align 8, !tbaa !1966
  %i.js = load i32, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.jt = add nsw i32 %i.js, %i.jr
  %i.ju = srem i32 %i.jt, 6                       ; 2 uses
  %i.jv = load i32, ptr %i.aw, align 4, !tbaa !866
  %i.jw = sub nsw i32 %i.jv, %i.js                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %4, ptr %5, align 8, !tbaa !2021
  store ptr %3, ptr %i.ax, align 8, !tbaa !1209
  %i.jx = load i32, ptr %i.az, align 8, !tbaa !29
  store i32 %i.jx, ptr %i.ay, align 8, !tbaa !1984
  store i32 %i.ju, ptr %i.ba, align 4, !tbaa !1985
  store i32 %i.jw, ptr %i.bb, align 8, !tbaa !1986
  %i.jy = icmp sgt i32 %i.ju, 0
  br i1 %i.jy, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.jz = load ptr, ptr %i.jq, align 8, !tbaa !58
  invoke void %i.jz(ptr noundef nonnull align 8 dereferenceable(28) %5)
          to label %._crit_edge66.i.i.i unwind label %bb.bc

._crit_edge66.i.i.i:                              ; preds = %bb.bb
  %.pre.i.i.i = load i32, ptr %i.bb, align 8, !tbaa !1986
  br label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bd:                                            ; preds = %._crit_edge66.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.kb = phi i32 [ %.pre.i.i.i, %._crit_edge66.i.i.i ], [ %i.jw, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i ] ; 2 uses
  %.off.i.i.i = add i32 %i.kb, 5
  %.not.i.i.i = icmp ult i32 %.off.i.i.i, 11
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.bd
  %i.kc = sdiv i32 %i.kb, 6
  %i.kd = call i32 @llvm.umax.i32(i32 %i.kc, i32 1)
  %umax.i.i.i = sext i32 %i.kd to i64
  br label %.lr.ph.i.i.i

end_hunk_7
begin_hunk_8_@_ZN11OpenImageIO4v3_112ImageBufAlgo23LinearXTransDemosaicingIttE12calc_BGG_grbILb0EEEbRNS1_15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE7ContextE:bb.a
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfE14IteratorValRefaSEf.exit18.i.i28

_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfE14IteratorValRefaSEf.exit18.i.i28: ; preds = %bb.i, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfE14IteratorValRefaSEf.exit.i.i23
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jg, i64 112
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !836
  %i.jm = getelementptr [2 x i8], ptr %i.jl, i64 %i.ah
  %i.jn = getelementptr i8, ptr %i.jm, i64 2
  %i.jo = fmul float %i.jf, 6.553500e+04          ; 2 uses
  %i.jp = fcmp olt float %i.jo, 0.000000e+00
  %i.jq = select i1 %i.jp, float -5.000000e-01, float 5.000000e-01
  %i.jr = fadd float %i.jo, %i.jq                 ; 2 uses
  %.inv.i.i.i.i.i15.i.i29 = fcmp oge float %i.jr, 0.000000e+00
  %.0.i.i.i.i.i.i16.i.i30 = select i1 %.inv.i.i.i.i.i15.i.i29, float %i.jr, float 0.000000e+00 ; 2 uses
  %i.js = fcmp ogt float %.0.i.i.i.i.i.i16.i.i30, 6.553500e+04
  %.1.i.i.i.i.i.i17.i.i31 = select i1 %i.js, float 6.553500e+04, float %.0.i.i.i.i.i.i16.i.i30
  %i.jt = fptoui float %.1.i.i.i.i.i.i17.i.i31 to i16
  store i16 %i.jt, ptr %i.jn, align 2, !tbaa !1064
  %i.ju = load i32, ptr %i.d, align 8, !tbaa !3
  %.val.i19.i.i32 = load ptr, ptr %i.a, align 8, !tbaa !2046 ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.val.i19.i.i32, i64 648 ; 2 uses
  %i.jw = sext i32 %i.ju to i64
  %i.jx = getelementptr inbounds [4 x i8], ptr %i.jv, i64 %i.jw
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !53
  %i.jz = load i32, ptr %i.p, align 4, !tbaa !3
  %i.ka = getelementptr inbounds nuw i8, ptr %.val.i19.i.i32, i64 312
  %i.kb = sext i32 %i.jz to i64
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.ka, i64 %i.kb
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !53
  %i.ke = load i32, ptr %i.hj, align 8, !tbaa !3
  %i.kf = getelementptr inbounds nuw i8, ptr %.val.i19.i.i32, i64 480
  %i.kg = sext i32 %i.ke to i64
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.kf, i64 %i.kg
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !53
  %i.kj = load i32, ptr %i.dm, align 8, !tbaa !3
  %i.kk = sext i32 %i.kj to i64
  %i.kl = getelementptr inbounds [4 x i8], ptr %i.jv, i64 %i.kk
  %i.km = load float, ptr %i.kl, align 4, !tbaa !53
  %i.kn = load ptr, ptr %i.aa, align 8, !tbaa !2049, !nonnull !172, !align !336 ; 3 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !832
  %i.kp = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ko)
  %i.kq = icmp eq i32 %i.kp, 3
  br i1 %i.kq, label %bb.j, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE16check_and_decodeILb0EZNS1_23LinearXTransDemosaicingIttE12calc_BGG_grbILb0EEEbRNS5_7ContextEEUlvE1_EEbSB_RKT0_.exit, !prof !136

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfE14IteratorValRefaSEf.exit18.i.i28
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %i.kn)
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE16check_and_decodeILb0EZNS1_23LinearXTransDemosaicingIttE12calc_BGG_grbILb0EEEbRNS5_7ContextEEUlvE1_EEbSB_RKT0_.exit

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE16check_and_decodeILb0EZNS1_23LinearXTransDemosaicingIttE12calc_BGG_grbILb0EEEbRNS5_7ContextEEUlvE1_EEbSB_RKT0_.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfE14IteratorValRefaSEf.exit18.i.i28, %bb.j
  %i.kr = fpext float %i.ki to double
  %i.ks = fpext float %i.kd to double
  %i.kt = fpext float %i.jy to double
  %i.ku = tail call double @llvm.fmuladd.f64(double %i.ks, double f0x3FE6A09E667F3BCD, double %i.kt)
  %i.kv = tail call double @llvm.fmuladd.f64(double %i.kr, double 5.000000e-01, double %i.ku)
  %i.kw = fpext float %i.km to double
  %i.kx = fdiv double %i.kw, f0x4001E3779B97F4A8
  %i.ky = fadd double %i.kv, %i.kx
  %i.kz = fdiv double %i.ky, f0x40053C0C5257CCAE
  %i.la = fptrunc double %i.kz to float
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kn, i64 112
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !836
  %i.ld = getelementptr [2 x i8], ptr %i.lc, i64 %i.ah
  %i.le = getelementptr i8, ptr %i.ld, i64 4
  %i.lf = fmul float %i.la, 6.553500e+04          ; 2 uses
  %i.lg = fcmp olt float %i.lf, 0.000000e+00
  %i.lh = select i1 %i.lg, float -5.000000e-01, float 5.000000e-01
  %i.li = fadd float %i.lf, %i.lh                 ; 2 uses
  %.inv.i.i.i.i.i25.i.i33 = fcmp oge float %i.li, 0.000000e+00
  %.0.i.i.i.i.i.i26.i.i34 = select i1 %.inv.i.i.i.i.i25.i.i33, float %i.li, float 0.000000e+00 ; 2 uses
  %i.lj = fcmp ogt float %.0.i.i.i.i.i.i26.i.i34, 6.553500e+04
  %.1.i.i.i.i.i.i27.i.i35 = select i1 %i.lj, float 6.553500e+04, float %.0.i.i.i.i.i.i26.i.i34
  %i.lk = fptoui float %.1.i.i.i.i.i.i27.i.i35 to i16
  store i16 %i.lk, ptr %i.le, align 2, !tbaa !1064
  %i.ll = load ptr, ptr %i.aa, align 8, !tbaa !2049, !nonnull !172, !align !336
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %i.ll)
  %i.lm = load i32, ptr %i.cy, align 8, !tbaa !2045
  %i.ln = add nsw i32 %i.lm, -1
  store i32 %i.ln, ptr %i.cy, align 8, !tbaa !2045
  %i.lo = load ptr, ptr %0, align 8, !tbaa !2040, !nonnull !172, !align !336
  tail call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window6updateEv(ptr noundef nonnull align 8 dereferenceable(60) %i.lo)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS4_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<unsigned short, unsigned short, 6, 5, OpenImageIO::ImageBufAlgo::xtrans_channel_map>::Window::Row", align 8 ; 37 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.333", align 8 ; 8 uses
  %4 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<unsigned short, unsigned short, 6, 5, OpenImageIO::ImageBufAlgo::xtrans_channel_map>::Window", align 8 ; 20 uses
  %5 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<unsigned short, unsigned short, 6, 5, OpenImageIO::ImageBufAlgo::xtrans_channel_map>::Context", align 8 ; 11 uses
  %6 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 10 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !58    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2057 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.d = load ptr, ptr %.val, align 8, !tbaa !2059, !nonnull !172, !align !336
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0, i1 noundef zeroext true)
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !868  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !867
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %.lr.ph54.i.i.i, label %._crit_edge55.i.i.i

.lr.ph54.i.i.i:                                   ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 100 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 52 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 132 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br label %bb.d

._crit_edge55.i.i.i:                              ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !888
  %.not.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS7_RA4_KfNS1_3ROIEiEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge55.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS7_RA4_KfNS1_3ROIEiEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #33
  unreachable

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %.lr.ph54.i.i.i
  %.01752.i.i.i = phi i32 [ %i.f, %.lr.ph54.i.i.i ], [ %i.kd, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.bg = load i32, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !2060, !nonnull !172, !align !336 ; 3 uses
  %i.bi = load i32, ptr %i.k, align 8, !tbaa !2025
  %i.bj = load i32, ptr %i.l, align 4, !tbaa !2027
  %i.bk = load ptr, ptr %i.m, align 8, !tbaa !2061, !nonnull !172, !align !315 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %4, i8 0, i64 24, i1 false)
  %i.bl = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh)
          to label %.preheader91.i.i.i.i unwind label %bb.e ; 4 uses

.preheader91.i.i.i.i:                             ; preds = %bb.d
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !891 ; 3 uses
  store i32 %i.bm, ptr %i.n, align 4, !tbaa !2062
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !897
  %i.bp = add nsw i32 %i.bo, %i.bm
  store i32 %i.bp, ptr %i.o, align 8, !tbaa !2067
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !899 ; 2 uses
  store i32 %i.br, ptr %i.p, align 4, !tbaa !2068
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !901
  %i.bu = add nsw i32 %i.bt, %i.br
  store i32 %i.bu, ptr %i.q, align 8, !tbaa !2069
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.r, align 8, !tbaa !3
  store i32 4, ptr %i.s, align 8, !tbaa !3
  %i.bv = sub i32 %i.bm, %i.bg                    ; 3 uses
  %i.bw = call i32 @llvm.smax.i32(i32 %i.bv, i32 -2) ; 4 uses
  %spec.store.select.i.i.i.i = add i32 %i.bw, 2   ; 3 uses
  %i.bx = add i32 %i.bw, %i.bg                    ; 3 uses
  %i.by = add nsw i32 %i.bx, %i.bi
  %i.bz = srem i32 %i.by, 6                       ; 3 uses
  %i.ca = icmp slt i32 %i.bv, 3
  %i.cb = icmp sgt i32 %i.bv, -2
  %i.cc = add i32 %.01752.i.i.i, -2
  %i.cd = sub i32 2, %.01752.i.i.i
  %i.ce = sext i32 %spec.store.select.i.i.i.i to i64
  %i.cf = sub i32 -2, %i.bw
  %7 = add i32 %i.bw, 7
  %smax130.i.i.i.i = call i32 @llvm.smax.i32(i32 %spec.store.select.i.i.i.i, i32 1)
  %wide.trip.count.i.i.i.i = zext nneg i32 %smax130.i.i.i.i to i64
  br label %.preheader90.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.preheader90.i.i.i.i:                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, %.preheader91.i.i.i.i
  %indvars.iv116.i.i.i.i = phi i32 [ %i.cd, %.preheader91.i.i.i.i ], [ %indvars.iv.next117.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i.i = phi i32 [ %i.cc, %.preheader91.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ] ; 3 uses
  %.074105.i.i.i.i = phi i32 [ 0, %.preheader91.i.i.i.i ], [ %i.ii, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ]
  %i.ch = load i32, ptr %i.p, align 4, !tbaa !2068
  %smax.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.ch, i32 %indvars.iv.i.i.i.i)
  %i.ci = add i32 %smax.i.i.i.i, %indvars.iv116.i.i.i.i ; 2 uses
  %i.cj = icmp ne i32 %i.ci, 0
  %umin.i.i.i.i = zext i1 %i.cj to i32            ; 2 uses
  %i.ck = load i32, ptr %i.q, align 8, !tbaa !2069
  %i.cl = sub i32 %i.ci, %umin.i.i.i.i
  %i.cm = udiv i32 %i.cl, 6
  %i.cn = add nuw nsw i32 %i.cm, %umin.i.i.i.i
  %i.co = mul i32 %i.cn, 6
  %i.cp = add i32 %i.co, %indvars.iv.i.i.i.i      ; 4 uses
  %i.cq = add i32 %i.ck, -1                       ; 2 uses
  %smin.i.i.i = call i32 @llvm.smin.i32(i32 %i.cp, i32 %i.cq)
  %i.cr = icmp sgt i32 %i.cp, %i.cq               ; 2 uses
  %umin.i.neg11.i.i = sext i1 %i.cr to i32
  %umin.i.i.i = zext i1 %i.cr to i32
  %.neg.i.i = sub i32 %i.cp, %smin.i.i.i
  %i.cs = add i32 %.neg.i.i, %umin.i.neg11.i.i
  %i.ct = udiv i32 %i.cs, 6
  %i.cu = add nuw nsw i32 %i.ct, %umin.i.i.i
  %.neg.i.i.i = mul i32 %i.cu, -6
  %i.cv = add i32 %.neg.i.i.i, %i.cp              ; 3 uses
  %i.cw = add nsw i32 %i.cv, %i.bj
  %i.cx = srem i32 %i.cw, 6                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_iiiNS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i32 noundef %i.bx, i32 noundef %i.cv, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.f

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %.preheader90.i.i.i.i
  store i32 %i.bz, ptr %i.t, align 8, !tbaa !2053
  store i32 %i.cx, ptr %i.u, align 4, !tbaa !2052
  store ptr %i.bk, ptr %i.v, align 8, !tbaa !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.w, i8 0, i64 20, i1 false)
  br i1 %i.ca, label %.lr.ph.i.i.i.i, label %.lr.ph104.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.s
  br i1 %i.cb, label %.lr.ph104.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph104.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [48 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL18xtrans_channel_mapE, i64 %i.cy
  br label %bb.aj

bb.f:                                             ; preds = %.preheader90.i.i.i.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.s
  %i.db = phi i32 [ %spec.select.i.i.i.i.i, %bb.s ], [ %i.bz, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv118.i.i.i.i = phi i64 [ %indvars.iv.next119.i.i.i.i, %bb.s ], [ %i.ce, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 2 uses
  %i.dc = load ptr, ptr %i.v, align 8, !tbaa !2050, !nonnull !172, !align !315
  %i.dd = load i32, ptr %i.u, align 4, !tbaa !2052
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [48 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL18xtrans_channel_mapE, i64 %i.de
  %i.dg = sext i32 %i.db to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !180
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.di
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !53
  %i.dl = load ptr, ptr %i.x, align 8, !tbaa !836 ; 3 uses
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !1064
  %i.dn = load i32, ptr %i.y, align 4, !tbaa !844 ; 3 uses
  %i.do = load i32, ptr %i.z, align 8, !tbaa !845, !noalias !2070 ; 2 uses
  %i.dp = add nsw i32 %i.do, -1
  %i.dq = icmp eq i32 %i.dn, %i.dp
  br i1 %i.dq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dr = add nsw i32 %i.dn, -5
  %i.ds = load i32, ptr %i.ab, align 8, !tbaa !849
  br label %.invoke.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dt = add nsw i32 %i.dn, 1                    ; 7 uses
  store i32 %i.dt, ptr %i.y, align 4, !tbaa !844
  %i.du = icmp slt i32 %i.dt, %i.do
  br i1 %i.du, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.dv = load i8, ptr %i.ah, align 1, !tbaa !850, !range !171, !noundef !172
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.j, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.i
  %.pre.i.i.i.i.i = load i32, ptr %i.ab, align 8, !tbaa !849
  %.pre.i.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !856
  br label %.invoke.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.dx = load i8, ptr %i.ai, align 1, !tbaa !851, !range !171, !noundef !172
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.dz = load i64, ptr %i.ak, align 8, !tbaa !852
  %i.ea = getelementptr inbounds i8, ptr %i.dl, i64 %i.dz
  store ptr %i.ea, ptr %i.x, align 8, !tbaa !836
  %i.eb = load i32, ptr %i.al, align 8, !tbaa !853
  %.not.i.i85.i.i.i.i = icmp slt i32 %i.dt, %i.eb
  br i1 %.not.i.i85.i.i.i.i, label %bb.s, label %bb.l, !prof !55

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.s unwind label %bb.t

bb.m:                                             ; preds = %bb.j
  %i.ec = load i8, ptr %i.aj, align 2, !tbaa !854, !range !171, !noundef !172
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ee = load i64, ptr %i.ak, align 8, !tbaa !852
  %i.ef = getelementptr inbounds i8, ptr %i.dl, i64 %i.ee
  store ptr %i.ef, ptr %i.x, align 8, !tbaa !836
  %i.eg = load i32, ptr %i.al, align 8, !tbaa !853
  %i.eh = icmp slt i32 %i.dt, %i.eg               ; 3 uses
  %i.ei = load i32, ptr %i.am, align 4
  %i.ej = icmp sge i32 %i.dt, %i.ei
  %not..i.i.i.i.i.i = xor i1 %i.eh, true
  %or.cond.i.i.i.i.i.i = select i1 %not..i.i.i.i.i.i, i1 true, i1 %i.ej, !prof !855
  %i.ek = load ptr, ptr %i.an, align 8
  %i.el = icmp eq ptr %i.ek, null
  %i.em = select i1 %or.cond.i.i.i.i.i.i, i1 true, i1 %i.el, !prof !855
  br i1 %i.em, label %bb.o, label %bb.s, !prof !136

bb.o:                                             ; preds = %bb.n
  %i.en = load ptr, ptr %2, align 8, !tbaa !832
  %i.eo = load i32, ptr %i.ab, align 8, !tbaa !849
  %i.ep = load i32, ptr %i.ae, align 4, !tbaa !856
  %i.eq = load i32, ptr %i.as, align 8, !tbaa !857
  %i.er = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.en, i32 noundef %i.dt, i32 noundef %i.eo, i32 noundef %i.ep, ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.am, ptr noundef nonnull align 1 dereferenceable(1) %i.ar, i1 noundef zeroext %i.eh, i32 noundef %i.eq)
          to label %.noexc87.i.i.i.i unwind label %bb.t

.noexc87.i.i.i.i:                                 ; preds = %bb.o
  %i.es = zext i1 %i.eh to i8
  store ptr %i.er, ptr %i.x, align 8, !tbaa !836
  store i8 %i.es, ptr %i.ah, align 1, !tbaa !850
  br label %bb.s

bb.p:                                             ; preds = %bb.h
  %i.et = load i32, ptr %i.aa, align 4, !tbaa !858 ; 3 uses
  store i32 %i.et, ptr %i.y, align 4, !tbaa !844
  %i.eu = load i32, ptr %i.ab, align 8, !tbaa !849
  %i.ev = add nsw i32 %i.eu, 1                    ; 3 uses
  store i32 %i.ev, ptr %i.ab, align 8, !tbaa !849
  %i.ew = load i32, ptr %i.ac, align 8, !tbaa !859
  %.not.i84.i.i.i.i = icmp slt i32 %i.ev, %i.ew
  %.pre133.i.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !856 ; 2 uses
  br i1 %.not.i84.i.i.i.i, label %.invoke.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ex = load i32, ptr %i.ad, align 4, !tbaa !860 ; 2 uses
  store i32 %i.ex, ptr %i.ab, align 8, !tbaa !849
  %i.ey = add nsw i32 %.pre133.i.i.i.i, 1         ; 3 uses
  store i32 %i.ey, ptr %i.ae, align 4, !tbaa !856
  %i.ez = load i32, ptr %i.af, align 8, !tbaa !861
  %.not1.i.i.i.i.i = icmp slt i32 %i.ey, %i.ez
  br i1 %.not1.i.i.i.i.i, label %.invoke.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr %i.ag, align 8, !tbaa !862
  br label %bb.s

.invoke.i.i.i.i:                                  ; preds = %bb.q, %bb.p, %._crit_edge.i.i.i.i.i, %bb.g
  %i.fa = phi i32 [ %i.dr, %bb.g ], [ %i.et, %bb.p ], [ %i.et, %bb.q ], [ %i.dt, %._crit_edge.i.i.i.i.i ]
  %i.fb = phi i32 [ %i.ds, %bb.g ], [ %i.ev, %bb.p ], [ %i.ex, %bb.q ], [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  %i.fc = phi i32 [ 0, %bb.g ], [ %.pre133.i.i.i.i, %bb.p ], [ %i.ey, %bb.q ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(164) %2, i32 noundef %i.fa, i32 noundef %i.fb, i32 noundef %i.fc)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.invoke.i.i.i.i, %bb.r, %.noexc87.i.i.i.i, %bb.n, %bb.m, %bb.l, %bb.k
  %i.fd = uitofp i16 %i.dm to float
  %i.fe = fmul nnan float %i.fd, f0x37800080
  %i.ff = load i32, ptr %i.t, align 8, !tbaa !2053
  %i.fg = add nsw i32 %i.ff, 1                    ; 2 uses
  %i.fh = icmp eq i32 %i.fg, 6
  %spec.select.i.i.i.i.i = select i1 %i.fh, i32 0, i32 %i.fg ; 2 uses
  store i32 %spec.select.i.i.i.i.i, ptr %i.t, align 8, !tbaa !2053
  %i.fi = fmul float %i.dk, %i.fe
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv118.i.i.i.i
  store float %i.fi, ptr %i.fj, align 4, !tbaa !53
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1 ; 2 uses
  %i.fk = and i64 %indvars.iv.next119.i.i.i.i, 4294967295
  %exitcond.not.i.i.i.i = icmp eq i64 %i.fk, 5
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2073

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.an, %.preheader.i.i.i.i
  %i.fm = load ptr, ptr %i.at, align 8, !tbaa !2074 ; 7 uses
  %i.fn = load ptr, ptr %i.au, align 8, !tbaa !2075
  %.not.i.i.i.i.i = icmp eq ptr %i.fm, %i.fn
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.fm, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %.noexc80.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc80.i.i.i.i:                                 ; preds = %bb.u
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.fo, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  %i.fp = load ptr, ptr %i.at, align 8, !tbaa !2074
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 168
  store ptr %i.fq, ptr %i.at, align 8, !tbaa !2074
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !2046 ; 6 uses
  %i.fr = ptrtoint ptr %i.fm to i64
  %i.fs = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.ft = sub i64 %i.fr, %i.fs                    ; 3 uses
  %i.fu = icmp eq i64 %i.ft, 9223372036854775800
  br i1 %i.fu, label %bb.w, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc81.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.fv = sdiv exact i64 %i.ft, 168               ; 3 uses
  %i.fw = icmp eq ptr %i.fm, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.fw, i64 1, i64 %i.fv
  %i.fx = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.fv ; 2 uses
  %i.fy = icmp ult i64 %i.fx, %i.fv
  %i.fz = call i64 @llvm.umin.i64(i64 %i.fx, i64 54901024028897475)
  %i.ga = select i1 %i.fy, i64 54901024028897475, i64 %i.fz ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.ga, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.gb = mul nuw nsw i64 %i.ga, 168              ; 2 uses
  %i.gc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gb) #32
          to label %.noexc82.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc82.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.ft ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.gd, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.x unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i

bb.x:                                             ; preds = %.noexc82.i.i.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ge, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  br i1 %i.fw, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.x
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 168
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.x, %bb.y
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gj, %bb.y ], [ %i.gc, %bb.x ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gi, %bb.y ], [ %.val.i.i.i.i.i.i, %bb.x ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(164) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gh = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gg, ptr noundef nonnull align 8 dereferenceable(36) %i.gh, i64 36, i1 false)
  %i.gi = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 168
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gi, %i.fm
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2076

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gk = landingpad { ptr, i32 }
          catch ptr null
  %i.gl = extractvalue { ptr, i32 } %i.gk, 0
  %i.gm = call ptr @__cxa_begin_catch(ptr %i.gl) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_(ptr noundef nonnull %i.gc, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gn = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.go = landingpad { ptr, i32 }
          catch ptr null
  %i.gp = extractvalue { ptr, i32 } %i.go, 0
  call void @__clang_call_terminate(ptr %i.gp) #33
  unreachable

bb.ac:                                            ; preds = %bb.z
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.y
  %i.gq = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 336
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.gv, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !888
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.gs, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gv, %i.fm
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2077

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i
  %i.gw = phi ptr [ %i.gf, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.gq, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  %i.gx = load ptr, ptr %i.au, align 8, !tbaa !2075
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = sub i64 %i.gy, %i.fs
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.gz) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc82.i.i.i.i
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  %i.hc = call ptr @__cxa_begin_catch(ptr %i.hb) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.aa
  %i.hd = extractvalue { ptr, i32 } %i.gn, 0
  %i.he = call ptr @__cxa_begin_catch(ptr %i.hd) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(164) dereferenceable(164) %i.gd) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  %i.hf = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.ah

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.gb) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.ai unwind label %bb.ag

bb.ah:                                            ; preds = %bb.ag
  %i.hg = landingpad { ptr, i32 }
          catch ptr null
  %i.hh = extractvalue { ptr, i32 } %i.hg, 0
  call void @__clang_call_terminate(ptr %i.hh) #33
  unreachable

bb.ai:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.af, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  store ptr %i.gc, ptr %4, align 8, !tbaa !2046
  store ptr %i.gw, ptr %i.at, align 8, !tbaa !2074
  %i.hi = getelementptr inbounds nuw [168 x i8], ptr %i.gc, i64 %i.ga
  store ptr %i.hi, ptr %i.au, align 8, !tbaa !2075
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.an, %.lr.ph104.i.i.i.i
  %indvars.iv127.i.i.i.i = phi i64 [ 0, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next128.i.i.i.i, %bb.an ] ; 3 uses
  %indvars.iv124.i.i.i.i = phi i32 [ %7, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next125.i.i.i.i, %bb.an ] ; 2 uses
  %indvars.iv121.i.i.i.i = phi i32 [ %i.cf, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next122.i.i.i.i, %bb.an ] ; 3 uses
  %smax123.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv121.i.i.i.i, i32 0)
  %i.hj = add i32 %smax123.i.i.i.i, %indvars.iv124.i.i.i.i
  %.fr.i.i.i.i = freeze i32 %i.hj                 ; 2 uses
  %8 = urem i32 %.fr.i.i.i.i, 6
  %i.hk = sub nuw i32 %.fr.i.i.i.i, %8
  %i.hl = add i32 %i.hk, %indvars.iv121.i.i.i.i   ; 3 uses
  %i.hm = add nsw i32 %i.hl, %spec.store.select.i.i.i.i ; 2 uses
  %i.hn = icmp slt i32 %i.hm, 5
  br i1 %i.hn, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ho = sext i32 %i.hm to i64
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.ho
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !53
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv127.i.i.i.i
  store float %i.hq, ptr %i.hr, align 4, !tbaa !53
  br label %bb.an

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.hs = add nsw i32 %i.hl, %i.bx
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiNS0_4spanIfLm18446744073709551615EEENS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i32 noundef %i.hs, i32 noundef %i.cv, i32 noundef 0, ptr nonnull %i.a, i64 1, i32 noundef 1)
          to label %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.am

_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %bb.al
  %i.ht = add nsw i32 %i.hl, %i.bz
  %i.hu = srem i32 %i.ht, 6
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.hv
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !180
  %i.hy = load float, ptr %i.a, align 4, !tbaa !53
  %sext.i.i.i.i = shl i64 %i.hx, 32
  %i.hz = ashr exact i64 %sext.i.i.i.i, 30
  %i.ia = getelementptr inbounds i8, ptr %i.bk, i64 %i.hz
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !53
  %i.ic = fmul float %i.hy, %i.ib
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv127.i.i.i.i
  store float %i.ic, ptr %i.id, align 4, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ie = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %.body.i.i.i.i

bb.an:                                            ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf8getpixelEiiiPfiNS1_8WrapModeE.exit.i.i.i.i, %bb.ak
  %indvars.iv.next128.i.i.i.i = add nuw nsw i64 %indvars.iv127.i.i.i.i, 1 ; 2 uses
  %indvars.iv.next122.i.i.i.i = add i32 %indvars.iv121.i.i.i.i, 1
  %indvars.iv.next125.i.i.i.i = add i32 %indvars.iv124.i.i.i.i, -1
  %exitcond131.not.i.i.i.i.a = icmp eq i64 %indvars.iv.next128.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond131.not.i.i.i.i.a, label %._crit_edge.i.i.i.i, label %bb.aj, !llvm.loop !2078

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, %.noexc80.i.i.i.i
  %i.if = load ptr, ptr %i.an, align 8, !tbaa !888
  %.not.i.i.i.i.i.i = icmp eq ptr %i.if, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ig = landingpad { ptr, i32 }
          catch ptr null
  %i.ih = extractvalue { ptr, i32 } %i.ig, 0
  call void @__clang_call_terminate(ptr %i.ih) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i: ; preds = %bb.ao, %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.ii = add nuw nsw i32 %.074105.i.i.i.i, 1     ; 2 uses
  %indvars.iv.next.i.i.i.i = add i32 %indvars.iv.i.i.i.i, 1
  %indvars.iv.next117.i.i.i.i = add i32 %indvars.iv116.i.i.i.i, -1
  %exitcond132.not.i.i.i.i = icmp eq i32 %i.ii, 5
  br i1 %exitcond132.not.i.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i, label %.preheader90.i.i.i.i, !llvm.loop !2079

.loopexit.i.i.i.i:                                ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %bb.u
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.w
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i, %bb.am, %bb.ag, %bb.t
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.fl, %bb.t ], [ %i.ie, %bb.am ], [ %i.hf, %bb.ag ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.ij = load ptr, ptr %i.an, align 8, !tbaa !888
  %.not.i.i28.i.i.i = icmp eq ptr %i.ij, null
  br i1 %.not.i.i28.i.i.i, label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %.body.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ik = landingpad { ptr, i32 }
          catch ptr null
  %i.il = extractvalue { ptr, i32 } %i.ik, 0
  call void @__clang_call_terminate(ptr %i.il) #33
  unreachable

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i: ; preds = %bb.aq, %.body.i.i.i.i, %bb.f
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.da, %bb.f ], [ %.pn.i.i.i.i, %.body.i.i.i.i ], [ %.pn.i.i.i.i, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.as

bb.as:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i, %bb.e
  %.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i ], [ %i.cg, %bb.e ] ; 2 uses
  %i.im = load ptr, ptr %4, align 8, !tbaa !2046  ; 3 uses
  %i.in = load ptr, ptr %i.at, align 8, !tbaa !2074 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.im, %i.in
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.as, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.is, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i ], [ %i.im, %bb.as ] ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 72
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !888
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ip, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.iq = landingpad { ptr, i32 }
          catch ptr null
  %i.ir = extractvalue { ptr, i32 } %i.iq, 0
  call void @__clang_call_terminate(ptr %i.ir) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.at, %.lr.ph.i.i.i.i.i.i
  %i.is = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i27.i.i.i = icmp eq ptr %i.is, %i.in
  br i1 %.not.i.i.i27.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2077

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i
  %.val.pr.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !2046
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.as
  %.val.i.i.i.i = phi ptr [ %.val.pr.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.im, %bb.as ] ; 3 uses
  %.not.i.i2.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i2.i.i.i.i, label %.body.i.i.i, label %bb.av

bb.av:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i
  %.val1.i.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !2075
  %i.it = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.iu = ptrtoint ptr %.val.i.i.i.i to i64
  %i.iv = sub i64 %i.it, %i.iu
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.iv) #30
  br label %.body.i.i.i

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i: ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i
  %i.iw = load i32, ptr %i.l, align 4, !tbaa !2027
  %i.ix = add nsw i32 %i.iw, %.01752.i.i.i
  %i.iy = srem i32 %i.ix, 6
  %i.iz = sext i32 %i.iy to i64                   ; 2 uses
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.iz
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.iz ; 2 uses
  %i.jc = load i32, ptr %i.k, align 8, !tbaa !2025
  %i.jd = load i32, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.je = add nsw i32 %i.jd, %i.jc
  %i.jf = srem i32 %i.je, 6                       ; 2 uses
  %i.jg = load i32, ptr %i.aw, align 4, !tbaa !866
  %i.jh = sub nsw i32 %i.jg, %i.jd                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %4, ptr %5, align 8, !tbaa !2080
  store ptr %3, ptr %i.ax, align 8, !tbaa !1268
  %i.ji = load i32, ptr %i.az, align 8, !tbaa !29
  store i32 %i.ji, ptr %i.ay, align 8, !tbaa !2043
  store i32 %i.jf, ptr %i.ba, align 4, !tbaa !2044
  store i32 %i.jh, ptr %i.bb, align 8, !tbaa !2045
  %i.jj = icmp sgt i32 %i.jf, 0
  br i1 %i.jj, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.jk = load ptr, ptr %i.jb, align 8, !tbaa !58
  invoke void %i.jk(ptr noundef nonnull align 8 dereferenceable(28) %5)
          to label %._crit_edge65.i.i.i unwind label %bb.ax

._crit_edge65.i.i.i:                              ; preds = %bb.aw
  %.pre.i.i.i = load i32, ptr %i.bb, align 8, !tbaa !2045
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.ay:                                            ; preds = %._crit_edge65.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i
  %i.jm = phi i32 [ %.pre.i.i.i, %._crit_edge65.i.i.i ], [ %i.jh, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowC2EiiRKNS0_8ImageBufEiiRA4_Kf.exit.i.i.i ] ; 2 uses
  %.off.i.i.i = add i32 %i.jm, 5
  %.not.i.i.i = icmp ult i32 %.off.i.i.i, 11
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.ay
  %i.jn = sdiv i32 %i.jm, 6
  %i.jo = call i32 @llvm.umax.i32(i32 %i.jn, i32 1)
  %umax.i.i.i = sext i32 %i.jo to i64
  br label %.lr.ph.i.i.i

end_hunk_8
