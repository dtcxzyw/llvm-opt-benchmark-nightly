Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/UncompressedDecompressor?download=true
inline.NumInlined: 763
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::array.95" = type { [8192 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%"class.rawspeed::ByteStream" = type { %"class.rawspeed::DataBuffer.base", i32, [4 x i8] }
%"class.rawspeed::DataBuffer.base" = type { %"class.rawspeed::Buffer.base", i16 }
%"class.rawspeed::Buffer.base" = type <{ ptr, i32 }>
%"class.rawspeed::BitStreamerMSB" = type { %"class.rawspeed::BitStreamer" }
%"class.rawspeed::BitStreamer" = type { %"struct.rawspeed::BitStreamCacheRightInLeftOut", %"struct.rawspeed::BitStreamerForwardSequentialReplenisher" }
%"struct.rawspeed::BitStreamCacheRightInLeftOut" = type { %"struct.rawspeed::BitStreamCacheBase.base", [4 x i8] }
%"struct.rawspeed::BitStreamCacheBase.base" = type <{ i64, i32 }>
%"struct.rawspeed::BitStreamerForwardSequentialReplenisher" = type { %"struct.rawspeed::BitStreamerReplenisherBase.base", [4 x i8] }
%"struct.rawspeed::BitStreamerReplenisherBase.base" = type { %"class.rawspeed::Array1DRef.67", i32 }
%"class.rawspeed::Array1DRef.67" = type <{ ptr, i32, [4 x i8] }>
%"class.rawspeed::BitStreamerLSB" = type { %"class.rawspeed::BitStreamer.99" }
%"class.rawspeed::BitStreamer.99" = type { %"struct.rawspeed::BitStreamCacheLeftInRightOut", %"struct.rawspeed::BitStreamerForwardSequentialReplenisher.100" }
%"struct.rawspeed::BitStreamCacheLeftInRightOut" = type { %"struct.rawspeed::BitStreamCacheBase.base", [4 x i8] }
%"struct.rawspeed::BitStreamerForwardSequentialReplenisher.100" = type { %"struct.rawspeed::BitStreamerReplenisherBase.base.102", [4 x i8] }
%"struct.rawspeed::BitStreamerReplenisherBase.base.102" = type { %"class.rawspeed::Array1DRef.67", i32 }
%"class.rawspeed::BitStreamerMSB16" = type { %"class.rawspeed::BitStreamer.104" }
%"class.rawspeed::BitStreamer.104" = type { %"struct.rawspeed::BitStreamCacheRightInLeftOut", %"struct.rawspeed::BitStreamerForwardSequentialReplenisher.105" }
%"struct.rawspeed::BitStreamerForwardSequentialReplenisher.105" = type { %"struct.rawspeed::BitStreamerReplenisherBase.base.107", [4 x i8] }
%"struct.rawspeed::BitStreamerReplenisherBase.base.107" = type { %"class.rawspeed::Array1DRef.67", i32 }
%"class.rawspeed::BitStreamerMSB32" = type { %"class.rawspeed::BitStreamer.109" }
%"class.rawspeed::BitStreamer.109" = type { %"struct.rawspeed::BitStreamCacheRightInLeftOut", %"struct.rawspeed::BitStreamerForwardSequentialReplenisher.110" }
%"struct.rawspeed::BitStreamerForwardSequentialReplenisher.110" = type { %"struct.rawspeed::BitStreamerReplenisherBase.base.112", [4 x i8] }
%"struct.rawspeed::BitStreamerReplenisherBase.base.112" = type { %"class.rawspeed::Array1DRef.67", i32 }

$_ZN8rawspeed24UncompressedDecompressor13decode8BitRawILb0EEEvv = comdat any

$_ZN8rawspeed24UncompressedDecompressor13decode8BitRawILb1EEEvv = comdat any

$_ZN8rawspeed24UncompressedDecompressor25decode12BitRawWithControlILNS_10EndiannessE57005EEEvv = comdat any

$_ZN8rawspeed24UncompressedDecompressor25decode12BitRawWithControlILNS_10EndiannessE48879EEEvv = comdat any

$_ZN8rawspeed24UncompressedDecompressor33decode12BitRawUnpackedLeftAlignedILNS_10EndiannessE48879EEEvv = comdat any

$_ZN8rawspeed24UncompressedDecompressor33decode12BitRawUnpackedLeftAlignedILNS_10EndiannessE57005EEEvv = comdat any

$_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz = comdat any

$_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz = comdat any

$_ZN8rawspeed8RawImageD2Ev = comdat any

$_ZNK8rawspeed24UncompressedDecompressor14decodePackedFPINS_14BitStreamerMSBENS_13ieee_754_20088Binary16EEEvii = comdat any

$_ZNK8rawspeed24UncompressedDecompressor14decodePackedFPINS_14BitStreamerLSBENS_13ieee_754_20088Binary16EEEvii = comdat any

$_ZNK8rawspeed24UncompressedDecompressor14decodePackedFPINS_14BitStreamerMSBENS_13ieee_754_20088Binary24EEEvii = comdat any

$_ZNK8rawspeed24UncompressedDecompressor14decodePackedFPINS_14BitStreamerLSBENS_13ieee_754_20088Binary24EEEvii = comdat any

$_ZNK8rawspeed24UncompressedDecompressor15decodePackedIntINS_14BitStreamerMSBEEEvii = comdat any

$_ZNK8rawspeed24UncompressedDecompressor15decodePackedIntINS_16BitStreamerMSB16EEEvii = comdat any

$_ZNK8rawspeed24UncompressedDecompressor15decodePackedIntINS_16BitStreamerMSB32EEEvii = comdat any

$_ZNK8rawspeed24UncompressedDecompressor15decodePackedIntINS_14BitStreamerLSBEEEvii = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc = comdat any

$_ZN8rawspeed17RawspeedExceptionC2EPKc = comdat any

$_ZN8rawspeed17RawspeedException3logEPKc = comdat any

$_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc = comdat any

$_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE12skipManyBitsEi = comdat any

$_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE12skipManyBitsEi = comdat any

$_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE12skipManyBitsEi = comdat any

$_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE12skipManyBitsEi = comdat any

$_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf = comdat any

$_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf = comdat any

@.str = private unnamed_addr constant [76 x i8] c"%s, line 68: Not enough data to decode a single line. Image file truncated.\00", align 1
@__PRETTY_FUNCTION__._ZNK8rawspeed24UncompressedDecompressor11sanityCheckEPKji = private unnamed_addr constant [82 x i8] c"void rawspeed::UncompressedDecompressor::sanityCheck(const uint32_t *, int) const\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"%s, line 70: Image truncated, only %u of %u lines found\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"%s, line 92: Bad image width\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed24UncompressedDecompressor12bytesPerLineEib = private unnamed_addr constant [71 x i8] c"static int rawspeed::UncompressedDecompressor::bytesPerLine(int, bool)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"%s, line 114: Empty tile.\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed24UncompressedDecompressorC2ENS_10ByteStreamENS_8RawImageERKNS_12iRectangle2DEiiNS_8BitOrderE = private unnamed_addr constant [125 x i8] c"rawspeed::UncompressedDecompressor::UncompressedDecompressor(ByteStream, RawImage, const iRectangle2D &, int, int, BitOrder)\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"%s, line 117: Input pitch is non-positive\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"%s, line 126: JPEG bit order not supported.\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"%s, line 136: Unsupported number of components per pixel: %u\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"%s, line 140: Unsupported bit depth\00", align 1
@.str.8 = private unnamed_addr constant [129 x i8] c"%s, line 148: Bad combination of cpp (%u), bps (%d) and width (%u), the pitch is %lu bits, which is not a multiple of 8 (1 byte)\00", align 1
@.str.9 = private unnamed_addr constant [71 x i8] c"%s, line 156: Specified pitch is smaller than minimally-required pitch\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"%s, line 166: Invalid y offset\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"%s, line 168: Invalid x offset\00", align 1
@.str.12 = private unnamed_addr constant [77 x i8] c"%s, line 245: Unsupported floating-point input bitwidth/bit packing: %d / %u\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed24UncompressedDecompressor19readUncompressedRawEv = private unnamed_addr constant [63 x i8] c"void rawspeed::UncompressedDecompressor::readUncompressedRaw()\00", align 1
@.str.13 = private unnamed_addr constant [58 x i8] c"%s, line 80: Buffer overflow: image file may be truncated\00", align 1
@__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj = private unnamed_addr constant [64 x i8] c"Buffer rawspeed::Buffer::getSubView(size_type, size_type) const\00", align 1
@.str.15 = private unnamed_addr constant [62 x i8] c"%s, line 126: Integer overflow when calculating stream length\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed10ByteStream9getStreamEjj = private unnamed_addr constant [65 x i8] c"ByteStream rawspeed::ByteStream::getStream(size_type, size_type)\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf = linkonce_odr hidden thread_local global %"struct.std::array.95" zeroinitializer, comdat, align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"EXCEPTION: %s\00", align 1
@_ZTIN8rawspeed11IOExceptionE = external constant ptr
@_ZTVN8rawspeed11IOExceptionE = external constant { [6 x ptr] }, align 8
@_ZTVN8rawspeed17RawspeedExceptionE = external constant { [6 x ptr] }, align 8
@_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf = linkonce_odr hidden thread_local global %"struct.std::array.95" zeroinitializer, comdat, align 1
@_ZTIN8rawspeed19RawDecoderExceptionE = external constant ptr
@_ZTVN8rawspeed19RawDecoderExceptionE = external constant { [6 x ptr] }, align 8
@.str.18 = private unnamed_addr constant [61 x i8] c"%s, line 59: Bit stream size is smaller than MaxProcessBytes\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_14BitStreamerMSBEEC2ENS_10Array1DRefIKSt4byteEE = private unnamed_addr constant [153 x i8] c"rawspeed::BitStreamerReplenisherBase<rawspeed::BitStreamerMSB>::BitStreamerReplenisherBase(Array1DRef<const std::byte>) [Tag = rawspeed::BitStreamerMSB]\00", align 1
@.str.19 = private unnamed_addr constant [50 x i8] c"%s, line 127: Buffer overflow read in BitStreamer\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv = private unnamed_addr constant [184 x i8] c"std::array<std::byte, BitStreamerTraits<Tag>::MaxProcessBytes> rawspeed::BitStreamerForwardSequentialReplenisher<rawspeed::BitStreamerMSB>::getInput() [Tag = rawspeed::BitStreamerMSB]\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_14BitStreamerLSBEEC2ENS_10Array1DRefIKSt4byteEE = private unnamed_addr constant [153 x i8] c"rawspeed::BitStreamerReplenisherBase<rawspeed::BitStreamerLSB>::BitStreamerReplenisherBase(Array1DRef<const std::byte>) [Tag = rawspeed::BitStreamerLSB]\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv = private unnamed_addr constant [184 x i8] c"std::array<std::byte, BitStreamerTraits<Tag>::MaxProcessBytes> rawspeed::BitStreamerForwardSequentialReplenisher<rawspeed::BitStreamerLSB>::getInput() [Tag = rawspeed::BitStreamerLSB]\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_16BitStreamerMSB16EEC2ENS_10Array1DRefIKSt4byteEE = private unnamed_addr constant [157 x i8] c"rawspeed::BitStreamerReplenisherBase<rawspeed::BitStreamerMSB16>::BitStreamerReplenisherBase(Array1DRef<const std::byte>) [Tag = rawspeed::BitStreamerMSB16]\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB16EE8getInputEv = private unnamed_addr constant [188 x i8] c"std::array<std::byte, BitStreamerTraits<Tag>::MaxProcessBytes> rawspeed::BitStreamerForwardSequentialReplenisher<rawspeed::BitStreamerMSB16>::getInput() [Tag = rawspeed::BitStreamerMSB16]\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_16BitStreamerMSB32EEC2ENS_10Array1DRefIKSt4byteEE = private unnamed_addr constant [157 x i8] c"rawspeed::BitStreamerReplenisherBase<rawspeed::BitStreamerMSB32>::BitStreamerReplenisherBase(Array1DRef<const std::byte>) [Tag = rawspeed::BitStreamerMSB32]\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv = private unnamed_addr constant [188 x i8] c"std::array<std::byte, BitStreamerTraits<Tag>::MaxProcessBytes> rawspeed::BitStreamerForwardSequentialReplenisher<rawspeed::BitStreamerMSB32>::getInput() [Tag = rawspeed::BitStreamerMSB32]\00", align 1

@_ZN8rawspeed24UncompressedDecompressorC1ENS_10ByteStreamENS_8RawImageERKNS_12iRectangle2DEiiNS_8BitOrderE = hidden unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, i32, i8), ptr @_ZN8rawspeed24UncompressedDecompressorC2ENS_10ByteStreamENS_8RawImageERKNS_12iRectangle2DEiiNS_8BitOrderE

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN8rawspeed24UncompressedDecompressor13decode8BitRawILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !27   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !28   ; 5 uses
  %i.f = icmp ne i32 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp sgt i32 %i.c, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !29   ; 6 uses
  %i.j = icmp ne i32 %i.i, 0
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !30   ; 4 uses
  %i.m = icmp uge i32 %i.i, %i.l
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp sgt i32 %i.i, -1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = sub nuw nsw i32 %i.i, %i.l               ; 2 uses
  %i.p = udiv i32 %i.o, %i.c                      ; 2 uses
  %.not.i.i = icmp ult i32 %i.p, %i.e
  br i1 %.not.i.i, label %bb.b, label %_ZNK8rawspeed24UncompressedDecompressor11sanityCheckEjPKji.exit

bb.b:                                             ; preds = %bb.a
  %i.q = icmp samesign ugt i32 %i.c, %i.o
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed24UncompressedDecompressor11sanityCheckEPKji) #6
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed24UncompressedDecompressor11sanityCheckEPKji, i32 noundef %i.p, i32 noundef %i.e) #6
  unreachable

_ZNK8rawspeed24UncompressedDecompressor11sanityCheckEjPKji.exit: ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31   ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 568
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !33, !noalias !156
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 592
  %i.w = load i32, ptr %i.v, align 8, !tbaa !101, !noalias !156
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 608
  %i.y = load i32, ptr %i.x, align 8, !tbaa !102, !noalias !156
  %i.z = mul nsw i32 %i.y, %i.w                   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !103, !noalias !156
  %i.ac = ashr i32 %i.ab, 1                       ; 3 uses
  %i.ad = icmp ne i32 %i.ac, 0
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp sge i32 %i.ac, %i.z
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = mul i32 %i.e, %i.c                      ; 3 uses
  %i.ag = zext i32 %i.l to i64                    ; 2 uses
  %i.ah = zext i32 %i.af to i64                   ; 2 uses
  %i.ai = add nuw nsw i64 %i.ag, %i.ah
  %i.aj = zext nneg i32 %i.i to i64
  %.not.i.i.i = icmp samesign ugt i64 %i.ai, %i.aj
  br i1 %.not.i.i.i, label %bb.e, label %_ZN8rawspeed10ByteStream7getDataEj.exit

bb.e:                                             ; preds = %_ZNK8rawspeed24UncompressedDecompressor11sanityCheckEjPKji.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #6
  unreachable

_ZN8rawspeed10ByteStream7getDataEj.exit:          ; preds = %_ZNK8rawspeed24UncompressedDecompressor11sanityCheckEjPKji.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 612
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !104, !noalias !156
  %i.am = load ptr, ptr %0, align 8, !tbaa !105
  %i.an = add nuw nsw i32 %i.l, %i.af             ; 2 uses
  %i.ao = icmp samesign ule i32 %i.an, %i.i
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ag
  %i.aq = icmp sgt i32 %i.af, -1
  tail call void @llvm.assume(i1 %i.aq)
  store i32 %i.an, ptr %i.k, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %i.a, align 4, !tbaa !106
  %i.ar = zext nneg i32 %i.z to i64
  %i.as = zext nneg i32 %i.ac to i64
  %i.at = zext nneg i32 %i.al to i64
  %i.au = zext nneg i32 %i.c to i64               ; 3 uses
  %wide.trip.count70 = zext nneg i32 %i.e to i64
  br label %.preheader

.preheader:                                       ; preds = %_ZN8rawspeed10ByteStream7getDataEj.exit, %bb.g
  %indvars.iv67 = phi i64 [ 0, %_ZN8rawspeed10ByteStream7getDataEj.exit ], [ %indvars.iv.next68, %bb.g ] ; 4 uses
  %i.av = mul nuw nsw i64 %indvars.iv67, %i.au    ; 2 uses
  %i.aw = add nuw nsw i64 %i.av, %i.au
  %i.ax = icmp samesign ule i64 %i.aw, %i.ah
  call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.av
  %i.az = icmp samesign ult i64 %indvars.iv67, %i.at
  call void @llvm.assume(i1 %i.az)
  %i.ba = mul nuw nsw i64 %indvars.iv67, %i.as
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.ba
  br label %bb.h

bb.f:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %exitcond71.not = icmp eq i64 %indvars.iv.next68, %wide.trip.count70
  br i1 %exitcond71.not, label %bb.f, label %.preheader, !llvm.loop !152

bb.h:                                             ; preds = %.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %i.bc = load ptr, ptr %i.r, align 8, !tbaa !31  ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 %indvars.iv
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !108
  %i.bf = zext i8 %i.be to i16
  %i.bg = icmp samesign ult i64 %indvars.iv, %i.ar
  call void @llvm.assume(i1 %i.bg)
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !110
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(624) %i.bc, i16 noundef zeroext %i.bf, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.a), !call_target !171
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.au
  br i1 %exitcond.not, label %bb.g, label %bb.h, !llvm.loop !155
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK8rawspeed24UncompressedDecompressor11sanityCheckEjPKji(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ne i32 %1, 0
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp sgt i32 %3, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = mul i32 %3, %1                           ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.d = load i32, ptr %2, align 4, !tbaa !106    ; 3 uses
  %i.e = icmp ne i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp sgt i32 %i.c, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !29   ; 4 uses
  %i.i = icmp ne i32 %i.h, 0
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !30   ; 2 uses
  %i.l = icmp uge i32 %i.h, %i.k
  tail call void @llvm.assume(i1 %i.l)
  %i.m = icmp sgt i32 %i.h, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i32 %i.h, %i.k               ; 2 uses
  %i.o = udiv i32 %i.n, %i.c                      ; 2 uses
  %.not.i = icmp ult i32 %i.o, %i.d
  br i1 %.not.i, label %bb.b, label %_ZNK8rawspeed24UncompressedDecompressor11sanityCheckEPKji.exit

bb.b:                                             ; preds = %bb.a
  %i.p = icmp samesign ugt i32 %i.c, %i.n
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed24UncompressedDecompressor11sanityCheckEPKji) #6
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed24UncompressedDecompressor11sanityCheckEPKji, i32 noundef %i.o, i32 noundef %i.d) #6
  unreachable

_ZNK8rawspeed24UncompressedDecompressor11sanityCheckEPKji.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN8rawspeed24UncompressedDecompressor13decode8BitRawILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !27   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !28   ; 5 uses
  %i.e = icmp ne i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp sgt i32 %i.b, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !29   ; 6 uses
  %i.i = icmp ne i32 %i.h, 0
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !30   ; 4 uses
  %i.l = icmp uge i32 %i.h, %i.k
  tail call void @llvm.assume(i1 %i.l)
  %i.m = icmp sgt i32 %i.h, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i32 %i.h, %i.k               ; 2 uses
  %i.o = udiv i32 %i.n, %i.b                      ; 2 uses
  %.not.i.i = icmp ult i32 %i.o, %i.d
  br i1 %.not.i.i, label %bb.b, label %_ZNK8rawspeed24UncompressedDecompressor11sanityCheckEjPKji.exit

bb.b:                                             ; preds = %bb.a
  %i.p = icmp samesign ugt i32 %i.b, %i.n
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed24UncompressedDecompressor11sanityCheckEPKji) #6
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed24UncompressedDecompressor11sanityCheckEPKji, i32 noundef %i.o, i32 noundef %i.d) #6
  unreachable

_ZNK8rawspeed24UncompressedDecompressor11sanityCheckEjPKji.exit: ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !31   ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 568
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !33, !noalias !185 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 592
  %i.v = load i32, ptr %i.u, align 8, !tbaa !101, !noalias !185
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 608
  %i.x = load i32, ptr %i.w, align 8, !tbaa !102, !noalias !185
  %i.y = mul nsw i32 %i.x, %i.v                   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !103, !noalias !185
  %i.ab = ashr i32 %i.aa, 1                       ; 3 uses
  %i.ac = icmp ne i32 %i.ab, 0
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp sge i32 %i.ab, %i.y
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = mul i32 %i.d, %i.b                      ; 3 uses
  %i.af = zext i32 %i.k to i64                    ; 3 uses
  %i.ag = zext i32 %i.ae to i64                   ; 2 uses
  %i.ah = add nuw nsw i64 %i.af, %i.ag
  %i.ai = zext nneg i32 %i.h to i64
  %.not.i.i.i = icmp samesign ugt i64 %i.ah, %i.ai
  br i1 %.not.i.i.i, label %bb.e, label %_ZN8rawspeed10ByteStream7getDataEj.exit

bb.e:                                             ; preds = %_ZNK8rawspeed24UncompressedDecompressor11sanityCheckEjPKji.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #6
  unreachable

_ZN8rawspeed10ByteStream7getDataEj.exit:          ; preds = %_ZNK8rawspeed24UncompressedDecompressor11sanityCheckEjPKji.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 612
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !104, !noalias !185
  %i.al = load ptr, ptr %0, align 8, !tbaa !105   ; 2 uses
  %i.am = add nuw nsw i32 %i.k, %i.ae             ; 2 uses
  %i.an = icmp samesign ule i32 %i.am, %i.h
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.af ; 2 uses
  %i.ap = icmp sgt i32 %i.ae, -1
  tail call void @llvm.assume(i1 %i.ap)
  store i32 %i.am, ptr %i.j, align 8, !tbaa !30
  %i.aq = zext nneg i32 %i.y to i64               ; 2 uses
  %i.ar = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.as = zext nneg i32 %i.ak to i64
  %i.at = zext nneg i32 %i.b to i64               ; 12 uses
  %wide.trip.count70 = zext i32 %i.d to i64       ; 3 uses
  %i.au = add nuw i64 %wide.trip.count70, 9223372036854775807
  %i.av = mul i64 %i.au, %i.ar
  %i.aw = add i64 %i.av, %i.at
  %i.ax = shl i64 %i.aw, 1
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.ax
  %i.ay = mul nuw nsw i64 %wide.trip.count70, %i.at
  %i.az = getelementptr i8, ptr %i.al, i64 %i.ay
  %scevgep73 = getelementptr i8, ptr %i.az, i64 %i.af
  %min.iters.check = icmp samesign ult i32 %i.b, 8
  %bound0 = icmp ult ptr %i.t, %scevgep73
  %bound1 = icmp ult ptr %i.ao, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %min.iters.check74 = icmp samesign ult i32 %i.b, 64
  %i.ba = and i64 %i.at, 56
  %n.vec = and i64 %i.at, 2147483584              ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.at
  %min.epilog.iters.check = icmp eq i64 %i.ba, 0
  %n.vec78 = and i64 %i.at, 2147483640            ; 3 uses
  %cmp.n88 = icmp eq i64 %n.vec78, %i.at
  %xtraiter = and i64 %i.at, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check

iter.check:                                       ; preds = %_ZN8rawspeed10ByteStream7getDataEj.exit, %.loopexit
  %indvars.iv67 = phi i64 [ 0, %_ZN8rawspeed10ByteStream7getDataEj.exit ], [ %indvars.iv.next68, %.loopexit ] ; 4 uses
  %i.bb = mul nuw nsw i64 %indvars.iv67, %i.at    ; 2 uses
  %i.bc = add nuw nsw i64 %i.bb, %i.at
  %i.bd = icmp samesign ule i64 %i.bc, %i.ag
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bb ; 11 uses
  %i.bf = icmp samesign ult i64 %indvars.iv67, %i.as
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = mul nuw nsw i64 %indvars.iv67, %i.ar
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.bg ; 11 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check74, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 %index ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %wide.load = load <16 x i8>, ptr %i.bi, align 1, !tbaa !108, !alias.scope !186
  %wide.load75 = load <16 x i8>, ptr %i.bj, align 1, !tbaa !108, !alias.scope !186
  %wide.load76 = load <16 x i8>, ptr %i.bk, align 1, !tbaa !108, !alias.scope !186
  %wide.load77 = load <16 x i8>, ptr %i.bl, align 1, !tbaa !108, !alias.scope !186
  %i.bm = zext <16 x i8> %wide.load to <16 x i16>
  %i.bn = zext <16 x i8> %wide.load75 to <16 x i16>
  %i.bo = zext <16 x i8> %wide.load76 to <16 x i16>
  %i.bp = zext <16 x i8> %wide.load77 to <16 x i16>
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %index ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 96
  store <16 x i16> %i.bm, ptr %i.bq, align 2, !tbaa !114, !alias.scope !187, !noalias !186
  store <16 x i16> %i.bn, ptr %i.br, align 2, !tbaa !114, !alias.scope !187, !noalias !186
  store <16 x i16> %i.bo, ptr %i.bs, align 2, !tbaa !114, !alias.scope !187, !noalias !186
  store <16 x i16> %i.bp, ptr %i.bt, align 2, !tbaa !114, !alias.scope !187, !noalias !186
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !180

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !188

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index83 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next86, %vec.epilog.vector.body ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.be, i64 %index83
  %wide.load85 = load <8 x i8>, ptr %i.bv, align 1, !tbaa !108, !alias.scope !186
  %i.bw = zext <8 x i8> %wide.load85 to <8 x i16>
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %index83
  store <8 x i16> %i.bw, ptr %i.bx, align 2, !tbaa !114, !alias.scope !187, !noalias !186
  %index.next86 = add nuw i64 %index83, 8         ; 2 uses
  %i.by = icmp eq i64 %index.next86, %n.vec78
  br i1 %i.by, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !181

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n88, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec78, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.be, i64 %indvars.iv.prol
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !108
  %i.cb = zext i8 %i.ca to i16
  %i.cc = icmp samesign ult i64 %indvars.iv.prol, %i.aq
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %indvars.iv.prol
  store i16 %i.cb, ptr %i.cd, align 2, !tbaa !114
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !182

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.ce = sub nsw i64 %indvars.iv.ph, %i.at
  %i.cf = icmp ugt i64 %i.ce, -8
  br i1 %i.cf, label %.loopexit, label %vec.epilog.scalar.ph

bb.f:                                             ; preds = %.loopexit
  ret void

.loopexit:                                        ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %exitcond71.not = icmp eq i64 %indvars.iv.next68, %wide.trip.count70
  br i1 %exitcond71.not, label %bb.f, label %iter.check, !llvm.loop !183

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.be, i64 %indvars.iv
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !108
  %i.ci = zext i8 %i.ch to i16
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %indvars.iv
  store i16 %i.ci, ptr %i.cj, align 2, !tbaa !114
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.be, i64 %indvars.iv.next
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !108
  %i.cm = zext i8 %i.cl to i16
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %indvars.iv.next
  store i16 %i.cm, ptr %i.cn, align 2, !tbaa !114
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.be, i64 %indvars.iv.next.1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !108
  %i.cq = zext i8 %i.cp to i16
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %indvars.iv.next.1
  store i16 %i.cq, ptr %i.cr, align 2, !tbaa !114
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.be, i64 %indvars.iv.next.2
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !108
  %i.cu = zext i8 %i.ct to i16
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %indvars.iv.next.2
  store i16 %i.cu, ptr %i.cv, align 2, !tbaa !114
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.be, i64 %indvars.iv.next.3
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !108
  %i.cy = zext i8 %i.cx to i16
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %indvars.iv.next.3
  store i16 %i.cy, ptr %i.cz, align 2, !tbaa !114
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.be, i64 %indvars.iv.next.4
  %i.db = load i8, ptr %i.da, align 1, !tbaa !108
  %i.dc = zext i8 %i.db to i16
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %indvars.iv.next.4
  store i16 %i.dc, ptr %i.dd, align 2, !tbaa !114
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.be, i64 %indvars.iv.next.5
  %i.df = load i8, ptr %i.de, align 1, !tbaa !108
  %i.dg = zext i8 %i.df to i16
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %indvars.iv.next.5
  store i16 %i.dg, ptr %i.dh, align 2, !tbaa !114
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.be, i64 %indvars.iv.next.6
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !108
  %i.dk = zext i8 %i.dj to i16
  %i.dl = icmp samesign ult i64 %indvars.iv.next.6, %i.aq
  tail call void @llvm.assume(i1 %i.dl)
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %indvars.iv.next.6
  store i16 %i.dk, ptr %i.dm, align 2, !tbaa !114
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %i.at
  br i1 %exitcond.not.7, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !184
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN8rawspeed24UncompressedDecompressor25decode12BitRawWithControlILNS_10EndiannessE57005EEEvv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !27   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !28   ; 5 uses
  %i.e = icmp sgt i32 %i.b, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = mul nuw nsw i32 %i.b, 12                 ; 2 uses
  %i.g = and i32 %i.f, 4
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN8rawspeed24UncompressedDecompressor12bytesPerLineEib.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed24UncompressedDecompressor12bytesPerLineEib) #6
  unreachable

_ZN8rawspeed24UncompressedDecompressor12bytesPerLineEib.exit: ; preds = %bb.a
  %i.h = lshr exact i32 %i.f, 3
  %i.i = add nuw nsw i32 %i.b, 2
  %i.j = udiv i32 %i.i, 10
  %i.k = add nuw nsw i32 %i.h, %i.j               ; 6 uses
  %i.l = icmp ne i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !29   ; 7 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !30   ; 4 uses
  %i.r = icmp uge i32 %i.n, %i.q
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp sgt i32 %i.n, -1
  tail call void @llvm.assume(i1 %i.s)
  %i.t = sub nuw nsw i32 %i.n, %i.q               ; 2 uses
  %i.u = udiv i32 %i.t, %i.k                      ; 2 uses
  %.not.i33 = icmp ult i32 %i.u, %i.d
  br i1 %.not.i33, label %bb.c, label %_ZNK8rawspeed24UncompressedDecompressor11sanityCheckEPKji.exit

bb.c:                                             ; preds = %_ZN8rawspeed24UncompressedDecompressor12bytesPerLineEib.exit
  %i.v = icmp samesign ugt i32 %i.k, %i.t
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed24UncompressedDecompressor11sanityCheckEPKji) #6
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed24UncompressedDecompressor11sanityCheckEPKji, i32 noundef %i.u, i32 noundef %i.d) #6
  unreachable

_ZNK8rawspeed24UncompressedDecompressor11sanityCheckEPKji.exit: ; preds = %_ZN8rawspeed24UncompressedDecompressor12bytesPerLineEib.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !31   ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 568
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !33, !noalias !193
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 592
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !101, !noalias !193
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 608
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !102, !noalias !193
  %i.ae = mul nsw i32 %i.ad, %i.ab                ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !103, !noalias !193
  %i.ah = ashr i32 %i.ag, 1                       ; 3 uses
  %i.ai = icmp ne i32 %i.ah, 0
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp sge i32 %i.ah, %i.ae
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = mul i32 %i.k, %i.d                      ; 3 uses
  %i.al = zext i32 %i.q to i64                    ; 2 uses
  %i.am = zext i32 %i.ak to i64                   ; 2 uses
  %i.an = add nuw nsw i64 %i.al, %i.am
  %i.ao = zext nneg i32 %i.n to i64
  %.not.i.i.i = icmp samesign ugt i64 %i.an, %i.ao
  br i1 %.not.i.i.i, label %bb.f, label %_ZN8rawspeed10ByteStream7getDataEj.exit

bb.f:                                             ; preds = %_ZNK8rawspeed24UncompressedDecompressor11sanityCheckEPKji.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #6
  unreachable

_ZN8rawspeed10ByteStream7getDataEj.exit:          ; preds = %_ZNK8rawspeed24UncompressedDecompressor11sanityCheckEPKji.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 612
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !104, !noalias !193
  %i.ar = load ptr, ptr %0, align 8, !tbaa !105
  %i.as = add nuw nsw i32 %i.q, %i.ak             ; 2 uses
  %i.at = icmp samesign ule i32 %i.as, %i.n
  tail call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.al
  %i.av = icmp sgt i32 %i.ak, -1
  tail call void @llvm.assume(i1 %i.av)
  store i32 %i.as, ptr %i.p, align 8, !tbaa !30
  %i.aw = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ax = zext nneg i32 %i.b to i64
  %i.ay = zext nneg i32 %i.ah to i64
  %i.az = zext nneg i32 %i.aq to i64
  %i.ba = zext nneg i32 %i.k to i64               ; 2 uses
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.preheader

.preheader:                                       ; preds = %_ZN8rawspeed10ByteStream7getDataEj.exit, %bb.g
  %indvars.iv124 = phi i64 [ 0, %_ZN8rawspeed10ByteStream7getDataEj.exit ], [ %indvars.iv.next125, %bb.g ] ; 4 uses
  %i.bb = mul nuw nsw i64 %indvars.iv124, %i.ba   ; 2 uses
  %i.bc = add nuw nsw i64 %i.bb, %i.ba
  %i.bd = icmp samesign ule i64 %i.bc, %i.am
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bb ; 3 uses
  %i.bf = icmp samesign ult i64 %indvars.iv124, %i.az
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = mul nuw nsw i64 %indvars.iv124, %i.ay
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.bg ; 2 uses
  br label %bb.h

_ZN8rawspeed10ByteStream9skipBytesEj.exit:        ; preds = %bb.g
  store i32 %i.n, ptr %i.p, align 8, !tbaa !30
  ret void

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count
  br i1 %exitcond.not, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit, label %.preheader, !llvm.loop !191

bb.h:                                             ; preds = %.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.h ] ; 5 uses
  %.025120 = phi i32 [ 0, %.preheader ], [ %spec.select, %bb.h ] ; 4 uses
  %i.bi = zext nneg i32 %.025120 to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !108
  %i.bl = zext i8 %i.bk to i32
  %i.bm = add nuw nsw i32 %.025120, 1             ; 2 uses
  %i.bn = icmp samesign ult i32 %i.bm, %i.k
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = zext nneg i32 %i.bm to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !108
  %i.br = zext i8 %i.bq to i32                    ; 2 uses
  %i.bs = shl nuw nsw i32 %i.br, 8
  %i.bt = and i32 %i.bs, 3840
  %i.bu = or disjoint i32 %i.bt, %i.bl
  %.0.i = trunc nuw nsw i32 %i.bu to i16
  %i.bv = icmp samesign ult i64 %indvars.iv, %i.aw
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %indvars.iv
  store i16 %.0.i, ptr %i.bw, align 2, !tbaa !114
  %i.bx = add nuw nsw i32 %.025120, 2             ; 2 uses
  %i.by = icmp samesign ult i32 %i.bx, %i.k
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = zext nneg i32 %i.bx to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !108
  %i.cc = zext i8 %i.cb to i32
  %i.cd = or disjoint i64 %indvars.iv, 1          ; 2 uses
  %i.ce = shl nuw nsw i32 %i.cc, 4
  %i.cf = lshr i32 %i.br, 4
  %i.cg = or disjoint i32 %i.ce, %i.cf
  %.0.i41 = trunc nuw nsw i32 %i.cg to i16
  %i.ch = icmp samesign ult i64 %i.cd, %i.aw
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.cd
  store i16 %.0.i41, ptr %i.ci, align 2, !tbaa !114
  %i.cj = trunc nuw nsw i64 %indvars.iv to i32
  %i.ck = urem i32 %i.cj, 10
  %i.cl = icmp eq i32 %i.ck, 8
  %spec.select.v = select i1 %i.cl, i32 4, i32 3
  %spec.select = add nuw i32 %spec.select.v, %.025120
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cm = icmp samesign ult i64 %indvars.iv.next, %i.ax
  br i1 %i.cm, label %bb.h, label %bb.g, !llvm.loop !192
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 1, 483183820) i32 @_ZN8rawspeed24UncompressedDecompressor12bytesPerLineEib(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  tail call void @llvm.assume(i1 %i.a)
  %i.b = mul nuw nsw i32 %0, 12                   ; 2 uses
  %i.c = and i32 %i.b, 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed24UncompressedDecompressor12bytesPerLineEib) #6
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = lshr exact i32 %i.b, 3                   ; 2 uses
  br i1 %1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = add nuw nsw i32 %0, 2
  %i.f = udiv i32 %i.e, 10
  %i.g = add nuw nsw i32 %i.d, %i.f
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i32 [ %i.g, %bb.d ], [ %i.d, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK8rawspeed24UncompressedDecompressor11sanityCheckEPKji(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = load i32, ptr %1, align 4, !tbaa !106    ; 3 uses
  %i.b = icmp ne i32 %i.a, 0
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp sgt i32 %2, 0
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !29   ; 4 uses
  %i.f = icmp ne i32 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !30   ; 2 uses
  %i.i = icmp uge i32 %i.e, %i.h
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp sgt i32 %i.e, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = sub nuw nsw i32 %i.e, %i.h               ; 2 uses
  %i.l = udiv i32 %i.k, %2                        ; 2 uses
  %.not = icmp ult i32 %i.l, %i.a
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.m = icmp samesign ugt i32 %2, %i.k
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed24UncompressedDecompressor11sanityCheckEPKji) #6
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed24UncompressedDecompressor11sanityCheckEPKji, i32 noundef %i.l, i32 noundef %i.a) #6
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN8rawspeed24UncompressedDecompressor25decode12BitRawWithControlILNS_10EndiannessE48879EEEvv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !27   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !28   ; 5 uses
  %i.e = icmp sgt i32 %i.b, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = mul nuw nsw i32 %i.b, 12                 ; 2 uses
  %i.g = and i32 %i.f, 4
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN8rawspeed24UncompressedDecompressor12bytesPerLineEib.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed24UncompressedDecompressor12bytesPerLineEib) #6
  unreachable

_ZN8rawspeed24UncompressedDecompressor12bytesPerLineEib.exit: ; preds = %bb.a
  %i.h = lshr exact i32 %i.f, 3
  %i.i = add nuw nsw i32 %i.b, 2
  %i.j = udiv i32 %i.i, 10
  %i.k = add nuw nsw i32 %i.h, %i.j               ; 6 uses
  %i.l = icmp ne i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !29   ; 7 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !30   ; 4 uses
  %i.r = icmp uge i32 %i.n, %i.q
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp sgt i32 %i.n, -1
  tail call void @llvm.assume(i1 %i.s)
  %i.t = sub nuw nsw i32 %i.n, %i.q               ; 2 uses
  %i.u = udiv i32 %i.t, %i.k                      ; 2 uses
  %.not.i33 = icmp ult i32 %i.u, %i.d
  br i1 %.not.i33, label %bb.c, label %_ZNK8rawspeed24UncompressedDecompressor11sanityCheckEPKji.exit

bb.c:                                             ; preds = %_ZN8rawspeed24UncompressedDecompressor12bytesPerLineEib.exit
  %i.v = icmp samesign ugt i32 %i.k, %i.t
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed24UncompressedDecompressor11sanityCheckEPKji) #6
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed24UncompressedDecompressor11sanityCheckEPKji, i32 noundef %i.u, i32 noundef %i.d) #6
  unreachable

_ZNK8rawspeed24UncompressedDecompressor11sanityCheckEPKji.exit: ; preds = %_ZN8rawspeed24UncompressedDecompressor12bytesPerLineEib.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !31   ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 568
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !33, !noalias !198
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 592
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !101, !noalias !198
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 608
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !102, !noalias !198
  %i.ae = mul nsw i32 %i.ad, %i.ab                ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !103, !noalias !198
  %i.ah = ashr i32 %i.ag, 1                       ; 3 uses
  %i.ai = icmp ne i32 %i.ah, 0
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp sge i32 %i.ah, %i.ae
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = mul i32 %i.k, %i.d                      ; 3 uses
  %i.al = zext i32 %i.q to i64                    ; 2 uses
  %i.am = zext i32 %i.ak to i64                   ; 2 uses
  %i.an = add nuw nsw i64 %i.al, %i.am
  %i.ao = zext nneg i32 %i.n to i64
  %.not.i.i.i = icmp samesign ugt i64 %i.an, %i.ao
  br i1 %.not.i.i.i, label %bb.f, label %_ZN8rawspeed10ByteStream7getDataEj.exit

bb.f:                                             ; preds = %_ZNK8rawspeed24UncompressedDecompressor11sanityCheckEPKji.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #6
  unreachable

_ZN8rawspeed10ByteStream7getDataEj.exit:          ; preds = %_ZNK8rawspeed24UncompressedDecompressor11sanityCheckEPKji.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 612
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !104, !noalias !198
  %i.ar = load ptr, ptr %0, align 8, !tbaa !105
  %i.as = add nuw nsw i32 %i.q, %i.ak             ; 2 uses
  %i.at = icmp samesign ule i32 %i.as, %i.n
  tail call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.al
  %i.av = icmp sgt i32 %i.ak, -1
  tail call void @llvm.assume(i1 %i.av)
  store i32 %i.as, ptr %i.p, align 8, !tbaa !30
  %i.aw = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ax = zext nneg i32 %i.b to i64
  %i.ay = zext nneg i32 %i.ah to i64
  %i.az = zext nneg i32 %i.aq to i64
  %i.ba = zext nneg i32 %i.k to i64               ; 2 uses
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.preheader

.preheader:                                       ; preds = %_ZN8rawspeed10ByteStream7getDataEj.exit, %bb.g
  %indvars.iv124 = phi i64 [ 0, %_ZN8rawspeed10ByteStream7getDataEj.exit ], [ %indvars.iv.next125, %bb.g ] ; 4 uses
  %i.bb = mul nuw nsw i64 %indvars.iv124, %i.ba   ; 2 uses
  %i.bc = add nuw nsw i64 %i.bb, %i.ba
  %i.bd = icmp samesign ule i64 %i.bc, %i.am
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bb ; 3 uses
  %i.bf = icmp samesign ult i64 %indvars.iv124, %i.az
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = mul nuw nsw i64 %indvars.iv124, %i.ay
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.bg ; 2 uses
  br label %bb.h

_ZN8rawspeed10ByteStream9skipBytesEj.exit:        ; preds = %bb.g
  store i32 %i.n, ptr %i.p, align 8, !tbaa !30
  ret void

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count
  br i1 %exitcond.not, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit, label %.preheader, !llvm.loop !196

bb.h:                                             ; preds = %.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.h ] ; 5 uses
  %.025120 = phi i32 [ 0, %.preheader ], [ %spec.select, %bb.h ] ; 4 uses
  %i.bi = zext nneg i32 %.025120 to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !108
  %i.bl = zext i8 %i.bk to i32
  %i.bm = add nuw nsw i32 %.025120, 1             ; 2 uses
  %i.bn = icmp samesign ult i32 %i.bm, %i.k
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = zext nneg i32 %i.bm to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !108
  %i.br = zext i8 %i.bq to i32                    ; 2 uses
  %i.bs = shl nuw nsw i32 %i.bl, 4
  %i.bt = lshr i32 %i.br, 4
  %i.bu = or disjoint i32 %i.bt, %i.bs
  %.0.i = trunc nuw nsw i32 %i.bu to i16
  %i.bv = icmp samesign ult i64 %indvars.iv, %i.aw
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %indvars.iv
  store i16 %.0.i, ptr %i.bw, align 2, !tbaa !114
  %i.bx = add nuw nsw i32 %.025120, 2             ; 2 uses
  %i.by = icmp samesign ult i32 %i.bx, %i.k
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = zext nneg i32 %i.bx to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !108
  %i.cc = zext i8 %i.cb to i32
  %i.cd = or disjoint i64 %indvars.iv, 1          ; 2 uses
  %i.ce = shl nuw nsw i32 %i.br, 8
  %i.cf = and i32 %i.ce, 3840
  %i.cg = or disjoint i32 %i.cf, %i.cc
  %.0.i41 = trunc nuw nsw i32 %i.cg to i16
  %i.ch = icmp samesign ult i64 %i.cd, %i.aw
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %i.cd
  store i16 %.0.i41, ptr %i.ci, align 2, !tbaa !114
  %i.cj = trunc nuw nsw i64 %indvars.iv to i32
  %i.ck = urem i32 %i.cj, 10
  %i.cl = icmp eq i32 %i.ck, 8
  %spec.select.v = select i1 %i.cl, i32 4, i32 3
  %spec.select = add nuw i32 %spec.select.v, %.025120
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cm = icmp samesign ult i64 %indvars.iv.next, %i.ax
  br i1 %i.cm, label %bb.h, label %bb.g, !llvm.loop !197
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN8rawspeed24UncompressedDecompressor33decode12BitRawUnpackedLeftAlignedILNS_10EndiannessE48879EEEvv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !27   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !28   ; 5 uses
  %i.e = icmp ne i32 %i.b, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = shl i32 %i.b, 1                          ; 5 uses
  %i.g = icmp ne i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp sgt i32 %i.f, 0
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !29   ; 6 uses
  %i.k = icmp ne i32 %i.j, 0
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !30   ; 4 uses
  %i.n = icmp uge i32 %i.j, %i.m
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp sgt i32 %i.j, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = sub nuw nsw i32 %i.j, %i.m               ; 2 uses
  %i.q = udiv i32 %i.p, %i.f                      ; 2 uses
  %.not.i.i = icmp ult i32 %i.q, %i.d
  br i1 %.not.i.i, label %bb.b, label %_ZNK8rawspeed24UncompressedDecompressor11sanityCheckEjPKji.exit

bb.b:                                             ; preds = %bb.a
  %i.r = icmp samesign ugt i32 %i.f, %i.p
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed24UncompressedDecompressor11sanityCheckEPKji) #6
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed24UncompressedDecompressor11sanityCheckEPKji, i32 noundef %i.q, i32 noundef %i.d) #6
  unreachable

_ZNK8rawspeed24UncompressedDecompressor11sanityCheckEjPKji.exit: ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !31   ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 568
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !33, !noalias !209 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 592
  %i.x = load i32, ptr %i.w, align 8, !tbaa !101, !noalias !209
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 608
  %i.z = load i32, ptr %i.y, align 8, !tbaa !102, !noalias !209
  %i.aa = mul nsw i32 %i.z, %i.x                  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 612
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !104, !noalias !209
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !103, !noalias !209
  %i.af = ashr i32 %i.ae, 1                       ; 3 uses
  %i.ag = icmp ne i32 %i.af, 0
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp sge i32 %i.af, %i.aa
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = mul i32 %i.f, %i.d                      ; 3 uses
  %i.aj = zext i32 %i.m to i64                    ; 3 uses
  %i.ak = zext i32 %i.ai to i64                   ; 2 uses
  %i.al = add nuw nsw i64 %i.aj, %i.ak
  %i.am = zext nneg i32 %i.j to i64
  %.not.i.i.i = icmp samesign ugt i64 %i.al, %i.am
  br i1 %.not.i.i.i, label %bb.e, label %_ZN8rawspeed10ByteStream7getDataEj.exit

bb.e:                                             ; preds = %_ZNK8rawspeed24UncompressedDecompressor11sanityCheckEjPKji.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #6
  unreachable

_ZN8rawspeed10ByteStream7getDataEj.exit:          ; preds = %_ZNK8rawspeed24UncompressedDecompressor11sanityCheckEjPKji.exit
  %i.an = load ptr, ptr %0, align 8, !tbaa !105   ; 2 uses
  %i.ao = add nuw nsw i32 %i.m, %i.ai             ; 2 uses
  %i.ap = icmp samesign ule i32 %i.ao, %i.j
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr i8, ptr %i.an, i64 %i.aj  ; 2 uses
  %i.ar = icmp sgt i32 %i.ai, -1
  tail call void @llvm.assume(i1 %i.ar)
  store i32 %i.ao, ptr %i.l, align 8, !tbaa !30
  %i.as = icmp sgt i32 %i.b, 0
  br i1 %i.as, label %.preheader.preheader, label %._crit_edge94.split

.preheader.preheader:                             ; preds = %_ZN8rawspeed10ByteStream7getDataEj.exit
  %i.at = zext nneg i32 %i.aa to i64              ; 5 uses
  %i.au = zext nneg i32 %i.f to i64               ; 8 uses
  %i.av = zext i32 %i.af to i64                   ; 2 uses
  %i.aw = zext nneg i32 %i.ac to i64
  %wide.trip.count99 = zext i32 %i.d to i64       ; 2 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 10 uses
  %i.ax = add nsw i64 %wide.trip.count99, -1      ; 2 uses
  %i.ay = mul i64 %i.ax, %i.av
  %i.az = shl nuw nsw i64 %wide.trip.count, 1
  %i.ba = add i64 %i.ay, %wide.trip.count
  %i.bb = shl i64 %i.ba, 1
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.bb
  %i.bc = mul nsw i64 %i.ax, %i.au
  %i.bd = getelementptr i8, ptr %i.an, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.az
  %scevgep103 = getelementptr i8, ptr %i.be, i64 %i.aj
  %min.iters.check = icmp ult i32 %i.b, 4
  %bound0 = icmp ult ptr %i.v, %scevgep103
  %bound1 = icmp ult ptr %i.aq, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %min.iters.check104 = icmp ult i32 %i.b, 16
  %i.bf = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.bf, 0
  %n.vec108 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n122 = icmp eq i64 %n.vec108, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv96 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next97, %._crit_edge ] ; 4 uses
  %i.bg = mul nuw nsw i64 %indvars.iv96, %i.au    ; 2 uses
  %i.bh = add nuw nsw i64 %i.bg, %i.au
  %i.bi = icmp samesign ule i64 %i.bh, %i.ak
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bg ; 12 uses
  %i.bk = icmp samesign ult i64 %indvars.iv96, %i.aw
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = mul nuw nsw i64 %indvars.iv96, %i.av
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.bl ; 7 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check104, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.bn = phi i64 [ %i.bv, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.bo = shl nuw nsw i64 %i.bn, 1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bo
  %wide.vec = load <32 x i8>, ptr %i.bp, align 1, !tbaa !108, !alias.scope !210
  %i.bq = freeze <32 x i8> %wide.vec
  %i.br = bitcast <32 x i8> %i.bq to <16 x i16>
  %i.bs = tail call <16 x i16> @llvm.bswap.v16i16(<16 x i16> %i.br)
  %i.bt = lshr <16 x i16> %i.bs, splat (i16 4)
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %index
  store <16 x i16> %i.bt, ptr %i.bu, align 2, !tbaa !114, !alias.scope !211, !noalias !210
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bv = add nuw nsw i64 %i.bn, 16
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !204

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !118

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index115 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next120, %vec.epilog.vector.body ] ; 2 uses
  %i.bx = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %i.cf, %vec.epilog.vector.body ] ; 2 uses
  %i.by = shl nuw nsw i64 %i.bx, 1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.by
  %wide.vec117 = load <8 x i8>, ptr %i.bz, align 1, !tbaa !108, !alias.scope !210
  %i.ca = freeze <8 x i8> %wide.vec117
  %i.cb = bitcast <8 x i8> %i.ca to <4 x i16>
  %i.cc = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.cb)
  %i.cd = lshr <4 x i16> %i.cc, splat (i16 4)
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %index115
  store <4 x i16> %i.cd, ptr %i.ce, align 2, !tbaa !114, !alias.scope !211, !noalias !210
  %index.next120 = add nuw i64 %index115, 4       ; 2 uses
  %i.cf = add nuw nsw i64 %i.bx, 4
  %i.cg = icmp eq i64 %index.next120, %n.vec108
  br i1 %i.cg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !205

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n122, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec108, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ch = shl nuw nsw i64 %indvars.iv.prol, 1     ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !108
  %i.ck = zext i8 %i.cj to i16
  %i.cl = or disjoint i64 %i.ch, 1                ; 2 uses
  %i.cm = icmp samesign ult i64 %i.cl, %i.au
  tail call void @llvm.assume(i1 %i.cm)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cl
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !108
  %i.cp = zext i8 %i.co to i16
  %i.cq = shl nuw i16 %i.ck, 8
  %i.cr = or disjoint i16 %i.cq, %i.cp
  %i.cs = lshr i16 %i.cr, 4
  %i.ct = icmp samesign ult i64 %indvars.iv.prol, %i.at
  tail call void @llvm.assume(i1 %i.ct)
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.prol
  store i16 %i.cs, ptr %i.cu, align 2, !tbaa !114
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !206

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.cv = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.cw = icmp ugt i64 %i.cv, -4
  br i1 %i.cw, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge94.split:                              ; preds = %._crit_edge, %_ZN8rawspeed10ByteStream7getDataEj.exit
  ret void

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond100.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count99
  br i1 %exitcond100.not, label %._crit_edge94.split, label %iter.check, !llvm.loop !207

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 7 uses
  %i.cx = shl nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !108
  %i.da = zext i8 %i.cz to i16
  %i.db = or disjoint i64 %i.cx, 1                ; 2 uses
  %i.dc = icmp samesign ult i64 %i.db, %i.au
  tail call void @llvm.assume(i1 %i.dc)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.db
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !108
  %i.df = zext i8 %i.de to i16
  %i.dg = shl nuw i16 %i.da, 8
  %i.dh = or disjoint i16 %i.dg, %i.df
  %i.di = lshr i16 %i.dh, 4
  %i.dj = icmp samesign ult i64 %indvars.iv, %i.at
  tail call void @llvm.assume(i1 %i.dj)
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv
  store i16 %i.di, ptr %i.dk, align 2, !tbaa !114
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.dl = shl nuw nsw i64 %indvars.iv.next, 1     ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !108
  %i.do = zext i8 %i.dn to i16
  %i.dp = or disjoint i64 %i.dl, 1                ; 2 uses
  %i.dq = icmp samesign ult i64 %i.dp, %i.au
  tail call void @llvm.assume(i1 %i.dq)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.dp
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !108
  %i.dt = zext i8 %i.ds to i16
  %i.du = shl nuw i16 %i.do, 8
  %i.dv = or disjoint i16 %i.du, %i.dt
  %i.dw = lshr i16 %i.dv, 4
  %i.dx = icmp samesign ult i64 %indvars.iv.next, %i.at
  tail call void @llvm.assume(i1 %i.dx)
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next
  store i16 %i.dw, ptr %i.dy, align 2, !tbaa !114
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.dz = shl nuw nsw i64 %indvars.iv.next.1, 1   ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !108
  %i.ec = zext i8 %i.eb to i16
  %i.ed = or disjoint i64 %i.dz, 1                ; 2 uses
  %i.ee = icmp samesign ult i64 %i.ed, %i.au
  tail call void @llvm.assume(i1 %i.ee)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ed
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !108
  %i.eh = zext i8 %i.eg to i16
  %i.ei = shl nuw i16 %i.ec, 8
  %i.ej = or disjoint i16 %i.ei, %i.eh
  %i.ek = lshr i16 %i.ej, 4
  %i.el = icmp samesign ult i64 %indvars.iv.next.1, %i.at
  tail call void @llvm.assume(i1 %i.el)
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next.1
  store i16 %i.ek, ptr %i.em, align 2, !tbaa !114
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.en = shl nuw nsw i64 %indvars.iv.next.2, 1   ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !108
  %i.eq = zext i8 %i.ep to i16
  %i.er = or disjoint i64 %i.en, 1                ; 2 uses
  %i.es = icmp samesign ult i64 %i.er, %i.au
  tail call void @llvm.assume(i1 %i.es)
  %i.et = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.er
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !108
  %i.ev = zext i8 %i.eu to i16
  %i.ew = shl nuw i16 %i.eq, 8
  %i.ex = or disjoint i16 %i.ew, %i.ev
  %i.ey = lshr i16 %i.ex, 4
  %i.ez = icmp samesign ult i64 %indvars.iv.next.2, %i.at
  tail call void @llvm.assume(i1 %i.ez)
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.next.2
  store i16 %i.ey, ptr %i.fa, align 2, !tbaa !114
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !208
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN8rawspeed24UncompressedDecompressor33decode12BitRawUnpackedLeftAlignedILNS_10EndiannessE57005EEEvv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !27   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !28   ; 5 uses
  %i.e = icmp ne i32 %i.b, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = shl i32 %i.b, 1                          ; 5 uses
  %i.g = icmp ne i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp sgt i32 %i.f, 0
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !29   ; 6 uses
  %i.k = icmp ne i32 %i.j, 0
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !30   ; 4 uses
  %i.n = icmp uge i32 %i.j, %i.m
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp sgt i32 %i.j, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = sub nuw nsw i32 %i.j, %i.m               ; 2 uses
  %i.q = udiv i32 %i.p, %i.f                      ; 2 uses
  %.not.i.i = icmp ult i32 %i.q, %i.d
  br i1 %.not.i.i, label %bb.b, label %_ZNK8rawspeed24UncompressedDecompressor11sanityCheckEjPKji.exit

bb.b:                                             ; preds = %bb.a
  %i.r = icmp samesign ugt i32 %i.f, %i.p
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed24UncompressedDecompressor11sanityCheckEPKji) #6
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed24UncompressedDecompressor11sanityCheckEPKji, i32 noundef %i.q, i32 noundef %i.d) #6
  unreachable

_ZNK8rawspeed24UncompressedDecompressor11sanityCheckEjPKji.exit: ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !31   ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 568
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !33, !noalias !222 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 592
  %i.x = load i32, ptr %i.w, align 8, !tbaa !101, !noalias !222
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 608
  %i.z = load i32, ptr %i.y, align 8, !tbaa !102, !noalias !222
  %i.aa = mul nsw i32 %i.z, %i.x                  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 612
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !104, !noalias !222
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !103, !noalias !222
  %i.af = ashr i32 %i.ae, 1                       ; 3 uses
  %i.ag = icmp ne i32 %i.af, 0
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp sge i32 %i.af, %i.aa
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = mul i32 %i.f, %i.d                      ; 3 uses
  %i.aj = zext i32 %i.m to i64                    ; 3 uses
  %i.ak = zext i32 %i.ai to i64                   ; 2 uses
  %i.al = add nuw nsw i64 %i.aj, %i.ak
  %i.am = zext nneg i32 %i.j to i64
  %.not.i.i.i = icmp samesign ugt i64 %i.al, %i.am
  br i1 %.not.i.i.i, label %bb.e, label %_ZN8rawspeed10ByteStream7getDataEj.exit

bb.e:                                             ; preds = %_ZNK8rawspeed24UncompressedDecompressor11sanityCheckEjPKji.exit
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #6
  unreachable

_ZN8rawspeed10ByteStream7getDataEj.exit:          ; preds = %_ZNK8rawspeed24UncompressedDecompressor11sanityCheckEjPKji.exit
  %i.an = load ptr, ptr %0, align 8, !tbaa !105   ; 2 uses
  %i.ao = add nuw nsw i32 %i.m, %i.ai             ; 2 uses
  %i.ap = icmp samesign ule i32 %i.ao, %i.j
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr i8, ptr %i.an, i64 %i.aj  ; 2 uses
  %i.ar = icmp sgt i32 %i.ai, -1
  tail call void @llvm.assume(i1 %i.ar)
  store i32 %i.ao, ptr %i.l, align 8, !tbaa !30
  %i.as = icmp sgt i32 %i.b, 0
  br i1 %i.as, label %.preheader.preheader, label %._crit_edge94.split

.preheader.preheader:                             ; preds = %_ZN8rawspeed10ByteStream7getDataEj.exit
  %i.at = zext nneg i32 %i.aa to i64              ; 5 uses
  %i.au = zext nneg i32 %i.f to i64               ; 8 uses
  %i.av = zext i32 %i.af to i64                   ; 2 uses
  %i.aw = zext nneg i32 %i.ac to i64
  %wide.trip.count99 = zext i32 %i.d to i64       ; 2 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 10 uses
  %i.ax = add nsw i64 %wide.trip.count99, -1      ; 2 uses
  %i.ay = mul i64 %i.ax, %i.av
  %i.az = shl nuw nsw i64 %wide.trip.count, 1
  %i.ba = add i64 %i.ay, %wide.trip.count
  %i.bb = shl i64 %i.ba, 1
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.bb
  %i.bc = mul nsw i64 %i.ax, %i.au
  %i.bd = getelementptr i8, ptr %i.an, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.az
  %scevgep103 = getelementptr i8, ptr %i.be, i64 %i.aj
  %min.iters.check = icmp ult i32 %i.b, 4
  %bound0 = icmp ult ptr %i.v, %scevgep103
  %bound1 = icmp ult ptr %i.aq, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %min.iters.check104 = icmp ult i32 %i.b, 16
  %i.bf = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.bf, 0
  %n.vec108 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n122 = icmp eq i64 %n.vec108, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv96 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next97, %._crit_edge ] ; 4 uses
  %i.bg = mul nuw nsw i64 %indvars.iv96, %i.au    ; 2 uses
  %i.bh = add nuw nsw i64 %i.bg, %i.au
  %i.bi = icmp samesign ule i64 %i.bh, %i.ak
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bg ; 12 uses
  %i.bk = icmp samesign ult i64 %indvars.iv96, %i.aw
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = mul nuw nsw i64 %indvars.iv96, %i.av
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.bl ; 7 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check104, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.bn = phi i64 [ %i.bu, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.bo = shl nuw nsw i64 %i.bn, 1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bo
  %wide.vec = load <32 x i8>, ptr %i.bp, align 1, !tbaa !108, !alias.scope !223
  %i.bq = freeze <32 x i8> %wide.vec
  %i.br = bitcast <32 x i8> %i.bq to <16 x i16>
  %i.bs = lshr <16 x i16> %i.br, splat (i16 4)
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %index
  store <16 x i16> %i.bs, ptr %i.bt, align 2, !tbaa !114, !alias.scope !224, !noalias !223
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bu = add nuw nsw i64 %i.bn, 16
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !217

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !118

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index115 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next120, %vec.epilog.vector.body ] ; 2 uses
  %i.bw = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %i.cd, %vec.epilog.vector.body ] ; 2 uses
  %i.bx = shl nuw nsw i64 %i.bw, 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bx
  %wide.vec117 = load <8 x i8>, ptr %i.by, align 1, !tbaa !108, !alias.scope !223
  %i.bz = freeze <8 x i8> %wide.vec117
  %i.ca = bitcast <8 x i8> %i.bz to <4 x i16>
  %i.cb = lshr <4 x i16> %i.ca, splat (i16 4)
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %index115
  store <4 x i16> %i.cb, ptr %i.cc, align 2, !tbaa !114, !alias.scope !224, !noalias !223
  %index.next120 = add nuw i64 %index115, 4       ; 2 uses
  %i.cd = add nuw nsw i64 %i.bw, 4
  %i.ce = icmp eq i64 %index.next120, %n.vec108
  br i1 %i.ce, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !218

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n122, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec108, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.cf = shl nuw nsw i64 %indvars.iv.prol, 1     ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !108
  %i.ci = zext i8 %i.ch to i16
  %i.cj = or disjoint i64 %i.cf, 1                ; 2 uses
  %i.ck = icmp samesign ult i64 %i.cj, %i.au
  tail call void @llvm.assume(i1 %i.ck)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cj
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !108
  %i.cn = zext i8 %i.cm to i16
  %i.co = shl nuw i16 %i.cn, 8
  %i.cp = or disjoint i16 %i.co, %i.ci
  %i.cq = lshr i16 %i.cp, 4
  %i.cr = icmp samesign ult i64 %indvars.iv.prol, %i.at
  tail call void @llvm.assume(i1 %i.cr)
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %indvars.iv.prol
  store i16 %i.cq, ptr %i.cs, align 2, !tbaa !114
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !219

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.ct = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.cu = icmp ugt i64 %i.ct, -4
  br i1 %i.cu, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge94.split:                              ; preds = %._crit_edge, %_ZN8rawspeed10ByteStream7getDataEj.exit
  ret void

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond100.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count99
  br i1 %exitcond100.not, label %._crit_edge94.split, label %iter.check, !llvm.loop !220

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 7 uses
  %i.cv = shl nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cv
end_hunk_0
begin_hunk_1_@_ZN8rawspeed24UncompressedDecompressor19readUncompressedRawEv:bb.a
  br i1 %niter.ncmp.7, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit.loopexit200.unr-lcssa, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53, !llvm.loop !252

bb.x:                                             ; preds = %_ZNK8rawspeed10Array2DRefISt4byteE15getAsArray1DRefEv.exit.i.i57
  %i.nl = icmp samesign ugt i32 %i.ka, 1
  br i1 %i.nl, label %bb.y, label %bb.z, !prof !265

bb.y:                                             ; preds = %bb.x
  %i.nm = zext nneg i32 %i.ka to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.iv, ptr nonnull align 1 %i.jo, i64 %i.nm, i1 false)
  br label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit

bb.z:                                             ; preds = %bb.x
  %i.nn = load i8, ptr %i.jo, align 1, !tbaa !108
  store i8 %i.nn, ptr %i.iv, align 1, !tbaa !108
  br label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol.loopexit, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48
  %indvars.iv.i.i49 = phi i64 [ %indvars.iv.next.i.i50.7, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48 ], [ %indvars.iv.i.i49.unr, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol.loopexit ] ; 10 uses
  %i.no = mul nuw nsw i64 %indvars.iv.i.i49, %i.kg
  %i.np = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.no
  %i.nq = mul nuw nsw i64 %indvars.iv.i.i49, %i.ke ; 2 uses
  %i.nr = add nuw nsw i64 %i.nq, %i.kd
  %i.ns = icmp samesign ule i64 %i.nr, %i.je
  tail call void @llvm.assume(i1 %i.ns)
  %i.nt = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.nq
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !108
  store i8 %i.nu, ptr %i.np, align 1, !tbaa !108
  %indvars.iv.next.i.i50 = add nuw nsw i64 %indvars.iv.i.i49, 1 ; 2 uses
  %i.nv = mul nuw nsw i64 %indvars.iv.next.i.i50, %i.kg
  %i.nw = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.nv
  %i.nx = mul nuw nsw i64 %indvars.iv.next.i.i50, %i.ke ; 2 uses
  %i.ny = add nuw nsw i64 %i.nx, %i.kd
  %i.nz = icmp samesign ule i64 %i.ny, %i.je
  tail call void @llvm.assume(i1 %i.nz)
  %i.oa = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.nx
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !108
  store i8 %i.ob, ptr %i.nw, align 1, !tbaa !108
  %indvars.iv.next.i.i50.1 = add nuw nsw i64 %indvars.iv.i.i49, 2 ; 2 uses
  %i.oc = mul nuw nsw i64 %indvars.iv.next.i.i50.1, %i.kg
  %i.od = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.oc
  %i.oe = mul nuw nsw i64 %indvars.iv.next.i.i50.1, %i.ke ; 2 uses
  %i.of = add nuw nsw i64 %i.oe, %i.kd
  %i.og = icmp samesign ule i64 %i.of, %i.je
  tail call void @llvm.assume(i1 %i.og)
  %i.oh = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.oe
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !108
  store i8 %i.oi, ptr %i.od, align 1, !tbaa !108
  %indvars.iv.next.i.i50.2 = add nuw nsw i64 %indvars.iv.i.i49, 3 ; 2 uses
  %i.oj = mul nuw nsw i64 %indvars.iv.next.i.i50.2, %i.kg
  %i.ok = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.oj
  %i.ol = mul nuw nsw i64 %indvars.iv.next.i.i50.2, %i.ke ; 2 uses
  %i.om = add nuw nsw i64 %i.ol, %i.kd
  %i.on = icmp samesign ule i64 %i.om, %i.je
  tail call void @llvm.assume(i1 %i.on)
  %i.oo = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.ol
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !108
  store i8 %i.op, ptr %i.ok, align 1, !tbaa !108
  %indvars.iv.next.i.i50.3 = add nuw nsw i64 %indvars.iv.i.i49, 4 ; 2 uses
  %i.oq = mul nuw nsw i64 %indvars.iv.next.i.i50.3, %i.kg
  %i.or = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.oq
  %i.os = mul nuw nsw i64 %indvars.iv.next.i.i50.3, %i.ke ; 2 uses
  %i.ot = add nuw nsw i64 %i.os, %i.kd
  %i.ou = icmp samesign ule i64 %i.ot, %i.je
  tail call void @llvm.assume(i1 %i.ou)
  %i.ov = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.os
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !108
  store i8 %i.ow, ptr %i.or, align 1, !tbaa !108
  %indvars.iv.next.i.i50.4 = add nuw nsw i64 %indvars.iv.i.i49, 5 ; 2 uses
  %i.ox = mul nuw nsw i64 %indvars.iv.next.i.i50.4, %i.kg
  %i.oy = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.ox
  %i.oz = mul nuw nsw i64 %indvars.iv.next.i.i50.4, %i.ke ; 2 uses
  %i.pa = add nuw nsw i64 %i.oz, %i.kd
  %i.pb = icmp samesign ule i64 %i.pa, %i.je
  tail call void @llvm.assume(i1 %i.pb)
  %i.pc = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.oz
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !108
  store i8 %i.pd, ptr %i.oy, align 1, !tbaa !108
  %indvars.iv.next.i.i50.5 = add nuw nsw i64 %indvars.iv.i.i49, 6 ; 2 uses
  %i.pe = mul nuw nsw i64 %indvars.iv.next.i.i50.5, %i.kg
  %i.pf = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.pe
  %i.pg = mul nuw nsw i64 %indvars.iv.next.i.i50.5, %i.ke ; 2 uses
  %i.ph = add nuw nsw i64 %i.pg, %i.kd
  %i.pi = icmp samesign ule i64 %i.ph, %i.je
  tail call void @llvm.assume(i1 %i.pi)
  %i.pj = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.pg
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !108
  store i8 %i.pk, ptr %i.pf, align 1, !tbaa !108
  %indvars.iv.next.i.i50.6 = add nuw nsw i64 %indvars.iv.i.i49, 7 ; 3 uses
  %i.pl = icmp samesign ult i64 %indvars.iv.next.i.i50.6, %i.kf
  tail call void @llvm.assume(i1 %i.pl)
  %i.pm = mul nuw nsw i64 %indvars.iv.next.i.i50.6, %i.kg
  %i.pn = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.pm
  %i.po = mul nuw nsw i64 %indvars.iv.next.i.i50.6, %i.ke ; 2 uses
  %i.pp = add nuw nsw i64 %i.po, %i.kd
  %i.pq = icmp samesign ule i64 %i.pp, %i.je
  tail call void @llvm.assume(i1 %i.pq)
  %i.pr = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.po
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !108
  store i8 %i.ps, ptr %i.pn, align 1, !tbaa !108
  %indvars.iv.next.i.i50.7 = add nuw nsw i64 %indvars.iv.i.i49, 8 ; 2 uses
  %.not.i.i51.7 = icmp eq i64 %indvars.iv.next.i.i50.7, %i.kf
  br i1 %.not.i.i51.7, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48, !llvm.loop !259

bb.aa:                                            ; preds = %bb.u
  tail call void @_ZNK8rawspeed24UncompressedDecompressor15decodePackedIntINS_14BitStreamerLSBEEEvii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %i.t, i32 noundef %i.m)
  br label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit

_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit.loopexit.unr-lcssa: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i
  %lcmp.mod210.not = icmp eq i64 %xtraiter208, 0
  br i1 %lcmp.mod210.not, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i.epil.preheader

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i.epil.preheader: ; preds = %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit.loopexit.unr-lcssa, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i
  %indvars.iv46.i.i.epil.init = phi i64 [ 0, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i ], [ %indvars.iv.next47.i.i.7, %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit.loopexit.unr-lcssa ]
  %lcmp.mod211 = icmp ne i64 %xtraiter208, 0
  tail call void @llvm.assume(i1 %lcmp.mod211)
  br label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i.epil

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i.epil: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i.epil, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i.epil.preheader
  %indvars.iv46.i.i.epil = phi i64 [ %indvars.iv46.i.i.epil.init, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i.epil.preheader ], [ %indvars.iv.next47.i.i.epil, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i.epil ] ; 4 uses
  %epil.iter209 = phi i64 [ 0, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i.epil.preheader ], [ %epil.iter209.next, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i.epil ]
  %i.pt = icmp samesign ult i64 %indvars.iv46.i.i.epil, %i.dg
  tail call void @llvm.assume(i1 %i.pt)
  %i.pu = mul nuw nsw i64 %indvars.iv46.i.i.epil, %i.dh
  %i.pv = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.pu
  %i.pw = mul nuw nsw i64 %indvars.iv46.i.i.epil, %i.di ; 2 uses
  %i.px = add nuw nsw i64 %i.pw, %i.ca
  %i.py = icmp samesign ule i64 %i.px, %i.bb
  tail call void @llvm.assume(i1 %i.py)
  %i.pz = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.pw
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.pv, ptr nonnull align 1 %i.pz, i64 %i.ca, i1 false)
  %indvars.iv.next47.i.i.epil = add nuw nsw i64 %indvars.iv46.i.i.epil, 1
  %epil.iter209.next = add i64 %epil.iter209, 1   ; 2 uses
  %epil.iter209.cmp.not = icmp eq i64 %epil.iter209.next, %xtraiter208
  br i1 %epil.iter209.cmp.not, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i.epil, !llvm.loop !260

_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit.loopexit200.unr-lcssa: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53
  %lcmp.mod203.not = icmp eq i64 %xtraiter202, 0
  br i1 %lcmp.mod203.not, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53.epil.preheader

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53.epil.preheader: ; preds = %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit.loopexit200.unr-lcssa, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i52
  %indvars.iv46.i.i54.epil.init = phi i64 [ 0, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i52 ], [ %indvars.iv.next47.i.i55.7, %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit.loopexit200.unr-lcssa ]
  %lcmp.mod204 = icmp ne i64 %xtraiter202, 0
  tail call void @llvm.assume(i1 %lcmp.mod204)
  br label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53.epil

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53.epil: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53.epil, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53.epil.preheader
  %indvars.iv46.i.i54.epil = phi i64 [ %indvars.iv46.i.i54.epil.init, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53.epil.preheader ], [ %indvars.iv.next47.i.i55.epil, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53.epil ] ; 4 uses
  %epil.iter = phi i64 [ 0, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53.epil.preheader ], [ %epil.iter.next, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53.epil ]
  %i.qa = icmp samesign ult i64 %indvars.iv46.i.i54.epil, %i.lj
  tail call void @llvm.assume(i1 %i.qa)
  %i.qb = mul nuw nsw i64 %indvars.iv46.i.i54.epil, %i.lk
  %i.qc = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.qb
  %i.qd = mul nuw nsw i64 %indvars.iv46.i.i54.epil, %i.ll ; 2 uses
  %i.qe = add nuw nsw i64 %i.qd, %i.kd
  %i.qf = icmp samesign ule i64 %i.qe, %i.je
  tail call void @llvm.assume(i1 %i.qf)
  %i.qg = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.qd
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.qc, ptr nonnull align 1 %i.qg, i64 %i.kd, i1 false)
  %indvars.iv.next47.i.i55.epil = add nuw nsw i64 %indvars.iv46.i.i54.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter202
  br i1 %epil.iter.cmp.not, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53.epil, !llvm.loop !261

_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit:  ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol.loopexit, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48, %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit.loopexit200.unr-lcssa, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53.epil, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.prol.loopexit, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i, %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit.loopexit.unr-lcssa, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i.epil, %middle.block, %vec.epilog.middle.block, %middle.block172, %vec.epilog.middle.block196, %bb.z, %bb.y, %bb.g, %bb.f, %bb.r, %bb.t, %bb.aa, %bb.s, %bb.p, %bb.n, %bb.l, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8rawspeed24UncompressedDecompressor14decodePackedFPINS_14BitStreamerMSBENS_13ieee_754_20088Binary16EEEvii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca i32, align 4            ; 5 uses
  %3 = alloca %"class.rawspeed::BitStreamerMSB", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !272
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !101, !noalias !272 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !102, !noalias !272
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !104, !noalias !272
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !103, !noalias !272
  %i.n = ashr i32 %i.m, 2                         ; 3 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !30   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !29   ; 3 uses
  %i.u = icmp uge i32 %i.t, %i.r
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp sgt i32 %i.t, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = zext i32 %i.r to i64
  %i.x = sub nuw nsw i32 %i.t, %i.r               ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !105
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i64 0, ptr %3, align 8, !tbaa !136
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !137
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !120
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i32 %i.x, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !106
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !140
  %i.ad = icmp samesign ult i32 %i.x, 4
  br i1 %i.ad, label %bb.b, label %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_14BitStreamerMSBEEC2ENS_10Array1DRefIKSt4byteEE) #6
  unreachable

_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit: ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !27
  %i.ag = mul i32 %i.af, %i.f                     ; 2 uses
  %i.ah = icmp slt i32 %2, %1
  br i1 %i.ah, label %.preheader.lr.ph, label %._crit_edge38

.preheader.lr.ph:                                 ; preds = %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %i.ai = icmp sgt i32 %i.ag, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  br i1 %i.ai, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.al = zext i32 %2 to i64
  %i.am = zext nneg i32 %i.k to i64
  %i.an = zext nneg i32 %i.n to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.al, %.preheader.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 3 uses
  %i.ao = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !141 ; 5 uses
  %i.ap = icmp sgt i32 %i.ao, 3
  call void @llvm.assume(i1 %i.ap)
  %.sroa.0.0.copyload.i.i.i.i.us = load ptr, ptr %i.ab, align 8 ; 2 uses
  %i.aq = add nuw nsw i32 %i.ao, 8
  %i.ar = icmp samesign ult i64 %indvars.iv, %i.am
  %i.as = mul nuw nsw i64 %indvars.iv, %i.an
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.as
  %.pre = load i32, ptr %i.aa, align 8, !tbaa !137
  %.pre42 = load i32, ptr %i.ac, align 8, !tbaa !140
  br label %bb.c

bb.c:                                             ; preds = %.preheader.us, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us
  %i.au = phi i32 [ %.pre42, %.preheader.us ], [ %i.bp, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us ] ; 6 uses
  %i.av = phi i32 [ %.pre, %.preheader.us ], [ %i.bu, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us ] ; 5 uses
  %.01536.us = phi i32 [ 0, %.preheader.us ], [ %i.cr, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us ] ; 2 uses
  %i.aw = icmp samesign ult i32 %i.av, 65
  call void @llvm.assume(i1 %i.aw)
  %i.ax = icmp sgt i32 %i.au, -1
  call void @llvm.assume(i1 %i.ax)
  %.not.i.i.us = icmp samesign ult i32 %i.av, 16
  br i1 %.not.i.i.us, label %bb.d, label %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us

._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us: ; preds = %bb.c
  %.pre.i.us = load i64, ptr %3, align 8, !tbaa !136
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.ay = add nuw nsw i32 %i.au, 4                ; 3 uses
  %.not.i.i.i.us = icmp samesign ugt i32 %i.ay, %i.ao
  br i1 %.not.i.i.i.us, label %bb.f, label %bb.e, !prof !133

bb.e:                                             ; preds = %bb.d
  %i.az = zext nneg i32 %i.au to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.us, i64 %i.az
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us

bb.f:                                             ; preds = %bb.d
  %i.bb = icmp samesign ugt i32 %i.au, %i.aq
  br i1 %i.bb, label %.split.us, label %bb.g, !prof !133

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %.sroa.0.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.us = call i32 @llvm.umin.i32(i32 %i.ao, i32 %i.au) ; 3 uses
  %i.bc = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.us, 4
  %.sroa.speculated.i.i.i.i.us = call i32 @llvm.umin.i32(i32 %i.ao, i32 %i.bc)
  %i.bd = sub nsw i32 %.sroa.speculated.i.i.i.i.us, %.sroa.speculated27.i.i.i.i.us ; 2 uses
  %i.be = icmp samesign ult i32 %i.bd, 5
  call void @llvm.assume(i1 %i.be)
  %i.bf = zext nneg i32 %.sroa.speculated27.i.i.i.i.us to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.us, i64 %i.bf
  %i.bh = zext nneg i32 %i.bd to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i, ptr align 1 %i.bg, i64 %i.bh, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us: ; preds = %bb.g, %bb.e
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.us = phi ptr [ %.sroa.0.i.i.i, %bb.g ], [ %i.ba, %bb.e ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.us = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.us, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %.promoted8.i.i.i.us = load i64, ptr %3, align 8
  %i.bi = call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.us)
  %i.bj = zext i32 %i.bi to i64
  %i.bk = or disjoint i32 %i.av, 32
  %i.bl = sub nuw nsw i32 32, %i.av
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = shl nuw i64 %i.bj, %i.bm
  %i.bo = or i64 %i.bn, %.promoted8.i.i.i.us
  store i32 %i.ay, ptr %i.ac, align 8, !tbaa !140
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us
  %i.bp = phi i32 [ %i.au, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.ay, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us ]
  %i.bq = phi i64 [ %.pre.i.us, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.bo, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us ] ; 2 uses
  %i.br = phi i32 [ %i.av, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.bk, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us ]
  %i.bs = lshr i64 %i.bq, 48
  %i.bt = trunc nuw nsw i64 %i.bs to i32          ; 3 uses
  %i.bu = add nsw i32 %i.br, -16                  ; 2 uses
  store i32 %i.bu, ptr %i.aa, align 8, !tbaa !137
  %i.bv = shl i64 %i.bq, 16
  store i64 %i.bv, ptr %3, align 8, !tbaa !136
  %i.bw = lshr i32 %i.bt, 10
  %i.bx = and i32 %i.bw, 31                       ; 3 uses
  %i.by = and i32 %i.bt, 1023                     ; 2 uses
  %i.bz = shl nuw nsw i32 %i.by, 13               ; 4 uses
  %i.ca = icmp eq i32 %i.bx, 31
  br i1 %i.ca, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us, label %bb.h

bb.h:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us
  %i.cb = add nuw nsw i32 %i.bx, 112
  %i.cc = icmp eq i32 %i.bx, 0
  br i1 %i.cc, label %bb.i, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us

bb.i:                                             ; preds = %bb.h
  %i.cd = icmp eq i32 %i.by, 0
  br i1 %i.cd, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us, label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %bb.i
  %.masked.numleadingzeros.i.us = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.bz, i1 true) ; 2 uses
  %i.ce = sub nuw nsw i32 121, %.masked.numleadingzeros.i.us
  %.masked.leadingonepos.i.us = xor i32 %.masked.numleadingzeros.i.us, 31
  %.lr.ph.tripcount.i.us = sub nuw nsw i32 23, %.masked.leadingonepos.i.us
  %i.cf = shl i32 %i.bz, %.lr.ph.tripcount.i.us
  %i.cg = and i32 %i.cf, 8380416
  br label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us

_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us: ; preds = %._crit_edge.i.us, %bb.i, %bb.h, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us
  %.116.i.us = phi i32 [ %i.cb, %bb.h ], [ 255, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ], [ %i.ce, %._crit_edge.i.us ], [ 0, %bb.i ]
  %.1.i.us = phi i32 [ %i.bz, %bb.h ], [ %i.bz, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ], [ %i.cg, %._crit_edge.i.us ], [ 0, %bb.i ]
  %i.ch = shl nuw i32 %i.bt, 16
  %i.ci = and i32 %i.ch, -2147483648
  %i.cj = shl nuw nsw i32 %.116.i.us, 23
  %i.ck = or disjoint i32 %i.cj, %i.ci
  %i.cl = or i32 %i.ck, %.1.i.us
  %i.cm = load i32, ptr %i.aj, align 8, !tbaa !134
  %i.cn = add nsw i32 %i.cm, %.01536.us           ; 2 uses
  %i.co = icmp samesign ult i32 %i.cn, %i.i
  call void @llvm.assume(i1 %i.co)
  call void @llvm.assume(i1 %i.ar)
  %i.cp = zext nneg i32 %i.cn to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.cp
  store i32 %i.cl, ptr %i.cq, align 4, !tbaa !143
  %i.cr = add nuw nsw i32 %.01536.us, 1           ; 2 uses
  %exitcond40.not = icmp eq i32 %i.cr, %i.ag
  br i1 %exitcond40.not, label %._crit_edge.us, label %bb.c, !llvm.loop !270

._crit_edge.us:                                   ; preds = %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us
  %i.cs = load i32, ptr %i.ak, align 4, !tbaa !125
  %i.ct = shl nsw i32 %i.cs, 3
  call void @_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE12skipManyBitsEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.ct)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cu = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.cv = icmp sgt i32 %1, %i.cu
  br i1 %i.cv, label %.preheader.us, label %._crit_edge38, !llvm.loop !271

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.037 = phi i32 [ %i.cy, %.preheader ], [ %2, %.preheader.lr.ph ]
  %i.cw = load i32, ptr %i.ak, align 4, !tbaa !125
  %i.cx = shl nsw i32 %i.cw, 3
  call void @_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE12skipManyBitsEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.cx)
  %i.cy = add i32 %.037, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.cy, %1
  br i1 %exitcond.not, label %._crit_edge38, label %.preheader, !llvm.loop !271

.split.us:                                        ; preds = %bb.f
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.19, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv) #6
  unreachable

._crit_edge38:                                    ; preds = %.preheader, %._crit_edge.us, %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8rawspeed24UncompressedDecompressor14decodePackedFPINS_14BitStreamerLSBENS_13ieee_754_20088Binary16EEEvii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca i32, align 4            ; 5 uses
  %3 = alloca %"class.rawspeed::BitStreamerLSB", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !277
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !101, !noalias !277 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !102, !noalias !277
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !104, !noalias !277
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !103, !noalias !277
  %i.n = ashr i32 %i.m, 2                         ; 3 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !30   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !29   ; 3 uses
  %i.u = icmp uge i32 %i.t, %i.r
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp sgt i32 %i.t, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = zext i32 %i.r to i64
  %i.x = sub nuw nsw i32 %i.t, %i.r               ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !105
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i64 0, ptr %3, align 8, !tbaa !136
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !137
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !120
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i32 %i.x, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !106
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !145
  %i.ad = icmp samesign ult i32 %i.x, 4
  br i1 %i.ad, label %bb.b, label %_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_14BitStreamerLSBEEC2ENS_10Array1DRefIKSt4byteEE) #6
  unreachable

_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit: ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !27
  %i.ag = mul i32 %i.af, %i.f                     ; 2 uses
  %i.ah = icmp slt i32 %2, %1
  br i1 %i.ah, label %.preheader.lr.ph, label %._crit_edge38

.preheader.lr.ph:                                 ; preds = %_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %i.ai = icmp sgt i32 %i.ag, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  br i1 %i.ai, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.al = zext i32 %2 to i64
  %i.am = zext nneg i32 %i.k to i64
  %i.an = zext nneg i32 %i.n to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.al, %.preheader.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 3 uses
  %i.ao = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !141 ; 5 uses
  %i.ap = icmp sgt i32 %i.ao, 3
  call void @llvm.assume(i1 %i.ap)
  %.sroa.0.0.copyload.i.i.i.i.us = load ptr, ptr %i.ab, align 8 ; 2 uses
  %i.aq = add nuw nsw i32 %i.ao, 8
  %i.ar = icmp samesign ult i64 %indvars.iv, %i.am
  %i.as = mul nuw nsw i64 %indvars.iv, %i.an
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.as
  %.pre = load i32, ptr %i.aa, align 8, !tbaa !137
  %.pre42 = load i32, ptr %i.ac, align 8, !tbaa !145
  br label %bb.c

bb.c:                                             ; preds = %.preheader.us, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us
  %i.au = phi i32 [ %.pre42, %.preheader.us ], [ %i.bn, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us ] ; 6 uses
  %i.av = phi i32 [ %.pre, %.preheader.us ], [ %i.bs, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us ] ; 5 uses
  %.01536.us = phi i32 [ 0, %.preheader.us ], [ %i.co, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us ] ; 2 uses
  %i.aw = icmp samesign ult i32 %i.av, 65
  call void @llvm.assume(i1 %i.aw)
  %i.ax = icmp sgt i32 %i.au, -1
  call void @llvm.assume(i1 %i.ax)
  %.not.i.i.us = icmp samesign ult i32 %i.av, 16
  br i1 %.not.i.i.us, label %bb.d, label %._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us

._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us: ; preds = %bb.c
  %.pre.i.us = load i64, ptr %3, align 8, !tbaa !136
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.ay = add nuw nsw i32 %i.au, 4                ; 3 uses
  %.not.i.i.i.us = icmp samesign ugt i32 %i.ay, %i.ao
  br i1 %.not.i.i.i.us, label %bb.f, label %bb.e, !prof !133

bb.e:                                             ; preds = %bb.d
  %i.az = zext nneg i32 %i.au to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.us, i64 %i.az
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us

bb.f:                                             ; preds = %bb.d
  %i.bb = icmp samesign ugt i32 %i.au, %i.aq
  br i1 %i.bb, label %.split.us, label %bb.g, !prof !133

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %.sroa.0.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.us = call i32 @llvm.umin.i32(i32 %i.ao, i32 %i.au) ; 3 uses
  %i.bc = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.us, 4
  %.sroa.speculated.i.i.i.i.us = call i32 @llvm.umin.i32(i32 %i.ao, i32 %i.bc)
  %i.bd = sub nsw i32 %.sroa.speculated.i.i.i.i.us, %.sroa.speculated27.i.i.i.i.us ; 2 uses
  %i.be = icmp samesign ult i32 %i.bd, 5
  call void @llvm.assume(i1 %i.be)
  %i.bf = zext nneg i32 %.sroa.speculated27.i.i.i.i.us to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.us, i64 %i.bf
  %i.bh = zext nneg i32 %i.bd to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i, ptr align 1 %i.bg, i64 %i.bh, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us: ; preds = %bb.g, %bb.e
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.us = phi ptr [ %.sroa.0.i.i.i, %bb.g ], [ %i.ba, %bb.e ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.us = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.us, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %.promoted8.i.i.i.us = load i64, ptr %3, align 8
  %i.bi = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.us to i64
  %i.bj = or disjoint i32 %i.av, 32
  %i.bk = zext nneg i32 %i.av to i64
  %i.bl = shl nuw nsw i64 %i.bi, %i.bk
  %i.bm = or i64 %.promoted8.i.i.i.us, %i.bl
  store i32 %i.ay, ptr %i.ac, align 8, !tbaa !145
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us

_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us, %._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us
  %i.bn = phi i32 [ %i.au, %._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.ay, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us ]
  %i.bo = phi i64 [ %.pre.i.us, %._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.bm, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us ] ; 2 uses
  %i.bp = phi i32 [ %i.av, %._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.bj, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us ]
  %i.bq = trunc i64 %i.bo to i32                  ; 3 uses
  %i.br = lshr i64 %i.bo, 16
  store i64 %i.br, ptr %3, align 8, !tbaa !136
  %i.bs = add nsw i32 %i.bp, -16                  ; 2 uses
  store i32 %i.bs, ptr %i.aa, align 8, !tbaa !137
  %i.bt = lshr i32 %i.bq, 10
  %i.bu = and i32 %i.bt, 31                       ; 3 uses
  %i.bv = and i32 %i.bq, 1023                     ; 2 uses
  %i.bw = shl nuw nsw i32 %i.bv, 13               ; 4 uses
  %i.bx = icmp eq i32 %i.bu, 31
  br i1 %i.bx, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us, label %bb.h

bb.h:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us
  %i.by = add nuw nsw i32 %i.bu, 112
  %i.bz = icmp eq i32 %i.bu, 0
  br i1 %i.bz, label %bb.i, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us

bb.i:                                             ; preds = %bb.h
  %i.ca = icmp eq i32 %i.bv, 0
  br i1 %i.ca, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us, label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %bb.i
  %.masked.numleadingzeros.i.us = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.bw, i1 true) ; 2 uses
  %i.cb = sub nuw nsw i32 121, %.masked.numleadingzeros.i.us
  %.masked.leadingonepos.i.us = xor i32 %.masked.numleadingzeros.i.us, 31
  %.lr.ph.tripcount.i.us = sub nuw nsw i32 23, %.masked.leadingonepos.i.us
  %i.cc = shl i32 %i.bw, %.lr.ph.tripcount.i.us
  %i.cd = and i32 %i.cc, 8380416
  br label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us

_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us: ; preds = %._crit_edge.i.us, %bb.i, %bb.h, %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us
  %.116.i.us = phi i32 [ %i.by, %bb.h ], [ 255, %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ], [ %i.cb, %._crit_edge.i.us ], [ 0, %bb.i ]
  %.1.i.us = phi i32 [ %i.bw, %bb.h ], [ %i.bw, %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ], [ %i.cd, %._crit_edge.i.us ], [ 0, %bb.i ]
  %i.ce = shl i32 %i.bq, 16
  %i.cf = and i32 %i.ce, -2147483648
  %i.cg = shl nuw nsw i32 %.116.i.us, 23
  %i.ch = or disjoint i32 %i.cg, %i.cf
  %i.ci = or i32 %i.ch, %.1.i.us
  %i.cj = load i32, ptr %i.aj, align 8, !tbaa !134
  %i.ck = add nsw i32 %i.cj, %.01536.us           ; 2 uses
  %i.cl = icmp samesign ult i32 %i.ck, %i.i
  call void @llvm.assume(i1 %i.cl)
  call void @llvm.assume(i1 %i.ar)
  %i.cm = zext nneg i32 %i.ck to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.cm
  store i32 %i.ci, ptr %i.cn, align 4, !tbaa !143
  %i.co = add nuw nsw i32 %.01536.us, 1           ; 2 uses
  %exitcond40.not = icmp eq i32 %i.co, %i.ag
  br i1 %exitcond40.not, label %._crit_edge.us, label %bb.c, !llvm.loop !275

._crit_edge.us:                                   ; preds = %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us
  %i.cp = load i32, ptr %i.ak, align 4, !tbaa !125
  %i.cq = shl nsw i32 %i.cp, 3
  call void @_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE12skipManyBitsEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.cq)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cr = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.cs = icmp sgt i32 %1, %i.cr
  br i1 %i.cs, label %.preheader.us, label %._crit_edge38, !llvm.loop !276

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.037 = phi i32 [ %i.cv, %.preheader ], [ %2, %.preheader.lr.ph ]
  %i.ct = load i32, ptr %i.ak, align 4, !tbaa !125
  %i.cu = shl nsw i32 %i.ct, 3
  call void @_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE12skipManyBitsEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.cu)
  %i.cv = add i32 %.037, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.cv, %1
  br i1 %exitcond.not, label %._crit_edge38, label %.preheader, !llvm.loop !276

.split.us:                                        ; preds = %bb.f
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.19, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv) #6
  unreachable

._crit_edge38:                                    ; preds = %.preheader, %._crit_edge.us, %_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8rawspeed24UncompressedDecompressor14decodePackedFPINS_14BitStreamerMSBENS_13ieee_754_20088Binary24EEEvii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca i32, align 4            ; 5 uses
  %3 = alloca %"class.rawspeed::BitStreamerMSB", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !282
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !101, !noalias !282 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !102, !noalias !282
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !104, !noalias !282
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !103, !noalias !282
  %i.n = ashr i32 %i.m, 2                         ; 3 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !30   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !29   ; 3 uses
  %i.u = icmp uge i32 %i.t, %i.r
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp sgt i32 %i.t, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = zext i32 %i.r to i64
  %i.x = sub nuw nsw i32 %i.t, %i.r               ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !105
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i64 0, ptr %3, align 8, !tbaa !136
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !137
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !120
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i32 %i.x, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !106
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !140
  %i.ad = icmp samesign ult i32 %i.x, 4
  br i1 %i.ad, label %bb.b, label %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_14BitStreamerMSBEEC2ENS_10Array1DRefIKSt4byteEE) #6
  unreachable

_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit: ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !27
  %i.ag = mul i32 %i.af, %i.f                     ; 2 uses
  %i.ah = icmp slt i32 %2, %1
  br i1 %i.ah, label %.preheader.lr.ph, label %._crit_edge38

.preheader.lr.ph:                                 ; preds = %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %i.ai = icmp sgt i32 %i.ag, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  br i1 %i.ai, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.al = zext i32 %2 to i64
  %i.am = zext nneg i32 %i.k to i64
  %i.an = zext nneg i32 %i.n to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.al, %.preheader.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 3 uses
  %i.ao = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !141 ; 5 uses
  %i.ap = icmp sgt i32 %i.ao, 3
  call void @llvm.assume(i1 %i.ap)
  %.sroa.0.0.copyload.i.i.i.i.us = load ptr, ptr %i.ab, align 8 ; 2 uses
  %i.aq = add nuw nsw i32 %i.ao, 8
  %i.ar = icmp samesign ult i64 %indvars.iv, %i.am
  %i.as = mul nuw nsw i64 %indvars.iv, %i.an
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.as
  %.pre = load i32, ptr %i.aa, align 8, !tbaa !137
  %.pre42 = load i32, ptr %i.ac, align 8, !tbaa !140
  br label %bb.c

bb.c:                                             ; preds = %.preheader.us, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.us
  %i.au = phi i32 [ %.pre42, %.preheader.us ], [ %i.bp, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.us ] ; 6 uses
  %i.av = phi i32 [ %.pre, %.preheader.us ], [ %i.bu, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.us ] ; 5 uses
  %.01536.us = phi i32 [ 0, %.preheader.us ], [ %i.cr, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.us ] ; 2 uses
  %i.aw = icmp samesign ult i32 %i.av, 65
  call void @llvm.assume(i1 %i.aw)
  %i.ax = icmp sgt i32 %i.au, -1
  call void @llvm.assume(i1 %i.ax)
  %.not.i.i.us = icmp samesign ult i32 %i.av, 24
  br i1 %.not.i.i.us, label %bb.d, label %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us

._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us: ; preds = %bb.c
  %.pre.i.us = load i64, ptr %3, align 8, !tbaa !136
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.ay = add nuw nsw i32 %i.au, 4                ; 3 uses
  %.not.i.i.i.us = icmp samesign ugt i32 %i.ay, %i.ao
  br i1 %.not.i.i.i.us, label %bb.f, label %bb.e, !prof !133

bb.e:                                             ; preds = %bb.d
  %i.az = zext nneg i32 %i.au to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.us, i64 %i.az
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us

bb.f:                                             ; preds = %bb.d
  %i.bb = icmp samesign ugt i32 %i.au, %i.aq
  br i1 %i.bb, label %.split.us, label %bb.g, !prof !133

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %.sroa.0.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.us = call i32 @llvm.umin.i32(i32 %i.ao, i32 %i.au) ; 3 uses
  %i.bc = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.us, 4
  %.sroa.speculated.i.i.i.i.us = call i32 @llvm.umin.i32(i32 %i.ao, i32 %i.bc)
  %i.bd = sub nsw i32 %.sroa.speculated.i.i.i.i.us, %.sroa.speculated27.i.i.i.i.us ; 2 uses
  %i.be = icmp samesign ult i32 %i.bd, 5
  call void @llvm.assume(i1 %i.be)
  %i.bf = zext nneg i32 %.sroa.speculated27.i.i.i.i.us to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.us, i64 %i.bf
  %i.bh = zext nneg i32 %i.bd to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i, ptr align 1 %i.bg, i64 %i.bh, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us: ; preds = %bb.g, %bb.e
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.us = phi ptr [ %.sroa.0.i.i.i, %bb.g ], [ %i.ba, %bb.e ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.us = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.us, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %.promoted8.i.i.i.us = load i64, ptr %3, align 8
  %i.bi = call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.us)
  %i.bj = zext i32 %i.bi to i64
  %i.bk = or disjoint i32 %i.av, 32
  %i.bl = sub nuw nsw i32 32, %i.av
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = shl nuw i64 %i.bj, %i.bm
  %i.bo = or i64 %i.bn, %.promoted8.i.i.i.us
  store i32 %i.ay, ptr %i.ac, align 8, !tbaa !140
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us
  %i.bp = phi i32 [ %i.au, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.ay, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us ]
  %i.bq = phi i64 [ %.pre.i.us, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.bo, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us ] ; 2 uses
  %i.br = phi i32 [ %i.av, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.bk, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us ]
  %i.bs = lshr i64 %i.bq, 40
  %i.bt = trunc nuw nsw i64 %i.bs to i32          ; 3 uses
  %i.bu = add nsw i32 %i.br, -24                  ; 2 uses
  store i32 %i.bu, ptr %i.aa, align 8, !tbaa !137
  %i.bv = shl i64 %i.bq, 24
  store i64 %i.bv, ptr %3, align 8, !tbaa !136
  %i.bw = lshr i32 %i.bt, 16
  %i.bx = and i32 %i.bw, 127                      ; 3 uses
  %i.by = and i32 %i.bt, 65535                    ; 2 uses
  %i.bz = shl nuw nsw i32 %i.by, 7                ; 4 uses
  %i.ca = icmp eq i32 %i.bx, 127
  br i1 %i.ca, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.us, label %bb.h

bb.h:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us
  %i.cb = add nuw nsw i32 %i.bx, 64
  %i.cc = icmp eq i32 %i.bx, 0
  br i1 %i.cc, label %bb.i, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.us

bb.i:                                             ; preds = %bb.h
  %i.cd = icmp eq i32 %i.by, 0
  br i1 %i.cd, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.us, label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %bb.i
  %.masked.numleadingzeros.i.us = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.bz, i1 true) ; 2 uses
  %i.ce = sub nuw nsw i32 73, %.masked.numleadingzeros.i.us
  %.masked.leadingonepos.i.us = xor i32 %.masked.numleadingzeros.i.us, 31
  %.lr.ph.tripcount.i.us = sub nuw nsw i32 23, %.masked.leadingonepos.i.us
  %i.cf = shl i32 %i.bz, %.lr.ph.tripcount.i.us
  %i.cg = and i32 %i.cf, 8388480
  br label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.us

_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.us: ; preds = %._crit_edge.i.us, %bb.i, %bb.h, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us
  %.116.i.us = phi i32 [ %i.cb, %bb.h ], [ 255, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ], [ %i.ce, %._crit_edge.i.us ], [ 0, %bb.i ]
  %.1.i.us = phi i32 [ %i.bz, %bb.h ], [ %i.bz, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ], [ %i.cg, %._crit_edge.i.us ], [ 0, %bb.i ]
  %i.ch = shl nuw i32 %i.bt, 8
  %i.ci = and i32 %i.ch, -2147483648
  %i.cj = shl nuw nsw i32 %.116.i.us, 23
  %i.ck = or disjoint i32 %i.cj, %i.ci
  %i.cl = or i32 %i.ck, %.1.i.us
  %i.cm = load i32, ptr %i.aj, align 8, !tbaa !134
  %i.cn = add nsw i32 %i.cm, %.01536.us           ; 2 uses
  %i.co = icmp samesign ult i32 %i.cn, %i.i
  call void @llvm.assume(i1 %i.co)
  call void @llvm.assume(i1 %i.ar)
  %i.cp = zext nneg i32 %i.cn to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.cp
  store i32 %i.cl, ptr %i.cq, align 4, !tbaa !143
  %i.cr = add nuw nsw i32 %.01536.us, 1           ; 2 uses
  %exitcond40.not = icmp eq i32 %i.cr, %i.ag
  br i1 %exitcond40.not, label %._crit_edge.us, label %bb.c, !llvm.loop !280

._crit_edge.us:                                   ; preds = %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.us
  %i.cs = load i32, ptr %i.ak, align 4, !tbaa !125
  %i.ct = shl nsw i32 %i.cs, 3
  call void @_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE12skipManyBitsEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.ct)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cu = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.cv = icmp sgt i32 %1, %i.cu
  br i1 %i.cv, label %.preheader.us, label %._crit_edge38, !llvm.loop !281

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.037 = phi i32 [ %i.cy, %.preheader ], [ %2, %.preheader.lr.ph ]
  %i.cw = load i32, ptr %i.ak, align 4, !tbaa !125
  %i.cx = shl nsw i32 %i.cw, 3
  call void @_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE12skipManyBitsEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.cx)
  %i.cy = add i32 %.037, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.cy, %1
  br i1 %exitcond.not, label %._crit_edge38, label %.preheader, !llvm.loop !281

.split.us:                                        ; preds = %bb.f
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.19, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv) #6
  unreachable

._crit_edge38:                                    ; preds = %.preheader, %._crit_edge.us, %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8rawspeed24UncompressedDecompressor14decodePackedFPINS_14BitStreamerLSBENS_13ieee_754_20088Binary24EEEvii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca i32, align 4            ; 5 uses
  %3 = alloca %"class.rawspeed::BitStreamerLSB", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !287
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !101, !noalias !287 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !102, !noalias !287
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !104, !noalias !287
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !103, !noalias !287
  %i.n = ashr i32 %i.m, 2                         ; 3 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !30   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !29   ; 3 uses
  %i.u = icmp uge i32 %i.t, %i.r
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp sgt i32 %i.t, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = zext i32 %i.r to i64
  %i.x = sub nuw nsw i32 %i.t, %i.r               ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !105
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i64 0, ptr %3, align 8, !tbaa !136
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !137
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !120
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i32 %i.x, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !106
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !145
  %i.ad = icmp samesign ult i32 %i.x, 4
  br i1 %i.ad, label %bb.b, label %_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_14BitStreamerLSBEEC2ENS_10Array1DRefIKSt4byteEE) #6
  unreachable

_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit: ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !27
  %i.ag = mul i32 %i.af, %i.f                     ; 2 uses
  %i.ah = icmp slt i32 %2, %1
  br i1 %i.ah, label %.preheader.lr.ph, label %._crit_edge38

.preheader.lr.ph:                                 ; preds = %_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %i.ai = icmp sgt i32 %i.ag, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  br i1 %i.ai, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.al = zext i32 %2 to i64
  %i.am = zext nneg i32 %i.k to i64
  %i.an = zext nneg i32 %i.n to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.al, %.preheader.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 3 uses
  %i.ao = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !141 ; 5 uses
  %i.ap = icmp sgt i32 %i.ao, 3
  call void @llvm.assume(i1 %i.ap)
  %.sroa.0.0.copyload.i.i.i.i.us = load ptr, ptr %i.ab, align 8 ; 2 uses
  %i.aq = add nuw nsw i32 %i.ao, 8
  %i.ar = icmp samesign ult i64 %indvars.iv, %i.am
  %i.as = mul nuw nsw i64 %indvars.iv, %i.an
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.as
  %.pre = load i32, ptr %i.aa, align 8, !tbaa !137
  %.pre42 = load i32, ptr %i.ac, align 8, !tbaa !145
  br label %bb.c

bb.c:                                             ; preds = %.preheader.us, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.us
  %i.au = phi i32 [ %.pre42, %.preheader.us ], [ %i.bn, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.us ] ; 6 uses
  %i.av = phi i32 [ %.pre, %.preheader.us ], [ %i.bs, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.us ] ; 5 uses
  %.01536.us = phi i32 [ 0, %.preheader.us ], [ %i.co, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.us ] ; 2 uses
  %i.aw = icmp samesign ult i32 %i.av, 65
  call void @llvm.assume(i1 %i.aw)
  %i.ax = icmp sgt i32 %i.au, -1
  call void @llvm.assume(i1 %i.ax)
  %.not.i.i.us = icmp samesign ult i32 %i.av, 24
  br i1 %.not.i.i.us, label %bb.d, label %._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us

._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us: ; preds = %bb.c
  %.pre.i.us = load i64, ptr %3, align 8, !tbaa !136
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.ay = add nuw nsw i32 %i.au, 4                ; 3 uses
  %.not.i.i.i.us = icmp samesign ugt i32 %i.ay, %i.ao
  br i1 %.not.i.i.i.us, label %bb.f, label %bb.e, !prof !133

bb.e:                                             ; preds = %bb.d
  %i.az = zext nneg i32 %i.au to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.us, i64 %i.az
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us

bb.f:                                             ; preds = %bb.d
  %i.bb = icmp samesign ugt i32 %i.au, %i.aq
  br i1 %i.bb, label %.split.us, label %bb.g, !prof !133

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %.sroa.0.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.us = call i32 @llvm.umin.i32(i32 %i.ao, i32 %i.au) ; 3 uses
  %i.bc = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.us, 4
  %.sroa.speculated.i.i.i.i.us = call i32 @llvm.umin.i32(i32 %i.ao, i32 %i.bc)
  %i.bd = sub nsw i32 %.sroa.speculated.i.i.i.i.us, %.sroa.speculated27.i.i.i.i.us ; 2 uses
  %i.be = icmp samesign ult i32 %i.bd, 5
  call void @llvm.assume(i1 %i.be)
  %i.bf = zext nneg i32 %.sroa.speculated27.i.i.i.i.us to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.us, i64 %i.bf
  %i.bh = zext nneg i32 %i.bd to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i, ptr align 1 %i.bg, i64 %i.bh, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us: ; preds = %bb.g, %bb.e
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.us = phi ptr [ %.sroa.0.i.i.i, %bb.g ], [ %i.ba, %bb.e ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.us = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.us, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %.promoted8.i.i.i.us = load i64, ptr %3, align 8
  %i.bi = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.us to i64
  %i.bj = or disjoint i32 %i.av, 32
  %i.bk = zext nneg i32 %i.av to i64
  %i.bl = shl nuw nsw i64 %i.bi, %i.bk
  %i.bm = or i64 %.promoted8.i.i.i.us, %i.bl
  store i32 %i.ay, ptr %i.ac, align 8, !tbaa !145
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us

_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us, %._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us
  %i.bn = phi i32 [ %i.au, %._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.ay, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us ]
  %i.bo = phi i64 [ %.pre.i.us, %._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.bm, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us ] ; 2 uses
  %i.bp = phi i32 [ %i.av, %._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.bj, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us ]
  %i.bq = trunc i64 %i.bo to i32                  ; 3 uses
  %i.br = lshr i64 %i.bo, 24
  store i64 %i.br, ptr %3, align 8, !tbaa !136
  %i.bs = add nsw i32 %i.bp, -24                  ; 2 uses
  store i32 %i.bs, ptr %i.aa, align 8, !tbaa !137
  %i.bt = lshr i32 %i.bq, 16
  %i.bu = and i32 %i.bt, 127                      ; 3 uses
  %i.bv = and i32 %i.bq, 65535                    ; 2 uses
  %i.bw = shl nuw nsw i32 %i.bv, 7                ; 4 uses
  %i.bx = icmp eq i32 %i.bu, 127
  br i1 %i.bx, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.us, label %bb.h

bb.h:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us
  %i.by = add nuw nsw i32 %i.bu, 64
  %i.bz = icmp eq i32 %i.bu, 0
  br i1 %i.bz, label %bb.i, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.us

bb.i:                                             ; preds = %bb.h
  %i.ca = icmp eq i32 %i.bv, 0
  br i1 %i.ca, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.us, label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %bb.i
  %.masked.numleadingzeros.i.us = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.bw, i1 true) ; 2 uses
  %i.cb = sub nuw nsw i32 73, %.masked.numleadingzeros.i.us
  %.masked.leadingonepos.i.us = xor i32 %.masked.numleadingzeros.i.us, 31
  %.lr.ph.tripcount.i.us = sub nuw nsw i32 23, %.masked.leadingonepos.i.us
  %i.cc = shl i32 %i.bw, %.lr.ph.tripcount.i.us
  %i.cd = and i32 %i.cc, 8388480
  br label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.us

_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.us: ; preds = %._crit_edge.i.us, %bb.i, %bb.h, %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us
  %.116.i.us = phi i32 [ %i.by, %bb.h ], [ 255, %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ], [ %i.cb, %._crit_edge.i.us ], [ 0, %bb.i ]
  %.1.i.us = phi i32 [ %i.bw, %bb.h ], [ %i.bw, %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ], [ %i.cd, %._crit_edge.i.us ], [ 0, %bb.i ]
  %i.ce = shl i32 %i.bq, 8
  %i.cf = and i32 %i.ce, -2147483648
  %i.cg = shl nuw nsw i32 %.116.i.us, 23
  %i.ch = or disjoint i32 %i.cg, %i.cf
  %i.ci = or i32 %i.ch, %.1.i.us
  %i.cj = load i32, ptr %i.aj, align 8, !tbaa !134
  %i.ck = add nsw i32 %i.cj, %.01536.us           ; 2 uses
  %i.cl = icmp samesign ult i32 %i.ck, %i.i
  call void @llvm.assume(i1 %i.cl)
  call void @llvm.assume(i1 %i.ar)
  %i.cm = zext nneg i32 %i.ck to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.cm
  store i32 %i.ci, ptr %i.cn, align 4, !tbaa !143
  %i.co = add nuw nsw i32 %.01536.us, 1           ; 2 uses
  %exitcond40.not = icmp eq i32 %i.co, %i.ag
  br i1 %exitcond40.not, label %._crit_edge.us, label %bb.c, !llvm.loop !285

._crit_edge.us:                                   ; preds = %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary24ENS1_8Binary32EEEjj.exit.us
  %i.cp = load i32, ptr %i.ak, align 4, !tbaa !125
  %i.cq = shl nsw i32 %i.cp, 3
  call void @_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE12skipManyBitsEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.cq)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cr = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.cs = icmp sgt i32 %1, %i.cr
  br i1 %i.cs, label %.preheader.us, label %._crit_edge38, !llvm.loop !286

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.037 = phi i32 [ %i.cv, %.preheader ], [ %2, %.preheader.lr.ph ]
  %i.ct = load i32, ptr %i.ak, align 4, !tbaa !125
  %i.cu = shl nsw i32 %i.ct, 3
  call void @_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE12skipManyBitsEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.cu)
  %i.cv = add i32 %.037, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.cv, %1
  br i1 %exitcond.not, label %._crit_edge38, label %.preheader, !llvm.loop !286

.split.us:                                        ; preds = %bb.f
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.19, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv) #6
  unreachable

._crit_edge38:                                    ; preds = %.preheader, %._crit_edge.us, %_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8rawspeed24UncompressedDecompressor15decodePackedIntINS_14BitStreamerMSBEEEvii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca i32, align 4            ; 5 uses
  %3 = alloca %"class.rawspeed::BitStreamerMSB", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !292
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !101, !noalias !292 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !102, !noalias !292
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !104, !noalias !292
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !103, !noalias !292
  %i.n = ashr i32 %i.m, 1                         ; 3 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !30   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !29   ; 3 uses
  %i.u = icmp uge i32 %i.t, %i.r
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp sgt i32 %i.t, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = zext i32 %i.r to i64
  %i.x = sub nuw nsw i32 %i.t, %i.r               ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !105
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i64 0, ptr %3, align 8, !tbaa !136
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !137
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !120
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i32 %i.x, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !106
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !140
  %i.ad = icmp samesign ult i32 %i.x, 4
  br i1 %i.ad, label %bb.b, label %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_14BitStreamerMSBEEC2ENS_10Array1DRefIKSt4byteEE) #6
  unreachable

_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit: ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !27
  %i.ag = mul i32 %i.af, %i.f                     ; 2 uses
  %i.ah = icmp slt i32 %2, %1
  br i1 %i.ah, label %.preheader.lr.ph, label %._crit_edge37

.preheader.lr.ph:                                 ; preds = %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %i.ai = icmp sgt i32 %i.ag, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  br i1 %i.ai, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.al = zext nneg i32 %i.i to i64
  %i.am = zext i32 %2 to i64
  %i.an = zext nneg i32 %i.k to i64
  %i.ao = zext nneg i32 %i.n to i64
  %wide.trip.count = zext nneg i32 %i.ag to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv41 = phi i64 [ %i.am, %.preheader.us.preheader ], [ %indvars.iv.next42, %._crit_edge.us ] ; 3 uses
  %i.ap = load i32, ptr %i.aj, align 4, !tbaa !122 ; 6 uses
  %i.aq = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !141 ; 5 uses
  %i.ar = icmp sgt i32 %i.aq, 3
  call void @llvm.assume(i1 %i.ar)
  %i.as = icmp ne i32 %i.ap, 0
  call void @llvm.assume(i1 %i.as)
  %i.at = icmp samesign ult i32 %i.ap, 33
  call void @llvm.assume(i1 %i.at)
  %.sroa.0.0.copyload.i.i.i.i.us = load ptr, ptr %i.ab, align 8 ; 2 uses
  %i.au = add nuw nsw i32 %i.aq, 8
  %i.av = sub nuw nsw i32 64, %i.ap
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = zext nneg i32 %i.ap to i64
  %i.ay = icmp samesign ult i64 %indvars.iv41, %i.an
  %i.az = mul nuw nsw i64 %indvars.iv41, %i.ao
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.az
  %.pre = load i32, ptr %i.aa, align 8, !tbaa !137
  %.pre44 = load i32, ptr %i.ac, align 8, !tbaa !140
  br label %bb.c

bb.c:                                             ; preds = %.preheader.us, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us
  %i.bb = phi i32 [ %.pre44, %.preheader.us ], [ %i.bw, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ] ; 6 uses
  %i.bc = phi i32 [ %.pre, %.preheader.us ], [ %i.ca, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ] ; 3 uses
  %i.bd = icmp samesign ult i32 %i.bc, 65
  call void @llvm.assume(i1 %i.bd)
  %i.be = icmp sgt i32 %i.bb, -1
  call void @llvm.assume(i1 %i.be)
  %.not.i.i.us = icmp samesign ult i32 %i.bc, %i.ap
  br i1 %.not.i.i.us, label %bb.d, label %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us

._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us: ; preds = %bb.c
  %.pre.i.us = load i64, ptr %3, align 8, !tbaa !136
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.bf = add nuw nsw i32 %i.bb, 4                ; 3 uses
  %.not.i.i.i.us = icmp samesign ugt i32 %i.bf, %i.aq
  br i1 %.not.i.i.i.us, label %bb.f, label %bb.e, !prof !133

bb.e:                                             ; preds = %bb.d
  %i.bg = zext nneg i32 %i.bb to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.us, i64 %i.bg
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us

bb.f:                                             ; preds = %bb.d
  %i.bi = icmp samesign ugt i32 %i.bb, %i.au
  br i1 %i.bi, label %.split.us, label %bb.g, !prof !133

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %.sroa.0.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.us = call i32 @llvm.umin.i32(i32 %i.aq, i32 %i.bb) ; 3 uses
  %i.bj = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.us, 4
  %.sroa.speculated.i.i.i.i.us = call i32 @llvm.umin.i32(i32 %i.aq, i32 %i.bj)
  %i.bk = sub nsw i32 %.sroa.speculated.i.i.i.i.us, %.sroa.speculated27.i.i.i.i.us ; 2 uses
  %i.bl = icmp samesign ult i32 %i.bk, 5
  call void @llvm.assume(i1 %i.bl)
  %i.bm = zext nneg i32 %.sroa.speculated27.i.i.i.i.us to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.us, i64 %i.bm
  %i.bo = zext nneg i32 %i.bk to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i, ptr align 1 %i.bn, i64 %i.bo, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us: ; preds = %bb.g, %bb.e
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.us = phi ptr [ %.sroa.0.i.i.i, %bb.g ], [ %i.bh, %bb.e ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.us = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.us, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %.promoted8.i.i.i.us = load i64, ptr %3, align 8
  %i.bp = call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.us)
  %i.bq = zext i32 %i.bp to i64
  %i.br = add nuw nsw i32 %i.bc, 32
  %i.bs = sub nuw nsw i32 32, %i.bc
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = shl nuw i64 %i.bq, %i.bt
  %i.bv = or i64 %i.bu, %.promoted8.i.i.i.us
  store i32 %i.bf, ptr %i.ac, align 8, !tbaa !140
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us
  %i.bw = phi i32 [ %i.bb, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.bf, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us ]
  %i.bx = phi i64 [ %.pre.i.us, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.bv, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us ] ; 2 uses
  %i.by = phi i32 [ %i.bc, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.br, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us ]
  %i.bz = lshr i64 %i.bx, %i.aw
  %i.ca = sub nuw nsw i32 %i.by, %i.ap            ; 2 uses
  store i32 %i.ca, ptr %i.aa, align 8, !tbaa !137
  %i.cb = shl i64 %i.bx, %i.ax
  store i64 %i.cb, ptr %3, align 8, !tbaa !136
  %i.cc = trunc i64 %i.bz to i16
  %i.cd = icmp samesign ult i64 %indvars.iv, %i.al
  call void @llvm.assume(i1 %i.cd)
  call void @llvm.assume(i1 %i.ay)
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %indvars.iv
  store i16 %i.cc, ptr %i.ce, align 2, !tbaa !114
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond40.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond40.not, label %._crit_edge.us, label %bb.c, !llvm.loop !290

._crit_edge.us:                                   ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us
  %i.cf = load i32, ptr %i.ak, align 4, !tbaa !125
  %i.cg = shl nsw i32 %i.cf, 3
  call void @_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE12skipManyBitsEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.cg)
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %i.ch = trunc nuw nsw i64 %indvars.iv.next42 to i32
  %i.ci = icmp sgt i32 %1, %i.ch
  br i1 %i.ci, label %.preheader.us, label %._crit_edge37, !llvm.loop !291

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.01436 = phi i32 [ %i.cl, %.preheader ], [ %2, %.preheader.lr.ph ]
  %i.cj = load i32, ptr %i.ak, align 4, !tbaa !125
  %i.ck = shl nsw i32 %i.cj, 3
  call void @_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE12skipManyBitsEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.ck)
  %i.cl = add i32 %.01436, 1                      ; 2 uses
  %exitcond.not = icmp eq i32 %i.cl, %1
  br i1 %exitcond.not, label %._crit_edge37, label %.preheader, !llvm.loop !291

.split.us:                                        ; preds = %bb.f
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.19, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv) #6
  unreachable

._crit_edge37:                                    ; preds = %.preheader, %._crit_edge.us, %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8rawspeed24UncompressedDecompressor15decodePackedIntINS_16BitStreamerMSB16EEEvii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca i32, align 4            ; 5 uses
  %3 = alloca %"class.rawspeed::BitStreamerMSB16", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !297
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !101, !noalias !297 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !102, !noalias !297
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !104, !noalias !297
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !103, !noalias !297
  %i.n = ashr i32 %i.m, 1                         ; 3 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !30   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !29   ; 3 uses
  %i.u = icmp uge i32 %i.t, %i.r
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp sgt i32 %i.t, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = zext i32 %i.r to i64
  %i.x = sub nuw nsw i32 %i.t, %i.r               ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !105
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i64 0, ptr %3, align 8, !tbaa !136
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !137
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !120
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i32 %i.x, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !106
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !147
  %i.ad = icmp samesign ult i32 %i.x, 4
  br i1 %i.ad, label %bb.b, label %_ZN8rawspeed16BitStreamerMSB16CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_16BitStreamerMSB16EEC2ENS_10Array1DRefIKSt4byteEE) #6
  unreachable

_ZN8rawspeed16BitStreamerMSB16CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit: ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !27
  %i.ag = mul i32 %i.af, %i.f                     ; 2 uses
  %i.ah = icmp slt i32 %2, %1
  br i1 %i.ah, label %.preheader.lr.ph, label %._crit_edge37

.preheader.lr.ph:                                 ; preds = %_ZN8rawspeed16BitStreamerMSB16CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %i.ai = icmp sgt i32 %i.ag, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  br i1 %i.ai, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.al = zext nneg i32 %i.i to i64
  %i.am = zext i32 %2 to i64
  %i.an = zext nneg i32 %i.k to i64
  %i.ao = zext nneg i32 %i.n to i64
  %wide.trip.count = zext nneg i32 %i.ag to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv41 = phi i64 [ %i.am, %.preheader.us.preheader ], [ %indvars.iv.next42, %._crit_edge.us ] ; 3 uses
  %i.ap = load i32, ptr %i.aj, align 4, !tbaa !122 ; 6 uses
  %i.aq = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !141 ; 5 uses
  %i.ar = icmp sgt i32 %i.aq, 3
  call void @llvm.assume(i1 %i.ar)
  %i.as = icmp ne i32 %i.ap, 0
  call void @llvm.assume(i1 %i.as)
  %i.at = icmp samesign ult i32 %i.ap, 33
  call void @llvm.assume(i1 %i.at)
  %.sroa.0.0.copyload.i.i.i.i.us = load ptr, ptr %i.ab, align 8 ; 2 uses
  %i.au = add nuw nsw i32 %i.aq, 8
  %i.av = sub nuw nsw i32 64, %i.ap
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = zext nneg i32 %i.ap to i64
  %i.ay = icmp samesign ult i64 %indvars.iv41, %i.an
  %i.az = mul nuw nsw i64 %indvars.iv41, %i.ao
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.az
  %.pre = load i32, ptr %i.aa, align 8, !tbaa !137
  %.pre44 = load i32, ptr %i.ac, align 8, !tbaa !147
  br label %bb.c

bb.c:                                             ; preds = %.preheader.us, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us
  %i.bb = phi i32 [ %.pre44, %.preheader.us ], [ %i.ca, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ] ; 7 uses
  %i.bc = phi i32 [ %.pre, %.preheader.us ], [ %i.ce, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ] ; 3 uses
  %i.bd = icmp samesign ult i32 %i.bc, 65
  call void @llvm.assume(i1 %i.bd)
  %i.be = icmp sgt i32 %i.bb, -1
  call void @llvm.assume(i1 %i.be)
  %i.bf = and i32 %i.bb, 1
  %i.bg = icmp eq i32 %i.bf, 0
  call void @llvm.assume(i1 %i.bg)
  %.not.i.i.us = icmp samesign ult i32 %i.bc, %i.ap
  br i1 %.not.i.i.us, label %bb.d, label %._ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us

._ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us: ; preds = %bb.c
  %.pre.i.us = load i64, ptr %3, align 8, !tbaa !136
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.bh = add nuw nsw i32 %i.bb, 4                ; 3 uses
  %.not.i.i.i.us = icmp samesign ugt i32 %i.bh, %i.aq
  br i1 %.not.i.i.i.us, label %bb.f, label %bb.e, !prof !133

bb.e:                                             ; preds = %bb.d
  %i.bi = zext nneg i32 %i.bb to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.us, i64 %i.bi
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB16EE8getInputEv.exit.i.i.us

bb.f:                                             ; preds = %bb.d
  %i.bk = icmp samesign ugt i32 %i.bb, %i.au
  br i1 %i.bk, label %.split.us, label %bb.g, !prof !133

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %.sroa.0.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.us = call i32 @llvm.umin.i32(i32 %i.aq, i32 %i.bb) ; 3 uses
  %i.bl = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.us, 4
  %.sroa.speculated.i.i.i.i.us = call i32 @llvm.umin.i32(i32 %i.aq, i32 %i.bl)
  %i.bm = sub nsw i32 %.sroa.speculated.i.i.i.i.us, %.sroa.speculated27.i.i.i.i.us ; 2 uses
  %i.bn = icmp samesign ult i32 %i.bm, 5
  call void @llvm.assume(i1 %i.bn)
  %i.bo = zext nneg i32 %.sroa.speculated27.i.i.i.i.us to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.us, i64 %i.bo
  %i.bq = zext nneg i32 %i.bm to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i, ptr align 1 %i.bp, i64 %i.bq, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB16EE8getInputEv.exit.i.i.us

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB16EE8getInputEv.exit.i.i.us: ; preds = %bb.g, %bb.e
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.us = phi ptr [ %.sroa.0.i.i.i, %bb.g ], [ %i.bj, %bb.e ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.us = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.us, align 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %.sroa.2.0.extract.shift.i.i.i.us = lshr i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.us, 16
  %.sroa.2.0.extract.trunc.i.i.i.us = zext nneg i32 %.sroa.2.0.extract.shift.i.i.i.us to i64
  %.promoted8.i.i.i.us = load i64, ptr %3, align 8, !tbaa !136
  %i.br = zext nneg i32 %i.bc to i64              ; 2 uses
  %i.bs = and i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.us, 65535
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = sub nuw nsw i64 48, %i.br
  %i.bv = shl nuw i64 %i.bt, %i.bu
  %i.bw = or i64 %i.bv, %.promoted8.i.i.i.us
  %indvars.iv.next13.1.i.i.i.us = add nuw nsw i32 %i.bc, 32
  %i.bx = sub nuw nsw i64 32, %i.br
  %i.by = shl nuw nsw i64 %.sroa.2.0.extract.trunc.i.i.i.us, %i.bx
  %i.bz = or i64 %i.bw, %i.by
  store i32 %i.bh, ptr %i.ac, align 8, !tbaa !147
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB16EE8getInputEv.exit.i.i.us, %._ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us
  %i.ca = phi i32 [ %i.bb, %._ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.bh, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB16EE8getInputEv.exit.i.i.us ]
  %i.cb = phi i64 [ %.pre.i.us, %._ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.bz, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB16EE8getInputEv.exit.i.i.us ] ; 2 uses
  %i.cc = phi i32 [ %i.bc, %._ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %indvars.iv.next13.1.i.i.i.us, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB16EE8getInputEv.exit.i.i.us ]
  %i.cd = lshr i64 %i.cb, %i.aw
  %i.ce = sub nuw nsw i32 %i.cc, %i.ap            ; 2 uses
  store i32 %i.ce, ptr %i.aa, align 8, !tbaa !137
  %i.cf = shl i64 %i.cb, %i.ax
  store i64 %i.cf, ptr %3, align 8, !tbaa !136
  %i.cg = trunc i64 %i.cd to i16
  %i.ch = icmp samesign ult i64 %indvars.iv, %i.al
  call void @llvm.assume(i1 %i.ch)
  call void @llvm.assume(i1 %i.ay)
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %indvars.iv
  store i16 %i.cg, ptr %i.ci, align 2, !tbaa !114
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond40.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond40.not, label %._crit_edge.us, label %bb.c, !llvm.loop !295

._crit_edge.us:                                   ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us
  %i.cj = load i32, ptr %i.ak, align 4, !tbaa !125
  %i.ck = shl nsw i32 %i.cj, 3
  call void @_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE12skipManyBitsEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.ck)
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %i.cl = trunc nuw nsw i64 %indvars.iv.next42 to i32
  %i.cm = icmp sgt i32 %1, %i.cl
  br i1 %i.cm, label %.preheader.us, label %._crit_edge37, !llvm.loop !296

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.01436 = phi i32 [ %i.cp, %.preheader ], [ %2, %.preheader.lr.ph ]
  %i.cn = load i32, ptr %i.ak, align 4, !tbaa !125
  %i.co = shl nsw i32 %i.cn, 3
  call void @_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB16ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE12skipManyBitsEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.co)
  %i.cp = add i32 %.01436, 1                      ; 2 uses
  %exitcond.not = icmp eq i32 %i.cp, %1
  br i1 %exitcond.not, label %._crit_edge37, label %.preheader, !llvm.loop !296

.split.us:                                        ; preds = %bb.f
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.19, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB16EE8getInputEv) #6
  unreachable

._crit_edge37:                                    ; preds = %.preheader, %._crit_edge.us, %_ZN8rawspeed16BitStreamerMSB16CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8rawspeed24UncompressedDecompressor15decodePackedIntINS_16BitStreamerMSB32EEEvii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca i32, align 4            ; 5 uses
  %3 = alloca %"class.rawspeed::BitStreamerMSB32", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !302
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !101, !noalias !302 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !102, !noalias !302
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !104, !noalias !302
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !103, !noalias !302
  %i.n = ashr i32 %i.m, 1                         ; 3 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !30   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !29   ; 3 uses
  %i.u = icmp uge i32 %i.t, %i.r
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp sgt i32 %i.t, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = zext i32 %i.r to i64
  %i.x = sub nuw nsw i32 %i.t, %i.r               ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !105
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i64 0, ptr %3, align 8, !tbaa !136
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !137
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !120
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i32 %i.x, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !106
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !149
  %i.ad = icmp samesign ult i32 %i.x, 4
  br i1 %i.ad, label %bb.b, label %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_16BitStreamerMSB32EEC2ENS_10Array1DRefIKSt4byteEE) #6
  unreachable

_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit: ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !27
  %i.ag = mul i32 %i.af, %i.f                     ; 2 uses
  %i.ah = icmp slt i32 %2, %1
  br i1 %i.ah, label %.preheader.lr.ph, label %._crit_edge37

.preheader.lr.ph:                                 ; preds = %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %i.ai = icmp sgt i32 %i.ag, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  br i1 %i.ai, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.al = zext nneg i32 %i.i to i64
  %i.am = zext i32 %2 to i64
  %i.an = zext nneg i32 %i.k to i64
  %i.ao = zext nneg i32 %i.n to i64
  %wide.trip.count = zext nneg i32 %i.ag to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv41 = phi i64 [ %i.am, %.preheader.us.preheader ], [ %indvars.iv.next42, %._crit_edge.us ] ; 3 uses
  %i.ap = load i32, ptr %i.aj, align 4, !tbaa !122 ; 6 uses
  %i.aq = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !141 ; 5 uses
  %i.ar = icmp sgt i32 %i.aq, 3
  call void @llvm.assume(i1 %i.ar)
  %i.as = icmp ne i32 %i.ap, 0
  call void @llvm.assume(i1 %i.as)
  %i.at = icmp samesign ult i32 %i.ap, 33
  call void @llvm.assume(i1 %i.at)
  %.sroa.0.0.copyload.i.i.i.i.us = load ptr, ptr %i.ab, align 8 ; 2 uses
  %i.au = add nuw nsw i32 %i.aq, 8
  %i.av = sub nuw nsw i32 64, %i.ap
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = zext nneg i32 %i.ap to i64
  %i.ay = icmp samesign ult i64 %indvars.iv41, %i.an
  %i.az = mul nuw nsw i64 %indvars.iv41, %i.ao
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.az
  %.pre = load i32, ptr %i.aa, align 8, !tbaa !137
  %.pre44 = load i32, ptr %i.ac, align 8, !tbaa !149
  br label %bb.c

bb.c:                                             ; preds = %.preheader.us, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us
  %i.bb = phi i32 [ %.pre44, %.preheader.us ], [ %i.bx, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ] ; 7 uses
  %i.bc = phi i32 [ %.pre, %.preheader.us ], [ %i.cb, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ] ; 3 uses
  %i.bd = icmp samesign ult i32 %i.bc, 65
  call void @llvm.assume(i1 %i.bd)
  %i.be = icmp sgt i32 %i.bb, -1
  call void @llvm.assume(i1 %i.be)
  %i.bf = and i32 %i.bb, 3
  %i.bg = icmp eq i32 %i.bf, 0
  call void @llvm.assume(i1 %i.bg)
  %.not.i.i.us = icmp samesign ult i32 %i.bc, %i.ap
  br i1 %.not.i.i.us, label %bb.d, label %._ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us

._ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us: ; preds = %bb.c
  %.pre.i.us = load i64, ptr %3, align 8, !tbaa !136
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.bh = add nuw nsw i32 %i.bb, 4                ; 3 uses
  %.not.i.i.i.us = icmp samesign ugt i32 %i.bh, %i.aq
  br i1 %.not.i.i.i.us, label %bb.f, label %bb.e, !prof !133

bb.e:                                             ; preds = %bb.d
  %i.bi = zext nneg i32 %i.bb to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.us, i64 %i.bi
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.us

bb.f:                                             ; preds = %bb.d
  %i.bk = icmp samesign ugt i32 %i.bb, %i.au
  br i1 %i.bk, label %.split.us, label %bb.g, !prof !133

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %.sroa.0.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.us = call i32 @llvm.umin.i32(i32 %i.aq, i32 %i.bb) ; 3 uses
  %i.bl = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.us, 4
  %.sroa.speculated.i.i.i.i.us = call i32 @llvm.umin.i32(i32 %i.aq, i32 %i.bl)
  %i.bm = sub nsw i32 %.sroa.speculated.i.i.i.i.us, %.sroa.speculated27.i.i.i.i.us ; 2 uses
  %i.bn = icmp samesign ult i32 %i.bm, 5
  call void @llvm.assume(i1 %i.bn)
  %i.bo = zext nneg i32 %.sroa.speculated27.i.i.i.i.us to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.us, i64 %i.bo
  %i.bq = zext nneg i32 %i.bm to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i, ptr align 1 %i.bp, i64 %i.bq, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.us

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.us: ; preds = %bb.g, %bb.e
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.us = phi ptr [ %.sroa.0.i.i.i, %bb.g ], [ %i.bj, %bb.e ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.us = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.us, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %.promoted8.i.i.i.us = load i64, ptr %3, align 8
  %i.br = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.us to i64
  %i.bs = add nuw nsw i32 %i.bc, 32
  %i.bt = sub nuw nsw i32 32, %i.bc
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = shl nuw i64 %i.br, %i.bu
  %i.bw = or i64 %i.bv, %.promoted8.i.i.i.us
  store i32 %i.bh, ptr %i.ac, align 8, !tbaa !149
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.us, %._ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us
  %i.bx = phi i32 [ %i.bb, %._ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.bh, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.us ]
  %i.by = phi i64 [ %.pre.i.us, %._ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.bw, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.us ] ; 2 uses
  %i.bz = phi i32 [ %i.bc, %._ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.bs, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i.us ]
  %i.ca = lshr i64 %i.by, %i.aw
  %i.cb = sub nuw nsw i32 %i.bz, %i.ap            ; 2 uses
  store i32 %i.cb, ptr %i.aa, align 8, !tbaa !137
  %i.cc = shl i64 %i.by, %i.ax
  store i64 %i.cc, ptr %3, align 8, !tbaa !136
  %i.cd = trunc i64 %i.ca to i16
  %i.ce = icmp samesign ult i64 %indvars.iv, %i.al
  call void @llvm.assume(i1 %i.ce)
  call void @llvm.assume(i1 %i.ay)
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %indvars.iv
  store i16 %i.cd, ptr %i.cf, align 2, !tbaa !114
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond40.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond40.not, label %._crit_edge.us, label %bb.c, !llvm.loop !300

._crit_edge.us:                                   ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us
  %i.cg = load i32, ptr %i.ak, align 4, !tbaa !125
  %i.ch = shl nsw i32 %i.cg, 3
  call void @_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE12skipManyBitsEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.ch)
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %i.ci = trunc nuw nsw i64 %indvars.iv.next42 to i32
  %i.cj = icmp sgt i32 %1, %i.ci
  br i1 %i.cj, label %.preheader.us, label %._crit_edge37, !llvm.loop !301

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.01436 = phi i32 [ %i.cm, %.preheader ], [ %2, %.preheader.lr.ph ]
  %i.ck = load i32, ptr %i.ak, align 4, !tbaa !125
  %i.cl = shl nsw i32 %i.ck, 3
  call void @_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE12skipManyBitsEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.cl)
  %i.cm = add i32 %.01436, 1                      ; 2 uses
  %exitcond.not = icmp eq i32 %i.cm, %1
  br i1 %exitcond.not, label %._crit_edge37, label %.preheader, !llvm.loop !301

.split.us:                                        ; preds = %bb.f
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.19, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #6
  unreachable

._crit_edge37:                                    ; preds = %.preheader, %._crit_edge.us, %_ZN8rawspeed16BitStreamerMSB32CI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8rawspeed24UncompressedDecompressor15decodePackedIntINS_14BitStreamerLSBEEEvii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca i32, align 4            ; 5 uses
  %3 = alloca %"class.rawspeed::BitStreamerLSB", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !307
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !101, !noalias !307 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !102, !noalias !307
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !104, !noalias !307
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !103, !noalias !307
  %i.n = ashr i32 %i.m, 1                         ; 3 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !30   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !29   ; 3 uses
  %i.u = icmp uge i32 %i.t, %i.r
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp sgt i32 %i.t, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = zext i32 %i.r to i64
  %i.x = sub nuw nsw i32 %i.t, %i.r               ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !105
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i64 0, ptr %3, align 8, !tbaa !136
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !137
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !120
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i32 %i.x, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !106
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !145
  %i.ad = icmp samesign ult i32 %i.x, 4
  br i1 %i.ad, label %bb.b, label %_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_14BitStreamerLSBEEC2ENS_10Array1DRefIKSt4byteEE) #6
  unreachable

_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit: ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !27
  %i.ag = mul i32 %i.af, %i.f                     ; 2 uses
  %i.ah = icmp slt i32 %2, %1
  br i1 %i.ah, label %.preheader.lr.ph, label %._crit_edge37

.preheader.lr.ph:                                 ; preds = %_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %i.ai = icmp sgt i32 %i.ag, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  br i1 %i.ai, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.al = zext nneg i32 %i.i to i64
  %i.am = zext i32 %2 to i64
  %i.an = zext nneg i32 %i.k to i64
  %i.ao = zext nneg i32 %i.n to i64
  %wide.trip.count = zext nneg i32 %i.ag to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv41 = phi i64 [ %i.am, %.preheader.us.preheader ], [ %indvars.iv.next42, %._crit_edge.us ] ; 3 uses
  %i.ap = load i32, ptr %i.aj, align 4, !tbaa !122 ; 6 uses
  %i.aq = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !141 ; 5 uses
  %i.ar = icmp sgt i32 %i.aq, 3
  call void @llvm.assume(i1 %i.ar)
  %i.as = icmp ne i32 %i.ap, 0
  call void @llvm.assume(i1 %i.as)
  %i.at = icmp samesign ult i32 %i.ap, 33
  call void @llvm.assume(i1 %i.at)
  %.sroa.0.0.copyload.i.i.i.i.us = load ptr, ptr %i.ab, align 8 ; 2 uses
  %i.au = add nuw nsw i32 %i.aq, 8
  %i.av = sub nuw nsw i32 32, %i.ap
  %i.aw = lshr i32 -1, %i.av
  %i.ax = zext nneg i32 %i.ap to i64
  %i.ay = icmp samesign ult i64 %indvars.iv41, %i.an
  %i.az = mul nuw nsw i64 %indvars.iv41, %i.ao
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.az
  %.pre = load i32, ptr %i.aa, align 8, !tbaa !137
  %.pre44 = load i32, ptr %i.ac, align 8, !tbaa !145
  br label %bb.c

bb.c:                                             ; preds = %.preheader.us, %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us
  %i.bb = phi i32 [ %.pre44, %.preheader.us ], [ %i.bu, %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ] ; 6 uses
  %i.bc = phi i32 [ %.pre, %.preheader.us ], [ %i.ca, %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ] ; 3 uses
  %i.bd = icmp samesign ult i32 %i.bc, 65
  call void @llvm.assume(i1 %i.bd)
  %i.be = icmp sgt i32 %i.bb, -1
  call void @llvm.assume(i1 %i.be)
  %.not.i.i.us = icmp samesign ult i32 %i.bc, %i.ap
  br i1 %.not.i.i.us, label %bb.d, label %._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us

._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us: ; preds = %bb.c
  %.pre.i.us = load i64, ptr %3, align 8, !tbaa !136
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.bf = add nuw nsw i32 %i.bb, 4                ; 3 uses
  %.not.i.i.i.us = icmp samesign ugt i32 %i.bf, %i.aq
  br i1 %.not.i.i.i.us, label %bb.f, label %bb.e, !prof !133

bb.e:                                             ; preds = %bb.d
  %i.bg = zext nneg i32 %i.bb to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.us, i64 %i.bg
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us

bb.f:                                             ; preds = %bb.d
  %i.bi = icmp samesign ugt i32 %i.bb, %i.au
  br i1 %i.bi, label %.split.us, label %bb.g, !prof !133

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %.sroa.0.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.us = call i32 @llvm.umin.i32(i32 %i.aq, i32 %i.bb) ; 3 uses
  %i.bj = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.us, 4
  %.sroa.speculated.i.i.i.i.us = call i32 @llvm.umin.i32(i32 %i.aq, i32 %i.bj)
  %i.bk = sub nsw i32 %.sroa.speculated.i.i.i.i.us, %.sroa.speculated27.i.i.i.i.us ; 2 uses
  %i.bl = icmp samesign ult i32 %i.bk, 5
  call void @llvm.assume(i1 %i.bl)
  %i.bm = zext nneg i32 %.sroa.speculated27.i.i.i.i.us to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.us, i64 %i.bm
  %i.bo = zext nneg i32 %i.bk to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i, ptr align 1 %i.bn, i64 %i.bo, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us: ; preds = %bb.g, %bb.e
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.us = phi ptr [ %.sroa.0.i.i.i, %bb.g ], [ %i.bh, %bb.e ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.us = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.us, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %.promoted8.i.i.i.us = load i64, ptr %3, align 8
  %i.bp = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.us to i64
  %i.bq = add nuw nsw i32 %i.bc, 32
  %i.br = zext nneg i32 %i.bc to i64
  %i.bs = shl nuw nsw i64 %i.bp, %i.br
  %i.bt = or i64 %.promoted8.i.i.i.us, %i.bs
  store i32 %i.bf, ptr %i.ac, align 8, !tbaa !145
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us

_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us, %._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us
  %i.bu = phi i32 [ %i.bb, %._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.bf, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us ]
  %i.bv = phi i64 [ %.pre.i.us, %._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.bt, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us ] ; 2 uses
  %i.bw = phi i32 [ %i.bc, %._ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.bq, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv.exit.i.i.us ]
  %i.bx = trunc i64 %i.bv to i32
  %i.by = and i32 %i.aw, %i.bx
  %i.bz = lshr i64 %i.bv, %i.ax
  store i64 %i.bz, ptr %3, align 8, !tbaa !136
  %i.ca = sub nuw nsw i32 %i.bw, %i.ap            ; 2 uses
  store i32 %i.ca, ptr %i.aa, align 8, !tbaa !137
  %i.cb = trunc i32 %i.by to i16
  %i.cc = icmp samesign ult i64 %indvars.iv, %i.al
  call void @llvm.assume(i1 %i.cc)
  call void @llvm.assume(i1 %i.ay)
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %indvars.iv
  store i16 %i.cb, ptr %i.cd, align 2, !tbaa !114
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond40.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond40.not, label %._crit_edge.us, label %bb.c, !llvm.loop !305

._crit_edge.us:                                   ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us
  %i.ce = load i32, ptr %i.ak, align 4, !tbaa !125
  %i.cf = shl nsw i32 %i.ce, 3
  call void @_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE12skipManyBitsEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.cf)
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %i.cg = trunc nuw nsw i64 %indvars.iv.next42 to i32
  %i.ch = icmp sgt i32 %1, %i.cg
  br i1 %i.ch, label %.preheader.us, label %._crit_edge37, !llvm.loop !306

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.01436 = phi i32 [ %i.ck, %.preheader ], [ %2, %.preheader.lr.ph ]
  %i.ci = load i32, ptr %i.ak, align 4, !tbaa !125
  %i.cj = shl nsw i32 %i.ci, 3
  call void @_ZN8rawspeed11BitStreamerINS_14BitStreamerLSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE12skipManyBitsEi(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %i.cj)
  %i.ck = add i32 %.01436, 1                      ; 2 uses
  %exitcond.not = icmp eq i32 %i.ck, %1
  br i1 %exitcond.not, label %._crit_edge37, label %.preheader, !llvm.loop !306

.split.us:                                        ; preds = %bb.f
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.19, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv) #6
  unreachable

._crit_edge37:                                    ; preds = %.preheader, %._crit_edge.us, %_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !110
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #16, !call_target !131, !inline_history !308
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !108
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !106  ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !106
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !110
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #16, !call_target !132, !inline_history !308
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
end_hunk_1
