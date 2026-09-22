Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_modular?download=true
inline.NumInlined: 5470
inline.NumDeleted: 2759
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE8__appendEm:bb.a
_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEERNS2_IS4_EEE5clearB8nn180100Ev.exit.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIjNS1_IjEEEEEEE7destroyB8nn180100IS4_vEEvRS5_PT_.exit.i.i.i.i, %_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS4_EE.exit
  %.not.i8 = icmp eq ptr %i.ap, null
  br i1 %.not.i8, label %_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEERNS2_IS4_EEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEERNS2_IS4_EEE5clearB8nn180100Ev.exit.i
  %i.ba = ptrtoint ptr %i.aq to i64
  %i.bb = ptrtoint ptr %i.ap to i64
  %i.bc = sub i64 %i.ba, %i.bb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.bc) #27
  br label %_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEERNS2_IS4_EEED2Ev.exit

_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEERNS2_IS4_EEED2Ev.exit: ; preds = %bb.h, %_ZNSt3__114__split_bufferINS_6vectorIjNS_9allocatorIjEEEERNS2_IS4_EEE5clearB8nn180100Ev.exit.i, %_ZNSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE18__construct_at_endEm.exit
  ret void
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorINS0_IjNS_9allocatorIjEEEENS1_IS3_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8nn180100EPKc(ptr noundef nonnull @.str.73) #29
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef range(i32 -1, 1) i32 @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_19ModularFrameEncoder19ComputeEncodingDataERKNS_11FrameHeaderERKNS_13ImageMetadataEPNS_6Image3IfEERKNSt3__16vectorINS_5PlaneIfEENSD_9allocatorISG_EEEERKNS_5RectTImEERKNS_15FrameDimensionsESP_PNS_18PassesEncoderStateERK15JxlCmsInterfacePS0_PNS_6AuxOutEbE3$_2EENS_6StatusESY_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S11_E12CallInitFuncEPvm"(ptr nofree readnone captures(none) %0, i64 %1) #17 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_19ModularFrameEncoder19ComputeEncodingDataERKNS_11FrameHeaderERKNS_13ImageMetadataEPNS_6Image3IfEERKNSt3__16vectorINS_5PlaneIfEENSD_9allocatorISG_EEEERKNS_5RectTImEERKNS_15FrameDimensionsESP_PNS_18PassesEncoderStateERK15JxlCmsInterfacePS0_PNS_6AuxOutEbE3$_2EENS_6StatusESY_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S11_E12CallDataFuncEPvjm"(ptr nofree noundef captures(none) %0, i32 noundef %1, i64 %2) #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load atomic i32, ptr %i.a seq_cst, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1231, !nonnull !188, !align !460 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !394  ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1272 ; 2 uses
  %i.g = zext i32 %1 to i64                       ; 2 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !383  ; 3 uses
  %i.i = getelementptr inbounds nuw [72 x i8], ptr %i.h, i64 %i.g ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !465
  switch i32 %i.k, label %"_ZZN3jxl19ModularFrameEncoder19ComputeEncodingDataERKNS_11FrameHeaderERKNS_13ImageMetadataEPNS_6Image3IfEERKNSt3__16vectorINS_5PlaneIfEENSA_9allocatorISD_EEEERKNS_5RectTImEERKNS_15FrameDimensionsESM_PNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutEbENK3$_2clEjm.exit" [
    i32 5, label %bb.g
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.m = load i64, ptr %i.l, align 8, !tbaa !466
  %i.n = add i64 %i.m, 1
  br label %_ZNK3jxl15ModularStreamId2IDERKNS_15FrameDimensionsE.exit.i

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 528
  %i.p = load i64, ptr %i.o, align 8, !tbaa !175
  %i.q = add i64 %i.p, 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.s = load i64, ptr %i.r, align 8, !tbaa !466
  %i.t = add i64 %i.q, %i.s
  br label %_ZNK3jxl15ModularStreamId2IDERKNS_15FrameDimensionsE.exit.i

bb.e:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 528
  %i.v = load i64, ptr %i.u, align 8, !tbaa !175
  %i.w = shl i64 %i.v, 1
  %i.x = or disjoint i64 %i.w, 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.z = load i64, ptr %i.y, align 8, !tbaa !466
  %i.aa = add i64 %i.x, %i.z
  br label %_ZNK3jxl15ModularStreamId2IDERKNS_15FrameDimensionsE.exit.i

bb.f:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 528
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !175
  %i.ad = mul i64 %i.ac, 3
  %i.ae = add i64 %i.ad, 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !467
  %i.ah = add i64 %i.ae, %i.ag
  br label %_ZNK3jxl15ModularStreamId2IDERKNS_15FrameDimensionsE.exit.i

bb.g:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 528
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !175
  %i.ak = mul i64 %i.aj, 3
  %i.al = add i64 %i.ak, 18
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 520
  %i.an = load i64, ptr %i.am, align 8, !tbaa !176
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !468
  %i.aq = mul i64 %i.ap, %i.an
  %i.ar = add i64 %i.al, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.at = load i64, ptr %i.as, align 8, !tbaa !466
  %i.au = add i64 %i.ar, %i.at
  br label %_ZNK3jxl15ModularStreamId2IDERKNS_15FrameDimensionsE.exit.i

_ZNK3jxl15ModularStreamId2IDERKNS_15FrameDimensionsE.exit.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0.i.i = phi i64 [ %i.ah, %bb.f ], [ %i.au, %bb.g ], [ %i.n, %bb.c ], [ %i.t, %bb.d ], [ %i.aa, %bb.e ] ; 2 uses
  %.not.i = icmp eq i64 %.0.i.i, 0
  br i1 %.not.i, label %"_ZZN3jxl19ModularFrameEncoder19ComputeEncodingDataERKNS_11FrameHeaderERKNS_13ImageMetadataEPNS_6Image3IfEERKNSt3__16vectorINS_5PlaneIfEENSA_9allocatorISD_EEEERKNS_5RectTImEERKNS_15FrameDimensionsESM_PNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutEbENK3$_2clEjm.exit", label %_ZN3jxl14ModularOptionsaSERKS0_.exit.i

_ZN3jxl14ModularOptionsaSERKS0_.exit.i:           ; preds = %_ZNK3jxl15ModularStreamId2IDERKNS_15FrameDimensionsE.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !228 ; 10 uses
  %.idx.i = mul nuw nsw i64 %.0.i.i, 152
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx.i ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(145) %i.ax, ptr noundef nonnull align 8 dereferenceable(145) %i.aw, i64 24, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !190 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !191 ; 2 uses
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 2
  tail call void @_ZNSt3__16vectorIjNS_9allocatorIjEEE18__assign_with_sizeB8nn180100IPjS5_EEvT_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef %i.ba, ptr noundef %i.bc, i64 noundef %i.bg) #26
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bh, ptr noundef nonnull align 8 dereferenceable(40) %i.bi, i64 40, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(53) %i.bj, ptr noundef nonnull align 8 dereferenceable(53) %i.bk, i64 16, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 104
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !222 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aw, i64 112
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !220 ; 2 uses
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = ashr exact i64 %i.bs, 3
  tail call void @_ZNSt3__16vectorImNS_9allocatorImEEE18__assign_with_sizeB8nn180100IPmS5_EEvT_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef %i.bn, ptr noundef %i.bp, i64 noundef %i.bt) #26
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ax, i64 128
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aw, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.bu, ptr noundef nonnull align 8 dereferenceable(13) %i.bv, i64 13, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aw, i64 144
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !229, !range !178, !noundef !188
  %i.by = getelementptr inbounds nuw i8, ptr %i.ax, i64 144
  store i8 %i.bx, ptr %i.by, align 8, !tbaa !229
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !383
  br label %"_ZZN3jxl19ModularFrameEncoder19ComputeEncodingDataERKNS_11FrameHeaderERKNS_13ImageMetadataEPNS_6Image3IfEERKNSt3__16vectorINS_5PlaneIfEENSA_9allocatorISD_EEEERKNS_5RectTImEERKNS_15FrameDimensionsESM_PNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutEbENK3$_2clEjm.exit"

"_ZZN3jxl19ModularFrameEncoder19ComputeEncodingDataERKNS_11FrameHeaderERKNS_13ImageMetadataEPNS_6Image3IfEERKNSt3__16vectorINS_5PlaneIfEENSA_9allocatorISD_EEEERKNS_5RectTImEERKNS_15FrameDimensionsESM_PNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutEbENK3$_2clEjm.exit": ; preds = %bb.b, %_ZNK3jxl15ModularStreamId2IDERKNS_15FrameDimensionsE.exit.i, %_ZN3jxl14ModularOptionsaSERKS0_.exit.i
  %i.bz = phi ptr [ %i.h, %bb.b ], [ %i.h, %_ZNK3jxl15ModularStreamId2IDERKNS_15FrameDimensionsE.exit.i ], [ %.pre.i, %_ZN3jxl14ModularOptionsaSERKS0_.exit.i ]
  %i.ca = getelementptr inbounds nuw [72 x i8], ptr %i.bz, i64 %i.g ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 552
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !391
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 36
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !392
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1232, !nonnull !188
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !248, !range !178, !noundef !188
  %i.ck = trunc nuw i8 %i.cj to i1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !1233, !nonnull !188
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !248, !range !178, !noundef !188
  %i.co = trunc nuw i8 %i.cn to i1
  %i.cp = tail call i32 @_ZN3jxl19ModularFrameEncoder19PrepareStreamParamsERKNS_5RectTImEERKNS_14CompressParamsEiiRKNS_15ModularStreamIdEbb(ptr noundef nonnull align 8 dereferenceable(1296) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.ca, ptr noundef nonnull align 8 dereferenceable(648) %i.cb, i32 noundef %i.cd, i32 noundef %i.cf, ptr noundef nonnull align 8 dereferenceable(32) %i.cg, i1 noundef zeroext %i.ck, i1 noundef zeroext %i.co) #26
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.i, label %bb.h

bb.h:                                             ; preds = %"_ZZN3jxl19ModularFrameEncoder19ComputeEncodingDataERKNS_11FrameHeaderERKNS_13ImageMetadataEPNS_6Image3IfEERKNSt3__16vectorINS_5PlaneIfEENSA_9allocatorISD_EEEERKNS_5RectTImEERKNS_15FrameDimensionsESM_PNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutEbENK3$_2clEjm.exit"
  store atomic i32 1, ptr %i.a seq_cst, align 8
  br label %bb.i

bb.i:                                             ; preds = %"_ZZN3jxl19ModularFrameEncoder19ComputeEncodingDataERKNS_11FrameHeaderERKNS_13ImageMetadataEPNS_6Image3IfEERKNSt3__16vectorINS_5PlaneIfEENSA_9allocatorISD_EEEERKNS_5RectTImEERKNS_15FrameDimensionsESM_PNS_18PassesEncoderStateERK15JxlCmsInterfacePNS_10ThreadPoolEPNS_6AuxOutEbENK3$_2clEjm.exit", %bb.h, %bb.a
  ret void
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIN3jxl21ModularMultiplierInfoENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8nn180100EPKc(ptr noundef nonnull @.str.73) #29
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoELb0EEEvT1_SA_T0_NS_15iterator_traitsISA_E15difference_typeEb"(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #20 {
bb.a:
  %4 = alloca %"struct.jxl::ModularMultiplierInfo", align 4 ; 4 uses
  %5 = alloca %"struct.jxl::ModularMultiplierInfo", align 4 ; 4 uses
  %6 = alloca %"struct.jxl::ModularMultiplierInfo", align 4 ; 4 uses
  %7 = alloca %"struct.jxl::ModularMultiplierInfo", align 4 ; 5 uses
  %8 = alloca %"struct.jxl::ModularMultiplierInfo", align 4 ; 4 uses
  %i.a = zext i1 %3 to i8
  br label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit.outer"

"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit.outer": ; preds = %bb.bs, %bb.a
  %.039.ph = phi ptr [ %i.ly, %bb.bs ], [ %1, %bb.a ] ; 35 uses
  %.036.ph = phi ptr [ %.036, %bb.bs ], [ %0, %bb.a ]
  %.048.ph = phi i8 [ %.048.ph333, %bb.bs ], [ %i.a, %bb.a ]
  %.046.ph = phi i64 [ %i.ga, %bb.bs ], [ %2, %bb.a ]
  %i.b = ptrtoint ptr %.039.ph to i64
  %i.c = getelementptr inbounds i8, ptr %.039.ph, i64 -20 ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %.039.ph, i64 -40
  %i.e = getelementptr inbounds i8, ptr %.039.ph, i64 -60
  %i.f = getelementptr inbounds i8, ptr %.039.ph, i64 -20 ; 3 uses
  %i.g = getelementptr inbounds i8, ptr %.039.ph, i64 -20 ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.039.ph, i64 -20
  %.sroa.248.0..sroa_idx.i = getelementptr inbounds i8, ptr %.039.ph, i64 -16
  %.sroa.349.0..sroa_idx.i = getelementptr inbounds i8, ptr %.039.ph, i64 -12
  %.sroa.450.0..sroa_idx.i = getelementptr inbounds i8, ptr %.039.ph, i64 -8
  %.sroa.551.0..sroa_idx.i = getelementptr inbounds i8, ptr %.039.ph, i64 -4
  br label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit.outer331"

"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit.outer331": ; preds = %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit.outer331.backedge", %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit.outer"
  %.036.ph332 = phi ptr [ %.036.ph, %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit.outer" ], [ %.036.ph332.be, %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit.outer331.backedge" ]
  %.048.ph333 = phi i8 [ %.048.ph, %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit.outer" ], [ 0, %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit.outer331.backedge" ] ; 3 uses
  %.046.ph334 = phi i64 [ %.046.ph, %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit.outer" ], [ %i.ga, %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit.outer331.backedge" ]
  %i.i = trunc nuw i8 %.048.ph333 to i1           ; 2 uses
  br label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit"

"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit": ; preds = %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit.outer331", %bb.bt
  %.036 = phi ptr [ %.1.lcssa.i, %bb.bt ], [ %.036.ph332, %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit.outer331" ] ; 67 uses
  %.046 = phi i64 [ %i.ga, %bb.bt ], [ %.046.ph334, %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit.outer331" ] ; 2 uses
  %i.j = ptrtoint ptr %.036 to i64                ; 2 uses
  %i.k = sub i64 %i.b, %i.j                       ; 4 uses
  %i.l = sdiv exact i64 %i.k, 20                  ; 5 uses
  switch i64 %i.l, label %bb.h [
    i64 0, label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit.thread"
    i64 1, label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit.thread"
    i64 2, label %bb.b
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
  ]

bb.b:                                             ; preds = %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit"
  %i.m = getelementptr inbounds i8, ptr %.039.ph, i64 -20 ; 3 uses
  %.sroa.011.0.copyload = load i32, ptr %i.m, align 4 ; 2 uses
  %.sroa.212.0..sroa_idx = getelementptr inbounds i8, ptr %.039.ph, i64 -16
  %.sroa.212.0.copyload = load i32, ptr %.sroa.212.0..sroa_idx, align 4 ; 2 uses
  %.sroa.313.0..sroa_idx = getelementptr inbounds i8, ptr %.039.ph, i64 -12
  %.sroa.313.0.copyload = load i32, ptr %.sroa.313.0..sroa_idx, align 4 ; 2 uses
  %.sroa.414.0..sroa_idx = getelementptr inbounds i8, ptr %.039.ph, i64 -8
  %.sroa.414.0.copyload = load i32, ptr %.sroa.414.0..sroa_idx, align 4, !tbaa !342 ; 2 uses
  %.sroa.515.0..sroa_idx = getelementptr inbounds i8, ptr %.039.ph, i64 -4
  %.sroa.515.0.copyload = load i32, ptr %.sroa.515.0..sroa_idx, align 4, !tbaa !215
  %.sroa.06.0.copyload = load i32, ptr %.036, align 4 ; 2 uses
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.036, i64 4
  %.sroa.27.0.copyload = load i32, ptr %.sroa.27.0..sroa_idx, align 4 ; 2 uses
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.036, i64 8
  %.sroa.38.0.copyload = load i32, ptr %.sroa.38.0..sroa_idx, align 4 ; 2 uses
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.036, i64 12
  %.sroa.49.0.copyload = load i32, ptr %.sroa.49.0..sroa_idx, align 4, !tbaa !342 ; 2 uses
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.036, i64 16
  %.sroa.510.0.copyload = load i32, ptr %.sroa.510.0..sroa_idx, align 4, !tbaa !215
  %i.n = icmp ult i32 %.sroa.011.0.copyload, %.sroa.06.0.copyload
  br i1 %i.n, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ult i32 %.sroa.06.0.copyload, %.sroa.011.0.copyload
  br i1 %i.o, label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit.thread", label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.p = icmp ult i32 %.sroa.212.0.copyload, %.sroa.27.0.copyload
  br i1 %i.p, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread", label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i: ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i
  %i.q = icmp ult i32 %.sroa.27.0.copyload, %.sroa.212.0.copyload
  br i1 %i.q, label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit.thread", label %.lr.ph.i.i.i.1.i.i.i.i

.lr.ph.i.i.i.1.i.i.i.i:                           ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i
  %i.r = icmp ult i32 %.sroa.313.0.copyload, %.sroa.38.0.copyload
  br i1 %i.r, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread", label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.1.i.i.i.i
  %i.s = icmp ult i32 %.sroa.38.0.copyload, %.sroa.313.0.copyload
  br i1 %i.s, label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit.thread", label %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i

_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i: ; preds = %bb.d
  %i.t = icmp ult i32 %.sroa.414.0.copyload, %.sroa.49.0.copyload
  br i1 %i.t, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread", label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit"

"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit": ; preds = %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i
  %i.u = icmp uge i32 %.sroa.49.0.copyload, %.sroa.414.0.copyload
  %i.v = icmp ult i32 %.sroa.515.0.copyload, %.sroa.510.0.copyload
  %spec.select.i = select i1 %i.u, i1 %i.v, i1 false
  br i1 %spec.select.i, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread", label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit.thread"

"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread": ; preds = %bb.b, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.1.i.i.i.i, %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %8, ptr noundef nonnull align 4 dereferenceable(20) %.036, i64 20, i1 false), !tbaa.struct !415
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.036, ptr noundef nonnull align 4 dereferenceable(20) %i.m, i64 20, i1 false), !tbaa.struct !415
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.m, ptr noundef nonnull align 4 dereferenceable(20) %8, i64 20, i1 false), !tbaa.struct !415
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit.thread"

bb.e:                                             ; preds = %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit"
  %i.w = getelementptr inbounds nuw i8, ptr %.036, i64 20
  %i.x = getelementptr inbounds i8, ptr %.039.ph, i64 -20
  tail call fastcc void @"_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEjT1_SA_SA_T0_"(ptr noundef %.036, ptr noundef nonnull %i.w, ptr noundef nonnull %i.x) #26
  br label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit.thread"

bb.f:                                             ; preds = %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit"
  %i.y = getelementptr inbounds nuw i8, ptr %.036, i64 20
  %i.z = getelementptr inbounds nuw i8, ptr %.036, i64 40
  %i.aa = getelementptr inbounds i8, ptr %.039.ph, i64 -20
  tail call fastcc void @"_ZNSt3__17__sort4B8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_SA_SA_T0_"(ptr noundef %.036, ptr noundef nonnull %i.y, ptr noundef nonnull %i.z, ptr noundef nonnull %i.aa) #26
  br label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit.thread"

bb.g:                                             ; preds = %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit"
  %i.ab = getelementptr inbounds nuw i8, ptr %.036, i64 20
  %i.ac = getelementptr inbounds nuw i8, ptr %.036, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %.036, i64 60
  %i.ae = getelementptr inbounds i8, ptr %.039.ph, i64 -20
  tail call fastcc void @"_ZNSt3__124__sort5_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSC_SC_SC_SC_SC_SB_"(ptr noundef %.036, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ae) #26
  br label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit.thread"

bb.h:                                             ; preds = %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit"
  %i.af = icmp slt i64 %i.k, 480
  br i1 %i.af, label %bb.i, label %9

bb.i:                                             ; preds = %bb.h
  %i.ag = trunc nuw i8 %.048.ph333 to i1
  %i.ah = icmp eq ptr %.036, %.039.ph
  %storemerge42.i = getelementptr inbounds nuw i8, ptr %.036, i64 20 ; 3 uses
  %.not43.i = icmp eq ptr %storemerge42.i, %.039.ph
  %or.cond.i = select i1 %i.ah, i1 true, i1 %.not43.i ; 2 uses
  br i1 %i.ag, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  br i1 %or.cond.i, label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit.thread", label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %bb.j, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread31.i"
  %storemerge45.i = phi ptr [ %storemerge.i, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread31.i" ], [ %storemerge42.i, %bb.j ] ; 4 uses
  %.pn44.i = phi ptr [ %storemerge45.i, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread31.i" ], [ %.036, %bb.j ] ; 12 uses
  %.sroa.020.0.copyload.i = load i32, ptr %storemerge45.i, align 4 ; 5 uses
  %.sroa.221.0.storemerge.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn44.i, i64 24
  %.sroa.221.0.copyload.i = load i32, ptr %.sroa.221.0.storemerge.sroa_idx.i, align 4 ; 5 uses
  %.sroa.322.0.storemerge.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn44.i, i64 28
  %.sroa.322.0.copyload.i = load i32, ptr %.sroa.322.0.storemerge.sroa_idx.i, align 4 ; 5 uses
  %.sroa.423.0.storemerge.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn44.i, i64 32
  %.sroa.423.0.copyload.i = load i32, ptr %.sroa.423.0.storemerge.sroa_idx.i, align 4, !tbaa !342 ; 5 uses
  %.sroa.524.0.storemerge.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn44.i, i64 36
  %.sroa.524.0.copyload.i = load i32, ptr %.sroa.524.0.storemerge.sroa_idx.i, align 4, !tbaa !215 ; 3 uses
  %.sroa.015.0.copyload.i = load i32, ptr %.pn44.i, align 4 ; 2 uses
  %.sroa.216.0..pn.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn44.i, i64 4
  %.sroa.216.0.copyload.i = load i32, ptr %.sroa.216.0..pn.sroa_idx.i, align 4 ; 2 uses
  %.sroa.317.0..pn.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn44.i, i64 8
  %.sroa.317.0.copyload.i = load i32, ptr %.sroa.317.0..pn.sroa_idx.i, align 4 ; 2 uses
  %.sroa.418.0..pn.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn44.i, i64 12
  %.sroa.418.0.copyload.i = load i32, ptr %.sroa.418.0..pn.sroa_idx.i, align 4, !tbaa !342 ; 2 uses
  %.sroa.519.0..pn.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn44.i, i64 16
  %.sroa.519.0.copyload.i = load i32, ptr %.sroa.519.0..pn.sroa_idx.i, align 4, !tbaa !215
  %i.ai = icmp ult i32 %.sroa.020.0.copyload.i, %.sroa.015.0.copyload.i
  br i1 %i.ai, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i", label %bb.k

bb.k:                                             ; preds = %.lr.ph46.i
  %i.aj = icmp ult i32 %.sroa.015.0.copyload.i, %.sroa.020.0.copyload.i
  br i1 %i.aj, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread31.i", label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i.i

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.ak = icmp ult i32 %.sroa.221.0.copyload.i, %.sroa.216.0.copyload.i
  br i1 %i.ak, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i", label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i.i

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i.i
  %i.al = icmp ult i32 %.sroa.216.0.copyload.i, %.sroa.221.0.copyload.i
  br i1 %i.al, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread31.i", label %.lr.ph.i.i.i.1.i.i.i.i.i

.lr.ph.i.i.i.1.i.i.i.i.i:                         ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i.i
  %i.am = icmp ult i32 %.sroa.322.0.copyload.i, %.sroa.317.0.copyload.i
  br i1 %i.am, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i", label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.1.i.i.i.i.i
  %i.an = icmp ult i32 %.sroa.317.0.copyload.i, %.sroa.322.0.copyload.i
  br i1 %i.an, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread31.i", label %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i.i

_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i.i: ; preds = %bb.l
  %i.ao = icmp ult i32 %.sroa.423.0.copyload.i, %.sroa.418.0.copyload.i
  br i1 %i.ao, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i", label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.i"

"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.i": ; preds = %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i.i
  %i.ap = icmp uge i32 %.sroa.418.0.copyload.i, %.sroa.423.0.copyload.i
  %i.aq = icmp ult i32 %.sroa.524.0.copyload.i, %.sroa.519.0.copyload.i
  %spec.select.i.i = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %spec.select.i.i, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i", label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread31.i"

"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i": ; preds = %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.i", %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i.i, %.lr.ph.i.i.i.1.i.i.i.i.i, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i.i, %.lr.ph46.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %storemerge45.i, ptr noundef nonnull align 4 dereferenceable(20) %.pn44.i, i64 20, i1 false), !tbaa.struct !415
  %.not1734.i = icmp eq ptr %.pn44.i, %.036
  br i1 %.not1734.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i", %.backedge.i
  %.02835.i = phi ptr [ %i.ar, %.backedge.i ], [ %.pn44.i, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i" ] ; 10 uses
  %i.ar = getelementptr inbounds i8, ptr %.02835.i, i64 -20 ; 4 uses
  %.sroa.0.0.copyload.i54 = load i32, ptr %i.ar, align 4 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %.02835.i, i64 -16
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds i8, ptr %.02835.i, i64 -12
  %.sroa.3.0.copyload.i = load i32, ptr %.sroa.3.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i55 = getelementptr inbounds i8, ptr %.02835.i, i64 -8
  %.sroa.4.0.copyload.i56 = load i32, ptr %.sroa.4.0..sroa_idx.i55, align 4, !tbaa !342 ; 2 uses
  %.sroa.5.0..sroa_idx.i57 = getelementptr inbounds i8, ptr %.02835.i, i64 -4
  %.sroa.5.0.copyload.i58 = load i32, ptr %.sroa.5.0..sroa_idx.i57, align 4, !tbaa !215
  %i.as = icmp ult i32 %.sroa.020.0.copyload.i, %.sroa.0.0.copyload.i54
  br i1 %i.as, label %.backedge.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i
  %i.at = icmp ult i32 %.sroa.0.0.copyload.i54, %.sroa.020.0.copyload.i
  br i1 %i.at, label %.critedge.i, label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i32.i

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i32.i: ; preds = %bb.m
  %i.au = icmp ult i32 %.sroa.221.0.copyload.i, %.sroa.2.0.copyload.i
  br i1 %i.au, label %.backedge.i, label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i33.i

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i33.i: ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i32.i
  %i.av = icmp ult i32 %.sroa.2.0.copyload.i, %.sroa.221.0.copyload.i
  br i1 %i.av, label %.critedge.i, label %.lr.ph.i.i.i.1.i.i.i.i34.i

.lr.ph.i.i.i.1.i.i.i.i34.i:                       ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i33.i
  %i.aw = icmp ult i32 %.sroa.322.0.copyload.i, %.sroa.3.0.copyload.i
  br i1 %i.aw, label %.backedge.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.1.i.i.i.i34.i
  %i.ax = icmp ult i32 %.sroa.3.0.copyload.i, %.sroa.322.0.copyload.i
  br i1 %i.ax, label %.critedge.i, label %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i35.i

_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i35.i: ; preds = %bb.n
  %i.ay = icmp ult i32 %.sroa.423.0.copyload.i, %.sroa.4.0.copyload.i56
  br i1 %i.ay, label %.backedge.i, label %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit18.i.i.i36.i

_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit18.i.i.i36.i: ; preds = %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i35.i
  %i.az = icmp uge i32 %.sroa.4.0.copyload.i56, %.sroa.423.0.copyload.i
  %i.ba = icmp ult i32 %.sroa.524.0.copyload.i, %.sroa.5.0.copyload.i58
  %spec.select.i37.i = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %spec.select.i37.i, label %.backedge.i, label %.critedge.i

.backedge.i:                                      ; preds = %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit18.i.i.i36.i, %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i35.i, %.lr.ph.i.i.i.1.i.i.i.i34.i, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i32.i, %.lr.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.02835.i, ptr noundef nonnull align 4 dereferenceable(20) %i.ar, i64 20, i1 false), !tbaa.struct !415
  %.not17.i = icmp eq ptr %i.ar, %.036
  br i1 %.not17.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !1234

.critedge.i:                                      ; preds = %.backedge.i, %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit18.i.i.i36.i, %bb.n, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i33.i, %bb.m, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i"
  %.028.lcssa.i = phi ptr [ %.036, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i" ], [ %.036, %.backedge.i ], [ %.02835.i, %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit18.i.i.i36.i ], [ %.02835.i, %bb.n ], [ %.02835.i, %bb.m ], [ %.02835.i, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i33.i ] ; 5 uses
  store i32 %.sroa.020.0.copyload.i, ptr %.028.lcssa.i, align 4
  %.sroa.510.0..0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.028.lcssa.i, i64 4
  store i32 %.sroa.221.0.copyload.i, ptr %.sroa.510.0..0..sroa_idx.i, align 4
  %.sroa.6.0..0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.028.lcssa.i, i64 8
  store i32 %.sroa.322.0.copyload.i, ptr %.sroa.6.0..0..sroa_idx.i, align 4
  %.sroa.7.0..0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.028.lcssa.i, i64 12
  store i32 %.sroa.423.0.copyload.i, ptr %.sroa.7.0..0..sroa_idx.i, align 4, !tbaa !342
  %.sroa.8.0..0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.028.lcssa.i, i64 16
  store i32 %.sroa.524.0.copyload.i, ptr %.sroa.8.0..0..sroa_idx.i, align 4, !tbaa !215
  br label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread31.i"

"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread31.i": ; preds = %.critedge.i, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.i", %bb.l, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i.i, %bb.k
  %storemerge.i = getelementptr inbounds nuw i8, ptr %storemerge45.i, i64 20 ; 2 uses
  %.not.i = icmp eq ptr %storemerge.i, %.039.ph
  br i1 %.not.i, label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit.thread", label %.lr.ph46.i, !llvm.loop !1235

bb.o:                                             ; preds = %bb.i
  br i1 %or.cond.i, label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit.thread", label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %bb.o, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread30.i"
  %storemerge36.i = phi ptr [ %storemerge.i67, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread30.i" ], [ %storemerge42.i, %bb.o ] ; 4 uses
  %.pn35.i = phi ptr [ %storemerge36.i, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread30.i" ], [ %.036, %bb.o ] ; 10 uses
  %.sroa.019.0.copyload.i = load i32, ptr %storemerge36.i, align 4 ; 5 uses
  %.sroa.220.0.storemerge.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn35.i, i64 24
  %.sroa.220.0.copyload.i = load i32, ptr %.sroa.220.0.storemerge.sroa_idx.i, align 4 ; 5 uses
  %.sroa.321.0.storemerge.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn35.i, i64 28
  %.sroa.321.0.copyload.i = load i32, ptr %.sroa.321.0.storemerge.sroa_idx.i, align 4 ; 5 uses
  %.sroa.422.0.storemerge.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn35.i, i64 32
  %.sroa.422.0.copyload.i = load i32, ptr %.sroa.422.0.storemerge.sroa_idx.i, align 4, !tbaa !342 ; 5 uses
  %.sroa.523.0.storemerge.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn35.i, i64 36
  %.sroa.523.0.copyload.i = load i32, ptr %.sroa.523.0.storemerge.sroa_idx.i, align 4, !tbaa !215 ; 3 uses
  %.sroa.014.0.copyload.i = load i32, ptr %.pn35.i, align 4 ; 2 uses
  %.sroa.215.0..pn.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn35.i, i64 4
  %.sroa.215.0.copyload.i = load i32, ptr %.sroa.215.0..pn.sroa_idx.i, align 4 ; 2 uses
  %.sroa.316.0..pn.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn35.i, i64 8
  %.sroa.316.0.copyload.i = load i32, ptr %.sroa.316.0..pn.sroa_idx.i, align 4 ; 2 uses
  %.sroa.417.0..pn.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn35.i, i64 12
  %.sroa.417.0.copyload.i = load i32, ptr %.sroa.417.0..pn.sroa_idx.i, align 4, !tbaa !342 ; 2 uses
  %.sroa.518.0..pn.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn35.i, i64 16
  %.sroa.518.0.copyload.i = load i32, ptr %.sroa.518.0..pn.sroa_idx.i, align 4, !tbaa !215
  %i.bb = icmp ult i32 %.sroa.019.0.copyload.i, %.sroa.014.0.copyload.i
  br i1 %i.bb, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i69.preheader", label %bb.p

bb.p:                                             ; preds = %.lr.ph.i60
  %i.bc = icmp ult i32 %.sroa.014.0.copyload.i, %.sroa.019.0.copyload.i
  br i1 %i.bc, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread30.i", label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i.i61

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i.i61: ; preds = %bb.p
  %i.bd = icmp ult i32 %.sroa.220.0.copyload.i, %.sroa.215.0.copyload.i
  br i1 %i.bd, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i69.preheader", label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i.i62

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i.i62: ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i.i61
  %i.be = icmp ult i32 %.sroa.215.0.copyload.i, %.sroa.220.0.copyload.i
  br i1 %i.be, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread30.i", label %.lr.ph.i.i.i.1.i.i.i.i.i63

.lr.ph.i.i.i.1.i.i.i.i.i63:                       ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i.i62
  %i.bf = icmp ult i32 %.sroa.321.0.copyload.i, %.sroa.316.0.copyload.i
  br i1 %i.bf, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i69.preheader", label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.1.i.i.i.i.i63
  %i.bg = icmp ult i32 %.sroa.316.0.copyload.i, %.sroa.321.0.copyload.i
  br i1 %i.bg, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread30.i", label %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i.i64

_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i.i64: ; preds = %bb.q
  %i.bh = icmp ult i32 %.sroa.422.0.copyload.i, %.sroa.417.0.copyload.i
  br i1 %i.bh, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i69.preheader", label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.i65"

"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.i65": ; preds = %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i.i64
  %i.bi = icmp uge i32 %.sroa.417.0.copyload.i, %.sroa.422.0.copyload.i
  %i.bj = icmp ult i32 %.sroa.523.0.copyload.i, %.sroa.518.0.copyload.i
  %spec.select.i.i66 = select i1 %i.bi, i1 %i.bj, i1 false
  br i1 %spec.select.i.i66, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i69.preheader", label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread30.i"

"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i69.preheader": ; preds = %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.i65", %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i.i64, %.lr.ph.i.i.i.1.i.i.i.i.i63, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i.i61, %.lr.ph.i60
  br label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i69"

"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i69": ; preds = %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i69.backedge", %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i69.preheader"
  %.027.i = phi ptr [ %.pn35.i, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i69.preheader" ], [ %i.bk, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i69.backedge" ] ; 12 uses
  %.0.i = phi ptr [ %storemerge36.i, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i69.preheader" ], [ %.027.i, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i69.backedge" ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.0.i, ptr noundef nonnull align 4 dereferenceable(20) %.027.i, i64 20, i1 false), !tbaa.struct !415
  %i.bk = getelementptr inbounds i8, ptr %.027.i, i64 -20 ; 2 uses
  %.sroa.0.0.copyload.i70 = load i32, ptr %i.bk, align 4 ; 2 uses
  %.sroa.2.0..sroa_idx.i71 = getelementptr inbounds i8, ptr %.027.i, i64 -16
  %.sroa.2.0.copyload.i72 = load i32, ptr %.sroa.2.0..sroa_idx.i71, align 4 ; 2 uses
  %.sroa.3.0..sroa_idx.i73 = getelementptr inbounds i8, ptr %.027.i, i64 -12
  %.sroa.3.0.copyload.i74 = load i32, ptr %.sroa.3.0..sroa_idx.i73, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i75 = getelementptr inbounds i8, ptr %.027.i, i64 -8
  %.sroa.4.0.copyload.i76 = load i32, ptr %.sroa.4.0..sroa_idx.i75, align 4, !tbaa !342 ; 2 uses
  %.sroa.5.0..sroa_idx.i77 = getelementptr inbounds i8, ptr %.027.i, i64 -4
  %.sroa.5.0.copyload.i78 = load i32, ptr %.sroa.5.0..sroa_idx.i77, align 4, !tbaa !215
  %i.bl = icmp ult i32 %.sroa.019.0.copyload.i, %.sroa.0.0.copyload.i70
  br i1 %i.bl, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i69.backedge", label %bb.r

bb.r:                                             ; preds = %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i69"
  %i.bm = icmp ult i32 %.sroa.0.0.copyload.i70, %.sroa.019.0.copyload.i
  br i1 %i.bm, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit35.thread.i", label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i28.i

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i28.i: ; preds = %bb.r
  %i.bn = icmp ult i32 %.sroa.220.0.copyload.i, %.sroa.2.0.copyload.i72
  br i1 %i.bn, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i69.backedge", label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i29.i

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i29.i: ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i28.i
  %i.bo = icmp ult i32 %.sroa.2.0.copyload.i72, %.sroa.220.0.copyload.i
  br i1 %i.bo, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit35.thread.i", label %.lr.ph.i.i.i.1.i.i.i.i30.i

.lr.ph.i.i.i.1.i.i.i.i30.i:                       ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i29.i
  %i.bp = icmp ult i32 %.sroa.321.0.copyload.i, %.sroa.3.0.copyload.i74
  br i1 %i.bp, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i69.backedge", label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.1.i.i.i.i30.i
  %i.bq = icmp ult i32 %.sroa.3.0.copyload.i74, %.sroa.321.0.copyload.i
  br i1 %i.bq, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit35.thread.i", label %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i31.i

_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i31.i: ; preds = %bb.s
  %i.br = icmp ult i32 %.sroa.422.0.copyload.i, %.sroa.4.0.copyload.i76
  br i1 %i.br, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i69.backedge", label %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit18.i.i.i32.i

_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit18.i.i.i32.i: ; preds = %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i31.i
  %i.bs = icmp uge i32 %.sroa.4.0.copyload.i76, %.sroa.422.0.copyload.i
  %i.bt = icmp ult i32 %.sroa.523.0.copyload.i, %.sroa.5.0.copyload.i78
  %spec.select.i33.i = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %spec.select.i33.i, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i69.backedge", label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit35.thread.i"

"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i69.backedge": ; preds = %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit18.i.i.i32.i, %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i31.i, %.lr.ph.i.i.i.1.i.i.i.i30.i, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i28.i, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i69"
  br label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i69", !llvm.loop !1236

"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit35.thread.i": ; preds = %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit18.i.i.i32.i, %bb.s, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i29.i, %bb.r
  store i32 %.sroa.019.0.copyload.i, ptr %.027.i, align 4
  %.sroa.59.0..0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.027.i, i64 4
  store i32 %.sroa.220.0.copyload.i, ptr %.sroa.59.0..0..sroa_idx.i, align 4
  %.sroa.6.0..0..sroa_idx.i79 = getelementptr inbounds nuw i8, ptr %.027.i, i64 8
  store i32 %.sroa.321.0.copyload.i, ptr %.sroa.6.0..0..sroa_idx.i79, align 4
  %.sroa.7.0..0..sroa_idx.i80 = getelementptr inbounds nuw i8, ptr %.027.i, i64 12
  store i32 %.sroa.422.0.copyload.i, ptr %.sroa.7.0..0..sroa_idx.i80, align 4, !tbaa !342
  %.sroa.8.0..0..sroa_idx.i81 = getelementptr inbounds nuw i8, ptr %.027.i, i64 16
  store i32 %.sroa.523.0.copyload.i, ptr %.sroa.8.0..0..sroa_idx.i81, align 4, !tbaa !215
  br label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread30.i"

"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread30.i": ; preds = %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit35.thread.i", %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.i65", %bb.q, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i.i62, %bb.p
  %storemerge.i67 = getelementptr inbounds nuw i8, ptr %storemerge36.i, i64 20 ; 2 uses
  %.not.i68 = icmp eq ptr %storemerge.i67, %.039.ph
  br i1 %.not.i68, label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit.thread", label %.lr.ph.i60, !llvm.loop !1237

9:                                                ; preds = %bb.h
  %10 = icmp eq i64 %.046, 0
  br i1 %10, label %bb.t, label %bb.ar

bb.t:                                             ; preds = %9
  %i.bu = icmp eq ptr %.036, %.039.ph
  br i1 %i.bu, label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit.thread", label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bv = add nsw i64 %i.l, -2
  %i.bw = lshr i64 %i.bv, 1                       ; 3 uses
  br label %bb.v

bb.v:                                             ; preds = %"_ZNSt3__111__sift_downB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_OT0_NS_15iterator_traitsISA_E15difference_typeESA_.exit", %bb.u
  %.01.i.i.i = phi i64 [ %i.bw, %bb.u ], [ %i.dw, %"_ZNSt3__111__sift_downB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_OT0_NS_15iterator_traitsISA_E15difference_typeESA_.exit" ] ; 4 uses
  %i.bx = getelementptr inbounds nuw [20 x i8], ptr %.036, i64 %.01.i.i.i ; 6 uses
  %i.by = shl nsw i64 %.01.i.i.i, 1               ; 2 uses
  %i.bz = or disjoint i64 %i.by, 1                ; 6 uses
  %i.ca = getelementptr inbounds [20 x i8], ptr %.036, i64 %i.bz ; 15 uses
  %i.cb = add nsw i64 %i.by, 2                    ; 2 uses
  %i.cc = icmp slt i64 %i.cb, %i.l
  br i1 %i.cc, label %bb.w, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread64.i"

bb.w:                                             ; preds = %bb.v
  %.sroa.042.0.copyload.i = load i32, ptr %i.ca, align 4 ; 2 uses
  %.sroa.243.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %.sroa.243.0.copyload.i = load i32, ptr %.sroa.243.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.344.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.344.0.copyload.i = load i32, ptr %.sroa.344.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  %.sroa.445.0.copyload.i = load i32, ptr %.sroa.445.0..sroa_idx.i, align 4, !tbaa !342 ; 2 uses
  %.sroa.546.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %.sroa.546.0.copyload.i = load i32, ptr %.sroa.546.0..sroa_idx.i, align 4, !tbaa !215
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 20 ; 2 uses
  %.sroa.037.0.copyload.i156 = load i32, ptr %i.cd, align 4 ; 2 uses
  %.sroa.238.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %.sroa.238.0.copyload.i = load i32, ptr %.sroa.238.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.339.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 28
  %.sroa.339.0.copyload.i = load i32, ptr %.sroa.339.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %.sroa.440.0.copyload.i = load i32, ptr %.sroa.440.0..sroa_idx.i, align 4, !tbaa !342 ; 2 uses
  %.sroa.541.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 36
  %.sroa.541.0.copyload.i = load i32, ptr %.sroa.541.0..sroa_idx.i, align 4, !tbaa !215
  %i.ce = icmp ult i32 %.sroa.042.0.copyload.i, %.sroa.037.0.copyload.i156
  br i1 %i.ce, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i163", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cf = icmp ult i32 %.sroa.037.0.copyload.i156, %.sroa.042.0.copyload.i
  br i1 %i.cf, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread64.i", label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i.i157

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i.i157: ; preds = %bb.x
  %i.cg = icmp ult i32 %.sroa.243.0.copyload.i, %.sroa.238.0.copyload.i
  br i1 %i.cg, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i163", label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i.i158

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i.i158: ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i.i157
  %i.ch = icmp ult i32 %.sroa.238.0.copyload.i, %.sroa.243.0.copyload.i
  br i1 %i.ch, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread64.i", label %.lr.ph.i.i.i.1.i.i.i.i.i159

.lr.ph.i.i.i.1.i.i.i.i.i159:                      ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i.i158
  %i.ci = icmp ult i32 %.sroa.344.0.copyload.i, %.sroa.339.0.copyload.i
  br i1 %i.ci, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i163", label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i.1.i.i.i.i.i159
  %i.cj = icmp ult i32 %.sroa.339.0.copyload.i, %.sroa.344.0.copyload.i
  br i1 %i.cj, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread64.i", label %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i.i160

_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i.i160: ; preds = %bb.y
  %i.ck = icmp ult i32 %.sroa.445.0.copyload.i, %.sroa.440.0.copyload.i
  br i1 %i.ck, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i163", label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.i161"

"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.i161": ; preds = %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i.i160
  %i.cl = icmp uge i32 %.sroa.440.0.copyload.i, %.sroa.445.0.copyload.i
  %i.cm = icmp ult i32 %.sroa.546.0.copyload.i, %.sroa.541.0.copyload.i
  %spec.select.i.i162 = select i1 %i.cl, i1 %i.cm, i1 false
  br i1 %spec.select.i.i162, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i163", label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread64.i"

"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i163": ; preds = %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.i161", %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i.i160, %.lr.ph.i.i.i.1.i.i.i.i.i159, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i.i157, %bb.w
  br label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread64.i"

"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread64.i": ; preds = %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i163", %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.i161", %bb.y, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i.i158, %bb.x, %bb.v
  %.059.i = phi ptr [ %i.cd, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i163" ], [ %i.ca, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.i161" ], [ %i.ca, %bb.v ], [ %i.ca, %bb.y ], [ %i.ca, %bb.x ], [ %i.ca, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i.i158 ] ; 8 uses
  %.0.i141 = phi i64 [ %i.cb, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i163" ], [ %i.bz, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.i161" ], [ %i.bz, %bb.v ], [ %i.bz, %bb.y ], [ %i.bz, %bb.x ], [ %i.bz, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i.i158 ] ; 2 uses
  %.sroa.032.0.copyload.i = load i32, ptr %.059.i, align 4 ; 2 uses
  %.sroa.233.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.059.i, i64 4
  %.sroa.233.0.copyload.i = load i32, ptr %.sroa.233.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.334.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.059.i, i64 8
  %.sroa.334.0.copyload.i = load i32, ptr %.sroa.334.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.059.i, i64 12
  %.sroa.435.0.copyload.i = load i32, ptr %.sroa.435.0..sroa_idx.i, align 4, !tbaa !342 ; 2 uses
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.059.i, i64 16
  %.sroa.536.0.copyload.i = load i32, ptr %.sroa.536.0..sroa_idx.i, align 4, !tbaa !215
  %.sroa.027.0.copyload.i142 = load i32, ptr %i.bx, align 4 ; 5 uses
  %.sroa.228.0..sroa_idx.i143 = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %.sroa.228.0.copyload.i144 = load i32, ptr %.sroa.228.0..sroa_idx.i143, align 4 ; 5 uses
  %.sroa.329.0..sroa_idx.i145 = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.329.0.copyload.i146 = load i32, ptr %.sroa.329.0..sroa_idx.i145, align 4 ; 5 uses
  %.sroa.430.0..sroa_idx.i147 = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  %.sroa.430.0.copyload.i148 = load i32, ptr %.sroa.430.0..sroa_idx.i147, align 4, !tbaa !342 ; 5 uses
  %.sroa.531.0..sroa_idx.i149 = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %.sroa.531.0.copyload.i150 = load i32, ptr %.sroa.531.0..sroa_idx.i149, align 4, !tbaa !215 ; 3 uses
  %i.cn = icmp ult i32 %.sroa.032.0.copyload.i, %.sroa.027.0.copyload.i142
  br i1 %i.cn, label %"_ZNSt3__111__sift_downB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_OT0_NS_15iterator_traitsISA_E15difference_typeESA_.exit", label %bb.z

bb.z:                                             ; preds = %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread64.i"
  %i.co = icmp ult i32 %.sroa.027.0.copyload.i142, %.sroa.032.0.copyload.i
  br i1 %i.co, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit47.thread68.i", label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i40.i

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i40.i: ; preds = %bb.z
  %i.cp = icmp ult i32 %.sroa.233.0.copyload.i, %.sroa.228.0.copyload.i144
  br i1 %i.cp, label %"_ZNSt3__111__sift_downB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_OT0_NS_15iterator_traitsISA_E15difference_typeESA_.exit", label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i41.i

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i41.i: ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i40.i
  %i.cq = icmp ult i32 %.sroa.228.0.copyload.i144, %.sroa.233.0.copyload.i
  br i1 %i.cq, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit47.thread68.i", label %.lr.ph.i.i.i.1.i.i.i.i42.i

.lr.ph.i.i.i.1.i.i.i.i42.i:                       ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i41.i
  %i.cr = icmp ult i32 %.sroa.334.0.copyload.i, %.sroa.329.0.copyload.i146
  br i1 %i.cr, label %"_ZNSt3__111__sift_downB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_OT0_NS_15iterator_traitsISA_E15difference_typeESA_.exit", label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i.1.i.i.i.i42.i
  %i.cs = icmp ult i32 %.sroa.329.0.copyload.i146, %.sroa.334.0.copyload.i
  br i1 %i.cs, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit47.thread68.i", label %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i43.i

_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i43.i: ; preds = %bb.aa
  %i.ct = icmp ult i32 %.sroa.435.0.copyload.i, %.sroa.430.0.copyload.i148
  br i1 %i.ct, label %"_ZNSt3__111__sift_downB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_OT0_NS_15iterator_traitsISA_E15difference_typeESA_.exit", label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit47.i"

"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit47.i": ; preds = %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i43.i
  %i.cu = icmp uge i32 %.sroa.430.0.copyload.i148, %.sroa.435.0.copyload.i
  %i.cv = icmp ult i32 %.sroa.536.0.copyload.i, %.sroa.531.0.copyload.i150
  %spec.select.i45.i = select i1 %i.cu, i1 %i.cv, i1 false
  br i1 %spec.select.i45.i, label %"_ZNSt3__111__sift_downB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_OT0_NS_15iterator_traitsISA_E15difference_typeESA_.exit", label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit47.thread68.i"

"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit47.thread68.i": ; preds = %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit47.i", %bb.aa, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i41.i, %bb.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bx, ptr noundef nonnull align 4 dereferenceable(20) %.059.i, i64 20, i1 false), !tbaa.struct !415
  %i.cw = icmp slt i64 %i.bw, %.0.i141
  br i1 %i.cw, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit91.thread.i", label %.lr.ph.i151

.lr.ph.i151:                                      ; preds = %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit47.thread68.i", %.backedge.i155
  %.176.i = phi i64 [ %.2.i152, %.backedge.i155 ], [ %.0.i141, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit47.thread68.i" ]
  %.16075.i = phi ptr [ %.261.i, %.backedge.i155 ], [ %.059.i, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit47.thread68.i" ] ; 6 uses
  %i.cx = shl nsw i64 %.176.i, 1                  ; 2 uses
  %i.cy = or disjoint i64 %i.cx, 1                ; 6 uses
  %i.cz = getelementptr inbounds [20 x i8], ptr %.036, i64 %i.cy ; 15 uses
  %i.da = add nsw i64 %i.cx, 2                    ; 2 uses
  %i.db = icmp slt i64 %i.da, %i.l
  br i1 %i.db, label %bb.ab, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit69.thread72.i"

bb.ab:                                            ; preds = %.lr.ph.i151
  %.sroa.011.0.copyload.i = load i32, ptr %i.cz, align 4 ; 2 uses
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %.sroa.212.0.copyload.i = load i32, ptr %.sroa.212.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.313.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %.sroa.313.0.copyload.i = load i32, ptr %.sroa.313.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 12
  %.sroa.414.0.copyload.i = load i32, ptr %.sroa.414.0..sroa_idx.i, align 4, !tbaa !342 ; 2 uses
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %.sroa.515.0.copyload.i = load i32, ptr %.sroa.515.0..sroa_idx.i, align 4, !tbaa !215
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 20 ; 2 uses
  %.sroa.06.0.copyload.i = load i32, ptr %i.dc, align 4 ; 2 uses
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %.sroa.27.0.copyload.i = load i32, ptr %.sroa.27.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.38.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 28
  %.sroa.38.0.copyload.i = load i32, ptr %.sroa.38.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %.sroa.49.0.copyload.i = load i32, ptr %.sroa.49.0..sroa_idx.i, align 4, !tbaa !342 ; 2 uses
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 36
  %.sroa.510.0.copyload.i = load i32, ptr %.sroa.510.0..sroa_idx.i, align 4, !tbaa !215
  %i.dd = icmp ult i32 %.sroa.011.0.copyload.i, %.sroa.06.0.copyload.i
  br i1 %i.dd, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit69.thread.i", label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.de = icmp ult i32 %.sroa.06.0.copyload.i, %.sroa.011.0.copyload.i
  br i1 %i.de, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit69.thread72.i", label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i62.i

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i62.i: ; preds = %bb.ac
  %i.df = icmp ult i32 %.sroa.212.0.copyload.i, %.sroa.27.0.copyload.i
  br i1 %i.df, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit69.thread.i", label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i63.i

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i63.i: ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i62.i
  %i.dg = icmp ult i32 %.sroa.27.0.copyload.i, %.sroa.212.0.copyload.i
  br i1 %i.dg, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit69.thread72.i", label %.lr.ph.i.i.i.1.i.i.i.i64.i

.lr.ph.i.i.i.1.i.i.i.i64.i:                       ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i63.i
  %i.dh = icmp ult i32 %.sroa.313.0.copyload.i, %.sroa.38.0.copyload.i
  br i1 %i.dh, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit69.thread.i", label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.1.i.i.i.i64.i
  %i.di = icmp ult i32 %.sroa.38.0.copyload.i, %.sroa.313.0.copyload.i
  br i1 %i.di, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit69.thread72.i", label %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i65.i

_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i65.i: ; preds = %bb.ad
  %i.dj = icmp ult i32 %.sroa.414.0.copyload.i, %.sroa.49.0.copyload.i
  br i1 %i.dj, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit69.thread.i", label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit69.i"

"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit69.i": ; preds = %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i65.i
  %i.dk = icmp uge i32 %.sroa.49.0.copyload.i, %.sroa.414.0.copyload.i
  %i.dl = icmp ult i32 %.sroa.515.0.copyload.i, %.sroa.510.0.copyload.i
  %spec.select.i67.i = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %spec.select.i67.i, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit69.thread.i", label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit69.thread72.i"

"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit69.thread.i": ; preds = %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit69.i", %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i65.i, %.lr.ph.i.i.i.1.i.i.i.i64.i, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i62.i, %bb.ab
  br label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit69.thread72.i"

"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit69.thread72.i": ; preds = %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit69.thread.i", %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit69.i", %bb.ad, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i63.i, %bb.ac, %.lr.ph.i151
  %.261.i = phi ptr [ %i.dc, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit69.thread.i" ], [ %i.cz, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit69.i" ], [ %i.cz, %.lr.ph.i151 ], [ %i.cz, %bb.ad ], [ %i.cz, %bb.ac ], [ %i.cz, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i63.i ] ; 8 uses
  %.2.i152 = phi i64 [ %i.da, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit69.thread.i" ], [ %i.cy, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit69.i" ], [ %i.cy, %.lr.ph.i151 ], [ %i.cy, %bb.ad ], [ %i.cy, %bb.ac ], [ %i.cy, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i63.i ] ; 2 uses
end_hunk_0
begin_hunk_1_@"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoELb0EEEvT1_SA_T0_NS_15iterator_traitsISA_E15difference_typeEb":bb.a
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr i8, ptr %i.ea, i64 48
  %.sroa.3.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr i8, ptr %i.ea, i64 52
  %.sroa.4.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 4, !tbaa !342 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr i8, ptr %i.ea, i64 56
  %.sroa.5.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 4, !tbaa !215
  %i.eh = icmp ult i32 %.sroa.01.0.copyload.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %i.eh, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i.i.i.i.i", label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ei = icmp ult i32 %.sroa.0.0.copyload.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i
  br i1 %i.ei, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread14.i.i.i.i.i", label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ai
  %i.ej = icmp ult i32 %.sroa.22.0.copyload.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i
  br i1 %i.ej, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i.i.i.i.i", label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ek = icmp ult i32 %.sroa.2.0.copyload.i.i.i.i.i, %.sroa.22.0.copyload.i.i.i.i.i
  br i1 %i.ek, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread14.i.i.i.i.i", label %.lr.ph.i.i.i.1.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.1.i.i.i.i.i.i.i.i.i:                 ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i.i.i.i.i.i
  %i.el = icmp ult i32 %.sroa.33.0.copyload.i.i.i.i.i, %.sroa.3.0.copyload.i.i.i.i.i
  br i1 %i.el, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i.i.i.i.i", label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i.i.1.i.i.i.i.i.i.i.i.i
  %i.em = icmp ult i32 %.sroa.3.0.copyload.i.i.i.i.i, %.sroa.33.0.copyload.i.i.i.i.i
  br i1 %i.em, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread14.i.i.i.i.i", label %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i.i.i.i.i.i

_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.aj
  %i.en = icmp ult i32 %.sroa.44.0.copyload.i.i.i.i.i, %.sroa.4.0.copyload.i.i.i.i.i
  br i1 %i.en, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i.i.i.i.i", label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.i.i.i.i.i"

"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.i.i.i.i.i": ; preds = %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i.i.i.i.i.i
  %i.eo = icmp uge i32 %.sroa.4.0.copyload.i.i.i.i.i, %.sroa.44.0.copyload.i.i.i.i.i
  %i.ep = icmp ult i32 %.sroa.55.0.copyload.i.i.i.i.i, %.sroa.5.0.copyload.i.i.i.i.i
  %spec.select.i.i.i.i.i.i = select i1 %i.eo, i1 %i.ep, i1 false
  br i1 %spec.select.i.i.i.i.i.i, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i.i.i.i.i", label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread14.i.i.i.i.i"

"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i.i.i.i.i": ; preds = %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.i.i.i.i.i", %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.1.i.i.i.i.i.i.i.i.i, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ah
  br label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread14.i.i.i.i.i"

"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread14.i.i.i.i.i": ; preds = %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i.i.i.i.i", %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.i.i.i.i.i", %bb.aj, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ai, %bb.ag
  %.111.i.i.i.i.i = phi ptr [ %i.eg, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i.i.i.i.i" ], [ %i.eb, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.i.i.i.i.i" ], [ %i.eb, %bb.ag ], [ %i.eb, %bb.aj ], [ %i.eb, %bb.ai ], [ %i.eb, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i.i.i.i.i.i ] ; 12 uses
  %.1.i.i.i.i.i = phi i64 [ %i.ee, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i.i.i.i.i" ], [ %i.ed, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.i.i.i.i.i" ], [ %i.ed, %bb.ag ], [ %i.ed, %bb.aj ], [ %i.ed, %bb.ai ], [ %i.ed, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.010.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.111.i.i.i.i.i, i64 20, i1 false), !tbaa.struct !415
  %i.eq = icmp sgt i64 %.1.i.i.i.i.i, %i.dz
  br i1 %i.eq, label %"_ZNSt3__117__floyd_sift_downB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEET1_SA_OT0_NS_15iterator_traitsISA_E15difference_typeE.exit.i.i.i.i", label %bb.ag, !llvm.loop !1240

"_ZNSt3__117__floyd_sift_downB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEET1_SA_OT0_NS_15iterator_traitsISA_E15difference_typeE.exit.i.i.i.i": ; preds = %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread14.i.i.i.i.i"
  %i.er = getelementptr inbounds i8, ptr %.0131.i.i.i, i64 -20 ; 4 uses
  %i.es = icmp eq ptr %.111.i.i.i.i.i, %i.er
  br i1 %i.es, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %"_ZNSt3__117__floyd_sift_downB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEET1_SA_OT0_NS_15iterator_traitsISA_E15difference_typeE.exit.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.111.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %7, i64 20, i1 false), !tbaa.struct !415
  br label %"_ZNSt3__110__pop_heapB8nn180100INS_17_ClassicAlgPolicyEZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_S9_RT0_NS_15iterator_traitsIS9_E15difference_typeE.exit.i.i.i"

bb.al:                                            ; preds = %"_ZNSt3__117__floyd_sift_downB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEET1_SA_OT0_NS_15iterator_traitsISA_E15difference_typeE.exit.i.i.i.i"
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.111.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %i.er, i64 20, i1 false), !tbaa.struct !415
  %i.et = getelementptr inbounds nuw i8, ptr %.111.i.i.i.i.i, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.er, ptr noundef nonnull align 4 dereferenceable(20) %7, i64 20, i1 false), !tbaa.struct !415
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = sub i64 %i.eu, %i.j                     ; 2 uses
  %i.ew = icmp sgt i64 %i.ev, 20
  br i1 %i.ew, label %bb.am, label %"_ZNSt3__110__pop_heapB8nn180100INS_17_ClassicAlgPolicyEZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_S9_RT0_NS_15iterator_traitsIS9_E15difference_typeE.exit.i.i.i"

bb.am:                                            ; preds = %bb.al
  %i.ex = udiv exact i64 %i.ev, 20
  %i.ey = add nsw i64 %i.ex, -2
  %i.ez = lshr i64 %i.ey, 1                       ; 3 uses
  %i.fa = getelementptr inbounds nuw [20 x i8], ptr %.036, i64 %i.ez ; 8 uses
  %.sroa.022.0.copyload.i.i.i.i.i = load i32, ptr %i.fa, align 4 ; 2 uses
  %.sroa.223.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  %.sroa.223.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.223.0..sroa_idx.i.i.i.i.i, align 4 ; 2 uses
  %.sroa.324.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %.sroa.324.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.324.0..sroa_idx.i.i.i.i.i, align 4 ; 2 uses
  %.sroa.425.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fa, i64 12
  %.sroa.425.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.425.0..sroa_idx.i.i.i.i.i, align 4, !tbaa !342 ; 2 uses
  %.sroa.526.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %.sroa.526.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.526.0..sroa_idx.i.i.i.i.i, align 4, !tbaa !215
  %.sroa.017.0.copyload.i.i.i.i.i = load i32, ptr %.111.i.i.i.i.i, align 4 ; 5 uses
  %.sroa.218.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.111.i.i.i.i.i, i64 4
  %.sroa.218.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.218.0..sroa_idx.i.i.i.i.i, align 4 ; 5 uses
  %.sroa.319.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.111.i.i.i.i.i, i64 8
  %.sroa.319.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.319.0..sroa_idx.i.i.i.i.i, align 4 ; 5 uses
  %.sroa.420.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.111.i.i.i.i.i, i64 12
  %.sroa.420.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.420.0..sroa_idx.i.i.i.i.i, align 4, !tbaa !342 ; 5 uses
  %.sroa.521.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.111.i.i.i.i.i, i64 16
  %.sroa.521.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.521.0..sroa_idx.i.i.i.i.i, align 4, !tbaa !215 ; 3 uses
  %i.fb = icmp ult i32 %.sroa.022.0.copyload.i.i.i.i.i, %.sroa.017.0.copyload.i.i.i.i.i
  br i1 %i.fb, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i17.i.i.i.i", label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fc = icmp ult i32 %.sroa.017.0.copyload.i.i.i.i.i, %.sroa.022.0.copyload.i.i.i.i.i
  br i1 %i.fc, label %"_ZNSt3__110__pop_heapB8nn180100INS_17_ClassicAlgPolicyEZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_S9_RT0_NS_15iterator_traitsIS9_E15difference_typeE.exit.i.i.i", label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i.i11.i.i.i.i

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i.i11.i.i.i.i: ; preds = %bb.an
  %i.fd = icmp ult i32 %.sroa.223.0.copyload.i.i.i.i.i, %.sroa.218.0.copyload.i.i.i.i.i
  br i1 %i.fd, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i17.i.i.i.i", label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i.i12.i.i.i.i

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i.i12.i.i.i.i: ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i.i11.i.i.i.i
  %i.fe = icmp ult i32 %.sroa.218.0.copyload.i.i.i.i.i, %.sroa.223.0.copyload.i.i.i.i.i
  br i1 %i.fe, label %"_ZNSt3__110__pop_heapB8nn180100INS_17_ClassicAlgPolicyEZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_S9_RT0_NS_15iterator_traitsIS9_E15difference_typeE.exit.i.i.i", label %.lr.ph.i.i.i.1.i.i.i.i.i13.i.i.i.i

.lr.ph.i.i.i.1.i.i.i.i.i13.i.i.i.i:               ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i.i12.i.i.i.i
  %i.ff = icmp ult i32 %.sroa.324.0.copyload.i.i.i.i.i, %.sroa.319.0.copyload.i.i.i.i.i
  br i1 %i.ff, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i17.i.i.i.i", label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i.i.i.1.i.i.i.i.i13.i.i.i.i
  %i.fg = icmp ult i32 %.sroa.319.0.copyload.i.i.i.i.i, %.sroa.324.0.copyload.i.i.i.i.i
  br i1 %i.fg, label %"_ZNSt3__110__pop_heapB8nn180100INS_17_ClassicAlgPolicyEZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_S9_RT0_NS_15iterator_traitsIS9_E15difference_typeE.exit.i.i.i", label %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i.i14.i.i.i.i

_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i.i14.i.i.i.i: ; preds = %bb.ao
  %i.fh = icmp ult i32 %.sroa.425.0.copyload.i.i.i.i.i, %.sroa.420.0.copyload.i.i.i.i.i
  br i1 %i.fh, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i17.i.i.i.i", label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.i15.i.i.i.i"

"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.i15.i.i.i.i": ; preds = %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i.i14.i.i.i.i
  %i.fi = icmp uge i32 %.sroa.420.0.copyload.i.i.i.i.i, %.sroa.425.0.copyload.i.i.i.i.i
  %i.fj = icmp ult i32 %.sroa.526.0.copyload.i.i.i.i.i, %.sroa.521.0.copyload.i.i.i.i.i
  %spec.select.i.i16.i.i.i.i = select i1 %i.fi, i1 %i.fj, i1 false
  br i1 %spec.select.i.i16.i.i.i.i, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i17.i.i.i.i", label %"_ZNSt3__110__pop_heapB8nn180100INS_17_ClassicAlgPolicyEZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_S9_RT0_NS_15iterator_traitsIS9_E15difference_typeE.exit.i.i.i"

"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i17.i.i.i.i": ; preds = %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.i15.i.i.i.i", %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i.i14.i.i.i.i, %.lr.ph.i.i.i.1.i.i.i.i.i13.i.i.i.i, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i.i11.i.i.i.i, %bb.am
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.111.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %i.fa, i64 20, i1 false), !tbaa.struct !415
  %i.fk = icmp eq i64 %i.ez, 0
  br i1 %i.fk, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit31.thread.i.i.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i17.i.i.i.i", %.backedge.i.i.i.i.i
  %.040.i.i.i.i.i = phi i64 [ %i.fm, %.backedge.i.i.i.i.i ], [ %i.ez, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i17.i.i.i.i" ]
  %.03339.i.i.i.i.i = phi ptr [ %i.fn, %.backedge.i.i.i.i.i ], [ %i.fa, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i17.i.i.i.i" ] ; 5 uses
  %i.fl = add nsw i64 %.040.i.i.i.i.i, -1
  %i.fm = lshr i64 %i.fl, 1                       ; 3 uses
  %i.fn = getelementptr inbounds nuw [20 x i8], ptr %.036, i64 %i.fm ; 8 uses
  %.sroa.01.0.copyload.i18.i.i.i.i = load i32, ptr %i.fn, align 4 ; 2 uses
  %.sroa.22.0..sroa_idx.i19.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %.sroa.22.0.copyload.i20.i.i.i.i = load i32, ptr %.sroa.22.0..sroa_idx.i19.i.i.i.i, align 4 ; 2 uses
  %.sroa.33.0..sroa_idx.i21.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %.sroa.33.0.copyload.i22.i.i.i.i = load i32, ptr %.sroa.33.0..sroa_idx.i21.i.i.i.i, align 4 ; 2 uses
  %.sroa.44.0..sroa_idx.i23.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 12
  %.sroa.44.0.copyload.i24.i.i.i.i = load i32, ptr %.sroa.44.0..sroa_idx.i23.i.i.i.i, align 4, !tbaa !342 ; 2 uses
  %.sroa.55.0..sroa_idx.i25.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %.sroa.55.0.copyload.i26.i.i.i.i = load i32, ptr %.sroa.55.0..sroa_idx.i25.i.i.i.i, align 4, !tbaa !215
  %i.fo = icmp ult i32 %.sroa.01.0.copyload.i18.i.i.i.i, %.sroa.017.0.copyload.i.i.i.i.i
  br i1 %i.fo, label %.backedge.i.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.fp = icmp ult i32 %.sroa.017.0.copyload.i.i.i.i.i, %.sroa.01.0.copyload.i18.i.i.i.i
  br i1 %i.fp, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit31.thread.i.i.i.i.i", label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i24.i.i.i.i.i

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i24.i.i.i.i.i: ; preds = %bb.ap
  %i.fq = icmp ult i32 %.sroa.22.0.copyload.i20.i.i.i.i, %.sroa.218.0.copyload.i.i.i.i.i
  br i1 %i.fq, label %.backedge.i.i.i.i.i, label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i25.i.i.i.i.i

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i25.i.i.i.i.i: ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i24.i.i.i.i.i
  %i.fr = icmp ult i32 %.sroa.218.0.copyload.i.i.i.i.i, %.sroa.22.0.copyload.i20.i.i.i.i
  br i1 %i.fr, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit31.thread.i.i.i.i.i", label %.lr.ph.i.i.i.1.i.i.i.i26.i.i.i.i.i

.lr.ph.i.i.i.1.i.i.i.i26.i.i.i.i.i:               ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i25.i.i.i.i.i
  %i.fs = icmp ult i32 %.sroa.33.0.copyload.i22.i.i.i.i, %.sroa.319.0.copyload.i.i.i.i.i
  br i1 %i.fs, label %.backedge.i.i.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i.i.1.i.i.i.i26.i.i.i.i.i
  %i.ft = icmp ult i32 %.sroa.319.0.copyload.i.i.i.i.i, %.sroa.33.0.copyload.i22.i.i.i.i
  br i1 %i.ft, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit31.thread.i.i.i.i.i", label %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i27.i.i.i.i.i

_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i27.i.i.i.i.i: ; preds = %bb.aq
  %i.fu = icmp ult i32 %.sroa.44.0.copyload.i24.i.i.i.i, %.sroa.420.0.copyload.i.i.i.i.i
  br i1 %i.fu, label %.backedge.i.i.i.i.i, label %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit18.i.i.i28.i.i.i.i.i

_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit18.i.i.i28.i.i.i.i.i: ; preds = %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i27.i.i.i.i.i
  %i.fv = icmp uge i32 %.sroa.420.0.copyload.i.i.i.i.i, %.sroa.44.0.copyload.i24.i.i.i.i
  %i.fw = icmp ult i32 %.sroa.55.0.copyload.i26.i.i.i.i, %.sroa.521.0.copyload.i.i.i.i.i
  %spec.select.i29.i.i.i.i.i = select i1 %i.fv, i1 %i.fw, i1 false
  br i1 %spec.select.i29.i.i.i.i.i, label %.backedge.i.i.i.i.i, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit31.thread.i.i.i.i.i"

.backedge.i.i.i.i.i:                              ; preds = %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit18.i.i.i28.i.i.i.i.i, %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i27.i.i.i.i.i, %.lr.ph.i.i.i.1.i.i.i.i26.i.i.i.i.i, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i24.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.03339.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %i.fn, i64 20, i1 false), !tbaa.struct !415
  %i.fx = icmp eq i64 %i.fm, 0
  br i1 %i.fx, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit31.thread.i.i.i.i.i", label %.lr.ph.i.i.i.i.i, !llvm.loop !1241

"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit31.thread.i.i.i.i.i": ; preds = %.backedge.i.i.i.i.i, %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit18.i.i.i28.i.i.i.i.i, %bb.aq, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i25.i.i.i.i.i, %bb.ap, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i17.i.i.i.i"
  %.033.lcssa.i.i.i.i.i = phi ptr [ %i.fa, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i17.i.i.i.i" ], [ %i.fn, %.backedge.i.i.i.i.i ], [ %.03339.i.i.i.i.i, %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit18.i.i.i28.i.i.i.i.i ], [ %.03339.i.i.i.i.i, %bb.aq ], [ %.03339.i.i.i.i.i, %bb.ap ], [ %.03339.i.i.i.i.i, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i25.i.i.i.i.i ] ; 5 uses
  store i32 %.sroa.017.0.copyload.i.i.i.i.i, ptr %.033.lcssa.i.i.i.i.i, align 4
  %.sroa.58.0..sroa_idx9.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.033.lcssa.i.i.i.i.i, i64 4
  store i32 %.sroa.218.0.copyload.i.i.i.i.i, ptr %.sroa.58.0..sroa_idx9.i.i.i.i.i, align 4
  %.sroa.6.0..sroa_idx11.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.033.lcssa.i.i.i.i.i, i64 8
  store i32 %.sroa.319.0.copyload.i.i.i.i.i, ptr %.sroa.6.0..sroa_idx11.i.i.i.i.i, align 4
  %.sroa.7.0..sroa_idx13.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.033.lcssa.i.i.i.i.i, i64 12
  store i32 %.sroa.420.0.copyload.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx13.i.i.i.i.i, align 4, !tbaa !342
  %.sroa.8.0..sroa_idx15.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.033.lcssa.i.i.i.i.i, i64 16
  store i32 %.sroa.521.0.copyload.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx15.i.i.i.i.i, align 4, !tbaa !215
  br label %"_ZNSt3__110__pop_heapB8nn180100INS_17_ClassicAlgPolicyEZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_S9_RT0_NS_15iterator_traitsIS9_E15difference_typeE.exit.i.i.i"

"_ZNSt3__110__pop_heapB8nn180100INS_17_ClassicAlgPolicyEZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_S9_RT0_NS_15iterator_traitsIS9_E15difference_typeE.exit.i.i.i": ; preds = %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit31.thread.i.i.i.i.i", %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.i15.i.i.i.i", %bb.ao, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i.i12.i.i.i.i, %bb.an, %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.fy = add nsw i64 %.02.i.i.i, -1
  %i.fz = icmp sgt i64 %.02.i.i.i, 2
  br i1 %i.fz, label %.lr.ph.i.i.i, label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit.thread", !llvm.loop !1242

bb.ar:                                            ; preds = %9
  %i.ga = add nsw i64 %.046, -1                   ; 4 uses
  %i.gb = lshr i64 %i.l, 1
  %i.gc = icmp samesign ugt i64 %i.k, 2560
  %i.gd = getelementptr [20 x i8], ptr %.036, i64 %i.gb ; 7 uses
  br i1 %i.gc, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  tail call fastcc void @"_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEjT1_SA_SA_T0_"(ptr noundef %.036, ptr noundef %i.gd, ptr noundef nonnull %i.c) #26
  %i.ge = getelementptr inbounds nuw i8, ptr %.036, i64 20
  %i.gf = getelementptr i8, ptr %i.gd, i64 -20    ; 2 uses
  tail call fastcc void @"_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEjT1_SA_SA_T0_"(ptr noundef nonnull %i.ge, ptr noundef %i.gf, ptr noundef nonnull %i.d) #26
  %i.gg = getelementptr inbounds nuw i8, ptr %.036, i64 40
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 20 ; 2 uses
  tail call fastcc void @"_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEjT1_SA_SA_T0_"(ptr noundef nonnull %i.gg, ptr noundef nonnull %i.gh, ptr noundef nonnull %i.e) #26
  tail call fastcc void @"_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEjT1_SA_SA_T0_"(ptr noundef %i.gf, ptr noundef %i.gd, ptr noundef nonnull %i.gh) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) %.036, i64 20, i1 false), !tbaa.struct !415
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.036, ptr noundef nonnull align 4 dereferenceable(20) %i.gd, i64 20, i1 false), !tbaa.struct !415
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.gd, ptr noundef nonnull align 4 dereferenceable(20) %6, i64 20, i1 false), !tbaa.struct !415
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  tail call fastcc void @"_ZNSt3__17__sort3B8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEjT1_SA_SA_T0_"(ptr noundef %i.gd, ptr noundef %.036, ptr noundef nonnull %i.c) #26
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.sroa.048.0.copyload.i.pre = load i32, ptr %.036, align 4 ; 31 uses
  br i1 %i.i, label %"._ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit105.thread_crit_edge", label %bb.av

"._ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit105.thread_crit_edge": ; preds = %bb.au
  %.sroa.9.0..sroa_idx.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.036, i64 4
  %.sroa.9.0.copyload.i.pre = load i32, ptr %.sroa.9.0..sroa_idx.i.phi.trans.insert, align 4
  %.sroa.14.0..sroa_idx.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.036, i64 8
  %.sroa.14.0.copyload.i.pre = load i32, ptr %.sroa.14.0..sroa_idx.i.phi.trans.insert, align 4
  %.sroa.19.0..sroa_idx.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.036, i64 12
  %.sroa.19.0.copyload.i.pre = load i32, ptr %.sroa.19.0..sroa_idx.i.phi.trans.insert, align 4, !tbaa !342
  %.sroa.2453.0..sroa_idx.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.036, i64 16
  %.sroa.2453.0.copyload.i.pre = load i32, ptr %.sroa.2453.0..sroa_idx.i.phi.trans.insert, align 4, !tbaa !215
  br label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit105.thread"

bb.av:                                            ; preds = %bb.au
  %i.gi = getelementptr inbounds i8, ptr %.036, i64 -20
  %.sroa.01.0.copyload = load i32, ptr %i.gi, align 4 ; 2 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds i8, ptr %.036, i64 -16
  %.sroa.22.0.copyload = load i32, ptr %.sroa.22.0..sroa_idx, align 4 ; 2 uses
  %.sroa.33.0..sroa_idx = getelementptr inbounds i8, ptr %.036, i64 -12
  %.sroa.33.0.copyload = load i32, ptr %.sroa.33.0..sroa_idx, align 4 ; 2 uses
  %.sroa.44.0..sroa_idx = getelementptr inbounds i8, ptr %.036, i64 -8
  %.sroa.44.0.copyload = load i32, ptr %.sroa.44.0..sroa_idx, align 4, !tbaa !342 ; 2 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds i8, ptr %.036, i64 -4
  %.sroa.55.0.copyload = load i32, ptr %.sroa.55.0..sroa_idx, align 4, !tbaa !215
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.036, i64 4
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 4 ; 20 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.036, i64 8
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4 ; 20 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.036, i64 12
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !342 ; 20 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.036, i64 16
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !215 ; 13 uses
  %i.gj = icmp ult i32 %.sroa.01.0.copyload, %.sroa.048.0.copyload.i.pre
  br i1 %i.gj, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit105.thread", label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gk = icmp ult i32 %.sroa.048.0.copyload.i.pre, %.sroa.01.0.copyload
  br i1 %i.gk, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit105.thread49", label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i98

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i98: ; preds = %bb.aw
  %i.gl = icmp ult i32 %.sroa.22.0.copyload, %.sroa.2.0.copyload
  br i1 %i.gl, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit105.thread", label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i99

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i99: ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i98
  %i.gm = icmp ult i32 %.sroa.2.0.copyload, %.sroa.22.0.copyload
  br i1 %i.gm, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit105.thread49", label %.lr.ph.i.i.i.1.i.i.i.i100

.lr.ph.i.i.i.1.i.i.i.i100:                        ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i99
  %i.gn = icmp ult i32 %.sroa.33.0.copyload, %.sroa.3.0.copyload
  br i1 %i.gn, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit105.thread", label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i.i.i.1.i.i.i.i100
  %i.go = icmp ult i32 %.sroa.3.0.copyload, %.sroa.33.0.copyload
  br i1 %i.go, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit105.thread49", label %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i101

_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i101: ; preds = %bb.ax
  %i.gp = icmp ult i32 %.sroa.44.0.copyload, %.sroa.4.0.copyload
  br i1 %i.gp, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit105.thread", label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit105"

"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit105": ; preds = %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i101
  %i.gq = icmp uge i32 %.sroa.4.0.copyload, %.sroa.44.0.copyload
  %i.gr = icmp ult i32 %.sroa.55.0.copyload, %.sroa.5.0.copyload
  %spec.select.i103 = select i1 %i.gq, i1 %i.gr, i1 false
  br i1 %spec.select.i103, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit105.thread", label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit105.thread49"

"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit105.thread49": ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i99, %bb.aw, %bb.ax, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit105"
  %.sroa.047.0.copyload.i = load i32, ptr %i.h, align 4 ; 3 uses
  %.sroa.248.0.copyload.i = load i32, ptr %.sroa.248.0..sroa_idx.i, align 4 ; 3 uses
  %.sroa.349.0.copyload.i = load i32, ptr %.sroa.349.0..sroa_idx.i, align 4 ; 3 uses
  %.sroa.450.0.copyload.i = load i32, ptr %.sroa.450.0..sroa_idx.i, align 4, !tbaa !342 ; 3 uses
  %.sroa.551.0.copyload.i = load i32, ptr %.sroa.551.0..sroa_idx.i, align 4, !tbaa !215 ; 2 uses
  %i.gs = icmp ult i32 %.sroa.048.0.copyload.i.pre, %.sroa.047.0.copyload.i
  br i1 %i.gs, label %.preheader99.i, label %bb.ay

bb.ay:                                            ; preds = %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit105.thread49"
  %i.gt = icmp ult i32 %.sroa.047.0.copyload.i, %.sroa.048.0.copyload.i.pre
  br i1 %i.gt, label %.preheader101.i, label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i.i106

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i.i106: ; preds = %bb.ay
  %i.gu = icmp ult i32 %.sroa.2.0.copyload, %.sroa.248.0.copyload.i
  br i1 %i.gu, label %.preheader99.i, label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i.i107

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i.i107: ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i.i106
  %i.gv = icmp ult i32 %.sroa.248.0.copyload.i, %.sroa.2.0.copyload
  br i1 %i.gv, label %.preheader101.i, label %.lr.ph.i.i.i.1.i.i.i.i.i108

.lr.ph.i.i.i.1.i.i.i.i.i108:                      ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i.i107
  %i.gw = icmp ult i32 %.sroa.3.0.copyload, %.sroa.349.0.copyload.i
  br i1 %i.gw, label %.preheader99.i, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i.i.i.1.i.i.i.i.i108
  %i.gx = icmp ult i32 %.sroa.349.0.copyload.i, %.sroa.3.0.copyload
  br i1 %i.gx, label %.preheader101.i, label %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i.i109

_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i.i109: ; preds = %bb.az
  %i.gy = icmp ult i32 %.sroa.4.0.copyload, %.sroa.450.0.copyload.i
  br i1 %i.gy, label %.preheader99.i, label %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit18.i.i.i.i

_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit18.i.i.i.i: ; preds = %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i.i109
  %i.gz = icmp uge i32 %.sroa.450.0.copyload.i, %.sroa.4.0.copyload
  %i.ha = icmp ult i32 %.sroa.5.0.copyload, %.sroa.551.0.copyload.i
  %spec.select.i.i110 = select i1 %i.gz, i1 %i.ha, i1 false
  br i1 %spec.select.i.i110, label %.preheader99.i, label %.preheader101.i

.preheader99.i:                                   ; preds = %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit18.i.i.i.i, %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i.i109, %.lr.ph.i.i.i.1.i.i.i.i.i108, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i.i106, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit105.thread49"
  %i.hb = getelementptr inbounds nuw i8, ptr %.036, i64 20 ; 3 uses
  %.sroa.037.0.copyload116.i = load i32, ptr %i.hb, align 4 ; 2 uses
  %i.hc = icmp ult i32 %.sroa.048.0.copyload.i.pre, %.sroa.037.0.copyload116.i
  br i1 %i.hc, label %.critedge.i111, label %.lr.ph130.i

.lr.ph130.i:                                      ; preds = %.preheader99.i, %.backedge100.i
  %.pn.i = phi ptr [ %i.hd, %.backedge100.i ], [ %.036, %.preheader99.i ] ; 4 uses
  %.sroa.037.0.copyload125.i = phi i32 [ %.sroa.037.0.copyload.i, %.backedge100.i ], [ %.sroa.037.0.copyload116.i, %.preheader99.i ]
  %i.hd = phi ptr [ %i.hm, %.backedge100.i ], [ %i.hb, %.preheader99.i ] ; 6 uses
  %.sroa.238.0.copyload126.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 24
  %.sroa.238.0.copyload126.i = load i32, ptr %.sroa.238.0.copyload126.in.i, align 4 ; 2 uses
  %.sroa.339.0.copyload127.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 28
  %.sroa.339.0.copyload127.i = load i32, ptr %.sroa.339.0.copyload127.in.i, align 4 ; 2 uses
  %.sroa.440.0.copyload128.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32
  %.sroa.440.0.copyload128.i = load i32, ptr %.sroa.440.0.copyload128.in.i, align 4, !tbaa !342 ; 2 uses
  %.sroa.541.0.copyload129.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 36
  %.sroa.541.0.copyload129.i = load i32, ptr %.sroa.541.0.copyload129.in.i, align 4, !tbaa !215
  %i.he = icmp ult i32 %.sroa.037.0.copyload125.i, %.sroa.048.0.copyload.i.pre
  br i1 %i.he, label %.backedge100.i, label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i22.i

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i22.i: ; preds = %.lr.ph130.i
  %i.hf = icmp ult i32 %.sroa.2.0.copyload, %.sroa.238.0.copyload126.i
  br i1 %i.hf, label %.critedge.i111, label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i23.i

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i23.i: ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i22.i
  %i.hg = icmp ult i32 %.sroa.238.0.copyload126.i, %.sroa.2.0.copyload
  br i1 %i.hg, label %.backedge100.i, label %.lr.ph.i.i.i.1.i.i.i.i24.i

.lr.ph.i.i.i.1.i.i.i.i24.i:                       ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i23.i
  %i.hh = icmp ult i32 %.sroa.3.0.copyload, %.sroa.339.0.copyload127.i
  br i1 %i.hh, label %.critedge.i111, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i.i.i.1.i.i.i.i24.i
  %i.hi = icmp ult i32 %.sroa.339.0.copyload127.i, %.sroa.3.0.copyload
  br i1 %i.hi, label %.backedge100.i, label %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i25.i

_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i25.i: ; preds = %bb.ba
  %i.hj = icmp ult i32 %.sroa.4.0.copyload, %.sroa.440.0.copyload128.i
  br i1 %i.hj, label %.critedge.i111, label %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit18.i.i.i26.i

_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit18.i.i.i26.i: ; preds = %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i25.i
  %i.hk = icmp uge i32 %.sroa.440.0.copyload128.i, %.sroa.4.0.copyload
  %i.hl = icmp ult i32 %.sroa.5.0.copyload, %.sroa.541.0.copyload129.i
  %spec.select.i27.i = select i1 %i.hk, i1 %i.hl, i1 false
  br i1 %spec.select.i27.i, label %.critedge.i111, label %.backedge100.i

.backedge100.i:                                   ; preds = %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit18.i.i.i26.i, %bb.ba, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i23.i, %.lr.ph130.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hd, i64 20 ; 3 uses
  %.sroa.037.0.copyload.i = load i32, ptr %i.hm, align 4 ; 2 uses
  %i.hn = icmp ult i32 %.sroa.048.0.copyload.i.pre, %.sroa.037.0.copyload.i
  br i1 %i.hn, label %.critedge.i111, label %.lr.ph130.i, !llvm.loop !1243

.preheader101.i:                                  ; preds = %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit18.i.i.i.i, %bb.az, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i.i107, %bb.ay
  %i.ho = getelementptr inbounds nuw i8, ptr %.036, i64 20 ; 3 uses
  %i.hp = icmp ult ptr %i.ho, %.039.ph
  br i1 %i.hp, label %.lr.ph.i123, label %.critedge.i111

.lr.ph.i123:                                      ; preds = %.preheader101.i, %.backedge103.i
  %i.hq = phi ptr [ %i.ia, %.backedge103.i ], [ %i.ho, %.preheader101.i ] ; 8 uses
  %.1109.i = phi ptr [ %i.hq, %.backedge103.i ], [ %.036, %.preheader101.i ] ; 4 uses
  %.sroa.027.0.copyload.i = load i32, ptr %i.hq, align 4 ; 2 uses
  %.sroa.228.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.1109.i, i64 24
  %.sroa.228.0.copyload.i = load i32, ptr %.sroa.228.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.329.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.1109.i, i64 28
  %.sroa.329.0.copyload.i = load i32, ptr %.sroa.329.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.1109.i, i64 32
  %.sroa.430.0.copyload.i = load i32, ptr %.sroa.430.0..sroa_idx.i, align 4, !tbaa !342 ; 2 uses
end_hunk_1
begin_hunk_2_@"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoELb0EEEvT1_SA_T0_NS_15iterator_traitsISA_E15difference_typeEb":bb.a
  %.sroa.426.0.copyload105.i = load i32, ptr %.sroa.426.0.copyload105.in.i, align 4, !tbaa !342 ; 2 uses
  %.sroa.527.0.copyload106.in.i = getelementptr inbounds i8, ptr %.pn.i133, i64 -4
  %.sroa.527.0.copyload106.i = load i32, ptr %.sroa.527.0.copyload106.in.i, align 4, !tbaa !215
  %i.kp = icmp ult i32 %.sroa.048.0.copyload.i.pre, %.sroa.023.0.copyload102.i
  br i1 %i.kp, label %.backedge87.i, label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i47.i

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i47.i: ; preds = %.lr.ph.i132
  %i.kq = icmp ult i32 %.sroa.224.0.copyload103.i, %.sroa.9.0.copyload.i
  br i1 %i.kq, label %.critedge.i134, label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i48.i

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i48.i: ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i47.i
  %i.kr = icmp ult i32 %.sroa.9.0.copyload.i, %.sroa.224.0.copyload103.i
  br i1 %i.kr, label %.backedge87.i, label %.lr.ph.i.i.i.1.i.i.i.i49.i

.lr.ph.i.i.i.1.i.i.i.i49.i:                       ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i48.i
  %i.ks = icmp ult i32 %.sroa.325.0.copyload104.i, %.sroa.14.0.copyload.i
  br i1 %i.ks, label %.critedge.i134, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.i.i.i.1.i.i.i.i49.i
  %i.kt = icmp ult i32 %.sroa.14.0.copyload.i, %.sroa.325.0.copyload104.i
  br i1 %i.kt, label %.backedge87.i, label %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i50.i

_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i50.i: ; preds = %bb.bm
  %i.ku = icmp ult i32 %.sroa.426.0.copyload105.i, %.sroa.19.0.copyload.i
  br i1 %i.ku, label %.critedge.i134, label %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit18.i.i.i51.i

_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit18.i.i.i51.i: ; preds = %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i50.i
  %i.kv = icmp uge i32 %.sroa.19.0.copyload.i, %.sroa.426.0.copyload105.i
  %i.kw = icmp ult i32 %.sroa.527.0.copyload106.i, %.sroa.2453.0.copyload.i
  %spec.select.i52.i = select i1 %i.kv, i1 %i.kw, i1 false
  br i1 %spec.select.i52.i, label %.critedge.i134, label %.backedge87.i

.backedge87.i:                                    ; preds = %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit18.i.i.i51.i, %bb.bm, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i48.i, %.lr.ph.i132
  %i.kx = getelementptr inbounds i8, ptr %i.ko, i64 -20 ; 3 uses
  %.sroa.023.0.copyload.i = load i32, ptr %i.kx, align 4 ; 2 uses
  %i.ky = icmp ult i32 %.sroa.023.0.copyload.i, %.sroa.048.0.copyload.i.pre
  br i1 %i.ky, label %.critedge.i134, label %.lr.ph.i132, !llvm.loop !1251

.critedge.i134:                                   ; preds = %.backedge87.i, %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit18.i.i.i51.i, %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i50.i, %.lr.ph.i.i.i.1.i.i.i.i49.i, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i47.i, %.lr.ph112.backedge.i, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i25.i, %.lr.ph.i.i.i.1.i.i.i.i27.i, %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i28.i, %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit18.i.i.i29.i, %.backedge84.i, %.lr.ph112.i.preheader, %.preheader83.i, %.preheader85.i
  %.276.i = phi ptr [ %i.f, %.preheader85.i ], [ %.039.ph, %.preheader83.i ], [ %i.kc, %.backedge84.i ], [ %i.g, %.lr.ph112.i.preheader ], [ %i.km, %.lr.ph112.backedge.i ], [ %i.kc, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i25.i ], [ %i.kc, %.lr.ph.i.i.i.1.i.i.i.i27.i ], [ %i.kc, %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i28.i ], [ %i.kc, %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit18.i.i.i29.i ], [ %i.kx, %.backedge87.i ], [ %i.ko, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i47.i ], [ %i.ko, %.lr.ph.i.i.i.1.i.i.i.i49.i ], [ %i.ko, %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i50.i ], [ %i.ko, %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit18.i.i.i51.i ] ; 2 uses
  %i.kz = icmp ult ptr %i.jo, %.276.i             ; 2 uses
  br i1 %i.kz, label %.lr.ph142.i, label %._crit_edge.i135

.lr.ph142.i:                                      ; preds = %.critedge.i134, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit98.thread.i"
  %.1141.i = phi ptr [ %i.la, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit98.thread.i" ], [ %i.jo, %.critedge.i134 ] ; 3 uses
  %.3140.i = phi ptr [ %.lcssa90.i, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit98.thread.i" ], [ %.276.i, %.critedge.i134 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %.1141.i, i64 20, i1 false), !tbaa.struct !415
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.1141.i, ptr noundef nonnull align 4 dereferenceable(20) %.3140.i, i64 20, i1 false), !tbaa.struct !415
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.3140.i, ptr noundef nonnull align 4 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !415
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.backedge82.i

.backedge82.i:                                    ; preds = %.backedge82.i.backedge, %.lr.ph142.i
  %.2.i137 = phi ptr [ %.1141.i, %.lr.ph142.i ], [ %i.la, %.backedge82.i.backedge ] ; 5 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.2.i137, i64 20 ; 5 uses
  %.sroa.013.0.copyload.i = load i32, ptr %i.la, align 4 ; 2 uses
  %.sroa.214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.2.i137, i64 24
  %.sroa.214.0.copyload.i = load i32, ptr %.sroa.214.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.315.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.2.i137, i64 28
  %.sroa.315.0.copyload.i = load i32, ptr %.sroa.315.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.2.i137, i64 32
  %.sroa.416.0.copyload.i = load i32, ptr %.sroa.416.0..sroa_idx.i, align 4, !tbaa !342 ; 2 uses
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.2.i137, i64 36
  %.sroa.517.0.copyload.i = load i32, ptr %.sroa.517.0..sroa_idx.i, align 4, !tbaa !215
  %i.lb = icmp ult i32 %.sroa.013.0.copyload.i, %.sroa.048.0.copyload.i.pre
  br i1 %i.lb, label %.backedge82.i.backedge, label %bb.bn

bb.bn:                                            ; preds = %.backedge82.i
  %i.lc = icmp ult i32 %.sroa.048.0.copyload.i.pre, %.sroa.013.0.copyload.i
  br i1 %i.lc, label %.preheader.i138, label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i69.i

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i69.i: ; preds = %bb.bn
  %i.ld = icmp ult i32 %.sroa.214.0.copyload.i, %.sroa.9.0.copyload.i
  br i1 %i.ld, label %.backedge82.i.backedge, label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i70.i

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i70.i: ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i69.i
  %i.le = icmp ult i32 %.sroa.9.0.copyload.i, %.sroa.214.0.copyload.i
  br i1 %i.le, label %.preheader.i138, label %.lr.ph.i.i.i.1.i.i.i.i71.i

.lr.ph.i.i.i.1.i.i.i.i71.i:                       ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i70.i
  %i.lf = icmp ult i32 %.sroa.315.0.copyload.i, %.sroa.14.0.copyload.i
  br i1 %i.lf, label %.backedge82.i.backedge, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.i.i.i.1.i.i.i.i71.i
  %i.lg = icmp ult i32 %.sroa.14.0.copyload.i, %.sroa.315.0.copyload.i
  br i1 %i.lg, label %.preheader.i138, label %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i72.i

_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i72.i: ; preds = %bb.bo
  %i.lh = icmp ult i32 %.sroa.416.0.copyload.i, %.sroa.19.0.copyload.i
  br i1 %i.lh, label %.backedge82.i.backedge, label %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit18.i.i.i73.i

_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit18.i.i.i73.i: ; preds = %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i72.i
  %i.li = icmp uge i32 %.sroa.19.0.copyload.i, %.sroa.416.0.copyload.i
  %i.lj = icmp ult i32 %.sroa.517.0.copyload.i, %.sroa.2453.0.copyload.i
  %spec.select.i74.i = select i1 %i.li, i1 %i.lj, i1 false
  br i1 %spec.select.i74.i, label %.backedge82.i.backedge, label %.preheader.i138

.backedge82.i.backedge:                           ; preds = %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit18.i.i.i73.i, %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i72.i, %.lr.ph.i.i.i.1.i.i.i.i71.i, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i69.i, %.backedge82.i
  br label %.backedge82.i, !llvm.loop !1252

.preheader.i138:                                  ; preds = %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit18.i.i.i73.i, %bb.bo, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i70.i, %bb.bn
  %i.lk = getelementptr inbounds i8, ptr %.3140.i, i64 -20 ; 3 uses
  %.sroa.03.0.copyload120.i = load i32, ptr %i.lk, align 4 ; 2 uses
  %i.ll = icmp ult i32 %.sroa.03.0.copyload120.i, %.sroa.048.0.copyload.i.pre
  br i1 %i.ll, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit98.thread.i", label %.lr.ph134.i

.lr.ph134.i:                                      ; preds = %.preheader.i138, %.backedge.i139
  %.pn150.i = phi ptr [ %i.lm, %.backedge.i139 ], [ %.3140.i, %.preheader.i138 ] ; 4 uses
  %.sroa.03.0.copyload129.i = phi i32 [ %.sroa.03.0.copyload.i, %.backedge.i139 ], [ %.sroa.03.0.copyload120.i, %.preheader.i138 ]
  %i.lm = phi ptr [ %i.lv, %.backedge.i139 ], [ %i.lk, %.preheader.i138 ] ; 6 uses
  %.sroa.24.0.copyload130.in.i = getelementptr inbounds i8, ptr %.pn150.i, i64 -16
  %.sroa.24.0.copyload130.i = load i32, ptr %.sroa.24.0.copyload130.in.i, align 4 ; 2 uses
  %.sroa.35.0.copyload131.in.i = getelementptr inbounds i8, ptr %.pn150.i, i64 -12
  %.sroa.35.0.copyload131.i = load i32, ptr %.sroa.35.0.copyload131.in.i, align 4 ; 2 uses
  %.sroa.46.0.copyload132.in.i = getelementptr inbounds i8, ptr %.pn150.i, i64 -8
  %.sroa.46.0.copyload132.i = load i32, ptr %.sroa.46.0.copyload132.in.i, align 4, !tbaa !342 ; 2 uses
  %.sroa.57.0.copyload133.in.i = getelementptr inbounds i8, ptr %.pn150.i, i64 -4
  %.sroa.57.0.copyload133.i = load i32, ptr %.sroa.57.0.copyload133.in.i, align 4, !tbaa !215
  %i.ln = icmp ult i32 %.sroa.048.0.copyload.i.pre, %.sroa.03.0.copyload129.i
  br i1 %i.ln, label %.backedge.i139, label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i91.i

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i91.i: ; preds = %.lr.ph134.i
  %i.lo = icmp ult i32 %.sroa.24.0.copyload130.i, %.sroa.9.0.copyload.i
  br i1 %i.lo, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit98.thread.i", label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i92.i

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i92.i: ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i91.i
  %i.lp = icmp ult i32 %.sroa.9.0.copyload.i, %.sroa.24.0.copyload130.i
  br i1 %i.lp, label %.backedge.i139, label %.lr.ph.i.i.i.1.i.i.i.i93.i

.lr.ph.i.i.i.1.i.i.i.i93.i:                       ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i92.i
  %i.lq = icmp ult i32 %.sroa.35.0.copyload131.i, %.sroa.14.0.copyload.i
  br i1 %i.lq, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit98.thread.i", label %bb.bp

bb.bp:                                            ; preds = %.lr.ph.i.i.i.1.i.i.i.i93.i
  %i.lr = icmp ult i32 %.sroa.14.0.copyload.i, %.sroa.35.0.copyload131.i
  br i1 %i.lr, label %.backedge.i139, label %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i94.i

_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i94.i: ; preds = %bb.bp
  %i.ls = icmp ult i32 %.sroa.46.0.copyload132.i, %.sroa.19.0.copyload.i
  br i1 %i.ls, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit98.thread.i", label %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit18.i.i.i95.i

_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit18.i.i.i95.i: ; preds = %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i94.i
  %i.lt = icmp uge i32 %.sroa.19.0.copyload.i, %.sroa.46.0.copyload132.i
  %i.lu = icmp ult i32 %.sroa.57.0.copyload133.i, %.sroa.2453.0.copyload.i
  %spec.select.i96.i = select i1 %i.lt, i1 %i.lu, i1 false
  br i1 %spec.select.i96.i, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit98.thread.i", label %.backedge.i139

.backedge.i139:                                   ; preds = %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit18.i.i.i95.i, %bb.bp, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i92.i, %.lr.ph134.i
  %i.lv = getelementptr inbounds i8, ptr %i.lm, i64 -20 ; 3 uses
  %.sroa.03.0.copyload.i = load i32, ptr %i.lv, align 4 ; 2 uses
  %i.lw = icmp ult i32 %.sroa.03.0.copyload.i, %.sroa.048.0.copyload.i.pre
  br i1 %i.lw, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit98.thread.i", label %.lr.ph134.i, !llvm.loop !1253

"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit98.thread.i": ; preds = %.backedge.i139, %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit18.i.i.i95.i, %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i94.i, %.lr.ph.i.i.i.1.i.i.i.i93.i, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i91.i, %.preheader.i138
  %.lcssa90.i = phi ptr [ %i.lk, %.preheader.i138 ], [ %i.lm, %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit18.i.i.i95.i ], [ %i.lm, %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i94.i ], [ %i.lm, %.lr.ph.i.i.i.1.i.i.i.i93.i ], [ %i.lm, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i91.i ], [ %i.lv, %.backedge.i139 ] ; 2 uses
  %i.lx = icmp ult ptr %i.la, %.lcssa90.i
  br i1 %i.lx, label %.lr.ph142.i, label %._crit_edge.i135, !llvm.loop !1254

._crit_edge.i135:                                 ; preds = %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit98.thread.i", %.critedge.i134
  %.1.lcssa.i = phi ptr [ %i.jo, %.critedge.i134 ], [ %i.la, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit98.thread.i" ] ; 8 uses
  %i.ly = getelementptr inbounds i8, ptr %.1.lcssa.i, i64 -20 ; 6 uses
  %.not.i136 = icmp eq ptr %.036, %i.ly
  br i1 %.not.i136, label %"_ZNSt3__132__partition_with_equals_on_rightB8nn180100INS_17_ClassicAlgPolicyEPN3jxl21ModularMultiplierInfoERZNS2_19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0EENS_4pairIT0_bEESB_SB_T1_.exit", label %bb.bq

bb.bq:                                            ; preds = %._crit_edge.i135
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.036, ptr noundef nonnull align 4 dereferenceable(20) %i.ly, i64 20, i1 false), !tbaa.struct !415
  br label %"_ZNSt3__132__partition_with_equals_on_rightB8nn180100INS_17_ClassicAlgPolicyEPN3jxl21ModularMultiplierInfoERZNS2_19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0EENS_4pairIT0_bEESB_SB_T1_.exit"

"_ZNSt3__132__partition_with_equals_on_rightB8nn180100INS_17_ClassicAlgPolicyEPN3jxl21ModularMultiplierInfoERZNS2_19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0EENS_4pairIT0_bEESB_SB_T1_.exit": ; preds = %._crit_edge.i135, %bb.bq
  store i32 %.sroa.048.0.copyload.i.pre, ptr %i.ly, align 4
  %.sroa.9.0..0..sroa_idx.i = getelementptr inbounds i8, ptr %.1.lcssa.i, i64 -16
  store i32 %.sroa.9.0.copyload.i, ptr %.sroa.9.0..0..sroa_idx.i, align 4
  %.sroa.14.0..0..sroa_idx.i = getelementptr inbounds i8, ptr %.1.lcssa.i, i64 -12
  store i32 %.sroa.14.0.copyload.i, ptr %.sroa.14.0..0..sroa_idx.i, align 4
  %.sroa.19.0..0..sroa_idx.i = getelementptr inbounds i8, ptr %.1.lcssa.i, i64 -8
  store i32 %.sroa.19.0.copyload.i, ptr %.sroa.19.0..0..sroa_idx.i, align 4, !tbaa !342
  %.sroa.2453.0..0..sroa_idx.i = getelementptr inbounds i8, ptr %.1.lcssa.i, i64 -4
  store i32 %.sroa.2453.0.copyload.i, ptr %.sroa.2453.0..0..sroa_idx.i, align 4, !tbaa !215
  br i1 %i.kz, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %"_ZNSt3__132__partition_with_equals_on_rightB8nn180100INS_17_ClassicAlgPolicyEPN3jxl21ModularMultiplierInfoERZNS2_19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0EENS_4pairIT0_bEESB_SB_T1_.exit"
  %i.lz = tail call fastcc noundef zeroext i1 @"_ZNSt3__127__insertion_sort_incompleteB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEbT1_SA_T0_"(ptr noundef %.036, ptr noundef nonnull %i.ly) #26 ; 2 uses
  %i.ma = tail call fastcc noundef zeroext i1 @"_ZNSt3__127__insertion_sort_incompleteB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEbT1_SA_T0_"(ptr noundef nonnull %.1.lcssa.i, ptr noundef %.039.ph) #26
  br i1 %i.ma, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  br i1 %i.lz, label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit.thread", label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit.outer", !llvm.loop !1255

bb.bt:                                            ; preds = %bb.br
  br i1 %i.lz, label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit", label %bb.bu, !llvm.loop !1255

bb.bu:                                            ; preds = %bb.bt, %"_ZNSt3__132__partition_with_equals_on_rightB8nn180100INS_17_ClassicAlgPolicyEPN3jxl21ModularMultiplierInfoERZNS2_19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0EENS_4pairIT0_bEESB_SB_T1_.exit"
  tail call fastcc void @"_ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoELb0EEEvT1_SA_T0_NS_15iterator_traitsISA_E15difference_typeEb"(ptr noundef %.036, ptr noundef nonnull %i.ly, i64 noundef %i.ga, i1 noundef zeroext %i.i) #26
  br label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit.outer331.backedge"

"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit.outer331.backedge": ; preds = %bb.bu, %"_ZNSt3__131__partition_with_equals_on_leftB8nn180100INS_17_ClassicAlgPolicyEPN3jxl21ModularMultiplierInfoERZNS2_19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0EET0_SA_SA_T1_.exit"
  %.036.ph332.be = phi ptr [ %.3.lcssa.i, %"_ZNSt3__131__partition_with_equals_on_leftB8nn180100INS_17_ClassicAlgPolicyEPN3jxl21ModularMultiplierInfoERZNS2_19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0EET0_SA_SA_T1_.exit" ], [ %.1.lcssa.i, %bb.bu ]
  br label %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit.outer331", !llvm.loop !1255

"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit.thread": ; preds = %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit", %"_ZNSt3__116__insertion_sortB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_T0_.exit", %bb.bs, %"_ZNSt3__110__pop_heapB8nn180100INS_17_ClassicAlgPolicyEZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_S9_RT0_NS_15iterator_traitsIS9_E15difference_typeE.exit.i.i.i", %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread30.i", %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread31.i", %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i, %bb.c, %bb.d, %bb.t, %bb.o, %bb.j, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread", %bb.f, %bb.e, %bb.g, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit"
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @"_ZNSt3__124__sort5_maybe_branchlessB8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoETnNS_9enable_ifIXntsr21__use_branchless_sortIT0_T1_EE5valueEiE4typeELi0EEEvSC_SC_SC_SC_SC_SB_"(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) unnamed_addr #21 {
bb.a:
  %5 = alloca %"struct.jxl::ModularMultiplierInfo", align 4 ; 4 uses
  %6 = alloca %"struct.jxl::ModularMultiplierInfo", align 4 ; 4 uses
  %7 = alloca %"struct.jxl::ModularMultiplierInfo", align 4 ; 4 uses
  %8 = alloca %"struct.jxl::ModularMultiplierInfo", align 4 ; 4 uses
  tail call fastcc void @"_ZNSt3__17__sort4B8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_SA_SA_T0_"(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #26
  %.sroa.031.0.copyload.i = load i32, ptr %4, align 4 ; 2 uses
  %.sroa.232.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.232.0.copyload.i = load i32, ptr %.sroa.232.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.333.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.333.0.copyload.i = load i32, ptr %.sroa.333.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.sroa.434.0.copyload.i = load i32, ptr %.sroa.434.0..sroa_idx.i, align 4, !tbaa !342 ; 2 uses
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.535.0.copyload.i = load i32, ptr %.sroa.535.0..sroa_idx.i, align 4, !tbaa !215
  %.sroa.026.0.copyload.i = load i32, ptr %3, align 4 ; 2 uses
  %.sroa.227.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %.sroa.227.0.copyload.i = load i32, ptr %.sroa.227.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.328.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.sroa.328.0.copyload.i = load i32, ptr %.sroa.328.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %.sroa.429.0.copyload.i = load i32, ptr %.sroa.429.0..sroa_idx.i, align 4, !tbaa !342 ; 2 uses
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.sroa.530.0.copyload.i = load i32, ptr %.sroa.530.0..sroa_idx.i, align 4, !tbaa !215
  %i.a = icmp ult i32 %.sroa.031.0.copyload.i, %.sroa.026.0.copyload.i
  br i1 %i.a, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %.sroa.026.0.copyload.i, %.sroa.031.0.copyload.i
  br i1 %i.b, label %"_ZNSt3__17__sort5B8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_SA_SA_SA_T0_.exit", label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i.i

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.c = icmp ult i32 %.sroa.232.0.copyload.i, %.sroa.227.0.copyload.i
  br i1 %i.c, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i", label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i.i

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i.i
  %i.d = icmp ult i32 %.sroa.227.0.copyload.i, %.sroa.232.0.copyload.i
  br i1 %i.d, label %"_ZNSt3__17__sort5B8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_SA_SA_SA_T0_.exit", label %.lr.ph.i.i.i.1.i.i.i.i.i

.lr.ph.i.i.i.1.i.i.i.i.i:                         ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i.i
  %i.e = icmp ult i32 %.sroa.333.0.copyload.i, %.sroa.328.0.copyload.i
  br i1 %i.e, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i", label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.1.i.i.i.i.i
  %i.f = icmp ult i32 %.sroa.328.0.copyload.i, %.sroa.333.0.copyload.i
  br i1 %i.f, label %"_ZNSt3__17__sort5B8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_SA_SA_SA_T0_.exit", label %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i.i

_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i.i: ; preds = %bb.c
  %i.g = icmp ult i32 %.sroa.434.0.copyload.i, %.sroa.429.0.copyload.i
  br i1 %i.g, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i", label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.i"

"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.i": ; preds = %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i.i
  %i.h = icmp uge i32 %.sroa.429.0.copyload.i, %.sroa.434.0.copyload.i
  %i.i = icmp ult i32 %.sroa.535.0.copyload.i, %.sroa.530.0.copyload.i
  %spec.select.i.i = select i1 %i.h, i1 %i.i, i1 false
  br i1 %spec.select.i.i, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i", label %"_ZNSt3__17__sort5B8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_SA_SA_SA_T0_.exit"

"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i": ; preds = %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.i", %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i.i, %.lr.ph.i.i.i.1.i.i.i.i.i, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %8, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !415
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !415
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %8, i64 20, i1 false), !tbaa.struct !415
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %.sroa.021.0.copyload.i = load i32, ptr %3, align 4 ; 2 uses
  %.sroa.222.0.copyload.i = load i32, ptr %.sroa.227.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.323.0.copyload.i = load i32, ptr %.sroa.328.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.424.0.copyload.i = load i32, ptr %.sroa.429.0..sroa_idx.i, align 4, !tbaa !342 ; 2 uses
  %.sroa.525.0.copyload.i = load i32, ptr %.sroa.530.0..sroa_idx.i, align 4, !tbaa !215
  %.sroa.016.0.copyload.i = load i32, ptr %2, align 4 ; 2 uses
  %.sroa.217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %.sroa.217.0.copyload.i = load i32, ptr %.sroa.217.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.318.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.318.0.copyload.i = load i32, ptr %.sroa.318.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %.sroa.419.0.copyload.i = load i32, ptr %.sroa.419.0..sroa_idx.i, align 4, !tbaa !342 ; 2 uses
  %.sroa.520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.sroa.520.0.copyload.i = load i32, ptr %.sroa.520.0..sroa_idx.i, align 4, !tbaa !215
  %i.j = icmp ult i32 %.sroa.021.0.copyload.i, %.sroa.016.0.copyload.i
  br i1 %i.j, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit26.thread.i", label %bb.d

bb.d:                                             ; preds = %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i"
  %i.k = icmp ult i32 %.sroa.016.0.copyload.i, %.sroa.021.0.copyload.i
  br i1 %i.k, label %"_ZNSt3__17__sort5B8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_SA_SA_SA_T0_.exit", label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i19.i

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i19.i: ; preds = %bb.d
  %i.l = icmp ult i32 %.sroa.222.0.copyload.i, %.sroa.217.0.copyload.i
  br i1 %i.l, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit26.thread.i", label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i20.i

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i20.i: ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i19.i
  %i.m = icmp ult i32 %.sroa.217.0.copyload.i, %.sroa.222.0.copyload.i
  br i1 %i.m, label %"_ZNSt3__17__sort5B8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_SA_SA_SA_T0_.exit", label %.lr.ph.i.i.i.1.i.i.i.i21.i

.lr.ph.i.i.i.1.i.i.i.i21.i:                       ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i20.i
  %i.n = icmp ult i32 %.sroa.323.0.copyload.i, %.sroa.318.0.copyload.i
  br i1 %i.n, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit26.thread.i", label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.1.i.i.i.i21.i
  %i.o = icmp ult i32 %.sroa.318.0.copyload.i, %.sroa.323.0.copyload.i
  br i1 %i.o, label %"_ZNSt3__17__sort5B8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_SA_SA_SA_T0_.exit", label %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i22.i

_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i22.i: ; preds = %bb.e
  %i.p = icmp ult i32 %.sroa.424.0.copyload.i, %.sroa.419.0.copyload.i
  br i1 %i.p, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit26.thread.i", label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit26.i"

"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit26.i": ; preds = %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i22.i
  %i.q = icmp uge i32 %.sroa.419.0.copyload.i, %.sroa.424.0.copyload.i
  %i.r = icmp ult i32 %.sroa.525.0.copyload.i, %.sroa.520.0.copyload.i
  %spec.select.i24.i = select i1 %i.q, i1 %i.r, i1 false
  br i1 %spec.select.i24.i, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit26.thread.i", label %"_ZNSt3__17__sort5B8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_SA_SA_SA_T0_.exit"

"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit26.thread.i": ; preds = %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit26.i", %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i22.i, %.lr.ph.i.i.i.1.i.i.i.i21.i, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i19.i, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit.thread.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %7, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !415
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !415
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %7, i64 20, i1 false), !tbaa.struct !415
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.sroa.011.0.copyload.i = load i32, ptr %2, align 4 ; 2 uses
  %.sroa.212.0.copyload.i = load i32, ptr %.sroa.217.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.313.0.copyload.i = load i32, ptr %.sroa.318.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.414.0.copyload.i = load i32, ptr %.sroa.419.0..sroa_idx.i, align 4, !tbaa !342 ; 2 uses
  %.sroa.515.0.copyload.i = load i32, ptr %.sroa.520.0..sroa_idx.i, align 4, !tbaa !215
  %.sroa.06.0.copyload.i = load i32, ptr %1, align 4 ; 2 uses
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %.sroa.27.0.copyload.i = load i32, ptr %.sroa.27.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.38.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.38.0.copyload.i = load i32, ptr %.sroa.38.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.sroa.49.0.copyload.i = load i32, ptr %.sroa.49.0..sroa_idx.i, align 4, !tbaa !342 ; 2 uses
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.510.0.copyload.i = load i32, ptr %.sroa.510.0..sroa_idx.i, align 4, !tbaa !215
  %i.s = icmp ult i32 %.sroa.011.0.copyload.i, %.sroa.06.0.copyload.i
  br i1 %i.s, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit48.thread.i", label %bb.f

bb.f:                                             ; preds = %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit26.thread.i"
  %i.t = icmp ult i32 %.sroa.06.0.copyload.i, %.sroa.011.0.copyload.i
  br i1 %i.t, label %"_ZNSt3__17__sort5B8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_SA_SA_SA_T0_.exit", label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i41.i

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i41.i: ; preds = %bb.f
  %i.u = icmp ult i32 %.sroa.212.0.copyload.i, %.sroa.27.0.copyload.i
  br i1 %i.u, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit48.thread.i", label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i42.i

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i42.i: ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i41.i
  %i.v = icmp ult i32 %.sroa.27.0.copyload.i, %.sroa.212.0.copyload.i
  br i1 %i.v, label %"_ZNSt3__17__sort5B8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_SA_SA_SA_T0_.exit", label %.lr.ph.i.i.i.1.i.i.i.i43.i

.lr.ph.i.i.i.1.i.i.i.i43.i:                       ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i42.i
  %i.w = icmp ult i32 %.sroa.313.0.copyload.i, %.sroa.38.0.copyload.i
  br i1 %i.w, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit48.thread.i", label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.1.i.i.i.i43.i
  %i.x = icmp ult i32 %.sroa.38.0.copyload.i, %.sroa.313.0.copyload.i
  br i1 %i.x, label %"_ZNSt3__17__sort5B8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_SA_SA_SA_T0_.exit", label %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i44.i

_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i44.i: ; preds = %bb.g
  %i.y = icmp ult i32 %.sroa.414.0.copyload.i, %.sroa.49.0.copyload.i
  br i1 %i.y, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit48.thread.i", label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit48.i"

"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit48.i": ; preds = %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i44.i
  %i.z = icmp uge i32 %.sroa.49.0.copyload.i, %.sroa.414.0.copyload.i
  %i.aa = icmp ult i32 %.sroa.515.0.copyload.i, %.sroa.510.0.copyload.i
  %spec.select.i46.i = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %spec.select.i46.i, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit48.thread.i", label %"_ZNSt3__17__sort5B8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_SA_SA_SA_T0_.exit"

"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit48.thread.i": ; preds = %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit48.i", %_ZNSt3__1ltB8nn180100INS_5arrayIjLm2EEELm2EEEbRKNS1_IT_XT0_EEES6_.exit.i.i.i44.i, %.lr.ph.i.i.i.1.i.i.i.i43.i, %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i41.i, %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit26.thread.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) %1, i64 20, i1 false), !tbaa.struct !415
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %1, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !415
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %6, i64 20, i1 false), !tbaa.struct !415
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.sroa.01.0.copyload.i = load i32, ptr %1, align 4 ; 2 uses
  %.sroa.22.0.copyload.i = load i32, ptr %.sroa.27.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.33.0.copyload.i = load i32, ptr %.sroa.38.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.44.0.copyload.i = load i32, ptr %.sroa.49.0..sroa_idx.i, align 4, !tbaa !342 ; 2 uses
  %.sroa.55.0.copyload.i = load i32, ptr %.sroa.510.0..sroa_idx.i, align 4, !tbaa !215
  %.sroa.0.0.copyload.i = load i32, ptr %0, align 4 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.3.0.copyload.i = load i32, ptr %.sroa.3.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !342 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !215
  %i.ab = icmp ult i32 %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %i.ab, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit70.thread.i", label %bb.h

bb.h:                                             ; preds = %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit48.thread.i"
  %i.ac = icmp ult i32 %.sroa.0.0.copyload.i, %.sroa.01.0.copyload.i
  br i1 %i.ac, label %"_ZNSt3__17__sort5B8nn180100INS_17_ClassicAlgPolicyERZN3jxl19ModularFrameEncoder11ComputeTreeEPNS2_10ThreadPoolEE3$_0PNS2_21ModularMultiplierInfoEEEvT1_SA_SA_SA_SA_T0_.exit", label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i63.i

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i63.i: ; preds = %bb.h
  %i.ad = icmp ult i32 %.sroa.22.0.copyload.i, %.sroa.2.0.copyload.i
  br i1 %i.ad, label %"_ZZN3jxl19ModularFrameEncoder11ComputeTreeEPNS_10ThreadPoolEENK3$_0clENS_21ModularMultiplierInfoES4_.exit70.thread.i", label %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i64.i

_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit19.i.i.i.i.i.i.i64.i: ; preds = %_ZNKSt3__16__lessIvvEclB8nn180100INS_5arrayIjLm2EEES4_EEbRKT_RKT0_.exit.i.i.i.i.i.i.i63.i
end_hunk_2
