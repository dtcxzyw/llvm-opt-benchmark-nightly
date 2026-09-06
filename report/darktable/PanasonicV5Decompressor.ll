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
  %i.ag = udiv i64 %i.ae, %i.af
  %4 = icmp uge i64 %i.ae, %i.af
  tail call void @llvm.assume(i1 %4)
  %i.ah = add nsw i64 %i.ag, -1
  %i.ai = lshr i64 %i.ah, 10                      ; 2 uses
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !109
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !22 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !27 ; 4 uses
  %i.ap = icmp uge i32 %i.am, %i.ao
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp sgt i32 %i.am, -1
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = sub nuw i32 %i.am, %i.ao
  %i.as = lshr i32 %i.ar, 14
  %i.at = zext nneg i32 %i.as to i64
  %.not24 = icmp samesign ult i64 %i.ai, %i.at
  br i1 %.not24, label %bb.s, label %bb.p

bb.p:                                             ; preds = %_ZN8rawspeed19roundUpDivisionSafeEmm.exit
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed23PanasonicV5DecompressorC2ENS_8RawImageENS_10ByteStreamEj) #11
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.s:                                             ; preds = %_ZN8rawspeed19roundUpDivisionSafeEmm.exit
  %i.av = trunc nuw nsw i64 %i.aj to i32
  %i.aw = shl nuw nsw i32 %i.av, 14               ; 2 uses
  %i.ax = zext i32 %i.ao to i64                   ; 2 uses
  %i.ay = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.az = add nuw nsw i64 %i.ay, %i.ax
  %i.ba = zext nneg i32 %i.am to i64
  %.not.i.i.i.i = icmp samesign ugt i64 %i.az, %i.ba
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #11
          to label %.noexc22 unwind label %bb.w

.noexc22:                                         ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bb = load ptr, ptr %2, align 8, !tbaa !21, !noalias !151
  %i.bc = add nuw nsw i32 %i.aw, %i.ao
  %i.bd = icmp samesign ule i32 %i.bc, %i.am
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ax
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bg = load i16, ptr %i.bf, align 4, !tbaa !25, !noalias !151
  %.sroa.4.8.insert.ext.i.i.i = zext i16 %i.bg to i64
  %.sroa.4.8.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.4.8.insert.ext.i.i.i, 32
  %.sroa.2.8.insert.insert.i.i.i = or disjoint i64 %.sroa.4.8.insert.shift.i.i.i, %i.ay
  store ptr %i.be, ptr %i.d, align 8
  store i64 %.sroa.2.8.insert.insert.i.i.i, ptr %i.e, align 8
  store i32 0, ptr %i.g, align 8
  invoke void @_ZN8rawspeed23PanasonicV5Decompressor19chopInputIntoBlocksERKNS0_9PacketDscE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(8) %.0)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  ret void

bb.w:                                             ; preds = %bb.t
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %bb.k, %bb.x, %bb.w, %bb.r, %bb.f
  %.pn20 = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.r, %bb.k ], [ %i.au, %bb.r ], [ %i.bi, %bb.x ], [ %i.bh, %bb.w ]
  %i.bj = load ptr, ptr %i.i, align 8, !tbaa !110 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8rawspeed23PanasonicV5Decompressor5BlockESaIS2_EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !111
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bj to i64
  %i.bo = sub i64 %i.bm, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bo) #20
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
