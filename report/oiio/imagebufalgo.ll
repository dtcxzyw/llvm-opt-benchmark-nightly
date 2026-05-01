inline.NumInlined: 7403
inline.NumDeleted: 2263
begin_hunk_0_@_ZN11OpenImageIO4v3_112ImageBufAlgo18fillholes_pushpullERNS0_8ImageBufERKS2_NS0_3ROIEi
define noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo18fillholes_pushpullERNS0_8ImageBufERKS2_NS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2, i32 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 9 uses
  %5 = alloca %"class.std::function", align 8     ; 10 uses
  %6 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 4 uses
  %7 = alloca %"class.std::vector.35", align 8    ; 14 uses
  %8 = alloca %"class.OpenImageIO::v3_1::ImageSpec", align 8 ; 19 uses
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_112ImageBufAlgo18fillholes_pushpullERNS0_8ImageBufERKS2_NS0_3ROIEi:bb.a
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 120
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 136 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 144
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_112ImageBufAlgo18fillholes_pushpullERNS0_8ImageBufERKS2_NS0_3ROIEi:bb.a

bb.m:                                             ; preds = %bb.l
  call void @_ZN11OpenImageIO4v3_19ImageSpecC1EiiiNS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160) %10, i32 noundef %.sroa.speculated89, i32 noundef %.sroa.speculated, i32 noundef %i.az, i64 267) #33
  %i.ba = load i32, ptr %i.ad, align 8, !tbaa !48
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.bb = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #35
          to label %bb.n unwind label %bb.aj      ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_112ImageBufAlgo18fillholes_pushpullERNS0_8ImageBufERKS2_NS0_3ROIEi:bb.a
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !385
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  store ptr @.str.68, ptr %12, align 8, !tbaa !88
  store i64 10, ptr %i.af, align 8, !tbaa !90
  store ptr @.str.69, ptr %13, align 8, !tbaa !88
  store i64 8, ptr %i.ag, align 8, !tbaa !90
  call void @_ZN11OpenImageIO4v3_110ParamValueC2ENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(39) %11, ptr noundef nonnull dead_on_return %12, ptr noundef nonnull dead_on_return %13) #33
  store i32 -2147483648, ptr %14, align 8, !tbaa !7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ah, i8 0, i64 28, i1 false)
  %i.bf = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo6resizeERNS0_8ImageBufERKS2_NS0_14ParamValueSpanENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr nonnull %11, i64 1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %14, i32 noundef 0)
          to label %.preheader110 unwind label %bb.al ; 0 uses

end_hunk_3
begin_hunk_4_@_ZN11OpenImageIO4v3_112ImageBufAlgo18fillholes_pushpullERNS0_8ImageBufERKS2_NS0_3ROIEi:bb.a

bb.q:                                             ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread.i, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.i
  store i32 %3, ptr %4, align 8, !tbaa !197
  store i16 0, ptr %i.ai, align 4, !tbaa !202
  store i16 1, ptr %i.aj, align 2, !tbaa !203
  store i64 1024, ptr %i.ak, align 8, !tbaa !204
  store ptr null, ptr %i.al, align 8, !tbaa !205
  store i8 0, ptr %i.am, align 8, !tbaa !206
  %i.bs = ptrtoint ptr %i.bg to i64
  store i64 0, ptr %i.ao, align 8
  store i64 %i.bs, ptr %5, align 8, !tbaa !137
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L15divide_by_alphaERNS1_8ImageBufES2_iE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L15divide_by_alphaERNS1_8ImageBufES2_iE3$_0E9_M_invokeERKSt9_Any_dataOS2_">, ptr %i.an, align 8, !tbaa !211
  invoke void @_ZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS0_3ROIENS0_6paroptESt8functionIFvS2_EE(ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %6, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::paropt") align 8 %4, ptr noundef nonnull %5)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.bt = load ptr, ptr %i.an, align 8, !tbaa !215 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.bt, null
  br i1 %.not.i4.i, label %bb.x, label %bb.s

end_hunk_4
begin_hunk_5_@_ZN11OpenImageIO4v3_112ImageBufAlgo18fillholes_pushpullERNS0_8ImageBufERKS2_NS0_3ROIEi:bb.a
bb.u:                                             ; preds = %bb.q
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.by = load ptr, ptr %i.an, align 8, !tbaa !215 ; 2 uses
  %.not.i5.i = icmp eq ptr %i.by, null
  br i1 %.not.i5.i, label %.body, label %bb.v

end_hunk_5
