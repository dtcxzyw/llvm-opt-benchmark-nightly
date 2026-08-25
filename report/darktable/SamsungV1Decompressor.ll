Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/SamsungV1Decompressor?download=true
inline.NumInlined: 234
inline.NumDeleted: 145
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN8rawspeed21SamsungV1DecompressorC2ERKNS_8RawImageENS_10ByteStreamEi:bb.a

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
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  %i.l = load i32, ptr %i.k, align 8, !tbaa !20
  %.not = icmp eq i32 %i.l, 1
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN8rawspeed8RawImageD2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 553
  %i.n = load i8, ptr %i.m, align 1, !tbaa !91
  %.not22 = icmp eq i8 %i.n, 0
  br i1 %.not22, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 596
  %i.p = load i32, ptr %i.o, align 4, !tbaa !92
  %.not23 = icmp eq i32 %i.p, 2
  br i1 %.not23, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %_ZN8rawspeed8RawImageD2Ev.exit
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV1DecompressorC2ERKNS_8RawImageENS_10ByteStreamEi) #13
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.k, %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.j:                                             ; preds = %bb.f
  %.not24 = icmp eq i32 %3, 12
  br i1 %.not24, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV1DecompressorC2ERKNS_8RawImageENS_10ByteStreamEi, i32 noundef %3) #13
          to label %bb.l unwind label %bb.i

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.s = load i32, ptr %i.r, align 8, !tbaa !93   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !94   ; 4 uses
  %i.v = icmp ne i32 %i.s, 0
  %i.w = icmp ne i32 %i.u, 0
  %or.cond.not32 = select i1 %i.v, i1 %i.w, i1 false
  %i.x = and i32 %i.s, 31
  %.not25 = icmp eq i32 %i.x, 0
  %or.cond27 = and i1 %.not25, %or.cond.not32
  br i1 %or.cond27, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.y = trunc i32 %i.u to i1
  %i.z = icmp ugt i32 %i.s, 5664
  %or.cond3 = or i1 %i.z, %i.y
  %i.aa = icmp ugt i32 %i.u, 3714
  %or.cond5 = or i1 %i.aa, %or.cond3
  br i1 %or.cond5, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n, %bb.m
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV1DecompressorC2ERKNS_8RawImageENS_10ByteStreamEi, i32 noundef %i.s, i32 noundef %i.u) #13
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  ret void

bb.s:                                             ; preds = %bb.q, %bb.i
  %.pn = phi { ptr, i32 } [ %i.q, %bb.i ], [ %i.ab, %bb.q ]
  tail call void @_ZN8rawspeed27AbstractSamsungDecompressorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #17
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #17 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed19RawDecoderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  resume { ptr, i32 } %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed27AbstractSamsungDecompressorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  store i32 0, ptr %i.c, align 8, !tbaa !95
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !97
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !98
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !call_target !100, !inline_history !107
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !98
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !call_target !108, !inline_history !107
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
  br i1 %i.q, label %bb.g, label %_ZN8rawspeed8RawImageD2Ev.exit, !prof !109

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
  br label %_ZN8rawspeed8RawImageD2Ev.exit

_ZN8rawspeed8RawImageD2Ev.exit:                   ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK8rawspeed21SamsungV1Decompressor10decompressEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
iter.check:
  %.sroa.0.i.i.i = alloca i32, align 4            ; 5 uses
  %1 = alloca %"struct.std::array.63", align 8    ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(2048) ptr @_Znwm(i64 noundef 2048) #19 ; 164 uses
  store i16 0, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %2 = load i16, ptr %i.a, align 1
  %broadcast.splatinsert = insertelement <16 x i16> poison, i16 %2, i64 0
  %broadcast.splat = shufflevector <16 x i16> %broadcast.splatinsert, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 66
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 98
  store <16 x i16> %broadcast.splat, ptr %i.b, align 1
  store <16 x i16> %broadcast.splat, ptr %i.c, align 1
  store <16 x i16> %broadcast.splat, ptr %i.d, align 1
  store <16 x i16> %broadcast.splat, ptr %i.e, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 130
  %3 = load i16, ptr %i.a, align 1
  %broadcast.splatinsert.1 = insertelement <16 x i16> poison, i16 %3, i64 0
  %broadcast.splat.1 = shufflevector <16 x i16> %broadcast.splatinsert.1, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 162
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 194
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 226
  store <16 x i16> %broadcast.splat.1, ptr %i.f, align 1
  store <16 x i16> %broadcast.splat.1, ptr %i.g, align 1
  store <16 x i16> %broadcast.splat.1, ptr %i.h, align 1
  store <16 x i16> %broadcast.splat.1, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 258
  %4 = load i16, ptr %i.a, align 1
  %broadcast.splatinsert.2 = insertelement <16 x i16> poison, i16 %4, i64 0
  %broadcast.splat.2 = shufflevector <16 x i16> %broadcast.splatinsert.2, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 290
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 322
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 354
  store <16 x i16> %broadcast.splat.2, ptr %i.j, align 1
  store <16 x i16> %broadcast.splat.2, ptr %i.k, align 1
  store <16 x i16> %broadcast.splat.2, ptr %i.l, align 1
  store <16 x i16> %broadcast.splat.2, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 386
  %5 = load i16, ptr %i.a, align 1
  %broadcast.splatinsert.3 = insertelement <16 x i16> poison, i16 %5, i64 0
  %broadcast.splat.3 = shufflevector <16 x i16> %broadcast.splatinsert.3, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 418
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 450
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 482
  store <16 x i16> %broadcast.splat.3, ptr %i.n, align 1
  store <16 x i16> %broadcast.splat.3, ptr %i.o, align 1
  store <16 x i16> %broadcast.splat.3, ptr %i.p, align 1
  store <16 x i16> %broadcast.splat.3, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 514
  %6 = load i16, ptr %i.a, align 1
  %broadcast.splatinsert.4 = insertelement <16 x i16> poison, i16 %6, i64 0
  %broadcast.splat.4 = shufflevector <16 x i16> %broadcast.splatinsert.4, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 546
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 578
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 610
  store <16 x i16> %broadcast.splat.4, ptr %i.r, align 1
  store <16 x i16> %broadcast.splat.4, ptr %i.s, align 1
  store <16 x i16> %broadcast.splat.4, ptr %i.t, align 1
  store <16 x i16> %broadcast.splat.4, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 642
  %7 = load i16, ptr %i.a, align 1
  %broadcast.splatinsert.5 = insertelement <16 x i16> poison, i16 %7, i64 0
  %broadcast.splat.5 = shufflevector <16 x i16> %broadcast.splatinsert.5, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 674
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 706
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 738
  store <16 x i16> %broadcast.splat.5, ptr %i.v, align 1
  store <16 x i16> %broadcast.splat.5, ptr %i.w, align 1
  store <16 x i16> %broadcast.splat.5, ptr %i.x, align 1
  store <16 x i16> %broadcast.splat.5, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 770
  %8 = load i16, ptr %i.a, align 1
  %broadcast.splatinsert.6 = insertelement <16 x i16> poison, i16 %8, i64 0
  %broadcast.splat.6 = shufflevector <16 x i16> %broadcast.splatinsert.6, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 802
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 834
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 866
  store <16 x i16> %broadcast.splat.6, ptr %i.z, align 1
  store <16 x i16> %broadcast.splat.6, ptr %i.aa, align 1
  store <16 x i16> %broadcast.splat.6, ptr %i.ab, align 1
  store <16 x i16> %broadcast.splat.6, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 898
  %9 = load i16, ptr %i.a, align 1
  %broadcast.splatinsert.7 = insertelement <16 x i16> poison, i16 %9, i64 0
  %broadcast.splat.7 = shufflevector <16 x i16> %broadcast.splatinsert.7, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 930
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 962
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 994
  store <16 x i16> %broadcast.splat.7, ptr %i.ad, align 1
  store <16 x i16> %broadcast.splat.7, ptr %i.ae, align 1
  store <16 x i16> %broadcast.splat.7, ptr %i.af, align 1
  store <16 x i16> %broadcast.splat.7, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 1026
  %10 = load i16, ptr %i.a, align 1
  %broadcast.splatinsert.8 = insertelement <16 x i16> poison, i16 %10, i64 0
  %broadcast.splat.8 = shufflevector <16 x i16> %broadcast.splatinsert.8, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 1058
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 1090
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 1122
  store <16 x i16> %broadcast.splat.8, ptr %i.ah, align 1
  store <16 x i16> %broadcast.splat.8, ptr %i.ai, align 1
  store <16 x i16> %broadcast.splat.8, ptr %i.aj, align 1
  store <16 x i16> %broadcast.splat.8, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 1154
  %11 = load i16, ptr %i.a, align 1
  %broadcast.splatinsert.9 = insertelement <16 x i16> poison, i16 %11, i64 0
  %broadcast.splat.9 = shufflevector <16 x i16> %broadcast.splatinsert.9, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 1186
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 1218
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 1250
  store <16 x i16> %broadcast.splat.9, ptr %i.al, align 1
  store <16 x i16> %broadcast.splat.9, ptr %i.am, align 1
  store <16 x i16> %broadcast.splat.9, ptr %i.an, align 1
  store <16 x i16> %broadcast.splat.9, ptr %i.ao, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 1282
  %12 = load i16, ptr %i.a, align 1
  %broadcast.splatinsert.10 = insertelement <16 x i16> poison, i16 %12, i64 0
  %broadcast.splat.10 = shufflevector <16 x i16> %broadcast.splatinsert.10, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 1314
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 1346
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 1378
  store <16 x i16> %broadcast.splat.10, ptr %i.ap, align 1
  store <16 x i16> %broadcast.splat.10, ptr %i.aq, align 1
  store <16 x i16> %broadcast.splat.10, ptr %i.ar, align 1
  store <16 x i16> %broadcast.splat.10, ptr %i.as, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 1410
  %13 = load i16, ptr %i.a, align 1
  %broadcast.splatinsert.11 = insertelement <16 x i16> poison, i16 %13, i64 0
  %broadcast.splat.11 = shufflevector <16 x i16> %broadcast.splatinsert.11, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 1442
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 1474
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 1506
  store <16 x i16> %broadcast.splat.11, ptr %i.at, align 1
  store <16 x i16> %broadcast.splat.11, ptr %i.au, align 1
  store <16 x i16> %broadcast.splat.11, ptr %i.av, align 1
  store <16 x i16> %broadcast.splat.11, ptr %i.aw, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 1538
  %14 = load i16, ptr %i.a, align 1
  %broadcast.splatinsert.12 = insertelement <16 x i16> poison, i16 %14, i64 0
  %broadcast.splat.12 = shufflevector <16 x i16> %broadcast.splatinsert.12, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 1570
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 1602
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 1634
  store <16 x i16> %broadcast.splat.12, ptr %i.ax, align 1
  store <16 x i16> %broadcast.splat.12, ptr %i.ay, align 1
  store <16 x i16> %broadcast.splat.12, ptr %i.az, align 1
  store <16 x i16> %broadcast.splat.12, ptr %i.ba, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 1666
  %15 = load i16, ptr %i.a, align 1
  %broadcast.splatinsert.13 = insertelement <16 x i16> poison, i16 %15, i64 0
  %broadcast.splat.13 = shufflevector <16 x i16> %broadcast.splatinsert.13, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 1698
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 1730
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 1762
  store <16 x i16> %broadcast.splat.13, ptr %i.bb, align 1
  store <16 x i16> %broadcast.splat.13, ptr %i.bc, align 1
  store <16 x i16> %broadcast.splat.13, ptr %i.bd, align 1
  store <16 x i16> %broadcast.splat.13, ptr %i.be, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 1794
  %16 = load i16, ptr %i.a, align 1
  %broadcast.splatinsert.14 = insertelement <16 x i16> poison, i16 %16, i64 0
  %broadcast.splat.14 = shufflevector <16 x i16> %broadcast.splatinsert.14, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 1826
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 1858
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 1890
  store <16 x i16> %broadcast.splat.14, ptr %i.bf, align 1
  store <16 x i16> %broadcast.splat.14, ptr %i.bg, align 1
  store <16 x i16> %broadcast.splat.14, ptr %i.bh, align 1
  store <16 x i16> %broadcast.splat.14, ptr %i.bi, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 1922
  %17 = load i16, ptr %i.a, align 1               ; 2 uses
  %broadcast.splatinsert262 = insertelement <8 x i16> poison, i16 %17, i64 0
  %broadcast.splat263 = shufflevector <8 x i16> %broadcast.splatinsert262, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %broadcast.splat263, ptr %i.bj, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 1938
  %broadcast.splatinsert262.1 = insertelement <8 x i16> poison, i16 %17, i64 0
  %broadcast.splat263.1 = shufflevector <8 x i16> %broadcast.splatinsert262.1, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %broadcast.splat263.1, ptr %i.bk, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 1954
  %18 = load i16, ptr %i.a, align 1               ; 2 uses
  %broadcast.splatinsert262.2 = insertelement <8 x i16> poison, i16 %18, i64 0
  %broadcast.splat263.2 = shufflevector <8 x i16> %broadcast.splatinsert262.2, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %broadcast.splat263.2, ptr %i.bl, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 1970
  %broadcast.splatinsert262.3 = insertelement <8 x i16> poison, i16 %18, i64 0
  %broadcast.splat263.3 = shufflevector <8 x i16> %broadcast.splatinsert262.3, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %broadcast.splat263.3, ptr %i.bm, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 1986
  %19 = load i16, ptr %i.a, align 1               ; 2 uses
  %broadcast.splatinsert262.4 = insertelement <8 x i16> poison, i16 %19, i64 0
  %broadcast.splat263.4 = shufflevector <8 x i16> %broadcast.splatinsert262.4, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %broadcast.splat263.4, ptr %i.bn, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 2002
  %broadcast.splatinsert262.5 = insertelement <8 x i16> poison, i16 %19, i64 0
  %broadcast.splat263.5 = shufflevector <8 x i16> %broadcast.splatinsert262.5, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %broadcast.splat263.5, ptr %i.bo, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 2018
  %20 = load i16, ptr %i.a, align 1
  %broadcast.splatinsert262.6 = insertelement <8 x i16> poison, i16 %20, i64 0
  %broadcast.splat263.6 = shufflevector <8 x i16> %broadcast.splatinsert262.6, <8 x i16> poison, <8 x i32> zeroinitializer
  store <8 x i16> %broadcast.splat263.6, ptr %i.bp, align 1
  %.06.i.i.i.i.i.i.i.i.i.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 2034
  %i.bq = load i16, ptr %i.a, align 1             ; 3 uses
  store i16 %i.bq, ptr %.06.i.i.i.i.i.i.i.i.i.ptr, align 1
  %.06.i.i.i.i.i.i.i.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 2036
  store i16 %i.bq, ptr %.06.i.i.i.i.i.i.i.i.i.ptr.1, align 1
  %.06.i.i.i.i.i.i.i.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 2038
  store i16 %i.bq, ptr %.06.i.i.i.i.i.i.i.i.i.ptr.2, align 1
  %.06.i.i.i.i.i.i.i.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 2040
  %i.br = load i16, ptr %i.a, align 1             ; 3 uses
  store i16 %i.br, ptr %.06.i.i.i.i.i.i.i.i.i.ptr.3, align 1
  %.06.i.i.i.i.i.i.i.i.i.ptr.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 2042
  store i16 %i.br, ptr %.06.i.i.i.i.i.i.i.i.i.ptr.4, align 1
  %.06.i.i.i.i.i.i.i.i.i.ptr.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 2044
  store i16 %i.br, ptr %.06.i.i.i.i.i.i.i.i.i.ptr.5, align 1
  %.06.i.i.i.i.i.i.i.i.i.ptr.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 2046
  %i.bs = load i16, ptr %i.a, align 1
  store i16 %i.bs, ptr %.06.i.i.i.i.i.i.i.i.i.ptr.6, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store <16 x i16> splat (i16 1027), ptr %i.a, align 1
  store <16 x i16> splat (i16 1027), ptr %i.bt, align 1
  store <16 x i16> splat (i16 1027), ptr %i.bu, align 1
  store <16 x i16> splat (i16 1027), ptr %i.bv, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store <16 x i16> splat (i16 1027), ptr %i.bw, align 1
  store <16 x i16> splat (i16 1027), ptr %i.bx, align 1
  store <16 x i16> splat (i16 1027), ptr %i.by, align 1
  store <16 x i16> splat (i16 1027), ptr %i.bz, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store <16 x i16> splat (i16 1795), ptr %i.ca, align 1
  store <16 x i16> splat (i16 1795), ptr %i.cb, align 1
  store <16 x i16> splat (i16 1795), ptr %i.cc, align 1
  store <16 x i16> splat (i16 1795), ptr %i.cd, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  store <16 x i16> splat (i16 1795), ptr %i.ce, align 1
  store <16 x i16> splat (i16 1795), ptr %i.cf, align 1
  store <16 x i16> splat (i16 1795), ptr %i.cg, align 1
  store <16 x i16> splat (i16 1795), ptr %i.ch, align 1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 544
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  store <16 x i16> splat (i16 1538), ptr %i.ci, align 1
  store <16 x i16> splat (i16 1538), ptr %i.cj, align 1
  store <16 x i16> splat (i16 1538), ptr %i.ck, align 1
  store <16 x i16> splat (i16 1538), ptr %i.cl, align 1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 672
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 736
  store <16 x i16> splat (i16 1538), ptr %i.cm, align 1
  store <16 x i16> splat (i16 1538), ptr %i.cn, align 1
  store <16 x i16> splat (i16 1538), ptr %i.co, align 1
  store <16 x i16> splat (i16 1538), ptr %i.cp, align 1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 768
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 800
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 832
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 864
  store <16 x i16> splat (i16 1538), ptr %i.cq, align 1
  store <16 x i16> splat (i16 1538), ptr %i.cr, align 1
  store <16 x i16> splat (i16 1538), ptr %i.cs, align 1
  store <16 x i16> splat (i16 1538), ptr %i.ct, align 1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 896
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 928
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 960
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 992
  store <16 x i16> splat (i16 1538), ptr %i.cu, align 1
  store <16 x i16> splat (i16 1538), ptr %i.cv, align 1
  store <16 x i16> splat (i16 1538), ptr %i.cw, align 1
  store <16 x i16> splat (i16 1538), ptr %i.cx, align 1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 1024
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 1056
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 1120
  store <16 x i16> splat (i16 1282), ptr %i.cy, align 1
  store <16 x i16> splat (i16 1282), ptr %i.cz, align 1
  store <16 x i16> splat (i16 1282), ptr %i.da, align 1
  store <16 x i16> splat (i16 1282), ptr %i.db, align 1
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 1152
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 1184
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 1216
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 1248
  store <16 x i16> splat (i16 1282), ptr %i.dc, align 1
  store <16 x i16> splat (i16 1282), ptr %i.dd, align 1
  store <16 x i16> splat (i16 1282), ptr %i.de, align 1
  store <16 x i16> splat (i16 1282), ptr %i.df, align 1
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 1280
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 1312
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 1344
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 1376
  store <16 x i16> splat (i16 1282), ptr %i.dg, align 1
  store <16 x i16> splat (i16 1282), ptr %i.dh, align 1
  store <16 x i16> splat (i16 1282), ptr %i.di, align 1
  store <16 x i16> splat (i16 1282), ptr %i.dj, align 1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 1408
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 1440
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 1472
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 1504
  store <16 x i16> splat (i16 1282), ptr %i.dk, align 1
  store <16 x i16> splat (i16 1282), ptr %i.dl, align 1
  store <16 x i16> splat (i16 1282), ptr %i.dm, align 1
  store <16 x i16> splat (i16 1282), ptr %i.dn, align 1
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 1536
  store <16 x i16> splat (i16 772), ptr %i.do, align 1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 1568
  store <16 x i16> splat (i16 772), ptr %i.dp, align 1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 1600
  store <16 x i16> splat (i16 772), ptr %i.dq, align 1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 1632
  store <16 x i16> splat (i16 772), ptr %i.dr, align 1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 1664
  store <16 x i16> splat (i16 6), ptr %i.ds, align 1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 1696
  store <16 x i16> <i16 2311, i16 2311, i16 2311, i16 2311, i16 2311, i16 2311, i16 2311, i16 2311, i16 2568, i16 2568, i16 2568, i16 2568, i16 2825, i16 2825, i16 3082, i16 3338>, ptr %i.dt, align 1
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 1728
  store <16 x i16> splat (i16 261), ptr %i.du, align 1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 1760
  store <16 x i16> splat (i16 261), ptr %i.dv, align 1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 1792
  store <16 x i16> splat (i16 2052), ptr %i.dw, align 1
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 1824
  store <16 x i16> splat (i16 2052), ptr %i.dx, align 1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 1856
  store <16 x i16> splat (i16 2052), ptr %i.dy, align 1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 1888
  store <16 x i16> splat (i16 2052), ptr %i.dz, align 1
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 1920
  store <16 x i16> splat (i16 516), ptr %i.ea, align 1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 1952
  store <16 x i16> splat (i16 516), ptr %i.eb, align 1
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 1984
  store <16 x i16> splat (i16 516), ptr %i.ec, align 1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 2016
  store <16 x i16> splat (i16 516), ptr %i.ed, align 1
  %i.ee = load ptr, ptr %0, align 8, !tbaa !11    ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 568
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !110, !noalias !111 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 592
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !20, !noalias !111
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 608
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !114, !noalias !111
  %i.el = mul nsw i32 %i.ek, %i.ei                ; 5 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ee, i64 612
  %i.en = load i32, ptr %i.em, align 4, !tbaa !115, !noalias !111 ; 6 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !116, !noalias !111
  %i.eq = ashr i32 %i.ep, 1                       ; 4 uses
  %i.er = icmp sgt i32 %i.el, -1
  tail call void @llvm.assume(i1 %i.er)
  %i.es = icmp sgt i32 %i.en, -1
  tail call void @llvm.assume(i1 %i.es)
  %i.et = icmp ne i32 %i.eq, 0
  tail call void @llvm.assume(i1 %i.et)
  %i.eu = icmp sge i32 %i.eq, %i.el
  tail call void @llvm.assume(i1 %i.eu)
  %i.ev = icmp eq i32 %i.el, 0
  %i.ew = and i32 %i.el, 31
  %i.ex = icmp eq i32 %i.ew, 0
  tail call void @llvm.assume(i1 %i.ex)
  %i.ey = and i32 %i.en, 1
  %i.ez = icmp eq i32 %i.ey, 0
  tail call void @llvm.assume(i1 %i.ez)
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !117 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !122 ; 3 uses
  %i.ff = icmp uge i32 %i.fe, %i.fc
  tail call void @llvm.assume(i1 %i.ff)
  %i.fg = icmp sgt i32 %i.fe, -1
  tail call void @llvm.assume(i1 %i.fg)
  %i.fh = sub i32 %i.fe, %i.fc                    ; 6 uses
  %i.fi = zext i32 %i.fc to i64
  %i.fj = load ptr, ptr %i.fa, align 8, !tbaa !123
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fi ; 2 uses
  %i.fl = icmp sgt i32 %i.fh, -1
  tail call void @llvm.assume(i1 %i.fl)
  %i.fm = icmp samesign ult i32 %i.fh, 4
  br i1 %i.fm, label %bb.i, label %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader

_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader: ; preds = %iter.check
  %.not193 = icmp eq i32 %i.en, 0
  br i1 %.not193, label %_ZNSt6vectorIN8rawspeed21SamsungV1Decompressor12encTableItemESaIS2_EED2Ev.exit, label %.lr.ph189

.lr.ph189:                                        ; preds = %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader
  %i.fn = add nuw nsw i32 %i.fh, 8
  %i.fo = zext nneg i32 %i.en to i64
  br i1 %i.ev, label %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.peel245, label %.lr.ph189.split.us.preheader

end_hunk_0
