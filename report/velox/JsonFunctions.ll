inline.NumInlined: 16951
inline.NumDeleted: 7027
begin_hunk_0_@_ZN8facebook5velox9functions12_GLOBAL__N_115JsonExtractImpl7processERKNS0_10StringViewES6_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

_ZN8simdjson14to_json_stringENS_15simdjson_resultINS_8fallback8ondemand5arrayEEE.exit.i.i: ; preds = %bb.ab, %bb.aa
  %storemerge.i.i = phi i32 [ 0, %bb.ab ], [ 2, %bb.aa ]
  store i32 %storemerge.i.i, ptr %i.ag, align 4, !tbaa !41, !noalias !2341
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %15, ptr %3, align 8
  %.sroa.0.sroa.3.0..sroa_idx300.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 1, ptr %.sroa.0.sroa.3.0..sroa_idx300.i.i, align 8
  %.sroa.0.sroa.4.0..sroa_idx301.i.i = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %.sroa.0.sroa.4.0..sroa_idx301.i.i, align 4
  %.sroa.0.sroa.5.0..sroa_idx302.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ap, ptr %.sroa.0.sroa.5.0..sroa_idx302.i.i, align 8
  %.sroa.3.0..sroa_idx303.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 0, ptr %.sroa.3.0..sroa_idx303.i.i, align 8
  call void @_ZN8simdjson14to_json_stringERNS_8fallback8ondemand5arrayE(ptr dead_on_unwind nonnull writable sret(%"struct.simdjson::simdjson_result.114") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %3) #26
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.pre251.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !tbaa !2338 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not27.i.i = icmp eq i32 %.pre251.i.i, 0
  br i1 %.not27.i.i, label %.thread244.i.i, label %_ZN8simdjson14to_json_stringENS_15simdjson_resultINS_8fallback8ondemand5arrayEEE.exit.thread.i.i

.thread244.i.i:                                   ; preds = %_ZN8simdjson14to_json_stringENS_15simdjson_resultINS_8fallback8ondemand5arrayEEE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !2340
  invoke void @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE9push_backEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %.noexc48 unwind label %bb.bb

.noexc48:                                         ; preds = %.thread244.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZN8facebook5velox9functions17SIMDJsonExtractor7extractIZNS1_12_GLOBAL__N_115JsonExtractImpl7processERKNS0_10StringViewES8_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlRT_E_EEN8simdjson10error_codeERNSJ_8fallback8ondemand8documentESH_Rb.exit.thread73

_ZN8simdjson14to_json_stringENS_15simdjson_resultINS_8fallback8ondemand5arrayEEE.exit.thread.i.i: ; preds = %_ZN8simdjson14to_json_stringENS_15simdjson_resultINS_8fallback8ondemand5arrayEEE.exit.i.i, %_ZN8simdjson14to_json_stringENS_15simdjson_resultINS_8fallback8ondemand5arrayEEE.exit.thread.sink.split.i.i, %bb.u
  %i.el = phi i32 [ %.pre251.i.i, %_ZN8simdjson14to_json_stringENS_15simdjson_resultINS_8fallback8ondemand5arrayEEE.exit.i.i ], [ 17, %bb.u ], [ 28, %_ZN8simdjson14to_json_stringENS_15simdjson_resultINS_8fallback8ondemand5arrayEEE.exit.thread.sink.split.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit

bb.ac:                                            ; preds = %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @_ZN8simdjson14to_json_stringERNS_8fallback8ondemand8documentE(ptr dead_on_unwind nonnull writable sret(%"struct.simdjson::simdjson_result.114") align 8 %9, ptr noundef nonnull align 8 dereferenceable(56) %15) #26
  %i.em = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.en = load i32, ptr %i.em, align 8, !tbaa !2338 ; 2 uses
  %.not26.i.i = icmp eq i32 %i.en, 0
  br i1 %.not26.i.i, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.eo = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !2344 ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !2214
  %.not.i.i49.i.i = icmp eq ptr %i.ep, %i.er
  br i1 %.not.i.i49.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ep, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false)
  %i.es = load ptr, ptr %i.eo, align 8, !tbaa !2344
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store ptr %i.et, ptr %i.eo, align 8, !tbaa !2344
  br label %.thread246.i.i

bb.af:                                            ; preds = %bb.ad
  %i.eu = load ptr, ptr %11, align 8, !tbaa !2211 ; 5 uses
  %i.ev = ptrtoint ptr %i.ep to i64
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = sub i64 %i.ev, %i.ew                    ; 4 uses
  %i.ey = icmp eq i64 %i.ex, 9223372036854775792
  br i1 %i.ey, label %.invoke, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.af
  %i.ez = ashr exact i64 %i.ex, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ez, i64 1)
  %i.fa = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.ez ; 2 uses
  %i.fb = icmp ult i64 %i.fa, %i.ez
  %i.fc = call i64 @llvm.umin.i64(i64 %i.fa, i64 576460752303423487)
  %i.fd = select i1 %i.fb, i64 576460752303423487, i64 %i.fc ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.fd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.fe = shl nuw nsw i64 %i.fd, 4
  %i.ff = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fe) #46
          to label %.noexc50 unwind label %bb.bb  ; 5 uses

.noexc50:                                         ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.ex
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fg, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false)
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.eu, %i.ep
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc50, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.fi, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ff, %.noexc50 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.fh, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.eu, %.noexc50 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !2340, !alias.scope !2345
  %i.fh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.fh, %i.ep
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2349

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.noexc50
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.ff, %.noexc50 ], [ %i.fi, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.i23.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef %i.ex) #47
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i: ; preds = %bb.ag, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i
  store ptr %i.ff, ptr %11, align 8, !tbaa !2211
  store ptr %i.fj, ptr %i.eo, align 8, !tbaa !2344
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %i.fd
  store ptr %i.fk, ptr %i.eq, align 8, !tbaa !2214
  br label %.thread246.i.i

.thread246.i.i:                                   ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %_ZN8facebook5velox9functions17SIMDJsonExtractor7extractIZNS1_12_GLOBAL__N_115JsonExtractImpl7processERKNS0_10StringViewES8_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlRT_E_EEN8simdjson10error_codeERNSJ_8fallback8ondemand8documentESH_Rb.exit.thread73

bb.ah:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit

bb.ai:                                            ; preds = %bb.j
  %i.fl = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !2344 ; 5 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !2214
  %.not.i50.i.i = icmp eq ptr %i.fm, %i.fo
  br i1 %.not.i50.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fm, ptr noundef nonnull align 8 dereferenceable(16) @_ZZN8facebook5velox9functions12_GLOBAL__N_115JsonExtractImpl7processERKNS0_10StringViewES6_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11kNullString, i64 16, i1 false), !tbaa.struct !2340
  %i.fp = load ptr, ptr %i.fl, align 8, !tbaa !2344
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store ptr %i.fq, ptr %i.fl, align 8, !tbaa !2344
  br label %_ZN8facebook5velox9functions17SIMDJsonExtractor7extractIZNS1_12_GLOBAL__N_115JsonExtractImpl7processERKNS0_10StringViewES8_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlRT_E_EEN8simdjson10error_codeERNSJ_8fallback8ondemand8documentESH_Rb.exit.thread73

bb.ak:                                            ; preds = %bb.ai
  %i.fr = load ptr, ptr %11, align 8, !tbaa !2211 ; 5 uses
  %i.fs = ptrtoint ptr %i.fm to i64
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = sub i64 %i.fs, %i.ft                    ; 4 uses
  %i.fv = icmp eq i64 %i.fu, 9223372036854775792
  br i1 %i.fv, label %.invoke, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i

.invoke:                                          ; preds = %bb.ak, %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #49
          to label %.cont unwind label %bb.bb

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.ak
  %i.fw = ashr exact i64 %i.fu, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fw, i64 1)
  %i.fx = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.fw ; 2 uses
  %i.fy = icmp ult i64 %i.fx, %i.fw
  %i.fz = call i64 @llvm.umin.i64(i64 %i.fx, i64 576460752303423487)
  %i.ga = select i1 %i.fy, i64 576460752303423487, i64 %i.fz ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.ga, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.gb = shl nuw nsw i64 %i.ga, 4
  %i.gc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gb) #46
          to label %.noexc52 unwind label %bb.bb  ; 5 uses

.noexc52:                                         ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.fu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gd, ptr noundef nonnull align 8 dereferenceable(16) @_ZZN8facebook5velox9functions12_GLOBAL__N_115JsonExtractImpl7processERKNS0_10StringViewES6_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11kNullString, i64 16, i1 false), !tbaa.struct !2340
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.fr, %i.fm
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc52, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i.i.i ], [ %i.gc, %.noexc52 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ge, %.lr.ph.i.i.i.i.i.i.i ], [ %i.fr, %.noexc52 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !2340, !alias.scope !2350
  %i.ge = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ge, %i.fm
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !2349

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc52
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.gc, %.noexc52 ], [ %i.gf, %.lr.ph.i.i.i.i.i.i.i ]
  %i.gg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i.i = icmp eq ptr %i.fr, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fr, i64 noundef %i.fu) #47
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i: ; preds = %bb.al, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i
  store ptr %i.gc, ptr %11, align 8, !tbaa !2211
  store ptr %i.gg, ptr %i.fl, align 8, !tbaa !2344
  %i.gh = getelementptr inbounds nuw [16 x i8], ptr %i.gc, i64 %i.ga
  store ptr %i.gh, ptr %i.fn, align 8, !tbaa !2214
  br label %_ZN8facebook5velox9functions17SIMDJsonExtractor7extractIZNS1_12_GLOBAL__N_115JsonExtractImpl7processERKNS0_10StringViewES8_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlRT_E_EEN8simdjson10error_codeERNSJ_8fallback8ondemand8documentESH_Rb.exit.thread73

bb.am:                                            ; preds = %bb.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !2354
  switch i32 %i.gj, label %_ZN8facebook5velox9functions17SIMDJsonExtractor7extractIZNS1_12_GLOBAL__N_115JsonExtractImpl7processERKNS0_10StringViewES8_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlRT_E_EEN8simdjson10error_codeERNSJ_8fallback8ondemand8documentESH_Rb.exit.thread73 [
    i32 3, label %bb.an
    i32 1, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am, %bb.am
  store i8 0, ptr %i.a, align 1, !tbaa !74
  br label %_ZN8facebook5velox9functions17SIMDJsonExtractor7extractIZNS1_12_GLOBAL__N_115JsonExtractImpl7processERKNS0_10StringViewES8_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlRT_E_EEN8simdjson10error_codeERNSJ_8fallback8ondemand8documentESH_Rb.exit.thread73

bb.ao:                                            ; preds = %bb.h
  %i.gk = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !21, !noalias !2357 ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.ap
  call void @llvm.assume(i1 %i.gm), !noalias !2357
  %i.gn = load i32, ptr %i.gl, align 4, !tbaa !3, !noalias !2357
  %i.go = zext i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !20, !noalias !2357
  switch i8 %i.gq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit [
    i8 91, label %bb.ap
    i8 123, label %bb.av
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.gr = load i8, ptr %i.al, align 8, !tbaa !25, !range !26, !noalias !2357, !noundef !27
  %i.gs = trunc nuw i8 %i.gr to i1
  br i1 %i.gs, label %_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gt = load ptr, ptr %i.ab, align 8, !tbaa !28, !noalias !2357
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !29, !noalias !2357 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !31, !noalias !2357 ; 3 uses
  %i.gy = icmp ne i32 %i.gx, 0
  call void @llvm.assume(i1 %i.gy)
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.ha = add i32 %i.gx, -1
  %i.hb = zext i32 %i.ha to i64
  %i.hc = load ptr, ptr %i.gz, align 8, !tbaa !40, !noalias !2357 ; 2 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.hb
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !3, !noalias !2357
  %i.hf = zext i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !20, !noalias !2357
  %.not.i.i.i = icmp eq i8 %i.hh, 93
  br i1 %.not.i.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store ptr null, ptr %i.ab, align 8, !tbaa !28, !noalias !2357
  store i32 0, ptr %i.ag, align 4, !tbaa !41, !noalias !2357
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit

bb.as:                                            ; preds = %bb.aq
  %i.hi = zext i32 %i.gx to i64
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.hi
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !3, !noalias !2357
  %i.hl = zext i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !20, !noalias !2357
  %i.ho = icmp eq i8 %i.hn, 93
  br i1 %i.ho, label %bb.at, label %_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit.i

bb.at:                                            ; preds = %bb.as
  %i.hp = call noundef zeroext i1 @_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv(ptr noundef nonnull align 8 dereferenceable(56) %15) #26, !noalias !2357
  br i1 %i.hp, label %_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  store ptr null, ptr %i.ab, align 8, !tbaa !28, !noalias !2357
  store i32 0, ptr %i.ag, align 4, !tbaa !41, !noalias !2357
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit

bb.av:                                            ; preds = %bb.ao
  %i.hq = load i8, ptr %i.al, align 8, !tbaa !25, !range !26, !noalias !2357, !noundef !27
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hs = load ptr, ptr %i.ab, align 8, !tbaa !28, !noalias !2357
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !29, !noalias !2357 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !31, !noalias !2357 ; 3 uses
  %i.hx = icmp ne i32 %i.hw, 0
  call void @llvm.assume(i1 %i.hx)
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hz = add i32 %i.hw, -1
  %i.ia = zext i32 %i.hz to i64
  %i.ib = load ptr, ptr %i.hy, align 8, !tbaa !40, !noalias !2357 ; 2 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.ia
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !3, !noalias !2357
  %i.ie = zext i32 %i.id to i64
  %i.if = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !20, !noalias !2357
  %.not.i6.i.i = icmp eq i8 %i.ig, 125
  br i1 %.not.i6.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store ptr null, ptr %i.ab, align 8, !tbaa !28, !noalias !2357
  store i32 0, ptr %i.ag, align 4, !tbaa !41, !noalias !2357
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit

bb.ay:                                            ; preds = %bb.aw
  %i.ih = zext i32 %i.hw to i64
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.ih
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !3, !noalias !2357
  %i.ik = zext i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ik
  %i.im = load i8, ptr %i.il, align 1, !tbaa !20, !noalias !2357
  %i.in = icmp eq i8 %i.im, 125
  br i1 %i.in, label %bb.az, label %_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit.i

bb.az:                                            ; preds = %bb.ay
  %i.io = call noundef zeroext i1 @_ZNK8simdjson8fallback8ondemand13json_iterator8balancedEv(ptr noundef nonnull align 8 dereferenceable(56) %15) #26, !noalias !2357
  br i1 %i.io, label %_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store ptr null, ptr %i.ab, align 8, !tbaa !28, !noalias !2357
  store i32 0, ptr %i.ag, align 4, !tbaa !41, !noalias !2357
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit

_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit.i: ; preds = %bb.az, %bb.ay, %bb.av, %bb.at, %bb.as, %bb.ap
  %.sroa.0.sroa.10.2.i = load ptr, ptr %i.ai, align 8, !tbaa !7, !noalias !2357
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store ptr %15, ptr %10, align 8, !tbaa !50
  %.sroa.0.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 1, ptr %.sroa.0.sroa.8.0..sroa_idx.i, align 8, !tbaa !3
  %.sroa.0.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 0, ptr %.sroa.0.sroa.9.0..sroa_idx.i, align 4
  %.sroa.0.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %.sroa.0.sroa.10.2.i, ptr %.sroa.0.sroa.10.0..sroa_idx.i, align 8, !tbaa !40
  %i.ip = invoke fastcc noundef i32 @_ZN8facebook5velox9functions17SIMDJsonExtractor15extractInternalIZNS1_12_GLOBAL__N_115JsonExtractImpl7processERKNS0_10StringViewES8_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlRT_E_EEN8simdjson10error_codeERNSJ_8fallback8ondemand5valueESH_Rbm(ptr noundef nonnull readonly align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull readonly align 8 dereferenceable(8) %12, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 noundef 0)
          to label %_ZN8facebook5velox9functions17SIMDJsonExtractor7extractIZNS1_12_GLOBAL__N_115JsonExtractImpl7processERKNS0_10StringViewES8_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlRT_E_EEN8simdjson10error_codeERNSJ_8fallback8ondemand8documentESH_Rb.exit unwind label %bb.bb ; 2 uses

_ZN8facebook5velox9functions17SIMDJsonExtractor7extractIZNS1_12_GLOBAL__N_115JsonExtractImpl7processERKNS0_10StringViewES8_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlRT_E_EEN8simdjson10error_codeERNSJ_8fallback8ondemand8documentESH_Rb.exit: ; preds = %_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %.not39 = icmp eq i32 %i.ip, 0
  br i1 %.not39, label %_ZN8facebook5velox9functions17SIMDJsonExtractor7extractIZNS1_12_GLOBAL__N_115JsonExtractImpl7processERKNS0_10StringViewES8_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlRT_E_EEN8simdjson10error_codeERNSJ_8fallback8ondemand8documentESH_Rb.exit.thread73, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit

bb.bb:                                            ; preds = %.invoke, %_ZN8simdjson8fallback8ondemand8document9get_valueEv.exit.i, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i, %.thread244.i.i, %.thread230.i.i
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

_ZN8facebook5velox9functions17SIMDJsonExtractor7extractIZNS1_12_GLOBAL__N_115JsonExtractImpl7processERKNS0_10StringViewES8_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlRT_E_EEN8simdjson10error_codeERNSJ_8fallback8ondemand8documentESH_Rb.exit.thread73: ; preds = %.noexc48, %.thread246.i.i, %.noexc, %bb.am, %bb.aj, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i, %bb.an, %_ZN8facebook5velox9functions17SIMDJsonExtractor7extractIZNS1_12_GLOBAL__N_115JsonExtractImpl7processERKNS0_10StringViewES8_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlRT_E_EEN8simdjson10error_codeERNSJ_8fallback8ondemand8documentESH_Rb.exit
  %i.ir = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !2344
  %i.it = load ptr, ptr %11, align 8, !tbaa !2211
  %i.iu = icmp eq ptr %i.is, %i.it
  br i1 %i.iu, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %_ZN8facebook5velox9functions17SIMDJsonExtractor7extractIZNS1_12_GLOBAL__N_115JsonExtractImpl7processERKNS0_10StringViewES8_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlRT_E_EEN8simdjson10error_codeERNSJ_8fallback8ondemand8documentESH_Rb.exit.thread73
  %i.iv = load i8, ptr %i.a, align 1, !tbaa !74, !range !26, !noundef !27
  %i.iw = trunc nuw i8 %i.iv to i1
  br i1 %i.iw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ix = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !123
  %i.iz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef %i.iy, ptr noundef nonnull @.str.223, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit unwind label %bb.be ; 0 uses

bb.be:                                            ; preds = %bb.bd
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bf:                                            ; preds = %_ZN8facebook5velox9functions17SIMDJsonExtractor7extractIZNS1_12_GLOBAL__N_115JsonExtractImpl7processERKNS0_10StringViewES8_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlRT_E_EEN8simdjson10error_codeERNSJ_8fallback8ondemand8documentESH_Rb.exit.thread73
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %16)
          to label %bb.bg unwind label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.jb = load i8, ptr %i.a, align 1, !tbaa !74, !range !26, !noundef !27
  %i.jc = trunc nuw i8 %i.jb to i1                ; 2 uses
  br i1 %i.jc, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jd = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.je = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jd, ptr noundef nonnull @.str.160, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.bj ; 0 uses

bb.bi:                                            ; preds = %bb.bf
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bj:                                            ; preds = %bb.bk, %bb.bh
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.bh, %bb.bg
  %i.jh = load ptr, ptr %i.ir, align 8, !tbaa !2344
  %i.ji = load ptr, ptr %11, align 8, !tbaa !2211 ; 3 uses
  %.not79 = icmp eq ptr %i.jh, %i.ji
  br i1 %.not79, label %._crit_edge, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57.peel

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.jj = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  %.sroa.2.0..sroa_idx.peel.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %.sroa.2.0.copyload.peel.pre = load ptr, ptr %.sroa.2.0..sroa_idx.peel.phi.trans.insert, align 8, !tbaa !79
  %.sroa.0.0.copyload.peel.pre = load i64, ptr %i.ji, align 8, !tbaa !75
  %i.jk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jj, ptr noundef %.sroa.2.0.copyload.peel.pre, i64 noundef %.sroa.0.0.copyload.peel.pre)
          to label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit.peel unwind label %.loopexit.split-lp ; 0 uses

_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit.peel: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57.peel
  %i.jl = load ptr, ptr %i.ir, align 8, !tbaa !2344
  %i.jm = load ptr, ptr %11, align 8, !tbaa !2211
  %i.jn = ptrtoint ptr %i.jl to i64
  %i.jo = ptrtoint ptr %i.jm to i64
  %i.jp = sub i64 %i.jn, %i.jo
  %i.jq = icmp ugt i64 %i.jp, 16
  br i1 %i.jq, label %.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit, %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit.peel, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  br i1 %i.jc, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60, label %bb.bk

.peel.next:                                       ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit.peel, %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit ], [ 1, %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit.peel ] ; 2 uses
  %i.jr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jj, ptr noundef nonnull @.str.224, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57 unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %.peel.next, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

.loopexit.split-lp:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57: ; preds = %.peel.next
  %.pre = load ptr, ptr %11, align 8, !tbaa !2211
  %.phi.trans.insert = getelementptr inbounds nuw [16 x i8], ptr %.pre, i64 %indvars.iv ; 2 uses
  %.sroa.2.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.sroa.2.0.copyload.pre = load ptr, ptr %.sroa.2.0..sroa_idx.phi.trans.insert, align 8, !tbaa !79
  %.sroa.0.0.copyload.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !75
  %i.js = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jj, ptr noundef %.sroa.2.0.copyload.pre, i64 noundef %.sroa.0.0.copyload.pre)
          to label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit unwind label %.loopexit ; 0 uses

_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St17basic_string_viewIS3_S4_E.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jt = load ptr, ptr %i.ir, align 8, !tbaa !2344
  %i.ju = load ptr, ptr %11, align 8, !tbaa !2211
  %i.jv = ptrtoint ptr %i.jt to i64
  %i.jw = ptrtoint ptr %i.ju to i64
  %i.jx = sub i64 %i.jv, %i.jw
  %i.jy = ashr exact i64 %i.jx, 4
  %i.jz = icmp ugt i64 %i.jy, %indvars.iv.next
  br i1 %i.jz, label %.peel.next, label %._crit_edge, !llvm.loop !2360

bb.bk:                                            ; preds = %._crit_edge
  %i.ka = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.kb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ka, ptr noundef nonnull @.str.164, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60 unwind label %bb.bj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60: ; preds = %bb.bk, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !2362)
  call void @llvm.experimental.noalias.scope.decl(metadata !2365)
  %i.kc = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 10 uses
  store ptr %i.kc, ptr %17, align 8, !tbaa !121, !alias.scope !2368
  %i.kd = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 6 uses
  store i64 0, ptr %i.kd, align 8, !tbaa !123, !alias.scope !2368
  store i8 0, ptr %i.kc, align 8, !tbaa !20, !alias.scope !2368
  %i.ke = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !561, !noalias !2368 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.kf, null
  %i.kg = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.kh = load ptr, ptr %i.kg, align 8, !noalias !2368 ; 2 uses
  %i.ki = icmp ugt ptr %i.kf, %i.kh
  %.08.i.i.i = select i1 %i.ki, ptr %i.kf, ptr %i.kh ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.kj = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !565, !noalias !2368 ; 2 uses
  %i.kl = ptrtoint ptr %.08.i.i.i to i64
  %i.km = ptrtoint ptr %i.kk to i64
  %i.kn = sub i64 %i.kl, %i.km
  %i.ko = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef 0, ptr noundef %i.kk, i64 noundef %i.kn)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.bm ; 0 uses

bb.bm:                                            ; preds = %bb.bn, %bb.bl
  %i.kp = landingpad { ptr, i32 }
          cleanup
  %i.kq = load ptr, ptr %17, align 8, !tbaa !137, !alias.scope !2368 ; 2 uses
  %i.kr = icmp eq ptr %i.kq, %i.kc
  br i1 %i.kr, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bm
  %i.ks = load i64, ptr %i.kc, align 8, !tbaa !20, !alias.scope !2368
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %i.kq, i64 noundef %i.kt) #47
  br label %.body

bb.bn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.ku = getelementptr inbounds nuw i8, ptr %16, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %i.ku)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.bm

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.bn, %bb.bl
  %i.kv = load ptr, ptr %2, align 8, !tbaa !137   ; 6 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.kx = icmp eq ptr %i.kv, %i.kw
  %i.ky = load ptr, ptr %17, align 8, !tbaa !137  ; 6 uses
  %i.kz = icmp eq ptr %i.ky, %i.kc                ; 2 uses
  br i1 %i.kx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.kz, label %bb.bo, label %.thread.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.kz, label %bb.bo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.la = load i64, ptr %i.kd, align 8, !tbaa !123 ; 3 uses
  %i.lb = icmp ult i64 %i.la, 16
  call void @llvm.assume(i1 %i.lb)
  %.not21.i = icmp eq ptr %17, %2
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.bp, !prof !71

bb.bp:                                            ; preds = %bb.bo
  switch i64 %i.la, label %bb.br [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.bq
  ]

bb.bq:                                            ; preds = %bb.bp
  %i.lc = load i8, ptr %i.ky, align 1, !tbaa !20
  store i8 %i.lc, ptr %i.kv, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.br:                                            ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kv, ptr align 1 %i.ky, i64 %i.la, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.br, %bb.bq, %bb.bp
  %i.ld = load i64, ptr %i.kd, align 8, !tbaa !123 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ld, ptr %i.le, align 8, !tbaa !123
end_hunk_0
