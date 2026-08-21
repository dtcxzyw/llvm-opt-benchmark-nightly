Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/PhaseOneDecompressor?download=true
inline.NumInlined: 420
inline.NumDeleted: 217
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::array.57" = type { [10 x i32] }
%"struct.std::array.66" = type { [8192 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%"class.rawspeed::ByteStream" = type { %"class.rawspeed::DataBuffer.base", i32, [4 x i8] }
%"class.rawspeed::DataBuffer.base" = type { %"class.rawspeed::Buffer.base", i16 }
%"class.rawspeed::Buffer.base" = type <{ ptr, i32 }>
%"struct.rawspeed::PhaseOneStrip" = type { i32, [4 x i8], %"class.rawspeed::ByteStream" }
%"struct.std::array.62" = type { [2 x i32] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator.46" = type { i8 }

$_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz = comdat any

$_ZN8rawspeed8RawImageD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz = comdat any

$_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc = comdat any

$_ZN8rawspeed17RawspeedExceptionC2EPKc = comdat any

$_ZN8rawspeed17RawspeedException3logEPKc = comdat any

$_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc = comdat any

$_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf = comdat any

$_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf = comdat any

@.str = private unnamed_addr constant [34 x i8] c"%s, line 47: Unexpected data type\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed20PhaseOneDecompressorC2ENS_8RawImageEOSt6vectorINS_13PhaseOneStripESaIS3_EE = private unnamed_addr constant [94 x i8] c"rawspeed::PhaseOneDecompressor::PhaseOneDecompressor(RawImage, std::vector<PhaseOneStrip> &&)\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"%s, line 50: Unexpected cpp: %u\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"%s, line 55: Unexpected image dimensions found: (%d; %d)\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"%s, line 67: Height (%d) vs strip count %zu mismatch\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed20PhaseOneDecompressor13prepareStripsEv = private unnamed_addr constant [53 x i8] c"void rawspeed::PhaseOneDecompressor::prepareStrips()\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"%s, line 81: Strips validation issue.\00", align 1
@_ZZNK8rawspeed20PhaseOneDecompressor15decompressStripERKNS_13PhaseOneStripEE6length = internal unnamed_addr constant %"struct.std::array.57" { [10 x i32] [i32 8, i32 7, i32 6, i32 9, i32 11, i32 10, i32 5, i32 12, i32 14, i32 13] }, align 4
@.str.5 = private unnamed_addr constant [59 x i8] c"%s, line 112: Can not initialize lengths. Data is corrupt.\00", align 1
@__PRETTY_FUNCTION__._ZNK8rawspeed20PhaseOneDecompressor15decompressStripERKNS_13PhaseOneStripE = private unnamed_addr constant [82 x i8] c"void rawspeed::PhaseOneDecompressor::decompressStrip(const PhaseOneStrip &) const\00", align 1
@_ZTIN8rawspeed17RawspeedExceptionE = external constant ptr
@.str.6 = private unnamed_addr constant [70 x i8] c"%s, line 166: Too many errors encountered. Giving up. First Error:\0A%s\00", align 1
@__PRETTY_FUNCTION__._ZNK8rawspeed20PhaseOneDecompressor10decompressEv = private unnamed_addr constant [56 x i8] c"void rawspeed::PhaseOneDecompressor::decompress() const\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf = linkonce_odr hidden thread_local global %"struct.std::array.66" zeroinitializer, comdat, align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"EXCEPTION: %s\00", align 1
@_ZTIN8rawspeed11IOExceptionE = external constant ptr
@_ZTVN8rawspeed11IOExceptionE = external constant { [6 x ptr] }, align 8
@_ZTVN8rawspeed17RawspeedExceptionE = external constant { [6 x ptr] }, align 8
@.str.10 = private unnamed_addr constant [61 x i8] c"%s, line 59: Bit stream size is smaller than MaxProcessBytes\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_16BitStreamerMSB32EEC2ENS_10Array1DRefIKSt4byteEE = private unnamed_addr constant [157 x i8] c"rawspeed::BitStreamerReplenisherBase<rawspeed::BitStreamerMSB32>::BitStreamerReplenisherBase(Array1DRef<const std::byte>) [Tag = rawspeed::BitStreamerMSB32]\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf = linkonce_odr hidden thread_local global %"struct.std::array.66" zeroinitializer, comdat, align 1
@_ZTIN8rawspeed19RawDecoderExceptionE = external constant ptr
@_ZTVN8rawspeed19RawDecoderExceptionE = external constant { [6 x ptr] }, align 8
@.str.13 = private unnamed_addr constant [50 x i8] c"%s, line 127: Buffer overflow read in BitStreamer\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv = private unnamed_addr constant [188 x i8] c"std::array<std::byte, BitStreamerTraits<Tag>::MaxProcessBytes> rawspeed::BitStreamerForwardSequentialReplenisher<rawspeed::BitStreamerMSB32>::getInput() [Tag = rawspeed::BitStreamerMSB32]\00", align 1

@_ZN8rawspeed20PhaseOneDecompressorC1ENS_8RawImageEOSt6vectorINS_13PhaseOneStripESaIS3_EE = hidden unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN8rawspeed20PhaseOneDecompressorC2ENS_8RawImageEOSt6vectorINS_13PhaseOneStripESaIS3_EE

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed20PhaseOneDecompressorC2ENS_8RawImageEOSt6vectorINS_13PhaseOneStripESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 40)) %0, ptr nofree noundef align 8 captures(none) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !15
  store ptr null, ptr %i.b, align 8, !tbaa !11
  %i.e = load <2 x ptr>, ptr %2, align 8, !tbaa !16
  %i.f = shufflevector <2 x ptr> %i.d, <2 x ptr> %i.e, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x ptr> %i.f, ptr %0, align 8, !tbaa !15
  store ptr null, ptr %1, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21
  store ptr %i.i, ptr %i.g, align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.j = load ptr, ptr %0, align 8, !tbaa !18     ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 553
  %i.l = load i8, ptr %i.k, align 1, !tbaa !23
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed20PhaseOneDecompressorC2ENS_8RawImageEOSt6vectorINS_13PhaseOneStripESaIS3_EE) #17
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.m, %bb.k, %bb.h, %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !94   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.r) #25
  br label %_ZNSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EED2Ev.exit

_ZNSt6vectorIN8rawspeed13PhaseOneStripESaIS1_EED2Ev.exit: ; preds = %bb.d, %bb.e
  tail call void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #26
  resume { ptr, i32 } %i.m

bb.f:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 592
  %i.t = load i32, ptr %i.s, align 8, !tbaa !95   ; 2 uses
  %.not3 = icmp eq i32 %i.t, 1
  br i1 %.not3, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 596
  %i.v = load i32, ptr %i.u, align 4, !tbaa !96
  %.not4 = icmp eq i32 %i.v, 2
  br i1 %.not4, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed20PhaseOneDecompressorC2ENS_8RawImageEOSt6vectorINS_13PhaseOneStripESaIS3_EE, i32 noundef %i.t) #17
          to label %bb.i unwind label %bb.d

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.x = load i32, ptr %i.w, align 8, !tbaa !97   ; 4 uses
  %i.y = icmp slt i32 %i.x, 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.aa = load i32, ptr %i.z, align 4             ; 3 uses
  %i.ab = icmp slt i32 %i.aa, 1
  %.not10 = select i1 %i.y, i1 true, i1 %i.ab
  %.not5 = trunc i32 %i.x to i1
  %i.ac = icmp samesign ugt i32 %i.x, 11976
  %or.cond = or i1 %i.ac, %.not5
  %or.cond7 = select i1 %.not10, i1 true, i1 %or.cond
  %i.ad = icmp samesign ugt i32 %i.aa, 8854
  %or.cond12 = select i1 %or.cond7, i1 true, i1 %i.ad
  br i1 %or.cond12, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed20PhaseOneDecompressorC2ENS_8RawImageEOSt6vectorINS_13PhaseOneStripESaIS3_EE, i32 noundef %i.x, i32 noundef %i.aa) #17
          to label %bb.l unwind label %bb.d

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j
  invoke void @_ZN8rawspeed20PhaseOneDecompressor13prepareStripsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.n unwind label %bb.d

bb.n:                                             ; preds = %bb.m
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #26 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed19RawDecoderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed20PhaseOneDecompressor13prepareStripsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.5.i.i24.i.i.i = alloca { [4 x i8], %"class.rawspeed::ByteStream" }, align 8 ; 4 uses
  %1 = alloca %"struct.rawspeed::PhaseOneStrip", align 8 ; 4 uses
  %.sroa.5.i.i12.i.i.i = alloca { [4 x i8], %"class.rawspeed::ByteStream" }, align 8 ; 4 uses
  %.sroa.5.i.i.i.i.i = alloca { [4 x i8], %"class.rawspeed::ByteStream" }, align 8 ; 4 uses
  %2 = alloca %"struct.rawspeed::PhaseOneStrip", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !98   ; 7 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !94   ; 16 uses
end_hunk_0
begin_hunk_1_@_ZN8rawspeed20PhaseOneDecompressor13prepareStripsEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i12.i.i.i)
  %.sroa.03.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.0.06.i.i.i.i, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i14.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.5.i.i12.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5.0..sroa_idx.i.i14.i.i.i, i64 28, i1 false)
  %.sroa.0.09.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.06.i.i.i.i, i64 -32 ; 2 uses
  %.val2.i10.i.i15.i.i.i = load i32, ptr %.sroa.0.09.i.i.i.i.i, align 8, !tbaa !100
  %i.z = icmp slt i32 %.sroa.03.0.copyload.i.i.i.i.i, %.val2.i10.i.i15.i.i.i
  br i1 %i.z, label %.lr.ph.i.i19.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8rawspeed13PhaseOneStripESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_20PhaseOneDecompressor13prepareStripsEvE3$_0EEEvT_T0_.exit.i16.i.i.i"

.lr.ph.i.i19.i.i.i:                               ; preds = %.lr.ph.i13.i.i.i, %.lr.ph.i.i19.i.i.i
  %.sroa.0.012.i.i20.i.i.i = phi ptr [ %.sroa.0.0.i.i22.i.i.i, %.lr.ph.i.i19.i.i.i ], [ %.sroa.0.09.i.i.i.i.i, %.lr.ph.i13.i.i.i ] ; 4 uses
  %.sroa.06.011.i.i21.i.i.i = phi ptr [ %.sroa.0.012.i.i20.i.i.i, %.lr.ph.i.i19.i.i.i ], [ %.sroa.0.06.i.i.i.i, %.lr.ph.i13.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.06.011.i.i21.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.012.i.i20.i.i.i, i64 32, i1 false)
  %.sroa.0.0.i.i22.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i20.i.i.i, i64 -32 ; 2 uses
  %.val2.i.i.i23.i.i.i = load i32, ptr %.sroa.0.0.i.i22.i.i.i, align 8, !tbaa !100
  %i.aa = icmp slt i32 %.sroa.03.0.copyload.i.i.i.i.i, %.val2.i.i.i23.i.i.i
  br i1 %i.aa, label %.lr.ph.i.i19.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8rawspeed13PhaseOneStripESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_20PhaseOneDecompressor13prepareStripsEvE3$_0EEEvT_T0_.exit.i16.i.i.i", !llvm.loop !107

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8rawspeed13PhaseOneStripESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_20PhaseOneDecompressor13prepareStripsEvE3$_0EEEvT_T0_.exit.i16.i.i.i": ; preds = %.lr.ph.i.i19.i.i.i, %.lr.ph.i13.i.i.i
  %.sroa.06.0.lcssa.i.i17.i.i.i = phi ptr [ %.sroa.0.06.i.i.i.i, %.lr.ph.i13.i.i.i ], [ %.sroa.0.012.i.i20.i.i.i, %.lr.ph.i.i19.i.i.i ] ; 2 uses
  store i32 %.sroa.03.0.copyload.i.i.i.i.i, ptr %.sroa.06.0.lcssa.i.i17.i.i.i, align 8
  %.sroa.5.0..sroa_idx5.i.i18.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i17.i.i.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5.0..sroa_idx5.i.i18.i.i.i, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.5.i.i12.i.i.i, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i12.i.i.i)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 32 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.c
  br i1 %i.ac, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8rawspeed13PhaseOneStripESt6vectorIS3_SaIS3_EEEEZNS2_20PhaseOneDecompressor13prepareStripsEvE3$_0EvT_SB_T0_.exit", label %.lr.ph.i13.i.i.i, !llvm.loop !110

bb.j:                                             ; preds = %bb.d
  %i.ad = icmp eq ptr %scevgep.i.i.i, %i.c
  br i1 %i.ad, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8rawspeed13PhaseOneStripESt6vectorIS3_SaIS3_EEEEZNS2_20PhaseOneDecompressor13prepareStripsEvE3$_0EvT_SB_T0_.exit", label %.lr.ph.i27.i.i.i

.lr.ph.i27.i.i.i:                                 ; preds = %bb.j, %bb.p
  %.sroa.0.018.i28.i.i.i = phi ptr [ %.sroa.0.0.i37.i.i.i, %bb.p ], [ %scevgep.i.i.i, %bb.j ] ; 7 uses
  %.pn17.i29.i.i.i = phi ptr [ %.sroa.0.018.i28.i.i.i, %bb.p ], [ %i.d, %bb.j ] ; 5 uses
  %.val.i.i30.i.i.i = load i32, ptr %.sroa.0.018.i28.i.i.i, align 8, !tbaa !100 ; 4 uses
  %.val1.i.i31.i.i.i = load i32, ptr %i.d, align 8, !tbaa !100
  %i.ae = icmp slt i32 %.val.i.i30.i.i.i, %.val1.i.i31.i.i.i
  br i1 %i.ae, label %bb.k, label %bb.o

bb.k:                                             ; preds = %.lr.ph.i27.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.018.i28.i.i.i, i64 32, i1 false)
  %i.af = ptrtoint ptr %.sroa.0.018.i28.i.i.i to i64
  %i.ag = sub i64 %i.af, %i.f                     ; 3 uses
  %i.ah = ashr exact i64 %i.ag, 5                 ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.l, label %bb.m, !prof !106

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %.pn17.i29.i.i.i, i64 64
  %i.ak = sub nsw i64 0, %i.ah
  %i.al = getelementptr inbounds [32 x i8], ptr %i.aj, i64 %i.ak
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.ag, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8rawspeed13PhaseOneStripESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i43.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.am = icmp eq i64 %i.ag, 32
  br i1 %i.am, label %bb.n, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8rawspeed13PhaseOneStripESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i43.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %.pn17.i29.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8rawspeed13PhaseOneStripESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i43.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8rawspeed13PhaseOneStripESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i43.i.i.i: ; preds = %bb.n, %bb.m, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph.i27.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i24.i.i.i)
  %.sroa.5.0..sroa_idx.i.i32.i.i.i = getelementptr inbounds nuw i8, ptr %.pn17.i29.i.i.i, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.5.i.i24.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5.0..sroa_idx.i.i32.i.i.i, i64 28, i1 false)
  %.val2.i10.i.i33.i.i.i = load i32, ptr %.pn17.i29.i.i.i, align 8, !tbaa !100
  %i.ao = icmp slt i32 %.val.i.i30.i.i.i, %.val2.i10.i.i33.i.i.i
  br i1 %i.ao, label %.lr.ph.i.i38.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8rawspeed13PhaseOneStripESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_20PhaseOneDecompressor13prepareStripsEvE3$_0EEEvT_T0_.exit.i34.i.i.i"

.lr.ph.i.i38.i.i.i:                               ; preds = %bb.o, %.lr.ph.i.i38.i.i.i
  %.sroa.0.012.i.i39.i.i.i = phi ptr [ %.sroa.0.0.i.i41.i.i.i, %.lr.ph.i.i38.i.i.i ], [ %.pn17.i29.i.i.i, %bb.o ] ; 4 uses
  %.sroa.06.011.i.i40.i.i.i = phi ptr [ %.sroa.0.012.i.i39.i.i.i, %.lr.ph.i.i38.i.i.i ], [ %.sroa.0.018.i28.i.i.i, %bb.o ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.06.011.i.i40.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.012.i.i39.i.i.i, i64 32, i1 false)
  %.sroa.0.0.i.i41.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i39.i.i.i, i64 -32 ; 2 uses
  %.val2.i.i.i42.i.i.i = load i32, ptr %.sroa.0.0.i.i41.i.i.i, align 8, !tbaa !100
  %i.ap = icmp slt i32 %.val.i.i30.i.i.i, %.val2.i.i.i42.i.i.i
  br i1 %i.ap, label %.lr.ph.i.i38.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8rawspeed13PhaseOneStripESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_20PhaseOneDecompressor13prepareStripsEvE3$_0EEEvT_T0_.exit.i34.i.i.i", !llvm.loop !107

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8rawspeed13PhaseOneStripESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_20PhaseOneDecompressor13prepareStripsEvE3$_0EEEvT_T0_.exit.i34.i.i.i": ; preds = %.lr.ph.i.i38.i.i.i, %bb.o
  %.sroa.06.0.lcssa.i.i35.i.i.i = phi ptr [ %.sroa.0.018.i28.i.i.i, %bb.o ], [ %.sroa.0.012.i.i39.i.i.i, %.lr.ph.i.i38.i.i.i ] ; 2 uses
  store i32 %.val.i.i30.i.i.i, ptr %.sroa.06.0.lcssa.i.i35.i.i.i, align 8
  %.sroa.5.0..sroa_idx5.i.i36.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i35.i.i.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5.0..sroa_idx5.i.i36.i.i.i, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.5.i.i24.i.i.i, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i24.i.i.i)
  br label %bb.p

bb.p:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8rawspeed13PhaseOneStripESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_20PhaseOneDecompressor13prepareStripsEvE3$_0EEEvT_T0_.exit.i34.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN8rawspeed13PhaseOneStripESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i43.i.i.i
  %.sroa.0.0.i37.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i28.i.i.i, i64 32 ; 2 uses
  %i.aq = icmp eq ptr %.sroa.0.0.i37.i.i.i, %i.c
  br i1 %i.aq, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8rawspeed13PhaseOneStripESt6vectorIS3_SaIS3_EEEEZNS2_20PhaseOneDecompressor13prepareStripsEvE3$_0EvT_SB_T0_.exit", label %.lr.ph.i27.i.i.i, !llvm.loop !109

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8rawspeed13PhaseOneStripESt6vectorIS3_SaIS3_EEEEZNS2_20PhaseOneDecompressor13prepareStripsEvE3$_0EvT_SB_T0_.exit": ; preds = %bb.p, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8rawspeed13PhaseOneStripESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_20PhaseOneDecompressor13prepareStripsEvE3$_0EEEvT_T0_.exit.i16.i.i.i", %bb.c, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8rawspeed13PhaseOneStripESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_20PhaseOneDecompressor13prepareStripsEvE3$_0EEEvT_SE_T0_.exit.i.i.i", %bb.j
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !98  ; 2 uses
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !94  ; 3 uses
  %.not8 = icmp eq ptr %i.ar, %i.as
  br i1 %.not8, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8rawspeed13PhaseOneStripESt6vectorIS3_SaIS3_EEEEZNS2_20PhaseOneDecompressor13prepareStripsEvE3$_0EvT_SB_T0_.exit"
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 5
  br label %.lr.ph

bb.q:                                             ; preds = %.lr.ph
  %i.ax = add nuw nsw i64 %.07, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ax, %i.aw
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !111

._crit_edge:                                      ; preds = %bb.q, %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8rawspeed13PhaseOneStripESt6vectorIS3_SaIS3_EEEEZNS2_20PhaseOneDecompressor13prepareStripsEvE3$_0EvT_SB_T0_.exit"
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.q
  %.07 = phi i64 [ %i.ax, %bb.q ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.as, i64 %.07
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !100
  %i.ba = sext i32 %i.az to i64
  %.not5 = icmp eq i64 %.07, %i.ba
  br i1 %.not5, label %bb.q, label %bb.r

bb.r:                                             ; preds = %.lr.ph
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed20PhaseOneDecompressor13prepareStripsEv) #17
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !112
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !114
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !115
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !call_target !117, !inline_history !124
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !115
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !call_target !125, !inline_history !124
  br label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !126
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !127
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !128

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK8rawspeed20PhaseOneDecompressor15decompressStripERKNS_13PhaseOneStripE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i = alloca i32, align 4              ; 7 uses
  %2 = alloca %"struct.std::array.62", align 4    ; 9 uses
  %3 = alloca %"struct.std::array.62", align 4    ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !18     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  %i.c = load i32, ptr %i.b, align 8, !tbaa !95, !noalias !129
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.e = load i32, ptr %i.d, align 8, !tbaa !132, !noalias !129
  %i.f = mul nsw i32 %i.e, %i.c                   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.h = load i32, ptr %i.g, align 8, !tbaa !133, !noalias !129
  %i.i = ashr i32 %i.h, 1                         ; 2 uses
  %i.j = icmp sge i32 %i.i, %i.f
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp sgt i32 %i.f, 0
  tail call void @llvm.assume(i1 %i.k)
  %i.l = and i32 %i.f, 1
  %i.m = icmp eq i32 %i.l, 0
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !134  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !135  ; 3 uses
  %i.s = icmp uge i32 %i.r, %i.p
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp sgt i32 %i.r, -1
  tail call void @llvm.assume(i1 %i.t)
  %i.u = sub i32 %i.r, %i.p                       ; 6 uses
  %i.v = zext i32 %i.p to i64
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !136
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v ; 3 uses
  %i.y = icmp sgt i32 %i.u, -1
  tail call void @llvm.assume(i1 %i.y)
  %i.z = icmp samesign ult i32 %i.u, 4
  br i1 %i.z, label %bb.b, label %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_16BitStreamerMSB32EEC2ENS_10Array1DRefIKSt4byteEE) #17
  unreachable

_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit: ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 612
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !137, !noalias !129
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 568
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !138, !noalias !129
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i32 0, ptr %2, align 4, !tbaa !127
  %.06.i.i.i.i.ptr.1.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %.06.i.i.i.i.ptr.1.i, align 4, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.ae = load i32, ptr %1, align 8, !tbaa !100   ; 2 uses
  %i.af = add nuw nsw i32 %i.u, 8
  %i.ag = and i32 %i.f, 2147483640                ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.ah = icmp samesign ult i32 %i.ae, %i.ab      ; 2 uses
  %i.ai = mul nuw nsw i32 %i.ae, %i.i
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.aj ; 2 uses
  %i.al = zext nneg i32 %i.ag to i64
  %wide.trip.count = zext nneg i32 %i.f to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.peel = load i32, ptr %i.x, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.am = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.peel to i64
  %i.an = shl nuw i64 %i.am, 32                   ; 6 uses
  %.not.peel.not = icmp eq i32 %i.ag, 0
  br i1 %.not.peel.not, label %bb.c, label %.preheader.us.preheader.peel

bb.c:                                             ; preds = %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  store i32 14, ptr %4, align 4, !tbaa !127
  store i32 14, ptr %3, align 4, !tbaa !127
  br label %.loopexit.peel

.preheader.us.preheader.peel:                     ; preds = %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %or.cond213.peel = icmp ult i64 %i.an, 576460752303423488
  br i1 %or.cond213.peel, label %.thread.loopexit.us.peel, label %.split.us

.thread.loopexit.us.peel:                         ; preds = %.preheader.us.preheader.peel
  %i.ao = lshr i64 %i.an, 58
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK8rawspeed20PhaseOneDecompressor15decompressStripERKNS_13PhaseOneStripEE6length, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !127
  store i32 %i.ar, ptr %3, align 4, !tbaa !127
  %i.as = and i64 %i.an, 270215977642229760
  %or.cond216.peel = icmp eq i64 %i.as, 0
  br i1 %or.cond216.peel, label %bb.d, label %.split.us

bb.d:                                             ; preds = %.thread.loopexit.us.peel
  %i.at = shl i64 %i.an, 10                       ; 2 uses
  %.not44.us.4.1.peel = icmp sgt i64 %i.at, -1
  br i1 %.not44.us.4.1.peel, label %.thread.loopexit.us.1.peel, label %.split.us

.thread.loopexit.us.1.peel:                       ; preds = %bb.d
  %i.au = lshr i64 %i.at, 62
  %i.av = shl i64 %i.an, 12
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK8rawspeed20PhaseOneDecompressor15decompressStripERKNS_13PhaseOneStripEE6length, i64 %i.au
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !127
  store i32 %i.ay, ptr %4, align 4, !tbaa !127
  br label %.loopexit.peel

.loopexit.peel:                                   ; preds = %.thread.loopexit.us.1.peel, %bb.c
  %.sroa.13.5.peel = phi i32 [ 32, %bb.c ], [ 20, %.thread.loopexit.us.1.peel ] ; 3 uses
  %.sroa.054.5.peel = phi i64 [ %i.an, %bb.c ], [ %i.av, %.thread.loopexit.us.1.peel ] ; 3 uses
  %i.az = load i32, ptr %3, align 4, !tbaa !127   ; 8 uses
  %i.ba = icmp eq i32 %i.az, 14
  br i1 %i.ba, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit.peel
  %i.bb = icmp ne i32 %i.az, 0
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = icmp samesign ult i32 %i.az, 33
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = icmp samesign ule i32 %i.az, %.sroa.13.5.peel
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = sub nuw nsw i32 64, %i.az
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = lshr i64 %.sroa.054.5.peel, %i.bf
  %i.bh = trunc nuw i64 %i.bg to i32
  %i.bi = sub nsw i32 %.sroa.13.5.peel, %i.az
  %i.bj = zext nneg i32 %i.az to i64
  %i.bk = add nsw i32 %i.az, -1
  %.neg.peel = shl nsw i32 -1, %i.bk
  %i.bl = load i32, ptr %2, align 4, !tbaa !127
  %i.bm = add nsw i32 %.neg.peel, 1
  %i.bn = add i32 %i.bm, %i.bh
  %i.bo = add nsw i32 %i.bn, %i.bl                ; 2 uses
  store i32 %i.bo, ptr %2, align 4, !tbaa !127
  %i.bp = trunc i32 %i.bo to i16
  br label %.peel.next

bb.f:                                             ; preds = %.loopexit.peel
  %i.bq = lshr i64 %.sroa.054.5.peel, 48          ; 2 uses
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = add nsw i32 %.sroa.13.5.peel, -16
  store i32 %i.br, ptr %2, align 4, !tbaa !127
  %i.bt = trunc nuw i64 %i.bq to i16
  br label %.peel.next

.peel.next:                                       ; preds = %bb.f, %bb.e
  %.sink.peel = phi i16 [ %i.bp, %bb.e ], [ %i.bt, %bb.f ]
  %.sroa.13.6.peel = phi i32 [ %i.bi, %bb.e ], [ %i.bs, %bb.f ]
  %.pn.peel = phi i64 [ %i.bj, %bb.e ], [ 16, %bb.f ]
  %.sroa.054.6.peel = shl i64 %.sroa.054.5.peel, %.pn.peel
  tail call void @llvm.assume(i1 %i.ah)
  store i16 %.sink.peel, ptr %i.ak, align 2, !tbaa !139
  br label %bb.g

.loopexit221:                                     ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

bb.g:                                             ; preds = %.peel.next, %bb.x
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %bb.x ] ; 5 uses
  %.sroa.054.0153 = phi i64 [ %.sroa.054.6.peel, %.peel.next ], [ %.sroa.054.6, %bb.x ] ; 2 uses
  %.sroa.13.0152 = phi i32 [ %.sroa.13.6.peel, %.peel.next ], [ %.sroa.13.6, %bb.x ] ; 5 uses
  %.sroa.3368.0151 = phi i32 [ 4, %.peel.next ], [ %.sroa.3368.1, %bb.x ] ; 5 uses
  %i.bu = icmp samesign ult i32 %.sroa.13.0152, 65
  tail call void @llvm.assume(i1 %i.bu)
  %.not.i = icmp samesign ult i32 %.sroa.13.0152, 32
  br i1 %.not.i, label %bb.h, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.bv = add nuw nsw i32 %.sroa.3368.0151, 4     ; 2 uses
  %.not.i.i = icmp samesign ugt i32 %i.bv, %i.u
  br i1 %.not.i.i, label %bb.j, label %bb.i, !prof !128

bb.i:                                             ; preds = %bb.h
  %i.bw = zext nneg i32 %.sroa.3368.0151 to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bw
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i

bb.j:                                             ; preds = %bb.h
  %i.by = icmp samesign ugt i32 %.sroa.3368.0151, %i.af
  br i1 %i.by, label %.loopexit220, label %bb.k, !prof !128

.loopexit220:                                     ; preds = %bb.j
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #17
  unreachable

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %.sroa.0.i.i, align 4
  %.sroa.speculated27.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.u, i32 %.sroa.3368.0151) ; 3 uses
  %i.bz = add nuw nsw i32 %.sroa.speculated27.i.i.i, 4
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.u, i32 %i.bz)
  %i.ca = sub nsw i32 %.sroa.speculated.i.i.i, %.sroa.speculated27.i.i.i ; 2 uses
  %i.cb = icmp samesign ult i32 %i.ca, 5
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = zext nneg i32 %.sroa.speculated27.i.i.i to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.cc
  %i.ce = zext nneg i32 %i.ca to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i, ptr align 1 %i.cd, i64 %i.ce, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i: ; preds = %bb.k, %bb.i
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i = phi ptr [ %.sroa.0.i.i, %bb.k ], [ %i.bx, %bb.i ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.cf = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i to i64
  %i.cg = or disjoint i32 %.sroa.13.0152, 32
  %i.ch = sub nuw nsw i32 32, %.sroa.13.0152
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = shl nuw i64 %i.cf, %i.ci
  %i.ck = or i64 %i.cj, %.sroa.054.0153
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit: ; preds = %bb.g, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i
  %.sroa.3368.1 = phi i32 [ %i.bv, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i ], [ %.sroa.3368.0151, %bb.g ] ; 5 uses
  %.sroa.13.7 = phi i32 [ %i.cg, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i ], [ %.sroa.13.0152, %bb.g ] ; 6 uses
  %.sroa.054.7 = phi i64 [ %i.ck, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i ], [ %.sroa.054.0153, %bb.g ] ; 8 uses
  %.not = icmp samesign ult i64 %indvars.iv, %i.al
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  store i32 14, ptr %4, align 4, !tbaa !127
  store i32 14, ptr %3, align 4, !tbaa !127
  br label %.loopexit

bb.m:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit
  %i.cl = and i64 %indvars.iv, 7
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %.preheader135, label %.loopexit

.preheader135:                                    ; preds = %bb.m
  %i.cn = icmp sgt i32 %.sroa.3368.1, -1
  tail call void @llvm.assume(i1 %i.cn)
  %i.co = and i32 %.sroa.3368.1, 3
  %i.cp = icmp eq i32 %i.co, 0
  tail call void @llvm.assume(i1 %i.cp)
  %i.cq = add nsw i32 %.sroa.13.7, -1             ; 2 uses
  %i.cr = shl i64 %.sroa.054.7, 1                 ; 3 uses
  %.not44 = icmp slt i64 %.sroa.054.7, 0
  br i1 %.not44, label %.preheader.1, label %bb.n

.split.us:                                        ; preds = %bb.d, %.thread.loopexit.us.peel, %.preheader.us.preheader.peel
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed20PhaseOneDecompressor15decompressStripERKNS_13PhaseOneStripE) #17
  unreachable

bb.n:                                             ; preds = %.preheader135
  %i.cs = shl i64 %.sroa.054.7, 2                 ; 3 uses
  %.not44.1 = icmp sgt i64 %i.cr, -1
  br i1 %.not44.1, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.ct = add nsw i32 %.sroa.13.7, -2
  %i.cu = shl i64 %.sroa.054.7, 3                 ; 3 uses
  %.not44.2 = icmp sgt i64 %i.cs, -1
  br i1 %.not44.2, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.cv = add nsw i32 %.sroa.13.7, -3
  %i.cw = shl i64 %.sroa.054.7, 4                 ; 3 uses
  %.not44.3 = icmp sgt i64 %i.cu, -1
  br i1 %.not44.3, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.cx = add nsw i32 %.sroa.13.7, -4
  %i.cy = shl i64 %.sroa.054.7, 5
  %.not44.4 = icmp sgt i64 %i.cw, -1
  %i.cz = select i1 %.not44.4, i64 8, i64 6
  br label %.thread

.thread:                                          ; preds = %bb.q, %bb.n, %bb.o, %bb.p
  %.sroa.054.2144162 = phi i64 [ %i.cw, %bb.q ], [ %i.cu, %bb.p ], [ %i.cs, %bb.o ], [ %i.cr, %bb.n ]
  %.sroa.13.2143160 = phi i32 [ %i.cx, %bb.q ], [ %i.cv, %bb.p ], [ %i.ct, %bb.o ], [ %i.cq, %bb.n ]
  %i.da = phi i64 [ %i.cy, %bb.q ], [ %i.cw, %bb.p ], [ %i.cu, %bb.o ], [ %i.cs, %bb.n ]
  %.0137 = phi i64 [ %i.cz, %bb.q ], [ 4, %bb.p ], [ 2, %bb.o ], [ 0, %bb.n ]
  %i.db = lshr i64 %i.da, 63
  %i.dc = add nsw i32 %.sroa.13.2143160, -2
  %i.dd = shl i64 %.sroa.054.2144162, 2
  %i.de = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK8rawspeed20PhaseOneDecompressor15decompressStripERKNS_13PhaseOneStripEE6length, i64 %i.db
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.0137
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !127
  store i32 %i.dg, ptr %3, align 4, !tbaa !127
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader135, %.thread
  %.sroa.13.4 = phi i32 [ %i.dc, %.thread ], [ %i.cq, %.preheader135 ] ; 4 uses
  %.sroa.054.4 = phi i64 [ %i.dd, %.thread ], [ %i.cr, %.preheader135 ] ; 6 uses
  %i.dh = add nsw i32 %.sroa.13.4, -1             ; 2 uses
  %i.di = shl i64 %.sroa.054.4, 1                 ; 3 uses
  %.not44.1171 = icmp slt i64 %.sroa.054.4, 0
  br i1 %.not44.1171, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %.preheader.1
  %i.dj = shl i64 %.sroa.054.4, 2                 ; 3 uses
  %.not44.1.1 = icmp sgt i64 %i.di, -1
  br i1 %.not44.1.1, label %bb.s, label %.thread.1

bb.s:                                             ; preds = %bb.r
  %i.dk = add nsw i32 %.sroa.13.4, -2
  %i.dl = shl i64 %.sroa.054.4, 3                 ; 3 uses
  %.not44.2.1 = icmp sgt i64 %i.dj, -1
  br i1 %.not44.2.1, label %bb.t, label %.thread.1

bb.t:                                             ; preds = %bb.s
  %i.dm = add nsw i32 %.sroa.13.4, -3
  %i.dn = shl i64 %.sroa.054.4, 4                 ; 3 uses
  %.not44.3.1 = icmp sgt i64 %i.dl, -1
  br i1 %.not44.3.1, label %bb.u, label %.thread.1

bb.u:                                             ; preds = %bb.t
  %i.do = add nsw i32 %.sroa.13.4, -4
  %i.dp = shl i64 %.sroa.054.4, 5
  %.not44.4.1 = icmp sgt i64 %i.dn, -1
  %i.dq = select i1 %.not44.4.1, i64 8, i64 6
  br label %.thread.1

.thread.1:                                        ; preds = %bb.u, %bb.r, %bb.s, %bb.t
  %.sroa.054.2144162.1 = phi i64 [ %i.dn, %bb.u ], [ %i.dl, %bb.t ], [ %i.dj, %bb.s ], [ %i.di, %bb.r ]
  %.sroa.13.2143160.1 = phi i32 [ %i.do, %bb.u ], [ %i.dm, %bb.t ], [ %i.dk, %bb.s ], [ %i.dh, %bb.r ]
  %i.dr = phi i64 [ %i.dp, %bb.u ], [ %i.dn, %bb.t ], [ %i.dl, %bb.s ], [ %i.dj, %bb.r ]
  %.0137.1 = phi i64 [ %i.dq, %bb.u ], [ 4, %bb.t ], [ 2, %bb.s ], [ 0, %bb.r ]
  %i.ds = lshr i64 %i.dr, 63
  %i.dt = add nsw i32 %.sroa.13.2143160.1, -2
  %i.du = shl i64 %.sroa.054.2144162.1, 2
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK8rawspeed20PhaseOneDecompressor15decompressStripERKNS_13PhaseOneStripEE6length, i64 %i.ds
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %.0137.1
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !127
  store i32 %i.dx, ptr %4, align 4, !tbaa !127
  br label %.loopexit

.loopexit:                                        ; preds = %.thread.1, %.preheader.1, %bb.m, %bb.l
  %.sroa.13.5 = phi i32 [ %.sroa.13.7, %bb.l ], [ %i.dh, %.preheader.1 ], [ %.sroa.13.7, %bb.m ], [ %i.dt, %.thread.1 ] ; 3 uses
  %.sroa.054.5 = phi i64 [ %.sroa.054.7, %bb.l ], [ %i.di, %.preheader.1 ], [ %.sroa.054.7, %bb.m ], [ %i.du, %.thread.1 ] ; 3 uses
  %i.dy = and i64 %indvars.iv, 1                  ; 3 uses
  %5 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dy
  %i.dz = load i32, ptr %5, align 4, !tbaa !127   ; 8 uses
  %i.ea = icmp eq i32 %i.dz, 14
  %i.eb = icmp sgt i32 %.sroa.3368.1, -1
  tail call void @llvm.assume(i1 %i.eb)
  %i.ec = and i32 %.sroa.3368.1, 3
  %i.ed = icmp eq i32 %i.ec, 0
  tail call void @llvm.assume(i1 %i.ed)
  br i1 %i.ea, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.loopexit
  %i.ee = lshr i64 %.sroa.054.5, 48               ; 2 uses
  %i.ef = trunc nuw nsw i64 %i.ee to i32
  %i.eg = add nsw i32 %.sroa.13.5, -16
  %6 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dy
  store i32 %i.ef, ptr %6, align 4, !tbaa !127
  %i.eh = trunc nuw i64 %i.ee to i16
  br label %bb.x

bb.w:                                             ; preds = %.loopexit
  %i.ei = icmp ne i32 %i.dz, 0
  tail call void @llvm.assume(i1 %i.ei)
  %i.ej = icmp samesign ult i32 %i.dz, 33
  tail call void @llvm.assume(i1 %i.ej)
  %i.ek = icmp samesign ule i32 %i.dz, %.sroa.13.5
  tail call void @llvm.assume(i1 %i.ek)
  %i.el = sub nuw nsw i32 64, %i.dz
  %i.em = zext nneg i32 %i.el to i64
  %i.en = lshr i64 %.sroa.054.5, %i.em
  %i.eo = trunc nuw i64 %i.en to i32
  %i.ep = sub nsw i32 %.sroa.13.5, %i.dz
  %i.eq = zext nneg i32 %i.dz to i64
  %i.er = add nsw i32 %i.dz, -1
  %.neg = shl nsw i32 -1, %i.er
  %7 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dy ; 2 uses
  %i.es = load i32, ptr %7, align 4, !tbaa !127
  %i.et = add nsw i32 %.neg, 1
  %i.eu = add i32 %i.et, %i.eo
  %i.ev = add nsw i32 %i.eu, %i.es                ; 2 uses
  store i32 %i.ev, ptr %7, align 4, !tbaa !127
  %i.ew = trunc i32 %i.ev to i16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink = phi i16 [ %i.ew, %bb.w ], [ %i.eh, %bb.v ]
  %.sroa.13.6 = phi i32 [ %i.ep, %bb.w ], [ %i.eg, %bb.v ]
  %.pn = phi i64 [ %i.eq, %bb.w ], [ 16, %bb.v ]
  %.sroa.054.6 = shl i64 %.sroa.054.5, %.pn
  tail call void @llvm.assume(i1 %i.ah)
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv
  store i16 %.sink, ptr %i.ex, align 2, !tbaa !139
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit221, label %bb.g, !llvm.loop !141
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK8rawspeed20PhaseOneDecompressor16decompressThreadEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::allocator.46", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = and i64 %i.g, 68719476736
  %i.i = icmp eq i64 %i.h, 0
  tail call void @llvm.assume(i1 %i.i)
  %i.j = and i64 %i.g, 68719476704                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.j
  %.not14 = icmp samesign eq i64 %i.j, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.015 = phi ptr [ %i.b, %.lr.ph ], [ %i.ac, %bb.f ] ; 2 uses
  invoke void @_ZNK8rawspeed20PhaseOneDecompressor15decompressStripERKNS_13PhaseOneStripE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %.015)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          catch ptr @_ZTIN8rawspeed17RawspeedExceptionE
          catch ptr null                          ; 2 uses
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  %i.o = extractvalue { ptr, i32 } %i.m, 1
  %i.p = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8rawspeed17RawspeedExceptionE) #26
  %i.q = icmp eq i32 %i.o, %i.p
  %i.r = call ptr @__cxa_begin_catch(ptr %i.n) #26 ; 2 uses
  call void @llvm.assume(i1 %i.q)
  %i.s = load ptr, ptr %0, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !115
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #26, !call_target !143
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.w, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  invoke void @_ZN8rawspeed8ErrorLog8setErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %1, align 8, !tbaa !153    ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.l
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.aa = load i64, ptr %i.l, align 8, !tbaa !126
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %.015, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.ac, %i.k
  br i1 %.not, label %._crit_edge, label %bb.b

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d, %bb.c
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #28
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #26 ; 0 uses
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #8

declare void @_ZN8rawspeed8ErrorLog8setErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !154
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.11) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #27
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !128

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #29 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !153
  store i64 %i.c, ptr %i.a, align 8, !tbaa !126
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !126
  store i8 %i.j, ptr %i.i, align 1, !tbaa !126
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !155
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !126
  ret void
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK8rawspeed20PhaseOneDecompressor10decompressEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  tail call void @_ZNK8rawspeed20PhaseOneDecompressor16decompressThreadEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
end_hunk_1
