Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/KodakDecompressor?download=true
inline.NumInlined: 121
inline.NumDeleted: 81
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::array.55" = type { [8192 x i8] }
%"class.rawspeed::ByteStream" = type { %"class.rawspeed::DataBuffer.base", i32, [4 x i8] }
%"class.rawspeed::DataBuffer.base" = type { %"class.rawspeed::Buffer.base", i16 }
%"class.rawspeed::Buffer.base" = type <{ ptr, i32 }>
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%"struct.std::array.48" = type { [256 x i16] }
%"struct.std::array.49" = type { [512 x i8] }

$_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz = comdat any

$_ZN8rawspeed8RawImageD2Ev = comdat any

$_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz = comdat any

$_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc = comdat any

$_ZN8rawspeed17RawspeedExceptionC2EPKc = comdat any

$_ZN8rawspeed17RawspeedException3logEPKc = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc = comdat any

$_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf = comdat any

$_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf = comdat any

@.str = private unnamed_addr constant [52 x i8] c"%s, line 52: Unexpected component count / data type\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed17KodakDecompressorC2ENS_8RawImageENS_10ByteStreamEib = private unnamed_addr constant [80 x i8] c"rawspeed::KodakDecompressor::KodakDecompressor(RawImage, ByteStream, int, bool)\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"%s, line 57: Unexpected image dimensions found: (%d; %d)\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"%s, line 60: Unexpected bits per sample: %i\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"%s, line 138: Value out of bounds %d (bps = %i)\00", align 1
@__PRETTY_FUNCTION__._ZN8rawspeed17KodakDecompressor10decompressEv = private unnamed_addr constant [47 x i8] c"void rawspeed::KodakDecompressor::decompress()\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"%s, line 65: Out of bounds access in ByteStream\00", align 1
@__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj = private unnamed_addr constant [55 x i8] c"size_type rawspeed::ByteStream::check(size_type) const\00", align 1
@_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf = linkonce_odr hidden thread_local global %"struct.std::array.55" zeroinitializer, comdat, align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"EXCEPTION: %s\00", align 1
@_ZTIN8rawspeed11IOExceptionE = external constant ptr
@_ZTVN8rawspeed11IOExceptionE = external constant { [6 x ptr] }, align 8
@_ZTVN8rawspeed17RawspeedExceptionE = external constant { [6 x ptr] }, align 8
@.str.6 = private unnamed_addr constant [58 x i8] c"%s, line 80: Buffer overflow: image file may be truncated\00", align 1
@__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj = private unnamed_addr constant [64 x i8] c"Buffer rawspeed::Buffer::getSubView(size_type, size_type) const\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf = linkonce_odr hidden thread_local global %"struct.std::array.55" zeroinitializer, comdat, align 1
@_ZTIN8rawspeed19RawDecoderExceptionE = external constant ptr
@_ZTVN8rawspeed19RawDecoderExceptionE = external constant { [6 x ptr] }, align 8

@_ZN8rawspeed17KodakDecompressorC1ENS_8RawImageENS_10ByteStreamEib = hidden unnamed_addr alias void (ptr, ptr, ptr, i32, i1), ptr @_ZN8rawspeed17KodakDecompressorC2ENS_8RawImageENS_10ByteStreamEib

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed17KodakDecompressorC2ENS_8RawImageENS_10ByteStreamEib(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 45)) %0, ptr nofree noundef align 8 captures(none) %1, ptr nofree noundef readonly byval(%"class.rawspeed::ByteStream") align 8 captures(none) %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %4 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !15
  store ptr null, ptr %i.c, align 8, !tbaa !11
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !15
  store ptr null, ptr %1, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %3, ptr %i.f, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 %i.a, ptr %i.g, align 4, !tbaa !29
  %i.h = load ptr, ptr %0, align 8, !tbaa !16     ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 592
  %i.j = load i32, ptr %i.i, align 8, !tbaa !30
  %.not = icmp eq i32 %i.j, 1
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 553
  %i.l = load i8, ptr %i.k, align 1, !tbaa !99
  %.not4 = icmp eq i8 %i.l, 0
  br i1 %.not4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 596
  %i.n = load i32, ptr %i.m, align 4, !tbaa !100
  %.not5 = icmp eq i32 %i.n, 2
  br i1 %.not5, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed17KodakDecompressorC2ENS_8RawImageENS_10ByteStreamEib) #10
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.o, %bb.l, %bb.i, %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #15
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !101  ; 5 uses
  %i.r = icmp sgt i32 %i.q, 0
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.t = load i32, ptr %i.s, align 4              ; 4 uses
  %i.u = icmp sgt i32 %i.t, 0
  %i.v = select i1 %i.r, i1 %i.u, i1 false
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = and i32 %i.q, 3
  %.not6 = icmp ne i32 %i.w, 0
  %i.x = icmp samesign ugt i32 %i.q, 4516
  %or.cond = or i1 %i.x, %.not6
  %i.y = icmp samesign ugt i32 %i.t, 3012
  %or.cond10 = select i1 %or.cond, i1 true, i1 %i.y
  br i1 %or.cond10, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h, %bb.g
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed17KodakDecompressorC2ENS_8RawImageENS_10ByteStreamEib, i32 noundef %i.q, i32 noundef %i.t) #10
          to label %bb.j unwind label %bb.f

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  switch i32 %3, label %bb.l [
    i32 10, label %bb.n
    i32 12, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed17KodakDecompressorC2ENS_8RawImageENS_10ByteStreamEib, i32 noundef %3) #10
          to label %bb.m unwind label %bb.f

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.k, %bb.k
  %narrow = mul nuw nsw i32 %i.t, %i.q
  %i.z = lshr exact i32 %narrow, 1                ; 2 uses
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !102 ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = add nuw nsw i64 %i.aa, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !103 ; 3 uses
  %i.ah = zext i32 %i.ag to i64
  %.not.i = icmp samesign ugt i64 %i.ae, %i.ah
  br i1 %.not.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #10
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ai = icmp sgt i32 %i.ag, -1
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i32 %i.ac, %i.z
  %i.ak = icmp samesign ule i32 %i.aj, %i.ag
  tail call void @llvm.assume(i1 %i.ak)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #15 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a)
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

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZN8rawspeed17KodakDecompressor13decodeSegmentEj:bb.a
  %i.al = and i32 %2, 4
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %.preheader86, label %bb.d

.preheader86:                                     ; preds = %_ZN8rawspeed10ByteStream7getByteEv.exit48, %bb.b
  %.promoted54.ph = phi i32 [ %i.ap, %bb.b ], [ %i.az, %_ZN8rawspeed10ByteStream7getByteEv.exit48 ]
  %.158.ph = phi i32 [ 0, %bb.b ], [ 16, %_ZN8rawspeed10ByteStream7getByteEv.exit48 ]
  %.13857.ph = phi i64 [ 0, %bb.b ], [ %i.bb, %_ZN8rawspeed10ByteStream7getByteEv.exit48 ]
  br label %bb.h

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZN8rawspeed10ByteStream7getByteEv.exit
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %_ZN8rawspeed10ByteStream7getByteEv.exit ], [ %indvars.iv60.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN8rawspeed10ByteStream7getByteEv.exit ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %bb.c, label %_ZN8rawspeed10ByteStream7getByteEv.exit

bb.c:                                             ; preds = %scalar.ph
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #10
  unreachable

_ZN8rawspeed10ByteStream7getByteEv.exit:          ; preds = %scalar.ph
  tail call void @llvm.assume(i1 %i.j)
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv
  %.0.copyload.i.i.i.i.i = load i8, ptr %i.am, align 1 ; 2 uses
  %i.an = and i8 %.0.copyload.i.i.i.i.i, 15
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv60 ; 2 uses
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !118
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ap = trunc nuw i64 %indvars.iv.next to i32   ; 5 uses
  store i32 %i.ap, ptr %i.e, align 8, !tbaa !102
  %i.aq = lshr i8 %.0.copyload.i.i.i.i.i, 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !118
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 2 ; 2 uses
  %i.as = icmp samesign ult i64 %indvars.iv.next61, %i.l
  br i1 %i.as, label %scalar.ph, label %bb.b, !llvm.loop !132

bb.d:                                             ; preds = %bb.b
  %.not.i.not.i.i.i.i.i43 = icmp ugt i32 %i.g, %i.ap
  br i1 %.not.i.not.i.i.i.i.i43, label %_ZN8rawspeed10ByteStream7getByteEv.exit45, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #10
  unreachable

_ZN8rawspeed10ByteStream7getByteEv.exit45:        ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.next
  %.0.copyload.i.i.i.i.i.i44 = load i8, ptr %i.at, align 1
  %i.au = add nuw nsw i32 %i.ap, 1                ; 3 uses
  store i32 %i.au, ptr %i.e, align 8, !tbaa !102
  %.not.i.not.i.i.i.i.i46 = icmp samesign ult i32 %i.au, %i.g
  br i1 %.not.i.not.i.i.i.i.i46, label %_ZN8rawspeed10ByteStream7getByteEv.exit48, label %bb.f

bb.f:                                             ; preds = %_ZN8rawspeed10ByteStream7getByteEv.exit45
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #10
  unreachable

_ZN8rawspeed10ByteStream7getByteEv.exit48:        ; preds = %_ZN8rawspeed10ByteStream7getByteEv.exit45
  %i.av = zext i8 %.0.copyload.i.i.i.i.i.i44 to i64
  %i.aw = shl nuw nsw i64 %i.av, 8
  %i.ax = zext nneg i32 %i.au to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ax
  %.0.copyload.i.i.i.i.i.i47 = load i8, ptr %i.ay, align 1
  %i.az = add nuw nsw i32 %i.ap, 2                ; 2 uses
  store i32 %i.az, ptr %i.e, align 8, !tbaa !102
  %i.ba = zext i8 %.0.copyload.i.i.i.i.i.i47 to i64
  %i.bb = or disjoint i64 %i.aw, %i.ba
  br label %.preheader86

bb.g:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void

bb.h:                                             ; preds = %.preheader86, %bb.l
  %.promoted54 = phi i32 [ %.promoted5477, %bb.l ], [ %.promoted54.ph, %.preheader86 ] ; 5 uses
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %bb.l ], [ 0, %.preheader86 ] ; 3 uses
  %.158 = phi i32 [ %i.cp, %bb.l ], [ %.158.ph, %.preheader86 ] ; 7 uses
  %.13857 = phi i64 [ %i.co, %bb.l ], [ %.13857.ph, %.preheader86 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv71
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !118 ; 4 uses
  %i.be = zext nneg i8 %i.bd to i32               ; 5 uses
  %i.bf = icmp ult i8 %i.bd, 16
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = icmp ult i32 %.158, %i.be
  br i1 %i.bg, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.h
  %i.bh = zext i32 %.promoted54 to i64            ; 4 uses
  %umax68 = tail call i32 @llvm.umax.i32(i32 %.promoted54, i32 %i.g)
  %wide.trip.count69 = zext i32 %umax68 to i64    ; 3 uses
  %exitcond70.not.not = icmp ult i32 %.promoted54, %i.g
  br i1 %exitcond70.not.not, label %_ZN8rawspeed10ByteStream7getByteEv.exit51, label %bb.i

bb.i:                                             ; preds = %_ZN8rawspeed10ByteStream7getByteEv.exit51.2, %_ZN8rawspeed10ByteStream7getByteEv.exit51.1, %_ZN8rawspeed10ByteStream7getByteEv.exit51, %.preheader
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #10
  unreachable

_ZN8rawspeed10ByteStream7getByteEv.exit51:        ; preds = %.preheader
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bh
  %.0.copyload.i.i.i.i.i.i50 = load i8, ptr %i.bi, align 1
  %indvars.iv.next66 = add nuw nsw i64 %i.bh, 1   ; 3 uses
  %i.bj = trunc nuw i64 %indvars.iv.next66 to i32
  store i32 %i.bj, ptr %i.e, align 8, !tbaa !102
  %exitcond70.1.not = icmp eq i64 %indvars.iv.next66, %wide.trip.count69
  br i1 %exitcond70.1.not, label %bb.i, label %_ZN8rawspeed10ByteStream7getByteEv.exit51.1

_ZN8rawspeed10ByteStream7getByteEv.exit51.1:      ; preds = %_ZN8rawspeed10ByteStream7getByteEv.exit51
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.next66
  %.0.copyload.i.i.i.i.i.i50.1 = load i8, ptr %i.bk, align 1
  %indvars.iv.next66.1 = add nuw nsw i64 %i.bh, 2 ; 3 uses
  %i.bl = trunc nuw i64 %indvars.iv.next66.1 to i32
  store i32 %i.bl, ptr %i.e, align 8, !tbaa !102
  %exitcond70.2.not = icmp eq i64 %indvars.iv.next66.1, %wide.trip.count69
  br i1 %exitcond70.2.not, label %bb.i, label %_ZN8rawspeed10ByteStream7getByteEv.exit51.2

_ZN8rawspeed10ByteStream7getByteEv.exit51.2:      ; preds = %_ZN8rawspeed10ByteStream7getByteEv.exit51.1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.next66.1
  %.0.copyload.i.i.i.i.i.i50.2 = load i8, ptr %i.bm, align 1
  %indvars.iv.next66.2 = add nuw nsw i64 %i.bh, 3 ; 3 uses
  %i.bn = trunc nuw i64 %indvars.iv.next66.2 to i32
  store i32 %i.bn, ptr %i.e, align 8, !tbaa !102
  %exitcond70.3.not = icmp eq i64 %indvars.iv.next66.2, %wide.trip.count69
  br i1 %exitcond70.3.not, label %bb.i, label %_ZN8rawspeed10ByteStream7getByteEv.exit51.3

_ZN8rawspeed10ByteStream7getByteEv.exit51.3:      ; preds = %_ZN8rawspeed10ByteStream7getByteEv.exit51.2
  %i.bo = zext i8 %.0.copyload.i.i.i.i.i.i50.2 to i64
  %i.bp = add nuw nsw i32 %.158, 24
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = shl nuw nsw i64 %i.bo, %i.bq
  %i.bs = zext i8 %.0.copyload.i.i.i.i.i.i50.1 to i64
  %i.bt = zext nneg i32 %.158 to i64
  %i.bu = shl nuw nsw i64 %i.bs, %i.bt
  %i.bv = zext i8 %.0.copyload.i.i.i.i.i.i50 to i64
  %i.bw = add nuw nsw i32 %.158, 8
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = shl nuw nsw i64 %i.bv, %i.bx
  %i.bz = add i64 %i.by, %.13857
  %i.ca = add i64 %i.bu, %i.bz
  %i.cb = add i64 %i.br, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.next66.2
  %.0.copyload.i.i.i.i.i.i50.3 = load i8, ptr %i.cc, align 1
  %indvars.iv.next66.3 = add i32 %.promoted54, 4  ; 2 uses
  store i32 %indvars.iv.next66.3, ptr %i.e, align 8, !tbaa !102
  %i.cd = zext i8 %.0.copyload.i.i.i.i.i.i50.3 to i64
  %i.ce = add nuw nsw i32 %.158, 16
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = shl nuw nsw i64 %i.cd, %i.cf
  %i.ch = add i64 %i.cg, %i.cb
  %i.ci = add nuw nsw i32 %.158, 32
  br label %bb.j

bb.j:                                             ; preds = %_ZN8rawspeed10ByteStream7getByteEv.exit51.3, %bb.h
  %.promoted5477 = phi i32 [ %indvars.iv.next66.3, %_ZN8rawspeed10ByteStream7getByteEv.exit51.3 ], [ %.promoted54, %bb.h ]
  %.3 = phi i64 [ %i.ch, %_ZN8rawspeed10ByteStream7getByteEv.exit51.3 ], [ %.13857, %bb.h ] ; 2 uses
  %.2 = phi i32 [ %i.ci, %_ZN8rawspeed10ByteStream7getByteEv.exit51.3 ], [ %.158, %bb.h ]
  %i.cj = trunc i64 %.3 to i32
  %i.ck = sub nuw nsw i32 16, %i.be
  %i.cl = lshr i32 65535, %i.ck
  %i.cm = and i32 %i.cl, %i.cj                    ; 3 uses
  %i.cn = zext nneg i8 %i.bd to i64
  %i.co = lshr i64 %.3, %i.cn
  %i.cp = sub i32 %.2, %i.be
  %.not42 = icmp eq i8 %i.bd, 0
  br i1 %.not42, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cq = add nsw i32 %i.be, -1
  %i.cr = shl nuw nsw i32 1, %i.cq
  %i.cs = and i32 %i.cm, %i.cr
  %i.ct = icmp eq i32 %i.cs, 0
  %notmask.i = shl nsw i32 -1, %i.be
  %.neg.i = or disjoint i32 %notmask.i, 1
  %i.cu = select i1 %i.ct, i32 %.neg.i, i32 0
  %.0.i = add nsw i32 %i.cu, %i.cm
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.cv = phi i32 [ %.0.i, %bb.k ], [ %i.cm, %bb.j ]
  %i.cw = trunc nsw i32 %i.cv to i16
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv71
  store i16 %i.cw, ptr %i.cx, align 2, !tbaa !133
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond75.not = icmp eq i64 %indvars.iv.next72, %i.l
  br i1 %exitcond75.not, label %bb.g, label %bb.h, !llvm.loop !135
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed17KodakDecompressor10decompressEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"struct.std::array.48", align 2    ; 4 uses
  %.sroa.0 = alloca i64, align 8                  ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !16     ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !136, !noalias !137
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !30, !noalias !137
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !140, !noalias !137
  %i.i = mul nsw i32 %i.h, %i.f                   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !141, !noalias !137 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !142, !noalias !137
  %i.n = ashr i32 %i.m, 1                         ; 3 uses
  %i.o = icmp sgt i32 %i.i, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sgt i32 %i.k, -1
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.q)
  %i.r = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4, !tbaa !119
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %._crit_edge87.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.s = icmp eq i32 %i.i, 0
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 44
  br i1 %i.s, label %._crit_edge87.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.v = zext nneg i32 %i.i to i64                ; 2 uses
  %i.w = zext nneg i32 %i.n to i64
  %wide.trip.count101 = zext nneg i32 %i.k to i64
  %.sroa.0.4..06.i.i.i.i.ptr.1.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge85
  %indvars.iv98 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next99, %._crit_edge85 ] ; 2 uses
  %i.x = mul nuw nsw i64 %indvars.iv98, %i.w
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.x ; 2 uses
  br label %bb.b

._crit_edge87.split:                              ; preds = %._crit_edge85, %.preheader.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void

._crit_edge85:                                    ; preds = %._crit_edge
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count101
  br i1 %exitcond102.not, label %._crit_edge87.split, label %.preheader, !llvm.loop !143

bb.b:                                             ; preds = %.preheader, %._crit_edge
  %.02083 = phi i32 [ 0, %.preheader ], [ %.1.lcssa, %._crit_edge ] ; 3 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !144
  %i.ac = sub nsw i32 %i.ab, %.02083              ; 2 uses
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ac, i32 256) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @_ZN8rawspeed17KodakDecompressor13decodeSegmentEj(ptr dead_on_unwind nonnull writable sret(%"struct.std::array.48") align 2 %1, ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %.sroa.speculated)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  store i32 0, ptr %.sroa.0, align 8, !tbaa !119
  store i32 0, ptr %.sroa.0.4..06.i.i.i.i.ptr.1.i.sroa_idx, align 4, !tbaa !119
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.ae = zext i32 %.02083 to i64
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.g
  %i.af = trunc nuw i64 %indvars.iv.next94 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.1.lcssa = phi i32 [ %.02083, %bb.b ], [ %i.af, %._crit_edge.loopexit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  %i.ag = icmp slt i32 %.1.lcssa, %i.i
  br i1 %i.ag, label %bb.b, label %._crit_edge85, !llvm.loop !145

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv93 = phi i64 [ %i.ae, %.lr.ph.preheader ], [ %indvars.iv.next94, %bb.g ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !133
  %i.aj = sext i16 %i.ai to i32
  %i.ak = and i64 %indvars.iv, 1                  ; 2 uses
  %.sroa.0.0..sroa_stride113 = shl nuw nsw i64 %i.ak, 2
  %.sroa.0.0..sroa_idx115 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 %.sroa.0.0..sroa_stride113
  %i.al = load i32, ptr %.sroa.0.0..sroa_idx115, align 4, !tbaa !119
  %i.am = add nsw i32 %i.al, %i.aj                ; 5 uses
  %.sroa.0.0..sroa_stride = shl nuw nsw i64 %i.ak, 2
  %.sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 %.sroa.0.0..sroa_stride
  store i32 %i.am, ptr %.sroa.0.0..sroa_idx, align 4, !tbaa !119
  %i.an = load i32, ptr %i.t, align 8, !tbaa !19  ; 3 uses
  %i.ao = icmp ult i32 %i.an, 32
  call void @llvm.assume(i1 %i.ao)
  %i.ap = lshr i32 %i.am, %i.an
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed17KodakDecompressor10decompressEv, i32 noundef %i.am, i32 noundef %i.an) #10
  unreachable

bb.d:                                             ; preds = %.lr.ph
  %i.ar = load i8, ptr %i.u, align 4, !tbaa !29, !range !146, !noundef !147
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.at = trunc i32 %i.am to i16
  %i.au = icmp samesign ult i64 %indvars.iv93, %i.v
  call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv93
  store i16 %i.at, ptr %i.av, align 2, !tbaa !133
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.aw = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  %i.ax = trunc i32 %i.am to i16
  %i.ay = icmp samesign ult i64 %indvars.iv93, %i.v
  call void @llvm.assume(i1 %i.ay)
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv93
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !107
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(624) %i.aw, i16 noundef zeroext %i.ax, ptr noundef nonnull %i.az, ptr noundef nonnull %i.a), !call_target !148
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !168
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #15 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a)
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
declare void @llvm.va_start.p0(ptr) #5

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #5

declare void @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef, ptr noundef, ...) local_unnamed_addr #8

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #17
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed11IOExceptionE, i64 16), ptr %0, align 8, !tbaa !107
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #10

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed17RawspeedExceptionE, i64 16), ptr %0, align 8, !tbaa !107
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

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #8

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %0) local_unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.5, ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !107
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #15, !call_target !109, !inline_history !169
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !118
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !119  ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !119
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !107
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #15, !call_target !117, !inline_history !169
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #17
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed19RawDecoderExceptionE, i64 16), ptr %0, align 8, !tbaa !107
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { cold noreturn }
attributes #11 = { cold mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
end_hunk_1
