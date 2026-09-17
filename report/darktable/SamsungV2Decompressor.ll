Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/SamsungV2Decompressor?download=true
inline.NumInlined: 311
inline.NumDeleted: 154
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN8rawspeed21SamsungV2DecompressorC2ERKNS_8RawImageENS_10ByteStreamEj:bb.a
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
  %i.bk = sub nuw i32 %i.z, %i.v                  ; 2 uses
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
  %3 = alloca %"struct.std::array.66", align 2    ; 19 uses
  %.sroa.0 = alloca <16 x i16>, align 2           ; 21 uses
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
  %i.r = sub nuw i32 %i.c, %i.p                   ; 47 uses
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
  %.pre = load i32, ptr %i.d, align 8, !tbaa !28  ; 2 uses
  %.pre522 = load i32, ptr %i.b, align 8, !tbaa !24 ; 3 uses
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
  store i32 %i.ci, ptr %i.d, align 8, !tbaa !28
  ret void

bb.g:                                             ; preds = %.lr.ph, %.preheader
  %indvars.iv458 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next459, %.preheader ] ; 8 uses
  %i.cl = phi i32 [ %i.ad, %.lr.ph ], [ %i.yc, %.preheader ] ; 3 uses
  %.sroa.0174.0409 = phi i64 [ 0, %.lr.ph ], [ %.sroa.0174.10, %.preheader ] ; 3 uses
  %.sroa.30.0408 = phi i32 [ 0, %.lr.ph ], [ %.sroa.30.10, %.preheader ] ; 6 uses
  %.sroa.80211.0407 = phi i32 [ 0, %.lr.ph ], [ %.sroa.80211.10, %.preheader ] ; 8 uses
  %i.cm = shl nuw i64 %indvars.iv458, 1
  %i.cn = add i64 %i.cm, 8589934560
  %i.co = and i64 %i.cn, 8589934560
  %i.cp = load ptr, ptr %0, align 8, !tbaa !17    ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 568
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !145, !noalias !146 ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 592
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !98, !noalias !146
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 608
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !147, !noalias !146
  %i.cw = mul nsw i32 %i.cv, %i.ct                ; 6 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 612
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !148, !noalias !146 ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !149, !noalias !146
  %i.db = ashr i32 %i.da, 1                       ; 7 uses
  %i.dc = icmp ne i32 %i.db, 0
  tail call void @llvm.assume(i1 %i.dc)
  %i.dd = icmp sge i32 %i.db, %i.cw
  tail call void @llvm.assume(i1 %i.dd)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.de = load i8, ptr %i.ah, align 4, !tbaa !109, !noalias !150 ; 3 uses
  %i.df = and i8 %i.de, 4
end_hunk_0
begin_hunk_1_@_ZN8rawspeed21SamsungV2Decompressor13decompressRowEi:bb.a
  %i.tw = icmp eq i32 %i.tv, 0
  tail call void @llvm.assume(i1 %i.tw), !noalias !152
  %.not.i.i143 = icmp samesign ult i32 %i.ph, 6
  br i1 %.not.i.i143, label %bb.dp, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit155

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i142)
  %i.tx = add nuw nsw i32 %.sroa.80211.17.3, 4    ; 2 uses
  %.not.i.i.i146 = icmp samesign ugt i32 %i.tx, %i.r
  br i1 %.not.i.i.i146, label %bb.dr, label %bb.dq, !prof !119

bb.dq:                                            ; preds = %bb.dp
  %i.ty = zext nneg i32 %.sroa.80211.17.3 to i64
  %i.tz = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ty
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148

bb.dr:                                            ; preds = %bb.dp
  %i.ua = icmp samesign ugt i32 %.sroa.80211.17.3, %i.ai
  br i1 %i.ua, label %bb.ds, label %bb.dt, !prof !119

bb.ds:                                            ; preds = %bb.db, %bb.cr, %bb.ch, %bb.dr
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !152
  unreachable

bb.dt:                                            ; preds = %bb.dr
  store i32 0, ptr %.sroa.0.i.i.i142, align 4, !noalias !152
  %.sroa.speculated27.i.i.i.i153 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80211.17.3) ; 3 uses
  %i.ub = add nuw nsw i32 %.sroa.speculated27.i.i.i.i153, 4
  %.sroa.speculated.i.i.i.i154 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.ub)
  %i.uc = sub nsw i32 %.sroa.speculated.i.i.i.i154, %.sroa.speculated27.i.i.i.i153 ; 2 uses
  %i.ud = icmp samesign ult i32 %i.uc, 5
  tail call void @llvm.assume(i1 %i.ud), !noalias !152
  %i.ue = zext nneg i32 %.sroa.speculated27.i.i.i.i153 to i64
  %i.uf = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ue
  %i.ug = zext nneg i32 %i.uc to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i142, ptr align 1 %i.uf, i64 %i.ug, i1 false), !noalias !152
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i148: ; preds = %bb.dt, %bb.dq
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i149 = phi ptr [ %.sroa.0.i.i.i142, %bb.dt ], [ %i.tz, %bb.dq ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i150 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i149, align 1, !noalias !152
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
  %i.ut = load i32, ptr %i.bi, align 4, !tbaa !20, !noalias !152
  store i32 %i.ut, ptr %i.bh, align 8, !tbaa !20, !noalias !152
  store i32 %.sroa.0486.sroa.0.0, ptr %i.bi, align 4, !tbaa !20, !noalias !152
  %i.uu = load i32, ptr %i.an, align 8, !tbaa !106, !noalias !152
  %i.uv = add i32 %i.uu, 1                        ; 4 uses
  %i.uw = icmp ugt i32 %.sroa.0486.sroa.0.0, %i.uv
  br i1 %i.uw, label %bb.dv, label %.preheader327.1

bb.dv:                                            ; preds = %bb.dh, %bb.cx, %bb.cn, %bb.du
  %.lcssa416 = phi i32 [ %.sroa.0486.sroa.0.0, %bb.du ], [ %.sroa.0486.sroa.9.1, %bb.cn ], [ %.sroa.14491.8.extract.trunc, %bb.cx ], [ %.sroa.14491.12.extract.trunc, %bb.dh ]
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.15, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei, i32 noundef %.lcssa416) #11, !noalias !152
  unreachable

_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit: ; preds = %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127, %bb.di
  %.sroa.14491.0 = phi i64 [ %.sroa.14491.2, %bb.di ], [ 0, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ]
  %.sroa.80211.9 = phi i32 [ %.sroa.80211.8.3, %bb.di ], [ %.sroa.80211.16, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ]
  %.sroa.30.9 = phi i32 [ %.sroa.30.8.3, %bb.di ], [ %i.lt, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ]
  %.sroa.0174.9 = phi i64 [ %.sroa.0174.8.3, %bb.di ], [ %i.lu, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ]
  %.sroa.0486.sroa.0.0.insert.insert = phi i64 [ %i.tm, %bb.di ], [ 0, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit127 ]
  store i64 %.sroa.0486.sroa.0.0.insert.insert, ptr %2, align 8, !noalias !152
  store i64 %.sroa.14491.0, ptr %i.ao, align 8, !noalias !152
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15, !noalias !152
  br label %bb.dx

bb.dw:                                            ; preds = %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.ux = load i16, ptr %3, align 2, !tbaa !151, !noalias !152 ; 2 uses
  br i1 %.not32.i, label %bb.ee, label %bb.ef

bb.dx:                                            ; preds = %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit, %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit
  %indvars.iv444 = phi i64 [ 0, %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit ], [ %indvars.iv.next445, %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit ] ; 3 uses
  %.sroa.0174.4401 = phi i64 [ %.sroa.0174.9, %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit ], [ %.sroa.0174.10, %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit ] ; 3 uses
  %.sroa.30.4400 = phi i32 [ %.sroa.30.9, %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit ], [ %.sroa.30.10, %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit ] ; 6 uses
  %.sroa.80211.4399 = phi i32 [ %.sroa.80211.9, %_ZN8rawspeed21SamsungV2Decompressor17decodeDiffLengthsERNS_16BitStreamerMSB32Ei.exit ], [ %.sroa.80211.10, %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit ] ; 8 uses
  %i.uy = lshr i64 %indvars.iv444, 2
  %i.uz = and i64 %i.uy, 1073741823
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.uz
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !20, !noalias !152 ; 6 uses
  %i.vc = icmp eq i32 %i.vb, 0
  br i1 %i.vc, label %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.vd = icmp ult i32 %i.vb, 16
  tail call void @llvm.assume(i1 %i.vd), !noalias !152
  %i.ve = icmp samesign ult i32 %.sroa.30.4400, 65
  tail call void @llvm.assume(i1 %i.ve), !noalias !152
  %i.vf = icmp sgt i32 %.sroa.80211.4399, -1
  tail call void @llvm.assume(i1 %i.vf), !noalias !152
  %i.vg = and i32 %.sroa.80211.4399, 3
  %i.vh = icmp eq i32 %i.vg, 0
  tail call void @llvm.assume(i1 %i.vh), !noalias !152
  %.not.i.i157 = icmp samesign ult i32 %.sroa.30.4400, %i.vb
  br i1 %.not.i.i157, label %bb.dz, label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i156)
  %i.vi = add nuw nsw i32 %.sroa.80211.4399, 4    ; 2 uses
  %.not.i.i.i160 = icmp samesign ugt i32 %i.vi, %i.r
  br i1 %.not.i.i.i160, label %bb.eb, label %bb.ea, !prof !119

bb.ea:                                            ; preds = %bb.dz
  %i.vj = zext nneg i32 %.sroa.80211.4399 to i64
  %i.vk = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.vj
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162

bb.eb:                                            ; preds = %bb.dz
  %i.vl = icmp samesign ugt i32 %.sroa.80211.4399, %i.ai
  br i1 %i.vl, label %bb.ec, label %bb.ed, !prof !119

bb.ec:                                            ; preds = %bb.eb
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv) #11, !noalias !152
  unreachable

bb.ed:                                            ; preds = %bb.eb
  store i32 0, ptr %.sroa.0.i.i.i156, align 4, !noalias !152
  %.sroa.speculated27.i.i.i.i167 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %.sroa.80211.4399) ; 3 uses
  %i.vm = add nuw nsw i32 %.sroa.speculated27.i.i.i.i167, 4
  %.sroa.speculated.i.i.i.i168 = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.vm)
  %i.vn = sub nsw i32 %.sroa.speculated.i.i.i.i168, %.sroa.speculated27.i.i.i.i167 ; 2 uses
  %i.vo = icmp samesign ult i32 %i.vn, 5
  tail call void @llvm.assume(i1 %i.vo), !noalias !152
  %i.vp = zext nneg i32 %.sroa.speculated27.i.i.i.i167 to i64
  %i.vq = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.vp
  %i.vr = zext nneg i32 %i.vn to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i156, ptr align 1 %i.vq, i64 %i.vr, i1 false), !noalias !152
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162: ; preds = %bb.ed, %bb.ea
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i163 = phi ptr [ %.sroa.0.i.i.i156, %bb.ed ], [ %i.vk, %bb.ea ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i164 = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i163, align 1, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i156)
  %i.vs = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i164 to i64
  %i.vt = add nuw nsw i32 %.sroa.30.4400, 32
  %i.vu = sub nuw nsw i32 32, %.sroa.30.4400
  %i.vv = zext nneg i32 %i.vu to i64
  %i.vw = shl nuw i64 %i.vs, %i.vv
  %i.vx = or i64 %i.vw, %.sroa.0174.4401
  br label %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169

_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169: ; preds = %bb.dy, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162
  %.sroa.80211.19 = phi i32 [ %i.vi, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162 ], [ %.sroa.80211.4399, %bb.dy ]
  %i.vy = phi i64 [ %i.vx, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162 ], [ %.sroa.0174.4401, %bb.dy ] ; 2 uses
  %i.vz = phi i32 [ %i.vt, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_16BitStreamerMSB32EE8getInputEv.exit.i.i162 ], [ %.sroa.30.4400, %bb.dy ]
  %i.wa = sub nuw nsw i32 64, %i.vb
  %i.wb = zext nneg i32 %i.wa to i64
  %i.wc = sub nuw nsw i32 %i.vz, %i.vb
  %i.wd = zext nneg i32 %i.vb to i64
  %i.we = shl i64 %i.vy, %i.wd
  %i.wf = ashr i64 %i.vy, %i.wb
  %i.wg = trunc nsw i64 %i.wf to i16
  br label %_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit

_ZN8rawspeed21SamsungV2Decompressor7getDiffERNS_16BitStreamerMSB32Ej.exit: ; preds = %bb.dx, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169
  %.sroa.80211.10 = phi i32 [ %.sroa.80211.4399, %bb.dx ], [ %.sroa.80211.19, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169 ] ; 5 uses
  %.sroa.30.10 = phi i32 [ %.sroa.30.4400, %bb.dx ], [ %i.wc, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169 ] ; 4 uses
  %.sroa.0174.10 = phi i64 [ %.sroa.0174.4401, %bb.dx ], [ %i.we, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169 ] ; 2 uses
  %.0.i42 = phi i16 [ 0, %bb.dx ], [ %i.wg, %_ZN8rawspeed11BitStreamerINS_16BitStreamerMSB32ENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit169 ]
  %i.wh = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv444
  store i16 %.0.i42, ptr %i.wh, align 2, !tbaa !151, !noalias !152
  %indvars.iv.next445 = add nuw nsw i64 %indvars.iv444, 1 ; 2 uses
  %exitcond447.not = icmp eq i64 %indvars.iv.next445, 16
  br i1 %exitcond447.not, label %bb.dw, label %bb.dx, !llvm.loop !141

bb.ee:                                            ; preds = %bb.dw
  store i16 %i.ux, ptr %.sroa.0.2..sroa_idx695, align 2, !tbaa !151, !noalias !152
  %i.wi = load i16, ptr %i.aq, align 2, !tbaa !151, !noalias !152
  store i16 %i.wi, ptr %.sroa.0.22..sroa_idx700, align 2, !tbaa !151, !noalias !152
  %i.wj = load i16, ptr %i.ar, align 2, !tbaa !151, !noalias !152
  store i16 %i.wj, ptr %.sroa.0.26..sroa_idx704, align 2, !tbaa !151, !noalias !152
  %i.wk = load i16, ptr %i.as, align 2, !tbaa !151, !noalias !152
  store i16 %i.wk, ptr %.sroa.0.30..sroa_idx709, align 2, !tbaa !151, !noalias !152
  %i.wl = load i16, ptr %i.at, align 2, !tbaa !151, !noalias !152
  store i16 %i.wl, ptr %.sroa.0, align 2, !tbaa !151, !noalias !152
  %i.wm = load <12 x i16>, ptr %i.ap, align 2, !tbaa !151, !noalias !152
  %i.wn = shufflevector <12 x i16> %i.wm, <12 x i16> poison, <8 x i32> <i32 8, i32 0, i32 9, i32 1, i32 10, i32 2, i32 11, i32 3>
  store <8 x i16> %i.wn, ptr %.sroa.0.4..sroa_idx696, align 2, !tbaa !151, !noalias !152
  %i.wo = load i16, ptr %i.au, align 2, !tbaa !151, !noalias !152
  store i16 %i.wo, ptr %.sroa.0.20..sroa_idx698, align 2, !tbaa !151, !noalias !152
  %i.wp = load i16, ptr %i.av, align 2, !tbaa !151, !noalias !152
  store i16 %i.wp, ptr %.sroa.0.24..sroa_idx702, align 2, !tbaa !151, !noalias !152
  br label %.preheader

bb.ef:                                            ; preds = %bb.dw
  store i16 %i.ux, ptr %.sroa.0, align 2, !tbaa !151, !noalias !152
  %i.wq = load i16, ptr %i.ax, align 2, !tbaa !151, !noalias !152
  store i16 %i.wq, ptr %.sroa.0.20..sroa_idx699, align 2, !tbaa !151, !noalias !152
  %i.wr = load i16, ptr %i.ay, align 2, !tbaa !151, !noalias !152
  store i16 %i.wr, ptr %.sroa.0.24..sroa_idx703, align 2, !tbaa !151, !noalias !152
  %i.ws = load i16, ptr %i.az, align 2, !tbaa !151, !noalias !152
  store i16 %i.ws, ptr %.sroa.0.28..sroa_idx707, align 2, !tbaa !151, !noalias !152
  %i.wt = load <11 x i16>, ptr %i.aw, align 2, !tbaa !151, !noalias !152
  %i.wu = shufflevector <11 x i16> %i.wt, <11 x i16> poison, <8 x i32> <i32 7, i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3>
  store <8 x i16> %i.wu, ptr %.sroa.0.2..sroa_idx694, align 2, !tbaa !151, !noalias !152
  %i.wv = load i16, ptr %i.ba, align 2, !tbaa !151, !noalias !152
  store i16 %i.wv, ptr %.sroa.0.18..sroa_idx697, align 2, !tbaa !151, !noalias !152
  %i.ww = load i16, ptr %i.bb, align 2, !tbaa !151, !noalias !152
  store i16 %i.ww, ptr %.sroa.0.22..sroa_idx701, align 2, !tbaa !151, !noalias !152
  %i.wx = load i16, ptr %i.bc, align 2, !tbaa !151, !noalias !152
  store i16 %i.wx, ptr %.sroa.0.26..sroa_idx705, align 2, !tbaa !151, !noalias !152
  br label %.preheader

.preheader:                                       ; preds = %bb.ef, %bb.ee
  %.024.i.15.sroa.phi = phi ptr [ %.sroa.0.28.gep.sroa_idx706, %bb.ee ], [ %.sroa.0.30.gep688.sroa_idx708, %bb.ef ]
  %i.wy = load i16, ptr %i.bd, align 2, !tbaa !151, !noalias !152
  store i16 %i.wy, ptr %.024.i.15.sroa.phi, align 2, !tbaa !151, !noalias !152
  %i.wz = load i32, ptr %i.w, align 4, !tbaa !144, !noalias !152 ; 2 uses
  %i.xa = icmp samesign ult i32 %1, %i.cy
  %i.xb = mul nuw nsw i32 %i.db, %1
  %i.xc = zext nneg i32 %i.xb to i64
  %i.xd = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %i.xc
  %i.xe = zext nneg i32 %i.cw to i64
  %i.xf = getelementptr inbounds nuw [2 x i8], ptr %i.xd, i64 %indvars.iv458
  %indvars.iv.next461.14 = or disjoint i64 %indvars.iv458, 15
  %i.xg = icmp samesign ult i64 %indvars.iv.next461.14, %i.xe
  %.sroa.0.0..sroa.0.0. = load <16 x i16>, ptr %.sroa.0, align 2, !tbaa !151
  %i.xh = sext <16 x i16> %.sroa.0.0..sroa.0.0. to <16 x i32>
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15, !noalias !152
  %i.xi = load i32, ptr %i.an, align 8, !tbaa !106 ; 2 uses
  %notmask.i = shl nsw i32 -1, %i.xi
  %i.xj = shl nsw i32 %i.wz, 1
  %i.xk = or disjoint i32 %i.xj, 1
  %i.xl = insertelement <16 x i32> poison, i32 %i.xk, i64 0
  %i.xm = shufflevector <16 x i32> %i.xl, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.xn = mul nsw <16 x i32> %i.xm, %i.xh
  %i.xo = insertelement <16 x i32> poison, i32 %i.wz, i64 0
  %i.xp = shufflevector <16 x i32> %i.xo, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.xq = add nsw <16 x i32> %i.xn, %i.xp
  %i.xr = icmp ult i32 %i.xi, 17
  tail call void @llvm.assume(i1 %i.xr)
  %i.xs = xor i32 %notmask.i, -1
  tail call void @llvm.assume(i1 %i.xa)
  %i.xt = load <16 x i16>, ptr %4, align 2, !tbaa !151
  %i.xu = zext <16 x i16> %i.xt to <16 x i32>
  %i.xv = add nsw <16 x i32> %i.xq, %i.xu         ; 2 uses
  %i.xw = insertelement <16 x i32> poison, i32 %i.xs, i64 0
  %i.xx = shufflevector <16 x i32> %i.xw, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.xy = icmp sgt <16 x i32> %i.xv, %i.xx
  %i.xz = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.xv, <16 x i32> zeroinitializer)
  %i.ya = select <16 x i1> %i.xy, <16 x i32> %i.xx, <16 x i32> %i.xz
  %i.yb = trunc <16 x i32> %i.ya to <16 x i16>
  tail call void @llvm.assume(i1 %i.xg)
  store <16 x i16> %i.yb, ptr %i.xf, align 2, !tbaa !151
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %indvars.iv.next459 = add nuw nsw i64 %indvars.iv458, 16 ; 2 uses
  %i.yc = load i32, ptr %i.ac, align 4, !tbaa !107 ; 2 uses
  %i.yd = trunc nuw i64 %indvars.iv.next459 to i32
  %i.ye = icmp sgt i32 %i.yc, %i.yd
  br i1 %i.ye, label %bb.g, label %._crit_edge, !llvm.loop !142
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
end_hunk_1
