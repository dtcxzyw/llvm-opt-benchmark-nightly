Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/bin_decoder?download=true
inline.NumInlined: 82
inline.NumDeleted: 34
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"struct.std::array" = type { [7 x i8] }
%"class.absl::lts_20250512::log_internal::LogMessage" = type { %"class.absl::lts_20250512::base_internal::ErrnoSaver", %"class.std::unique_ptr" }
%"class.absl::lts_20250512::base_internal::ErrnoSaver" = type { i32 }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%struct.grpc_slice = type { ptr, %"union.grpc_slice::grpc_slice_data" }
%"union.grpc_slice::grpc_slice_data" = type { %"struct.grpc_slice::grpc_slice_data::grpc_slice_refcounted", [8 x i8] }
%"struct.grpc_slice::grpc_slice_data::grpc_slice_refcounted" = type { i64, ptr }
%struct.grpc_base64_decode_context = type { ptr, ptr, ptr, ptr, i8 }
%"class.absl::lts_20250512::log_internal::LogMessageFatal" = type { %"class.absl::lts_20250512::log_internal::LogMessage" }
%"class.absl::lts_20250512::log_internal::LogMessage::OstreamView" = type { %"class.std::basic_streambuf", ptr, %"class.absl::lts_20250512::Span", %"class.absl::lts_20250512::Span", %"class.absl::lts_20250512::Span" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.absl::lts_20250512::Span" = type { ptr, i64 }

$_ZN4absl12lts_2025051212log_internal10LogMessagelsIPcEERS2_RKT_ = comdat any

@.str = private unnamed_addr constant [81 x i8] c"/opt-bench/work/grpc/grpc/src/core/ext/transport/chttp2/transport/bin_decoder.cc\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Base64 decoding failed. Input has more than 2 paddings.\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Base64 decoding failed. Input has a length of \00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c" (without padding), which is invalid.\0A\00", align 1
@_ZL9tail_xtra = internal unnamed_addr constant [4 x i8] c"\00\00\01\02", align 1
@_ZL12decode_table = internal unnamed_addr constant [256 x i8] c"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>@@@?456789:;<=@@@@@@@\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19@@@@@@\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@", align 16
@.str.4 = private unnamed_addr constant [76 x i8] c"Base64 decoding failed, input of grpc_chttp2_base64_decode has a length of \00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c", which is not a multiple of 4.\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Base64 decoding failed, input string:\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [188 x i8] c"ctx.output_cur == ((output).refcount ? (output).data.refcounted.bytes : (output).data.inlined.bytes) + ((output).refcount ? (output).data.refcounted.length : (output).data.inlined.length)\00", align 1
@.str.9 = private unnamed_addr constant [181 x i8] c"ctx.input_cur == ((input).refcount ? (input).data.refcounted.bytes : (input).data.inlined.bytes) + ((input).refcount ? (input).data.refcounted.length : (input).data.inlined.length)\00", align 1
@.str.10 = private unnamed_addr constant [88 x i8] c"Base64 decoding failed, input of grpc_chttp2_base64_decode_with_length has a length of \00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c", which has a tail of 1 byte.\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"Base64 decoding failed, output_length \00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c" is longer than the max possible output length \00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.15 = private unnamed_addr constant [181 x i8] c"ctx.input_cur <= ((input).refcount ? (input).data.refcounted.bytes : (input).data.inlined.bytes) + ((input).refcount ? (input).data.refcounted.length : (input).data.inlined.length)\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"Base64 decoding failed, invalid character '\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"' in base64 input.\0A\00", align 1
@_ZN4absl12lts_2025051212log_internal9kCharNullE = external global %"struct.std::array", align 1

; Function Attrs: mustprogress uwtable
define noundef range(i64 0, -4611686018427387651) i64 @_Z44grpc_chttp2_base64_infer_length_after_decodeRK10grpc_slice(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %1 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !12
  %.not = icmp eq ptr %i.b, null                  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  %i.e = and i64 %i.d, 255                        ; 2 uses
  %i.f = select i1 %.not, i64 %i.e, i64 %i.d      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.j = select i1 %.not, ptr %i.i, ptr %i.h
  %.not2732 = icmp eq i64 %i.f, 0
  br i1 %.not2732, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.02333 = phi i64 [ %i.o, %bb.b ], [ %i.f, %bb.a ] ; 3 uses
  %i.k = getelementptr i8, ptr %i.j, i64 %.02333
  %i.l = getelementptr i8, ptr %i.k, i64 -1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13
  %i.n = icmp eq i8 %i.m, 61
  br i1 %i.n, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.o = add i64 %.02333, -1                      ; 2 uses
  %.not27 = icmp eq i64 %i.o, 0
  br i1 %.not27, label %.critedge, label %.lr.ph, !llvm.loop !34

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.023.lcssa = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %.02333, %.lr.ph ] ; 4 uses
  %spec.select = select i1 %.not, i64 %i.e, i64 %i.d
  %i.p = sub i64 %spec.select, %.023.lcssa
  %i.q = icmp ugt i64 %i.p, 2
  br i1 %i.q, label %bb.c, label %bb.e, !prof !15

bb.c:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str, i32 noundef 89) #11
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 55, ptr nonnull @.str.1)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi56EEERS2_RAT__Kc.exit unwind label %bb.d

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi56EEERS2_RAT__Kc.exit: ; preds = %bb.c
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.d

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi56EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  br label %bb.j

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi56EEERS2_RAT__Kc.exit, %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  br label %bb.k

bb.e:                                             ; preds = %.critedge
  %i.s = and i64 %.023.lcssa, 3                   ; 2 uses
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.f, label %bb.i, !prof !15

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str, i32 noundef 95) #11
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 46, ptr nonnull @.str.2)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi47EEERS2_RAT__Kc.exit unwind label %bb.h

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi47EEERS2_RAT__Kc.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.023.lcssa, ptr %i.a, align 8, !tbaa !17
  %i.u = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsImEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.g unwind label %bb.h       ; 2 uses

bb.g:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi47EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 38, ptr nonnull @.str.3)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi39EEERS2_RAT__Kc.exit unwind label %bb.h

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi39EEERS2_RAT__Kc.exit: ; preds = %bb.g
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit30 unwind label %bb.h

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit30: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi39EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.j

bb.h:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi39EEERS2_RAT__Kc.exit, %bb.g, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi47EEERS2_RAT__Kc.exit, %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.k

bb.i:                                             ; preds = %bb.e
  %i.w = lshr i64 %.023.lcssa, 2
  %i.x = mul nuw i64 %i.w, 3
  %i.y = getelementptr inbounds nuw i8, ptr @_ZL9tail_xtra, i64 %i.s
  %i.z = load i8, ptr %i.y, align 1, !tbaa !13
  %i.aa = zext i8 %i.z to i64
  %i.ab = add nuw i64 %i.x, %i.aa
  br label %bb.j

bb.j:                                             ; preds = %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit30, %bb.i, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit
  %.1 = phi i64 [ 0, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit ], [ 0, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit30 ], [ %i.ab, %bb.i ]
  ret i64 %.1

bb.k:                                             ; preds = %bb.h, %bb.d
  %.pn = phi { ptr, i32 } [ %i.r, %bb.d ], [ %i.v, %bb.h ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold nounwind
declare void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z26grpc_base64_decode_partialP26grpc_base64_decode_context(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22   ; 4 uses
  %i.d = icmp ugt ptr %i.a, %i.c
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 16 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.i = icmp ugt ptr %i.f, %i.h
  br i1 %i.i, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.not69 = icmp ult ptr %i.c, %i.j
  br i1 %.not69, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %.not6282 = icmp ult ptr %i.k, %i.l
  br i1 %.not6282, label %.critedge, label %.lr.ph83

.lr.ph:                                           ; preds = %bb.c
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %i.bj, i64 6
  %.not62 = icmp ult ptr %i.m, %i.n
  br i1 %.not62, label %.critedge.loopexit, label %.lr.ph83, !llvm.loop !35

.lr.ph83:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.o = phi ptr [ %i.bm, %.lr.ph ], [ %i.a, %.lr.ph.preheader ]
  %i.p = tail call fastcc noundef zeroext i1 @_ZL14input_is_validPKhm(ptr noundef %i.o, i64 noundef 4)
  br i1 %i.p, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph83
  %i.q = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !13
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr @_ZL12decode_table, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !13
  %i.v = shl i8 %i.u, 2
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !13
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr @_ZL12decode_table, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !13
  %i.ab = lshr i8 %i.aa, 4
  %i.ac = or i8 %i.ab, %i.v
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !23
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !13
  %i.ae = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !13
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @_ZL12decode_table, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !13
  %i.ak = shl i8 %i.aj, 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !13
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @_ZL12decode_table, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !13
  %i.aq = lshr i8 %i.ap, 2
  %i.ar = or i8 %i.aq, %i.ak
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store i8 %i.ar, ptr %i.at, align 1, !tbaa !13
  %i.au = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !13
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @_ZL12decode_table, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !13
  %i.ba = shl i8 %i.az, 6
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 3
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !13
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @_ZL12decode_table, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !13
  %i.bg = or i8 %i.bf, %i.ba
  %i.bh = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  store i8 %i.bg, ptr %i.bi, align 1, !tbaa !13
  %i.bj = load ptr, ptr %i.e, align 8, !tbaa !23  ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 3
  store ptr %i.bk, ptr %i.e, align 8, !tbaa !23
  %i.bl = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4 ; 4 uses
  store ptr %i.bm, ptr %0, align 8, !tbaa !21
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !22  ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.not = icmp ult ptr %i.bn, %i.bo
  br i1 %.not, label %..critedge.loopexit_crit_edge, label %.lr.ph, !llvm.loop !35

..critedge.loopexit_crit_edge:                    ; preds = %bb.c
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 3
  br label %.critedge, !llvm.loop !35

.critedge.loopexit:                               ; preds = %.lr.ph
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 3
end_hunk_0
