Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/SamsungV2Decompressor?download=true
inline.NumInlined: 311
inline.NumDeleted: 154
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN8rawspeed21SamsungV2DecompressorC2ERKNS_8RawImageENS_10ByteStreamEj:bb.a
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i140 = load i32, ptr %i.aq, align 1
  %i.ar = lshr i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i140, 8
  %i.as = and i32 %i.ar, 15                       ; 3 uses
  %i.at = icmp samesign ugt i32 %i.as, 7
  br i1 %i.at, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2DecompressorC2ERKNS_8RawImageENS_10ByteStreamEj, i32 noundef %i.as) #11
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.ac, %bb.y, %bb.t
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.w:                                             ; preds = %bb.s
  %i.av = trunc nuw nsw i32 %i.as to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.av, ptr %i.aw, align 4, !tbaa !109
  %i.ax = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i200 = load i32, ptr %i.ax, align 1
  %i.ay = trunc i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i200 to i16
  %i.az = and i16 %i.ay, 16383
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i16 %i.az, ptr %i.ba, align 2, !tbaa !126
  %i.bb = icmp eq i32 %i.am, 0
  br i1 %i.bb, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bc = icmp eq i32 %i.ao, 0
  %i.bd = and i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i110, 983040
  %.not28 = icmp ne i32 %i.bd, 0
  %or.cond.not344 = or i1 %i.bc, %.not28
  %i.be = icmp ugt i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i110, 425787391
  %or.cond36 = or i1 %i.be, %or.cond.not344
  %i.bf = icmp samesign ugt i32 %i.ao, 4336
  %or.cond37 = or i1 %i.bf, %or.cond36
  br i1 %or.cond37, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x, %bb.w
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2DecompressorC2ERKNS_8RawImageENS_10ByteStreamEj, i32 noundef %i.am, i32 noundef %i.ao) #11
          to label %bb.z unwind label %bb.v

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.x
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !127
  %.not29 = icmp eq i32 %i.am, %i.bh
  br i1 %.not29, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !128
  %.not30 = icmp eq i32 %i.ao, %i.bj
  br i1 %.not30, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2DecompressorC2ERKNS_8RawImageENS_10ByteStreamEj) #11
          to label %bb.ad unwind label %bb.v

bb.ad:                                            ; preds = %bb.ac
  unreachable

bb.ae:                                            ; preds = %bb.ab
  %i.bk = sub nuw nsw i32 %i.z, %i.v              ; 2 uses
  %i.bl = add nsw i32 %i.bk, -16
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.bo = icmp samesign ugt i32 %i.bk, 15
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bq = load i16, ptr %i.bp, align 4, !tbaa !123, !noalias !129
  %.sroa.4.8.insert.ext.i = zext i16 %i.bq to i64
  %.sroa.4.8.insert.shift.i = shl nuw nsw i64 %.sroa.4.8.insert.ext.i, 32
  %.sroa.2.8.insert.insert.i = or disjoint i64 %.sroa.4.8.insert.shift.i, %i.bm
  store ptr %i.bn, ptr %i.j, align 8
  store i64 %.sroa.2.8.insert.insert.i, ptr %i.k, align 8
  store i32 0, ptr %i.m, align 8
  ret void

bb.af:                                            ; preds = %bb.r, %bb.v, %bb.i
  %.pn34 = phi { ptr, i32 } [ %i.t, %bb.i ], [ %i.ak, %bb.r ], [ %i.au, %bb.v ]
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN8rawspeed8RawImageD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !132
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !133
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !111
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #15, !call_target !116, !inline_history !130
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !111
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #15, !call_target !118, !inline_history !130
  br label %_ZN8rawspeed8RawImageD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN8rawspeed8RawImageD2Ev.exit, !prof !119

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
  %3 = alloca %"struct.std::array.66", align 2    ; 13 uses
  %.sroa.0 = alloca <16 x i16>, align 2           ; 15 uses
  %4 = alloca %"struct.std::array.60", align 2    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !24   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !28   ; 5 uses
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
  store i32 %i.n, ptr %i.d, align 8, !tbaa !28
  br label %bb.d

bb.d:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit, %bb.a
  %i.p = phi i32 [ %i.n, %_ZN8rawspeed10ByteStream9skipBytesEj.exit ], [ %i.e, %bb.a ] ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = sub nuw nsw i32 %i.c, %i.p               ; 47 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q ; 30 uses
  %i.u = icmp samesign ult i32 %i.r, 4
  br i1 %i.u, label %bb.e, label %.lr.ph

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_16BitStreamerMSB32EEC2ENS_10Array1DRefIKSt4byteEE) #11
  unreachable

.lr.ph:                                           ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store i32 7, ptr %i.v, align 8, !tbaa !143
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 4 uses
  store i32 0, ptr %i.w, align 4, !tbaa !144
  %i.x = icmp ult i32 %1, 2                       ; 2 uses
  %i.y = select i1 %i.x, i32 7, i32 4             ; 3 uses
  %.022.ptr = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 17 uses
  %i.z = insertelement <4 x i32> poison, i32 %i.y, i64 0
  %i.aa = shufflevector <4 x i32> %i.z, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.aa, ptr %.022.ptr, align 8, !tbaa !20
  %.022.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.y, ptr %i.ab, align 4, !tbaa !20
  store i32 %i.y, ptr %.022.ptr.2, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !107 ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, 15
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = and i32 %i.ad, 15
  %i.ag = icmp eq i32 %i.af, 0
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ai = add nuw nsw i32 %i.r, 8                 ; 15 uses
  %i.aj = icmp slt i32 %1, 2
  %i.ak = add nsw i32 %1, -2                      ; 2 uses
  %i.al = add nsw i32 %1, -1                      ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 30
  %.not32.i = trunc i32 %1 to i1                  ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 30
  %spec.select = select i1 %.not32.i, i64 0, i64 2 ; 4 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4 ; 2 uses
  %spec.select652 = select i1 %.not32.i, i64 0, i64 2 ; 4 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select652
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select652
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select652
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select652 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4 ; 2 uses
  %.not32.i.mask = and i32 %1, 1
  %spec.select653 = zext nneg i32 %.not32.i.mask to i64 ; 4 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select653
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select653
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select653
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select653 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4 ; 2 uses
  %.not32.i.mask655 = and i32 %1, 1
  %spec.select654 = zext nneg i32 %.not32.i.mask655 to i64 ; 4 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select654
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select654
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select654
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.022.ptr, i64 %spec.select654 ; 2 uses
  %.sroa.0.24..sroa_idx703 = getelementptr inbounds nuw i8, ptr %i.bq, i64 4 ; 2 uses
  %.sroa.0.28..sroa_idx707 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 28
  %.sroa.0.2..sroa_idx694 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  %.sroa.0.18..sroa_idx697 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 18
  %.sroa.0.26..sroa_idx705 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 26
  %.sroa.0.2..sroa_idx695 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  %.sroa.0.30..sroa_idx709 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 30
  %.sroa.0.4..sroa_idx696 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  %.sroa.0.20..sroa_idx698 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 20
  br label %bb.g

._crit_edge:                                      ; preds = %.preheader
  %.pre = load i32, ptr %i.d, align 8, !tbaa !28  ; 2 uses
  %.pre522 = load i32, ptr %i.b, align 8, !tbaa !24 ; 3 uses
  %.pre530 = zext i32 %.pre to i64
  %i.br = icmp samesign ult i32 %.sroa.30.10, 65
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = icmp sgt i32 %.sroa.80211.10, -1
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = and i32 %.sroa.80211.10, 3
  %i.bu = icmp eq i32 %i.bt, 0
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = lshr i32 %.sroa.30.10, 3
  %i.bw = sub nsw i32 %.sroa.80211.10, %i.bv      ; 3 uses
  %i.bx = zext i32 %i.bw to i64
  %i.by = add nuw nsw i64 %.pre530, %i.bx
  %i.bz = zext i32 %.pre522 to i64
  %.not.i.i45 = icmp samesign ugt i64 %i.by, %i.bz
  br i1 %.not.i.i45, label %bb.f, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit46

bb.f:                                             ; preds = %._crit_edge
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #11
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit46:      ; preds = %._crit_edge
  %i.ca = icmp sgt i32 %.pre522, -1
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = add nuw nsw i32 %.pre, %i.bw            ; 2 uses
  %i.cc = icmp samesign ule i32 %i.cb, %.pre522
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = icmp sgt i32 %i.bw, -1
  tail call void @llvm.assume(i1 %i.cd)
  store i32 %i.cb, ptr %i.d, align 8, !tbaa !28
  ret void

bb.g:                                             ; preds = %.lr.ph, %.preheader
  %indvars.iv458 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next459, %.preheader ] ; 8 uses
  %i.ce = phi i32 [ %i.ad, %.lr.ph ], [ %i.xn, %.preheader ] ; 3 uses
  %.sroa.0174.0409 = phi i64 [ 0, %.lr.ph ], [ %.sroa.0174.10, %.preheader ] ; 3 uses
  %.sroa.30.0408 = phi i32 [ 0, %.lr.ph ], [ %.sroa.30.10, %.preheader ] ; 6 uses
  %.sroa.80211.0407 = phi i32 [ 0, %.lr.ph ], [ %.sroa.80211.10, %.preheader ] ; 8 uses
  %i.cf = shl nuw i64 %indvars.iv458, 1
  %i.cg = add i64 %i.cf, 8589934560
  %i.ch = and i64 %i.cg, 8589934560
  %i.ci = load ptr, ptr %0, align 8, !tbaa !17    ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 568
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !145, !noalias !146 ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 592
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !98, !noalias !146
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 608
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !147, !noalias !146
  %i.cp = mul nsw i32 %i.co, %i.cm                ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 612
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !148, !noalias !146 ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !149, !noalias !146
  %i.cu = ashr i32 %i.ct, 1                       ; 7 uses
  %i.cv = icmp ne i32 %i.cu, 0
  tail call void @llvm.assume(i1 %i.cv)
  %i.cw = icmp sge i32 %i.cu, %i.cp
  tail call void @llvm.assume(i1 %i.cw)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.cx = load i8, ptr %i.ah, align 4, !tbaa !109, !noalias !150 ; 3 uses
  %i.cy = and i8 %i.cx, 4
  %.not323 = icmp eq i8 %i.cy, 0
  %i.cz = and i64 %indvars.iv458, 48
  %i.da = icmp eq i64 %i.cz, 0
  %or.cond66.i = and i1 %i.da, %.not323
  br i1 %or.cond66.i, label %bb.h, label %bb.v

bb.h:                                             ; preds = %bb.g
  %i.db = icmp samesign ult i32 %.sroa.30.0408, 65
  tail call void @llvm.assume(i1 %i.db), !noalias !150
  %i.dc = icmp sgt i32 %.sroa.80211.0407, -1
  tail call void @llvm.assume(i1 %i.dc), !noalias !150
  %i.dd = and i32 %.sroa.80211.0407, 3
  %i.de = icmp eq i32 %i.dd, 0
  tail call void @llvm.assume(i1 %i.de), !noalias !150
  %.not.i.i48 = icmp samesign ult i32 %.sroa.30.0408, 2
  br i1 %.not.i.i48, label %bb.i, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.df = add nuw nsw i32 %.sroa.80211.0407, 4    ; 2 uses
  %.not.i.i.i = icmp samesign ugt i32 %i.df, %i.r
  br i1 %.not.i.i.i, label %bb.k, label %bb.j, !prof !119

bb.j:                                             ; preds = %bb.i
  %i.dg = zext nneg i32 %.sroa.80211.0407 to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.dg
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.di = icmp samesign ugt i32 %.sroa.80211.0407, %i.ai
  br i1 %i.di, label %bb.l, label %bb.m, !prof !119

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !150
  unreachable

bb.m:                                             ; preds = %bb.k
  store i32 0, ptr %.sroa.0.i.i.i, align 4, !noalias !150
  %.sroa.speculated27.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80211.0407) ; 3 uses
  %i.dj = add nuw nsw i32 %.sroa.speculated27.i.i.i.i, 4
  %.sroa.speculated.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.dj)
  %i.dk = sub nsw i32 %.sroa.speculated.i.i.i.i, %.sroa.speculated27.i.i.i.i ; 2 uses
  %i.dl = icmp samesign ult i32 %i.dk, 5
  tail call void @llvm.assume(i1 %i.dl), !noalias !150
  %i.dm = zext nneg i32 %.sroa.speculated27.i.i.i.i to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.dm
  %i.do = zext nneg i32 %i.dk to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i, ptr align 1 %i.dn, i64 %i.do, i1 false), !noalias !150
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i: ; preds = %bb.m, %bb.j
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i = phi ptr [ %.sroa.0.i.i.i, %bb.m ], [ %i.dh, %bb.j ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i, align 1, !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.dp = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i to i64
  %i.dq = or disjoint i32 %.sroa.30.0408, 32
  %i.dr = sub nuw nsw i32 32, %.sroa.30.0408
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = shl nuw i64 %i.dp, %i.ds
  %i.du = or i64 %i.dt, %.sroa.0174.0409
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit: ; preds = %bb.h, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i
  %.sroa.80211.11 = phi i32 [ %i.df, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i ], [ %.sroa.80211.0407, %bb.h ] ; 7 uses
  %i.dv = phi i64 [ %i.du, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i ], [ %.sroa.0174.0409, %bb.h ] ; 2 uses
  %i.dw = phi i32 [ %i.dq, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i ], [ %.sroa.30.0408, %bb.h ] ; 4 uses
  %i.dx = lshr i64 %i.dv, 62                      ; 2 uses
  %i.dy = add nsw i32 %i.dw, -2                   ; 2 uses
  %i.dz = shl i64 %i.dv, 2                        ; 3 uses
  %.not324 = icmp eq i64 %i.dx, 3
  br i1 %.not324, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit
  %i.ea = load i32, ptr %i.w, align 4, !tbaa !144, !noalias !150
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr @_ZZN8rawspeed21SamsungV2Decompressor21prepareBaselineValuesERNS_16BitStreamerMSB32EiiE9scalevals, i64 %i.dx
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !20, !noalias !150
  %i.ed = add nsw i32 %i.ec, %i.ea
  br label %bb.u

bb.o:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit
  %i.ee = and i32 %.sroa.80211.11, 3
  %i.ef = icmp eq i32 %i.ee, 0
  tail call void @llvm.assume(i1 %i.ef), !noalias !150
  %.not.i.i50 = icmp samesign ult i32 %i.dw, 14
  br i1 %.not.i.i50, label %bb.p, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit62

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i49)
  %i.eg = add nuw nsw i32 %.sroa.80211.11, 4      ; 2 uses
  %.not.i.i.i53 = icmp samesign ugt i32 %i.eg, %i.r
  br i1 %.not.i.i.i53, label %bb.r, label %bb.q, !prof !119

bb.q:                                             ; preds = %bb.p
  %i.eh = zext nneg i32 %.sroa.80211.11 to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.eh
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i55

bb.r:                                             ; preds = %bb.p
  %i.ej = icmp samesign ugt i32 %.sroa.80211.11, %i.ai
  br i1 %i.ej, label %bb.s, label %bb.t, !prof !119

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !150
  unreachable

bb.t:                                             ; preds = %bb.r
  store i32 0, ptr %.sroa.0.i.i.i49, align 4, !noalias !150
  %.sroa.speculated27.i.i.i.i60 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80211.11) ; 3 uses
  %i.ek = add nuw nsw i32 %.sroa.speculated27.i.i.i.i60, 4
  %.sroa.speculated.i.i.i.i61 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.ek)
  %i.el = sub nsw i32 %.sroa.speculated.i.i.i.i61, %.sroa.speculated27.i.i.i.i60 ; 2 uses
  %i.em = icmp samesign ult i32 %i.el, 5
  tail call void @llvm.assume(i1 %i.em), !noalias !150
  %i.en = zext nneg i32 %.sroa.speculated27.i.i.i.i60 to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.en
  %i.ep = zext nneg i32 %i.el to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i49, ptr align 1 %i.eo, i64 %i.ep, i1 false), !noalias !150
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i55

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i55: ; preds = %bb.t, %bb.q
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i56 = phi ptr [ %.sroa.0.i.i.i49, %bb.t ], [ %i.ei, %bb.q ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i57 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i56, align 1, !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i49)
  %i.eq = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i57 to i64
  %i.er = add nuw nsw i32 %i.dw, 30
  %i.es = sub nuw nsw i32 34, %i.dw
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = shl nuw i64 %i.eq, %i.et
  %i.ev = or i64 %i.eu, %i.dz
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit62

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit62: ; preds = %bb.o, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i55
  %.sroa.80211.12 = phi i32 [ %i.eg, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i55 ], [ %.sroa.80211.11, %bb.o ]
  %i.ew = phi i64 [ %i.ev, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i55 ], [ %i.dz, %bb.o ] ; 2 uses
  %i.ex = phi i32 [ %i.er, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i55 ], [ %i.dy, %bb.o ]
end_hunk_0
begin_hunk_1_@_ZN8rawspeed21SamsungV2Decompressor13decompressRowEi:bb.a
  switch i32 %i.pb, label %default.unreachable [
    i32 0, label %bb.cw
    i32 1, label %bb.cv
    i32 2, label %bb.ct
    i32 3, label %bb.co
  ]

bb.co:                                            ; preds = %.preheader327.2
  %i.qo = icmp samesign ult i32 %.sroa.30.8.1, 65
  tail call void @llvm.assume(i1 %i.qo), !noalias !152
  %i.qp = icmp sgt i32 %.sroa.80211.8.1, -1
  tail call void @llvm.assume(i1 %i.qp), !noalias !152
  %i.qq = and i32 %.sroa.80211.8.1, 3
  %i.qr = icmp eq i32 %i.qq, 0
  tail call void @llvm.assume(i1 %i.qr), !noalias !152
  %.not.i.i143.2 = icmp samesign ult i32 %.sroa.30.8.1, 4
  br i1 %.not.i.i143.2, label %bb.cp, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.2

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i142)
  %i.qs = add nuw nsw i32 %.sroa.80211.8.1, 4     ; 2 uses
  %.not.i.i.i146.2 = icmp samesign ugt i32 %i.qs, %i.r
  br i1 %.not.i.i.i146.2, label %bb.cr, label %bb.cq, !prof !119

bb.cq:                                            ; preds = %bb.cp
  %i.qt = zext nneg i32 %.sroa.80211.8.1 to i64
  %i.qu = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.qt
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.2

bb.cr:                                            ; preds = %bb.cp
  %i.qv = icmp samesign ugt i32 %.sroa.80211.8.1, %i.ai
  br i1 %i.qv, label %bb.ds, label %bb.cs, !prof !119

bb.cs:                                            ; preds = %bb.cr
  store i32 0, ptr %.sroa.0.i.i.i142, align 4, !noalias !152
  %.sroa.speculated27.i.i.i.i153.2 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80211.8.1) ; 3 uses
  %i.qw = add nuw nsw i32 %.sroa.speculated27.i.i.i.i153.2, 4
  %.sroa.speculated.i.i.i.i154.2 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.qw)
  %i.qx = sub nsw i32 %.sroa.speculated.i.i.i.i154.2, %.sroa.speculated27.i.i.i.i153.2 ; 2 uses
  %i.qy = icmp samesign ult i32 %i.qx, 5
  tail call void @llvm.assume(i1 %i.qy), !noalias !152
  %i.qz = zext nneg i32 %.sroa.speculated27.i.i.i.i153.2 to i64
  %i.ra = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.qz
  %i.rb = zext nneg i32 %i.qx to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i142, ptr align 1 %i.ra, i64 %i.rb, i1 false), !noalias !152
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.2

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.2: ; preds = %bb.cs, %bb.cq
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i149.2 = phi ptr [ %.sroa.0.i.i.i142, %bb.cs ], [ %i.qu, %bb.cq ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i150.2 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i149.2, align 1, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i142)
  %i.rc = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i150.2 to i64
  %i.rd = or disjoint i32 %.sroa.30.8.1, 32
  %i.re = sub nuw nsw i32 32, %.sroa.30.8.1
  %i.rf = zext nneg i32 %i.re to i64
  %i.rg = shl nuw i64 %i.rc, %i.rf
  %i.rh = or i64 %i.rg, %.sroa.0174.8.1
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.2

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.2: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.2, %bb.co
  %.sroa.80211.18.2 = phi i32 [ %i.qs, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.2 ], [ %.sroa.80211.8.1, %bb.co ]
  %i.ri = phi i64 [ %i.rh, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.2 ], [ %.sroa.0174.8.1, %bb.co ] ; 2 uses
  %i.rj = phi i32 [ %i.rd, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.2 ], [ %.sroa.30.8.1, %bb.co ]
  %i.rk = lshr i64 %i.ri, 60
  %i.rl = add nsw i32 %i.rj, -4
  %i.rm = shl i64 %i.ri, 4
  br label %bb.cx

bb.ct:                                            ; preds = %.preheader327.2
  %i.rn = load i32, ptr %i.bi, align 8, !tbaa !20, !noalias !152 ; 2 uses
  %i.ro = icmp eq i32 %i.rn, 0
  br i1 %i.ro, label %bb.dm, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.rp = add nsw i32 %i.rn, -1
  %.sroa.14491.8.insert.ext493 = zext i32 %i.rp to i64
  br label %bb.cx

bb.cv:                                            ; preds = %.preheader327.2
  %i.rq = load i32, ptr %i.bj, align 8, !tbaa !20, !noalias !152
  %i.rr = add nsw i32 %i.rq, 1
  %.sroa.14491.8.insert.ext497 = zext i32 %i.rr to i64
  br label %bb.cx

bb.cw:                                            ; preds = %.preheader327.2
  %i.rs = load i32, ptr %i.bk, align 8, !tbaa !20, !noalias !152
  %.sroa.14491.8.insert.ext501 = zext i32 %i.rs to i64
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %bb.cu, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.2
  %.sroa.14491.1 = phi i64 [ %.sroa.14491.8.insert.ext501, %bb.cw ], [ %.sroa.14491.8.insert.ext497, %bb.cv ], [ %.sroa.14491.8.insert.ext493, %bb.cu ], [ %i.rk, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.2 ] ; 2 uses
  %.sroa.80211.8.2 = phi i32 [ %.sroa.80211.8.1, %bb.cw ], [ %.sroa.80211.8.1, %bb.cv ], [ %.sroa.80211.8.1, %bb.cu ], [ %.sroa.80211.18.2, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.2 ] ; 10 uses
  %.sroa.30.8.2 = phi i32 [ %.sroa.30.8.1, %bb.cw ], [ %.sroa.30.8.1, %bb.cv ], [ %.sroa.30.8.1, %bb.cu ], [ %i.rl, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.2 ] ; 8 uses
  %.sroa.0174.8.2 = phi i64 [ %.sroa.0174.8.1, %bb.cw ], [ %.sroa.0174.8.1, %bb.cv ], [ %.sroa.0174.8.1, %bb.cu ], [ %i.rm, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.2 ] ; 5 uses
  %i.rt = load i32, ptr %i.bm, align 4, !tbaa !20, !noalias !152
  store i32 %i.rt, ptr %i.bl, align 8, !tbaa !20, !noalias !152
  %.sroa.14491.8.extract.trunc = trunc nuw i64 %.sroa.14491.1 to i32 ; 3 uses
  store i32 %.sroa.14491.8.extract.trunc, ptr %i.bm, align 4, !tbaa !20, !noalias !152
  %i.ru = icmp ult i32 %i.uo, %.sroa.14491.8.extract.trunc
  br i1 %i.ru, label %bb.dv, label %.preheader327.3

.preheader327.3:                                  ; preds = %bb.cx
  switch i32 %i.pd, label %default.unreachable [
    i32 0, label %bb.dg
    i32 1, label %bb.df
    i32 2, label %bb.dd
    i32 3, label %bb.cy
  ]

bb.cy:                                            ; preds = %.preheader327.3
  %i.rv = icmp samesign ult i32 %.sroa.30.8.2, 65
  tail call void @llvm.assume(i1 %i.rv), !noalias !152
  %i.rw = icmp sgt i32 %.sroa.80211.8.2, -1
  tail call void @llvm.assume(i1 %i.rw), !noalias !152
  %i.rx = and i32 %.sroa.80211.8.2, 3
  %i.ry = icmp eq i32 %i.rx, 0
  tail call void @llvm.assume(i1 %i.ry), !noalias !152
  %.not.i.i143.3 = icmp samesign ult i32 %.sroa.30.8.2, 4
  br i1 %.not.i.i143.3, label %bb.cz, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.3

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i142)
  %i.rz = add nuw nsw i32 %.sroa.80211.8.2, 4     ; 2 uses
  %.not.i.i.i146.3 = icmp samesign ugt i32 %i.rz, %i.r
  br i1 %.not.i.i.i146.3, label %bb.db, label %bb.da, !prof !119

bb.da:                                            ; preds = %bb.cz
  %i.sa = zext nneg i32 %.sroa.80211.8.2 to i64
  %i.sb = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.sa
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.3

bb.db:                                            ; preds = %bb.cz
  %i.sc = icmp samesign ugt i32 %.sroa.80211.8.2, %i.ai
  br i1 %i.sc, label %bb.ds, label %bb.dc, !prof !119

bb.dc:                                            ; preds = %bb.db
  store i32 0, ptr %.sroa.0.i.i.i142, align 4, !noalias !152
  %.sroa.speculated27.i.i.i.i153.3 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80211.8.2) ; 3 uses
  %i.sd = add nuw nsw i32 %.sroa.speculated27.i.i.i.i153.3, 4
  %.sroa.speculated.i.i.i.i154.3 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.sd)
  %i.se = sub nsw i32 %.sroa.speculated.i.i.i.i154.3, %.sroa.speculated27.i.i.i.i153.3 ; 2 uses
  %i.sf = icmp samesign ult i32 %i.se, 5
  tail call void @llvm.assume(i1 %i.sf), !noalias !152
  %i.sg = zext nneg i32 %.sroa.speculated27.i.i.i.i153.3 to i64
  %i.sh = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.sg
  %i.si = zext nneg i32 %i.se to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i142, ptr align 1 %i.sh, i64 %i.si, i1 false), !noalias !152
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.3

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.3: ; preds = %bb.dc, %bb.da
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i149.3 = phi ptr [ %.sroa.0.i.i.i142, %bb.dc ], [ %i.sb, %bb.da ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i150.3 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i149.3, align 1, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i142)
  %i.sj = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i150.3 to i64
  %i.sk = or disjoint i32 %.sroa.30.8.2, 32
  %i.sl = sub nuw nsw i32 32, %.sroa.30.8.2
  %i.sm = zext nneg i32 %i.sl to i64
  %i.sn = shl nuw i64 %i.sj, %i.sm
  %i.so = or i64 %i.sn, %.sroa.0174.8.2
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.3

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.3: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.3, %bb.cy
  %.sroa.80211.18.3 = phi i32 [ %i.rz, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.3 ], [ %.sroa.80211.8.2, %bb.cy ]
  %i.sp = phi i64 [ %i.so, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.3 ], [ %.sroa.0174.8.2, %bb.cy ] ; 2 uses
  %i.sq = phi i32 [ %i.sk, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148.3 ], [ %.sroa.30.8.2, %bb.cy ]
  %i.sr = add nsw i32 %i.sq, -4
  %i.ss = shl i64 %i.sp, 4
  %i.st = lshr i64 %i.sp, 28
  %.sroa.14491.12.insert.shift = and i64 %i.st, 64424509440
  br label %bb.dh

bb.dd:                                            ; preds = %.preheader327.3
  %i.su = load i32, ptr %i.bn, align 8, !tbaa !20, !noalias !152 ; 2 uses
  %i.sv = icmp eq i32 %i.su, 0
  br i1 %i.sv, label %bb.dm, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.sw = add nsw i32 %i.su, -1
  %.sroa.14491.12.insert.ext506 = zext i32 %i.sw to i64
  %.sroa.14491.12.insert.shift507 = shl nuw i64 %.sroa.14491.12.insert.ext506, 32
  br label %bb.dh

bb.df:                                            ; preds = %.preheader327.3
  %i.sx = load i32, ptr %i.bo, align 8, !tbaa !20, !noalias !152
  %i.sy = add nsw i32 %i.sx, 1
  %.sroa.14491.12.insert.ext511 = zext i32 %i.sy to i64
  %.sroa.14491.12.insert.shift512 = shl nuw i64 %.sroa.14491.12.insert.ext511, 32
  br label %bb.dh

bb.dg:                                            ; preds = %.preheader327.3
  %i.sz = load i32, ptr %i.bp, align 8, !tbaa !20, !noalias !152
  %.sroa.14491.12.insert.ext516 = zext i32 %i.sz to i64
  %.sroa.14491.12.insert.shift517 = shl nuw i64 %.sroa.14491.12.insert.ext516, 32
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df, %bb.de, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.3
  %.sroa.14491.12.insert.shift517.pn = phi i64 [ %.sroa.14491.12.insert.shift517, %bb.dg ], [ %.sroa.14491.12.insert.shift512, %bb.df ], [ %.sroa.14491.12.insert.shift507, %bb.de ], [ %.sroa.14491.12.insert.shift, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.3 ] ; 2 uses
  %.sroa.80211.8.3 = phi i32 [ %.sroa.80211.8.2, %bb.dg ], [ %.sroa.80211.8.2, %bb.df ], [ %.sroa.80211.8.2, %bb.de ], [ %.sroa.80211.18.3, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.3 ]
  %.sroa.30.8.3 = phi i32 [ %.sroa.30.8.2, %bb.dg ], [ %.sroa.30.8.2, %bb.df ], [ %.sroa.30.8.2, %bb.de ], [ %i.sr, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.3 ]
  %.sroa.0174.8.3 = phi i64 [ %.sroa.0174.8.2, %bb.dg ], [ %.sroa.0174.8.2, %bb.df ], [ %.sroa.0174.8.2, %bb.de ], [ %i.ss, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155.3 ]
  %i.ta = load i32, ptr %.sroa.0.24..sroa_idx703, align 4, !tbaa !20, !noalias !152
  store i32 %i.ta, ptr %i.bq, align 8, !tbaa !20, !noalias !152
  %.sroa.14491.12.extract.shift = lshr exact i64 %.sroa.14491.12.insert.shift517.pn, 32
  %.sroa.14491.12.extract.trunc = trunc nuw i64 %.sroa.14491.12.extract.shift to i32 ; 3 uses
  store i32 %.sroa.14491.12.extract.trunc, ptr %.sroa.0.24..sroa_idx703, align 4, !tbaa !20, !noalias !152
  %i.tb = icmp ult i32 %i.uo, %.sroa.14491.12.extract.trunc
  br i1 %i.tb, label %bb.dv, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %.sroa.14491.2 = or disjoint i64 %.sroa.14491.1, %.sroa.14491.12.insert.shift517.pn
  %i.tc = zext i32 %.sroa.0486.sroa.9.1 to i64
  %i.td = shl nuw i64 %i.tc, 32
  %i.te = zext i32 %.sroa.0486.sroa.0.0 to i64
  %i.tf = or disjoint i64 %i.td, %i.te
  br label %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit

bb.dj:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3
  %i.tg = load i32, ptr %i.ba, align 8, !tbaa !20, !noalias !152
  br label %bb.du

bb.dk:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3
  %i.th = load i32, ptr %i.az, align 8, !tbaa !20, !noalias !152
  %i.ti = add nsw i32 %i.th, 1
  br label %bb.du

bb.dl:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3
  %i.tj = load i32, ptr %i.ay, align 8, !tbaa !20, !noalias !152 ; 2 uses
  %i.tk = icmp eq i32 %i.tj, 0
  br i1 %i.tk, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dd, %bb.ct, %bb.cj, %bb.dl
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei) #11, !noalias !152
  unreachable

bb.dn:                                            ; preds = %bb.dl
  %i.tl = add nsw i32 %i.tj, -1
  br label %bb.du

bb.do:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3
  %i.tm = icmp samesign ult i32 %i.pa, 67
  tail call void @llvm.assume(i1 %i.tm), !noalias !152
  %i.tn = icmp sgt i32 %.sroa.80211.17.3, -1
  tail call void @llvm.assume(i1 %i.tn), !noalias !152
  %i.to = and i32 %.sroa.80211.17.3, 3
  %i.tp = icmp eq i32 %i.to, 0
  tail call void @llvm.assume(i1 %i.tp), !noalias !152
  %.not.i.i143 = icmp samesign ult i32 %i.pa, 6
  br i1 %.not.i.i143, label %bb.dp, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i142)
  %i.tq = add nuw nsw i32 %.sroa.80211.17.3, 4    ; 2 uses
  %.not.i.i.i146 = icmp samesign ugt i32 %i.tq, %i.r
  br i1 %.not.i.i.i146, label %bb.dr, label %bb.dq, !prof !119

bb.dq:                                            ; preds = %bb.dp
  %i.tr = zext nneg i32 %.sroa.80211.17.3 to i64
  %i.ts = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.tr
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148

bb.dr:                                            ; preds = %bb.dp
  %i.tt = icmp samesign ugt i32 %.sroa.80211.17.3, %i.ai
  br i1 %i.tt, label %bb.ds, label %bb.dt, !prof !119

bb.ds:                                            ; preds = %bb.db, %bb.cr, %bb.ch, %bb.dr
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !152
  unreachable

bb.dt:                                            ; preds = %bb.dr
  store i32 0, ptr %.sroa.0.i.i.i142, align 4, !noalias !152
  %.sroa.speculated27.i.i.i.i153 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80211.17.3) ; 3 uses
  %i.tu = add nuw nsw i32 %.sroa.speculated27.i.i.i.i153, 4
  %.sroa.speculated.i.i.i.i154 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.tu)
  %i.tv = sub nsw i32 %.sroa.speculated.i.i.i.i154, %.sroa.speculated27.i.i.i.i153 ; 2 uses
  %i.tw = icmp samesign ult i32 %i.tv, 5
  tail call void @llvm.assume(i1 %i.tw), !noalias !152
  %i.tx = zext nneg i32 %.sroa.speculated27.i.i.i.i153 to i64
  %i.ty = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.tx
  %i.tz = zext nneg i32 %i.tv to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i142, ptr align 1 %i.ty, i64 %i.tz, i1 false), !noalias !152
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148: ; preds = %bb.dt, %bb.dq
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i149 = phi ptr [ %.sroa.0.i.i.i142, %bb.dt ], [ %i.ts, %bb.dq ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i150 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i149, align 1, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i142)
  %i.ua = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i150 to i64
  %i.ub = or disjoint i32 %i.pe, 32
  %i.uc = sub nuw nsw i32 34, %i.pa
  %i.ud = zext nneg i32 %i.uc to i64
  %i.ue = shl nuw i64 %i.ua, %i.ud
  %i.uf = or i64 %i.ue, %i.pf
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155: ; preds = %bb.do, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148
  %.sroa.80211.18 = phi i32 [ %i.tq, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148 ], [ %.sroa.80211.17.3, %bb.do ]
  %i.ug = phi i64 [ %i.uf, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148 ], [ %i.pf, %bb.do ] ; 2 uses
  %i.uh = phi i32 [ %i.ub, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148 ], [ %i.pe, %bb.do ]
  %i.ui = lshr i64 %i.ug, 60
  %i.uj = trunc nuw nsw i64 %i.ui to i32
  %i.uk = add nsw i32 %i.uh, -4
  %i.ul = shl i64 %i.ug, 4
  br label %bb.du

default.unreachable:                              ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit141.3, %.preheader327.3, %.preheader327.2, %.preheader327.1
  unreachable

bb.du:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155, %bb.dn, %bb.dk, %bb.dj
  %.sroa.0486.sroa.0.0 = phi i32 [ %i.tg, %bb.dj ], [ %i.ti, %bb.dk ], [ %i.tl, %bb.dn ], [ %i.uj, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155 ] ; 4 uses
  %.sroa.80211.8 = phi i32 [ %.sroa.80211.17.3, %bb.dj ], [ %.sroa.80211.17.3, %bb.dk ], [ %.sroa.80211.17.3, %bb.dn ], [ %.sroa.80211.18, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155 ] ; 10 uses
  %.sroa.30.8 = phi i32 [ %i.pe, %bb.dj ], [ %i.pe, %bb.dk ], [ %i.pe, %bb.dn ], [ %i.uk, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155 ] ; 8 uses
  %.sroa.0174.8 = phi i64 [ %i.pf, %bb.dj ], [ %i.pf, %bb.dk ], [ %i.pf, %bb.dn ], [ %i.ul, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155 ] ; 5 uses
  %i.um = load i32, ptr %i.bc, align 4, !tbaa !20, !noalias !152
  store i32 %i.um, ptr %i.bb, align 8, !tbaa !20, !noalias !152
  store i32 %.sroa.0486.sroa.0.0, ptr %i.bc, align 4, !tbaa !20, !noalias !152
  %i.un = load i32, ptr %i.an, align 8, !tbaa !106, !noalias !152
  %i.uo = add i32 %i.un, 1                        ; 4 uses
  %i.up = icmp ugt i32 %.sroa.0486.sroa.0.0, %i.uo
  br i1 %i.up, label %bb.dv, label %.preheader327.1

bb.dv:                                            ; preds = %bb.dh, %bb.cx, %bb.cn, %bb.du
  %.lcssa416 = phi i32 [ %.sroa.0486.sroa.0.0, %bb.du ], [ %.sroa.0486.sroa.9.1, %bb.cn ], [ %.sroa.14491.8.extract.trunc, %bb.cx ], [ %.sroa.14491.12.extract.trunc, %bb.dh ]
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei, i32 noundef %.lcssa416) #11, !noalias !152
  unreachable

_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127, %bb.di
  %.sroa.14491.0 = phi i64 [ %.sroa.14491.2, %bb.di ], [ 0, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ]
  %.sroa.80211.9 = phi i32 [ %.sroa.80211.8.3, %bb.di ], [ %.sroa.80211.16, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ]
  %.sroa.30.9 = phi i32 [ %.sroa.30.8.3, %bb.di ], [ %i.lm, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ]
  %.sroa.0174.9 = phi i64 [ %.sroa.0174.8.3, %bb.di ], [ %i.ln, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ]
  %.sroa.0486.sroa.0.0.insert.insert = phi i64 [ %i.tf, %bb.di ], [ 0, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ]
  store i64 %.sroa.0486.sroa.0.0.insert.insert, ptr %2, align 8, !noalias !152
  store i64 %.sroa.14491.0, ptr %i.ao, align 8, !noalias !152
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15, !noalias !152
  br label %bb.dx

bb.dw:                                            ; preds = %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.uq = load i16, ptr %3, align 2, !tbaa !151, !noalias !152 ; 2 uses
  br i1 %.not32.i, label %bb.ee, label %bb.ef

bb.dx:                                            ; preds = %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit, %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit
  %indvars.iv444 = phi i64 [ 0, %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit ], [ %indvars.iv.next445, %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit ] ; 3 uses
  %.sroa.0174.4401 = phi i64 [ %.sroa.0174.9, %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit ], [ %.sroa.0174.10, %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit ] ; 3 uses
  %.sroa.30.4400 = phi i32 [ %.sroa.30.9, %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit ], [ %.sroa.30.10, %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit ] ; 6 uses
  %.sroa.80211.4399 = phi i32 [ %.sroa.80211.9, %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit ], [ %.sroa.80211.10, %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit ] ; 8 uses
  %i.ur = lshr i64 %indvars.iv444, 2
  %i.us = and i64 %i.ur, 1073741823
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.us
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !20, !noalias !152 ; 6 uses
  %i.uv = icmp eq i32 %i.uu, 0
  br i1 %i.uv, label %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.uw = icmp ult i32 %i.uu, 16
  tail call void @llvm.assume(i1 %i.uw), !noalias !152
  %i.ux = icmp samesign ult i32 %.sroa.30.4400, 65
  tail call void @llvm.assume(i1 %i.ux), !noalias !152
  %i.uy = icmp sgt i32 %.sroa.80211.4399, -1
  tail call void @llvm.assume(i1 %i.uy), !noalias !152
  %i.uz = and i32 %.sroa.80211.4399, 3
  %i.va = icmp eq i32 %i.uz, 0
  tail call void @llvm.assume(i1 %i.va), !noalias !152
  %.not.i.i157 = icmp samesign ult i32 %.sroa.30.4400, %i.uu
  br i1 %.not.i.i157, label %bb.dz, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i156)
  %i.vb = add nuw nsw i32 %.sroa.80211.4399, 4    ; 2 uses
  %.not.i.i.i160 = icmp samesign ugt i32 %i.vb, %i.r
  br i1 %.not.i.i.i160, label %bb.eb, label %bb.ea, !prof !119

bb.ea:                                            ; preds = %bb.dz
  %i.vc = zext nneg i32 %.sroa.80211.4399 to i64
  %i.vd = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.vc
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162

bb.eb:                                            ; preds = %bb.dz
  %i.ve = icmp samesign ugt i32 %.sroa.80211.4399, %i.ai
  br i1 %i.ve, label %bb.ec, label %bb.ed, !prof !119

bb.ec:                                            ; preds = %bb.eb
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !152
  unreachable

bb.ed:                                            ; preds = %bb.eb
  store i32 0, ptr %.sroa.0.i.i.i156, align 4, !noalias !152
  %.sroa.speculated27.i.i.i.i167 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80211.4399) ; 3 uses
  %i.vf = add nuw nsw i32 %.sroa.speculated27.i.i.i.i167, 4
  %.sroa.speculated.i.i.i.i168 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.vf)
  %i.vg = sub nsw i32 %.sroa.speculated.i.i.i.i168, %.sroa.speculated27.i.i.i.i167 ; 2 uses
  %i.vh = icmp samesign ult i32 %i.vg, 5
  tail call void @llvm.assume(i1 %i.vh), !noalias !152
  %i.vi = zext nneg i32 %.sroa.speculated27.i.i.i.i167 to i64
  %i.vj = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.vi
  %i.vk = zext nneg i32 %i.vg to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i156, ptr align 1 %i.vj, i64 %i.vk, i1 false), !noalias !152
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162: ; preds = %bb.ed, %bb.ea
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i163 = phi ptr [ %.sroa.0.i.i.i156, %bb.ed ], [ %i.vd, %bb.ea ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i164 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i163, align 1, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i156)
  %i.vl = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i164 to i64
  %i.vm = add nuw nsw i32 %.sroa.30.4400, 32
  %i.vn = sub nuw nsw i32 32, %.sroa.30.4400
  %i.vo = zext nneg i32 %i.vn to i64
  %i.vp = shl nuw i64 %i.vl, %i.vo
  %i.vq = or i64 %i.vp, %.sroa.0174.4401
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169: ; preds = %bb.dy, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162
  %.sroa.80211.19 = phi i32 [ %i.vb, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162 ], [ %.sroa.80211.4399, %bb.dy ]
  %i.vr = phi i64 [ %i.vq, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162 ], [ %.sroa.0174.4401, %bb.dy ] ; 2 uses
  %i.vs = phi i32 [ %i.vm, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162 ], [ %.sroa.30.4400, %bb.dy ]
  %i.vt = sub nuw nsw i32 64, %i.uu
  %i.vu = zext nneg i32 %i.vt to i64
  %i.vv = sub nuw nsw i32 %i.vs, %i.uu
  %i.vw = zext nneg i32 %i.uu to i64
  %i.vx = shl i64 %i.vr, %i.vw
  %i.vy = ashr i64 %i.vr, %i.vu
  %i.vz = trunc nsw i64 %i.vy to i16
  br label %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit

_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit: ; preds = %bb.dx, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169
  %.sroa.80211.10 = phi i32 [ %.sroa.80211.4399, %bb.dx ], [ %.sroa.80211.19, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169 ] ; 5 uses
  %.sroa.30.10 = phi i32 [ %.sroa.30.4400, %bb.dx ], [ %i.vv, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169 ] ; 4 uses
  %.sroa.0174.10 = phi i64 [ %.sroa.0174.4401, %bb.dx ], [ %i.vx, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169 ] ; 2 uses
  %.0.i42 = phi i16 [ 0, %bb.dx ], [ %i.vz, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169 ]
  %i.wa = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv444
  store i16 %.0.i42, ptr %i.wa, align 2, !tbaa !151, !noalias !152
  %indvars.iv.next445 = add nuw nsw i64 %indvars.iv444, 1 ; 2 uses
  %exitcond447.not = icmp eq i64 %indvars.iv.next445, 16
  br i1 %exitcond447.not, label %bb.dw, label %bb.dx, !llvm.loop !141

bb.ee:                                            ; preds = %bb.dw
  store i16 %i.uq, ptr %.sroa.0.2..sroa_idx695, align 2, !tbaa !151, !noalias !152
  %i.wb = load i16, ptr %i.ar, align 2, !tbaa !151, !noalias !152
  store i16 %i.wb, ptr %.sroa.0.30..sroa_idx709, align 2, !tbaa !151, !noalias !152
  %i.wc = load i16, ptr %i.as, align 2, !tbaa !151, !noalias !152
  store i16 %i.wc, ptr %.sroa.0, align 2, !tbaa !151, !noalias !152
  %i.wd = load <12 x i16>, ptr %i.ap, align 2, !tbaa !151, !noalias !152
  %i.we = shufflevector <12 x i16> %i.wd, <12 x i16> poison, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  store <8 x i16> %i.we, ptr %.sroa.0.4..sroa_idx696, align 2, !tbaa !151, !noalias !152
  %5 = load <10 x i16>, ptr %i.aq, align 2, !tbaa !151, !noalias !152
  %6 = shufflevector <10 x i16> %5, <10 x i16> poison, <4 x i32> <i32 8, i32 0, i32 9, i32 1>
  store <4 x i16> %6, ptr %.sroa.0.20..sroa_idx698, align 2, !tbaa !151, !noalias !152
  br label %.preheader

bb.ef:                                            ; preds = %bb.dw
  store i16 %i.uq, ptr %.sroa.0, align 2, !tbaa !151, !noalias !152
  %i.wf = load i16, ptr %i.av, align 2, !tbaa !151, !noalias !152
  store i16 %i.wf, ptr %.sroa.0.28..sroa_idx707, align 2, !tbaa !151, !noalias !152
  %i.wg = load <11 x i16>, ptr %i.at, align 2, !tbaa !151, !noalias !152
  %i.wh = shufflevector <11 x i16> %i.wg, <11 x i16> poison, <8 x i32> <i32 7, i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3>
  store <8 x i16> %i.wh, ptr %.sroa.0.2..sroa_idx694, align 2, !tbaa !151, !noalias !152
  %7 = load <9 x i16>, ptr %i.au, align 2, !tbaa !151, !noalias !152
  %8 = shufflevector <9 x i16> %7, <9 x i16> poison, <4 x i32> <i32 7, i32 0, i32 8, i32 1>
  store <4 x i16> %8, ptr %.sroa.0.18..sroa_idx697, align 2, !tbaa !151, !noalias !152
  %i.wi = load i16, ptr %i.aw, align 2, !tbaa !151, !noalias !152
  store i16 %i.wi, ptr %.sroa.0.26..sroa_idx705, align 2, !tbaa !151, !noalias !152
  br label %.preheader

.preheader:                                       ; preds = %bb.ef, %bb.ee
  %.024.i.15.sroa.phi = phi ptr [ %.sroa.0.28.gep.sroa_idx706, %bb.ee ], [ %.sroa.0.30.gep688.sroa_idx708, %bb.ef ]
  %i.wj = load i16, ptr %i.ax, align 2, !tbaa !151, !noalias !152
  store i16 %i.wj, ptr %.024.i.15.sroa.phi, align 2, !tbaa !151, !noalias !152
  %i.wk = load i32, ptr %i.w, align 4, !tbaa !144, !noalias !152 ; 2 uses
  %i.wl = icmp samesign ult i32 %1, %i.cr
  %i.wm = mul nuw nsw i32 %i.cu, %1
  %i.wn = zext nneg i32 %i.wm to i64
  %i.wo = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %i.wn
  %i.wp = zext nneg i32 %i.cp to i64
  %i.wq = getelementptr inbounds nuw [2 x i8], ptr %i.wo, i64 %indvars.iv458
  %indvars.iv.next461.14 = or disjoint i64 %indvars.iv458, 15
  %i.wr = icmp samesign ult i64 %indvars.iv.next461.14, %i.wp
  %.sroa.0.0..sroa.0.0. = load <16 x i16>, ptr %.sroa.0, align 2, !tbaa !151
  %i.ws = sext <16 x i16> %.sroa.0.0..sroa.0.0. to <16 x i32>
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15, !noalias !152
  %i.wt = load i32, ptr %i.an, align 8, !tbaa !106 ; 2 uses
  %notmask.i = shl nsw i32 -1, %i.wt
  %i.wu = shl nsw i32 %i.wk, 1
  %i.wv = or disjoint i32 %i.wu, 1
  %i.ww = insertelement <16 x i32> poison, i32 %i.wv, i64 0
  %i.wx = shufflevector <16 x i32> %i.ww, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.wy = mul nsw <16 x i32> %i.wx, %i.ws
  %i.wz = insertelement <16 x i32> poison, i32 %i.wk, i64 0
  %i.xa = shufflevector <16 x i32> %i.wz, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.xb = add nsw <16 x i32> %i.wy, %i.xa
  %i.xc = icmp ult i32 %i.wt, 17
  tail call void @llvm.assume(i1 %i.xc)
  %i.xd = xor i32 %notmask.i, -1
  tail call void @llvm.assume(i1 %i.wl)
  %i.xe = load <16 x i16>, ptr %4, align 2, !tbaa !151
  %i.xf = zext <16 x i16> %i.xe to <16 x i32>
  %i.xg = add nsw <16 x i32> %i.xb, %i.xf         ; 2 uses
  %i.xh = insertelement <16 x i32> poison, i32 %i.xd, i64 0
  %i.xi = shufflevector <16 x i32> %i.xh, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.xj = icmp sgt <16 x i32> %i.xg, %i.xi
  %i.xk = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.xg, <16 x i32> zeroinitializer)
  %i.xl = select <16 x i1> %i.xj, <16 x i32> %i.xi, <16 x i32> %i.xk
  %i.xm = trunc <16 x i32> %i.xl to <16 x i16>
  tail call void @llvm.assume(i1 %i.wr)
  store <16 x i16> %i.xm, ptr %i.wq, align 2, !tbaa !151
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %indvars.iv.next459 = add nuw nsw i64 %indvars.iv458, 16 ; 2 uses
  %i.xn = load i32, ptr %i.ac, align 4, !tbaa !107 ; 2 uses
  %i.xo = trunc nuw i64 %indvars.iv.next459 to i32
  %i.xp = icmp sgt i32 %i.xn, %i.xo
  br i1 %i.xp, label %bb.g, label %._crit_edge, !llvm.loop !142
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed21SamsungV2Decompressor10decompressEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !108
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.03 = phi i32 [ %i.d, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  tail call void @_ZN8rawspeed21SamsungV2Decompressor13decompressRowEi(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %.03)
  %i.d = add nuw nsw i32 %.03, 1                  ; 2 uses
  %i.e = load i32, ptr %i.a, align 8, !tbaa !108
  %i.f = icmp slt i32 %i.d, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge, !llvm.loop !153
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !111
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #15, !call_target !116, !inline_history !154
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !20   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !20
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !111
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #15, !call_target !118, !inline_history !154
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
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed11IOExceptionE, i64 16), ptr %0, align 8, !tbaa !111
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #11

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed17RawspeedExceptionE, i64 16), ptr %0, align 8, !tbaa !111
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
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed19RawDecoderExceptionE, i64 16), ptr %0, align 8, !tbaa !111
end_hunk_1
