Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/jpeg_dec?download=true
inline.NumInlined: 384
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.Error = type { i32, i32, %"class.std::__1::basic_string" }
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair.3" }
%"class.std::__1::__compressed_pair.3" = type { %"struct.std::__1::__compressed_pair_elem.4" }
%"struct.std::__1::__compressed_pair_elem.4" = type { %"struct.std::__1::basic_string<char>::__rep" }
%"struct.std::__1::basic_string<char>::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char>::__long" }
%"struct.std::__1::basic_string<char>::__long" = type { %struct.anon.5, i64, ptr }
%struct.anon.5 = type { i64 }
%"struct.std::__1::__farray" = type { [2 x ptr] }
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
%class.anon = type { i8 }
%class.Result.20 = type { %"class.std::__1::variant.21" }
%"class.std::__1::variant.21" = type { [8 x i8], %"class.std::__1::__variant_detail::__impl.22" }
%"class.std::__1::__variant_detail::__impl.22" = type { %"class.std::__1::__variant_detail::__copy_assignment.base.55", [4 x i8] }
%"class.std::__1::__variant_detail::__copy_assignment.base.55" = type { %"class.std::__1::__variant_detail::__move_assignment.base.54" }
%"class.std::__1::__variant_detail::__move_assignment.base.54" = type { %"class.std::__1::__variant_detail::__assignment.base.53" }
%"class.std::__1::__variant_detail::__assignment.base.53" = type { %"class.std::__1::__variant_detail::__copy_constructor.base.52" }
%"class.std::__1::__variant_detail::__copy_constructor.base.52" = type { %"class.std::__1::__variant_detail::__move_constructor.base.51" }
%"class.std::__1::__variant_detail::__move_constructor.base.51" = type { %"class.std::__1::__variant_detail::__ctor.base.50" }
%"class.std::__1::__variant_detail::__ctor.base.50" = type { %"class.std::__1::__variant_detail::__dtor.base.49" }
%"class.std::__1::__variant_detail::__dtor.base.49" = type { %"class.std::__1::__variant_detail::__base.base.48" }
%"class.std::__1::__variant_detail::__base.base.48" = type <{ %"union.std::__1::__variant_detail::__union.31", i32 }>
%"union.std::__1::__variant_detail::__union.31" = type { %"union.std::__1::__variant_detail::__union.1" }
%class.Result.57 = type { %"class.std::__1::variant.58" }
%"class.std::__1::variant.58" = type { %"class.std::__1::__variant_detail::__impl.59" }
%"class.std::__1::__variant_detail::__impl.59" = type { %"class.std::__1::__variant_detail::__copy_assignment.base.78", [4 x i8] }
%"class.std::__1::__variant_detail::__copy_assignment.base.78" = type { %"class.std::__1::__variant_detail::__move_assignment.base.77" }
%"class.std::__1::__variant_detail::__move_assignment.base.77" = type { %"class.std::__1::__variant_detail::__assignment.base.76" }
%"class.std::__1::__variant_detail::__assignment.base.76" = type { %"class.std::__1::__variant_detail::__copy_constructor.base.75" }
%"class.std::__1::__variant_detail::__copy_constructor.base.75" = type { %"class.std::__1::__variant_detail::__move_constructor.base.74" }
%"class.std::__1::__variant_detail::__move_constructor.base.74" = type { %"class.std::__1::__variant_detail::__ctor.base.73" }
%"class.std::__1::__variant_detail::__ctor.base.73" = type { %"class.std::__1::__variant_detail::__dtor.base.72" }
%"class.std::__1::__variant_detail::__dtor.base.72" = type { %"class.std::__1::__variant_detail::__base.base.71" }
%"class.std::__1::__variant_detail::__base.base.71" = type <{ %"union.std::__1::__variant_detail::__union.68", i32 }>
%"union.std::__1::__variant_detail::__union.68" = type { %"union.std::__1::__variant_detail::__union.1" }

$_ZN6ResultINSt3__16vectorIhNS0_9allocatorIhEEEEED2Ev = comdat any

$_ZN12Decoder_JPEGD2Ev = comdat any

$_ZN12Decoder_JPEGD0Ev = comdat any

$_ZNK12Decoder_JPEG22get_compression_formatEv = comdat any

$_ZNK7Decoder32get_coded_image_size_from_configEv = comdat any

$_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8ne180100Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt3__120__throw_length_errorB8ne180100EPKc = comdat any

$_ZNSt12length_errorC2B8ne180100EPKc = comdat any

$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm = comdat any

$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev = comdat any

$_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne180100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS0_6__baseILSE_1EJSB_SC_EEEEEEDcSG_DpT0_ = comdat any

$_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne180100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS0_6__baseILSE_1EJSB_SC_EEEEEEDcSG_DpT0_ = comdat any

$_ZNSt3__126__throw_bad_variant_accessB8ne180100Ev = comdat any

@_ZN5Error2OkE = external local_unnamed_addr global %class.Error, align 8
@.str = private unnamed_addr constant [24 x i8] c"Invalid JPEG SOF header\00", align 1
@_ZL5isSOF = internal unnamed_addr constant [16 x i8] c"\01\01\01\01\00\01\01\01\00\01\01\01\00\01\01\01", align 16
@_ZTV12Decoder_JPEG = hidden constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr @_ZTI12Decoder_JPEG, ptr @_ZN12Decoder_JPEGD2Ev, ptr @_ZN12Decoder_JPEGD0Ev, ptr @_ZNK12Decoder_JPEG22get_compression_formatEv, ptr @_ZNK12Decoder_JPEG23get_luma_bits_per_pixelEv, ptr @_ZNK12Decoder_JPEG25get_chroma_bits_per_pixelEv, ptr @_ZNK12Decoder_JPEG26get_coded_image_colorspaceEP15heif_colorspaceP11heif_chroma, ptr @_ZNK12Decoder_JPEG33read_bitstream_configuration_dataEv, ptr @_ZNK7Decoder32get_coded_image_size_from_configEv, ptr @_ZN7Decoder40decode_single_frame_from_compressed_dataERK21heif_decoding_optionsPK20heif_security_limits, ptr @_ZN7Decoder42decode_sequence_frame_from_compressed_dataEbRK21heif_decoding_optionsmPK20heif_security_limits, ptr @_ZN7Decoder13flush_decoderEv, ptr @_ZN7Decoder17get_decoded_frameERK21heif_decoding_optionsPmPK20heif_security_limits] }, align 8
@_ZTI12Decoder_JPEG = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS12Decoder_JPEG, ptr @_ZTI7Decoder }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS12Decoder_JPEG = hidden constant [15 x i8] c"12Decoder_JPEG\00", align 1
@_ZTI7Decoder = external constant ptr
@.str.1 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@_ZTISt12length_error = external constant ptr
@_ZTVSt12length_error = external constant { [5 x ptr] }, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"basic_string\00", align 1
@__const._ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRSD_EEEDcOSE_DpOT0_.__fmatrix = private unnamed_addr constant %"struct.std::__1::__farray" { [2 x ptr] [ptr @_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne180100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS0_6__baseILSE_1EJSB_SC_EEEEEEDcSG_DpT0_, ptr @_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne180100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS0_6__baseILSE_1EJSB_SC_EEEEEEDcSG_DpT0_] }, align 8
@_ZTISt18bad_variant_access = external constant ptr
@_ZTVSt18bad_variant_access = external constant { [5 x ptr] }, align 8

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK12Decoder_JPEG33read_bitstream_configuration_dataEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.Result) align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(148) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__1::vector", align 8  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit3, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !17   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j                       ; 4 uses
  %.not.i.i = icmp eq ptr %i.h, %i.f
  br i1 %.not.i.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #15
          to label %.noexc.i.i unwind label %bb.f

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #16
          to label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit.i.i unwind label %bb.f ; 3 uses

_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit.i.i: ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr align 1 %i.f, i64 %i.k, i1 false)
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %2, align 8, !tbaa !17     ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZNSt3__128__exception_guard_exceptionsINS_6vectorIhNS_9allocatorIhEEE16__destroy_vectorEED2B8ne180100Ev.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.p, ptr %i.d, align 8, !tbaa !18
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.t) #17
  br label %_ZNSt3__128__exception_guard_exceptionsINS_6vectorIhNS_9allocatorIhEEE16__destroy_vectorEED2B8ne180100Ev.exit.i.i

_ZNSt3__128__exception_guard_exceptionsINS_6vectorIhNS_9allocatorIhEEE16__destroy_vectorEED2B8ne180100Ev.exit.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.o

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit.i.i, %bb.b
  %i.u = phi ptr [ %i.n, %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit.i.i ], [ null, %bb.b ] ; 2 uses
  %i.v = phi ptr [ %i.m, %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endIPhS5_EEvT_T0_m.exit.i.i ], [ null, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.v, ptr %0, align 8, !tbaa !17
  store ptr %i.u, ptr %i.w, align 8, !tbaa !18
  store ptr %i.u, ptr %i.x, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.y, align 8, !tbaa !21
  br label %bb.h

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit3: ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.z, align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit3, %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define hidden void @_ZN12Decoder_JPEG9parse_SOFEv(ptr dead_on_unwind noalias writable sret(%class.Error) align 8 %0, ptr noundef nonnull align 8 dereferenceable(148) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon, align 1                ; 3 uses
  %3 = alloca %class.Result, align 8              ; 12 uses
  %4 = alloca %class.Error, align 8               ; 30 uses
  %5 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !43, !range !44, !noundef !45
  %i.d = trunc nuw i8 %i.c to i1
  %.0.i.sroa.gep = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.0.i.sroa.gep127 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.0.i.sroa.gep129 = getelementptr inbounds nuw i8, ptr %3, i64 16
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr @_ZN5Error2OkE, align 8
  store i64 %i.e, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 8), align 8
  %i.h = trunc i8 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 8), i64 24, i1 false), !tbaa.struct !23
  br label %_ZN5ErrorC2ERKS_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 24), align 8, !tbaa !22
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 16), align 8, !tbaa !22
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef %i.i, i64 noundef %i.j)
  br label %_ZN5ErrorC2ERKS_.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZNK7Decoder19get_compressed_dataEb(ptr dead_on_unwind nonnull writable sret(%class.Result) align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %1, i1 noundef zeroext true)
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !21
  switch i32 %i.l, label %bb.f [
    i32 0, label %_ZN6ResultINSt3__16vectorIhNS0_9allocatorIhEEEEEdeEv.exit
    i32 1, label %_ZNK6ResultINSt3__16vectorIhNS0_9allocatorIhEEEEE5errorEv.exit
  ]

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNSt3__126__throw_bad_variant_accessB8ne180100Ev() #15
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNK6ResultINSt3__16vectorIhNS0_9allocatorIhEEEEE5errorEv.exit: ; preds = %bb.e
  %i.m = load i64, ptr %3, align 8
  store i64 %i.m, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i8, ptr %.0.i.sroa.gep, align 8
  %i.p = trunc i8 %i.o to i1
  br i1 %i.p, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK6ResultINSt3__16vectorIhNS0_9allocatorIhEEEEE5errorEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %.0.i.sroa.gep, i64 24, i1 false), !tbaa.struct !23
  br label %_ZN5ErrorC2ERKS_.exit105

bb.h:                                             ; preds = %_ZNK6ResultINSt3__16vectorIhNS0_9allocatorIhEEEEE5errorEv.exit
  %i.q = load ptr, ptr %.0.i.sroa.gep127, align 8, !tbaa !22
  %i.r = load i64, ptr %.0.i.sroa.gep129, align 8, !tbaa !22
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef %i.q, i64 noundef %i.r)
          to label %_ZN5ErrorC2ERKS_.exit105 unwind label %bb.k

_ZN6ResultINSt3__16vectorIhNS0_9allocatorIhEEEEEdeEv.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.s = invoke noalias noundef nonnull dereferenceable(25) ptr @_Znwm(i64 noundef 25) #16
          to label %.noexc108 unwind label %bb.l  ; 3 uses

.noexc108:                                        ; preds = %_ZN6ResultINSt3__16vectorIhNS0_9allocatorIhEEEEEdeEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !22
  store i64 25, ptr %5, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 23, ptr %i.u, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.s, ptr noundef nonnull align 1 dereferenceable(23) @.str, i64 23, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 23
  store i8 0, ptr %i.v, align 1, !tbaa !22
  invoke void @_ZN5ErrorC1E15heif_error_code18heif_suberror_codeRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 2, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %.noexc108
  %i.w = load i8, ptr %5, align 8
  %i.x = trunc i8 %i.w to i1
  br i1 %i.x, label %bb.j, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !22
  %i.z = load i64, ptr %5, align 8
  %i.aa = and i64 %i.z, -2
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.aa) #17
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.ab = load ptr, ptr %.0.i.sroa.gep, align 8, !tbaa !18
  %i.ac = load ptr, ptr %3, align 8, !tbaa !17    ; 6 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 4 uses
  %.not98134 = icmp ugt i64 %i.af, 1
  br i1 %.not98134, label %.lr.ph, label %.critedge

bb.k:                                             ; preds = %bb.h, %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.l:                                             ; preds = %_ZN6ResultINSt3__16vectorIhNS0_9allocatorIhEEEEEdeEv.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit109

bb.m:                                             ; preds = %.noexc108
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load i8, ptr %5, align 8
  %i.ak = trunc i8 %i.aj to i1
  br i1 %i.ak, label %bb.n, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit109

bb.n:                                             ; preds = %bb.m
  %i.al = load ptr, ptr %i.t, align 8, !tbaa !22
  %i.am = load i64, ptr %5, align 8
  %i.an = and i64 %i.am, -2
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.an) #17
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit109

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit109: ; preds = %bb.n, %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.l ], [ %i.ai, %bb.m ], [ %i.ai, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %_ZN5ErrorD2Ev.exit124

.lr.ph:                                           ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %bb.ar
  %i.ao = phi i64 [ %i.ee, %bb.ar ], [ 1, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit ] ; 3 uses
  %.074135 = phi i64 [ %i.ao, %bb.ar ], [ 0, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit ] ; 4 uses
  %i.ap = getelementptr i8, ptr %i.ac, i64 %.074135
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !22
  %i.ar = icmp eq i8 %i.aq, -1
  br i1 %i.ar, label %bb.o, label %bb.ar

bb.o:                                             ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ao
  %i.at = load i8, ptr %i.as, align 1, !tbaa !22  ; 2 uses
  %i.au = and i8 %i.at, -16
  %i.av = icmp eq i8 %i.au, -64
  br i1 %i.av, label %bb.p, label %bb.ar

bb.p:                                             ; preds = %bb.o
  %i.aw = and i8 %i.at, 15
  %i.ax = zext nneg i8 %i.aw to i64
  %6 = getelementptr inbounds nuw i8, ptr @_ZL5isSOF, i64 %i.ax
  %7 = load i8, ptr %6, align 1, !tbaa !46, !range !44, !noundef !45
  %8 = trunc nuw i8 %7 to i1
  br i1 %8, label %bb.q, label %bb.ar

bb.q:                                             ; preds = %bb.p
  %i.ay = add i64 %.074135, 9                     ; 2 uses
  %.not.a = icmp ult i64 %i.ay, %i.af
  br i1 %.not.a, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = load i64, ptr %4, align 8
  store i64 %i.az, ptr %0, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 8
  %i.bd = trunc i8 %i.bc to i1
  br i1 %i.bd, label %.invoke, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false), !tbaa.struct !23
  br label %_ZN5ErrorC2ERKS_.exit111

bb.t:                                             ; preds = %bb.q
  %i.be = getelementptr i8, ptr %i.ac, i64 %.074135
  %i.bf = getelementptr i8, ptr %i.be, i64 4
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !22  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ay
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !22  ; 7 uses
  %i.bj = add i64 %.074135, 11                    ; 2 uses
  %i.bk = zext i8 %i.bi to i64
  %i.bl = mul nuw nsw i64 %i.bk, 3
  %i.bm = add i64 %i.bl, %i.bj
  %.not90 = icmp ult i64 %i.bm, %i.af
  br i1 %.not90, label %.preheader, label %bb.u

.preheader:                                       ; preds = %bb.t
  %.not138 = icmp eq i8 %i.bi, 0
  br i1 %.not138, label %._crit_edge.thread, label %.lr.ph137

.lr.ph137:                                        ; preds = %.preheader
  %i.bn = getelementptr i8, ptr %i.ac, i64 %i.bj  ; 3 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !22  ; 2 uses
  %i.bp = lshr i8 %i.bo, 4                        ; 4 uses
  %i.bq = and i8 %i.bo, 15                        ; 4 uses
  %exitcond141.not = icmp eq i8 %i.bi, 1
  br i1 %exitcond141.not, label %._crit_edge, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.br = load i64, ptr %4, align 8
  store i64 %i.br, ptr %0, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 8
  %i.bv = trunc i8 %i.bu to i1
  br i1 %i.bv, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i64 24, i1 false), !tbaa.struct !23
  br label %_ZN5ErrorC2ERKS_.exit111

bb.w:                                             ; preds = %bb.u
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !22
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !22
  br label %.invoke150

bb.x:                                             ; preds = %.invoke, %.invoke150
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 8
  %i.cd = trunc i8 %i.cc to i1
  br i1 %i.cd, label %bb.au, label %_ZN5ErrorD2Ev.exit124

._crit_edge:                                      ; preds = %bb.z, %bb.y, %.lr.ph137
  %.sroa.11.0 = phi i8 [ 0, %.lr.ph137 ], [ %i.cg, %bb.y ], [ %i.cg, %bb.z ] ; 4 uses
  %.sroa.13.0 = phi i8 [ 0, %.lr.ph137 ], [ 0, %bb.y ], [ %i.ck, %bb.z ] ; 3 uses
  %.sroa.17.0 = phi i8 [ 0, %.lr.ph137 ], [ %i.ch, %bb.y ], [ %i.ch, %bb.z ] ; 4 uses
  %.sroa.19.0 = phi i8 [ 0, %.lr.ph137 ], [ 0, %bb.y ], [ %i.cl, %bb.z ] ; 3 uses
  switch i8 %i.bi, label %._crit_edge.thread [
    i8 1, label %bb.am
    i8 3, label %bb.ac
  ]

bb.y:                                             ; preds = %.lr.ph137
  %i.ce = getelementptr i8, ptr %i.bn, i64 3
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !22  ; 2 uses
  %i.cg = lshr i8 %i.cf, 4                        ; 2 uses
  %i.ch = and i8 %i.cf, 15                        ; 2 uses
  %exitcond141.not.1 = icmp eq i8 %i.bi, 2
  br i1 %exitcond141.not.1, label %._crit_edge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ci = getelementptr i8, ptr %i.bn, i64 6
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !22  ; 2 uses
  %i.ck = lshr i8 %i.cj, 4
  %i.cl = and i8 %i.cj, 15
  br label %._crit_edge

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %i.cm = load i64, ptr %4, align 8
  store i64 %i.cm, ptr %0, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 8
  %i.cq = trunc i8 %i.cp to i1
  br i1 %i.cq, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 24, i1 false), !tbaa.struct !23
  br label %_ZN5ErrorC2ERKS_.exit111

bb.ab:                                            ; preds = %._crit_edge.thread
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !22
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !22
  br label %.invoke150

bb.ac:                                            ; preds = %._crit_edge
  %.not92 = icmp eq i8 %.sroa.11.0, %.sroa.13.0
  %.not93 = icmp eq i8 %.sroa.17.0, %.sroa.19.0
  %or.cond188 = select i1 %.not92, i1 %.not93, i1 false
  br i1 %or.cond188, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cv = load i64, ptr %4, align 8
  store i64 %i.cv, ptr %0, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 8
  %i.cz = trunc i8 %i.cy to i1
  br i1 %i.cz, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i64 24, i1 false), !tbaa.struct !23
  br label %_ZN5ErrorC2ERKS_.exit111

bb.af:                                            ; preds = %bb.ad
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !22
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !22
  br label %.invoke150

bb.ag:                                            ; preds = %bb.ac
  %i.de = icmp eq i8 %i.bp, 2                     ; 2 uses
  %i.df = icmp eq i8 %i.bq, 2
  %or.cond = and i1 %i.de, %i.df
  %i.dg = icmp eq i8 %.sroa.11.0, 1               ; 3 uses
  %or.cond9 = and i1 %i.dg, %or.cond
  %i.dh = icmp eq i8 %.sroa.17.0, 1               ; 3 uses
  %or.cond14 = and i1 %i.dh, %or.cond9
  br i1 %or.cond14, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.di = icmp eq i8 %i.bq, 1                     ; 2 uses
  %or.cond19 = and i1 %i.de, %i.di
  %or.cond24 = and i1 %i.dg, %or.cond19
  %or.cond29 = and i1 %i.dh, %or.cond24
  br i1 %or.cond29, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dj = icmp eq i8 %i.bp, 1
  %or.cond34 = and i1 %i.dj, %i.di
  %or.cond39 = and i1 %i.dg, %or.cond34
  %or.cond44 = and i1 %i.dh, %or.cond39
  br i1 %or.cond44, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dk = load i64, ptr %4, align 8
  store i64 %i.dk, ptr %0, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 8
  %i.do = trunc i8 %i.dn to i1
  br i1 %i.do, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i64 24, i1 false), !tbaa.struct !23
  br label %_ZN5ErrorC2ERKS_.exit111

bb.al:                                            ; preds = %bb.aj
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !22
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !22
  br label %.invoke150

bb.am:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %._crit_edge
  %.sink = phi i32 [ 1, %bb.ag ], [ 2, %bb.ah ], [ 0, %._crit_edge ], [ 3, %bb.ai ] ; 2 uses
  %i.dt = load i8, ptr %i.b, align 8, !tbaa !43, !range !44, !noundef !45
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i8 %i.bg, ptr %i.a, align 8, !tbaa !22
  %.sroa.6157.0..sroa_idx158 = getelementptr inbounds nuw i8, ptr %1, i64 132
  store i32 %.sink, ptr %.sroa.6157.0..sroa_idx158, align 4, !tbaa !25
  %.sroa.7.0..sroa_idx160 = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i8 %i.bi, ptr %.sroa.7.0..sroa_idx160, align 8, !tbaa !22
  %.sroa.9.0..sroa_idx162 = getelementptr inbounds nuw i8, ptr %1, i64 137
end_hunk_0
begin_hunk_1_@_ZN12Decoder_JPEG9parse_SOFEv:bb.a
  store i8 %.sroa.17.0, ptr %.sroa.17.0..sroa_idx170, align 1
  %.sroa.19.0..sroa_idx172 = getelementptr inbounds nuw i8, ptr %1, i64 142
  store i8 %.sroa.19.0, ptr %.sroa.19.0..sroa_idx172, align 2, !tbaa !22
  br label %_ZNSt3__18optionalIN12Decoder_JPEG10ConfigInfoEEaSB8ne180100IRS2_vEERS3_OT_.exit

bb.ao:                                            ; preds = %bb.am
  store i8 %i.bg, ptr %i.a, align 8, !tbaa !22
  %.sroa.6157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 132
  store i32 %.sink, ptr %.sroa.6157.0..sroa_idx, align 4, !tbaa !25
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i8 %i.bi, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !22
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 137
  store i8 %i.bp, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 138
  store i8 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 2
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 139
  store i8 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 1, !tbaa !22
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 140
  store i8 %i.bq, ptr %.sroa.15.0..sroa_idx, align 4
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 141
  store i8 %.sroa.17.0, ptr %.sroa.17.0..sroa_idx, align 1
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 142
  store i8 %.sroa.19.0, ptr %.sroa.19.0..sroa_idx, align 2, !tbaa !22
  store i8 1, ptr %i.b, align 8, !tbaa !43
  br label %_ZNSt3__18optionalIN12Decoder_JPEG10ConfigInfoEEaSB8ne180100IRS2_vEERS3_OT_.exit

_ZNSt3__18optionalIN12Decoder_JPEG10ConfigInfoEEaSB8ne180100IRS2_vEERS3_OT_.exit: ; preds = %bb.ao, %bb.an
  %i.dv = load i64, ptr @_ZN5Error2OkE, align 8
  store i64 %i.dv, ptr %0, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dx = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 8), align 8
  %i.dy = trunc i8 %i.dx to i1
  br i1 %i.dy, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt3__18optionalIN12Decoder_JPEG10ConfigInfoEEaSB8ne180100IRS2_vEERS3_OT_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 8), i64 24, i1 false), !tbaa.struct !23
  br label %_ZN5ErrorC2ERKS_.exit111

bb.aq:                                            ; preds = %_ZNSt3__18optionalIN12Decoder_JPEG10ConfigInfoEEaSB8ne180100IRS2_vEERS3_OT_.exit
  %i.dz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 24), align 8, !tbaa !22
  %i.ea = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 16), align 8, !tbaa !22
  br label %.invoke150

.invoke150:                                       ; preds = %bb.w, %bb.ab, %bb.af, %bb.al, %bb.aq
  %i.eb = phi ptr [ %i.dw, %bb.aq ], [ %i.dl, %bb.al ], [ %i.cw, %bb.af ], [ %i.cn, %bb.ab ], [ %i.bs, %bb.w ]
  %i.ec = phi ptr [ %i.dz, %bb.aq ], [ %i.dq, %bb.al ], [ %i.db, %bb.af ], [ %i.cs, %bb.ab ], [ %i.bx, %bb.w ]
  %i.ed = phi i64 [ %i.ea, %bb.aq ], [ %i.ds, %bb.al ], [ %i.dd, %bb.af ], [ %i.cu, %bb.ab ], [ %i.bz, %bb.w ]
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, ptr noundef %i.ec, i64 noundef %i.ed)
          to label %_ZN5ErrorC2ERKS_.exit111 unwind label %bb.x

bb.ar:                                            ; preds = %.lr.ph, %bb.o, %bb.p
  %i.ee = add nuw i64 %i.ao, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ee, %i.af
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !40

.critedge:                                        ; preds = %bb.ar, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.ef = load i64, ptr %4, align 8
  store i64 %i.ef, ptr %0, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ei = load i8, ptr %i.eh, align 8
  %i.ej = trunc i8 %i.ei to i1
  br i1 %i.ej, label %.invoke, label %bb.as

bb.as:                                            ; preds = %.critedge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eg, ptr noundef nonnull align 8 dereferenceable(24) %i.eh, i64 24, i1 false), !tbaa.struct !23
  br label %_ZN5ErrorC2ERKS_.exit111

.invoke:                                          ; preds = %.critedge, %bb.r
  %i.ek = phi ptr [ %i.ba, %bb.r ], [ %i.eg, %.critedge ]
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !22
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !22
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, ptr noundef %i.em, i64 noundef %i.eo)
          to label %_ZN5ErrorC2ERKS_.exit111 unwind label %bb.x

_ZN5ErrorC2ERKS_.exit111:                         ; preds = %bb.v, %bb.aa, %bb.ae, %bb.ak, %bb.ap, %.invoke150, %.invoke, %bb.as, %bb.s
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.eq = load i8, ptr %i.ep, align 8
  %i.er = trunc i8 %i.eq to i1
  br i1 %i.er, label %bb.at, label %_ZN5ErrorD2Ev.exit

bb.at:                                            ; preds = %_ZN5ErrorC2ERKS_.exit111
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !22
  %i.eu = load i64, ptr %i.ep, align 8
  %i.ev = and i64 %i.eu, -2
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ev) #17
  br label %_ZN5ErrorD2Ev.exit

_ZN5ErrorD2Ev.exit:                               ; preds = %_ZN5ErrorC2ERKS_.exit111, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %_ZN5ErrorC2ERKS_.exit105

bb.au:                                            ; preds = %bb.x
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !22
  %i.ey = load i64, ptr %i.cb, align 8
  %i.ez = and i64 %i.ey, -2
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.ez) #17
  br label %_ZN5ErrorD2Ev.exit124

_ZN5ErrorD2Ev.exit124:                            ; preds = %bb.au, %bb.x, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit109
  %.pn99.pn = phi { ptr, i32 } [ %.pn, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit109 ], [ %i.ca, %bb.x ], [ %i.ca, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.ax

_ZN5ErrorC2ERKS_.exit105:                         ; preds = %bb.g, %bb.h, %_ZN5ErrorD2Ev.exit
  %i.fa = load i32, ptr %i.k, align 8, !tbaa !21  ; 2 uses
  %i.fb = icmp eq i32 %i.fa, -1
  br i1 %i.fb, label %_ZN6ResultINSt3__16vectorIhNS0_9allocatorIhEEEEED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %_ZN5ErrorC2ERKS_.exit105
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.fc = zext i32 %i.fa to i64
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr @__const._ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRSD_EEEDcOSE_DpOT0_.__fmatrix, i64 %i.fc
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !26
  invoke void %i.fe(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %_ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRSD_EEEDcOSE_DpOT0_.exit.i.i.i.i unwind label %bb.aw, !inline_history !0

_ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRSD_EEEDcOSE_DpOT0_.exit.i.i.i.i: ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %_ZN6ResultINSt3__16vectorIhNS0_9allocatorIhEEEEED2Ev.exit

bb.aw:                                            ; preds = %bb.av
  %i.ff = landingpad { ptr, i32 }
          catch ptr null
  %i.fg = extractvalue { ptr, i32 } %i.ff, 0
  call void @__clang_call_terminate(ptr %i.fg) #19
  unreachable

_ZN6ResultINSt3__16vectorIhNS0_9allocatorIhEEEEED2Ev.exit: ; preds = %_ZN5ErrorC2ERKS_.exit105, %_ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRSD_EEEDcOSE_DpOT0_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZN5ErrorC2ERKS_.exit

bb.ax:                                            ; preds = %bb.k, %_ZN5ErrorD2Ev.exit124
  %.pn99.pn.pn.pn = phi { ptr, i32 } [ %i.ag, %bb.k ], [ %.pn99.pn, %_ZN5ErrorD2Ev.exit124 ]
  call void @_ZN6ResultINSt3__16vectorIhNS0_9allocatorIhEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn99.pn.pn.pn

_ZN5ErrorC2ERKS_.exit:                            ; preds = %bb.d, %bb.c, %_ZN6ResultINSt3__16vectorIhNS0_9allocatorIhEEEEED2Ev.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZNK7Decoder19get_compressed_dataEb(ptr dead_on_unwind writable sret(%class.Result) align 8, ptr noundef nonnull align 8 dereferenceable(112), i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN5ErrorC1E15heif_error_code18heif_suberror_codeRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6ResultINSt3__16vectorIhNS0_9allocatorIhEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon, align 1                ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %_ZNSt3__17variantIJNS_6vectorIhNS_9allocatorIhEEEE5ErrorEED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.d = zext i32 %i.b to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @__const._ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRSD_EEEDcOSE_DpOT0_.__fmatrix, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  invoke void %i.f(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %_ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRSD_EEEDcOSE_DpOT0_.exit.i.i.i unwind label %bb.c, !inline_history !0

_ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRSD_EEEDcOSE_DpOT0_.exit.i.i.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %_ZNSt3__17variantIJNS_6vectorIhNS_9allocatorIhEEEE5ErrorEED2B8ne180100Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #19
  unreachable

_ZNSt3__17variantIJNS_6vectorIhNS_9allocatorIhEEEE5ErrorEED2B8ne180100Ev.exit: ; preds = %bb.a, %_ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRSD_EEEDcOSE_DpOT0_.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -1, 256) i32 @_ZNK12Decoder_JPEG23get_luma_bits_per_pixelEv(ptr noundef nonnull align 8 dereferenceable(148) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.Error, align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @_ZN12Decoder_JPEG9parse_SOFEv(ptr dead_on_unwind nonnull writable sret(%class.Error) align 8 %1, ptr noundef nonnull align 8 dereferenceable(148) %0)
  %i.a = load i32, ptr %1, align 8, !tbaa !34
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load i8, ptr %i.b, align 8, !tbaa !48
  %i.d = zext i8 %i.c to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ -1, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8
  %i.g = trunc i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %_ZN5ErrorD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.j = load i64, ptr %i.e, align 8
  %i.k = and i64 %i.j, -2
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.k) #17
  br label %_ZN5ErrorD2Ev.exit

_ZN5ErrorD2Ev.exit:                               ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZNK12Decoder_JPEG25get_chroma_bits_per_pixelEv(ptr noundef nonnull align 8 dereferenceable(148) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(148) %0)
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK12Decoder_JPEG26get_coded_image_colorspaceEP15heif_colorspaceP11heif_chroma(ptr dead_on_unwind noalias writable sret(%class.Error) align 8 initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(148) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.Error, align 8               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZN12Decoder_JPEG9parse_SOFEv(ptr dead_on_unwind nonnull writable sret(%class.Error) align 8 %4, ptr noundef nonnull align 8 dereferenceable(148) %1)
  %i.a = load i32, ptr %4, align 8, !tbaa !34
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %4, align 8
  store i64 %i.b, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  br label %_ZN5ErrorC2ERKS_.exit

bb.c:                                             ; preds = %bb.g
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8
  %i.h = trunc i8 %i.g to i1
  br i1 %i.h, label %bb.d, label %_ZN5ErrorD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.k = load i64, ptr %i.f, align 8
  %i.l = and i64 %i.k, -2
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.l) #17
  br label %_ZN5ErrorD2Ev.exit

_ZN5ErrorD2Ev.exit:                               ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  resume { ptr, i32 } %i.e

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.n = load i32, ptr %i.m, align 4, !tbaa !49   ; 2 uses
  store i32 %i.n, ptr %3, align 4, !tbaa !25
  %i.o = icmp eq i32 %i.n, 0
  %. = select i1 %i.o, i32 2, i32 0
  store i32 %., ptr %2, align 4, !tbaa !51
  %i.p = load i64, ptr @_ZN5Error2OkE, align 8
  store i64 %i.p, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 8), align 8
  %i.s = trunc i8 %i.r to i1
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 8), i64 24, i1 false), !tbaa.struct !23
  br label %_ZN5ErrorC2ERKS_.exit

bb.g:                                             ; preds = %bb.e
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 24), align 8, !tbaa !22
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 16), align 8, !tbaa !22
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef %i.t, i64 noundef %i.u)
          to label %_ZN5ErrorC2ERKS_.exit unwind label %bb.c

_ZN5ErrorC2ERKS_.exit:                            ; preds = %bb.f, %bb.g, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8
  %i.x = trunc i8 %i.w to i1
  br i1 %i.x, label %bb.h, label %_ZN5ErrorD2Ev.exit6

bb.h:                                             ; preds = %_ZN5ErrorC2ERKS_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !22
  %i.aa = load i64, ptr %i.v, align 8
  %i.ab = and i64 %i.aa, -2
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ab) #17
  br label %_ZN5ErrorD2Ev.exit6

_ZN5ErrorD2Ev.exit6:                              ; preds = %_ZN5ErrorC2ERKS_.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12Decoder_JPEGD2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV12Decoder_JPEG, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt3__110shared_ptrIK8Box_jpgCED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt3__110shared_ptrIK8Box_jpgCED2B8ne180100Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #18, !inline_history !52
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #18
  br label %_ZNSt3__110shared_ptrIK8Box_jpgCED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrIK8Box_jpgCED2B8ne180100Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN7DecoderD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) #18
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12Decoder_JPEGD0Ev(ptr noundef nonnull align 8 dereferenceable(148) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV12Decoder_JPEG, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN12Decoder_JPEGD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN12Decoder_JPEGD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #18, !inline_history !53
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #18, !inline_history !54
  br label %_ZN12Decoder_JPEGD2Ev.exit

_ZN12Decoder_JPEGD2Ev.exit:                       ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN7DecoderD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(148) %0) #18, !inline_history !54
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 152) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK12Decoder_JPEG22get_compression_formatEv(ptr noundef nonnull align 8 dereferenceable(148) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK7Decoder32get_coded_image_size_from_configEv(ptr dead_on_unwind noalias writable sret(%class.Result.20) align 8 %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.a, align 8
  %.sroa.2.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %.sroa.2.0..sroa_idx1.i, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.b, align 8, !tbaa !56
  ret void
}

declare void @_ZN7Decoder40decode_single_frame_from_compressed_dataERK21heif_decoding_optionsPK20heif_security_limits(ptr dead_on_unwind writable sret(%class.Result.57) align 8, ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(120), ptr noundef) unnamed_addr #2

declare void @_ZN7Decoder42decode_sequence_frame_from_compressed_dataEbRK21heif_decoding_optionsmPK20heif_security_limits(ptr dead_on_unwind writable sret(%class.Error) align 8, ptr noundef nonnull align 8 dereferenceable(112), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(120), i64 noundef, ptr noundef) unnamed_addr #2

declare void @_ZN7Decoder13flush_decoderEv(ptr dead_on_unwind writable sret(%class.Error) align 8, ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2

declare void @_ZN7Decoder17get_decoded_frameERK21heif_decoding_optionsPmPK20heif_security_limits(ptr dead_on_unwind writable sret(%class.Result.57) align 8, ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(120), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.1) #15
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef %0) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZNSt12length_errorC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #18
  resume { ptr, i32 } %i.b
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt12length_errorC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12length_error, i64 16), ptr %0, align 8, !tbaa !37
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #9

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #10

declare void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i64 %2, 23
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = trunc nuw nsw i64 %2 to i8
  %i.d = shl nuw nsw i8 %i.c, 1
  store i8 %i.d, ptr %0, align 8
  br label %_ZNSt3__111char_traitsIcE4copyB8ne180100EPcPKcm.exit

bb.c:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %2, -9
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = or i64 %2, 7                             ; 2 uses
  %i.g = icmp eq i64 %i.f, 23
  %i.h = add nuw i64 %i.f, 1
  %i.i = select i1 %i.g, i64 25, i64 %i.h         ; 2 uses
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !22
  %i.l = or i64 %i.i, 1
  store i64 %i.l, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8, !tbaa !22
  br label %_ZNSt3__111char_traitsIcE4copyB8ne180100EPcPKcm.exit

_ZNSt3__111char_traitsIcE4copyB8ne180100EPcPKcm.exit: ; preds = %bb.e, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ %i.j, %bb.e ]
  %i.n = add nuw i64 %2, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.n, i1 false)
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.2) #15
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne180100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS0_6__baseILSE_1EJSB_SC_EEEEEEDcSG_DpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !17     ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__18__invokeB8ne180100IZNS_16__variant_detail6__dtorINS1_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEE5ErrorEEELNS1_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS1_5__altILm0ES7_EEEEEDTclclsr3stdE7declvalISC_EEspclsr3stdE7declvalIT0_EEEEOSC_DpOSI_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.g) #17
  br label %_ZNSt3__18__invokeB8ne180100IZNS_16__variant_detail6__dtorINS1_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEE5ErrorEEELNS1_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS1_5__altILm0ES7_EEEEEDTclclsr3stdE7declvalISC_EEspclsr3stdE7declvalIT0_EEEEOSC_DpOSI_.exit

_ZNSt3__18__invokeB8ne180100IZNS_16__variant_detail6__dtorINS1_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEE5ErrorEEELNS1_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS1_5__altILm0ES7_EEEEEDTclclsr3stdE7declvalISC_EEspclsr3stdE7declvalIT0_EEEEOSC_DpOSI_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne180100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS0_6__baseILSE_1EJSB_SC_EEEEEEDcSG_DpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt3__18__invokeB8ne180100IZNS_16__variant_detail6__dtorINS1_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEE5ErrorEEELNS1_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS1_5__altILm1ES8_EEEEEDTclclsr3stdE7declvalISC_EEspclsr3stdE7declvalIT0_EEEEOSC_DpOSI_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.f = load i64, ptr %i.a, align 8
  %i.g = and i64 %i.f, -2
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.g) #17
  br label %_ZNSt3__18__invokeB8ne180100IZNS_16__variant_detail6__dtorINS1_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEE5ErrorEEELNS1_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS1_5__altILm1ES8_EEEEEDTclclsr3stdE7declvalISC_EEspclsr3stdE7declvalIT0_EEEEOSC_DpOSI_.exit

_ZNSt3__18__invokeB8ne180100IZNS_16__variant_detail6__dtorINS1_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEE5ErrorEEELNS1_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS1_5__altILm1ES8_EEEEEDTclclsr3stdE7declvalISC_EEspclsr3stdE7declvalIT0_EEEEOSC_DpOSI_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nounwind
declare void @_ZN7DecoderD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNSt3__126__throw_bad_variant_accessB8ne180100Ev() local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #18 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.a, align 8, !tbaa !37
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #15
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { noreturn }
attributes #16 = { builtin allocsize(0) }
attributes #17 = { builtin nounwind }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS8Box_jpgC", !9, i64 0}
!11 = !{!"p1 _ZTSNSt3__119__shared_weak_countE", !9, i64 0}
!12 = !{!"_ZTSNSt3__110shared_ptrIK8Box_jpgCEE", !10, i64 0, !11, i64 8}
!13 = !{!"p1 omnipotent char", !9, i64 0}
!14 = !{!"_ZTSNSt3__122__compressed_pair_elemIPhLi0ELb0EEE", !13, i64 0}
!15 = !{!"_ZTSNSt3__117__compressed_pairIPhNS_9allocatorIhEEEE", !14, i64 0}
!16 = !{!"_ZTSNSt3__16vectorIhNS_9allocatorIhEEEE", !13, i64 0, !13, i64 8, !15, i64 16}
!17 = !{!16, !13, i64 0}
!18 = !{!16, !13, i64 8}
!19 = !{!13, !13, i64 0}
!20 = !{!"_ZTSNSt3__116__variant_detail6__baseILNS0_6_TraitE1EJNS_6vectorIhNS_9allocatorIhEEEE5ErrorEEE", !5, i64 0, !6, i64 32}
!21 = !{!20, !6, i64 32}
!22 = !{!5, !5, i64 0}
!23 = !{i64 0, i64 24, !22}
!24 = !{!"_ZTS11heif_chroma", !5, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!9, !9, i64 0}
!27 = !{!"_ZTS15heif_error_code", !5, i64 0}
!28 = !{!"_ZTS18heif_suberror_code", !5, i64 0}
!29 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repE", !5, i64 0}
!30 = !{!"_ZTSNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEE", !29, i64 0}
!31 = !{!"_ZTSNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EE", !30, i64 0}
!32 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !31, i64 0}
!33 = !{!"_ZTS5Error", !27, i64 0, !28, i64 4, !32, i64 8}
!34 = !{!33, !27, i64 0}
!35 = !{!"_ZTSN12Decoder_JPEG10ConfigInfoE", !5, i64 0, !24, i64 4, !5, i64 8, !5, i64 9, !5, i64 12}
!36 = !{!"vtable pointer", !4, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!12, !11, i64 8}
!39 = !{!12, !10, i64 0}
!40 = distinct !{!40, !47}
!41 = !{!"bool", !5, i64 0}
!42 = !{!"_ZTSNSt3__124__optional_destruct_baseIN12Decoder_JPEG10ConfigInfoELb1EEE", !5, i64 0, !41, i64 16}
!43 = !{!42, !41, i64 16}
!44 = !{i8 0, i8 2}
!45 = !{}
!46 = !{!41, !41, i64 0}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!35, !5, i64 0}
!49 = !{!35, !24, i64 4}
!50 = !{!"_ZTS15heif_colorspace", !5, i64 0}
!51 = !{!50, !50, i64 0}
!52 = distinct !{null, null, null}
!53 = distinct !{ptr @_ZN12Decoder_JPEGD2Ev, null, null, null}
!54 = !{ptr @_ZN12Decoder_JPEGD2Ev}
!55 = !{!"_ZTSNSt3__116__variant_detail6__baseILNS0_6_TraitE1EJNS_8optionalI9ImageSizeEE5ErrorEEE", !5, i64 0, !6, i64 32}
!56 = !{!55, !6, i64 32}
end_hunk_1
