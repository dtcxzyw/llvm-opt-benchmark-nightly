inline.NumInlined: 197
inline.NumDeleted: 119
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::array.52" = type { [8192 x i8] }
%"class.rawspeed::ByteStream" = type { %"class.rawspeed::DataBuffer.base", i32, [4 x i8] }
%"class.rawspeed::DataBuffer.base" = type { %"class.rawspeed::Buffer.base", i16 }
%"class.rawspeed::Buffer.base" = type <{ ptr, i32 }>
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

$_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz = comdat any

$_ZN8rawspeed8RawImageD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz = comdat any

$_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc = comdat any

$_ZN8rawspeed17RawspeedExceptionC2EPKc = comdat any

$_ZN8rawspeed17RawspeedException3logEPKc = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc = comdat any

$_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf = comdat any

$_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf = comdat any

@.str = private unnamed_addr constant [52 x i8] c"%s, line 46: Unexpected component count / data type\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed23PanasonicV7DecompressorC2ENS_8RawImageENS_10ByteStreamE = private unnamed_addr constant [81 x i8] c"rawspeed::PanasonicV7Decompressor::PanasonicV7Decompressor(RawImage, ByteStream)\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"%s, line 50: Unexpected image dimensions found: (%i; %i)\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"%s, line 60: Insufficient count of input blocks for a given image\00", align 1
@_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf = linkonce_odr hidden thread_local global %"struct.std::array.52" zeroinitializer, comdat, align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"EXCEPTION: %s\00", align 1
@_ZTIN8rawspeed11IOExceptionE = external constant ptr
@_ZTVN8rawspeed11IOExceptionE = external constant { [6 x ptr] }, align 8
@_ZTVN8rawspeed17RawspeedExceptionE = external constant { [6 x ptr] }, align 8
@.str.5 = private unnamed_addr constant [58 x i8] c"%s, line 80: Buffer overflow: image file may be truncated\00", align 1
@__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj = private unnamed_addr constant [64 x i8] c"Buffer rawspeed::Buffer::getSubView(size_type, size_type) const\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf = linkonce_odr hidden thread_local global %"struct.std::array.52" zeroinitializer, comdat, align 1
@_ZTIN8rawspeed19RawDecoderExceptionE = external constant ptr
@_ZTVN8rawspeed19RawDecoderExceptionE = external constant { [6 x ptr] }, align 8

@_ZN8rawspeed23PanasonicV7DecompressorC1ENS_8RawImageENS_10ByteStreamE = hidden unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN8rawspeed23PanasonicV7DecompressorC2ENS_8RawImageENS_10ByteStreamE

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed23PanasonicV7DecompressorC2ENS_8RawImageENS_10ByteStreamE(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 30), (32, 36)) %0, ptr nofree noundef align 8 captures(none) %1, ptr nofree noundef readonly byval(%"class.rawspeed::ByteStream") align 8 captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.h = load ptr, ptr %0, align 8, !tbaa !16     ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 592
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %.not = icmp eq i32 %i.j, 1
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 553
  %i.l = load i8, ptr %i.k, align 1, !tbaa !98
  %.not8 = icmp eq i8 %i.l, 0
  br i1 %.not8, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 596
  %i.n = load i32, ptr %i.m, align 4, !tbaa !99
  %.not9 = icmp eq i32 %i.n, 2
  br i1 %.not9, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed23PanasonicV7DecompressorC2ENS_8RawImageENS_10ByteStreamE) #13
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.h, %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.g:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !100  ; 4 uses
  %i.r = icmp sgt i32 %i.q, 0
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.t = load i32, ptr %i.s, align 4              ; 3 uses
  %i.u = icmp sgt i32 %i.t, 0
  %i.v = select i1 %i.r, i1 %i.u, i1 false
  %i.w = urem i32 %i.q, 9
  %.not10 = icmp eq i32 %i.w, 0
  %or.cond = and i1 %.not10, %i.v
  br i1 %or.cond, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed23PanasonicV7DecompressorC2ENS_8RawImageENS_10ByteStreamE, i32 noundef %i.q, i32 noundef %i.t) #13
          to label %bb.i unwind label %bb.f

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.x = zext nneg i32 %i.q to i64
  %i.y = zext nneg i32 %i.t to i64
  %i.z = mul nuw nsw i64 %i.y, %i.x
  %i.aa = udiv i64 %i.z, 9                        ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !22 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !26 ; 4 uses
  %i.af = icmp uge i32 %i.ac, %i.ae
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp sgt i32 %i.ac, -1
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = sub nuw i32 %i.ac, %i.ae
  %i.ai = lshr i32 %i.ah, 4
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = icmp samesign ugt i64 %i.aa, %i.aj
  br i1 %i.ak, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed23PanasonicV7DecompressorC2ENS_8RawImageENS_10ByteStreamE) #13
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.n:                                             ; preds = %bb.j
  %i.am = trunc nuw nsw i64 %i.aa to i32
  %i.an = shl nuw nsw i32 %i.am, 4                ; 2 uses
  %i.ao = zext i32 %i.ae to i64                   ; 2 uses
  %i.ap = zext nneg i32 %i.an to i64              ; 2 uses
  %i.aq = add nuw nsw i64 %i.ao, %i.ap
  %i.ar = zext nneg i32 %i.ac to i64
  %.not.i.i.i.i = icmp samesign ugt i64 %i.aq, %i.ar
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #13
          to label %.noexc14 unwind label %bb.q

.noexc14:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.as = load ptr, ptr %2, align 8, !tbaa !19, !noalias !101
  %i.at = add nuw nsw i32 %i.ae, %i.an
  %i.au = icmp samesign ule i32 %i.at, %i.ac
  tail call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ao
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ax = load i16, ptr %i.aw, align 4, !tbaa !23, !noalias !101
  %.sroa.4.8.insert.ext.i.i.i = zext i16 %i.ax to i64
  %.sroa.4.8.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.4.8.insert.ext.i.i.i, 32
  %.sroa.2.8.insert.insert.i.i.i = or disjoint i64 %.sroa.4.8.insert.shift.i.i.i, %i.ap
  store ptr %i.av, ptr %i.d, align 8
  store i64 %.sroa.2.8.insert.insert.i.i.i, ptr %i.e, align 8
  store i32 0, ptr %i.g, align 8
  ret void

bb.q:                                             ; preds = %bb.o
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.m, %bb.q, %bb.f
  %.pn12 = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.al, %bb.m ], [ %i.ay, %bb.q ]
  tail call void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #18
  resume { ptr, i32 } %.pn12
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #18 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed19RawDecoderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  resume { ptr, i32 } %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  store i32 0, ptr %i.c, align 8, !tbaa !108
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !110
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !111
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !call_target !113, !inline_history !120
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !111
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !call_target !121, !inline_history !120
  br label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !122
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !123
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !124

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK8rawspeed23PanasonicV7Decompressor13decompressRowEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 568
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !125, !noalias !126 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  %i.e = load i32, ptr %i.d, align 8, !tbaa !28, !noalias !126
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.g = load i32, ptr %i.f, align 8, !tbaa !129, !noalias !126
  %i.h = mul nsw i32 %i.g, %i.e                   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 612
  %i.j = load i32, ptr %i.i, align 4, !tbaa !130, !noalias !126
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !131, !noalias !126
  %i.m = ashr i32 %i.l, 1                         ; 2 uses
  %i.n = icmp sgt i32 %i.h, -1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp sge i32 %i.m, %i.h
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp ne i32 %i.h, 0
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp samesign ult i32 %1, %i.j
  tail call void @llvm.assume(i1 %i.q)
  %i.r = mul i32 %i.m, %1
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr [2 x i8], ptr %i.c, i64 %i.s ; 18 uses
  %i.u = udiv i32 %i.h, 9                         ; 3 uses
  %i.v = shl nuw nsw i32 %i.u, 4                  ; 3 uses
  %i.w = mul nuw nsw i32 %i.v, %1                 ; 2 uses
  %i.x = zext nneg i32 %i.w to i64                ; 3 uses
  %i.y = zext nneg i32 %i.v to i64
  %i.z = add nuw nsw i64 %i.x, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !22, !noalias !132 ; 3 uses
  %i.ac = zext i32 %i.ab to i64
  %.not.i.i = icmp samesign ugt i64 %i.z, %i.ac
  br i1 %.not.i.i, label %.invoke, label %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit

_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit:  ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !19, !noalias !132 ; 2 uses
  %i.af = icmp sgt i32 %i.ab, -1
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i32 %i.w, %i.v
  %i.ah = icmp samesign ule i32 %i.ag, %i.ab
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr i8, ptr %i.ae, i64 %i.x   ; 3 uses
  %.not = icmp samesign ult i32 %i.h, 9
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit
  %i.aj = zext nneg i32 %i.h to i64
  %wide.trip.count = zext nneg i32 %i.u to i64    ; 3 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.u, i32 1)
  %wide.trip.count69 = zext nneg i32 %umax to i64 ; 3 uses
  %i.ak = add nsw i64 %wide.trip.count69, -1
  %i.al = tail call i64 @llvm.umin.i64(i64 %wide.trip.count, i64 %i.ak) ; 2 uses
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.al, 8
  br i1 %min.iters.check, label %.lr.ph.preheader86, label %vector.memcheck

.lr.ph.preheader86:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %indvars.iv64.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.ay, %vector.body ]
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.an = add nsw i64 %wide.trip.count69, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %wide.trip.count, i64 %i.an) ; 2 uses
  %i.ao = mul nuw nsw i64 %umin, 18
  %i.ap = shl nuw nsw i64 %i.s, 1
  %i.aq = getelementptr i8, ptr %i.c, i64 %i.ao
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.ap
  %scevgep = getelementptr i8, ptr %i.ar, i64 18
  %i.as = shl nuw nsw i64 %umin, 4
  %i.at = getelementptr i8, ptr %i.ae, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 %i.x
  %scevgep75 = getelementptr i8, ptr %i.au, i64 16
  %bound0 = icmp ult ptr %i.t, %scevgep75
  %bound1 = icmp ult ptr %i.ai, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader86, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.av = and i64 %i.am, 7                        ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  %i.ax = select i1 %i.aw, i64 8, i64 %i.av
  %n.vec = sub nsw i64 %i.am, %i.ax               ; 3 uses
end_hunk_0
