Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/maketexture?download=true
inline.NumInlined: 6377
inline.NumDeleted: 1711
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_ZN3fmt3v125printIJRKN11OpenImageIO4v3_18TypeDescERS4_EEEvRSoNS0_7fstringIJDpT_EE1tEDpOSA_:bb.a
  %i.w = call i64 @llvm.umin.i64(i64 %.013.i.i, i64 9223372036854775807) ; 3 uses
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.0.i.i, i64 noundef %i.w)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc.i:                                         ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.w
  %i.z = sub nuw i64 %.013.i.i, %i.w              ; 2 uses
  %.not.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i, label %bb.e, !llvm.loop !41

_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i: ; preds = %.noexc.i
  %i.aa = load ptr, ptr %8, align 8, !tbaa !236   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, %i.g
  br i1 %.not.i.i.i, label %_ZN3fmt3v126vprintERSoNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i
  call void @free(ptr noundef %i.aa) #30
  br label %_ZN3fmt3v126vprintERSoNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %bb.d, %bb.c
  %lpad.loopexit.split-lp10 = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %8, align 8, !tbaa !236   ; 2 uses
  %.not.i.i10.i = icmp eq ptr %i.ab, %i.g
  br i1 %.not.i.i10.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit11.i, label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @free(ptr noundef %i.ab) #30
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit11.i

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit11.i: ; preds = %bb.g, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  resume { ptr, i32 } %lpad.loopexit.split-lp10

_ZN3fmt3v126vprintERSoNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  ret void
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_18ImageBuf11copy_pixelsERKS1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v125printIJRiS2_EEEvRSoNS0_7fstringIJDpT_EE1tEDpOS5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1, i64 %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %6 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 13 uses
  %7 = alloca %"struct.fmt::v12::detail::format_arg_store.228", align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.a = load i32, ptr %3, align 4, !tbaa !50
  store i32 %i.a, ptr %7, align 16, !tbaa !62
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.c = load i32, ptr %4, align 4, !tbaa !50
  store i32 %i.c, ptr %i.b, align 16, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.f, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.e, align 8, !tbaa !230
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store ptr %i.g, ptr %6, align 8, !tbaa !236
  store i64 500, ptr %i.d, align 8, !tbaa !237
  %i.h = icmp eq i64 %2, 2
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = load i16, ptr %1, align 1
  %i.j = icmp ne i16 %i.i, 32123
  %i.k = zext i1 %i.j to i32
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.sink66.i = load i128, ptr %7, align 16, !tbaa !62
  %i.m = trunc i128 %.sroa.0.0.copyload.sink66.i to i32
  %i.n = invoke ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEiTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr nonnull align 8 dereferenceable(32) %6, i32 noundef %i.m)
          to label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %1, ptr %5, align 8, !tbaa !207
  %.sroa.2.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %2, ptr %.sroa.2.0..sroa_idx.i16.i, align 8, !tbaa !59
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.o, align 8, !tbaa !245
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %6, ptr %i.p, align 8, !tbaa !242
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 17, ptr %i.q, align 8, !tbaa !247
  %.sroa.2.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %7, ptr %.sroa.2.0..sroa_idx.i17.i, align 8, !tbaa !62
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr null, ptr %i.r, align 8, !tbaa !174
  invoke void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %.noexc5 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc5:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit: ; preds = %.noexc5, %bb.c
  %i.s = load ptr, ptr %6, align 8, !tbaa !236
  %i.t = load i64, ptr %i.f, align 8, !tbaa !238
  br label %bb.e

bb.e:                                             ; preds = %.noexc.i, %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  %.013.i.i = phi i64 [ %i.t, %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit ], [ %i.x, %.noexc.i ] ; 2 uses
  %.0.i.i = phi ptr [ %i.s, %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit ], [ %i.w, %.noexc.i ] ; 2 uses
  %i.u = call i64 @llvm.umin.i64(i64 %.013.i.i, i64 9223372036854775807) ; 3 uses
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.0.i.i, i64 noundef %i.u)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc.i:                                         ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.u
  %i.x = sub nuw i64 %.013.i.i, %i.u              ; 2 uses
  %.not.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i, label %bb.e, !llvm.loop !41

_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i: ; preds = %.noexc.i
  %i.y = load ptr, ptr %6, align 8, !tbaa !236    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %i.g
  br i1 %.not.i.i.i, label %_ZN3fmt3v126vprintERSoNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i
  call void @free(ptr noundef %i.y) #30
  br label %_ZN3fmt3v126vprintERSoNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %bb.d, %bb.c
  %lpad.loopexit.split-lp10 = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %6, align 8, !tbaa !236    ; 2 uses
  %.not.i.i10.i = icmp eq ptr %i.z, %i.g
  br i1 %.not.i.i10.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit11.i, label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @free(ptr noundef %i.z) #30
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit11.i

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit11.i: ; preds = %bb.g, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  resume { ptr, i32 } %lpad.loopexit.split-lp10

_ZN3fmt3v126vprintERSoNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  ret void
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil12istarts_withENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZNSt8functionIFvN11OpenImageIO4v3_13ROIEEEC2IZNS1_L17make_texture_implENS1_12ImageBufAlgo15MakeTextureModeEPKNS1_8ImageBufENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESG_RKNS1_9ImageSpecEPSoE3$_0vEEOT_"(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.b = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #33
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !388
  store ptr %i.b, ptr %0, align 8, !tbaa !174
  store ptr @"_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L17make_texture_implENS1_12ImageBufAlgo15MakeTextureModeEPKNS1_8ImageBufENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_RKNS1_9ImageSpecEPSoE3$_0E9_M_invokeERKSt9_Any_dataOS2_", ptr %i.c, align 8, !tbaa !379
  store ptr @"_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L17make_texture_implENS1_12ImageBufAlgo15MakeTextureModeEPKNS1_8ImageBufENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_RKNS1_9ImageSpecEPSoE3$_0E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation", ptr %i.a, align 8, !tbaa !206
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !206  ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN11OpenImageIO4v3_1L12setup_filterERKNS0_9ImageSpecES3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 %.36.val, i32 %.40.val, i32 %.36.val1, i32 %.40.val3, ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.OpenImageIO::v3_1::FilterDesc", align 16 ; 6 uses
  %2 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.a = insertelement <2 x i32> poison, i32 %.36.val, i64 0
  %i.b = insertelement <2 x i32> %i.a, i32 %.40.val, i64 1
  %i.c = sitofp <2 x i32> %i.b to <2 x float>
  %i.d = insertelement <2 x i32> poison, i32 %.36.val1, i64 0
  %i.e = insertelement <2 x i32> %i.d, i32 %.40.val3, i64 1
  %i.f = sitofp <2 x i32> %i.e to <2 x float>
  %i.g = fdiv <2 x float> %i.c, %i.f
  %.fr = freeze <2 x float> %i.g                  ; 2 uses
  %i.h = fcmp ogt <2 x float> %.fr, splat (float 1.000000e+00) ; 2 uses
  %i.i = select <2 x i1> %i.h, <2 x float> %.fr, <2 x float> splat (float 1.000000e+00)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !63
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %3 = bitcast <2 x i1> %i.h to i2
  %or.cond.not = icmp eq i2 %3, 0
  br i1 %or.cond.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.283, i64 noundef 15) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.n = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.180, i64 noundef 8) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %i.o = tail call noundef i32 @_ZN11OpenImageIO4v3_18Filter2D11num_filtersEv() ; 2 uses
  %.not15 = icmp sgt i32 %i.o, 0
  br i1 %.not15, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread12
  %.01416 = phi i32 [ %i.ac, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread12 ], [ 0, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @_ZN11OpenImageIO4v3_18Filter2D14get_filterdescEiPNS0_10FilterDescE(i32 noundef %.01416, ptr noundef nonnull %1)
  %i.p = load ptr, ptr %1, align 16, !tbaa !1063  ; 2 uses
  %i.q = load i64, ptr %i.j, align 8, !tbaa !63   ; 4 uses
  %i.r = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #30
  %i.s = icmp eq i64 %i.q, %i.r
  br i1 %i.s, label %bb.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread12

bb.f:                                             ; preds = %.lr.ph
  %i.t = icmp eq i64 %i.q, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !61    ; 2 uses
  br i1 %i.t, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.f
  %bcmp.i = call i32 @bcmp(ptr %.pre, ptr nonnull %i.p, i64 %i.q)
  %i.u = icmp eq i32 %bcmp.i, 0
  br i1 %i.u, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread12

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.f, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  store ptr %.pre, ptr %2, align 8, !tbaa !55
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.q, ptr %i.v, align 8, !tbaa !56
  %i.w = load <4 x float>, ptr %1, align 16
  %i.x = shufflevector <4 x float> %i.w, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.y = fmul <2 x float> %i.i, %i.x              ; 2 uses
  %i.z = extractelement <2 x float> %i.y, i64 0
  %i.aa = extractelement <2 x float> %i.y, i64 1
  %i.ab = call noundef ptr @_ZN11OpenImageIO4v3_18Filter2D6createENS0_17basic_string_viewIcSt11char_traitsIcEEEff(ptr noundef nonnull dead_on_return %2, float noundef %i.z, float noundef %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %.loopexit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread12: ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  %i.ac = add nuw nsw i32 %.01416, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ac, %i.o
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !1061

.loopexit:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread12, %bb.e, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %spec.select = phi ptr [ %i.ab, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ null, %bb.e ], [ null, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread12 ]
  ret ptr %spec.select
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_18errorfmtIJRNS0_17basic_string_viewIcSt11char_traitsIcEEEEEEvPKcDpOT_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.190", align 16 ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #30, !noalias !1066
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !1066
  %i.b = load ptr, ptr %1, align 8, !tbaa !55, !noalias !1066
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !56, !noalias !1066
  %i.e = ptrtoint ptr %i.b to i64
  store i64 %i.e, ptr %2, align 16, !noalias !1066
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.d, ptr %.sroa_idx3.i, align 8, !noalias !1066
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull %0, i64 %i.a, i64 13, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !1066
  %i.f = load ptr, ptr %4, align 8, !tbaa !61
  store ptr %i.f, ptr %3, align 8, !tbaa !55
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !63
  store i64 %i.i, ptr %i.g, align 8, !tbaa !56
  invoke void @_ZN11OpenImageIO4v3_13pvt12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %4, align 8, !tbaa !61     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8, !tbaa !62
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %4, align 8, !tbaa !61     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %bb.c
  %i.s = load i64, ptr %i.q, align 8, !tbaa !62
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %i.o
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo6resizeERNS0_8ImageBufERKS2_NS0_14ParamValueSpanENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_17make_pvINS0_8Filter2DEEENS0_10ParamValueENS0_17basic_string_viewIcSt11char_traitsIcEEEPT_(ptr dead_on_unwind noalias writable sret(%"class.OpenImageIO::v3_1::ParamValue") align 8 %0, ptr noundef dead_on_return %1, ptr noundef %2) local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.OpenImageIO::v3_1::span", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !390
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr null, ptr %0, align 8, !tbaa !391
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %i.b, align 8, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.c, align 4, !tbaa !210
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.d, i8 0, i64 7, i1 false)
  %i.e = load ptr, ptr %1, align 8, !tbaa !55     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_110ParamValueC2IPNS0_8Filter2DENS0_17basic_string_viewIcSt11char_traitsIcEEEEERKT0_NS0_8TypeDescEiNS0_4spanIT_Lm18446744073709551615EEENS1_4CopyENS1_6InterpE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.e, ptr %3, align 8, !tbaa !55
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.g, ptr %i.h, align 8, !tbaa !56
  %i.i = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %3)
          to label %_ZN11OpenImageIO4v3_110ParamValueC2IPNS0_8Filter2DENS0_17basic_string_viewIcSt11char_traitsIcEEEEERKT0_NS0_8TypeDescEiNS0_4spanIT_Lm18446744073709551615EEENS1_4CopyENS1_6InterpE.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #35
  unreachable

_ZN11OpenImageIO4v3_110ParamValueC2IPNS0_8Filter2DENS0_17basic_string_viewIcSt11char_traitsIcEEEEERKT0_NS0_8TypeDescEiNS0_4spanIT_Lm18446744073709551615EEENS1_4CopyENS1_6InterpE.exit: ; preds = %bb.a, %bb.b
  %i.l = phi ptr [ null, %bb.a ], [ %i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store ptr %i.a, ptr %4, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 8, ptr %i.m, align 8
  call void @_ZN11OpenImageIO4v3_110ParamValue12init_noclearENS0_7ustringENS0_8TypeDescEiNS1_6InterpENS0_4spanIKSt4byteLm18446744073709551615EEENS1_4CopyENS1_11FromUstringE(ptr noundef nonnull align 8 dereferenceable(39) %0, ptr %i.l, i64 270, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::span") align 8 %4, i8 1, i8 0) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

declare void @_ZN11OpenImageIO4v3_18Filter2D7destroyEPS1_(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v125printIJRA22_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_EEEvRSoNS0_7fstringIJDpT_EE1tEDpOSD_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(22) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %7 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 13 uses
  %8 = alloca %"struct.fmt::v12::detail::format_arg_store.192", align 16 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  store ptr %3, ptr %8, align 16, !tbaa !62
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.b = load ptr, ptr %4, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !63
  store ptr %i.b, ptr %i.a, align 16, !tbaa !62
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 %i.d, ptr %i.e, align 8, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.g = load ptr, ptr %5, align 8, !tbaa !61
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !63
  store ptr %i.g, ptr %i.f, align 16, !tbaa !62
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 %i.i, ptr %i.j, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.m, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.l, align 8, !tbaa !230
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
end_hunk_0
