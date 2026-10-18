Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/frame?download=true
inline.NumInlined: 1737
inline.NumDeleted: 1033
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN9grpc_core9SerializeEN4absl12lts_202505124SpanISt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEEEERNS_11SliceBufferE:bb.a
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !60
  invoke void %i.qs(ptr noundef nonnull align 8 dereferenceable(16) %i.qn)
          to label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEERN9grpc_core12_GLOBAL__N_125SerializeHeaderAndPayloadERSt7variantIJNS5_14Http2DataFrameENS5_16Http2HeaderFrameENS5_22Http2ContinuationFrameENS5_19Http2RstStreamFrameENS5_18Http2SettingsFrameENS5_14Http2PingFrameENS5_16Http2GoawayFrameENS5_22Http2WindowUpdateFrameENS5_18Http2SecurityFrameENS5_17Http2UnknownFrameENS5_15Http2EmptyFrameEEEEJEEESt16integer_sequenceImJLm8EEEE14__visit_invokeES8_SM_.exit.i.i unwind label %bb.ei, !inline_history !0

bb.ei:                                            ; preds = %bb.eh
  %i.qt = landingpad { ptr, i32 }
          catch ptr null
  %i.qu = extractvalue { ptr, i32 } %i.qt, 0
  call void @__clang_call_terminate(ptr %i.qu) #28
  unreachable

bb.ej:                                            ; preds = %.noexc31
  %i.qv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.em

bb.ek:                                            ; preds = %_ZN9grpc_core5SliceD2Ev.exit.i.i.i.i71.i.i
  %i.qw = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.el:                                            ; preds = %bb.eb
  %i.qx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core5SliceD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #25
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek, %bb.ej
  %.pn.i.i.i.i70.i.i = phi { ptr, i32 } [ %i.qw, %bb.ek ], [ %i.qx, %bb.el ], [ %i.qv, %bb.ej ]
  call void @_ZN9grpc_core12MutableSliceD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.body

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEERN9grpc_core12_GLOBAL__N_125SerializeHeaderAndPayloadERSt7variantIJNS5_14Http2DataFrameENS5_16Http2HeaderFrameENS5_22Http2ContinuationFrameENS5_19Http2RstStreamFrameENS5_18Http2SettingsFrameENS5_14Http2PingFrameENS5_16Http2GoawayFrameENS5_22Http2WindowUpdateFrameENS5_18Http2SecurityFrameENS5_17Http2UnknownFrameENS5_15Http2EmptyFrameEEEEJEEESt16integer_sequenceImJLm8EEEE14__visit_invokeES8_SM_.exit.i.i: ; preds = %bb.eh, %bb.eg, %_ZN9grpc_core11SliceBuffer13TakeAndAppendERS0_.exit.i.i.i.i72.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt5visitIRN9grpc_core12_GLOBAL__N_125SerializeHeaderAndPayloadEJRSt7variantIJNS0_14Http2DataFrameENS0_16Http2HeaderFrameENS0_22Http2ContinuationFrameENS0_19Http2RstStreamFrameENS0_18Http2SettingsFrameENS0_14Http2PingFrameENS0_16Http2GoawayFrameENS0_22Http2WindowUpdateFrameENS0_18Http2SecurityFrameENS0_17Http2UnknownFrameENS0_15Http2EmptyFrameEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit

bb.en:                                            ; preds = %bb.k
  invoke void @_ZN9grpc_core5CrashESt17basic_string_viewIcSt11char_traitsIcEENS_14SourceLocationE(i64 11, ptr nonnull @.str.33, ptr nonnull @.str, i32 374) #30
          to label %.noexc32 unwind label %.loopexit.split-lp

.noexc32:                                         ; preds = %bb.en
  unreachable

bb.eo:                                            ; preds = %bb.k
  unreachable

_ZSt5visitIRN9grpc_core12_GLOBAL__N_125SerializeHeaderAndPayloadEJRSt7variantIJNS0_14Http2DataFrameENS0_16Http2HeaderFrameENS0_22Http2ContinuationFrameENS0_19Http2RstStreamFrameENS0_18Http2SettingsFrameENS0_14Http2PingFrameENS0_16Http2GoawayFrameENS0_22Http2WindowUpdateFrameENS0_18Http2SecurityFrameENS0_17Http2UnknownFrameENS0_15Http2EmptyFrameEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISL_EEEEE4typeEE4typeEOSU_EEEE4typeEOSJ_DpOSL_.exit: ; preds = %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEERN9grpc_core12_GLOBAL__N_125SerializeHeaderAndPayloadERSt7variantIJNS5_14Http2DataFrameENS5_16Http2HeaderFrameENS5_22Http2ContinuationFrameENS5_19Http2RstStreamFrameENS5_18Http2SettingsFrameENS5_14Http2PingFrameENS5_16Http2GoawayFrameENS5_22Http2WindowUpdateFrameENS5_18Http2SecurityFrameENS5_17Http2UnknownFrameENS5_15Http2EmptyFrameEEEEJEEESt16integer_sequenceImJLm8EEEE14__visit_invokeES8_SM_.exit.i.i, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEERN9grpc_core12_GLOBAL__N_125SerializeHeaderAndPayloadERSt7variantIJNS5_14Http2DataFrameENS5_16Http2HeaderFrameENS5_22Http2ContinuationFrameENS5_19Http2RstStreamFrameENS5_18Http2SettingsFrameENS5_14Http2PingFrameENS5_16Http2GoawayFrameENS5_22Http2WindowUpdateFrameENS5_18Http2SecurityFrameENS5_17Http2UnknownFrameENS5_15Http2EmptyFrameEEEEJEEESt16integer_sequenceImJLm7EEEE14__visit_invokeES8_SM_.exit.i.i, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEERN9grpc_core12_GLOBAL__N_125SerializeHeaderAndPayloadERSt7variantIJNS5_14Http2DataFrameENS5_16Http2HeaderFrameENS5_22Http2ContinuationFrameENS5_19Http2RstStreamFrameENS5_18Http2SettingsFrameENS5_14Http2PingFrameENS5_16Http2GoawayFrameENS5_22Http2WindowUpdateFrameENS5_18Http2SecurityFrameENS5_17Http2UnknownFrameENS5_15Http2EmptyFrameEEEEJEEESt16integer_sequenceImJLm6EEEE14__visit_invokeES8_SM_.exit.i.i, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEERN9grpc_core12_GLOBAL__N_125SerializeHeaderAndPayloadERSt7variantIJNS5_14Http2DataFrameENS5_16Http2HeaderFrameENS5_22Http2ContinuationFrameENS5_19Http2RstStreamFrameENS5_18Http2SettingsFrameENS5_14Http2PingFrameENS5_16Http2GoawayFrameENS5_22Http2WindowUpdateFrameENS5_18Http2SecurityFrameENS5_17Http2UnknownFrameENS5_15Http2EmptyFrameEEEEJEEESt16integer_sequenceImJLm5EEEE14__visit_invokeES8_SM_.exit.i.i, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEERN9grpc_core12_GLOBAL__N_125SerializeHeaderAndPayloadERSt7variantIJNS5_14Http2DataFrameENS5_16Http2HeaderFrameENS5_22Http2ContinuationFrameENS5_19Http2RstStreamFrameENS5_18Http2SettingsFrameENS5_14Http2PingFrameENS5_16Http2GoawayFrameENS5_22Http2WindowUpdateFrameENS5_18Http2SecurityFrameENS5_17Http2UnknownFrameENS5_15Http2EmptyFrameEEEEJEEESt16integer_sequenceImJLm4EEEE14__visit_invokeES8_SM_.exit.i.i, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEERN9grpc_core12_GLOBAL__N_125SerializeHeaderAndPayloadERSt7variantIJNS5_14Http2DataFrameENS5_16Http2HeaderFrameENS5_22Http2ContinuationFrameENS5_19Http2RstStreamFrameENS5_18Http2SettingsFrameENS5_14Http2PingFrameENS5_16Http2GoawayFrameENS5_22Http2WindowUpdateFrameENS5_18Http2SecurityFrameENS5_17Http2UnknownFrameENS5_15Http2EmptyFrameEEEEJEEESt16integer_sequenceImJLm3EEEE14__visit_invokeES8_SM_.exit.i.i, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEERN9grpc_core12_GLOBAL__N_125SerializeHeaderAndPayloadERSt7variantIJNS5_14Http2DataFrameENS5_16Http2HeaderFrameENS5_22Http2ContinuationFrameENS5_19Http2RstStreamFrameENS5_18Http2SettingsFrameENS5_14Http2PingFrameENS5_16Http2GoawayFrameENS5_22Http2WindowUpdateFrameENS5_18Http2SecurityFrameENS5_17Http2UnknownFrameENS5_15Http2EmptyFrameEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeES8_SM_.exit.i.i, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEERN9grpc_core12_GLOBAL__N_125SerializeHeaderAndPayloadERSt7variantIJNS5_14Http2DataFrameENS5_16Http2HeaderFrameENS5_22Http2ContinuationFrameENS5_19Http2RstStreamFrameENS5_18Http2SettingsFrameENS5_14Http2PingFrameENS5_16Http2GoawayFrameENS5_22Http2WindowUpdateFrameENS5_18Http2SecurityFrameENS5_17Http2UnknownFrameENS5_15Http2EmptyFrameEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeES8_SM_.exit.i.i, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEERN9grpc_core12_GLOBAL__N_125SerializeHeaderAndPayloadERSt7variantIJNS5_14Http2DataFrameENS5_16Http2HeaderFrameENS5_22Http2ContinuationFrameENS5_19Http2RstStreamFrameENS5_18Http2SettingsFrameENS5_14Http2PingFrameENS5_16Http2GoawayFrameENS5_22Http2WindowUpdateFrameENS5_18Http2SecurityFrameENS5_17Http2UnknownFrameENS5_15Http2EmptyFrameEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES8_SM_.exit.i.i, %bb.k
  %i.qy = getelementptr inbounds nuw i8, ptr %.01945, i64 152 ; 2 uses
  %.not21 = icmp eq ptr %i.qy, %i.c
  br i1 %.not21, label %._crit_edge48, label %bb.k

.loopexit:                                        ; preds = %bb.m, %bb.z, %bb.am, %bb.az, %bb.bl, %bb.bx, %bb.cj, %bb.dh, %bb.ea
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.l, %bb.en
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.y, %bb.al, %bb.ay, %bb.bk, %bb.bw, %bb.ci, %bb.dg, %bb.dz, %bb.em
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i.i.i.i70.i.i, %bb.em ], [ %.pn.i.i.i.i.i.i, %bb.y ], [ %.pn.i.i.i.i25.i.i, %bb.al ], [ %.pn.i.i.i.i29.i.i, %bb.ay ], [ %.pn.i.i.i.i33.i.i, %bb.bk ], [ %.pn.pn.i.i.i.i.i.i, %bb.bw ], [ %.pn.i.i.i.i38.i.i, %bb.ci ], [ %.pn11.i.i.i.i.i.i, %bb.dg ], [ %.pn9.i.i.i.i.i.i, %bb.dz ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val22 = load ptr, ptr %i.f, align 8, !tbaa !56
  call fastcc void @_ZN9grpc_core12_GLOBAL__N_125SerializeHeaderAndPayloadD2Ev(ptr %.val22) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #25
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN9grpc_core12_GLOBAL__N_125SerializeHeaderAndPayloadD2Ev(ptr %.8.val) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt ptr %.8.val, inttoptr (i64 1 to ptr)
  br i1 %i.a, label %bb.b, label %_ZN9grpc_core12MutableSliceD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.b = atomicrmw sub ptr %.8.val, i64 1 acq_rel, align 8
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.c, label %_ZN9grpc_core12MutableSliceD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(16) %.8.val)
          to label %_ZN9grpc_core12MutableSliceD2Ev.exit unwind label %bb.d, !inline_history !0

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #28
  unreachable

_ZN9grpc_core12MutableSliceD2Ev.exit:             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: uwtable
define void @_ZN9grpc_core17ParseFramePayloadERKNS_16Http2FrameHeaderEONS_11SliceBufferE(ptr dead_on_unwind noalias writable sret(%"class.grpc_core::http2::ValueOrHttp2Status") align 8 %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(136) %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.97, align 1             ; 3 uses
  %4 = alloca %class.anon.118, align 8            ; 4 uses
  %5 = alloca %class.anon.97, align 1             ; 3 uses
  %6 = alloca %class.anon.118, align 8            ; 4 uses
  %7 = alloca %"class.std::variant", align 8      ; 7 uses
  %8 = alloca %"struct.grpc_core::Http2SecurityFrame", align 8 ; 6 uses
  %9 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %10 = alloca %class.anon.97, align 1            ; 3 uses
  %11 = alloca %class.anon.118, align 8           ; 4 uses
  %12 = alloca %"class.grpc_core::http2::Http2Status", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %14 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %15 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.grpc_core::http2::Http2Status", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %19 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %20 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %22 = alloca %"class.grpc_core::http2::Http2Status", align 8 ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %24 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %25 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %"class.std::variant", align 8     ; 6 uses
  %28 = alloca %class.anon.97, align 1            ; 3 uses
  %29 = alloca %class.anon.118, align 8           ; 4 uses
  %30 = alloca %"class.grpc_core::http2::Http2Status", align 8 ; 9 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %32 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %33 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %35 = alloca %"class.grpc_core::http2::Http2Status", align 8 ; 9 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %37 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %38 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca [8 x i8], align 1                 ; 11 uses
  %40 = alloca %"class.std::variant", align 8     ; 7 uses
  %41 = alloca %"struct.grpc_core::Http2GoawayFrame", align 8 ; 6 uses
  %42 = alloca %class.anon.97, align 1            ; 3 uses
  %43 = alloca %class.anon.118, align 8           ; 4 uses
  %44 = alloca %"class.grpc_core::http2::Http2Status", align 8 ; 9 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %46 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %47 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %49 = alloca %"class.grpc_core::http2::Http2Status", align 8 ; 9 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %51 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %52 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = alloca [8 x i8], align 1                 ; 11 uses
  %54 = alloca %"class.std::variant", align 8     ; 7 uses
  %55 = alloca %class.anon.97, align 1            ; 3 uses
  %56 = alloca %class.anon.118, align 8           ; 4 uses
  %57 = alloca %class.anon.97, align 1            ; 3 uses
  %58 = alloca %class.anon.118, align 8           ; 4 uses
  %59 = alloca %"class.grpc_core::http2::Http2Status", align 8 ; 9 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %61 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %62 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %63 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %64 = alloca %"class.grpc_core::http2::Http2Status", align 8 ; 9 uses
  %65 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %66 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %67 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %68 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %69 = alloca %"class.std::variant", align 8     ; 7 uses
  %70 = alloca %"class.grpc_core::http2::Http2Status", align 8 ; 9 uses
  %71 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %72 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %73 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %74 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = alloca [6 x i8], align 1                 ; 10 uses
  %75 = alloca %"class.std::variant", align 8     ; 9 uses
  %76 = alloca %class.anon.97, align 1            ; 3 uses
  %77 = alloca %class.anon.118, align 8           ; 4 uses
  %78 = alloca %"class.grpc_core::http2::Http2Status", align 8 ; 9 uses
  %79 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %80 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %81 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %82 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %83 = alloca %"class.grpc_core::http2::Http2Status", align 8 ; 9 uses
  %84 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %85 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %86 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %87 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %88 = alloca %"class.grpc_core::http2::Http2Status", align 8 ; 9 uses
  %89 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %90 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %91 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %92 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.e = alloca [4 x i8], align 1                 ; 7 uses
  %93 = alloca %"class.std::variant", align 8     ; 6 uses
  %94 = alloca %class.anon.97, align 1            ; 3 uses
  %95 = alloca %class.anon.118, align 8           ; 4 uses
  %96 = alloca %"class.grpc_core::http2::Http2Status", align 8 ; 9 uses
  %97 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %98 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %99 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %100 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %101 = alloca %"class.grpc_core::http2::Http2Status", align 8 ; 9 uses
  %102 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %103 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %104 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %105 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %106 = alloca %"class.std::variant", align 8    ; 7 uses
  %107 = alloca %"struct.grpc_core::Http2ContinuationFrame", align 8 ; 6 uses
  %108 = alloca %class.anon.97, align 1           ; 3 uses
  %109 = alloca %class.anon.118, align 8          ; 4 uses
  %110 = alloca %"class.grpc_core::http2::Http2Status", align 8 ; 9 uses
  %111 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %112 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %113 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %114 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %115 = alloca %"class.grpc_core::http2::Http2Status", align 8 ; 9 uses
  %116 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %117 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %118 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %119 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %120 = alloca %"class.grpc_core::http2::Http2Status", align 8 ; 13 uses
  %121 = alloca %"class.grpc_core::http2::Http2Status", align 8 ; 7 uses
  %122 = alloca %"class.grpc_core::http2::Http2Status", align 8 ; 9 uses
  %123 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %124 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %125 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %126 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.f = alloca [5 x i8], align 1                 ; 3 uses
  %127 = alloca %"class.std::variant", align 8    ; 7 uses
  %128 = alloca %"struct.grpc_core::Http2HeaderFrame", align 8 ; 7 uses
  %129 = alloca %class.anon.97, align 1           ; 3 uses
  %130 = alloca %class.anon.118, align 8          ; 4 uses
  %131 = alloca %"class.grpc_core::http2::Http2Status", align 8 ; 9 uses
  %132 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %133 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %134 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %135 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %136 = alloca %"class.grpc_core::http2::Http2Status", align 8 ; 9 uses
  %137 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %138 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %139 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %140 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %141 = alloca %"class.grpc_core::http2::Http2Status", align 8 ; 13 uses
  %142 = alloca %"class.grpc_core::http2::Http2Status", align 8 ; 7 uses
  %143 = alloca %"class.std::variant", align 8    ; 7 uses
  %144 = alloca %"struct.grpc_core::Http2DataFrame", align 8 ; 6 uses
  %145 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %146 = alloca %"class.grpc_core::http2::Http2Status", align 8 ; 7 uses
  %147 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %148 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %149 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %150 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %151 = alloca %"class.std::variant", align 8    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !64   ; 8 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !39
  %i.j = zext i32 %i.i to i64
  %.not.not = icmp eq i64 %i.h, %i.j
  br i1 %.not.not, label %.critedge, label %bb.b, !prof !40

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %145) #25
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %145, ptr noundef nonnull @.str, i32 noundef 728, ptr noundef nonnull @.str.10) #26
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %145)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %145) #28
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %145) #28
  unreachable

.critedge:                                        ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i8, ptr %i.l, align 4, !tbaa !41
  switch i8 %i.m, label %bb.iz [
    i8 0, label %bb.d
    i8 1, label %bb.ai
    i8 9, label %bb.bx
    i8 3, label %bb.cw
    i8 4, label %bb.dy
    i8 6, label %bb.fn
    i8 7, label %bb.gh
    i8 8, label %bb.he
    i8 5, label %bb.ig
    i8 -56, label %bb.iq
  ]

bb.d:                                             ; preds = %.critedge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  call void @llvm.lifetime.start.p0(ptr nonnull %131)
  call void @llvm.lifetime.start.p0(ptr nonnull %132)
  call void @llvm.lifetime.start.p0(ptr nonnull %136)
  call void @llvm.lifetime.start.p0(ptr nonnull %137)
  call void @llvm.lifetime.start.p0(ptr nonnull %142)
  call void @llvm.lifetime.start.p0(ptr nonnull %143)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !43, !noalias !232 ; 3 uses
  %i.p = and i32 %i.o, 1
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.t, !prof !15

bb.e:                                             ; preds = %bb.d
  %i.r = icmp eq i32 %i.o, 0
  br i1 %i.r, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %133) #25, !noalias !232
  store i64 53, ptr %133, align 8, !tbaa !19, !noalias !232
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %133, i64 8
  store ptr @.str.36, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !21, !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %134) #25, !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %135) #25, !noalias !232
  call void @_ZNK9grpc_core16Http2FrameHeader8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %135, ptr noundef nonnull readonly align 4 dereferenceable(12) %1)
  %i.s = load ptr, ptr %135, align 8, !tbaa !35, !noalias !232
  %i.t = getelementptr inbounds nuw i8, ptr %135, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !36, !noalias !232
  store i64 %i.u, ptr %134, align 8, !noalias !232
  %i.v = getelementptr inbounds nuw i8, ptr %134, i64 8
  store ptr %i.s, ptr %i.v, align 8, !noalias !232
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %132, ptr noundef nonnull align 8 dereferenceable(48) %133, ptr noundef nonnull align 8 dereferenceable(48) %134)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !233)
  store i8 1, ptr %131, align 8, !tbaa !31, !alias.scope !233, !noalias !232
  %i.w = getelementptr inbounds nuw i8, ptr %131, i64 1
  store i8 1, ptr %i.w, align 1, !tbaa !32, !alias.scope !233, !noalias !232
  %i.x = getelementptr inbounds nuw i8, ptr %131, i64 4
  store i32 13, ptr %i.x, align 4, !tbaa !33, !alias.scope !233, !noalias !232
  %i.y = getelementptr inbounds nuw i8, ptr %131, i64 8 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %131, i64 24 ; 7 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !34, !alias.scope !233, !noalias !232
  %i.aa = load ptr, ptr %132, align 8, !tbaa !35, !noalias !234 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %132, i64 16 ; 9 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %132, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !36, !noalias !234 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.ae, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.ab, i64 %i.ag, i1 false), !noalias !232
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !35, !alias.scope !233, !noalias !232
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !37, !noalias !234
  store i64 %i.ah, ptr %i.z, align 8, !tbaa !37, !alias.scope !233, !noalias !232
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %132, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !36, !noalias !234
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.h
  %i.ai = phi i64 [ %i.ae, %bb.h ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %132, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %131, i64 16
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !36, !alias.scope !233, !noalias !232
  store ptr %i.ab, ptr %132, align 8, !tbaa !35, !noalias !234
  store i64 0, ptr %i.aj, align 8, !tbaa !36, !noalias !234
  store i8 0, ptr %i.ab, align 8, !tbaa !37, !noalias !234
  invoke void @_ZN9grpc_core5http218ValueOrHttp2StatusISt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEEEC2ENS0_11Http2StatusE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 %131)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr %i.y, align 8, !tbaa !35, !noalias !232 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.z
  br i1 %i.am, label %_ZN9grpc_core5http211Http2StatusD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26.i: ; preds = %bb.j
  %i.an = load i64, ptr %i.z, align 8, !tbaa !37, !noalias !232
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #29
  br label %_ZN9grpc_core5http211Http2StatusD2Ev.exit.i

_ZN9grpc_core5http211Http2StatusD2Ev.exit.i:      ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26.i
  %i.ap = load ptr, ptr %132, align 8, !tbaa !35, !noalias !232 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.ab
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit.i
  %i.ar = load i64, ptr %i.ab, align 8, !tbaa !37, !noalias !232
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
end_hunk_0
begin_hunk_1_@_ZN9grpc_core17ParseFramePayloadERKNS_16Http2FrameHeaderEONS_11SliceBufferE:bb.a
bb.dl:                                            ; preds = %bb.dg
  %i.vn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i96

bb.dm:                                            ; preds = %bb.dj
  %i.vo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vp = load ptr, ptr %i.un, align 8, !tbaa !35, !noalias !249 ; 2 uses
  %i.vq = icmp eq ptr %i.vp, %i.uo
  br i1 %i.vq, label %_ZN9grpc_core5http211Http2StatusD2Ev.exit58.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56.i: ; preds = %bb.dm
  %i.vr = load i64, ptr %i.uo, align 8, !tbaa !37, !noalias !249
  %i.vs = add i64 %i.vr, 1
  call void @_ZdlPvm(ptr noundef %i.vp, i64 noundef %i.vs) #29
  br label %_ZN9grpc_core5http211Http2StatusD2Ev.exit58.i

_ZN9grpc_core5http211Http2StatusD2Ev.exit58.i:    ; preds = %bb.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56.i
  %i.vt = load ptr, ptr %84, align 8, !tbaa !35, !noalias !249 ; 2 uses
  %i.vu = icmp eq ptr %i.vt, %i.uq
  br i1 %i.vu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.i100: ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit58.i
  %i.vv = load i64, ptr %i.uq, align 8, !tbaa !37, !noalias !249
  %i.vw = add i64 %i.vv, 1
  call void @_ZdlPvm(ptr noundef %i.vt, i64 noundef %i.vw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i96: ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit58.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.i100, %bb.dl
  %.pn22.pn.i97 = phi { ptr, i32 } [ %i.vn, %bb.dl ], [ %i.vo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59.i100 ], [ %i.vo, %_ZN9grpc_core5http211Http2StatusD2Ev.exit58.i ]
  %i.vx = load ptr, ptr %87, align 8, !tbaa !35, !noalias !249 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %87, i64 16 ; 2 uses
  %i.vz = icmp eq ptr %i.vx, %i.vy
  br i1 %i.vz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i98: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i96
  %i.wa = load i64, ptr %i.vy, align 8, !tbaa !37, !noalias !249
  %i.wb = add i64 %i.wa, 1
  call void @_ZdlPvm(ptr noundef %i.vx, i64 noundef %i.wb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #25, !noalias !249
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #25, !noalias !249
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #25, !noalias !249
  br label %common.resume

bb.dn:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #25, !noalias !249
  store i64 79, ptr %90, align 8, !tbaa !19, !noalias !249
  %.sroa.2.0..sroa_idx.i65.i = getelementptr inbounds nuw i8, ptr %90, i64 8
  store ptr @.str.37, ptr %.sroa.2.0..sroa_idx.i65.i, align 8, !tbaa !21, !noalias !249
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #25, !noalias !249
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #25, !noalias !249
  call void @_ZNK9grpc_core16Http2FrameHeader8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %92, ptr noundef nonnull readonly align 4 dereferenceable(12) %1), !noalias !249
  %i.wc = load ptr, ptr %92, align 8, !tbaa !35, !noalias !249
  %i.wd = getelementptr inbounds nuw i8, ptr %92, i64 8
  %i.we = load i64, ptr %i.wd, align 8, !tbaa !36, !noalias !249
  store i64 %i.we, ptr %91, align 8, !noalias !249
  %i.wf = getelementptr inbounds nuw i8, ptr %91, i64 8
  store ptr %i.wc, ptr %i.wf, align 8, !noalias !249
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %89, ptr noundef nonnull align 8 dereferenceable(48) %90, ptr noundef nonnull align 8 dereferenceable(48) %91)
          to label %bb.do unwind label %bb.ds, !noalias !249

bb.do:                                            ; preds = %bb.dn
  call void @llvm.experimental.noalias.scope.decl(metadata !254)
  store i8 1, ptr %88, align 8, !tbaa !31, !alias.scope !254, !noalias !249
  %i.wg = getelementptr inbounds nuw i8, ptr %88, i64 1
  store i8 1, ptr %i.wg, align 1, !tbaa !32, !alias.scope !254, !noalias !249
  %i.wh = getelementptr inbounds nuw i8, ptr %88, i64 4
  store i32 13, ptr %i.wh, align 4, !tbaa !33, !alias.scope !254, !noalias !249
  %i.wi = getelementptr inbounds nuw i8, ptr %88, i64 8 ; 4 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %88, i64 24 ; 7 uses
  store ptr %i.wj, ptr %i.wi, align 8, !tbaa !34, !alias.scope !254, !noalias !249
  %i.wk = load ptr, ptr %89, align 8, !tbaa !35, !noalias !255 ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %89, i64 16 ; 9 uses
  %i.wm = icmp eq ptr %i.wk, %i.wl
  br i1 %i.wm, label %bb.dp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i66.i92

bb.dp:                                            ; preds = %bb.do
  %i.wn = getelementptr inbounds nuw i8, ptr %89, i64 8
  %i.wo = load i64, ptr %i.wn, align 8, !tbaa !36, !noalias !255 ; 3 uses
  %i.wp = icmp ult i64 %i.wo, 16
  call void @llvm.assume(i1 %i.wp)
  %i.wq = add nuw nsw i64 %i.wo, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.wj, ptr noundef nonnull align 8 dereferenceable(1) %i.wl, i64 %i.wq, i1 false), !noalias !249
  br label %bb.dq

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i66.i92: ; preds = %bb.do
  store ptr %i.wk, ptr %i.wi, align 8, !tbaa !35, !alias.scope !254, !noalias !249
  %i.wr = load i64, ptr %i.wl, align 8, !tbaa !37, !noalias !255
  store i64 %i.wr, ptr %i.wj, align 8, !tbaa !37, !alias.scope !254, !noalias !249
  %.phi.trans.insert.i67.i = getelementptr inbounds nuw i8, ptr %89, i64 8
  %.pre.i68.i = load i64, ptr %.phi.trans.insert.i67.i, align 8, !tbaa !36, !noalias !255
  br label %bb.dq

bb.dq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i66.i92, %bb.dp
  %i.ws = phi i64 [ %i.wo, %bb.dp ], [ %.pre.i68.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i66.i92 ]
  %i.wt = getelementptr inbounds nuw i8, ptr %89, i64 8
  %i.wu = getelementptr inbounds nuw i8, ptr %88, i64 16
  store i64 %i.ws, ptr %i.wu, align 8, !tbaa !36, !alias.scope !254, !noalias !249
  store ptr %i.wl, ptr %89, align 8, !tbaa !35, !noalias !255
  store i64 0, ptr %i.wt, align 8, !tbaa !36, !noalias !255
  store i8 0, ptr %i.wl, align 8, !tbaa !37, !noalias !255
  invoke void @_ZN9grpc_core5http218ValueOrHttp2StatusISt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEEEC2ENS0_11Http2StatusE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 %88)
          to label %bb.dr unwind label %bb.dt

bb.dr:                                            ; preds = %bb.dq
  %i.wv = load ptr, ptr %i.wi, align 8, !tbaa !35, !noalias !249 ; 2 uses
  %i.ww = icmp eq ptr %i.wv, %i.wj
  br i1 %i.ww, label %_ZN9grpc_core5http211Http2StatusD2Ev.exit72.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70.i: ; preds = %bb.dr
  %i.wx = load i64, ptr %i.wj, align 8, !tbaa !37, !noalias !249
  %i.wy = add i64 %i.wx, 1
  call void @_ZdlPvm(ptr noundef %i.wv, i64 noundef %i.wy) #29
  br label %_ZN9grpc_core5http211Http2StatusD2Ev.exit72.i

_ZN9grpc_core5http211Http2StatusD2Ev.exit72.i:    ; preds = %bb.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70.i
  %i.wz = load ptr, ptr %89, align 8, !tbaa !35, !noalias !249 ; 2 uses
  %i.xa = icmp eq ptr %i.wz, %i.wl
  br i1 %i.xa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.i: ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit72.i
  %i.xb = load i64, ptr %i.wl, align 8, !tbaa !37, !noalias !249
  %i.xc = add i64 %i.xb, 1
  call void @_ZdlPvm(ptr noundef %i.wz, i64 noundef %i.xc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i: ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit72.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73.i
  %i.xd = load ptr, ptr %92, align 8, !tbaa !35, !noalias !249 ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %92, i64 16 ; 2 uses
  %i.xf = icmp eq ptr %i.xd, %i.xe
  br i1 %i.xf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i
  %i.xg = load i64, ptr %i.xe, align 8, !tbaa !37, !noalias !249
  %i.xh = add i64 %i.xg, 1
  call void @_ZdlPvm(ptr noundef %i.xd, i64 noundef %i.xh) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76.i
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #25, !noalias !249
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #25, !noalias !249
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #25, !noalias !249
  br label %_ZN9grpc_core12_GLOBAL__N_119ParseRstStreamFrameERKNS_16Http2FrameHeaderERNS_11SliceBufferE.exit

bb.ds:                                            ; preds = %bb.dn
  %i.xi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i

bb.dt:                                            ; preds = %bb.dq
  %i.xj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xk = load ptr, ptr %i.wi, align 8, !tbaa !35, !noalias !249 ; 2 uses
  %i.xl = icmp eq ptr %i.xk, %i.wj
  br i1 %i.xl, label %_ZN9grpc_core5http211Http2StatusD2Ev.exit81.i94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79.i93: ; preds = %bb.dt
  %i.xm = load i64, ptr %i.wj, align 8, !tbaa !37, !noalias !249
  %i.xn = add i64 %i.xm, 1
  call void @_ZdlPvm(ptr noundef %i.xk, i64 noundef %i.xn) #29
  br label %_ZN9grpc_core5http211Http2StatusD2Ev.exit81.i94

_ZN9grpc_core5http211Http2StatusD2Ev.exit81.i94:  ; preds = %bb.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79.i93
  %i.xo = load ptr, ptr %89, align 8, !tbaa !35, !noalias !249 ; 2 uses
  %i.xp = icmp eq ptr %i.xo, %i.wl
  br i1 %i.xp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i: ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit81.i94
  %i.xq = load i64, ptr %i.wl, align 8, !tbaa !37, !noalias !249
  %i.xr = add i64 %i.xq, 1
  call void @_ZdlPvm(ptr noundef %i.xo, i64 noundef %i.xr) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i: ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit81.i94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i, %bb.ds
  %.pn.pn.i91 = phi { ptr, i32 } [ %i.xi, %bb.ds ], [ %i.xj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i ], [ %i.xj, %_ZN9grpc_core5http211Http2StatusD2Ev.exit81.i94 ]
  %i.xs = load ptr, ptr %92, align 8, !tbaa !35, !noalias !249 ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %92, i64 16 ; 2 uses
  %i.xu = icmp eq ptr %i.xs, %i.xt
  br i1 %i.xu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i
  %i.xv = load i64, ptr %i.xt, align 8, !tbaa !37, !noalias !249
  %i.xw = add i64 %i.xv, 1
  call void @_ZdlPvm(ptr noundef %i.xs, i64 noundef %i.xw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #25, !noalias !249
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #25, !noalias !249
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #25, !noalias !249
  br label %common.resume

bb.du:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25, !noalias !249
  call void @_Z40grpc_slice_buffer_copy_first_into_bufferPK17grpc_slice_buffermPv(ptr noundef nonnull align 8 dereferenceable(136) %2, i64 noundef 4, ptr noundef nonnull %i.e), !noalias !249
  %i.xx = load i32, ptr %i.uc, align 4, !tbaa !43, !noalias !249
  %152 = load i8, ptr %i.e, align 1, !tbaa !37, !noalias !249
  %153 = zext i8 %152 to i64
  %154 = shl nuw nsw i64 %153, 24
  %155 = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %156 = load i8, ptr %155, align 1, !tbaa !37, !noalias !249
  %157 = zext i8 %156 to i64
  %158 = shl nuw nsw i64 %157, 16
  %159 = or disjoint i64 %158, %154
  %160 = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %161 = load i8, ptr %160, align 1, !tbaa !37, !noalias !249
  %162 = zext i8 %161 to i64
  %163 = shl nuw nsw i64 %162, 8
  %164 = or disjoint i64 %159, %163
  %165 = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %166 = load i8, ptr %165, align 1, !tbaa !37, !noalias !249
  %i.xy = zext i8 %166 to i64
  %.sroa.4.0.insert.ext.i = or disjoint i64 %164, %i.xy
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.xx to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %93, align 8, !tbaa !17, !noalias !249
  %i.xz = getelementptr inbounds nuw i8, ptr %93, i64 144 ; 2 uses
  store i8 3, ptr %i.xz, align 8, !tbaa !45, !noalias !249
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store i8 -1, ptr %i.ya, align 8, !tbaa !45, !alias.scope !249
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #25, !noalias !249
  store ptr %0, ptr %77, align 8, !tbaa !90, !noalias !249
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Move_ctor_baseILb0EJN9grpc_core14Http2DataFrameENS4_16Http2HeaderFrameENS4_22Http2ContinuationFrameENS4_19Http2RstStreamFrameENS4_18Http2SettingsFrameENS4_14Http2PingFrameENS4_16Http2GoawayFrameENS4_22Http2WindowUpdateFrameENS4_18Http2SecurityFrameENS4_17Http2UnknownFrameENS4_15Http2EmptyFrameEEEC1EOSG_EUlOT_T0_E_JSt7variantIJS5_S6_S7_S8_S9_SA_SB_SC_SD_SE_SF_EEEEDcOSK_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %77, ptr noundef nonnull align 8 dereferenceable(145) %93)
          to label %_ZN9grpc_core5http218ValueOrHttp2StatusISt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEEEC2ESE_.exit.i87 unwind label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.yb = landingpad { ptr, i32 }
          catch ptr null
  %i.yc = extractvalue { ptr, i32 } %i.yb, 0
  call void @__clang_call_terminate(ptr %i.yc) #28
  unreachable

_ZN9grpc_core5http218ValueOrHttp2StatusISt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEEEC2ESE_.exit.i87: ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #25, !noalias !249
  %i.yd = load i8, ptr %i.xz, align 8, !tbaa !45, !noalias !249 ; 2 uses
  store i8 %i.yd, ptr %i.ya, align 8, !tbaa !45, !alias.scope !249
  %i.ye = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 0, ptr %i.ye, align 8, !tbaa !92, !alias.scope !249
  %.not.i.i.i88 = icmp eq i8 %i.yd, -1
  br i1 %.not.i.i.i88, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core14Http2DataFrameENS2_16Http2HeaderFrameENS2_22Http2ContinuationFrameENS2_19Http2RstStreamFrameENS2_18Http2SettingsFrameENS2_14Http2PingFrameENS2_16Http2GoawayFrameENS2_22Http2WindowUpdateFrameENS2_18Http2SecurityFrameENS2_17Http2UnknownFrameENS2_15Http2EmptyFrameEEED2Ev.exit.i90, label %bb.dw, !prof !15

bb.dw:                                            ; preds = %_ZN9grpc_core5http218ValueOrHttp2StatusISt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEEEC2ESE_.exit.i87
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #25, !noalias !249
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core14Http2DataFrameENS3_16Http2HeaderFrameENS3_22Http2ContinuationFrameENS3_19Http2RstStreamFrameENS3_18Http2SettingsFrameENS3_14Http2PingFrameENS3_16Http2GoawayFrameENS3_22Http2WindowUpdateFrameENS3_18Http2SecurityFrameENS3_17Http2UnknownFrameENS3_15Http2EmptyFrameEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_S5_S6_S7_S8_S9_SA_SB_SC_SD_SE_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %76, ptr noundef nonnull align 8 dereferenceable(145) %93)
          to label %.noexc.i.i89 unwind label %bb.dx

.noexc.i.i89:                                     ; preds = %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #25, !noalias !249
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core14Http2DataFrameENS2_16Http2HeaderFrameENS2_22Http2ContinuationFrameENS2_19Http2RstStreamFrameENS2_18Http2SettingsFrameENS2_14Http2PingFrameENS2_16Http2GoawayFrameENS2_22Http2WindowUpdateFrameENS2_18Http2SecurityFrameENS2_17Http2UnknownFrameENS2_15Http2EmptyFrameEEED2Ev.exit.i90

bb.dx:                                            ; preds = %bb.dw
  %i.yf = landingpad { ptr, i32 }
          catch ptr null
  %i.yg = extractvalue { ptr, i32 } %i.yf, 0
  call void @__clang_call_terminate(ptr %i.yg) #28
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core14Http2DataFrameENS2_16Http2HeaderFrameENS2_22Http2ContinuationFrameENS2_19Http2RstStreamFrameENS2_18Http2SettingsFrameENS2_14Http2PingFrameENS2_16Http2GoawayFrameENS2_22Http2WindowUpdateFrameENS2_18Http2SecurityFrameENS2_17Http2UnknownFrameENS2_15Http2EmptyFrameEEED2Ev.exit.i90: ; preds = %.noexc.i.i89, %_ZN9grpc_core5http218ValueOrHttp2StatusISt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEEEC2ESE_.exit.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25, !noalias !249
  br label %_ZN9grpc_core12_GLOBAL__N_119ParseRstStreamFrameERKNS_16Http2FrameHeaderERNS_11SliceBufferE.exit

_ZN9grpc_core12_GLOBAL__N_119ParseRstStreamFrameERKNS_16Http2FrameHeaderERNS_11SliceBufferE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78.i, %_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core14Http2DataFrameENS2_16Http2HeaderFrameENS2_22Http2ContinuationFrameENS2_19Http2RstStreamFrameENS2_18Http2SettingsFrameENS2_14Http2PingFrameENS2_16Http2GoawayFrameENS2_22Http2WindowUpdateFrameENS2_18Http2SecurityFrameENS2_17Http2UnknownFrameENS2_15Http2EmptyFrameEEED2Ev.exit.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %78)
  call void @llvm.lifetime.end.p0(ptr nonnull %79)
  call void @llvm.lifetime.end.p0(ptr nonnull %83)
  call void @llvm.lifetime.end.p0(ptr nonnull %84)
  call void @llvm.lifetime.end.p0(ptr nonnull %88)
  call void @llvm.lifetime.end.p0(ptr nonnull %89)
  call void @llvm.lifetime.end.p0(ptr nonnull %93)
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core14Http2DataFrameENS2_16Http2HeaderFrameENS2_22Http2ContinuationFrameENS2_19Http2RstStreamFrameENS2_18Http2SettingsFrameENS2_14Http2PingFrameENS2_16Http2GoawayFrameENS2_22Http2WindowUpdateFrameENS2_18Http2SecurityFrameENS2_17Http2UnknownFrameENS2_15Http2EmptyFrameEEED2Ev.exit

bb.dy:                                            ; preds = %.critedge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  call void @llvm.lifetime.start.p0(ptr nonnull %59)
  call void @llvm.lifetime.start.p0(ptr nonnull %60)
  call void @llvm.lifetime.start.p0(ptr nonnull %64)
  call void @llvm.lifetime.start.p0(ptr nonnull %65)
  call void @llvm.lifetime.start.p0(ptr nonnull %69)
  call void @llvm.lifetime.start.p0(ptr nonnull %70)
  call void @llvm.lifetime.start.p0(ptr nonnull %71)
  call void @llvm.lifetime.start.p0(ptr nonnull %75)
  %i.yh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !43, !noalias !256
  %.not.i105 = icmp eq i32 %i.yi, 0
  br i1 %.not.i105, label %bb.eg, label %bb.dz, !prof !40

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #25, !noalias !256
  store i64 158, ptr %61, align 8, !tbaa !19, !noalias !256
  %.sroa.2.0..sroa_idx.i.i106 = getelementptr inbounds nuw i8, ptr %61, i64 8
  store ptr @.str.45, ptr %.sroa.2.0..sroa_idx.i.i106, align 8, !tbaa !21, !noalias !256
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #25, !noalias !256
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #25, !noalias !256
  call void @_ZNK9grpc_core16Http2FrameHeader8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %63, ptr noundef nonnull readonly align 4 dereferenceable(12) %1), !noalias !256
  %i.yj = load ptr, ptr %63, align 8, !tbaa !35, !noalias !256
  %i.yk = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.yl = load i64, ptr %i.yk, align 8, !tbaa !36, !noalias !256
  store i64 %i.yl, ptr %62, align 8, !noalias !256
  %i.ym = getelementptr inbounds nuw i8, ptr %62, i64 8
  store ptr %i.yj, ptr %i.ym, align 8, !noalias !256
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %60, ptr noundef nonnull align 8 dereferenceable(48) %61, ptr noundef nonnull align 8 dereferenceable(48) %62)
          to label %bb.ea unwind label %bb.ee, !noalias !256

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  store i8 1, ptr %59, align 8, !tbaa !31, !alias.scope !257, !noalias !256
  %i.yn = getelementptr inbounds nuw i8, ptr %59, i64 1
  store i8 1, ptr %i.yn, align 1, !tbaa !32, !alias.scope !257, !noalias !256
  %i.yo = getelementptr inbounds nuw i8, ptr %59, i64 4
  store i32 13, ptr %i.yo, align 4, !tbaa !33, !alias.scope !257, !noalias !256
  %i.yp = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 4 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %59, i64 24 ; 7 uses
  store ptr %i.yq, ptr %i.yp, align 8, !tbaa !34, !alias.scope !257, !noalias !256
  %i.yr = load ptr, ptr %60, align 8, !tbaa !35, !noalias !258 ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 9 uses
  %i.yt = icmp eq ptr %i.yr, %i.ys
  br i1 %i.yt, label %bb.eb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i110

bb.eb:                                            ; preds = %bb.ea
  %i.yu = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.yv = load i64, ptr %i.yu, align 8, !tbaa !36, !noalias !258 ; 3 uses
  %i.yw = icmp ult i64 %i.yv, 16
  call void @llvm.assume(i1 %i.yw)
  %i.yx = add nuw nsw i64 %i.yv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.yq, ptr noundef nonnull align 8 dereferenceable(1) %i.ys, i64 %i.yx, i1 false), !noalias !256
  br label %bb.ec

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i110: ; preds = %bb.ea
  store ptr %i.yr, ptr %i.yp, align 8, !tbaa !35, !alias.scope !257, !noalias !256
  %i.yy = load i64, ptr %i.ys, align 8, !tbaa !37, !noalias !258
  store i64 %i.yy, ptr %i.yq, align 8, !tbaa !37, !alias.scope !257, !noalias !256
  %.phi.trans.insert.i.i111 = getelementptr inbounds nuw i8, ptr %60, i64 8
  %.pre.i.i112 = load i64, ptr %.phi.trans.insert.i.i111, align 8, !tbaa !36, !noalias !258
  br label %bb.ec

bb.ec:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i110, %bb.eb
  %i.yz = phi i64 [ %i.yv, %bb.eb ], [ %.pre.i.i112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i110 ]
  %i.za = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.zb = getelementptr inbounds nuw i8, ptr %59, i64 16
  store i64 %i.yz, ptr %i.zb, align 8, !tbaa !36, !alias.scope !257, !noalias !256
  store ptr %i.ys, ptr %60, align 8, !tbaa !35, !noalias !258
  store i64 0, ptr %i.za, align 8, !tbaa !36, !noalias !258
  store i8 0, ptr %i.ys, align 8, !tbaa !37, !noalias !258
  invoke void @_ZN9grpc_core5http218ValueOrHttp2StatusISt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEEEC2ENS0_11Http2StatusE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 %59)
          to label %bb.ed unwind label %bb.ef

bb.ed:                                            ; preds = %bb.ec
  %i.zc = load ptr, ptr %i.yp, align 8, !tbaa !35, !noalias !256 ; 2 uses
  %i.zd = icmp eq ptr %i.zc, %i.yq
  br i1 %i.zd, label %_ZN9grpc_core5http211Http2StatusD2Ev.exit.i113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41.i: ; preds = %bb.ed
  %i.ze = load i64, ptr %i.yq, align 8, !tbaa !37, !noalias !256
  %i.zf = add i64 %i.ze, 1
  call void @_ZdlPvm(ptr noundef %i.zc, i64 noundef %i.zf) #29
  br label %_ZN9grpc_core5http211Http2StatusD2Ev.exit.i113

_ZN9grpc_core5http211Http2StatusD2Ev.exit.i113:   ; preds = %bb.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41.i
  %i.zg = load ptr, ptr %60, align 8, !tbaa !35, !noalias !256 ; 2 uses
  %i.zh = icmp eq ptr %i.zg, %i.ys
  br i1 %i.zh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114: ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit.i113
  %i.zi = load i64, ptr %i.ys, align 8, !tbaa !37, !noalias !256
  %i.zj = add i64 %i.zi, 1
  call void @_ZdlPvm(ptr noundef %i.zg, i64 noundef %i.zj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i115: ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit.i113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114
  %i.zk = load ptr, ptr %63, align 8, !tbaa !35, !noalias !256 ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 2 uses
  %i.zm = icmp eq ptr %i.zk, %i.zl
  br i1 %i.zm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i116: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i115
  %i.zn = load i64, ptr %i.zl, align 8, !tbaa !37, !noalias !256
  %i.zo = add i64 %i.zn, 1
  call void @_ZdlPvm(ptr noundef %i.zk, i64 noundef %i.zo) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i115, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #25, !noalias !256
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #25, !noalias !256
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #25, !noalias !256
  br label %_ZN9grpc_core12_GLOBAL__N_118ParseSettingsFrameERKNS_16Http2FrameHeaderERNS_11SliceBufferE.exit

bb.ee:                                            ; preds = %bb.dz
  %i.zp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i

bb.ef:                                            ; preds = %bb.ec
  %i.zq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zr = load ptr, ptr %i.yp, align 8, !tbaa !35, !noalias !256 ; 2 uses
  %i.zs = icmp eq ptr %i.zr, %i.yq
  br i1 %i.zs, label %_ZN9grpc_core5http211Http2StatusD2Ev.exit47.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45.i: ; preds = %bb.ef
  %i.zt = load i64, ptr %i.yq, align 8, !tbaa !37, !noalias !256
  %i.zu = add i64 %i.zt, 1
  call void @_ZdlPvm(ptr noundef %i.zr, i64 noundef %i.zu) #29
  br label %_ZN9grpc_core5http211Http2StatusD2Ev.exit47.i

_ZN9grpc_core5http211Http2StatusD2Ev.exit47.i:    ; preds = %bb.ef, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45.i
  %i.zv = load ptr, ptr %60, align 8, !tbaa !35, !noalias !256 ; 2 uses
  %i.zw = icmp eq ptr %i.zv, %i.ys
  br i1 %i.zw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i: ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit47.i
  %i.zx = load i64, ptr %i.ys, align 8, !tbaa !37, !noalias !256
  %i.zy = add i64 %i.zx, 1
  call void @_ZdlPvm(ptr noundef %i.zv, i64 noundef %i.zy) #29
end_hunk_1
begin_hunk_2_@_ZN9grpc_core17ParseFramePayloadERKNS_16Http2FrameHeaderEONS_11SliceBufferE:bb.a
  store i8 -1, ptr %i.bar, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr %0, ptr %4, align 8, !tbaa !90
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Move_ctor_baseILb0EJN9grpc_core14Http2DataFrameENS4_16Http2HeaderFrameENS4_22Http2ContinuationFrameENS4_19Http2RstStreamFrameENS4_18Http2SettingsFrameENS4_14Http2PingFrameENS4_16Http2GoawayFrameENS4_22Http2WindowUpdateFrameENS4_18Http2SecurityFrameENS4_17Http2UnknownFrameENS4_15Http2EmptyFrameEEEC1EOSG_EUlOT_T0_E_JSt7variantIJS5_S6_S7_S8_S9_SA_SB_SC_SD_SE_SF_EEEEDcOSK_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(145) %151)
          to label %_ZN9grpc_core5http218ValueOrHttp2StatusISt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEEEC2ESE_.exit unwind label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.bas = landingpad { ptr, i32 }
          catch ptr null
  %i.bat = extractvalue { ptr, i32 } %i.bas, 0
  call void @__clang_call_terminate(ptr %i.bat) #28
  unreachable

_ZN9grpc_core5http218ValueOrHttp2StatusISt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEEEC2ESE_.exit: ; preds = %bb.iz
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.bau = load i8, ptr %i.baq, align 8, !tbaa !45 ; 2 uses
  store i8 %i.bau, ptr %i.bar, align 8, !tbaa !45
  %i.bav = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 0, ptr %i.bav, align 8, !tbaa !92
  %.not.i.i = icmp eq i8 %i.bau, -1
  br i1 %.not.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core14Http2DataFrameENS2_16Http2HeaderFrameENS2_22Http2ContinuationFrameENS2_19Http2RstStreamFrameENS2_18Http2SettingsFrameENS2_14Http2PingFrameENS2_16Http2GoawayFrameENS2_22Http2WindowUpdateFrameENS2_18Http2SecurityFrameENS2_17Http2UnknownFrameENS2_15Http2EmptyFrameEEED2Ev.exit, label %bb.jb, !prof !15

bb.jb:                                            ; preds = %_ZN9grpc_core5http218ValueOrHttp2StatusISt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEEEC2ESE_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core14Http2DataFrameENS3_16Http2HeaderFrameENS3_22Http2ContinuationFrameENS3_19Http2RstStreamFrameENS3_18Http2SettingsFrameENS3_14Http2PingFrameENS3_16Http2GoawayFrameENS3_22Http2WindowUpdateFrameENS3_18Http2SecurityFrameENS3_17Http2UnknownFrameENS3_15Http2EmptyFrameEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_S5_S6_S7_S8_S9_SA_SB_SC_SD_SE_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(145) %151)
          to label %.noexc.i243 unwind label %bb.jc

.noexc.i243:                                      ; preds = %bb.jb
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core14Http2DataFrameENS2_16Http2HeaderFrameENS2_22Http2ContinuationFrameENS2_19Http2RstStreamFrameENS2_18Http2SettingsFrameENS2_14Http2PingFrameENS2_16Http2GoawayFrameENS2_22Http2WindowUpdateFrameENS2_18Http2SecurityFrameENS2_17Http2UnknownFrameENS2_15Http2EmptyFrameEEED2Ev.exit

bb.jc:                                            ; preds = %bb.jb
  %i.baw = landingpad { ptr, i32 }
          catch ptr null
  %i.bax = extractvalue { ptr, i32 } %i.baw, 0
  call void @__clang_call_terminate(ptr %i.bax) #28
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core14Http2DataFrameENS2_16Http2HeaderFrameENS2_22Http2ContinuationFrameENS2_19Http2RstStreamFrameENS2_18Http2SettingsFrameENS2_14Http2PingFrameENS2_16Http2GoawayFrameENS2_22Http2WindowUpdateFrameENS2_18Http2SecurityFrameENS2_17Http2UnknownFrameENS2_15Http2EmptyFrameEEED2Ev.exit: ; preds = %.noexc.i243, %_ZN9grpc_core5http218ValueOrHttp2StatusISt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEEEC2ESE_.exit, %_ZN9grpc_core12_GLOBAL__N_118ParseSecurityFrameERKNS_16Http2FrameHeaderERNS_11SliceBufferE.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, %_ZN9grpc_core12_GLOBAL__N_122ParseWindowUpdateFrameERKNS_16Http2FrameHeaderERNS_11SliceBufferE.exit, %_ZN9grpc_core12_GLOBAL__N_116ParseGoawayFrameERKNS_16Http2FrameHeaderERNS_11SliceBufferE.exit, %_ZN9grpc_core12_GLOBAL__N_114ParsePingFrameERKNS_16Http2FrameHeaderERNS_11SliceBufferE.exit, %_ZN9grpc_core12_GLOBAL__N_118ParseSettingsFrameERKNS_16Http2FrameHeaderERNS_11SliceBufferE.exit, %_ZN9grpc_core12_GLOBAL__N_119ParseRstStreamFrameERKNS_16Http2FrameHeaderERNS_11SliceBufferE.exit, %_ZN9grpc_core12_GLOBAL__N_122ParseContinuationFrameERKNS_16Http2FrameHeaderERNS_11SliceBufferE.exit, %_ZN9grpc_core12_GLOBAL__N_116ParseHeaderFrameERKNS_16Http2FrameHeaderERNS_11SliceBufferE.exit, %_ZN9grpc_core12_GLOBAL__N_114ParseDataFrameERKNS_16Http2FrameHeaderERNS_11SliceBufferE.exit
  ret void
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #10

declare void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core5http218ValueOrHttp2StatusISt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEEEC2ENS0_11Http2StatusE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef align 8 %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.a = load i64, ptr %1, align 8
  store i64 %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !34
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !36   ; 2 uses
  %i.j = icmp ult i64 %i.i, 16
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add nuw nsw i64 %i.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.k, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  store ptr %i.e, ptr %i.b, align 8, !tbaa !35
  %i.l = load i64, ptr %i.f, align 8, !tbaa !37
  store i64 %i.l, ptr %i.d, align 8, !tbaa !37
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.o, align 8, !tbaa !36
  store ptr %i.f, ptr %i.c, align 8, !tbaa !35
  store i64 0, ptr %i.m, align 8, !tbaa !36
  store i8 0, ptr %i.f, align 8, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 1, ptr %i.p, align 8, !tbaa !92
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !32
  %.not = icmp eq i8 %i.r, 0
  br i1 %.not, label %bb.d, label %.critedge, !prof !15

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.57, i32 noundef 348, ptr noundef nonnull @.str.58) #26
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.f

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.e
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #28
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #28
  unreachable

.critedge:                                        ; preds = %bb.c
  ret void

bb.g:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJSt7variantIJN9grpc_core14Http2DataFrameENS3_16Http2HeaderFrameENS3_22Http2ContinuationFrameENS3_19Http2RstStreamFrameENS3_18Http2SettingsFrameENS3_14Http2PingFrameENS3_16Http2GoawayFrameENS3_22Http2WindowUpdateFrameENS3_18Http2SecurityFrameENS3_17Http2UnknownFrameENS3_15Http2EmptyFrameEEENS3_5http211Http2StatusEEED2Ev(ptr noundef nonnull align 8 dead_on_return(153) dereferenceable(153) %0) #25
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress uwtable
define noundef zeroext range(i8 0, 14) i8 @_ZN9grpc_core30FrameErrorCodeToHttp2ErrorCodeEj(i32 noundef %0) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %i.b = icmp ugt i32 %0, 13
  br i1 %i.b, label %bb.b, label %bb.e, !prof !15

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str, i32 noundef 761) #26
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 83, ptr nonnull @.str.11)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi84EEERS2_RAT__Kc.exit unwind label %bb.d

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi84EEERS2_RAT__Kc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %0, ptr %i.a, align 4, !tbaa !17
  %i.c = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIjEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi84EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.d

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.c
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.f

bb.d:                                             ; preds = %bb.c, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi84EEERS2_RAT__Kc.exit, %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  %i.e = trunc nuw nsw i32 %0 to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit
  %.0 = phi i8 [ 2, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit ], [ %i.e, %bb.e ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 0, 256) i32 @_ZN9grpc_core30Http2ErrorCodeToFrameErrorCodeENS_5http214Http2ErrorCodeE(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i8 %0 to i32
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN9grpc_core19GetFrameMemoryUsageERKSt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEE(ptr noundef nonnull align 8 dereferenceable(145) %0) local_unnamed_addr #6 {
bb.a:
  %1 = alloca %class.anon.133, align 1            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = call noundef i64 @_ZSt5visitIZN9grpc_core13MemoryUsageOfIJNS0_14Http2DataFrameENS0_16Http2HeaderFrameENS0_22Http2ContinuationFrameENS0_19Http2RstStreamFrameENS0_18Http2SettingsFrameENS0_14Http2PingFrameENS0_16Http2GoawayFrameENS0_22Http2WindowUpdateFrameENS0_18Http2SecurityFrameENS0_17Http2UnknownFrameENS0_15Http2EmptyFrameEEEEmRKSt7variantIJDpT_EEEUlRKT_E_JRKSD_IJS2_S3_S4_S5_S6_S7_S8_S9_SA_SB_SC_EEEENSt13invoke_resultISJ_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISS_EEEEE4typeEE4typeEOS11_EEEE4typeEOSJ_DpOSS_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(145) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret i64 %i.a
}

; Function Attrs: uwtable
define void @_ZN9grpc_core17ExtractGrpcHeaderERNS_11SliceBufferE(ptr dead_on_unwind noalias writable sret(%"class.grpc_core::http2::ValueOrHttp2Status.54") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %5 = alloca %"class.grpc_core::http2::Http2Status", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %9 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %i.b = alloca [5 x i8], align 1                 ; 9 uses
  %10 = alloca %"class.grpc_core::http2::ValueOrHttp2Status.74", align 8 ; 19 uses
  %11 = alloca %"class.grpc_core::http2::Http2Status", align 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %.not.i = icmp ult i64 %i.d, 5
  br i1 %.not.i, label %bb.o, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @_Z40grpc_slice_buffer_copy_first_into_bufferPK17grpc_slice_buffermPv(ptr noundef nonnull align 8 dereferenceable(136) %1, i64 noundef 5, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.e = load i8, ptr %i.b, align 1, !tbaa !37    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !290)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  switch i8 %i.e, label %bb.d [
    i8 0, label %_ZN9grpc_core5http211Http2StatusD2Ev.exit
    i8 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %_ZN9grpc_core5http211Http2StatusD2Ev.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !290
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str, i32 noundef 790) #26, !noalias !290
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 27, ptr nonnull @.str.56)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi28EEERS2_RAT__Kc.exit.i unwind label %bb.n, !noalias !290

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi28EEERS2_RAT__Kc.exit.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !290
  store i32 %i.f, ptr %i.a, align 4, !tbaa !17, !noalias !290
  %i.g = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIjEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.e unwind label %bb.n, !noalias !290

bb.e:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi28EEERS2_RAT__Kc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !290
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i unwind label %bb.n, !noalias !290

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i: ; preds = %bb.e
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #27, !noalias !290
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !290
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !290
  store i64 27, ptr %7, align 8, !noalias !290
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.56, ptr %i.h, align 8, !noalias !290
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !290
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.j = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.f, ptr noundef nonnull %i.i), !noalias !290
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.k, %i.l
  store i64 %i.m, ptr %8, align 8, !tbaa !23, !noalias !290
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.i, ptr %i.n, align 8, !tbaa !24, !noalias !290
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %8), !noalias !290
  call void @llvm.experimental.noalias.scope.decl(metadata !291)
  store i8 2, ptr %5, align 8, !tbaa !31, !alias.scope !291, !noalias !290
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 2, ptr %i.o, align 1, !tbaa !32, !alias.scope !291, !noalias !290
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 13, ptr %i.p, align 4, !tbaa !33, !alias.scope !291, !noalias !290
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 10 uses
  %i.s = load ptr, ptr %6, align 8, !tbaa !35, !noalias !292 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.f:                                             ; preds = %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !36, !noalias !292 ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false), !noalias !290
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i
  store ptr %i.s, ptr %i.q, align 8, !tbaa !35, !alias.scope !291, !noalias !290
  %i.z = load i64, ptr %i.t, align 8, !tbaa !37, !noalias !292
  store i64 %i.z, ptr %i.r, align 8, !tbaa !37, !alias.scope !291, !noalias !290
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !36, !noalias !292
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %i.aa = phi ptr [ %i.r, %bb.f ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ] ; 2 uses
  %i.ab = phi i64 [ %i.w, %bb.f ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.t, ptr %6, align 8, !tbaa !35, !noalias !292
  store i64 0, ptr %i.ac, align 8, !tbaa !36, !noalias !292
  store i8 0, ptr %i.t, align 8, !tbaa !37, !noalias !292
  %i.ae = load i64, ptr %5, align 8, !noalias !290 ; 2 uses
  store i64 %i.ae, ptr %10, align 8, !alias.scope !290
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 5 uses
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !34, !alias.scope !290
  %i.ah = icmp eq ptr %i.aa, %i.r
  br i1 %i.ah, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ai = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.aj, i1 false)
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g
  store ptr %i.aa, ptr %i.af, align 8, !tbaa !35, !alias.scope !290
  %i.ak = load i64, ptr %i.r, align 8, !tbaa !37, !noalias !290
  store i64 %i.ak, ptr %i.ag, align 8, !tbaa !37, !alias.scope !290
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %i.ab, ptr %i.al, align 8, !tbaa !36, !alias.scope !290
  store ptr %i.r, ptr %i.q, align 8, !tbaa !35, !noalias !290
  store i64 0, ptr %i.ad, align 8, !tbaa !36, !noalias !290
  store i8 0, ptr %i.r, align 8, !tbaa !37, !noalias !290
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  store i8 1, ptr %i.am, align 8, !tbaa !294, !alias.scope !290
  %i.an = and i64 %i.ae, 65280
  %.not.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i, label %bb.j, label %_ZN9grpc_core5http218ValueOrHttp2StatusIjE10TakeStatusEOS2_.exit, !prof !15

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !290
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.57, i32 noundef 348, ptr noundef nonnull @.str.58) #26
          to label %bb.k unwind label %.body.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i unwind label %bb.l

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i: ; preds = %bb.k
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  unreachable

.body.i:                                          ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !290
  %i.aq = load i8, ptr %i.am, align 8, !tbaa !294
  %.off.i = add i8 %i.aq, -1
  %switch.i = icmp ult i8 %.off.i, -2
  br i1 %switch.i, label %bb.m, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJjN9grpc_core5http211Http2StatusEEED2Ev.exit, !prof !95

bb.m:                                             ; preds = %.body.i
  %i.ar = load ptr, ptr %i.af, align 8, !tbaa !35 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ag
  br i1 %i.as, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJjN9grpc_core5http211Http2StatusEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.m
  %i.at = load i64, ptr %i.ag, align 8, !tbaa !37
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #29
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJjN9grpc_core5http211Http2StatusEEED2Ev.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJjN9grpc_core5http211Http2StatusEEED2Ev.exit: ; preds = %bb.m, %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.av = load ptr, ptr %i.q, align 8, !tbaa !35, !noalias !290 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.r
  br i1 %i.aw, label %_ZN9grpc_core5http211Http2StatusD2Ev.exit11.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i

bb.n:                                             ; preds = %bb.e, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi28EEERS2_RAT__Kc.exit.i, %bb.d
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #27, !noalias !290
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !290
  br label %common.resume

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJjN9grpc_core5http211Http2StatusEEED2Ev.exit
  %i.ay = load i64, ptr %i.r, align 8, !tbaa !37, !noalias !290
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #29
  br label %_ZN9grpc_core5http211Http2StatusD2Ev.exit11.i

_ZN9grpc_core5http211Http2StatusD2Ev.exit11.i:    ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJjN9grpc_core5http211Http2StatusEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i
  %i.ba = load ptr, ptr %6, align 8, !tbaa !35, !noalias !290 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.t
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i: ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit11.i
  %i.bc = load i64, ptr %i.t, align 8, !tbaa !37, !noalias !290
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i: ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit11.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !290
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !290
  br label %common.resume

common.resume:                                    ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, %_ZN9grpc_core5http218ValueOrHttp2StatusIjED2Ev.exit23
  %common.resume.op = phi { ptr, i32 } [ %i.ch, %_ZN9grpc_core5http218ValueOrHttp2StatusIjED2Ev.exit23 ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i ], [ %i.ax, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.o:                                             ; preds = %bb.a
  %i.be = tail call noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringImhEEPKcT_T0_S4_(i64 noundef %i.d, i8 noundef zeroext 5, ptr noundef nonnull @.str.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str, i32 noundef 806, ptr noundef nonnull %i.be) #26
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.p

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.o
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #28
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #28
  unreachable

_ZN9grpc_core5http218ValueOrHttp2StatusIjE10TakeStatusEOS2_.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !290
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !290
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.bh = load i64, ptr %10, align 8              ; 3 uses
  store i64 %i.bh, ptr %11, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 10 uses
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !35 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 5 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.q:                                             ; preds = %_ZN9grpc_core5http218ValueOrHttp2StatusIjE10TakeStatusEOS2_.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !36 ; 3 uses
  %i.bq = icmp ult i64 %i.bp, 16
  call void @llvm.assume(i1 %i.bq)
  %i.br = add nuw nsw i64 %i.bp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bk, ptr noundef nonnull align 8 dereferenceable(1) %i.bm, i64 %i.br, i1 false)
  br label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN9grpc_core5http218ValueOrHttp2StatusIjE10TakeStatusEOS2_.exit
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !35
  %i.bs = load i64, ptr %i.bm, align 8, !tbaa !37
  store i64 %i.bs, ptr %i.bk, align 8, !tbaa !37
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !36
  br label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.q
  %i.bt = phi ptr [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bk, %bb.q ] ; 2 uses
  %i.bu = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bp, %bb.q ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.bm, ptr %i.bj, align 8, !tbaa !35
  store i64 0, ptr %i.bv, align 8, !tbaa !36
  store i8 0, ptr %i.bm, align 8, !tbaa !37
  store i64 %i.bh, ptr %0, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.by, ptr %i.bx, align 8, !tbaa !34
  %i.bz = icmp eq ptr %i.bt, %i.bk
  br i1 %i.bz, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.ca = icmp ult i64 %i.bu, 16
  call void @llvm.assume(i1 %i.ca)
  %i.cb = add nuw nsw i64 %i.bu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.by, ptr noundef nonnull align 8 dereferenceable(1) %i.bk, i64 %i.cb, i1 false)
  br label %bb.t

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.r
  store ptr %i.bt, ptr %i.bx, align 8, !tbaa !35
  %i.cc = load i64, ptr %i.bk, align 8, !tbaa !37
  store i64 %i.cc, ptr %i.by, align 8, !tbaa !37
  br label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bu, ptr %i.cd, align 8, !tbaa !36
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !35
  store i64 0, ptr %i.bw, align 8, !tbaa !36
  store i8 0, ptr %i.bk, align 8, !tbaa !37
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.ce, align 8, !tbaa !97
  %i.cf = and i64 %i.bh, 65280
  %.not.i9 = icmp eq i64 %i.cf, 0
  br i1 %.not.i9, label %bb.u, label %bb.x, !prof !15

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.57, i32 noundef 348, ptr noundef nonnull @.str.58) #26
          to label %bb.v unwind label %.body

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i10 unwind label %bb.w

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i10: ; preds = %bb.v
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #28
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #28
  unreachable

.body:                                            ; preds = %bb.u
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core17GrpcMessageHeaderENS2_5http211Http2StatusEEED2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(48) %0) #25
  %i.ci = load ptr, ptr %i.bi, align 8, !tbaa !35 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.bk
  br i1 %i.cj, label %_ZN9grpc_core5http211Http2StatusD2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12: ; preds = %.body
  %i.ck = load i64, ptr %i.bk, align 8, !tbaa !37
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #29
  br label %_ZN9grpc_core5http211Http2StatusD2Ev.exit15

_ZN9grpc_core5http211Http2StatusD2Ev.exit:        ; preds = %bb.b, %bb.c
  %.sroa.0.0.insert.ext.ph = phi i64 [ 2147483648, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %12 = load i8, ptr %i.cm, align 1, !tbaa !37
  %13 = zext i8 %12 to i64
  %14 = shl nuw nsw i64 %13, 24
  %15 = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %16 = load i8, ptr %15, align 1, !tbaa !37
  %17 = zext i8 %16 to i64
  %18 = shl nuw nsw i64 %17, 16
  %19 = or disjoint i64 %18, %14
  %20 = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %21 = load i8, ptr %20, align 1, !tbaa !37
  %22 = zext i8 %21 to i64
  %23 = shl nuw nsw i64 %22, 8
  %24 = or disjoint i64 %19, %23
  %25 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %26 = load i8, ptr %25, align 1, !tbaa !37
  %i.cn = zext i8 %26 to i64
  %.sroa.6.0.insert.ext = or disjoint i64 %24, %i.cn
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 32
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.0.0.insert.ext.ph
  store i64 %.sroa.0.0.insert.insert, ptr %0, align 8, !tbaa !17
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.co, align 8, !tbaa !97
  br label %_ZN9grpc_core5http218ValueOrHttp2StatusIjED2Ev.exit

bb.x:                                             ; preds = %bb.t
  %i.cp = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !35 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZN9grpc_core5http218ValueOrHttp2StatusIjED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.x
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !37
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #29
  br label %_ZN9grpc_core5http218ValueOrHttp2StatusIjED2Ev.exit

_ZN9grpc_core5http218ValueOrHttp2StatusIjED2Ev.exit: ; preds = %bb.x, %_ZN9grpc_core5http211Http2StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  ret void

_ZN9grpc_core5http211Http2StatusD2Ev.exit15:      ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12
  %i.cv = load i8, ptr %i.bg, align 8, !tbaa !294
  %.off.i.i19 = add i8 %i.cv, -1
  %switch.i.i20 = icmp ult i8 %.off.i.i19, -2
  br i1 %switch.i.i20, label %bb.y, label %_ZN9grpc_core5http218ValueOrHttp2StatusIjED2Ev.exit23, !prof !95

bb.y:                                             ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit15
  %i.cw = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !35 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZN9grpc_core5http218ValueOrHttp2StatusIjED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i21: ; preds = %bb.y
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !37
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #29
  br label %_ZN9grpc_core5http218ValueOrHttp2StatusIjED2Ev.exit23

_ZN9grpc_core5http218ValueOrHttp2StatusIjED2Ev.exit23: ; preds = %bb.y, %_ZN9grpc_core5http211Http2StatusD2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core29AppendGrpcHeaderToSliceBufferERNS_11SliceBufferEjj(ptr noundef nonnull align 8 dereferenceable(136) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noundef ptr @grpc_slice_buffer_tiny_add(ptr noundef nonnull align 8 dereferenceable(136) %0, i64 noundef 5) ; 5 uses
  %.lobit.i = lshr i32 %1, 31
  %i.b = trunc nuw nsw i32 %.lobit.i to i8
  store i8 %i.b, ptr %i.a, align 1, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.d = lshr i32 %2, 24
  %i.e = trunc nuw i32 %i.d to i8
  store i8 %i.e, ptr %i.c, align 1, !tbaa !37
  %i.f = lshr i32 %2, 16
  %i.g = trunc i32 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.g, ptr %i.h, align 1, !tbaa !37
  %i.i = lshr i32 %2, 8
  %i.j = trunc i32 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.j, ptr %i.k, align 1, !tbaa !37
  %i.l = trunc i32 %2 to i8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.l, ptr %i.m, align 1, !tbaa !37
  ret void
}

; Function Attrs: uwtable
define void @_ZN9grpc_core19ValidateFrameHeaderEjbjRKNS_16Http2FrameHeaderEjbbRNS_22Http2FrameCountTrackerEj(ptr dead_on_unwind noalias writable sret(%"class.grpc_core::http2::Http2Status") align 8 initializes((0, 2), (4, 8)) %0, i32 noundef %1, i1 noundef zeroext %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7, ptr nofree noundef nonnull align 2 captures(none) dereferenceable(4) %8, i32 noundef %9) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca [5 x %"class.std::basic_string_view"], align 8 ; 13 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %14 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %15 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %17 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %18 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %19 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %20 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %22 = alloca %"class.std::allocator", align 1   ; 3 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %24 = alloca %"class.std::allocator", align 1   ; 3 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %26 = alloca %"class.std::allocator", align 1   ; 3 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %28 = alloca %"class.std::allocator", align 1   ; 3 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %30 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.b = load i8, ptr %i.a, align 4, !tbaa !41    ; 5 uses
  %i.c = icmp eq i8 %i.b, 0
  %i.d = icmp eq i8 %i.b, 9                       ; 3 uses
  br i1 %7, label %.critedge, label %bb.b, !prof !40

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i8 %i.b, 4
  br i1 %i.e, label %bb.c, label %.thread, !prof !315

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 5
  %i.g = load i8, ptr %i.f, align 1, !tbaa !42
  %i.h = and i8 %i.g, 1
  %.not161 = icmp eq i8 %i.h, 0
  br i1 %.not161, label %.critedge, label %.thread, !prof !316

.thread:                                          ; preds = %bb.b, %bb.c
  %_ZN9grpc_core7RFC911325kFirstSettingsFrameClientE._ZN9grpc_core7RFC911325kFirstSettingsFrameServerE = select i1 %6, ptr @_ZN9grpc_core7RFC911325kFirstSettingsFrameClientE, ptr @_ZN9grpc_core7RFC911325kFirstSettingsFrameServerE
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(16) %_ZN9grpc_core7RFC911325kFirstSettingsFrameClientE._ZN9grpc_core7RFC911325kFirstSettingsFrameServerE, ptr noundef nonnull align 1 dereferenceable(1) %12)
  call void @llvm.experimental.noalias.scope.decl(metadata !317)
  store i8 1, ptr %0, align 8, !tbaa !31, !alias.scope !317
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.i, align 1, !tbaa !32, !alias.scope !317
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 13, ptr %i.j, align 4, !tbaa !33, !alias.scope !317
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !34, !alias.scope !317
  %i.m = load ptr, ptr %11, align 8, !tbaa !35, !noalias !317 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.d:                                             ; preds = %.thread
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !36, !noalias !317 ; 3 uses
  %i.r = icmp ult i64 %i.q, 16
  call void @llvm.assume(i1 %i.r)
  %i.s = add nuw nsw i64 %i.q, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.thread
  store ptr %i.m, ptr %i.k, align 8, !tbaa !35, !alias.scope !317
  %i.t = load i64, ptr %i.n, align 8, !tbaa !37, !noalias !317
  store i64 %i.t, ptr %i.l, align 8, !tbaa !37, !alias.scope !317
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !36, !noalias !317
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.d
  %i.u = phi i64 [ %i.q, %bb.d ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.u, ptr %i.v, align 8, !tbaa !36, !alias.scope !317
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %.critedge76

.critedge:                                        ; preds = %bb.c, %bb.a
  %i.w = load i32, ptr %4, align 4, !tbaa !39     ; 4 uses
  %i.x = icmp ugt i32 %i.w, %1
  br i1 %i.x, label %bb.e, label %bb.g, !prof !15

bb.e:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.z = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEjPc(i32 noundef %i.w, ptr noundef nonnull %i.y)
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  store i64 %i.ac, ptr %14, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %i.y, ptr %i.ad, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.ae = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.af = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEjPc(i32 noundef %1, ptr noundef nonnull %i.ae)
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 2 uses
  store i64 %i.ai, ptr %15, align 8, !tbaa !23
  %i.aj = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.ae, ptr %i.aj, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25, !noalias !318
  store i64 127, ptr %10, align 8, !noalias !318
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.63, ptr %i.ak, align 8, !noalias !318
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 17, ptr %i.al, align 8, !noalias !318
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr @.str.13, ptr %i.am, align 8, !noalias !318
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 32
  %.sroa.0.0.copyload.i10.i = load i64, ptr %14, align 8, !tbaa !19, !noalias !318
  %.sroa.2.0.copyload.i12.i = load ptr, ptr %i.ad, align 8, !tbaa !21, !noalias !318
  store i64 %.sroa.0.0.copyload.i10.i, ptr %i.an, align 8, !noalias !318
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr %.sroa.2.0.copyload.i12.i, ptr %i.ao, align 8, !noalias !318
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i64 13, ptr %i.ap, align 8, !noalias !318
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 56
  store ptr @.str.14, ptr %i.aq, align 8, !noalias !318
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 64
end_hunk_2
