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
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x ptr>, ptr %1, align 8, !tbaa !15
  store ptr null, ptr %i.b, align 8, !tbaa !11
  store <2 x ptr> %i.c, ptr %0, align 8, !tbaa !15
  store ptr null, ptr %1, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 0, ptr %i.e, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i16 -8531, ptr %i.f, align 4, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = xor i1 %3, true
  %i.j = zext i1 %i.i to i8
  store i8 %i.j, ptr %i.h, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %4, ptr %i.k, align 4, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.m = load ptr, ptr %0, align 8, !tbaa !16     ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 592
  %i.o = load i32, ptr %i.n, align 8, !tbaa !39
  %.not = icmp eq i32 %i.o, 1
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 553
  %i.q = load i8, ptr %i.p, align 1, !tbaa !108
  %.not14 = icmp eq i8 %i.q, 0
  br i1 %.not14, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 596
  %i.s = load i32, ptr %i.r, align 4, !tbaa !109
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
  %i.v = load i32, ptr %i.u, align 8, !tbaa !110  ; 4 uses
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
  %i.aj = udiv i64 %i.ai, 14                      ; 2 uses
  %i.ak = shl nuw nsw i64 %i.aj, 4                ; 3 uses
  %i.al = icmp samesign ugt i64 %i.ai, 13
  tail call void @llvm.assume(i1 %i.al)
  %i.am = icmp eq i32 %4, 0
  br i1 %i.am, label %_ZN8rawspeed7roundUpEmm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = and i64 %i.aj, 1023
  %i.ao = icmp eq i64 %i.an, 0
  %i.ap = add nuw nsw i64 %i.ak, 16384
  %.0.i.i = and i64 %i.ap, 9223372036854759424
  %spec.select = select i1 %i.ao, i64 %i.ak, i64 %.0.i.i
  br label %_ZN8rawspeed7roundUpEmm.exit

_ZN8rawspeed7roundUpEmm.exit:                     ; preds = %bb.j, %bb.i
  %5 = phi i64 [ %i.ak, %bb.i ], [ %spec.select, %bb.j ] ; 4 uses
  %i.aq = icmp samesign ugt i64 %5, 4294967295
  br i1 %i.aq, label %bb.k, label %bb.n

bb.k:                                             ; preds = %_ZN8rawspeed7roundUpEmm.exit
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed23PanasonicV4DecompressorC2ENS_8RawImageENS_10ByteStreamEbj) #13
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.p, %bb.k
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.n:                                             ; preds = %_ZN8rawspeed7roundUpEmm.exit
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = load i32, ptr %i.as, align 8, !tbaa !26, !noalias !111 ; 2 uses
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = add nuw nsw i64 %5, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !22, !noalias !114 ; 3 uses
  %i.ay = zext i32 %i.ax to i64
  %.not.i.i.i = icmp samesign ugt i64 %i.av, %i.ay
  br i1 %.not.i.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #13
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.az = trunc nuw i64 %5 to i32                 ; 2 uses
  %i.ba = load ptr, ptr %2, align 8, !tbaa !19, !noalias !114
  %i.bb = icmp sgt i32 %i.ax, -1
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = add nuw nsw i32 %i.at, %i.az
  %i.bd = icmp samesign ule i32 %i.bc, %i.ax
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.au
  %i.bf = icmp sgt i32 %i.az, -1
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bh = load i16, ptr %i.bg, align 4, !tbaa !23, !noalias !114
  %.sroa.4.8.insert.ext.i.i = zext i16 %i.bh to i64
  %.sroa.4.8.insert.shift.i.i = shl nuw nsw i64 %.sroa.4.8.insert.ext.i.i, 32
  %.sroa.2.8.insert.insert.i.i = or disjoint i64 %.sroa.4.8.insert.shift.i.i, %5
  store ptr %i.be, ptr %i.d, align 8
  store i64 %.sroa.2.8.insert.insert.i.i, ptr %i.e, align 8
  store i32 0, ptr %i.g, align 8
  invoke void @_ZN8rawspeed23PanasonicV4Decompressor19chopInputIntoBlocksEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %bb.q unwind label %bb.m

bb.q:                                             ; preds = %bb.p
  ret void

bb.r:                                             ; preds = %bb.o
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %bb.m, %bb.r, %bb.f
  %.pn18 = phi { ptr, i32 } [ %i.t, %bb.f ], [ %i.ar, %bb.m ], [ %i.bi, %bb.r ]
  %i.bj = load ptr, ptr %i.l, align 8, !tbaa !117 ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !118
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bj to i64
  %i.bo = sub i64 %i.bm, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bo) #22
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !119  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !22   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26   ; 3 uses
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
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !118
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !117  ; 5 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %i.u = sdiv exact i64 %i.t, 40
  %i.v = icmp ult i64 %i.u, %i.m
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !120  ; 4 uses
  br i1 %i.v, label %_ZNSt12_Vector_baseIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE7reserveEm.exit

_ZNSt12_Vector_baseIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.a
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.s
  %i.aa = mul nuw nsw i64 %i.m, 40
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #25 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.q, %i.x
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %i.ab, %_ZNSt12_Vector_baseIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i ], [ %i.q, %_ZNSt12_Vector_baseIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i, i64 40, i1 false), !alias.scope !121
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %.not.i.i.i.i = icmp eq ptr %i.ac, %i.x
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !125

_ZNSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.q, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.t) #22
  br label %_ZNSt12_Vector_baseIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.b, %_ZNSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.ab, ptr %i.n, align 8, !tbaa !117
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z ; 2 uses
  store ptr %i.ae, ptr %i.w, align 8, !tbaa !120
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.ab, i64 %i.m
  store ptr %i.af, ptr %i.o, align 8, !tbaa !118
  br label %_ZNSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE7reserveEm.exit: ; preds = %bb.a, %_ZNSt12_Vector_baseIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %.pre.i = phi ptr [ %i.ae, %_ZNSt12_Vector_baseIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ %i.x, %bb.a ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS3_EEEaSEOS3_.exit.i, %_ZNSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE7reserveEm.exit
  %.0 = phi i32 [ 0, %_ZNSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE7reserveEm.exit ], [ %i.bc, %_ZNSt20back_insert_iteratorISt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS3_EEEaSEOS3_.exit.i ] ; 3 uses
  %i.ai = phi ptr [ %.pre.i, %_ZNSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE7reserveEm.exit ], [ %i.bz, %_ZNSt20back_insert_iteratorISt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS3_EEEaSEOS3_.exit.i ] ; 9 uses
end_hunk_0
