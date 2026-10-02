Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/frame?download=true
inline.NumInlined: 1737
inline.NumDeleted: 1033
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN9grpc_core9SerializeEN4absl12lts_202505124SpanISt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEEEERNS_11SliceBufferE:bb.a
  store i32 0, ptr %i.j, align 4, !tbaa !43
  %i.pz = load ptr, ptr %3, align 8, !tbaa !138
  %.not.i.i.i.i.i.i69.i.i = icmp eq ptr %i.pz, null
  %i.qa = load ptr, ptr %i.k, align 8
  %i.qb = select i1 %.not.i.i.i.i.i.i69.i.i, ptr %i.l, ptr %i.qa
  invoke void @_ZNK9grpc_core16Http2FrameHeader9SerializeEPh(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef %i.qb)
          to label %bb.eb unwind label %bb.ej

bb.eb:                                            ; preds = %.noexc31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.qc = load ptr, ptr %34, align 8, !tbaa !141, !nonnull !69, !align !142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false), !noalias !164
  %i.qd = invoke noundef i64 @_ZN9grpc_core11SliceBuffer13AppendIndexedENS_5SliceE(ptr noundef nonnull align 8 dereferenceable(136) %i.qc, ptr noundef nonnull align 8 %5)
          to label %bb.ec unwind label %bb.el     ; 0 uses

bb.ec:                                            ; preds = %bb.eb
  %i.qe = load ptr, ptr %5, align 8, !tbaa !56    ; 4 uses
  %i.qf = icmp ugt ptr %i.qe, inttoptr (i64 1 to ptr)
  br i1 %i.qf, label %bb.ed, label %_ZN9grpc_core5SliceD2Ev.exit.i.i.i.i71.i.i

bb.ed:                                            ; preds = %bb.ec
  %i.qg = atomicrmw sub ptr %i.qe, i64 1 acq_rel, align 8
  %i.qh = icmp eq i64 %i.qg, 1
  br i1 %i.qh, label %bb.ee, label %_ZN9grpc_core5SliceD2Ev.exit.i.i.i.i71.i.i

bb.ee:                                            ; preds = %bb.ed
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !60
  invoke void %i.qj(ptr noundef nonnull align 8 dereferenceable(16) %i.qe)
          to label %_ZN9grpc_core5SliceD2Ev.exit.i.i.i.i71.i.i unwind label %bb.ef, !inline_history !0

bb.ef:                                            ; preds = %bb.ee
  %i.qk = landingpad { ptr, i32 }
          catch ptr null
  %i.ql = extractvalue { ptr, i32 } %i.qk, 0
  call void @__clang_call_terminate(ptr %i.ql) #28
  unreachable

_ZN9grpc_core5SliceD2Ev.exit.i.i.i.i71.i.i:       ; preds = %bb.ee, %bb.ed, %bb.ec
  %i.qm = load ptr, ptr %34, align 8, !tbaa !141, !nonnull !69, !align !142
  invoke void @grpc_slice_buffer_move_into(ptr noundef nonnull align 8 dereferenceable(145) %.01945, ptr noundef nonnull align 8 dereferenceable(136) %i.qm)
          to label %_ZN9grpc_core11SliceBuffer13TakeAndAppendERS0_.exit.i.i.i.i72.i.i unwind label %bb.ek

_ZN9grpc_core11SliceBuffer13TakeAndAppendERS0_.exit.i.i.i.i72.i.i: ; preds = %_ZN9grpc_core5SliceD2Ev.exit.i.i.i.i71.i.i
  %i.qn = load ptr, ptr %3, align 8, !tbaa !56    ; 4 uses
  %i.qo = icmp ugt ptr %i.qn, inttoptr (i64 1 to ptr)
  br i1 %i.qo, label %bb.eg, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEERN9grpc_core12_GLOBAL__N_125SerializeHeaderAndPayloadERSt7variantIJNS5_14Http2DataFrameENS5_16Http2HeaderFrameENS5_22Http2ContinuationFrameENS5_19Http2RstStreamFrameENS5_18Http2SettingsFrameENS5_14Http2PingFrameENS5_16Http2GoawayFrameENS5_22Http2WindowUpdateFrameENS5_18Http2SecurityFrameENS5_17Http2UnknownFrameENS5_15Http2EmptyFrameEEEEJEEESt16integer_sequenceImJLm8EEEE14__visit_invokeES8_SM_.exit.i.i

bb.eg:                                            ; preds = %_ZN9grpc_core11SliceBuffer13TakeAndAppendERS0_.exit.i.i.i.i72.i.i
  %i.qp = atomicrmw sub ptr %i.qn, i64 1 acq_rel, align 8
  %i.qq = icmp eq i64 %i.qp, 1
  br i1 %i.qq, label %bb.eh, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEERN9grpc_core12_GLOBAL__N_125SerializeHeaderAndPayloadERSt7variantIJNS5_14Http2DataFrameENS5_16Http2HeaderFrameENS5_22Http2ContinuationFrameENS5_19Http2RstStreamFrameENS5_18Http2SettingsFrameENS5_14Http2PingFrameENS5_16Http2GoawayFrameENS5_22Http2WindowUpdateFrameENS5_18Http2SecurityFrameENS5_17Http2UnknownFrameENS5_15Http2EmptyFrameEEEEJEEESt16integer_sequenceImJLm8EEEE14__visit_invokeES8_SM_.exit.i.i

bb.eh:                                            ; preds = %bb.eg
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
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
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #25, !noalias !256
  call void @_ZNK9grpc_core16Http2FrameHeader8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %68, ptr noundef nonnull readonly align 4 dereferenceable(12) %1), !noalias !256
  %i.aah = load ptr, ptr %68, align 8, !tbaa !35, !noalias !256
  %i.aai = getelementptr inbounds nuw i8, ptr %68, i64 8
  %i.aaj = load i64, ptr %i.aai, align 8, !tbaa !36, !noalias !256
  store i64 %i.aaj, ptr %67, align 8, !noalias !256
  %i.aak = getelementptr inbounds nuw i8, ptr %67, i64 8
  store ptr %i.aah, ptr %i.aak, align 8, !noalias !256
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %65, ptr noundef nonnull align 8 dereferenceable(48) %66, ptr noundef nonnull align 8 dereferenceable(48) %67)
          to label %bb.ej unwind label %bb.en, !noalias !256

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.experimental.noalias.scope.decl(metadata !259)
  store i8 6, ptr %64, align 8, !tbaa !31, !alias.scope !259, !noalias !256
  %i.aal = getelementptr inbounds nuw i8, ptr %64, i64 1
  store i8 1, ptr %i.aal, align 1, !tbaa !32, !alias.scope !259, !noalias !256
  %i.aam = getelementptr inbounds nuw i8, ptr %64, i64 4
  store i32 13, ptr %i.aam, align 4, !tbaa !33, !alias.scope !259, !noalias !256
  %i.aan = getelementptr inbounds nuw i8, ptr %64, i64 8 ; 4 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %64, i64 24 ; 7 uses
  store ptr %i.aao, ptr %i.aan, align 8, !tbaa !34, !alias.scope !259, !noalias !256
  %i.aap = load ptr, ptr %65, align 8, !tbaa !35, !noalias !260 ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %65, i64 16 ; 9 uses
  %i.aar = icmp eq ptr %i.aap, %i.aaq
  br i1 %i.aar, label %bb.ek, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55.i

bb.ek:                                            ; preds = %bb.ej
  %i.aas = getelementptr inbounds nuw i8, ptr %65, i64 8
  %i.aat = load i64, ptr %i.aas, align 8, !tbaa !36, !noalias !260 ; 3 uses
  %i.aau = icmp ult i64 %i.aat, 16
  call void @llvm.assume(i1 %i.aau)
  %i.aav = add nuw nsw i64 %i.aat, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aao, ptr noundef nonnull align 8 dereferenceable(1) %i.aaq, i64 %i.aav, i1 false), !noalias !256
  br label %bb.el

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55.i: ; preds = %bb.ej
  store ptr %i.aap, ptr %i.aan, align 8, !tbaa !35, !alias.scope !259, !noalias !256
  %i.aaw = load i64, ptr %i.aaq, align 8, !tbaa !37, !noalias !260
  store i64 %i.aaw, ptr %i.aao, align 8, !tbaa !37, !alias.scope !259, !noalias !256
  %.phi.trans.insert.i56.i = getelementptr inbounds nuw i8, ptr %65, i64 8
  %.pre.i57.i = load i64, ptr %.phi.trans.insert.i56.i, align 8, !tbaa !36, !noalias !260
  br label %bb.el

bb.el:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55.i, %bb.ek
  %i.aax = phi i64 [ %i.aat, %bb.ek ], [ %.pre.i57.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55.i ]
  %i.aay = getelementptr inbounds nuw i8, ptr %65, i64 8
  %i.aaz = getelementptr inbounds nuw i8, ptr %64, i64 16
  store i64 %i.aax, ptr %i.aaz, align 8, !tbaa !36, !alias.scope !259, !noalias !256
  store ptr %i.aaq, ptr %65, align 8, !tbaa !35, !noalias !260
  store i64 0, ptr %i.aay, align 8, !tbaa !36, !noalias !260
  store i8 0, ptr %i.aaq, align 8, !tbaa !37, !noalias !260
  invoke void @_ZN9grpc_core5http218ValueOrHttp2StatusISt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEEEC2ENS0_11Http2StatusE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 %64)
          to label %bb.em unwind label %bb.eo

bb.em:                                            ; preds = %bb.el
  %i.aba = load ptr, ptr %i.aan, align 8, !tbaa !35, !noalias !256 ; 2 uses
  %i.abb = icmp eq ptr %i.aba, %i.aao
  br i1 %i.abb, label %_ZN9grpc_core5http211Http2StatusD2Ev.exit61.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59.i: ; preds = %bb.em
  %i.abc = load i64, ptr %i.aao, align 8, !tbaa !37, !noalias !256
  %i.abd = add i64 %i.abc, 1
  call void @_ZdlPvm(ptr noundef %i.aba, i64 noundef %i.abd) #29
  br label %_ZN9grpc_core5http211Http2StatusD2Ev.exit61.i

_ZN9grpc_core5http211Http2StatusD2Ev.exit61.i:    ; preds = %bb.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59.i
  %i.abe = load ptr, ptr %65, align 8, !tbaa !35, !noalias !256 ; 2 uses
  %i.abf = icmp eq ptr %i.abe, %i.aaq
  br i1 %i.abf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i121: ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit61.i
  %i.abg = load i64, ptr %i.aaq, align 8, !tbaa !37, !noalias !256
  %i.abh = add i64 %i.abg, 1
  call void @_ZdlPvm(ptr noundef %i.abe, i64 noundef %i.abh) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i122: ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit61.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i121
  %i.abi = load ptr, ptr %68, align 8, !tbaa !35, !noalias !256 ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 2 uses
  %i.abk = icmp eq ptr %i.abi, %i.abj
  br i1 %i.abk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i122
  %i.abl = load i64, ptr %i.abj, align 8, !tbaa !37, !noalias !256
  %i.abm = add i64 %i.abl, 1
  call void @_ZdlPvm(ptr noundef %i.abi, i64 noundef %i.abm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #25, !noalias !256
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #25, !noalias !256
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #25, !noalias !256
  br label %_ZN9grpc_core12_GLOBAL__N_118ParseSettingsFrameERKNS_16Http2FrameHeaderERNS_11SliceBufferE.exit

bb.en:                                            ; preds = %bb.ei
  %i.abn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.i

bb.eo:                                            ; preds = %bb.el
  %i.abo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abp = load ptr, ptr %i.aan, align 8, !tbaa !35, !noalias !256 ; 2 uses
  %i.abq = icmp eq ptr %i.abp, %i.aao
  br i1 %i.abq, label %_ZN9grpc_core5http211Http2StatusD2Ev.exit70.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i68.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i68.i: ; preds = %bb.eo
  %i.abr = load i64, ptr %i.aao, align 8, !tbaa !37, !noalias !256
  %i.abs = add i64 %i.abr, 1
  call void @_ZdlPvm(ptr noundef %i.abp, i64 noundef %i.abs) #29
  br label %_ZN9grpc_core5http211Http2StatusD2Ev.exit70.i

_ZN9grpc_core5http211Http2StatusD2Ev.exit70.i:    ; preds = %bb.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i68.i
  %i.abt = load ptr, ptr %65, align 8, !tbaa !35, !noalias !256 ; 2 uses
  %i.abu = icmp eq ptr %i.abt, %i.aaq
  br i1 %i.abu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.i: ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit70.i
  %i.abv = load i64, ptr %i.aaq, align 8, !tbaa !37, !noalias !256
  %i.abw = add i64 %i.abv, 1
  call void @_ZdlPvm(ptr noundef %i.abt, i64 noundef %i.abw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.i: ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit70.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.i, %bb.en
  %.pn33.pn.i = phi { ptr, i32 } [ %i.abn, %bb.en ], [ %i.abo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71.i ], [ %i.abo, %_ZN9grpc_core5http211Http2StatusD2Ev.exit70.i ]
  %i.abx = load ptr, ptr %68, align 8, !tbaa !35, !noalias !256 ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 2 uses
  %i.abz = icmp eq ptr %i.abx, %i.aby
  br i1 %i.abz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.i
  %i.aca = load i64, ptr %i.aby, align 8, !tbaa !37, !noalias !256
  %i.acb = add i64 %i.aca, 1
  call void @_ZdlPvm(ptr noundef %i.abx, i64 noundef %i.acb) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74.i
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #25, !noalias !256
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #25, !noalias !256
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #25, !noalias !256
  br label %common.resume

bb.ep:                                            ; preds = %bb.eh
  store i8 1, ptr %69, align 8, !tbaa !83, !noalias !256
  %i.acc = getelementptr inbounds nuw i8, ptr %69, i64 8
  %i.acd = getelementptr inbounds nuw i8, ptr %69, i64 144 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.acc, i8 0, i64 24, i1 false), !noalias !256
  store i8 4, ptr %i.acd, align 8, !tbaa !45, !noalias !256
  %i.ace = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store i8 -1, ptr %i.ace, align 8, !tbaa !45, !alias.scope !256
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #25, !noalias !256
  store ptr %0, ptr %58, align 8, !tbaa !90, !noalias !256
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Move_ctor_baseILb0EJN9grpc_core14Http2DataFrameENS4_16Http2HeaderFrameENS4_22Http2ContinuationFrameENS4_19Http2RstStreamFrameENS4_18Http2SettingsFrameENS4_14Http2PingFrameENS4_16Http2GoawayFrameENS4_22Http2WindowUpdateFrameENS4_18Http2SecurityFrameENS4_17Http2UnknownFrameENS4_15Http2EmptyFrameEEEC1EOSG_EUlOT_T0_E_JSt7variantIJS5_S6_S7_S8_S9_SA_SB_SC_SD_SE_SF_EEEEDcOSK_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef nonnull align 8 dereferenceable(145) %69)
          to label %_ZN9grpc_core5http218ValueOrHttp2StatusISt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEEEC2ESE_.exit.i124 unwind label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.acf = landingpad { ptr, i32 }
          catch ptr null
  %i.acg = extractvalue { ptr, i32 } %i.acf, 0
  call void @__clang_call_terminate(ptr %i.acg) #28
  unreachable

_ZN9grpc_core5http218ValueOrHttp2StatusISt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEEEC2ESE_.exit.i124: ; preds = %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #25, !noalias !256
  %i.ach = load i8, ptr %i.acd, align 8, !tbaa !45, !noalias !256 ; 2 uses
  store i8 %i.ach, ptr %i.ace, align 8, !tbaa !45, !alias.scope !256
  %i.aci = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 0, ptr %i.aci, align 8, !tbaa !92, !alias.scope !256
  %.not.i.i.i125 = icmp eq i8 %i.ach, -1
  br i1 %.not.i.i.i125, label %_ZN9grpc_core12_GLOBAL__N_118ParseSettingsFrameERKNS_16Http2FrameHeaderERNS_11SliceBufferE.exit, label %bb.er, !prof !15

bb.er:                                            ; preds = %_ZN9grpc_core5http218ValueOrHttp2StatusISt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEEEC2ESE_.exit.i124
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #25, !noalias !256
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core14Http2DataFrameENS3_16Http2HeaderFrameENS3_22Http2ContinuationFrameENS3_19Http2RstStreamFrameENS3_18Http2SettingsFrameENS3_14Http2PingFrameENS3_16Http2GoawayFrameENS3_22Http2WindowUpdateFrameENS3_18Http2SecurityFrameENS3_17Http2UnknownFrameENS3_15Http2EmptyFrameEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_S5_S6_S7_S8_S9_SA_SB_SC_SD_SE_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %57, ptr noundef nonnull align 8 dereferenceable(145) %69)
          to label %.noexc.i.i126 unwind label %bb.es

.noexc.i.i126:                                    ; preds = %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #25, !noalias !256
  br label %_ZN9grpc_core12_GLOBAL__N_118ParseSettingsFrameERKNS_16Http2FrameHeaderERNS_11SliceBufferE.exit

bb.es:                                            ; preds = %bb.er
  %i.acj = landingpad { ptr, i32 }
          catch ptr null
  %i.ack = extractvalue { ptr, i32 } %i.acj, 0
  call void @__clang_call_terminate(ptr %i.ack) #28
  unreachable

bb.et:                                            ; preds = %bb.eg
  %.lhs.trunc = trunc i64 %i.h to i32
  %i.acl = urem i32 %.lhs.trunc, 6
  %.not26.i = icmp eq i32 %i.acl, 0
  br i1 %.not26.i, label %.preheader.i, label %bb.eu, !prof !40

.preheader.i:                                     ; preds = %bb.et
  %.not27154.i = icmp eq i64 %i.h, 0
  br i1 %.not27154.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.acm = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.acn = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %167 = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %168 = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %169 = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  br label %bb.fb

bb.eu:                                            ; preds = %bb.et
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #25, !noalias !256
  store i64 109, ptr %72, align 8, !tbaa !19, !noalias !256
  %.sroa.2.0..sroa_idx.i77.i = getelementptr inbounds nuw i8, ptr %72, i64 8
  store ptr @.str.47, ptr %.sroa.2.0..sroa_idx.i77.i, align 8, !tbaa !21, !noalias !256
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #25, !noalias !256
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #25, !noalias !256
  call void @_ZNK9grpc_core16Http2FrameHeader8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %74, ptr noundef nonnull readonly align 4 dereferenceable(12) %1), !noalias !256
  %i.aco = load ptr, ptr %74, align 8, !tbaa !35, !noalias !256
  %i.acp = getelementptr inbounds nuw i8, ptr %74, i64 8
  %i.acq = load i64, ptr %i.acp, align 8, !tbaa !36, !noalias !256
  store i64 %i.acq, ptr %73, align 8, !noalias !256
  %i.acr = getelementptr inbounds nuw i8, ptr %73, i64 8
  store ptr %i.aco, ptr %i.acr, align 8, !noalias !256
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %71, ptr noundef nonnull align 8 dereferenceable(48) %72, ptr noundef nonnull align 8 dereferenceable(48) %73)
          to label %bb.ev unwind label %bb.ez, !noalias !256

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  store i8 6, ptr %70, align 8, !tbaa !31, !alias.scope !261, !noalias !256
  %i.acs = getelementptr inbounds nuw i8, ptr %70, i64 1
  store i8 1, ptr %i.acs, align 1, !tbaa !32, !alias.scope !261, !noalias !256
  %i.act = getelementptr inbounds nuw i8, ptr %70, i64 4
  store i32 13, ptr %i.act, align 4, !tbaa !33, !alias.scope !261, !noalias !256
  %i.acu = getelementptr inbounds nuw i8, ptr %70, i64 8 ; 4 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %70, i64 24 ; 7 uses
  store ptr %i.acv, ptr %i.acu, align 8, !tbaa !34, !alias.scope !261, !noalias !256
  %i.acw = load ptr, ptr %71, align 8, !tbaa !35, !noalias !262 ; 2 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %71, i64 16 ; 9 uses
  %i.acy = icmp eq ptr %i.acw, %i.acx
  br i1 %i.acy, label %bb.ew, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78.i

bb.ew:                                            ; preds = %bb.ev
  %i.acz = getelementptr inbounds nuw i8, ptr %71, i64 8
  %i.ada = load i64, ptr %i.acz, align 8, !tbaa !36, !noalias !262 ; 3 uses
  %i.adb = icmp ult i64 %i.ada, 16
  call void @llvm.assume(i1 %i.adb)
  %i.adc = add nuw nsw i64 %i.ada, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.acv, ptr noundef nonnull align 8 dereferenceable(1) %i.acx, i64 %i.adc, i1 false), !noalias !256
  br label %bb.ex

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78.i: ; preds = %bb.ev
  store ptr %i.acw, ptr %i.acu, align 8, !tbaa !35, !alias.scope !261, !noalias !256
  %i.add = load i64, ptr %i.acx, align 8, !tbaa !37, !noalias !262
  store i64 %i.add, ptr %i.acv, align 8, !tbaa !37, !alias.scope !261, !noalias !256
  %.phi.trans.insert.i79.i = getelementptr inbounds nuw i8, ptr %71, i64 8
  %.pre.i80.i = load i64, ptr %.phi.trans.insert.i79.i, align 8, !tbaa !36, !noalias !262
  br label %bb.ex

bb.ex:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78.i, %bb.ew
  %i.ade = phi i64 [ %i.ada, %bb.ew ], [ %.pre.i80.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78.i ]
  %i.adf = getelementptr inbounds nuw i8, ptr %71, i64 8
  %i.adg = getelementptr inbounds nuw i8, ptr %70, i64 16
  store i64 %i.ade, ptr %i.adg, align 8, !tbaa !36, !alias.scope !261, !noalias !256
  store ptr %i.acx, ptr %71, align 8, !tbaa !35, !noalias !262
  store i64 0, ptr %i.adf, align 8, !tbaa !36, !noalias !262
  store i8 0, ptr %i.acx, align 8, !tbaa !37, !noalias !262
  invoke void @_ZN9grpc_core5http218ValueOrHttp2StatusISt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEEEC2ENS0_11Http2StatusE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 %70)
          to label %bb.ey unwind label %bb.fa

bb.ey:                                            ; preds = %bb.ex
  %i.adh = load ptr, ptr %i.acu, align 8, !tbaa !35, !noalias !256 ; 2 uses
  %i.adi = icmp eq ptr %i.adh, %i.acv
  br i1 %i.adi, label %_ZN9grpc_core5http211Http2StatusD2Ev.exit84.i128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i82.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i82.i127: ; preds = %bb.ey
  %i.adj = load i64, ptr %i.acv, align 8, !tbaa !37, !noalias !256
  %i.adk = add i64 %i.adj, 1
  call void @_ZdlPvm(ptr noundef %i.adh, i64 noundef %i.adk) #29
  br label %_ZN9grpc_core5http211Http2StatusD2Ev.exit84.i128

_ZN9grpc_core5http211Http2StatusD2Ev.exit84.i128: ; preds = %bb.ey, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i82.i127
  %i.adl = load ptr, ptr %71, align 8, !tbaa !35, !noalias !256 ; 2 uses
  %i.adm = icmp eq ptr %i.adl, %i.acx
  br i1 %i.adm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i129: ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit84.i128
  %i.adn = load i64, ptr %i.acx, align 8, !tbaa !37, !noalias !256
  %i.ado = add i64 %i.adn, 1
  call void @_ZdlPvm(ptr noundef %i.adl, i64 noundef %i.ado) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i130: ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit84.i128, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85.i129
  %i.adp = load ptr, ptr %74, align 8, !tbaa !35, !noalias !256 ; 2 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %74, i64 16 ; 2 uses
  %i.adr = icmp eq ptr %i.adp, %i.adq
  br i1 %i.adr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i130
  %i.ads = load i64, ptr %i.adq, align 8, !tbaa !37, !noalias !256
  %i.adt = add i64 %i.ads, 1
  call void @_ZdlPvm(ptr noundef %i.adp, i64 noundef %i.adt) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87.i130, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88.i
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #25, !noalias !256
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #25, !noalias !256
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #25, !noalias !256
  br label %_ZN9grpc_core12_GLOBAL__N_118ParseSettingsFrameERKNS_16Http2FrameHeaderERNS_11SliceBufferE.exit

bb.ez:                                            ; preds = %bb.eu
  %i.adu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96.i

bb.fa:                                            ; preds = %bb.ex
  %i.adv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.adw = load ptr, ptr %i.acu, align 8, !tbaa !35, !noalias !256 ; 2 uses
  %i.adx = icmp eq ptr %i.adw, %i.acv
  br i1 %i.adx, label %_ZN9grpc_core5http211Http2StatusD2Ev.exit93.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91.i: ; preds = %bb.fa
  %i.ady = load i64, ptr %i.acv, align 8, !tbaa !37, !noalias !256
  %i.adz = add i64 %i.ady, 1
  call void @_ZdlPvm(ptr noundef %i.adw, i64 noundef %i.adz) #29
  br label %_ZN9grpc_core5http211Http2StatusD2Ev.exit93.i

_ZN9grpc_core5http211Http2StatusD2Ev.exit93.i:    ; preds = %bb.fa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91.i
  %i.aea = load ptr, ptr %71, align 8, !tbaa !35, !noalias !256 ; 2 uses
  %i.aeb = icmp eq ptr %i.aea, %i.acx
  br i1 %i.aeb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94.i: ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit93.i
  %i.aec = load i64, ptr %i.acx, align 8, !tbaa !37, !noalias !256
  %i.aed = add i64 %i.aec, 1
  call void @_ZdlPvm(ptr noundef %i.aea, i64 noundef %i.aed) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96.i: ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit93.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94.i, %bb.ez
  %.pn29.pn.i = phi { ptr, i32 } [ %i.adu, %bb.ez ], [ %i.adv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94.i ], [ %i.adv, %_ZN9grpc_core5http211Http2StatusD2Ev.exit93.i ]
  %i.aee = load ptr, ptr %74, align 8, !tbaa !35, !noalias !256 ; 2 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %74, i64 16 ; 2 uses
  %i.aeg = icmp eq ptr %i.aee, %i.aef
  br i1 %i.aeg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96.i
  %i.aeh = load i64, ptr %i.aef, align 8, !tbaa !37, !noalias !256
  %i.aei = add i64 %i.aeh, 1
  call void @_ZdlPvm(ptr noundef %i.aee, i64 noundef %i.aei) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.i
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #25, !noalias !256
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #25, !noalias !256
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #25, !noalias !256
  br label %common.resume

bb.fb:                                            ; preds = %_ZNSt6vectorIN9grpc_core18Http2SettingsFrame7SettingESaIS2_EE9push_backEOS2_.exit.i, %.lr.ph.i
  %.sroa.18.0157.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.18.1.i, %_ZNSt6vectorIN9grpc_core18Http2SettingsFrame7SettingESaIS2_EE9push_backEOS2_.exit.i ] ; 7 uses
  %.sroa.13.0156.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.13.1.i, %_ZNSt6vectorIN9grpc_core18Http2SettingsFrame7SettingESaIS2_EE9push_backEOS2_.exit.i ] ; 4 uses
  %.sroa.5127.0155.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.5127.1.i, %_ZNSt6vectorIN9grpc_core18Http2SettingsFrame7SettingESaIS2_EE9push_backEOS2_.exit.i ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25, !noalias !256
  invoke void @grpc_slice_buffer_move_first_into_buffer(ptr noundef nonnull align 8 dereferenceable(136) %2, i64 noundef 6, ptr noundef nonnull %i.d)
          to label %_ZN9grpc_core11SliceBuffer25MoveFirstNBytesIntoBufferEmPv.exit.i unwind label %bb.fc, !noalias !256

_ZN9grpc_core11SliceBuffer25MoveFirstNBytesIntoBufferEmPv.exit.i: ; preds = %bb.fb
  %.val.i = load i8, ptr %i.d, align 1, !tbaa !37, !noalias !256
  %.val40.i = load i8, ptr %i.acm, align 1, !tbaa !37, !noalias !256
  %i.aej = zext i8 %.val.i to i16
  %i.aek = shl nuw i16 %i.aej, 8
  %i.ael = zext i8 %.val40.i to i16
  %i.aem = or disjoint i16 %i.aek, %i.ael         ; 4 uses
  %170 = load i8, ptr %i.acn, align 1, !tbaa !37, !noalias !256
  %171 = zext i8 %170 to i32
  %172 = shl nuw i32 %171, 24
  %173 = load i8, ptr %167, align 1, !tbaa !37, !noalias !256
  %174 = zext i8 %173 to i32
  %175 = shl nuw nsw i32 %174, 16
  %176 = or disjoint i32 %175, %172
  %177 = load i8, ptr %168, align 1, !tbaa !37, !noalias !256
  %178 = zext i8 %177 to i32
  %179 = shl nuw nsw i32 %178, 8
  %180 = or disjoint i32 %176, %179
  %181 = load i8, ptr %169, align 1, !tbaa !37, !noalias !256
  %182 = zext i8 %181 to i32
  %183 = or disjoint i32 %180, %182               ; 2 uses
  %i.aen = add i16 %i.aem, 506
  %or.cond.i.i = icmp ult i16 %i.aen, 507
  %i.aeo = add i16 %i.aem, -7
  %i.aep = icmp ult i16 %i.aeo, -516
  %i.aeq = or i1 %or.cond.i.i, %i.aep
  br i1 %i.aeq, label %_ZNSt6vectorIN9grpc_core18Http2SettingsFrame7SettingESaIS2_EE9push_backEOS2_.exit.i, label %bb.fd, !prof !15, !llvm.loop !201

bb.fc:                                            ; preds = %bb.fb
  %i.aer = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.fd:                                            ; preds = %_ZN9grpc_core11SliceBuffer25MoveFirstNBytesIntoBufferEmPv.exit.i
  %.not.i.i100.i = icmp eq ptr %.sroa.13.0156.i, %.sroa.18.0157.i
  br i1 %.not.i.i100.i, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %.sroa.6120.0.insert.ext.i = zext i32 %183 to i64
  %.sroa.6120.0.insert.shift.i = shl nuw i64 %.sroa.6120.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i133 = zext i16 %i.aem to i64
  %.sroa.0.0.insert.insert.i134 = or disjoint i64 %.sroa.6120.0.insert.shift.i, %.sroa.0.0.insert.ext.i133
  store i64 %.sroa.0.0.insert.insert.i134, ptr %.sroa.13.0156.i, align 4, !noalias !256
  %i.aes = getelementptr inbounds nuw i8, ptr %.sroa.13.0156.i, i64 8
  br label %_ZNSt6vectorIN9grpc_core18Http2SettingsFrame7SettingESaIS2_EE9push_backEOS2_.exit.i

bb.ff:                                            ; preds = %bb.fd
  %i.aet = ptrtoint ptr %.sroa.18.0157.i to i64
  %i.aeu = ptrtoint ptr %.sroa.5127.0155.i to i64
  %i.aev = sub i64 %i.aet, %i.aeu                 ; 4 uses
  %i.aew = icmp eq i64 %i.aev, 9223372036854775800
  br i1 %i.aew, label %bb.fg, label %_ZNKSt6vectorIN9grpc_core18Http2SettingsFrame7SettingESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.fg:                                            ; preds = %bb.ff
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #30
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !256

.noexc.i:                                         ; preds = %bb.fg
  unreachable

_ZNKSt6vectorIN9grpc_core18Http2SettingsFrame7SettingESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.ff
  %i.aex = ashr exact i64 %i.aev, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aex, i64 1)
  %i.aey = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.aex ; 2 uses
  %i.aez = icmp ult i64 %i.aey, %i.aex
  %i.afa = call i64 @llvm.umin.i64(i64 %i.aey, i64 1152921504606846975)
  %i.afb = select i1 %i.aez, i64 1152921504606846975, i64 %i.afa ; 3 uses
  %.not.i.i.i.i101.i = icmp ne i64 %i.afb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i101.i)
  %i.afc = shl nuw nsw i64 %i.afb, 3
  %i.afd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.afc) #31
          to label %.noexc102.i unwind label %.loopexit.i, !noalias !256 ; 5 uses

.noexc102.i:                                      ; preds = %_ZNKSt6vectorIN9grpc_core18Http2SettingsFrame7SettingESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 %i.aev
  %.sroa.6120.0.insert.ext122.i = zext i32 %183 to i64
  %.sroa.6120.0.insert.shift123.i = shl nuw i64 %.sroa.6120.0.insert.ext122.i, 32
  %.sroa.0.0.insert.ext112.i = zext i16 %i.aem to i64
  %.sroa.0.0.insert.insert114.i = or disjoint i64 %.sroa.6120.0.insert.shift123.i, %.sroa.0.0.insert.ext112.i
  store i64 %.sroa.0.0.insert.insert114.i, ptr %i.afe, align 4, !noalias !256
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %.sroa.5127.0155.i, %.sroa.18.0157.i
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN9grpc_core18Http2SettingsFrame7SettingESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc102.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.afh, %.lr.ph.i.i.i.i.i.i.i ], [ %i.afd, %.noexc102.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.afg, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.5127.0155.i, %.noexc102.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  call void @llvm.experimental.noalias.scope.decl(metadata !265)
  %i.aff = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !265, !noalias !266
  store i64 %i.aff, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !264, !noalias !267
  %i.afg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.afg, %.sroa.18.0157.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN9grpc_core18Http2SettingsFrame7SettingESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !205

_ZNSt6vectorIN9grpc_core18Http2SettingsFrame7SettingESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc102.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.afd, %.noexc102.i ], [ %i.afh, %.lr.ph.i.i.i.i.i.i.i ]
  %i.afi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %.sroa.5127.0155.i, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN9grpc_core18Http2SettingsFrame7SettingESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.fh

bb.fh:                                            ; preds = %_ZNSt6vectorIN9grpc_core18Http2SettingsFrame7SettingESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.5127.0155.i, i64 noundef %i.aev) #29, !noalias !256
  br label %_ZNSt6vectorIN9grpc_core18Http2SettingsFrame7SettingESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN9grpc_core18Http2SettingsFrame7SettingESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.fh, %_ZNSt6vectorIN9grpc_core18Http2SettingsFrame7SettingESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  %i.afj = getelementptr inbounds nuw [8 x i8], ptr %i.afd, i64 %i.afb
  br label %_ZNSt6vectorIN9grpc_core18Http2SettingsFrame7SettingESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorIN9grpc_core18Http2SettingsFrame7SettingESaIS2_EE9push_backEOS2_.exit.i: ; preds = %_ZNSt6vectorIN9grpc_core18Http2SettingsFrame7SettingESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, %bb.fe, %_ZN9grpc_core11SliceBuffer25MoveFirstNBytesIntoBufferEmPv.exit.i
  %.sroa.5127.1.i = phi ptr [ %.sroa.5127.0155.i, %_ZN9grpc_core11SliceBuffer25MoveFirstNBytesIntoBufferEmPv.exit.i ], [ %i.afd, %_ZNSt6vectorIN9grpc_core18Http2SettingsFrame7SettingESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %.sroa.5127.0155.i, %bb.fe ] ; 2 uses
  %.sroa.13.1.i = phi ptr [ %.sroa.13.0156.i, %_ZN9grpc_core11SliceBuffer25MoveFirstNBytesIntoBufferEmPv.exit.i ], [ %i.afi, %_ZNSt6vectorIN9grpc_core18Http2SettingsFrame7SettingESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.aes, %bb.fe ] ; 2 uses
  %.sroa.18.1.i = phi ptr [ %.sroa.18.0157.i, %_ZN9grpc_core11SliceBuffer25MoveFirstNBytesIntoBufferEmPv.exit.i ], [ %i.afj, %_ZNSt6vectorIN9grpc_core18Http2SettingsFrame7SettingESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %.sroa.18.0157.i, %bb.fe ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25, !noalias !256
  %.pr.i = load i64, ptr %i.g, align 8, !tbaa !64, !noalias !256
  %.not27.i = icmp eq i64 %.pr.i, 0
  br i1 %.not27.i, label %._crit_edge.i, label %bb.fb

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIN9grpc_core18Http2SettingsFrame7SettingESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

.loopexit.split-lp.i:                             ; preds = %bb.fg
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.fi:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.fc
  %.pn.i = phi { ptr, i32 } [ %i.aer, %bb.fc ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25, !noalias !256
  %.not.i.i.i.i103.i = icmp eq ptr %.sroa.5127.0155.i, null
  br i1 %.not.i.i.i.i103.i, label %common.resume, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.afk = ptrtoint ptr %.sroa.18.0157.i to i64
  %i.afl = ptrtoint ptr %.sroa.5127.0155.i to i64
  %i.afm = sub i64 %i.afk, %i.afl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.5127.0155.i, i64 noundef %i.afm) #29, !noalias !256
  br label %common.resume

._crit_edge.i:                                    ; preds = %_ZNSt6vectorIN9grpc_core18Http2SettingsFrame7SettingESaIS2_EE9push_backEOS2_.exit.i, %.preheader.i
  %.sroa.5127.0.lcssa.i = phi ptr [ null, %.preheader.i ], [ %.sroa.5127.1.i, %_ZNSt6vectorIN9grpc_core18Http2SettingsFrame7SettingESaIS2_EE9push_backEOS2_.exit.i ]
  %.sroa.13.0.lcssa.i = phi ptr [ null, %.preheader.i ], [ %.sroa.13.1.i, %_ZNSt6vectorIN9grpc_core18Http2SettingsFrame7SettingESaIS2_EE9push_backEOS2_.exit.i ]
  %.sroa.18.0.lcssa.i = phi ptr [ null, %.preheader.i ], [ %.sroa.18.1.i, %_ZNSt6vectorIN9grpc_core18Http2SettingsFrame7SettingESaIS2_EE9push_backEOS2_.exit.i ]
  store i8 0, ptr %75, align 8, !tbaa !83, !noalias !256
  %i.afn = getelementptr inbounds nuw i8, ptr %75, i64 8
  store ptr %.sroa.5127.0.lcssa.i, ptr %i.afn, align 8, !tbaa !52, !noalias !256
  %i.afo = getelementptr inbounds nuw i8, ptr %75, i64 16
  store ptr %.sroa.13.0.lcssa.i, ptr %i.afo, align 8, !tbaa !53, !noalias !256
  %i.afp = getelementptr inbounds nuw i8, ptr %75, i64 24
  store ptr %.sroa.18.0.lcssa.i, ptr %i.afp, align 8, !tbaa !93, !noalias !256
  %i.afq = getelementptr inbounds nuw i8, ptr %75, i64 144 ; 2 uses
  store i8 4, ptr %i.afq, align 8, !tbaa !45, !noalias !256
  %i.afr = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store i8 -1, ptr %i.afr, align 8, !tbaa !45, !alias.scope !256
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #25, !noalias !256
  store ptr %0, ptr %56, align 8, !tbaa !90, !noalias !256
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Move_ctor_baseILb0EJN9grpc_core14Http2DataFrameENS4_16Http2HeaderFrameENS4_22Http2ContinuationFrameENS4_19Http2RstStreamFrameENS4_18Http2SettingsFrameENS4_14Http2PingFrameENS4_16Http2GoawayFrameENS4_22Http2WindowUpdateFrameENS4_18Http2SecurityFrameENS4_17Http2UnknownFrameENS4_15Http2EmptyFrameEEEC1EOSG_EUlOT_T0_E_JSt7variantIJS5_S6_S7_S8_S9_SA_SB_SC_SD_SE_SF_EEEEDcOSK_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef nonnull align 8 dereferenceable(145) %75)
          to label %_ZN9grpc_core5http218ValueOrHttp2StatusISt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEEEC2ESE_.exit105.i unwind label %bb.fk

bb.fk:                                            ; preds = %._crit_edge.i
  %i.afs = landingpad { ptr, i32 }
          catch ptr null
  %i.aft = extractvalue { ptr, i32 } %i.afs, 0
  call void @__clang_call_terminate(ptr %i.aft) #28
  unreachable

_ZN9grpc_core5http218ValueOrHttp2StatusISt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEEEC2ESE_.exit105.i: ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #25, !noalias !256
  %i.afu = load i8, ptr %i.afq, align 8, !tbaa !45, !noalias !256 ; 2 uses
  store i8 %i.afu, ptr %i.afr, align 8, !tbaa !45, !alias.scope !256
  %i.afv = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 0, ptr %i.afv, align 8, !tbaa !92, !alias.scope !256
  %.not.i.i106.i = icmp eq i8 %i.afu, -1
  br i1 %.not.i.i106.i, label %_ZN9grpc_core12_GLOBAL__N_118ParseSettingsFrameERKNS_16Http2FrameHeaderERNS_11SliceBufferE.exit, label %bb.fl, !prof !15

bb.fl:                                            ; preds = %_ZN9grpc_core5http218ValueOrHttp2StatusISt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEEEC2ESE_.exit105.i
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #25, !noalias !256
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core14Http2DataFrameENS3_16Http2HeaderFrameENS3_22Http2ContinuationFrameENS3_19Http2RstStreamFrameENS3_18Http2SettingsFrameENS3_14Http2PingFrameENS3_16Http2GoawayFrameENS3_22Http2WindowUpdateFrameENS3_18Http2SecurityFrameENS3_17Http2UnknownFrameENS3_15Http2EmptyFrameEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_S5_S6_S7_S8_S9_SA_SB_SC_SD_SE_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %55, ptr noundef nonnull align 8 dereferenceable(145) %75)
          to label %.noexc.i107.i unwind label %bb.fm

.noexc.i107.i:                                    ; preds = %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #25, !noalias !256
  br label %_ZN9grpc_core12_GLOBAL__N_118ParseSettingsFrameERKNS_16Http2FrameHeaderERNS_11SliceBufferE.exit

bb.fm:                                            ; preds = %bb.fl
  %i.afw = landingpad { ptr, i32 }
          catch ptr null
  %i.afx = extractvalue { ptr, i32 } %i.afw, 0
  call void @__clang_call_terminate(ptr %i.afx) #28
  unreachable

_ZN9grpc_core12_GLOBAL__N_118ParseSettingsFrameERKNS_16Http2FrameHeaderERNS_11SliceBufferE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i, %_ZN9grpc_core5http218ValueOrHttp2StatusISt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEEEC2ESE_.exit.i124, %.noexc.i.i126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.i, %_ZN9grpc_core5http218ValueOrHttp2StatusISt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEEEC2ESE_.exit105.i, %.noexc.i107.i
  call void @llvm.lifetime.end.p0(ptr nonnull %59)
  call void @llvm.lifetime.end.p0(ptr nonnull %60)
  call void @llvm.lifetime.end.p0(ptr nonnull %64)
  call void @llvm.lifetime.end.p0(ptr nonnull %65)
  call void @llvm.lifetime.end.p0(ptr nonnull %69)
  call void @llvm.lifetime.end.p0(ptr nonnull %70)
  call void @llvm.lifetime.end.p0(ptr nonnull %71)
  call void @llvm.lifetime.end.p0(ptr nonnull %75)
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core14Http2DataFrameENS2_16Http2HeaderFrameENS2_22Http2ContinuationFrameENS2_19Http2RstStreamFrameENS2_18Http2SettingsFrameENS2_14Http2PingFrameENS2_16Http2GoawayFrameENS2_22Http2WindowUpdateFrameENS2_18Http2SecurityFrameENS2_17Http2UnknownFrameENS2_15Http2EmptyFrameEEED2Ev.exit

bb.fn:                                            ; preds = %.critedge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  call void @llvm.lifetime.start.p0(ptr nonnull %44)
  call void @llvm.lifetime.start.p0(ptr nonnull %45)
  call void @llvm.lifetime.start.p0(ptr nonnull %49)
  call void @llvm.lifetime.start.p0(ptr nonnull %50)
  call void @llvm.lifetime.start.p0(ptr nonnull %54)
  %.not.i135 = icmp eq i64 %i.h, 8
  br i1 %.not.i135, label %bb.fv, label %bb.fo, !prof !40

bb.fo:                                            ; preds = %bb.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #25, !noalias !268
  store i64 109, ptr %46, align 8, !tbaa !19, !noalias !268
  %.sroa.2.0..sroa_idx.i.i136 = getelementptr inbounds nuw i8, ptr %46, i64 8
  store ptr @.str.49, ptr %.sroa.2.0..sroa_idx.i.i136, align 8, !tbaa !21, !noalias !268
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #25, !noalias !268
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #25, !noalias !268
  call void @_ZNK9grpc_core16Http2FrameHeader8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %48, ptr noundef nonnull readonly align 4 dereferenceable(12) %1), !noalias !268
  %i.afy = load ptr, ptr %48, align 8, !tbaa !35, !noalias !268
  %i.afz = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.aga = load i64, ptr %i.afz, align 8, !tbaa !36, !noalias !268
  store i64 %i.aga, ptr %47, align 8, !noalias !268
  %i.agb = getelementptr inbounds nuw i8, ptr %47, i64 8
  store ptr %i.afy, ptr %i.agb, align 8, !noalias !268
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %45, ptr noundef nonnull align 8 dereferenceable(48) %46, ptr noundef nonnull align 8 dereferenceable(48) %47)
          to label %bb.fp unwind label %bb.ft, !noalias !268

bb.fp:                                            ; preds = %bb.fo
  call void @llvm.experimental.noalias.scope.decl(metadata !269)
  store i8 6, ptr %44, align 8, !tbaa !31, !alias.scope !269, !noalias !268
  %i.agc = getelementptr inbounds nuw i8, ptr %44, i64 1
  store i8 1, ptr %i.agc, align 1, !tbaa !32, !alias.scope !269, !noalias !268
  %i.agd = getelementptr inbounds nuw i8, ptr %44, i64 4
  store i32 13, ptr %i.agd, align 4, !tbaa !33, !alias.scope !269, !noalias !268
  %i.age = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 4 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %44, i64 24 ; 7 uses
  store ptr %i.agf, ptr %i.age, align 8, !tbaa !34, !alias.scope !269, !noalias !268
  %i.agg = load ptr, ptr %45, align 8, !tbaa !35, !noalias !270 ; 2 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 9 uses
  %i.agi = icmp eq ptr %i.agg, %i.agh
  br i1 %i.agi, label %bb.fq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i137

bb.fq:                                            ; preds = %bb.fp
  %i.agj = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.agk = load i64, ptr %i.agj, align 8, !tbaa !36, !noalias !270 ; 3 uses
  %i.agl = icmp ult i64 %i.agk, 16
  call void @llvm.assume(i1 %i.agl)
  %i.agm = add nuw nsw i64 %i.agk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.agf, ptr noundef nonnull align 8 dereferenceable(1) %i.agh, i64 %i.agm, i1 false), !noalias !268
  br label %bb.fr

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i137: ; preds = %bb.fp
  store ptr %i.agg, ptr %i.age, align 8, !tbaa !35, !alias.scope !269, !noalias !268
  %i.agn = load i64, ptr %i.agh, align 8, !tbaa !37, !noalias !270
  store i64 %i.agn, ptr %i.agf, align 8, !tbaa !37, !alias.scope !269, !noalias !268
  %.phi.trans.insert.i.i138 = getelementptr inbounds nuw i8, ptr %45, i64 8
  %.pre.i.i139 = load i64, ptr %.phi.trans.insert.i.i138, align 8, !tbaa !36, !noalias !270
  br label %bb.fr

bb.fr:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i137, %bb.fq
  %i.ago = phi i64 [ %i.agk, %bb.fq ], [ %.pre.i.i139, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i137 ]
  %i.agp = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.agq = getelementptr inbounds nuw i8, ptr %44, i64 16
  store i64 %i.ago, ptr %i.agq, align 8, !tbaa !36, !alias.scope !269, !noalias !268
  store ptr %i.agh, ptr %45, align 8, !tbaa !35, !noalias !270
  store i64 0, ptr %i.agp, align 8, !tbaa !36, !noalias !270
  store i8 0, ptr %i.agh, align 8, !tbaa !37, !noalias !270
  invoke void @_ZN9grpc_core5http218ValueOrHttp2StatusISt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEEEC2ENS0_11Http2StatusE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 %44)
          to label %bb.fs unwind label %bb.fu

bb.fs:                                            ; preds = %bb.fr
  %i.agr = load ptr, ptr %i.age, align 8, !tbaa !35, !noalias !268 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN9grpc_core17ParseFramePayloadERKNS_16Http2FrameHeaderEONS_11SliceBufferE:bb.a
  %i.ahg = load ptr, ptr %i.age, align 8, !tbaa !35, !noalias !268 ; 2 uses
  %i.ahh = icmp eq ptr %i.ahg, %i.agf
  br i1 %i.ahh, label %_ZN9grpc_core5http211Http2StatusD2Ev.exit28.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26.i140: ; preds = %bb.fu
  %i.ahi = load i64, ptr %i.agf, align 8, !tbaa !37, !noalias !268
  %i.ahj = add i64 %i.ahi, 1
  call void @_ZdlPvm(ptr noundef %i.ahg, i64 noundef %i.ahj) #29
  br label %_ZN9grpc_core5http211Http2StatusD2Ev.exit28.i

_ZN9grpc_core5http211Http2StatusD2Ev.exit28.i:    ; preds = %bb.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i26.i140
  %i.ahk = load ptr, ptr %45, align 8, !tbaa !35, !noalias !268 ; 2 uses
  %i.ahl = icmp eq ptr %i.ahk, %i.agh
  br i1 %i.ahl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit28.i
  %i.ahm = load i64, ptr %i.agh, align 8, !tbaa !37, !noalias !268
  %i.ahn = add i64 %i.ahm, 1
  call void @_ZdlPvm(ptr noundef %i.ahk, i64 noundef %i.ahn) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i: ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit28.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i, %bb.ft
  %.pn18.pn.i = phi { ptr, i32 } [ %i.ahe, %bb.ft ], [ %i.ahf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i ], [ %i.ahf, %_ZN9grpc_core5http211Http2StatusD2Ev.exit28.i ]
  %i.aho = load ptr, ptr %48, align 8, !tbaa !35, !noalias !268 ; 2 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 2 uses
  %i.ahq = icmp eq ptr %i.aho, %i.ahp
  br i1 %i.ahq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i
  %i.ahr = load i64, ptr %i.ahp, align 8, !tbaa !37, !noalias !268
  %i.ahs = add i64 %i.ahr, 1
  call void @_ZdlPvm(ptr noundef %i.aho, i64 noundef %i.ahs) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #25, !noalias !268
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #25, !noalias !268
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #25, !noalias !268
  br label %common.resume

bb.fv:                                            ; preds = %bb.fn
  %i.aht = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ahu = load i32, ptr %i.aht, align 4, !tbaa !43, !noalias !268
  %.not15.i = icmp eq i32 %i.ahu, 0
  br i1 %.not15.i, label %bb.gd, label %bb.fw, !prof !40

bb.fw:                                            ; preds = %bb.fv
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #25, !noalias !268
  store i64 141, ptr %51, align 8, !tbaa !19, !noalias !268
  %.sroa.2.0..sroa_idx.i35.i = getelementptr inbounds nuw i8, ptr %51, i64 8
  store ptr @.str.50, ptr %.sroa.2.0..sroa_idx.i35.i, align 8, !tbaa !21, !noalias !268
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #25, !noalias !268
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #25, !noalias !268
  call void @_ZNK9grpc_core16Http2FrameHeader8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %53, ptr noundef nonnull readonly align 4 dereferenceable(12) %1), !noalias !268
  %i.ahv = load ptr, ptr %53, align 8, !tbaa !35, !noalias !268
  %i.ahw = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.ahx = load i64, ptr %i.ahw, align 8, !tbaa !36, !noalias !268
  store i64 %i.ahx, ptr %52, align 8, !noalias !268
  %i.ahy = getelementptr inbounds nuw i8, ptr %52, i64 8
  store ptr %i.ahv, ptr %i.ahy, align 8, !noalias !268
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %50, ptr noundef nonnull align 8 dereferenceable(48) %51, ptr noundef nonnull align 8 dereferenceable(48) %52)
          to label %bb.fx unwind label %bb.gb, !noalias !268

bb.fx:                                            ; preds = %bb.fw
  call void @llvm.experimental.noalias.scope.decl(metadata !271)
  store i8 1, ptr %49, align 8, !tbaa !31, !alias.scope !271, !noalias !268
  %i.ahz = getelementptr inbounds nuw i8, ptr %49, i64 1
  store i8 1, ptr %i.ahz, align 1, !tbaa !32, !alias.scope !271, !noalias !268
  %i.aia = getelementptr inbounds nuw i8, ptr %49, i64 4
  store i32 13, ptr %i.aia, align 4, !tbaa !33, !alias.scope !271, !noalias !268
  %i.aib = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 4 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %49, i64 24 ; 7 uses
  store ptr %i.aic, ptr %i.aib, align 8, !tbaa !34, !alias.scope !271, !noalias !268
  %i.aid = load ptr, ptr %50, align 8, !tbaa !35, !noalias !272 ; 2 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 9 uses
  %i.aif = icmp eq ptr %i.aid, %i.aie
  br i1 %i.aif, label %bb.fy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36.i

bb.fy:                                            ; preds = %bb.fx
  %i.aig = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.aih = load i64, ptr %i.aig, align 8, !tbaa !36, !noalias !272 ; 3 uses
  %i.aii = icmp ult i64 %i.aih, 16
  call void @llvm.assume(i1 %i.aii)
  %i.aij = add nuw nsw i64 %i.aih, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aic, ptr noundef nonnull align 8 dereferenceable(1) %i.aie, i64 %i.aij, i1 false), !noalias !268
  br label %bb.fz

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36.i: ; preds = %bb.fx
  store ptr %i.aid, ptr %i.aib, align 8, !tbaa !35, !alias.scope !271, !noalias !268
  %i.aik = load i64, ptr %i.aie, align 8, !tbaa !37, !noalias !272
  store i64 %i.aik, ptr %i.aic, align 8, !tbaa !37, !alias.scope !271, !noalias !268
  %.phi.trans.insert.i37.i = getelementptr inbounds nuw i8, ptr %50, i64 8
  %.pre.i38.i = load i64, ptr %.phi.trans.insert.i37.i, align 8, !tbaa !36, !noalias !272
  br label %bb.fz

bb.fz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36.i, %bb.fy
  %i.ail = phi i64 [ %i.aih, %bb.fy ], [ %.pre.i38.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36.i ]
  %i.aim = getelementptr inbounds nuw i8, ptr %50, i64 8
  %i.ain = getelementptr inbounds nuw i8, ptr %49, i64 16
  store i64 %i.ail, ptr %i.ain, align 8, !tbaa !36, !alias.scope !271, !noalias !268
  store ptr %i.aie, ptr %50, align 8, !tbaa !35, !noalias !272
  store i64 0, ptr %i.aim, align 8, !tbaa !36, !noalias !272
  store i8 0, ptr %i.aie, align 8, !tbaa !37, !noalias !272
  invoke void @_ZN9grpc_core5http218ValueOrHttp2StatusISt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEEEC2ENS0_11Http2StatusE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 %49)
          to label %bb.ga unwind label %bb.gc

bb.ga:                                            ; preds = %bb.fz
  %i.aio = load ptr, ptr %i.aib, align 8, !tbaa !35, !noalias !268 ; 2 uses
  %i.aip = icmp eq ptr %i.aio, %i.aic
  br i1 %i.aip, label %_ZN9grpc_core5http211Http2StatusD2Ev.exit42.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40.i147: ; preds = %bb.ga
  %i.aiq = load i64, ptr %i.aic, align 8, !tbaa !37, !noalias !268
  %i.air = add i64 %i.aiq, 1
  call void @_ZdlPvm(ptr noundef %i.aio, i64 noundef %i.air) #29
  br label %_ZN9grpc_core5http211Http2StatusD2Ev.exit42.i

_ZN9grpc_core5http211Http2StatusD2Ev.exit42.i:    ; preds = %bb.ga, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40.i147
  %i.ais = load ptr, ptr %50, align 8, !tbaa !35, !noalias !268 ; 2 uses
  %i.ait = icmp eq ptr %i.ais, %i.aie
  br i1 %i.ait, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i: ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit42.i
  %i.aiu = load i64, ptr %i.aie, align 8, !tbaa !37, !noalias !268
  %i.aiv = add i64 %i.aiu, 1
  call void @_ZdlPvm(ptr noundef %i.ais, i64 noundef %i.aiv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i: ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit42.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i
  %i.aiw = load ptr, ptr %53, align 8, !tbaa !35, !noalias !268 ; 2 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 2 uses
  %i.aiy = icmp eq ptr %i.aiw, %i.aix
  br i1 %i.aiy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i148: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i
  %i.aiz = load i64, ptr %i.aix, align 8, !tbaa !37, !noalias !268
  %i.aja = add i64 %i.aiz, 1
  call void @_ZdlPvm(ptr noundef %i.aiw, i64 noundef %i.aja) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i149: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #25, !noalias !268
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #25, !noalias !268
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #25, !noalias !268
  br label %_ZN9grpc_core12_GLOBAL__N_114ParsePingFrameERKNS_16Http2FrameHeaderERNS_11SliceBufferE.exit

bb.gb:                                            ; preds = %bb.fw
  %i.ajb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i

bb.gc:                                            ; preds = %bb.fz
  %i.ajc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ajd = load ptr, ptr %i.aib, align 8, !tbaa !35, !noalias !268 ; 2 uses
  %i.aje = icmp eq ptr %i.ajd, %i.aic
  br i1 %i.aje, label %_ZN9grpc_core5http211Http2StatusD2Ev.exit51.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49.i: ; preds = %bb.gc
  %i.ajf = load i64, ptr %i.aic, align 8, !tbaa !37, !noalias !268
  %i.ajg = add i64 %i.ajf, 1
  call void @_ZdlPvm(ptr noundef %i.ajd, i64 noundef %i.ajg) #29
  br label %_ZN9grpc_core5http211Http2StatusD2Ev.exit51.i

_ZN9grpc_core5http211Http2StatusD2Ev.exit51.i:    ; preds = %bb.gc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49.i
  %i.ajh = load ptr, ptr %50, align 8, !tbaa !35, !noalias !268 ; 2 uses
  %i.aji = icmp eq ptr %i.ajh, %i.aie
  br i1 %i.aji, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i: ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit51.i
  %i.ajj = load i64, ptr %i.aie, align 8, !tbaa !37, !noalias !268
  %i.ajk = add i64 %i.ajj, 1
  call void @_ZdlPvm(ptr noundef %i.ajh, i64 noundef %i.ajk) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i: ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit51.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i, %bb.gb
  %.pn.pn.i146 = phi { ptr, i32 } [ %i.ajb, %bb.gb ], [ %i.ajc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i ], [ %i.ajc, %_ZN9grpc_core5http211Http2StatusD2Ev.exit51.i ]
  %i.ajl = load ptr, ptr %53, align 8, !tbaa !35, !noalias !268 ; 2 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 2 uses
  %i.ajn = icmp eq ptr %i.ajl, %i.ajm
  br i1 %i.ajn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i
  %i.ajo = load i64, ptr %i.ajm, align 8, !tbaa !37, !noalias !268
  %i.ajp = add i64 %i.ajo, 1
  call void @_ZdlPvm(ptr noundef %i.ajl, i64 noundef %i.ajp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55.i
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #25, !noalias !268
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #25, !noalias !268
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #25, !noalias !268
  br label %common.resume

bb.gd:                                            ; preds = %bb.fv
  %i.ajq = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.ajr = load i8, ptr %i.ajq, align 1, !tbaa !42, !noalias !268
  %i.ajs = and i8 %i.ajr, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25, !noalias !268
  call void @_Z40grpc_slice_buffer_copy_first_into_bufferPK17grpc_slice_buffermPv(ptr noundef nonnull align 8 dereferenceable(136) %2, i64 noundef 8, ptr noundef nonnull %i.c), !noalias !268
  %184 = load i8, ptr %i.c, align 1, !tbaa !37, !noalias !268
  %185 = zext i8 %184 to i64
  %186 = shl nuw i64 %185, 56
  %187 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %188 = load i8, ptr %187, align 1, !tbaa !37, !noalias !268
  %189 = zext i8 %188 to i64
  %190 = shl nuw nsw i64 %189, 48
  %191 = or disjoint i64 %190, %186
  %192 = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %193 = load i8, ptr %192, align 1, !tbaa !37, !noalias !268
  %194 = zext i8 %193 to i64
  %195 = shl nuw nsw i64 %194, 40
  %196 = or disjoint i64 %191, %195
  %197 = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %198 = load i8, ptr %197, align 1, !tbaa !37, !noalias !268
  %199 = zext i8 %198 to i64
  %200 = shl nuw nsw i64 %199, 32
  %201 = or disjoint i64 %196, %200
  %202 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %203 = load i8, ptr %202, align 1, !tbaa !37, !noalias !268
  %204 = zext i8 %203 to i64
  %205 = shl nuw nsw i64 %204, 24
  %206 = or disjoint i64 %201, %205
  %207 = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %208 = load i8, ptr %207, align 1, !tbaa !37, !noalias !268
  %209 = zext i8 %208 to i64
  %210 = shl nuw nsw i64 %209, 16
  %211 = or disjoint i64 %206, %210
  %212 = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %213 = load i8, ptr %212, align 1, !tbaa !37, !noalias !268
  %214 = zext i8 %213 to i64
  %215 = shl nuw nsw i64 %214, 8
  %216 = or i64 %211, %215
  %217 = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %218 = load i8, ptr %217, align 1, !tbaa !37, !noalias !268
  %219 = zext i8 %218 to i64
  %220 = or i64 %216, %219
  store i8 %i.ajs, ptr %54, align 8, !tbaa !94, !noalias !268
  %.sroa.458.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %54, i64 8
  store i64 %220, ptr %.sroa.458.0..sroa_idx.i, align 8, !tbaa !19, !noalias !268
  %i.ajt = getelementptr inbounds nuw i8, ptr %54, i64 144 ; 2 uses
  store i8 5, ptr %i.ajt, align 8, !tbaa !45, !noalias !268
  %i.aju = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store i8 -1, ptr %i.aju, align 8, !tbaa !45, !alias.scope !268
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #25, !noalias !268
  store ptr %0, ptr %43, align 8, !tbaa !90, !noalias !268
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Move_ctor_baseILb0EJN9grpc_core14Http2DataFrameENS4_16Http2HeaderFrameENS4_22Http2ContinuationFrameENS4_19Http2RstStreamFrameENS4_18Http2SettingsFrameENS4_14Http2PingFrameENS4_16Http2GoawayFrameENS4_22Http2WindowUpdateFrameENS4_18Http2SecurityFrameENS4_17Http2UnknownFrameENS4_15Http2EmptyFrameEEEC1EOSG_EUlOT_T0_E_JSt7variantIJS5_S6_S7_S8_S9_SA_SB_SC_SD_SE_SF_EEEEDcOSK_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef nonnull align 8 dereferenceable(145) %54)
          to label %_ZN9grpc_core5http218ValueOrHttp2StatusISt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEEEC2ESE_.exit.i151 unwind label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.ajv = landingpad { ptr, i32 }
          catch ptr null
  %i.ajw = extractvalue { ptr, i32 } %i.ajv, 0
  call void @__clang_call_terminate(ptr %i.ajw) #28
  unreachable

_ZN9grpc_core5http218ValueOrHttp2StatusISt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEEEC2ESE_.exit.i151: ; preds = %bb.gd
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #25, !noalias !268
  %i.ajx = load i8, ptr %i.ajt, align 8, !tbaa !45, !noalias !268 ; 2 uses
  store i8 %i.ajx, ptr %i.aju, align 8, !tbaa !45, !alias.scope !268
  %i.ajy = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 0, ptr %i.ajy, align 8, !tbaa !92, !alias.scope !268
  %.not.i.i.i152 = icmp eq i8 %i.ajx, -1
  br i1 %.not.i.i.i152, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core14Http2DataFrameENS2_16Http2HeaderFrameENS2_22Http2ContinuationFrameENS2_19Http2RstStreamFrameENS2_18Http2SettingsFrameENS2_14Http2PingFrameENS2_16Http2GoawayFrameENS2_22Http2WindowUpdateFrameENS2_18Http2SecurityFrameENS2_17Http2UnknownFrameENS2_15Http2EmptyFrameEEED2Ev.exit.i154, label %bb.gf, !prof !15

bb.gf:                                            ; preds = %_ZN9grpc_core5http218ValueOrHttp2StatusISt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEEEC2ESE_.exit.i151
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #25, !noalias !268
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core14Http2DataFrameENS3_16Http2HeaderFrameENS3_22Http2ContinuationFrameENS3_19Http2RstStreamFrameENS3_18Http2SettingsFrameENS3_14Http2PingFrameENS3_16Http2GoawayFrameENS3_22Http2WindowUpdateFrameENS3_18Http2SecurityFrameENS3_17Http2UnknownFrameENS3_15Http2EmptyFrameEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_S5_S6_S7_S8_S9_SA_SB_SC_SD_SE_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %42, ptr noundef nonnull align 8 dereferenceable(145) %54)
          to label %.noexc.i.i153 unwind label %bb.gg

.noexc.i.i153:                                    ; preds = %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #25, !noalias !268
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core14Http2DataFrameENS2_16Http2HeaderFrameENS2_22Http2ContinuationFrameENS2_19Http2RstStreamFrameENS2_18Http2SettingsFrameENS2_14Http2PingFrameENS2_16Http2GoawayFrameENS2_22Http2WindowUpdateFrameENS2_18Http2SecurityFrameENS2_17Http2UnknownFrameENS2_15Http2EmptyFrameEEED2Ev.exit.i154

bb.gg:                                            ; preds = %bb.gf
  %i.ajz = landingpad { ptr, i32 }
          catch ptr null
  %i.aka = extractvalue { ptr, i32 } %i.ajz, 0
  call void @__clang_call_terminate(ptr %i.aka) #28
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core14Http2DataFrameENS2_16Http2HeaderFrameENS2_22Http2ContinuationFrameENS2_19Http2RstStreamFrameENS2_18Http2SettingsFrameENS2_14Http2PingFrameENS2_16Http2GoawayFrameENS2_22Http2WindowUpdateFrameENS2_18Http2SecurityFrameENS2_17Http2UnknownFrameENS2_15Http2EmptyFrameEEED2Ev.exit.i154: ; preds = %.noexc.i.i153, %_ZN9grpc_core5http218ValueOrHttp2StatusISt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEEEC2ESE_.exit.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25, !noalias !268
  br label %_ZN9grpc_core12_GLOBAL__N_114ParsePingFrameERKNS_16Http2FrameHeaderERNS_11SliceBufferE.exit

_ZN9grpc_core12_GLOBAL__N_114ParsePingFrameERKNS_16Http2FrameHeaderERNS_11SliceBufferE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.i149, %_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core14Http2DataFrameENS2_16Http2HeaderFrameENS2_22Http2ContinuationFrameENS2_19Http2RstStreamFrameENS2_18Http2SettingsFrameENS2_14Http2PingFrameENS2_16Http2GoawayFrameENS2_22Http2WindowUpdateFrameENS2_18Http2SecurityFrameENS2_17Http2UnknownFrameENS2_15Http2EmptyFrameEEED2Ev.exit.i154
  call void @llvm.lifetime.end.p0(ptr nonnull %44)
  call void @llvm.lifetime.end.p0(ptr nonnull %45)
  call void @llvm.lifetime.end.p0(ptr nonnull %49)
  call void @llvm.lifetime.end.p0(ptr nonnull %50)
  call void @llvm.lifetime.end.p0(ptr nonnull %54)
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core14Http2DataFrameENS2_16Http2HeaderFrameENS2_22Http2ContinuationFrameENS2_19Http2RstStreamFrameENS2_18Http2SettingsFrameENS2_14Http2PingFrameENS2_16Http2GoawayFrameENS2_22Http2WindowUpdateFrameENS2_18Http2SecurityFrameENS2_17Http2UnknownFrameENS2_15Http2EmptyFrameEEED2Ev.exit

bb.gh:                                            ; preds = %.critedge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  call void @llvm.lifetime.start.p0(ptr nonnull %30)
  call void @llvm.lifetime.start.p0(ptr nonnull %31)
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  call void @llvm.lifetime.start.p0(ptr nonnull %36)
  call void @llvm.lifetime.start.p0(ptr nonnull %40)
  %i.akb = icmp samesign ult i64 %i.h, 8
  br i1 %i.akb, label %bb.gi, label %bb.gp, !prof !15

bb.gi:                                            ; preds = %bb.gh
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #25, !noalias !273
  store i64 91, ptr %32, align 8, !tbaa !19, !noalias !273
  %.sroa.2.0..sroa_idx.i.i170 = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr @.str.51, ptr %.sroa.2.0..sroa_idx.i.i170, align 8, !tbaa !21, !noalias !273
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #25, !noalias !273
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #25, !noalias !273
  call void @_ZNK9grpc_core16Http2FrameHeader8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %34, ptr noundef nonnull readonly align 4 dereferenceable(12) %1), !noalias !273
  %i.akc = load ptr, ptr %34, align 8, !tbaa !35, !noalias !273
  %i.akd = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.ake = load i64, ptr %i.akd, align 8, !tbaa !36, !noalias !273
  store i64 %i.ake, ptr %33, align 8, !noalias !273
  %i.akf = getelementptr inbounds nuw i8, ptr %33, i64 8
  store ptr %i.akc, ptr %i.akf, align 8, !noalias !273
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %31, ptr noundef nonnull align 8 dereferenceable(48) %32, ptr noundef nonnull align 8 dereferenceable(48) %33)
          to label %bb.gj unwind label %bb.gn, !noalias !273

bb.gj:                                            ; preds = %bb.gi
  call void @llvm.experimental.noalias.scope.decl(metadata !274)
  store i8 6, ptr %30, align 8, !tbaa !31, !alias.scope !274, !noalias !273
  %i.akg = getelementptr inbounds nuw i8, ptr %30, i64 1
  store i8 1, ptr %i.akg, align 1, !tbaa !32, !alias.scope !274, !noalias !273
  %i.akh = getelementptr inbounds nuw i8, ptr %30, i64 4
  store i32 13, ptr %i.akh, align 4, !tbaa !33, !alias.scope !274, !noalias !273
  %i.aki = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 4 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %30, i64 24 ; 7 uses
  store ptr %i.akj, ptr %i.aki, align 8, !tbaa !34, !alias.scope !274, !noalias !273
  %i.akk = load ptr, ptr %31, align 8, !tbaa !35, !noalias !275 ; 2 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 9 uses
  %i.akm = icmp eq ptr %i.akk, %i.akl
  br i1 %i.akm, label %bb.gk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i175

bb.gk:                                            ; preds = %bb.gj
  %i.akn = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.ako = load i64, ptr %i.akn, align 8, !tbaa !36, !noalias !275 ; 3 uses
  %i.akp = icmp ult i64 %i.ako, 16
  call void @llvm.assume(i1 %i.akp)
  %i.akq = add nuw nsw i64 %i.ako, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.akj, ptr noundef nonnull align 8 dereferenceable(1) %i.akl, i64 %i.akq, i1 false), !noalias !273
  br label %bb.gl

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i175: ; preds = %bb.gj
  store ptr %i.akk, ptr %i.aki, align 8, !tbaa !35, !alias.scope !274, !noalias !273
  %i.akr = load i64, ptr %i.akl, align 8, !tbaa !37, !noalias !275
  store i64 %i.akr, ptr %i.akj, align 8, !tbaa !37, !alias.scope !274, !noalias !273
  %.phi.trans.insert.i.i176 = getelementptr inbounds nuw i8, ptr %31, i64 8
  %.pre.i.i177 = load i64, ptr %.phi.trans.insert.i.i176, align 8, !tbaa !36, !noalias !275
  br label %bb.gl

bb.gl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i175, %bb.gk
  %i.aks = phi i64 [ %i.ako, %bb.gk ], [ %.pre.i.i177, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i175 ]
  %i.akt = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.aku = getelementptr inbounds nuw i8, ptr %30, i64 16
  store i64 %i.aks, ptr %i.aku, align 8, !tbaa !36, !alias.scope !274, !noalias !273
  store ptr %i.akl, ptr %31, align 8, !tbaa !35, !noalias !275
  store i64 0, ptr %i.akt, align 8, !tbaa !36, !noalias !275
  store i8 0, ptr %i.akl, align 8, !tbaa !37, !noalias !275
  invoke void @_ZN9grpc_core5http218ValueOrHttp2StatusISt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEEEC2ENS0_11Http2StatusE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 %30)
          to label %bb.gm unwind label %bb.go

bb.gm:                                            ; preds = %bb.gl
  %i.akv = load ptr, ptr %i.aki, align 8, !tbaa !35, !noalias !273 ; 2 uses
  %i.akw = icmp eq ptr %i.akv, %i.akj
  br i1 %i.akw, label %_ZN9grpc_core5http211Http2StatusD2Ev.exit.i180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20.i: ; preds = %bb.gm
  %i.akx = load i64, ptr %i.akj, align 8, !tbaa !37, !noalias !273
  %i.aky = add i64 %i.akx, 1
  call void @_ZdlPvm(ptr noundef %i.akv, i64 noundef %i.aky) #29
  br label %_ZN9grpc_core5http211Http2StatusD2Ev.exit.i180

_ZN9grpc_core5http211Http2StatusD2Ev.exit.i180:   ; preds = %bb.gm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20.i
  %i.akz = load ptr, ptr %31, align 8, !tbaa !35, !noalias !273 ; 2 uses
  %i.ala = icmp eq ptr %i.akz, %i.akl
  br i1 %i.ala, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i181: ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit.i180
  %i.alb = load i64, ptr %i.akl, align 8, !tbaa !37, !noalias !273
  %i.alc = add i64 %i.alb, 1
  call void @_ZdlPvm(ptr noundef %i.akz, i64 noundef %i.alc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i182: ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit.i180, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i181
  %i.ald = load ptr, ptr %34, align 8, !tbaa !35, !noalias !273 ; 2 uses
  %i.ale = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.alf = icmp eq ptr %i.ald, %i.ale
  br i1 %i.alf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i182
  %i.alg = load i64, ptr %i.ale, align 8, !tbaa !37, !noalias !273
  %i.alh = add i64 %i.alg, 1
  call void @_ZdlPvm(ptr noundef %i.ald, i64 noundef %i.alh) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i182, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #25, !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #25, !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #25, !noalias !273
  br label %_ZN9grpc_core12_GLOBAL__N_116ParseGoawayFrameERKNS_16Http2FrameHeaderERNS_11SliceBufferE.exit

bb.gn:                                            ; preds = %bb.gi
  %i.ali = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i171

bb.go:                                            ; preds = %bb.gl
  %i.alj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.alk = load ptr, ptr %i.aki, align 8, !tbaa !35, !noalias !273 ; 2 uses
  %i.all = icmp eq ptr %i.alk, %i.akj
  br i1 %i.all, label %_ZN9grpc_core5http211Http2StatusD2Ev.exit26.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24.i: ; preds = %bb.go
  %i.alm = load i64, ptr %i.akj, align 8, !tbaa !37, !noalias !273
  %i.aln = add i64 %i.alm, 1
  call void @_ZdlPvm(ptr noundef %i.alk, i64 noundef %i.aln) #29
  br label %_ZN9grpc_core5http211Http2StatusD2Ev.exit26.i

_ZN9grpc_core5http211Http2StatusD2Ev.exit26.i:    ; preds = %bb.go, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24.i
  %i.alo = load ptr, ptr %31, align 8, !tbaa !35, !noalias !273 ; 2 uses
  %i.alp = icmp eq ptr %i.alo, %i.akl
  br i1 %i.alp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i171, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i178: ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit26.i
  %i.alq = load i64, ptr %i.akl, align 8, !tbaa !37, !noalias !273
  %i.alr = add i64 %i.alq, 1
  call void @_ZdlPvm(ptr noundef %i.alo, i64 noundef %i.alr) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i171

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i171: ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit26.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i178, %bb.gn
  %.pn16.pn.i = phi { ptr, i32 } [ %i.ali, %bb.gn ], [ %i.alj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i178 ], [ %i.alj, %_ZN9grpc_core5http211Http2StatusD2Ev.exit26.i ]
  %i.als = load ptr, ptr %34, align 8, !tbaa !35, !noalias !273 ; 2 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.alu = icmp eq ptr %i.als, %i.alt
  br i1 %i.alu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.i172: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i171
  %i.alv = load i64, ptr %i.alt, align 8, !tbaa !37, !noalias !273
  %i.alw = add i64 %i.alv, 1
  call void @_ZdlPvm(ptr noundef %i.als, i64 noundef %i.alw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32.i173: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i171, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #25, !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #25, !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #25, !noalias !273
  br label %common.resume

bb.gp:                                            ; preds = %bb.gh
  %i.alx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aly = load i32, ptr %i.alx, align 4, !tbaa !43, !noalias !273
  %.not.i155 = icmp eq i32 %i.aly, 0
  br i1 %.not.i155, label %bb.gx, label %bb.gq, !prof !40

bb.gq:                                            ; preds = %bb.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #25, !noalias !273
  store i64 109, ptr %37, align 8, !tbaa !19, !noalias !273
  %.sroa.2.0..sroa_idx.i33.i = getelementptr inbounds nuw i8, ptr %37, i64 8
  store ptr @.str.52, ptr %.sroa.2.0..sroa_idx.i33.i, align 8, !tbaa !21, !noalias !273
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #25, !noalias !273
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #25, !noalias !273
  call void @_ZNK9grpc_core16Http2FrameHeader8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %39, ptr noundef nonnull readonly align 4 dereferenceable(12) %1), !noalias !273
  %i.alz = load ptr, ptr %39, align 8, !tbaa !35, !noalias !273
  %i.ama = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.amb = load i64, ptr %i.ama, align 8, !tbaa !36, !noalias !273
  store i64 %i.amb, ptr %38, align 8, !noalias !273
  %i.amc = getelementptr inbounds nuw i8, ptr %38, i64 8
  store ptr %i.alz, ptr %i.amc, align 8, !noalias !273
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %36, ptr noundef nonnull align 8 dereferenceable(48) %37, ptr noundef nonnull align 8 dereferenceable(48) %38)
          to label %bb.gr unwind label %bb.gv, !noalias !273

bb.gr:                                            ; preds = %bb.gq
  call void @llvm.experimental.noalias.scope.decl(metadata !276)
  store i8 1, ptr %35, align 8, !tbaa !31, !alias.scope !276, !noalias !273
  %i.amd = getelementptr inbounds nuw i8, ptr %35, i64 1
  store i8 1, ptr %i.amd, align 1, !tbaa !32, !alias.scope !276, !noalias !273
  %i.ame = getelementptr inbounds nuw i8, ptr %35, i64 4
  store i32 13, ptr %i.ame, align 4, !tbaa !33, !alias.scope !276, !noalias !273
  %i.amf = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 4 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %35, i64 24 ; 7 uses
  store ptr %i.amg, ptr %i.amf, align 8, !tbaa !34, !alias.scope !276, !noalias !273
  %i.amh = load ptr, ptr %36, align 8, !tbaa !35, !noalias !277 ; 2 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 9 uses
  %i.amj = icmp eq ptr %i.amh, %i.ami
  br i1 %i.amj, label %bb.gs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34.i

bb.gs:                                            ; preds = %bb.gr
  %i.amk = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.aml = load i64, ptr %i.amk, align 8, !tbaa !36, !noalias !277 ; 3 uses
  %i.amm = icmp ult i64 %i.aml, 16
  call void @llvm.assume(i1 %i.amm)
  %i.amn = add nuw nsw i64 %i.aml, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.amg, ptr noundef nonnull align 8 dereferenceable(1) %i.ami, i64 %i.amn, i1 false), !noalias !273
  br label %bb.gt

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34.i: ; preds = %bb.gr
  store ptr %i.amh, ptr %i.amf, align 8, !tbaa !35, !alias.scope !276, !noalias !273
  %i.amo = load i64, ptr %i.ami, align 8, !tbaa !37, !noalias !277
  store i64 %i.amo, ptr %i.amg, align 8, !tbaa !37, !alias.scope !276, !noalias !273
  %.phi.trans.insert.i35.i = getelementptr inbounds nuw i8, ptr %36, i64 8
  %.pre.i36.i = load i64, ptr %.phi.trans.insert.i35.i, align 8, !tbaa !36, !noalias !277
  br label %bb.gt

bb.gt:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34.i, %bb.gs
  %i.amp = phi i64 [ %i.aml, %bb.gs ], [ %.pre.i36.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34.i ]
  %i.amq = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.amr = getelementptr inbounds nuw i8, ptr %35, i64 16
  store i64 %i.amp, ptr %i.amr, align 8, !tbaa !36, !alias.scope !276, !noalias !273
  store ptr %i.ami, ptr %36, align 8, !tbaa !35, !noalias !277
  store i64 0, ptr %i.amq, align 8, !tbaa !36, !noalias !277
  store i8 0, ptr %i.ami, align 8, !tbaa !37, !noalias !277
  invoke void @_ZN9grpc_core5http218ValueOrHttp2StatusISt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEEEC2ENS0_11Http2StatusE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 %35)
          to label %bb.gu unwind label %bb.gw

bb.gu:                                            ; preds = %bb.gt
  %i.ams = load ptr, ptr %i.amf, align 8, !tbaa !35, !noalias !273 ; 2 uses
  %i.amt = icmp eq ptr %i.ams, %i.amg
  br i1 %i.amt, label %_ZN9grpc_core5http211Http2StatusD2Ev.exit40.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i38.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i38.i: ; preds = %bb.gu
  %i.amu = load i64, ptr %i.amg, align 8, !tbaa !37, !noalias !273
  %i.amv = add i64 %i.amu, 1
  call void @_ZdlPvm(ptr noundef %i.ams, i64 noundef %i.amv) #29
  br label %_ZN9grpc_core5http211Http2StatusD2Ev.exit40.i

_ZN9grpc_core5http211Http2StatusD2Ev.exit40.i:    ; preds = %bb.gu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i38.i
  %i.amw = load ptr, ptr %36, align 8, !tbaa !35, !noalias !273 ; 2 uses
  %i.amx = icmp eq ptr %i.amw, %i.ami
  br i1 %i.amx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i: ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit40.i
  %i.amy = load i64, ptr %i.ami, align 8, !tbaa !37, !noalias !273
  %i.amz = add i64 %i.amy, 1
  call void @_ZdlPvm(ptr noundef %i.amw, i64 noundef %i.amz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i: ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit40.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41.i
  %i.ana = load ptr, ptr %39, align 8, !tbaa !35, !noalias !273 ; 2 uses
  %i.anb = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.anc = icmp eq ptr %i.ana, %i.anb
  br i1 %i.anc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i
  %i.and = load i64, ptr %i.anb, align 8, !tbaa !37, !noalias !273
  %i.ane = add i64 %i.and, 1
  call void @_ZdlPvm(ptr noundef %i.ana, i64 noundef %i.ane) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.i
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #25, !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #25, !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #25, !noalias !273
  br label %_ZN9grpc_core12_GLOBAL__N_116ParseGoawayFrameERKNS_16Http2FrameHeaderERNS_11SliceBufferE.exit

bb.gv:                                            ; preds = %bb.gq
  %i.anf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i156

bb.gw:                                            ; preds = %bb.gt
  %i.ang = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.anh = load ptr, ptr %i.amf, align 8, !tbaa !35, !noalias !273 ; 2 uses
  %i.ani = icmp eq ptr %i.anh, %i.amg
  br i1 %i.ani, label %_ZN9grpc_core5http211Http2StatusD2Ev.exit49.i162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47.i161: ; preds = %bb.gw
  %i.anj = load i64, ptr %i.amg, align 8, !tbaa !37, !noalias !273
  %i.ank = add i64 %i.anj, 1
  call void @_ZdlPvm(ptr noundef %i.anh, i64 noundef %i.ank) #29
  br label %_ZN9grpc_core5http211Http2StatusD2Ev.exit49.i162

_ZN9grpc_core5http211Http2StatusD2Ev.exit49.i162: ; preds = %bb.gw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47.i161
  %i.anl = load ptr, ptr %36, align 8, !tbaa !35, !noalias !273 ; 2 uses
  %i.anm = icmp eq ptr %i.anl, %i.ami
  br i1 %i.anm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i163: ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit49.i162
  %i.ann = load i64, ptr %i.ami, align 8, !tbaa !37, !noalias !273
  %i.ano = add i64 %i.ann, 1
  call void @_ZdlPvm(ptr noundef %i.anl, i64 noundef %i.ano) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i156

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i156: ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit49.i162, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i163, %bb.gv
  %.pn.pn.i157 = phi { ptr, i32 } [ %i.anf, %bb.gv ], [ %i.ang, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50.i163 ], [ %i.ang, %_ZN9grpc_core5http211Http2StatusD2Ev.exit49.i162 ]
  %i.anp = load ptr, ptr %39, align 8, !tbaa !35, !noalias !273 ; 2 uses
  %i.anq = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.anr = icmp eq ptr %i.anp, %i.anq
  br i1 %i.anr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i156
  %i.ans = load i64, ptr %i.anq, align 8, !tbaa !37, !noalias !273
  %i.ant = add i64 %i.ans, 1
  call void @_ZdlPvm(ptr noundef %i.anp, i64 noundef %i.ant) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i159

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.i159: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i156, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i158
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #25, !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #25, !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #25, !noalias !273
  br label %common.resume

bb.gx:                                            ; preds = %bb.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !273
  call void @grpc_slice_buffer_move_first_into_buffer(ptr noundef nonnull align 8 dereferenceable(136) %2, i64 noundef 8, ptr noundef nonnull %i.b), !noalias !273
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #25, !noalias !273
  %i.anu = load i8, ptr %i.b, align 1, !tbaa !37, !noalias !273
  %i.anv = and i8 %i.anu, 127
  %i.anw = zext nneg i8 %i.anv to i32
  %i.anx = shl nuw nsw i32 %i.anw, 24
  %i.any = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.anz = load i8, ptr %i.any, align 1, !tbaa !37, !noalias !273
  %i.aoa = zext i8 %i.anz to i32
  %i.aob = shl nuw nsw i32 %i.aoa, 16
  %i.aoc = or disjoint i32 %i.anx, %i.aob
  %i.aod = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.aoe = load i8, ptr %i.aod, align 1, !tbaa !37, !noalias !273
  %i.aof = zext i8 %i.aoe to i32
  %i.aog = shl nuw nsw i32 %i.aof, 8
  %i.aoh = or disjoint i32 %i.aoc, %i.aog
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.aoj = load i8, ptr %i.aoi, align 1, !tbaa !37, !noalias !273
  %i.aok = zext i8 %i.aoj to i32
  %i.aol = or disjoint i32 %i.aoh, %i.aok
  store i32 %i.aol, ptr %41, align 8, !tbaa !86, !noalias !273
  %i.aom = getelementptr inbounds nuw i8, ptr %41, i64 4
  %i.aon = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %221 = load i8, ptr %i.aon, align 1, !tbaa !37, !noalias !273
  %222 = zext i8 %221 to i32
  %223 = shl nuw i32 %222, 24
  %224 = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %225 = load i8, ptr %224, align 1, !tbaa !37, !noalias !273
  %226 = zext i8 %225 to i32
  %227 = shl nuw nsw i32 %226, 16
  %228 = or disjoint i32 %227, %223
  %229 = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %230 = load i8, ptr %229, align 1, !tbaa !37, !noalias !273
  %231 = zext i8 %230 to i32
  %232 = shl nuw nsw i32 %231, 8
  %233 = or disjoint i32 %228, %232
  %234 = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %235 = load i8, ptr %234, align 1, !tbaa !37, !noalias !273
  %236 = zext i8 %235 to i32
  %237 = or disjoint i32 %233, %236
  store i32 %237, ptr %i.aom, align 4, !tbaa !87, !noalias !273
  %i.aoo = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 4 uses
  call void @_ZNK9grpc_core11SliceBuffer13JoinIntoSliceEv(ptr dead_on_unwind nonnull writable sret(%"class.grpc_core::Slice") align 8 %i.aoo, ptr noundef nonnull align 8 dereferenceable(136) %2), !noalias !273
  %i.aop = load i64, ptr %41, align 8, !noalias !273
  store i64 %i.aop, ptr %40, align 8, !noalias !273
  %i.aoq = getelementptr inbounds nuw i8, ptr %40, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aoq, ptr noundef nonnull align 8 dereferenceable(32) %i.aoo, i64 32, i1 false), !noalias !273
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aoo, i8 0, i64 32, i1 false), !noalias !278
  %i.aor = getelementptr inbounds nuw i8, ptr %40, i64 144 ; 2 uses
  store i8 6, ptr %i.aor, align 8, !tbaa !45, !noalias !273
  %i.aos = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store i8 -1, ptr %i.aos, align 8, !tbaa !45, !alias.scope !273
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25, !noalias !273
  store ptr %0, ptr %29, align 8, !tbaa !90, !noalias !273
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Move_ctor_baseILb0EJN9grpc_core14Http2DataFrameENS4_16Http2HeaderFrameENS4_22Http2ContinuationFrameENS4_19Http2RstStreamFrameENS4_18Http2SettingsFrameENS4_14Http2PingFrameENS4_16Http2GoawayFrameENS4_22Http2WindowUpdateFrameENS4_18Http2SecurityFrameENS4_17Http2UnknownFrameENS4_15Http2EmptyFrameEEEC1EOSG_EUlOT_T0_E_JSt7variantIJS5_S6_S7_S8_S9_SA_SB_SC_SD_SE_SF_EEEEDcOSK_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dereferenceable(145) %40)
          to label %_ZN9grpc_core5http218ValueOrHttp2StatusISt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEEEC2ESE_.exit.i166 unwind label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.aot = landingpad { ptr, i32 }
          catch ptr null
  %i.aou = extractvalue { ptr, i32 } %i.aot, 0
  call void @__clang_call_terminate(ptr %i.aou) #28
  unreachable

_ZN9grpc_core5http218ValueOrHttp2StatusISt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEEEC2ESE_.exit.i166: ; preds = %bb.gx
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #25, !noalias !273
  %i.aov = load i8, ptr %i.aor, align 8, !tbaa !45, !noalias !273 ; 2 uses
  store i8 %i.aov, ptr %i.aos, align 8, !tbaa !45, !alias.scope !273
  %i.aow = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 0, ptr %i.aow, align 8, !tbaa !92, !alias.scope !273
  %.not.i.i.i167 = icmp eq i8 %i.aov, -1
  br i1 %.not.i.i.i167, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core14Http2DataFrameENS2_16Http2HeaderFrameENS2_22Http2ContinuationFrameENS2_19Http2RstStreamFrameENS2_18Http2SettingsFrameENS2_14Http2PingFrameENS2_16Http2GoawayFrameENS2_22Http2WindowUpdateFrameENS2_18Http2SecurityFrameENS2_17Http2UnknownFrameENS2_15Http2EmptyFrameEEED2Ev.exit.i169, label %bb.gz, !prof !15

bb.gz:                                            ; preds = %_ZN9grpc_core5http218ValueOrHttp2StatusISt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEEEC2ESE_.exit.i166
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25, !noalias !273
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core14Http2DataFrameENS3_16Http2HeaderFrameENS3_22Http2ContinuationFrameENS3_19Http2RstStreamFrameENS3_18Http2SettingsFrameENS3_14Http2PingFrameENS3_16Http2GoawayFrameENS3_22Http2WindowUpdateFrameENS3_18Http2SecurityFrameENS3_17Http2UnknownFrameENS3_15Http2EmptyFrameEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_S5_S6_S7_S8_S9_SA_SB_SC_SD_SE_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %28, ptr noundef nonnull align 8 dereferenceable(145) %40)
          to label %.noexc.i.i168 unwind label %bb.ha

.noexc.i.i168:                                    ; preds = %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25, !noalias !273
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core14Http2DataFrameENS2_16Http2HeaderFrameENS2_22Http2ContinuationFrameENS2_19Http2RstStreamFrameENS2_18Http2SettingsFrameENS2_14Http2PingFrameENS2_16Http2GoawayFrameENS2_22Http2WindowUpdateFrameENS2_18Http2SecurityFrameENS2_17Http2UnknownFrameENS2_15Http2EmptyFrameEEED2Ev.exit.i169

bb.ha:                                            ; preds = %bb.gz
  %i.aox = landingpad { ptr, i32 }
          catch ptr null
  %i.aoy = extractvalue { ptr, i32 } %i.aox, 0
  call void @__clang_call_terminate(ptr %i.aoy) #28
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core14Http2DataFrameENS2_16Http2HeaderFrameENS2_22Http2ContinuationFrameENS2_19Http2RstStreamFrameENS2_18Http2SettingsFrameENS2_14Http2PingFrameENS2_16Http2GoawayFrameENS2_22Http2WindowUpdateFrameENS2_18Http2SecurityFrameENS2_17Http2UnknownFrameENS2_15Http2EmptyFrameEEED2Ev.exit.i169: ; preds = %.noexc.i.i168, %_ZN9grpc_core5http218ValueOrHttp2StatusISt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEEEC2ESE_.exit.i166
  %i.aoz = load ptr, ptr %i.aoo, align 8, !tbaa !56, !noalias !273 ; 4 uses
  %i.apa = icmp ugt ptr %i.aoz, inttoptr (i64 1 to ptr)
  br i1 %i.apa, label %bb.hb, label %_ZN9grpc_core16Http2GoawayFrameD2Ev.exit.i

bb.hb:                                            ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core14Http2DataFrameENS2_16Http2HeaderFrameENS2_22Http2ContinuationFrameENS2_19Http2RstStreamFrameENS2_18Http2SettingsFrameENS2_14Http2PingFrameENS2_16Http2GoawayFrameENS2_22Http2WindowUpdateFrameENS2_18Http2SecurityFrameENS2_17Http2UnknownFrameENS2_15Http2EmptyFrameEEED2Ev.exit.i169
  %i.apb = atomicrmw sub ptr %i.aoz, i64 1 acq_rel, align 8
  %i.apc = icmp eq i64 %i.apb, 1
  br i1 %i.apc, label %bb.hc, label %_ZN9grpc_core16Http2GoawayFrameD2Ev.exit.i

bb.hc:                                            ; preds = %bb.hb
  %i.apd = getelementptr inbounds nuw i8, ptr %i.aoz, i64 8
  %i.ape = load ptr, ptr %i.apd, align 8, !tbaa !60
  invoke void %i.ape(ptr noundef nonnull align 8 dereferenceable(16) %i.aoz)
          to label %_ZN9grpc_core16Http2GoawayFrameD2Ev.exit.i unwind label %bb.hd, !inline_history !0

bb.hd:                                            ; preds = %bb.hc
  %i.apf = landingpad { ptr, i32 }
          catch ptr null
  %i.apg = extractvalue { ptr, i32 } %i.apf, 0
  call void @__clang_call_terminate(ptr %i.apg) #28
  unreachable

_ZN9grpc_core16Http2GoawayFrameD2Ev.exit.i:       ; preds = %bb.hc, %bb.hb, %_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core14Http2DataFrameENS2_16Http2HeaderFrameENS2_22Http2ContinuationFrameENS2_19Http2RstStreamFrameENS2_18Http2SettingsFrameENS2_14Http2PingFrameENS2_16Http2GoawayFrameENS2_22Http2WindowUpdateFrameENS2_18Http2SecurityFrameENS2_17Http2UnknownFrameENS2_15Http2EmptyFrameEEED2Ev.exit.i169
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #25, !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !273
  br label %_ZN9grpc_core12_GLOBAL__N_116ParseGoawayFrameERKNS_16Http2FrameHeaderERNS_11SliceBufferE.exit

_ZN9grpc_core12_GLOBAL__N_116ParseGoawayFrameERKNS_16Http2FrameHeaderERNS_11SliceBufferE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.i, %_ZN9grpc_core16Http2GoawayFrameD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30)
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  call void @llvm.lifetime.end.p0(ptr nonnull %35)
  call void @llvm.lifetime.end.p0(ptr nonnull %36)
  call void @llvm.lifetime.end.p0(ptr nonnull %40)
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core14Http2DataFrameENS2_16Http2HeaderFrameENS2_22Http2ContinuationFrameENS2_19Http2RstStreamFrameENS2_18Http2SettingsFrameENS2_14Http2PingFrameENS2_16Http2GoawayFrameENS2_22Http2WindowUpdateFrameENS2_18Http2SecurityFrameENS2_17Http2UnknownFrameENS2_15Http2EmptyFrameEEED2Ev.exit

bb.he:                                            ; preds = %.critedge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  %.not.i185 = icmp eq i64 %i.h, 4
  br i1 %.not.i185, label %bb.hm, label %bb.hf, !prof !40

bb.hf:                                            ; preds = %bb.he
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25, !noalias !279
  store i64 102, ptr %14, align 8, !tbaa !19, !noalias !279
  %.sroa.2.0..sroa_idx.i.i186 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr @.str.53, ptr %.sroa.2.0..sroa_idx.i.i186, align 8, !tbaa !21, !noalias !279
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25, !noalias !279
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25, !noalias !279
  call void @_ZNK9grpc_core16Http2FrameHeader8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull readonly align 4 dereferenceable(12) %1), !noalias !279
  %i.aph = load ptr, ptr %16, align 8, !tbaa !35, !noalias !279
  %i.api = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.apj = load i64, ptr %i.api, align 8, !tbaa !36, !noalias !279
  store i64 %i.apj, ptr %15, align 8, !noalias !279
  %i.apk = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.aph, ptr %i.apk, align 8, !noalias !279
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull align 8 dereferenceable(48) %15)
          to label %bb.hg unwind label %bb.hk, !noalias !279

bb.hg:                                            ; preds = %bb.hf
  call void @llvm.experimental.noalias.scope.decl(metadata !280)
  store i8 6, ptr %12, align 8, !tbaa !31, !alias.scope !280, !noalias !279
  %i.apl = getelementptr inbounds nuw i8, ptr %12, i64 1
  store i8 1, ptr %i.apl, align 1, !tbaa !32, !alias.scope !280, !noalias !279
  %i.apm = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 13, ptr %i.apm, align 4, !tbaa !33, !alias.scope !280, !noalias !279
  %i.apn = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 7 uses
  store ptr %i.apo, ptr %i.apn, align 8, !tbaa !34, !alias.scope !280, !noalias !279
  %i.app = load ptr, ptr %13, align 8, !tbaa !35, !noalias !281 ; 2 uses
  %i.apq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 9 uses
  %i.apr = icmp eq ptr %i.app, %i.apq
  br i1 %i.apr, label %bb.hh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i191

bb.hh:                                            ; preds = %bb.hg
  %i.aps = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.apt = load i64, ptr %i.aps, align 8, !tbaa !36, !noalias !281 ; 3 uses
  %i.apu = icmp ult i64 %i.apt, 16
  call void @llvm.assume(i1 %i.apu)
  %i.apv = add nuw nsw i64 %i.apt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.apo, ptr noundef nonnull align 8 dereferenceable(1) %i.apq, i64 %i.apv, i1 false), !noalias !279
  br label %bb.hi

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i191: ; preds = %bb.hg
  store ptr %i.app, ptr %i.apn, align 8, !tbaa !35, !alias.scope !280, !noalias !279
  %i.apw = load i64, ptr %i.apq, align 8, !tbaa !37, !noalias !281
  store i64 %i.apw, ptr %i.apo, align 8, !tbaa !37, !alias.scope !280, !noalias !279
  %.phi.trans.insert.i.i192 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.pre.i.i193 = load i64, ptr %.phi.trans.insert.i.i192, align 8, !tbaa !36, !noalias !281
  br label %bb.hi

bb.hi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i191, %bb.hh
  %i.apx = phi i64 [ %i.apt, %bb.hh ], [ %.pre.i.i193, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i191 ]
  %i.apy = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.apz = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 %i.apx, ptr %i.apz, align 8, !tbaa !36, !alias.scope !280, !noalias !279
  store ptr %i.apq, ptr %13, align 8, !tbaa !35, !noalias !281
  store i64 0, ptr %i.apy, align 8, !tbaa !36, !noalias !281
  store i8 0, ptr %i.apq, align 8, !tbaa !37, !noalias !281
  invoke void @_ZN9grpc_core5http218ValueOrHttp2StatusISt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEEEC2ENS0_11Http2StatusE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 %12)
          to label %bb.hj unwind label %bb.hl

bb.hj:                                            ; preds = %bb.hi
  %i.aqa = load ptr, ptr %i.apn, align 8, !tbaa !35, !noalias !279 ; 2 uses
  %i.aqb = icmp eq ptr %i.aqa, %i.apo
  br i1 %i.aqb, label %_ZN9grpc_core5http211Http2StatusD2Ev.exit.i200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34.i199: ; preds = %bb.hj
  %i.aqc = load i64, ptr %i.apo, align 8, !tbaa !37, !noalias !279
  %i.aqd = add i64 %i.aqc, 1
  call void @_ZdlPvm(ptr noundef %i.aqa, i64 noundef %i.aqd) #29
  br label %_ZN9grpc_core5http211Http2StatusD2Ev.exit.i200

_ZN9grpc_core5http211Http2StatusD2Ev.exit.i200:   ; preds = %bb.hj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34.i199
  %i.aqe = load ptr, ptr %13, align 8, !tbaa !35, !noalias !279 ; 2 uses
  %i.aqf = icmp eq ptr %i.aqe, %i.apq
  br i1 %i.aqf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i201

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i201: ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit.i200
  %i.aqg = load i64, ptr %i.apq, align 8, !tbaa !37, !noalias !279
  %i.aqh = add i64 %i.aqg, 1
  call void @_ZdlPvm(ptr noundef %i.aqe, i64 noundef %i.aqh) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i202

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i202: ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit.i200, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i201
  %i.aqi = load ptr, ptr %16, align 8, !tbaa !35, !noalias !279 ; 2 uses
  %i.aqj = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.aqk = icmp eq ptr %i.aqi, %i.aqj
  br i1 %i.aqk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i202
  %i.aql = load i64, ptr %i.aqj, align 8, !tbaa !37, !noalias !279
  %i.aqm = add i64 %i.aql, 1
  call void @_ZdlPvm(ptr noundef %i.aqi, i64 noundef %i.aqm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i202, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25, !noalias !279
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25, !noalias !279
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25, !noalias !279
  br label %_ZN9grpc_core12_GLOBAL__N_122ParseWindowUpdateFrameERKNS_16Http2FrameHeaderERNS_11SliceBufferE.exit

bb.hk:                                            ; preds = %bb.hf
  %i.aqn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43.i187
end_hunk_3
begin_hunk_4_@_ZN9grpc_core17ParseFramePayloadERKNS_16Http2FrameHeaderEONS_11SliceBufferE:bb.a
  store i8 -1, ptr %i.axy, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr %0, ptr %4, align 8, !tbaa !90
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Move_ctor_baseILb0EJN9grpc_core14Http2DataFrameENS4_16Http2HeaderFrameENS4_22Http2ContinuationFrameENS4_19Http2RstStreamFrameENS4_18Http2SettingsFrameENS4_14Http2PingFrameENS4_16Http2GoawayFrameENS4_22Http2WindowUpdateFrameENS4_18Http2SecurityFrameENS4_17Http2UnknownFrameENS4_15Http2EmptyFrameEEEC1EOSG_EUlOT_T0_E_JSt7variantIJS5_S6_S7_S8_S9_SA_SB_SC_SD_SE_SF_EEEEDcOSK_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(145) %151)
          to label %_ZN9grpc_core5http218ValueOrHttp2StatusISt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEEEC2ESE_.exit unwind label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.axz = landingpad { ptr, i32 }
          catch ptr null
  %i.aya = extractvalue { ptr, i32 } %i.axz, 0
  call void @__clang_call_terminate(ptr %i.aya) #28
  unreachable

_ZN9grpc_core5http218ValueOrHttp2StatusISt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEEEC2ESE_.exit: ; preds = %bb.iz
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.ayb = load i8, ptr %i.axx, align 8, !tbaa !45 ; 2 uses
  store i8 %i.ayb, ptr %i.axy, align 8, !tbaa !45
  %i.ayc = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 0, ptr %i.ayc, align 8, !tbaa !92
  %.not.i.i = icmp eq i8 %i.ayb, -1
  br i1 %.not.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core14Http2DataFrameENS2_16Http2HeaderFrameENS2_22Http2ContinuationFrameENS2_19Http2RstStreamFrameENS2_18Http2SettingsFrameENS2_14Http2PingFrameENS2_16Http2GoawayFrameENS2_22Http2WindowUpdateFrameENS2_18Http2SecurityFrameENS2_17Http2UnknownFrameENS2_15Http2EmptyFrameEEED2Ev.exit, label %bb.jb, !prof !15

bb.jb:                                            ; preds = %_ZN9grpc_core5http218ValueOrHttp2StatusISt7variantIJNS_14Http2DataFrameENS_16Http2HeaderFrameENS_22Http2ContinuationFrameENS_19Http2RstStreamFrameENS_18Http2SettingsFrameENS_14Http2PingFrameENS_16Http2GoawayFrameENS_22Http2WindowUpdateFrameENS_18Http2SecurityFrameENS_17Http2UnknownFrameENS_15Http2EmptyFrameEEEEC2ESE_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core14Http2DataFrameENS3_16Http2HeaderFrameENS3_22Http2ContinuationFrameENS3_19Http2RstStreamFrameENS3_18Http2SettingsFrameENS3_14Http2PingFrameENS3_16Http2GoawayFrameENS3_22Http2WindowUpdateFrameENS3_18Http2SecurityFrameENS3_17Http2UnknownFrameENS3_15Http2EmptyFrameEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_S5_S6_S7_S8_S9_SA_SB_SC_SD_SE_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(145) %151)
          to label %.noexc.i243 unwind label %bb.jc

.noexc.i243:                                      ; preds = %bb.jb
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core14Http2DataFrameENS2_16Http2HeaderFrameENS2_22Http2ContinuationFrameENS2_19Http2RstStreamFrameENS2_18Http2SettingsFrameENS2_14Http2PingFrameENS2_16Http2GoawayFrameENS2_22Http2WindowUpdateFrameENS2_18Http2SecurityFrameENS2_17Http2UnknownFrameENS2_15Http2EmptyFrameEEED2Ev.exit

bb.jc:                                            ; preds = %bb.jb
  %i.ayd = landingpad { ptr, i32 }
          catch ptr null
  %i.aye = extractvalue { ptr, i32 } %i.ayd, 0
  call void @__clang_call_terminate(ptr %i.aye) #28
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
  call void @llvm.experimental.noalias.scope.decl(metadata !292)
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
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !292
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str, i32 noundef 790) #26, !noalias !292
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 27, ptr nonnull @.str.56)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi28EEERS2_RAT__Kc.exit.i unwind label %bb.n, !noalias !292

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi28EEERS2_RAT__Kc.exit.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !292
  store i32 %i.f, ptr %i.a, align 4, !tbaa !17, !noalias !292
  %i.g = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIjEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.e unwind label %bb.n, !noalias !292

bb.e:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi28EEERS2_RAT__Kc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !292
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i unwind label %bb.n, !noalias !292

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i: ; preds = %bb.e
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #27, !noalias !292
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !292
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !292
  store i64 27, ptr %7, align 8, !noalias !292
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.56, ptr %i.h, align 8, !noalias !292
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !292
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.j = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.f, ptr noundef nonnull %i.i), !noalias !292
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.k, %i.l
  store i64 %i.m, ptr %8, align 8, !tbaa !23, !noalias !292
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.i, ptr %i.n, align 8, !tbaa !24, !noalias !292
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %8), !noalias !292
  call void @llvm.experimental.noalias.scope.decl(metadata !293)
  store i8 2, ptr %5, align 8, !tbaa !31, !alias.scope !293, !noalias !292
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 2, ptr %i.o, align 1, !tbaa !32, !alias.scope !293, !noalias !292
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 13, ptr %i.p, align 4, !tbaa !33, !alias.scope !293, !noalias !292
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 10 uses
  %i.s = load ptr, ptr %6, align 8, !tbaa !35, !noalias !294 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.f:                                             ; preds = %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !36, !noalias !294 ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false), !noalias !292
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i
  store ptr %i.s, ptr %i.q, align 8, !tbaa !35, !alias.scope !293, !noalias !292
  %i.z = load i64, ptr %i.t, align 8, !tbaa !37, !noalias !294
  store i64 %i.z, ptr %i.r, align 8, !tbaa !37, !alias.scope !293, !noalias !292
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !36, !noalias !294
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %i.aa = phi ptr [ %i.r, %bb.f ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ] ; 2 uses
  %i.ab = phi i64 [ %i.w, %bb.f ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.t, ptr %6, align 8, !tbaa !35, !noalias !294
  store i64 0, ptr %i.ac, align 8, !tbaa !36, !noalias !294
  store i8 0, ptr %i.t, align 8, !tbaa !37, !noalias !294
  %i.ae = load i64, ptr %5, align 8, !noalias !292 ; 2 uses
  store i64 %i.ae, ptr %10, align 8, !alias.scope !292
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 5 uses
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !34, !alias.scope !292
  %i.ah = icmp eq ptr %i.aa, %i.r
  br i1 %i.ah, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ai = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.aj, i1 false)
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g
  store ptr %i.aa, ptr %i.af, align 8, !tbaa !35, !alias.scope !292
  %i.ak = load i64, ptr %i.r, align 8, !tbaa !37, !noalias !292
  store i64 %i.ak, ptr %i.ag, align 8, !tbaa !37, !alias.scope !292
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %i.ab, ptr %i.al, align 8, !tbaa !36, !alias.scope !292
  store ptr %i.r, ptr %i.q, align 8, !tbaa !35, !noalias !292
  store i64 0, ptr %i.ad, align 8, !tbaa !36, !noalias !292
  store i8 0, ptr %i.r, align 8, !tbaa !37, !noalias !292
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  store i8 1, ptr %i.am, align 8, !tbaa !296, !alias.scope !292
  %i.an = and i64 %i.ae, 65280
  %.not.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i, label %bb.j, label %_ZN9grpc_core5http218ValueOrHttp2StatusIjE10TakeStatusEOS2_.exit, !prof !15

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !292
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
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !292
  %i.aq = load i8, ptr %i.am, align 8, !tbaa !296
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
  %i.av = load ptr, ptr %i.q, align 8, !tbaa !35, !noalias !292 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.r
  br i1 %i.aw, label %_ZN9grpc_core5http211Http2StatusD2Ev.exit11.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i

bb.n:                                             ; preds = %bb.e, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi28EEERS2_RAT__Kc.exit.i, %bb.d
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #27, !noalias !292
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !292
  br label %common.resume

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJjN9grpc_core5http211Http2StatusEEED2Ev.exit
  %i.ay = load i64, ptr %i.r, align 8, !tbaa !37, !noalias !292
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #29
  br label %_ZN9grpc_core5http211Http2StatusD2Ev.exit11.i

_ZN9grpc_core5http211Http2StatusD2Ev.exit11.i:    ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJjN9grpc_core5http211Http2StatusEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9.i
  %i.ba = load ptr, ptr %6, align 8, !tbaa !35, !noalias !292 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.t
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i: ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit11.i
  %i.bc = load i64, ptr %i.t, align 8, !tbaa !37, !noalias !292
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i: ; preds = %_ZN9grpc_core5http211Http2StatusD2Ev.exit11.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !292
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !292
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
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !292
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !292
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
  %i.cv = load i8, ptr %i.bg, align 8, !tbaa !296
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
  br i1 %i.e, label %bb.c, label %.thread, !prof !317

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 5
  %i.g = load i8, ptr %i.f, align 1, !tbaa !42
  %i.h = and i8 %i.g, 1
  %.not161 = icmp eq i8 %i.h, 0
  br i1 %.not161, label %.critedge, label %.thread, !prof !318

.thread:                                          ; preds = %bb.b, %bb.c
  %_ZN9grpc_core7RFC911325kFirstSettingsFrameClientE._ZN9grpc_core7RFC911325kFirstSettingsFrameServerE = select i1 %6, ptr @_ZN9grpc_core7RFC911325kFirstSettingsFrameClientE, ptr @_ZN9grpc_core7RFC911325kFirstSettingsFrameServerE
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(16) %_ZN9grpc_core7RFC911325kFirstSettingsFrameClientE._ZN9grpc_core7RFC911325kFirstSettingsFrameServerE, ptr noundef nonnull align 1 dereferenceable(1) %12)
  call void @llvm.experimental.noalias.scope.decl(metadata !319)
  store i8 1, ptr %0, align 8, !tbaa !31, !alias.scope !319
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.i, align 1, !tbaa !32, !alias.scope !319
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 13, ptr %i.j, align 4, !tbaa !33, !alias.scope !319
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !34, !alias.scope !319
  %i.m = load ptr, ptr %11, align 8, !tbaa !35, !noalias !319 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.d:                                             ; preds = %.thread
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !36, !noalias !319 ; 3 uses
  %i.r = icmp ult i64 %i.q, 16
  call void @llvm.assume(i1 %i.r)
  %i.s = add nuw nsw i64 %i.q, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.thread
  store ptr %i.m, ptr %i.k, align 8, !tbaa !35, !alias.scope !319
  %i.t = load i64, ptr %i.n, align 8, !tbaa !37, !noalias !319
  store i64 %i.t, ptr %i.l, align 8, !tbaa !37, !alias.scope !319
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !36, !noalias !319
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.d
  %i.u = phi i64 [ %i.q, %bb.d ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.u, ptr %i.v, align 8, !tbaa !36, !alias.scope !319
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
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25, !noalias !320
  store i64 127, ptr %10, align 8, !noalias !320
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.63, ptr %i.ak, align 8, !noalias !320
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 17, ptr %i.al, align 8, !noalias !320
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr @.str.13, ptr %i.am, align 8, !noalias !320
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 32
  %.sroa.0.0.copyload.i10.i = load i64, ptr %14, align 8, !tbaa !19, !noalias !320
  %.sroa.2.0.copyload.i12.i = load ptr, ptr %i.ad, align 8, !tbaa !21, !noalias !320
  store i64 %.sroa.0.0.copyload.i10.i, ptr %i.an, align 8, !noalias !320
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr %.sroa.2.0.copyload.i12.i, ptr %i.ao, align 8, !noalias !320
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i64 13, ptr %i.ap, align 8, !noalias !320
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 56
  store ptr @.str.14, ptr %i.aq, align 8, !noalias !320
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 64
end_hunk_4
begin_hunk_5_@_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Move_ctor_baseILb0EJN9grpc_core14Http2DataFrameENS4_16Http2HeaderFrameENS4_22Http2ContinuationFrameENS4_19Http2RstStreamFrameENS4_18Http2SettingsFrameENS4_14Http2PingFrameENS4_16Http2GoawayFrameENS4_22Http2WindowUpdateFrameENS4_18Http2SecurityFrameENS4_17Http2UnknownFrameENS4_15Http2EmptyFrameEEEC1EOSG_EUlOT_T0_E_JSt7variantIJS5_S6_S7_S8_S9_SA_SB_SC_SD_SE_SF_EEEEDcOSK_DpOT1_:bb.a
  unreachable

bb.k:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %0, align 8, !tbaa !90
  %i.s = load i64, ptr %1, align 8, !tbaa !17
  store i64 %i.s, ptr %i.r, align 4, !tbaa !17
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN9grpc_core14Http2DataFrameENS5_16Http2HeaderFrameENS5_22Http2ContinuationFrameENS5_19Http2RstStreamFrameENS5_18Http2SettingsFrameENS5_14Http2PingFrameENS5_16Http2GoawayFrameENS5_22Http2WindowUpdateFrameENS5_18Http2SecurityFrameENS5_17Http2UnknownFrameENS5_15Http2EmptyFrameEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_S7_S8_S9_SA_SB_SC_SD_SE_SF_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESN_SQ_.exit

bb.l:                                             ; preds = %bb.a
  %i.t = load ptr, ptr %0, align 8, !tbaa !90     ; 3 uses
  %i.u = load i8, ptr %1, align 8, !tbaa !83, !range !68, !noundef !69
  store i8 %i.u, ptr %i.t, align 8, !tbaa !83
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.x = load <2 x ptr>, ptr %i.w, align 8, !tbaa !11
  store <2 x ptr> %i.x, ptr %i.v, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !93
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !93
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN9grpc_core14Http2DataFrameENS5_16Http2HeaderFrameENS5_22Http2ContinuationFrameENS5_19Http2RstStreamFrameENS5_18Http2SettingsFrameENS5_14Http2PingFrameENS5_16Http2GoawayFrameENS5_22Http2WindowUpdateFrameENS5_18Http2SecurityFrameENS5_17Http2UnknownFrameENS5_15Http2EmptyFrameEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_S7_S8_S9_SA_SB_SC_SD_SE_SF_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESN_SQ_.exit

bb.m:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %0, align 8, !tbaa !90
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ab, ptr noundef nonnull align 8 dereferenceable(145) %1, i64 16, i1 false), !tbaa.struct !345
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN9grpc_core14Http2DataFrameENS5_16Http2HeaderFrameENS5_22Http2ContinuationFrameENS5_19Http2RstStreamFrameENS5_18Http2SettingsFrameENS5_14Http2PingFrameENS5_16Http2GoawayFrameENS5_22Http2WindowUpdateFrameENS5_18Http2SecurityFrameENS5_17Http2UnknownFrameENS5_15Http2EmptyFrameEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_S7_S8_S9_SA_SB_SC_SD_SE_SF_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESN_SQ_.exit

bb.n:                                             ; preds = %bb.a
  %i.ac = load ptr, ptr %0, align 8, !tbaa !90    ; 2 uses
  %i.ad = load i64, ptr %1, align 8
  store i64 %i.ad, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 32, i1 false), !tbaa.struct !347
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i8 0, i64 32, i1 false), !noalias !348
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !347
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN9grpc_core14Http2DataFrameENS5_16Http2HeaderFrameENS5_22Http2ContinuationFrameENS5_19Http2RstStreamFrameENS5_18Http2SettingsFrameENS5_14Http2PingFrameENS5_16Http2GoawayFrameENS5_22Http2WindowUpdateFrameENS5_18Http2SecurityFrameENS5_17Http2UnknownFrameENS5_15Http2EmptyFrameEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_S7_S8_S9_SA_SB_SC_SD_SE_SF_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESN_SQ_.exit

bb.o:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %0, align 8, !tbaa !90
  %i.ah = load i64, ptr %1, align 8, !tbaa !17
  store i64 %i.ah, ptr %i.ag, align 4, !tbaa !17
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN9grpc_core14Http2DataFrameENS5_16Http2HeaderFrameENS5_22Http2ContinuationFrameENS5_19Http2RstStreamFrameENS5_18Http2SettingsFrameENS5_14Http2PingFrameENS5_16Http2GoawayFrameENS5_22Http2WindowUpdateFrameENS5_18Http2SecurityFrameENS5_17Http2UnknownFrameENS5_15Http2EmptyFrameEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_S7_S8_S9_SA_SB_SC_SD_SE_SF_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESN_SQ_.exit

bb.p:                                             ; preds = %bb.a
  %i.ai = load ptr, ptr %0, align 8, !tbaa !90    ; 2 uses
  invoke void @grpc_slice_buffer_init(ptr noundef nonnull align 8 dereferenceable(144) %i.ai)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @grpc_slice_buffer_swap(ptr noundef nonnull align 8 dereferenceable(144) %i.ai, ptr noundef nonnull align 8 dereferenceable(145) %1)
          to label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN9grpc_core14Http2DataFrameENS5_16Http2HeaderFrameENS5_22Http2ContinuationFrameENS5_19Http2RstStreamFrameENS5_18Http2SettingsFrameENS5_14Http2PingFrameENS5_16Http2GoawayFrameENS5_22Http2WindowUpdateFrameENS5_18Http2SecurityFrameENS5_17Http2UnknownFrameENS5_15Http2EmptyFrameEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_S7_S8_S9_SA_SB_SC_SD_SE_SF_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESN_SQ_.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #28
  unreachable

bb.s:                                             ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN9grpc_core14Http2DataFrameENS5_16Http2HeaderFrameENS5_22Http2ContinuationFrameENS5_19Http2RstStreamFrameENS5_18Http2SettingsFrameENS5_14Http2PingFrameENS5_16Http2GoawayFrameENS5_22Http2WindowUpdateFrameENS5_18Http2SecurityFrameENS5_17Http2UnknownFrameENS5_15Http2EmptyFrameEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_S7_S8_S9_SA_SB_SC_SD_SE_SF_SG_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESN_SQ_.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.q, %bb.i, %bb.f, %bb.c, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZSt5visitIZN9grpc_core13MemoryUsageOfIJNS0_14Http2DataFrameENS0_16Http2HeaderFrameENS0_22Http2ContinuationFrameENS0_19Http2RstStreamFrameENS0_18Http2SettingsFrameENS0_14Http2PingFrameENS0_16Http2GoawayFrameENS0_22Http2WindowUpdateFrameENS0_18Http2SecurityFrameENS0_17Http2UnknownFrameENS0_15Http2EmptyFrameEEEEmRKSt7variantIJDpT_EEEUlRKT_E_JRKSD_IJS2_S3_S4_S5_S6_S7_S8_S9_SA_SB_SC_EEEENSt13invoke_resultISJ_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalISS_EEEEE4typeEE4typeEOS11_EEEE4typeEOSJ_DpOSS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(145) %1) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.b = load i8, ptr %i.a, align 8, !tbaa !45
  switch i8 %i.b, label %bb.k [
    i8 -1, label %bb.b
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultImEEZN9grpc_core13MemoryUsageOfIJNS4_14Http2DataFrameENS4_16Http2HeaderFrameENS4_22Http2ContinuationFrameENS4_19Http2RstStreamFrameENS4_18Http2SettingsFrameENS4_14Http2PingFrameENS4_16Http2GoawayFrameENS4_22Http2WindowUpdateFrameENS4_18Http2SecurityFrameENS4_17Http2UnknownFrameENS4_15Http2EmptyFrameEEEEmRKSt7variantIJDpT_EEEUlRKT_E_JRKSH_IJS6_S7_S8_S9_SA_SB_SC_SD_SE_SF_SG_EEEEDcOT0_DpOT1_.exit
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultImEEZN9grpc_core13MemoryUsageOfIJNS4_14Http2DataFrameENS4_16Http2HeaderFrameENS4_22Http2ContinuationFrameENS4_19Http2RstStreamFrameENS4_18Http2SettingsFrameENS4_14Http2PingFrameENS4_16Http2GoawayFrameENS4_22Http2WindowUpdateFrameENS4_18Http2SecurityFrameENS4_17Http2UnknownFrameENS4_15Http2EmptyFrameEEEEmRKSt7variantIJDpT_EEEUlRKT_E_JRKSH_IJS6_S7_S8_S9_SA_SB_SC_SD_SE_SF_SG_EEEEDcOT0_DpOT1_.exit
    i8 8, label %bb.i
    i8 9, label %bb.j
    i8 10, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @.str.32, ptr %i.d, align 8, !tbaa !50
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !64
  %i.g = add i64 %i.f, 144
  br label %_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultImEEZN9grpc_core13MemoryUsageOfIJNS4_14Http2DataFrameENS4_16Http2HeaderFrameENS4_22Http2ContinuationFrameENS4_19Http2RstStreamFrameENS4_18Http2SettingsFrameENS4_14Http2PingFrameENS4_16Http2GoawayFrameENS4_22Http2WindowUpdateFrameENS4_18Http2SecurityFrameENS4_17Http2UnknownFrameENS4_15Http2EmptyFrameEEEEmRKSt7variantIJDpT_EEEUlRKT_E_JRKSH_IJS6_S7_S8_S9_SA_SB_SC_SD_SE_SF_SG_EEEEDcOT0_DpOT1_.exit

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !64
  %i.j = add i64 %i.i, 144
  br label %_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultImEEZN9grpc_core13MemoryUsageOfIJNS4_14Http2DataFrameENS4_16Http2HeaderFrameENS4_22Http2ContinuationFrameENS4_19Http2RstStreamFrameENS4_18Http2SettingsFrameENS4_14Http2PingFrameENS4_16Http2GoawayFrameENS4_22Http2WindowUpdateFrameENS4_18Http2SecurityFrameENS4_17Http2UnknownFrameENS4_15Http2EmptyFrameEEEEmRKSt7variantIJDpT_EEEUlRKT_E_JRKSH_IJS6_S7_S8_S9_SA_SB_SC_SD_SE_SF_SG_EEEEDcOT0_DpOT1_.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !64
  %i.m = add i64 %i.l, 144
  br label %_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultImEEZN9grpc_core13MemoryUsageOfIJNS4_14Http2DataFrameENS4_16Http2HeaderFrameENS4_22Http2ContinuationFrameENS4_19Http2RstStreamFrameENS4_18Http2SettingsFrameENS4_14Http2PingFrameENS4_16Http2GoawayFrameENS4_22Http2WindowUpdateFrameENS4_18Http2SecurityFrameENS4_17Http2UnknownFrameENS4_15Http2EmptyFrameEEEEmRKSt7variantIJDpT_EEEUlRKT_E_JRKSH_IJS6_S7_S8_S9_SA_SB_SC_SD_SE_SF_SG_EEEEDcOT0_DpOT1_.exit

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !93
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !52   ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !53   ; 2 uses
  %i.u = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.v = sub i64 %i.r, %i.u
  %i.w = and i64 %i.v, -8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.q, %i.t
  %i.x = ptrtoaddr ptr %i.q to i64
  %reass.sub.i.i.i.i.i.i = sub i64 %i.u, %i.x
  %i.y = and i64 %reass.sub.i.i.i.i.i.i, -8
  %i.z = select i1 %.not10.i.i.i.i.i.i.i, i64 0, i64 %i.y
  %.0.lcssa.i.in.i.i.i.i.i.i = add i64 %i.w, 32
  %i.aa = add i64 %.0.lcssa.i.in.i.i.i.i.i.i, %i.z
  br label %_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultImEEZN9grpc_core13MemoryUsageOfIJNS4_14Http2DataFrameENS4_16Http2HeaderFrameENS4_22Http2ContinuationFrameENS4_19Http2RstStreamFrameENS4_18Http2SettingsFrameENS4_14Http2PingFrameENS4_16Http2GoawayFrameENS4_22Http2WindowUpdateFrameENS4_18Http2SecurityFrameENS4_17Http2UnknownFrameENS4_15Http2EmptyFrameEEEEmRKSt7variantIJDpT_EEEUlRKT_E_JRKSH_IJS6_S7_S8_S9_SA_SB_SC_SD_SE_SF_SG_EEEEDcOT0_DpOT1_.exit

bb.g:                                             ; preds = %bb.a
  br label %_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultImEEZN9grpc_core13MemoryUsageOfIJNS4_14Http2DataFrameENS4_16Http2HeaderFrameENS4_22Http2ContinuationFrameENS4_19Http2RstStreamFrameENS4_18Http2SettingsFrameENS4_14Http2PingFrameENS4_16Http2GoawayFrameENS4_22Http2WindowUpdateFrameENS4_18Http2SecurityFrameENS4_17Http2UnknownFrameENS4_15Http2EmptyFrameEEEEmRKSt7variantIJDpT_EEEUlRKT_E_JRKSH_IJS6_S7_S8_S9_SA_SB_SC_SD_SE_SF_SG_EEEEDcOT0_DpOT1_.exit

bb.h:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !56
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = and i64 %i.ae, 255
  %i.ag = select i1 %.not.i.i.i.i.i.i.i.i, i64 %i.af, i64 %i.ae
  %i.ah = add i64 %i.ag, 40
  br label %_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultImEEZN9grpc_core13MemoryUsageOfIJNS4_14Http2DataFrameENS4_16Http2HeaderFrameENS4_22Http2ContinuationFrameENS4_19Http2RstStreamFrameENS4_18Http2SettingsFrameENS4_14Http2PingFrameENS4_16Http2GoawayFrameENS4_22Http2WindowUpdateFrameENS4_18Http2SecurityFrameENS4_17Http2UnknownFrameENS4_15Http2EmptyFrameEEEEmRKSt7variantIJDpT_EEEUlRKT_E_JRKSH_IJS6_S7_S8_S9_SA_SB_SC_SD_SE_SF_SG_EEEEDcOT0_DpOT1_.exit

bb.i:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !64
  %i.ak = add i64 %i.aj, 136
  br label %_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultImEEZN9grpc_core13MemoryUsageOfIJNS4_14Http2DataFrameENS4_16Http2HeaderFrameENS4_22Http2ContinuationFrameENS4_19Http2RstStreamFrameENS4_18Http2SettingsFrameENS4_14Http2PingFrameENS4_16Http2GoawayFrameENS4_22Http2WindowUpdateFrameENS4_18Http2SecurityFrameENS4_17Http2UnknownFrameENS4_15Http2EmptyFrameEEEEmRKSt7variantIJDpT_EEEUlRKT_E_JRKSH_IJS6_S7_S8_S9_SA_SB_SC_SD_SE_SF_SG_EEEEDcOT0_DpOT1_.exit

bb.j:                                             ; preds = %bb.a, %bb.a
  br label %_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultImEEZN9grpc_core13MemoryUsageOfIJNS4_14Http2DataFrameENS4_16Http2HeaderFrameENS4_22Http2ContinuationFrameENS4_19Http2RstStreamFrameENS4_18Http2SettingsFrameENS4_14Http2PingFrameENS4_16Http2GoawayFrameENS4_22Http2WindowUpdateFrameENS4_18Http2SecurityFrameENS4_17Http2UnknownFrameENS4_15Http2EmptyFrameEEEEmRKSt7variantIJDpT_EEEUlRKT_E_JRKSH_IJS6_S7_S8_S9_SA_SB_SC_SD_SE_SF_SG_EEEEDcOT0_DpOT1_.exit

bb.k:                                             ; preds = %bb.a
  unreachable

_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultImEEZN9grpc_core13MemoryUsageOfIJNS4_14Http2DataFrameENS4_16Http2HeaderFrameENS4_22Http2ContinuationFrameENS4_19Http2RstStreamFrameENS4_18Http2SettingsFrameENS4_14Http2PingFrameENS4_16Http2GoawayFrameENS4_22Http2WindowUpdateFrameENS4_18Http2SecurityFrameENS4_17Http2UnknownFrameENS4_15Http2EmptyFrameEEEEmRKSt7variantIJDpT_EEEUlRKT_E_JRKSH_IJS6_S7_S8_S9_SA_SB_SC_SD_SE_SF_SG_EEEEDcOT0_DpOT1_.exit: ; preds = %bb.a, %bb.a, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.0.i = phi i64 [ %i.g, %bb.c ], [ %i.j, %bb.d ], [ %i.m, %bb.e ], [ 8, %bb.a ], [ %i.aa, %bb.f ], [ 16, %bb.g ], [ %i.ah, %bb.h ], [ 8, %bb.a ], [ %i.ak, %bb.i ], [ 1, %bb.j ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core17GrpcMessageHeaderENS2_5http211Http2StatusEEED2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %0) unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !97
  %.off = add i8 %i.b, -1
  %switch = icmp ult i8 %.off, -2
  br i1 %switch, label %bb.b, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core17GrpcMessageHeaderENS2_5http211Http2StatusEEE8_M_resetEv.exit, !prof !95

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core17GrpcMessageHeaderENS2_5http211Http2StatusEEE8_M_resetEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !37
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #29
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core17GrpcMessageHeaderENS2_5http211Http2StatusEEE8_M_resetEv.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core17GrpcMessageHeaderENS2_5http211Http2StatusEEE8_M_resetEv.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #24

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold noreturn }
attributes #18 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nounwind }
attributes #26 = { cold }
attributes #27 = { cold nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { builtin nounwind }
attributes #30 = { noreturn }
attributes #31 = { builtin allocsize(0) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTSN9grpc_core18Http2SettingsFrame7SettingE", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"short", !5, i64 0}
!13 = !{!"_ZTSN9grpc_core18Http2SettingsFrame7SettingE", !12, i64 0, !6, i64 4}
!14 = !{!13, !12, i64 0}
!15 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!16 = !{!13, !6, i64 4}
!17 = !{!6, !6, i64 0}
!18 = !{!"long", !5, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"p1 omnipotent char", !9, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !18, i64 0, !20, i64 8}
!23 = !{!22, !18, i64 0}
!24 = !{!22, !20, i64 8}
!25 = !{!"_ZTSN9grpc_core5http214Http2ErrorCodeE", !5, i64 0}
!26 = !{!"_ZTSN9grpc_core5http211Http2Status14Http2ErrorTypeE", !5, i64 0}
!27 = !{!"_ZTSN4absl12lts_2025051210StatusCodeE", !5, i64 0}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !20, i64 0}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !28, i64 0, !18, i64 8, !5, i64 16}
!30 = !{!"_ZTSN9grpc_core5http211Http2StatusE", !25, i64 0, !26, i64 1, !27, i64 4, !29, i64 8}
!31 = !{!30, !25, i64 0}
!32 = !{!30, !26, i64 1}
!33 = !{!30, !27, i64 4}
!34 = !{!28, !20, i64 0}
!35 = !{!29, !20, i64 0}
!36 = !{!29, !18, i64 8}
!37 = !{!5, !5, i64 0}
!38 = !{!"_ZTSN9grpc_core16Http2FrameHeaderE", !6, i64 0, !5, i64 4, !5, i64 5, !6, i64 8}
!39 = !{!38, !6, i64 0}
!40 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!41 = !{!38, !5, i64 4}
!42 = !{!38, !5, i64 5}
!43 = !{!38, !6, i64 8}
!44 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core14Http2DataFrameENS2_16Http2HeaderFrameENS2_22Http2ContinuationFrameENS2_19Http2RstStreamFrameENS2_18Http2SettingsFrameENS2_14Http2PingFrameENS2_16Http2GoawayFrameENS2_22Http2WindowUpdateFrameENS2_18Http2SecurityFrameENS2_17Http2UnknownFrameENS2_15Http2EmptyFrameEEEE", !5, i64 0, !5, i64 144}
!45 = !{!44, !5, i64 144}
!46 = !{!"vtable pointer", !4, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!"_ZTSSt9exception"}
!49 = !{!"_ZTSSt18bad_variant_access", !48, i64 0, !20, i64 8}
!50 = !{!49, !20, i64 8}
!51 = !{!"_ZTSNSt12_Vector_baseIN9grpc_core18Http2SettingsFrame7SettingESaIS2_EE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!52 = !{!51, !10, i64 0}
!53 = !{!51, !10, i64 8}
!54 = !{!"p1 _ZTS19grpc_slice_refcount", !9, i64 0}
!55 = !{!"_ZTS10grpc_slice", !54, i64 0, !5, i64 8}
!56 = !{!55, !54, i64 0}
!57 = !{!"_ZTSSt13__atomic_baseImE", !18, i64 0}
!58 = !{!"_ZTSSt6atomicImE", !57, i64 0}
!59 = !{!"_ZTS19grpc_slice_refcount", !58, i64 0, !9, i64 8}
!60 = !{!59, !9, i64 8}
!61 = !{!"p1 _ZTS10grpc_slice", !9, i64 0}
!62 = !{!"_ZTS17grpc_slice_buffer", !61, i64 0, !61, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !5, i64 40}
!63 = !{!"_ZTSN9grpc_core11SliceBufferE", !62, i64 0}
!64 = !{!63, !18, i64 32}
!65 = !{!"bool", !5, i64 0}
!66 = !{!"_ZTSN9grpc_core14Http2DataFrameE", !6, i64 0, !65, i64 4, !63, i64 8}
!67 = !{!66, !65, i64 4}
!68 = !{i8 0, i8 2}
!69 = !{}
!70 = !{!66, !6, i64 0}
!71 = !{!"_ZTSN9grpc_core12slice_detail9BaseSliceE", !55, i64 0}
!72 = !{!"_ZTSN9grpc_core16Http2HeaderFrameE", !6, i64 0, !65, i64 4, !65, i64 5, !63, i64 8}
!73 = !{!72, !65, i64 4}
!74 = !{!72, !65, i64 5}
!75 = !{!72, !6, i64 0}
!76 = !{!"_ZTSN9grpc_core22Http2ContinuationFrameE", !6, i64 0, !65, i64 4, !63, i64 8}
!77 = !{!76, !65, i64 4}
!78 = !{!76, !6, i64 0}
!79 = !{!"_ZTSNSt12_Vector_baseIN9grpc_core18Http2SettingsFrame7SettingESaIS2_EE12_Vector_implE", !51, i64 0}
!80 = !{!"_ZTSSt12_Vector_baseIN9grpc_core18Http2SettingsFrame7SettingESaIS2_EE", !79, i64 0}
!81 = !{!"_ZTSSt6vectorIN9grpc_core18Http2SettingsFrame7SettingESaIS2_EE", !80, i64 0}
!82 = !{!"_ZTSN9grpc_core18Http2SettingsFrameE", !65, i64 0, !81, i64 8}
!83 = !{!82, !65, i64 0}
!84 = !{!"_ZTSN9grpc_core5SliceE", !71, i64 0}
!85 = !{!"_ZTSN9grpc_core16Http2GoawayFrameE", !6, i64 0, !6, i64 4, !84, i64 8}
!86 = !{!85, !6, i64 0}
!87 = !{!85, !6, i64 4}
!88 = !{!"p1 _ZTSNSt8__detail9__variant15_Move_ctor_baseILb0EJN9grpc_core14Http2DataFrameENS2_16Http2HeaderFrameENS2_22Http2ContinuationFrameENS2_19Http2RstStreamFrameENS2_18Http2SettingsFrameENS2_14Http2PingFrameENS2_16Http2GoawayFrameENS2_22Http2WindowUpdateFrameENS2_18Http2SecurityFrameENS2_17Http2UnknownFrameENS2_15Http2EmptyFrameEEEE", !9, i64 0}
!89 = !{!"_ZTSZNSt8__detail9__variant15_Move_ctor_baseILb0EJN9grpc_core14Http2DataFrameENS2_16Http2HeaderFrameENS2_22Http2ContinuationFrameENS2_19Http2RstStreamFrameENS2_18Http2SettingsFrameENS2_14Http2PingFrameENS2_16Http2GoawayFrameENS2_22Http2WindowUpdateFrameENS2_18Http2SecurityFrameENS2_17Http2UnknownFrameENS2_15Http2EmptyFrameEEEC1EOSE_EUlOT_T0_E_", !88, i64 0}
!90 = !{!89, !88, i64 0}
!91 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb0EJSt7variantIJN9grpc_core14Http2DataFrameENS3_16Http2HeaderFrameENS3_22Http2ContinuationFrameENS3_19Http2RstStreamFrameENS3_18Http2SettingsFrameENS3_14Http2PingFrameENS3_16Http2GoawayFrameENS3_22Http2WindowUpdateFrameENS3_18Http2SecurityFrameENS3_17Http2UnknownFrameENS3_15Http2EmptyFrameEEENS3_5http211Http2StatusEEEE", !5, i64 0, !5, i64 152}
!92 = !{!91, !5, i64 152}
!93 = !{!51, !10, i64 16}
!94 = !{!65, !65, i64 0}
!95 = !{!"branch_weights", i32 2000, i32 2002}
!96 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb0EJN9grpc_core17GrpcMessageHeaderENS2_5http211Http2StatusEEEE", !5, i64 0, !5, i64 40}
!97 = !{!96, !5, i64 40}
!98 = distinct !{!98, i1 false, !"_ZN9grpc_core5http211Http2Status20Http2ConnectionErrorENS0_14Http2ErrorCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!99 = distinct !{!99, !98, !"_ZN9grpc_core5http211Http2Status20Http2ConnectionErrorENS0_14Http2ErrorCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!100 = distinct !{!100, i1 false, !"_ZN9grpc_core5http211Http2Status20Http2ConnectionErrorENS0_14Http2ErrorCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!101 = distinct !{!101, !100, !"_ZN9grpc_core5http211Http2Status20Http2ConnectionErrorENS0_14Http2ErrorCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!102 = distinct !{!102, i1 false, !"_ZN9grpc_core5http211Http2Status2OkEv"}
!103 = distinct !{!103, !102, !"_ZN9grpc_core5http211Http2Status2OkEv: argument 0"}
!104 = !{!99}
!105 = !{!"branch_weights", i32 1, i32 4001}
!106 = !{!101}
!107 = !{!103}
!108 = distinct !{!108, i1 false, !"_ZN9grpc_core12_GLOBAL__N_120Http2FrameTypeStringB5cxx11ENS0_9FrameTypeE"}
!109 = distinct !{!109, !108, !"_ZN9grpc_core12_GLOBAL__N_120Http2FrameTypeStringB5cxx11ENS0_9FrameTypeE: argument 0"}
!110 = distinct !{!110, i1 false, !"_ZN4absl12lts_202505126StrCatIJjA10_cjA2_cEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESC_SC_SC_SC_DpRKT_"}
!111 = distinct !{!111, !110, !"_ZN4absl12lts_202505126StrCatIJjA10_cjA2_cEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESC_SC_SC_SC_DpRKT_: argument 0"}
!112 = !{!109}
!113 = !{!111}
!114 = distinct !{!114, i1 false, !"_ZN9grpc_core12slice_detail9BaseSlice10TakeCSliceEv"}
!115 = distinct !{!115, !114, !"_ZN9grpc_core12slice_detail9BaseSlice10TakeCSliceEv: argument 0"}
!116 = distinct !{!116, i1 false, !"_ZN9grpc_core12slice_detail9BaseSlice10TakeCSliceEv"}
!117 = distinct !{!117, !116, !"_ZN9grpc_core12slice_detail9BaseSlice10TakeCSliceEv: argument 0"}
!118 = distinct !{!118, i1 false, !"_ZN9grpc_core12slice_detail9BaseSlice10TakeCSliceEv"}
!119 = distinct !{!119, !118, !"_ZN9grpc_core12slice_detail9BaseSlice10TakeCSliceEv: argument 0"}
!120 = distinct !{!120, i1 false, !"_ZN9grpc_core12slice_detail9BaseSlice10TakeCSliceEv"}
!121 = distinct !{!121, !120, !"_ZN9grpc_core12slice_detail9BaseSlice10TakeCSliceEv: argument 0"}
!122 = distinct !{!122, i1 false, !"_ZN9grpc_core12slice_detail9BaseSlice10TakeCSliceEv"}
!123 = distinct !{!123, !122, !"_ZN9grpc_core12slice_detail9BaseSlice10TakeCSliceEv: argument 0"}
!124 = distinct !{!124, i1 false, !"_ZN9grpc_core12slice_detail9BaseSlice10TakeCSliceEv"}
!125 = distinct !{!125, !124, !"_ZN9grpc_core12slice_detail9BaseSlice10TakeCSliceEv: argument 0"}
!126 = distinct !{!126, i1 false, !"_ZN9grpc_core12slice_detail9BaseSlice10TakeCSliceEv"}
!127 = distinct !{!127, !126, !"_ZN9grpc_core12slice_detail9BaseSlice10TakeCSliceEv: argument 0"}
!128 = distinct !{!128, i1 false, !"_ZN9grpc_core12slice_detail9BaseSlice10TakeCSliceEv"}
!129 = distinct !{!129, !128, !"_ZN9grpc_core12slice_detail9BaseSlice10TakeCSliceEv: argument 0"}
!130 = distinct !{!130, i1 false, !"_ZN9grpc_core12slice_detail9BaseSlice10TakeCSliceEv"}
!131 = distinct !{!131, !130, !"_ZN9grpc_core12slice_detail9BaseSlice10TakeCSliceEv: argument 0"}
!132 = distinct !{!132, i1 false, !"_ZN9grpc_core12slice_detail9BaseSlice10TakeCSliceEv"}
!133 = distinct !{!133, !132, !"_ZN9grpc_core12slice_detail9BaseSlice10TakeCSliceEv: argument 0"}
!134 = !{!"p1 _ZTSN9grpc_core11SliceBufferE", !9, i64 0}
!135 = !{!134, !134, i64 0}
!136 = !{!"p1 _ZTSN9grpc_core15SerializeReturnE", !9, i64 0}
!137 = !{!136, !136, i64 0}
!138 = !{!71, !54, i64 0}
!139 = !{!"_ZTSN9grpc_core12MutableSliceE", !71, i64 0}
!140 = !{!"_ZTSN9grpc_core12_GLOBAL__N_125SerializeHeaderAndPayloadE", !134, i64 0, !139, i64 8, !136, i64 40}
!141 = !{!140, !134, i64 0}
!142 = !{i64 8}
!143 = !{!115}
!144 = !{!140, !136, i64 40}
!145 = !{!"_ZTSN9grpc_core15SerializeReturnE", !65, i64 0}
!146 = !{!145, !65, i64 0}
!147 = !{!117}
!148 = !{!119}
!149 = !{!"_ZTSN9grpc_core19Http2RstStreamFrameE", !6, i64 0, !6, i64 4}
!150 = !{!149, !6, i64 0}
!151 = !{!149, !6, i64 4}
!152 = !{!121}
!153 = !{!123}
!154 = !{!"_ZTSN9grpc_core14Http2PingFrameE", !65, i64 0, !18, i64 8}
!155 = !{!154, !65, i64 0}
!156 = !{!154, !18, i64 8}
!157 = !{!125}
!158 = !{!127}
!159 = !{!129}
!160 = !{!"_ZTSN9grpc_core22Http2WindowUpdateFrameE", !6, i64 0, !6, i64 4}
!161 = !{!160, !6, i64 0}
end_hunk_5
