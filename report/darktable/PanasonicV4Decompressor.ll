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
  %i.aq = phi i64 [ %i.ak, %bb.i ], [ %spec.select, %bb.j ] ; 4 uses
  %i.ar = icmp samesign ugt i64 %i.aq, 4294967295
  br i1 %i.ar, label %bb.k, label %bb.n

bb.k:                                             ; preds = %_ZN8rawspeed7roundUpEmm.exit
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed23PanasonicV4DecompressorC2ENS_8RawImageENS_10ByteStreamEbj) #13
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.p, %bb.k
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.n:                                             ; preds = %_ZN8rawspeed7roundUpEmm.exit
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = load i32, ptr %i.at, align 8, !tbaa !27, !noalias !148 ; 2 uses
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %i.aw = add nuw nsw i64 %i.aq, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !22, !noalias !149 ; 3 uses
  %i.az = zext i32 %i.ay to i64
  %.not.i.i.i = icmp samesign ugt i64 %i.aw, %i.az
  br i1 %.not.i.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #13
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ba = trunc nuw i64 %i.aq to i32              ; 2 uses
  %i.bb = load ptr, ptr %2, align 8, !tbaa !21, !noalias !149
  %i.bc = icmp sgt i32 %i.ay, -1
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = add nuw nsw i32 %i.au, %i.ba
  %i.be = icmp samesign ule i32 %i.bd, %i.ay
end_hunk_0
begin_hunk_1_@_ZN8rawspeed23PanasonicV4Decompressor19chopInputIntoBlocksEv:bb.a
  %i.cn = getelementptr inbounds nuw [40 x i8], ptr %i.cf, i64 %i.cd ; 2 uses
  store ptr %i.cn, ptr %i.o, align 8, !tbaa !109
  br label %_ZNSt20back_insert_iteratorISt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS3_EEEaSEOS3_.exit.i

_ZNSt20back_insert_iteratorISt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS3_EEEaSEOS3_.exit.i: ; preds = %_ZNSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i, %bb.d
  %i.co = phi ptr [ %.pre18.i, %bb.d ], [ %i.cn, %_ZNSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i ]
  %i.cp = phi ptr [ %i.bt, %bb.d ], [ %i.cj, %_ZNSt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i.i ] ; 3 uses
  %i.cq = add nsw i64 %.017.i, -1                 ; 2 uses
  %.not.i7 = icmp eq i64 %i.cq, 0
  br i1 %.not.i7, label %"_ZSt10generate_nISt20back_insert_iteratorISt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS4_EEEmZNS3_19chopInputIntoBlocksEvE3$_0ET_S9_T0_T1_.exit", label %bb.c, !llvm.loop !165

"_ZSt10generate_nISt20back_insert_iteratorISt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS4_EEEmZNS3_19chopInputIntoBlocksEvE3$_0ET_S9_T0_T1_.exit": ; preds = %_ZNSt20back_insert_iteratorISt6vectorIN8rawspeed23PanasonicV4Decompressor5BlockESaIS3_EEEaSEOS3_.exit.i
  %i.cr = load ptr, ptr %0, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  %i.ct = getelementptr inbounds i8, ptr %i.cp, i64 -8
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !112 ; 2 uses
  store i64 %i.cu, ptr %i.ct, align 8, !tbaa !112
  %i.cv = getelementptr inbounds i8, ptr %i.cp, i64 -4
  %i.cw = lshr i64 %i.cu, 32
  %i.cx = trunc nuw i64 %i.cw to i32
  %i.cy = add nsw i32 %i.cx, -1
  store i32 %i.cy, ptr %i.cv, align 4, !tbaa !114
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
  store i32 0, ptr %i.c, align 8, !tbaa !174
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !175
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !116
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !call_target !121, !inline_history !172
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !116
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !call_target !123, !inline_history !172
  br label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !124
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !112
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !176

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
  %i.n = load i32, ptr %i.m, align 4, !tbaa !179  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !114  ; 2 uses
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
  %i.y = load i32, ptr %i.m, align 4, !tbaa !179
  %i.z = icmp eq i32 %i.y, %.02025
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph27
  %i.aa = load i32, ptr %i.l, align 8, !tbaa !180
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph27
  %.019 = phi i32 [ %i.aa, %bb.f ], [ 0, %.lr.ph27 ] ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = icmp eq i32 %i.x, %.02025
  %spec.select = select i1 %i.ad, ptr %i.o, ptr %i.ac
  %.0 = load i32, ptr %spec.select, align 8, !tbaa !112 ; 2 uses
  %i.ae = icmp slt i32 %.019, %.0
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %.123 = phi i32 [ %i.af, %.lr.ph ], [ %.019, %bb.g ] ; 2 uses
  call void @_ZNK8rawspeed23PanasonicV4Decompressor18processPixelPacketERNS0_11ProxyStreamEiiPSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(60) %3, i32 noundef %.02025, i32 noundef %.123, ptr noundef %2) #23
  %i.af = add nsw i32 %.123, 14                   ; 2 uses
  %i.ag = icmp slt i32 %i.af, %.0
  br i1 %i.ag, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !177

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %i.p, align 4, !tbaa !114
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.g
  %i.ah = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.x, %bb.g ] ; 2 uses
  %i.ai = add nsw i32 %.02025, 1
  %.not.not = icmp slt i32 %.02025, %i.ah
  br i1 %.not.not, label %.lr.ph27, label %._crit_edge28, !llvm.loop !178

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
  %i.a = load ptr, ptr %0, align 8, !tbaa !18     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 568
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !184, !noalias !185
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  %i.e = load i32, ptr %i.d, align 8, !tbaa !107, !noalias !185
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.g = load i32, ptr %i.f, align 8, !tbaa !186, !noalias !185
  %i.h = mul nsw i32 %i.g, %i.e                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 612
  %i.j = load i32, ptr %i.i, align 4, !tbaa !187, !noalias !185
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !188, !noalias !185
  %i.m = ashr i32 %i.l, 1                         ; 2 uses
  %i.n = icmp sge i32 %i.m, %i.h
  tail call void @llvm.assume(i1 %i.n)
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
  ret void

bb.c:                                             ; preds = %bb.a, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %indvars.iv = phi i64 [ %i.y, %bb.a ], [ %indvars.iv.next, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 4 uses
  %.0171 = phi i32 [ 0, %bb.a ], [ %i.dc, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 3 uses
  %.036170 = phi i32 [ 0, %bb.a ], [ %i.db, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 2 uses
  %.037169 = phi i32 [ 0, %bb.a ], [ %.138, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ]
  %.sroa.0.0167 = phi i32 [ 0, %bb.a ], [ %.sroa.0.1, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 5 uses
  %.069 = phi i32 [ 0, %bb.a ], [ %.sroa.7.1, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 5 uses
  %.03668 = phi i32 [ 0, %bb.a ], [ %.sroa.0118.2, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 6 uses
  %.03767 = phi i32 [ 0, %bb.a ], [ %.sroa.13.2, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 6 uses
  %i.aa = and i32 %.0171, 1
  %i.ab = icmp eq i32 %.036170, 2
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = load i32, ptr %i.t, align 8, !tbaa !189
  %i.ad = add nsw i32 %i.ac, -2                   ; 2 uses
  %i.ae = and i32 %i.ad, 131071                   ; 2 uses
  store i32 %i.ae, ptr %i.t, align 8, !tbaa !189
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
  %.138 = phi i32 [ %i.aq, %bb.d ], [ %.037169, %bb.c ] ; 6 uses
  %.1 = phi i32 [ -1, %bb.d ], [ %.036170, %bb.c ]
  %.sroa.idx87.not = icmp eq i32 %i.aa, 0         ; 11 uses
  %.sroa.speculated92 = select i1 %.sroa.idx87.not, i32 %.sroa.0.0167, i32 %.069
  %.not = icmp eq i32 %.sroa.speculated92, 0
  %i.ar = load i32, ptr %i.t, align 8, !tbaa !189 ; 2 uses
  %i.as = add i32 %i.ar, 131064
  %i.at = and i32 %i.as, 131071                   ; 3 uses
  store i32 %i.at, ptr %i.t, align 8, !tbaa !189
  %i.au = lshr i32 %i.at, 3
  %i.av = xor i32 %i.au, 16368
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = load ptr, ptr %i.u, align 8, !tbaa !131 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aw
  %i.az = load i16, ptr %i.ay, align 1
  %i.ba = zext i16 %i.az to i32
  %i.bb = and i32 %i.ar, 7
  %i.bc = lshr i32 %i.ba, %i.bb
  %i.bd = and i32 %i.bc, 255                      ; 7 uses
  br i1 %.not, label %bb.h, label %5

5:                                                ; preds = %bb.e
  %.not41 = icmp eq i32 %i.bd, 0
  br i1 %.not41, label %bb.j, label %bb.f

bb.f:                                             ; preds = %5
  %.neg = shl nsw i32 -128, %.138
  %.sroa.speculated = select i1 %.sroa.idx87.not, i32 %.03668, i32 %.03767 ; 2 uses
  %6 = add i32 %.neg, %.sroa.speculated           ; 2 uses
  %7 = icmp slt i32 %6, 0
  %.not41.a = icmp eq i32 %.138, 4
  %or.cond = select i1 %7, i1 true, i1 %.not41.a
  br i1 %or.cond, label %bb.g, label %.cont54

bb.g:                                             ; preds = %bb.f
  %.neg42 = shl nsw i32 -1, %.138
  %i.be = xor i32 %.neg42, -1
  %i.bf = and i32 %.sroa.speculated, %i.be
  %i.bg = shl nuw nsw i32 %i.bd, %.138
  %i.bh = add nuw nsw i32 %i.bg, %i.bf            ; 2 uses
  %.sroa.13.0164. = select i1 %.sroa.idx87.not, i32 %.03767, i32 %i.bh
  %..sroa.0118.0165 = select i1 %.sroa.idx87.not, i32 %i.bh, i32 %.03668
  br label %bb.j

.cont54:                                          ; preds = %bb.f
  %8 = shl nuw nsw i32 %i.bd, %.138
  %9 = add nuw nsw i32 %8, %6                     ; 2 uses
  %spec.select157 = select i1 %.sroa.idx87.not, i32 %.03767, i32 %9
  %spec.select158 = select i1 %.sroa.idx87.not, i32 %9, i32 %.03668
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %spec.select159 = select i1 %.sroa.idx87.not, i32 %.069, i32 %i.bd ; 2 uses
  %spec.select160 = select i1 %.sroa.idx87.not, i32 %i.bd, i32 %.sroa.0.0167 ; 2 uses
  %i.bi = icmp ne i32 %i.bd, 0
  %i.bj = icmp samesign ugt i32 %.0171, 11
  %or.cond3 = select i1 %i.bi, i1 true, i1 %i.bj
  br i1 %or.cond3, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bk = shl nuw nsw i32 %i.bd, 4
  %i.bl = add nsw i32 %i.at, -4                   ; 2 uses
  %i.bm = and i32 %i.bl, 131071                   ; 2 uses
  store i32 %i.bm, ptr %i.t, align 8, !tbaa !189
  %i.bn = lshr i32 %i.bm, 3
  %i.bo = xor i32 %i.bn, 16368
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bp
  %i.br = load i16, ptr %i.bq, align 1
  %i.bs = zext i16 %i.br to i32
  %i.bt = and i32 %i.bl, 7
  %i.bu = lshr i32 %i.bs, %i.bt
  %i.bv = and i32 %i.bu, 15
  %i.bw = or disjoint i32 %i.bv, %i.bk            ; 2 uses
  %spec.select161 = select i1 %.sroa.idx87.not, i32 %.03767, i32 %i.bw
  %spec.select162 = select i1 %.sroa.idx87.not, i32 %i.bw, i32 %.03668
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %.cont54, %5, %bb.h
  %.sroa.13.2 = phi i32 [ %spec.select157, %.cont54 ], [ %.03767, %bb.h ], [ %.03767, %5 ], [ %spec.select161, %bb.i ], [ %.sroa.13.0164., %bb.g ] ; 2 uses
  %.sroa.0118.2 = phi i32 [ %spec.select158, %.cont54 ], [ %.03668, %bb.h ], [ %.03668, %5 ], [ %spec.select162, %bb.i ], [ %..sroa.0118.0165, %bb.g ] ; 2 uses
  %.sroa.7.1 = phi i32 [ %.069, %.cont54 ], [ %spec.select159, %bb.h ], [ %.069, %5 ], [ %spec.select159, %bb.i ], [ %.069, %bb.g ]
  %.sroa.0.1 = phi i32 [ %.sroa.0.0167, %.cont54 ], [ %spec.select160, %bb.h ], [ %.sroa.0.0167, %5 ], [ %spec.select160, %bb.i ], [ %.sroa.0.0167, %bb.g ]
  %.sroa.speculated80 = select i1 %.sroa.idx87.not, i32 %.sroa.0118.2, i32 %.sroa.13.2 ; 2 uses
  %i.bx = icmp samesign ult i64 %indvars.iv, %i.z
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv
  %i.bz = trunc i32 %.sroa.speculated80 to i16
  store i16 %i.bz, ptr %i.by, align 2, !tbaa !191
  %i.ca = load i8, ptr %i.s, align 8, !tbaa !37, !range !133, !noundef !134
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = icmp eq i32 %.sroa.speculated80, 0
  %or.cond65 = select i1 %i.cb, i1 %i.cc, i1 false
  br i1 %or.cond65, label %bb.k, label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.k:                                             ; preds = %bb.j
  %i.cd = trunc nuw nsw i64 %indvars.iv to i32
  %i.ce = or i32 %i.v, %i.cd                      ; 2 uses
  %i.cf = load ptr, ptr %i.w, align 8, !tbaa !135 ; 4 uses
  %i.cg = load ptr, ptr %i.x, align 8, !tbaa !136
  %.not.i.i = icmp eq ptr %i.cf, %i.cg
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !112
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  store ptr %i.ch, ptr %i.w, align 8, !tbaa !135
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.m:                                             ; preds = %bb.k
  %i.ci = load ptr, ptr %4, align 8, !tbaa !137   ; 4 uses
  %i.cj = ptrtoint ptr %i.cf to i64
  %i.ck = ptrtoint ptr %i.ci to i64               ; 2 uses
  %i.cl = sub i64 %i.cj, %i.ck                    ; 5 uses
  %i.cm = icmp eq i64 %i.cl, 9223372036854775804
  br i1 %i.cm, label %bb.n, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #24
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.n
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.m
  %i.cn = ashr exact i64 %i.cl, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cn, i64 1)
  %i.co = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cn ; 2 uses
  %i.cp = icmp ult i64 %i.co, %i.cn
  %i.cq = tail call i64 @llvm.umin.i64(i64 %i.co, i64 2305843009213693951)
  %i.cr = select i1 %i.cp, i64 2305843009213693951, i64 %i.cq ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cs = shl nuw nsw i64 %i.cr, 2
  %i.ct = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cs) #25
          to label %.noexc44 unwind label %.loopexit ; 4 uses

.noexc44:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 %i.cl ; 2 uses
  store i32 %i.ce, ptr %i.cu, align 4, !tbaa !112
  %i.cv = icmp sgt i64 %i.cl, 0
  br i1 %i.cv, label %bb.o, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.o:                                             ; preds = %.noexc44
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ct, ptr align 4 %i.ci, i64 %i.cl, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.o, %.noexc44
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  %i.cx = load ptr, ptr %i.x, align 8, !tbaa !136
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = sub i64 %i.cy, %i.ck
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.cz) #22
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ct, ptr %4, align 8, !tbaa !137
  store ptr %i.cw, ptr %i.w, align 8, !tbaa !135
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cr
  store ptr %i.da, ptr %i.x, align 8, !tbaa !136
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.l, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, %bb.j
  %i.db = add nsw i32 %.1, 1
  %i.dc = add nuw nsw i32 %.0171, 1               ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %i.dc, 14
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !183

.loopexit:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.dd = extractvalue { ptr, i32 } %lpad.phi, 0
  tail call void @__clang_call_terminate(ptr %i.dd) #26
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK8rawspeed23PanasonicV4Decompressor16decompressThreadEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.24", align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !110
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 40                  ; 2 uses
  %i.i = and i64 %i.h, 2147483648
  %i.j = icmp eq i64 %i.i, 0
  tail call void @llvm.assume(i1 %i.j)
  %i.k = and i64 %i.h, 2147483647                 ; 2 uses
  %.idx = mul nuw nsw i64 %i.k, 40
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not15 = icmp eq i64 %i.k, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pr.pre17.pre = load ptr, ptr %1, align 8, !tbaa !192
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pr.pre17 = phi ptr [ %.pr.pre17.pre, %._crit_edge.loopexit ], [ null, %bb.a ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i8, ptr %i.m, align 8, !tbaa !37, !range !133, !noundef !134
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.b, label %thread-pre-split

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.016 = phi ptr [ %i.p, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  call void @_ZNK8rawspeed23PanasonicV4Decompressor12processBlockERKNS0_5BlockEPSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(40) %.016, ptr noundef nonnull %1) #23
  %i.p = getelementptr inbounds nuw i8, ptr %.016, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.p, %i.l
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

bb.b:                                             ; preds = %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !192  ; 2 uses
  %i.s = icmp eq ptr %.pr.pre17, %i.r
  br i1 %i.s, label %thread-pre-split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 192 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 200
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !192
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !192  ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = getelementptr inbounds i8, ptr %i.x, i64 %i.aa
  invoke void @_ZNSt6vectorIjSaIjEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPjS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr %i.ab, ptr %.pr.pre17, ptr %i.r)
          to label %.thread-pre-split_crit_edge unwind label %bb.e

.thread-pre-split_crit_edge:                      ; preds = %bb.c
  %.pr.pre = load ptr, ptr %1, align 8, !tbaa !137
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %._crit_edge, %.thread-pre-split_crit_edge, %bb.b
  %i.ac = phi ptr [ %.pr.pre17, %bb.b ], [ %.pr.pre, %.thread-pre-split_crit_edge ], [ %.pr.pre17, %._crit_edge ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %thread-pre-split
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !136
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #22
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %thread-pre-split, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void

bb.e:                                             ; preds = %bb.c
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #26
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK8rawspeed23PanasonicV4Decompressor10decompressEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZNK8rawspeed23PanasonicV4Decompressor16decompressThreadEv(ptr noundef nonnull align 8 dereferenceable(72) %0) #23
  ret void
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #23 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed11IOExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #8

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #8

declare void @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef, ptr noundef, ...) local_unnamed_addr #11

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #27
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed11IOExceptionE, i64 16), ptr %0, align 8, !tbaa !116
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #13

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed17RawspeedExceptionE, i64 16), ptr %0, align 8, !tbaa !116
  invoke void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %1) #27
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #23
  resume { ptr, i32 } %i.a
}

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #11

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %0) local_unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.5, ptr noundef %0)
  ret void
}

end_hunk_1
