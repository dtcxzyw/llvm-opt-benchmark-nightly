Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/PanasonicV4Decompressor?download=true
inline.NumInlined: 582
inline.NumDeleted: 316
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::array.64" = type { [8192 x i8] }
%"class.rawspeed::ByteStream" = type { %"class.rawspeed::DataBuffer.base", i32, [4 x i8] }
%"class.rawspeed::DataBuffer.base" = type { %"class.rawspeed::Buffer.base", i16 }
%"class.rawspeed::Buffer.base" = type <{ ptr, i32 }>
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%"class.rawspeed::PanasonicV4Decompressor::ProxyStream" = type <{ %"class.rawspeed::ByteStream", i32, [4 x i8], %"class.std::vector.54", i32, [4 x i8] }>
%"class.std::vector.54" = type { %"struct.std::_Vector_base.55" }
%"struct.std::_Vector_base.55" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::array.73" = type { [2 x i32] }
%"class.std::vector.24" = type { %"struct.std::_Vector_base.25" }
%"struct.std::_Vector_base.25" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz = comdat any

$_ZN8rawspeed8RawImageD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNK8rawspeed23PanasonicV4Decompressor18processPixelPacketERNS0_11ProxyStreamEiiPSt6vectorIjSaIjEE = comdat any

$_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz = comdat any

$_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc = comdat any

$_ZN8rawspeed17RawspeedExceptionC2EPKc = comdat any

$_ZN8rawspeed17RawspeedException3logEPKc = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN8rawspeed23PanasonicV4Decompressor11ProxyStream10parseBlockEv = comdat any

$_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag = comdat any

$_ZNSt6vectorIjSaIjEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPjS1_EEEEvS6_T_S7_St20forward_iterator_tag = comdat any

$_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc = comdat any

$_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf = comdat any

$_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf = comdat any

@.str = private unnamed_addr constant [52 x i8] c"%s, line 57: Unexpected component count / data type\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed23PanasonicV4DecompressorC2ENS_8RawImageENS_10ByteStreamEbj = private unnamed_addr constant [97 x i8] c"rawspeed::PanasonicV4Decompressor::PanasonicV4Decompressor(RawImage, ByteStream, bool, uint32_t)\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"%s, line 61: Unexpected image dimensions found: (%i; %i)\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"%s, line 66: Bad section_split_offset: %u, less than BlockSize (%u)\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"%s, line 81: Raw dimensions require input buffer larger than supported\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"%s, line 80: Buffer overflow: image file may be truncated\00", align 1
@__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj = private unnamed_addr constant [64 x i8] c"Buffer rawspeed::Buffer::getSubView(size_type, size_type) const\00", align 1
@_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf = linkonce_odr hidden thread_local global %"struct.std::array.64" zeroinitializer, comdat, align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"EXCEPTION: %s\00", align 1
@_ZTIN8rawspeed11IOExceptionE = external constant ptr
@_ZTVN8rawspeed11IOExceptionE = external constant { [6 x ptr] }, align 8
@_ZTVN8rawspeed17RawspeedExceptionE = external constant { [6 x ptr] }, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf = linkonce_odr hidden thread_local global %"struct.std::array.64" zeroinitializer, comdat, align 1
@_ZTIN8rawspeed19RawDecoderExceptionE = external constant ptr
@_ZTVN8rawspeed19RawDecoderExceptionE = external constant { [6 x ptr] }, align 8

@_ZN8rawspeed23PanasonicV4DecompressorC1ENS_8RawImageENS_10ByteStreamEbj = hidden unnamed_addr alias void (ptr, ptr, ptr, i1, i32), ptr @_ZN8rawspeed23PanasonicV4DecompressorC2ENS_8RawImageENS_10ByteStreamEbj

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed23PanasonicV4DecompressorC2ENS_8RawImageENS_10ByteStreamEbj(ptr noundef nonnull align 8 dereferenceable(72) initializes((0, 30), (32, 36), (40, 41), (44, 72)) %0, ptr nofree noundef align 8 captures(none) %1, ptr nofree noundef readonly byval(%"class.rawspeed::ByteStream") align 8 captures(none) %2, i1 noundef zeroext %3, i32 noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x ptr>, ptr %1, align 8, !tbaa !144
  store ptr null, ptr %i.b, align 8, !tbaa !15
  store <2 x ptr> %i.c, ptr %0, align 8, !tbaa !144
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
  %i.i = xor i1 %3, true
  %i.j = zext i1 %i.i to i8
  store i8 %i.j, ptr %i.h, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %4, ptr %i.k, align 4, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.m = load ptr, ptr %0, align 8, !tbaa !18     ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 592
  %i.o = load i32, ptr %i.n, align 8, !tbaa !107
  %.not = icmp eq i32 %i.o, 1
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 553
  %i.q = load i8, ptr %i.p, align 1, !tbaa !145
  %.not14 = icmp eq i8 %i.q, 0
  br i1 %.not14, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 596
  %i.s = load i32, ptr %i.r, align 4, !tbaa !146
  %.not15 = icmp eq i32 %i.s, 2
  br i1 %.not15, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed23PanasonicV4DecompressorC2ENS_8RawImageENS_10ByteStreamEbj) #13
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %.invoke, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.g:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.v = load i32, ptr %i.u, align 8, !tbaa !147  ; 4 uses
  %i.w = icmp sgt i32 %i.v, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 44
  %i.y = load i32, ptr %i.x, align 4              ; 3 uses
  %i.z = icmp sgt i32 %i.y, 0
  %i.aa = select i1 %i.w, i1 %i.z, i1 false
  %i.ab = urem i32 %i.v, 14
  %.not16 = icmp eq i32 %i.ab, 0
  %or.cond = and i1 %.not16, %i.aa
  br i1 %or.cond, label %bb.h, label %.invoke

bb.h:                                             ; preds = %bb.g
  %i.ac = icmp ugt i32 %4, 16384
  br i1 %i.ac, label %.invoke, label %bb.i

.invoke:                                          ; preds = %bb.h, %bb.g
  %i.ad = phi ptr [ @.str.1, %bb.g ], [ @.str.2, %bb.h ]
  %i.ae = phi i32 [ %i.v, %bb.g ], [ %4, %bb.h ]
  %i.af = phi i32 [ %i.y, %bb.g ], [ 16384, %bb.h ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull %i.ad, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed23PanasonicV4DecompressorC2ENS_8RawImageENS_10ByteStreamEbj, i32 noundef %i.ae, i32 noundef %i.af) #13
          to label %.cont unwind label %bb.f

.cont:                                            ; preds = %.invoke
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ag = zext nneg i32 %i.v to i64
  %i.ah = zext nneg i32 %i.y to i64
  %i.ai = mul nuw nsw i64 %i.ah, %i.ag            ; 2 uses
  %5 = urem i64 %i.ai, 14
  %6 = icmp eq i64 %5, 0
  tail call void @llvm.assume(i1 %6)
  %7 = udiv exact i64 %i.ai, 14                   ; 2 uses
  %8 = shl nuw nsw i64 %7, 4                      ; 3 uses
  %i.aj = icmp eq i32 %4, 0
  br i1 %i.aj, label %_ZN8rawspeed7roundUpEmm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = and i64 %7, 1023
  %i.al = icmp eq i64 %i.ak, 0
  %i.am = add nuw nsw i64 %8, 16384
  %.0.i.i = and i64 %i.am, 9223372036854759424
  %spec.select = select i1 %i.al, i64 %8, i64 %.0.i.i
  br label %_ZN8rawspeed7roundUpEmm.exit

_ZN8rawspeed7roundUpEmm.exit:                     ; preds = %bb.j, %bb.i
  %i.an = phi i64 [ %8, %bb.i ], [ %spec.select, %bb.j ] ; 4 uses
  %i.ao = icmp samesign ugt i64 %i.an, 4294967295
  br i1 %i.ao, label %bb.k, label %bb.n

bb.k:                                             ; preds = %_ZN8rawspeed7roundUpEmm.exit
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed23PanasonicV4DecompressorC2ENS_8RawImageENS_10ByteStreamEbj) #13
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.p, %bb.k
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.n:                                             ; preds = %_ZN8rawspeed7roundUpEmm.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !27, !noalias !148 ; 2 uses
  %i.as = zext i32 %i.ar to i64                   ; 2 uses
  %i.at = add nuw nsw i64 %i.an, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !22, !noalias !149 ; 3 uses
  %i.aw = zext i32 %i.av to i64
  %.not.i.i.i = icmp samesign ugt i64 %i.at, %i.aw
  br i1 %.not.i.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #13
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ax = trunc nuw i64 %i.an to i32              ; 2 uses
  %i.ay = load ptr, ptr %2, align 8, !tbaa !21, !noalias !149
  %i.az = icmp sgt i32 %i.av, -1
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i32 %i.ar, %i.ax
  %i.bb = icmp samesign ule i32 %i.ba, %i.av
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.as
  %i.bd = icmp sgt i32 %i.ax, -1
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bf = load i16, ptr %i.be, align 4, !tbaa !25, !noalias !149
  %.sroa.4.8.insert.ext.i.i = zext i16 %i.bf to i64
  %.sroa.4.8.insert.shift.i.i = shl nuw nsw i64 %.sroa.4.8.insert.ext.i.i, 32
  %.sroa.2.8.insert.insert.i.i = or disjoint i64 %.sroa.4.8.insert.shift.i.i, %i.an
  store ptr %i.bc, ptr %i.d, align 8
  store i64 %.sroa.2.8.insert.insert.i.i, ptr %i.e, align 8
  store i32 0, ptr %i.g, align 8
  invoke void @_ZN8rawspeed23PanasonicV4Decompressor19chopInputIntoBlocksEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %bb.q unwind label %bb.m

bb.q:                                             ; preds = %bb.p
  ret void

bb.r:                                             ; preds = %bb.o
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %bb.m, %bb.r, %bb.f
  %.pn18 = phi { ptr, i32 } [ %i.t, %bb.f ], [ %i.ap, %bb.m ], [ %i.bg, %bb.r ]
  %i.bh = load ptr, ptr %i.l, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !109
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #22
  br label %_ZNSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EED2Ev.exit

_ZNSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EED2Ev.exit: ; preds = %bb.s, %bb.t
  tail call void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #23
  resume { ptr, i32 } %.pn18
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #23 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed19RawDecoderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed23PanasonicV4Decompressor19chopInputIntoBlocksEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !166  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !22   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27   ; 3 uses
  %i.i = icmp uge i32 %i.f, %i.h
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp sgt i32 %i.f, -1
  tail call void @llvm.assume(i1 %i.j)
  %.not.i = icmp ne i32 %i.f, %i.h
  %i.k = xor i32 %i.h, -1
  %.lhs.trunc = add i32 %i.f, %i.k
  %i.l = lshr i32 %.lhs.trunc, 14
  %narrow = add nuw nsw i32 %i.l, 1
  %i.m = zext nneg i32 %narrow to i64             ; 4 uses
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !109
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !108
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s
  %i.u = sdiv exact i64 %i.t, 40
  %i.v = icmp ult i64 %i.u, %i.m
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !110  ; 2 uses
  br i1 %i.v, label %_ZNSt12_Vector_baseIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE7reserveEm.exit

_ZNSt12_Vector_baseIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.a
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.s
  %i.aa = mul nuw nsw i64 %i.m, 40
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #25 ; 4 uses
  %i.ac = load ptr, ptr %i.n, align 8, !tbaa !108 ; 5 uses
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !110 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %i.ab, %_ZNSt12_Vector_baseIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %i.ac, %_ZNSt12_Vector_baseIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i, i64 40, i1 false), !alias.scope !167
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %.not.i.i.i.i = icmp eq ptr %i.ae, %i.ad
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !153

_ZNSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.ac, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.ag = load ptr, ptr %i.o, align 8, !tbaa !109
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ac to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.aj) #22
  br label %_ZNSt12_Vector_baseIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.b, %_ZNSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.ab, ptr %i.n, align 8, !tbaa !108
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z ; 2 uses
  store ptr %i.ak, ptr %i.w, align 8, !tbaa !110
  %i.al = getelementptr inbounds nuw [40 x i8], ptr %i.ab, i64 %i.m
  store ptr %i.al, ptr %i.o, align 8, !tbaa !109
  br label %_ZNSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE7reserveEm.exit: ; preds = %bb.a, %_ZNSt12_Vector_baseIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %.pre.i = phi ptr [ %i.ak, %_ZNSt12_Vector_baseIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ %i.x, %bb.a ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 28
end_hunk_0
begin_hunk_1_@_ZN8rawspeed23PanasonicV4Decompressor19chopInputIntoBlocksEv:bb.a
_ZNKSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.e
  %i.bt = sdiv exact i64 %i.br, 40                ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 1)
  %i.bu = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.bt ; 2 uses
  %i.bv = icmp ult i64 %i.bu, %i.bt
  %i.bw = tail call i64 @llvm.umin.i64(i64 %i.bu, i64 230584300921369395)
  %i.bx = select i1 %i.bv, i64 230584300921369395, i64 %i.bw ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.bx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.by = mul nuw nsw i64 %i.bx, 40
  %i.bz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #25 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.br ; 5 uses
  store ptr %i.be, ptr %i.ca, align 8
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i64 %.sroa.2.8.insert.insert.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx5.i, align 8
  %.sroa.6.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store i32 0, ptr %.sroa.6.0..sroa_idx7.i, align 8
  %.sroa.711.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %.sroa.711.0..sroa_idx12.i, align 8
  %.sroa.8.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  store i64 %.sroa.0.0.insert.insert.i15.i.i, ptr %.sroa.8.0..sroa_idx14.i, align 8
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.bo, %i.ao
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZNKSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.bz, %_ZNKSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.bo, %_ZNKSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i.i.i.i.i, i64 40, i1 false), !alias.scope !171
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cb, %i.ao
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !153

_ZNSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.bz, %_ZNKSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ], [ %i.cc, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i23.i.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i23.i.i.i.i.i, label %_ZNSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i
  %i.ce = load ptr, ptr %i.o, align 8, !tbaa !109
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = sub i64 %i.cf, %i.bq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.cg) #22
  br label %_ZNSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i.i
  store ptr %i.bz, ptr %i.n, align 8, !tbaa !108
  store ptr %i.cd, ptr %i.an, align 8, !tbaa !110
  %i.ch = getelementptr inbounds nuw [40 x i8], ptr %i.bz, i64 %i.bx
  store ptr %i.ch, ptr %i.o, align 8, !tbaa !109
  br label %_ZNSt20back_insert_iteratorISt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS3_EEEaSEOS3_.exit.i

_ZNSt20back_insert_iteratorISt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS3_EEEaSEOS3_.exit.i: ; preds = %_ZNSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i, %bb.d
  %i.ci = phi ptr [ %i.bn, %bb.d ], [ %i.cd, %_ZNSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i ] ; 2 uses
  %i.cj = add nsw i64 %.017.i, -1                 ; 2 uses
  %.not.i7 = icmp eq i64 %i.cj, 0
  br i1 %.not.i7, label %"_ZSt10generate_nISt20back_insert_iteratorISt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS4_EEEmZNS3_19chopInputIntoBlocksEvE3$_0ET_S9_T0_T1_.exit", label %bb.c, !llvm.loop !165

"_ZSt10generate_nISt20back_insert_iteratorISt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS4_EEEmZNS3_19chopInputIntoBlocksEvE3$_0ET_S9_T0_T1_.exit": ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS3_EEEaSEOS3_.exit.i
  %i.ck = load ptr, ptr %0, align 8, !tbaa !18
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.cm = getelementptr inbounds i8, ptr %i.ci, i64 -8
  %i.cn = load i64, ptr %i.cl, align 8
  store i64 %i.cn, ptr %i.cm, align 8
  %i.co = load ptr, ptr %i.an, align 8, !tbaa !172
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -4 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !113
  %i.cr = add nsw i32 %i.cq, -1
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !113
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !175
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !176
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !115
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !call_target !120, !inline_history !173
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !115
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !call_target !122, !inline_history !173
  br label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !123
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !124
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !177

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23
  br label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK8rawspeed23PanasonicV4Decompressor12processBlockERKNS0_5BlockEPSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rawspeed::PanasonicV4Decompressor::ProxyStream", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.b, ptr %i.c, align 8, !tbaa !130
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.d, i8 0, i64 28, i1 false)
  invoke void @_ZN8rawspeed23PanasonicV4Decompressor11ProxyStream10parseBlockEv(ptr noundef nonnull align 8 dereferenceable(60) %3)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !131  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !132
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #22
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !180  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !113  ; 2 uses
  %.not24 = icmp sgt i32 %i.n, %i.q
  br i1 %.not24, label %._crit_edge28, label %.lr.ph27

._crit_edge28:                                    ; preds = %._crit_edge, %bb.d
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !131  ; 3 uses
  %.not.i.i.i.i21 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i21, label %_ZN8rawspeed23PanasonicV4Decompressor11ProxyStreamD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge28
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !132
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #22
  br label %_ZN8rawspeed23PanasonicV4Decompressor11ProxyStreamD2Ev.exit

_ZN8rawspeed23PanasonicV4Decompressor11ProxyStreamD2Ev.exit: ; preds = %._crit_edge28, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

.lr.ph27:                                         ; preds = %bb.d, %._crit_edge
  %i.x = phi i32 [ %i.ah, %._crit_edge ], [ %i.q, %bb.d ] ; 2 uses
  %.02025 = phi i32 [ %i.ai, %._crit_edge ], [ %i.n, %bb.d ] ; 5 uses
  %i.y = load i32, ptr %i.m, align 4, !tbaa !180
  %i.z = icmp eq i32 %i.y, %.02025
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph27
  %i.aa = load i32, ptr %i.l, align 8, !tbaa !181
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph27
  %.019 = phi i32 [ %i.aa, %bb.f ], [ 0, %.lr.ph27 ] ; 3 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = icmp eq i32 %i.x, %.02025
  %spec.select = select i1 %i.ad, ptr %i.o, ptr %i.ac
  %.0 = load i32, ptr %spec.select, align 8, !tbaa !124 ; 3 uses
  %4 = srem i32 %.019, 14
  %5 = icmp eq i32 %4, 0
  call void @llvm.assume(i1 %5)
  %6 = srem i32 %.0, 14
  %7 = icmp eq i32 %6, 0
  call void @llvm.assume(i1 %7)
  %i.ae = icmp slt i32 %.019, %.0
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %.123 = phi i32 [ %i.af, %.lr.ph ], [ %.019, %bb.g ] ; 2 uses
  call void @_ZNK8rawspeed23PanasonicV4Decompressor18processPixelPacketERNS0_11ProxyStreamEiiPSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(60) %3, i32 noundef %.02025, i32 noundef %.123, ptr noundef %2) #23
  %i.af = add nsw i32 %.123, 14                   ; 2 uses
  %i.ag = icmp slt i32 %i.af, %.0
  br i1 %i.ag, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !178

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %i.p, align 4, !tbaa !113
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.g
  %i.ah = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.x, %bb.g ] ; 2 uses
  %i.ai = add nsw i32 %.02025, 1
  %.not.not = icmp slt i32 %.02025, %i.ah
  br i1 %.not.not, label %.lr.ph27, label %._crit_edge28, !llvm.loop !179

.body:                                            ; preds = %bb.b, %bb.c
  %i.aj = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.aj) #26
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK8rawspeed23PanasonicV4Decompressor18processPixelPacketERNS0_11ProxyStreamEiiPSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(60) %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::array.73", align 4    ; 7 uses
  %6 = alloca %"struct.std::array.73", align 4    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !18     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 568
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !185, !noalias !186
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  %i.e = load i32, ptr %i.d, align 8, !tbaa !107, !noalias !186
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.g = load i32, ptr %i.f, align 8, !tbaa !187, !noalias !186
  %i.h = mul nsw i32 %i.g, %i.e                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 612
  %i.j = load i32, ptr %i.i, align 4, !tbaa !188, !noalias !186
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !189, !noalias !186
  %i.m = ashr i32 %i.l, 1                         ; 2 uses
  %i.n = icmp sge i32 %i.m, %i.h
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i32 0, ptr %5, align 4, !tbaa !124
  %.06.i.i.i.i.ptr.1.i = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %.06.i.i.i.i.ptr.1.i, align 4, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i32 0, ptr %6, align 4, !tbaa !124
  %.06.i.i.i.i.ptr.1.i43 = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %.06.i.i.i.i.ptr.1.i43, align 4, !tbaa !124
  %i.o = icmp samesign ult i32 %2, %i.j
  tail call void @llvm.assume(i1 %i.o)
  %i.p = mul nuw nsw i32 %i.m, %2
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.v = shl i32 %2, 16
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.y = zext i32 %3 to i64
  %i.z = zext nneg i32 %i.h to i64
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void

bb.c:                                             ; preds = %bb.a, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %indvars.iv = phi i64 [ %i.y, %bb.a ], [ %indvars.iv.next, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 4 uses
  %.069 = phi i32 [ 0, %bb.a ], [ %i.dn, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 3 uses
  %.03668 = phi i32 [ 0, %bb.a ], [ %i.dm, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 2 uses
  %.03767 = phi i32 [ 0, %bb.a ], [ %.138, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ]
  %i.aa = and i32 %.069, 1
  %i.ab = icmp eq i32 %.03668, 2
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = load i32, ptr %i.t, align 8, !tbaa !190
  %i.ad = add nsw i32 %i.ac, -2                   ; 2 uses
  %i.ae = and i32 %i.ad, 131071                   ; 2 uses
  store i32 %i.ae, ptr %i.t, align 8, !tbaa !190
  %i.af = lshr i32 %i.ae, 3
  %i.ag = xor i32 %i.af, 16368
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = load ptr, ptr %i.u, align 8, !tbaa !131
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ah
  %i.ak = load i16, ptr %i.aj, align 1
  %i.al = zext i16 %i.ak to i32
  %i.am = and i32 %i.ad, 7
  %i.an = lshr i32 %i.al, %i.am
  %i.ao = and i32 %i.an, 3
  %i.ap = xor i32 %i.ao, 3
  %i.aq = lshr i32 4, %i.ap
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.138 = phi i32 [ %i.aq, %bb.d ], [ %.03767, %bb.c ] ; 5 uses
  %.1 = phi i32 [ -1, %bb.d ], [ %.03668, %bb.c ]
  %i.ar = zext nneg i32 %i.aa to i64              ; 4 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ar ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !124
  %.not = icmp eq i32 %i.at, 0
  %i.au = load i32, ptr %i.t, align 8, !tbaa !190 ; 2 uses
  %i.av = add i32 %i.au, 131064
  %i.aw = and i32 %i.av, 131071                   ; 3 uses
  store i32 %i.aw, ptr %i.t, align 8, !tbaa !190
  %i.ax = lshr i32 %i.aw, 3
  %i.ay = xor i32 %i.ax, 16368
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = load ptr, ptr %i.u, align 8, !tbaa !131 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.az
  %i.bc = load i16, ptr %i.bb, align 1
  %i.bd = zext i16 %i.bc to i32
  %i.be = and i32 %i.au, 7
  %i.bf = lshr i32 %i.bd, %i.be
  %i.bg = and i32 %i.bf, 255                      ; 5 uses
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not41 = icmp eq i32 %i.bg, 0
  br i1 %.not41, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.neg = shl nsw i32 -128, %.138
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ar ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !124 ; 2 uses
  %i.bj = add i32 %i.bi, %.neg                    ; 2 uses
  %i.bk = icmp slt i32 %i.bj, 0
  %i.bl = icmp eq i32 %.138, 4
  %or.cond = select i1 %i.bk, i1 true, i1 %i.bl
  %.neg42 = shl nsw i32 -1, %.138
  %i.bm = xor i32 %.neg42, -1
  %i.bn = and i32 %i.bi, %i.bm
  %storemerge = select i1 %or.cond, i32 %i.bn, i32 %i.bj
  %i.bo = shl nuw nsw i32 %i.bg, %.138
  %i.bp = add nsw i32 %storemerge, %i.bo
  store i32 %i.bp, ptr %i.bh, align 4, !tbaa !124
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  store i32 %i.bg, ptr %i.as, align 4, !tbaa !124
  %i.bq = icmp ne i32 %i.bg, 0
  %i.br = icmp samesign ugt i32 %.069, 11
  %or.cond3 = select i1 %i.bq, i1 true, i1 %i.br
  br i1 %or.cond3, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bs = shl nuw nsw i32 %i.bg, 4
  %i.bt = add nsw i32 %i.aw, -4                   ; 2 uses
  %i.bu = and i32 %i.bt, 131071                   ; 2 uses
  store i32 %i.bu, ptr %i.t, align 8, !tbaa !190
  %i.bv = lshr i32 %i.bu, 3
  %i.bw = xor i32 %i.bv, 16368
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 1
  %i.ca = zext i16 %i.bz to i32
  %i.cb = and i32 %i.bt, 7
  %i.cc = lshr i32 %i.ca, %i.cb
  %i.cd = and i32 %i.cc, 15
  %i.ce = or disjoint i32 %i.cd, %i.bs
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ar
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !124
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.g, %bb.i, %bb.h
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ar
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !124 ; 2 uses
  %i.ci = icmp samesign ult i64 %indvars.iv, %i.z
  tail call void @llvm.assume(i1 %i.ci)
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv
  %i.ck = trunc i32 %i.ch to i16
  store i16 %i.ck, ptr %i.cj, align 2, !tbaa !192
  %i.cl = load i8, ptr %i.s, align 8, !tbaa !37, !range !133, !noundef !134
  %i.cm = trunc nuw i8 %i.cl to i1
  %i.cn = icmp eq i32 %i.ch, 0
  %or.cond65 = select i1 %i.cm, i1 %i.cn, i1 false
  br i1 %or.cond65, label %bb.k, label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.k:                                             ; preds = %bb.j
end_hunk_1
