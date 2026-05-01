inline.NumInlined: 6400
inline.NumDeleted: 1723
begin_hunk_0_@_ZN11OpenImageIO4v3_1L12write_mipmapENS0_12ImageBufAlgo15MakeTextureModeERSt10shared_ptrINS0_8ImageBufEERKNS0_9ImageSpecENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_11ImageOutputENS0_8TypeDescEbNS0_17basic_string_viewIcSD_EES9_RSoRdSM_Rm:bb.a
  %122 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %123 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 2 uses
  %124 = alloca %"class.OpenImageIO::v3_1::paropt", align 8 ; 7 uses
  %125 = alloca %"class.std::function", align 8   ; 9 uses
  %126 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %127 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 6 uses
  %128 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_1L12write_mipmapENS0_12ImageBufAlgo15MakeTextureModeERSt10shared_ptrINS0_8ImageBufEERKNS0_9ImageSpecENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_11ImageOutputENS0_8TypeDescEbNS0_17basic_string_viewIcSD_EES9_RSoRdSM_Rm:bb.a
  %i.vs = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.vt = getelementptr inbounds nuw i8, ptr %134, i64 4
  %or.cond11.not = and i1 %i.ui, %i.gp
  %153 = getelementptr inbounds nuw i8, ptr %135, i64 8
  %i.vu = getelementptr inbounds nuw i8, ptr %136, i64 8
  %i.vv = getelementptr inbounds nuw i8, ptr %137, i64 4
  %i.vw = getelementptr inbounds nuw i8, ptr %138, i64 8
  %.sroa_idx4.i.i507.a = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.vx = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.vy = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.vz = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 4 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %138, i64 16 ; 4 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %139, i64 4
  %i.wc = getelementptr inbounds nuw i8, ptr %140, i64 4
  %i.wd = getelementptr inbounds nuw i8, ptr %124, i64 4
  %i.we = getelementptr inbounds nuw i8, ptr %124, i64 6
  %i.wf = getelementptr inbounds nuw i8, ptr %124, i64 8
  %i.wg = getelementptr inbounds nuw i8, ptr %124, i64 16
  %i.wh = getelementptr inbounds nuw i8, ptr %124, i64 24
  %i.wi = getelementptr inbounds nuw i8, ptr %125, i64 16 ; 3 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %125, i64 24
  %i.wk = getelementptr inbounds nuw i8, ptr %141, i64 4
  %i.wl = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.wm = getelementptr inbounds nuw i8, ptr %114, i64 16 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_1L12write_mipmapENS0_12ImageBufAlgo15MakeTextureModeERSt10shared_ptrINS0_8ImageBufEERKNS0_9ImageSpecENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_11ImageOutputENS0_8TypeDescEbNS0_17basic_string_viewIcSD_EES9_RSoRdSM_Rm:bb.a

bb.hh:                                            ; preds = %bb.hg
  store i32 %i.cc, ptr %124, align 8, !tbaa !275
  store i16 0, ptr %i.wd, align 4, !tbaa !280
  store i16 1, ptr %i.we, align 2, !tbaa !281
  store i64 1024, ptr %i.wf, align 8, !tbaa !282
  store ptr null, ptr %i.wg, align 8, !tbaa !283
  store i8 0, ptr %i.wh, align 8, !tbaa !284
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %125, i8 0, i64 32, i1 false)
  %i.adb = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #34
          to label %bb.hi unwind label %bb.hm     ; 5 uses
end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_1L12write_mipmapENS0_12ImageBufAlgo15MakeTextureModeERSt10shared_ptrINS0_8ImageBufEERKNS0_9ImageSpecENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_11ImageOutputENS0_8TypeDescEbNS0_17basic_string_viewIcSD_EES9_RSoRdSM_Rm:bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.adb, i64 24
  store ptr %i.l, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !321
  store ptr %i.adb, ptr %125, align 8, !tbaa !137
  store ptr @"_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L12write_mipmapENS1_12ImageBufAlgo15MakeTextureModeERSt10shared_ptrINS1_8ImageBufEERKNS1_9ImageSpecENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS1_11ImageOutputENS1_8TypeDescEbNS1_17basic_string_viewIcSG_EESC_RSoRdSP_RmE3$_0E9_M_invokeERKSt9_Any_dataOS2_", ptr %i.wj, align 8, !tbaa !297
  store ptr @"_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L12write_mipmapENS1_12ImageBufAlgo15MakeTextureModeERSt10shared_ptrINS1_8ImageBufEERKNS1_9ImageSpecENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS1_11ImageOutputENS1_8TypeDescEbNS1_17basic_string_viewIcSG_EESC_RSoRdSP_RmE3$_0E10_M_managerERSt9_Any_dataRKST_St18_Manager_operation", ptr %i.wi, align 8, !tbaa !300
  invoke void @_ZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS0_3ROIENS0_6paroptESt8functionIFvS2_EE(ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %123, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::paropt") align 8 %124, ptr noundef nonnull %125)
          to label %bb.hj unwind label %bb.hn

bb.hj:                                            ; preds = %bb.hi
  %i.adc = load ptr, ptr %i.wi, align 8, !tbaa !300 ; 2 uses
  %.not.i423 = icmp eq ptr %i.adc, null
  br i1 %.not.i423, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit, label %bb.hk

end_hunk_3
begin_hunk_4_@_ZN11OpenImageIO4v3_1L12write_mipmapENS0_12ImageBufAlgo15MakeTextureModeERSt10shared_ptrINS0_8ImageBufEERKNS0_9ImageSpecENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_11ImageOutputENS0_8TypeDescEbNS0_17basic_string_viewIcSD_EES9_RSoRdSM_Rm:bb.a
bb.hn:                                            ; preds = %bb.hi
  %i.adh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.adi = load ptr, ptr %i.wi, align 8, !tbaa !300 ; 2 uses
  %.not.i424 = icmp eq ptr %i.adi, null
  br i1 %.not.i424, label %_ZNSt14_Function_baseD2Ev.exit425, label %bb.ho

end_hunk_4
begin_hunk_5_@_ZN11OpenImageIO4v3_1L12write_mipmapENS0_12ImageBufAlgo15MakeTextureModeERSt10shared_ptrINS0_8ImageBufEERKNS0_9ImageSpecENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_11ImageOutputENS0_8TypeDescEbNS0_17basic_string_viewIcSD_EES9_RSoRdSM_Rm:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN11OpenImageIO4v3_18ImageBufELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ajg, align 8, !tbaa !68
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajg, i64 16
  store ptr %i.ajf, ptr %i.ajp, align 8, !tbaa !70
  store ptr %i.ajg, ptr %153, align 8, !tbaa !74
  %i.ajq = load ptr, ptr %113, align 16, !tbaa !80
  store ptr %.sroa.0827.0, ptr %136, align 8, !tbaa !7
  store i64 %.sroa.8.0, ptr %i.vu, align 8, !tbaa !12
  store i32 -2147483648, ptr %137, align 8, !tbaa !172
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.vv, i8 0, i64 28, i1 false)
  %i.ajr = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo12unsharp_maskERNS0_8ImageBufERKS2_NS0_17basic_string_viewIcSt11char_traitsIcEEEfffNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %i.ajf, ptr noundef nonnull align 8 dereferenceable(16) %i.ajq, ptr noundef nonnull dead_on_return %136, float noundef 3.000000e+00, float noundef %i.gj, float noundef 0.000000e+00, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %137, i32 noundef %i.cc)
          to label %bb.ks unwind label %bb.la

end_hunk_5
begin_hunk_6_@_ZN11OpenImageIO4v3_1L12write_mipmapENS0_12ImageBufAlgo15MakeTextureModeERSt10shared_ptrINS0_8ImageBufEERKNS0_9ImageSpecENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_11ImageOutputENS0_8TypeDescEbNS0_17basic_string_viewIcSD_EES9_RSoRdSM_Rm:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #31, !noalias !1095
  %i.ajs = load ptr, ptr %138, align 8, !tbaa !19, !noalias !1095
  %i.ajt = load i64, ptr %i.vw, align 8, !tbaa !22, !noalias !1095
  %i.aju = ptrtoint ptr %i.ajs to i64
  store i64 %i.aju, ptr %39, align 16, !noalias !1095
  store i64 %i.ajt, ptr %.sroa_idx4.i.i507.a, align 8, !noalias !1095
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %41, ptr nonnull @.str.12, i64 2, i64 13, ptr nonnull %39)
          to label %.noexc513 unwind label %bb.lc

end_hunk_6
begin_hunk_7_@_ZN11OpenImageIO4v3_1L12write_mipmapENS0_12ImageBufAlgo15MakeTextureModeERSt10shared_ptrINS0_8ImageBufEERKNS0_9ImageSpecENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_11ImageOutputENS0_8TypeDescEbNS0_17basic_string_viewIcSD_EES9_RSoRdSM_Rm:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #31, !noalias !1095
  %i.ajv = load ptr, ptr %41, align 8, !tbaa !19
  store ptr %i.ajv, ptr %40, align 8, !tbaa !7
  %i.ajw = load i64, ptr %i.vy, align 8, !tbaa !22
  store i64 %i.ajw, ptr %i.vx, align 8, !tbaa !12
  invoke void @_ZN11OpenImageIO4v3_13pvt12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %40)
          to label %bb.kv unwind label %bb.kw

bb.kv:                                            ; preds = %.noexc513
  %i.ajx = load ptr, ptr %41, align 8, !tbaa !19  ; 2 uses
  %i.ajy = icmp eq ptr %i.ajx, %i.vz
  br i1 %i.ajy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i512, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i511

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i511: ; preds = %bb.kv
  %i.ajz = load i64, ptr %i.vz, align 8, !tbaa !21
  %i.aka = add i64 %i.ajz, 1
  call void @_ZdlPvm(ptr noundef %i.ajx, i64 noundef %i.aka) #32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i512
end_hunk_7
begin_hunk_8_@_ZN11OpenImageIO4v3_1L12write_mipmapENS0_12ImageBufAlgo15MakeTextureModeERSt10shared_ptrINS0_8ImageBufEERKNS0_9ImageSpecENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_11ImageOutputENS0_8TypeDescEbNS0_17basic_string_viewIcSD_EES9_RSoRdSM_Rm:bb.a
  %i.akb = landingpad { ptr, i32 }
          cleanup
  %i.akc = load ptr, ptr %41, align 8, !tbaa !19  ; 2 uses
  %i.akd = icmp eq ptr %i.akc, %i.vz
  br i1 %i.akd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i509, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i508

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i508: ; preds = %bb.kw
  %i.ake = load i64, ptr %i.vz, align 8, !tbaa !21
  %i.akf = add i64 %i.ake, 1
  call void @_ZdlPvm(ptr noundef %i.akc, i64 noundef %i.akf) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i509
end_hunk_8
begin_hunk_9_@_ZN11OpenImageIO4v3_1L12write_mipmapENS0_12ImageBufAlgo15MakeTextureModeERSt10shared_ptrINS0_8ImageBufEERKNS0_9ImageSpecENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_11ImageOutputENS0_8TypeDescEbNS0_17basic_string_viewIcSD_EES9_RSoRdSM_Rm:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %40)
  %i.akg = load ptr, ptr %138, align 8, !tbaa !19 ; 2 uses
  %i.akh = icmp eq ptr %i.akg, %i.wa
  br i1 %i.akh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i517

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i517: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i512
  %i.aki = load i64, ptr %i.wa, align 8, !tbaa !21
  %i.akj = add i64 %i.aki, 1
  call void @_ZdlPvm(ptr noundef %i.akg, i64 noundef %i.akj) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit519
end_hunk_9
begin_hunk_10_@_ZN11OpenImageIO4v3_1L12write_mipmapENS0_12ImageBufAlgo15MakeTextureModeERSt10shared_ptrINS0_8ImageBufEERKNS0_9ImageSpecENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_11ImageOutputENS0_8TypeDescEbNS0_17basic_string_viewIcSD_EES9_RSoRdSM_Rm:bb.a
.body514:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i509, %bb.lc
  %eh.lpad-body515 = phi { ptr, i32 } [ %i.akp, %bb.lc ], [ %i.akb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i509 ] ; 2 uses
  %i.akq = load ptr, ptr %138, align 8, !tbaa !19 ; 2 uses
  %i.akr = icmp eq ptr %i.akq, %i.wa
  br i1 %i.akr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit522, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i520

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i520: ; preds = %.body514
  %i.aks = load i64, ptr %i.wa, align 8, !tbaa !21
  %i.akt = add i64 %i.aks, 1
  call void @_ZdlPvm(ptr noundef %i.akq, i64 noundef %i.akt) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit522
end_hunk_10
begin_hunk_11_@_ZN11OpenImageIO4v3_1L12write_mipmapENS0_12ImageBufAlgo15MakeTextureModeERSt10shared_ptrINS0_8ImageBufEERKNS0_9ImageSpecENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_11ImageOutputENS0_8TypeDescEbNS0_17basic_string_viewIcSD_EES9_RSoRdSM_Rm:bb.a
bb.lm:                                            ; preds = %bb.ll
  %i.all = load ptr, ptr %113, align 16, !tbaa !80 ; 2 uses
  store i32 -2147483648, ptr %139, align 8, !tbaa !172
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.wb, i8 0, i64 28, i1 false)
  %i.alm = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo11rangeexpandERNS0_8ImageBufERKS2_bNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %i.all, ptr noundef nonnull align 8 dereferenceable(16) %i.all, i1 noundef zeroext false, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %139, i32 noundef %i.cc)
          to label %bb.ln unwind label %.loopexit ; 0 uses

end_hunk_11
begin_hunk_12_@_ZN11OpenImageIO4v3_1L12write_mipmapENS0_12ImageBufAlgo15MakeTextureModeERSt10shared_ptrINS0_8ImageBufEERKNS0_9ImageSpecENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_11ImageOutputENS0_8TypeDescEbNS0_17basic_string_viewIcSD_EES9_RSoRdSM_Rm:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #31
  store float 0x47EFFFFFE0000000, ptr %i.n, align 4, !tbaa !187
  store i32 -2147483648, ptr %140, align 8, !tbaa !172
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.wc, i8 0, i64 28, i1 false)
  %i.alo = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo5clampERNS0_8ImageBufERKS2_NS0_4spanIKfLm18446744073709551615EEES8_bNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %i.aln, ptr noundef nonnull align 8 dereferenceable(16) %i.aln, ptr nonnull %i.m, i64 1, ptr nonnull %i.n, i64 1, i1 noundef zeroext true, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %140, i32 noundef %i.cc)
          to label %bb.lo unwind label %bb.lp     ; 0 uses

end_hunk_12
