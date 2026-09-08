Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/PanasonicV5Decompressor?download=true
inline.NumInlined: 502
inline.NumDeleted: 264
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.rawspeed::PanasonicV5Decompressor::PacketDsc" = type { i32, i32 }
%"struct.std::array.54" = type { [8192 x i8] }
%"class.rawspeed::ByteStream" = type { %"class.rawspeed::DataBuffer.base", i32, [4 x i8] }
%"class.rawspeed::DataBuffer.base" = type { %"class.rawspeed::Buffer.base", i16 }
%"class.rawspeed::Buffer.base" = type <{ ptr, i32 }>
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%"class.rawspeed::PanasonicV5Decompressor::ProxyStream" = type { %"class.rawspeed::ByteStream", %"class.std::vector.60", %"class.rawspeed::ByteStream" }
%"class.std::vector.60" = type { %"struct.std::_Vector_base.61" }
%"struct.std::_Vector_base.61" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz = comdat any

$_ZN8rawspeed8RawImageD2Ev = comdat any

$_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz = comdat any

$_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc = comdat any

$_ZN8rawspeed17RawspeedExceptionC2EPKc = comdat any

$_ZN8rawspeed17RawspeedException3logEPKc = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc = comdat any

$_ZNK8rawspeed23PanasonicV5Decompressor12processBlockIL_ZNS0_15TwelveBitPacketEEEEvRKNS0_5BlockE = comdat any

$_ZN8rawspeed23PanasonicV5Decompressor11ProxyStream10parseBlockEv = comdat any

$_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag = comdat any

$_ZNK8rawspeed23PanasonicV5Decompressor12processBlockIL_ZNS0_17FourteenBitPacketEEEEvRKNS0_5BlockE = comdat any

$_ZN8rawspeed23PanasonicV5Decompressor15TwelveBitPacketE = comdat any

$_ZN8rawspeed23PanasonicV5Decompressor17FourteenBitPacketE = comdat any

$_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf = comdat any

$_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf = comdat any

@_ZN8rawspeed23PanasonicV5Decompressor15TwelveBitPacketE = weak_odr hidden constant %"struct.rawspeed::PanasonicV5Decompressor::PacketDsc" { i32 12, i32 10 }, comdat, align 4
@_ZN8rawspeed23PanasonicV5Decompressor17FourteenBitPacketE = weak_odr hidden constant %"struct.rawspeed::PanasonicV5Decompressor::PacketDsc" { i32 14, i32 9 }, comdat, align 4
@.str = private unnamed_addr constant [52 x i8] c"%s, line 76: Unexpected component count / data type\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed23PanasonicV5DecompressorC2ENS_8RawImageENS_10ByteStreamEj = private unnamed_addr constant [91 x i8] c"rawspeed::PanasonicV5Decompressor::PanasonicV5Decompressor(RawImage, ByteStream, uint32_t)\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"%s, line 87: Unsupported bps: %u\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"%s, line 92: Unexpected image dimensions found: (%i; %i)\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"%s, line 108: Insufficient count of input blocks for a given image\00", align 1
@_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf = linkonce_odr hidden thread_local global %"struct.std::array.54" zeroinitializer, comdat, align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"EXCEPTION: %s\00", align 1
@_ZTIN8rawspeed11IOExceptionE = external constant ptr
@_ZTVN8rawspeed11IOExceptionE = external constant { [6 x ptr] }, align 8
@_ZTVN8rawspeed17RawspeedExceptionE = external constant { [6 x ptr] }, align 8
@.str.6 = private unnamed_addr constant [58 x i8] c"%s, line 80: Buffer overflow: image file may be truncated\00", align 1
@__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj = private unnamed_addr constant [64 x i8] c"Buffer rawspeed::Buffer::getSubView(size_type, size_type) const\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf = linkonce_odr hidden thread_local global %"struct.std::array.54" zeroinitializer, comdat, align 1
@_ZTIN8rawspeed19RawDecoderExceptionE = external constant ptr
@_ZTVN8rawspeed19RawDecoderExceptionE = external constant { [6 x ptr] }, align 8
@.str.10 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@.str.11 = private unnamed_addr constant [61 x i8] c"%s, line 59: Bit stream size is smaller than MaxProcessBytes\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_14BitStreamerLSBEEC2ENS_10Array1DRefIKSt4byteEE = private unnamed_addr constant [153 x i8] c"rawspeed::BitStreamerReplenisherBase<rawspeed::BitStreamerLSB>::BitStreamerReplenisherBase(Array1DRef<const std::byte>) [Tag = rawspeed::BitStreamerLSB]\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"%s, line 127: Buffer overflow read in BitStreamer\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv = private unnamed_addr constant [184 x i8] c"std::array<std::byte, BitStreamerTraits<Tag>::MaxProcessBytes> rawspeed::BitStreamerForwardSequentialReplenisher<rawspeed::BitStreamerLSB>::getInput() [Tag = rawspeed::BitStreamerLSB]\00", align 1

@_ZN8rawspeed23PanasonicV5DecompressorC1ENS_8RawImageENS_10ByteStreamEj = hidden unnamed_addr alias void (ptr, ptr, ptr, i32), ptr @_ZN8rawspeed23PanasonicV5DecompressorC2ENS_8RawImageENS_10ByteStreamEj

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed23PanasonicV5DecompressorC2ENS_8RawImageENS_10ByteStreamEj(ptr noundef nonnull align 8 dereferenceable(80) initializes((0, 30), (32, 36), (40, 44), (56, 80)) %0, ptr nofree noundef align 8 captures(none) %1, ptr nofree noundef readonly byval(%"class.rawspeed::ByteStream") align 8 captures(none) %2, i32 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x ptr>, ptr %1, align 8, !tbaa !147
  store ptr null, ptr %i.b, align 8, !tbaa !15
  store <2 x ptr> %i.c, ptr %0, align 8, !tbaa !147
  store ptr null, ptr %1, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 0, ptr %i.e, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i16 -8531, ptr %i.f, align 4, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %3, ptr %i.h, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.j = load ptr, ptr %0, align 8, !tbaa !18     ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 592
  %i.l = load i32, ptr %i.k, align 8, !tbaa !106
  %.not = icmp eq i32 %i.l, 1
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 553
  %i.n = load i8, ptr %i.m, align 1, !tbaa !148
  %.not14 = icmp eq i8 %i.n, 0
  br i1 %.not14, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 596
  %i.p = load i32, ptr %i.o, align 4, !tbaa !149
  %.not15 = icmp eq i32 %i.p, 2
  br i1 %.not15, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed23PanasonicV5DecompressorC2ENS_8RawImageENS_10ByteStreamEj) #11
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.g:                                             ; preds = %bb.c
  switch i32 %3, label %bb.i [
    i32 12, label %bb.l
    i32 14, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed23PanasonicV5DecompressorC2ENS_8RawImageENS_10ByteStreamEj, i32 noundef %3) #11
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.n, %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.l:                                             ; preds = %bb.g, %bb.h
  %.0 = phi ptr [ @_ZN8rawspeed23PanasonicV5Decompressor17FourteenBitPacketE, %bb.h ], [ @_ZN8rawspeed23PanasonicV5Decompressor15TwelveBitPacketE, %bb.g ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.t = load i32, ptr %i.s, align 8, !tbaa !150  ; 4 uses
  %i.u = icmp sgt i32 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.w = load i32, ptr %i.v, align 4              ; 3 uses
  %i.x = icmp sgt i32 %i.w, 0
  %i.y = select i1 %i.u, i1 %i.x, i1 false
  br i1 %i.y, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !108 ; 2 uses
  %i.ab = srem i32 %i.t, %i.aa
  %.not16 = icmp eq i32 %i.ab, 0
  br i1 %.not16, label %_ZN8rawspeed19roundUpDivisionSafeEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed23PanasonicV5DecompressorC2ENS_8RawImageENS_10ByteStreamEj, i32 noundef %i.t, i32 noundef %i.w) #11
          to label %bb.o unwind label %bb.k

bb.o:                                             ; preds = %bb.n
  unreachable

_ZN8rawspeed19roundUpDivisionSafeEmm.exit:        ; preds = %bb.m
  %i.ac = zext nneg i32 %i.t to i64
  %i.ad = zext nneg i32 %i.w to i64
  %i.ae = mul nuw nsw i64 %i.ad, %i.ac            ; 2 uses
  %i.af = sext i32 %i.aa to i64                   ; 2 uses
  %4 = urem i64 %i.ae, %i.af
  %5 = icmp eq i64 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = udiv exact i64 %i.ae, %i.af
  %i.ag = add nsw i64 %6, -1
  %i.ah = lshr i64 %i.ag, 10                      ; 2 uses
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !109
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !22 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !27 ; 4 uses
  %i.ao = icmp uge i32 %i.al, %i.an
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = icmp sgt i32 %i.al, -1
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = sub nuw i32 %i.al, %i.an
  %i.ar = lshr i32 %i.aq, 14
  %i.as = zext nneg i32 %i.ar to i64
  %.not24 = icmp samesign ult i64 %i.ah, %i.as
  br i1 %.not24, label %bb.s, label %bb.p

bb.p:                                             ; preds = %_ZN8rawspeed19roundUpDivisionSafeEmm.exit
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed23PanasonicV5DecompressorC2ENS_8RawImageENS_10ByteStreamEj) #11
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.s:                                             ; preds = %_ZN8rawspeed19roundUpDivisionSafeEmm.exit
  %i.au = trunc nuw nsw i64 %i.ai to i32
  %i.av = shl nuw nsw i32 %i.au, 14               ; 2 uses
  %i.aw = zext i32 %i.an to i64                   ; 2 uses
  %i.ax = zext nneg i32 %i.av to i64              ; 2 uses
  %i.ay = add nuw nsw i64 %i.ax, %i.aw
  %i.az = zext nneg i32 %i.al to i64
  %.not.i.i.i.i = icmp samesign ugt i64 %i.ay, %i.az
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #11
          to label %.noexc22 unwind label %bb.w

.noexc22:                                         ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ba = load ptr, ptr %2, align 8, !tbaa !21, !noalias !151
  %i.bb = add nuw nsw i32 %i.av, %i.an
  %i.bc = icmp samesign ule i32 %i.bb, %i.al
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.aw
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bf = load i16, ptr %i.be, align 4, !tbaa !25, !noalias !151
  %.sroa.4.8.insert.ext.i.i.i = zext i16 %i.bf to i64
  %.sroa.4.8.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.4.8.insert.ext.i.i.i, 32
  %.sroa.2.8.insert.insert.i.i.i = or disjoint i64 %.sroa.4.8.insert.shift.i.i.i, %i.ax
  store ptr %i.bd, ptr %i.d, align 8
  store i64 %.sroa.2.8.insert.insert.i.i.i, ptr %i.e, align 8
  store i32 0, ptr %i.g, align 8
  invoke void @_ZN8rawspeed23PanasonicV5Decompressor19chopInputIntoBlocksERKNS0_9PacketDscE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(8) %.0)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  ret void

bb.w:                                             ; preds = %bb.t
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %bb.k, %bb.x, %bb.w, %bb.r, %bb.f
  %.pn20 = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.r, %bb.k ], [ %i.at, %bb.r ], [ %i.bh, %bb.x ], [ %i.bg, %bb.w ]
  %i.bi = load ptr, ptr %i.i, align 8, !tbaa !110 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8rawspeed23PanasonicV5Decompressor5BlockESaIS2_EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !111
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #20
  br label %_ZNSt6vectorIN8rawspeed23PanasonicV5Decompressor5BlockESaIS2_EED2Ev.exit

_ZNSt6vectorIN8rawspeed23PanasonicV5Decompressor5BlockESaIS2_EED2Ev.exit: ; preds = %bb.y, %bb.z
  tail call void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #21
  resume { ptr, i32 } %.pn20
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #21 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed19RawDecoderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed23PanasonicV5Decompressor19chopInputIntoBlocksERKNS0_9PacketDscE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !168  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !109  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.j = icmp ugt i64 %i.e, 230584300921369395
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !111
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !110
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = sub i64 %i.n, %i.o
  %i.q = sdiv exact i64 %i.p, 40
  %i.r = icmp ult i64 %i.q, %i.e
  br i1 %i.r, label %_ZNSt12_Vector_baseIN8rawspeed23PanasonicV5Decompressor5BlockESaIS2_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN8rawspeed23PanasonicV5Decompressor5BlockESaIS2_EE7reserveEm.exit

_ZNSt12_Vector_baseIN8rawspeed23PanasonicV5Decompressor5BlockESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !112
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.o
  %i.w = mul nuw nsw i64 %i.e, 40
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #23 ; 4 uses
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !110  ; 5 uses
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !112  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.y, %i.z
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN8rawspeed23PanasonicV5Decompressor5BlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN8rawspeed23PanasonicV5Decompressor5BlockESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %i.x, %_ZNSt12_Vector_baseIN8rawspeed23PanasonicV5Decompressor5BlockESaIS2_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i ], [ %i.y, %_ZNSt12_Vector_baseIN8rawspeed23PanasonicV5Decompressor5BlockESaIS2_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i, i64 40, i1 false), !alias.scope !169
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %.not.i.i.i.i = icmp eq ptr %i.aa, %i.z
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN8rawspeed23PanasonicV5Decompressor5BlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !155

_ZNSt6vectorIN8rawspeed23PanasonicV5Decompressor5BlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseIN8rawspeed23PanasonicV5Decompressor5BlockESaIS2_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.y, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN8rawspeed23PanasonicV5Decompressor5BlockESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN8rawspeed23PanasonicV5Decompressor5BlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !111
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.y to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.af) #20
  br label %_ZNSt12_Vector_baseIN8rawspeed23PanasonicV5Decompressor5BlockESaIS2_EE13_M_deallocateEPS2_m.exit.i

end_hunk_0
begin_hunk_1_@_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #24
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed11IOExceptionE, i64 16), ptr %0, align 8, !tbaa !117
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #11

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed17RawspeedExceptionE, i64 16), ptr %0, align 8, !tbaa !117
  invoke void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %1) #24
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #21
  resume { ptr, i32 } %i.a
}

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #9

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %0) local_unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.5, ptr noundef %0)
  ret void
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !117
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !call_target !122, !inline_history !179
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !125
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !126  ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !126
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !117
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #21, !call_target !124, !inline_history !179
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #24
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed19RawDecoderExceptionE, i64 16), ptr %0, align 8, !tbaa !117
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8rawspeed23PanasonicV5Decompressor12processBlockIL_ZNS0_15TwelveBitPacketEEEEvRKNS0_5BlockE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca i32, align 4            ; 5 uses
  %2 = alloca %"class.rawspeed::PanasonicV5Decompressor::ProxyStream", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.a, i8 0, i64 36, i1 false)
  store i16 -8531, ptr %i.b, align 4, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !27
  invoke void @_ZN8rawspeed23PanasonicV5Decompressor11ProxyStream10parseBlockEv(ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.e = load i32, ptr %i.c, align 8, !tbaa !27   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.g = load i32, ptr %i.f, align 8, !tbaa !22   ; 3 uses
  %i.h = icmp uge i32 %i.g, %i.e
  call void @llvm.assume(i1 %i.h)
  %i.i = icmp sgt i32 %i.g, -1
  call void @llvm.assume(i1 %i.i)
  %i.j = zext i32 %i.e to i64
  %i.k = sub nuw i32 %i.g, %i.e                   ; 5 uses
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j ; 2 uses
  %i.n = icmp samesign ult i32 %i.k, 4
  br i1 %i.n, label %bb.c, label %_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit

bb.c:                                             ; preds = %bb.b
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.11, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_14BitStreamerLSBEEC2ENS_10Array1DRefIKSt4byteEE) #11
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  unreachable

_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.q = load i32, ptr %i.p, align 4, !tbaa !128  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.t = load i32, ptr %i.s, align 4, !tbaa !115  ; 3 uses
  %.not49 = icmp sgt i32 %i.q, %i.t
  br i1 %.not49, label %._crit_edge54, label %.lr.ph53

.lr.ph53:                                         ; preds = %_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !18     ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 568
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 592
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 608
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 612
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.ab = add nuw nsw i32 %i.k, 8
  %i.ac = zext nneg i32 %i.k to i64
  %i.ad = zext nneg i32 %i.ab to i64
  br label %bb.f

._crit_edge54:                                    ; preds = %._crit_edge, %_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !130 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i, label %_ZN8rawspeed23PanasonicV5Decompressor11ProxyStreamD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge54
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !131
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #20
  br label %_ZN8rawspeed23PanasonicV5Decompressor11ProxyStreamD2Ev.exit

_ZN8rawspeed23PanasonicV5Decompressor11ProxyStreamD2Ev.exit: ; preds = %._crit_edge54, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.f:                                             ; preds = %.lr.ph53, %._crit_edge
  %.02752 = phi i32 [ %i.q, %.lr.ph53 ], [ %i.eb, %._crit_edge ] ; 6 uses
  %.sroa.1838.051 = phi i32 [ 0, %.lr.ph53 ], [ %.sroa.1838.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.035.050 = phi i64 [ 0, %.lr.ph53 ], [ %.sroa.035.1.lcssa, %._crit_edge ] ; 2 uses
  %i.al = icmp eq i32 %i.q, %.02752
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.am = load i32, ptr %i.o, align 8, !tbaa !132
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.026 = phi i32 [ %i.am, %bb.g ], [ 0, %bb.f ]  ; 3 uses
  %i.an = icmp eq i32 %i.t, %.02752
  %spec.select = select i1 %i.an, ptr %i.r, ptr %i.v
  %.0 = load i32, ptr %spec.select, align 8, !tbaa !126 ; 3 uses
  %3 = srem i32 %.026, 10
  %4 = icmp eq i32 %3, 0
  call void @llvm.assume(i1 %4)
  %5 = srem i32 %.0, 10
  %6 = icmp eq i32 %5, 0
  call void @llvm.assume(i1 %6)
  %i.ao = icmp slt i32 %.026, %.0
  br i1 %i.ao, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.ap = load ptr, ptr %i.w, align 8, !tbaa !133, !noalias !187
  %i.aq = load i32, ptr %i.x, align 8, !tbaa !106, !noalias !187
  %i.ar = load i32, ptr %i.y, align 8, !tbaa !134, !noalias !187
  %i.as = mul nsw i32 %i.ar, %i.aq                ; 2 uses
  %i.at = load i32, ptr %i.z, align 4, !tbaa !135, !noalias !187
  %i.au = load i32, ptr %i.aa, align 8, !tbaa !136, !noalias !187
  %i.av = ashr i32 %i.au, 1                       ; 3 uses
  %i.aw = icmp ne i32 %i.av, 0
  call void @llvm.assume(i1 %i.aw)
  %i.ax = icmp sge i32 %i.av, %i.as
  call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp samesign ult i32 %.02752, %i.at
  %i.az = mul nuw nsw i32 %i.av, %.02752
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.ba ; 9 uses
  %i.bc = zext nneg i32 %i.as to i64              ; 2 uses
  %i.bd = zext nneg i32 %.sroa.1838.051 to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.o
  %.147 = phi i32 [ %.026, %.lr.ph ], [ %i.dx, %bb.o ] ; 2 uses
  %.sroa.1838.146 = phi i64 [ %i.bd, %.lr.ph ], [ %indvars.iv.next, %bb.o ]
  %.sroa.035.145 = phi i64 [ %.sroa.035.050, %.lr.ph ], [ %i.dw, %bb.o ]
  %i.be = zext i32 %.147 to i64
  br label %bb.j

.loopexit.i:                                      ; preds = %.lr.ph.i.new, %.prol.loopexit
  %.lcssa74 = phi i64 [ %.lcssa74.unr, %.prol.loopexit ], [ 0, %.lr.ph.i.new ] ; 2 uses
  %.lcssa = phi i32 [ %.lcssa.unr, %.prol.loopexit ], [ %i.ds, %.lr.ph.i.new ] ; 2 uses
  %indvars.iv.next.i.lcssa = phi i64 [ %indvars.iv.next.i.lcssa.unr, %.prol.loopexit ], [ %indvars.iv.next.i.7, %.lr.ph.i.new ]
  %i.bf = trunc nuw i32 %i.bl to i8
  %.lhs.trunc = add nuw nsw i8 %i.bf, 20
  %i.bg = udiv i8 %.lhs.trunc, 12
  %.zext = zext nneg i8 %i.bg to i32              ; 2 uses
  %i.bh = add i32 %.038.i, %.zext
  %i.bi = add i32 %.038.i, 1
  %i.bj = add i32 %i.bi, %.zext
  %i.bk = icmp slt i32 %i.bh, 9
  br i1 %i.bk, label %bb.j, label %bb.o, !llvm.loop !182

bb.j:                                             ; preds = %.loopexit.i, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit.i ], [ %.sroa.1838.146, %bb.i ] ; 4 uses
  %.sroa.035.2 = phi i64 [ %.lcssa74, %.loopexit.i ], [ %.sroa.035.145, %bb.i ]
  %i.bl = phi i32 [ %.lcssa, %.loopexit.i ], [ 0, %bb.i ] ; 6 uses
  %.038.i = phi i32 [ %i.bj, %.loopexit.i ], [ 0, %bb.i ] ; 2 uses
  %.01137.i = phi i64 [ %indvars.iv.next.i.lcssa, %.loopexit.i ], [ %i.be, %bb.i ] ; 2 uses
  %i.bm = icmp samesign ult i32 %i.bl, 65
  call void @llvm.assume(i1 %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 4 uses
  %.not.i.i.i = icmp samesign ugt i64 %indvars.iv.next, %i.ac
  br i1 %.not.i.i.i, label %bb.l, label %bb.k, !prof !127

bb.k:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  br label %.lr.ph.i

bb.l:                                             ; preds = %bb.j
  %i.bo = icmp samesign ugt i64 %indvars.iv, %i.ad
  br i1 %i.bo, label %bb.m, label %bb.n, !prof !127

bb.m:                                             ; preds = %bb.l
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv) #11
          to label %.noexc31 unwind label %bb.p

.noexc31:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  store i32 0, ptr %.sroa.0.i.i.i, align 4
  %i.bp = trunc nuw nsw i64 %indvars.iv to i32
  %.sroa.speculated27.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.k, i32 %i.bp) ; 3 uses
  %i.bq = add nuw nsw i32 %.sroa.speculated27.i.i.i.i, 4
  %.sroa.speculated.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.k, i32 %i.bq)
  %i.br = sub nsw i32 %.sroa.speculated.i.i.i.i, %.sroa.speculated27.i.i.i.i ; 2 uses
  %i.bs = icmp samesign ult i32 %i.br, 5
  call void @llvm.assume(i1 %i.bs)
  %i.bt = zext nneg i32 %.sroa.speculated27.i.i.i.i to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bt
  %i.bv = zext nneg i32 %i.br to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i, ptr align 1 %i.bu, i64 %i.bv, i1 false)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %bb.k
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i = phi ptr [ %.sroa.0.i.i.i, %bb.n ], [ %i.bn, %bb.k ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.bw = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i to i64
  %i.bx = or disjoint i32 %i.bl, 32               ; 2 uses
  %i.by = zext nneg i32 %i.bl to i64
  %i.bz = shl nuw nsw i64 %i.bw, %i.by
  %i.ca = or i64 %i.bz, %.sroa.035.2              ; 2 uses
  call void @llvm.assume(i1 %i.ay)
  %i.cb = add nuw nsw i32 %i.bl, 20
  %i.cc = udiv i32 %i.cb, 12
  %i.cd = add nuw nsw i32 %i.cc, 1
  %xtraiter = and i32 %i.cd, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.prol.preheader ], [ %.01137.i, %.lr.ph.i ] ; 3 uses
  %i.ce = phi i64 [ %i.ci, %.prol.preheader ], [ %i.ca, %.lr.ph.i ] ; 2 uses
  %i.cf = phi i32 [ %i.cj, %.prol.preheader ], [ %i.bx, %.lr.ph.i ]
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.cg = trunc i64 %i.ce to i16
  %i.ch = and i16 %i.cg, 4095
  %i.ci = lshr i64 %i.ce, 12                      ; 3 uses
  %i.cj = add nsw i32 %i.cf, -12                  ; 3 uses
  %i.ck = icmp samesign ult i64 %indvars.iv.i.prol, %i.bc
  call void @llvm.assume(i1 %i.ck)
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv.i.prol
  store i16 %i.ch, ptr %i.cl, align 2, !tbaa !138
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !183

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %.lcssa74.unr = phi i64 [ poison, %.lr.ph.i ], [ %i.ci, %.prol.preheader ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i ], [ %i.cj, %.prol.preheader ]
  %indvars.iv.next.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i ], [ %indvars.iv.next.i.prol, %.prol.preheader ]
  %indvars.iv.i.unr = phi i64 [ %.01137.i, %.lr.ph.i ], [ %indvars.iv.next.i.prol, %.prol.preheader ]
  %.unr = phi i64 [ %i.ca, %.lr.ph.i ], [ %i.ci, %.prol.preheader ]
  %.unr77 = phi i32 [ %i.bx, %.lr.ph.i ], [ %i.cj, %.prol.preheader ]
  %i.cm = icmp samesign ult i32 %i.bl, 64
  br i1 %i.cm, label %.loopexit.i, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 9 uses
  %i.cn = phi i64 [ 0, %.lr.ph.i.new ], [ %.unr, %.prol.loopexit ] ; 6 uses
  %i.co = phi i32 [ %i.ds, %.lr.ph.i.new ], [ %.unr77, %.prol.loopexit ] ; 2 uses
  %i.cp = trunc i64 %i.cn to i16
  %i.cq = and i16 %i.cp, 4095
  %i.cr = lshr i64 %i.cn, 12
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv.i
  store i16 %i.cq, ptr %i.cs, align 2, !tbaa !138
  %i.ct = trunc i64 %i.cr to i16
  %i.cu = and i16 %i.ct, 4095
  %i.cv = lshr i64 %i.cn, 24
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  store i16 %i.cu, ptr %i.cx, align 2, !tbaa !138
  %i.cy = trunc i64 %i.cv to i16
  %i.cz = and i16 %i.cy, 4095
  %i.da = lshr i64 %i.cn, 36
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  store i16 %i.cz, ptr %i.dc, align 2, !tbaa !138
  %i.dd = trunc i64 %i.da to i16
  %i.de = and i16 %i.dd, 4095
  %i.df = lshr i64 %i.cn, 48
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 6
  store i16 %i.de, ptr %i.dh, align 2, !tbaa !138
  %i.di = trunc nuw i64 %i.df to i16
  %i.dj = and i16 %i.di, 4095
  %i.dk = lshr i64 %i.cn, 60
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i16 %i.dj, ptr %i.dm, align 2, !tbaa !138
  %i.dn = trunc nuw nsw i64 %i.dk to i16
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 10
  store i16 %i.dn, ptr %i.dp, align 2, !tbaa !138
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  store i16 0, ptr %i.dr, align 2, !tbaa !138
  %indvars.iv.next.i.6 = add nuw nsw i64 %indvars.iv.i, 7 ; 2 uses
  %i.ds = add nsw i32 %i.co, -96                  ; 2 uses
  %i.dt = icmp samesign ult i64 %indvars.iv.next.i.6, %i.bc
  call void @llvm.assume(i1 %i.dt)
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv.next.i.6
  store i16 0, ptr %i.du, align 2, !tbaa !138
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %.not.i.7 = icmp slt i32 %i.co, 108
  br i1 %.not.i.7, label %.loopexit.i, label %.lr.ph.i.new, !llvm.loop !184

bb.o:                                             ; preds = %.loopexit.i
  %i.dv = zext nneg i32 %.lcssa to i64
  %i.dw = lshr i64 %.lcssa74, %i.dv               ; 2 uses
  %i.dx = add nsw i32 %.147, 10                   ; 2 uses
  %i.dy = icmp slt i32 %i.dx, %.0
  br i1 %i.dy, label %bb.i, label %._crit_edge.loopexit, !llvm.loop !185

bb.p:                                             ; preds = %bb.m
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

._crit_edge.loopexit:                             ; preds = %bb.o
  %i.ea = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.h
  %.sroa.035.1.lcssa = phi i64 [ %.sroa.035.050, %bb.h ], [ %i.dw, %._crit_edge.loopexit ]
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag:bb.a
  %i.az = icmp ult i64 %i.ay, %i.c
  br i1 %i.az, label %bb.x, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.c)
  %i.ba = add i64 %.sroa.speculated.i, %i.ax      ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.ax
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 9223372036854775807)
  %i.bd = select i1 %i.bb, i64 9223372036854775807, i64 %i.bc ; 3 uses
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #23
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bf = phi ptr [ %i.be, %bb.y ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bg = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bh = sub i64 %i.bg, %i.aw                    ; 4 uses
  %i.bi = icmp sgt i64 %i.bh, 1
  br i1 %i.bi, label %bb.z, label %bb.aa, !prof !189

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.av, i64 %i.bh, i1 false)
  br label %bb.ac

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  %i.bj = icmp eq i64 %i.bh, 1
  br i1 %i.bj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bk = load i8, ptr %i.av, align 1, !tbaa !125
  store i8 %i.bk, ptr %i.bf, align 1, !tbaa !125
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bl = getelementptr inbounds i8, ptr %i.bf, i64 %i.bh ; 3 uses
  %i.bm = icmp sgt i64 %i.c, 1
  br i1 %i.bm, label %bb.ad, label %bb.ae, !prof !189

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %2, i64 %i.c, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.bn = icmp eq i64 %i.c, 1
  br i1 %i.bn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bo = load i8, ptr %2, align 1, !tbaa !125
  store i8 %i.bo, ptr %i.bl, align 1, !tbaa !125
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.c ; 3 uses
  %i.bq = sub i64 %i.i, %i.bg                     ; 4 uses
  %i.br = icmp sgt i64 %i.bq, 1
  br i1 %i.br, label %bb.ah, label %bb.ai, !prof !189

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr align 1 %1, i64 %i.bq, i1 false)
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.bs = icmp eq i64 %i.bq, 1
  br i1 %i.bs, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.bt = load i8, ptr %1, align 1, !tbaa !125
  store i8 %i.bt, ptr %i.bp, align 1, !tbaa !125
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.bu = getelementptr inbounds i8, ptr %i.bp, i64 %i.bq
  %.not.i59 = icmp eq ptr %i.av, null
  br i1 %.not.i59, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bv = load ptr, ptr %i.d, align 8, !tbaa !131
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = sub i64 %i.bw, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bx) #20
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %bb.ak, %bb.al
  store ptr %i.bf, ptr %0, align 8, !tbaa !130
  store ptr %i.bu, ptr %i.f, align 8, !tbaa !140
  %i.by = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store ptr %i.by, ptr %i.d, align 8, !tbaa !131
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8rawspeed23PanasonicV5Decompressor12processBlockIL_ZNS0_17FourteenBitPacketEEEEvRKNS0_5BlockE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca i32, align 4            ; 5 uses
  %2 = alloca %"class.rawspeed::PanasonicV5Decompressor::ProxyStream", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.a, i8 0, i64 36, i1 false)
  store i16 -8531, ptr %i.b, align 4, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !27
  invoke void @_ZN8rawspeed23PanasonicV5Decompressor11ProxyStream10parseBlockEv(ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.e = load i32, ptr %i.c, align 8, !tbaa !27   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.g = load i32, ptr %i.f, align 8, !tbaa !22   ; 3 uses
  %i.h = icmp uge i32 %i.g, %i.e
  call void @llvm.assume(i1 %i.h)
  %i.i = icmp sgt i32 %i.g, -1
  call void @llvm.assume(i1 %i.i)
  %i.j = zext i32 %i.e to i64
  %i.k = sub nuw i32 %i.g, %i.e                   ; 5 uses
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j ; 2 uses
  %i.n = icmp samesign ult i32 %i.k, 4
  br i1 %i.n, label %bb.c, label %_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit

bb.c:                                             ; preds = %bb.b
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.11, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_14BitStreamerLSBEEC2ENS_10Array1DRefIKSt4byteEE) #11
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  unreachable

_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.q = load i32, ptr %i.p, align 4, !tbaa !128  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.t = load i32, ptr %i.s, align 4, !tbaa !115  ; 3 uses
  %.not49 = icmp sgt i32 %i.q, %i.t
  br i1 %.not49, label %._crit_edge54, label %.lr.ph53

.lr.ph53:                                         ; preds = %_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !18     ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 568
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 592
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 608
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 612
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.ab = add nuw nsw i32 %i.k, 8
  %i.ac = zext nneg i32 %i.k to i64
  %i.ad = zext nneg i32 %i.ab to i64
  br label %bb.f

._crit_edge54:                                    ; preds = %._crit_edge, %_ZN8rawspeed14BitStreamerLSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !130 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i, label %_ZN8rawspeed23PanasonicV5Decompressor11ProxyStreamD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge54
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !131
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #20
  br label %_ZN8rawspeed23PanasonicV5Decompressor11ProxyStreamD2Ev.exit

_ZN8rawspeed23PanasonicV5Decompressor11ProxyStreamD2Ev.exit: ; preds = %._crit_edge54, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.f:                                             ; preds = %.lr.ph53, %._crit_edge
  %.02752 = phi i32 [ %i.q, %.lr.ph53 ], [ %i.cs, %._crit_edge ] ; 6 uses
  %.sroa.1838.051 = phi i32 [ 0, %.lr.ph53 ], [ %.sroa.1838.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.035.050 = phi i64 [ 0, %.lr.ph53 ], [ %.sroa.035.1.lcssa, %._crit_edge ] ; 2 uses
  %i.al = icmp eq i32 %i.q, %.02752
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.am = load i32, ptr %i.o, align 8, !tbaa !132
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.026 = phi i32 [ %i.am, %bb.g ], [ 0, %bb.f ]  ; 3 uses
  %i.an = icmp eq i32 %i.t, %.02752
  %spec.select = select i1 %i.an, ptr %i.r, ptr %i.v
  %.0 = load i32, ptr %spec.select, align 8, !tbaa !126 ; 3 uses
  %3 = srem i32 %.026, 9
  %4 = icmp eq i32 %3, 0
  call void @llvm.assume(i1 %4)
  %5 = srem i32 %.0, 9
  %6 = icmp eq i32 %5, 0
  call void @llvm.assume(i1 %6)
  %i.ao = icmp slt i32 %.026, %.0
  br i1 %i.ao, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.ap = load ptr, ptr %i.w, align 8, !tbaa !133, !noalias !196
  %i.aq = load i32, ptr %i.x, align 8, !tbaa !106, !noalias !196
  %i.ar = load i32, ptr %i.y, align 8, !tbaa !134, !noalias !196
  %i.as = mul nsw i32 %i.ar, %i.aq                ; 2 uses
  %i.at = load i32, ptr %i.z, align 4, !tbaa !135, !noalias !196
  %i.au = load i32, ptr %i.aa, align 8, !tbaa !136, !noalias !196
  %i.av = ashr i32 %i.au, 1                       ; 3 uses
  %i.aw = icmp ne i32 %i.av, 0
  call void @llvm.assume(i1 %i.aw)
  %i.ax = icmp sge i32 %i.av, %i.as
  call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp samesign ult i32 %.02752, %i.at
  %i.az = mul nuw nsw i32 %i.av, %.02752
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.ba
  %i.bc = zext nneg i32 %i.as to i64
  %i.bd = zext nneg i32 %.sroa.1838.051 to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.p
  %.147 = phi i32 [ %.026, %.lr.ph ], [ %i.co, %bb.p ] ; 2 uses
  %.sroa.1838.146 = phi i64 [ %i.bd, %.lr.ph ], [ %indvars.iv.next, %bb.p ]
  %.sroa.035.145 = phi i64 [ %.sroa.035.050, %.lr.ph ], [ %i.cn, %bb.p ]
  %i.be = zext i32 %.147 to i64
  br label %bb.j

bb.j:                                             ; preds = %.prol.loopexit, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %.prol.loopexit ], [ %.sroa.1838.146, %bb.i ] ; 4 uses
  %.sroa.035.2 = phi i64 [ %.lcssa74.unr, %.prol.loopexit ], [ %.sroa.035.145, %bb.i ]
  %i.bf = phi i32 [ %.lcssa.unr, %.prol.loopexit ], [ 0, %bb.i ] ; 5 uses
  %.038.i = phi i32 [ %i.ck, %.prol.loopexit ], [ 0, %bb.i ] ; 2 uses
  %.01137.i = phi i64 [ %indvars.iv.next.i.lcssa.unr, %.prol.loopexit ], [ %i.be, %bb.i ]
  %i.bg = icmp samesign ult i32 %i.bf, 65
  call void @llvm.assume(i1 %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 4 uses
  %.not.i.i.i = icmp samesign ugt i64 %indvars.iv.next, %i.ac
  br i1 %.not.i.i.i, label %bb.l, label %bb.k, !prof !127

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  br label %.lr.ph.i

bb.l:                                             ; preds = %bb.j
  %i.bi = icmp samesign ugt i64 %indvars.iv, %i.ad
  br i1 %i.bi, label %bb.m, label %bb.n, !prof !127

bb.m:                                             ; preds = %bb.l
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerLSBEE8getInputEv) #11
          to label %.noexc31 unwind label %bb.q

.noexc31:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  store i32 0, ptr %.sroa.0.i.i.i, align 4
  %i.bj = trunc nuw nsw i64 %indvars.iv to i32
  %.sroa.speculated27.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.k, i32 %i.bj) ; 3 uses
  %i.bk = add nuw nsw i32 %.sroa.speculated27.i.i.i.i, 4
  %.sroa.speculated.i.i.i.i = call i32 @llvm.umin.i32(i32 %i.k, i32 %i.bk)
  %i.bl = sub nsw i32 %.sroa.speculated.i.i.i.i, %.sroa.speculated27.i.i.i.i ; 2 uses
  %i.bm = icmp samesign ult i32 %i.bl, 5
  call void @llvm.assume(i1 %i.bm)
  %i.bn = zext nneg i32 %.sroa.speculated27.i.i.i.i to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bn
  %i.bp = zext nneg i32 %i.bl to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i, ptr align 1 %i.bo, i64 %i.bp, i1 false)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %bb.k
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i = phi ptr [ %.sroa.0.i.i.i, %bb.n ], [ %i.bh, %bb.k ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.assume(i1 %i.ay)
  %i.bq = add nuw nsw i32 %i.bf, 18
  %i.br = udiv i32 %i.bq, 14
  %i.bs = add nuw nsw i32 %i.br, 1
  %xtraiter = and i32 %i.bs, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i
  %i.bt = or disjoint i32 %i.bf, 32
  %i.bu = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i to i64
  %i.bv = zext nneg i32 %i.bf to i64
  %i.bw = shl nuw nsw i64 %i.bu, %i.bv
  %i.bx = or i64 %i.bw, %.sroa.035.2
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.prol.preheader
  %indvars.iv.i.prol = phi i64 [ %.01137.i, %.prol.preheader ], [ %indvars.iv.next.i.prol, %bb.o ] ; 3 uses
  %i.by = phi i64 [ %i.bx, %.prol.preheader ], [ %i.cc, %bb.o ] ; 2 uses
  %i.bz = phi i32 [ %i.bt, %.prol.preheader ], [ %i.cd, %bb.o ]
  %prol.iter = phi i32 [ 0, %.prol.preheader ], [ %prol.iter.next, %bb.o ]
  %i.ca = trunc i64 %i.by to i16
  %i.cb = and i16 %i.ca, 16383
  %i.cc = lshr i64 %i.by, 14                      ; 2 uses
  %i.cd = add nsw i32 %i.bz, -14                  ; 2 uses
  %i.ce = icmp samesign ult i64 %indvars.iv.i.prol, %i.bc
  call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv.i.prol
  store i16 %i.cb, ptr %i.cf, align 2, !tbaa !138
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %bb.o, !llvm.loop !192

.prol.loopexit:                                   ; preds = %bb.o, %.lr.ph.i
  %.lcssa74.unr = phi i64 [ poison, %.lr.ph.i ], [ %i.cc, %bb.o ] ; 2 uses
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i ], [ %i.cd, %bb.o ] ; 2 uses
  %indvars.iv.next.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i ], [ %indvars.iv.next.i.prol, %bb.o ]
  %i.cg = trunc nuw i32 %i.bf to i8
  %.lhs.trunc = add nuw nsw i8 %i.cg, 18
  %i.ch = udiv i8 %.lhs.trunc, 14
  %.zext = zext nneg i8 %i.ch to i32              ; 2 uses
  %i.ci = add i32 %.038.i, %.zext
  %i.cj = add i32 %.038.i, 1
  %i.ck = add i32 %i.cj, %.zext
  %i.cl = icmp slt i32 %i.ci, 8
  br i1 %i.cl, label %bb.j, label %bb.p, !llvm.loop !193

bb.p:                                             ; preds = %.prol.loopexit
  %i.cm = zext nneg i32 %.lcssa.unr to i64
  %i.cn = lshr i64 %.lcssa74.unr, %i.cm           ; 2 uses
  %i.co = add nsw i32 %.147, 9                    ; 2 uses
  %i.cp = icmp slt i32 %i.co, %.0
  br i1 %i.cp, label %bb.i, label %._crit_edge.loopexit, !llvm.loop !194

bb.q:                                             ; preds = %bb.m
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

._crit_edge.loopexit:                             ; preds = %bb.p
  %i.cr = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.h
  %.sroa.035.1.lcssa = phi i64 [ %.sroa.035.050, %bb.h ], [ %i.cn, %._crit_edge.loopexit ]
  %.sroa.1838.1.lcssa = phi i32 [ %.sroa.1838.051, %bb.h ], [ %i.cr, %._crit_edge.loopexit ]
  %i.cs = add i32 %.02752, 1
  %exitcond.not = icmp eq i32 %.02752, %i.t
  br i1 %exitcond.not, label %._crit_edge54, label %bb.f, !llvm.loop !195

bb.r:                                             ; preds = %bb.q, %bb.e
  %.pn = phi { ptr, i32 } [ %i.cq, %bb.q ], [ %i.ak, %bb.e ]
  %i.ct = load ptr, ptr %i.a, align 8, !tbaa !130 ; 3 uses
  %.not.i.i.i.i32 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i32, label %_ZN8rawspeed23PanasonicV5Decompressor11ProxyStreamD2Ev.exit33, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !131
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.ct to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cy) #20
  br label %_ZN8rawspeed23PanasonicV5Decompressor11ProxyStreamD2Ev.exit33

_ZN8rawspeed23PanasonicV5Decompressor11ProxyStreamD2Ev.exit33: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { cold noreturn }
attributes #12 = { cold mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { builtin nounwind }
attributes #21 = { nounwind }
attributes #22 = { noreturn }
end_hunk_2
