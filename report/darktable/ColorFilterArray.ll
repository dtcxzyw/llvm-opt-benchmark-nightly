Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/ColorFilterArray?download=true
inline.NumInlined: 349
inline.NumDeleted: 201
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN8rawspeed16ColorFilterArrayC2ERKNS_8iPoint2DE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %1, align 4, !tbaa !13     ; 3 uses
  store i64 %i.h, ptr %i.g, align 8, !tbaa !13
  %i.i = trunc i64 %i.h to i32
  %i.j = tail call i32 @llvm.abs.i32(i32 %i.i, i1 false)
  %i.k = zext i32 %i.j to i64
  %i.l = lshr i64 %i.h, 32
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = tail call i32 @llvm.abs.i32(i32 %i.m, i1 false)
  %i.o = zext i32 %i.n to i64
  %i.p = mul nuw nsw i64 %i.o, %i.k               ; 4 uses
  %i.q = icmp samesign ugt i64 %i.p, 36
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed16ColorFilterArray7setSizeERKNS_8iPoint2DE, i64 noundef %i.p) #12
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.r = icmp eq i64 %i.p, 0
  br i1 %i.r, label %_ZN8rawspeed16ColorFilterArray7setSizeERKNS_8iPoint2DE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.p)
          to label %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE6resizeEm.exit.i unwind label %bb.f

_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE6resizeEm.exit.i: ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !15  ; 3 uses
  %.pre4.i = load ptr, ptr %i.s, align 8, !tbaa !15 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %.pre.i, %.pre4.i
  br i1 %.not5.i.i.i.i.i, label %_ZN8rawspeed16ColorFilterArray7setSizeERKNS_8iPoint2DE.exit, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE6resizeEm.exit.i
  %i.t = ptrtoaddr ptr %.pre4.i to i64
  %i.u = ptrtoaddr ptr %.pre.i to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @llvm.memset.p0.i64(ptr align 1 %.pre.i, i8 -1, i64 %i.v, i1 false), !tbaa !17
  br label %_ZN8rawspeed16ColorFilterArray7setSizeERKNS_8iPoint2DE.exit

_ZN8rawspeed16ColorFilterArray7setSizeERKNS_8iPoint2DE.exit: ; preds = %.lr.ph.preheader.i.i.i.i.i, %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE6resizeEm.exit.i, %bb.d, %bb.a
  ret void

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %0, align 8, !tbaa !19     ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !20
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #18
  br label %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EED2Ev.exit

_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EED2Ev.exit: ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed16ColorFilterArray7setSizeERKNS_8iPoint2DE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !12
  %i.b = icmp eq i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, 0
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  br i1 %i.f, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN8rawspeed8CFAColorESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %1, align 4, !tbaa !13     ; 3 uses
  store i64 %i.h, ptr %i.g, align 8, !tbaa !13
  %i.i = trunc i64 %i.h to i32
  %i.j = tail call i32 @llvm.abs.i32(i32 %i.i, i1 false)
  %i.k = zext i32 %i.j to i64
  %i.l = lshr i64 %i.h, 32
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = tail call i32 @llvm.abs.i32(i32 %i.m, i1 false)
  %i.o = zext i32 %i.n to i64
  %i.p = mul nuw nsw i64 %i.o, %i.k               ; 7 uses
  %i.q = icmp samesign ugt i64 %i.p, 36
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed16ColorFilterArray7setSizeERKNS_8iPoint2DE, i64 noundef %i.p) #12
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.r = icmp eq i64 %i.p, 0
  br i1 %i.r, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN8rawspeed8CFAColorESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21   ; 4 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !19     ; 5 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  %i.y = icmp ugt i64 %i.p, %i.x
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = sub nuw nsw i64 %i.p, %i.x
  tail call void @_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.z)
  %.pre = load ptr, ptr %0, align 8, !tbaa !15
  %.pre4 = load ptr, ptr %i.s, align 8, !tbaa !15
  br label %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE6resizeEm.exit

bb.g:                                             ; preds = %bb.e
  %i.aa = icmp ult i64 %i.p, %i.x
  br i1 %i.aa, label %bb.h, label %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE6resizeEm.exit

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.p ; 3 uses
  %.not.i.i = icmp eq ptr %i.t, %i.ab
  br i1 %.not.i.i, label %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPN8rawspeed8CFAColorES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN8rawspeed8CFAColorES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.h
  store ptr %i.ab, ptr %i.s, align 8, !tbaa !21
  br label %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE6resizeEm.exit: ; preds = %bb.f, %bb.g, %bb.h, %_ZSt8_DestroyIPN8rawspeed8CFAColorES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.ac = phi ptr [ %.pre4, %bb.f ], [ %i.t, %bb.g ], [ %i.t, %bb.h ], [ %i.ab, %_ZSt8_DestroyIPN8rawspeed8CFAColorES1_EvT_S3_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.ad = phi ptr [ %.pre, %bb.f ], [ %i.u, %bb.g ], [ %i.u, %bb.h ], [ %i.u, %_ZSt8_DestroyIPN8rawspeed8CFAColorES1_EvT_S3_RSaIT0_E.exit.i.i ] ; 3 uses
  %.not5.i.i.i.i = icmp eq ptr %i.ad, %i.ac
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN8rawspeed8CFAColorESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE6resizeEm.exit
  %i.ae = ptrtoaddr ptr %i.ac to i64
  %i.af = ptrtoaddr ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ad, i8 -1, i64 %i.ag, i1 false), !tbaa !17
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN8rawspeed8CFAColorESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN8rawspeed8CFAColorESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit: ; preds = %.lr.ph.preheader.i.i.i.i, %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE6resizeEm.exit, %bb.d, %bb.a
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #19 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.27, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed19RawDecoderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i8 @_ZNK8rawspeed16ColorFilterArray10getColorAtEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed16ColorFilterArray10getColorAtEii) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %3 = load <2 x i32>, ptr %i.e, align 8          ; 4 uses
  %4 = extractelement <2 x i32> %3, i64 0         ; 3 uses
  %5 = icmp sgt i32 %4, 0
  %6 = extractelement <2 x i32> %3, i64 1         ; 2 uses
  %i.f = icmp sgt i32 %6, 0
  tail call void @llvm.assume(i1 %5)
  tail call void @llvm.assume(i1 %i.f)
  %7 = insertelement <2 x i32> poison, i32 %1, i64 0
  %8 = insertelement <2 x i32> %7, i32 %2, i64 1
  %9 = srem <2 x i32> %8, %3
  %10 = add nsw <2 x i32> %9, %3                  ; 2 uses
  %11 = extractelement <2 x i32> %10, i64 0
  %i.g = srem i32 %11, %4
  %12 = extractelement <2 x i32> %10, i64 1
  %i.h = srem i32 %12, %6
  %i.i = sext i32 %i.g to i64
  %i.j = sext i32 %i.h to i64
  %i.k = zext nneg i32 %4 to i64
  %i.l = mul nsw i64 %i.j, %i.k
  %i.m = getelementptr i8, ptr %i.a, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 %i.i
  %i.o = load i8, ptr %i.n, align 1, !tbaa !17
  ret i8 %i.o
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed16ColorFilterArray6setCFAENS_8iPoint2DEz(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %1, ...) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 12 uses
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32  ; 3 uses
  %.sroa.4.0.extract.shift = lshr i64 %1, 32      ; 2 uses
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !12
  %i.c = icmp eq i32 %i.b, %.sroa.0.0.extract.trunc
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, %.sroa.4.0.extract.trunc
  %i.g = select i1 %i.c, i1 %i.f, i1 false
  br i1 %i.g, label %_ZN8rawspeed16ColorFilterArray7setSizeERKNS_8iPoint2DE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i32 %.sroa.0.0.extract.trunc, 0
  %i.i = icmp eq i64 %.sroa.4.0.extract.shift, 0
  %i.j = and i1 %i.h, %i.i
  br i1 %i.j, label %_ZN8rawspeed16ColorFilterArray7setSizeERKNS_8iPoint2DE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %1, ptr %i.a, align 8, !tbaa !13
  %i.k = tail call i32 @llvm.abs.i32(i32 %.sroa.0.0.extract.trunc, i1 false)
  %i.l = zext i32 %i.k to i64
  %i.m = tail call i32 @llvm.abs.i32(i32 %.sroa.4.0.extract.trunc, i1 false)
  %i.n = zext i32 %i.m to i64
  %i.o = mul nuw nsw i64 %i.n, %i.l               ; 7 uses
  %i.p = icmp samesign ugt i64 %i.o, 36
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed16ColorFilterArray7setSizeERKNS_8iPoint2DE, i64 noundef %i.o) #12
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = icmp eq i64 %i.o, 0
  br i1 %i.q, label %_ZN8rawspeed16ColorFilterArray7setSizeERKNS_8iPoint2DE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21   ; 4 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !19     ; 5 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  %i.x = icmp ugt i64 %i.o, %i.w
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = sub nuw nsw i64 %i.o, %i.w
  tail call void @_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.y)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !15
  %.pre4.i = load ptr, ptr %i.r, align 8, !tbaa !15
  br label %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE6resizeEm.exit.i

bb.h:                                             ; preds = %bb.f
  %i.z = icmp ult i64 %i.o, %i.w
  br i1 %i.z, label %bb.i, label %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE6resizeEm.exit.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.s, %i.aa
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE6resizeEm.exit.i, label %_ZSt8_DestroyIPN8rawspeed8CFAColorES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN8rawspeed8CFAColorES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %bb.i
  store ptr %i.aa, ptr %i.r, align 8, !tbaa !21
  br label %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE6resizeEm.exit.i

_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE6resizeEm.exit.i: ; preds = %_ZSt8_DestroyIPN8rawspeed8CFAColorES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.i, %bb.h, %bb.g
  %i.ab = phi ptr [ %.pre4.i, %bb.g ], [ %i.s, %bb.h ], [ %i.s, %bb.i ], [ %i.aa, %_ZSt8_DestroyIPN8rawspeed8CFAColorES1_EvT_S3_RSaIT0_E.exit.i.i.i ] ; 2 uses
  %i.ac = phi ptr [ %.pre.i, %bb.g ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %_ZSt8_DestroyIPN8rawspeed8CFAColorES1_EvT_S3_RSaIT0_E.exit.i.i.i ] ; 3 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.ac, %i.ab
  br i1 %.not5.i.i.i.i.i, label %_ZN8rawspeed16ColorFilterArray7setSizeERKNS_8iPoint2DE.exit, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE6resizeEm.exit.i
  %i.ad = ptrtoaddr ptr %i.ab to i64
  %i.ae = ptrtoaddr ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ac, i8 -1, i64 %i.af, i1 false), !tbaa !17
  br label %_ZN8rawspeed16ColorFilterArray7setSizeERKNS_8iPoint2DE.exit

_ZN8rawspeed16ColorFilterArray7setSizeERKNS_8iPoint2DE.exit: ; preds = %.lr.ph.preheader.i.i.i.i.i, %_ZNSt6vectorIN8rawspeed8CFAColorESaIS1_EE6resizeEm.exit.i, %bb.e, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.ag = load i32, ptr %i.a, align 8, !tbaa !12
  %i.ah = call i32 @llvm.abs.i32(i32 %i.ag, i1 false)
  %i.ai = zext i32 %i.ah to i64
  %i.aj = load i32, ptr %i.d, align 4, !tbaa !22
  %i.ak = call i32 @llvm.abs.i32(i32 %i.aj, i1 false)
  %i.al = zext i32 %i.ak to i64
  %i.am = mul nuw nsw i64 %i.al, %i.ai            ; 5 uses
  %.not = icmp eq i64 %i.am, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8rawspeed16ColorFilterArray7setSizeERKNS_8iPoint2DE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ap = load ptr, ptr %0, align 8, !tbaa !19    ; 3 uses
  %xtraiter = and i64 %i.am, 1
  %i.aq = icmp eq i64 %i.am, 1
  br i1 %i.aq, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.am, 9223372036854775806
  br label %bb.l

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.07.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.cc, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod17 = trunc i64 %i.am to i1
  call void @llvm.assume(i1 %lcmp.mod17)
  %i.ar = load i32, ptr %2, align 16              ; 3 uses
  %i.as = icmp ult i32 %i.ar, 41
  br i1 %i.as, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.epil.preheader
  %i.at = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 8
  store ptr %i.au, ptr %i.an, align 8
  br label %._crit_edge.loopexit.epilog-lcssa

bb.k:                                             ; preds = %.epil.preheader
  %i.av = load ptr, ptr %i.ao, align 16
  %i.aw = zext nneg i32 %i.ar to i64
  %i.ax = getelementptr i8, ptr %i.av, i64 %i.aw
  %i.ay = add nuw nsw i32 %i.ar, 8
  store i32 %i.ay, ptr %2, align 16
  br label %._crit_edge.loopexit.epilog-lcssa

._crit_edge.loopexit.epilog-lcssa:                ; preds = %bb.k, %bb.j
  %i.az = phi ptr [ %i.ax, %bb.k ], [ %i.at, %bb.j ]
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !13
  %i.bb = trunc i32 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.07.epil.init
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.epilog-lcssa, %._crit_edge.loopexit.unr-lcssa, %_ZN8rawspeed16ColorFilterArray7setSizeERKNS_8iPoint2DE.exit
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

bb.l:                                             ; preds = %bb.r, %.lr.ph.new
  %.07 = phi i64 [ 0, %.lr.ph.new ], [ %i.cc, %bb.r ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.r ]
  %i.bd = load i32, ptr %2, align 16              ; 3 uses
  %i.be = icmp ult i32 %i.bd, 41
  br i1 %i.be, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bf = load ptr, ptr %i.ao, align 16
  %i.bg = zext nneg i32 %i.bd to i64
  %i.bh = getelementptr i8, ptr %i.bf, i64 %i.bg
  %i.bi = add nuw nsw i32 %i.bd, 8
  store i32 %i.bi, ptr %2, align 16
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bj = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  store ptr %i.bk, ptr %i.an, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bl = phi ptr [ %i.bh, %bb.m ], [ %i.bj, %bb.n ]
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !13
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.07
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !17
  %i.bp = load i32, ptr %2, align 16              ; 3 uses
  %i.bq = icmp ult i32 %i.bp, 41
  br i1 %i.bq, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 8
  store ptr %i.bs, ptr %i.an, align 8
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bt = load ptr, ptr %i.ao, align 16
  %i.bu = zext nneg i32 %i.bp to i64
  %i.bv = getelementptr i8, ptr %i.bt, i64 %i.bu
  %i.bw = add nuw nsw i32 %i.bp, 8
  store i32 %i.bw, ptr %2, align 16
end_hunk_0
