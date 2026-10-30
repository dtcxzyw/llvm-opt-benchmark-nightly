Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/avif_dec?download=true
inline.NumInlined: 323
inline.NumDeleted: 231
begin_hunk_0
%class.Result = type { %"class.std::__1::variant" }
%"class.std::__1::variant" = type { %"class.std::__1::__variant_detail::__impl" }
%"class.std::__1::__variant_detail::__impl" = type { %"class.std::__1::__variant_detail::__copy_assignment.base", [4 x i8] }
%"class.std::__1::__variant_detail::__copy_assignment.base" = type { %"class.std::__1::__variant_detail::__move_assignment.base" }
%"class.std::__1::__variant_detail::__move_assignment.base" = type { %"class.std::__1::__variant_detail::__assignment.base" }
%"class.std::__1::__variant_detail::__assignment.base" = type { %"class.std::__1::__variant_detail::__copy_constructor.base" }
%"class.std::__1::__variant_detail::__copy_constructor.base" = type { %"class.std::__1::__variant_detail::__move_constructor.base" }
%"class.std::__1::__variant_detail::__move_constructor.base" = type { %"class.std::__1::__variant_detail::__ctor.base" }
%"class.std::__1::__variant_detail::__ctor.base" = type { %"class.std::__1::__variant_detail::__dtor.base" }
%"class.std::__1::__variant_detail::__dtor.base" = type { %"class.std::__1::__variant_detail::__base.base" }
%"class.std::__1::__variant_detail::__base.base" = type <{ %"union.std::__1::__variant_detail::__union", i32 }>
%"union.std::__1::__variant_detail::__union" = type { %"union.std::__1::__variant_detail::__union.1" }
%"union.std::__1::__variant_detail::__union.1" = type { %"struct.std::__1::__variant_detail::__alt.2" }
%"struct.std::__1::__variant_detail::__alt.2" = type { %class.Error }
%"class.std::__1::vector" = type { ptr, ptr, %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { ptr }
%class.Result.19 = type { %"class.std::__1::variant.20" }
%"class.std::__1::variant.20" = type { [8 x i8], %"class.std::__1::__variant_detail::__impl.21" }
%"class.std::__1::__variant_detail::__impl.21" = type { %"class.std::__1::__variant_detail::__copy_assignment.base.40", [4 x i8] }
%"class.std::__1::__variant_detail::__copy_assignment.base.40" = type { %"class.std::__1::__variant_detail::__move_assignment.base.39" }
%"class.std::__1::__variant_detail::__move_assignment.base.39" = type { %"class.std::__1::__variant_detail::__assignment.base.38" }
%"class.std::__1::__variant_detail::__assignment.base.38" = type { %"class.std::__1::__variant_detail::__copy_constructor.base.37" }
%"class.std::__1::__variant_detail::__copy_constructor.base.37" = type { %"class.std::__1::__variant_detail::__move_constructor.base.36" }
%"class.std::__1::__variant_detail::__move_constructor.base.36" = type { %"class.std::__1::__variant_detail::__ctor.base.35" }
%"class.std::__1::__variant_detail::__ctor.base.35" = type { %"class.std::__1::__variant_detail::__dtor.base.34" }
%"class.std::__1::__variant_detail::__dtor.base.34" = type { %"class.std::__1::__variant_detail::__base.base.33" }
%"class.std::__1::__variant_detail::__base.base.33" = type <{ %"union.std::__1::__variant_detail::__union.30", i32 }>
%"union.std::__1::__variant_detail::__union.30" = type { %"union.std::__1::__variant_detail::__union.1" }
%class.Result.42 = type { %"class.std::__1::variant.43" }
%"class.std::__1::variant.43" = type { %"class.std::__1::__variant_detail::__impl.44" }
%"class.std::__1::__variant_detail::__impl.44" = type { %"class.std::__1::__variant_detail::__copy_assignment.base.63", [4 x i8] }
%"class.std::__1::__variant_detail::__copy_assignment.base.63" = type { %"class.std::__1::__variant_detail::__move_assignment.base.62" }
%"class.std::__1::__variant_detail::__move_assignment.base.62" = type { %"class.std::__1::__variant_detail::__assignment.base.61" }
%"class.std::__1::__variant_detail::__assignment.base.61" = type { %"class.std::__1::__variant_detail::__copy_constructor.base.60" }
%"class.std::__1::__variant_detail::__copy_constructor.base.60" = type { %"class.std::__1::__variant_detail::__move_constructor.base.59" }
%"class.std::__1::__variant_detail::__move_constructor.base.59" = type { %"class.std::__1::__variant_detail::__ctor.base.58" }
%"class.std::__1::__variant_detail::__ctor.base.58" = type { %"class.std::__1::__variant_detail::__dtor.base.57" }
%"class.std::__1::__variant_detail::__dtor.base.57" = type { %"class.std::__1::__variant_detail::__base.base.56" }
%"class.std::__1::__variant_detail::__base.base.56" = type <{ %"union.std::__1::__variant_detail::__union.53", i32 }>
%"union.std::__1::__variant_detail::__union.53" = type { %"union.std::__1::__variant_detail::__union.1" }

$_ZN12Decoder_AVIFD2Ev = comdat any

$_ZN12Decoder_AVIFD0Ev = comdat any

$_ZNK12Decoder_AVIF22get_compression_formatEv = comdat any

$_ZNK7Decoder32get_coded_image_size_from_configEv = comdat any

$_ZNSt3__16vectorIhNS_9allocatorIhEEE18__assign_with_sizeB8ne180100IPhS5_EEvT_T0_l = comdat any

$_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8ne180100Ev = comdat any

$_ZNSt3__120__throw_length_errorB8ne180100EPKc = comdat any

$_ZNSt12length_errorC2B8ne180100EPKc = comdat any

$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev = comdat any

$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm = comdat any

@_ZN5Error2OkE = external local_unnamed_addr global %class.Error, align 8
@_ZTV12Decoder_AVIF = hidden constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr @_ZTI12Decoder_AVIF, ptr @_ZN12Decoder_AVIFD2Ev, ptr @_ZN12Decoder_AVIFD0Ev, ptr @_ZNK12Decoder_AVIF22get_compression_formatEv, ptr @_ZNK12Decoder_AVIF23get_luma_bits_per_pixelEv, ptr @_ZNK12Decoder_AVIF25get_chroma_bits_per_pixelEv, ptr @_ZNK12Decoder_AVIF26get_coded_image_colorspaceEP15heif_colorspaceP11heif_chroma, ptr @_ZNK12Decoder_AVIF33read_bitstream_configuration_dataEv, ptr @_ZNK7Decoder32get_coded_image_size_from_configEv, ptr @_ZN7Decoder40decode_single_frame_from_compressed_dataERK21heif_decoding_optionsPK20heif_security_limits, ptr @_ZN7Decoder42decode_sequence_frame_from_compressed_dataEbRK21heif_decoding_optionsmPK20heif_security_limits, ptr @_ZN7Decoder13flush_decoderEv, ptr @_ZN7Decoder17get_decoded_frameERK21heif_decoding_optionsPmPK20heif_security_limits] }, align 8
@_ZTI12Decoder_AVIF = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS12Decoder_AVIF, ptr @_ZTI7Decoder }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS12Decoder_AVIF = hidden constant [15 x i8] c"12Decoder_AVIF\00", align 1
@_ZTI7Decoder = external constant ptr
@.str.1 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@_ZTISt12length_error = external constant ptr
@_ZTVSt12length_error = external constant { [5 x ptr] }, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"basic_string\00", align 1

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK12Decoder_AVIF33read_bitstream_configuration_dataEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.Result) align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__1::vector", align 16 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %.not.i.i = icmp eq ptr %2, %i.c
  br i1 %.not.i.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit15, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  invoke void @_ZNSt3__16vectorIhNS_9allocatorIhEEE18__assign_with_sizeB8ne180100IPhS5_EEvT_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.i)
          to label %._crit_edge unwind label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %i.j = load <2 x ptr>, ptr %2, align 16, !tbaa !19
  %.phi.trans.insert21 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre22 = load ptr, ptr %.phi.trans.insert21, align 16, !tbaa !19
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit15

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit15: ; preds = %bb.a, %._crit_edge
  %i.k = phi ptr [ %.pre22, %._crit_edge ], [ null, %bb.a ]
  %i.l = phi <2 x ptr> [ %i.j, %._crit_edge ], [ splat (ptr null), %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x ptr> %i.l, ptr %0, align 8, !tbaa !19
  store ptr %i.k, ptr %i.m, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.n, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %2, align 16, !tbaa !17    ; 4 uses
  %.not.i.i16 = icmp eq ptr %i.p, null
  br i1 %.not.i.i16, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit17, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load ptr, ptr %i.r, align 16, !tbaa !19
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.v) #16
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit17

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit17: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %i.o
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i32 8, 13) i32 @_ZNK12Decoder_AVIF23get_luma_bits_per_pixelEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 157
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 1, !tbaa !20
  %.not = icmp eq i8 %.sroa.3.0.copyload, 0
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 158
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 1
  %.not1 = icmp eq i8 %.sroa.4.0.copyload, 0
  %. = select i1 %.not1, i32 10, i32 12
  %.0 = select i1 %.not, i32 8, i32 %.
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZNK12Decoder_AVIF25get_chroma_bits_per_pixelEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(128) %0)
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK12Decoder_AVIF26get_coded_image_colorspaceEP15heif_colorspaceP11heif_chroma(ptr dead_on_unwind noalias writable sret(%class.Error) align 8 initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 159
  %i.d = load i8, ptr %i.c, align 1, !tbaa !27
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %bb.b, label %_ZNK8Box_av1C13configuration15get_heif_chromaEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i8, ptr %i.e, align 1, !tbaa !28    ; 2 uses
  %i.g = icmp eq i8 %i.f, 1                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 161
  %i.i = load i8, ptr %i.h, align 1               ; 2 uses
  %i.j = icmp eq i8 %i.i, 1
  %or.cond.i = select i1 %i.g, i1 %i.j, i1 false
  br i1 %or.cond.i, label %_ZNK8Box_av1C13configuration15get_heif_chromaEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i8 %i.i, 0                       ; 2 uses
  %or.cond5.i = select i1 %i.g, i1 %i.k, i1 false
  br i1 %or.cond5.i, label %_ZNK8Box_av1C13configuration15get_heif_chromaEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp eq i8 %i.f, 0
  %or.cond8.i = select i1 %i.l, i1 %i.k, i1 false
  %or.cond8.i.fr = freeze i1 %or.cond8.i
  %spec.select.i = select i1 %or.cond8.i.fr, i32 3, i32 99
  br label %_ZNK8Box_av1C13configuration15get_heif_chromaEv.exit.thread

_ZNK8Box_av1C13configuration15get_heif_chromaEv.exit.thread: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %storemerge = phi i32 [ %spec.select.i, %bb.d ], [ 0, %bb.a ], [ 1, %bb.b ], [ 2, %bb.c ] ; 2 uses
  store i32 %storemerge, ptr %3, align 4, !tbaa !30
  %4 = icmp eq i32 %storemerge, 0
  %spec.select = select i1 %4, i32 2, i32 0
  store i32 %spec.select, ptr %2, align 4, !tbaa !32
  %i.m = load i64, ptr @_ZN5Error2OkE, align 8
  store i64 %i.m, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 8), align 8
  %i.p = trunc i8 %i.o to i1
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK8Box_av1C13configuration15get_heif_chromaEv.exit.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 8), i64 24, i1 false), !tbaa.struct !33
  br label %_ZN5ErrorC2ERKS_.exit

bb.f:                                             ; preds = %_ZNK8Box_av1C13configuration15get_heif_chromaEv.exit.thread
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 24), align 8, !tbaa !20
  %i.r = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 16), align 8, !tbaa !20
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef %i.q, i64 noundef %i.r)
  br label %_ZN5ErrorC2ERKS_.exit

_ZN5ErrorC2ERKS_.exit:                            ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12Decoder_AVIFD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV12Decoder_AVIF, i64 16), ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt3__110shared_ptrIK8Box_av1CED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt3__110shared_ptrIK8Box_av1CED2B8ne180100Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #15, !inline_history !34
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #15
  br label %_ZNSt3__110shared_ptrIK8Box_av1CED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrIK8Box_av1CED2B8ne180100Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN7DecoderD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) #15
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12Decoder_AVIFD0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV12Decoder_AVIF, i64 16), ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN12Decoder_AVIFD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN12Decoder_AVIFD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #15, !inline_history !35
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #15, !inline_history !36
  br label %_ZN12Decoder_AVIFD2Ev.exit

_ZN12Decoder_AVIFD2Ev.exit:                       ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN7DecoderD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(128) %0) #15, !inline_history !36
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK12Decoder_AVIF22get_compression_formatEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i32 4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK7Decoder32get_coded_image_size_from_configEv(ptr dead_on_unwind noalias writable sret(%class.Result.19) align 8 %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %.sroa.2.0..sroa_idx1.i, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.b, align 8, !tbaa !38
  ret void
}

declare void @_ZN7Decoder40decode_single_frame_from_compressed_dataERK21heif_decoding_optionsPK20heif_security_limits(ptr dead_on_unwind writable sret(%class.Result.42) align 8, ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(120), ptr noundef) unnamed_addr #5

declare void @_ZN7Decoder42decode_sequence_frame_from_compressed_dataEbRK21heif_decoding_optionsmPK20heif_security_limits(ptr dead_on_unwind writable sret(%class.Error) align 8, ptr noundef nonnull align 8 dereferenceable(112), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(120), i64 noundef, ptr noundef) unnamed_addr #5

declare void @_ZN7Decoder13flush_decoderEv(ptr dead_on_unwind writable sret(%class.Error) align 8, ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #5

declare void @_ZN7Decoder17get_decoded_frameERK21heif_decoding_optionsPmPK20heif_security_limits(ptr dead_on_unwind writable sret(%class.Result.42) align 8, ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(120), ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIhNS_9allocatorIhEEE18__assign_with_sizeB8ne180100IPhS5_EEvT_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !17     ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18   ; 3 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.e                       ; 3 uses
  %i.k = icmp ugt i64 %3, %i.j
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %1, i64 %i.j ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__14copyB8ne180100IPhS1_EET0_T_S3_S2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.c, ptr align 1 %1, i64 %i.j, i1 false)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !18
  br label %_ZNSt3__14copyB8ne180100IPhS1_EET0_T_S3_S2_.exit

_ZNSt3__14copyB8ne180100IPhS1_EET0_T_S3_S2_.exit: ; preds = %bb.c, %bb.d
  %i.n = phi ptr [ %i.h, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %i.o = ptrtoint ptr %2 to i64
  %i.p = sub i64 %i.o, %i.m                       ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %2, %i.l
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__14copyB8ne180100IPhS1_EET0_T_S3_S2_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.l, i64 %i.p, i1 false)
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit: ; preds = %_ZNSt3__14copyB8ne180100IPhS1_EET0_T_S3_S2_.exit, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  store ptr %i.q, ptr %i.g, align 8, !tbaa !18
  br label %bb.l

bb.f:                                             ; preds = %bb.b
  %i.r = ptrtoint ptr %2 to i64
  %i.s = ptrtoint ptr %1 to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %2, %1
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__16__copyB8ne180100INS_17_ClassicAlgPolicyEPhS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.c, ptr align 1 %1, i64 %i.t, i1 false)
  br label %_ZNSt3__16__copyB8ne180100INS_17_ClassicAlgPolicyEPhS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_.exit

_ZNSt3__16__copyB8ne180100INS_17_ClassicAlgPolicyEPhS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_.exit: ; preds = %bb.f, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.t
  store ptr %i.u, ptr %i.g, align 8, !tbaa !18
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE13__vdeallocateEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.v, align 8, !tbaa !18
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE13__vdeallocateEv.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEE13__vdeallocateEv.exit: ; preds = %bb.h, %bb.i
  %i.w = phi ptr [ %i.b, %bb.h ], [ null, %bb.i ] ; 2 uses
  %i.x = icmp slt i64 %3, 0
  br i1 %i.x, label %bb.j, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE11__vallocateB8ne180100Em.exit

bb.j:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE13__vdeallocateEv.exit
  tail call void @_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  unreachable

_ZNSt3__16vectorIhNS_9allocatorIhEEE11__vallocateB8ne180100Em.exit: ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE13__vdeallocateEv.exit
  %i.y = ptrtoint ptr %i.w to i64
  %.not.i16 = icmp ult ptr %i.w, inttoptr (i64 4611686018427387903 to ptr)
  %i.z = shl nuw nsw i64 %i.y, 1
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.z, i64 %3)
  %.0.i = select i1 %.not.i16, i64 %.sroa.speculated.i, i64 9223372036854775807 ; 2 uses
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i) #18 ; 5 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !17
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.0.i
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !19
  %i.ad = ptrtoint ptr %2 to i64
end_hunk_0
