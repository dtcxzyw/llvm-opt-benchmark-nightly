inline.NumInlined: 17707
inline.NumDeleted: 3921
loop-unroll.NumCompletelyUnrolled: 167
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 218
begin_hunk_0_@llvm.sqrt.f64
declare double @llvm.sqrt.f64(double) #23

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvllllEZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS2_3ROIENS2_6paroptESt8functionIFvS4_EEEUlllllE_E9_M_invokeERKSt9_Any_dataOlSE_SE_SE_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #1 align 2 {
bb.a:
  %5 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 8 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !180
  %i.b = load i64, ptr %2, align 8, !tbaa !180
  %i.c = load i64, ptr %3, align 8, !tbaa !180
  %i.d = load i64, ptr %4, align 8, !tbaa !180
  %i.e = load ptr, ptr %0, align 8, !tbaa !878, !nonnull !172, !align !336 ; 3 uses
  %i.f = trunc i64 %i.a to i32
  %i.g = trunc i64 %i.b to i32
  %i.h = trunc i64 %i.c to i32
  %i.i = trunc i64 %i.d to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !880, !nonnull !172, !align !315
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = load <4 x i32>, ptr %i.l, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i32 %i.f, ptr %5, align 8
  store i32 %i.g, ptr %.sroa.2.0..sroa_idx.i.i.i, align 4
  store i32 %i.h, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8
  store i32 %i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4
  store <4 x i32> %i.m, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !78
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i, label %bb.b, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS1_3ROIENS1_6paroptESt8functionIFvS3_EEEUlllllE_JllllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #34
  unreachable

_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS1_3ROIENS1_6paroptESt8functionIFvS3_EEEUlllllE_JllllEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !75
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %5), !inline_history !881
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvllllEZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS2_3ROIENS2_6paroptESt8functionIFvS4_EEEUlllllE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS2_3ROIENS2_6paroptESt8functionIFvS4_EEEUlllllE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS0_3ROIENS0_6paroptESt8functionIFvS2_EEEUlllllE_, ptr %0, align 8, !tbaa !882
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS2_3ROIENS2_6paroptESt8functionIFvS4_EEEUlllllE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !58
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS2_3ROIENS2_6paroptESt8functionIFvS4_EEEUlllllE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !884
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS2_3ROIENS2_6paroptESt8functionIFvS4_EEEUlllllE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS2_3ROIENS2_6paroptESt8functionIFvS4_EEEUlllllE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<float, float, 2, 3, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Window::Row", align 8 ; 37 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 8 uses
  %4 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<float, float, 2, 3, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Window", align 8 ; 21 uses
  %5 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<float, float, 2, 3, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Context", align 8 ; 11 uses
  %6 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 10 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !58    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !885  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.d = load ptr, ptr %.val, align 8, !tbaa !887, !nonnull !172, !align !336
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0, i1 noundef zeroext true)
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !868  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !867
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %.lr.ph54.i.i.i, label %._crit_edge55.i.i.i

.lr.ph54.i.i.i:                                   ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 132 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br label %bb.d

._crit_edge55.i.i.i:                              ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !888
  %.not.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS7_RA4_KfNS1_3ROIEiEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge55.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS7_RA4_KfNS1_3ROIEiEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #33
  unreachable

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %.lr.ph54.i.i.i
  %.01752.i.i.i = phi i32 [ %i.f, %.lr.ph54.i.i.i ], [ %i.jx, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.bh = load i32, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !889, !nonnull !172, !align !336 ; 3 uses
  %i.bj = load i32, ptr %i.k, align 8, !tbaa !808
  %i.bk = load i32, ptr %i.l, align 4, !tbaa !810
  %i.bl = load ptr, ptr %i.m, align 8, !tbaa !890, !nonnull !172, !align !315 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %4, i8 0, i64 24, i1 false)
  %i.bm = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi)
          to label %.preheader92.i.i.i.i unwind label %bb.e ; 4 uses

.preheader92.i.i.i.i:                             ; preds = %bb.d
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !891 ; 3 uses
  store i32 %i.bn, ptr %i.n, align 4, !tbaa !892
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !897
  %i.bq = add nsw i32 %i.bp, %i.bn
  store i32 %i.bq, ptr %i.o, align 8, !tbaa !898
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !899 ; 2 uses
  store i32 %i.bs, ptr %i.p, align 4, !tbaa !900
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !901
  %i.bv = add nsw i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.q, align 8, !tbaa !902
  store i32 0, ptr %i.r, align 8, !tbaa !3
  store i32 1, ptr %i.s, align 4, !tbaa !3
  store i32 2, ptr %i.t, align 8, !tbaa !3
  %i.bw = sub i32 %i.bn, %i.bh                    ; 4 uses
  %i.bx = call i32 @llvm.smax.i32(i32 %i.bw, i32 -1) ; 4 uses
  %spec.store.select.i.i.i.i = add i32 %i.bx, 1   ; 2 uses
  %i.by = add i32 %i.bx, %i.bh                    ; 3 uses
  %i.bz = add nsw i32 %i.by, %i.bj
  %i.ca = srem i32 %i.bz, 2                       ; 3 uses
  %i.cb = icmp slt i32 %i.bw, 2
  %.not76104.i.i.i.i = icmp slt i32 %i.bw, 0
  %i.cc = add i32 %.01752.i.i.i, -1
  %i.cd = sub i32 2, %.01752.i.i.i
  %i.ce = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cf = xor i32 %i.bx, -1
  %i.cg = add i32 %i.bx, 2
  %i.ch = add i32 %i.bw, 1
  %wide.trip.count.i.i.i.i = zext i32 %i.ch to i64
  %smax65.i.i.i = call i64 @llvm.smax.i64(i64 %i.ce, i64 2)
  br label %.preheader91.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.preheader91.i.i.i.i:                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, %.preheader92.i.i.i.i
  %indvars.iv.i.i.i = phi i32 [ %indvars.iv.next.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %.01752.i.i.i, %.preheader92.i.i.i.i ] ; 2 uses
  %indvars.iv118.i.i.i.i = phi i32 [ %indvars.iv.next119.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.cd, %.preheader92.i.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i.i = phi i32 [ %indvars.iv.next.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.cc, %.preheader92.i.i.i.i ] ; 3 uses
  %.074107.i.i.i.i = phi i32 [ %i.ic, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ 0, %.preheader92.i.i.i.i ]
  %i.cj = load i32, ptr %i.p, align 4, !tbaa !900
  %i.ck = load i32, ptr %i.q, align 8, !tbaa !902
  %smax.i.i.i = call i32 @llvm.smax.i32(i32 %i.cj, i32 %indvars.iv.i.i.i.i)
  %i.cl = add i32 %smax.i.i.i, %indvars.iv118.i.i.i.i
  %i.cm = and i32 %i.cl, -2                       ; 2 uses
  %i.cn = add i32 %i.cm, %indvars.iv.i.i.i.i      ; 2 uses
  %i.co = add i32 %i.cm, %indvars.iv.i.i.i
  %i.cp = add i32 %i.ck, -1
  %smin.i.i.i = call i32 @llvm.smin.i32(i32 %i.cn, i32 %i.cp)
  %i.cq = sub i32 %i.co, %smin.i.i.i
  %i.cr = and i32 %i.cq, -2
  %i.cs = sub i32 %i.cn, %i.cr                    ; 3 uses
  %i.ct = add nsw i32 %i.cs, %i.bk
  %i.cu = srem i32 %i.ct, 2                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_iiiNS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i32 noundef %i.by, i32 noundef %i.cs, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.f

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %.preheader91.i.i.i.i
  store i32 %i.ca, ptr %i.u, align 8, !tbaa !843
  store i32 %i.cu, ptr %i.v, align 4, !tbaa !842
  store ptr %i.bl, ptr %i.w, align 8, !tbaa !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.x, i8 0, i64 12, i1 false)
  br i1 %i.cb, label %.lr.ph.i.i.i.i, label %.lr.ph106.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.s
  br i1 %.not76104.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph106.i.i.i.i

.lr.ph106.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL17bayer_channel_mapE, i64 %i.cv
  br label %bb.aj

bb.f:                                             ; preds = %.preheader91.i.i.i.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.s
  %i.cy = phi i32 [ %spec.select.i.i.i.i.i, %bb.s ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv120.i.i.i.i = phi i64 [ %indvars.iv.next121.i.i.i.i, %bb.s ], [ %i.ce, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
  %i.cz = load ptr, ptr %i.w, align 8, !tbaa !839, !nonnull !172, !align !315
  %i.da = load i32, ptr %i.v, align 4, !tbaa !842
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL17bayer_channel_mapE, i64 %i.db
  %i.dd = sext i32 %i.cy to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !180
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.df
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !53
  %i.di = load ptr, ptr %i.y, align 8, !tbaa !836 ; 3 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !53
  %i.dk = load i32, ptr %i.z, align 4, !tbaa !844 ; 3 uses
  %i.dl = load i32, ptr %i.aa, align 8, !tbaa !845, !noalias !903 ; 2 uses
  %i.dm = add nsw i32 %i.dl, -1
  %i.dn = icmp eq i32 %i.dk, %i.dm
  br i1 %i.dn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.do = add nsw i32 %i.dk, -1
  %i.dp = load i32, ptr %i.ac, align 8, !tbaa !849
  br label %.invoke.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dq = add nsw i32 %i.dk, 1                    ; 7 uses
  store i32 %i.dq, ptr %i.z, align 4, !tbaa !844
  %i.dr = icmp slt i32 %i.dq, %i.dl
  br i1 %i.dr, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.ds = load i8, ptr %i.ai, align 1, !tbaa !850, !range !171, !noundef !172
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.j, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.i
  %.pre.i.i.i.i.i = load i32, ptr %i.ac, align 8, !tbaa !849
  %.pre.i.i.i.i = load i32, ptr %i.af, align 4, !tbaa !856
  br label %.invoke.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.du = load i8, ptr %i.aj, align 1, !tbaa !851, !range !171, !noundef !172
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.dw = load i64, ptr %i.al, align 8, !tbaa !852
  %i.dx = getelementptr inbounds i8, ptr %i.di, i64 %i.dw
  store ptr %i.dx, ptr %i.y, align 8, !tbaa !836
  %i.dy = load i32, ptr %i.am, align 8, !tbaa !853
  %.not.i.i86.i.i.i.i = icmp slt i32 %i.dq, %i.dy
  br i1 %.not.i.i86.i.i.i.i, label %bb.s, label %bb.l, !prof !55

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(156) %2)
          to label %bb.s unwind label %bb.t

bb.m:                                             ; preds = %bb.j
  %i.dz = load i8, ptr %i.ak, align 2, !tbaa !854, !range !171, !noundef !172
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eb = load i64, ptr %i.al, align 8, !tbaa !852
  %i.ec = getelementptr inbounds i8, ptr %i.di, i64 %i.eb
  store ptr %i.ec, ptr %i.y, align 8, !tbaa !836
  %i.ed = load i32, ptr %i.am, align 8, !tbaa !853
  %i.ee = icmp slt i32 %i.dq, %i.ed               ; 3 uses
  %i.ef = load i32, ptr %i.an, align 4
  %i.eg = icmp sge i32 %i.dq, %i.ef
  %not..i.i.i.i.i.i = xor i1 %i.ee, true
  %or.cond.i.i.i.i.i.i = select i1 %not..i.i.i.i.i.i, i1 true, i1 %i.eg, !prof !855
  %i.eh = load ptr, ptr %i.ao, align 8
  %i.ei = icmp eq ptr %i.eh, null
  %i.ej = select i1 %or.cond.i.i.i.i.i.i, i1 true, i1 %i.ei, !prof !855
  br i1 %i.ej, label %bb.o, label %bb.s, !prof !136

bb.o:                                             ; preds = %bb.n
  %i.ek = load ptr, ptr %2, align 8, !tbaa !832
  %i.el = load i32, ptr %i.ac, align 8, !tbaa !849
  %i.em = load i32, ptr %i.af, align 4, !tbaa !856
  %i.en = load i32, ptr %i.at, align 8, !tbaa !857
  %i.eo = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i32 noundef %i.dq, i32 noundef %i.el, i32 noundef %i.em, ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %i.an, ptr noundef nonnull align 1 dereferenceable(1) %i.as, i1 noundef zeroext %i.ee, i32 noundef %i.en)
          to label %.noexc88.i.i.i.i unwind label %bb.t

.noexc88.i.i.i.i:                                 ; preds = %bb.o
  %i.ep = zext i1 %i.ee to i8
  store ptr %i.eo, ptr %i.y, align 8, !tbaa !836
  store i8 %i.ep, ptr %i.ai, align 1, !tbaa !850
  br label %bb.s

bb.p:                                             ; preds = %bb.h
  %i.eq = load i32, ptr %i.ab, align 4, !tbaa !858 ; 3 uses
  store i32 %i.eq, ptr %i.z, align 4, !tbaa !844
  %i.er = load i32, ptr %i.ac, align 8, !tbaa !849
  %i.es = add nsw i32 %i.er, 1                    ; 3 uses
  store i32 %i.es, ptr %i.ac, align 8, !tbaa !849
  %i.et = load i32, ptr %i.ad, align 8, !tbaa !859
  %.not.i85.i.i.i.i = icmp slt i32 %i.es, %i.et
  %.pre132.i.i.i.i = load i32, ptr %i.af, align 4, !tbaa !856 ; 2 uses
  br i1 %.not.i85.i.i.i.i, label %.invoke.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eu = load i32, ptr %i.ae, align 4, !tbaa !860 ; 2 uses
  store i32 %i.eu, ptr %i.ac, align 8, !tbaa !849
  %i.ev = add nsw i32 %.pre132.i.i.i.i, 1         ; 3 uses
  store i32 %i.ev, ptr %i.af, align 4, !tbaa !856
  %i.ew = load i32, ptr %i.ag, align 8, !tbaa !861
  %.not1.i.i.i.i.i = icmp slt i32 %i.ev, %i.ew
  br i1 %.not1.i.i.i.i.i, label %.invoke.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr %i.ah, align 8, !tbaa !862
  br label %bb.s

.invoke.i.i.i.i:                                  ; preds = %bb.q, %bb.p, %._crit_edge.i.i.i.i.i, %bb.g
  %i.ex = phi i32 [ %i.do, %bb.g ], [ %i.eq, %bb.p ], [ %i.eq, %bb.q ], [ %i.dq, %._crit_edge.i.i.i.i.i ]
  %i.ey = phi i32 [ %i.dp, %bb.g ], [ %i.es, %bb.p ], [ %i.eu, %bb.q ], [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  %i.ez = phi i32 [ 0, %bb.g ], [ %.pre132.i.i.i.i, %bb.p ], [ %i.ev, %bb.q ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(156) %2, i32 noundef %i.ex, i32 noundef %i.ey, i32 noundef %i.ez)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.invoke.i.i.i.i, %bb.r, %.noexc88.i.i.i.i, %bb.n, %bb.m, %bb.l, %bb.k
  %i.fa = load i32, ptr %i.u, align 8, !tbaa !843
  %i.fb = add nsw i32 %i.fa, 1                    ; 2 uses
  %i.fc = icmp eq i32 %i.fb, 2
  %spec.select.i.i.i.i.i = select i1 %i.fc, i32 0, i32 %i.fb ; 2 uses
  store i32 %spec.select.i.i.i.i.i, ptr %i.u, align 8, !tbaa !843
  %i.fd = fmul float %i.dh, %i.dj
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.x, i64 %indvars.iv120.i.i.i.i
  store float %i.fd, ptr %i.fe, align 4, !tbaa !53
  %indvars.iv.next121.i.i.i.i = add nsw i64 %indvars.iv120.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv120.i.i.i.i, %smax65.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !906

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.an, %.preheader.i.i.i.i
  %i.fg = load ptr, ptr %i.au, align 8, !tbaa !907 ; 7 uses
  %i.fh = load ptr, ptr %i.av, align 8, !tbaa !908
  %.not.i.i.i.i.i = icmp eq ptr %i.fg, %i.fh
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(156) %i.fg, ptr noundef nonnull align 8 dereferenceable(156) %2)
          to label %.noexc81.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.u
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.fi, ptr noundef nonnull align 8 dereferenceable(28) %i.u, i64 28, i1 false)
  %i.fj = load ptr, ptr %i.au, align 8, !tbaa !907
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 160
  store ptr %i.fk, ptr %i.au, align 8, !tbaa !907
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !828 ; 6 uses
  %i.fl = ptrtoint ptr %i.fg to i64
  %i.fm = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.fn = sub i64 %i.fl, %i.fm                    ; 3 uses
  %i.fo = icmp eq i64 %i.fn, 9223372036854775680
  br i1 %i.fo, label %bb.w, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc82.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc82.i.i.i.i:                                 ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.fp = sdiv exact i64 %i.fn, 160               ; 3 uses
  %i.fq = icmp eq ptr %i.fg, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.fq, i64 1, i64 %i.fp
  %i.fr = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.fp ; 2 uses
  %i.fs = icmp ult i64 %i.fr, %i.fp
  %i.ft = call i64 @llvm.umin.i64(i64 %i.fr, i64 57646075230342348)
  %i.fu = select i1 %i.fs, i64 57646075230342348, i64 %i.ft ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.fu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.fv = mul nuw nsw i64 %i.fu, 160              ; 2 uses
  %i.fw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fv) #32
          to label %.noexc83.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc83.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fn ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(156) %i.fx, ptr noundef nonnull align 8 dereferenceable(156) %2)
          to label %bb.x unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i

bb.x:                                             ; preds = %.noexc83.i.i.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.fy, ptr noundef nonnull align 8 dereferenceable(28) %i.u, i64 28, i1 false)
  br i1 %i.fq, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.x
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 160
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.x, %bb.y
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gd, %bb.y ], [ %i.fw, %bb.x ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gc, %bb.y ], [ %.val.i.i.i.i.i.i, %bb.x ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(156) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(156) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gb = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ga, ptr noundef nonnull align 8 dereferenceable(28) %i.gb, i64 28, i1 false)
  %i.gc = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 160 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 160
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gc, %i.fg
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !909

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ge = landingpad { ptr, i32 }
          catch ptr null
  %i.gf = extractvalue { ptr, i32 } %i.ge, 0
  %i.gg = call ptr @__cxa_begin_catch(ptr %i.gf) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_(ptr noundef nonnull %i.fw, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gh = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gi = landingpad { ptr, i32 }
          catch ptr null
  %i.gj = extractvalue { ptr, i32 } %i.gi, 0
  call void @__clang_call_terminate(ptr %i.gj) #33
  unreachable

bb.ac:                                            ; preds = %bb.z
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.y
  %i.gk = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 320
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.gp, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !888
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.gm, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(156) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gn = landingpad { ptr, i32 }
          catch ptr null
  %i.go = extractvalue { ptr, i32 } %i.gn, 0
  call void @__clang_call_terminate(ptr %i.go) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 160 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gp, %i.fg
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !910

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i
  %i.gq = phi ptr [ %i.fz, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.gk, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  %i.gr = load ptr, ptr %i.av, align 8, !tbaa !908
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = sub i64 %i.gs, %i.fm
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.gt) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc83.i.i.i.i
  %i.gu = landingpad { ptr, i32 }
          catch ptr null
  %i.gv = extractvalue { ptr, i32 } %i.gu, 0
  %i.gw = call ptr @__cxa_begin_catch(ptr %i.gv) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.aa
  %i.gx = extractvalue { ptr, i32 } %i.gh, 0
  %i.gy = call ptr @__cxa_begin_catch(ptr %i.gx) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(156) dereferenceable(156) %i.fx) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  %i.gz = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.ah

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.fv) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.ai unwind label %bb.ag

bb.ah:                                            ; preds = %bb.ag
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  call void @__clang_call_terminate(ptr %i.hb) #33
  unreachable

bb.ai:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.af, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  store ptr %i.fw, ptr %4, align 8, !tbaa !828
  store ptr %i.gq, ptr %i.au, align 8, !tbaa !907
  %i.hc = getelementptr inbounds nuw [160 x i8], ptr %i.fw, i64 %i.fu
  store ptr %i.hc, ptr %i.av, align 8, !tbaa !908
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.an, %.lr.ph106.i.i.i.i
  %indvars.iv128.i.i.i.i = phi i64 [ 0, %.lr.ph106.i.i.i.i ], [ %indvars.iv.next129.i.i.i.i, %bb.an ] ; 3 uses
  %indvars.iv126.i.i.i.i = phi i32 [ %i.cg, %.lr.ph106.i.i.i.i ], [ %indvars.iv.next127.i.i.i.i, %bb.an ] ; 2 uses
  %indvars.iv123.i.i.i.i = phi i32 [ %i.cf, %.lr.ph106.i.i.i.i ], [ %indvars.iv.next124.i.i.i.i, %bb.an ] ; 3 uses
  %smax125.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv123.i.i.i.i, i32 0)
  %i.hd = add i32 %smax125.i.i.i.i, %indvars.iv126.i.i.i.i
  %i.he = and i32 %i.hd, -2
  %i.hf = add i32 %i.he, %indvars.iv123.i.i.i.i   ; 3 uses
  %i.hg = add nuw nsw i32 %i.hf, %spec.store.select.i.i.i.i ; 2 uses
  %i.hh = icmp slt i32 %i.hg, 3
  br i1 %i.hh, label %bb.ak, label %bb.al

end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window6updateEv:bb.a
bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit
  %i.bj = add nsw i32 %i.be, -1
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.1, i64 224
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !849
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(156) %i.am, i32 noundef %i.bj, i32 noundef %i.bl, i32 noundef 0)
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.1

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.1: ; preds = %bb.e, %bb.d
  %i.bm = uitofp i8 %i.bc to float
  %i.bn = fmul nnan float %i.bm, f0x3B808081
  %i.bo = load i32, ptr %i.at, align 8, !tbaa !945
  %i.bp = add nsw i32 %i.bo, 1                    ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 2
  %spec.select.i.1 = select i1 %i.bq, i32 0, i32 %i.bp
  store i32 %spec.select.i.1, ptr %i.at, align 8, !tbaa !945
  %i.br = fmul float %i.az, %i.bn
  %i.bs = getelementptr inbounds nuw i8, ptr %.val.1, i64 304
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.e
  store float %i.br, ptr %i.bt, align 4, !tbaa !53
  %.val.2 = load ptr, ptr %0, align 8, !tbaa !935 ; 9 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.val.2, i64 320 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.2, i64 456
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !941, !nonnull !172, !align !315
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.2, i64 452
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !944
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL17bayer_channel_mapE, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %.val.2, i64 448 ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !945
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !180
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.cf
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !53
  %i.ci = getelementptr inbounds nuw i8, ptr %.val.2, i64 432
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !836
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !17
  %i.cl = getelementptr inbounds nuw i8, ptr %.val.2, i64 380
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !844 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.val.2, i64 360
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !845, !noalias !946
  %i.cp = add nsw i32 %i.co, -1
  %i.cq = icmp eq i32 %i.cm, %i.cp
  br i1 %i.cq, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.1
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(156) %i.bu)
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.2

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.1
  %i.cr = add nsw i32 %i.cm, -1
  %i.cs = getelementptr inbounds nuw i8, ptr %.val.2, i64 384
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !849
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(156) %i.bu, i32 noundef %i.cr, i32 noundef %i.ct, i32 noundef 0)
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.2

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.2: ; preds = %bb.g, %bb.f
  %i.cu = uitofp i8 %i.ck to float
  %i.cv = fmul nnan float %i.cu, f0x3B808081
  %i.cw = load i32, ptr %i.cb, align 8, !tbaa !945
  %i.cx = add nsw i32 %i.cw, 1                    ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 2
  %spec.select.i.2 = select i1 %i.cy, i32 0, i32 %i.cx
  store i32 %spec.select.i.2, ptr %i.cb, align 8, !tbaa !945
  %i.cz = fmul float %i.ch, %i.cv
  %i.da = getelementptr inbounds nuw i8, ptr %.val.2, i64 464
  %i.db = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.e
  store float %i.cz, ptr %i.db, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<float, unsigned char, 2, 3, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Window::Row", align 8 ; 37 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 8 uses
  %4 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<float, unsigned char, 2, 3, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Window", align 8 ; 21 uses
  %5 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<float, unsigned char, 2, 3, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Context", align 8 ; 11 uses
  %6 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 10 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !58    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !949  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.d = load ptr, ptr %.val, align 8, !tbaa !951, !nonnull !172, !align !336
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0, i1 noundef zeroext true)
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !868  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !867
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %.lr.ph54.i.i.i, label %._crit_edge55.i.i.i

.lr.ph54.i.i.i:                                   ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 132 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br label %bb.d

._crit_edge55.i.i.i:                              ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !888
  %.not.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS7_RA4_KfNS1_3ROIEiEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge55.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS7_RA4_KfNS1_3ROIEiEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #33
  unreachable

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %.lr.ph54.i.i.i
  %.01752.i.i.i = phi i32 [ %i.f, %.lr.ph54.i.i.i ], [ %i.jz, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.bh = load i32, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !952, !nonnull !172, !align !336 ; 3 uses
  %i.bj = load i32, ptr %i.k, align 8, !tbaa !918
  %i.bk = load i32, ptr %i.l, align 4, !tbaa !920
  %i.bl = load ptr, ptr %i.m, align 8, !tbaa !953, !nonnull !172, !align !315 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %4, i8 0, i64 24, i1 false)
  %i.bm = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi)
          to label %.preheader92.i.i.i.i unwind label %bb.e ; 4 uses

.preheader92.i.i.i.i:                             ; preds = %bb.d
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !891 ; 3 uses
  store i32 %i.bn, ptr %i.n, align 4, !tbaa !954
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !897
  %i.bq = add nsw i32 %i.bp, %i.bn
  store i32 %i.bq, ptr %i.o, align 8, !tbaa !959
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !899 ; 2 uses
  store i32 %i.bs, ptr %i.p, align 4, !tbaa !960
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !901
  %i.bv = add nsw i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.q, align 8, !tbaa !961
  store i32 0, ptr %i.r, align 8, !tbaa !3
  store i32 1, ptr %i.s, align 4, !tbaa !3
  store i32 2, ptr %i.t, align 8, !tbaa !3
  %i.bw = sub i32 %i.bn, %i.bh                    ; 4 uses
  %i.bx = call i32 @llvm.smax.i32(i32 %i.bw, i32 -1) ; 4 uses
  %spec.store.select.i.i.i.i = add i32 %i.bx, 1   ; 2 uses
  %i.by = add i32 %i.bx, %i.bh                    ; 3 uses
  %i.bz = add nsw i32 %i.by, %i.bj
  %i.ca = srem i32 %i.bz, 2                       ; 3 uses
  %i.cb = icmp slt i32 %i.bw, 2
  %.not76104.i.i.i.i = icmp slt i32 %i.bw, 0
  %i.cc = add i32 %.01752.i.i.i, -1
  %i.cd = sub i32 2, %.01752.i.i.i
  %i.ce = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cf = xor i32 %i.bx, -1
  %i.cg = add i32 %i.bx, 2
  %i.ch = add i32 %i.bw, 1
  %wide.trip.count.i.i.i.i = zext i32 %i.ch to i64
  %smax65.i.i.i = call i64 @llvm.smax.i64(i64 %i.ce, i64 2)
  br label %.preheader91.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.preheader91.i.i.i.i:                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, %.preheader92.i.i.i.i
  %indvars.iv.i.i.i = phi i32 [ %indvars.iv.next.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %.01752.i.i.i, %.preheader92.i.i.i.i ] ; 2 uses
  %indvars.iv118.i.i.i.i = phi i32 [ %indvars.iv.next119.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.cd, %.preheader92.i.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i.i = phi i32 [ %indvars.iv.next.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.cc, %.preheader92.i.i.i.i ] ; 3 uses
  %.074107.i.i.i.i = phi i32 [ %i.ie, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ 0, %.preheader92.i.i.i.i ]
  %i.cj = load i32, ptr %i.p, align 4, !tbaa !960
  %i.ck = load i32, ptr %i.q, align 8, !tbaa !961
  %smax.i.i.i = call i32 @llvm.smax.i32(i32 %i.cj, i32 %indvars.iv.i.i.i.i)
  %i.cl = add i32 %smax.i.i.i, %indvars.iv118.i.i.i.i
  %i.cm = and i32 %i.cl, -2                       ; 2 uses
  %i.cn = add i32 %i.cm, %indvars.iv.i.i.i.i      ; 2 uses
  %i.co = add i32 %i.cm, %indvars.iv.i.i.i
  %i.cp = add i32 %i.ck, -1
  %smin.i.i.i = call i32 @llvm.smin.i32(i32 %i.cn, i32 %i.cp)
  %i.cq = sub i32 %i.co, %smin.i.i.i
  %i.cr = and i32 %i.cq, -2
  %i.cs = sub i32 %i.cn, %i.cr                    ; 3 uses
  %i.ct = add nsw i32 %i.cs, %i.bk
  %i.cu = srem i32 %i.ct, 2                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_iiiNS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i32 noundef %i.by, i32 noundef %i.cs, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.f

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %.preheader91.i.i.i.i
  store i32 %i.ca, ptr %i.u, align 8, !tbaa !945
  store i32 %i.cu, ptr %i.v, align 4, !tbaa !944
  store ptr %i.bl, ptr %i.w, align 8, !tbaa !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.x, i8 0, i64 12, i1 false)
  br i1 %i.cb, label %.lr.ph.i.i.i.i, label %.lr.ph106.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.s
  br i1 %.not76104.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph106.i.i.i.i

.lr.ph106.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL17bayer_channel_mapE, i64 %i.cv
  br label %bb.aj

bb.f:                                             ; preds = %.preheader91.i.i.i.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.s
  %i.cy = phi i32 [ %spec.select.i.i.i.i.i, %bb.s ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv120.i.i.i.i = phi i64 [ %indvars.iv.next121.i.i.i.i, %bb.s ], [ %i.ce, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
  %i.cz = load ptr, ptr %i.w, align 8, !tbaa !941, !nonnull !172, !align !315
  %i.da = load i32, ptr %i.v, align 4, !tbaa !944
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL17bayer_channel_mapE, i64 %i.db
  %i.dd = sext i32 %i.cy to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !180
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.df
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !53
  %i.di = load ptr, ptr %i.y, align 8, !tbaa !836 ; 3 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !17
  %i.dk = load i32, ptr %i.z, align 4, !tbaa !844 ; 3 uses
  %i.dl = load i32, ptr %i.aa, align 8, !tbaa !845, !noalias !962 ; 2 uses
  %i.dm = add nsw i32 %i.dl, -1
  %i.dn = icmp eq i32 %i.dk, %i.dm
  br i1 %i.dn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.do = add nsw i32 %i.dk, -1
  %i.dp = load i32, ptr %i.ac, align 8, !tbaa !849
  br label %.invoke.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dq = add nsw i32 %i.dk, 1                    ; 7 uses
  store i32 %i.dq, ptr %i.z, align 4, !tbaa !844
  %i.dr = icmp slt i32 %i.dq, %i.dl
  br i1 %i.dr, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.ds = load i8, ptr %i.ai, align 1, !tbaa !850, !range !171, !noundef !172
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.j, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.i
  %.pre.i.i.i.i.i = load i32, ptr %i.ac, align 8, !tbaa !849
  %.pre.i.i.i.i = load i32, ptr %i.af, align 4, !tbaa !856
  br label %.invoke.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.du = load i8, ptr %i.aj, align 1, !tbaa !851, !range !171, !noundef !172
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.dw = load i64, ptr %i.al, align 8, !tbaa !852
  %i.dx = getelementptr inbounds i8, ptr %i.di, i64 %i.dw
  store ptr %i.dx, ptr %i.y, align 8, !tbaa !836
  %i.dy = load i32, ptr %i.am, align 8, !tbaa !853
  %.not.i.i86.i.i.i.i = icmp slt i32 %i.dq, %i.dy
  br i1 %.not.i.i86.i.i.i.i, label %bb.s, label %bb.l, !prof !55

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(156) %2)
          to label %bb.s unwind label %bb.t

bb.m:                                             ; preds = %bb.j
  %i.dz = load i8, ptr %i.ak, align 2, !tbaa !854, !range !171, !noundef !172
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eb = load i64, ptr %i.al, align 8, !tbaa !852
  %i.ec = getelementptr inbounds i8, ptr %i.di, i64 %i.eb
  store ptr %i.ec, ptr %i.y, align 8, !tbaa !836
  %i.ed = load i32, ptr %i.am, align 8, !tbaa !853
  %i.ee = icmp slt i32 %i.dq, %i.ed               ; 3 uses
  %i.ef = load i32, ptr %i.an, align 4
  %i.eg = icmp sge i32 %i.dq, %i.ef
  %not..i.i.i.i.i.i = xor i1 %i.ee, true
  %or.cond.i.i.i.i.i.i = select i1 %not..i.i.i.i.i.i, i1 true, i1 %i.eg, !prof !855
  %i.eh = load ptr, ptr %i.ao, align 8
  %i.ei = icmp eq ptr %i.eh, null
  %i.ej = select i1 %or.cond.i.i.i.i.i.i, i1 true, i1 %i.ei, !prof !855
  br i1 %i.ej, label %bb.o, label %bb.s, !prof !136

bb.o:                                             ; preds = %bb.n
  %i.ek = load ptr, ptr %2, align 8, !tbaa !832
  %i.el = load i32, ptr %i.ac, align 8, !tbaa !849
  %i.em = load i32, ptr %i.af, align 4, !tbaa !856
  %i.en = load i32, ptr %i.at, align 8, !tbaa !857
  %i.eo = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i32 noundef %i.dq, i32 noundef %i.el, i32 noundef %i.em, ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %i.an, ptr noundef nonnull align 1 dereferenceable(1) %i.as, i1 noundef zeroext %i.ee, i32 noundef %i.en)
          to label %.noexc88.i.i.i.i unwind label %bb.t

.noexc88.i.i.i.i:                                 ; preds = %bb.o
  %i.ep = zext i1 %i.ee to i8
  store ptr %i.eo, ptr %i.y, align 8, !tbaa !836
  store i8 %i.ep, ptr %i.ai, align 1, !tbaa !850
  br label %bb.s

bb.p:                                             ; preds = %bb.h
  %i.eq = load i32, ptr %i.ab, align 4, !tbaa !858 ; 3 uses
  store i32 %i.eq, ptr %i.z, align 4, !tbaa !844
  %i.er = load i32, ptr %i.ac, align 8, !tbaa !849
  %i.es = add nsw i32 %i.er, 1                    ; 3 uses
  store i32 %i.es, ptr %i.ac, align 8, !tbaa !849
  %i.et = load i32, ptr %i.ad, align 8, !tbaa !859
  %.not.i85.i.i.i.i = icmp slt i32 %i.es, %i.et
  %.pre132.i.i.i.i = load i32, ptr %i.af, align 4, !tbaa !856 ; 2 uses
  br i1 %.not.i85.i.i.i.i, label %.invoke.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eu = load i32, ptr %i.ae, align 4, !tbaa !860 ; 2 uses
  store i32 %i.eu, ptr %i.ac, align 8, !tbaa !849
  %i.ev = add nsw i32 %.pre132.i.i.i.i, 1         ; 3 uses
  store i32 %i.ev, ptr %i.af, align 4, !tbaa !856
  %i.ew = load i32, ptr %i.ag, align 8, !tbaa !861
  %.not1.i.i.i.i.i = icmp slt i32 %i.ev, %i.ew
  br i1 %.not1.i.i.i.i.i, label %.invoke.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr %i.ah, align 8, !tbaa !862
  br label %bb.s

.invoke.i.i.i.i:                                  ; preds = %bb.q, %bb.p, %._crit_edge.i.i.i.i.i, %bb.g
  %i.ex = phi i32 [ %i.do, %bb.g ], [ %i.eq, %bb.p ], [ %i.eq, %bb.q ], [ %i.dq, %._crit_edge.i.i.i.i.i ]
  %i.ey = phi i32 [ %i.dp, %bb.g ], [ %i.es, %bb.p ], [ %i.eu, %bb.q ], [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  %i.ez = phi i32 [ 0, %bb.g ], [ %.pre132.i.i.i.i, %bb.p ], [ %i.ev, %bb.q ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(156) %2, i32 noundef %i.ex, i32 noundef %i.ey, i32 noundef %i.ez)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.invoke.i.i.i.i, %bb.r, %.noexc88.i.i.i.i, %bb.n, %bb.m, %bb.l, %bb.k
  %i.fa = uitofp i8 %i.dj to float
  %i.fb = fmul nnan float %i.fa, f0x3B808081
  %i.fc = load i32, ptr %i.u, align 8, !tbaa !945
  %i.fd = add nsw i32 %i.fc, 1                    ; 2 uses
  %i.fe = icmp eq i32 %i.fd, 2
  %spec.select.i.i.i.i.i = select i1 %i.fe, i32 0, i32 %i.fd ; 2 uses
  store i32 %spec.select.i.i.i.i.i, ptr %i.u, align 8, !tbaa !945
  %i.ff = fmul float %i.dh, %i.fb
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.x, i64 %indvars.iv120.i.i.i.i
  store float %i.ff, ptr %i.fg, align 4, !tbaa !53
  %indvars.iv.next121.i.i.i.i = add nsw i64 %indvars.iv120.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv120.i.i.i.i, %smax65.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !965

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.an, %.preheader.i.i.i.i
  %i.fi = load ptr, ptr %i.au, align 8, !tbaa !966 ; 7 uses
  %i.fj = load ptr, ptr %i.av, align 8, !tbaa !967
  %.not.i.i.i.i.i = icmp eq ptr %i.fi, %i.fj
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(156) %i.fi, ptr noundef nonnull align 8 dereferenceable(156) %2)
          to label %.noexc81.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.u
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.fk, ptr noundef nonnull align 8 dereferenceable(28) %i.u, i64 28, i1 false)
  %i.fl = load ptr, ptr %i.au, align 8, !tbaa !966
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 160
  store ptr %i.fm, ptr %i.au, align 8, !tbaa !966
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !935 ; 6 uses
  %i.fn = ptrtoint ptr %i.fi to i64
  %i.fo = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.fp = sub i64 %i.fn, %i.fo                    ; 3 uses
  %i.fq = icmp eq i64 %i.fp, 9223372036854775680
  br i1 %i.fq, label %bb.w, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc82.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc82.i.i.i.i:                                 ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.fr = sdiv exact i64 %i.fp, 160               ; 3 uses
  %i.fs = icmp eq ptr %i.fi, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.fs, i64 1, i64 %i.fr
  %i.ft = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.fr ; 2 uses
  %i.fu = icmp ult i64 %i.ft, %i.fr
  %i.fv = call i64 @llvm.umin.i64(i64 %i.ft, i64 57646075230342348)
  %i.fw = select i1 %i.fu, i64 57646075230342348, i64 %i.fv ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.fw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.fx = mul nuw nsw i64 %i.fw, 160              ; 2 uses
  %i.fy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fx) #32
          to label %.noexc83.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc83.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fp ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(156) %i.fz, ptr noundef nonnull align 8 dereferenceable(156) %2)
          to label %bb.x unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i

bb.x:                                             ; preds = %.noexc83.i.i.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ga, ptr noundef nonnull align 8 dereferenceable(28) %i.u, i64 28, i1 false)
  br i1 %i.fs, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.x
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 160
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.x, %bb.y
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gf, %bb.y ], [ %i.fy, %bb.x ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ge, %bb.y ], [ %.val.i.i.i.i.i.i, %bb.x ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(156) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(156) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gd = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.gc, ptr noundef nonnull align 8 dereferenceable(28) %i.gd, i64 28, i1 false)
  %i.ge = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 160 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 160
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ge, %i.fi
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !968

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gg = landingpad { ptr, i32 }
          catch ptr null
  %i.gh = extractvalue { ptr, i32 } %i.gg, 0
  %i.gi = call ptr @__cxa_begin_catch(ptr %i.gh) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_(ptr noundef nonnull %i.fy, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gk = landingpad { ptr, i32 }
          catch ptr null
  %i.gl = extractvalue { ptr, i32 } %i.gk, 0
  call void @__clang_call_terminate(ptr %i.gl) #33
  unreachable

bb.ac:                                            ; preds = %bb.z
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.y
  %i.gm = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 320
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.gr, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !888
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(156) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  call void @__clang_call_terminate(ptr %i.gq) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 160 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gr, %i.fi
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !969

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i
  %i.gs = phi ptr [ %i.gb, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.gm, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  %i.gt = load ptr, ptr %i.av, align 8, !tbaa !967
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = sub i64 %i.gu, %i.fo
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.gv) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc83.i.i.i.i
  %i.gw = landingpad { ptr, i32 }
          catch ptr null
  %i.gx = extractvalue { ptr, i32 } %i.gw, 0
  %i.gy = call ptr @__cxa_begin_catch(ptr %i.gx) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.aa
  %i.gz = extractvalue { ptr, i32 } %i.gj, 0
  %i.ha = call ptr @__cxa_begin_catch(ptr %i.gz) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(156) dereferenceable(156) %i.fz) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  %i.hb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.ah

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fy, i64 noundef %i.fx) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.ai unwind label %bb.ag

bb.ah:                                            ; preds = %bb.ag
  %i.hc = landingpad { ptr, i32 }
          catch ptr null
  %i.hd = extractvalue { ptr, i32 } %i.hc, 0
  call void @__clang_call_terminate(ptr %i.hd) #33
  unreachable

bb.ai:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.af, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  store ptr %i.fy, ptr %4, align 8, !tbaa !935
  store ptr %i.gs, ptr %i.au, align 8, !tbaa !966
  %i.he = getelementptr inbounds nuw [160 x i8], ptr %i.fy, i64 %i.fw
  store ptr %i.he, ptr %i.av, align 8, !tbaa !967
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.an, %.lr.ph106.i.i.i.i
  %indvars.iv128.i.i.i.i = phi i64 [ 0, %.lr.ph106.i.i.i.i ], [ %indvars.iv.next129.i.i.i.i, %bb.an ] ; 3 uses
  %indvars.iv126.i.i.i.i = phi i32 [ %i.cg, %.lr.ph106.i.i.i.i ], [ %indvars.iv.next127.i.i.i.i, %bb.an ] ; 2 uses
  %indvars.iv123.i.i.i.i = phi i32 [ %i.cf, %.lr.ph106.i.i.i.i ], [ %indvars.iv.next124.i.i.i.i, %bb.an ] ; 3 uses
  %smax125.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv123.i.i.i.i, i32 0)
  %i.hf = add i32 %smax125.i.i.i.i, %indvars.iv126.i.i.i.i
  %i.hg = and i32 %i.hf, -2
  %i.hh = add i32 %i.hg, %indvars.iv123.i.i.i.i   ; 3 uses
  %i.hi = add nuw nsw i32 %i.hh, %spec.store.select.i.i.i.i ; 2 uses
  %i.hj = icmp slt i32 %i.hi, 3
  br i1 %i.hj, label %bb.ak, label %bb.al

end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv:bb.a
  %i.m = load float, ptr %i.l, align 4, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !836
  %i.p = load i16, ptr %i.o, align 2, !tbaa !1004 ; 2 uses
  %i.q = zext i16 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 13
  %i.s = and i32 %i.r, 268427264                  ; 6 uses
  %.signext.i.i.i.i.i = sext i16 %i.p to i32
  %i.t = and i32 %.signext.i.i.i.i.i, -2147483648 ; 3 uses
  %i.u = icmp samesign ugt i32 %i.s, 8388607
  br i1 %i.u, label %bb.b, label %bb.e, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.v = or disjoint i32 %i.s, %i.t               ; 2 uses
  %i.w = icmp samesign ult i32 %i.s, 260046848
  br i1 %i.w, label %bb.c, label %bb.d, !prof !55

bb.c:                                             ; preds = %bb.b
  %i.x = add nuw nsw i32 %i.v, 939524096
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit

bb.d:                                             ; preds = %bb.b
  %i.y = or i32 %i.v, 2139095040
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit

bb.e:                                             ; preds = %bb.a
  %.not.i.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.s, i1 true)
  %i.aa = add nsw i32 %i.z, -8                    ; 2 uses
  %i.ab = shl i32 %i.s, %i.aa
  %i.ac = or i32 %i.t, %i.ab
  %i.ad = or i32 %i.ac, 947912704
  %i.ae = shl nuw nsw i32 %i.aa, 23
  %i.af = sub nuw i32 %i.ad, %i.ae
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit

_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.i.i.i.i.i = phi i32 [ %i.x, %bb.c ], [ %i.y, %bb.d ], [ %i.af, %bb.f ], [ %i.t, %bb.e ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !844 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !845, !noalias !1006
  %i.ak = add nsw i32 %i.aj, -1
  %i.al = icmp eq i32 %i.ah, %i.ak
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit
  %i.am = add nsw i32 %i.ah, -1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !849
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %0, i32 noundef %i.am, i32 noundef %i.ao, i32 noundef 0)
  br label %bb.i

bb.h:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %0)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ap = bitcast i32 %.sroa.0.0.i.i.i.i.i to float
  %i.aq = load i32, ptr %i.g, align 8, !tbaa !1003
  %i.ar = add nsw i32 %i.aq, 1                    ; 2 uses
  %i.as = icmp eq i32 %i.ar, 2
  %spec.select = select i1 %i.as, i32 0, i32 %i.ar
  store i32 %spec.select, ptr %i.g, align 8, !tbaa !1003
  %i.at = fmul float %i.m, %i.ap
  ret float %i.at
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKSB_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<float, Imath_3_1::half, 2, 3, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Window::Row", align 8 ; 37 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 8 uses
  %4 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<float, Imath_3_1::half, 2, 3, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Window", align 8 ; 21 uses
  %5 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<float, Imath_3_1::half, 2, 3, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Context", align 8 ; 11 uses
  %6 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 10 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !58    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1009 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.d = load ptr, ptr %.val, align 8, !tbaa !1011, !nonnull !172, !align !336
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0, i1 noundef zeroext true)
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !868  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !867
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %.lr.ph55.i.i.i, label %._crit_edge56.i.i.i

.lr.ph55.i.i.i:                                   ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 132 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br label %bb.d

._crit_edge56.i.i.i:                              ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !888
  %.not.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfNS1_3ROIEiEUlSG_E_JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge56.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfNS1_3ROIEiEUlSG_E_JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #33
  unreachable

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %.lr.ph55.i.i.i
  %.01753.i.i.i = phi i32 [ %i.f, %.lr.ph55.i.i.i ], [ %i.ko, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.bh = load i32, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !1012, !nonnull !172, !align !336 ; 3 uses
  %i.bj = load i32, ptr %i.k, align 8, !tbaa !976
  %i.bk = load i32, ptr %i.l, align 4, !tbaa !978
  %i.bl = load ptr, ptr %i.m, align 8, !tbaa !1013, !nonnull !172, !align !315 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %4, i8 0, i64 24, i1 false)
  %i.bm = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi)
          to label %.preheader92.i.i.i.i unwind label %bb.e ; 4 uses

.preheader92.i.i.i.i:                             ; preds = %bb.d
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !891 ; 3 uses
  store i32 %i.bn, ptr %i.n, align 4, !tbaa !1014
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !897
  %i.bq = add nsw i32 %i.bp, %i.bn
  store i32 %i.bq, ptr %i.o, align 8, !tbaa !1019
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !899 ; 2 uses
  store i32 %i.bs, ptr %i.p, align 4, !tbaa !1020
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !901
  %i.bv = add nsw i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.q, align 8, !tbaa !1021
  store i32 0, ptr %i.r, align 8, !tbaa !3
  store i32 1, ptr %i.s, align 4, !tbaa !3
  store i32 2, ptr %i.t, align 8, !tbaa !3
  %i.bw = sub i32 %i.bn, %i.bh                    ; 4 uses
  %i.bx = call i32 @llvm.smax.i32(i32 %i.bw, i32 -1) ; 4 uses
  %spec.store.select.i.i.i.i = add i32 %i.bx, 1   ; 2 uses
  %i.by = add i32 %i.bx, %i.bh                    ; 3 uses
  %i.bz = add nsw i32 %i.by, %i.bj
  %i.ca = srem i32 %i.bz, 2                       ; 3 uses
  %i.cb = icmp slt i32 %i.bw, 2
  %.not76104.i.i.i.i = icmp slt i32 %i.bw, 0
  %i.cc = add i32 %.01753.i.i.i, -1
  %i.cd = sub i32 2, %.01753.i.i.i
  %i.ce = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cf = xor i32 %i.bx, -1
  %i.cg = add i32 %i.bx, 2
  %i.ch = add i32 %i.bw, 1
  %wide.trip.count.i.i.i.i = zext i32 %i.ch to i64
  %smax66.i.i.i = call i64 @llvm.smax.i64(i64 %i.ce, i64 2)
  br label %.preheader91.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.preheader91.i.i.i.i:                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, %.preheader92.i.i.i.i
  %indvars.iv.i.i.i = phi i32 [ %indvars.iv.next.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %.01753.i.i.i, %.preheader92.i.i.i.i ] ; 2 uses
  %indvars.iv118.i.i.i.i = phi i32 [ %indvars.iv.next119.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.cd, %.preheader92.i.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i.i = phi i32 [ %indvars.iv.next.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.cc, %.preheader92.i.i.i.i ] ; 3 uses
  %.074107.i.i.i.i = phi i32 [ %i.it, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ 0, %.preheader92.i.i.i.i ]
  %i.cj = load i32, ptr %i.p, align 4, !tbaa !1020
  %i.ck = load i32, ptr %i.q, align 8, !tbaa !1021
  %smax.i.i.i = call i32 @llvm.smax.i32(i32 %i.cj, i32 %indvars.iv.i.i.i.i)
  %i.cl = add i32 %smax.i.i.i, %indvars.iv118.i.i.i.i
  %i.cm = and i32 %i.cl, -2                       ; 2 uses
  %i.cn = add i32 %i.cm, %indvars.iv.i.i.i.i      ; 2 uses
  %i.co = add i32 %i.cm, %indvars.iv.i.i.i
  %i.cp = add i32 %i.ck, -1
  %smin.i.i.i = call i32 @llvm.smin.i32(i32 %i.cn, i32 %i.cp)
  %i.cq = sub i32 %i.co, %smin.i.i.i
  %i.cr = and i32 %i.cq, -2
  %i.cs = sub i32 %i.cn, %i.cr                    ; 3 uses
  %i.ct = add nsw i32 %i.cs, %i.bk
  %i.cu = srem i32 %i.ct, 2                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_iiiNS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i32 noundef %i.by, i32 noundef %i.cs, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.f

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %.preheader91.i.i.i.i
  store i32 %i.ca, ptr %i.u, align 8, !tbaa !1003
  store i32 %i.cu, ptr %i.v, align 4, !tbaa !1002
  store ptr %i.bl, ptr %i.w, align 8, !tbaa !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.x, i8 0, i64 12, i1 false)
  br i1 %i.cb, label %.lr.ph.i.i.i.i, label %.lr.ph106.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.x
  br i1 %.not76104.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph106.i.i.i.i

.lr.ph106.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL17bayer_channel_mapE, i64 %i.cv
  br label %bb.ao

bb.f:                                             ; preds = %.preheader91.i.i.i.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.x
  %i.cy = phi i32 [ %spec.select.i.i.i.i.i, %bb.x ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv120.i.i.i.i = phi i64 [ %indvars.iv.next121.i.i.i.i, %bb.x ], [ %i.ce, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
  %i.cz = load ptr, ptr %i.w, align 8, !tbaa !999, !nonnull !172, !align !315
  %i.da = load i32, ptr %i.v, align 4, !tbaa !1002
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL17bayer_channel_mapE, i64 %i.db
  %i.dd = sext i32 %i.cy to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !180
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.df
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !53
  %i.di = load ptr, ptr %i.y, align 8, !tbaa !836 ; 3 uses
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !1004 ; 2 uses
  %i.dk = zext i16 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 13
  %i.dm = and i32 %i.dl, 268427264                ; 6 uses
  %.signext.i.i.i.i.i.i.i.i.i.i = sext i16 %i.dj to i32
  %i.dn = and i32 %.signext.i.i.i.i.i.i.i.i.i.i, -2147483648 ; 3 uses
  %i.do = icmp samesign ugt i32 %i.dm, 8388607
  br i1 %i.do, label %bb.g, label %bb.j, !prof !55

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dp = or disjoint i32 %i.dm, %i.dn            ; 2 uses
  %i.dq = icmp samesign ult i32 %i.dm, 260046848
  br i1 %i.dq, label %bb.h, label %bb.i, !prof !55

bb.h:                                             ; preds = %bb.g
  %i.dr = add nuw nsw i32 %i.dp, 939524096
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ds = or i32 %i.dp, 2139095040
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.dm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dt = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.dm, i1 true)
  %i.du = add nsw i32 %i.dt, -8                   ; 2 uses
  %i.dv = shl i32 %i.dm, %i.du
  %i.dw = or i32 %i.dn, %i.dv
  %i.dx = or i32 %i.dw, 947912704
  %i.dy = shl nuw nsw i32 %i.du, 23
  %i.dz = sub nuw i32 %i.dx, %i.dy
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.dr, %bb.h ], [ %i.ds, %bb.i ], [ %i.dz, %bb.k ], [ %i.dn, %bb.j ]
  %i.ea = load i32, ptr %i.z, align 4, !tbaa !844 ; 3 uses
  %i.eb = load i32, ptr %i.aa, align 8, !tbaa !845, !noalias !1022 ; 2 uses
  %i.ec = add nsw i32 %i.eb, -1
  %i.ed = icmp eq i32 %i.ea, %i.ec
  br i1 %i.ed, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i
  %i.ee = add nsw i32 %i.ea, -1
  %i.ef = load i32, ptr %i.ac, align 8, !tbaa !849
  br label %.invoke.i.i.i.i

bb.m:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i
  %i.eg = add nsw i32 %i.ea, 1                    ; 7 uses
  store i32 %i.eg, ptr %i.z, align 4, !tbaa !844
  %i.eh = icmp slt i32 %i.eg, %i.eb
  br i1 %i.eh, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.ei = load i8, ptr %i.ai, align 1, !tbaa !850, !range !171, !noundef !172
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.o, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.n
  %.pre.i.i.i.i.i = load i32, ptr %i.ac, align 8, !tbaa !849
  %.pre.i.i.i.i = load i32, ptr %i.af, align 4, !tbaa !856
  br label %.invoke.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.ek = load i8, ptr %i.aj, align 1, !tbaa !851, !range !171, !noundef !172
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.em = load i64, ptr %i.al, align 8, !tbaa !852
  %i.en = getelementptr inbounds i8, ptr %i.di, i64 %i.em
  store ptr %i.en, ptr %i.y, align 8, !tbaa !836
  %i.eo = load i32, ptr %i.am, align 8, !tbaa !853
  %.not.i.i86.i.i.i.i = icmp slt i32 %i.eg, %i.eo
  br i1 %.not.i.i86.i.i.i.i, label %bb.x, label %bb.q, !prof !55

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(156) %2)
          to label %bb.x unwind label %bb.y

bb.r:                                             ; preds = %bb.o
  %i.ep = load i8, ptr %i.ak, align 2, !tbaa !854, !range !171, !noundef !172
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.er = load i64, ptr %i.al, align 8, !tbaa !852
  %i.es = getelementptr inbounds i8, ptr %i.di, i64 %i.er
  store ptr %i.es, ptr %i.y, align 8, !tbaa !836
  %i.et = load i32, ptr %i.am, align 8, !tbaa !853
  %i.eu = icmp slt i32 %i.eg, %i.et               ; 3 uses
  %i.ev = load i32, ptr %i.an, align 4
  %i.ew = icmp sge i32 %i.eg, %i.ev
  %not..i.i.i.i.i.i = xor i1 %i.eu, true
  %or.cond.i.i.i.i.i.i = select i1 %not..i.i.i.i.i.i, i1 true, i1 %i.ew, !prof !855
  %i.ex = load ptr, ptr %i.ao, align 8
  %i.ey = icmp eq ptr %i.ex, null
  %i.ez = select i1 %or.cond.i.i.i.i.i.i, i1 true, i1 %i.ey, !prof !855
  br i1 %i.ez, label %bb.t, label %bb.x, !prof !136

bb.t:                                             ; preds = %bb.s
  %i.fa = load ptr, ptr %2, align 8, !tbaa !832
  %i.fb = load i32, ptr %i.ac, align 8, !tbaa !849
  %i.fc = load i32, ptr %i.af, align 4, !tbaa !856
  %i.fd = load i32, ptr %i.at, align 8, !tbaa !857
  %i.fe = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.fa, i32 noundef %i.eg, i32 noundef %i.fb, i32 noundef %i.fc, ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %i.an, ptr noundef nonnull align 1 dereferenceable(1) %i.as, i1 noundef zeroext %i.eu, i32 noundef %i.fd)
          to label %.noexc88.i.i.i.i unwind label %bb.y

.noexc88.i.i.i.i:                                 ; preds = %bb.t
  %i.ff = zext i1 %i.eu to i8
  store ptr %i.fe, ptr %i.y, align 8, !tbaa !836
  store i8 %i.ff, ptr %i.ai, align 1, !tbaa !850
  br label %bb.x

bb.u:                                             ; preds = %bb.m
  %i.fg = load i32, ptr %i.ab, align 4, !tbaa !858 ; 3 uses
  store i32 %i.fg, ptr %i.z, align 4, !tbaa !844
  %i.fh = load i32, ptr %i.ac, align 8, !tbaa !849
  %i.fi = add nsw i32 %i.fh, 1                    ; 3 uses
  store i32 %i.fi, ptr %i.ac, align 8, !tbaa !849
  %i.fj = load i32, ptr %i.ad, align 8, !tbaa !859
  %.not.i85.i.i.i.i = icmp slt i32 %i.fi, %i.fj
  %.pre132.i.i.i.i = load i32, ptr %i.af, align 4, !tbaa !856 ; 2 uses
  br i1 %.not.i85.i.i.i.i, label %.invoke.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fk = load i32, ptr %i.ae, align 4, !tbaa !860 ; 2 uses
  store i32 %i.fk, ptr %i.ac, align 8, !tbaa !849
  %i.fl = add nsw i32 %.pre132.i.i.i.i, 1         ; 3 uses
  store i32 %i.fl, ptr %i.af, align 4, !tbaa !856
  %i.fm = load i32, ptr %i.ag, align 8, !tbaa !861
  %.not1.i.i.i.i.i = icmp slt i32 %i.fl, %i.fm
  br i1 %.not1.i.i.i.i.i, label %.invoke.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 0, ptr %i.ah, align 8, !tbaa !862
  br label %bb.x

.invoke.i.i.i.i:                                  ; preds = %bb.v, %bb.u, %._crit_edge.i.i.i.i.i, %bb.l
  %i.fn = phi i32 [ %i.ee, %bb.l ], [ %i.fg, %bb.u ], [ %i.fg, %bb.v ], [ %i.eg, %._crit_edge.i.i.i.i.i ]
  %i.fo = phi i32 [ %i.ef, %bb.l ], [ %i.fi, %bb.u ], [ %i.fk, %bb.v ], [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  %i.fp = phi i32 [ 0, %bb.l ], [ %.pre132.i.i.i.i, %bb.u ], [ %i.fl, %bb.v ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(156) %2, i32 noundef %i.fn, i32 noundef %i.fo, i32 noundef %i.fp)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %.invoke.i.i.i.i, %bb.w, %.noexc88.i.i.i.i, %bb.s, %bb.r, %bb.q, %bb.p
  %i.fq = bitcast i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i to float
  %i.fr = load i32, ptr %i.u, align 8, !tbaa !1003
  %i.fs = add nsw i32 %i.fr, 1                    ; 2 uses
  %i.ft = icmp eq i32 %i.fs, 2
  %spec.select.i.i.i.i.i = select i1 %i.ft, i32 0, i32 %i.fs ; 2 uses
  store i32 %spec.select.i.i.i.i.i, ptr %i.u, align 8, !tbaa !1003
  %i.fu = fmul float %i.dh, %i.fq
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.x, i64 %indvars.iv120.i.i.i.i
  store float %i.fu, ptr %i.fv, align 4, !tbaa !53
  %indvars.iv.next121.i.i.i.i = add nsw i64 %indvars.iv120.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv120.i.i.i.i, %smax66.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1025

bb.y:                                             ; preds = %.invoke.i.i.i.i, %bb.t, %bb.q
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.as, %.preheader.i.i.i.i
  %i.fx = load ptr, ptr %i.au, align 8, !tbaa !1026 ; 7 uses
  %i.fy = load ptr, ptr %i.av, align 8, !tbaa !1027
  %.not.i.i.i.i.i = icmp eq ptr %i.fx, %i.fy
  br i1 %.not.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(156) %i.fx, ptr noundef nonnull align 8 dereferenceable(156) %2)
          to label %.noexc81.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.z
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.fz, ptr noundef nonnull align 8 dereferenceable(28) %i.u, i64 28, i1 false)
  %i.ga = load ptr, ptr %i.au, align 8, !tbaa !1026
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 160
  store ptr %i.gb, ptr %i.au, align 8, !tbaa !1026
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !993 ; 6 uses
  %i.gc = ptrtoint ptr %i.fx to i64
  %i.gd = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.ge = sub i64 %i.gc, %i.gd                    ; 3 uses
  %i.gf = icmp eq i64 %i.ge, 9223372036854775680
  br i1 %i.gf, label %bb.ab, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc82.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc82.i.i.i.i:                                 ; preds = %bb.ab
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.aa
  %i.gg = sdiv exact i64 %i.ge, 160               ; 3 uses
  %i.gh = icmp eq ptr %i.fx, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.gh, i64 1, i64 %i.gg
  %i.gi = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.gg ; 2 uses
  %i.gj = icmp ult i64 %i.gi, %i.gg
  %i.gk = call i64 @llvm.umin.i64(i64 %i.gi, i64 57646075230342348)
  %i.gl = select i1 %i.gj, i64 57646075230342348, i64 %i.gk ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.gl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.gm = mul nuw nsw i64 %i.gl, 160              ; 2 uses
  %i.gn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gm) #32
          to label %.noexc83.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc83.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.ge ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(156) %i.go, ptr noundef nonnull align 8 dereferenceable(156) %2)
          to label %bb.ac unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i.i

bb.ac:                                            ; preds = %.noexc83.i.i.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.gp, ptr noundef nonnull align 8 dereferenceable(28) %i.u, i64 28, i1 false)
  br i1 %i.gh, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.ac
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 160
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ac, %bb.ad
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gu, %bb.ad ], [ %i.gn, %bb.ac ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gt, %bb.ad ], [ %.val.i.i.i.i.i.i, %bb.ac ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(156) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(156) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gs = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.gr, ptr noundef nonnull align 8 dereferenceable(28) %i.gs, i64 28, i1 false)
  %i.gt = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 160 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 160
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gt, %i.fx
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1028

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gv = landingpad { ptr, i32 }
          catch ptr null
  %i.gw = extractvalue { ptr, i32 } %i.gv, 0
  %i.gx = call ptr @__cxa_begin_catch(ptr %i.gw) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SC_(ptr noundef nonnull %i.gn, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ah unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gy = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gz = landingpad { ptr, i32 }
          catch ptr null
  %i.ha = extractvalue { ptr, i32 } %i.gz, 0
  call void @__clang_call_terminate(ptr %i.ha) #33
  unreachable

bb.ah:                                            ; preds = %bb.ae
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.ad
  %i.hb = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 320
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.hg, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !888
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(156) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.he = landingpad { ptr, i32 }
          catch ptr null
  %i.hf = extractvalue { ptr, i32 } %i.he, 0
  call void @__clang_call_terminate(ptr %i.hf) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ai, %.lr.ph.i.i.i.i.i.i.i.i
  %i.hg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 160 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.hg, %i.fx
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1029

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i
  %i.hh = phi ptr [ %i.gq, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.hb, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i
  %i.hi = load ptr, ptr %i.av, align 8, !tbaa !1027
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = sub i64 %i.hj, %i.gd
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.hk) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc83.i.i.i.i
  %i.hl = landingpad { ptr, i32 }
          catch ptr null
  %i.hm = extractvalue { ptr, i32 } %i.hl, 0
  %i.hn = call ptr @__cxa_begin_catch(ptr %i.hm) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.af
  %i.ho = extractvalue { ptr, i32 } %i.gy, 0
  %i.hp = call ptr @__cxa_begin_catch(ptr %i.ho) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(156) dereferenceable(156) %i.go) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i

bb.al:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i
  %i.hq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.am

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gn, i64 noundef %i.gm) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.an unwind label %bb.al

bb.am:                                            ; preds = %bb.al
  %i.hr = landingpad { ptr, i32 }
          catch ptr null
  %i.hs = extractvalue { ptr, i32 } %i.hr, 0
  call void @__clang_call_terminate(ptr %i.hs) #33
  unreachable

bb.an:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.ak, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i
  store ptr %i.gn, ptr %4, align 8, !tbaa !993
  store ptr %i.hh, ptr %i.au, align 8, !tbaa !1026
  %i.ht = getelementptr inbounds nuw [160 x i8], ptr %i.gn, i64 %i.gl
  store ptr %i.ht, ptr %i.av, align 8, !tbaa !1027
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i

bb.ao:                                            ; preds = %bb.as, %.lr.ph106.i.i.i.i
  %indvars.iv128.i.i.i.i = phi i64 [ 0, %.lr.ph106.i.i.i.i ], [ %indvars.iv.next129.i.i.i.i, %bb.as ] ; 3 uses
  %indvars.iv126.i.i.i.i = phi i32 [ %i.cg, %.lr.ph106.i.i.i.i ], [ %indvars.iv.next127.i.i.i.i, %bb.as ] ; 2 uses
  %indvars.iv123.i.i.i.i = phi i32 [ %i.cf, %.lr.ph106.i.i.i.i ], [ %indvars.iv.next124.i.i.i.i, %bb.as ] ; 3 uses
  %smax125.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv123.i.i.i.i, i32 0)
  %i.hu = add i32 %smax125.i.i.i.i, %indvars.iv126.i.i.i.i
  %i.hv = and i32 %i.hu, -2
  %i.hw = add i32 %i.hv, %indvars.iv123.i.i.i.i   ; 3 uses
  %i.hx = add nuw nsw i32 %i.hw, %spec.store.select.i.i.i.i ; 2 uses
  %i.hy = icmp slt i32 %i.hx, 3
  br i1 %i.hy, label %bb.ap, label %bb.aq

end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window6updateEv:bb.a
bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit
  %i.bj = add nsw i32 %i.be, -1
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.1, i64 224
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !849
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(156) %i.am, i32 noundef %i.bj, i32 noundef %i.bl, i32 noundef 0)
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.1

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.1: ; preds = %bb.e, %bb.d
  %i.bm = uitofp i16 %i.bc to float
  %i.bn = fmul nnan float %i.bm, f0x37800080
  %i.bo = load i32, ptr %i.at, align 8, !tbaa !1063
  %i.bp = add nsw i32 %i.bo, 1                    ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 2
  %spec.select.i.1 = select i1 %i.bq, i32 0, i32 %i.bp
  store i32 %spec.select.i.1, ptr %i.at, align 8, !tbaa !1063
  %i.br = fmul float %i.az, %i.bn
  %i.bs = getelementptr inbounds nuw i8, ptr %.val.1, i64 304
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.e
  store float %i.br, ptr %i.bt, align 4, !tbaa !53
  %.val.2 = load ptr, ptr %0, align 8, !tbaa !1053 ; 9 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.val.2, i64 320 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.2, i64 456
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1059, !nonnull !172, !align !315
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.2, i64 452
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !1062
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL17bayer_channel_mapE, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %.val.2, i64 448 ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !1063
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !180
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.cf
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !53
  %i.ci = getelementptr inbounds nuw i8, ptr %.val.2, i64 432
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !836
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !1064
  %i.cl = getelementptr inbounds nuw i8, ptr %.val.2, i64 380
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !844 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.val.2, i64 360
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !845, !noalias !1065
  %i.cp = add nsw i32 %i.co, -1
  %i.cq = icmp eq i32 %i.cm, %i.cp
  br i1 %i.cq, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.1
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(156) %i.bu)
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.2

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.1
  %i.cr = add nsw i32 %i.cm, -1
  %i.cs = getelementptr inbounds nuw i8, ptr %.val.2, i64 384
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !849
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(156) %i.bu, i32 noundef %i.cr, i32 noundef %i.ct, i32 noundef 0)
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.2

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.2: ; preds = %bb.g, %bb.f
  %i.cu = uitofp i16 %i.ck to float
  %i.cv = fmul nnan float %i.cu, f0x37800080
  %i.cw = load i32, ptr %i.cb, align 8, !tbaa !1063
  %i.cx = add nsw i32 %i.cw, 1                    ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 2
  %spec.select.i.2 = select i1 %i.cy, i32 0, i32 %i.cx
  store i32 %spec.select.i.2, ptr %i.cb, align 8, !tbaa !1063
  %i.cz = fmul float %i.ch, %i.cv
  %i.da = getelementptr inbounds nuw i8, ptr %.val.2, i64 464
  %i.db = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.e
  store float %i.cz, ptr %i.db, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<float, unsigned short, 2, 3, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Window::Row", align 8 ; 37 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 8 uses
  %4 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<float, unsigned short, 2, 3, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Window", align 8 ; 21 uses
  %5 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<float, unsigned short, 2, 3, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Context", align 8 ; 11 uses
  %6 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 10 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !58    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1068 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.d = load ptr, ptr %.val, align 8, !tbaa !1070, !nonnull !172, !align !336
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0, i1 noundef zeroext true)
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !868  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !867
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %.lr.ph54.i.i.i, label %._crit_edge55.i.i.i

.lr.ph54.i.i.i:                                   ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 132 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br label %bb.d

._crit_edge55.i.i.i:                              ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !888
  %.not.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS7_RA4_KfNS1_3ROIEiEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge55.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS7_RA4_KfNS1_3ROIEiEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #33
  unreachable

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %.lr.ph54.i.i.i
  %.01752.i.i.i = phi i32 [ %i.f, %.lr.ph54.i.i.i ], [ %i.jz, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.bh = load i32, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !1071, !nonnull !172, !align !336 ; 3 uses
  %i.bj = load i32, ptr %i.k, align 8, !tbaa !1036
  %i.bk = load i32, ptr %i.l, align 4, !tbaa !1038
  %i.bl = load ptr, ptr %i.m, align 8, !tbaa !1072, !nonnull !172, !align !315 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %4, i8 0, i64 24, i1 false)
  %i.bm = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi)
          to label %.preheader92.i.i.i.i unwind label %bb.e ; 4 uses

.preheader92.i.i.i.i:                             ; preds = %bb.d
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !891 ; 3 uses
  store i32 %i.bn, ptr %i.n, align 4, !tbaa !1073
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !897
  %i.bq = add nsw i32 %i.bp, %i.bn
  store i32 %i.bq, ptr %i.o, align 8, !tbaa !1078
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !899 ; 2 uses
  store i32 %i.bs, ptr %i.p, align 4, !tbaa !1079
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !901
  %i.bv = add nsw i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.q, align 8, !tbaa !1080
  store i32 0, ptr %i.r, align 8, !tbaa !3
  store i32 1, ptr %i.s, align 4, !tbaa !3
  store i32 2, ptr %i.t, align 8, !tbaa !3
  %i.bw = sub i32 %i.bn, %i.bh                    ; 4 uses
  %i.bx = call i32 @llvm.smax.i32(i32 %i.bw, i32 -1) ; 4 uses
  %spec.store.select.i.i.i.i = add i32 %i.bx, 1   ; 2 uses
  %i.by = add i32 %i.bx, %i.bh                    ; 3 uses
  %i.bz = add nsw i32 %i.by, %i.bj
  %i.ca = srem i32 %i.bz, 2                       ; 3 uses
  %i.cb = icmp slt i32 %i.bw, 2
  %.not76104.i.i.i.i = icmp slt i32 %i.bw, 0
  %i.cc = add i32 %.01752.i.i.i, -1
  %i.cd = sub i32 2, %.01752.i.i.i
  %i.ce = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cf = xor i32 %i.bx, -1
  %i.cg = add i32 %i.bx, 2
  %i.ch = add i32 %i.bw, 1
  %wide.trip.count.i.i.i.i = zext i32 %i.ch to i64
  %smax65.i.i.i = call i64 @llvm.smax.i64(i64 %i.ce, i64 2)
  br label %.preheader91.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.preheader91.i.i.i.i:                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, %.preheader92.i.i.i.i
  %indvars.iv.i.i.i = phi i32 [ %indvars.iv.next.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %.01752.i.i.i, %.preheader92.i.i.i.i ] ; 2 uses
  %indvars.iv118.i.i.i.i = phi i32 [ %indvars.iv.next119.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.cd, %.preheader92.i.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i.i = phi i32 [ %indvars.iv.next.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.cc, %.preheader92.i.i.i.i ] ; 3 uses
  %.074107.i.i.i.i = phi i32 [ %i.ie, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ 0, %.preheader92.i.i.i.i ]
  %i.cj = load i32, ptr %i.p, align 4, !tbaa !1079
  %i.ck = load i32, ptr %i.q, align 8, !tbaa !1080
  %smax.i.i.i = call i32 @llvm.smax.i32(i32 %i.cj, i32 %indvars.iv.i.i.i.i)
  %i.cl = add i32 %smax.i.i.i, %indvars.iv118.i.i.i.i
  %i.cm = and i32 %i.cl, -2                       ; 2 uses
  %i.cn = add i32 %i.cm, %indvars.iv.i.i.i.i      ; 2 uses
  %i.co = add i32 %i.cm, %indvars.iv.i.i.i
  %i.cp = add i32 %i.ck, -1
  %smin.i.i.i = call i32 @llvm.smin.i32(i32 %i.cn, i32 %i.cp)
  %i.cq = sub i32 %i.co, %smin.i.i.i
  %i.cr = and i32 %i.cq, -2
  %i.cs = sub i32 %i.cn, %i.cr                    ; 3 uses
  %i.ct = add nsw i32 %i.cs, %i.bk
  %i.cu = srem i32 %i.ct, 2                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_iiiNS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i32 noundef %i.by, i32 noundef %i.cs, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.f

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %.preheader91.i.i.i.i
  store i32 %i.ca, ptr %i.u, align 8, !tbaa !1063
  store i32 %i.cu, ptr %i.v, align 4, !tbaa !1062
  store ptr %i.bl, ptr %i.w, align 8, !tbaa !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.x, i8 0, i64 12, i1 false)
  br i1 %i.cb, label %.lr.ph.i.i.i.i, label %.lr.ph106.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.s
  br i1 %.not76104.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph106.i.i.i.i

.lr.ph106.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL17bayer_channel_mapE, i64 %i.cv
  br label %bb.aj

bb.f:                                             ; preds = %.preheader91.i.i.i.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.s
  %i.cy = phi i32 [ %spec.select.i.i.i.i.i, %bb.s ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv120.i.i.i.i = phi i64 [ %indvars.iv.next121.i.i.i.i, %bb.s ], [ %i.ce, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
  %i.cz = load ptr, ptr %i.w, align 8, !tbaa !1059, !nonnull !172, !align !315
  %i.da = load i32, ptr %i.v, align 4, !tbaa !1062
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL17bayer_channel_mapE, i64 %i.db
  %i.dd = sext i32 %i.cy to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !180
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.df
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !53
  %i.di = load ptr, ptr %i.y, align 8, !tbaa !836 ; 3 uses
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !1064
  %i.dk = load i32, ptr %i.z, align 4, !tbaa !844 ; 3 uses
  %i.dl = load i32, ptr %i.aa, align 8, !tbaa !845, !noalias !1081 ; 2 uses
  %i.dm = add nsw i32 %i.dl, -1
  %i.dn = icmp eq i32 %i.dk, %i.dm
  br i1 %i.dn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.do = add nsw i32 %i.dk, -1
  %i.dp = load i32, ptr %i.ac, align 8, !tbaa !849
  br label %.invoke.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dq = add nsw i32 %i.dk, 1                    ; 7 uses
  store i32 %i.dq, ptr %i.z, align 4, !tbaa !844
  %i.dr = icmp slt i32 %i.dq, %i.dl
  br i1 %i.dr, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.ds = load i8, ptr %i.ai, align 1, !tbaa !850, !range !171, !noundef !172
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.j, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.i
  %.pre.i.i.i.i.i = load i32, ptr %i.ac, align 8, !tbaa !849
  %.pre.i.i.i.i = load i32, ptr %i.af, align 4, !tbaa !856
  br label %.invoke.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.du = load i8, ptr %i.aj, align 1, !tbaa !851, !range !171, !noundef !172
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.dw = load i64, ptr %i.al, align 8, !tbaa !852
  %i.dx = getelementptr inbounds i8, ptr %i.di, i64 %i.dw
  store ptr %i.dx, ptr %i.y, align 8, !tbaa !836
  %i.dy = load i32, ptr %i.am, align 8, !tbaa !853
  %.not.i.i86.i.i.i.i = icmp slt i32 %i.dq, %i.dy
  br i1 %.not.i.i86.i.i.i.i, label %bb.s, label %bb.l, !prof !55

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(156) %2)
          to label %bb.s unwind label %bb.t

bb.m:                                             ; preds = %bb.j
  %i.dz = load i8, ptr %i.ak, align 2, !tbaa !854, !range !171, !noundef !172
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eb = load i64, ptr %i.al, align 8, !tbaa !852
  %i.ec = getelementptr inbounds i8, ptr %i.di, i64 %i.eb
  store ptr %i.ec, ptr %i.y, align 8, !tbaa !836
  %i.ed = load i32, ptr %i.am, align 8, !tbaa !853
  %i.ee = icmp slt i32 %i.dq, %i.ed               ; 3 uses
  %i.ef = load i32, ptr %i.an, align 4
  %i.eg = icmp sge i32 %i.dq, %i.ef
  %not..i.i.i.i.i.i = xor i1 %i.ee, true
  %or.cond.i.i.i.i.i.i = select i1 %not..i.i.i.i.i.i, i1 true, i1 %i.eg, !prof !855
  %i.eh = load ptr, ptr %i.ao, align 8
  %i.ei = icmp eq ptr %i.eh, null
  %i.ej = select i1 %or.cond.i.i.i.i.i.i, i1 true, i1 %i.ei, !prof !855
  br i1 %i.ej, label %bb.o, label %bb.s, !prof !136

bb.o:                                             ; preds = %bb.n
  %i.ek = load ptr, ptr %2, align 8, !tbaa !832
  %i.el = load i32, ptr %i.ac, align 8, !tbaa !849
  %i.em = load i32, ptr %i.af, align 4, !tbaa !856
  %i.en = load i32, ptr %i.at, align 8, !tbaa !857
  %i.eo = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i32 noundef %i.dq, i32 noundef %i.el, i32 noundef %i.em, ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %i.an, ptr noundef nonnull align 1 dereferenceable(1) %i.as, i1 noundef zeroext %i.ee, i32 noundef %i.en)
          to label %.noexc88.i.i.i.i unwind label %bb.t

.noexc88.i.i.i.i:                                 ; preds = %bb.o
  %i.ep = zext i1 %i.ee to i8
  store ptr %i.eo, ptr %i.y, align 8, !tbaa !836
  store i8 %i.ep, ptr %i.ai, align 1, !tbaa !850
  br label %bb.s

bb.p:                                             ; preds = %bb.h
  %i.eq = load i32, ptr %i.ab, align 4, !tbaa !858 ; 3 uses
  store i32 %i.eq, ptr %i.z, align 4, !tbaa !844
  %i.er = load i32, ptr %i.ac, align 8, !tbaa !849
  %i.es = add nsw i32 %i.er, 1                    ; 3 uses
  store i32 %i.es, ptr %i.ac, align 8, !tbaa !849
  %i.et = load i32, ptr %i.ad, align 8, !tbaa !859
  %.not.i85.i.i.i.i = icmp slt i32 %i.es, %i.et
  %.pre132.i.i.i.i = load i32, ptr %i.af, align 4, !tbaa !856 ; 2 uses
  br i1 %.not.i85.i.i.i.i, label %.invoke.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eu = load i32, ptr %i.ae, align 4, !tbaa !860 ; 2 uses
  store i32 %i.eu, ptr %i.ac, align 8, !tbaa !849
  %i.ev = add nsw i32 %.pre132.i.i.i.i, 1         ; 3 uses
  store i32 %i.ev, ptr %i.af, align 4, !tbaa !856
  %i.ew = load i32, ptr %i.ag, align 8, !tbaa !861
  %.not1.i.i.i.i.i = icmp slt i32 %i.ev, %i.ew
  br i1 %.not1.i.i.i.i.i, label %.invoke.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr %i.ah, align 8, !tbaa !862
  br label %bb.s

.invoke.i.i.i.i:                                  ; preds = %bb.q, %bb.p, %._crit_edge.i.i.i.i.i, %bb.g
  %i.ex = phi i32 [ %i.do, %bb.g ], [ %i.eq, %bb.p ], [ %i.eq, %bb.q ], [ %i.dq, %._crit_edge.i.i.i.i.i ]
  %i.ey = phi i32 [ %i.dp, %bb.g ], [ %i.es, %bb.p ], [ %i.eu, %bb.q ], [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  %i.ez = phi i32 [ 0, %bb.g ], [ %.pre132.i.i.i.i, %bb.p ], [ %i.ev, %bb.q ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(156) %2, i32 noundef %i.ex, i32 noundef %i.ey, i32 noundef %i.ez)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.invoke.i.i.i.i, %bb.r, %.noexc88.i.i.i.i, %bb.n, %bb.m, %bb.l, %bb.k
  %i.fa = uitofp i16 %i.dj to float
  %i.fb = fmul nnan float %i.fa, f0x37800080
  %i.fc = load i32, ptr %i.u, align 8, !tbaa !1063
  %i.fd = add nsw i32 %i.fc, 1                    ; 2 uses
  %i.fe = icmp eq i32 %i.fd, 2
  %spec.select.i.i.i.i.i = select i1 %i.fe, i32 0, i32 %i.fd ; 2 uses
  store i32 %spec.select.i.i.i.i.i, ptr %i.u, align 8, !tbaa !1063
  %i.ff = fmul float %i.dh, %i.fb
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.x, i64 %indvars.iv120.i.i.i.i
  store float %i.ff, ptr %i.fg, align 4, !tbaa !53
  %indvars.iv.next121.i.i.i.i = add nsw i64 %indvars.iv120.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv120.i.i.i.i, %smax65.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1084

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.an, %.preheader.i.i.i.i
  %i.fi = load ptr, ptr %i.au, align 8, !tbaa !1085 ; 7 uses
  %i.fj = load ptr, ptr %i.av, align 8, !tbaa !1086
  %.not.i.i.i.i.i = icmp eq ptr %i.fi, %i.fj
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(156) %i.fi, ptr noundef nonnull align 8 dereferenceable(156) %2)
          to label %.noexc81.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.u
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.fk, ptr noundef nonnull align 8 dereferenceable(28) %i.u, i64 28, i1 false)
  %i.fl = load ptr, ptr %i.au, align 8, !tbaa !1085
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 160
  store ptr %i.fm, ptr %i.au, align 8, !tbaa !1085
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !1053 ; 6 uses
  %i.fn = ptrtoint ptr %i.fi to i64
  %i.fo = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.fp = sub i64 %i.fn, %i.fo                    ; 3 uses
  %i.fq = icmp eq i64 %i.fp, 9223372036854775680
  br i1 %i.fq, label %bb.w, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc82.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc82.i.i.i.i:                                 ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.fr = sdiv exact i64 %i.fp, 160               ; 3 uses
  %i.fs = icmp eq ptr %i.fi, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.fs, i64 1, i64 %i.fr
  %i.ft = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.fr ; 2 uses
  %i.fu = icmp ult i64 %i.ft, %i.fr
  %i.fv = call i64 @llvm.umin.i64(i64 %i.ft, i64 57646075230342348)
  %i.fw = select i1 %i.fu, i64 57646075230342348, i64 %i.fv ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.fw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.fx = mul nuw nsw i64 %i.fw, 160              ; 2 uses
  %i.fy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fx) #32
          to label %.noexc83.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc83.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fp ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(156) %i.fz, ptr noundef nonnull align 8 dereferenceable(156) %2)
          to label %bb.x unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i

bb.x:                                             ; preds = %.noexc83.i.i.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ga, ptr noundef nonnull align 8 dereferenceable(28) %i.u, i64 28, i1 false)
  br i1 %i.fs, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.x
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 160
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.x, %bb.y
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gf, %bb.y ], [ %i.fy, %bb.x ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ge, %bb.y ], [ %.val.i.i.i.i.i.i, %bb.x ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(156) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(156) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gd = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.gc, ptr noundef nonnull align 8 dereferenceable(28) %i.gd, i64 28, i1 false)
  %i.ge = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 160 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 160
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ge, %i.fi
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1087

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gg = landingpad { ptr, i32 }
          catch ptr null
  %i.gh = extractvalue { ptr, i32 } %i.gg, 0
  %i.gi = call ptr @__cxa_begin_catch(ptr %i.gh) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_(ptr noundef nonnull %i.fy, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gk = landingpad { ptr, i32 }
          catch ptr null
  %i.gl = extractvalue { ptr, i32 } %i.gk, 0
  call void @__clang_call_terminate(ptr %i.gl) #33
  unreachable

bb.ac:                                            ; preds = %bb.z
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.y
  %i.gm = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 320
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.gr, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !888
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(156) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  call void @__clang_call_terminate(ptr %i.gq) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 160 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gr, %i.fi
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1088

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i
  %i.gs = phi ptr [ %i.gb, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.gm, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  %i.gt = load ptr, ptr %i.av, align 8, !tbaa !1086
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = sub i64 %i.gu, %i.fo
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.gv) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc83.i.i.i.i
  %i.gw = landingpad { ptr, i32 }
          catch ptr null
  %i.gx = extractvalue { ptr, i32 } %i.gw, 0
  %i.gy = call ptr @__cxa_begin_catch(ptr %i.gx) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.aa
  %i.gz = extractvalue { ptr, i32 } %i.gj, 0
  %i.ha = call ptr @__cxa_begin_catch(ptr %i.gz) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(156) dereferenceable(156) %i.fz) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  %i.hb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.ah

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fy, i64 noundef %i.fx) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.ai unwind label %bb.ag

bb.ah:                                            ; preds = %bb.ag
  %i.hc = landingpad { ptr, i32 }
          catch ptr null
  %i.hd = extractvalue { ptr, i32 } %i.hc, 0
  call void @__clang_call_terminate(ptr %i.hd) #33
  unreachable

bb.ai:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.af, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  store ptr %i.fy, ptr %4, align 8, !tbaa !1053
  store ptr %i.gs, ptr %i.au, align 8, !tbaa !1085
  %i.he = getelementptr inbounds nuw [160 x i8], ptr %i.fy, i64 %i.fw
  store ptr %i.he, ptr %i.av, align 8, !tbaa !1086
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.an, %.lr.ph106.i.i.i.i
  %indvars.iv128.i.i.i.i = phi i64 [ 0, %.lr.ph106.i.i.i.i ], [ %indvars.iv.next129.i.i.i.i, %bb.an ] ; 3 uses
  %indvars.iv126.i.i.i.i = phi i32 [ %i.cg, %.lr.ph106.i.i.i.i ], [ %indvars.iv.next127.i.i.i.i, %bb.an ] ; 2 uses
  %indvars.iv123.i.i.i.i = phi i32 [ %i.cf, %.lr.ph106.i.i.i.i ], [ %indvars.iv.next124.i.i.i.i, %bb.an ] ; 3 uses
  %smax125.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv123.i.i.i.i, i32 0)
  %i.hf = add i32 %smax125.i.i.i.i, %indvars.iv126.i.i.i.i
  %i.hg = and i32 %i.hf, -2
  %i.hh = add i32 %i.hg, %indvars.iv123.i.i.i.i   ; 3 uses
  %i.hi = add nuw nsw i32 %i.hh, %spec.store.select.i.i.i.i ; 2 uses
  %i.hj = icmp slt i32 %i.hi, 3
  br i1 %i.hj, label %bb.ak, label %bb.al

end_hunk_3
begin_hunk_4_@_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window6updateEv:bb.a
bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit
  %i.bj = add nsw i32 %i.be, -1
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.1, i64 224
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !849
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(156) %i.am, i32 noundef %i.bj, i32 noundef %i.bl, i32 noundef 0)
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.1

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.1: ; preds = %bb.e, %bb.d
  %i.bm = uitofp i8 %i.bc to float
  %i.bn = fmul nnan float %i.bm, f0x3B808081
  %i.bo = load i32, ptr %i.at, align 8, !tbaa !1122
  %i.bp = add nsw i32 %i.bo, 1                    ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 2
  %spec.select.i.1 = select i1 %i.bq, i32 0, i32 %i.bp
  store i32 %spec.select.i.1, ptr %i.at, align 8, !tbaa !1122
  %i.br = fmul float %i.az, %i.bn
  %i.bs = getelementptr inbounds nuw i8, ptr %.val.1, i64 304
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.e
  store float %i.br, ptr %i.bt, align 4, !tbaa !53
  %.val.2 = load ptr, ptr %0, align 8, !tbaa !1113 ; 9 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.val.2, i64 320 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.2, i64 456
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1119, !nonnull !172, !align !315
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.2, i64 452
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !1121
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL17bayer_channel_mapE, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %.val.2, i64 448 ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !1122
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !180
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.cf
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !53
  %i.ci = getelementptr inbounds nuw i8, ptr %.val.2, i64 432
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !836
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !17
  %i.cl = getelementptr inbounds nuw i8, ptr %.val.2, i64 380
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !844 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.val.2, i64 360
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !845, !noalias !1123
  %i.cp = add nsw i32 %i.co, -1
  %i.cq = icmp eq i32 %i.cm, %i.cp
  br i1 %i.cq, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.1
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(156) %i.bu)
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.2

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.1
  %i.cr = add nsw i32 %i.cm, -1
  %i.cs = getelementptr inbounds nuw i8, ptr %.val.2, i64 384
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !849
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(156) %i.bu, i32 noundef %i.cr, i32 noundef %i.ct, i32 noundef 0)
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.2

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.2: ; preds = %bb.g, %bb.f
  %i.cu = uitofp i8 %i.ck to float
  %i.cv = fmul nnan float %i.cu, f0x3B808081
  %i.cw = load i32, ptr %i.cb, align 8, !tbaa !1122
  %i.cx = add nsw i32 %i.cw, 1                    ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 2
  %spec.select.i.2 = select i1 %i.cy, i32 0, i32 %i.cx
  store i32 %spec.select.i.2, ptr %i.cb, align 8, !tbaa !1122
  %i.cz = fmul float %i.ch, %i.cv
  %i.da = getelementptr inbounds nuw i8, ptr %.val.2, i64 464
  %i.db = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.e
  store float %i.cz, ptr %i.db, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<unsigned char, unsigned char, 2, 3, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Window::Row", align 8 ; 37 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.221", align 8 ; 8 uses
  %4 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<unsigned char, unsigned char, 2, 3, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Window", align 8 ; 21 uses
  %5 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<unsigned char, unsigned char, 2, 3, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Context", align 8 ; 11 uses
  %6 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 10 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !58    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1126 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.d = load ptr, ptr %.val, align 8, !tbaa !1128, !nonnull !172, !align !336
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0, i1 noundef zeroext true)
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !868  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !867
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %.lr.ph54.i.i.i, label %._crit_edge55.i.i.i

.lr.ph54.i.i.i:                                   ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 132 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br label %bb.d

._crit_edge55.i.i.i:                              ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !888
  %.not.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS7_RA4_KfNS1_3ROIEiEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge55.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS7_RA4_KfNS1_3ROIEiEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #33
  unreachable

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %.lr.ph54.i.i.i
  %.01752.i.i.i = phi i32 [ %i.f, %.lr.ph54.i.i.i ], [ %i.jz, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.bh = load i32, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !1129, !nonnull !172, !align !336 ; 3 uses
  %i.bj = load i32, ptr %i.k, align 8, !tbaa !1095
  %i.bk = load i32, ptr %i.l, align 4, !tbaa !1097
  %i.bl = load ptr, ptr %i.m, align 8, !tbaa !1130, !nonnull !172, !align !315 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %4, i8 0, i64 24, i1 false)
  %i.bm = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi)
          to label %.preheader92.i.i.i.i unwind label %bb.e ; 4 uses

.preheader92.i.i.i.i:                             ; preds = %bb.d
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !891 ; 3 uses
  store i32 %i.bn, ptr %i.n, align 4, !tbaa !1131
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !897
  %i.bq = add nsw i32 %i.bp, %i.bn
  store i32 %i.bq, ptr %i.o, align 8, !tbaa !1136
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !899 ; 2 uses
  store i32 %i.bs, ptr %i.p, align 4, !tbaa !1137
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !901
  %i.bv = add nsw i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.q, align 8, !tbaa !1138
  store i32 0, ptr %i.r, align 8, !tbaa !3
  store i32 1, ptr %i.s, align 4, !tbaa !3
  store i32 2, ptr %i.t, align 8, !tbaa !3
  %i.bw = sub i32 %i.bn, %i.bh                    ; 4 uses
  %i.bx = call i32 @llvm.smax.i32(i32 %i.bw, i32 -1) ; 4 uses
  %spec.store.select.i.i.i.i = add i32 %i.bx, 1   ; 2 uses
  %i.by = add i32 %i.bx, %i.bh                    ; 3 uses
  %i.bz = add nsw i32 %i.by, %i.bj
  %i.ca = srem i32 %i.bz, 2                       ; 3 uses
  %i.cb = icmp slt i32 %i.bw, 2
  %.not76104.i.i.i.i = icmp slt i32 %i.bw, 0
  %i.cc = add i32 %.01752.i.i.i, -1
  %i.cd = sub i32 2, %.01752.i.i.i
  %i.ce = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cf = xor i32 %i.bx, -1
  %i.cg = add i32 %i.bx, 2
  %i.ch = add i32 %i.bw, 1
  %wide.trip.count.i.i.i.i = zext i32 %i.ch to i64
  %smax65.i.i.i = call i64 @llvm.smax.i64(i64 %i.ce, i64 2)
  br label %.preheader91.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.preheader91.i.i.i.i:                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, %.preheader92.i.i.i.i
  %indvars.iv.i.i.i = phi i32 [ %indvars.iv.next.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %.01752.i.i.i, %.preheader92.i.i.i.i ] ; 2 uses
  %indvars.iv118.i.i.i.i = phi i32 [ %indvars.iv.next119.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.cd, %.preheader92.i.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i.i = phi i32 [ %indvars.iv.next.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.cc, %.preheader92.i.i.i.i ] ; 3 uses
  %.074107.i.i.i.i = phi i32 [ %i.ie, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ 0, %.preheader92.i.i.i.i ]
  %i.cj = load i32, ptr %i.p, align 4, !tbaa !1137
  %i.ck = load i32, ptr %i.q, align 8, !tbaa !1138
  %smax.i.i.i = call i32 @llvm.smax.i32(i32 %i.cj, i32 %indvars.iv.i.i.i.i)
  %i.cl = add i32 %smax.i.i.i, %indvars.iv118.i.i.i.i
  %i.cm = and i32 %i.cl, -2                       ; 2 uses
  %i.cn = add i32 %i.cm, %indvars.iv.i.i.i.i      ; 2 uses
  %i.co = add i32 %i.cm, %indvars.iv.i.i.i
  %i.cp = add i32 %i.ck, -1
  %smin.i.i.i = call i32 @llvm.smin.i32(i32 %i.cn, i32 %i.cp)
  %i.cq = sub i32 %i.co, %smin.i.i.i
  %i.cr = and i32 %i.cq, -2
  %i.cs = sub i32 %i.cn, %i.cr                    ; 3 uses
  %i.ct = add nsw i32 %i.cs, %i.bk
  %i.cu = srem i32 %i.ct, 2                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_iiiNS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i32 noundef %i.by, i32 noundef %i.cs, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.f

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %.preheader91.i.i.i.i
  store i32 %i.ca, ptr %i.u, align 8, !tbaa !1122
  store i32 %i.cu, ptr %i.v, align 4, !tbaa !1121
  store ptr %i.bl, ptr %i.w, align 8, !tbaa !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.x, i8 0, i64 12, i1 false)
  br i1 %i.cb, label %.lr.ph.i.i.i.i, label %.lr.ph106.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.s
  br i1 %.not76104.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph106.i.i.i.i

.lr.ph106.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL17bayer_channel_mapE, i64 %i.cv
  br label %bb.aj

bb.f:                                             ; preds = %.preheader91.i.i.i.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.s
  %i.cy = phi i32 [ %spec.select.i.i.i.i.i, %bb.s ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv120.i.i.i.i = phi i64 [ %indvars.iv.next121.i.i.i.i, %bb.s ], [ %i.ce, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
  %i.cz = load ptr, ptr %i.w, align 8, !tbaa !1119, !nonnull !172, !align !315
  %i.da = load i32, ptr %i.v, align 4, !tbaa !1121
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL17bayer_channel_mapE, i64 %i.db
  %i.dd = sext i32 %i.cy to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !180
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.df
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !53
  %i.di = load ptr, ptr %i.y, align 8, !tbaa !836 ; 3 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !17
  %i.dk = load i32, ptr %i.z, align 4, !tbaa !844 ; 3 uses
  %i.dl = load i32, ptr %i.aa, align 8, !tbaa !845, !noalias !1139 ; 2 uses
  %i.dm = add nsw i32 %i.dl, -1
  %i.dn = icmp eq i32 %i.dk, %i.dm
  br i1 %i.dn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.do = add nsw i32 %i.dk, -1
  %i.dp = load i32, ptr %i.ac, align 8, !tbaa !849
  br label %.invoke.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dq = add nsw i32 %i.dk, 1                    ; 7 uses
  store i32 %i.dq, ptr %i.z, align 4, !tbaa !844
  %i.dr = icmp slt i32 %i.dq, %i.dl
  br i1 %i.dr, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.ds = load i8, ptr %i.ai, align 1, !tbaa !850, !range !171, !noundef !172
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.j, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.i
  %.pre.i.i.i.i.i = load i32, ptr %i.ac, align 8, !tbaa !849
  %.pre.i.i.i.i = load i32, ptr %i.af, align 4, !tbaa !856
  br label %.invoke.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.du = load i8, ptr %i.aj, align 1, !tbaa !851, !range !171, !noundef !172
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.dw = load i64, ptr %i.al, align 8, !tbaa !852
  %i.dx = getelementptr inbounds i8, ptr %i.di, i64 %i.dw
  store ptr %i.dx, ptr %i.y, align 8, !tbaa !836
  %i.dy = load i32, ptr %i.am, align 8, !tbaa !853
  %.not.i.i86.i.i.i.i = icmp slt i32 %i.dq, %i.dy
  br i1 %.not.i.i86.i.i.i.i, label %bb.s, label %bb.l, !prof !55

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(156) %2)
          to label %bb.s unwind label %bb.t

bb.m:                                             ; preds = %bb.j
  %i.dz = load i8, ptr %i.ak, align 2, !tbaa !854, !range !171, !noundef !172
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eb = load i64, ptr %i.al, align 8, !tbaa !852
  %i.ec = getelementptr inbounds i8, ptr %i.di, i64 %i.eb
  store ptr %i.ec, ptr %i.y, align 8, !tbaa !836
  %i.ed = load i32, ptr %i.am, align 8, !tbaa !853
  %i.ee = icmp slt i32 %i.dq, %i.ed               ; 3 uses
  %i.ef = load i32, ptr %i.an, align 4
  %i.eg = icmp sge i32 %i.dq, %i.ef
  %not..i.i.i.i.i.i = xor i1 %i.ee, true
  %or.cond.i.i.i.i.i.i = select i1 %not..i.i.i.i.i.i, i1 true, i1 %i.eg, !prof !855
  %i.eh = load ptr, ptr %i.ao, align 8
  %i.ei = icmp eq ptr %i.eh, null
  %i.ej = select i1 %or.cond.i.i.i.i.i.i, i1 true, i1 %i.ei, !prof !855
  br i1 %i.ej, label %bb.o, label %bb.s, !prof !136

bb.o:                                             ; preds = %bb.n
  %i.ek = load ptr, ptr %2, align 8, !tbaa !832
  %i.el = load i32, ptr %i.ac, align 8, !tbaa !849
  %i.em = load i32, ptr %i.af, align 4, !tbaa !856
  %i.en = load i32, ptr %i.at, align 8, !tbaa !857
  %i.eo = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i32 noundef %i.dq, i32 noundef %i.el, i32 noundef %i.em, ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %i.an, ptr noundef nonnull align 1 dereferenceable(1) %i.as, i1 noundef zeroext %i.ee, i32 noundef %i.en)
          to label %.noexc88.i.i.i.i unwind label %bb.t

.noexc88.i.i.i.i:                                 ; preds = %bb.o
  %i.ep = zext i1 %i.ee to i8
  store ptr %i.eo, ptr %i.y, align 8, !tbaa !836
  store i8 %i.ep, ptr %i.ai, align 1, !tbaa !850
  br label %bb.s

bb.p:                                             ; preds = %bb.h
  %i.eq = load i32, ptr %i.ab, align 4, !tbaa !858 ; 3 uses
  store i32 %i.eq, ptr %i.z, align 4, !tbaa !844
  %i.er = load i32, ptr %i.ac, align 8, !tbaa !849
  %i.es = add nsw i32 %i.er, 1                    ; 3 uses
  store i32 %i.es, ptr %i.ac, align 8, !tbaa !849
  %i.et = load i32, ptr %i.ad, align 8, !tbaa !859
  %.not.i85.i.i.i.i = icmp slt i32 %i.es, %i.et
  %.pre132.i.i.i.i = load i32, ptr %i.af, align 4, !tbaa !856 ; 2 uses
  br i1 %.not.i85.i.i.i.i, label %.invoke.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eu = load i32, ptr %i.ae, align 4, !tbaa !860 ; 2 uses
  store i32 %i.eu, ptr %i.ac, align 8, !tbaa !849
  %i.ev = add nsw i32 %.pre132.i.i.i.i, 1         ; 3 uses
  store i32 %i.ev, ptr %i.af, align 4, !tbaa !856
  %i.ew = load i32, ptr %i.ag, align 8, !tbaa !861
  %.not1.i.i.i.i.i = icmp slt i32 %i.ev, %i.ew
  br i1 %.not1.i.i.i.i.i, label %.invoke.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr %i.ah, align 8, !tbaa !862
  br label %bb.s

.invoke.i.i.i.i:                                  ; preds = %bb.q, %bb.p, %._crit_edge.i.i.i.i.i, %bb.g
  %i.ex = phi i32 [ %i.do, %bb.g ], [ %i.eq, %bb.p ], [ %i.eq, %bb.q ], [ %i.dq, %._crit_edge.i.i.i.i.i ]
  %i.ey = phi i32 [ %i.dp, %bb.g ], [ %i.es, %bb.p ], [ %i.eu, %bb.q ], [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  %i.ez = phi i32 [ 0, %bb.g ], [ %.pre132.i.i.i.i, %bb.p ], [ %i.ev, %bb.q ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(156) %2, i32 noundef %i.ex, i32 noundef %i.ey, i32 noundef %i.ez)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.invoke.i.i.i.i, %bb.r, %.noexc88.i.i.i.i, %bb.n, %bb.m, %bb.l, %bb.k
  %i.fa = uitofp i8 %i.dj to float
  %i.fb = fmul nnan float %i.fa, f0x3B808081
  %i.fc = load i32, ptr %i.u, align 8, !tbaa !1122
  %i.fd = add nsw i32 %i.fc, 1                    ; 2 uses
  %i.fe = icmp eq i32 %i.fd, 2
  %spec.select.i.i.i.i.i = select i1 %i.fe, i32 0, i32 %i.fd ; 2 uses
  store i32 %spec.select.i.i.i.i.i, ptr %i.u, align 8, !tbaa !1122
  %i.ff = fmul float %i.dh, %i.fb
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.x, i64 %indvars.iv120.i.i.i.i
  store float %i.ff, ptr %i.fg, align 4, !tbaa !53
  %indvars.iv.next121.i.i.i.i = add nsw i64 %indvars.iv120.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv120.i.i.i.i, %smax65.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1142

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.an, %.preheader.i.i.i.i
  %i.fi = load ptr, ptr %i.au, align 8, !tbaa !1143 ; 7 uses
  %i.fj = load ptr, ptr %i.av, align 8, !tbaa !1144
  %.not.i.i.i.i.i = icmp eq ptr %i.fi, %i.fj
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(156) %i.fi, ptr noundef nonnull align 8 dereferenceable(156) %2)
          to label %.noexc81.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.u
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.fk, ptr noundef nonnull align 8 dereferenceable(28) %i.u, i64 28, i1 false)
  %i.fl = load ptr, ptr %i.au, align 8, !tbaa !1143
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 160
  store ptr %i.fm, ptr %i.au, align 8, !tbaa !1143
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !1113 ; 6 uses
  %i.fn = ptrtoint ptr %i.fi to i64
  %i.fo = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.fp = sub i64 %i.fn, %i.fo                    ; 3 uses
  %i.fq = icmp eq i64 %i.fp, 9223372036854775680
  br i1 %i.fq, label %bb.w, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc82.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc82.i.i.i.i:                                 ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.fr = sdiv exact i64 %i.fp, 160               ; 3 uses
  %i.fs = icmp eq ptr %i.fi, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.fs, i64 1, i64 %i.fr
  %i.ft = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.fr ; 2 uses
  %i.fu = icmp ult i64 %i.ft, %i.fr
  %i.fv = call i64 @llvm.umin.i64(i64 %i.ft, i64 57646075230342348)
  %i.fw = select i1 %i.fu, i64 57646075230342348, i64 %i.fv ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.fw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.fx = mul nuw nsw i64 %i.fw, 160              ; 2 uses
  %i.fy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fx) #32
          to label %.noexc83.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc83.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fp ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(156) %i.fz, ptr noundef nonnull align 8 dereferenceable(156) %2)
          to label %bb.x unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i

bb.x:                                             ; preds = %.noexc83.i.i.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ga, ptr noundef nonnull align 8 dereferenceable(28) %i.u, i64 28, i1 false)
  br i1 %i.fs, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.x
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 160
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.x, %bb.y
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gf, %bb.y ], [ %i.fy, %bb.x ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ge, %bb.y ], [ %.val.i.i.i.i.i.i, %bb.x ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(156) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(156) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gd = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.gc, ptr noundef nonnull align 8 dereferenceable(28) %i.gd, i64 28, i1 false)
  %i.ge = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 160 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 160
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ge, %i.fi
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1145

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gg = landingpad { ptr, i32 }
          catch ptr null
  %i.gh = extractvalue { ptr, i32 } %i.gg, 0
  %i.gi = call ptr @__cxa_begin_catch(ptr %i.gh) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_(ptr noundef nonnull %i.fy, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gk = landingpad { ptr, i32 }
          catch ptr null
  %i.gl = extractvalue { ptr, i32 } %i.gk, 0
  call void @__clang_call_terminate(ptr %i.gl) #33
  unreachable

bb.ac:                                            ; preds = %bb.z
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.y
  %i.gm = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 320
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.gr, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !888
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(156) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  call void @__clang_call_terminate(ptr %i.gq) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 160 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gr, %i.fi
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1146

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i
  %i.gs = phi ptr [ %i.gb, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.gm, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  %i.gt = load ptr, ptr %i.av, align 8, !tbaa !1144
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = sub i64 %i.gu, %i.fo
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.gv) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc83.i.i.i.i
  %i.gw = landingpad { ptr, i32 }
          catch ptr null
  %i.gx = extractvalue { ptr, i32 } %i.gw, 0
  %i.gy = call ptr @__cxa_begin_catch(ptr %i.gx) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.aa
  %i.gz = extractvalue { ptr, i32 } %i.gj, 0
  %i.ha = call ptr @__cxa_begin_catch(ptr %i.gz) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(156) dereferenceable(156) %i.fz) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  %i.hb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.ah

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fy, i64 noundef %i.fx) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.ai unwind label %bb.ag

bb.ah:                                            ; preds = %bb.ag
  %i.hc = landingpad { ptr, i32 }
          catch ptr null
  %i.hd = extractvalue { ptr, i32 } %i.hc, 0
  call void @__clang_call_terminate(ptr %i.hd) #33
  unreachable

bb.ai:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.af, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  store ptr %i.fy, ptr %4, align 8, !tbaa !1113
  store ptr %i.gs, ptr %i.au, align 8, !tbaa !1143
  %i.he = getelementptr inbounds nuw [160 x i8], ptr %i.fy, i64 %i.fw
  store ptr %i.he, ptr %i.av, align 8, !tbaa !1144
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.an, %.lr.ph106.i.i.i.i
  %indvars.iv128.i.i.i.i = phi i64 [ 0, %.lr.ph106.i.i.i.i ], [ %indvars.iv.next129.i.i.i.i, %bb.an ] ; 3 uses
  %indvars.iv126.i.i.i.i = phi i32 [ %i.cg, %.lr.ph106.i.i.i.i ], [ %indvars.iv.next127.i.i.i.i, %bb.an ] ; 2 uses
  %indvars.iv123.i.i.i.i = phi i32 [ %i.cf, %.lr.ph106.i.i.i.i ], [ %indvars.iv.next124.i.i.i.i, %bb.an ] ; 3 uses
  %smax125.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv123.i.i.i.i, i32 0)
  %i.hf = add i32 %smax125.i.i.i.i, %indvars.iv126.i.i.i.i
  %i.hg = and i32 %i.hf, -2
  %i.hh = add i32 %i.hg, %indvars.iv123.i.i.i.i   ; 3 uses
  %i.hi = add nuw nsw i32 %i.hh, %spec.store.select.i.i.i.i ; 2 uses
  %i.hj = icmp slt i32 %i.hi, 3
  br i1 %i.hj, label %bb.ak, label %bb.al

end_hunk_4
begin_hunk_5_@_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv:bb.a
  %i.m = load float, ptr %i.l, align 4, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !836
  %i.p = load i16, ptr %i.o, align 2, !tbaa !1004 ; 2 uses
  %i.q = zext i16 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 13
  %i.s = and i32 %i.r, 268427264                  ; 6 uses
  %.signext.i.i.i.i.i = sext i16 %i.p to i32
  %i.t = and i32 %.signext.i.i.i.i.i, -2147483648 ; 3 uses
  %i.u = icmp samesign ugt i32 %i.s, 8388607
  br i1 %i.u, label %bb.b, label %bb.e, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.v = or disjoint i32 %i.s, %i.t               ; 2 uses
  %i.w = icmp samesign ult i32 %i.s, 260046848
  br i1 %i.w, label %bb.c, label %bb.d, !prof !55

bb.c:                                             ; preds = %bb.b
  %i.x = add nuw nsw i32 %i.v, 939524096
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit

bb.d:                                             ; preds = %bb.b
  %i.y = or i32 %i.v, 2139095040
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit

bb.e:                                             ; preds = %bb.a
  %.not.i.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.s, i1 true)
  %i.aa = add nsw i32 %i.z, -8                    ; 2 uses
  %i.ab = shl i32 %i.s, %i.aa
  %i.ac = or i32 %i.t, %i.ab
  %i.ad = or i32 %i.ac, 947912704
  %i.ae = shl nuw nsw i32 %i.aa, 23
  %i.af = sub nuw i32 %i.ad, %i.ae
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit

_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.i.i.i.i.i = phi i32 [ %i.x, %bb.c ], [ %i.y, %bb.d ], [ %i.af, %bb.f ], [ %i.t, %bb.e ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !844 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !845, !noalias !1182
  %i.ak = add nsw i32 %i.aj, -1
  %i.al = icmp eq i32 %i.ah, %i.ak
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit
  %i.am = add nsw i32 %i.ah, -1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !849
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %0, i32 noundef %i.am, i32 noundef %i.ao, i32 noundef 0)
  br label %bb.i

bb.h:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %0)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ap = bitcast i32 %.sroa.0.0.i.i.i.i.i to float
  %i.aq = load i32, ptr %i.g, align 8, !tbaa !1181
  %i.ar = add nsw i32 %i.aq, 1                    ; 2 uses
  %i.as = icmp eq i32 %i.ar, 2
  %spec.select = select i1 %i.as, i32 0, i32 %i.ar
  store i32 %spec.select, ptr %i.g, align 8, !tbaa !1181
  %i.at = fmul float %i.m, %i.ap
  ret float %i.at
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES7_Li2ELi3EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKSB_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<Imath_3_1::half, Imath_3_1::half, 2, 3, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Window::Row", align 8 ; 37 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.277", align 8 ; 8 uses
  %4 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<Imath_3_1::half, Imath_3_1::half, 2, 3, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Window", align 8 ; 21 uses
  %5 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<Imath_3_1::half, Imath_3_1::half, 2, 3, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Context", align 8 ; 11 uses
  %6 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 10 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !58    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1185 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.d = load ptr, ptr %.val, align 8, !tbaa !1187, !nonnull !172, !align !336
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0, i1 noundef zeroext true)
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !868  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !867
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %.lr.ph55.i.i.i, label %._crit_edge56.i.i.i

.lr.ph55.i.i.i:                                   ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 132 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br label %bb.d

._crit_edge56.i.i.i:                              ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !888
  %.not.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfNS1_3ROIEiEUlSG_E_JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge56.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfNS1_3ROIEiEUlSG_E_JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #33
  unreachable

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %.lr.ph55.i.i.i
  %.01753.i.i.i = phi i32 [ %i.f, %.lr.ph55.i.i.i ], [ %i.ko, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.bh = load i32, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !1188, !nonnull !172, !align !336 ; 3 uses
  %i.bj = load i32, ptr %i.k, align 8, !tbaa !1154
  %i.bk = load i32, ptr %i.l, align 4, !tbaa !1156
  %i.bl = load ptr, ptr %i.m, align 8, !tbaa !1189, !nonnull !172, !align !315 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %4, i8 0, i64 24, i1 false)
  %i.bm = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi)
          to label %.preheader92.i.i.i.i unwind label %bb.e ; 4 uses

.preheader92.i.i.i.i:                             ; preds = %bb.d
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !891 ; 3 uses
  store i32 %i.bn, ptr %i.n, align 4, !tbaa !1190
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !897
  %i.bq = add nsw i32 %i.bp, %i.bn
  store i32 %i.bq, ptr %i.o, align 8, !tbaa !1195
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !899 ; 2 uses
  store i32 %i.bs, ptr %i.p, align 4, !tbaa !1196
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !901
  %i.bv = add nsw i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.q, align 8, !tbaa !1197
  store i32 0, ptr %i.r, align 8, !tbaa !3
  store i32 1, ptr %i.s, align 4, !tbaa !3
  store i32 2, ptr %i.t, align 8, !tbaa !3
  %i.bw = sub i32 %i.bn, %i.bh                    ; 4 uses
  %i.bx = call i32 @llvm.smax.i32(i32 %i.bw, i32 -1) ; 4 uses
  %spec.store.select.i.i.i.i = add i32 %i.bx, 1   ; 2 uses
  %i.by = add i32 %i.bx, %i.bh                    ; 3 uses
  %i.bz = add nsw i32 %i.by, %i.bj
  %i.ca = srem i32 %i.bz, 2                       ; 3 uses
  %i.cb = icmp slt i32 %i.bw, 2
  %.not76104.i.i.i.i = icmp slt i32 %i.bw, 0
  %i.cc = add i32 %.01753.i.i.i, -1
  %i.cd = sub i32 2, %.01753.i.i.i
  %i.ce = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cf = xor i32 %i.bx, -1
  %i.cg = add i32 %i.bx, 2
  %i.ch = add i32 %i.bw, 1
  %wide.trip.count.i.i.i.i = zext i32 %i.ch to i64
  %smax66.i.i.i = call i64 @llvm.smax.i64(i64 %i.ce, i64 2)
  br label %.preheader91.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.preheader91.i.i.i.i:                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, %.preheader92.i.i.i.i
  %indvars.iv.i.i.i = phi i32 [ %indvars.iv.next.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %.01753.i.i.i, %.preheader92.i.i.i.i ] ; 2 uses
  %indvars.iv118.i.i.i.i = phi i32 [ %indvars.iv.next119.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.cd, %.preheader92.i.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i.i = phi i32 [ %indvars.iv.next.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.cc, %.preheader92.i.i.i.i ] ; 3 uses
  %.074107.i.i.i.i = phi i32 [ %i.it, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ 0, %.preheader92.i.i.i.i ]
  %i.cj = load i32, ptr %i.p, align 4, !tbaa !1196
  %i.ck = load i32, ptr %i.q, align 8, !tbaa !1197
  %smax.i.i.i = call i32 @llvm.smax.i32(i32 %i.cj, i32 %indvars.iv.i.i.i.i)
  %i.cl = add i32 %smax.i.i.i, %indvars.iv118.i.i.i.i
  %i.cm = and i32 %i.cl, -2                       ; 2 uses
  %i.cn = add i32 %i.cm, %indvars.iv.i.i.i.i      ; 2 uses
  %i.co = add i32 %i.cm, %indvars.iv.i.i.i
  %i.cp = add i32 %i.ck, -1
  %smin.i.i.i = call i32 @llvm.smin.i32(i32 %i.cn, i32 %i.cp)
  %i.cq = sub i32 %i.co, %smin.i.i.i
  %i.cr = and i32 %i.cq, -2
  %i.cs = sub i32 %i.cn, %i.cr                    ; 3 uses
  %i.ct = add nsw i32 %i.cs, %i.bk
  %i.cu = srem i32 %i.ct, 2                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_iiiNS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i32 noundef %i.by, i32 noundef %i.cs, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.f

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %.preheader91.i.i.i.i
  store i32 %i.ca, ptr %i.u, align 8, !tbaa !1181
  store i32 %i.cu, ptr %i.v, align 4, !tbaa !1180
  store ptr %i.bl, ptr %i.w, align 8, !tbaa !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.x, i8 0, i64 12, i1 false)
  br i1 %i.cb, label %.lr.ph.i.i.i.i, label %.lr.ph106.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.x
  br i1 %.not76104.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph106.i.i.i.i

.lr.ph106.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL17bayer_channel_mapE, i64 %i.cv
  br label %bb.ao

bb.f:                                             ; preds = %.preheader91.i.i.i.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.x
  %i.cy = phi i32 [ %spec.select.i.i.i.i.i, %bb.x ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv120.i.i.i.i = phi i64 [ %indvars.iv.next121.i.i.i.i, %bb.x ], [ %i.ce, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
  %i.cz = load ptr, ptr %i.w, align 8, !tbaa !1178, !nonnull !172, !align !315
  %i.da = load i32, ptr %i.v, align 4, !tbaa !1180
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL17bayer_channel_mapE, i64 %i.db
  %i.dd = sext i32 %i.cy to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !180
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.df
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !53
  %i.di = load ptr, ptr %i.y, align 8, !tbaa !836 ; 3 uses
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !1004 ; 2 uses
  %i.dk = zext i16 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 13
  %i.dm = and i32 %i.dl, 268427264                ; 6 uses
  %.signext.i.i.i.i.i.i.i.i.i.i = sext i16 %i.dj to i32
  %i.dn = and i32 %.signext.i.i.i.i.i.i.i.i.i.i, -2147483648 ; 3 uses
  %i.do = icmp samesign ugt i32 %i.dm, 8388607
  br i1 %i.do, label %bb.g, label %bb.j, !prof !55

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dp = or disjoint i32 %i.dm, %i.dn            ; 2 uses
  %i.dq = icmp samesign ult i32 %i.dm, 260046848
  br i1 %i.dq, label %bb.h, label %bb.i, !prof !55

bb.h:                                             ; preds = %bb.g
  %i.dr = add nuw nsw i32 %i.dp, 939524096
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ds = or i32 %i.dp, 2139095040
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.dm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dt = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.dm, i1 true)
  %i.du = add nsw i32 %i.dt, -8                   ; 2 uses
  %i.dv = shl i32 %i.dm, %i.du
  %i.dw = or i32 %i.dn, %i.dv
  %i.dx = or i32 %i.dw, 947912704
  %i.dy = shl nuw nsw i32 %i.du, 23
  %i.dz = sub nuw i32 %i.dx, %i.dy
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.dr, %bb.h ], [ %i.ds, %bb.i ], [ %i.dz, %bb.k ], [ %i.dn, %bb.j ]
  %i.ea = load i32, ptr %i.z, align 4, !tbaa !844 ; 3 uses
  %i.eb = load i32, ptr %i.aa, align 8, !tbaa !845, !noalias !1198 ; 2 uses
  %i.ec = add nsw i32 %i.eb, -1
  %i.ed = icmp eq i32 %i.ea, %i.ec
  br i1 %i.ed, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i
  %i.ee = add nsw i32 %i.ea, -1
  %i.ef = load i32, ptr %i.ac, align 8, !tbaa !849
  br label %.invoke.i.i.i.i

bb.m:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i
  %i.eg = add nsw i32 %i.ea, 1                    ; 7 uses
  store i32 %i.eg, ptr %i.z, align 4, !tbaa !844
  %i.eh = icmp slt i32 %i.eg, %i.eb
  br i1 %i.eh, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.ei = load i8, ptr %i.ai, align 1, !tbaa !850, !range !171, !noundef !172
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.o, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.n
  %.pre.i.i.i.i.i = load i32, ptr %i.ac, align 8, !tbaa !849
  %.pre.i.i.i.i = load i32, ptr %i.af, align 4, !tbaa !856
  br label %.invoke.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.ek = load i8, ptr %i.aj, align 1, !tbaa !851, !range !171, !noundef !172
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.em = load i64, ptr %i.al, align 8, !tbaa !852
  %i.en = getelementptr inbounds i8, ptr %i.di, i64 %i.em
  store ptr %i.en, ptr %i.y, align 8, !tbaa !836
  %i.eo = load i32, ptr %i.am, align 8, !tbaa !853
  %.not.i.i86.i.i.i.i = icmp slt i32 %i.eg, %i.eo
  br i1 %.not.i.i86.i.i.i.i, label %bb.x, label %bb.q, !prof !55

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(156) %2)
          to label %bb.x unwind label %bb.y

bb.r:                                             ; preds = %bb.o
  %i.ep = load i8, ptr %i.ak, align 2, !tbaa !854, !range !171, !noundef !172
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.er = load i64, ptr %i.al, align 8, !tbaa !852
  %i.es = getelementptr inbounds i8, ptr %i.di, i64 %i.er
  store ptr %i.es, ptr %i.y, align 8, !tbaa !836
  %i.et = load i32, ptr %i.am, align 8, !tbaa !853
  %i.eu = icmp slt i32 %i.eg, %i.et               ; 3 uses
  %i.ev = load i32, ptr %i.an, align 4
  %i.ew = icmp sge i32 %i.eg, %i.ev
  %not..i.i.i.i.i.i = xor i1 %i.eu, true
  %or.cond.i.i.i.i.i.i = select i1 %not..i.i.i.i.i.i, i1 true, i1 %i.ew, !prof !855
  %i.ex = load ptr, ptr %i.ao, align 8
  %i.ey = icmp eq ptr %i.ex, null
  %i.ez = select i1 %or.cond.i.i.i.i.i.i, i1 true, i1 %i.ey, !prof !855
  br i1 %i.ez, label %bb.t, label %bb.x, !prof !136

bb.t:                                             ; preds = %bb.s
  %i.fa = load ptr, ptr %2, align 8, !tbaa !832
  %i.fb = load i32, ptr %i.ac, align 8, !tbaa !849
  %i.fc = load i32, ptr %i.af, align 4, !tbaa !856
  %i.fd = load i32, ptr %i.at, align 8, !tbaa !857
  %i.fe = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.fa, i32 noundef %i.eg, i32 noundef %i.fb, i32 noundef %i.fc, ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %i.an, ptr noundef nonnull align 1 dereferenceable(1) %i.as, i1 noundef zeroext %i.eu, i32 noundef %i.fd)
          to label %.noexc88.i.i.i.i unwind label %bb.y

.noexc88.i.i.i.i:                                 ; preds = %bb.t
  %i.ff = zext i1 %i.eu to i8
  store ptr %i.fe, ptr %i.y, align 8, !tbaa !836
  store i8 %i.ff, ptr %i.ai, align 1, !tbaa !850
  br label %bb.x

bb.u:                                             ; preds = %bb.m
  %i.fg = load i32, ptr %i.ab, align 4, !tbaa !858 ; 3 uses
  store i32 %i.fg, ptr %i.z, align 4, !tbaa !844
  %i.fh = load i32, ptr %i.ac, align 8, !tbaa !849
  %i.fi = add nsw i32 %i.fh, 1                    ; 3 uses
  store i32 %i.fi, ptr %i.ac, align 8, !tbaa !849
  %i.fj = load i32, ptr %i.ad, align 8, !tbaa !859
  %.not.i85.i.i.i.i = icmp slt i32 %i.fi, %i.fj
  %.pre132.i.i.i.i = load i32, ptr %i.af, align 4, !tbaa !856 ; 2 uses
  br i1 %.not.i85.i.i.i.i, label %.invoke.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fk = load i32, ptr %i.ae, align 4, !tbaa !860 ; 2 uses
  store i32 %i.fk, ptr %i.ac, align 8, !tbaa !849
  %i.fl = add nsw i32 %.pre132.i.i.i.i, 1         ; 3 uses
  store i32 %i.fl, ptr %i.af, align 4, !tbaa !856
  %i.fm = load i32, ptr %i.ag, align 8, !tbaa !861
  %.not1.i.i.i.i.i = icmp slt i32 %i.fl, %i.fm
  br i1 %.not1.i.i.i.i.i, label %.invoke.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 0, ptr %i.ah, align 8, !tbaa !862
  br label %bb.x

.invoke.i.i.i.i:                                  ; preds = %bb.v, %bb.u, %._crit_edge.i.i.i.i.i, %bb.l
  %i.fn = phi i32 [ %i.ee, %bb.l ], [ %i.fg, %bb.u ], [ %i.fg, %bb.v ], [ %i.eg, %._crit_edge.i.i.i.i.i ]
  %i.fo = phi i32 [ %i.ef, %bb.l ], [ %i.fi, %bb.u ], [ %i.fk, %bb.v ], [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  %i.fp = phi i32 [ 0, %bb.l ], [ %.pre132.i.i.i.i, %bb.u ], [ %i.fl, %bb.v ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(156) %2, i32 noundef %i.fn, i32 noundef %i.fo, i32 noundef %i.fp)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %.invoke.i.i.i.i, %bb.w, %.noexc88.i.i.i.i, %bb.s, %bb.r, %bb.q, %bb.p
  %i.fq = bitcast i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i to float
  %i.fr = load i32, ptr %i.u, align 8, !tbaa !1181
  %i.fs = add nsw i32 %i.fr, 1                    ; 2 uses
  %i.ft = icmp eq i32 %i.fs, 2
  %spec.select.i.i.i.i.i = select i1 %i.ft, i32 0, i32 %i.fs ; 2 uses
  store i32 %spec.select.i.i.i.i.i, ptr %i.u, align 8, !tbaa !1181
  %i.fu = fmul float %i.dh, %i.fq
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.x, i64 %indvars.iv120.i.i.i.i
  store float %i.fu, ptr %i.fv, align 4, !tbaa !53
  %indvars.iv.next121.i.i.i.i = add nsw i64 %indvars.iv120.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv120.i.i.i.i, %smax66.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1201

bb.y:                                             ; preds = %.invoke.i.i.i.i, %bb.t, %bb.q
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.as, %.preheader.i.i.i.i
  %i.fx = load ptr, ptr %i.au, align 8, !tbaa !1202 ; 7 uses
  %i.fy = load ptr, ptr %i.av, align 8, !tbaa !1203
  %.not.i.i.i.i.i = icmp eq ptr %i.fx, %i.fy
  br i1 %.not.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(156) %i.fx, ptr noundef nonnull align 8 dereferenceable(156) %2)
          to label %.noexc81.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.z
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.fz, ptr noundef nonnull align 8 dereferenceable(28) %i.u, i64 28, i1 false)
  %i.ga = load ptr, ptr %i.au, align 8, !tbaa !1202
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 160
  store ptr %i.gb, ptr %i.au, align 8, !tbaa !1202
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !1172 ; 6 uses
  %i.gc = ptrtoint ptr %i.fx to i64
  %i.gd = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.ge = sub i64 %i.gc, %i.gd                    ; 3 uses
  %i.gf = icmp eq i64 %i.ge, 9223372036854775680
  br i1 %i.gf, label %bb.ab, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc82.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc82.i.i.i.i:                                 ; preds = %bb.ab
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.aa
  %i.gg = sdiv exact i64 %i.ge, 160               ; 3 uses
  %i.gh = icmp eq ptr %i.fx, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.gh, i64 1, i64 %i.gg
  %i.gi = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.gg ; 2 uses
  %i.gj = icmp ult i64 %i.gi, %i.gg
  %i.gk = call i64 @llvm.umin.i64(i64 %i.gi, i64 57646075230342348)
  %i.gl = select i1 %i.gj, i64 57646075230342348, i64 %i.gk ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.gl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.gm = mul nuw nsw i64 %i.gl, 160              ; 2 uses
  %i.gn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gm) #32
          to label %.noexc83.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc83.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.ge ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(156) %i.go, ptr noundef nonnull align 8 dereferenceable(156) %2)
          to label %bb.ac unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i.i

bb.ac:                                            ; preds = %.noexc83.i.i.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.gp, ptr noundef nonnull align 8 dereferenceable(28) %i.u, i64 28, i1 false)
  br i1 %i.gh, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.ac
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 160
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ac, %bb.ad
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gu, %bb.ad ], [ %i.gn, %bb.ac ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gt, %bb.ad ], [ %.val.i.i.i.i.i.i, %bb.ac ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(156) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(156) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gs = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.gr, ptr noundef nonnull align 8 dereferenceable(28) %i.gs, i64 28, i1 false)
  %i.gt = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 160 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 160
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gt, %i.fx
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1204

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gv = landingpad { ptr, i32 }
          catch ptr null
  %i.gw = extractvalue { ptr, i32 } %i.gv, 0
  %i.gx = call ptr @__cxa_begin_catch(ptr %i.gw) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SC_(ptr noundef nonnull %i.gn, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ah unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gy = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gz = landingpad { ptr, i32 }
          catch ptr null
  %i.ha = extractvalue { ptr, i32 } %i.gz, 0
  call void @__clang_call_terminate(ptr %i.ha) #33
  unreachable

bb.ah:                                            ; preds = %bb.ae
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.ad
  %i.hb = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 320
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.hg, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !888
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(156) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.he = landingpad { ptr, i32 }
          catch ptr null
  %i.hf = extractvalue { ptr, i32 } %i.he, 0
  call void @__clang_call_terminate(ptr %i.hf) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ai, %.lr.ph.i.i.i.i.i.i.i.i
  %i.hg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 160 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.hg, %i.fx
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1205

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i
  %i.hh = phi ptr [ %i.gq, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.hb, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i
  %i.hi = load ptr, ptr %i.av, align 8, !tbaa !1203
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = sub i64 %i.hj, %i.gd
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.hk) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc83.i.i.i.i
  %i.hl = landingpad { ptr, i32 }
          catch ptr null
  %i.hm = extractvalue { ptr, i32 } %i.hl, 0
  %i.hn = call ptr @__cxa_begin_catch(ptr %i.hm) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.af
  %i.ho = extractvalue { ptr, i32 } %i.gy, 0
  %i.hp = call ptr @__cxa_begin_catch(ptr %i.ho) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(156) dereferenceable(156) %i.go) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i

bb.al:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i
  %i.hq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.am

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gn, i64 noundef %i.gm) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.an unwind label %bb.al

bb.am:                                            ; preds = %bb.al
  %i.hr = landingpad { ptr, i32 }
          catch ptr null
  %i.hs = extractvalue { ptr, i32 } %i.hr, 0
  call void @__clang_call_terminate(ptr %i.hs) #33
  unreachable

bb.an:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.ak, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i
  store ptr %i.gn, ptr %4, align 8, !tbaa !1172
  store ptr %i.hh, ptr %i.au, align 8, !tbaa !1202
  %i.ht = getelementptr inbounds nuw [160 x i8], ptr %i.gn, i64 %i.gl
  store ptr %i.ht, ptr %i.av, align 8, !tbaa !1203
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i

bb.ao:                                            ; preds = %bb.as, %.lr.ph106.i.i.i.i
  %indvars.iv128.i.i.i.i = phi i64 [ 0, %.lr.ph106.i.i.i.i ], [ %indvars.iv.next129.i.i.i.i, %bb.as ] ; 3 uses
  %indvars.iv126.i.i.i.i = phi i32 [ %i.cg, %.lr.ph106.i.i.i.i ], [ %indvars.iv.next127.i.i.i.i, %bb.as ] ; 2 uses
  %indvars.iv123.i.i.i.i = phi i32 [ %i.cf, %.lr.ph106.i.i.i.i ], [ %indvars.iv.next124.i.i.i.i, %bb.as ] ; 3 uses
  %smax125.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv123.i.i.i.i, i32 0)
  %i.hu = add i32 %smax125.i.i.i.i, %indvars.iv126.i.i.i.i
  %i.hv = and i32 %i.hu, -2
  %i.hw = add i32 %i.hv, %indvars.iv123.i.i.i.i   ; 3 uses
  %i.hx = add nuw nsw i32 %i.hw, %spec.store.select.i.i.i.i ; 2 uses
  %i.hy = icmp slt i32 %i.hx, 3
  br i1 %i.hy, label %bb.ap, label %bb.aq

end_hunk_5
begin_hunk_6_@_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window6updateEv:bb.a
bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit
  %i.bj = add nsw i32 %i.be, -1
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.1, i64 224
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !849
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(156) %i.am, i32 noundef %i.bj, i32 noundef %i.bl, i32 noundef 0)
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.1

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.1: ; preds = %bb.e, %bb.d
  %i.bm = uitofp i16 %i.bc to float
  %i.bn = fmul nnan float %i.bm, f0x37800080
  %i.bo = load i32, ptr %i.at, align 8, !tbaa !1240
  %i.bp = add nsw i32 %i.bo, 1                    ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 2
  %spec.select.i.1 = select i1 %i.bq, i32 0, i32 %i.bp
  store i32 %spec.select.i.1, ptr %i.at, align 8, !tbaa !1240
  %i.br = fmul float %i.az, %i.bn
  %i.bs = getelementptr inbounds nuw i8, ptr %.val.1, i64 304
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.e
  store float %i.br, ptr %i.bt, align 4, !tbaa !53
  %.val.2 = load ptr, ptr %0, align 8, !tbaa !1231 ; 9 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.val.2, i64 320 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.2, i64 456
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1237, !nonnull !172, !align !315
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.2, i64 452
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !1239
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL17bayer_channel_mapE, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %.val.2, i64 448 ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !1240
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !180
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.cf
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !53
  %i.ci = getelementptr inbounds nuw i8, ptr %.val.2, i64 432
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !836
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !1064
  %i.cl = getelementptr inbounds nuw i8, ptr %.val.2, i64 380
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !844 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.val.2, i64 360
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !845, !noalias !1241
  %i.cp = add nsw i32 %i.co, -1
  %i.cq = icmp eq i32 %i.cm, %i.cp
  br i1 %i.cq, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.1
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(156) %i.bu)
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.2

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.1
  %i.cr = add nsw i32 %i.cm, -1
  %i.cs = getelementptr inbounds nuw i8, ptr %.val.2, i64 384
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !849
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(156) %i.bu, i32 noundef %i.cr, i32 noundef %i.ct, i32 noundef 0)
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.2

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.2: ; preds = %bb.g, %bb.f
  %i.cu = uitofp i16 %i.ck to float
  %i.cv = fmul nnan float %i.cu, f0x37800080
  %i.cw = load i32, ptr %i.cb, align 8, !tbaa !1240
  %i.cx = add nsw i32 %i.cw, 1                    ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 2
  %spec.select.i.2 = select i1 %i.cy, i32 0, i32 %i.cx
  store i32 %spec.select.i.2, ptr %i.cb, align 8, !tbaa !1240
  %i.cz = fmul float %i.ch, %i.cv
  %i.da = getelementptr inbounds nuw i8, ptr %.val.2, i64 464
  %i.db = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.e
  store float %i.cz, ptr %i.db, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<unsigned short, unsigned short, 2, 3, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Window::Row", align 8 ; 37 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.333", align 8 ; 8 uses
  %4 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<unsigned short, unsigned short, 2, 3, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Window", align 8 ; 21 uses
  %5 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<unsigned short, unsigned short, 2, 3, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Context", align 8 ; 11 uses
  %6 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 10 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !58    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1244 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.d = load ptr, ptr %.val, align 8, !tbaa !1246, !nonnull !172, !align !336
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0, i1 noundef zeroext true)
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !868  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !867
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %.lr.ph54.i.i.i, label %._crit_edge55.i.i.i

.lr.ph54.i.i.i:                                   ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 132 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br label %bb.d

._crit_edge55.i.i.i:                              ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !888
  %.not.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS7_RA4_KfNS1_3ROIEiEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge55.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS7_RA4_KfNS1_3ROIEiEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #33
  unreachable

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %.lr.ph54.i.i.i
  %.01752.i.i.i = phi i32 [ %i.f, %.lr.ph54.i.i.i ], [ %i.jz, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.bh = load i32, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !1247, !nonnull !172, !align !336 ; 3 uses
  %i.bj = load i32, ptr %i.k, align 8, !tbaa !1213
  %i.bk = load i32, ptr %i.l, align 4, !tbaa !1215
  %i.bl = load ptr, ptr %i.m, align 8, !tbaa !1248, !nonnull !172, !align !315 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %4, i8 0, i64 24, i1 false)
  %i.bm = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi)
          to label %.preheader92.i.i.i.i unwind label %bb.e ; 4 uses

.preheader92.i.i.i.i:                             ; preds = %bb.d
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !891 ; 3 uses
  store i32 %i.bn, ptr %i.n, align 4, !tbaa !1249
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !897
  %i.bq = add nsw i32 %i.bp, %i.bn
  store i32 %i.bq, ptr %i.o, align 8, !tbaa !1254
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !899 ; 2 uses
  store i32 %i.bs, ptr %i.p, align 4, !tbaa !1255
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !901
  %i.bv = add nsw i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.q, align 8, !tbaa !1256
  store i32 0, ptr %i.r, align 8, !tbaa !3
  store i32 1, ptr %i.s, align 4, !tbaa !3
  store i32 2, ptr %i.t, align 8, !tbaa !3
  %i.bw = sub i32 %i.bn, %i.bh                    ; 4 uses
  %i.bx = call i32 @llvm.smax.i32(i32 %i.bw, i32 -1) ; 4 uses
  %spec.store.select.i.i.i.i = add i32 %i.bx, 1   ; 2 uses
  %i.by = add i32 %i.bx, %i.bh                    ; 3 uses
  %i.bz = add nsw i32 %i.by, %i.bj
  %i.ca = srem i32 %i.bz, 2                       ; 3 uses
  %i.cb = icmp slt i32 %i.bw, 2
  %.not76104.i.i.i.i = icmp slt i32 %i.bw, 0
  %i.cc = add i32 %.01752.i.i.i, -1
  %i.cd = sub i32 2, %.01752.i.i.i
  %i.ce = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cf = xor i32 %i.bx, -1
  %i.cg = add i32 %i.bx, 2
  %i.ch = add i32 %i.bw, 1
  %wide.trip.count.i.i.i.i = zext i32 %i.ch to i64
  %smax65.i.i.i = call i64 @llvm.smax.i64(i64 %i.ce, i64 2)
  br label %.preheader91.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.preheader91.i.i.i.i:                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, %.preheader92.i.i.i.i
  %indvars.iv.i.i.i = phi i32 [ %indvars.iv.next.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %.01752.i.i.i, %.preheader92.i.i.i.i ] ; 2 uses
  %indvars.iv118.i.i.i.i = phi i32 [ %indvars.iv.next119.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.cd, %.preheader92.i.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i.i = phi i32 [ %indvars.iv.next.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.cc, %.preheader92.i.i.i.i ] ; 3 uses
  %.074107.i.i.i.i = phi i32 [ %i.ie, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ 0, %.preheader92.i.i.i.i ]
  %i.cj = load i32, ptr %i.p, align 4, !tbaa !1255
  %i.ck = load i32, ptr %i.q, align 8, !tbaa !1256
  %smax.i.i.i = call i32 @llvm.smax.i32(i32 %i.cj, i32 %indvars.iv.i.i.i.i)
  %i.cl = add i32 %smax.i.i.i, %indvars.iv118.i.i.i.i
  %i.cm = and i32 %i.cl, -2                       ; 2 uses
  %i.cn = add i32 %i.cm, %indvars.iv.i.i.i.i      ; 2 uses
  %i.co = add i32 %i.cm, %indvars.iv.i.i.i
  %i.cp = add i32 %i.ck, -1
  %smin.i.i.i = call i32 @llvm.smin.i32(i32 %i.cn, i32 %i.cp)
  %i.cq = sub i32 %i.co, %smin.i.i.i
  %i.cr = and i32 %i.cq, -2
  %i.cs = sub i32 %i.cn, %i.cr                    ; 3 uses
  %i.ct = add nsw i32 %i.cs, %i.bk
  %i.cu = srem i32 %i.ct, 2                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_iiiNS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i32 noundef %i.by, i32 noundef %i.cs, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.f

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %.preheader91.i.i.i.i
  store i32 %i.ca, ptr %i.u, align 8, !tbaa !1240
  store i32 %i.cu, ptr %i.v, align 4, !tbaa !1239
  store ptr %i.bl, ptr %i.w, align 8, !tbaa !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.x, i8 0, i64 12, i1 false)
  br i1 %i.cb, label %.lr.ph.i.i.i.i, label %.lr.ph106.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.s
  br i1 %.not76104.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph106.i.i.i.i

.lr.ph106.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL17bayer_channel_mapE, i64 %i.cv
  br label %bb.aj

bb.f:                                             ; preds = %.preheader91.i.i.i.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.s
  %i.cy = phi i32 [ %spec.select.i.i.i.i.i, %bb.s ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv120.i.i.i.i = phi i64 [ %indvars.iv.next121.i.i.i.i, %bb.s ], [ %i.ce, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
  %i.cz = load ptr, ptr %i.w, align 8, !tbaa !1237, !nonnull !172, !align !315
  %i.da = load i32, ptr %i.v, align 4, !tbaa !1239
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL17bayer_channel_mapE, i64 %i.db
  %i.dd = sext i32 %i.cy to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !180
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.df
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !53
  %i.di = load ptr, ptr %i.y, align 8, !tbaa !836 ; 3 uses
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !1064
  %i.dk = load i32, ptr %i.z, align 4, !tbaa !844 ; 3 uses
  %i.dl = load i32, ptr %i.aa, align 8, !tbaa !845, !noalias !1257 ; 2 uses
  %i.dm = add nsw i32 %i.dl, -1
  %i.dn = icmp eq i32 %i.dk, %i.dm
  br i1 %i.dn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.do = add nsw i32 %i.dk, -1
  %i.dp = load i32, ptr %i.ac, align 8, !tbaa !849
  br label %.invoke.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dq = add nsw i32 %i.dk, 1                    ; 7 uses
  store i32 %i.dq, ptr %i.z, align 4, !tbaa !844
  %i.dr = icmp slt i32 %i.dq, %i.dl
  br i1 %i.dr, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.ds = load i8, ptr %i.ai, align 1, !tbaa !850, !range !171, !noundef !172
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.j, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.i
  %.pre.i.i.i.i.i = load i32, ptr %i.ac, align 8, !tbaa !849
  %.pre.i.i.i.i = load i32, ptr %i.af, align 4, !tbaa !856
  br label %.invoke.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.du = load i8, ptr %i.aj, align 1, !tbaa !851, !range !171, !noundef !172
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.dw = load i64, ptr %i.al, align 8, !tbaa !852
  %i.dx = getelementptr inbounds i8, ptr %i.di, i64 %i.dw
  store ptr %i.dx, ptr %i.y, align 8, !tbaa !836
  %i.dy = load i32, ptr %i.am, align 8, !tbaa !853
  %.not.i.i86.i.i.i.i = icmp slt i32 %i.dq, %i.dy
  br i1 %.not.i.i86.i.i.i.i, label %bb.s, label %bb.l, !prof !55

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(156) %2)
          to label %bb.s unwind label %bb.t

bb.m:                                             ; preds = %bb.j
  %i.dz = load i8, ptr %i.ak, align 2, !tbaa !854, !range !171, !noundef !172
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eb = load i64, ptr %i.al, align 8, !tbaa !852
  %i.ec = getelementptr inbounds i8, ptr %i.di, i64 %i.eb
  store ptr %i.ec, ptr %i.y, align 8, !tbaa !836
  %i.ed = load i32, ptr %i.am, align 8, !tbaa !853
  %i.ee = icmp slt i32 %i.dq, %i.ed               ; 3 uses
  %i.ef = load i32, ptr %i.an, align 4
  %i.eg = icmp sge i32 %i.dq, %i.ef
  %not..i.i.i.i.i.i = xor i1 %i.ee, true
  %or.cond.i.i.i.i.i.i = select i1 %not..i.i.i.i.i.i, i1 true, i1 %i.eg, !prof !855
  %i.eh = load ptr, ptr %i.ao, align 8
  %i.ei = icmp eq ptr %i.eh, null
  %i.ej = select i1 %or.cond.i.i.i.i.i.i, i1 true, i1 %i.ei, !prof !855
  br i1 %i.ej, label %bb.o, label %bb.s, !prof !136

bb.o:                                             ; preds = %bb.n
  %i.ek = load ptr, ptr %2, align 8, !tbaa !832
  %i.el = load i32, ptr %i.ac, align 8, !tbaa !849
  %i.em = load i32, ptr %i.af, align 4, !tbaa !856
  %i.en = load i32, ptr %i.at, align 8, !tbaa !857
  %i.eo = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i32 noundef %i.dq, i32 noundef %i.el, i32 noundef %i.em, ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.ar, ptr noundef nonnull align 4 dereferenceable(4) %i.an, ptr noundef nonnull align 1 dereferenceable(1) %i.as, i1 noundef zeroext %i.ee, i32 noundef %i.en)
          to label %.noexc88.i.i.i.i unwind label %bb.t

.noexc88.i.i.i.i:                                 ; preds = %bb.o
  %i.ep = zext i1 %i.ee to i8
  store ptr %i.eo, ptr %i.y, align 8, !tbaa !836
  store i8 %i.ep, ptr %i.ai, align 1, !tbaa !850
  br label %bb.s

bb.p:                                             ; preds = %bb.h
  %i.eq = load i32, ptr %i.ab, align 4, !tbaa !858 ; 3 uses
  store i32 %i.eq, ptr %i.z, align 4, !tbaa !844
  %i.er = load i32, ptr %i.ac, align 8, !tbaa !849
  %i.es = add nsw i32 %i.er, 1                    ; 3 uses
  store i32 %i.es, ptr %i.ac, align 8, !tbaa !849
  %i.et = load i32, ptr %i.ad, align 8, !tbaa !859
  %.not.i85.i.i.i.i = icmp slt i32 %i.es, %i.et
  %.pre132.i.i.i.i = load i32, ptr %i.af, align 4, !tbaa !856 ; 2 uses
  br i1 %.not.i85.i.i.i.i, label %.invoke.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eu = load i32, ptr %i.ae, align 4, !tbaa !860 ; 2 uses
  store i32 %i.eu, ptr %i.ac, align 8, !tbaa !849
  %i.ev = add nsw i32 %.pre132.i.i.i.i, 1         ; 3 uses
  store i32 %i.ev, ptr %i.af, align 4, !tbaa !856
  %i.ew = load i32, ptr %i.ag, align 8, !tbaa !861
  %.not1.i.i.i.i.i = icmp slt i32 %i.ev, %i.ew
  br i1 %.not1.i.i.i.i.i, label %.invoke.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr %i.ah, align 8, !tbaa !862
  br label %bb.s

.invoke.i.i.i.i:                                  ; preds = %bb.q, %bb.p, %._crit_edge.i.i.i.i.i, %bb.g
  %i.ex = phi i32 [ %i.do, %bb.g ], [ %i.eq, %bb.p ], [ %i.eq, %bb.q ], [ %i.dq, %._crit_edge.i.i.i.i.i ]
  %i.ey = phi i32 [ %i.dp, %bb.g ], [ %i.es, %bb.p ], [ %i.eu, %bb.q ], [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  %i.ez = phi i32 [ 0, %bb.g ], [ %.pre132.i.i.i.i, %bb.p ], [ %i.ev, %bb.q ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(156) %2, i32 noundef %i.ex, i32 noundef %i.ey, i32 noundef %i.ez)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.invoke.i.i.i.i, %bb.r, %.noexc88.i.i.i.i, %bb.n, %bb.m, %bb.l, %bb.k
  %i.fa = uitofp i16 %i.dj to float
  %i.fb = fmul nnan float %i.fa, f0x37800080
  %i.fc = load i32, ptr %i.u, align 8, !tbaa !1240
  %i.fd = add nsw i32 %i.fc, 1                    ; 2 uses
  %i.fe = icmp eq i32 %i.fd, 2
  %spec.select.i.i.i.i.i = select i1 %i.fe, i32 0, i32 %i.fd ; 2 uses
  store i32 %spec.select.i.i.i.i.i, ptr %i.u, align 8, !tbaa !1240
  %i.ff = fmul float %i.dh, %i.fb
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.x, i64 %indvars.iv120.i.i.i.i
  store float %i.ff, ptr %i.fg, align 4, !tbaa !53
  %indvars.iv.next121.i.i.i.i = add nsw i64 %indvars.iv120.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv120.i.i.i.i, %smax65.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1260

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.an, %.preheader.i.i.i.i
  %i.fi = load ptr, ptr %i.au, align 8, !tbaa !1261 ; 7 uses
  %i.fj = load ptr, ptr %i.av, align 8, !tbaa !1262
  %.not.i.i.i.i.i = icmp eq ptr %i.fi, %i.fj
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(156) %i.fi, ptr noundef nonnull align 8 dereferenceable(156) %2)
          to label %.noexc81.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.u
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.fk, ptr noundef nonnull align 8 dereferenceable(28) %i.u, i64 28, i1 false)
  %i.fl = load ptr, ptr %i.au, align 8, !tbaa !1261
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 160
  store ptr %i.fm, ptr %i.au, align 8, !tbaa !1261
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !1231 ; 6 uses
  %i.fn = ptrtoint ptr %i.fi to i64
  %i.fo = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.fp = sub i64 %i.fn, %i.fo                    ; 3 uses
  %i.fq = icmp eq i64 %i.fp, 9223372036854775680
  br i1 %i.fq, label %bb.w, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc82.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc82.i.i.i.i:                                 ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.fr = sdiv exact i64 %i.fp, 160               ; 3 uses
  %i.fs = icmp eq ptr %i.fi, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.fs, i64 1, i64 %i.fr
  %i.ft = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.fr ; 2 uses
  %i.fu = icmp ult i64 %i.ft, %i.fr
  %i.fv = call i64 @llvm.umin.i64(i64 %i.ft, i64 57646075230342348)
  %i.fw = select i1 %i.fu, i64 57646075230342348, i64 %i.fv ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.fw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.fx = mul nuw nsw i64 %i.fw, 160              ; 2 uses
  %i.fy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fx) #32
          to label %.noexc83.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc83.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fp ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(156) %i.fz, ptr noundef nonnull align 8 dereferenceable(156) %2)
          to label %bb.x unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i

bb.x:                                             ; preds = %.noexc83.i.i.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ga, ptr noundef nonnull align 8 dereferenceable(28) %i.u, i64 28, i1 false)
  br i1 %i.fs, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.x
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 160
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.x, %bb.y
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gf, %bb.y ], [ %i.fy, %bb.x ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ge, %bb.y ], [ %.val.i.i.i.i.i.i, %bb.x ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(156) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(156) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gd = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.gc, ptr noundef nonnull align 8 dereferenceable(28) %i.gd, i64 28, i1 false)
  %i.ge = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 160 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 160
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ge, %i.fi
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1263

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gg = landingpad { ptr, i32 }
          catch ptr null
  %i.gh = extractvalue { ptr, i32 } %i.gg, 0
  %i.gi = call ptr @__cxa_begin_catch(ptr %i.gh) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_(ptr noundef nonnull %i.fy, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gk = landingpad { ptr, i32 }
          catch ptr null
  %i.gl = extractvalue { ptr, i32 } %i.gk, 0
  call void @__clang_call_terminate(ptr %i.gl) #33
  unreachable

bb.ac:                                            ; preds = %bb.z
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.y
  %i.gm = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 320
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.gr, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !888
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(156) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  call void @__clang_call_terminate(ptr %i.gq) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 160 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gr, %i.fi
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1264

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i
  %i.gs = phi ptr [ %i.gb, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.gm, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  %i.gt = load ptr, ptr %i.av, align 8, !tbaa !1262
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = sub i64 %i.gu, %i.fo
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.gv) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc83.i.i.i.i
  %i.gw = landingpad { ptr, i32 }
          catch ptr null
  %i.gx = extractvalue { ptr, i32 } %i.gw, 0
  %i.gy = call ptr @__cxa_begin_catch(ptr %i.gx) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.aa
  %i.gz = extractvalue { ptr, i32 } %i.gj, 0
  %i.ha = call ptr @__cxa_begin_catch(ptr %i.gz) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(156) dereferenceable(156) %i.fz) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  %i.hb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.ah

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fy, i64 noundef %i.fx) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.ai unwind label %bb.ag

bb.ah:                                            ; preds = %bb.ag
  %i.hc = landingpad { ptr, i32 }
          catch ptr null
  %i.hd = extractvalue { ptr, i32 } %i.hc, 0
  call void @__clang_call_terminate(ptr %i.hd) #33
  unreachable

bb.ai:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.af, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  store ptr %i.fy, ptr %4, align 8, !tbaa !1231
  store ptr %i.gs, ptr %i.au, align 8, !tbaa !1261
  %i.he = getelementptr inbounds nuw [160 x i8], ptr %i.fy, i64 %i.fw
  store ptr %i.he, ptr %i.av, align 8, !tbaa !1262
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi3EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.an, %.lr.ph106.i.i.i.i
  %indvars.iv128.i.i.i.i = phi i64 [ 0, %.lr.ph106.i.i.i.i ], [ %indvars.iv.next129.i.i.i.i, %bb.an ] ; 3 uses
  %indvars.iv126.i.i.i.i = phi i32 [ %i.cg, %.lr.ph106.i.i.i.i ], [ %indvars.iv.next127.i.i.i.i, %bb.an ] ; 2 uses
  %indvars.iv123.i.i.i.i = phi i32 [ %i.cf, %.lr.ph106.i.i.i.i ], [ %indvars.iv.next124.i.i.i.i, %bb.an ] ; 3 uses
  %smax125.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv123.i.i.i.i, i32 0)
  %i.hf = add i32 %smax125.i.i.i.i, %indvars.iv126.i.i.i.i
  %i.hg = and i32 %i.hf, -2
  %i.hh = add i32 %i.hg, %indvars.iv123.i.i.i.i   ; 3 uses
  %i.hi = add nuw nsw i32 %i.hh, %spec.store.select.i.i.i.i ; 2 uses
  %i.hj = icmp slt i32 %i.hi, 3
  br i1 %i.hj, label %bb.ak, label %bb.al

end_hunk_6
begin_hunk_7_@_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window6updateEv:bb.a

bb.i:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.2
  %i.ds = add nsw i32 %i.dn, -1
  %i.dt = getelementptr inbounds nuw i8, ptr %.val.3, i64 568
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !849
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(164) %i.cv, i32 noundef %i.ds, i32 noundef %i.du, i32 noundef 0)
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.3

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.3: ; preds = %bb.i, %bb.h
  %i.dv = load i32, ptr %i.dc, align 8, !tbaa !1298
  %i.dw = add nsw i32 %i.dv, 1                    ; 2 uses
  %i.dx = icmp eq i32 %i.dw, 2
  %spec.select.i.3 = select i1 %i.dx, i32 0, i32 %i.dw
  store i32 %spec.select.i.3, ptr %i.dc, align 8, !tbaa !1298
  %i.dy = fmul float %i.di, %i.dl
  %i.dz = getelementptr inbounds nuw i8, ptr %.val.3, i64 648
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.d
  store float %i.dy, ptr %i.ea, align 4, !tbaa !53
  %.val.4 = load ptr, ptr %0, align 8, !tbaa !1289 ; 9 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.val.4, i64 672 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.val.4, i64 808
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !1295, !nonnull !172, !align !315
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.4, i64 804
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !1297
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL17bayer_channel_mapE, i64 %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %.val.4, i64 800 ; 3 uses
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !1298
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.ek
  %i.em = load i64, ptr %i.el, align 8, !tbaa !180
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.em
  %i.eo = load float, ptr %i.en, align 4, !tbaa !53
  %i.ep = getelementptr inbounds nuw i8, ptr %.val.4, i64 784
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !836
  %i.er = load float, ptr %i.eq, align 4, !tbaa !53
  %i.es = getelementptr inbounds nuw i8, ptr %.val.4, i64 732
  %i.et = load i32, ptr %i.es, align 4, !tbaa !844 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.val.4, i64 712
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !845, !noalias !1299
  %i.ew = add nsw i32 %i.ev, -1
  %i.ex = icmp eq i32 %i.et, %i.ew
  br i1 %i.ex, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.3
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(164) %i.eb)
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.4

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.3
  %i.ey = add nsw i32 %i.et, -1
  %i.ez = getelementptr inbounds nuw i8, ptr %.val.4, i64 736
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !849
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(164) %i.eb, i32 noundef %i.ey, i32 noundef %i.fa, i32 noundef 0)
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.4

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.4: ; preds = %bb.k, %bb.j
  %i.fb = load i32, ptr %i.ei, align 8, !tbaa !1298
  %i.fc = add nsw i32 %i.fb, 1                    ; 2 uses
  %i.fd = icmp eq i32 %i.fc, 2
  %spec.select.i.4 = select i1 %i.fd, i32 0, i32 %i.fc
  store i32 %spec.select.i.4, ptr %i.ei, align 8, !tbaa !1298
  %i.fe = fmul float %i.eo, %i.er
  %i.ff = getelementptr inbounds nuw i8, ptr %.val.4, i64 816
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.d
  store float %i.fe, ptr %i.fg, align 4, !tbaa !53
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #23

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<float, float, 2, 5, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Window::Row", align 8 ; 37 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 8 uses
  %4 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<float, float, 2, 5, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Window", align 8 ; 20 uses
  %5 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<float, float, 2, 5, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Context", align 8 ; 11 uses
  %6 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 10 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !58    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1302 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.d = load ptr, ptr %.val, align 8, !tbaa !1304, !nonnull !172, !align !336
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0, i1 noundef zeroext true)
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !868  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !867
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %.lr.ph54.i.i.i, label %._crit_edge55.i.i.i

.lr.ph54.i.i.i:                                   ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 2 uses
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
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.bc = add i32 %i.f, -1
  br label %bb.d

._crit_edge55.i.i.i:                              ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !888
  %.not.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS7_RA4_KfNS1_3ROIEiEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge55.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS7_RA4_KfNS1_3ROIEiEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #33
  unreachable

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %.lr.ph54.i.i.i
  %indvars.iv.i.i.i = phi i32 [ %i.bc, %.lr.ph54.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 2 uses
  %.01752.i.i.i = phi i32 [ %i.f, %.lr.ph54.i.i.i ], [ %i.jx, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.bh = load i32, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !1305, !nonnull !172, !align !336 ; 3 uses
  %i.bj = load i32, ptr %i.k, align 8, !tbaa !1272
  %i.bk = load i32, ptr %i.l, align 4, !tbaa !1274
  %i.bl = load ptr, ptr %i.m, align 8, !tbaa !1306, !nonnull !172, !align !315 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %4, i8 0, i64 24, i1 false)
  %i.bm = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi)
          to label %.preheader91.i.i.i.i unwind label %bb.e ; 4 uses

.preheader91.i.i.i.i:                             ; preds = %bb.d
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !891 ; 3 uses
  store i32 %i.bn, ptr %i.n, align 4, !tbaa !1307
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !897
  %i.bq = add nsw i32 %i.bp, %i.bn
  store i32 %i.bq, ptr %i.o, align 8, !tbaa !1312
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !899 ; 2 uses
  store i32 %i.bs, ptr %i.p, align 4, !tbaa !1313
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !901
  %i.bv = add nsw i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.q, align 8, !tbaa !1314
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.r, align 8, !tbaa !3
  store i32 4, ptr %i.s, align 8, !tbaa !3
  %i.bw = sub i32 %i.bn, %i.bh                    ; 3 uses
  %i.bx = call i32 @llvm.smax.i32(i32 %i.bw, i32 -2) ; 4 uses
  %spec.store.select.i.i.i.i = add i32 %i.bx, 2   ; 3 uses
  %i.by = add i32 %i.bx, %i.bh                    ; 3 uses
  %i.bz = add nsw i32 %i.by, %i.bj
  %i.ca = srem i32 %i.bz, 2                       ; 3 uses
  %i.cb = icmp slt i32 %i.bw, 3
  %i.cc = icmp sgt i32 %i.bw, -2
  %i.cd = add i32 %.01752.i.i.i, -2
  %i.ce = sub i32 3, %.01752.i.i.i
  %i.cf = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cg = sub i32 -2, %i.bx
  %i.ch = add i32 %i.bx, 3
  %smax129.i.i.i.i = call i32 @llvm.smax.i32(i32 %spec.store.select.i.i.i.i, i32 1)
  %wide.trip.count.i.i.i.i = zext nneg i32 %smax129.i.i.i.i to i64
  %smax67.i.i.i = call i64 @llvm.smax.i64(i64 %i.cf, i64 4)
  br label %.preheader90.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.preheader90.i.i.i.i:                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, %.preheader91.i.i.i.i
  %indvars.iv65.i.i.i = phi i32 [ %indvars.iv.next66.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %indvars.iv.i.i.i, %.preheader91.i.i.i.i ] ; 2 uses
  %indvars.iv116.i.i.i.i = phi i32 [ %indvars.iv.next117.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.ce, %.preheader91.i.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i.i = phi i32 [ %indvars.iv.next.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.cd, %.preheader91.i.i.i.i ] ; 3 uses
  %.074105.i.i.i.i = phi i32 [ %i.ic, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ 0, %.preheader91.i.i.i.i ]
  %i.cj = load i32, ptr %i.p, align 4, !tbaa !1313
  %i.ck = load i32, ptr %i.q, align 8, !tbaa !1314
  %smax.i.i.i = call i32 @llvm.smax.i32(i32 %i.cj, i32 %indvars.iv.i.i.i.i)
  %i.cl = add i32 %smax.i.i.i, %indvars.iv116.i.i.i.i
  %i.cm = and i32 %i.cl, -2                       ; 2 uses
  %i.cn = add i32 %i.cm, %indvars.iv.i.i.i.i      ; 2 uses
  %i.co = add i32 %i.cm, %indvars.iv65.i.i.i
  %i.cp = add i32 %i.ck, -1
  %smin.i.i.i = call i32 @llvm.smin.i32(i32 %i.cn, i32 %i.cp)
  %i.cq = sub i32 %i.co, %smin.i.i.i
  %i.cr = and i32 %i.cq, -2
  %i.cs = sub i32 %i.cn, %i.cr                    ; 3 uses
  %i.ct = add nsw i32 %i.cs, %i.bk
  %i.cu = srem i32 %i.ct, 2                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_iiiNS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i32 noundef %i.by, i32 noundef %i.cs, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.f

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %.preheader90.i.i.i.i
  store i32 %i.ca, ptr %i.t, align 8, !tbaa !1298
  store i32 %i.cu, ptr %i.u, align 4, !tbaa !1297
  store ptr %i.bl, ptr %i.v, align 8, !tbaa !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.w, i8 0, i64 20, i1 false)
  br i1 %i.cb, label %.lr.ph.i.i.i.i, label %.lr.ph104.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.s
  br i1 %i.cc, label %.lr.ph104.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph104.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL17bayer_channel_mapE, i64 %i.cv
  br label %bb.aj

bb.f:                                             ; preds = %.preheader90.i.i.i.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.s
  %i.cy = phi i32 [ %spec.select.i.i.i.i.i, %bb.s ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv118.i.i.i.i = phi i64 [ %indvars.iv.next119.i.i.i.i, %bb.s ], [ %i.cf, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
  %i.cz = load ptr, ptr %i.v, align 8, !tbaa !1295, !nonnull !172, !align !315
  %i.da = load i32, ptr %i.u, align 4, !tbaa !1297
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL17bayer_channel_mapE, i64 %i.db
  %i.dd = sext i32 %i.cy to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !180
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.df
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !53
  %i.di = load ptr, ptr %i.x, align 8, !tbaa !836 ; 3 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !53
  %i.dk = load i32, ptr %i.y, align 4, !tbaa !844 ; 3 uses
  %i.dl = load i32, ptr %i.z, align 8, !tbaa !845, !noalias !1315 ; 2 uses
  %i.dm = add nsw i32 %i.dl, -1
  %i.dn = icmp eq i32 %i.dk, %i.dm
  br i1 %i.dn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.do = add nsw i32 %i.dk, -1
  %i.dp = load i32, ptr %i.ab, align 8, !tbaa !849
  br label %.invoke.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dq = add nsw i32 %i.dk, 1                    ; 7 uses
  store i32 %i.dq, ptr %i.y, align 4, !tbaa !844
  %i.dr = icmp slt i32 %i.dq, %i.dl
  br i1 %i.dr, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.ds = load i8, ptr %i.ah, align 1, !tbaa !850, !range !171, !noundef !172
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.j, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.i
  %.pre.i.i.i.i.i = load i32, ptr %i.ab, align 8, !tbaa !849
  %.pre.i.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !856
  br label %.invoke.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.du = load i8, ptr %i.ai, align 1, !tbaa !851, !range !171, !noundef !172
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.dw = load i64, ptr %i.ak, align 8, !tbaa !852
  %i.dx = getelementptr inbounds i8, ptr %i.di, i64 %i.dw
  store ptr %i.dx, ptr %i.x, align 8, !tbaa !836
  %i.dy = load i32, ptr %i.al, align 8, !tbaa !853
  %.not.i.i85.i.i.i.i = icmp slt i32 %i.dq, %i.dy
  br i1 %.not.i.i85.i.i.i.i, label %bb.s, label %bb.l, !prof !55

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.s unwind label %bb.t

bb.m:                                             ; preds = %bb.j
  %i.dz = load i8, ptr %i.aj, align 2, !tbaa !854, !range !171, !noundef !172
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eb = load i64, ptr %i.ak, align 8, !tbaa !852
  %i.ec = getelementptr inbounds i8, ptr %i.di, i64 %i.eb
  store ptr %i.ec, ptr %i.x, align 8, !tbaa !836
  %i.ed = load i32, ptr %i.al, align 8, !tbaa !853
  %i.ee = icmp slt i32 %i.dq, %i.ed               ; 3 uses
  %i.ef = load i32, ptr %i.am, align 4
  %i.eg = icmp sge i32 %i.dq, %i.ef
  %not..i.i.i.i.i.i = xor i1 %i.ee, true
  %or.cond.i.i.i.i.i.i = select i1 %not..i.i.i.i.i.i, i1 true, i1 %i.eg, !prof !855
  %i.eh = load ptr, ptr %i.an, align 8
  %i.ei = icmp eq ptr %i.eh, null
  %i.ej = select i1 %or.cond.i.i.i.i.i.i, i1 true, i1 %i.ei, !prof !855
  br i1 %i.ej, label %bb.o, label %bb.s, !prof !136

bb.o:                                             ; preds = %bb.n
  %i.ek = load ptr, ptr %2, align 8, !tbaa !832
  %i.el = load i32, ptr %i.ab, align 8, !tbaa !849
  %i.em = load i32, ptr %i.ae, align 4, !tbaa !856
  %i.en = load i32, ptr %i.as, align 8, !tbaa !857
  %i.eo = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i32 noundef %i.dq, i32 noundef %i.el, i32 noundef %i.em, ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.am, ptr noundef nonnull align 1 dereferenceable(1) %i.ar, i1 noundef zeroext %i.ee, i32 noundef %i.en)
          to label %.noexc87.i.i.i.i unwind label %bb.t

.noexc87.i.i.i.i:                                 ; preds = %bb.o
  %i.ep = zext i1 %i.ee to i8
  store ptr %i.eo, ptr %i.x, align 8, !tbaa !836
  store i8 %i.ep, ptr %i.ah, align 1, !tbaa !850
  br label %bb.s

bb.p:                                             ; preds = %bb.h
  %i.eq = load i32, ptr %i.aa, align 4, !tbaa !858 ; 3 uses
  store i32 %i.eq, ptr %i.y, align 4, !tbaa !844
  %i.er = load i32, ptr %i.ab, align 8, !tbaa !849
  %i.es = add nsw i32 %i.er, 1                    ; 3 uses
  store i32 %i.es, ptr %i.ab, align 8, !tbaa !849
  %i.et = load i32, ptr %i.ac, align 8, !tbaa !859
  %.not.i84.i.i.i.i = icmp slt i32 %i.es, %i.et
  %.pre131.i.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !856 ; 2 uses
  br i1 %.not.i84.i.i.i.i, label %.invoke.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eu = load i32, ptr %i.ad, align 4, !tbaa !860 ; 2 uses
  store i32 %i.eu, ptr %i.ab, align 8, !tbaa !849
  %i.ev = add nsw i32 %.pre131.i.i.i.i, 1         ; 3 uses
  store i32 %i.ev, ptr %i.ae, align 4, !tbaa !856
  %i.ew = load i32, ptr %i.af, align 8, !tbaa !861
  %.not1.i.i.i.i.i = icmp slt i32 %i.ev, %i.ew
  br i1 %.not1.i.i.i.i.i, label %.invoke.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr %i.ag, align 8, !tbaa !862
  br label %bb.s

.invoke.i.i.i.i:                                  ; preds = %bb.q, %bb.p, %._crit_edge.i.i.i.i.i, %bb.g
  %i.ex = phi i32 [ %i.do, %bb.g ], [ %i.eq, %bb.p ], [ %i.eq, %bb.q ], [ %i.dq, %._crit_edge.i.i.i.i.i ]
  %i.ey = phi i32 [ %i.dp, %bb.g ], [ %i.es, %bb.p ], [ %i.eu, %bb.q ], [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  %i.ez = phi i32 [ 0, %bb.g ], [ %.pre131.i.i.i.i, %bb.p ], [ %i.ev, %bb.q ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(164) %2, i32 noundef %i.ex, i32 noundef %i.ey, i32 noundef %i.ez)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.invoke.i.i.i.i, %bb.r, %.noexc87.i.i.i.i, %bb.n, %bb.m, %bb.l, %bb.k
  %i.fa = load i32, ptr %i.t, align 8, !tbaa !1298
  %i.fb = add nsw i32 %i.fa, 1                    ; 2 uses
  %i.fc = icmp eq i32 %i.fb, 2
  %spec.select.i.i.i.i.i = select i1 %i.fc, i32 0, i32 %i.fb ; 2 uses
  store i32 %spec.select.i.i.i.i.i, ptr %i.t, align 8, !tbaa !1298
  %i.fd = fmul float %i.dh, %i.dj
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv118.i.i.i.i
  store float %i.fd, ptr %i.fe, align 4, !tbaa !53
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv118.i.i.i.i, %smax67.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1318

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.an, %.preheader.i.i.i.i
  %i.fg = load ptr, ptr %i.at, align 8, !tbaa !1319 ; 7 uses
  %i.fh = load ptr, ptr %i.au, align 8, !tbaa !1320
  %.not.i.i.i.i.i = icmp eq ptr %i.fg, %i.fh
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.fg, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %.noexc80.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc80.i.i.i.i:                                 ; preds = %bb.u
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.fi, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  %i.fj = load ptr, ptr %i.at, align 8, !tbaa !1319
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 168
  store ptr %i.fk, ptr %i.at, align 8, !tbaa !1319
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !1289 ; 6 uses
  %i.fl = ptrtoint ptr %i.fg to i64
  %i.fm = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.fn = sub i64 %i.fl, %i.fm                    ; 3 uses
  %i.fo = icmp eq i64 %i.fn, 9223372036854775800
  br i1 %i.fo, label %bb.w, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc81.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.fp = sdiv exact i64 %i.fn, 168               ; 3 uses
  %i.fq = icmp eq ptr %i.fg, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.fq, i64 1, i64 %i.fp
  %i.fr = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.fp ; 2 uses
  %i.fs = icmp ult i64 %i.fr, %i.fp
  %i.ft = call i64 @llvm.umin.i64(i64 %i.fr, i64 54901024028897475)
  %i.fu = select i1 %i.fs, i64 54901024028897475, i64 %i.ft ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.fu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.fv = mul nuw nsw i64 %i.fu, 168              ; 2 uses
  %i.fw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fv) #32
          to label %.noexc82.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc82.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fn ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.fx, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.x unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i

bb.x:                                             ; preds = %.noexc82.i.i.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.fy, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  br i1 %i.fq, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.x
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 168
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.x, %bb.y
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gd, %bb.y ], [ %i.fw, %bb.x ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gc, %bb.y ], [ %.val.i.i.i.i.i.i, %bb.x ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(164) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gb = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ga, ptr noundef nonnull align 8 dereferenceable(36) %i.gb, i64 36, i1 false)
  %i.gc = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 168
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gc, %i.fg
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1321

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ge = landingpad { ptr, i32 }
          catch ptr null
  %i.gf = extractvalue { ptr, i32 } %i.ge, 0
  %i.gg = call ptr @__cxa_begin_catch(ptr %i.gf) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_(ptr noundef nonnull %i.fw, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gh = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gi = landingpad { ptr, i32 }
          catch ptr null
  %i.gj = extractvalue { ptr, i32 } %i.gi, 0
  call void @__clang_call_terminate(ptr %i.gj) #33
  unreachable

bb.ac:                                            ; preds = %bb.z
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.y
  %i.gk = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 336
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.gp, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !888
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.gm, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gn = landingpad { ptr, i32 }
          catch ptr null
  %i.go = extractvalue { ptr, i32 } %i.gn, 0
  call void @__clang_call_terminate(ptr %i.go) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gp, %i.fg
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1322

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i
  %i.gq = phi ptr [ %i.fz, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.gk, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  %i.gr = load ptr, ptr %i.au, align 8, !tbaa !1320
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = sub i64 %i.gs, %i.fm
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.gt) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc82.i.i.i.i
  %i.gu = landingpad { ptr, i32 }
          catch ptr null
  %i.gv = extractvalue { ptr, i32 } %i.gu, 0
  %i.gw = call ptr @__cxa_begin_catch(ptr %i.gv) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.aa
  %i.gx = extractvalue { ptr, i32 } %i.gh, 0
  %i.gy = call ptr @__cxa_begin_catch(ptr %i.gx) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(164) dereferenceable(164) %i.fx) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  %i.gz = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.ah

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.fv) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.ai unwind label %bb.ag

bb.ah:                                            ; preds = %bb.ag
  %i.ha = landingpad { ptr, i32 }
          catch ptr null
  %i.hb = extractvalue { ptr, i32 } %i.ha, 0
  call void @__clang_call_terminate(ptr %i.hb) #33
  unreachable

bb.ai:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.af, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  store ptr %i.fw, ptr %4, align 8, !tbaa !1289
  store ptr %i.gq, ptr %i.at, align 8, !tbaa !1319
  %i.hc = getelementptr inbounds nuw [168 x i8], ptr %i.fw, i64 %i.fu
  store ptr %i.hc, ptr %i.au, align 8, !tbaa !1320
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.an, %.lr.ph104.i.i.i.i
  %indvars.iv126.i.i.i.i = phi i64 [ 0, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next127.i.i.i.i, %bb.an ] ; 3 uses
  %indvars.iv124.i.i.i.i = phi i32 [ %i.ch, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next125.i.i.i.i, %bb.an ] ; 2 uses
  %indvars.iv121.i.i.i.i = phi i32 [ %i.cg, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next122.i.i.i.i, %bb.an ] ; 3 uses
  %smax123.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv121.i.i.i.i, i32 0)
  %i.hd = add i32 %smax123.i.i.i.i, %indvars.iv124.i.i.i.i
  %i.he = and i32 %i.hd, -2
  %i.hf = add i32 %i.he, %indvars.iv121.i.i.i.i   ; 3 uses
  %i.hg = add nsw i32 %i.hf, %spec.store.select.i.i.i.i ; 2 uses
  %i.hh = icmp slt i32 %i.hg, 5
  br i1 %i.hh, label %bb.ak, label %bb.al

end_hunk_7
begin_hunk_8_@_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window6updateEv:bb.a
bb.i:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.2
  %i.dy = add nsw i32 %i.dt, -1
  %i.dz = getelementptr inbounds nuw i8, ptr %.val.3, i64 568
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !849
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(164) %i.db, i32 noundef %i.dy, i32 noundef %i.ea, i32 noundef 0)
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.3

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.3: ; preds = %bb.i, %bb.h
  %i.eb = uitofp i8 %i.dr to float
  %i.ec = fmul nnan float %i.eb, f0x3B808081
  %i.ed = load i32, ptr %i.di, align 8, !tbaa !1355
  %i.ee = add nsw i32 %i.ed, 1                    ; 2 uses
  %i.ef = icmp eq i32 %i.ee, 2
  %spec.select.i.3 = select i1 %i.ef, i32 0, i32 %i.ee
  store i32 %spec.select.i.3, ptr %i.di, align 8, !tbaa !1355
  %i.eg = fmul float %i.do, %i.ec
  %i.eh = getelementptr inbounds nuw i8, ptr %.val.3, i64 648
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.d
  store float %i.eg, ptr %i.ei, align 4, !tbaa !53
  %.val.4 = load ptr, ptr %0, align 8, !tbaa !1346 ; 9 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.val.4, i64 672 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.val.4, i64 808
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !1352, !nonnull !172, !align !315
  %i.em = getelementptr inbounds nuw i8, ptr %.val.4, i64 804
  %i.en = load i32, ptr %i.em, align 4, !tbaa !1354
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL17bayer_channel_mapE, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %.val.4, i64 800 ; 3 uses
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !1355
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.es
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !180
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.eu
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !53
  %i.ex = getelementptr inbounds nuw i8, ptr %.val.4, i64 784
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !836
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !17
  %i.fa = getelementptr inbounds nuw i8, ptr %.val.4, i64 732
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !844 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.val.4, i64 712
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !845, !noalias !1356
  %i.fe = add nsw i32 %i.fd, -1
  %i.ff = icmp eq i32 %i.fb, %i.fe
  br i1 %i.ff, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.3
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(164) %i.ej)
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.4

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.3
  %i.fg = add nsw i32 %i.fb, -1
  %i.fh = getelementptr inbounds nuw i8, ptr %.val.4, i64 736
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !849
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(164) %i.ej, i32 noundef %i.fg, i32 noundef %i.fi, i32 noundef 0)
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.4

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.4: ; preds = %bb.k, %bb.j
  %i.fj = uitofp i8 %i.ez to float
  %i.fk = fmul nnan float %i.fj, f0x3B808081
  %i.fl = load i32, ptr %i.eq, align 8, !tbaa !1355
  %i.fm = add nsw i32 %i.fl, 1                    ; 2 uses
  %i.fn = icmp eq i32 %i.fm, 2
  %spec.select.i.4 = select i1 %i.fn, i32 0, i32 %i.fm
  store i32 %spec.select.i.4, ptr %i.eq, align 8, !tbaa !1355
  %i.fo = fmul float %i.ew, %i.fk
  %i.fp = getelementptr inbounds nuw i8, ptr %.val.4, i64 816
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.d
  store float %i.fo, ptr %i.fq, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<float, unsigned char, 2, 5, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Window::Row", align 8 ; 37 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 8 uses
  %4 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<float, unsigned char, 2, 5, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Window", align 8 ; 20 uses
  %5 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<float, unsigned char, 2, 5, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Context", align 8 ; 11 uses
  %6 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 10 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !58    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1359 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.d = load ptr, ptr %.val, align 8, !tbaa !1361, !nonnull !172, !align !336
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0, i1 noundef zeroext true)
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !868  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !867
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %.lr.ph54.i.i.i, label %._crit_edge55.i.i.i

.lr.ph54.i.i.i:                                   ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 2 uses
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
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.bc = add i32 %i.f, -1
  br label %bb.d

._crit_edge55.i.i.i:                              ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !888
  %.not.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS7_RA4_KfNS1_3ROIEiEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge55.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS7_RA4_KfNS1_3ROIEiEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #33
  unreachable

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %.lr.ph54.i.i.i
  %indvars.iv.i.i.i = phi i32 [ %i.bc, %.lr.ph54.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 2 uses
  %.01752.i.i.i = phi i32 [ %i.f, %.lr.ph54.i.i.i ], [ %i.jz, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.bh = load i32, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !1362, !nonnull !172, !align !336 ; 3 uses
  %i.bj = load i32, ptr %i.k, align 8, !tbaa !1329
  %i.bk = load i32, ptr %i.l, align 4, !tbaa !1331
  %i.bl = load ptr, ptr %i.m, align 8, !tbaa !1363, !nonnull !172, !align !315 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %4, i8 0, i64 24, i1 false)
  %i.bm = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi)
          to label %.preheader91.i.i.i.i unwind label %bb.e ; 4 uses

.preheader91.i.i.i.i:                             ; preds = %bb.d
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !891 ; 3 uses
  store i32 %i.bn, ptr %i.n, align 4, !tbaa !1364
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !897
  %i.bq = add nsw i32 %i.bp, %i.bn
  store i32 %i.bq, ptr %i.o, align 8, !tbaa !1369
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !899 ; 2 uses
  store i32 %i.bs, ptr %i.p, align 4, !tbaa !1370
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !901
  %i.bv = add nsw i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.q, align 8, !tbaa !1371
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.r, align 8, !tbaa !3
  store i32 4, ptr %i.s, align 8, !tbaa !3
  %i.bw = sub i32 %i.bn, %i.bh                    ; 3 uses
  %i.bx = call i32 @llvm.smax.i32(i32 %i.bw, i32 -2) ; 4 uses
  %spec.store.select.i.i.i.i = add i32 %i.bx, 2   ; 3 uses
  %i.by = add i32 %i.bx, %i.bh                    ; 3 uses
  %i.bz = add nsw i32 %i.by, %i.bj
  %i.ca = srem i32 %i.bz, 2                       ; 3 uses
  %i.cb = icmp slt i32 %i.bw, 3
  %i.cc = icmp sgt i32 %i.bw, -2
  %i.cd = add i32 %.01752.i.i.i, -2
  %i.ce = sub i32 3, %.01752.i.i.i
  %i.cf = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cg = sub i32 -2, %i.bx
  %i.ch = add i32 %i.bx, 3
  %smax129.i.i.i.i = call i32 @llvm.smax.i32(i32 %spec.store.select.i.i.i.i, i32 1)
  %wide.trip.count.i.i.i.i = zext nneg i32 %smax129.i.i.i.i to i64
  %smax67.i.i.i = call i64 @llvm.smax.i64(i64 %i.cf, i64 4)
  br label %.preheader90.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.preheader90.i.i.i.i:                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, %.preheader91.i.i.i.i
  %indvars.iv65.i.i.i = phi i32 [ %indvars.iv.next66.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %indvars.iv.i.i.i, %.preheader91.i.i.i.i ] ; 2 uses
  %indvars.iv116.i.i.i.i = phi i32 [ %indvars.iv.next117.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.ce, %.preheader91.i.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i.i = phi i32 [ %indvars.iv.next.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.cd, %.preheader91.i.i.i.i ] ; 3 uses
  %.074105.i.i.i.i = phi i32 [ %i.ie, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ 0, %.preheader91.i.i.i.i ]
  %i.cj = load i32, ptr %i.p, align 4, !tbaa !1370
  %i.ck = load i32, ptr %i.q, align 8, !tbaa !1371
  %smax.i.i.i = call i32 @llvm.smax.i32(i32 %i.cj, i32 %indvars.iv.i.i.i.i)
  %i.cl = add i32 %smax.i.i.i, %indvars.iv116.i.i.i.i
  %i.cm = and i32 %i.cl, -2                       ; 2 uses
  %i.cn = add i32 %i.cm, %indvars.iv.i.i.i.i      ; 2 uses
  %i.co = add i32 %i.cm, %indvars.iv65.i.i.i
  %i.cp = add i32 %i.ck, -1
  %smin.i.i.i = call i32 @llvm.smin.i32(i32 %i.cn, i32 %i.cp)
  %i.cq = sub i32 %i.co, %smin.i.i.i
  %i.cr = and i32 %i.cq, -2
  %i.cs = sub i32 %i.cn, %i.cr                    ; 3 uses
  %i.ct = add nsw i32 %i.cs, %i.bk
  %i.cu = srem i32 %i.ct, 2                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_iiiNS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i32 noundef %i.by, i32 noundef %i.cs, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.f

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %.preheader90.i.i.i.i
  store i32 %i.ca, ptr %i.t, align 8, !tbaa !1355
  store i32 %i.cu, ptr %i.u, align 4, !tbaa !1354
  store ptr %i.bl, ptr %i.v, align 8, !tbaa !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.w, i8 0, i64 20, i1 false)
  br i1 %i.cb, label %.lr.ph.i.i.i.i, label %.lr.ph104.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.s
  br i1 %i.cc, label %.lr.ph104.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph104.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL17bayer_channel_mapE, i64 %i.cv
  br label %bb.aj

bb.f:                                             ; preds = %.preheader90.i.i.i.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.s
  %i.cy = phi i32 [ %spec.select.i.i.i.i.i, %bb.s ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv118.i.i.i.i = phi i64 [ %indvars.iv.next119.i.i.i.i, %bb.s ], [ %i.cf, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
  %i.cz = load ptr, ptr %i.v, align 8, !tbaa !1352, !nonnull !172, !align !315
  %i.da = load i32, ptr %i.u, align 4, !tbaa !1354
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL17bayer_channel_mapE, i64 %i.db
  %i.dd = sext i32 %i.cy to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !180
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.df
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !53
  %i.di = load ptr, ptr %i.x, align 8, !tbaa !836 ; 3 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !17
  %i.dk = load i32, ptr %i.y, align 4, !tbaa !844 ; 3 uses
  %i.dl = load i32, ptr %i.z, align 8, !tbaa !845, !noalias !1372 ; 2 uses
  %i.dm = add nsw i32 %i.dl, -1
  %i.dn = icmp eq i32 %i.dk, %i.dm
  br i1 %i.dn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.do = add nsw i32 %i.dk, -1
  %i.dp = load i32, ptr %i.ab, align 8, !tbaa !849
  br label %.invoke.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dq = add nsw i32 %i.dk, 1                    ; 7 uses
  store i32 %i.dq, ptr %i.y, align 4, !tbaa !844
  %i.dr = icmp slt i32 %i.dq, %i.dl
  br i1 %i.dr, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.ds = load i8, ptr %i.ah, align 1, !tbaa !850, !range !171, !noundef !172
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.j, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.i
  %.pre.i.i.i.i.i = load i32, ptr %i.ab, align 8, !tbaa !849
  %.pre.i.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !856
  br label %.invoke.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.du = load i8, ptr %i.ai, align 1, !tbaa !851, !range !171, !noundef !172
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.dw = load i64, ptr %i.ak, align 8, !tbaa !852
  %i.dx = getelementptr inbounds i8, ptr %i.di, i64 %i.dw
  store ptr %i.dx, ptr %i.x, align 8, !tbaa !836
  %i.dy = load i32, ptr %i.al, align 8, !tbaa !853
  %.not.i.i85.i.i.i.i = icmp slt i32 %i.dq, %i.dy
  br i1 %.not.i.i85.i.i.i.i, label %bb.s, label %bb.l, !prof !55

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.s unwind label %bb.t

bb.m:                                             ; preds = %bb.j
  %i.dz = load i8, ptr %i.aj, align 2, !tbaa !854, !range !171, !noundef !172
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eb = load i64, ptr %i.ak, align 8, !tbaa !852
  %i.ec = getelementptr inbounds i8, ptr %i.di, i64 %i.eb
  store ptr %i.ec, ptr %i.x, align 8, !tbaa !836
  %i.ed = load i32, ptr %i.al, align 8, !tbaa !853
  %i.ee = icmp slt i32 %i.dq, %i.ed               ; 3 uses
  %i.ef = load i32, ptr %i.am, align 4
  %i.eg = icmp sge i32 %i.dq, %i.ef
  %not..i.i.i.i.i.i = xor i1 %i.ee, true
  %or.cond.i.i.i.i.i.i = select i1 %not..i.i.i.i.i.i, i1 true, i1 %i.eg, !prof !855
  %i.eh = load ptr, ptr %i.an, align 8
  %i.ei = icmp eq ptr %i.eh, null
  %i.ej = select i1 %or.cond.i.i.i.i.i.i, i1 true, i1 %i.ei, !prof !855
  br i1 %i.ej, label %bb.o, label %bb.s, !prof !136

bb.o:                                             ; preds = %bb.n
  %i.ek = load ptr, ptr %2, align 8, !tbaa !832
  %i.el = load i32, ptr %i.ab, align 8, !tbaa !849
  %i.em = load i32, ptr %i.ae, align 4, !tbaa !856
  %i.en = load i32, ptr %i.as, align 8, !tbaa !857
  %i.eo = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i32 noundef %i.dq, i32 noundef %i.el, i32 noundef %i.em, ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.am, ptr noundef nonnull align 1 dereferenceable(1) %i.ar, i1 noundef zeroext %i.ee, i32 noundef %i.en)
          to label %.noexc87.i.i.i.i unwind label %bb.t

.noexc87.i.i.i.i:                                 ; preds = %bb.o
  %i.ep = zext i1 %i.ee to i8
  store ptr %i.eo, ptr %i.x, align 8, !tbaa !836
  store i8 %i.ep, ptr %i.ah, align 1, !tbaa !850
  br label %bb.s

bb.p:                                             ; preds = %bb.h
  %i.eq = load i32, ptr %i.aa, align 4, !tbaa !858 ; 3 uses
  store i32 %i.eq, ptr %i.y, align 4, !tbaa !844
  %i.er = load i32, ptr %i.ab, align 8, !tbaa !849
  %i.es = add nsw i32 %i.er, 1                    ; 3 uses
  store i32 %i.es, ptr %i.ab, align 8, !tbaa !849
  %i.et = load i32, ptr %i.ac, align 8, !tbaa !859
  %.not.i84.i.i.i.i = icmp slt i32 %i.es, %i.et
  %.pre131.i.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !856 ; 2 uses
  br i1 %.not.i84.i.i.i.i, label %.invoke.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eu = load i32, ptr %i.ad, align 4, !tbaa !860 ; 2 uses
  store i32 %i.eu, ptr %i.ab, align 8, !tbaa !849
  %i.ev = add nsw i32 %.pre131.i.i.i.i, 1         ; 3 uses
  store i32 %i.ev, ptr %i.ae, align 4, !tbaa !856
  %i.ew = load i32, ptr %i.af, align 8, !tbaa !861
  %.not1.i.i.i.i.i = icmp slt i32 %i.ev, %i.ew
  br i1 %.not1.i.i.i.i.i, label %.invoke.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr %i.ag, align 8, !tbaa !862
  br label %bb.s

.invoke.i.i.i.i:                                  ; preds = %bb.q, %bb.p, %._crit_edge.i.i.i.i.i, %bb.g
  %i.ex = phi i32 [ %i.do, %bb.g ], [ %i.eq, %bb.p ], [ %i.eq, %bb.q ], [ %i.dq, %._crit_edge.i.i.i.i.i ]
  %i.ey = phi i32 [ %i.dp, %bb.g ], [ %i.es, %bb.p ], [ %i.eu, %bb.q ], [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  %i.ez = phi i32 [ 0, %bb.g ], [ %.pre131.i.i.i.i, %bb.p ], [ %i.ev, %bb.q ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(164) %2, i32 noundef %i.ex, i32 noundef %i.ey, i32 noundef %i.ez)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.invoke.i.i.i.i, %bb.r, %.noexc87.i.i.i.i, %bb.n, %bb.m, %bb.l, %bb.k
  %i.fa = uitofp i8 %i.dj to float
  %i.fb = fmul nnan float %i.fa, f0x3B808081
  %i.fc = load i32, ptr %i.t, align 8, !tbaa !1355
  %i.fd = add nsw i32 %i.fc, 1                    ; 2 uses
  %i.fe = icmp eq i32 %i.fd, 2
  %spec.select.i.i.i.i.i = select i1 %i.fe, i32 0, i32 %i.fd ; 2 uses
  store i32 %spec.select.i.i.i.i.i, ptr %i.t, align 8, !tbaa !1355
  %i.ff = fmul float %i.dh, %i.fb
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv118.i.i.i.i
  store float %i.ff, ptr %i.fg, align 4, !tbaa !53
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv118.i.i.i.i, %smax67.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1375

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.an, %.preheader.i.i.i.i
  %i.fi = load ptr, ptr %i.at, align 8, !tbaa !1376 ; 7 uses
  %i.fj = load ptr, ptr %i.au, align 8, !tbaa !1377
  %.not.i.i.i.i.i = icmp eq ptr %i.fi, %i.fj
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.fi, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %.noexc80.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc80.i.i.i.i:                                 ; preds = %bb.u
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.fk, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  %i.fl = load ptr, ptr %i.at, align 8, !tbaa !1376
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 168
  store ptr %i.fm, ptr %i.at, align 8, !tbaa !1376
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !1346 ; 6 uses
  %i.fn = ptrtoint ptr %i.fi to i64
  %i.fo = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.fp = sub i64 %i.fn, %i.fo                    ; 3 uses
  %i.fq = icmp eq i64 %i.fp, 9223372036854775800
  br i1 %i.fq, label %bb.w, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc81.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.fr = sdiv exact i64 %i.fp, 168               ; 3 uses
  %i.fs = icmp eq ptr %i.fi, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.fs, i64 1, i64 %i.fr
  %i.ft = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.fr ; 2 uses
  %i.fu = icmp ult i64 %i.ft, %i.fr
  %i.fv = call i64 @llvm.umin.i64(i64 %i.ft, i64 54901024028897475)
  %i.fw = select i1 %i.fu, i64 54901024028897475, i64 %i.fv ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.fw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.fx = mul nuw nsw i64 %i.fw, 168              ; 2 uses
  %i.fy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fx) #32
          to label %.noexc82.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc82.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fp ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.fz, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.x unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i

bb.x:                                             ; preds = %.noexc82.i.i.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ga, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  br i1 %i.fs, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.x
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 168
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.x, %bb.y
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gf, %bb.y ], [ %i.fy, %bb.x ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ge, %bb.y ], [ %.val.i.i.i.i.i.i, %bb.x ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(164) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gd = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gc, ptr noundef nonnull align 8 dereferenceable(36) %i.gd, i64 36, i1 false)
  %i.ge = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 168
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ge, %i.fi
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1378

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gg = landingpad { ptr, i32 }
          catch ptr null
  %i.gh = extractvalue { ptr, i32 } %i.gg, 0
  %i.gi = call ptr @__cxa_begin_catch(ptr %i.gh) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_(ptr noundef nonnull %i.fy, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gk = landingpad { ptr, i32 }
          catch ptr null
  %i.gl = extractvalue { ptr, i32 } %i.gk, 0
  call void @__clang_call_terminate(ptr %i.gl) #33
  unreachable

bb.ac:                                            ; preds = %bb.z
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.y
  %i.gm = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 336
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.gr, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !888
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  call void @__clang_call_terminate(ptr %i.gq) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gr, %i.fi
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1379

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i
  %i.gs = phi ptr [ %i.gb, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.gm, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  %i.gt = load ptr, ptr %i.au, align 8, !tbaa !1377
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = sub i64 %i.gu, %i.fo
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.gv) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc82.i.i.i.i
  %i.gw = landingpad { ptr, i32 }
          catch ptr null
  %i.gx = extractvalue { ptr, i32 } %i.gw, 0
  %i.gy = call ptr @__cxa_begin_catch(ptr %i.gx) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.aa
  %i.gz = extractvalue { ptr, i32 } %i.gj, 0
  %i.ha = call ptr @__cxa_begin_catch(ptr %i.gz) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(164) dereferenceable(164) %i.fz) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  %i.hb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.ah

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fy, i64 noundef %i.fx) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.ai unwind label %bb.ag

bb.ah:                                            ; preds = %bb.ag
  %i.hc = landingpad { ptr, i32 }
          catch ptr null
  %i.hd = extractvalue { ptr, i32 } %i.hc, 0
  call void @__clang_call_terminate(ptr %i.hd) #33
  unreachable

bb.ai:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.af, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  store ptr %i.fy, ptr %4, align 8, !tbaa !1346
  store ptr %i.gs, ptr %i.at, align 8, !tbaa !1376
  %i.he = getelementptr inbounds nuw [168 x i8], ptr %i.fy, i64 %i.fw
  store ptr %i.he, ptr %i.au, align 8, !tbaa !1377
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.an, %.lr.ph104.i.i.i.i
  %indvars.iv126.i.i.i.i = phi i64 [ 0, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next127.i.i.i.i, %bb.an ] ; 3 uses
  %indvars.iv124.i.i.i.i = phi i32 [ %i.ch, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next125.i.i.i.i, %bb.an ] ; 2 uses
  %indvars.iv121.i.i.i.i = phi i32 [ %i.cg, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next122.i.i.i.i, %bb.an ] ; 3 uses
  %smax123.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv121.i.i.i.i, i32 0)
  %i.hf = add i32 %smax123.i.i.i.i, %indvars.iv124.i.i.i.i
  %i.hg = and i32 %i.hf, -2
  %i.hh = add i32 %i.hg, %indvars.iv121.i.i.i.i   ; 3 uses
  %i.hi = add nsw i32 %i.hh, %spec.store.select.i.i.i.i ; 2 uses
  %i.hj = icmp slt i32 %i.hi, 5
  br i1 %i.hj, label %bb.ak, label %bb.al

end_hunk_8
begin_hunk_9_@_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv:bb.a
  %i.m = load float, ptr %i.l, align 4, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !836
  %i.p = load i16, ptr %i.o, align 2, !tbaa !1004 ; 2 uses
  %i.q = zext i16 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 13
  %i.s = and i32 %i.r, 268427264                  ; 6 uses
  %.signext.i.i.i.i.i = sext i16 %i.p to i32
  %i.t = and i32 %.signext.i.i.i.i.i, -2147483648 ; 3 uses
  %i.u = icmp samesign ugt i32 %i.s, 8388607
  br i1 %i.u, label %bb.b, label %bb.e, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.v = or disjoint i32 %i.s, %i.t               ; 2 uses
  %i.w = icmp samesign ult i32 %i.s, 260046848
  br i1 %i.w, label %bb.c, label %bb.d, !prof !55

bb.c:                                             ; preds = %bb.b
  %i.x = add nuw nsw i32 %i.v, 939524096
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit

bb.d:                                             ; preds = %bb.b
  %i.y = or i32 %i.v, 2139095040
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit

bb.e:                                             ; preds = %bb.a
  %.not.i.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.s, i1 true)
  %i.aa = add nsw i32 %i.z, -8                    ; 2 uses
  %i.ab = shl i32 %i.s, %i.aa
  %i.ac = or i32 %i.t, %i.ab
  %i.ad = or i32 %i.ac, 947912704
  %i.ae = shl nuw nsw i32 %i.aa, 23
  %i.af = sub nuw i32 %i.ad, %i.ae
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit

_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.i.i.i.i.i = phi i32 [ %i.x, %bb.c ], [ %i.y, %bb.d ], [ %i.af, %bb.f ], [ %i.t, %bb.e ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !844 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !845, !noalias !1413
  %i.ak = add nsw i32 %i.aj, -1
  %i.al = icmp eq i32 %i.ah, %i.ak
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit
  %i.am = add nsw i32 %i.ah, -1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !849
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %0, i32 noundef %i.am, i32 noundef %i.ao, i32 noundef 0)
  br label %bb.i

bb.h:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %0)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ap = bitcast i32 %.sroa.0.0.i.i.i.i.i to float
  %i.aq = load i32, ptr %i.g, align 8, !tbaa !1412
  %i.ar = add nsw i32 %i.aq, 1                    ; 2 uses
  %i.as = icmp eq i32 %i.ar, 2
  %spec.select = select i1 %i.as, i32 0, i32 %i.ar
  store i32 %spec.select, ptr %i.g, align 8, !tbaa !1412
  %i.at = fmul float %i.m, %i.ap
  ret float %i.at
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKSB_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<float, Imath_3_1::half, 2, 5, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Window::Row", align 8 ; 37 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 8 uses
  %4 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<float, Imath_3_1::half, 2, 5, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Window", align 8 ; 20 uses
  %5 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<float, Imath_3_1::half, 2, 5, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Context", align 8 ; 11 uses
  %6 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 10 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !58    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1416 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.d = load ptr, ptr %.val, align 8, !tbaa !1418, !nonnull !172, !align !336
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0, i1 noundef zeroext true)
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !868  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !867
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %.lr.ph55.i.i.i, label %._crit_edge56.i.i.i

.lr.ph55.i.i.i:                                   ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 2 uses
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
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.bc = add i32 %i.f, -1
  br label %bb.d

._crit_edge56.i.i.i:                              ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !888
  %.not.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfNS1_3ROIEiEUlSG_E_JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge56.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfNS1_3ROIEiEUlSG_E_JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #33
  unreachable

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %.lr.ph55.i.i.i
  %indvars.iv.i.i.i = phi i32 [ %i.bc, %.lr.ph55.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 2 uses
  %.01753.i.i.i = phi i32 [ %i.f, %.lr.ph55.i.i.i ], [ %i.ko, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.bh = load i32, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !1419, !nonnull !172, !align !336 ; 3 uses
  %i.bj = load i32, ptr %i.k, align 8, !tbaa !1386
  %i.bk = load i32, ptr %i.l, align 4, !tbaa !1388
  %i.bl = load ptr, ptr %i.m, align 8, !tbaa !1420, !nonnull !172, !align !315 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %4, i8 0, i64 24, i1 false)
  %i.bm = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi)
          to label %.preheader91.i.i.i.i unwind label %bb.e ; 4 uses

.preheader91.i.i.i.i:                             ; preds = %bb.d
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !891 ; 3 uses
  store i32 %i.bn, ptr %i.n, align 4, !tbaa !1421
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !897
  %i.bq = add nsw i32 %i.bp, %i.bn
  store i32 %i.bq, ptr %i.o, align 8, !tbaa !1426
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !899 ; 2 uses
  store i32 %i.bs, ptr %i.p, align 4, !tbaa !1427
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !901
  %i.bv = add nsw i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.q, align 8, !tbaa !1428
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.r, align 8, !tbaa !3
  store i32 4, ptr %i.s, align 8, !tbaa !3
  %i.bw = sub i32 %i.bn, %i.bh                    ; 3 uses
  %i.bx = call i32 @llvm.smax.i32(i32 %i.bw, i32 -2) ; 4 uses
  %spec.store.select.i.i.i.i = add i32 %i.bx, 2   ; 3 uses
  %i.by = add i32 %i.bx, %i.bh                    ; 3 uses
  %i.bz = add nsw i32 %i.by, %i.bj
  %i.ca = srem i32 %i.bz, 2                       ; 3 uses
  %i.cb = icmp slt i32 %i.bw, 3
  %i.cc = icmp sgt i32 %i.bw, -2
  %i.cd = add i32 %.01753.i.i.i, -2
  %i.ce = sub i32 3, %.01753.i.i.i
  %i.cf = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cg = sub i32 -2, %i.bx
  %i.ch = add i32 %i.bx, 3
  %smax129.i.i.i.i = call i32 @llvm.smax.i32(i32 %spec.store.select.i.i.i.i, i32 1)
  %wide.trip.count.i.i.i.i = zext nneg i32 %smax129.i.i.i.i to i64
  %smax68.i.i.i = call i64 @llvm.smax.i64(i64 %i.cf, i64 4)
  br label %.preheader90.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.preheader90.i.i.i.i:                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, %.preheader91.i.i.i.i
  %indvars.iv66.i.i.i = phi i32 [ %indvars.iv.next67.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %indvars.iv.i.i.i, %.preheader91.i.i.i.i ] ; 2 uses
  %indvars.iv116.i.i.i.i = phi i32 [ %indvars.iv.next117.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.ce, %.preheader91.i.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i.i = phi i32 [ %indvars.iv.next.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.cd, %.preheader91.i.i.i.i ] ; 3 uses
  %.074105.i.i.i.i = phi i32 [ %i.it, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ 0, %.preheader91.i.i.i.i ]
  %i.cj = load i32, ptr %i.p, align 4, !tbaa !1427
  %i.ck = load i32, ptr %i.q, align 8, !tbaa !1428
  %smax.i.i.i = call i32 @llvm.smax.i32(i32 %i.cj, i32 %indvars.iv.i.i.i.i)
  %i.cl = add i32 %smax.i.i.i, %indvars.iv116.i.i.i.i
  %i.cm = and i32 %i.cl, -2                       ; 2 uses
  %i.cn = add i32 %i.cm, %indvars.iv.i.i.i.i      ; 2 uses
  %i.co = add i32 %i.cm, %indvars.iv66.i.i.i
  %i.cp = add i32 %i.ck, -1
  %smin.i.i.i = call i32 @llvm.smin.i32(i32 %i.cn, i32 %i.cp)
  %i.cq = sub i32 %i.co, %smin.i.i.i
  %i.cr = and i32 %i.cq, -2
  %i.cs = sub i32 %i.cn, %i.cr                    ; 3 uses
  %i.ct = add nsw i32 %i.cs, %i.bk
  %i.cu = srem i32 %i.ct, 2                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_iiiNS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i32 noundef %i.by, i32 noundef %i.cs, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.f

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %.preheader90.i.i.i.i
  store i32 %i.ca, ptr %i.t, align 8, !tbaa !1412
  store i32 %i.cu, ptr %i.u, align 4, !tbaa !1411
  store ptr %i.bl, ptr %i.v, align 8, !tbaa !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.w, i8 0, i64 20, i1 false)
  br i1 %i.cb, label %.lr.ph.i.i.i.i, label %.lr.ph104.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.x
  br i1 %i.cc, label %.lr.ph104.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph104.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL17bayer_channel_mapE, i64 %i.cv
  br label %bb.ao

bb.f:                                             ; preds = %.preheader90.i.i.i.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.x
  %i.cy = phi i32 [ %spec.select.i.i.i.i.i, %bb.x ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv118.i.i.i.i = phi i64 [ %indvars.iv.next119.i.i.i.i, %bb.x ], [ %i.cf, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
  %i.cz = load ptr, ptr %i.v, align 8, !tbaa !1409, !nonnull !172, !align !315
  %i.da = load i32, ptr %i.u, align 4, !tbaa !1411
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL17bayer_channel_mapE, i64 %i.db
  %i.dd = sext i32 %i.cy to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !180
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.df
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !53
  %i.di = load ptr, ptr %i.x, align 8, !tbaa !836 ; 3 uses
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !1004 ; 2 uses
  %i.dk = zext i16 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 13
  %i.dm = and i32 %i.dl, 268427264                ; 6 uses
  %.signext.i.i.i.i.i.i.i.i.i.i = sext i16 %i.dj to i32
  %i.dn = and i32 %.signext.i.i.i.i.i.i.i.i.i.i, -2147483648 ; 3 uses
  %i.do = icmp samesign ugt i32 %i.dm, 8388607
  br i1 %i.do, label %bb.g, label %bb.j, !prof !55

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dp = or disjoint i32 %i.dm, %i.dn            ; 2 uses
  %i.dq = icmp samesign ult i32 %i.dm, 260046848
  br i1 %i.dq, label %bb.h, label %bb.i, !prof !55

bb.h:                                             ; preds = %bb.g
  %i.dr = add nuw nsw i32 %i.dp, 939524096
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ds = or i32 %i.dp, 2139095040
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.dm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dt = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.dm, i1 true)
  %i.du = add nsw i32 %i.dt, -8                   ; 2 uses
  %i.dv = shl i32 %i.dm, %i.du
  %i.dw = or i32 %i.dn, %i.dv
  %i.dx = or i32 %i.dw, 947912704
  %i.dy = shl nuw nsw i32 %i.du, 23
  %i.dz = sub nuw i32 %i.dx, %i.dy
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.dr, %bb.h ], [ %i.ds, %bb.i ], [ %i.dz, %bb.k ], [ %i.dn, %bb.j ]
  %i.ea = load i32, ptr %i.y, align 4, !tbaa !844 ; 3 uses
  %i.eb = load i32, ptr %i.z, align 8, !tbaa !845, !noalias !1429 ; 2 uses
  %i.ec = add nsw i32 %i.eb, -1
  %i.ed = icmp eq i32 %i.ea, %i.ec
  br i1 %i.ed, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i
  %i.ee = add nsw i32 %i.ea, -1
  %i.ef = load i32, ptr %i.ab, align 8, !tbaa !849
  br label %.invoke.i.i.i.i

bb.m:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i
  %i.eg = add nsw i32 %i.ea, 1                    ; 7 uses
  store i32 %i.eg, ptr %i.y, align 4, !tbaa !844
  %i.eh = icmp slt i32 %i.eg, %i.eb
  br i1 %i.eh, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.ei = load i8, ptr %i.ah, align 1, !tbaa !850, !range !171, !noundef !172
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.o, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.n
  %.pre.i.i.i.i.i = load i32, ptr %i.ab, align 8, !tbaa !849
  %.pre.i.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !856
  br label %.invoke.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.ek = load i8, ptr %i.ai, align 1, !tbaa !851, !range !171, !noundef !172
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.em = load i64, ptr %i.ak, align 8, !tbaa !852
  %i.en = getelementptr inbounds i8, ptr %i.di, i64 %i.em
  store ptr %i.en, ptr %i.x, align 8, !tbaa !836
  %i.eo = load i32, ptr %i.al, align 8, !tbaa !853
  %.not.i.i85.i.i.i.i = icmp slt i32 %i.eg, %i.eo
  br i1 %.not.i.i85.i.i.i.i, label %bb.x, label %bb.q, !prof !55

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.x unwind label %bb.y

bb.r:                                             ; preds = %bb.o
  %i.ep = load i8, ptr %i.aj, align 2, !tbaa !854, !range !171, !noundef !172
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.er = load i64, ptr %i.ak, align 8, !tbaa !852
  %i.es = getelementptr inbounds i8, ptr %i.di, i64 %i.er
  store ptr %i.es, ptr %i.x, align 8, !tbaa !836
  %i.et = load i32, ptr %i.al, align 8, !tbaa !853
  %i.eu = icmp slt i32 %i.eg, %i.et               ; 3 uses
  %i.ev = load i32, ptr %i.am, align 4
  %i.ew = icmp sge i32 %i.eg, %i.ev
  %not..i.i.i.i.i.i = xor i1 %i.eu, true
  %or.cond.i.i.i.i.i.i = select i1 %not..i.i.i.i.i.i, i1 true, i1 %i.ew, !prof !855
  %i.ex = load ptr, ptr %i.an, align 8
  %i.ey = icmp eq ptr %i.ex, null
  %i.ez = select i1 %or.cond.i.i.i.i.i.i, i1 true, i1 %i.ey, !prof !855
  br i1 %i.ez, label %bb.t, label %bb.x, !prof !136

bb.t:                                             ; preds = %bb.s
  %i.fa = load ptr, ptr %2, align 8, !tbaa !832
  %i.fb = load i32, ptr %i.ab, align 8, !tbaa !849
  %i.fc = load i32, ptr %i.ae, align 4, !tbaa !856
  %i.fd = load i32, ptr %i.as, align 8, !tbaa !857
  %i.fe = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.fa, i32 noundef %i.eg, i32 noundef %i.fb, i32 noundef %i.fc, ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.am, ptr noundef nonnull align 1 dereferenceable(1) %i.ar, i1 noundef zeroext %i.eu, i32 noundef %i.fd)
          to label %.noexc87.i.i.i.i unwind label %bb.y

.noexc87.i.i.i.i:                                 ; preds = %bb.t
  %i.ff = zext i1 %i.eu to i8
  store ptr %i.fe, ptr %i.x, align 8, !tbaa !836
  store i8 %i.ff, ptr %i.ah, align 1, !tbaa !850
  br label %bb.x

bb.u:                                             ; preds = %bb.m
  %i.fg = load i32, ptr %i.aa, align 4, !tbaa !858 ; 3 uses
  store i32 %i.fg, ptr %i.y, align 4, !tbaa !844
  %i.fh = load i32, ptr %i.ab, align 8, !tbaa !849
  %i.fi = add nsw i32 %i.fh, 1                    ; 3 uses
  store i32 %i.fi, ptr %i.ab, align 8, !tbaa !849
  %i.fj = load i32, ptr %i.ac, align 8, !tbaa !859
  %.not.i84.i.i.i.i = icmp slt i32 %i.fi, %i.fj
  %.pre131.i.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !856 ; 2 uses
  br i1 %.not.i84.i.i.i.i, label %.invoke.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fk = load i32, ptr %i.ad, align 4, !tbaa !860 ; 2 uses
  store i32 %i.fk, ptr %i.ab, align 8, !tbaa !849
  %i.fl = add nsw i32 %.pre131.i.i.i.i, 1         ; 3 uses
  store i32 %i.fl, ptr %i.ae, align 4, !tbaa !856
  %i.fm = load i32, ptr %i.af, align 8, !tbaa !861
  %.not1.i.i.i.i.i = icmp slt i32 %i.fl, %i.fm
  br i1 %.not1.i.i.i.i.i, label %.invoke.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 0, ptr %i.ag, align 8, !tbaa !862
  br label %bb.x

.invoke.i.i.i.i:                                  ; preds = %bb.v, %bb.u, %._crit_edge.i.i.i.i.i, %bb.l
  %i.fn = phi i32 [ %i.ee, %bb.l ], [ %i.fg, %bb.u ], [ %i.fg, %bb.v ], [ %i.eg, %._crit_edge.i.i.i.i.i ]
  %i.fo = phi i32 [ %i.ef, %bb.l ], [ %i.fi, %bb.u ], [ %i.fk, %bb.v ], [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  %i.fp = phi i32 [ 0, %bb.l ], [ %.pre131.i.i.i.i, %bb.u ], [ %i.fl, %bb.v ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(164) %2, i32 noundef %i.fn, i32 noundef %i.fo, i32 noundef %i.fp)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %.invoke.i.i.i.i, %bb.w, %.noexc87.i.i.i.i, %bb.s, %bb.r, %bb.q, %bb.p
  %i.fq = bitcast i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i to float
  %i.fr = load i32, ptr %i.t, align 8, !tbaa !1412
  %i.fs = add nsw i32 %i.fr, 1                    ; 2 uses
  %i.ft = icmp eq i32 %i.fs, 2
  %spec.select.i.i.i.i.i = select i1 %i.ft, i32 0, i32 %i.fs ; 2 uses
  store i32 %spec.select.i.i.i.i.i, ptr %i.t, align 8, !tbaa !1412
  %i.fu = fmul float %i.dh, %i.fq
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv118.i.i.i.i
  store float %i.fu, ptr %i.fv, align 4, !tbaa !53
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv118.i.i.i.i, %smax68.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1432

bb.y:                                             ; preds = %.invoke.i.i.i.i, %bb.t, %bb.q
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.as, %.preheader.i.i.i.i
  %i.fx = load ptr, ptr %i.at, align 8, !tbaa !1433 ; 7 uses
  %i.fy = load ptr, ptr %i.au, align 8, !tbaa !1434
  %.not.i.i.i.i.i = icmp eq ptr %i.fx, %i.fy
  br i1 %.not.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.fx, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %.noexc80.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc80.i.i.i.i:                                 ; preds = %bb.z
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.fz, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  %i.ga = load ptr, ptr %i.at, align 8, !tbaa !1433
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 168
  store ptr %i.gb, ptr %i.at, align 8, !tbaa !1433
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !1403 ; 6 uses
  %i.gc = ptrtoint ptr %i.fx to i64
  %i.gd = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.ge = sub i64 %i.gc, %i.gd                    ; 3 uses
  %i.gf = icmp eq i64 %i.ge, 9223372036854775800
  br i1 %i.gf, label %bb.ab, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc81.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.ab
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.aa
  %i.gg = sdiv exact i64 %i.ge, 168               ; 3 uses
  %i.gh = icmp eq ptr %i.fx, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.gh, i64 1, i64 %i.gg
  %i.gi = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.gg ; 2 uses
  %i.gj = icmp ult i64 %i.gi, %i.gg
  %i.gk = call i64 @llvm.umin.i64(i64 %i.gi, i64 54901024028897475)
  %i.gl = select i1 %i.gj, i64 54901024028897475, i64 %i.gk ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.gl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.gm = mul nuw nsw i64 %i.gl, 168              ; 2 uses
  %i.gn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gm) #32
          to label %.noexc82.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc82.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.ge ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.go, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.ac unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i.i

bb.ac:                                            ; preds = %.noexc82.i.i.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gp, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  br i1 %i.gh, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.ac
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 168
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ac, %bb.ad
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gu, %bb.ad ], [ %i.gn, %bb.ac ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gt, %bb.ad ], [ %.val.i.i.i.i.i.i, %bb.ac ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(164) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gs = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gr, ptr noundef nonnull align 8 dereferenceable(36) %i.gs, i64 36, i1 false)
  %i.gt = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 168
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gt, %i.fx
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1435

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gv = landingpad { ptr, i32 }
          catch ptr null
  %i.gw = extractvalue { ptr, i32 } %i.gv, 0
  %i.gx = call ptr @__cxa_begin_catch(ptr %i.gw) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SC_(ptr noundef nonnull %i.gn, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ah unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gy = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gz = landingpad { ptr, i32 }
          catch ptr null
  %i.ha = extractvalue { ptr, i32 } %i.gz, 0
  call void @__clang_call_terminate(ptr %i.ha) #33
  unreachable

bb.ah:                                            ; preds = %bb.ae
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.ad
  %i.hb = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 336
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.hg, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !888
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.he = landingpad { ptr, i32 }
          catch ptr null
  %i.hf = extractvalue { ptr, i32 } %i.he, 0
  call void @__clang_call_terminate(ptr %i.hf) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ai, %.lr.ph.i.i.i.i.i.i.i.i
  %i.hg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.hg, %i.fx
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1436

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i
  %i.hh = phi ptr [ %i.gq, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.hb, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i
  %i.hi = load ptr, ptr %i.au, align 8, !tbaa !1434
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = sub i64 %i.hj, %i.gd
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.hk) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc82.i.i.i.i
  %i.hl = landingpad { ptr, i32 }
          catch ptr null
  %i.hm = extractvalue { ptr, i32 } %i.hl, 0
  %i.hn = call ptr @__cxa_begin_catch(ptr %i.hm) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.af
  %i.ho = extractvalue { ptr, i32 } %i.gy, 0
  %i.hp = call ptr @__cxa_begin_catch(ptr %i.ho) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(164) dereferenceable(164) %i.go) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i

bb.al:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i
  %i.hq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.am

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gn, i64 noundef %i.gm) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.an unwind label %bb.al

bb.am:                                            ; preds = %bb.al
  %i.hr = landingpad { ptr, i32 }
          catch ptr null
  %i.hs = extractvalue { ptr, i32 } %i.hr, 0
  call void @__clang_call_terminate(ptr %i.hs) #33
  unreachable

bb.an:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.ak, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i
  store ptr %i.gn, ptr %4, align 8, !tbaa !1403
  store ptr %i.hh, ptr %i.at, align 8, !tbaa !1433
  %i.ht = getelementptr inbounds nuw [168 x i8], ptr %i.gn, i64 %i.gl
  store ptr %i.ht, ptr %i.au, align 8, !tbaa !1434
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i

bb.ao:                                            ; preds = %bb.as, %.lr.ph104.i.i.i.i
  %indvars.iv126.i.i.i.i = phi i64 [ 0, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next127.i.i.i.i, %bb.as ] ; 3 uses
  %indvars.iv124.i.i.i.i = phi i32 [ %i.ch, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next125.i.i.i.i, %bb.as ] ; 2 uses
  %indvars.iv121.i.i.i.i = phi i32 [ %i.cg, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next122.i.i.i.i, %bb.as ] ; 3 uses
  %smax123.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv121.i.i.i.i, i32 0)
  %i.hu = add i32 %smax123.i.i.i.i, %indvars.iv124.i.i.i.i
  %i.hv = and i32 %i.hu, -2
  %i.hw = add i32 %i.hv, %indvars.iv121.i.i.i.i   ; 3 uses
  %i.hx = add nsw i32 %i.hw, %spec.store.select.i.i.i.i ; 2 uses
  %i.hy = icmp slt i32 %i.hx, 5
  br i1 %i.hy, label %bb.ap, label %bb.aq

end_hunk_9
begin_hunk_10_@_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window6updateEv:bb.a
bb.i:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.2
  %i.dy = add nsw i32 %i.dt, -1
  %i.dz = getelementptr inbounds nuw i8, ptr %.val.3, i64 568
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !849
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(164) %i.db, i32 noundef %i.dy, i32 noundef %i.ea, i32 noundef 0)
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.3

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.3: ; preds = %bb.i, %bb.h
  %i.eb = uitofp i16 %i.dr to float
  %i.ec = fmul nnan float %i.eb, f0x37800080
  %i.ed = load i32, ptr %i.di, align 8, !tbaa !1469
  %i.ee = add nsw i32 %i.ed, 1                    ; 2 uses
  %i.ef = icmp eq i32 %i.ee, 2
  %spec.select.i.3 = select i1 %i.ef, i32 0, i32 %i.ee
  store i32 %spec.select.i.3, ptr %i.di, align 8, !tbaa !1469
  %i.eg = fmul float %i.do, %i.ec
  %i.eh = getelementptr inbounds nuw i8, ptr %.val.3, i64 648
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.d
  store float %i.eg, ptr %i.ei, align 4, !tbaa !53
  %.val.4 = load ptr, ptr %0, align 8, !tbaa !1460 ; 9 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.val.4, i64 672 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.val.4, i64 808
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !1466, !nonnull !172, !align !315
  %i.em = getelementptr inbounds nuw i8, ptr %.val.4, i64 804
  %i.en = load i32, ptr %i.em, align 4, !tbaa !1468
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL17bayer_channel_mapE, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %.val.4, i64 800 ; 3 uses
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !1469
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.es
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !180
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.eu
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !53
  %i.ex = getelementptr inbounds nuw i8, ptr %.val.4, i64 784
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !836
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !1064
  %i.fa = getelementptr inbounds nuw i8, ptr %.val.4, i64 732
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !844 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.val.4, i64 712
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !845, !noalias !1470
  %i.fe = add nsw i32 %i.fd, -1
  %i.ff = icmp eq i32 %i.fb, %i.fe
  br i1 %i.ff, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.3
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(164) %i.ej)
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.4

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.3
  %i.fg = add nsw i32 %i.fb, -1
  %i.fh = getelementptr inbounds nuw i8, ptr %.val.4, i64 736
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !849
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(164) %i.ej, i32 noundef %i.fg, i32 noundef %i.fi, i32 noundef 0)
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.4

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.4: ; preds = %bb.k, %bb.j
  %i.fj = uitofp i16 %i.ez to float
  %i.fk = fmul nnan float %i.fj, f0x37800080
  %i.fl = load i32, ptr %i.eq, align 8, !tbaa !1469
  %i.fm = add nsw i32 %i.fl, 1                    ; 2 uses
  %i.fn = icmp eq i32 %i.fm, 2
  %spec.select.i.4 = select i1 %i.fn, i32 0, i32 %i.fm
  store i32 %spec.select.i.4, ptr %i.eq, align 8, !tbaa !1469
  %i.fo = fmul float %i.ew, %i.fk
  %i.fp = getelementptr inbounds nuw i8, ptr %.val.4, i64 816
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.d
  store float %i.fo, ptr %i.fq, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<float, unsigned short, 2, 5, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Window::Row", align 8 ; 37 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 8 uses
  %4 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<float, unsigned short, 2, 5, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Window", align 8 ; 20 uses
  %5 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<float, unsigned short, 2, 5, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Context", align 8 ; 11 uses
  %6 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 10 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !58    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1473 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.d = load ptr, ptr %.val, align 8, !tbaa !1475, !nonnull !172, !align !336
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0, i1 noundef zeroext true)
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !868  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !867
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %.lr.ph54.i.i.i, label %._crit_edge55.i.i.i

.lr.ph54.i.i.i:                                   ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 2 uses
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
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.bc = add i32 %i.f, -1
  br label %bb.d

._crit_edge55.i.i.i:                              ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !888
  %.not.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS7_RA4_KfNS1_3ROIEiEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge55.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS7_RA4_KfNS1_3ROIEiEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #33
  unreachable

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %.lr.ph54.i.i.i
  %indvars.iv.i.i.i = phi i32 [ %i.bc, %.lr.ph54.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 2 uses
  %.01752.i.i.i = phi i32 [ %i.f, %.lr.ph54.i.i.i ], [ %i.jz, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.bh = load i32, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !1476, !nonnull !172, !align !336 ; 3 uses
  %i.bj = load i32, ptr %i.k, align 8, !tbaa !1443
  %i.bk = load i32, ptr %i.l, align 4, !tbaa !1445
  %i.bl = load ptr, ptr %i.m, align 8, !tbaa !1477, !nonnull !172, !align !315 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %4, i8 0, i64 24, i1 false)
  %i.bm = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi)
          to label %.preheader91.i.i.i.i unwind label %bb.e ; 4 uses

.preheader91.i.i.i.i:                             ; preds = %bb.d
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !891 ; 3 uses
  store i32 %i.bn, ptr %i.n, align 4, !tbaa !1478
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !897
  %i.bq = add nsw i32 %i.bp, %i.bn
  store i32 %i.bq, ptr %i.o, align 8, !tbaa !1483
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !899 ; 2 uses
  store i32 %i.bs, ptr %i.p, align 4, !tbaa !1484
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !901
  %i.bv = add nsw i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.q, align 8, !tbaa !1485
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.r, align 8, !tbaa !3
  store i32 4, ptr %i.s, align 8, !tbaa !3
  %i.bw = sub i32 %i.bn, %i.bh                    ; 3 uses
  %i.bx = call i32 @llvm.smax.i32(i32 %i.bw, i32 -2) ; 4 uses
  %spec.store.select.i.i.i.i = add i32 %i.bx, 2   ; 3 uses
  %i.by = add i32 %i.bx, %i.bh                    ; 3 uses
  %i.bz = add nsw i32 %i.by, %i.bj
  %i.ca = srem i32 %i.bz, 2                       ; 3 uses
  %i.cb = icmp slt i32 %i.bw, 3
  %i.cc = icmp sgt i32 %i.bw, -2
  %i.cd = add i32 %.01752.i.i.i, -2
  %i.ce = sub i32 3, %.01752.i.i.i
  %i.cf = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cg = sub i32 -2, %i.bx
  %i.ch = add i32 %i.bx, 3
  %smax129.i.i.i.i = call i32 @llvm.smax.i32(i32 %spec.store.select.i.i.i.i, i32 1)
  %wide.trip.count.i.i.i.i = zext nneg i32 %smax129.i.i.i.i to i64
  %smax67.i.i.i = call i64 @llvm.smax.i64(i64 %i.cf, i64 4)
  br label %.preheader90.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.preheader90.i.i.i.i:                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, %.preheader91.i.i.i.i
  %indvars.iv65.i.i.i = phi i32 [ %indvars.iv.next66.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %indvars.iv.i.i.i, %.preheader91.i.i.i.i ] ; 2 uses
  %indvars.iv116.i.i.i.i = phi i32 [ %indvars.iv.next117.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.ce, %.preheader91.i.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i.i = phi i32 [ %indvars.iv.next.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.cd, %.preheader91.i.i.i.i ] ; 3 uses
  %.074105.i.i.i.i = phi i32 [ %i.ie, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ 0, %.preheader91.i.i.i.i ]
  %i.cj = load i32, ptr %i.p, align 4, !tbaa !1484
  %i.ck = load i32, ptr %i.q, align 8, !tbaa !1485
  %smax.i.i.i = call i32 @llvm.smax.i32(i32 %i.cj, i32 %indvars.iv.i.i.i.i)
  %i.cl = add i32 %smax.i.i.i, %indvars.iv116.i.i.i.i
  %i.cm = and i32 %i.cl, -2                       ; 2 uses
  %i.cn = add i32 %i.cm, %indvars.iv.i.i.i.i      ; 2 uses
  %i.co = add i32 %i.cm, %indvars.iv65.i.i.i
  %i.cp = add i32 %i.ck, -1
  %smin.i.i.i = call i32 @llvm.smin.i32(i32 %i.cn, i32 %i.cp)
  %i.cq = sub i32 %i.co, %smin.i.i.i
  %i.cr = and i32 %i.cq, -2
  %i.cs = sub i32 %i.cn, %i.cr                    ; 3 uses
  %i.ct = add nsw i32 %i.cs, %i.bk
  %i.cu = srem i32 %i.ct, 2                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_iiiNS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i32 noundef %i.by, i32 noundef %i.cs, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.f

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %.preheader90.i.i.i.i
  store i32 %i.ca, ptr %i.t, align 8, !tbaa !1469
  store i32 %i.cu, ptr %i.u, align 4, !tbaa !1468
  store ptr %i.bl, ptr %i.v, align 8, !tbaa !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.w, i8 0, i64 20, i1 false)
  br i1 %i.cb, label %.lr.ph.i.i.i.i, label %.lr.ph104.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.s
  br i1 %i.cc, label %.lr.ph104.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph104.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL17bayer_channel_mapE, i64 %i.cv
  br label %bb.aj

bb.f:                                             ; preds = %.preheader90.i.i.i.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.s
  %i.cy = phi i32 [ %spec.select.i.i.i.i.i, %bb.s ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv118.i.i.i.i = phi i64 [ %indvars.iv.next119.i.i.i.i, %bb.s ], [ %i.cf, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
  %i.cz = load ptr, ptr %i.v, align 8, !tbaa !1466, !nonnull !172, !align !315
  %i.da = load i32, ptr %i.u, align 4, !tbaa !1468
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL17bayer_channel_mapE, i64 %i.db
  %i.dd = sext i32 %i.cy to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !180
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.df
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !53
  %i.di = load ptr, ptr %i.x, align 8, !tbaa !836 ; 3 uses
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !1064
  %i.dk = load i32, ptr %i.y, align 4, !tbaa !844 ; 3 uses
  %i.dl = load i32, ptr %i.z, align 8, !tbaa !845, !noalias !1486 ; 2 uses
  %i.dm = add nsw i32 %i.dl, -1
  %i.dn = icmp eq i32 %i.dk, %i.dm
  br i1 %i.dn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.do = add nsw i32 %i.dk, -1
  %i.dp = load i32, ptr %i.ab, align 8, !tbaa !849
  br label %.invoke.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dq = add nsw i32 %i.dk, 1                    ; 7 uses
  store i32 %i.dq, ptr %i.y, align 4, !tbaa !844
  %i.dr = icmp slt i32 %i.dq, %i.dl
  br i1 %i.dr, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.ds = load i8, ptr %i.ah, align 1, !tbaa !850, !range !171, !noundef !172
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.j, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.i
  %.pre.i.i.i.i.i = load i32, ptr %i.ab, align 8, !tbaa !849
  %.pre.i.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !856
  br label %.invoke.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.du = load i8, ptr %i.ai, align 1, !tbaa !851, !range !171, !noundef !172
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.dw = load i64, ptr %i.ak, align 8, !tbaa !852
  %i.dx = getelementptr inbounds i8, ptr %i.di, i64 %i.dw
  store ptr %i.dx, ptr %i.x, align 8, !tbaa !836
  %i.dy = load i32, ptr %i.al, align 8, !tbaa !853
  %.not.i.i85.i.i.i.i = icmp slt i32 %i.dq, %i.dy
  br i1 %.not.i.i85.i.i.i.i, label %bb.s, label %bb.l, !prof !55

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.s unwind label %bb.t

bb.m:                                             ; preds = %bb.j
  %i.dz = load i8, ptr %i.aj, align 2, !tbaa !854, !range !171, !noundef !172
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eb = load i64, ptr %i.ak, align 8, !tbaa !852
  %i.ec = getelementptr inbounds i8, ptr %i.di, i64 %i.eb
  store ptr %i.ec, ptr %i.x, align 8, !tbaa !836
  %i.ed = load i32, ptr %i.al, align 8, !tbaa !853
  %i.ee = icmp slt i32 %i.dq, %i.ed               ; 3 uses
  %i.ef = load i32, ptr %i.am, align 4
  %i.eg = icmp sge i32 %i.dq, %i.ef
  %not..i.i.i.i.i.i = xor i1 %i.ee, true
  %or.cond.i.i.i.i.i.i = select i1 %not..i.i.i.i.i.i, i1 true, i1 %i.eg, !prof !855
  %i.eh = load ptr, ptr %i.an, align 8
  %i.ei = icmp eq ptr %i.eh, null
  %i.ej = select i1 %or.cond.i.i.i.i.i.i, i1 true, i1 %i.ei, !prof !855
  br i1 %i.ej, label %bb.o, label %bb.s, !prof !136

bb.o:                                             ; preds = %bb.n
  %i.ek = load ptr, ptr %2, align 8, !tbaa !832
  %i.el = load i32, ptr %i.ab, align 8, !tbaa !849
  %i.em = load i32, ptr %i.ae, align 4, !tbaa !856
  %i.en = load i32, ptr %i.as, align 8, !tbaa !857
  %i.eo = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i32 noundef %i.dq, i32 noundef %i.el, i32 noundef %i.em, ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.am, ptr noundef nonnull align 1 dereferenceable(1) %i.ar, i1 noundef zeroext %i.ee, i32 noundef %i.en)
          to label %.noexc87.i.i.i.i unwind label %bb.t

.noexc87.i.i.i.i:                                 ; preds = %bb.o
  %i.ep = zext i1 %i.ee to i8
  store ptr %i.eo, ptr %i.x, align 8, !tbaa !836
  store i8 %i.ep, ptr %i.ah, align 1, !tbaa !850
  br label %bb.s

bb.p:                                             ; preds = %bb.h
  %i.eq = load i32, ptr %i.aa, align 4, !tbaa !858 ; 3 uses
  store i32 %i.eq, ptr %i.y, align 4, !tbaa !844
  %i.er = load i32, ptr %i.ab, align 8, !tbaa !849
  %i.es = add nsw i32 %i.er, 1                    ; 3 uses
  store i32 %i.es, ptr %i.ab, align 8, !tbaa !849
  %i.et = load i32, ptr %i.ac, align 8, !tbaa !859
  %.not.i84.i.i.i.i = icmp slt i32 %i.es, %i.et
  %.pre131.i.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !856 ; 2 uses
  br i1 %.not.i84.i.i.i.i, label %.invoke.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eu = load i32, ptr %i.ad, align 4, !tbaa !860 ; 2 uses
  store i32 %i.eu, ptr %i.ab, align 8, !tbaa !849
  %i.ev = add nsw i32 %.pre131.i.i.i.i, 1         ; 3 uses
  store i32 %i.ev, ptr %i.ae, align 4, !tbaa !856
  %i.ew = load i32, ptr %i.af, align 8, !tbaa !861
  %.not1.i.i.i.i.i = icmp slt i32 %i.ev, %i.ew
  br i1 %.not1.i.i.i.i.i, label %.invoke.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr %i.ag, align 8, !tbaa !862
  br label %bb.s

.invoke.i.i.i.i:                                  ; preds = %bb.q, %bb.p, %._crit_edge.i.i.i.i.i, %bb.g
  %i.ex = phi i32 [ %i.do, %bb.g ], [ %i.eq, %bb.p ], [ %i.eq, %bb.q ], [ %i.dq, %._crit_edge.i.i.i.i.i ]
  %i.ey = phi i32 [ %i.dp, %bb.g ], [ %i.es, %bb.p ], [ %i.eu, %bb.q ], [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  %i.ez = phi i32 [ 0, %bb.g ], [ %.pre131.i.i.i.i, %bb.p ], [ %i.ev, %bb.q ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(164) %2, i32 noundef %i.ex, i32 noundef %i.ey, i32 noundef %i.ez)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.invoke.i.i.i.i, %bb.r, %.noexc87.i.i.i.i, %bb.n, %bb.m, %bb.l, %bb.k
  %i.fa = uitofp i16 %i.dj to float
  %i.fb = fmul nnan float %i.fa, f0x37800080
  %i.fc = load i32, ptr %i.t, align 8, !tbaa !1469
  %i.fd = add nsw i32 %i.fc, 1                    ; 2 uses
  %i.fe = icmp eq i32 %i.fd, 2
  %spec.select.i.i.i.i.i = select i1 %i.fe, i32 0, i32 %i.fd ; 2 uses
  store i32 %spec.select.i.i.i.i.i, ptr %i.t, align 8, !tbaa !1469
  %i.ff = fmul float %i.dh, %i.fb
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv118.i.i.i.i
  store float %i.ff, ptr %i.fg, align 4, !tbaa !53
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv118.i.i.i.i, %smax67.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1489

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.an, %.preheader.i.i.i.i
  %i.fi = load ptr, ptr %i.at, align 8, !tbaa !1490 ; 7 uses
  %i.fj = load ptr, ptr %i.au, align 8, !tbaa !1491
  %.not.i.i.i.i.i = icmp eq ptr %i.fi, %i.fj
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.fi, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %.noexc80.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc80.i.i.i.i:                                 ; preds = %bb.u
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.fk, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  %i.fl = load ptr, ptr %i.at, align 8, !tbaa !1490
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 168
  store ptr %i.fm, ptr %i.at, align 8, !tbaa !1490
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !1460 ; 6 uses
  %i.fn = ptrtoint ptr %i.fi to i64
  %i.fo = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.fp = sub i64 %i.fn, %i.fo                    ; 3 uses
  %i.fq = icmp eq i64 %i.fp, 9223372036854775800
  br i1 %i.fq, label %bb.w, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc81.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.fr = sdiv exact i64 %i.fp, 168               ; 3 uses
  %i.fs = icmp eq ptr %i.fi, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.fs, i64 1, i64 %i.fr
  %i.ft = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.fr ; 2 uses
  %i.fu = icmp ult i64 %i.ft, %i.fr
  %i.fv = call i64 @llvm.umin.i64(i64 %i.ft, i64 54901024028897475)
  %i.fw = select i1 %i.fu, i64 54901024028897475, i64 %i.fv ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.fw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.fx = mul nuw nsw i64 %i.fw, 168              ; 2 uses
  %i.fy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fx) #32
          to label %.noexc82.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc82.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fp ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.fz, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.x unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i

bb.x:                                             ; preds = %.noexc82.i.i.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ga, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  br i1 %i.fs, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.x
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 168
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.x, %bb.y
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gf, %bb.y ], [ %i.fy, %bb.x ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ge, %bb.y ], [ %.val.i.i.i.i.i.i, %bb.x ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(164) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gd = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gc, ptr noundef nonnull align 8 dereferenceable(36) %i.gd, i64 36, i1 false)
  %i.ge = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 168
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ge, %i.fi
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1492

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gg = landingpad { ptr, i32 }
          catch ptr null
  %i.gh = extractvalue { ptr, i32 } %i.gg, 0
  %i.gi = call ptr @__cxa_begin_catch(ptr %i.gh) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_(ptr noundef nonnull %i.fy, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gk = landingpad { ptr, i32 }
          catch ptr null
  %i.gl = extractvalue { ptr, i32 } %i.gk, 0
  call void @__clang_call_terminate(ptr %i.gl) #33
  unreachable

bb.ac:                                            ; preds = %bb.z
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.y
  %i.gm = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 336
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.gr, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !888
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  call void @__clang_call_terminate(ptr %i.gq) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gr, %i.fi
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1493

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i
  %i.gs = phi ptr [ %i.gb, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.gm, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  %i.gt = load ptr, ptr %i.au, align 8, !tbaa !1491
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = sub i64 %i.gu, %i.fo
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.gv) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc82.i.i.i.i
  %i.gw = landingpad { ptr, i32 }
          catch ptr null
  %i.gx = extractvalue { ptr, i32 } %i.gw, 0
  %i.gy = call ptr @__cxa_begin_catch(ptr %i.gx) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.aa
  %i.gz = extractvalue { ptr, i32 } %i.gj, 0
  %i.ha = call ptr @__cxa_begin_catch(ptr %i.gz) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(164) dereferenceable(164) %i.fz) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  %i.hb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.ah

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fy, i64 noundef %i.fx) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.ai unwind label %bb.ag

bb.ah:                                            ; preds = %bb.ag
  %i.hc = landingpad { ptr, i32 }
          catch ptr null
  %i.hd = extractvalue { ptr, i32 } %i.hc, 0
  call void @__clang_call_terminate(ptr %i.hd) #33
  unreachable

bb.ai:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.af, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  store ptr %i.fy, ptr %4, align 8, !tbaa !1460
  store ptr %i.gs, ptr %i.at, align 8, !tbaa !1490
  %i.he = getelementptr inbounds nuw [168 x i8], ptr %i.fy, i64 %i.fw
  store ptr %i.he, ptr %i.au, align 8, !tbaa !1491
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.an, %.lr.ph104.i.i.i.i
  %indvars.iv126.i.i.i.i = phi i64 [ 0, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next127.i.i.i.i, %bb.an ] ; 3 uses
  %indvars.iv124.i.i.i.i = phi i32 [ %i.ch, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next125.i.i.i.i, %bb.an ] ; 2 uses
  %indvars.iv121.i.i.i.i = phi i32 [ %i.cg, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next122.i.i.i.i, %bb.an ] ; 3 uses
  %smax123.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv121.i.i.i.i, i32 0)
  %i.hf = add i32 %smax123.i.i.i.i, %indvars.iv124.i.i.i.i
  %i.hg = and i32 %i.hf, -2
  %i.hh = add i32 %i.hg, %indvars.iv121.i.i.i.i   ; 3 uses
  %i.hi = add nsw i32 %i.hh, %spec.store.select.i.i.i.i ; 2 uses
  %i.hj = icmp slt i32 %i.hi, 5
  br i1 %i.hj, label %bb.ak, label %bb.al

end_hunk_10
begin_hunk_11_@_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window6updateEv:bb.a
bb.i:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.2
  %i.dy = add nsw i32 %i.dt, -1
  %i.dz = getelementptr inbounds nuw i8, ptr %.val.3, i64 568
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !849
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(164) %i.db, i32 noundef %i.dy, i32 noundef %i.ea, i32 noundef 0)
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.3

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.3: ; preds = %bb.i, %bb.h
  %i.eb = uitofp i8 %i.dr to float
  %i.ec = fmul nnan float %i.eb, f0x3B808081
  %i.ed = load i32, ptr %i.di, align 8, !tbaa !1526
  %i.ee = add nsw i32 %i.ed, 1                    ; 2 uses
  %i.ef = icmp eq i32 %i.ee, 2
  %spec.select.i.3 = select i1 %i.ef, i32 0, i32 %i.ee
  store i32 %spec.select.i.3, ptr %i.di, align 8, !tbaa !1526
  %i.eg = fmul float %i.do, %i.ec
  %i.eh = getelementptr inbounds nuw i8, ptr %.val.3, i64 648
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.d
  store float %i.eg, ptr %i.ei, align 4, !tbaa !53
  %.val.4 = load ptr, ptr %0, align 8, !tbaa !1517 ; 9 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.val.4, i64 672 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.val.4, i64 808
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !1523, !nonnull !172, !align !315
  %i.em = getelementptr inbounds nuw i8, ptr %.val.4, i64 804
  %i.en = load i32, ptr %i.em, align 4, !tbaa !1525
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL17bayer_channel_mapE, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %.val.4, i64 800 ; 3 uses
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !1526
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.es
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !180
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.eu
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !53
  %i.ex = getelementptr inbounds nuw i8, ptr %.val.4, i64 784
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !836
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !17
  %i.fa = getelementptr inbounds nuw i8, ptr %.val.4, i64 732
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !844 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.val.4, i64 712
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !845, !noalias !1527
  %i.fe = add nsw i32 %i.fd, -1
  %i.ff = icmp eq i32 %i.fb, %i.fe
  br i1 %i.ff, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.3
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(164) %i.ej)
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.4

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.3
  %i.fg = add nsw i32 %i.fb, -1
  %i.fh = getelementptr inbounds nuw i8, ptr %.val.4, i64 736
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !849
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(164) %i.ej, i32 noundef %i.fg, i32 noundef %i.fi, i32 noundef 0)
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.4

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.4: ; preds = %bb.k, %bb.j
  %i.fj = uitofp i8 %i.ez to float
  %i.fk = fmul nnan float %i.fj, f0x3B808081
  %i.fl = load i32, ptr %i.eq, align 8, !tbaa !1526
  %i.fm = add nsw i32 %i.fl, 1                    ; 2 uses
  %i.fn = icmp eq i32 %i.fm, 2
  %spec.select.i.4 = select i1 %i.fn, i32 0, i32 %i.fm
  store i32 %spec.select.i.4, ptr %i.eq, align 8, !tbaa !1526
  %i.fo = fmul float %i.ew, %i.fk
  %i.fp = getelementptr inbounds nuw i8, ptr %.val.4, i64 816
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.d
  store float %i.fo, ptr %i.fq, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<unsigned char, unsigned char, 2, 5, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Window::Row", align 8 ; 37 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.221", align 8 ; 8 uses
  %4 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<unsigned char, unsigned char, 2, 5, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Window", align 8 ; 20 uses
  %5 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<unsigned char, unsigned char, 2, 5, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Context", align 8 ; 11 uses
  %6 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 10 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !58    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1530 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.d = load ptr, ptr %.val, align 8, !tbaa !1532, !nonnull !172, !align !336
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0, i1 noundef zeroext true)
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !868  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !867
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %.lr.ph54.i.i.i, label %._crit_edge55.i.i.i

.lr.ph54.i.i.i:                                   ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 2 uses
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
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.bc = add i32 %i.f, -1
  br label %bb.d

._crit_edge55.i.i.i:                              ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !888
  %.not.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS7_RA4_KfNS1_3ROIEiEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge55.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS7_RA4_KfNS1_3ROIEiEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #33
  unreachable

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %.lr.ph54.i.i.i
  %indvars.iv.i.i.i = phi i32 [ %i.bc, %.lr.ph54.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 2 uses
  %.01752.i.i.i = phi i32 [ %i.f, %.lr.ph54.i.i.i ], [ %i.jz, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.bh = load i32, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !1533, !nonnull !172, !align !336 ; 3 uses
  %i.bj = load i32, ptr %i.k, align 8, !tbaa !1500
  %i.bk = load i32, ptr %i.l, align 4, !tbaa !1502
  %i.bl = load ptr, ptr %i.m, align 8, !tbaa !1534, !nonnull !172, !align !315 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %4, i8 0, i64 24, i1 false)
  %i.bm = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi)
          to label %.preheader91.i.i.i.i unwind label %bb.e ; 4 uses

.preheader91.i.i.i.i:                             ; preds = %bb.d
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !891 ; 3 uses
  store i32 %i.bn, ptr %i.n, align 4, !tbaa !1535
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !897
  %i.bq = add nsw i32 %i.bp, %i.bn
  store i32 %i.bq, ptr %i.o, align 8, !tbaa !1540
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !899 ; 2 uses
  store i32 %i.bs, ptr %i.p, align 4, !tbaa !1541
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !901
  %i.bv = add nsw i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.q, align 8, !tbaa !1542
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.r, align 8, !tbaa !3
  store i32 4, ptr %i.s, align 8, !tbaa !3
  %i.bw = sub i32 %i.bn, %i.bh                    ; 3 uses
  %i.bx = call i32 @llvm.smax.i32(i32 %i.bw, i32 -2) ; 4 uses
  %spec.store.select.i.i.i.i = add i32 %i.bx, 2   ; 3 uses
  %i.by = add i32 %i.bx, %i.bh                    ; 3 uses
  %i.bz = add nsw i32 %i.by, %i.bj
  %i.ca = srem i32 %i.bz, 2                       ; 3 uses
  %i.cb = icmp slt i32 %i.bw, 3
  %i.cc = icmp sgt i32 %i.bw, -2
  %i.cd = add i32 %.01752.i.i.i, -2
  %i.ce = sub i32 3, %.01752.i.i.i
  %i.cf = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cg = sub i32 -2, %i.bx
  %i.ch = add i32 %i.bx, 3
  %smax129.i.i.i.i = call i32 @llvm.smax.i32(i32 %spec.store.select.i.i.i.i, i32 1)
  %wide.trip.count.i.i.i.i = zext nneg i32 %smax129.i.i.i.i to i64
  %smax67.i.i.i = call i64 @llvm.smax.i64(i64 %i.cf, i64 4)
  br label %.preheader90.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.preheader90.i.i.i.i:                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, %.preheader91.i.i.i.i
  %indvars.iv65.i.i.i = phi i32 [ %indvars.iv.next66.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %indvars.iv.i.i.i, %.preheader91.i.i.i.i ] ; 2 uses
  %indvars.iv116.i.i.i.i = phi i32 [ %indvars.iv.next117.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.ce, %.preheader91.i.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i.i = phi i32 [ %indvars.iv.next.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.cd, %.preheader91.i.i.i.i ] ; 3 uses
  %.074105.i.i.i.i = phi i32 [ %i.ie, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ 0, %.preheader91.i.i.i.i ]
  %i.cj = load i32, ptr %i.p, align 4, !tbaa !1541
  %i.ck = load i32, ptr %i.q, align 8, !tbaa !1542
  %smax.i.i.i = call i32 @llvm.smax.i32(i32 %i.cj, i32 %indvars.iv.i.i.i.i)
  %i.cl = add i32 %smax.i.i.i, %indvars.iv116.i.i.i.i
  %i.cm = and i32 %i.cl, -2                       ; 2 uses
  %i.cn = add i32 %i.cm, %indvars.iv.i.i.i.i      ; 2 uses
  %i.co = add i32 %i.cm, %indvars.iv65.i.i.i
  %i.cp = add i32 %i.ck, -1
  %smin.i.i.i = call i32 @llvm.smin.i32(i32 %i.cn, i32 %i.cp)
  %i.cq = sub i32 %i.co, %smin.i.i.i
  %i.cr = and i32 %i.cq, -2
  %i.cs = sub i32 %i.cn, %i.cr                    ; 3 uses
  %i.ct = add nsw i32 %i.cs, %i.bk
  %i.cu = srem i32 %i.ct, 2                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_iiiNS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i32 noundef %i.by, i32 noundef %i.cs, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.f

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %.preheader90.i.i.i.i
  store i32 %i.ca, ptr %i.t, align 8, !tbaa !1526
  store i32 %i.cu, ptr %i.u, align 4, !tbaa !1525
  store ptr %i.bl, ptr %i.v, align 8, !tbaa !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.w, i8 0, i64 20, i1 false)
  br i1 %i.cb, label %.lr.ph.i.i.i.i, label %.lr.ph104.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.s
  br i1 %i.cc, label %.lr.ph104.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph104.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL17bayer_channel_mapE, i64 %i.cv
  br label %bb.aj

bb.f:                                             ; preds = %.preheader90.i.i.i.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.s
  %i.cy = phi i32 [ %spec.select.i.i.i.i.i, %bb.s ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv118.i.i.i.i = phi i64 [ %indvars.iv.next119.i.i.i.i, %bb.s ], [ %i.cf, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
  %i.cz = load ptr, ptr %i.v, align 8, !tbaa !1523, !nonnull !172, !align !315
  %i.da = load i32, ptr %i.u, align 4, !tbaa !1525
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL17bayer_channel_mapE, i64 %i.db
  %i.dd = sext i32 %i.cy to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !180
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.df
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !53
  %i.di = load ptr, ptr %i.x, align 8, !tbaa !836 ; 3 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !17
  %i.dk = load i32, ptr %i.y, align 4, !tbaa !844 ; 3 uses
  %i.dl = load i32, ptr %i.z, align 8, !tbaa !845, !noalias !1543 ; 2 uses
  %i.dm = add nsw i32 %i.dl, -1
  %i.dn = icmp eq i32 %i.dk, %i.dm
  br i1 %i.dn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.do = add nsw i32 %i.dk, -1
  %i.dp = load i32, ptr %i.ab, align 8, !tbaa !849
  br label %.invoke.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dq = add nsw i32 %i.dk, 1                    ; 7 uses
  store i32 %i.dq, ptr %i.y, align 4, !tbaa !844
  %i.dr = icmp slt i32 %i.dq, %i.dl
  br i1 %i.dr, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.ds = load i8, ptr %i.ah, align 1, !tbaa !850, !range !171, !noundef !172
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.j, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.i
  %.pre.i.i.i.i.i = load i32, ptr %i.ab, align 8, !tbaa !849
  %.pre.i.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !856
  br label %.invoke.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.du = load i8, ptr %i.ai, align 1, !tbaa !851, !range !171, !noundef !172
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.dw = load i64, ptr %i.ak, align 8, !tbaa !852
  %i.dx = getelementptr inbounds i8, ptr %i.di, i64 %i.dw
  store ptr %i.dx, ptr %i.x, align 8, !tbaa !836
  %i.dy = load i32, ptr %i.al, align 8, !tbaa !853
  %.not.i.i85.i.i.i.i = icmp slt i32 %i.dq, %i.dy
  br i1 %.not.i.i85.i.i.i.i, label %bb.s, label %bb.l, !prof !55

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.s unwind label %bb.t

bb.m:                                             ; preds = %bb.j
  %i.dz = load i8, ptr %i.aj, align 2, !tbaa !854, !range !171, !noundef !172
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eb = load i64, ptr %i.ak, align 8, !tbaa !852
  %i.ec = getelementptr inbounds i8, ptr %i.di, i64 %i.eb
  store ptr %i.ec, ptr %i.x, align 8, !tbaa !836
  %i.ed = load i32, ptr %i.al, align 8, !tbaa !853
  %i.ee = icmp slt i32 %i.dq, %i.ed               ; 3 uses
  %i.ef = load i32, ptr %i.am, align 4
  %i.eg = icmp sge i32 %i.dq, %i.ef
  %not..i.i.i.i.i.i = xor i1 %i.ee, true
  %or.cond.i.i.i.i.i.i = select i1 %not..i.i.i.i.i.i, i1 true, i1 %i.eg, !prof !855
  %i.eh = load ptr, ptr %i.an, align 8
  %i.ei = icmp eq ptr %i.eh, null
  %i.ej = select i1 %or.cond.i.i.i.i.i.i, i1 true, i1 %i.ei, !prof !855
  br i1 %i.ej, label %bb.o, label %bb.s, !prof !136

bb.o:                                             ; preds = %bb.n
  %i.ek = load ptr, ptr %2, align 8, !tbaa !832
  %i.el = load i32, ptr %i.ab, align 8, !tbaa !849
  %i.em = load i32, ptr %i.ae, align 4, !tbaa !856
  %i.en = load i32, ptr %i.as, align 8, !tbaa !857
  %i.eo = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i32 noundef %i.dq, i32 noundef %i.el, i32 noundef %i.em, ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.am, ptr noundef nonnull align 1 dereferenceable(1) %i.ar, i1 noundef zeroext %i.ee, i32 noundef %i.en)
          to label %.noexc87.i.i.i.i unwind label %bb.t

.noexc87.i.i.i.i:                                 ; preds = %bb.o
  %i.ep = zext i1 %i.ee to i8
  store ptr %i.eo, ptr %i.x, align 8, !tbaa !836
  store i8 %i.ep, ptr %i.ah, align 1, !tbaa !850
  br label %bb.s

bb.p:                                             ; preds = %bb.h
  %i.eq = load i32, ptr %i.aa, align 4, !tbaa !858 ; 3 uses
  store i32 %i.eq, ptr %i.y, align 4, !tbaa !844
  %i.er = load i32, ptr %i.ab, align 8, !tbaa !849
  %i.es = add nsw i32 %i.er, 1                    ; 3 uses
  store i32 %i.es, ptr %i.ab, align 8, !tbaa !849
  %i.et = load i32, ptr %i.ac, align 8, !tbaa !859
  %.not.i84.i.i.i.i = icmp slt i32 %i.es, %i.et
  %.pre131.i.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !856 ; 2 uses
  br i1 %.not.i84.i.i.i.i, label %.invoke.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eu = load i32, ptr %i.ad, align 4, !tbaa !860 ; 2 uses
  store i32 %i.eu, ptr %i.ab, align 8, !tbaa !849
  %i.ev = add nsw i32 %.pre131.i.i.i.i, 1         ; 3 uses
  store i32 %i.ev, ptr %i.ae, align 4, !tbaa !856
  %i.ew = load i32, ptr %i.af, align 8, !tbaa !861
  %.not1.i.i.i.i.i = icmp slt i32 %i.ev, %i.ew
  br i1 %.not1.i.i.i.i.i, label %.invoke.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr %i.ag, align 8, !tbaa !862
  br label %bb.s

.invoke.i.i.i.i:                                  ; preds = %bb.q, %bb.p, %._crit_edge.i.i.i.i.i, %bb.g
  %i.ex = phi i32 [ %i.do, %bb.g ], [ %i.eq, %bb.p ], [ %i.eq, %bb.q ], [ %i.dq, %._crit_edge.i.i.i.i.i ]
  %i.ey = phi i32 [ %i.dp, %bb.g ], [ %i.es, %bb.p ], [ %i.eu, %bb.q ], [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  %i.ez = phi i32 [ 0, %bb.g ], [ %.pre131.i.i.i.i, %bb.p ], [ %i.ev, %bb.q ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(164) %2, i32 noundef %i.ex, i32 noundef %i.ey, i32 noundef %i.ez)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.invoke.i.i.i.i, %bb.r, %.noexc87.i.i.i.i, %bb.n, %bb.m, %bb.l, %bb.k
  %i.fa = uitofp i8 %i.dj to float
  %i.fb = fmul nnan float %i.fa, f0x3B808081
  %i.fc = load i32, ptr %i.t, align 8, !tbaa !1526
  %i.fd = add nsw i32 %i.fc, 1                    ; 2 uses
  %i.fe = icmp eq i32 %i.fd, 2
  %spec.select.i.i.i.i.i = select i1 %i.fe, i32 0, i32 %i.fd ; 2 uses
  store i32 %spec.select.i.i.i.i.i, ptr %i.t, align 8, !tbaa !1526
  %i.ff = fmul float %i.dh, %i.fb
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv118.i.i.i.i
  store float %i.ff, ptr %i.fg, align 4, !tbaa !53
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv118.i.i.i.i, %smax67.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1546

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.an, %.preheader.i.i.i.i
  %i.fi = load ptr, ptr %i.at, align 8, !tbaa !1547 ; 7 uses
  %i.fj = load ptr, ptr %i.au, align 8, !tbaa !1548
  %.not.i.i.i.i.i = icmp eq ptr %i.fi, %i.fj
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.fi, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %.noexc80.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc80.i.i.i.i:                                 ; preds = %bb.u
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.fk, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  %i.fl = load ptr, ptr %i.at, align 8, !tbaa !1547
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 168
  store ptr %i.fm, ptr %i.at, align 8, !tbaa !1547
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !1517 ; 6 uses
  %i.fn = ptrtoint ptr %i.fi to i64
  %i.fo = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.fp = sub i64 %i.fn, %i.fo                    ; 3 uses
  %i.fq = icmp eq i64 %i.fp, 9223372036854775800
  br i1 %i.fq, label %bb.w, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc81.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.fr = sdiv exact i64 %i.fp, 168               ; 3 uses
  %i.fs = icmp eq ptr %i.fi, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.fs, i64 1, i64 %i.fr
  %i.ft = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.fr ; 2 uses
  %i.fu = icmp ult i64 %i.ft, %i.fr
  %i.fv = call i64 @llvm.umin.i64(i64 %i.ft, i64 54901024028897475)
  %i.fw = select i1 %i.fu, i64 54901024028897475, i64 %i.fv ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.fw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.fx = mul nuw nsw i64 %i.fw, 168              ; 2 uses
  %i.fy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fx) #32
          to label %.noexc82.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc82.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fp ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.fz, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.x unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i

bb.x:                                             ; preds = %.noexc82.i.i.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ga, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  br i1 %i.fs, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.x
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 168
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.x, %bb.y
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gf, %bb.y ], [ %i.fy, %bb.x ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ge, %bb.y ], [ %.val.i.i.i.i.i.i, %bb.x ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(164) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gd = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gc, ptr noundef nonnull align 8 dereferenceable(36) %i.gd, i64 36, i1 false)
  %i.ge = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 168
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ge, %i.fi
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1549

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gg = landingpad { ptr, i32 }
          catch ptr null
  %i.gh = extractvalue { ptr, i32 } %i.gg, 0
  %i.gi = call ptr @__cxa_begin_catch(ptr %i.gh) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_(ptr noundef nonnull %i.fy, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gk = landingpad { ptr, i32 }
          catch ptr null
  %i.gl = extractvalue { ptr, i32 } %i.gk, 0
  call void @__clang_call_terminate(ptr %i.gl) #33
  unreachable

bb.ac:                                            ; preds = %bb.z
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.y
  %i.gm = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 336
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.gr, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !888
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  call void @__clang_call_terminate(ptr %i.gq) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gr, %i.fi
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1550

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i
  %i.gs = phi ptr [ %i.gb, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.gm, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  %i.gt = load ptr, ptr %i.au, align 8, !tbaa !1548
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = sub i64 %i.gu, %i.fo
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.gv) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc82.i.i.i.i
  %i.gw = landingpad { ptr, i32 }
          catch ptr null
  %i.gx = extractvalue { ptr, i32 } %i.gw, 0
  %i.gy = call ptr @__cxa_begin_catch(ptr %i.gx) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.aa
  %i.gz = extractvalue { ptr, i32 } %i.gj, 0
  %i.ha = call ptr @__cxa_begin_catch(ptr %i.gz) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(164) dereferenceable(164) %i.fz) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  %i.hb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.ah

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fy, i64 noundef %i.fx) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.ai unwind label %bb.ag

bb.ah:                                            ; preds = %bb.ag
  %i.hc = landingpad { ptr, i32 }
          catch ptr null
  %i.hd = extractvalue { ptr, i32 } %i.hc, 0
  call void @__clang_call_terminate(ptr %i.hd) #33
  unreachable

bb.ai:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.af, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  store ptr %i.fy, ptr %4, align 8, !tbaa !1517
  store ptr %i.gs, ptr %i.at, align 8, !tbaa !1547
  %i.he = getelementptr inbounds nuw [168 x i8], ptr %i.fy, i64 %i.fw
  store ptr %i.he, ptr %i.au, align 8, !tbaa !1548
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.an, %.lr.ph104.i.i.i.i
  %indvars.iv126.i.i.i.i = phi i64 [ 0, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next127.i.i.i.i, %bb.an ] ; 3 uses
  %indvars.iv124.i.i.i.i = phi i32 [ %i.ch, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next125.i.i.i.i, %bb.an ] ; 2 uses
  %indvars.iv121.i.i.i.i = phi i32 [ %i.cg, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next122.i.i.i.i, %bb.an ] ; 3 uses
  %smax123.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv121.i.i.i.i, i32 0)
  %i.hf = add i32 %smax123.i.i.i.i, %indvars.iv124.i.i.i.i
  %i.hg = and i32 %i.hf, -2
  %i.hh = add i32 %i.hg, %indvars.iv121.i.i.i.i   ; 3 uses
  %i.hi = add nsw i32 %i.hh, %spec.store.select.i.i.i.i ; 2 uses
  %i.hj = icmp slt i32 %i.hi, 5
  br i1 %i.hj, label %bb.ak, label %bb.al

end_hunk_11
begin_hunk_12_@_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv:bb.a
  %i.m = load float, ptr %i.l, align 4, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !836
  %i.p = load i16, ptr %i.o, align 2, !tbaa !1004 ; 2 uses
  %i.q = zext i16 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 13
  %i.s = and i32 %i.r, 268427264                  ; 6 uses
  %.signext.i.i.i.i.i = sext i16 %i.p to i32
  %i.t = and i32 %.signext.i.i.i.i.i, -2147483648 ; 3 uses
  %i.u = icmp samesign ugt i32 %i.s, 8388607
  br i1 %i.u, label %bb.b, label %bb.e, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.v = or disjoint i32 %i.s, %i.t               ; 2 uses
  %i.w = icmp samesign ult i32 %i.s, 260046848
  br i1 %i.w, label %bb.c, label %bb.d, !prof !55

bb.c:                                             ; preds = %bb.b
  %i.x = add nuw nsw i32 %i.v, 939524096
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit

bb.d:                                             ; preds = %bb.b
  %i.y = or i32 %i.v, 2139095040
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit

bb.e:                                             ; preds = %bb.a
  %.not.i.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.s, i1 true)
  %i.aa = add nsw i32 %i.z, -8                    ; 2 uses
  %i.ab = shl i32 %i.s, %i.aa
  %i.ac = or i32 %i.t, %i.ab
  %i.ad = or i32 %i.ac, 947912704
  %i.ae = shl nuw nsw i32 %i.aa, 23
  %i.af = sub nuw i32 %i.ad, %i.ae
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit

_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.i.i.i.i.i = phi i32 [ %i.x, %bb.c ], [ %i.y, %bb.d ], [ %i.af, %bb.f ], [ %i.t, %bb.e ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !844 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !845, !noalias !1584
  %i.ak = add nsw i32 %i.aj, -1
  %i.al = icmp eq i32 %i.ah, %i.ak
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit
  %i.am = add nsw i32 %i.ah, -1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !849
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %0, i32 noundef %i.am, i32 noundef %i.ao, i32 noundef 0)
  br label %bb.i

bb.h:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %0)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ap = bitcast i32 %.sroa.0.0.i.i.i.i.i to float
  %i.aq = load i32, ptr %i.g, align 8, !tbaa !1583
  %i.ar = add nsw i32 %i.aq, 1                    ; 2 uses
  %i.as = icmp eq i32 %i.ar, 2
  %spec.select = select i1 %i.as, i32 0, i32 %i.ar
  store i32 %spec.select, ptr %i.g, align 8, !tbaa !1583
  %i.at = fmul float %i.m, %i.ap
  ret float %i.at
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES7_Li2ELi5EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKSB_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<Imath_3_1::half, Imath_3_1::half, 2, 5, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Window::Row", align 8 ; 37 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.277", align 8 ; 8 uses
  %4 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<Imath_3_1::half, Imath_3_1::half, 2, 5, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Window", align 8 ; 20 uses
  %5 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<Imath_3_1::half, Imath_3_1::half, 2, 5, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Context", align 8 ; 11 uses
  %6 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 10 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !58    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1587 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.d = load ptr, ptr %.val, align 8, !tbaa !1589, !nonnull !172, !align !336
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0, i1 noundef zeroext true)
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !868  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !867
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %.lr.ph55.i.i.i, label %._crit_edge56.i.i.i

.lr.ph55.i.i.i:                                   ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 2 uses
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
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.bc = add i32 %i.f, -1
  br label %bb.d

._crit_edge56.i.i.i:                              ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !888
  %.not.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfNS1_3ROIEiEUlSG_E_JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge56.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfNS1_3ROIEiEUlSG_E_JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #33
  unreachable

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %.lr.ph55.i.i.i
  %indvars.iv.i.i.i = phi i32 [ %i.bc, %.lr.ph55.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 2 uses
  %.01753.i.i.i = phi i32 [ %i.f, %.lr.ph55.i.i.i ], [ %i.ko, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.bh = load i32, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !1590, !nonnull !172, !align !336 ; 3 uses
  %i.bj = load i32, ptr %i.k, align 8, !tbaa !1557
  %i.bk = load i32, ptr %i.l, align 4, !tbaa !1559
  %i.bl = load ptr, ptr %i.m, align 8, !tbaa !1591, !nonnull !172, !align !315 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %4, i8 0, i64 24, i1 false)
  %i.bm = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi)
          to label %.preheader91.i.i.i.i unwind label %bb.e ; 4 uses

.preheader91.i.i.i.i:                             ; preds = %bb.d
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !891 ; 3 uses
  store i32 %i.bn, ptr %i.n, align 4, !tbaa !1592
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !897
  %i.bq = add nsw i32 %i.bp, %i.bn
  store i32 %i.bq, ptr %i.o, align 8, !tbaa !1597
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !899 ; 2 uses
  store i32 %i.bs, ptr %i.p, align 4, !tbaa !1598
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !901
  %i.bv = add nsw i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.q, align 8, !tbaa !1599
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.r, align 8, !tbaa !3
  store i32 4, ptr %i.s, align 8, !tbaa !3
  %i.bw = sub i32 %i.bn, %i.bh                    ; 3 uses
  %i.bx = call i32 @llvm.smax.i32(i32 %i.bw, i32 -2) ; 4 uses
  %spec.store.select.i.i.i.i = add i32 %i.bx, 2   ; 3 uses
  %i.by = add i32 %i.bx, %i.bh                    ; 3 uses
  %i.bz = add nsw i32 %i.by, %i.bj
  %i.ca = srem i32 %i.bz, 2                       ; 3 uses
  %i.cb = icmp slt i32 %i.bw, 3
  %i.cc = icmp sgt i32 %i.bw, -2
  %i.cd = add i32 %.01753.i.i.i, -2
  %i.ce = sub i32 3, %.01753.i.i.i
  %i.cf = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cg = sub i32 -2, %i.bx
  %i.ch = add i32 %i.bx, 3
  %smax129.i.i.i.i = call i32 @llvm.smax.i32(i32 %spec.store.select.i.i.i.i, i32 1)
  %wide.trip.count.i.i.i.i = zext nneg i32 %smax129.i.i.i.i to i64
  %smax68.i.i.i = call i64 @llvm.smax.i64(i64 %i.cf, i64 4)
  br label %.preheader90.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.preheader90.i.i.i.i:                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, %.preheader91.i.i.i.i
  %indvars.iv66.i.i.i = phi i32 [ %indvars.iv.next67.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %indvars.iv.i.i.i, %.preheader91.i.i.i.i ] ; 2 uses
  %indvars.iv116.i.i.i.i = phi i32 [ %indvars.iv.next117.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.ce, %.preheader91.i.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i.i = phi i32 [ %indvars.iv.next.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.cd, %.preheader91.i.i.i.i ] ; 3 uses
  %.074105.i.i.i.i = phi i32 [ %i.it, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ 0, %.preheader91.i.i.i.i ]
  %i.cj = load i32, ptr %i.p, align 4, !tbaa !1598
  %i.ck = load i32, ptr %i.q, align 8, !tbaa !1599
  %smax.i.i.i = call i32 @llvm.smax.i32(i32 %i.cj, i32 %indvars.iv.i.i.i.i)
  %i.cl = add i32 %smax.i.i.i, %indvars.iv116.i.i.i.i
  %i.cm = and i32 %i.cl, -2                       ; 2 uses
  %i.cn = add i32 %i.cm, %indvars.iv.i.i.i.i      ; 2 uses
  %i.co = add i32 %i.cm, %indvars.iv66.i.i.i
  %i.cp = add i32 %i.ck, -1
  %smin.i.i.i = call i32 @llvm.smin.i32(i32 %i.cn, i32 %i.cp)
  %i.cq = sub i32 %i.co, %smin.i.i.i
  %i.cr = and i32 %i.cq, -2
  %i.cs = sub i32 %i.cn, %i.cr                    ; 3 uses
  %i.ct = add nsw i32 %i.cs, %i.bk
  %i.cu = srem i32 %i.ct, 2                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_iiiNS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i32 noundef %i.by, i32 noundef %i.cs, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.f

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %.preheader90.i.i.i.i
  store i32 %i.ca, ptr %i.t, align 8, !tbaa !1583
  store i32 %i.cu, ptr %i.u, align 4, !tbaa !1582
  store ptr %i.bl, ptr %i.v, align 8, !tbaa !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.w, i8 0, i64 20, i1 false)
  br i1 %i.cb, label %.lr.ph.i.i.i.i, label %.lr.ph104.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.x
  br i1 %i.cc, label %.lr.ph104.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph104.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL17bayer_channel_mapE, i64 %i.cv
  br label %bb.ao

bb.f:                                             ; preds = %.preheader90.i.i.i.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.x
  %i.cy = phi i32 [ %spec.select.i.i.i.i.i, %bb.x ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv118.i.i.i.i = phi i64 [ %indvars.iv.next119.i.i.i.i, %bb.x ], [ %i.cf, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
  %i.cz = load ptr, ptr %i.v, align 8, !tbaa !1580, !nonnull !172, !align !315
  %i.da = load i32, ptr %i.u, align 4, !tbaa !1582
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL17bayer_channel_mapE, i64 %i.db
  %i.dd = sext i32 %i.cy to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !180
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.df
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !53
  %i.di = load ptr, ptr %i.x, align 8, !tbaa !836 ; 3 uses
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !1004 ; 2 uses
  %i.dk = zext i16 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 13
  %i.dm = and i32 %i.dl, 268427264                ; 6 uses
  %.signext.i.i.i.i.i.i.i.i.i.i = sext i16 %i.dj to i32
  %i.dn = and i32 %.signext.i.i.i.i.i.i.i.i.i.i, -2147483648 ; 3 uses
  %i.do = icmp samesign ugt i32 %i.dm, 8388607
  br i1 %i.do, label %bb.g, label %bb.j, !prof !55

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dp = or disjoint i32 %i.dm, %i.dn            ; 2 uses
  %i.dq = icmp samesign ult i32 %i.dm, 260046848
  br i1 %i.dq, label %bb.h, label %bb.i, !prof !55

bb.h:                                             ; preds = %bb.g
  %i.dr = add nuw nsw i32 %i.dp, 939524096
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ds = or i32 %i.dp, 2139095040
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.dm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dt = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.dm, i1 true)
  %i.du = add nsw i32 %i.dt, -8                   ; 2 uses
  %i.dv = shl i32 %i.dm, %i.du
  %i.dw = or i32 %i.dn, %i.dv
  %i.dx = or i32 %i.dw, 947912704
  %i.dy = shl nuw nsw i32 %i.du, 23
  %i.dz = sub nuw i32 %i.dx, %i.dy
  br label %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.dr, %bb.h ], [ %i.ds, %bb.i ], [ %i.dz, %bb.k ], [ %i.dn, %bb.j ]
  %i.ea = load i32, ptr %i.y, align 4, !tbaa !844 ; 3 uses
  %i.eb = load i32, ptr %i.z, align 8, !tbaa !845, !noalias !1600 ; 2 uses
  %i.ec = add nsw i32 %i.eb, -1
  %i.ed = icmp eq i32 %i.ea, %i.ec
  br i1 %i.ed, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i
  %i.ee = add nsw i32 %i.ea, -1
  %i.ef = load i32, ptr %i.ab, align 8, !tbaa !849
  br label %.invoke.i.i.i.i

bb.m:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEixEi.exit.i.i.i.i.i
  %i.eg = add nsw i32 %i.ea, 1                    ; 7 uses
  store i32 %i.eg, ptr %i.y, align 4, !tbaa !844
  %i.eh = icmp slt i32 %i.eg, %i.eb
  br i1 %i.eh, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.ei = load i8, ptr %i.ah, align 1, !tbaa !850, !range !171, !noundef !172
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.o, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.n
  %.pre.i.i.i.i.i = load i32, ptr %i.ab, align 8, !tbaa !849
  %.pre.i.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !856
  br label %.invoke.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.ek = load i8, ptr %i.ai, align 1, !tbaa !851, !range !171, !noundef !172
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.em = load i64, ptr %i.ak, align 8, !tbaa !852
  %i.en = getelementptr inbounds i8, ptr %i.di, i64 %i.em
  store ptr %i.en, ptr %i.x, align 8, !tbaa !836
  %i.eo = load i32, ptr %i.al, align 8, !tbaa !853
  %.not.i.i85.i.i.i.i = icmp slt i32 %i.eg, %i.eo
  br i1 %.not.i.i85.i.i.i.i, label %bb.x, label %bb.q, !prof !55

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.x unwind label %bb.y

bb.r:                                             ; preds = %bb.o
  %i.ep = load i8, ptr %i.aj, align 2, !tbaa !854, !range !171, !noundef !172
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.er = load i64, ptr %i.ak, align 8, !tbaa !852
  %i.es = getelementptr inbounds i8, ptr %i.di, i64 %i.er
  store ptr %i.es, ptr %i.x, align 8, !tbaa !836
  %i.et = load i32, ptr %i.al, align 8, !tbaa !853
  %i.eu = icmp slt i32 %i.eg, %i.et               ; 3 uses
  %i.ev = load i32, ptr %i.am, align 4
  %i.ew = icmp sge i32 %i.eg, %i.ev
  %not..i.i.i.i.i.i = xor i1 %i.eu, true
  %or.cond.i.i.i.i.i.i = select i1 %not..i.i.i.i.i.i, i1 true, i1 %i.ew, !prof !855
  %i.ex = load ptr, ptr %i.an, align 8
  %i.ey = icmp eq ptr %i.ex, null
  %i.ez = select i1 %or.cond.i.i.i.i.i.i, i1 true, i1 %i.ey, !prof !855
  br i1 %i.ez, label %bb.t, label %bb.x, !prof !136

bb.t:                                             ; preds = %bb.s
  %i.fa = load ptr, ptr %2, align 8, !tbaa !832
  %i.fb = load i32, ptr %i.ab, align 8, !tbaa !849
  %i.fc = load i32, ptr %i.ae, align 4, !tbaa !856
  %i.fd = load i32, ptr %i.as, align 8, !tbaa !857
  %i.fe = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.fa, i32 noundef %i.eg, i32 noundef %i.fb, i32 noundef %i.fc, ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.am, ptr noundef nonnull align 1 dereferenceable(1) %i.ar, i1 noundef zeroext %i.eu, i32 noundef %i.fd)
          to label %.noexc87.i.i.i.i unwind label %bb.y

.noexc87.i.i.i.i:                                 ; preds = %bb.t
  %i.ff = zext i1 %i.eu to i8
  store ptr %i.fe, ptr %i.x, align 8, !tbaa !836
  store i8 %i.ff, ptr %i.ah, align 1, !tbaa !850
  br label %bb.x

bb.u:                                             ; preds = %bb.m
  %i.fg = load i32, ptr %i.aa, align 4, !tbaa !858 ; 3 uses
  store i32 %i.fg, ptr %i.y, align 4, !tbaa !844
  %i.fh = load i32, ptr %i.ab, align 8, !tbaa !849
  %i.fi = add nsw i32 %i.fh, 1                    ; 3 uses
  store i32 %i.fi, ptr %i.ab, align 8, !tbaa !849
  %i.fj = load i32, ptr %i.ac, align 8, !tbaa !859
  %.not.i84.i.i.i.i = icmp slt i32 %i.fi, %i.fj
  %.pre131.i.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !856 ; 2 uses
  br i1 %.not.i84.i.i.i.i, label %.invoke.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fk = load i32, ptr %i.ad, align 4, !tbaa !860 ; 2 uses
  store i32 %i.fk, ptr %i.ab, align 8, !tbaa !849
  %i.fl = add nsw i32 %.pre131.i.i.i.i, 1         ; 3 uses
  store i32 %i.fl, ptr %i.ae, align 4, !tbaa !856
  %i.fm = load i32, ptr %i.af, align 8, !tbaa !861
  %.not1.i.i.i.i.i = icmp slt i32 %i.fl, %i.fm
  br i1 %.not1.i.i.i.i.i, label %.invoke.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 0, ptr %i.ag, align 8, !tbaa !862
  br label %bb.x

.invoke.i.i.i.i:                                  ; preds = %bb.v, %bb.u, %._crit_edge.i.i.i.i.i, %bb.l
  %i.fn = phi i32 [ %i.ee, %bb.l ], [ %i.fg, %bb.u ], [ %i.fg, %bb.v ], [ %i.eg, %._crit_edge.i.i.i.i.i ]
  %i.fo = phi i32 [ %i.ef, %bb.l ], [ %i.fi, %bb.u ], [ %i.fk, %bb.v ], [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  %i.fp = phi i32 [ 0, %bb.l ], [ %.pre131.i.i.i.i, %bb.u ], [ %i.fl, %bb.v ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(164) %2, i32 noundef %i.fn, i32 noundef %i.fo, i32 noundef %i.fp)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %.invoke.i.i.i.i, %bb.w, %.noexc87.i.i.i.i, %bb.s, %bb.r, %bb.q, %bb.p
  %i.fq = bitcast i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i to float
  %i.fr = load i32, ptr %i.t, align 8, !tbaa !1583
  %i.fs = add nsw i32 %i.fr, 1                    ; 2 uses
  %i.ft = icmp eq i32 %i.fs, 2
  %spec.select.i.i.i.i.i = select i1 %i.ft, i32 0, i32 %i.fs ; 2 uses
  store i32 %spec.select.i.i.i.i.i, ptr %i.t, align 8, !tbaa !1583
  %i.fu = fmul float %i.dh, %i.fq
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv118.i.i.i.i
  store float %i.fu, ptr %i.fv, align 4, !tbaa !53
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv118.i.i.i.i, %smax68.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1603

bb.y:                                             ; preds = %.invoke.i.i.i.i, %bb.t, %bb.q
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.as, %.preheader.i.i.i.i
  %i.fx = load ptr, ptr %i.at, align 8, !tbaa !1604 ; 7 uses
  %i.fy = load ptr, ptr %i.au, align 8, !tbaa !1605
  %.not.i.i.i.i.i = icmp eq ptr %i.fx, %i.fy
  br i1 %.not.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.fx, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %.noexc80.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc80.i.i.i.i:                                 ; preds = %bb.z
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.fz, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  %i.ga = load ptr, ptr %i.at, align 8, !tbaa !1604
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 168
  store ptr %i.gb, ptr %i.at, align 8, !tbaa !1604
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !1574 ; 6 uses
  %i.gc = ptrtoint ptr %i.fx to i64
  %i.gd = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.ge = sub i64 %i.gc, %i.gd                    ; 3 uses
  %i.gf = icmp eq i64 %i.ge, 9223372036854775800
  br i1 %i.gf, label %bb.ab, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc81.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.ab
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.aa
  %i.gg = sdiv exact i64 %i.ge, 168               ; 3 uses
  %i.gh = icmp eq ptr %i.fx, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.gh, i64 1, i64 %i.gg
  %i.gi = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.gg ; 2 uses
  %i.gj = icmp ult i64 %i.gi, %i.gg
  %i.gk = call i64 @llvm.umin.i64(i64 %i.gi, i64 54901024028897475)
  %i.gl = select i1 %i.gj, i64 54901024028897475, i64 %i.gk ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.gl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.gm = mul nuw nsw i64 %i.gl, 168              ; 2 uses
  %i.gn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gm) #32
          to label %.noexc82.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc82.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.ge ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.go, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.ac unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i.i

bb.ac:                                            ; preds = %.noexc82.i.i.i.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gp, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  br i1 %i.gh, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.ac
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 168
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ac, %bb.ad
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gu, %bb.ad ], [ %i.gn, %bb.ac ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gt, %bb.ad ], [ %.val.i.i.i.i.i.i, %bb.ac ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(164) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gs = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gr, ptr noundef nonnull align 8 dereferenceable(36) %i.gs, i64 36, i1 false)
  %i.gt = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 168
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gt, %i.fx
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1606

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gv = landingpad { ptr, i32 }
          catch ptr null
  %i.gw = extractvalue { ptr, i32 } %i.gv, 0
  %i.gx = call ptr @__cxa_begin_catch(ptr %i.gw) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SC_(ptr noundef nonnull %i.gn, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ah unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gy = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gz = landingpad { ptr, i32 }
          catch ptr null
  %i.ha = extractvalue { ptr, i32 } %i.gz, 0
  call void @__clang_call_terminate(ptr %i.ha) #33
  unreachable

bb.ah:                                            ; preds = %bb.ae
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.ad
  %i.hb = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 336
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.hg, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !888
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.he = landingpad { ptr, i32 }
          catch ptr null
  %i.hf = extractvalue { ptr, i32 } %i.he, 0
  call void @__clang_call_terminate(ptr %i.hf) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ai, %.lr.ph.i.i.i.i.i.i.i.i
  %i.hg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.hg, %i.fx
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1607

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i
  %i.hh = phi ptr [ %i.gq, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.hb, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i
  %i.hi = load ptr, ptr %i.au, align 8, !tbaa !1605
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = sub i64 %i.hj, %i.gd
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.hk) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc82.i.i.i.i
  %i.hl = landingpad { ptr, i32 }
          catch ptr null
  %i.hm = extractvalue { ptr, i32 } %i.hl, 0
  %i.hn = call ptr @__cxa_begin_catch(ptr %i.hm) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.af
  %i.ho = extractvalue { ptr, i32 } %i.gy, 0
  %i.hp = call ptr @__cxa_begin_catch(ptr %i.ho) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(164) dereferenceable(164) %i.go) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i

bb.al:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i
  %i.hq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.am

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gn, i64 noundef %i.gm) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.an unwind label %bb.al

bb.am:                                            ; preds = %bb.al
  %i.hr = landingpad { ptr, i32 }
          catch ptr null
  %i.hs = extractvalue { ptr, i32 } %i.hr, 0
  call void @__clang_call_terminate(ptr %i.hs) #33
  unreachable

bb.an:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.ak, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i
  store ptr %i.gn, ptr %4, align 8, !tbaa !1574
  store ptr %i.hh, ptr %i.at, align 8, !tbaa !1604
  %i.ht = getelementptr inbounds nuw [168 x i8], ptr %i.gn, i64 %i.gl
  store ptr %i.ht, ptr %i.au, align 8, !tbaa !1605
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i

bb.ao:                                            ; preds = %bb.as, %.lr.ph104.i.i.i.i
  %indvars.iv126.i.i.i.i = phi i64 [ 0, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next127.i.i.i.i, %bb.as ] ; 3 uses
  %indvars.iv124.i.i.i.i = phi i32 [ %i.ch, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next125.i.i.i.i, %bb.as ] ; 2 uses
  %indvars.iv121.i.i.i.i = phi i32 [ %i.cg, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next122.i.i.i.i, %bb.as ] ; 3 uses
  %smax123.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv121.i.i.i.i, i32 0)
  %i.hu = add i32 %smax123.i.i.i.i, %indvars.iv124.i.i.i.i
  %i.hv = and i32 %i.hu, -2
  %i.hw = add i32 %i.hv, %indvars.iv121.i.i.i.i   ; 3 uses
  %i.hx = add nsw i32 %i.hw, %spec.store.select.i.i.i.i ; 2 uses
  %i.hy = icmp slt i32 %i.hx, 5
  br i1 %i.hy, label %bb.ap, label %bb.aq

end_hunk_12
begin_hunk_13_@_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window6updateEv:bb.a
bb.i:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.2
  %i.dy = add nsw i32 %i.dt, -1
  %i.dz = getelementptr inbounds nuw i8, ptr %.val.3, i64 568
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !849
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(164) %i.db, i32 noundef %i.dy, i32 noundef %i.ea, i32 noundef 0)
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.3

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.3: ; preds = %bb.i, %bb.h
  %i.eb = uitofp i16 %i.dr to float
  %i.ec = fmul nnan float %i.eb, f0x37800080
  %i.ed = load i32, ptr %i.di, align 8, !tbaa !1640
  %i.ee = add nsw i32 %i.ed, 1                    ; 2 uses
  %i.ef = icmp eq i32 %i.ee, 2
  %spec.select.i.3 = select i1 %i.ef, i32 0, i32 %i.ee
  store i32 %spec.select.i.3, ptr %i.di, align 8, !tbaa !1640
  %i.eg = fmul float %i.do, %i.ec
  %i.eh = getelementptr inbounds nuw i8, ptr %.val.3, i64 648
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.d
  store float %i.eg, ptr %i.ei, align 4, !tbaa !53
  %.val.4 = load ptr, ptr %0, align 8, !tbaa !1631 ; 9 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.val.4, i64 672 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.val.4, i64 808
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !1637, !nonnull !172, !align !315
  %i.em = getelementptr inbounds nuw i8, ptr %.val.4, i64 804
  %i.en = load i32, ptr %i.em, align 4, !tbaa !1639
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL17bayer_channel_mapE, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %.val.4, i64 800 ; 3 uses
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !1640
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.es
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !180
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.eu
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !53
  %i.ex = getelementptr inbounds nuw i8, ptr %.val.4, i64 784
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !836
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !1064
  %i.fa = getelementptr inbounds nuw i8, ptr %.val.4, i64 732
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !844 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.val.4, i64 712
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !845, !noalias !1641
  %i.fe = add nsw i32 %i.fd, -1
  %i.ff = icmp eq i32 %i.fb, %i.fe
  br i1 %i.ff, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.3
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(164) %i.ej)
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.4

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.3
  %i.fg = add nsw i32 %i.fb, -1
  %i.fh = getelementptr inbounds nuw i8, ptr %.val.4, i64 736
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !849
  tail call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(164) %i.ej, i32 noundef %i.fg, i32 noundef %i.fi, i32 noundef 0)
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.4

_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3Row5fetchEv.exit.4: ; preds = %bb.k, %bb.j
  %i.fj = uitofp i16 %i.ez to float
  %i.fk = fmul nnan float %i.fj, f0x37800080
  %i.fl = load i32, ptr %i.eq, align 8, !tbaa !1640
  %i.fm = add nsw i32 %i.fl, 1                    ; 2 uses
  %i.fn = icmp eq i32 %i.fm, 2
  %spec.select.i.4 = select i1 %i.fn, i32 0, i32 %i.fm
  store i32 %spec.select.i.4, ptr %i.eq, align 8, !tbaa !1640
  %i.fo = fmul float %i.ew, %i.fk
  %i.fp = getelementptr inbounds nuw i8, ptr %.val.4, i64 816
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.d
  store float %i.fo, ptr %i.fq, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS4_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfS2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<unsigned short, unsigned short, 2, 5, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Window::Row", align 8 ; 37 uses
  %i.a = alloca float, align 4                    ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.333", align 8 ; 8 uses
  %4 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<unsigned short, unsigned short, 2, 5, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Window", align 8 ; 20 uses
  %5 = alloca %"struct.OpenImageIO::v3_1::ImageBufAlgo::DemosaicingBase<unsigned short, unsigned short, 2, 5, OpenImageIO::ImageBufAlgo::bayer_channel_map>::Context", align 8 ; 11 uses
  %6 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 10 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !58    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1644 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.d = load ptr, ptr %.val, align 8, !tbaa !1646, !nonnull !172, !align !336
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0, i1 noundef zeroext true)
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !868  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !867
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %.lr.ph54.i.i.i, label %._crit_edge55.i.i.i

.lr.ph54.i.i.i:                                   ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 2 uses
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
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.bc = add i32 %i.f, -1
  br label %bb.d

._crit_edge55.i.i.i:                              ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !888
  %.not.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS7_RA4_KfNS1_3ROIEiEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge55.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE7processERNS1_8ImageBufERKS7_RA4_KfNS1_3ROIEiEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #33
  unreachable

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %.lr.ph54.i.i.i
  %indvars.iv.i.i.i = phi i32 [ %i.bc, %.lr.ph54.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 2 uses
  %.01752.i.i.i = phi i32 [ %i.f, %.lr.ph54.i.i.i ], [ %i.jz, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.bh = load i32, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !1647, !nonnull !172, !align !336 ; 3 uses
  %i.bj = load i32, ptr %i.k, align 8, !tbaa !1614
  %i.bk = load i32, ptr %i.l, align 4, !tbaa !1616
  %i.bl = load ptr, ptr %i.m, align 8, !tbaa !1648, !nonnull !172, !align !315 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %4, i8 0, i64 24, i1 false)
  %i.bm = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi)
          to label %.preheader91.i.i.i.i unwind label %bb.e ; 4 uses

.preheader91.i.i.i.i:                             ; preds = %bb.d
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !891 ; 3 uses
  store i32 %i.bn, ptr %i.n, align 4, !tbaa !1649
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !897
  %i.bq = add nsw i32 %i.bp, %i.bn
  store i32 %i.bq, ptr %i.o, align 8, !tbaa !1654
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !899 ; 2 uses
  store i32 %i.bs, ptr %i.p, align 4, !tbaa !1655
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !901
  %i.bv = add nsw i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.q, align 8, !tbaa !1656
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.r, align 8, !tbaa !3
  store i32 4, ptr %i.s, align 8, !tbaa !3
  %i.bw = sub i32 %i.bn, %i.bh                    ; 3 uses
  %i.bx = call i32 @llvm.smax.i32(i32 %i.bw, i32 -2) ; 4 uses
  %spec.store.select.i.i.i.i = add i32 %i.bx, 2   ; 3 uses
  %i.by = add i32 %i.bx, %i.bh                    ; 3 uses
  %i.bz = add nsw i32 %i.by, %i.bj
  %i.ca = srem i32 %i.bz, 2                       ; 3 uses
  %i.cb = icmp slt i32 %i.bw, 3
  %i.cc = icmp sgt i32 %i.bw, -2
  %i.cd = add i32 %.01752.i.i.i, -2
  %i.ce = sub i32 3, %.01752.i.i.i
  %i.cf = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cg = sub i32 -2, %i.bx
  %i.ch = add i32 %i.bx, 3
  %smax129.i.i.i.i = call i32 @llvm.smax.i32(i32 %spec.store.select.i.i.i.i, i32 1)
  %wide.trip.count.i.i.i.i = zext nneg i32 %smax129.i.i.i.i to i64
  %smax67.i.i.i = call i64 @llvm.smax.i64(i64 %i.cf, i64 4)
  br label %.preheader90.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.preheader90.i.i.i.i:                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, %.preheader91.i.i.i.i
  %indvars.iv65.i.i.i = phi i32 [ %indvars.iv.next66.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %indvars.iv.i.i.i, %.preheader91.i.i.i.i ] ; 2 uses
  %indvars.iv116.i.i.i.i = phi i32 [ %indvars.iv.next117.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.ce, %.preheader91.i.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i.i = phi i32 [ %indvars.iv.next.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.cd, %.preheader91.i.i.i.i ] ; 3 uses
  %.074105.i.i.i.i = phi i32 [ %i.ie, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ 0, %.preheader91.i.i.i.i ]
  %i.cj = load i32, ptr %i.p, align 4, !tbaa !1655
  %i.ck = load i32, ptr %i.q, align 8, !tbaa !1656
  %smax.i.i.i = call i32 @llvm.smax.i32(i32 %i.cj, i32 %indvars.iv.i.i.i.i)
  %i.cl = add i32 %smax.i.i.i, %indvars.iv116.i.i.i.i
  %i.cm = and i32 %i.cl, -2                       ; 2 uses
  %i.cn = add i32 %i.cm, %indvars.iv.i.i.i.i      ; 2 uses
  %i.co = add i32 %i.cm, %indvars.iv65.i.i.i
  %i.cp = add i32 %i.ck, -1
  %smin.i.i.i = call i32 @llvm.smin.i32(i32 %i.cn, i32 %i.cp)
  %i.cq = sub i32 %i.co, %smin.i.i.i
  %i.cr = and i32 %i.cq, -2
  %i.cs = sub i32 %i.cn, %i.cr                    ; 3 uses
  %i.ct = add nsw i32 %i.cs, %i.bk
  %i.cu = srem i32 %i.ct, 2                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_iiiNS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i32 noundef %i.by, i32 noundef %i.cs, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.f

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %.preheader90.i.i.i.i
  store i32 %i.ca, ptr %i.t, align 8, !tbaa !1640
  store i32 %i.cu, ptr %i.u, align 4, !tbaa !1639
  store ptr %i.bl, ptr %i.v, align 8, !tbaa !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.w, i8 0, i64 20, i1 false)
  br i1 %i.cb, label %.lr.ph.i.i.i.i, label %.lr.ph104.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.s
  br i1 %i.cc, label %.lr.ph104.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph104.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL17bayer_channel_mapE, i64 %i.cv
  br label %bb.aj

bb.f:                                             ; preds = %.preheader90.i.i.i.i
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.s
  %i.cy = phi i32 [ %spec.select.i.i.i.i.i, %bb.s ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv118.i.i.i.i = phi i64 [ %indvars.iv.next119.i.i.i.i, %bb.s ], [ %i.cf, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
  %i.cz = load ptr, ptr %i.v, align 8, !tbaa !1637, !nonnull !172, !align !315
  %i.da = load i32, ptr %i.u, align 4, !tbaa !1639
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL17bayer_channel_mapE, i64 %i.db
  %i.dd = sext i32 %i.cy to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !180
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.df
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !53
  %i.di = load ptr, ptr %i.x, align 8, !tbaa !836 ; 3 uses
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !1064
  %i.dk = load i32, ptr %i.y, align 4, !tbaa !844 ; 3 uses
  %i.dl = load i32, ptr %i.z, align 8, !tbaa !845, !noalias !1657 ; 2 uses
  %i.dm = add nsw i32 %i.dl, -1
  %i.dn = icmp eq i32 %i.dk, %i.dm
  br i1 %i.dn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.do = add nsw i32 %i.dk, -1
  %i.dp = load i32, ptr %i.ab, align 8, !tbaa !849
  br label %.invoke.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dq = add nsw i32 %i.dk, 1                    ; 7 uses
  store i32 %i.dq, ptr %i.y, align 4, !tbaa !844
  %i.dr = icmp slt i32 %i.dq, %i.dl
  br i1 %i.dr, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.ds = load i8, ptr %i.ah, align 1, !tbaa !850, !range !171, !noundef !172
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.j, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.i
  %.pre.i.i.i.i.i = load i32, ptr %i.ab, align 8, !tbaa !849
  %.pre.i.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !856
  br label %.invoke.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.du = load i8, ptr %i.ai, align 1, !tbaa !851, !range !171, !noundef !172
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.dw = load i64, ptr %i.ak, align 8, !tbaa !852
  %i.dx = getelementptr inbounds i8, ptr %i.di, i64 %i.dw
  store ptr %i.dx, ptr %i.x, align 8, !tbaa !836
  %i.dy = load i32, ptr %i.al, align 8, !tbaa !853
  %.not.i.i85.i.i.i.i = icmp slt i32 %i.dq, %i.dy
  br i1 %.not.i.i85.i.i.i.i, label %bb.s, label %bb.l, !prof !55

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.s unwind label %bb.t

bb.m:                                             ; preds = %bb.j
  %i.dz = load i8, ptr %i.aj, align 2, !tbaa !854, !range !171, !noundef !172
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eb = load i64, ptr %i.ak, align 8, !tbaa !852
  %i.ec = getelementptr inbounds i8, ptr %i.di, i64 %i.eb
  store ptr %i.ec, ptr %i.x, align 8, !tbaa !836
  %i.ed = load i32, ptr %i.al, align 8, !tbaa !853
  %i.ee = icmp slt i32 %i.dq, %i.ed               ; 3 uses
  %i.ef = load i32, ptr %i.am, align 4
  %i.eg = icmp sge i32 %i.dq, %i.ef
  %not..i.i.i.i.i.i = xor i1 %i.ee, true
  %or.cond.i.i.i.i.i.i = select i1 %not..i.i.i.i.i.i, i1 true, i1 %i.eg, !prof !855
  %i.eh = load ptr, ptr %i.an, align 8
  %i.ei = icmp eq ptr %i.eh, null
  %i.ej = select i1 %or.cond.i.i.i.i.i.i, i1 true, i1 %i.ei, !prof !855
  br i1 %i.ej, label %bb.o, label %bb.s, !prof !136

bb.o:                                             ; preds = %bb.n
  %i.ek = load ptr, ptr %2, align 8, !tbaa !832
  %i.el = load i32, ptr %i.ab, align 8, !tbaa !849
  %i.em = load i32, ptr %i.ae, align 4, !tbaa !856
  %i.en = load i32, ptr %i.as, align 8, !tbaa !857
  %i.eo = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i32 noundef %i.dq, i32 noundef %i.el, i32 noundef %i.em, ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.am, ptr noundef nonnull align 1 dereferenceable(1) %i.ar, i1 noundef zeroext %i.ee, i32 noundef %i.en)
          to label %.noexc87.i.i.i.i unwind label %bb.t

.noexc87.i.i.i.i:                                 ; preds = %bb.o
  %i.ep = zext i1 %i.ee to i8
  store ptr %i.eo, ptr %i.x, align 8, !tbaa !836
  store i8 %i.ep, ptr %i.ah, align 1, !tbaa !850
  br label %bb.s

bb.p:                                             ; preds = %bb.h
  %i.eq = load i32, ptr %i.aa, align 4, !tbaa !858 ; 3 uses
  store i32 %i.eq, ptr %i.y, align 4, !tbaa !844
  %i.er = load i32, ptr %i.ab, align 8, !tbaa !849
  %i.es = add nsw i32 %i.er, 1                    ; 3 uses
  store i32 %i.es, ptr %i.ab, align 8, !tbaa !849
  %i.et = load i32, ptr %i.ac, align 8, !tbaa !859
  %.not.i84.i.i.i.i = icmp slt i32 %i.es, %i.et
  %.pre131.i.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !856 ; 2 uses
  br i1 %.not.i84.i.i.i.i, label %.invoke.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eu = load i32, ptr %i.ad, align 4, !tbaa !860 ; 2 uses
  store i32 %i.eu, ptr %i.ab, align 8, !tbaa !849
  %i.ev = add nsw i32 %.pre131.i.i.i.i, 1         ; 3 uses
  store i32 %i.ev, ptr %i.ae, align 4, !tbaa !856
  %i.ew = load i32, ptr %i.af, align 8, !tbaa !861
  %.not1.i.i.i.i.i = icmp slt i32 %i.ev, %i.ew
  br i1 %.not1.i.i.i.i.i, label %.invoke.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr %i.ag, align 8, !tbaa !862
  br label %bb.s

.invoke.i.i.i.i:                                  ; preds = %bb.q, %bb.p, %._crit_edge.i.i.i.i.i, %bb.g
  %i.ex = phi i32 [ %i.do, %bb.g ], [ %i.eq, %bb.p ], [ %i.eq, %bb.q ], [ %i.dq, %._crit_edge.i.i.i.i.i ]
  %i.ey = phi i32 [ %i.dp, %bb.g ], [ %i.es, %bb.p ], [ %i.eu, %bb.q ], [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  %i.ez = phi i32 [ 0, %bb.g ], [ %.pre131.i.i.i.i, %bb.p ], [ %i.ev, %bb.q ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(164) %2, i32 noundef %i.ex, i32 noundef %i.ey, i32 noundef %i.ez)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.invoke.i.i.i.i, %bb.r, %.noexc87.i.i.i.i, %bb.n, %bb.m, %bb.l, %bb.k
  %i.fa = uitofp i16 %i.dj to float
  %i.fb = fmul nnan float %i.fa, f0x37800080
  %i.fc = load i32, ptr %i.t, align 8, !tbaa !1640
  %i.fd = add nsw i32 %i.fc, 1                    ; 2 uses
  %i.fe = icmp eq i32 %i.fd, 2
  %spec.select.i.i.i.i.i = select i1 %i.fe, i32 0, i32 %i.fd ; 2 uses
  store i32 %spec.select.i.i.i.i.i, ptr %i.t, align 8, !tbaa !1640
  %i.ff = fmul float %i.dh, %i.fb
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv118.i.i.i.i
  store float %i.ff, ptr %i.fg, align 4, !tbaa !53
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv118.i.i.i.i, %smax67.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1660

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.an, %.preheader.i.i.i.i
  %i.fi = load ptr, ptr %i.at, align 8, !tbaa !1661 ; 7 uses
  %i.fj = load ptr, ptr %i.au, align 8, !tbaa !1662
  %.not.i.i.i.i.i = icmp eq ptr %i.fi, %i.fj
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.fi, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %.noexc80.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc80.i.i.i.i:                                 ; preds = %bb.u
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.fk, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  %i.fl = load ptr, ptr %i.at, align 8, !tbaa !1661
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 168
  store ptr %i.fm, ptr %i.at, align 8, !tbaa !1661
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !1631 ; 6 uses
  %i.fn = ptrtoint ptr %i.fi to i64
  %i.fo = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.fp = sub i64 %i.fn, %i.fo                    ; 3 uses
  %i.fq = icmp eq i64 %i.fp, 9223372036854775800
  br i1 %i.fq, label %bb.w, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc81.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.fr = sdiv exact i64 %i.fp, 168               ; 3 uses
  %i.fs = icmp eq ptr %i.fi, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.fs, i64 1, i64 %i.fr
  %i.ft = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.fr ; 2 uses
  %i.fu = icmp ult i64 %i.ft, %i.fr
  %i.fv = call i64 @llvm.umin.i64(i64 %i.ft, i64 54901024028897475)
  %i.fw = select i1 %i.fu, i64 54901024028897475, i64 %i.fv ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.fw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.fx = mul nuw nsw i64 %i.fw, 168              ; 2 uses
  %i.fy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fx) #32
          to label %.noexc82.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc82.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fp ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.fz, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.x unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i

bb.x:                                             ; preds = %.noexc82.i.i.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ga, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  br i1 %i.fs, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.x
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 168
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.x, %bb.y
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gf, %bb.y ], [ %i.fy, %bb.x ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ge, %bb.y ], [ %.val.i.i.i.i.i.i, %bb.x ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(164) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gd = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gc, ptr noundef nonnull align 8 dereferenceable(36) %i.gd, i64 36, i1 false)
  %i.ge = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 168
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ge, %i.fi
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1663

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gg = landingpad { ptr, i32 }
          catch ptr null
  %i.gh = extractvalue { ptr, i32 } %i.gg, 0
  %i.gi = call ptr @__cxa_begin_catch(ptr %i.gh) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_(ptr noundef nonnull %i.fy, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gk = landingpad { ptr, i32 }
          catch ptr null
  %i.gl = extractvalue { ptr, i32 } %i.gk, 0
  call void @__clang_call_terminate(ptr %i.gl) #33
  unreachable

bb.ac:                                            ; preds = %bb.z
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.y
  %i.gm = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 336
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.gr, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !888
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  call void @__clang_call_terminate(ptr %i.gq) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gr, %i.fi
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1664

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i
  %i.gs = phi ptr [ %i.gb, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.gm, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  %i.gt = load ptr, ptr %i.au, align 8, !tbaa !1662
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = sub i64 %i.gu, %i.fo
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.gv) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc82.i.i.i.i
  %i.gw = landingpad { ptr, i32 }
          catch ptr null
  %i.gx = extractvalue { ptr, i32 } %i.gw, 0
  %i.gy = call ptr @__cxa_begin_catch(ptr %i.gx) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.aa
  %i.gz = extractvalue { ptr, i32 } %i.gj, 0
  %i.ha = call ptr @__cxa_begin_catch(ptr %i.gz) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS1_L17bayer_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(164) dereferenceable(164) %i.fz) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  %i.hb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.ah

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fy, i64 noundef %i.fx) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.ai unwind label %bb.ag

bb.ah:                                            ; preds = %bb.ag
  %i.hc = landingpad { ptr, i32 }
          catch ptr null
  %i.hd = extractvalue { ptr, i32 } %i.hc, 0
  call void @__clang_call_terminate(ptr %i.hd) #33
  unreachable

bb.ai:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.af, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  store ptr %i.fy, ptr %4, align 8, !tbaa !1631
  store ptr %i.gs, ptr %i.at, align 8, !tbaa !1661
  %i.he = getelementptr inbounds nuw [168 x i8], ptr %i.fy, i64 %i.fw
  store ptr %i.he, ptr %i.au, align 8, !tbaa !1662
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi2ELi5EXadsoA2_KmL_ZNS2_L17bayer_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.an, %.lr.ph104.i.i.i.i
  %indvars.iv126.i.i.i.i = phi i64 [ 0, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next127.i.i.i.i, %bb.an ] ; 3 uses
  %indvars.iv124.i.i.i.i = phi i32 [ %i.ch, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next125.i.i.i.i, %bb.an ] ; 2 uses
  %indvars.iv121.i.i.i.i = phi i32 [ %i.cg, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next122.i.i.i.i, %bb.an ] ; 3 uses
  %smax123.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv121.i.i.i.i, i32 0)
  %i.hf = add i32 %smax123.i.i.i.i, %indvars.iv124.i.i.i.i
  %i.hg = and i32 %i.hf, -2
  %i.hh = add i32 %i.hg, %indvars.iv121.i.i.i.i   ; 3 uses
  %i.hi = add nsw i32 %i.hh, %spec.store.select.i.i.i.i ; 2 uses
  %i.hj = icmp slt i32 %i.hi, 5
  br i1 %i.hj, label %bb.ak, label %bb.al

end_hunk_13
begin_hunk_14_@_ZN11OpenImageIO4v3_112ImageBufAlgo23LinearXTransDemosaicingIffE12calc_BGG_grbILb0EEEbRNS1_15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE7ContextE:bb.a
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
  %i.f = load i32, ptr %i.e, align 8, !tbaa !868  ; 3 uses
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
  %i.bc = add i32 %i.f, 3
  br label %bb.d

._crit_edge55.i.i.i:                              ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !888
  %.not.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS7_RA4_KfNS1_3ROIEiEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge55.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS7_RA4_KfNS1_3ROIEiEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #33
  unreachable

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %.lr.ph54.i.i.i
  %indvars.iv.i.i.i = phi i32 [ %i.bc, %.lr.ph54.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 2 uses
  %.01752.i.i.i = phi i32 [ %i.f, %.lr.ph54.i.i.i ], [ %i.ke, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.bh = load i32, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !1706, !nonnull !172, !align !336 ; 3 uses
  %i.bj = load i32, ptr %i.k, align 8, !tbaa !1671
  %i.bk = load i32, ptr %i.l, align 4, !tbaa !1673
  %i.bl = load ptr, ptr %i.m, align 8, !tbaa !1707, !nonnull !172, !align !315 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %4, i8 0, i64 24, i1 false)
  %i.bm = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi)
          to label %.preheader91.i.i.i.i unwind label %bb.e ; 4 uses

.preheader91.i.i.i.i:                             ; preds = %bb.d
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !891 ; 3 uses
  store i32 %i.bn, ptr %i.n, align 4, !tbaa !1708
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !897
  %i.bq = add nsw i32 %i.bp, %i.bn
  store i32 %i.bq, ptr %i.o, align 8, !tbaa !1713
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !899 ; 2 uses
  store i32 %i.bs, ptr %i.p, align 4, !tbaa !1714
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !901
  %i.bv = add nsw i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.q, align 8, !tbaa !1715
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.r, align 8, !tbaa !3
  store i32 4, ptr %i.s, align 8, !tbaa !3
  %i.bw = sub i32 %i.bn, %i.bh                    ; 3 uses
  %i.bx = call i32 @llvm.smax.i32(i32 %i.bw, i32 -2) ; 3 uses
  %spec.store.select.i.i.i.i = add i32 %i.bx, 2   ; 4 uses
  %i.by = add i32 %i.bx, %i.bh                    ; 3 uses
  %i.bz = add nsw i32 %i.by, %i.bj
  %i.ca = srem i32 %i.bz, 6                       ; 3 uses
  %i.cb = icmp slt i32 %i.bw, 3
  %i.cc = icmp sgt i32 %i.bw, -2
  %i.cd = add i32 %.01752.i.i.i, -2
  %i.ce = sub i32 2, %.01752.i.i.i
  %i.cf = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cg = sub i32 -2, %i.bx
  %smax130.i.i.i.i = call i32 @llvm.smax.i32(i32 %spec.store.select.i.i.i.i, i32 1)
  %wide.trip.count.i.i.i.i = zext nneg i32 %smax130.i.i.i.i to i64
  %smax67.i.i.i = call i64 @llvm.smax.i64(i64 %i.cf, i64 4)
  br label %.preheader90.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.preheader90.i.i.i.i:                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, %.preheader91.i.i.i.i
  %indvars.iv65.i.i.i = phi i32 [ %indvars.iv.next66.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %indvars.iv.i.i.i, %.preheader91.i.i.i.i ] ; 2 uses
  %indvars.iv116.i.i.i.i = phi i32 [ %indvars.iv.next117.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.ce, %.preheader91.i.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i.i = phi i32 [ %indvars.iv.next.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.cd, %.preheader91.i.i.i.i ] ; 3 uses
  %.074105.i.i.i.i = phi i32 [ %i.ij, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ 0, %.preheader91.i.i.i.i ]
  %i.ci = load i32, ptr %i.p, align 4, !tbaa !1714
  %smax.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.ci, i32 %indvars.iv.i.i.i.i)
  %i.cj = add i32 %smax.i.i.i.i, %indvars.iv116.i.i.i.i ; 2 uses
  %i.ck = icmp ne i32 %i.cj, 0
  %umin.i.i.i.i = zext i1 %i.ck to i32            ; 2 uses
  %i.cl = load i32, ptr %i.q, align 8, !tbaa !1715
  %i.cm = sub i32 %i.cj, %umin.i.i.i.i
  %i.cn = udiv i32 %i.cm, 6
  %i.co = add nuw nsw i32 %i.cn, %umin.i.i.i.i
  %i.cp = mul i32 %i.co, 6                        ; 2 uses
  %i.cq = add i32 %i.cp, %indvars.iv.i.i.i.i      ; 2 uses
  %i.cr = add i32 %i.cp, %indvars.iv65.i.i.i
  %i.cs = add i32 %i.cl, -1
  %smin.i.i.i = call i32 @llvm.smin.i32(i32 %i.cq, i32 %i.cs)
  %i.ct = sub i32 %i.cr, %smin.i.i.i
  %.fr.i.i.i = freeze i32 %i.ct                   ; 2 uses
  %i.cu = urem i32 %.fr.i.i.i, 6
  %.neg.i.i.i = sub i32 %i.cu, %.fr.i.i.i
  %i.cv = add i32 %.neg.i.i.i, %i.cq              ; 3 uses
  %i.cw = add nsw i32 %i.cv, %i.bk
  %i.cx = srem i32 %i.cw, 6                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_iiiNS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i32 noundef %i.by, i32 noundef %i.cv, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.f

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %.preheader90.i.i.i.i
  store i32 %i.ca, ptr %i.t, align 8, !tbaa !1699
  store i32 %i.cx, ptr %i.u, align 4, !tbaa !1698
  store ptr %i.bl, ptr %i.v, align 8, !tbaa !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.w, i8 0, i64 20, i1 false)
  br i1 %i.cb, label %.lr.ph.i.i.i.i, label %.lr.ph104.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.s
  br i1 %i.cc, label %.lr.ph104.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph104.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [48 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL18xtrans_channel_mapE, i64 %i.cy
  br label %bb.aj

bb.f:                                             ; preds = %.preheader90.i.i.i.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.s
  %i.db = phi i32 [ %spec.select.i.i.i.i.i, %bb.s ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv118.i.i.i.i = phi i64 [ %indvars.iv.next119.i.i.i.i, %bb.s ], [ %i.cf, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
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
  %.pre132.i.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !856 ; 2 uses
  br i1 %.not.i84.i.i.i.i, label %.invoke.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ex = load i32, ptr %i.ad, align 4, !tbaa !860 ; 2 uses
  store i32 %i.ex, ptr %i.ab, align 8, !tbaa !849
  %i.ey = add nsw i32 %.pre132.i.i.i.i, 1         ; 3 uses
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
  %i.fc = phi i32 [ 0, %bb.g ], [ %.pre132.i.i.i.i, %bb.p ], [ %i.ey, %bb.q ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i.i ]
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
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv118.i.i.i.i, %smax67.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1719

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.an, %.preheader.i.i.i.i
  %i.fj = load ptr, ptr %i.at, align 8, !tbaa !1720 ; 7 uses
  %i.fk = load ptr, ptr %i.au, align 8, !tbaa !1721
  %.not.i.i.i.i.i = icmp eq ptr %i.fj, %i.fk
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.fj, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %.noexc80.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc80.i.i.i.i:                                 ; preds = %bb.u
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.fl, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  %i.fm = load ptr, ptr %i.at, align 8, !tbaa !1720
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 168
  store ptr %i.fn, ptr %i.at, align 8, !tbaa !1720
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !1692 ; 6 uses
  %i.fo = ptrtoint ptr %i.fj to i64
  %i.fp = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.fq = sub i64 %i.fo, %i.fp                    ; 3 uses
  %i.fr = icmp eq i64 %i.fq, 9223372036854775800
  br i1 %i.fr, label %bb.w, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc81.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.fs = sdiv exact i64 %i.fq, 168               ; 3 uses
  %i.ft = icmp eq ptr %i.fj, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.ft, i64 1, i64 %i.fs
  %i.fu = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.fs ; 2 uses
  %i.fv = icmp ult i64 %i.fu, %i.fs
  %i.fw = call i64 @llvm.umin.i64(i64 %i.fu, i64 54901024028897475)
  %i.fx = select i1 %i.fv, i64 54901024028897475, i64 %i.fw ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.fx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.fy = mul nuw nsw i64 %i.fx, 168              ; 2 uses
  %i.fz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fy) #32
          to label %.noexc82.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc82.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.fq ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.ga, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.x unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i

bb.x:                                             ; preds = %.noexc82.i.i.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gb, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  br i1 %i.ft, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.x
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 168
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.x, %bb.y
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gg, %bb.y ], [ %i.fz, %bb.x ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gf, %bb.y ], [ %.val.i.i.i.i.i.i, %bb.x ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(164) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.ge = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gd, ptr noundef nonnull align 8 dereferenceable(36) %i.ge, i64 36, i1 false)
  %i.gf = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 168
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gf, %i.fj
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1722

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gh = landingpad { ptr, i32 }
          catch ptr null
  %i.gi = extractvalue { ptr, i32 } %i.gh, 0
  %i.gj = call ptr @__cxa_begin_catch(ptr %i.gi) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_(ptr noundef nonnull %i.fz, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gk = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gl = landingpad { ptr, i32 }
          catch ptr null
  %i.gm = extractvalue { ptr, i32 } %i.gl, 0
  call void @__clang_call_terminate(ptr %i.gm) #33
  unreachable

bb.ac:                                            ; preds = %bb.z
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.y
  %i.gn = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 336
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.gs, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !888
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gq = landingpad { ptr, i32 }
          catch ptr null
  %i.gr = extractvalue { ptr, i32 } %i.gq, 0
  call void @__clang_call_terminate(ptr %i.gr) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gs, %i.fj
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1723

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i
  %i.gt = phi ptr [ %i.gc, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.gn, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  %i.gu = load ptr, ptr %i.au, align 8, !tbaa !1721
  %i.gv = ptrtoint ptr %i.gu to i64
  %i.gw = sub i64 %i.gv, %i.fp
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.gw) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc82.i.i.i.i
  %i.gx = landingpad { ptr, i32 }
          catch ptr null
  %i.gy = extractvalue { ptr, i32 } %i.gx, 0
  %i.gz = call ptr @__cxa_begin_catch(ptr %i.gy) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.aa
  %i.ha = extractvalue { ptr, i32 } %i.gk, 0
  %i.hb = call ptr @__cxa_begin_catch(ptr %i.ha) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(164) dereferenceable(164) %i.ga) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  %i.hc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.ah

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef %i.fy) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.ai unwind label %bb.ag

bb.ah:                                            ; preds = %bb.ag
  %i.hd = landingpad { ptr, i32 }
          catch ptr null
  %i.he = extractvalue { ptr, i32 } %i.hd, 0
  call void @__clang_call_terminate(ptr %i.he) #33
  unreachable

bb.ai:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.af, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  store ptr %i.fz, ptr %4, align 8, !tbaa !1692
  store ptr %i.gt, ptr %i.at, align 8, !tbaa !1720
  %i.hf = getelementptr inbounds nuw [168 x i8], ptr %i.fz, i64 %i.fx
  store ptr %i.hf, ptr %i.au, align 8, !tbaa !1721
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIffLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.an, %.lr.ph104.i.i.i.i
  %indvars.iv127.i.i.i.i = phi i64 [ 0, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next128.i.i.i.i, %bb.an ] ; 3 uses
  %indvars.iv124.i.i.i.i = phi i32 [ %spec.store.select.i.i.i.i, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next125.i.i.i.i, %bb.an ] ; 2 uses
  %indvars.iv121.i.i.i.i = phi i32 [ %i.cg, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next122.i.i.i.i, %bb.an ] ; 3 uses
  %smax123.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv121.i.i.i.i, i32 0)
  %i.hg = add i32 %smax123.i.i.i.i, %indvars.iv124.i.i.i.i ; 2 uses
  %i.hh = icmp ne i32 %i.hg, 0
  %umin126.i.i.i.i = zext i1 %i.hh to i32         ; 2 uses
  %i.hi = sub i32 %i.hg, %umin126.i.i.i.i
  %i.hj = udiv i32 %i.hi, 6
  %i.hk = add nuw nsw i32 %i.hj, %umin126.i.i.i.i
  %i.hl = mul i32 %i.hk, 6
end_hunk_14
begin_hunk_15_@_ZN11OpenImageIO4v3_112ImageBufAlgo23LinearXTransDemosaicingIfhE12calc_BGG_grbILb0EEEbRNS1_15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE7ContextE:bb.a
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
  %i.f = load i32, ptr %i.e, align 8, !tbaa !868  ; 3 uses
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
  %i.bc = add i32 %i.f, 3
  br label %bb.d

._crit_edge55.i.i.i:                              ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !888
  %.not.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS7_RA4_KfNS1_3ROIEiEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge55.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS7_RA4_KfNS1_3ROIEiEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #33
  unreachable

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %.lr.ph54.i.i.i
  %indvars.iv.i.i.i = phi i32 [ %i.bc, %.lr.ph54.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 2 uses
  %.01752.i.i.i = phi i32 [ %i.f, %.lr.ph54.i.i.i ], [ %i.kg, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.bh = load i32, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !1765, !nonnull !172, !align !336 ; 3 uses
  %i.bj = load i32, ptr %i.k, align 8, !tbaa !1730
  %i.bk = load i32, ptr %i.l, align 4, !tbaa !1732
  %i.bl = load ptr, ptr %i.m, align 8, !tbaa !1766, !nonnull !172, !align !315 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %4, i8 0, i64 24, i1 false)
  %i.bm = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi)
          to label %.preheader91.i.i.i.i unwind label %bb.e ; 4 uses

.preheader91.i.i.i.i:                             ; preds = %bb.d
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !891 ; 3 uses
  store i32 %i.bn, ptr %i.n, align 4, !tbaa !1767
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !897
  %i.bq = add nsw i32 %i.bp, %i.bn
  store i32 %i.bq, ptr %i.o, align 8, !tbaa !1772
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !899 ; 2 uses
  store i32 %i.bs, ptr %i.p, align 4, !tbaa !1773
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !901
  %i.bv = add nsw i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.q, align 8, !tbaa !1774
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.r, align 8, !tbaa !3
  store i32 4, ptr %i.s, align 8, !tbaa !3
  %i.bw = sub i32 %i.bn, %i.bh                    ; 3 uses
  %i.bx = call i32 @llvm.smax.i32(i32 %i.bw, i32 -2) ; 3 uses
  %spec.store.select.i.i.i.i = add i32 %i.bx, 2   ; 4 uses
  %i.by = add i32 %i.bx, %i.bh                    ; 3 uses
  %i.bz = add nsw i32 %i.by, %i.bj
  %i.ca = srem i32 %i.bz, 6                       ; 3 uses
  %i.cb = icmp slt i32 %i.bw, 3
  %i.cc = icmp sgt i32 %i.bw, -2
  %i.cd = add i32 %.01752.i.i.i, -2
  %i.ce = sub i32 2, %.01752.i.i.i
  %i.cf = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cg = sub i32 -2, %i.bx
  %smax130.i.i.i.i = call i32 @llvm.smax.i32(i32 %spec.store.select.i.i.i.i, i32 1)
  %wide.trip.count.i.i.i.i = zext nneg i32 %smax130.i.i.i.i to i64
  %smax67.i.i.i = call i64 @llvm.smax.i64(i64 %i.cf, i64 4)
  br label %.preheader90.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.preheader90.i.i.i.i:                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, %.preheader91.i.i.i.i
  %indvars.iv65.i.i.i = phi i32 [ %indvars.iv.next66.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %indvars.iv.i.i.i, %.preheader91.i.i.i.i ] ; 2 uses
  %indvars.iv116.i.i.i.i = phi i32 [ %indvars.iv.next117.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.ce, %.preheader91.i.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i.i = phi i32 [ %indvars.iv.next.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.cd, %.preheader91.i.i.i.i ] ; 3 uses
  %.074105.i.i.i.i = phi i32 [ %i.il, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ 0, %.preheader91.i.i.i.i ]
  %i.ci = load i32, ptr %i.p, align 4, !tbaa !1773
  %smax.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.ci, i32 %indvars.iv.i.i.i.i)
  %i.cj = add i32 %smax.i.i.i.i, %indvars.iv116.i.i.i.i ; 2 uses
  %i.ck = icmp ne i32 %i.cj, 0
  %umin.i.i.i.i = zext i1 %i.ck to i32            ; 2 uses
  %i.cl = load i32, ptr %i.q, align 8, !tbaa !1774
  %i.cm = sub i32 %i.cj, %umin.i.i.i.i
  %i.cn = udiv i32 %i.cm, 6
  %i.co = add nuw nsw i32 %i.cn, %umin.i.i.i.i
  %i.cp = mul i32 %i.co, 6                        ; 2 uses
  %i.cq = add i32 %i.cp, %indvars.iv.i.i.i.i      ; 2 uses
  %i.cr = add i32 %i.cp, %indvars.iv65.i.i.i
  %i.cs = add i32 %i.cl, -1
  %smin.i.i.i = call i32 @llvm.smin.i32(i32 %i.cq, i32 %i.cs)
  %i.ct = sub i32 %i.cr, %smin.i.i.i
  %.fr.i.i.i = freeze i32 %i.ct                   ; 2 uses
  %i.cu = urem i32 %.fr.i.i.i, 6
  %.neg.i.i.i = sub i32 %i.cu, %.fr.i.i.i
  %i.cv = add i32 %.neg.i.i.i, %i.cq              ; 3 uses
  %i.cw = add nsw i32 %i.cv, %i.bk
  %i.cx = srem i32 %i.cw, 6                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_iiiNS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i32 noundef %i.by, i32 noundef %i.cv, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.f

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %.preheader90.i.i.i.i
  store i32 %i.ca, ptr %i.t, align 8, !tbaa !1758
  store i32 %i.cx, ptr %i.u, align 4, !tbaa !1757
  store ptr %i.bl, ptr %i.v, align 8, !tbaa !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.w, i8 0, i64 20, i1 false)
  br i1 %i.cb, label %.lr.ph.i.i.i.i, label %.lr.ph104.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.s
  br i1 %i.cc, label %.lr.ph104.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph104.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [48 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL18xtrans_channel_mapE, i64 %i.cy
  br label %bb.aj

bb.f:                                             ; preds = %.preheader90.i.i.i.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.s
  %i.db = phi i32 [ %spec.select.i.i.i.i.i, %bb.s ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv118.i.i.i.i = phi i64 [ %indvars.iv.next119.i.i.i.i, %bb.s ], [ %i.cf, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
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
  %.pre132.i.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !856 ; 2 uses
  br i1 %.not.i84.i.i.i.i, label %.invoke.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ex = load i32, ptr %i.ad, align 4, !tbaa !860 ; 2 uses
  store i32 %i.ex, ptr %i.ab, align 8, !tbaa !849
  %i.ey = add nsw i32 %.pre132.i.i.i.i, 1         ; 3 uses
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
  %i.fc = phi i32 [ 0, %bb.g ], [ %.pre132.i.i.i.i, %bb.p ], [ %i.ey, %bb.q ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i.i ]
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
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv118.i.i.i.i, %smax67.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1778

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.an, %.preheader.i.i.i.i
  %i.fl = load ptr, ptr %i.at, align 8, !tbaa !1779 ; 7 uses
  %i.fm = load ptr, ptr %i.au, align 8, !tbaa !1780
  %.not.i.i.i.i.i = icmp eq ptr %i.fl, %i.fm
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.fl, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %.noexc80.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc80.i.i.i.i:                                 ; preds = %bb.u
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.fn, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  %i.fo = load ptr, ptr %i.at, align 8, !tbaa !1779
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 168
  store ptr %i.fp, ptr %i.at, align 8, !tbaa !1779
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !1751 ; 6 uses
  %i.fq = ptrtoint ptr %i.fl to i64
  %i.fr = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.fs = sub i64 %i.fq, %i.fr                    ; 3 uses
  %i.ft = icmp eq i64 %i.fs, 9223372036854775800
  br i1 %i.ft, label %bb.w, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc81.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.fu = sdiv exact i64 %i.fs, 168               ; 3 uses
  %i.fv = icmp eq ptr %i.fl, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.fv, i64 1, i64 %i.fu
  %i.fw = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.fu ; 2 uses
  %i.fx = icmp ult i64 %i.fw, %i.fu
  %i.fy = call i64 @llvm.umin.i64(i64 %i.fw, i64 54901024028897475)
  %i.fz = select i1 %i.fx, i64 54901024028897475, i64 %i.fy ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.fz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.ga = mul nuw nsw i64 %i.fz, 168              ; 2 uses
  %i.gb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ga) #32
          to label %.noexc82.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc82.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.fs ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.gc, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.x unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i

bb.x:                                             ; preds = %.noexc82.i.i.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gd, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  br i1 %i.fv, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.x
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 168
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.x, %bb.y
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gi, %bb.y ], [ %i.gb, %bb.x ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gh, %bb.y ], [ %.val.i.i.i.i.i.i, %bb.x ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(164) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gg = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gf, ptr noundef nonnull align 8 dereferenceable(36) %i.gg, i64 36, i1 false)
  %i.gh = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 168
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gh, %i.fl
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1781

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  %i.gk = extractvalue { ptr, i32 } %i.gj, 0
  %i.gl = call ptr @__cxa_begin_catch(ptr %i.gk) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_(ptr noundef nonnull %i.gb, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gm = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gn = landingpad { ptr, i32 }
          catch ptr null
  %i.go = extractvalue { ptr, i32 } %i.gn, 0
  call void @__clang_call_terminate(ptr %i.go) #33
  unreachable

bb.ac:                                            ; preds = %bb.z
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.y
  %i.gp = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 336
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.gu, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !888
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gs = landingpad { ptr, i32 }
          catch ptr null
  %i.gt = extractvalue { ptr, i32 } %i.gs, 0
  call void @__clang_call_terminate(ptr %i.gt) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gu, %i.fl
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1782

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i
  %i.gv = phi ptr [ %i.ge, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.gp, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  %i.gw = load ptr, ptr %i.au, align 8, !tbaa !1780
  %i.gx = ptrtoint ptr %i.gw to i64
  %i.gy = sub i64 %i.gx, %i.fr
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.gy) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc82.i.i.i.i
  %i.gz = landingpad { ptr, i32 }
          catch ptr null
  %i.ha = extractvalue { ptr, i32 } %i.gz, 0
  %i.hb = call ptr @__cxa_begin_catch(ptr %i.ha) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.aa
  %i.hc = extractvalue { ptr, i32 } %i.gm, 0
  %i.hd = call ptr @__cxa_begin_catch(ptr %i.hc) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(164) dereferenceable(164) %i.gc) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  %i.he = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.ah

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gb, i64 noundef %i.ga) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.ai unwind label %bb.ag

bb.ah:                                            ; preds = %bb.ag
  %i.hf = landingpad { ptr, i32 }
          catch ptr null
  %i.hg = extractvalue { ptr, i32 } %i.hf, 0
  call void @__clang_call_terminate(ptr %i.hg) #33
  unreachable

bb.ai:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.af, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  store ptr %i.gb, ptr %4, align 8, !tbaa !1751
  store ptr %i.gv, ptr %i.at, align 8, !tbaa !1779
  %i.hh = getelementptr inbounds nuw [168 x i8], ptr %i.gb, i64 %i.fz
  store ptr %i.hh, ptr %i.au, align 8, !tbaa !1780
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.an, %.lr.ph104.i.i.i.i
  %indvars.iv127.i.i.i.i = phi i64 [ 0, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next128.i.i.i.i, %bb.an ] ; 3 uses
  %indvars.iv124.i.i.i.i = phi i32 [ %spec.store.select.i.i.i.i, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next125.i.i.i.i, %bb.an ] ; 2 uses
  %indvars.iv121.i.i.i.i = phi i32 [ %i.cg, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next122.i.i.i.i, %bb.an ] ; 3 uses
  %smax123.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv121.i.i.i.i, i32 0)
  %i.hi = add i32 %smax123.i.i.i.i, %indvars.iv124.i.i.i.i ; 2 uses
  %i.hj = icmp ne i32 %i.hi, 0
  %umin126.i.i.i.i = zext i1 %i.hj to i32         ; 2 uses
  %i.hk = sub i32 %i.hi, %umin126.i.i.i.i
  %i.hl = udiv i32 %i.hk, 6
  %i.hm = add nuw nsw i32 %i.hl, %umin126.i.i.i.i
  %i.hn = mul i32 %i.hm, 6
end_hunk_15
begin_hunk_16_@_ZN11OpenImageIO4v3_112ImageBufAlgo23LinearXTransDemosaicingIfN9Imath_3_14halfEE12calc_BGG_grbILb0EEEbRNS1_15DemosaicingBaseIfS4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE7ContextE:bb.a
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
  %i.f = load i32, ptr %i.e, align 8, !tbaa !868  ; 3 uses
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
  %i.bc = add i32 %i.f, 3
  br label %bb.d

._crit_edge56.i.i.i:                              ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !888
  %.not.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfNS1_3ROIEiEUlSG_E_JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge56.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfNS1_3ROIEiEUlSG_E_JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #33
  unreachable

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %.lr.ph55.i.i.i
  %indvars.iv.i.i.i = phi i32 [ %i.bc, %.lr.ph55.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 2 uses
  %.01753.i.i.i = phi i32 [ %i.f, %.lr.ph55.i.i.i ], [ %i.kv, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.bh = load i32, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !1824, !nonnull !172, !align !336 ; 3 uses
  %i.bj = load i32, ptr %i.k, align 8, !tbaa !1789
  %i.bk = load i32, ptr %i.l, align 4, !tbaa !1791
  %i.bl = load ptr, ptr %i.m, align 8, !tbaa !1825, !nonnull !172, !align !315 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %4, i8 0, i64 24, i1 false)
  %i.bm = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi)
          to label %.preheader91.i.i.i.i unwind label %bb.e ; 4 uses

.preheader91.i.i.i.i:                             ; preds = %bb.d
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !891 ; 3 uses
  store i32 %i.bn, ptr %i.n, align 4, !tbaa !1826
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !897
  %i.bq = add nsw i32 %i.bp, %i.bn
  store i32 %i.bq, ptr %i.o, align 8, !tbaa !1831
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !899 ; 2 uses
  store i32 %i.bs, ptr %i.p, align 4, !tbaa !1832
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !901
  %i.bv = add nsw i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.q, align 8, !tbaa !1833
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.r, align 8, !tbaa !3
  store i32 4, ptr %i.s, align 8, !tbaa !3
  %i.bw = sub i32 %i.bn, %i.bh                    ; 3 uses
  %i.bx = call i32 @llvm.smax.i32(i32 %i.bw, i32 -2) ; 3 uses
  %spec.store.select.i.i.i.i = add i32 %i.bx, 2   ; 4 uses
  %i.by = add i32 %i.bx, %i.bh                    ; 3 uses
  %i.bz = add nsw i32 %i.by, %i.bj
  %i.ca = srem i32 %i.bz, 6                       ; 3 uses
  %i.cb = icmp slt i32 %i.bw, 3
  %i.cc = icmp sgt i32 %i.bw, -2
  %i.cd = add i32 %.01753.i.i.i, -2
  %i.ce = sub i32 2, %.01753.i.i.i
  %i.cf = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cg = sub i32 -2, %i.bx
  %smax130.i.i.i.i = call i32 @llvm.smax.i32(i32 %spec.store.select.i.i.i.i, i32 1)
  %wide.trip.count.i.i.i.i = zext nneg i32 %smax130.i.i.i.i to i64
  %smax68.i.i.i = call i64 @llvm.smax.i64(i64 %i.cf, i64 4)
  br label %.preheader90.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.preheader90.i.i.i.i:                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, %.preheader91.i.i.i.i
  %indvars.iv66.i.i.i = phi i32 [ %indvars.iv.next67.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %indvars.iv.i.i.i, %.preheader91.i.i.i.i ] ; 2 uses
  %indvars.iv116.i.i.i.i = phi i32 [ %indvars.iv.next117.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.ce, %.preheader91.i.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i.i = phi i32 [ %indvars.iv.next.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.cd, %.preheader91.i.i.i.i ] ; 3 uses
  %.074105.i.i.i.i = phi i32 [ %i.ja, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ 0, %.preheader91.i.i.i.i ]
  %i.ci = load i32, ptr %i.p, align 4, !tbaa !1832
  %smax.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.ci, i32 %indvars.iv.i.i.i.i)
  %i.cj = add i32 %smax.i.i.i.i, %indvars.iv116.i.i.i.i ; 2 uses
  %i.ck = icmp ne i32 %i.cj, 0
  %umin.i.i.i.i = zext i1 %i.ck to i32            ; 2 uses
  %i.cl = load i32, ptr %i.q, align 8, !tbaa !1833
  %i.cm = sub i32 %i.cj, %umin.i.i.i.i
  %i.cn = udiv i32 %i.cm, 6
  %i.co = add nuw nsw i32 %i.cn, %umin.i.i.i.i
  %i.cp = mul i32 %i.co, 6                        ; 2 uses
  %i.cq = add i32 %i.cp, %indvars.iv.i.i.i.i      ; 2 uses
  %i.cr = add i32 %i.cp, %indvars.iv66.i.i.i
  %i.cs = add i32 %i.cl, -1
  %smin.i.i.i = call i32 @llvm.smin.i32(i32 %i.cq, i32 %i.cs)
  %i.ct = sub i32 %i.cr, %smin.i.i.i
  %.fr.i.i.i = freeze i32 %i.ct                   ; 2 uses
  %i.cu = urem i32 %.fr.i.i.i, 6
  %.neg.i.i.i = sub i32 %i.cu, %.fr.i.i.i
  %i.cv = add i32 %.neg.i.i.i, %i.cq              ; 3 uses
  %i.cw = add nsw i32 %i.cv, %i.bk
  %i.cx = srem i32 %i.cw, 6                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_iiiNS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i32 noundef %i.by, i32 noundef %i.cv, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.f

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %.preheader90.i.i.i.i
  store i32 %i.ca, ptr %i.t, align 8, !tbaa !1817
  store i32 %i.cx, ptr %i.u, align 4, !tbaa !1816
  store ptr %i.bl, ptr %i.v, align 8, !tbaa !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.w, i8 0, i64 20, i1 false)
  br i1 %i.cb, label %.lr.ph.i.i.i.i, label %.lr.ph104.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.x
  br i1 %i.cc, label %.lr.ph104.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph104.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [48 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL18xtrans_channel_mapE, i64 %i.cy
  br label %bb.ao

bb.f:                                             ; preds = %.preheader90.i.i.i.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.x
  %i.db = phi i32 [ %spec.select.i.i.i.i.i, %bb.x ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv118.i.i.i.i = phi i64 [ %indvars.iv.next119.i.i.i.i, %bb.x ], [ %i.cf, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
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
  %.pre132.i.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !856 ; 2 uses
  br i1 %.not.i84.i.i.i.i, label %.invoke.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fn = load i32, ptr %i.ad, align 4, !tbaa !860 ; 2 uses
  store i32 %i.fn, ptr %i.ab, align 8, !tbaa !849
  %i.fo = add nsw i32 %.pre132.i.i.i.i, 1         ; 3 uses
  store i32 %i.fo, ptr %i.ae, align 4, !tbaa !856
  %i.fp = load i32, ptr %i.af, align 8, !tbaa !861
  %.not1.i.i.i.i.i = icmp slt i32 %i.fo, %i.fp
  br i1 %.not1.i.i.i.i.i, label %.invoke.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 0, ptr %i.ag, align 8, !tbaa !862
  br label %bb.x

.invoke.i.i.i.i:                                  ; preds = %bb.v, %bb.u, %._crit_edge.i.i.i.i.i, %bb.l
  %i.fq = phi i32 [ %i.eh, %bb.l ], [ %i.fj, %bb.u ], [ %i.fj, %bb.v ], [ %i.ej, %._crit_edge.i.i.i.i.i ]
  %i.fr = phi i32 [ %i.ei, %bb.l ], [ %i.fl, %bb.u ], [ %i.fn, %bb.v ], [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  %i.fs = phi i32 [ 0, %bb.l ], [ %.pre132.i.i.i.i, %bb.u ], [ %i.fo, %bb.v ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(164) %2, i32 noundef %i.fq, i32 noundef %i.fr, i32 noundef %i.fs)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %.invoke.i.i.i.i, %bb.w, %.noexc87.i.i.i.i, %bb.s, %bb.r, %bb.q, %bb.p
  %i.ft = bitcast i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i to float
  %i.fu = load i32, ptr %i.t, align 8, !tbaa !1817
  %i.fv = add nsw i32 %i.fu, 1                    ; 2 uses
  %i.fw = icmp eq i32 %i.fv, 6
  %spec.select.i.i.i.i.i = select i1 %i.fw, i32 0, i32 %i.fv ; 2 uses
  store i32 %spec.select.i.i.i.i.i, ptr %i.t, align 8, !tbaa !1817
  %i.fx = fmul float %i.dk, %i.ft
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv118.i.i.i.i
  store float %i.fx, ptr %i.fy, align 4, !tbaa !53
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv118.i.i.i.i, %smax68.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1837

bb.y:                                             ; preds = %.invoke.i.i.i.i, %bb.t, %bb.q
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.as, %.preheader.i.i.i.i
  %i.ga = load ptr, ptr %i.at, align 8, !tbaa !1838 ; 7 uses
  %i.gb = load ptr, ptr %i.au, align 8, !tbaa !1839
  %.not.i.i.i.i.i = icmp eq ptr %i.ga, %i.gb
  br i1 %.not.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.ga, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %.noexc80.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc80.i.i.i.i:                                 ; preds = %bb.z
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gc, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  %i.gd = load ptr, ptr %i.at, align 8, !tbaa !1838
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 168
  store ptr %i.ge, ptr %i.at, align 8, !tbaa !1838
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !1810 ; 6 uses
  %i.gf = ptrtoint ptr %i.ga to i64
  %i.gg = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.gh = sub i64 %i.gf, %i.gg                    ; 3 uses
  %i.gi = icmp eq i64 %i.gh, 9223372036854775800
  br i1 %i.gi, label %bb.ab, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc81.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.ab
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.aa
  %i.gj = sdiv exact i64 %i.gh, 168               ; 3 uses
  %i.gk = icmp eq ptr %i.ga, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.gk, i64 1, i64 %i.gj
  %i.gl = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.gj ; 2 uses
  %i.gm = icmp ult i64 %i.gl, %i.gj
  %i.gn = call i64 @llvm.umin.i64(i64 %i.gl, i64 54901024028897475)
  %i.go = select i1 %i.gm, i64 54901024028897475, i64 %i.gn ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.go, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.gp = mul nuw nsw i64 %i.go, 168              ; 2 uses
  %i.gq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gp) #32
          to label %.noexc82.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc82.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gh ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.gr, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.ac unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i.i

bb.ac:                                            ; preds = %.noexc82.i.i.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gs, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  br i1 %i.gk, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.ac
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 168
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ac, %bb.ad
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gx, %bb.ad ], [ %i.gq, %bb.ac ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gw, %bb.ad ], [ %.val.i.i.i.i.i.i, %bb.ac ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(164) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gv = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gu, ptr noundef nonnull align 8 dereferenceable(36) %i.gv, i64 36, i1 false)
  %i.gw = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 168
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gw, %i.ga
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1840

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gy = landingpad { ptr, i32 }
          catch ptr null
  %i.gz = extractvalue { ptr, i32 } %i.gy, 0
  %i.ha = call ptr @__cxa_begin_catch(ptr %i.gz) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SC_(ptr noundef nonnull %i.gq, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ah unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hb = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hc = landingpad { ptr, i32 }
          catch ptr null
  %i.hd = extractvalue { ptr, i32 } %i.hc, 0
  call void @__clang_call_terminate(ptr %i.hd) #33
  unreachable

bb.ah:                                            ; preds = %bb.ae
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.ad
  %i.he = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 336
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.hj, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !888
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hh = landingpad { ptr, i32 }
          catch ptr null
  %i.hi = extractvalue { ptr, i32 } %i.hh, 0
  call void @__clang_call_terminate(ptr %i.hi) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ai, %.lr.ph.i.i.i.i.i.i.i.i
  %i.hj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.hj, %i.ga
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1841

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i
  %i.hk = phi ptr [ %i.gt, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.he, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i
  %i.hl = load ptr, ptr %i.au, align 8, !tbaa !1839
  %i.hm = ptrtoint ptr %i.hl to i64
  %i.hn = sub i64 %i.hm, %i.gg
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.hn) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc82.i.i.i.i
  %i.ho = landingpad { ptr, i32 }
          catch ptr null
  %i.hp = extractvalue { ptr, i32 } %i.ho, 0
  %i.hq = call ptr @__cxa_begin_catch(ptr %i.hp) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.af
  %i.hr = extractvalue { ptr, i32 } %i.hb, 0
  %i.hs = call ptr @__cxa_begin_catch(ptr %i.hr) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(164) dereferenceable(164) %i.gr) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i

bb.al:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i
  %i.ht = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.am

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gq, i64 noundef %i.gp) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.an unwind label %bb.al

bb.am:                                            ; preds = %bb.al
  %i.hu = landingpad { ptr, i32 }
          catch ptr null
  %i.hv = extractvalue { ptr, i32 } %i.hu, 0
  call void @__clang_call_terminate(ptr %i.hv) #33
  unreachable

bb.an:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.ak, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i
  store ptr %i.gq, ptr %4, align 8, !tbaa !1810
  store ptr %i.hk, ptr %i.at, align 8, !tbaa !1838
  %i.hw = getelementptr inbounds nuw [168 x i8], ptr %i.gq, i64 %i.go
  store ptr %i.hw, ptr %i.au, align 8, !tbaa !1839
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIfN9Imath_3_14halfELi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i

bb.ao:                                            ; preds = %bb.as, %.lr.ph104.i.i.i.i
  %indvars.iv127.i.i.i.i = phi i64 [ 0, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next128.i.i.i.i, %bb.as ] ; 3 uses
  %indvars.iv124.i.i.i.i = phi i32 [ %spec.store.select.i.i.i.i, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next125.i.i.i.i, %bb.as ] ; 2 uses
  %indvars.iv121.i.i.i.i = phi i32 [ %i.cg, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next122.i.i.i.i, %bb.as ] ; 3 uses
  %smax123.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv121.i.i.i.i, i32 0)
  %i.hx = add i32 %smax123.i.i.i.i, %indvars.iv124.i.i.i.i ; 2 uses
  %i.hy = icmp ne i32 %i.hx, 0
  %umin126.i.i.i.i = zext i1 %i.hy to i32         ; 2 uses
  %i.hz = sub i32 %i.hx, %umin126.i.i.i.i
  %i.ia = udiv i32 %i.hz, 6
  %i.ib = add nuw nsw i32 %i.ia, %umin126.i.i.i.i
  %i.ic = mul i32 %i.ib, 6
end_hunk_16
begin_hunk_17_@_ZN11OpenImageIO4v3_112ImageBufAlgo23LinearXTransDemosaicingIftE12calc_BGG_grbILb0EEEbRNS1_15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE7ContextE:bb.a
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
  %i.f = load i32, ptr %i.e, align 8, !tbaa !868  ; 3 uses
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
  %i.bc = add i32 %i.f, 3
  br label %bb.d

._crit_edge55.i.i.i:                              ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !888
  %.not.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS7_RA4_KfNS1_3ROIEiEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge55.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS7_RA4_KfNS1_3ROIEiEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #33
  unreachable

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %.lr.ph54.i.i.i
  %indvars.iv.i.i.i = phi i32 [ %i.bc, %.lr.ph54.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 2 uses
  %.01752.i.i.i = phi i32 [ %i.f, %.lr.ph54.i.i.i ], [ %i.kg, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.bh = load i32, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !1883, !nonnull !172, !align !336 ; 3 uses
  %i.bj = load i32, ptr %i.k, align 8, !tbaa !1848
  %i.bk = load i32, ptr %i.l, align 4, !tbaa !1850
  %i.bl = load ptr, ptr %i.m, align 8, !tbaa !1884, !nonnull !172, !align !315 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %4, i8 0, i64 24, i1 false)
  %i.bm = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi)
          to label %.preheader91.i.i.i.i unwind label %bb.e ; 4 uses

.preheader91.i.i.i.i:                             ; preds = %bb.d
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !891 ; 3 uses
  store i32 %i.bn, ptr %i.n, align 4, !tbaa !1885
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !897
  %i.bq = add nsw i32 %i.bp, %i.bn
  store i32 %i.bq, ptr %i.o, align 8, !tbaa !1890
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !899 ; 2 uses
  store i32 %i.bs, ptr %i.p, align 4, !tbaa !1891
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !901
  %i.bv = add nsw i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.q, align 8, !tbaa !1892
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.r, align 8, !tbaa !3
  store i32 4, ptr %i.s, align 8, !tbaa !3
  %i.bw = sub i32 %i.bn, %i.bh                    ; 3 uses
  %i.bx = call i32 @llvm.smax.i32(i32 %i.bw, i32 -2) ; 3 uses
  %spec.store.select.i.i.i.i = add i32 %i.bx, 2   ; 4 uses
  %i.by = add i32 %i.bx, %i.bh                    ; 3 uses
  %i.bz = add nsw i32 %i.by, %i.bj
  %i.ca = srem i32 %i.bz, 6                       ; 3 uses
  %i.cb = icmp slt i32 %i.bw, 3
  %i.cc = icmp sgt i32 %i.bw, -2
  %i.cd = add i32 %.01752.i.i.i, -2
  %i.ce = sub i32 2, %.01752.i.i.i
  %i.cf = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cg = sub i32 -2, %i.bx
  %smax130.i.i.i.i = call i32 @llvm.smax.i32(i32 %spec.store.select.i.i.i.i, i32 1)
  %wide.trip.count.i.i.i.i = zext nneg i32 %smax130.i.i.i.i to i64
  %smax67.i.i.i = call i64 @llvm.smax.i64(i64 %i.cf, i64 4)
  br label %.preheader90.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.preheader90.i.i.i.i:                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, %.preheader91.i.i.i.i
  %indvars.iv65.i.i.i = phi i32 [ %indvars.iv.next66.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %indvars.iv.i.i.i, %.preheader91.i.i.i.i ] ; 2 uses
  %indvars.iv116.i.i.i.i = phi i32 [ %indvars.iv.next117.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.ce, %.preheader91.i.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i.i = phi i32 [ %indvars.iv.next.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.cd, %.preheader91.i.i.i.i ] ; 3 uses
  %.074105.i.i.i.i = phi i32 [ %i.il, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ 0, %.preheader91.i.i.i.i ]
  %i.ci = load i32, ptr %i.p, align 4, !tbaa !1891
  %smax.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.ci, i32 %indvars.iv.i.i.i.i)
  %i.cj = add i32 %smax.i.i.i.i, %indvars.iv116.i.i.i.i ; 2 uses
  %i.ck = icmp ne i32 %i.cj, 0
  %umin.i.i.i.i = zext i1 %i.ck to i32            ; 2 uses
  %i.cl = load i32, ptr %i.q, align 8, !tbaa !1892
  %i.cm = sub i32 %i.cj, %umin.i.i.i.i
  %i.cn = udiv i32 %i.cm, 6
  %i.co = add nuw nsw i32 %i.cn, %umin.i.i.i.i
  %i.cp = mul i32 %i.co, 6                        ; 2 uses
  %i.cq = add i32 %i.cp, %indvars.iv.i.i.i.i      ; 2 uses
  %i.cr = add i32 %i.cp, %indvars.iv65.i.i.i
  %i.cs = add i32 %i.cl, -1
  %smin.i.i.i = call i32 @llvm.smin.i32(i32 %i.cq, i32 %i.cs)
  %i.ct = sub i32 %i.cr, %smin.i.i.i
  %.fr.i.i.i = freeze i32 %i.ct                   ; 2 uses
  %i.cu = urem i32 %.fr.i.i.i, 6
  %.neg.i.i.i = sub i32 %i.cu, %.fr.i.i.i
  %i.cv = add i32 %.neg.i.i.i, %i.cq              ; 3 uses
  %i.cw = add nsw i32 %i.cv, %i.bk
  %i.cx = srem i32 %i.cw, 6                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_iiiNS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i32 noundef %i.by, i32 noundef %i.cv, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.f

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %.preheader90.i.i.i.i
  store i32 %i.ca, ptr %i.t, align 8, !tbaa !1876
  store i32 %i.cx, ptr %i.u, align 4, !tbaa !1875
  store ptr %i.bl, ptr %i.v, align 8, !tbaa !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.w, i8 0, i64 20, i1 false)
  br i1 %i.cb, label %.lr.ph.i.i.i.i, label %.lr.ph104.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.s
  br i1 %i.cc, label %.lr.ph104.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph104.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [48 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL18xtrans_channel_mapE, i64 %i.cy
  br label %bb.aj

bb.f:                                             ; preds = %.preheader90.i.i.i.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.s
  %i.db = phi i32 [ %spec.select.i.i.i.i.i, %bb.s ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv118.i.i.i.i = phi i64 [ %indvars.iv.next119.i.i.i.i, %bb.s ], [ %i.cf, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
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
  %.pre132.i.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !856 ; 2 uses
  br i1 %.not.i84.i.i.i.i, label %.invoke.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ex = load i32, ptr %i.ad, align 4, !tbaa !860 ; 2 uses
  store i32 %i.ex, ptr %i.ab, align 8, !tbaa !849
  %i.ey = add nsw i32 %.pre132.i.i.i.i, 1         ; 3 uses
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
  %i.fc = phi i32 [ 0, %bb.g ], [ %.pre132.i.i.i.i, %bb.p ], [ %i.ey, %bb.q ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i.i ]
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
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv118.i.i.i.i, %smax67.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1896

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.an, %.preheader.i.i.i.i
  %i.fl = load ptr, ptr %i.at, align 8, !tbaa !1897 ; 7 uses
  %i.fm = load ptr, ptr %i.au, align 8, !tbaa !1898
  %.not.i.i.i.i.i = icmp eq ptr %i.fl, %i.fm
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.fl, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %.noexc80.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc80.i.i.i.i:                                 ; preds = %bb.u
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.fn, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  %i.fo = load ptr, ptr %i.at, align 8, !tbaa !1897
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 168
  store ptr %i.fp, ptr %i.at, align 8, !tbaa !1897
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !1869 ; 6 uses
  %i.fq = ptrtoint ptr %i.fl to i64
  %i.fr = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.fs = sub i64 %i.fq, %i.fr                    ; 3 uses
  %i.ft = icmp eq i64 %i.fs, 9223372036854775800
  br i1 %i.ft, label %bb.w, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc81.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.fu = sdiv exact i64 %i.fs, 168               ; 3 uses
  %i.fv = icmp eq ptr %i.fl, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.fv, i64 1, i64 %i.fu
  %i.fw = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.fu ; 2 uses
  %i.fx = icmp ult i64 %i.fw, %i.fu
  %i.fy = call i64 @llvm.umin.i64(i64 %i.fw, i64 54901024028897475)
  %i.fz = select i1 %i.fx, i64 54901024028897475, i64 %i.fy ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.fz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.ga = mul nuw nsw i64 %i.fz, 168              ; 2 uses
  %i.gb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ga) #32
          to label %.noexc82.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc82.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.fs ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.gc, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.x unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i

bb.x:                                             ; preds = %.noexc82.i.i.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gd, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  br i1 %i.fv, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.x
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 168
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.x, %bb.y
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gi, %bb.y ], [ %i.gb, %bb.x ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gh, %bb.y ], [ %.val.i.i.i.i.i.i, %bb.x ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(164) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gg = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gf, ptr noundef nonnull align 8 dereferenceable(36) %i.gg, i64 36, i1 false)
  %i.gh = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 168
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gh, %i.fl
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1899

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  %i.gk = extractvalue { ptr, i32 } %i.gj, 0
  %i.gl = call ptr @__cxa_begin_catch(ptr %i.gk) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_(ptr noundef nonnull %i.gb, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gm = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gn = landingpad { ptr, i32 }
          catch ptr null
  %i.go = extractvalue { ptr, i32 } %i.gn, 0
  call void @__clang_call_terminate(ptr %i.go) #33
  unreachable

bb.ac:                                            ; preds = %bb.z
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.y
  %i.gp = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 336
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.gu, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !888
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gs = landingpad { ptr, i32 }
          catch ptr null
  %i.gt = extractvalue { ptr, i32 } %i.gs, 0
  call void @__clang_call_terminate(ptr %i.gt) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gu, %i.fl
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1900

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i
  %i.gv = phi ptr [ %i.ge, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.gp, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  %i.gw = load ptr, ptr %i.au, align 8, !tbaa !1898
  %i.gx = ptrtoint ptr %i.gw to i64
  %i.gy = sub i64 %i.gx, %i.fr
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.gy) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc82.i.i.i.i
  %i.gz = landingpad { ptr, i32 }
          catch ptr null
  %i.ha = extractvalue { ptr, i32 } %i.gz, 0
  %i.hb = call ptr @__cxa_begin_catch(ptr %i.ha) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.aa
  %i.hc = extractvalue { ptr, i32 } %i.gm, 0
  %i.hd = call ptr @__cxa_begin_catch(ptr %i.hc) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(164) dereferenceable(164) %i.gc) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  %i.he = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.ah

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gb, i64 noundef %i.ga) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.ai unwind label %bb.ag

bb.ah:                                            ; preds = %bb.ag
  %i.hf = landingpad { ptr, i32 }
          catch ptr null
  %i.hg = extractvalue { ptr, i32 } %i.hf, 0
  call void @__clang_call_terminate(ptr %i.hg) #33
  unreachable

bb.ai:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.af, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  store ptr %i.gb, ptr %4, align 8, !tbaa !1869
  store ptr %i.gv, ptr %i.at, align 8, !tbaa !1897
  %i.hh = getelementptr inbounds nuw [168 x i8], ptr %i.gb, i64 %i.fz
  store ptr %i.hh, ptr %i.au, align 8, !tbaa !1898
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIftLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.an, %.lr.ph104.i.i.i.i
  %indvars.iv127.i.i.i.i = phi i64 [ 0, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next128.i.i.i.i, %bb.an ] ; 3 uses
  %indvars.iv124.i.i.i.i = phi i32 [ %spec.store.select.i.i.i.i, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next125.i.i.i.i, %bb.an ] ; 2 uses
  %indvars.iv121.i.i.i.i = phi i32 [ %i.cg, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next122.i.i.i.i, %bb.an ] ; 3 uses
  %smax123.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv121.i.i.i.i, i32 0)
  %i.hi = add i32 %smax123.i.i.i.i, %indvars.iv124.i.i.i.i ; 2 uses
  %i.hj = icmp ne i32 %i.hi, 0
  %umin126.i.i.i.i = zext i1 %i.hj to i32         ; 2 uses
  %i.hk = sub i32 %i.hi, %umin126.i.i.i.i
  %i.hl = udiv i32 %i.hk, 6
  %i.hm = add nuw nsw i32 %i.hl, %umin126.i.i.i.i
  %i.hn = mul i32 %i.hm, 6
end_hunk_17
begin_hunk_18_@_ZN11OpenImageIO4v3_112ImageBufAlgo23LinearXTransDemosaicingIhhE12calc_BGG_grbILb0EEEbRNS1_15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE7ContextE:bb.a
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
  %i.f = load i32, ptr %i.e, align 8, !tbaa !868  ; 3 uses
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
  %i.bc = add i32 %i.f, 3
  br label %bb.d

._crit_edge55.i.i.i:                              ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !888
  %.not.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS7_RA4_KfNS1_3ROIEiEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge55.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS7_RA4_KfNS1_3ROIEiEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #33
  unreachable

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %.lr.ph54.i.i.i
  %indvars.iv.i.i.i = phi i32 [ %i.bc, %.lr.ph54.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 2 uses
  %.01752.i.i.i = phi i32 [ %i.f, %.lr.ph54.i.i.i ], [ %i.kg, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.bh = load i32, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !1942, !nonnull !172, !align !336 ; 3 uses
  %i.bj = load i32, ptr %i.k, align 8, !tbaa !1907
  %i.bk = load i32, ptr %i.l, align 4, !tbaa !1909
  %i.bl = load ptr, ptr %i.m, align 8, !tbaa !1943, !nonnull !172, !align !315 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %4, i8 0, i64 24, i1 false)
  %i.bm = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi)
          to label %.preheader91.i.i.i.i unwind label %bb.e ; 4 uses

.preheader91.i.i.i.i:                             ; preds = %bb.d
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !891 ; 3 uses
  store i32 %i.bn, ptr %i.n, align 4, !tbaa !1944
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !897
  %i.bq = add nsw i32 %i.bp, %i.bn
  store i32 %i.bq, ptr %i.o, align 8, !tbaa !1949
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !899 ; 2 uses
  store i32 %i.bs, ptr %i.p, align 4, !tbaa !1950
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !901
  %i.bv = add nsw i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.q, align 8, !tbaa !1951
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.r, align 8, !tbaa !3
  store i32 4, ptr %i.s, align 8, !tbaa !3
  %i.bw = sub i32 %i.bn, %i.bh                    ; 3 uses
  %i.bx = call i32 @llvm.smax.i32(i32 %i.bw, i32 -2) ; 3 uses
  %spec.store.select.i.i.i.i = add i32 %i.bx, 2   ; 4 uses
  %i.by = add i32 %i.bx, %i.bh                    ; 3 uses
  %i.bz = add nsw i32 %i.by, %i.bj
  %i.ca = srem i32 %i.bz, 6                       ; 3 uses
  %i.cb = icmp slt i32 %i.bw, 3
  %i.cc = icmp sgt i32 %i.bw, -2
  %i.cd = add i32 %.01752.i.i.i, -2
  %i.ce = sub i32 2, %.01752.i.i.i
  %i.cf = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cg = sub i32 -2, %i.bx
  %smax130.i.i.i.i = call i32 @llvm.smax.i32(i32 %spec.store.select.i.i.i.i, i32 1)
  %wide.trip.count.i.i.i.i = zext nneg i32 %smax130.i.i.i.i to i64
  %smax67.i.i.i = call i64 @llvm.smax.i64(i64 %i.cf, i64 4)
  br label %.preheader90.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.preheader90.i.i.i.i:                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, %.preheader91.i.i.i.i
  %indvars.iv65.i.i.i = phi i32 [ %indvars.iv.next66.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %indvars.iv.i.i.i, %.preheader91.i.i.i.i ] ; 2 uses
  %indvars.iv116.i.i.i.i = phi i32 [ %indvars.iv.next117.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.ce, %.preheader91.i.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i.i = phi i32 [ %indvars.iv.next.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.cd, %.preheader91.i.i.i.i ] ; 3 uses
  %.074105.i.i.i.i = phi i32 [ %i.il, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ 0, %.preheader91.i.i.i.i ]
  %i.ci = load i32, ptr %i.p, align 4, !tbaa !1950
  %smax.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.ci, i32 %indvars.iv.i.i.i.i)
  %i.cj = add i32 %smax.i.i.i.i, %indvars.iv116.i.i.i.i ; 2 uses
  %i.ck = icmp ne i32 %i.cj, 0
  %umin.i.i.i.i = zext i1 %i.ck to i32            ; 2 uses
  %i.cl = load i32, ptr %i.q, align 8, !tbaa !1951
  %i.cm = sub i32 %i.cj, %umin.i.i.i.i
  %i.cn = udiv i32 %i.cm, 6
  %i.co = add nuw nsw i32 %i.cn, %umin.i.i.i.i
  %i.cp = mul i32 %i.co, 6                        ; 2 uses
  %i.cq = add i32 %i.cp, %indvars.iv.i.i.i.i      ; 2 uses
  %i.cr = add i32 %i.cp, %indvars.iv65.i.i.i
  %i.cs = add i32 %i.cl, -1
  %smin.i.i.i = call i32 @llvm.smin.i32(i32 %i.cq, i32 %i.cs)
  %i.ct = sub i32 %i.cr, %smin.i.i.i
  %.fr.i.i.i = freeze i32 %i.ct                   ; 2 uses
  %i.cu = urem i32 %.fr.i.i.i, 6
  %.neg.i.i.i = sub i32 %i.cu, %.fr.i.i.i
  %i.cv = add i32 %.neg.i.i.i, %i.cq              ; 3 uses
  %i.cw = add nsw i32 %i.cv, %i.bk
  %i.cx = srem i32 %i.cw, 6                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_iiiNS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i32 noundef %i.by, i32 noundef %i.cv, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.f

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %.preheader90.i.i.i.i
  store i32 %i.ca, ptr %i.t, align 8, !tbaa !1935
  store i32 %i.cx, ptr %i.u, align 4, !tbaa !1934
  store ptr %i.bl, ptr %i.v, align 8, !tbaa !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.w, i8 0, i64 20, i1 false)
  br i1 %i.cb, label %.lr.ph.i.i.i.i, label %.lr.ph104.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.s
  br i1 %i.cc, label %.lr.ph104.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph104.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [48 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL18xtrans_channel_mapE, i64 %i.cy
  br label %bb.aj

bb.f:                                             ; preds = %.preheader90.i.i.i.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.s
  %i.db = phi i32 [ %spec.select.i.i.i.i.i, %bb.s ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv118.i.i.i.i = phi i64 [ %indvars.iv.next119.i.i.i.i, %bb.s ], [ %i.cf, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
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
  %.pre132.i.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !856 ; 2 uses
  br i1 %.not.i84.i.i.i.i, label %.invoke.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ex = load i32, ptr %i.ad, align 4, !tbaa !860 ; 2 uses
  store i32 %i.ex, ptr %i.ab, align 8, !tbaa !849
  %i.ey = add nsw i32 %.pre132.i.i.i.i, 1         ; 3 uses
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
  %i.fc = phi i32 [ 0, %bb.g ], [ %.pre132.i.i.i.i, %bb.p ], [ %i.ey, %bb.q ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i.i ]
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
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv118.i.i.i.i, %smax67.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1955

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.an, %.preheader.i.i.i.i
  %i.fl = load ptr, ptr %i.at, align 8, !tbaa !1956 ; 7 uses
  %i.fm = load ptr, ptr %i.au, align 8, !tbaa !1957
  %.not.i.i.i.i.i = icmp eq ptr %i.fl, %i.fm
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.fl, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %.noexc80.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc80.i.i.i.i:                                 ; preds = %bb.u
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.fn, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  %i.fo = load ptr, ptr %i.at, align 8, !tbaa !1956
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 168
  store ptr %i.fp, ptr %i.at, align 8, !tbaa !1956
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !1928 ; 6 uses
  %i.fq = ptrtoint ptr %i.fl to i64
  %i.fr = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.fs = sub i64 %i.fq, %i.fr                    ; 3 uses
  %i.ft = icmp eq i64 %i.fs, 9223372036854775800
  br i1 %i.ft, label %bb.w, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc81.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.fu = sdiv exact i64 %i.fs, 168               ; 3 uses
  %i.fv = icmp eq ptr %i.fl, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.fv, i64 1, i64 %i.fu
  %i.fw = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.fu ; 2 uses
  %i.fx = icmp ult i64 %i.fw, %i.fu
  %i.fy = call i64 @llvm.umin.i64(i64 %i.fw, i64 54901024028897475)
  %i.fz = select i1 %i.fx, i64 54901024028897475, i64 %i.fy ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.fz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.ga = mul nuw nsw i64 %i.fz, 168              ; 2 uses
  %i.gb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ga) #32
          to label %.noexc82.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc82.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.fs ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.gc, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.x unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i

bb.x:                                             ; preds = %.noexc82.i.i.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gd, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  br i1 %i.fv, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.x
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 168
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.x, %bb.y
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gi, %bb.y ], [ %i.gb, %bb.x ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gh, %bb.y ], [ %.val.i.i.i.i.i.i, %bb.x ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(164) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gg = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gf, ptr noundef nonnull align 8 dereferenceable(36) %i.gg, i64 36, i1 false)
  %i.gh = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 168
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gh, %i.fl
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1958

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  %i.gk = extractvalue { ptr, i32 } %i.gj, 0
  %i.gl = call ptr @__cxa_begin_catch(ptr %i.gk) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_(ptr noundef nonnull %i.gb, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gm = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gn = landingpad { ptr, i32 }
          catch ptr null
  %i.go = extractvalue { ptr, i32 } %i.gn, 0
  call void @__clang_call_terminate(ptr %i.go) #33
  unreachable

bb.ac:                                            ; preds = %bb.z
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.y
  %i.gp = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 336
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.gu, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !888
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gs = landingpad { ptr, i32 }
          catch ptr null
  %i.gt = extractvalue { ptr, i32 } %i.gs, 0
  call void @__clang_call_terminate(ptr %i.gt) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gu, %i.fl
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1959

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i
  %i.gv = phi ptr [ %i.ge, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.gp, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  %i.gw = load ptr, ptr %i.au, align 8, !tbaa !1957
  %i.gx = ptrtoint ptr %i.gw to i64
  %i.gy = sub i64 %i.gx, %i.fr
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.gy) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc82.i.i.i.i
  %i.gz = landingpad { ptr, i32 }
          catch ptr null
  %i.ha = extractvalue { ptr, i32 } %i.gz, 0
  %i.hb = call ptr @__cxa_begin_catch(ptr %i.ha) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.aa
  %i.hc = extractvalue { ptr, i32 } %i.gm, 0
  %i.hd = call ptr @__cxa_begin_catch(ptr %i.hc) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(164) dereferenceable(164) %i.gc) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  %i.he = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.ah

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gb, i64 noundef %i.ga) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.ai unwind label %bb.ag

bb.ah:                                            ; preds = %bb.ag
  %i.hf = landingpad { ptr, i32 }
          catch ptr null
  %i.hg = extractvalue { ptr, i32 } %i.hf, 0
  call void @__clang_call_terminate(ptr %i.hg) #33
  unreachable

bb.ai:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.af, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  store ptr %i.gb, ptr %4, align 8, !tbaa !1928
  store ptr %i.gv, ptr %i.at, align 8, !tbaa !1956
  %i.hh = getelementptr inbounds nuw [168 x i8], ptr %i.gb, i64 %i.fz
  store ptr %i.hh, ptr %i.au, align 8, !tbaa !1957
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIhhLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.an, %.lr.ph104.i.i.i.i
  %indvars.iv127.i.i.i.i = phi i64 [ 0, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next128.i.i.i.i, %bb.an ] ; 3 uses
  %indvars.iv124.i.i.i.i = phi i32 [ %spec.store.select.i.i.i.i, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next125.i.i.i.i, %bb.an ] ; 2 uses
  %indvars.iv121.i.i.i.i = phi i32 [ %i.cg, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next122.i.i.i.i, %bb.an ] ; 3 uses
  %smax123.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv121.i.i.i.i, i32 0)
  %i.hi = add i32 %smax123.i.i.i.i, %indvars.iv124.i.i.i.i ; 2 uses
  %i.hj = icmp ne i32 %i.hi, 0
  %umin126.i.i.i.i = zext i1 %i.hj to i32         ; 2 uses
  %i.hk = sub i32 %i.hi, %umin126.i.i.i.i
  %i.hl = udiv i32 %i.hk, 6
  %i.hm = add nuw nsw i32 %i.hl, %umin126.i.i.i.i
  %i.hn = mul i32 %i.hm, 6
end_hunk_18
begin_hunk_19_@_ZN11OpenImageIO4v3_112ImageBufAlgo23LinearXTransDemosaicingIN9Imath_3_14halfES4_E12calc_BGG_grbILb0EEEbRNS1_15DemosaicingBaseIS4_S4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE7ContextE:bb.a
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
  %i.f = load i32, ptr %i.e, align 8, !tbaa !868  ; 3 uses
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
  %i.bc = add i32 %i.f, 3
  br label %bb.d

._crit_edge56.i.i.i:                              ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !888
  %.not.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfNS1_3ROIEiEUlSG_E_JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge56.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS9_RA4_KfNS1_3ROIEiEUlSG_E_JSG_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #33
  unreachable

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %.lr.ph55.i.i.i
  %indvars.iv.i.i.i = phi i32 [ %i.bc, %.lr.ph55.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 2 uses
  %.01753.i.i.i = phi i32 [ %i.f, %.lr.ph55.i.i.i ], [ %i.kv, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.bh = load i32, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !2001, !nonnull !172, !align !336 ; 3 uses
  %i.bj = load i32, ptr %i.k, align 8, !tbaa !1966
  %i.bk = load i32, ptr %i.l, align 4, !tbaa !1968
  %i.bl = load ptr, ptr %i.m, align 8, !tbaa !2002, !nonnull !172, !align !315 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %4, i8 0, i64 24, i1 false)
  %i.bm = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi)
          to label %.preheader91.i.i.i.i unwind label %bb.e ; 4 uses

.preheader91.i.i.i.i:                             ; preds = %bb.d
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !891 ; 3 uses
  store i32 %i.bn, ptr %i.n, align 4, !tbaa !2003
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !897
  %i.bq = add nsw i32 %i.bp, %i.bn
  store i32 %i.bq, ptr %i.o, align 8, !tbaa !2008
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !899 ; 2 uses
  store i32 %i.bs, ptr %i.p, align 4, !tbaa !2009
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !901
  %i.bv = add nsw i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.q, align 8, !tbaa !2010
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.r, align 8, !tbaa !3
  store i32 4, ptr %i.s, align 8, !tbaa !3
  %i.bw = sub i32 %i.bn, %i.bh                    ; 3 uses
  %i.bx = call i32 @llvm.smax.i32(i32 %i.bw, i32 -2) ; 3 uses
  %spec.store.select.i.i.i.i = add i32 %i.bx, 2   ; 4 uses
  %i.by = add i32 %i.bx, %i.bh                    ; 3 uses
  %i.bz = add nsw i32 %i.by, %i.bj
  %i.ca = srem i32 %i.bz, 6                       ; 3 uses
  %i.cb = icmp slt i32 %i.bw, 3
  %i.cc = icmp sgt i32 %i.bw, -2
  %i.cd = add i32 %.01753.i.i.i, -2
  %i.ce = sub i32 2, %.01753.i.i.i
  %i.cf = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cg = sub i32 -2, %i.bx
  %smax130.i.i.i.i = call i32 @llvm.smax.i32(i32 %spec.store.select.i.i.i.i, i32 1)
  %wide.trip.count.i.i.i.i = zext nneg i32 %smax130.i.i.i.i to i64
  %smax68.i.i.i = call i64 @llvm.smax.i64(i64 %i.cf, i64 4)
  br label %.preheader90.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.preheader90.i.i.i.i:                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, %.preheader91.i.i.i.i
  %indvars.iv66.i.i.i = phi i32 [ %indvars.iv.next67.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %indvars.iv.i.i.i, %.preheader91.i.i.i.i ] ; 2 uses
  %indvars.iv116.i.i.i.i = phi i32 [ %indvars.iv.next117.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.ce, %.preheader91.i.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i.i = phi i32 [ %indvars.iv.next.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.cd, %.preheader91.i.i.i.i ] ; 3 uses
  %.074105.i.i.i.i = phi i32 [ %i.ja, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ 0, %.preheader91.i.i.i.i ]
  %i.ci = load i32, ptr %i.p, align 4, !tbaa !2009
  %smax.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.ci, i32 %indvars.iv.i.i.i.i)
  %i.cj = add i32 %smax.i.i.i.i, %indvars.iv116.i.i.i.i ; 2 uses
  %i.ck = icmp ne i32 %i.cj, 0
  %umin.i.i.i.i = zext i1 %i.ck to i32            ; 2 uses
  %i.cl = load i32, ptr %i.q, align 8, !tbaa !2010
  %i.cm = sub i32 %i.cj, %umin.i.i.i.i
  %i.cn = udiv i32 %i.cm, 6
  %i.co = add nuw nsw i32 %i.cn, %umin.i.i.i.i
  %i.cp = mul i32 %i.co, 6                        ; 2 uses
  %i.cq = add i32 %i.cp, %indvars.iv.i.i.i.i      ; 2 uses
  %i.cr = add i32 %i.cp, %indvars.iv66.i.i.i
  %i.cs = add i32 %i.cl, -1
  %smin.i.i.i = call i32 @llvm.smin.i32(i32 %i.cq, i32 %i.cs)
  %i.ct = sub i32 %i.cr, %smin.i.i.i
  %.fr.i.i.i = freeze i32 %i.ct                   ; 2 uses
  %i.cu = urem i32 %.fr.i.i.i, 6
  %.neg.i.i.i = sub i32 %i.cu, %.fr.i.i.i
  %i.cv = add i32 %.neg.i.i.i, %i.cq              ; 3 uses
  %i.cw = add nsw i32 %i.cv, %i.bk
  %i.cx = srem i32 %i.cw, 6                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_iiiNS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i32 noundef %i.by, i32 noundef %i.cv, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.f

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %.preheader90.i.i.i.i
  store i32 %i.ca, ptr %i.t, align 8, !tbaa !1994
  store i32 %i.cx, ptr %i.u, align 4, !tbaa !1993
  store ptr %i.bl, ptr %i.v, align 8, !tbaa !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.w, i8 0, i64 20, i1 false)
  br i1 %i.cb, label %.lr.ph.i.i.i.i, label %.lr.ph104.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.x
  br i1 %i.cc, label %.lr.ph104.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph104.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [48 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL18xtrans_channel_mapE, i64 %i.cy
  br label %bb.ao

bb.f:                                             ; preds = %.preheader90.i.i.i.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.x
  %i.db = phi i32 [ %spec.select.i.i.i.i.i, %bb.x ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv118.i.i.i.i = phi i64 [ %indvars.iv.next119.i.i.i.i, %bb.x ], [ %i.cf, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
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
  %.pre132.i.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !856 ; 2 uses
  br i1 %.not.i84.i.i.i.i, label %.invoke.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fn = load i32, ptr %i.ad, align 4, !tbaa !860 ; 2 uses
  store i32 %i.fn, ptr %i.ab, align 8, !tbaa !849
  %i.fo = add nsw i32 %.pre132.i.i.i.i, 1         ; 3 uses
  store i32 %i.fo, ptr %i.ae, align 4, !tbaa !856
  %i.fp = load i32, ptr %i.af, align 8, !tbaa !861
  %.not1.i.i.i.i.i = icmp slt i32 %i.fo, %i.fp
  br i1 %.not1.i.i.i.i.i, label %.invoke.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 0, ptr %i.ag, align 8, !tbaa !862
  br label %bb.x

.invoke.i.i.i.i:                                  ; preds = %bb.v, %bb.u, %._crit_edge.i.i.i.i.i, %bb.l
  %i.fq = phi i32 [ %i.eh, %bb.l ], [ %i.fj, %bb.u ], [ %i.fj, %bb.v ], [ %i.ej, %._crit_edge.i.i.i.i.i ]
  %i.fr = phi i32 [ %i.ei, %bb.l ], [ %i.fl, %bb.u ], [ %i.fn, %bb.v ], [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  %i.fs = phi i32 [ 0, %bb.l ], [ %.pre132.i.i.i.i, %bb.u ], [ %i.fo, %bb.v ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(164) %2, i32 noundef %i.fq, i32 noundef %i.fr, i32 noundef %i.fs)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %.invoke.i.i.i.i, %bb.w, %.noexc87.i.i.i.i, %bb.s, %bb.r, %bb.q, %bb.p
  %i.ft = bitcast i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i to float
  %i.fu = load i32, ptr %i.t, align 8, !tbaa !1994
  %i.fv = add nsw i32 %i.fu, 1                    ; 2 uses
  %i.fw = icmp eq i32 %i.fv, 6
  %spec.select.i.i.i.i.i = select i1 %i.fw, i32 0, i32 %i.fv ; 2 uses
  store i32 %spec.select.i.i.i.i.i, ptr %i.t, align 8, !tbaa !1994
  %i.fx = fmul float %i.dk, %i.ft
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv118.i.i.i.i
  store float %i.fx, ptr %i.fy, align 4, !tbaa !53
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv118.i.i.i.i, %smax68.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2014

bb.y:                                             ; preds = %.invoke.i.i.i.i, %bb.t, %bb.q
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.as, %.preheader.i.i.i.i
  %i.ga = load ptr, ptr %i.at, align 8, !tbaa !2015 ; 7 uses
  %i.gb = load ptr, ptr %i.au, align 8, !tbaa !2016
  %.not.i.i.i.i.i = icmp eq ptr %i.ga, %i.gb
  br i1 %.not.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.ga, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %.noexc80.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc80.i.i.i.i:                                 ; preds = %bb.z
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gc, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  %i.gd = load ptr, ptr %i.at, align 8, !tbaa !2015
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 168
  store ptr %i.ge, ptr %i.at, align 8, !tbaa !2015
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !1987 ; 6 uses
  %i.gf = ptrtoint ptr %i.ga to i64
  %i.gg = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.gh = sub i64 %i.gf, %i.gg                    ; 3 uses
  %i.gi = icmp eq i64 %i.gh, 9223372036854775800
  br i1 %i.gi, label %bb.ab, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc81.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.ab
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.aa
  %i.gj = sdiv exact i64 %i.gh, 168               ; 3 uses
  %i.gk = icmp eq ptr %i.ga, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.gk, i64 1, i64 %i.gj
  %i.gl = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.gj ; 2 uses
  %i.gm = icmp ult i64 %i.gl, %i.gj
  %i.gn = call i64 @llvm.umin.i64(i64 %i.gl, i64 54901024028897475)
  %i.go = select i1 %i.gm, i64 54901024028897475, i64 %i.gn ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.go, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.gp = mul nuw nsw i64 %i.go, 168              ; 2 uses
  %i.gq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gp) #32
          to label %.noexc82.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc82.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gh ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.gr, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.ac unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i.i

bb.ac:                                            ; preds = %.noexc82.i.i.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gs, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  br i1 %i.gk, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.ac
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 168
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ac, %bb.ad
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gx, %bb.ad ], [ %i.gq, %bb.ac ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gw, %bb.ad ], [ %.val.i.i.i.i.i.i, %bb.ac ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(164) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gv = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gu, ptr noundef nonnull align 8 dereferenceable(36) %i.gv, i64 36, i1 false)
  %i.gw = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 168
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gw, %i.ga
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2017

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gy = landingpad { ptr, i32 }
          catch ptr null
  %i.gz = extractvalue { ptr, i32 } %i.gy, 0
  %i.ha = call ptr @__cxa_begin_catch(ptr %i.gz) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SC_(ptr noundef nonnull %i.gq, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ah unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hb = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hc = landingpad { ptr, i32 }
          catch ptr null
  %i.hd = extractvalue { ptr, i32 } %i.hc, 0
  call void @__clang_call_terminate(ptr %i.hd) #33
  unreachable

bb.ah:                                            ; preds = %bb.ae
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.ad
  %i.he = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 336
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.hj, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !888
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hh = landingpad { ptr, i32 }
          catch ptr null
  %i.hi = extractvalue { ptr, i32 } %i.hh, 0
  call void @__clang_call_terminate(ptr %i.hi) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ai, %.lr.ph.i.i.i.i.i.i.i.i
  %i.hj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.hj, %i.ga
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2018

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i
  %i.hk = phi ptr [ %i.gt, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESB_SaISA_EET0_T_SE_SD_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.he, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i
  %i.hl = load ptr, ptr %i.au, align 8, !tbaa !2016
  %i.hm = ptrtoint ptr %i.hl to i64
  %i.hn = sub i64 %i.hm, %i.gg
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.hn) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc82.i.i.i.i
  %i.ho = landingpad { ptr, i32 }
          catch ptr null
  %i.hp = extractvalue { ptr, i32 } %i.ho, 0
  %i.hq = call ptr @__cxa_begin_catch(ptr %i.hp) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.af
  %i.hr = extractvalue { ptr, i32 } %i.hb, 0
  %i.hs = call ptr @__cxa_begin_catch(ptr %i.hr) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES4_Li6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(164) dereferenceable(164) %i.gr) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i

bb.al:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i
  %i.ht = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.am

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESA_EvT_SC_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gq, i64 noundef %i.gp) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.an unwind label %bb.al

bb.am:                                            ; preds = %bb.al
  %i.hu = landingpad { ptr, i32 }
          catch ptr null
  %i.hv = extractvalue { ptr, i32 } %i.hu, 0
  call void @__clang_call_terminate(ptr %i.hv) #33
  unreachable

bb.an:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE13_M_deallocateEPSA_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE17_M_realloc_insertIJRKSA_EEEvN9__gnu_cxx17__normal_iteratorIPSA_SC_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.ak, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SC_.exit.i.i.i.i.i.i
  store ptr %i.gq, ptr %4, align 8, !tbaa !1987
  store ptr %i.hk, ptr %i.at, align 8, !tbaa !2015
  %i.hw = getelementptr inbounds nuw [168 x i8], ptr %i.gq, i64 %i.go
  store ptr %i.hw, ptr %i.au, align 8, !tbaa !2016
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIN9Imath_3_14halfES5_Li6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaISA_EE9push_backERKSA_.exit.i.i.i.i

bb.ao:                                            ; preds = %bb.as, %.lr.ph104.i.i.i.i
  %indvars.iv127.i.i.i.i = phi i64 [ 0, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next128.i.i.i.i, %bb.as ] ; 3 uses
  %indvars.iv124.i.i.i.i = phi i32 [ %spec.store.select.i.i.i.i, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next125.i.i.i.i, %bb.as ] ; 2 uses
  %indvars.iv121.i.i.i.i = phi i32 [ %i.cg, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next122.i.i.i.i, %bb.as ] ; 3 uses
  %smax123.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv121.i.i.i.i, i32 0)
  %i.hx = add i32 %smax123.i.i.i.i, %indvars.iv124.i.i.i.i ; 2 uses
  %i.hy = icmp ne i32 %i.hx, 0
  %umin126.i.i.i.i = zext i1 %i.hy to i32         ; 2 uses
  %i.hz = sub i32 %i.hx, %umin126.i.i.i.i
  %i.ia = udiv i32 %i.hz, 6
  %i.ib = add nuw nsw i32 %i.ia, %umin126.i.i.i.i
  %i.ic = mul i32 %i.ib, 6
end_hunk_19
begin_hunk_20_@_ZN11OpenImageIO4v3_112ImageBufAlgo23LinearXTransDemosaicingIttE12calc_BGG_grbILb0EEEbRNS1_15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE7ContextE:bb.a
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
  %i.f = load i32, ptr %i.e, align 8, !tbaa !868  ; 3 uses
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
  %i.bc = add i32 %i.f, 3
  br label %bb.d

._crit_edge55.i.i.i:                              ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !888
  %.not.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS7_RA4_KfNS1_3ROIEiEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge55.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE7processERNS1_8ImageBufERKS7_RA4_KfNS1_3ROIEiEUlSE_E_JSE_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESI_E4typeEOSJ_DpOSK_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #33
  unreachable

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i, %.lr.ph54.i.i.i
  %indvars.iv.i.i.i = phi i32 [ %i.bc, %.lr.ph54.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 2 uses
  %.01752.i.i.i = phi i32 [ %i.f, %.lr.ph54.i.i.i ], [ %i.kg, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6WindowD2Ev.exit.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.bh = load i32, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !2060, !nonnull !172, !align !336 ; 3 uses
  %i.bj = load i32, ptr %i.k, align 8, !tbaa !2025
  %i.bk = load i32, ptr %i.l, align 4, !tbaa !2027
  %i.bl = load ptr, ptr %i.m, align 8, !tbaa !2061, !nonnull !172, !align !315 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %4, i8 0, i64 24, i1 false)
  %i.bm = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi)
          to label %.preheader91.i.i.i.i unwind label %bb.e ; 4 uses

.preheader91.i.i.i.i:                             ; preds = %bb.d
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !891 ; 3 uses
  store i32 %i.bn, ptr %i.n, align 4, !tbaa !2062
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !897
  %i.bq = add nsw i32 %i.bp, %i.bn
  store i32 %i.bq, ptr %i.o, align 8, !tbaa !2067
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !899 ; 2 uses
  store i32 %i.bs, ptr %i.p, align 4, !tbaa !2068
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !901
  %i.bv = add nsw i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.q, align 8, !tbaa !2069
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.r, align 8, !tbaa !3
  store i32 4, ptr %i.s, align 8, !tbaa !3
  %i.bw = sub i32 %i.bn, %i.bh                    ; 3 uses
  %i.bx = call i32 @llvm.smax.i32(i32 %i.bw, i32 -2) ; 3 uses
  %spec.store.select.i.i.i.i = add i32 %i.bx, 2   ; 4 uses
  %i.by = add i32 %i.bx, %i.bh                    ; 3 uses
  %i.bz = add nsw i32 %i.by, %i.bj
  %i.ca = srem i32 %i.bz, 6                       ; 3 uses
  %i.cb = icmp slt i32 %i.bw, 3
  %i.cc = icmp sgt i32 %i.bw, -2
  %i.cd = add i32 %.01752.i.i.i, -2
  %i.ce = sub i32 2, %.01752.i.i.i
  %i.cf = sext i32 %spec.store.select.i.i.i.i to i64 ; 2 uses
  %i.cg = sub i32 -2, %i.bx
  %smax130.i.i.i.i = call i32 @llvm.smax.i32(i32 %spec.store.select.i.i.i.i, i32 1)
  %wide.trip.count.i.i.i.i = zext nneg i32 %smax130.i.i.i.i to i64
  %smax67.i.i.i = call i64 @llvm.smax.i64(i64 %i.cf, i64 4)
  br label %.preheader90.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.preheader90.i.i.i.i:                             ; preds = %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i, %.preheader91.i.i.i.i
  %indvars.iv65.i.i.i = phi i32 [ %indvars.iv.next66.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %indvars.iv.i.i.i, %.preheader91.i.i.i.i ] ; 2 uses
  %indvars.iv116.i.i.i.i = phi i32 [ %indvars.iv.next117.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.ce, %.preheader91.i.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i.i = phi i32 [ %indvars.iv.next.i.i.i.i, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ %i.cd, %.preheader91.i.i.i.i ] ; 3 uses
  %.074105.i.i.i.i = phi i32 [ %i.il, %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i.i ], [ 0, %.preheader91.i.i.i.i ]
  %i.ci = load i32, ptr %i.p, align 4, !tbaa !2068
  %smax.i.i.i.i = call i32 @llvm.smax.i32(i32 %i.ci, i32 %indvars.iv.i.i.i.i)
  %i.cj = add i32 %smax.i.i.i.i, %indvars.iv116.i.i.i.i ; 2 uses
  %i.ck = icmp ne i32 %i.cj, 0
  %umin.i.i.i.i = zext i1 %i.ck to i32            ; 2 uses
  %i.cl = load i32, ptr %i.q, align 8, !tbaa !2069
  %i.cm = sub i32 %i.cj, %umin.i.i.i.i
  %i.cn = udiv i32 %i.cm, 6
  %i.co = add nuw nsw i32 %i.cn, %umin.i.i.i.i
  %i.cp = mul i32 %i.co, 6                        ; 2 uses
  %i.cq = add i32 %i.cp, %indvars.iv.i.i.i.i      ; 2 uses
  %i.cr = add i32 %i.cp, %indvars.iv65.i.i.i
  %i.cs = add i32 %i.cl, -1
  %smin.i.i.i = call i32 @llvm.smin.i32(i32 %i.cq, i32 %i.cs)
  %i.ct = sub i32 %i.cr, %smin.i.i.i
  %.fr.i.i.i = freeze i32 %i.ct                   ; 2 uses
  %i.cu = urem i32 %.fr.i.i.i, 6
  %.neg.i.i.i = sub i32 %i.cu, %.fr.i.i.i
  %i.cv = add i32 %.neg.i.i.i, %i.cq              ; 3 uses
  %i.cw = add nsw i32 %i.cv, %i.bk
  %i.cx = srem i32 %i.cw, 6                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_iiiNS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i32 noundef %i.by, i32 noundef %i.cv, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i unwind label %bb.f

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i: ; preds = %.preheader90.i.i.i.i
  store i32 %i.ca, ptr %i.t, align 8, !tbaa !2053
  store i32 %i.cx, ptr %i.u, align 4, !tbaa !2052
  store ptr %i.bl, ptr %i.v, align 8, !tbaa !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.w, i8 0, i64 20, i1 false)
  br i1 %i.cb, label %.lr.ph.i.i.i.i, label %.lr.ph104.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.s
  br i1 %i.cc, label %.lr.ph104.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph104.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [48 x i8], ptr @_ZN11OpenImageIO4v3_112ImageBufAlgoL18xtrans_channel_mapE, i64 %i.cy
  br label %bb.aj

bb.f:                                             ; preds = %.preheader90.i.i.i.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i, %bb.s
  %i.db = phi i32 [ %spec.select.i.i.i.i.i, %bb.s ], [ %i.ca, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ]
  %indvars.iv118.i.i.i.i = phi i64 [ %indvars.iv.next119.i.i.i.i, %bb.s ], [ %i.cf, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiNS1_8WrapModeE.exit.i.i.i.i ] ; 3 uses
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
  %.pre132.i.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !856 ; 2 uses
  br i1 %.not.i84.i.i.i.i, label %.invoke.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ex = load i32, ptr %i.ad, align 4, !tbaa !860 ; 2 uses
  store i32 %i.ex, ptr %i.ab, align 8, !tbaa !849
  %i.ey = add nsw i32 %.pre132.i.i.i.i, 1         ; 3 uses
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
  %i.fc = phi i32 [ 0, %bb.g ], [ %.pre132.i.i.i.i, %bb.p ], [ %i.ey, %bb.q ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i.i ]
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
  %indvars.iv.next119.i.i.i.i = add nsw i64 %indvars.iv118.i.i.i.i, 1
  %exitcond.not.i.i.i.a = icmp eq i64 %indvars.iv118.i.i.i.i, %smax67.i.i.i
  br i1 %exitcond.not.i.i.i.a, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2073

bb.t:                                             ; preds = %.invoke.i.i.i.i, %bb.o, %bb.l
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.an, %.preheader.i.i.i.i
  %i.fl = load ptr, ptr %i.at, align 8, !tbaa !2074 ; 7 uses
  %i.fm = load ptr, ptr %i.au, align 8, !tbaa !2075
  %.not.i.i.i.i.i = icmp eq ptr %i.fl, %i.fm
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.fl, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %.noexc80.i.i.i.i unwind label %.loopexit.i.i.i.i

.noexc80.i.i.i.i:                                 ; preds = %bb.u
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.fn, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  %i.fo = load ptr, ptr %i.at, align 8, !tbaa !2074
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 168
  store ptr %i.fp, ptr %i.at, align 8, !tbaa !2074
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !2046 ; 6 uses
  %i.fq = ptrtoint ptr %i.fl to i64
  %i.fr = ptrtoint ptr %.val.i.i.i.i.i.i to i64   ; 2 uses
  %i.fs = sub i64 %i.fq, %i.fr                    ; 3 uses
  %i.ft = icmp eq i64 %i.fs, 9223372036854775800
  br i1 %i.ft, label %bb.w, label %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #34
          to label %.noexc81.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i

.noexc81.i.i.i.i:                                 ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.fu = sdiv exact i64 %i.fs, 168               ; 3 uses
  %i.fv = icmp eq ptr %i.fl, %.val.i.i.i.i.i.i    ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = select i1 %i.fv, i64 1, i64 %i.fu
  %i.fw = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.fu ; 2 uses
  %i.fx = icmp ult i64 %i.fw, %i.fu
  %i.fy = call i64 @llvm.umin.i64(i64 %i.fw, i64 54901024028897475)
  %i.fz = select i1 %i.fx, i64 54901024028897475, i64 %i.fy ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.fz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.ga = mul nuw nsw i64 %i.fz, 168              ; 2 uses
  %i.gb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ga) #32
          to label %.noexc82.i.i.i.i unwind label %.loopexit.i.i.i.i ; 7 uses

.noexc82.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.fs ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %i.gc, ptr noundef nonnull align 8 dereferenceable(164) %2)
          to label %bb.x unwind label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i

bb.x:                                             ; preds = %.noexc82.i.i.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gd, ptr noundef nonnull align 8 dereferenceable(36) %i.t, i64 36, i1 false)
  br i1 %i.fv, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i: ; preds = %bb.x
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 168
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.x, %bb.y
  %.016.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gi, %bb.y ], [ %i.gb, %bb.x ] ; 5 uses
  %.01215.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gh, %bb.y ], [ %.val.i.i.i.i.i.i, %bb.x ] ; 3 uses
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(164) %.016.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(164) %.01215.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gf = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 128
  %i.gg = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.gf, ptr noundef nonnull align 8 dereferenceable(36) %i.gg, i64 36, i1 false)
  %i.gh = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 168
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gh, %i.fl
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2076

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  %i.gk = extractvalue { ptr, i32 } %i.gj, 0
  %i.gl = call ptr @__cxa_begin_catch(ptr %i.gk) #29 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_(ptr noundef nonnull %i.gb, ptr noundef nonnull %.016.i.i.i.i.i.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #34
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gm = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gn = landingpad { ptr, i32 }
          catch ptr null
  %i.go = extractvalue { ptr, i32 } %i.gn, 0
  call void @__clang_call_terminate(ptr %i.go) #33
  unreachable

bb.ac:                                            ; preds = %bb.z
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i: ; preds = %bb.y
  %i.gp = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i.i.i.i.i.i, i64 336
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.gu, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.i.i.i.i.i ] ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 72
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !888
  %.not.i.i.i.i.i42.i.i.i.i.i.i = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i.i.i42.i.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(164) %.05.i.i.i.i.i.i.i.i)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gs = landingpad { ptr, i32 }
          catch ptr null
  %i.gt = extractvalue { ptr, i32 } %i.gs, 0
  call void @__clang_call_terminate(ptr %i.gt) #33
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gu, %i.fl
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2077

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i
  %i.gv = phi ptr [ %i.ge, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES9_SaIS8_EET0_T_SC_SB_RT1_.exit41.i.thread.i.i.i.i.i ], [ %i.gp, %_ZSt8_DestroyIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvPT_.exit.i.i.i.i.i.i.i.i ]
  %.not.i43.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i43.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  %i.gw = load ptr, ptr %i.au, align 8, !tbaa !2075
  %i.gx = ptrtoint ptr %i.gw to i64
  %i.gy = sub i64 %i.gx, %i.fr
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.gy) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %.noexc82.i.i.i.i
  %i.gz = landingpad { ptr, i32 }
          catch ptr null
  %i.ha = extractvalue { ptr, i32 } %i.gz, 0
  %i.hb = call ptr @__cxa_begin_catch(ptr %i.ha) #29 ; 0 uses
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i: ; preds = %bb.aa
  %i.hc = extractvalue { ptr, i32 } %i.gm, 0
  %i.hd = call ptr @__cxa_begin_catch(ptr %i.hc) #29 ; 0 uses
  call fastcc void @_ZN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS1_L18xtrans_channel_mapEEEEE6Window3RowD2Ev(ptr noundef nonnull align 8 dead_on_return(164) dereferenceable(164) %i.gc) #29
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i

bb.ag:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  %i.he = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i.i unwind label %bb.ah

_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.thread.i.i.i.i.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gb, i64 noundef %i.ga) #30
  invoke void @__cxa_rethrow() #34
          to label %bb.ai unwind label %bb.ag

bb.ah:                                            ; preds = %bb.ag
  %i.hf = landingpad { ptr, i32 }
          catch ptr null
  %i.hg = extractvalue { ptr, i32 } %i.hf, 0
  call void @__clang_call_terminate(ptr %i.hg) #33
  unreachable

bb.ai:                                            ; preds = %_ZNSt12_Vector_baseIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE13_M_deallocateEPS8_m.exit45.i.i.i.i.i.i
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.af, %_ZSt8_DestroyIPN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowEEvT_SA_.exit.i.i.i.i.i.i
  store ptr %i.gb, ptr %4, align 8, !tbaa !2046
  store ptr %i.gv, ptr %i.at, align 8, !tbaa !2074
  %i.hh = getelementptr inbounds nuw [168 x i8], ptr %i.gb, i64 %i.fz
  store ptr %i.hh, ptr %i.au, align 8, !tbaa !2075
  br label %_ZNSt6vectorIN11OpenImageIO4v3_112ImageBufAlgo15DemosaicingBaseIttLi6ELi5EXadsoA6_KmL_ZNS2_L18xtrans_channel_mapEEEEE6Window3RowESaIS8_EE9push_backERKS8_.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.an, %.lr.ph104.i.i.i.i
  %indvars.iv127.i.i.i.i = phi i64 [ 0, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next128.i.i.i.i, %bb.an ] ; 3 uses
  %indvars.iv124.i.i.i.i = phi i32 [ %spec.store.select.i.i.i.i, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next125.i.i.i.i, %bb.an ] ; 2 uses
  %indvars.iv121.i.i.i.i = phi i32 [ %i.cg, %.lr.ph104.i.i.i.i ], [ %indvars.iv.next122.i.i.i.i, %bb.an ] ; 3 uses
  %smax123.i.i.i.i = call i32 @llvm.smax.i32(i32 %indvars.iv121.i.i.i.i, i32 0)
  %i.hi = add i32 %smax123.i.i.i.i, %indvars.iv124.i.i.i.i ; 2 uses
  %i.hj = icmp ne i32 %i.hi, 0
  %umin126.i.i.i.i = zext i1 %i.hj to i32         ; 2 uses
  %i.hk = sub i32 %i.hi, %umin126.i.i.i.i
  %i.hl = udiv i32 %i.hk, 6
  %i.hm = add nuw nsw i32 %i.hl, %umin126.i.i.i.i
  %i.hn = mul i32 %i.hm, 6
end_hunk_20
