Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/PanasonicV6Decompressor?download=true
inline.NumInlined: 336
inline.NumDeleted: 126
begin_hunk_0_@_ZN8rawspeed8RawImageD2Ev:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK8rawspeed23PanasonicV6Decompressor10decompressEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !29
  %i.c = icmp eq i32 %i.b, 12
  %i.d = load ptr, ptr %0, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !142
  %i.g = icmp sgt i32 %i.f, 0                     ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %.lr.ph.i, label %_ZNK8rawspeed23PanasonicV6Decompressor18decompressInternalIL_ZNS0_14TwelveBitBlockEEEEvv.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.03.i = phi i32 [ %i.h, %.lr.ph.i ], [ 0, %bb.b ] ; 2 uses
  tail call void @_ZNK8rawspeed23PanasonicV6Decompressor13decompressRowIL_ZNS0_14TwelveBitBlockEEEEvi(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %.03.i) #18
  %i.h = add nuw nsw i32 %.03.i, 1                ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %i.k = load i32, ptr %i.j, align 4, !tbaa !142
  %i.l = icmp slt i32 %i.h, %i.k
  br i1 %i.l, label %.lr.ph.i, label %_ZNK8rawspeed23PanasonicV6Decompressor18decompressInternalIL_ZNS0_14TwelveBitBlockEEEEvv.exit, !llvm.loop !140

bb.c:                                             ; preds = %bb.a
  br i1 %i.g, label %.lr.ph.i1, label %_ZNK8rawspeed23PanasonicV6Decompressor18decompressInternalIL_ZNS0_14TwelveBitBlockEEEEvv.exit

.lr.ph.i1:                                        ; preds = %bb.c, %.lr.ph.i1
  %.03.i2 = phi i32 [ %i.m, %.lr.ph.i1 ], [ 0, %bb.c ] ; 2 uses
  tail call void @_ZNK8rawspeed23PanasonicV6Decompressor13decompressRowIL_ZNS0_16FourteenBitBlockEEEEvi(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %.03.i2) #18
  %i.m = add nuw nsw i32 %.03.i2, 1               ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !142
  %i.q = icmp slt i32 %i.m, %i.p
  br i1 %i.q, label %.lr.ph.i1, label %_ZNK8rawspeed23PanasonicV6Decompressor18decompressInternalIL_ZNS0_14TwelveBitBlockEEEEvv.exit, !llvm.loop !141

_ZNK8rawspeed23PanasonicV6Decompressor18decompressInternalIL_ZNS0_14TwelveBitBlockEEEEvv.exit: ; preds = %.lr.ph.i1, %.lr.ph.i, %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #18 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed11IOExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
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
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #20
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed11IOExceptionE, i64 16), ptr %0, align 8, !tbaa !101
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #11

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed17RawspeedExceptionE, i64 16), ptr %0, align 8, !tbaa !101
  invoke void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %1) #20
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #18
  resume { ptr, i32 } %i.a
}

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #9

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %0) local_unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.5, ptr noundef %0)
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #14

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !101
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #18, !call_target !106, !inline_history !143
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !109
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !110  ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !110
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !101
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #18, !call_target !108, !inline_history !143
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #20
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed19RawDecoderExceptionE, i64 16), ptr %0, align 8, !tbaa !101
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK8rawspeed23PanasonicV6Decompressor13decompressRowIL_ZNS0_14TwelveBitBlockEEEEvi(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.rawspeed::(anonymous namespace)::pana_cs6_page_decoder", align 2 ; 7 uses
  %3 = alloca %"struct.std::array.57", align 8    ; 4 uses
  %4 = alloca %"struct.std::array.57", align 8    ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !18     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !112  ; 3 uses
  %i.d = sdiv i32 %i.c, 14                        ; 3 uses
  %i.e = shl nsw i32 %i.d, 4                      ; 3 uses
  %i.f = mul nsw i32 %i.e, %1                     ; 2 uses
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = zext i32 %i.e to i64
  %i.i = add nuw nsw i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !22, !noalias !150 ; 3 uses
  %i.l = zext i32 %i.k to i64
  %.not.i.i = icmp samesign ugt i64 %i.i, %i.l
  br i1 %.not.i.i, label %bb.b, label %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit

bb.b:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #11
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit:  ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21, !noalias !150
  %i.o = icmp sgt i32 %i.k, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = add nuw nsw i32 %i.f, %i.e
  %i.q = icmp samesign ule i32 %i.p, %i.k
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.g
  %i.s = icmp sgt i32 %i.c, -14
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp sgt i32 %i.c, 13
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 568
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !113, !noalias !151
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  %i.x = load i32, ptr %i.w, align 8, !tbaa !99, !noalias !151
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.z = load i32, ptr %i.y, align 8, !tbaa !114, !noalias !151
  %i.aa = mul nsw i32 %i.z, %i.x                  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 612
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !115, !noalias !151
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !116, !noalias !151
  %i.af = ashr i32 %i.ae, 1                       ; 3 uses
  %i.ag = icmp ne i32 %i.af, 0
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp sge i32 %i.af, %i.aa
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 34
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ak = icmp samesign ult i32 %1, %i.ac
  %i.al = mul nuw nsw i32 %i.af, %1
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.am
  %i.ao = zext nneg i32 %i.aa to i64
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNK8rawspeed23PanasonicV6Decompressor15decompressBlockIL_ZNS0_14TwelveBitBlockEEEEvRNS_10ByteStreamEii.exit, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZNK8rawspeed23PanasonicV6Decompressor15decompressBlockIL_ZNS0_14TwelveBitBlockEEEEvRNS_10ByteStreamEii.exit
  %indvars.iv74 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next75, %_ZNK8rawspeed23PanasonicV6Decompressor15decompressBlockIL_ZNS0_14TwelveBitBlockEEEEvRNS_10ByteStreamEii.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK8rawspeed23PanasonicV6Decompressor15decompressBlockIL_ZNS0_14TwelveBitBlockEEEEvRNS_10ByteStreamEii.exit ] ; 2 uses
  %.01070 = phi i32 [ 0, %.lr.ph ], [ %i.cy, %_ZNK8rawspeed23PanasonicV6Decompressor15decompressBlockIL_ZNS0_14TwelveBitBlockEEEEvRNS_10ByteStreamEii.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %exitcond79.not = icmp eq i32 %.01070, %i.d
  br i1 %exitcond79.not, label %bb.d, label %_ZN8rawspeed12_GLOBAL__N_121pana_cs6_page_decoderILi12EEC2ENS_10ByteStreamE.exit

bb.d:                                             ; preds = %bb.c
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #11
          to label %.noexc15 unwind label %bb.p

.noexc15:                                         ; preds = %bb.d
  unreachable

_ZN8rawspeed12_GLOBAL__N_121pana_cs6_page_decoderILi12EEC2ENS_10ByteStreamE.exit: ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv74 ; 2 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i = load i32, ptr %i.ap, align 1
  %i.aq = load <4 x i32>, ptr %i.ap, align 1      ; 2 uses
  %i.ar = shufflevector <4 x i32> %i.aq, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.as = trunc i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i to i16 ; 2 uses
  %i.at = and i16 %i.as, 255
  store i16 %i.at, ptr %i.ai, align 2, !tbaa !118
  %i.au = lshr i16 %i.as, 8
  store i16 %i.au, ptr %i.aj, align 2, !tbaa !118
  %i.av = shufflevector <4 x i32> %i.aq, <4 x i32> poison, <3 x i32> <i32 2, i32 1, i32 0>
  %i.aw = lshr <3 x i32> %i.av, <i32 30, i32 28, i32 26>
  %i.ax = shufflevector <4 x i32> %i.ar, <4 x i32> poison, <3 x i32> <i32 0, i32 1, i32 2>
  %i.ay = shl <3 x i32> %i.ax, <i32 2, i32 4, i32 6>
  %i.az = and <3 x i32> %i.ay, <i32 252, i32 240, i32 192>
  %i.ba = or disjoint <3 x i32> %i.az, %i.aw
  %i.bb = shufflevector <4 x i32> %i.ar, <4 x i32> poison, <7 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison>
  %i.bc = shufflevector <3 x i32> %i.ba, <3 x i32> poison, <7 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bd = shufflevector <7 x i32> %i.bb, <7 x i32> %i.bc, <16 x i32> <i32 0, i32 0, i32 0, i32 7, i32 1, i32 1, i32 1, i32 1, i32 8, i32 2, i32 2, i32 2, i32 2, i32 9, i32 3, i32 3>
  %i.be = lshr <16 x i32> %i.bd, <i32 20, i32 8, i32 0, i32 0, i32 22, i32 14, i32 0, i32 0, i32 0, i32 20, i32 18, i32 10, i32 0, i32 0, i32 24, i32 16>
  %i.bf = trunc <16 x i32> %i.be to <16 x i16>
  %i.bg = lshr <16 x i16> %i.bf, <i16 0, i16 0, i16 6, i16 0, i16 0, i16 0, i16 12, i16 4, i16 0, i16 0, i16 0, i16 0, i16 2, i16 0, i16 0, i16 0>
  %i.bh = and <16 x i16> %i.bg, <i16 -1, i16 4095, i16 3, i16 -1, i16 255, i16 255, i16 3, i16 255, i16 -1, i16 255, i16 3, i16 255, i16 255, i16 -1, i16 3, i16 255>
  store <16 x i16> %i.bh, ptr %2, align 2, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store i64 0, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store i64 0, ptr %4, align 8
  tail call void @llvm.assume(i1 %i.ak)
  br label %bb.e

bb.e:                                             ; preds = %_ZN8rawspeed12_GLOBAL__N_121pana_cs6_page_decoderILi12EEC2ENS_10ByteStreamE.exit, %bb.o
  %indvars.iv72 = phi i64 [ %indvars.iv, %_ZN8rawspeed12_GLOBAL__N_121pana_cs6_page_decoderILi12EEC2ENS_10ByteStreamE.exit ], [ %indvars.iv.next73, %bb.o ] ; 3 uses
  %.035.i67 = phi i32 [ 0, %_ZN8rawspeed12_GLOBAL__N_121pana_cs6_page_decoderILi12EEC2ENS_10ByteStreamE.exit ], [ %i.cv, %bb.o ] ; 3 uses
  %.036.i66 = phi i32 [ 0, %_ZN8rawspeed12_GLOBAL__N_121pana_cs6_page_decoderILi12EEC2ENS_10ByteStreamE.exit ], [ %.137.i, %bb.o ]
  %.038.i65 = phi i32 [ 0, %_ZN8rawspeed12_GLOBAL__N_121pana_cs6_page_decoderILi12EEC2ENS_10ByteStreamE.exit ], [ %.139.i, %bb.o ]
  %i.bi = phi i8 [ 0, %_ZN8rawspeed12_GLOBAL__N_121pana_cs6_page_decoderILi12EEC2ENS_10ByteStreamE.exit ], [ %i.bx, %bb.o ] ; 3 uses
  %.lhs.trunc = trunc nuw nsw i32 %.035.i67 to i8
  %i.bj = urem i8 %.lhs.trunc, 3
  %i.bk = icmp eq i8 %i.bj, 2
  br i1 %i.bk, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bl = zext i8 %i.bi to i64
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !118 ; 2 uses
  %i.bo = add i8 %i.bi, 1
  %i.bp = icmp eq i16 %i.bn, 3
  %spec.store.select.i = select i1 %i.bp, i16 4, i16 %i.bn
  %i.bq = zext i16 %spec.store.select.i to i32    ; 2 uses
  %i.br = shl i32 128, %i.bq
  %i.bs = shl nuw i32 1, %i.bq
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bt = phi i8 [ %i.bo, %bb.f ], [ %i.bi, %bb.e ] ; 2 uses
  %.139.i = phi i32 [ %i.bs, %bb.f ], [ %.038.i65, %bb.e ] ; 2 uses
  %.137.i = phi i32 [ %i.br, %bb.f ], [ %.036.i66, %bb.e ] ; 4 uses
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !118 ; 3 uses
  %i.bx = add i8 %i.bt, 1
  %i.by = and i32 %.035.i67, 1
  %i.bz = zext nneg i32 %i.by to i64              ; 4 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bz ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !110
  %.not.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cc = trunc i32 %.139.i to i16
  %i.cd = mul i16 %i.bw, %i.cc                    ; 3 uses
  %i.ce = icmp ult i32 %.137.i, 2048
  br i1 %i.ce, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bz
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !110 ; 2 uses
  %i.ch = icmp ugt i32 %i.cg, %.137.i
  br i1 %i.ch, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ci = sub nuw i32 %i.cg, %.137.i
  %i.cj = trunc i32 %i.ci to i16
  %i.ck = add i16 %i.cd, %i.cj
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.0.i = phi i16 [ %i.ck, %bb.j ], [ %i.cd, %bb.i ], [ %i.cd, %bb.h ]
  %i.cl = zext i16 %.0.i to i32                   ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bz
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !110
  br label %bb.o

bb.l:                                             ; preds = %bb.g
  %i.cn = zext i16 %i.bw to i32                   ; 3 uses
  store i32 %i.cn, ptr %i.ca, align 4, !tbaa !110
  %.not42.i = icmp eq i16 %i.bw, 0
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bz ; 2 uses
  br i1 %.not42.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !110
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !110
  %.pre = and i32 %i.cp, 65535
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k
  %.pre-phi = phi i32 [ %.pre, %bb.n ], [ %i.cn, %bb.m ], [ %i.cl, %bb.k ]
  %i.cq = add nsw i32 %.pre-phi, -15              ; 2 uses
  %i.cr = icmp ult i32 %i.cq, 16384
  %i.cs = icmp samesign ult i64 %indvars.iv72, %i.ao
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv72
  %i.cu = trunc nuw nsw i32 %i.cq to i16
  %.sink = select i1 %i.cr, i16 %i.cu, i16 0
  store i16 %.sink, ptr %i.ct, align 2, !tbaa !118
  %i.cv = add nuw nsw i32 %.035.i67, 1            ; 2 uses
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  %exitcond.not = icmp eq i32 %i.cv, 14
  br i1 %exitcond.not, label %_ZNK8rawspeed23PanasonicV6Decompressor15decompressBlockIL_ZNS0_14TwelveBitBlockEEEEvRNS_10ByteStreamEii.exit, label %bb.e, !llvm.loop !148

bb.p:                                             ; preds = %bb.d
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  tail call void @__clang_call_terminate(ptr %i.cx) #21
  unreachable

_ZNK8rawspeed23PanasonicV6Decompressor15decompressBlockIL_ZNS0_14TwelveBitBlockEEEEvRNS_10ByteStreamEii.exit: ; preds = %bb.o
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.cy = add nuw nsw i32 %.01070, 1              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 14
  %exitcond80.not = icmp eq i32 %i.cy, %i.d
  br i1 %exitcond80.not, label %._crit_edge, label %bb.c, !llvm.loop !149

bb.q:                                             ; preds = %bb.b
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  tail call void @__clang_call_terminate(ptr %i.da) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK8rawspeed23PanasonicV6Decompressor13decompressRowIL_ZNS0_16FourteenBitBlockEEEEvi(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.rawspeed::(anonymous namespace)::pana_cs6_page_decoder.66", align 16 ; 8 uses
  %3 = alloca %"struct.std::array.57", align 8    ; 4 uses
  %4 = alloca %"struct.std::array.57", align 8    ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !18     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !112  ; 3 uses
  %i.d = sdiv i32 %i.c, 11                        ; 3 uses
  %i.e = shl nsw i32 %i.d, 4                      ; 3 uses
  %i.f = mul nsw i32 %i.e, %1                     ; 2 uses
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = zext i32 %i.e to i64
  %i.i = add nuw nsw i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !22, !noalias !158 ; 3 uses
  %i.l = zext i32 %i.k to i64
  %.not.i.i = icmp samesign ugt i64 %i.i, %i.l
  br i1 %.not.i.i, label %bb.b, label %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit

bb.b:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #11
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit:  ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21, !noalias !158
  %i.o = icmp sgt i32 %i.k, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = add nuw nsw i32 %i.f, %i.e
  %i.q = icmp samesign ule i32 %i.p, %i.k
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.g
  %i.s = icmp sgt i32 %i.c, -11
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp sgt i32 %i.c, 10
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 568
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !113, !noalias !159
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  %i.x = load i32, ptr %i.w, align 8, !tbaa !99, !noalias !159
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.z = load i32, ptr %i.y, align 8, !tbaa !114, !noalias !159
  %i.aa = mul nsw i32 %i.z, %i.x                  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 612
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !115, !noalias !159
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !116, !noalias !159
  %i.af = ashr i32 %i.ae, 1                       ; 3 uses
  %i.ag = icmp ne i32 %i.af, 0
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp sge i32 %i.af, %i.aa
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.al = icmp samesign ult i32 %1, %i.ac
  %i.am = mul nuw nsw i32 %i.af, %1
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.an
  %i.ap = zext nneg i32 %i.aa to i64
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNK8rawspeed23PanasonicV6Decompressor15decompressBlockIL_ZNS0_16FourteenBitBlockEEEEvRNS_10ByteStreamEii.exit, %_ZNK8rawspeed10ByteStream12getSubStreamEjj.exit
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZNK8rawspeed23PanasonicV6Decompressor15decompressBlockIL_ZNS0_16FourteenBitBlockEEEEvRNS_10ByteStreamEii.exit
  %indvars.iv69 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next70, %_ZNK8rawspeed23PanasonicV6Decompressor15decompressBlockIL_ZNS0_16FourteenBitBlockEEEEvRNS_10ByteStreamEii.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK8rawspeed23PanasonicV6Decompressor15decompressBlockIL_ZNS0_16FourteenBitBlockEEEEvRNS_10ByteStreamEii.exit ] ; 2 uses
  %.01065 = phi i32 [ 0, %.lr.ph ], [ %i.dx, %_ZNK8rawspeed23PanasonicV6Decompressor15decompressBlockIL_ZNS0_16FourteenBitBlockEEEEvRNS_10ByteStreamEii.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %exitcond74.not = icmp eq i32 %.01065, %i.d
  br i1 %exitcond74.not, label %bb.d, label %_ZN8rawspeed12_GLOBAL__N_121pana_cs6_page_decoderILi14EEC2ENS_10ByteStreamE.exit

bb.d:                                             ; preds = %bb.c
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #11
          to label %.noexc11 unwind label %bb.o

.noexc11:                                         ; preds = %bb.d
  unreachable

_ZN8rawspeed12_GLOBAL__N_121pana_cs6_page_decoderILi14EEC2ENS_10ByteStreamE.exit: ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv69 ; 3 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i = load i32, ptr %i.aq, align 1 ; 3 uses
  %i.ar = lshr i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i, 14
  %i.as = trunc i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i to i16
  %i.at = lshr i16 %i.as, 4
  %i.au = and i16 %i.at, 1023
  store i16 %i.au, ptr %i.ai, align 2, !tbaa !118
  %i.av = lshr i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i, 24
  %i.aw = trunc i32 %i.ar to i16
  %i.ax = and i16 %i.aw, 1023
  store i16 %i.ax, ptr %i.aj, align 8, !tbaa !118
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ba = load <2 x i32>, ptr %i.ay, align 1      ; 2 uses
  %i.bb = extractelement <2 x i32> %i.ba, i64 0   ; 3 uses
  %i.bc = shl i32 %i.bb, 8
  %.masked.i = and i32 %i.bc, 768
  %i.bd = or disjoint i32 %.masked.i, %i.av
  %i.be = lshr i32 %i.bb, 14
  %i.bf = trunc i32 %i.be to i16
  %i.bg = insertelement <4 x i16> poison, i16 %i.bf, i64 0
  %i.bh = trunc i32 %i.bb to i16
  %i.bi = insertelement <4 x i16> %i.bg, i16 %i.bh, i64 1
  %i.bj = trunc nuw nsw i32 %i.bd to i16
  %i.bk = insertelement <4 x i16> %i.bi, i16 %i.bj, i64 3
  %i.bl = shufflevector <4 x i16> %i.bk, <4 x i16> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.bm = lshr <4 x i16> %i.bl, <i16 0, i16 4, i16 2, i16 0>
  %i.bn = and <4 x i16> %i.bm, <i16 1023, i16 1023, i16 3, i16 -1>
  store <4 x i16> %i.bn, ptr %i.ak, align 16, !tbaa !118
  %i.bo = load <2 x i32>, ptr %i.az, align 1      ; 3 uses
  %i.bp = extractelement <2 x i32> %i.bo, i64 0   ; 2 uses
  %i.bq = lshr i32 %i.bp, 14
  %i.br = lshr <2 x i32> %i.ba, splat (i32 24)
  %i.bs = shl <2 x i32> %i.bo, splat (i32 8)
  %i.bt = and <2 x i32> %i.bs, splat (i32 768)
  %i.bu = or disjoint <2 x i32> %i.bt, %i.br      ; 2 uses
  %i.bv = bitcast <2 x i32> %i.bu to <4 x i16>
  %i.bw = shufflevector <4 x i16> %i.bv, <4 x i16> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bx = trunc i32 %i.bp to i16
  %i.by = trunc i32 %i.bq to i16
  %i.bz = shufflevector <2 x i32> %i.bo, <2 x i32> %i.bu, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.ca = lshr <4 x i32> %i.bz, <i32 18, i32 4, i32 0, i32 0>
  %i.cb = trunc <4 x i32> %i.ca to <4 x i16>
  %i.cc = shufflevector <4 x i16> %i.cb, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cd = insertelement <8 x i16> %i.cc, i16 %i.by, i64 4
  %i.ce = insertelement <8 x i16> %i.cd, i16 %i.bx, i64 5
  %i.cf = shufflevector <8 x i16> %i.ce, <8 x i16> %i.bw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 8>
  %i.cg = shufflevector <8 x i16> %i.cf, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 5, i32 7>
  %i.ch = lshr <8 x i16> %i.cg, <i16 0, i16 0, i16 2, i16 0, i16 0, i16 4, i16 2, i16 0>
  %i.ci = and <8 x i16> %i.ch, <i16 -1, i16 16383, i16 3, i16 -1, i16 1023, i16 1023, i16 3, i16 -1>
  store <8 x i16> %i.ci, ptr %2, align 16, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store i64 0, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store i64 0, ptr %4, align 8
  tail call void @llvm.assume(i1 %i.al)
  br label %bb.e

bb.e:                                             ; preds = %_ZN8rawspeed12_GLOBAL__N_121pana_cs6_page_decoderILi14EEC2ENS_10ByteStreamE.exit, %_ZNK8rawspeed10Array2DRefItEclEii.exit.i
  %indvars.iv67 = phi i64 [ %indvars.iv, %_ZN8rawspeed12_GLOBAL__N_121pana_cs6_page_decoderILi14EEC2ENS_10ByteStreamE.exit ], [ %indvars.iv.next68, %_ZNK8rawspeed10Array2DRefItEclEii.exit.i ] ; 3 uses
  %.035.i62 = phi i32 [ 0, %_ZN8rawspeed12_GLOBAL__N_121pana_cs6_page_decoderILi14EEC2ENS_10ByteStreamE.exit ], [ %i.du, %_ZNK8rawspeed10Array2DRefItEclEii.exit.i ] ; 3 uses
  %.036.i61 = phi i32 [ 0, %_ZN8rawspeed12_GLOBAL__N_121pana_cs6_page_decoderILi14EEC2ENS_10ByteStreamE.exit ], [ %.137.i, %_ZNK8rawspeed10Array2DRefItEclEii.exit.i ]
  %.038.i60 = phi i32 [ 0, %_ZN8rawspeed12_GLOBAL__N_121pana_cs6_page_decoderILi14EEC2ENS_10ByteStreamE.exit ], [ %.139.i, %_ZNK8rawspeed10Array2DRefItEclEii.exit.i ]
  %i.cj = phi i8 [ 0, %_ZN8rawspeed12_GLOBAL__N_121pana_cs6_page_decoderILi14EEC2ENS_10ByteStreamE.exit ], [ %i.cy, %_ZNK8rawspeed10Array2DRefItEclEii.exit.i ] ; 3 uses
  %.lhs.trunc = trunc nuw nsw i32 %.035.i62 to i8
  %i.ck = urem i8 %.lhs.trunc, 3
  %i.cl = icmp eq i8 %i.ck, 2
  br i1 %i.cl, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cm = zext i8 %i.cj to i64
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.cm
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !118 ; 2 uses
  %i.cp = add i8 %i.cj, 1
  %i.cq = icmp eq i16 %i.co, 3
  %spec.store.select.i = select i1 %i.cq, i16 4, i16 %i.co
  %i.cr = zext i16 %spec.store.select.i to i32    ; 2 uses
  %i.cs = shl i32 512, %i.cr
  %i.ct = shl nuw i32 1, %i.cr
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.cu = phi i8 [ %i.cp, %bb.f ], [ %i.cj, %bb.e ] ; 2 uses
  %.139.i = phi i32 [ %i.ct, %bb.f ], [ %.038.i60, %bb.e ] ; 2 uses
  %.137.i = phi i32 [ %i.cs, %bb.f ], [ %.036.i61, %bb.e ] ; 4 uses
  %i.cv = zext i8 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.cv
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !118 ; 3 uses
  %i.cy = add i8 %i.cu, 1
  %i.cz = and i32 %.035.i62, 1
  %i.da = zext nneg i32 %i.cz to i64              ; 4 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.da ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !110
  %.not.i = icmp eq i32 %i.dc, 0
  br i1 %.not.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dd = trunc i32 %.139.i to i16
  %i.de = mul i16 %i.cx, %i.dd                    ; 3 uses
  %i.df = icmp ult i32 %.137.i, 8192
  br i1 %i.df, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.da
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !110 ; 2 uses
  %i.di = icmp ugt i32 %i.dh, %.137.i
  br i1 %i.di, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dj = sub nuw i32 %i.dh, %.137.i
  %i.dk = trunc i32 %i.dj to i16
  %i.dl = add i16 %i.de, %i.dk
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.0.i = phi i16 [ %i.dl, %bb.j ], [ %i.de, %bb.i ], [ %i.de, %bb.h ]
  %i.dm = zext i16 %.0.i to i32                   ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.da
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !110
  br label %_ZNK8rawspeed10Array2DRefItEclEii.exit.i

bb.l:                                             ; preds = %bb.g
  %i.do = zext i16 %i.cx to i32                   ; 3 uses
  store i32 %i.do, ptr %i.db, align 4, !tbaa !110
  %.not42.i = icmp eq i16 %i.cx, 0
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.da ; 2 uses
  br i1 %.not42.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !110
  br label %_ZNK8rawspeed10Array2DRefItEclEii.exit.i

bb.n:                                             ; preds = %bb.l
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !110
  %.pre = and i32 %i.dq, 65535
  br label %_ZNK8rawspeed10Array2DRefItEclEii.exit.i

_ZNK8rawspeed10Array2DRefItEclEii.exit.i:         ; preds = %bb.n, %bb.m, %bb.k
  %.pre-phi = phi i32 [ %.pre, %bb.n ], [ %i.do, %bb.m ], [ %i.dm, %bb.k ]
  %i.dr = add nsw i32 %.pre-phi, -15
  %i.ds = icmp samesign ult i64 %indvars.iv67, %i.ap
  tail call void @llvm.assume(i1 %i.ds)
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %indvars.iv67
  %.sink80 = tail call i32 @llvm.umin.i32(i32 %i.dr, i32 65536)
  %.sink = trunc i32 %.sink80 to i16
  store i16 %.sink, ptr %i.dt, align 2, !tbaa !118
  %i.du = add nuw nsw i32 %.035.i62, 1            ; 2 uses
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  %exitcond.not = icmp eq i32 %i.du, 11
  br i1 %exitcond.not, label %_ZNK8rawspeed23PanasonicV6Decompressor15decompressBlockIL_ZNS0_16FourteenBitBlockEEEEvRNS_10ByteStreamEii.exit, label %bb.e, !llvm.loop !156

bb.o:                                             ; preds = %bb.d
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  tail call void @__clang_call_terminate(ptr %i.dw) #21
  unreachable

_ZNK8rawspeed23PanasonicV6Decompressor15decompressBlockIL_ZNS0_16FourteenBitBlockEEEEvRNS_10ByteStreamEii.exit: ; preds = %_ZNK8rawspeed10Array2DRefItEclEii.exit.i
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.dx = add nuw nsw i32 %.01065, 1              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 11
  %exitcond75.not = icmp eq i32 %i.dx, %i.d
  br i1 %exitcond75.not, label %._crit_edge, label %bb.c, !llvm.loop !157

bb.p:                                             ; preds = %bb.b
  %i.dy = landingpad { ptr, i32 }
          catch ptr null
  %i.dz = extractvalue { ptr, i32 } %i.dy, 0
  tail call void @__clang_call_terminate(ptr %i.dz) #21
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { cold noreturn }
attributes #12 = { cold mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { noreturn }
attributes #20 = { cold }
attributes #21 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>", scope: !107, file: !102, line: 125, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE")
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!14 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"p1 _ZTSN8rawspeed12RawImageDataE", !12, i64 0}
!17 = !{!"_ZTSSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EE", !16, i64 0, !14, i64 8}
!18 = !{!17, !16, i64 0}
!19 = !{!"p1 omnipotent char", !12, i64 0}
!20 = !{!"_ZTSN8rawspeed6BufferE", !19, i64 0, !9, i64 8}
!21 = !{!20, !19, i64 0}
!22 = !{!20, !9, i64 8}
!23 = !{!"_ZTSN8rawspeed10EndiannessE", !8, i64 0}
!24 = !{!"_ZTSN8rawspeed10DataBufferE", !20, i64 0, !23, i64 12}
!25 = !{!"_ZTSN8rawspeed10ByteStreamE", !24, i64 0, !9, i64 16}
!26 = !{!"_ZTSSt10shared_ptrIN8rawspeed12RawImageDataEE", !17, i64 0}
!27 = !{!"_ZTSN8rawspeed8RawImageE", !26, i64 0}
!28 = !{!"_ZTSN8rawspeed23PanasonicV6DecompressorE", !27, i64 0, !25, i64 16, !9, i64 40}
!29 = !{!28, !9, i64 40}
!30 = !{!"_ZTSN8rawspeed5MutexE"}
!31 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!33 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !32, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !33, i64 0}
!35 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !34, i64 0}
!36 = !{!"_ZTSN8rawspeed8ErrorLogE", !30, i64 0, !35, i64 8}
!37 = !{!"_ZTSN8rawspeed8iPoint2DE", !9, i64 0, !9, i64 4}
!38 = !{!"bool", !8, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!40 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE12_Vector_implE", !39, i64 0}
!41 = !{!"_ZTSSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE", !40, i64 0}
!42 = !{!"_ZTSSt6vectorIN8rawspeed8CFAColorESaIS1_EE", !41, i64 0}
!43 = !{!"_ZTSN8rawspeed16ColorFilterArrayE", !42, i64 0, !37, i64 24}
!44 = !{!"_ZTSSt5arrayIiLm4EE", !8, i64 0}
!45 = !{!"_ZTSSt22_Optional_payload_baseIN8rawspeed10Array2DRefIiEEE", !8, i64 0, !38, i64 32}
!46 = !{!"_ZTSSt17_Optional_payloadIN8rawspeed10Array2DRefIiEELb1ELb1ELb1EE", !45, i64 0}
end_hunk_0
