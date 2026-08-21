Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/SamsungV2Decompressor?download=true
inline.NumInlined: 311
inline.NumDeleted: 154
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::array.54" = type { [8192 x i8] }
%"struct.std::array.62" = type { [3 x i32] }
%"struct.std::array.64" = type { [7 x i32] }
%"class.rawspeed::ByteStream" = type { %"class.rawspeed::DataBuffer.base", i32, [4 x i8] }
%"class.rawspeed::DataBuffer.base" = type { %"class.rawspeed::Buffer.base", i16 }
%"class.rawspeed::Buffer.base" = type <{ ptr, i32 }>
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%"struct.std::array.65" = type { [4 x i32] }
%"struct.std::array.66" = type { [16 x i16] }
%"struct.std::array.60" = type { [16 x i16] }

$_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz = comdat any

$_ZN8rawspeed27AbstractSamsungDecompressorD2Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz = comdat any

$_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc = comdat any

$_ZN8rawspeed17RawspeedExceptionC2EPKc = comdat any

$_ZN8rawspeed17RawspeedException3logEPKc = comdat any

$_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc = comdat any

$_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf = comdat any

$_ZZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32EiiE9scalevals = comdat any

$_ZZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32EiiE12motionOffset = comdat any

$_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf = comdat any

@.str = private unnamed_addr constant [52 x i8] c"%s, line 95: Unexpected component count / data type\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2DecompressorC2ERKNS_8RawImageENS_10ByteStreamEj = private unnamed_addr constant [99 x i8] c"rawspeed::SamsungV2Decompressor::SamsungV2Decompressor(const RawImage &, ByteStream, unsigned int)\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"%s, line 102: Unexpected bit per pixel (%u)\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"%s, line 116: Bit depth mismatch with container, %u vs %u\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"%s, line 128: Invalid opt flags %x\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"%s, line 141: Unexpected image dimensions found: (%i; %i)\00", align 1
@.str.5 = private unnamed_addr constant [76 x i8] c"%s, line 144: EXIF image dimensions do not match dimensions from raw header\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"%s, line 65: Out of bounds access in ByteStream\00", align 1
@__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj = private unnamed_addr constant [55 x i8] c"size_type rawspeed::ByteStream::check(size_type) const\00", align 1
@_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf = linkonce_odr hidden thread_local global %"struct.std::array.54" zeroinitializer, comdat, align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"EXCEPTION: %s\00", align 1
@_ZTIN8rawspeed11IOExceptionE = external constant ptr
@_ZTVN8rawspeed11IOExceptionE = external constant { [6 x ptr] }, align 8
@_ZTVN8rawspeed17RawspeedExceptionE = external constant { [6 x ptr] }, align 8
@.str.9 = private unnamed_addr constant [61 x i8] c"%s, line 59: Bit stream size is smaller than MaxProcessBytes\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_16BitStreamerMSB32EEC2ENS_10Array1DRefIKSt4byteEE = private unnamed_addr constant [157 x i8] c"rawspeed::BitStreamerReplenisherBase<rawspeed::BitStreamerMSB32>::BitStreamerReplenisherBase(Array1DRef<const std::byte>) [Tag = rawspeed::BitStreamerMSB32]\00", align 1
@_ZZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32EiiE9scalevals = linkonce_odr hidden local_unnamed_addr constant %"struct.std::array.62" { [3 x i32] [i32 0, i32 -2, i32 2] }, comdat, align 4
@.str.10 = private unnamed_addr constant [68 x i8] c"%s, line 178: At start of image and motion isn't 7. File corrupted?\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii = private unnamed_addr constant [110 x i8] c"std::array<uint16_t, 16> rawspeed::SamsungV2Decompressor::prepareBaselineValues(BitStreamerMSB32 &, int, int)\00", align 1
@.str.11 = private unnamed_addr constant [77 x i8] c"%s, line 198: Got a previous line lookup on first two lines. File corrupted?\00", align 1
@_ZZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32EiiE12motionOffset = linkonce_odr hidden local_unnamed_addr constant %"struct.std::array.64" { [7 x i32] [i32 -4, i32 -2, i32 -2, i32 0, i32 0, i32 2, i32 4] }, comdat, align 4
@.str.12 = private unnamed_addr constant [56 x i8] c"%s, line 220: Bad motion %d at the beginning of the row\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"%s, line 222: Bad motion %d at the end of the row\00", align 1
@.str.14 = private unnamed_addr constant [57 x i8] c"%s, line 262: Difference bits underflow. File corrupted?\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei = private unnamed_addr constant [100 x i8] c"std::array<uint32_t, 4> rawspeed::SamsungV2Decompressor::decodeDiffLengths(BitStreamerMSB32 &, int)\00", align 1
@.str.15 = private unnamed_addr constant [61 x i8] c"%s, line 276: Too many difference bits (%u). File corrupted?\00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"%s, line 127: Buffer overflow read in BitStreamer\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv = private unnamed_addr constant [188 x i8] c"std::array<std::byte, BitStreamerTraits<Tag>::MaxProcessBytes> rawspeed::BitStreamerForwardSequentialReplenisher<rawspeed::BitStreamerMSB32>::getInput() [Tag = rawspeed::BitStreamerMSB32]\00", align 1
@_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf = linkonce_odr hidden thread_local global %"struct.std::array.54" zeroinitializer, comdat, align 1
@_ZTIN8rawspeed19RawDecoderExceptionE = external constant ptr
@_ZTVN8rawspeed19RawDecoderExceptionE = external constant { [6 x ptr] }, align 8

@_ZN8rawspeed21SamsungV2DecompressorC1ERKNS_8RawImageENS_10ByteStreamEj = hidden unnamed_addr alias void (ptr, ptr, ptr, i32), ptr @_ZN8rawspeed21SamsungV2DecompressorC2ERKNS_8RawImageENS_10ByteStreamEj

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed21SamsungV2DecompressorC2ERKNS_8RawImageENS_10ByteStreamEj(ptr noundef nonnull align 8 dereferenceable(88) initializes((0, 16), (32, 46), (48, 52)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef readonly byval(%"class.rawspeed::ByteStream") align 8 captures(none) %2, i32 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !11     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN8rawspeed8RawImageD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.d, align 4, !tbaa !19
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !19
  br label %_ZN8rawspeed8RawImageD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.h = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN8rawspeed8RawImageD2Ev.exit

_ZN8rawspeed8RawImageD2Ev.exit:                   ; preds = %bb.d, %bb.c, %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.i, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i32 0, ptr %i.k, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i16 -8531, ptr %i.l, align 4, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i32 0, ptr %i.m, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  %i.o = load i32, ptr %i.n, align 8, !tbaa !29
  %.not = icmp eq i32 %i.o, 1
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN8rawspeed8RawImageD2Ev.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 553
  %i.q = load i8, ptr %i.p, align 1, !tbaa !99
  %.not25 = icmp eq i8 %i.q, 0
  br i1 %.not25, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 596
  %i.s = load i32, ptr %i.r, align 4, !tbaa !100
  %.not26 = icmp eq i32 %i.s, 2
  br i1 %.not26, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %_ZN8rawspeed8RawImageD2Ev.exit
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2DecompressorC2ERKNS_8RawImageENS_10ByteStreamEj) #11
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.n, %bb.k, %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.j:                                             ; preds = %bb.f
  switch i32 %3, label %bb.k [
    i32 12, label %bb.m
    i32 14, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2DecompressorC2ERKNS_8RawImageENS_10ByteStreamEj, i32 noundef %3) #11
          to label %bb.l unwind label %bb.i

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j, %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !27   ; 3 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = add nuw nsw i64 %i.w, 16
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !23   ; 4 uses
  %i.aa = zext i32 %i.z to i64
  %.not.i = icmp samesign ugt i64 %i.x, %i.aa
  br i1 %.not.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #11
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ab = icmp sgt i32 %i.z, -1
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i32 %i.v, 16
  %i.ad = icmp samesign ule i32 %i.ac, %i.z
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = sub i32 %i.z, %i.v                      ; 3 uses
  %i.af = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.w ; 4 uses
  %i.ah = icmp sgt i32 %i.ae, -1
  tail call void @llvm.assume(i1 %i.ah)
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i = load i32, ptr %i.ag, align 1
  %i.ai = lshr i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i, 8
  %i.aj = and i32 %i.ai, 15
  %i.ak = add nuw nsw i32 %i.aj, 1                ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !101
  %.not27 = icmp eq i32 %i.ak, %3
  br i1 %.not27, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2DecompressorC2ERKNS_8RawImageENS_10ByteStreamEj, i32 noundef %i.ak, i32 noundef %3) #11
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.s:                                             ; preds = %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i110 = load i32, ptr %i.an, align 1 ; 4 uses
  %i.ao = lshr i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i110, 16 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !109
  %i.aq = and i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i110, 65535 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !110
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i140 = load i32, ptr %i.as, align 1
  %i.at = lshr i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i140, 8
  %i.au = and i32 %i.at, 15                       ; 3 uses
  %i.av = icmp samesign ugt i32 %i.au, 7
  br i1 %i.av, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2DecompressorC2ERKNS_8RawImageENS_10ByteStreamEj, i32 noundef %i.au) #11
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.ac, %bb.y, %bb.t
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.w:                                             ; preds = %bb.s
  %i.ax = trunc nuw nsw i32 %i.au to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.ax, ptr %i.ay, align 4, !tbaa !111
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i200 = load i32, ptr %i.az, align 1
  %i.ba = trunc i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i200 to i16
  %i.bb = and i16 %i.ba, 16383
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i16 %i.bb, ptr %i.bc, align 2, !tbaa !112
  %i.bd = icmp eq i32 %i.ao, 0
  br i1 %i.bd, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.be = icmp eq i32 %i.aq, 0
  %i.bf = and i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i110, 983040
  %.not28 = icmp ne i32 %i.bf, 0
  %or.cond.not344 = or i1 %i.be, %.not28
  %i.bg = icmp ugt i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i110, 425787391
  %or.cond36 = or i1 %i.bg, %or.cond.not344
  %i.bh = icmp samesign ugt i32 %i.aq, 4336
  %or.cond37 = or i1 %i.bh, %or.cond36
  br i1 %or.cond37, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x, %bb.w
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2DecompressorC2ERKNS_8RawImageENS_10ByteStreamEj, i32 noundef %i.ao, i32 noundef %i.aq) #11
          to label %bb.z unwind label %bb.v

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.x
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !113
  %.not29 = icmp eq i32 %i.ao, %i.bj
  br i1 %.not29, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !114
  %.not30 = icmp eq i32 %i.aq, %i.bl
  br i1 %.not30, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2DecompressorC2ERKNS_8RawImageENS_10ByteStreamEj) #11
          to label %bb.ad unwind label %bb.v

bb.ad:                                            ; preds = %bb.ac
  unreachable

bb.ae:                                            ; preds = %bb.ab
  %i.bm = add nsw i32 %i.ae, -16
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.bp = icmp samesign ugt i32 %i.ae, 15
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.br = load i16, ptr %i.bq, align 4, !tbaa !24, !noalias !115
  %.sroa.4.8.insert.ext.i = zext i16 %i.br to i64
  %.sroa.4.8.insert.shift.i = shl nuw nsw i64 %.sroa.4.8.insert.ext.i, 32
  %.sroa.2.8.insert.insert.i = or disjoint i64 %.sroa.4.8.insert.shift.i, %i.bn
  store ptr %i.bo, ptr %i.j, align 8
  store i64 %.sroa.2.8.insert.insert.i, ptr %i.k, align 8
  store i32 0, ptr %i.m, align 8
  ret void

bb.af:                                            ; preds = %bb.r, %bb.v, %bb.i
  %.pn34 = phi { ptr, i32 } [ %i.t, %bb.i ], [ %i.am, %bb.r ], [ %i.aw, %bb.v ]
  tail call void @_ZN8rawspeed27AbstractSamsungDecompressorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #15
  resume { ptr, i32 } %.pn34
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #15 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed19RawDecoderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  resume { ptr, i32 } %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed27AbstractSamsungDecompressorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN8rawspeed8RawImageD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !118
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !120
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #15, !call_target !123, !inline_history !130
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #15, !call_target !131, !inline_history !130
  br label %_ZN8rawspeed8RawImageD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !19
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN8rawspeed8RawImageD2Ev.exit, !prof !132

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #15
  br label %_ZN8rawspeed8RawImageD2Ev.exit

_ZN8rawspeed8RawImageD2Ev.exit:                   ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed21SamsungV2Decompressor13decompressRowEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i156 = alloca i32, align 4         ; 5 uses
  %.sroa.0.i.i.i142 = alloca i32, align 4         ; 20 uses
  %.sroa.0.i.i.i128 = alloca i32, align 4         ; 20 uses
  %.sroa.0.i.i.i114 = alloca i32, align 4         ; 5 uses
  %.sroa.0.i.i.i91 = alloca i32, align 4          ; 5 uses
  %.sroa.0.i.i.i77 = alloca i32, align 4          ; 5 uses
  %.sroa.0.i.i.i63 = alloca i32, align 4          ; 5 uses
  %.sroa.0.i.i.i49 = alloca i32, align 4          ; 5 uses
  %.sroa.0.i.i.i = alloca i32, align 4            ; 5 uses
  %2 = alloca %"struct.std::array.65", align 8    ; 5 uses
  %3 = alloca %"struct.std::array.66", align 2    ; 19 uses
  %.sroa.0 = alloca <16 x i16>, align 32          ; 21 uses
  %4 = alloca %"struct.std::array.60", align 2    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !23   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !27   ; 5 uses
  %i.f = icmp uge i32 %i.c, %i.e
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp sgt i32 %i.c, -1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = and i32 %i.e, 15                         ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  %.sroa.0.28.gep.sroa_idx706 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 28
  %.sroa.0.30.gep688.sroa_idx708 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 30
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw nsw i32 16, %i.h                 ; 2 uses
  %i.j = zext i32 %i.e to i64
  %i.k = zext nneg i32 %i.i to i64
  %i.l = add nuw nsw i64 %i.k, %i.j
  %i.m = zext nneg i32 %i.c to i64
  %.not.i.i = icmp samesign ugt i64 %i.l, %i.m
  br i1 %.not.i.i, label %bb.c, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #11
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit:        ; preds = %bb.b
  %i.n = add nuw nsw i32 %i.i, %i.e               ; 3 uses
  %i.o = icmp samesign ule i32 %i.n, %i.c
  tail call void @llvm.assume(i1 %i.o)
  store i32 %i.n, ptr %i.d, align 8, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit, %bb.a
  %i.p = phi i32 [ %i.n, %_ZN8rawspeed10ByteStream9skipBytesEj.exit ], [ %i.e, %bb.a ] ; 2 uses
  %i.q = sub i32 %i.c, %i.p                       ; 48 uses
  %i.r = zext i32 %i.p to i64
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r ; 30 uses
  %i.u = icmp sgt i32 %i.q, -1
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp samesign ult i32 %i.q, 4
  br i1 %i.v, label %bb.e, label %.lr.ph

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_16BitStreamerMSB32EEC2ENS_10Array1DRefIKSt4byteEE) #11
  unreachable

.lr.ph:                                           ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store i32 7, ptr %i.w, align 8, !tbaa !133
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 4 uses
  store i32 0, ptr %i.x, align 4, !tbaa !134
  %i.y = icmp ult i32 %1, 2                       ; 2 uses
  %i.z = select i1 %i.y, i32 7, i32 4             ; 3 uses
  %.022.ptr = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 17 uses
  %i.aa = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %i.ab = shufflevector <4 x i32> %i.aa, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.ab, ptr %.022.ptr, align 8, !tbaa !19
  %.022.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.z, ptr %i.ac, align 4, !tbaa !19
  store i32 %i.z, ptr %.022.ptr.2, align 8, !tbaa !19
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !109 ; 3 uses
  %i.af = icmp sgt i32 %i.ae, 15
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = and i32 %i.ae, 15
  %i.ah = icmp eq i32 %i.ag, 0
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aj = add nuw nsw i32 %i.q, 8                 ; 15 uses
  %i.ak = icmp slt i32 %1, 2
  %i.al = add nsw i32 %1, -2                      ; 2 uses
  %i.am = add nsw i32 %1, -1                      ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 30
  %.not32.i = trunc i32 %1 to i1                  ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 26
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 26
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 30
  %spec.select = select i1 %.not32.i, i64 0, i64 2 ; 4 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 2 uses
  %spec.select652 = select i1 %.not32.i, i64 0, i64 2 ; 4 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select652
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select652
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select652
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select652 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4 ; 2 uses
  %.not32.i.mask = and i32 %1, 1
  %spec.select653 = zext nneg i32 %.not32.i.mask to i64 ; 4 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select653
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select653
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select653
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select653 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4 ; 2 uses
  %.not32.i.mask655 = and i32 %1, 1
  %spec.select654 = zext nneg i32 %.not32.i.mask655 to i64 ; 4 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select654
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select654
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select654
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select654 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 2 uses
  %.sroa.0.20..sroa_idx699 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 20
  %.sroa.0.24..sroa_idx703 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  %.sroa.0.28..sroa_idx707 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 28
  %.sroa.0.2..sroa_idx694 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  %.sroa.0.18..sroa_idx697 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 18
  %.sroa.0.22..sroa_idx701 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 22
  %.sroa.0.26..sroa_idx705 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 26
  %.sroa.0.2..sroa_idx695 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  %.sroa.0.22..sroa_idx700 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 22
  %.sroa.0.26..sroa_idx704 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 26
  %.sroa.0.30..sroa_idx709 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 30
  %.sroa.0.4..sroa_idx696 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  %.sroa.0.20..sroa_idx698 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 20
  %.sroa.0.24..sroa_idx702 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  br label %bb.g

._crit_edge:                                      ; preds = %.preheader
  %.pre = load i32, ptr %i.d, align 8, !tbaa !27  ; 2 uses
  %.pre522 = load i32, ptr %i.b, align 8, !tbaa !23 ; 3 uses
  %.pre530 = zext i32 %.pre to i64
  %i.by = icmp samesign ult i32 %.sroa.30.10, 65
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = icmp sgt i32 %.sroa.80211.10, -1
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = and i32 %.sroa.80211.10, 3
  %i.cb = icmp eq i32 %i.ca, 0
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = lshr i32 %.sroa.30.10, 3
  %i.cd = sub nsw i32 %.sroa.80211.10, %i.cc      ; 3 uses
  %i.ce = zext i32 %i.cd to i64
  %i.cf = add nuw nsw i64 %.pre530, %i.ce
  %i.cg = zext i32 %.pre522 to i64
  %.not.i.i45 = icmp samesign ugt i64 %i.cf, %i.cg
  br i1 %.not.i.i45, label %bb.f, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit46

bb.f:                                             ; preds = %._crit_edge
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #11
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit46:      ; preds = %._crit_edge
  %i.ch = icmp sgt i32 %.pre522, -1
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = add nuw nsw i32 %.pre, %i.cd            ; 2 uses
  %i.cj = icmp samesign ule i32 %i.ci, %.pre522
  tail call void @llvm.assume(i1 %i.cj)
  %i.ck = icmp sgt i32 %i.cd, -1
  tail call void @llvm.assume(i1 %i.ck)
  store i32 %i.ci, ptr %i.d, align 8, !tbaa !27
  ret void

bb.g:                                             ; preds = %.lr.ph, %.preheader
  %indvars.iv458 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next459, %.preheader ] ; 8 uses
  %i.cl = phi i32 [ %i.ae, %.lr.ph ], [ %i.ya, %.preheader ] ; 3 uses
  %.sroa.0174.0409 = phi i64 [ 0, %.lr.ph ], [ %.sroa.0174.10, %.preheader ] ; 3 uses
  %.sroa.30.0408 = phi i32 [ 0, %.lr.ph ], [ %.sroa.30.10, %.preheader ] ; 6 uses
  %.sroa.80211.0407 = phi i32 [ 0, %.lr.ph ], [ %.sroa.80211.10, %.preheader ] ; 8 uses
  %i.cm = shl nuw i64 %indvars.iv458, 1
  %i.cn = add i64 %i.cm, 8589934560
  %i.co = and i64 %i.cn, 8589934560
  %i.cp = load ptr, ptr %0, align 8, !tbaa !11    ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 568
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !135, !noalias !136 ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 592
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !29, !noalias !136
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 608
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !139, !noalias !136
  %i.cw = mul nsw i32 %i.cv, %i.ct                ; 6 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 612
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !140, !noalias !136 ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !141, !noalias !136
  %i.db = ashr i32 %i.da, 1                       ; 7 uses
  %i.dc = icmp ne i32 %i.db, 0
  tail call void @llvm.assume(i1 %i.dc)
  %i.dd = icmp sge i32 %i.db, %i.cw
  tail call void @llvm.assume(i1 %i.dd)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.de = load i8, ptr %i.ai, align 4, !tbaa !111, !noalias !142 ; 3 uses
  %i.df = and i8 %i.de, 4
  %.not323 = icmp eq i8 %i.df, 0
  %i.dg = and i64 %indvars.iv458, 48
  %i.dh = icmp eq i64 %i.dg, 0
  %or.cond66.i = and i1 %i.dh, %.not323
  br i1 %or.cond66.i, label %bb.h, label %bb.v

bb.h:                                             ; preds = %bb.g
  %i.di = icmp samesign ult i32 %.sroa.30.0408, 65
  tail call void @llvm.assume(i1 %i.di), !noalias !142
  %i.dj = icmp sgt i32 %.sroa.80211.0407, -1
  tail call void @llvm.assume(i1 %i.dj), !noalias !142
  %i.dk = and i32 %.sroa.80211.0407, 3
  %i.dl = icmp eq i32 %i.dk, 0
  tail call void @llvm.assume(i1 %i.dl), !noalias !142
  %.not.i.i48 = icmp samesign ult i32 %.sroa.30.0408, 2
  br i1 %.not.i.i48, label %bb.i, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.dm = add nuw nsw i32 %.sroa.80211.0407, 4    ; 2 uses
  %.not.i.i.i = icmp samesign ugt i32 %i.dm, %i.q
  br i1 %.not.i.i.i, label %bb.k, label %bb.j, !prof !132

bb.j:                                             ; preds = %bb.i
  %i.dn = zext nneg i32 %.sroa.80211.0407 to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.dn
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.dp = icmp samesign ugt i32 %.sroa.80211.0407, %i.aj
  br i1 %i.dp, label %bb.l, label %bb.m, !prof !132

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !142
  unreachable

bb.m:                                             ; preds = %bb.k
  store i32 0, ptr %.sroa.0.i.i.i, align 4, !noalias !142
  %.sroa.speculated27.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %.sroa.80211.0407) ; 3 uses
  %i.dq = add nuw nsw i32 %.sroa.speculated27.i.i.i.i, 4
  %.sroa.speculated.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.dq)
  %i.dr = sub nsw i32 %.sroa.speculated.i.i.i.i, %.sroa.speculated27.i.i.i.i ; 2 uses
  %i.ds = icmp samesign ult i32 %i.dr, 5
  tail call void @llvm.assume(i1 %i.ds), !noalias !142
  %i.dt = zext nneg i32 %.sroa.speculated27.i.i.i.i to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.dt
  %i.dv = zext nneg i32 %i.dr to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i, ptr align 1 %i.du, i64 %i.dv, i1 false), !noalias !142
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i: ; preds = %bb.m, %bb.j
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i = phi ptr [ %.sroa.0.i.i.i, %bb.m ], [ %i.do, %bb.j ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i, align 1, !noalias !142
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.dw = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i to i64
  %i.dx = or disjoint i32 %.sroa.30.0408, 32
  %i.dy = sub nuw nsw i32 32, %.sroa.30.0408
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = shl nuw i64 %i.dw, %i.dz
  %i.eb = or i64 %i.ea, %.sroa.0174.0409
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit: ; preds = %bb.h, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i
  %.sroa.80211.11 = phi i32 [ %i.dm, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i ], [ %.sroa.80211.0407, %bb.h ] ; 7 uses
  %i.ec = phi i64 [ %i.eb, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i ], [ %.sroa.0174.0409, %bb.h ] ; 2 uses
  %i.ed = phi i32 [ %i.dx, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i ], [ %.sroa.30.0408, %bb.h ] ; 4 uses
  %i.ee = lshr i64 %i.ec, 62                      ; 2 uses
  %i.ef = add nsw i32 %i.ed, -2                   ; 2 uses
  %i.eg = shl i64 %i.ec, 2                        ; 3 uses
  %.not324 = icmp eq i64 %i.ee, 3
  br i1 %.not324, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit
  %i.eh = load i32, ptr %i.x, align 4, !tbaa !134, !noalias !142
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr @_ZZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32EiiE9scalevals, i64 %i.ee
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !19, !noalias !142
  %i.ek = add nsw i32 %i.ej, %i.eh
  br label %bb.u

bb.o:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit
  %i.el = and i32 %.sroa.80211.11, 3
  %i.em = icmp eq i32 %i.el, 0
  tail call void @llvm.assume(i1 %i.em), !noalias !142
  %.not.i.i50 = icmp samesign ult i32 %i.ed, 14
  br i1 %.not.i.i50, label %bb.p, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit62

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i49)
  %i.en = add nuw nsw i32 %.sroa.80211.11, 4      ; 2 uses
  %.not.i.i.i53 = icmp samesign ugt i32 %i.en, %i.q
  br i1 %.not.i.i.i53, label %bb.r, label %bb.q, !prof !132

bb.q:                                             ; preds = %bb.p
  %i.eo = zext nneg i32 %.sroa.80211.11 to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.eo
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i55

bb.r:                                             ; preds = %bb.p
  %i.eq = icmp samesign ugt i32 %.sroa.80211.11, %i.aj
  br i1 %i.eq, label %bb.s, label %bb.t, !prof !132

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !142
  unreachable

bb.t:                                             ; preds = %bb.r
  store i32 0, ptr %.sroa.0.i.i.i49, align 4, !noalias !142
  %.sroa.speculated27.i.i.i.i60 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %.sroa.80211.11) ; 3 uses
  %i.er = add nuw nsw i32 %.sroa.speculated27.i.i.i.i60, 4
  %.sroa.speculated.i.i.i.i61 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.er)
  %i.es = sub nsw i32 %.sroa.speculated.i.i.i.i61, %.sroa.speculated27.i.i.i.i60 ; 2 uses
  %i.et = icmp samesign ult i32 %i.es, 5
  tail call void @llvm.assume(i1 %i.et), !noalias !142
  %i.eu = zext nneg i32 %.sroa.speculated27.i.i.i.i60 to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.eu
  %i.ew = zext nneg i32 %i.es to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i49, ptr align 1 %i.ev, i64 %i.ew, i1 false), !noalias !142
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i55

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i55: ; preds = %bb.t, %bb.q
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i56 = phi ptr [ %.sroa.0.i.i.i49, %bb.t ], [ %i.ep, %bb.q ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i57 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i56, align 1, !noalias !142
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i49)
  %i.ex = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i57 to i64
  %i.ey = add nuw nsw i32 %i.ed, 30
  %i.ez = sub nuw nsw i32 34, %i.ed
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = shl nuw i64 %i.ex, %i.fa
  %i.fc = or i64 %i.fb, %i.eg
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit62

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit62: ; preds = %bb.o, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i55
  %.sroa.80211.12 = phi i32 [ %i.en, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i55 ], [ %.sroa.80211.11, %bb.o ]
  %i.fd = phi i64 [ %i.fc, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i55 ], [ %i.eg, %bb.o ] ; 2 uses
  %i.fe = phi i32 [ %i.ey, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i55 ], [ %i.ef, %bb.o ]
  %i.ff = lshr i64 %i.fd, 52
  %i.fg = trunc nuw nsw i64 %i.ff to i32
  %i.fh = add nsw i32 %i.fe, -12
  %i.fi = shl i64 %i.fd, 12
  br label %bb.u

bb.u:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit62, %bb.n
  %.sroa.80211.3 = phi i32 [ %.sroa.80211.11, %bb.n ], [ %.sroa.80211.12, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit62 ]
  %.sroa.30.3 = phi i32 [ %i.ef, %bb.n ], [ %i.fh, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit62 ]
  %.sroa.0174.3 = phi i64 [ %i.eg, %bb.n ], [ %i.fi, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit62 ]
  %i.fj = phi i32 [ %i.ek, %bb.n ], [ %i.fg, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit62 ]
  store i32 %i.fj, ptr %i.x, align 4, !tbaa !134, !noalias !142
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.g
  %.sroa.80211.1 = phi i32 [ %.sroa.80211.3, %bb.u ], [ %.sroa.80211.0407, %bb.g ] ; 17 uses
  %.sroa.30.1 = phi i32 [ %.sroa.30.3, %bb.u ], [ %.sroa.30.0408, %bb.g ] ; 7 uses
  %.sroa.0174.1 = phi i64 [ %.sroa.0174.3, %bb.u ], [ %.sroa.0174.0409, %bb.g ] ; 5 uses
  %i.fk = and i8 %i.de, 2
  %.not325 = icmp eq i8 %i.fk, 0
  %i.fl = icmp samesign ult i32 %.sroa.30.1, 65
  tail call void @llvm.assume(i1 %i.fl), !noalias !142
  %i.fm = icmp sgt i32 %.sroa.80211.1, -1
  tail call void @llvm.assume(i1 %i.fm), !noalias !142
  %i.fn = and i32 %.sroa.80211.1, 3
  %i.fo = icmp eq i32 %i.fn, 0
  tail call void @llvm.assume(i1 %i.fo), !noalias !142
  %.not.i.i78 = icmp eq i32 %.sroa.30.1, 0        ; 2 uses
  br i1 %.not325, label %bb.ac, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %.not.i.i78, label %bb.x, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit76

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i63)
  %i.fp = add nuw nsw i32 %.sroa.80211.1, 4       ; 2 uses
  %.not.i.i.i67 = icmp samesign ugt i32 %i.fp, %i.q
  br i1 %.not.i.i.i67, label %bb.z, label %bb.y, !prof !132

bb.y:                                             ; preds = %bb.x
  %i.fq = zext nneg i32 %.sroa.80211.1 to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.fq
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i69

bb.z:                                             ; preds = %bb.x
  %i.fs = icmp samesign ugt i32 %.sroa.80211.1, %i.aj
  br i1 %i.fs, label %bb.aa, label %bb.ab, !prof !132

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !142
  unreachable

bb.ab:                                            ; preds = %bb.z
  store i32 0, ptr %.sroa.0.i.i.i63, align 4, !noalias !142
  %.sroa.speculated27.i.i.i.i74 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %.sroa.80211.1) ; 3 uses
  %i.ft = add nuw nsw i32 %.sroa.speculated27.i.i.i.i74, 4
  %.sroa.speculated.i.i.i.i75 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.ft)
  %i.fu = sub nsw i32 %.sroa.speculated.i.i.i.i75, %.sroa.speculated27.i.i.i.i74 ; 2 uses
  %i.fv = icmp samesign ult i32 %i.fu, 5
  tail call void @llvm.assume(i1 %i.fv), !noalias !142
  %i.fw = zext nneg i32 %.sroa.speculated27.i.i.i.i74 to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.fw
  %i.fy = zext nneg i32 %i.fu to i64
end_hunk_0
begin_hunk_1_@_ZN8rawspeed21SamsungV2Decompressor13decompressRowEi:bb.a
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i85 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i84, align 1, !noalias !142
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i77)
  %i.gt = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i85 to i64
  %i.gu = shl nuw i64 %i.gt, 32
  %i.gv = or i64 %i.gu, %.sroa.0174.1             ; 2 uses
  %i.gw = shl i64 %i.gv, 1                        ; 2 uses
  %.not.i576 = icmp sgt i64 %i.gv, -1
  br i1 %.not.i576, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit104, label %bb.ao

bb.ai:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90
  %.not.i.i92 = icmp samesign ult i32 %.sroa.30.1, 4
  br i1 %.not.i.i92, label %bb.aj, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit104

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i91)
  %i.gx = add nuw nsw i32 %.sroa.80211.1, 4       ; 2 uses
  %.not.i.i.i95 = icmp samesign ugt i32 %i.gx, %i.q
  br i1 %.not.i.i.i95, label %bb.al, label %bb.ak, !prof !132

bb.ak:                                            ; preds = %bb.aj
  %i.gy = zext nneg i32 %.sroa.80211.1 to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.gy
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i97

bb.al:                                            ; preds = %bb.aj
  %i.ha = icmp samesign ugt i32 %.sroa.80211.1, %i.aj
  br i1 %i.ha, label %bb.am, label %bb.an, !prof !132

bb.am:                                            ; preds = %bb.al
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !142
  unreachable

bb.an:                                            ; preds = %bb.al
  store i32 0, ptr %.sroa.0.i.i.i91, align 4, !noalias !142
  %.sroa.speculated27.i.i.i.i102 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %.sroa.80211.1) ; 3 uses
  %i.hb = add nuw nsw i32 %.sroa.speculated27.i.i.i.i102, 4
  %.sroa.speculated.i.i.i.i103 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.hb)
  %i.hc = sub nsw i32 %.sroa.speculated.i.i.i.i103, %.sroa.speculated27.i.i.i.i102 ; 2 uses
  %i.hd = icmp samesign ult i32 %i.hc, 5
  tail call void @llvm.assume(i1 %i.hd), !noalias !142
  %i.he = zext nneg i32 %.sroa.speculated27.i.i.i.i102 to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.he
  %i.hg = zext nneg i32 %i.hc to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i91, ptr align 1 %i.hf, i64 %i.hg, i1 false), !noalias !142
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i97

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i97: ; preds = %bb.an, %bb.ak
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i98 = phi ptr [ %.sroa.0.i.i.i91, %bb.an ], [ %i.gz, %bb.ak ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i99 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i98, align 1, !noalias !142
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i91)
  %i.hh = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i99 to i64
  %i.hi = add nuw nsw i32 %.sroa.30.1, 31
  %i.hj = sub nuw nsw i32 33, %.sroa.30.1
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = shl nuw i64 %i.hh, %i.hk
  %i.hm = or i64 %i.hl, %i.gs
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit104

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit104: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread, %bb.ai, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i97
  %.sroa.80211.15 = phi i32 [ %i.gx, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i97 ], [ %.sroa.80211.1, %bb.ai ], [ %i.gh, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread ]
  %i.hn = phi i64 [ %i.hm, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i97 ], [ %i.gs, %bb.ai ], [ %i.gw, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread ] ; 2 uses
  %i.ho = phi i32 [ %i.hi, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i97 ], [ %i.gr, %bb.ai ], [ 31, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread ]
  %i.hp = lshr i64 %i.hn, 61
  %i.hq = trunc nuw nsw i64 %i.hp to i32
  %i.hr = add nsw i32 %i.ho, -3
  %i.hs = shl i64 %i.hn, 3
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit76, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit104
  %.sink = phi i32 [ %i.hq, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit104 ], [ %i.gg, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit76 ]
  %.sroa.80211.2.ph = phi i32 [ %.sroa.80211.15, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit104 ], [ %.sroa.80211.13, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit76 ]
  %.sroa.30.2.ph = phi i32 [ %i.hr, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit104 ], [ %i.ge, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit76 ]
  %.sroa.0174.2.ph = phi i64 [ %i.hs, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit104 ], [ %i.gf, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit76 ]
  store i32 %.sink, ptr %i.w, align 8, !tbaa !133, !noalias !142
  br label %bb.ao

bb.ao:                                            ; preds = %.sink.split, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90
  %.sroa.80211.2 = phi i32 [ %.sroa.80211.1, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90 ], [ %i.gh, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread ], [ %.sroa.80211.2.ph, %.sink.split ] ; 7 uses
  %.sroa.30.2 = phi i32 [ %i.gr, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90 ], [ 31, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread ], [ %.sroa.30.2.ph, %.sink.split ] ; 4 uses
  %.sroa.0174.2 = phi i64 [ %i.gs, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90 ], [ %i.gw, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit90.thread ], [ %.sroa.0174.2.ph, %.sink.split ] ; 3 uses
  %i.ht = load i32, ptr %i.w, align 8, !tbaa !133, !noalias !142 ; 8 uses
  %.not58.i = icmp eq i32 %i.ht, 7                ; 2 uses
  br i1 %i.y, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  br i1 %.not58.i, label %.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii) #11, !noalias !142
  unreachable

bb.ar:                                            ; preds = %bb.ao
  br i1 %.not58.i, label %.thread, label %bb.at

.thread:                                          ; preds = %bb.ap, %bb.ar
  %i.hu = icmp eq i64 %indvars.iv458, 0
  br i1 %i.hu, label %bb.as, label %.preheader328.preheader

bb.as:                                            ; preds = %.thread
  %i.hv = load i16, ptr %i.an, align 2, !tbaa !145
  %i.hw = insertelement <16 x i16> poison, i16 %i.hv, i64 0
  %i.hx = shufflevector <16 x i16> %i.hw, <16 x i16> poison, <16 x i32> zeroinitializer
  br label %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit.sink.split

.preheader328.preheader:                          ; preds = %.thread
  %i.hy = icmp samesign ult i32 %1, %i.cy
  tail call void @llvm.assume(i1 %i.hy), !noalias !142
  %i.hz = mul nuw nsw i32 %i.db, %1
  %i.ia = zext nneg i32 %i.hz to i64
  %scevgep = getelementptr i8, ptr %i.cr, i64 28
  %i.ib = shl nuw nsw i64 %i.ia, 1
  %i.ic = getelementptr i8, ptr %scevgep, i64 %i.co
  %scevgep432 = getelementptr i8, ptr %i.ic, i64 %i.ib
  %i.id = load <2 x i16>, ptr %scevgep432, align 2, !tbaa !145, !noalias !142
  %i.ie = shufflevector <2 x i16> %i.id, <2 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  br label %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit.sink.split

bb.at:                                            ; preds = %bb.ar
  br i1 %i.ak, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.11, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii) #11, !noalias !142
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.if = sext i32 %i.ht to i64
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr @_ZZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32EiiE12motionOffset, i64 %i.if
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !19, !noalias !142 ; 2 uses
  %i.ii = icmp ne i32 %i.ht, 2
  %i.ij = icmp ne i32 %i.ht, 4
  %.not62.i = and i1 %i.ii, %i.ij
  %.not62.i.fr = freeze i1 %.not62.i
  br i1 %.not62.i.fr, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.av, %bb.ba
  %indvars.iv428 = phi i64 [ %indvars.iv.next429, %bb.ba ], [ 0, %bb.av ] ; 5 uses
  %i.ik = or disjoint i64 %indvars.iv428, %indvars.iv458
  %i.il = trunc i64 %indvars.iv428 to i32
  %i.im = add i32 %1, %i.il
  %i.in = and i32 %i.im, 1
  %.not59.i.us = icmp eq i32 %i.in, 0             ; 2 uses
  %i.io = and i64 %indvars.iv428, 1
  %.not60.i.us = icmp eq i64 %i.io, 0
  %i.ip = select i1 %.not60.i.us, i32 1, i32 -1
  %.048.i.us = select i1 %.not59.i.us, i32 %i.am, i32 %i.al ; 4 uses
  %i.iq = select i1 %.not59.i.us, i32 %i.ip, i32 0
  %i.ir = trunc i64 %i.ik to i32
  %i.is = add i32 %i.ih, %i.ir
  %.0.i25.us = add nsw i32 %i.is, %i.iq           ; 6 uses
  %i.it = icmp slt i32 %.0.i25.us, 0
  br i1 %i.it, label %.split384.us, label %bb.aw

bb.aw:                                            ; preds = %.split.us
  %.not61.i.us = icmp slt i32 %.0.i25.us, %i.cl
  br i1 %.not61.i.us, label %bb.ax, label %.split386.us

bb.ax:                                            ; preds = %bb.aw
  switch i32 %i.ht, label %bb.az [
    i32 4, label %bb.ay
    i32 2, label %bb.ay
  ]

bb.ay:                                            ; preds = %bb.ax, %bb.ax
  %i.iu = add nuw nsw i32 %.0.i25.us, 2           ; 2 uses
  %i.iv = icmp samesign ult i32 %.048.i.us, %i.cy
  tail call void @llvm.assume(i1 %i.iv)
  %i.iw = mul nuw nsw i32 %.048.i.us, %i.db
  %i.ix = zext nneg i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %i.ix ; 2 uses
  %i.iz = zext nneg i32 %.0.i25.us to i64
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %i.iy, i64 %i.iz
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !145
  %i.jc = zext i16 %i.jb to i32
  %i.jd = icmp samesign ult i32 %i.iu, %i.cw
  tail call void @llvm.assume(i1 %i.jd)
  %i.je = zext nneg i32 %i.iu to i64
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %i.iy, i64 %i.je
  %i.jg = load i16, ptr %i.jf, align 2, !tbaa !145
  %i.jh = zext i16 %i.jg to i32
  %i.ji = add nuw nsw i32 %i.jc, 1
  %i.jj = add nuw nsw i32 %i.ji, %i.jh
  %i.jk = lshr i32 %i.jj, 1
  %i.jl = trunc nuw i32 %i.jk to i16
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.jm = icmp samesign ult i32 %.0.i25.us, %i.cw
  tail call void @llvm.assume(i1 %i.jm)
  %i.jn = icmp samesign ult i32 %.048.i.us, %i.cy
  tail call void @llvm.assume(i1 %i.jn)
  %i.jo = mul nuw nsw i32 %.048.i.us, %i.db
  %i.jp = zext nneg i32 %i.jo to i64
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %i.jp
  %i.jr = zext nneg i32 %.0.i25.us to i64
  %i.js = getelementptr inbounds nuw [2 x i8], ptr %i.jq, i64 %i.jr
  %i.jt = load i16, ptr %i.js, align 2, !tbaa !145
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.sink632 = phi i16 [ %i.jt, %bb.az ], [ %i.jl, %bb.ay ]
  %i.ju = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv428
  store i16 %.sink632, ptr %i.ju, align 2, !tbaa !145
  %indvars.iv.next429 = add nuw nsw i64 %indvars.iv428, 1 ; 2 uses
  %exitcond431.not = icmp eq i64 %indvars.iv.next429, 16
  br i1 %exitcond431.not, label %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit, label %.split.us, !llvm.loop !146

.split:                                           ; preds = %bb.av, %bb.bf
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bf ], [ 0, %bb.av ] ; 5 uses
  %i.jv = or disjoint i64 %indvars.iv, %indvars.iv458
  %i.jw = trunc i64 %indvars.iv to i32
  %i.jx = add i32 %1, %i.jw
  %i.jy = and i32 %i.jx, 1
  %.not59.i = icmp eq i32 %i.jy, 0                ; 2 uses
  %i.jz = and i64 %indvars.iv, 1
  %.not60.i = icmp eq i64 %i.jz, 0
  %i.ka = select i1 %.not60.i, i32 1, i32 -1
  %.048.i = select i1 %.not59.i, i32 %i.am, i32 %i.al ; 2 uses
  %i.kb = select i1 %.not59.i, i32 %i.ka, i32 0
  %i.kc = trunc i64 %i.jv to i32
  %i.kd = add i32 %i.ih, %i.kc
  %.0.i25 = add nsw i32 %i.kd, %i.kb              ; 5 uses
  %i.ke = icmp slt i32 %.0.i25, 0
  br i1 %i.ke, label %.split384.us, label %bb.bb

.split384.us:                                     ; preds = %.split, %.split.us
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii, i32 noundef %i.ht) #11
  unreachable

bb.bb:                                            ; preds = %.split
  %.not61.i = icmp slt i32 %.0.i25, %i.cl
  br i1 %.not61.i, label %bb.bc, label %.split386.us

bb.bc:                                            ; preds = %bb.bb
  %i.kf = add nuw nsw i32 %.0.i25, 2              ; 3 uses
  %.not63.i = icmp samesign ult i32 %i.kf, %i.cl
  br i1 %.not63.i, label %bb.bd, label %.split386.us

.split386.us:                                     ; preds = %bb.bb, %bb.bc, %bb.aw
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii, i32 noundef %i.ht) #11
  unreachable

bb.bd:                                            ; preds = %bb.bc
  %i.kg = icmp samesign ult i32 %.0.i25, %i.cw
  tail call void @llvm.assume(i1 %i.kg)
  %i.kh = icmp samesign ult i32 %.048.i, %i.cy
  tail call void @llvm.assume(i1 %i.kh)
  %i.ki = mul nuw nsw i32 %.048.i, %i.db
  %i.kj = zext nneg i32 %i.ki to i64
  %i.kk = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %i.kj ; 2 uses
  %i.kl = zext nneg i32 %.0.i25 to i64
  %i.km = getelementptr inbounds nuw [2 x i8], ptr %i.kk, i64 %i.kl
  %i.kn = load i16, ptr %i.km, align 2, !tbaa !145 ; 2 uses
  switch i32 %i.ht, label %bb.bf [
    i32 4, label %bb.be
    i32 2, label %bb.be
  ]

bb.be:                                            ; preds = %bb.bd, %bb.bd
  %i.ko = zext i16 %i.kn to i32
  %i.kp = icmp samesign ult i32 %i.kf, %i.cw
  tail call void @llvm.assume(i1 %i.kp)
  %i.kq = zext nneg i32 %i.kf to i64
  %i.kr = getelementptr inbounds nuw [2 x i8], ptr %i.kk, i64 %i.kq
  %i.ks = load i16, ptr %i.kr, align 2, !tbaa !145
  %i.kt = zext i16 %i.ks to i32
  %i.ku = add nuw nsw i32 %i.ko, 1
  %i.kv = add nuw nsw i32 %i.ku, %i.kt
  %i.kw = lshr i32 %i.kv, 1
  %i.kx = trunc nuw i32 %i.kw to i16
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be
  %.sink634 = phi i16 [ %i.kx, %bb.be ], [ %i.kn, %bb.bd ]
  %i.ky = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv
  store i16 %.sink634, ptr %i.ky, align 2, !tbaa !145
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit, label %.split, !llvm.loop !146

_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit.sink.split: ; preds = %.preheader328.preheader, %bb.as
  %i.kz = phi <16 x i16> [ %i.hx, %bb.as ], [ %i.ie, %.preheader328.preheader ]
  store <16 x i16> %i.kz, ptr %4, align 2, !tbaa !145
  br label %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit

_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit: ; preds = %bb.bf, %bb.ba, %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit.sink.split
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15, !noalias !148
  %i.la = and i8 %i.de, 1
  %.not326 = icmp eq i8 %i.la, 0
  br i1 %.not326, label %bb.bg, label %bb.bm

bb.bg:                                            ; preds = %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit
  %i.lb = icmp samesign ult i32 %.sroa.30.2, 65
  tail call void @llvm.assume(i1 %i.lb), !noalias !148
  %i.lc = and i32 %.sroa.80211.2, 3
  %i.ld = icmp eq i32 %i.lc, 0
  tail call void @llvm.assume(i1 %i.ld), !noalias !148
  %.not.i.i115 = icmp eq i32 %.sroa.30.2, 0
  br i1 %.not.i.i115, label %bb.bh, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i114)
  %i.le = add nuw nsw i32 %.sroa.80211.2, 4       ; 2 uses
  %.not.i.i.i118 = icmp samesign ugt i32 %i.le, %i.q
  br i1 %.not.i.i.i118, label %bb.bj, label %bb.bi, !prof !132

bb.bi:                                            ; preds = %bb.bh
  %i.lf = zext nneg i32 %.sroa.80211.2 to i64
  %i.lg = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.lf
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i120

bb.bj:                                            ; preds = %bb.bh
  %i.lh = icmp samesign ugt i32 %.sroa.80211.2, %i.aj
  br i1 %i.lh, label %bb.bk, label %bb.bl, !prof !132

bb.bk:                                            ; preds = %bb.bj
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !148
  unreachable

bb.bl:                                            ; preds = %bb.bj
  store i32 0, ptr %.sroa.0.i.i.i114, align 4, !noalias !148
  %.sroa.speculated27.i.i.i.i125 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %.sroa.80211.2) ; 3 uses
  %i.li = add nuw nsw i32 %.sroa.speculated27.i.i.i.i125, 4
  %.sroa.speculated.i.i.i.i126 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.li)
  %i.lj = sub nsw i32 %.sroa.speculated.i.i.i.i126, %.sroa.speculated27.i.i.i.i125 ; 2 uses
  %i.lk = icmp samesign ult i32 %i.lj, 5
  tail call void @llvm.assume(i1 %i.lk), !noalias !148
  %i.ll = zext nneg i32 %.sroa.speculated27.i.i.i.i125 to i64
  %i.lm = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ll
  %i.ln = zext nneg i32 %i.lj to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i114, ptr align 1 %i.lm, i64 %i.ln, i1 false), !noalias !148
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i120

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i120: ; preds = %bb.bl, %bb.bi
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i121 = phi ptr [ %.sroa.0.i.i.i114, %bb.bl ], [ %i.lg, %bb.bi ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i122 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i121, align 1, !noalias !148
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i114)
  %i.lo = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i122 to i64
  %i.lp = shl nuw i64 %i.lo, 32
  %i.lq = or i64 %i.lp, %.sroa.0174.2
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127: ; preds = %bb.bg, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i120
  %.sroa.80211.16 = phi i32 [ %i.le, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i120 ], [ %.sroa.80211.2, %bb.bg ] ; 2 uses
  %i.lr = phi i64 [ %i.lq, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i120 ], [ %.sroa.0174.2, %bb.bg ] ; 2 uses
  %i.ls = phi i32 [ 32, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i120 ], [ %.sroa.30.2, %bb.bg ]
  %i.lt = add nsw i32 %i.ls, -1                   ; 2 uses
  %i.lu = shl i64 %i.lr, 1                        ; 2 uses
  %.not.i40 = icmp sgt i64 %i.lr, -1
  br i1 %.not.i40, label %bb.bm, label %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit

bb.bm:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127, %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit
  %.sroa.80211.5 = phi i32 [ %.sroa.80211.2, %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit ], [ %.sroa.80211.16, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ] ; 17 uses
  %.sroa.30.5 = phi i32 [ %.sroa.30.2, %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit ], [ %i.lt, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ] ; 14 uses
  %.sroa.0174.5 = phi i64 [ %.sroa.0174.2, %_ZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32Eii.exit ], [ %i.lu, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ] ; 5 uses
  %i.lv = icmp samesign ult i32 %.sroa.30.5, 65
  tail call void @llvm.assume(i1 %i.lv), !noalias !148
  %.not.i.i129 = icmp samesign ult i32 %.sroa.30.5, 2
  br i1 %.not.i.i129, label %bb.bn, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i128)
  %i.lw = add nuw nsw i32 %.sroa.80211.5, 4       ; 2 uses
  %.not.i.i.i132 = icmp samesign ugt i32 %i.lw, %i.q
  br i1 %.not.i.i.i132, label %bb.bp, label %bb.bo, !prof !132

bb.bo:                                            ; preds = %bb.bn
  %i.lx = zext nneg i32 %.sroa.80211.5 to i64
  %i.ly = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.lx
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread

bb.bp:                                            ; preds = %bb.bn
  %i.lz = icmp samesign ugt i32 %.sroa.80211.5, %i.aj
  br i1 %i.lz, label %bb.bq, label %bb.br, !prof !132

bb.bq:                                            ; preds = %bb.cc, %bb.by, %bb.bu, %bb.bp
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !148
  unreachable

bb.br:                                            ; preds = %bb.bp
  store i32 0, ptr %.sroa.0.i.i.i128, align 4, !noalias !148
  %.sroa.speculated27.i.i.i.i139 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %.sroa.80211.5) ; 3 uses
  %i.ma = add nuw nsw i32 %.sroa.speculated27.i.i.i.i139, 4
  %.sroa.speculated.i.i.i.i140 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.ma)
  %i.mb = sub nsw i32 %.sroa.speculated.i.i.i.i140, %.sroa.speculated27.i.i.i.i139 ; 2 uses
  %i.mc = icmp samesign ult i32 %i.mb, 5
  tail call void @llvm.assume(i1 %i.mc), !noalias !148
  %i.md = zext nneg i32 %.sroa.speculated27.i.i.i.i139 to i64
  %i.me = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.md
  %i.mf = zext nneg i32 %i.mb to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i128, ptr align 1 %i.me, i64 %i.mf, i1 false), !noalias !148
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread: ; preds = %bb.bo, %bb.br
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i135 = phi ptr [ %.sroa.0.i.i.i128, %bb.br ], [ %i.ly, %bb.bo ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i136 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i135, align 1, !noalias !148
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i128)
  %i.mg = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i136 to i64
  %i.mh = sub nuw nsw i32 32, %.sroa.30.5
  %i.mi = zext nneg i32 %i.mh to i64
  %i.mj = shl nuw i64 %i.mg, %i.mi
  %i.mk = or i64 %i.mj, %.sroa.0174.5             ; 2 uses
  %i.ml = lshr i64 %i.mk, 62
  %i.mm = trunc nuw nsw i64 %i.ml to i32
  %i.mn = or disjoint i32 %.sroa.30.5, 30
  %i.mo = shl i64 %i.mk, 2
  %i.mp = icmp ult i32 %.sroa.30.5, 35
  tail call void @llvm.assume(i1 %i.mp), !noalias !148
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1.thread

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141: ; preds = %bb.bm
  %i.mq = lshr i64 %.sroa.0174.5, 62
  %i.mr = trunc nuw nsw i64 %i.mq to i32          ; 4 uses
  %i.ms = add nsw i32 %.sroa.30.5, -2
  %i.mt = shl i64 %.sroa.0174.5, 2                ; 2 uses
  %.not.i.i129.1 = icmp samesign ult i32 %.sroa.30.5, 4
  br i1 %.not.i.i129.1, label %bb.bs, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1

bb.bs:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i128)
  %i.mu = add nuw nsw i32 %.sroa.80211.5, 4       ; 2 uses
  %.not.i.i.i132.1 = icmp samesign ugt i32 %i.mu, %i.q
  br i1 %.not.i.i.i132.1, label %bb.bu, label %bb.bt, !prof !132

bb.bt:                                            ; preds = %bb.bs
  %i.mv = zext nneg i32 %.sroa.80211.5 to i64
  %i.mw = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.mv
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1

bb.bu:                                            ; preds = %bb.bs
  %i.mx = icmp samesign ugt i32 %.sroa.80211.5, %i.aj
  br i1 %i.mx, label %bb.bq, label %bb.bv, !prof !132

bb.bv:                                            ; preds = %bb.bu
  store i32 0, ptr %.sroa.0.i.i.i128, align 4, !noalias !148
  %.sroa.speculated27.i.i.i.i139.1 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %.sroa.80211.5) ; 3 uses
  %i.my = add nuw nsw i32 %.sroa.speculated27.i.i.i.i139.1, 4
  %.sroa.speculated.i.i.i.i140.1 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.my)
  %i.mz = sub nsw i32 %.sroa.speculated.i.i.i.i140.1, %.sroa.speculated27.i.i.i.i139.1 ; 2 uses
  %i.na = icmp samesign ult i32 %i.mz, 5
  tail call void @llvm.assume(i1 %i.na), !noalias !148
  %i.nb = zext nneg i32 %.sroa.speculated27.i.i.i.i139.1 to i64
  %i.nc = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.nb
  %i.nd = zext nneg i32 %i.mz to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i128, ptr align 1 %i.nc, i64 %i.nd, i1 false), !noalias !148
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1: ; preds = %bb.bv, %bb.bt
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i135.1 = phi ptr [ %.sroa.0.i.i.i128, %bb.bv ], [ %i.mw, %bb.bt ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i136.1 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i135.1, align 1, !noalias !148
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i128)
  %i.ne = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i136.1 to i64
  %i.nf = or disjoint i32 %i.ms, 32
  %i.ng = sub nuw nsw i32 34, %.sroa.30.5
  %i.nh = zext nneg i32 %i.ng to i64
  %i.ni = shl nuw i64 %i.ne, %i.nh
  %i.nj = or i64 %i.ni, %i.mt
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1.thread

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1.thread: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread
  %.ph = phi i32 [ %i.mm, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread ], [ %i.mr, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1 ]
  %.sroa.80211.17.1.ph = phi i32 [ %i.lw, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread ], [ %i.mu, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1 ]
  %.ph583 = phi i64 [ %i.mo, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread ], [ %i.nj, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1 ] ; 2 uses
  %.ph584 = phi i32 [ %i.mn, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.thread ], [ %i.nf, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i134.1 ] ; 2 uses
  %i.nk = lshr i64 %.ph583, 62
  %i.nl = trunc nuw nsw i64 %i.nk to i32
  %i.nm = add nsw i32 %.ph584, -2
  %i.nn = shl i64 %.ph583, 2
  %i.no = icmp samesign ult i32 %.ph584, 67
  tail call void @llvm.assume(i1 %i.no), !noalias !148
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2.thread

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141
  %i.np = lshr i64 %i.mt, 62
  %i.nq = trunc nuw nsw i64 %i.np to i32          ; 3 uses
  %i.nr = add nsw i32 %.sroa.30.5, -4
  %i.ns = shl i64 %.sroa.0174.5, 4                ; 3 uses
  %.not.i.i129.2 = icmp samesign ult i32 %.sroa.30.5, 6
  br i1 %.not.i.i129.2, label %bb.bw, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.2

bb.bw:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i128)
  %i.nt = add nuw nsw i32 %.sroa.80211.5, 4       ; 2 uses
  %.not.i.i.i132.2 = icmp samesign ugt i32 %i.nt, %i.q
  br i1 %.not.i.i.i132.2, label %bb.by, label %bb.bx, !prof !132

bb.bx:                                            ; preds = %bb.bw
end_hunk_1
begin_hunk_2_@_ZN8rawspeed21SamsungV2Decompressor13decompressRowEi:bb.a
  switch i32 %i.pi, label %default.unreachable [
    i32 0, label %bb.cw
    i32 1, label %bb.cv
    i32 2, label %bb.ct
    i32 3, label %bb.co
  ]

bb.co:                                            ; preds = %.preheader327.2
  %i.qv = icmp samesign ult i32 %.sroa.30.8.1, 65
  tail call void @llvm.assume(i1 %i.qv), !noalias !148
  %i.qw = icmp sgt i32 %.sroa.80211.8.1, -1
  tail call void @llvm.assume(i1 %i.qw), !noalias !148
  %i.qx = and i32 %.sroa.80211.8.1, 3
  %i.qy = icmp eq i32 %i.qx, 0
  tail call void @llvm.assume(i1 %i.qy), !noalias !148
  %.not.i.i143.2 = icmp samesign ult i32 %.sroa.30.8.1, 4
  br i1 %.not.i.i143.2, label %bb.cp, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.2

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i142)
  %i.qz = add nuw nsw i32 %.sroa.80211.8.1, 4     ; 2 uses
  %.not.i.i.i146.2 = icmp samesign ugt i32 %i.qz, %i.q
  br i1 %.not.i.i.i146.2, label %bb.cr, label %bb.cq, !prof !132

bb.cq:                                            ; preds = %bb.cp
  %i.ra = zext nneg i32 %.sroa.80211.8.1 to i64
  %i.rb = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ra
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.2

bb.cr:                                            ; preds = %bb.cp
  %i.rc = icmp samesign ugt i32 %.sroa.80211.8.1, %i.aj
  br i1 %i.rc, label %bb.ds, label %bb.cs, !prof !132

bb.cs:                                            ; preds = %bb.cr
  store i32 0, ptr %.sroa.0.i.i.i142, align 4, !noalias !148
  %.sroa.speculated27.i.i.i.i153.2 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %.sroa.80211.8.1) ; 3 uses
  %i.rd = add nuw nsw i32 %.sroa.speculated27.i.i.i.i153.2, 4
  %.sroa.speculated.i.i.i.i154.2 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.rd)
  %i.re = sub nsw i32 %.sroa.speculated.i.i.i.i154.2, %.sroa.speculated27.i.i.i.i153.2 ; 2 uses
  %i.rf = icmp samesign ult i32 %i.re, 5
  tail call void @llvm.assume(i1 %i.rf), !noalias !148
  %i.rg = zext nneg i32 %.sroa.speculated27.i.i.i.i153.2 to i64
  %i.rh = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.rg
  %i.ri = zext nneg i32 %i.re to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i142, ptr align 1 %i.rh, i64 %i.ri, i1 false), !noalias !148
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.2

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.2: ; preds = %bb.cs, %bb.cq
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i149.2 = phi ptr [ %.sroa.0.i.i.i142, %bb.cs ], [ %i.rb, %bb.cq ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i150.2 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i149.2, align 1, !noalias !148
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i142)
  %i.rj = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i150.2 to i64
  %i.rk = or disjoint i32 %.sroa.30.8.1, 32
  %i.rl = sub nuw nsw i32 32, %.sroa.30.8.1
  %i.rm = zext nneg i32 %i.rl to i64
  %i.rn = shl nuw i64 %i.rj, %i.rm
  %i.ro = or i64 %i.rn, %.sroa.0174.8.1
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.2

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.2: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.2, %bb.co
  %.sroa.80211.18.2 = phi i32 [ %i.qz, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.2 ], [ %.sroa.80211.8.1, %bb.co ]
  %i.rp = phi i64 [ %i.ro, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.2 ], [ %.sroa.0174.8.1, %bb.co ] ; 2 uses
  %i.rq = phi i32 [ %i.rk, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.2 ], [ %.sroa.30.8.1, %bb.co ]
  %i.rr = lshr i64 %i.rp, 60
  %i.rs = add nsw i32 %i.rq, -4
  %i.rt = shl i64 %i.rp, 4
  br label %bb.cx

bb.ct:                                            ; preds = %.preheader327.2
  %i.ru = load i32, ptr %i.bo, align 8, !tbaa !19, !noalias !148 ; 2 uses
  %i.rv = icmp eq i32 %i.ru, 0
  br i1 %i.rv, label %bb.dm, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.rw = add nsw i32 %i.ru, -1
  %.sroa.14491.8.insert.ext493 = zext i32 %i.rw to i64
  br label %bb.cx

bb.cv:                                            ; preds = %.preheader327.2
  %i.rx = load i32, ptr %i.bp, align 8, !tbaa !19, !noalias !148
  %i.ry = add nsw i32 %i.rx, 1
  %.sroa.14491.8.insert.ext497 = zext i32 %i.ry to i64
  br label %bb.cx

bb.cw:                                            ; preds = %.preheader327.2
  %i.rz = load i32, ptr %i.bq, align 8, !tbaa !19, !noalias !148
  %.sroa.14491.8.insert.ext501 = zext i32 %i.rz to i64
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %bb.cu, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.2
  %.sroa.14491.1 = phi i64 [ %.sroa.14491.8.insert.ext501, %bb.cw ], [ %.sroa.14491.8.insert.ext497, %bb.cv ], [ %.sroa.14491.8.insert.ext493, %bb.cu ], [ %i.rr, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.2 ] ; 2 uses
  %.sroa.80211.8.2 = phi i32 [ %.sroa.80211.8.1, %bb.cw ], [ %.sroa.80211.8.1, %bb.cv ], [ %.sroa.80211.8.1, %bb.cu ], [ %.sroa.80211.18.2, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.2 ] ; 10 uses
  %.sroa.30.8.2 = phi i32 [ %.sroa.30.8.1, %bb.cw ], [ %.sroa.30.8.1, %bb.cv ], [ %.sroa.30.8.1, %bb.cu ], [ %i.rs, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.2 ] ; 8 uses
  %.sroa.0174.8.2 = phi i64 [ %.sroa.0174.8.1, %bb.cw ], [ %.sroa.0174.8.1, %bb.cv ], [ %.sroa.0174.8.1, %bb.cu ], [ %i.rt, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.2 ] ; 5 uses
  %i.sa = load i32, ptr %i.bs, align 4, !tbaa !19, !noalias !148
  store i32 %i.sa, ptr %i.br, align 8, !tbaa !19, !noalias !148
  %.sroa.14491.8.extract.trunc = trunc nuw i64 %.sroa.14491.1 to i32 ; 3 uses
  store i32 %.sroa.14491.8.extract.trunc, ptr %i.bs, align 4, !tbaa !19, !noalias !148
  %i.sb = icmp ult i32 %i.uv, %.sroa.14491.8.extract.trunc
  br i1 %i.sb, label %bb.dv, label %.preheader327.3

.preheader327.3:                                  ; preds = %bb.cx
  switch i32 %i.pk, label %default.unreachable [
    i32 0, label %bb.dg
    i32 1, label %bb.df
    i32 2, label %bb.dd
    i32 3, label %bb.cy
  ]

bb.cy:                                            ; preds = %.preheader327.3
  %i.sc = icmp samesign ult i32 %.sroa.30.8.2, 65
  tail call void @llvm.assume(i1 %i.sc), !noalias !148
  %i.sd = icmp sgt i32 %.sroa.80211.8.2, -1
  tail call void @llvm.assume(i1 %i.sd), !noalias !148
  %i.se = and i32 %.sroa.80211.8.2, 3
  %i.sf = icmp eq i32 %i.se, 0
  tail call void @llvm.assume(i1 %i.sf), !noalias !148
  %.not.i.i143.3 = icmp samesign ult i32 %.sroa.30.8.2, 4
  br i1 %.not.i.i143.3, label %bb.cz, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.3

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i142)
  %i.sg = add nuw nsw i32 %.sroa.80211.8.2, 4     ; 2 uses
  %.not.i.i.i146.3 = icmp samesign ugt i32 %i.sg, %i.q
  br i1 %.not.i.i.i146.3, label %bb.db, label %bb.da, !prof !132

bb.da:                                            ; preds = %bb.cz
  %i.sh = zext nneg i32 %.sroa.80211.8.2 to i64
  %i.si = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.sh
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.3

bb.db:                                            ; preds = %bb.cz
  %i.sj = icmp samesign ugt i32 %.sroa.80211.8.2, %i.aj
  br i1 %i.sj, label %bb.ds, label %bb.dc, !prof !132

bb.dc:                                            ; preds = %bb.db
  store i32 0, ptr %.sroa.0.i.i.i142, align 4, !noalias !148
  %.sroa.speculated27.i.i.i.i153.3 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %.sroa.80211.8.2) ; 3 uses
  %i.sk = add nuw nsw i32 %.sroa.speculated27.i.i.i.i153.3, 4
  %.sroa.speculated.i.i.i.i154.3 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.sk)
  %i.sl = sub nsw i32 %.sroa.speculated.i.i.i.i154.3, %.sroa.speculated27.i.i.i.i153.3 ; 2 uses
  %i.sm = icmp samesign ult i32 %i.sl, 5
  tail call void @llvm.assume(i1 %i.sm), !noalias !148
  %i.sn = zext nneg i32 %.sroa.speculated27.i.i.i.i153.3 to i64
  %i.so = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.sn
  %i.sp = zext nneg i32 %i.sl to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i142, ptr align 1 %i.so, i64 %i.sp, i1 false), !noalias !148
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.3

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.3: ; preds = %bb.dc, %bb.da
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i149.3 = phi ptr [ %.sroa.0.i.i.i142, %bb.dc ], [ %i.si, %bb.da ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i150.3 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i149.3, align 1, !noalias !148
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i142)
  %i.sq = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i150.3 to i64
  %i.sr = or disjoint i32 %.sroa.30.8.2, 32
  %i.ss = sub nuw nsw i32 32, %.sroa.30.8.2
  %i.st = zext nneg i32 %i.ss to i64
  %i.su = shl nuw i64 %i.sq, %i.st
  %i.sv = or i64 %i.su, %.sroa.0174.8.2
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.3

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.3: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.3, %bb.cy
  %.sroa.80211.18.3 = phi i32 [ %i.sg, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.3 ], [ %.sroa.80211.8.2, %bb.cy ]
  %i.sw = phi i64 [ %i.sv, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.3 ], [ %.sroa.0174.8.2, %bb.cy ] ; 2 uses
  %i.sx = phi i32 [ %i.sr, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.3 ], [ %.sroa.30.8.2, %bb.cy ]
  %i.sy = add nsw i32 %i.sx, -4
  %i.sz = shl i64 %i.sw, 4
  %i.ta = lshr i64 %i.sw, 28
  %.sroa.14491.12.insert.shift = and i64 %i.ta, 64424509440
  br label %bb.dh

bb.dd:                                            ; preds = %.preheader327.3
  %i.tb = load i32, ptr %i.bt, align 8, !tbaa !19, !noalias !148 ; 2 uses
  %i.tc = icmp eq i32 %i.tb, 0
  br i1 %i.tc, label %bb.dm, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.td = add nsw i32 %i.tb, -1
  %.sroa.14491.12.insert.ext506 = zext i32 %i.td to i64
  %.sroa.14491.12.insert.shift507 = shl nuw i64 %.sroa.14491.12.insert.ext506, 32
  br label %bb.dh

bb.df:                                            ; preds = %.preheader327.3
  %i.te = load i32, ptr %i.bu, align 8, !tbaa !19, !noalias !148
  %i.tf = add nsw i32 %i.te, 1
  %.sroa.14491.12.insert.ext511 = zext i32 %i.tf to i64
  %.sroa.14491.12.insert.shift512 = shl nuw i64 %.sroa.14491.12.insert.ext511, 32
  br label %bb.dh

bb.dg:                                            ; preds = %.preheader327.3
  %i.tg = load i32, ptr %i.bv, align 8, !tbaa !19, !noalias !148
  %.sroa.14491.12.insert.ext516 = zext i32 %i.tg to i64
  %.sroa.14491.12.insert.shift517 = shl nuw i64 %.sroa.14491.12.insert.ext516, 32
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df, %bb.de, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.3
  %.sroa.14491.12.insert.shift517.pn = phi i64 [ %.sroa.14491.12.insert.shift517, %bb.dg ], [ %.sroa.14491.12.insert.shift512, %bb.df ], [ %.sroa.14491.12.insert.shift507, %bb.de ], [ %.sroa.14491.12.insert.shift, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.3 ] ; 2 uses
  %.sroa.80211.8.3 = phi i32 [ %.sroa.80211.8.2, %bb.dg ], [ %.sroa.80211.8.2, %bb.df ], [ %.sroa.80211.8.2, %bb.de ], [ %.sroa.80211.18.3, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.3 ]
  %.sroa.30.8.3 = phi i32 [ %.sroa.30.8.2, %bb.dg ], [ %.sroa.30.8.2, %bb.df ], [ %.sroa.30.8.2, %bb.de ], [ %i.sy, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.3 ]
  %.sroa.0174.8.3 = phi i64 [ %.sroa.0174.8.2, %bb.dg ], [ %.sroa.0174.8.2, %bb.df ], [ %.sroa.0174.8.2, %bb.de ], [ %i.sz, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.3 ]
  %i.th = load i32, ptr %i.bx, align 4, !tbaa !19, !noalias !148
  store i32 %i.th, ptr %i.bw, align 8, !tbaa !19, !noalias !148
  %.sroa.14491.12.extract.shift = lshr exact i64 %.sroa.14491.12.insert.shift517.pn, 32
  %.sroa.14491.12.extract.trunc = trunc nuw i64 %.sroa.14491.12.extract.shift to i32 ; 3 uses
  store i32 %.sroa.14491.12.extract.trunc, ptr %i.bx, align 4, !tbaa !19, !noalias !148
  %i.ti = icmp ult i32 %i.uv, %.sroa.14491.12.extract.trunc
  br i1 %i.ti, label %bb.dv, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %.sroa.14491.2 = or disjoint i64 %.sroa.14491.1, %.sroa.14491.12.insert.shift517.pn
  %i.tj = zext i32 %.sroa.0486.sroa.9.1 to i64
  %i.tk = shl nuw i64 %i.tj, 32
  %i.tl = zext i32 %.sroa.0486.sroa.0.0 to i64
  %i.tm = or disjoint i64 %i.tk, %i.tl
  br label %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit

bb.dj:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3
  %i.tn = load i32, ptr %i.bg, align 8, !tbaa !19, !noalias !148
  br label %bb.du

bb.dk:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3
  %i.to = load i32, ptr %i.bf, align 8, !tbaa !19, !noalias !148
  %i.tp = add nsw i32 %i.to, 1
  br label %bb.du

bb.dl:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3
  %i.tq = load i32, ptr %i.be, align 8, !tbaa !19, !noalias !148 ; 2 uses
  %i.tr = icmp eq i32 %i.tq, 0
  br i1 %i.tr, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dd, %bb.ct, %bb.cj, %bb.dl
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei) #11, !noalias !148
  unreachable

bb.dn:                                            ; preds = %bb.dl
  %i.ts = add nsw i32 %i.tq, -1
  br label %bb.du

bb.do:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3
  %i.tt = icmp samesign ult i32 %i.ph, 67
  tail call void @llvm.assume(i1 %i.tt), !noalias !148
  %i.tu = icmp sgt i32 %.sroa.80211.17.3, -1
  tail call void @llvm.assume(i1 %i.tu), !noalias !148
  %i.tv = and i32 %.sroa.80211.17.3, 3
  %i.tw = icmp eq i32 %i.tv, 0
  tail call void @llvm.assume(i1 %i.tw), !noalias !148
  %.not.i.i143 = icmp samesign ult i32 %i.ph, 6
  br i1 %.not.i.i143, label %bb.dp, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i142)
  %i.tx = add nuw nsw i32 %.sroa.80211.17.3, 4    ; 2 uses
  %.not.i.i.i146 = icmp samesign ugt i32 %i.tx, %i.q
  br i1 %.not.i.i.i146, label %bb.dr, label %bb.dq, !prof !132

bb.dq:                                            ; preds = %bb.dp
  %i.ty = zext nneg i32 %.sroa.80211.17.3 to i64
  %i.tz = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ty
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148

bb.dr:                                            ; preds = %bb.dp
  %i.ua = icmp samesign ugt i32 %.sroa.80211.17.3, %i.aj
  br i1 %i.ua, label %bb.ds, label %bb.dt, !prof !132

bb.ds:                                            ; preds = %bb.db, %bb.cr, %bb.ch, %bb.dr
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !148
  unreachable

bb.dt:                                            ; preds = %bb.dr
  store i32 0, ptr %.sroa.0.i.i.i142, align 4, !noalias !148
  %.sroa.speculated27.i.i.i.i153 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %.sroa.80211.17.3) ; 3 uses
  %i.ub = add nuw nsw i32 %.sroa.speculated27.i.i.i.i153, 4
  %.sroa.speculated.i.i.i.i154 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.ub)
  %i.uc = sub nsw i32 %.sroa.speculated.i.i.i.i154, %.sroa.speculated27.i.i.i.i153 ; 2 uses
  %i.ud = icmp samesign ult i32 %i.uc, 5
  tail call void @llvm.assume(i1 %i.ud), !noalias !148
  %i.ue = zext nneg i32 %.sroa.speculated27.i.i.i.i153 to i64
  %i.uf = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ue
  %i.ug = zext nneg i32 %i.uc to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i142, ptr align 1 %i.uf, i64 %i.ug, i1 false), !noalias !148
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148: ; preds = %bb.dt, %bb.dq
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i149 = phi ptr [ %.sroa.0.i.i.i142, %bb.dt ], [ %i.tz, %bb.dq ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i150 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i149, align 1, !noalias !148
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i142)
  %i.uh = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i150 to i64
  %i.ui = or disjoint i32 %i.pl, 32
  %i.uj = sub nuw nsw i32 34, %i.ph
  %i.uk = zext nneg i32 %i.uj to i64
  %i.ul = shl nuw i64 %i.uh, %i.uk
  %i.um = or i64 %i.ul, %i.pm
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155: ; preds = %bb.do, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148
  %.sroa.80211.18 = phi i32 [ %i.tx, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148 ], [ %.sroa.80211.17.3, %bb.do ]
  %i.un = phi i64 [ %i.um, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148 ], [ %i.pm, %bb.do ] ; 2 uses
  %i.uo = phi i32 [ %i.ui, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148 ], [ %i.pl, %bb.do ]
  %i.up = lshr i64 %i.un, 60
  %i.uq = trunc nuw nsw i64 %i.up to i32
  %i.ur = add nsw i32 %i.uo, -4
  %i.us = shl i64 %i.un, 4
  br label %bb.du

default.unreachable:                              ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3, %.preheader327.3, %.preheader327.2, %.preheader327.1
  unreachable

bb.du:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155, %bb.dn, %bb.dk, %bb.dj
  %.sroa.0486.sroa.0.0 = phi i32 [ %i.tn, %bb.dj ], [ %i.tp, %bb.dk ], [ %i.ts, %bb.dn ], [ %i.uq, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155 ] ; 4 uses
  %.sroa.80211.8 = phi i32 [ %.sroa.80211.17.3, %bb.dj ], [ %.sroa.80211.17.3, %bb.dk ], [ %.sroa.80211.17.3, %bb.dn ], [ %.sroa.80211.18, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155 ] ; 10 uses
  %.sroa.30.8 = phi i32 [ %i.pl, %bb.dj ], [ %i.pl, %bb.dk ], [ %i.pl, %bb.dn ], [ %i.ur, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155 ] ; 8 uses
  %.sroa.0174.8 = phi i64 [ %i.pm, %bb.dj ], [ %i.pm, %bb.dk ], [ %i.pm, %bb.dn ], [ %i.us, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155 ] ; 5 uses
  %i.ut = load i32, ptr %i.bi, align 4, !tbaa !19, !noalias !148
  store i32 %i.ut, ptr %i.bh, align 8, !tbaa !19, !noalias !148
  store i32 %.sroa.0486.sroa.0.0, ptr %i.bi, align 4, !tbaa !19, !noalias !148
  %i.uu = load i32, ptr %i.ao, align 8, !tbaa !101, !noalias !148
  %i.uv = add i32 %i.uu, 1                        ; 4 uses
  %i.uw = icmp ugt i32 %.sroa.0486.sroa.0.0, %i.uv
  br i1 %i.uw, label %bb.dv, label %.preheader327.1

bb.dv:                                            ; preds = %bb.dh, %bb.cx, %bb.cn, %bb.du
  %.lcssa416 = phi i32 [ %.sroa.0486.sroa.0.0, %bb.du ], [ %.sroa.0486.sroa.9.1, %bb.cn ], [ %.sroa.14491.8.extract.trunc, %bb.cx ], [ %.sroa.14491.12.extract.trunc, %bb.dh ]
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei, i32 noundef %.lcssa416) #11, !noalias !148
  unreachable

_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127, %bb.di
  %.sroa.14491.0 = phi i64 [ %.sroa.14491.2, %bb.di ], [ 0, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ]
  %.sroa.80211.9 = phi i32 [ %.sroa.80211.8.3, %bb.di ], [ %.sroa.80211.16, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ]
  %.sroa.30.9 = phi i32 [ %.sroa.30.8.3, %bb.di ], [ %i.lt, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ]
  %.sroa.0174.9 = phi i64 [ %.sroa.0174.8.3, %bb.di ], [ %i.lu, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ]
  %.sroa.0486.sroa.0.0.insert.insert = phi i64 [ %i.tm, %bb.di ], [ 0, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ]
  store i64 %.sroa.0486.sroa.0.0.insert.insert, ptr %2, align 8, !noalias !148
  store i64 %.sroa.14491.0, ptr %5, align 8, !noalias !148
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15, !noalias !148
  br label %bb.dx

bb.dw:                                            ; preds = %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.ux = load i16, ptr %3, align 2, !tbaa !145, !noalias !148 ; 2 uses
  br i1 %.not32.i, label %bb.ee, label %bb.ef

bb.dx:                                            ; preds = %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit, %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit
  %indvars.iv444 = phi i64 [ 0, %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit ], [ %indvars.iv.next445, %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit ] ; 3 uses
  %.sroa.0174.4401 = phi i64 [ %.sroa.0174.9, %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit ], [ %.sroa.0174.10, %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit ] ; 3 uses
  %.sroa.30.4400 = phi i32 [ %.sroa.30.9, %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit ], [ %.sroa.30.10, %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit ] ; 6 uses
  %.sroa.80211.4399 = phi i32 [ %.sroa.80211.9, %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit ], [ %.sroa.80211.10, %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit ] ; 8 uses
  %6 = lshr i64 %indvars.iv444, 2
  %i.uy = and i64 %6, 1073741823
  %7 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.uy
  %i.uz = load i32, ptr %7, align 4, !tbaa !19, !noalias !148 ; 6 uses
  %i.va = icmp eq i32 %i.uz, 0
  br i1 %i.va, label %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.vb = icmp ult i32 %i.uz, 16
  tail call void @llvm.assume(i1 %i.vb), !noalias !148
  %i.vc = icmp samesign ult i32 %.sroa.30.4400, 65
  tail call void @llvm.assume(i1 %i.vc), !noalias !148
  %i.vd = icmp sgt i32 %.sroa.80211.4399, -1
  tail call void @llvm.assume(i1 %i.vd), !noalias !148
  %i.ve = and i32 %.sroa.80211.4399, 3
  %i.vf = icmp eq i32 %i.ve, 0
  tail call void @llvm.assume(i1 %i.vf), !noalias !148
  %.not.i.i157 = icmp samesign ult i32 %.sroa.30.4400, %i.uz
  br i1 %.not.i.i157, label %bb.dz, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i156)
  %i.vg = add nuw nsw i32 %.sroa.80211.4399, 4    ; 2 uses
  %.not.i.i.i160 = icmp samesign ugt i32 %i.vg, %i.q
  br i1 %.not.i.i.i160, label %bb.eb, label %bb.ea, !prof !132

bb.ea:                                            ; preds = %bb.dz
  %i.vh = zext nneg i32 %.sroa.80211.4399 to i64
  %i.vi = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.vh
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162

bb.eb:                                            ; preds = %bb.dz
  %i.vj = icmp samesign ugt i32 %.sroa.80211.4399, %i.aj
  br i1 %i.vj, label %bb.ec, label %bb.ed, !prof !132

bb.ec:                                            ; preds = %bb.eb
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !148
  unreachable

bb.ed:                                            ; preds = %bb.eb
  store i32 0, ptr %.sroa.0.i.i.i156, align 4, !noalias !148
  %.sroa.speculated27.i.i.i.i167 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %.sroa.80211.4399) ; 3 uses
  %i.vk = add nuw nsw i32 %.sroa.speculated27.i.i.i.i167, 4
  %.sroa.speculated.i.i.i.i168 = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.vk)
  %i.vl = sub nsw i32 %.sroa.speculated.i.i.i.i168, %.sroa.speculated27.i.i.i.i167 ; 2 uses
  %i.vm = icmp samesign ult i32 %i.vl, 5
  tail call void @llvm.assume(i1 %i.vm), !noalias !148
  %i.vn = zext nneg i32 %.sroa.speculated27.i.i.i.i167 to i64
  %i.vo = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.vn
  %i.vp = zext nneg i32 %i.vl to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i156, ptr align 1 %i.vo, i64 %i.vp, i1 false), !noalias !148
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162: ; preds = %bb.ed, %bb.ea
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i163 = phi ptr [ %.sroa.0.i.i.i156, %bb.ed ], [ %i.vi, %bb.ea ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i164 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i163, align 1, !noalias !148
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i156)
  %i.vq = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i164 to i64
  %i.vr = add nuw nsw i32 %.sroa.30.4400, 32
  %i.vs = sub nuw nsw i32 32, %.sroa.30.4400
  %i.vt = zext nneg i32 %i.vs to i64
  %i.vu = shl nuw i64 %i.vq, %i.vt
  %i.vv = or i64 %i.vu, %.sroa.0174.4401
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169: ; preds = %bb.dy, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162
  %.sroa.80211.19 = phi i32 [ %i.vg, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162 ], [ %.sroa.80211.4399, %bb.dy ]
  %i.vw = phi i64 [ %i.vv, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162 ], [ %.sroa.0174.4401, %bb.dy ] ; 2 uses
  %i.vx = phi i32 [ %i.vr, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162 ], [ %.sroa.30.4400, %bb.dy ]
  %i.vy = sub nuw nsw i32 64, %i.uz
  %i.vz = zext nneg i32 %i.vy to i64
  %i.wa = sub nsw i32 %i.vx, %i.uz
  %i.wb = zext nneg i32 %i.uz to i64
  %i.wc = shl i64 %i.vw, %i.wb
  %i.wd = ashr i64 %i.vw, %i.vz
  %i.we = trunc nsw i64 %i.wd to i16
  br label %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit

_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit: ; preds = %bb.dx, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169
  %.sroa.80211.10 = phi i32 [ %.sroa.80211.4399, %bb.dx ], [ %.sroa.80211.19, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169 ] ; 5 uses
  %.sroa.30.10 = phi i32 [ %.sroa.30.4400, %bb.dx ], [ %i.wa, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169 ] ; 4 uses
  %.sroa.0174.10 = phi i64 [ %.sroa.0174.4401, %bb.dx ], [ %i.wc, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169 ] ; 2 uses
  %.0.i42 = phi i16 [ 0, %bb.dx ], [ %i.we, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169 ]
  %i.wf = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv444
  store i16 %.0.i42, ptr %i.wf, align 2, !tbaa !145, !noalias !148
  %indvars.iv.next445 = add nuw nsw i64 %indvars.iv444, 1 ; 2 uses
  %exitcond447.not = icmp eq i64 %indvars.iv.next445, 16
  br i1 %exitcond447.not, label %bb.dw, label %bb.dx, !llvm.loop !151

bb.ee:                                            ; preds = %bb.dw
  store i16 %i.ux, ptr %.sroa.0.2..sroa_idx695, align 2, !tbaa !145, !noalias !148
  %i.wg = load i16, ptr %i.aq, align 2, !tbaa !145, !noalias !148
  store i16 %i.wg, ptr %.sroa.0.22..sroa_idx700, align 2, !tbaa !145, !noalias !148
  %i.wh = load i16, ptr %i.ar, align 2, !tbaa !145, !noalias !148
  store i16 %i.wh, ptr %.sroa.0.26..sroa_idx704, align 2, !tbaa !145, !noalias !148
  %i.wi = load i16, ptr %i.as, align 2, !tbaa !145, !noalias !148
  store i16 %i.wi, ptr %.sroa.0.30..sroa_idx709, align 2, !tbaa !145, !noalias !148
  %i.wj = load i16, ptr %i.at, align 2, !tbaa !145, !noalias !148
  store i16 %i.wj, ptr %.sroa.0, align 32, !tbaa !145, !noalias !148
  %i.wk = load <12 x i16>, ptr %i.ap, align 2, !tbaa !145, !noalias !148
  %i.wl = shufflevector <12 x i16> %i.wk, <12 x i16> poison, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  store <8 x i16> %i.wl, ptr %.sroa.0.4..sroa_idx696, align 4, !tbaa !145, !noalias !148
  %i.wm = load i16, ptr %i.au, align 2, !tbaa !145, !noalias !148
  store i16 %i.wm, ptr %.sroa.0.20..sroa_idx698, align 4, !tbaa !145, !noalias !148
  %i.wn = load i16, ptr %i.av, align 2, !tbaa !145, !noalias !148
  store i16 %i.wn, ptr %.sroa.0.24..sroa_idx702, align 8, !tbaa !145, !noalias !148
  br label %.preheader

bb.ef:                                            ; preds = %bb.dw
  store i16 %i.ux, ptr %.sroa.0, align 32, !tbaa !145, !noalias !148
  %i.wo = load i16, ptr %i.ax, align 2, !tbaa !145, !noalias !148
  store i16 %i.wo, ptr %.sroa.0.20..sroa_idx699, align 4, !tbaa !145, !noalias !148
  %i.wp = load i16, ptr %i.ay, align 2, !tbaa !145, !noalias !148
  store i16 %i.wp, ptr %.sroa.0.24..sroa_idx703, align 8, !tbaa !145, !noalias !148
  %i.wq = load i16, ptr %i.az, align 2, !tbaa !145, !noalias !148
  store i16 %i.wq, ptr %.sroa.0.28..sroa_idx707, align 4, !tbaa !145, !noalias !148
  %i.wr = load <11 x i16>, ptr %i.aw, align 2, !tbaa !145, !noalias !148
  %i.ws = shufflevector <11 x i16> %i.wr, <11 x i16> poison, <8 x i32> <i32 7, i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3>
  store <8 x i16> %i.ws, ptr %.sroa.0.2..sroa_idx694, align 2, !tbaa !145, !noalias !148
  %i.wt = load i16, ptr %i.ba, align 2, !tbaa !145, !noalias !148
  store i16 %i.wt, ptr %.sroa.0.18..sroa_idx697, align 2, !tbaa !145, !noalias !148
  %i.wu = load i16, ptr %i.bb, align 2, !tbaa !145, !noalias !148
  store i16 %i.wu, ptr %.sroa.0.22..sroa_idx701, align 2, !tbaa !145, !noalias !148
  %i.wv = load i16, ptr %i.bc, align 2, !tbaa !145, !noalias !148
  store i16 %i.wv, ptr %.sroa.0.26..sroa_idx705, align 2, !tbaa !145, !noalias !148
  br label %.preheader

.preheader:                                       ; preds = %bb.ef, %bb.ee
  %.024.i.15.sroa.phi = phi ptr [ %.sroa.0.28.gep.sroa_idx706, %bb.ee ], [ %.sroa.0.30.gep688.sroa_idx708, %bb.ef ]
  %i.ww = load i16, ptr %i.bd, align 2, !tbaa !145, !noalias !148
  store i16 %i.ww, ptr %.024.i.15.sroa.phi, align 2, !tbaa !145, !noalias !148
  %i.wx = load i32, ptr %i.x, align 4, !tbaa !134, !noalias !148 ; 2 uses
  %i.wy = shl nsw i32 %i.wx, 1
  %i.wz = or disjoint i32 %i.wy, 1
  %i.xa = icmp samesign ult i32 %1, %i.cy
  %i.xb = mul nuw nsw i32 %i.db, %1
  %i.xc = zext nneg i32 %i.xb to i64
  %i.xd = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %i.xc
  %i.xe = zext nneg i32 %i.cw to i64
  %i.xf = getelementptr inbounds nuw [2 x i8], ptr %i.xd, i64 %indvars.iv458
  %indvars.iv.next461.14 = or disjoint i64 %indvars.iv458, 15
  %i.xg = icmp samesign ult i64 %indvars.iv.next461.14, %i.xe
  %.sroa.0.0..sroa.0.0. = load <16 x i16>, ptr %.sroa.0, align 32, !tbaa !145
  %i.xh = sext <16 x i16> %.sroa.0.0..sroa.0.0. to <16 x i32>
  %i.xi = insertelement <16 x i32> poison, i32 %i.wz, i64 0
  %i.xj = shufflevector <16 x i32> %i.xi, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.xk = mul nsw <16 x i32> %i.xj, %i.xh
  %i.xl = insertelement <16 x i32> poison, i32 %i.wx, i64 0
  %i.xm = shufflevector <16 x i32> %i.xl, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.xn = add nsw <16 x i32> %i.xk, %i.xm
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !noalias !148
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15, !noalias !148
  %i.xo = load i32, ptr %i.ao, align 8, !tbaa !101 ; 2 uses
  %i.xp = icmp ult i32 %i.xo, 17
  tail call void @llvm.assume(i1 %i.xp)
  %notmask.i = shl nsw i32 -1, %i.xo
  %i.xq = xor i32 %notmask.i, -1
  tail call void @llvm.assume(i1 %i.xa)
  %i.xr = load <16 x i16>, ptr %4, align 2, !tbaa !145
  %i.xs = zext <16 x i16> %i.xr to <16 x i32>
  %i.xt = add nsw <16 x i32> %i.xn, %i.xs         ; 2 uses
  %i.xu = insertelement <16 x i32> poison, i32 %i.xq, i64 0
  %i.xv = shufflevector <16 x i32> %i.xu, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.xw = icmp sgt <16 x i32> %i.xt, %i.xv
  %i.xx = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.xt, <16 x i32> zeroinitializer)
  %i.xy = select <16 x i1> %i.xw, <16 x i32> %i.xv, <16 x i32> %i.xx
  %i.xz = trunc <16 x i32> %i.xy to <16 x i16>
  tail call void @llvm.assume(i1 %i.xg)
  store <16 x i16> %i.xz, ptr %i.xf, align 2, !tbaa !145
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %indvars.iv.next459 = add nuw nsw i64 %indvars.iv458, 16 ; 2 uses
  %i.ya = load i32, ptr %i.ad, align 4, !tbaa !109 ; 2 uses
  %i.yb = trunc nuw i64 %indvars.iv.next459 to i32
  %i.yc = icmp sgt i32 %i.ya, %i.yb
  br i1 %i.yc, label %bb.g, label %._crit_edge, !llvm.loop !152
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed21SamsungV2Decompressor10decompressEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !110
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.03 = phi i32 [ %i.d, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  tail call void @_ZN8rawspeed21SamsungV2Decompressor13decompressRowEi(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %.03)
  %i.d = add nuw nsw i32 %.03, 1                  ; 2 uses
  %i.e = load i32, ptr %i.a, align 8, !tbaa !110
  %i.f = icmp slt i32 %i.d, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge, !llvm.loop !153
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !121
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #15, !call_target !123, !inline_history !154
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !19   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !19
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !121
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #15, !call_target !131, !inline_history !154
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #15 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed11IOExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  resume { ptr, i32 } %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #6

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #6

declare void @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef, ptr noundef, ...) local_unnamed_addr #9

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #17
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed11IOExceptionE, i64 16), ptr %0, align 8, !tbaa !121
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #11

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed17RawspeedExceptionE, i64 16), ptr %0, align 8, !tbaa !121
  invoke void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %1) #17
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #15
  resume { ptr, i32 } %i.a
}

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #9

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %0) local_unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.7, ptr noundef %0)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #17
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed19RawDecoderExceptionE, i64 16), ptr %0, align 8, !tbaa !121
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smax.v16i32(<16 x i32>, <16 x i32>) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { cold noreturn }
attributes #12 = { cold mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !13, i64 0}
!12 = !{!"_ZTSSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0, !15, i64 8}
end_hunk_2
