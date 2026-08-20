inline.NumInlined: 6520
inline.NumDeleted: 3673
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z24grpc_chttp2_perform_readP21grpc_chttp2_transportRK10grpc_sliceRm:bb.a
  %10 = alloca %"class.grpc_core::latent_see::Appender", align 8 ; 4 uses
  %11 = alloca %"struct.grpc_core::H2UnknownFrameTrace", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
  %13 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %14 = alloca %"struct.grpc_core::CallTracerInterface::TransportByteSize", align 8 ; 6 uses
  %15 = alloca %"class.grpc_core::DebugLocation", align 1 ; 4 uses
  %16 = alloca %"class.std::vector.235", align 8  ; 9 uses
  %17 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
  %18 = alloca %"class.grpc_core::DebugLocation", align 1 ; 4 uses
  %19 = alloca %"class.std::vector.235", align 8  ; 9 uses
  %20 = alloca %"class.grpc_core::chttp2::FlowControlAction", align 4 ; 5 uses
  %21 = alloca %"class.grpc_core::latent_see::Appender", align 8 ; 4 uses
  %22 = alloca %"struct.grpc_core::H2UnknownFrameTrace", align 8 ; 6 uses
  %23 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
  %24 = alloca %"struct.grpc_core::CallTracerInterface::TransportByteSize", align 8 ; 6 uses
  %25 = alloca %"class.grpc_core::latent_see::Appender", align 8 ; 4 uses
  %26 = alloca %"struct.grpc_core::H2UnknownFrameTrace", align 8 ; 6 uses
  %27 = alloca %"class.grpc_core::latent_see::Appender", align 8 ; 4 uses
  %28 = alloca %"struct.grpc_core::H2UnknownFrameTrace", align 8 ; 6 uses
  %29 = alloca %"class.grpc_core::latent_see::Appender", align 8 ; 4 uses
  %30 = alloca %"struct.grpc_core::H2UnknownFrameTrace", align 8 ; 6 uses
  %31 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 4 uses
  %32 = alloca %"class.grpc_core::chttp2::FlowControlAction", align 8 ; 4 uses
  %33 = alloca %"class.grpc_core::chttp2::FlowControlAction", align 8 ; 4 uses
  %34 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 4 uses
  %35 = alloca %"class.grpc_core::chttp2::FlowControlAction", align 8 ; 4 uses
  %36 = alloca %"class.grpc_core::RefCountedPtr.253", align 8 ; 6 uses
  %37 = alloca %"class.absl::lts_20250512::Status", align 8 ; 9 uses
  %38 = alloca %"class.grpc_core::chttp2::FlowControlAction", align 4 ; 10 uses
  %39 = alloca %"class.grpc_core::chttp2::TransportFlowControl::IncomingUpdateContext", align 8 ; 9 uses
  %40 = alloca %"class.absl::lts_20250512::Status", align 8 ; 5 uses
  %41 = alloca %class.anon.418, align 1           ; 4 uses
  %42 = alloca %"class.grpc_core::chttp2::FlowControlAction", align 4 ; 5 uses
  %43 = alloca %"class.grpc_core::chttp2::StreamFlowControl::IncomingUpdateContext", align 8 ; 10 uses
  %44 = alloca %"class.absl::lts_20250512::Status", align 8 ; 5 uses
  %45 = alloca %"class.grpc_core::chttp2::FlowControlAction", align 4 ; 5 uses
  %46 = alloca %"class.grpc_core::DebugLocation", align 1 ; 4 uses
  %47 = alloca %"class.std::vector.235", align 8  ; 6 uses
  %48 = alloca %"struct.grpc_core::CallTracerInterface::TransportByteSize", align 8 ; 6 uses
  %49 = alloca %"class.absl::lts_20250512::Status", align 8 ; 6 uses
  %50 = alloca %"class.grpc_chttp2_transport::RemovedStreamHandle", align 8 ; 4 uses
  %51 = alloca %"class.absl::lts_20250512::Status", align 8 ; 6 uses
  %52 = alloca %"class.absl::lts_20250512::Status", align 8 ; 6 uses
  %53 = alloca %"class.absl::lts_20250512::Status", align 8 ; 7 uses
  %54 = alloca %"class.absl::lts_20250512::Status", align 8 ; 6 uses
  %55 = alloca [2 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 7 uses
  %56 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %58 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %59 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %60 = alloca %"class.grpc_core::DebugLocation", align 1 ; 4 uses
  %61 = alloca %"class.std::vector.235", align 8  ; 9 uses
  %62 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %63 = alloca %"class.grpc_core::DebugLocation", align 1 ; 4 uses
  %64 = alloca %"class.std::vector.235", align 8  ; 9 uses
  %65 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %66 = alloca %"class.grpc_core::DebugLocation", align 1 ; 4 uses
  %67 = alloca %"class.std::vector.235", align 8  ; 9 uses
  %68 = alloca %"class.absl::lts_20250512::Status", align 8 ; 6 uses
  %69 = alloca %"class.grpc_core::DebugLocation", align 1 ; 4 uses
  %70 = alloca %"class.std::vector.235", align 8  ; 6 uses
  %71 = alloca %"class.grpc_core::DebugLocation", align 1 ; 4 uses
  %72 = alloca %"class.std::vector.235", align 8  ; 9 uses
  %73 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %74 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %75 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %76 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %77 = alloca [5 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 13 uses
  %i.c = alloca ptr, align 8                      ; 11 uses
  %78 = alloca %"class.absl::lts_20250512::Status", align 8 ; 24 uses
  %79 = alloca %"class.absl::lts_20250512::Status", align 8 ; 6 uses
  %80 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %81 = alloca %"class.grpc_core::DebugLocation", align 1 ; 4 uses
  %82 = alloca %"class.std::vector.235", align 8  ; 7 uses
  %83 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %84 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %85 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %86 = alloca %"class.absl::lts_20250512::Status", align 8 ; 34 uses
  %87 = alloca %"class.absl::lts_20250512::Status", align 8 ; 5 uses
  %88 = alloca %struct.grpc_slice, align 8        ; 5 uses
  %89 = alloca %"class.absl::lts_20250512::Status", align 8 ; 7 uses
  %90 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %91 = alloca %"class.grpc_core::DebugLocation", align 1 ; 4 uses
  %92 = alloca %"class.std::vector.235", align 8  ; 4 uses
  %93 = alloca %"class.absl::lts_20250512::Status", align 8 ; 4 uses
  %94 = alloca %"class.absl::lts_20250512::Status", align 8 ; 6 uses
  %95 = alloca %struct.grpc_slice, align 8        ; 5 uses
  %96 = alloca %"class.absl::lts_20250512::Status", align 8 ; 4 uses
  %97 = alloca %"class.absl::lts_20250512::Status", align 8 ; 5 uses
  %98 = alloca %struct.grpc_slice, align 8        ; 5 uses
  %99 = alloca %"class.absl::lts_20250512::Status", align 8 ; 6 uses
  %100 = alloca %struct.grpc_slice, align 8       ; 5 uses
  %101 = alloca %"class.absl::lts_20250512::Status", align 8 ; 4 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !259
  %i.d = load ptr, ptr %2, align 8, !tbaa !261
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !262
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !262
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i8, ptr %i.j, align 8, !tbaa !262
  %i.l = zext i8 %i.k to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = phi ptr [ %i.f, %bb.b ], [ %i.i, %bb.c ] ; 17 uses
  %i.n = phi i64 [ %i.h, %bb.b ], [ %i.l, %bb.c ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #34
  store i64 1, ptr %78, align 8, !tbaa !263
  %i.p = icmp samesign eq i64 %i.n, 0
  br i1 %i.p, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.e

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.d
  store i64 1, ptr %0, align 8, !tbaa !263
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.q, align 8, !tbaa !264
  br label %bb.lu

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2472 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !8    ; 3 uses
  switch i32 %i.s, label %bb.ls [
    i32 0, label %.lr.ph
    i32 1, label %.lr.ph
    i32 2, label %.lr.ph
    i32 3, label %.lr.ph
    i32 4, label %.lr.ph
    i32 5, label %.lr.ph
    i32 6, label %.lr.ph
    i32 7, label %.lr.ph
    i32 8, label %.lr.ph
    i32 9, label %.lr.ph
    i32 10, label %.lr.ph
    i32 11, label %.lr.ph
    i32 12, label %.lr.ph
    i32 13, label %.lr.ph
    i32 14, label %.lr.ph
    i32 15, label %.lr.ph
    i32 16, label %.lr.ph
    i32 17, label %.lr.ph
    i32 18, label %.lr.ph
    i32 19, label %.lr.ph
    i32 20, label %.lr.ph
    i32 21, label %.lr.ph
    i32 22, label %.lr.ph
    i32 23, label %.lr.ph
    i32 24, label %bb.q
    i32 25, label %._crit_edge
    i32 26, label %._crit_edge307
    i32 27, label %bb.t
    i32 28, label %bb.u
    i32 29, label %bb.v
    i32 30, label %._crit_edge310
    i32 31, label %._crit_edge313
    i32 32, label %._crit_edge316
    i32 33, label %._crit_edge323
  ]

._crit_edge323:                                   ; preds = %bb.e
  %.phi.trans.insert324 = getelementptr inbounds nuw i8, ptr %1, i64 2488
  %.pre325 = load i32, ptr %.phi.trans.insert324, align 8, !tbaa !258
  br label %bb.kt

._crit_edge316:                                   ; preds = %bb.e
  %.phi.trans.insert317 = getelementptr inbounds nuw i8, ptr %1, i64 2904
  %.pre318 = load i32, ptr %.phi.trans.insert317, align 8, !tbaa !266
  br label %bb.y

._crit_edge313:                                   ; preds = %bb.e
  %.phi.trans.insert314 = getelementptr inbounds nuw i8, ptr %1, i64 2904
  %.pre315 = load i32, ptr %.phi.trans.insert314, align 8, !tbaa !266
  br label %bb.x

._crit_edge310:                                   ; preds = %bb.e
  %.phi.trans.insert311 = getelementptr inbounds nuw i8, ptr %1, i64 2904
  %.pre312 = load i32, ptr %.phi.trans.insert311, align 8, !tbaa !266
  br label %bb.w

._crit_edge307:                                   ; preds = %bb.e
  %.phi.trans.insert308 = getelementptr inbounds nuw i8, ptr %1, i64 2488
  %.pre309 = load i32, ptr %.phi.trans.insert308, align 8, !tbaa !258
  br label %bb.s

._crit_edge:                                      ; preds = %bb.e
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 2488
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !258
  br label %bb.r

.lr.ph:                                           ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %102 = zext nneg i32 %i.s to i64
  %i.t = sub nuw nsw i32 24, %i.s
  %i.u = zext nneg i32 %i.t to i64
  %scevgep = getelementptr i8, ptr %i.m, i64 %i.u
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ %102, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 4 uses
  %.097289 = phi ptr [ %i.m, %.lr.ph ], [ %i.bu, %bb.o ] ; 2 uses
  %.not138 = icmp eq i64 %indvars.iv, 24
  br i1 %.not138, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load i8, ptr %.097289, align 1, !tbaa !262 ; 4 uses
  %i.w = zext i8 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr @.str.2, i64 %indvars.iv
  %i.y = load i8, ptr %i.x, align 1, !tbaa !262   ; 2 uses
  %i.z = sext i8 %i.y to i32
  %.not148 = icmp eq i32 %i.w, %i.z
  br i1 %.not148, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #34
  %i.aa = icmp sgt i8 %i.v, -1
  %narrow.i162 = select i1 %i.aa, i8 %i.v, i8 32
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #34, !noalias !267
  %.sroa.0.0.insert.ext.i.i.i.i = zext i8 %i.y to i64
  %i.ab = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i to ptr ; 2 uses
  store ptr %i.ab, ptr %77, align 8, !tbaa !262, !noalias !267
  %i.ac = getelementptr inbounds nuw i8, ptr %77, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIcEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ac, align 8, !tbaa !270, !noalias !267
  %i.ad = getelementptr inbounds nuw i8, ptr %77, i64 16
  store ptr %i.ab, ptr %i.ad, align 8, !tbaa !262, !noalias !267
  %i.ae = getelementptr inbounds nuw i8, ptr %77, i64 24
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ae, align 8, !tbaa !270, !noalias !267
  %i.af = getelementptr inbounds nuw i8, ptr %77, i64 32
  %.sroa.0.0.insert.ext.i.i.i11.i = zext i8 %narrow.i162 to i64
  %i.ag = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i11.i to ptr
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !262, !noalias !267
  %i.ah = getelementptr inbounds nuw i8, ptr %77, i64 40
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIcEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ah, align 8, !tbaa !270, !noalias !267
  %i.ai = getelementptr inbounds nuw i8, ptr %77, i64 48
  %.sroa.0.0.insert.ext.i.i.i13.i = zext i8 %i.v to i64
  %i.aj = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i13.i to ptr
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !262, !noalias !267
  %i.ak = getelementptr inbounds nuw i8, ptr %77, i64 56
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIiEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ak, align 8, !tbaa !270, !noalias !267
  %i.al = getelementptr inbounds nuw i8, ptr %77, i64 64
  %i.am = inttoptr i64 %indvars.iv to ptr
  store ptr %i.am, ptr %i.al, align 8, !tbaa !262, !noalias !267
  %i.an = getelementptr inbounds nuw i8, ptr %77, i64 72
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIjEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.an, align 8, !tbaa !270, !noalias !267
  invoke void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %80, ptr nonnull @.str.3, i64 68, ptr nonnull %77, i64 5)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #34, !noalias !267
  %i.ao = load ptr, ptr %80, align 8, !tbaa !272
  %i.ap = getelementptr inbounds nuw i8, ptr %80, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !275
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %82, i8 0, i64 24, i1 false)
  invoke void @_ZN9grpc_core12StatusCreateEN4absl12lts_2025051210StatusCodeESt17basic_string_viewIcSt11char_traitsIcEERKNS_13DebugLocationESt6vectorINS1_6StatusESaISB_EE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %79, i32 noundef 2, i64 %i.aq, ptr %i.ao, ptr noundef nonnull align 1 dereferenceable(1) %81, ptr noundef nonnull align 8 %82)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit163 unwind label %bb.n

_ZN4absl12lts_202505126StatusD2Ev.exit163:        ; preds = %bb.i
  %i.ar = load i64, ptr %79, align 8, !tbaa !263
  store i64 %i.ar, ptr %0, align 8, !tbaa !263
  store i64 55, ptr %79, align 8, !tbaa !263
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.as, align 8, !tbaa !264
  %i.at = load ptr, ptr %82, align 8, !tbaa !276  ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %82, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !279 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.at, %i.av
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit163, %_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bb, %_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i.i ], [ %i.at, %_ZN4absl12lts_202505126StatusD2Ev.exit163 ] ; 2 uses
  %i.aw = load i64, ptr %.05.i.i.i, align 8, !tbaa !263 ; 2 uses
  %i.ax = trunc i64 %i.aw to i1
  br i1 %i.ax, label %_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.ay = inttoptr i64 %i.aw to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ay)
          to label %_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #35
  unreachable

_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bb, %i.av
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !280

_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4absl12lts_202505126StatusEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %82, align 8, !tbaa !276
  br label %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZN4absl12lts_202505126StatusD2Ev.exit163
  %i.bc = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.at, %_ZN4absl12lts_202505126StatusD2Ev.exit163 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4absl12lts_202505126StatusESaIS2_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %82, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !282
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bh) #36
  br label %_ZNSt6vectorIN4absl12lts_202505126StatusESaIS2_EED2Ev.exit

_ZNSt6vectorIN4absl12lts_202505126StatusESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4absl12lts_202505126StatusES2_EvT_S4_RSaIT0_E.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #34
  %i.bi = load ptr, ptr %80, align 8, !tbaa !272  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %80, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN4absl12lts_202505126StatusESaIS2_EED2Ev.exit
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !262
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN4absl12lts_202505126StatusESaIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #34
  br label %bb.lu

bb.m:                                             ; preds = %bb.h
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

bb.n:                                             ; preds = %bb.i
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt6vectorIN4absl12lts_202505126StatusESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %82) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #34
  %i.bp = load ptr, ptr %80, align 8, !tbaa !272  ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %80, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %bb.n
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !262
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %bb.n, %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164
  %.pn149.pn = phi { ptr, i32 } [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164 ], [ %i.bn, %bb.m ], [ %i.bo, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #34
  br label %bb.lx

bb.o:                                             ; preds = %bb.g
  %i.bu = getelementptr inbounds nuw i8, ptr %.097289, i64 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32
  store i32 %indvars, ptr %i.r, align 8, !tbaa !8
  %.not137 = icmp eq ptr %i.bu, %i.o
  br i1 %.not137, label %_ZN4absl12lts_202505126StatusD2Ev.exit167, label %bb.f, !llvm.loop !283

_ZN4absl12lts_202505126StatusD2Ev.exit167:        ; preds = %bb.o
  store i64 1, ptr %0, align 8, !tbaa !263
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bv, align 8, !tbaa !264
  br label %bb.lu

.critedge:                                        ; preds = %bb.f, %bb.ll, %bb.lk, %bb.kk
  %i.bw = phi ptr [ %i.akt, %bb.ll ], [ %i.aia, %bb.kk ], [ %i.akt, %bb.lk ], [ %1, %bb.f ] ; 3 uses
  %.1 = phi ptr [ %i.akx, %bb.ll ], [ %i.aic, %bb.kk ], [ %i.akx, %bb.lk ], [ %scevgep, %bb.f ] ; 2 uses
  %i.bx = load i64, ptr %3, align 8, !tbaa !284
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 1408
  %i.bz = load i64, ptr %i.by, align 16, !tbaa !285
  %.not139 = icmp ult i64 %i.bx, %i.bz
  br i1 %.not139, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.critedge
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 2472
  store i32 24, ptr %i.ca, align 8, !tbaa !8
  %i.cb = ptrtoint ptr %.1 to i64
  %i.cc = ptrtoint ptr %i.m to i64
  %i.cd = sub i64 %i.cb, %i.cc
  store i64 %i.cd, ptr %0, align 8, !tbaa !286
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ce, align 8, !tbaa !264
  br label %bb.lu

bb.q:                                             ; preds = %.critedge, %bb.e
  %i.cf = phi ptr [ %i.bw, %.critedge ], [ %1, %bb.e ] ; 3 uses
  %.2 = phi ptr [ %.1, %.critedge ], [ %i.m, %bb.e ] ; 2 uses
  %i.cg = load i8, ptr %.2, align 1, !tbaa !262
  %i.ch = zext i8 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 16               ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 2488
  store i32 %i.ci, ptr %i.cj, align 8, !tbaa !258
  %i.ck = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.o
  br i1 %i.cl, label %_ZN4absl12lts_202505126StatusD2Ev.exit168, label %bb.r

_ZN4absl12lts_202505126StatusD2Ev.exit168:        ; preds = %bb.q
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 2472
  store i32 25, ptr %i.cm, align 8, !tbaa !8
  store i64 1, ptr %0, align 8, !tbaa !263
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.cn, align 8, !tbaa !264
  br label %bb.lu

bb.r:                                             ; preds = %._crit_edge, %bb.q
  %i.co = phi i32 [ %i.ci, %bb.q ], [ %.pre, %._crit_edge ]
  %i.cp = phi ptr [ %i.cf, %bb.q ], [ %1, %._crit_edge ] ; 3 uses
  %.3 = phi ptr [ %i.ck, %bb.q ], [ %i.m, %._crit_edge ] ; 2 uses
  %i.cq = load i8, ptr %.3, align 1, !tbaa !262
  %i.cr = zext i8 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 2488
  %i.cu = or i32 %i.co, %i.cs                     ; 2 uses
  store i32 %i.cu, ptr %i.ct, align 8, !tbaa !258
  %i.cv = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.o
  br i1 %i.cw, label %_ZN4absl12lts_202505126StatusD2Ev.exit169, label %bb.s

_ZN4absl12lts_202505126StatusD2Ev.exit169:        ; preds = %bb.r
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 2472
  store i32 26, ptr %i.cx, align 8, !tbaa !8
  store i64 1, ptr %0, align 8, !tbaa !263
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.cy, align 8, !tbaa !264
  br label %bb.lu

bb.s:                                             ; preds = %._crit_edge307, %bb.r
  %i.cz = phi i32 [ %i.cu, %bb.r ], [ %.pre309, %._crit_edge307 ]
  %i.da = phi ptr [ %i.cp, %bb.r ], [ %1, %._crit_edge307 ] ; 3 uses
  %.4 = phi ptr [ %i.cv, %bb.r ], [ %i.m, %._crit_edge307 ] ; 2 uses
  %i.db = load i8, ptr %.4, align 1, !tbaa !262
  %i.dc = zext i8 %i.db to i32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 2488
  %i.de = or i32 %i.cz, %i.dc
  store i32 %i.de, ptr %i.dd, align 8, !tbaa !258
  %i.df = getelementptr inbounds nuw i8, ptr %.4, i64 1 ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.o
  br i1 %i.dg, label %_ZN4absl12lts_202505126StatusD2Ev.exit170, label %bb.t

_ZN4absl12lts_202505126StatusD2Ev.exit170:        ; preds = %bb.s
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 2472
  store i32 27, ptr %i.dh, align 8, !tbaa !8
  store i64 1, ptr %0, align 8, !tbaa !263
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.di, align 8, !tbaa !264
  br label %bb.lu

bb.t:                                             ; preds = %bb.s, %bb.e
  %i.dj = phi ptr [ %i.da, %bb.s ], [ %1, %bb.e ] ; 3 uses
  %.5 = phi ptr [ %i.df, %bb.s ], [ %i.m, %bb.e ] ; 2 uses
  %i.dk = load i8, ptr %.5, align 1, !tbaa !262
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 2476
  store i8 %i.dk, ptr %i.dl, align 4, !tbaa !288
  %i.dm = getelementptr inbounds nuw i8, ptr %.5, i64 1 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.o
  br i1 %i.dn, label %_ZN4absl12lts_202505126StatusD2Ev.exit171, label %bb.u

_ZN4absl12lts_202505126StatusD2Ev.exit171:        ; preds = %bb.t
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 2472
  store i32 28, ptr %i.do, align 8, !tbaa !8
  store i64 1, ptr %0, align 8, !tbaa !263
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.dp, align 8, !tbaa !264
  br label %bb.lu

bb.u:                                             ; preds = %bb.t, %bb.e
  %i.dq = phi ptr [ %i.dj, %bb.t ], [ %1, %bb.e ] ; 3 uses
  %.6 = phi ptr [ %i.dm, %bb.t ], [ %i.m, %bb.e ] ; 2 uses
  %i.dr = load i8, ptr %.6, align 1, !tbaa !262
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 2477
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !289
  %i.dt = getelementptr inbounds nuw i8, ptr %.6, i64 1 ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.o
  br i1 %i.du, label %_ZN4absl12lts_202505126StatusD2Ev.exit172, label %bb.v

_ZN4absl12lts_202505126StatusD2Ev.exit172:        ; preds = %bb.u
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 2472
  store i32 29, ptr %i.dv, align 8, !tbaa !8
  store i64 1, ptr %0, align 8, !tbaa !263
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.dw, align 8, !tbaa !264
  br label %bb.lu

bb.v:                                             ; preds = %bb.u, %bb.e
  %i.dx = phi ptr [ %i.dq, %bb.u ], [ %1, %bb.e ] ; 3 uses
  %.7 = phi ptr [ %i.dt, %bb.u ], [ %i.m, %bb.e ] ; 2 uses
  %i.dy = load i8, ptr %.7, align 1, !tbaa !262
  %i.dz = and i8 %i.dy, 127
  %i.ea = zext nneg i8 %i.dz to i32
  %i.eb = shl nuw nsw i32 %i.ea, 24               ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 2904
  store i32 %i.eb, ptr %i.ec, align 8, !tbaa !266
  %i.ed = getelementptr inbounds nuw i8, ptr %.7, i64 1 ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.o
  br i1 %i.ee, label %_ZN4absl12lts_202505126StatusD2Ev.exit173, label %bb.w

_ZN4absl12lts_202505126StatusD2Ev.exit173:        ; preds = %bb.v
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dx, i64 2472
  store i32 30, ptr %i.ef, align 8, !tbaa !8
  store i64 1, ptr %0, align 8, !tbaa !263
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.eg, align 8, !tbaa !264
  br label %bb.lu

bb.w:                                             ; preds = %._crit_edge310, %bb.v
  %i.eh = phi i32 [ %i.eb, %bb.v ], [ %.pre312, %._crit_edge310 ]
  %i.ei = phi ptr [ %i.dx, %bb.v ], [ %1, %._crit_edge310 ] ; 3 uses
  %.8 = phi ptr [ %i.ed, %bb.v ], [ %i.m, %._crit_edge310 ] ; 2 uses
  %i.ej = load i8, ptr %.8, align 1, !tbaa !262
  %i.ek = zext i8 %i.ej to i32
  %i.el = shl nuw nsw i32 %i.ek, 16
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 2904
  %i.en = or i32 %i.eh, %i.el                     ; 2 uses
  store i32 %i.en, ptr %i.em, align 8, !tbaa !266
  %i.eo = getelementptr inbounds nuw i8, ptr %.8, i64 1 ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.o
  br i1 %i.ep, label %_ZN4absl12lts_202505126StatusD2Ev.exit174, label %bb.x

_ZN4absl12lts_202505126StatusD2Ev.exit174:        ; preds = %bb.w
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ei, i64 2472
  store i32 31, ptr %i.eq, align 8, !tbaa !8
  store i64 1, ptr %0, align 8, !tbaa !263
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.er, align 8, !tbaa !264
  br label %bb.lu

bb.x:                                             ; preds = %._crit_edge313, %bb.w
  %i.es = phi i32 [ %i.en, %bb.w ], [ %.pre315, %._crit_edge313 ]
  %i.et = phi ptr [ %i.ei, %bb.w ], [ %1, %._crit_edge313 ] ; 3 uses
  %.9 = phi ptr [ %i.eo, %bb.w ], [ %i.m, %._crit_edge313 ] ; 2 uses
  %i.eu = load i8, ptr %.9, align 1, !tbaa !262
  %i.ev = zext i8 %i.eu to i32
  %i.ew = shl nuw nsw i32 %i.ev, 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 2904
  %i.ey = or i32 %i.es, %i.ew                     ; 2 uses
  store i32 %i.ey, ptr %i.ex, align 8, !tbaa !266
  %i.ez = getelementptr inbounds nuw i8, ptr %.9, i64 1 ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.o
  br i1 %i.fa, label %_ZN4absl12lts_202505126StatusD2Ev.exit175, label %bb.y

_ZN4absl12lts_202505126StatusD2Ev.exit175:        ; preds = %bb.x
  %i.fb = getelementptr inbounds nuw i8, ptr %i.et, i64 2472
  store i32 32, ptr %i.fb, align 8, !tbaa !8
  store i64 1, ptr %0, align 8, !tbaa !263
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.fc, align 8, !tbaa !264
  br label %bb.lu

bb.y:                                             ; preds = %._crit_edge316, %bb.x
  %i.fd = phi i32 [ %i.ey, %bb.x ], [ %.pre318, %._crit_edge316 ]
  %i.fe = phi ptr [ %i.et, %bb.x ], [ %1, %._crit_edge316 ] ; 2 uses
  %.10 = phi ptr [ %i.ez, %bb.x ], [ %i.m, %._crit_edge316 ] ; 3 uses
  %i.ff = load i8, ptr %.10, align 1, !tbaa !262
  %i.fg = zext i8 %i.ff to i32
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 2904
end_hunk_0
