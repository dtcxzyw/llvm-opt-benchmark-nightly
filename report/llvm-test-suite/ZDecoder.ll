Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/ZDecoder?download=true
inline.NumInlined: 21
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
$__clang_call_terminate = comdat any

$_ZN10COutBufferD2Ev = comdat any

$_ZN9CInBufferD2Ev = comdat any

$_ZN9NCompress2NZ8CDecoder14QueryInterfaceERK4GUIDPPv = comdat any

$_ZN9NCompress2NZ8CDecoder6AddRefEv = comdat any

$_ZN9NCompress2NZ8CDecoder7ReleaseEv = comdat any

$_ZThn8_N9NCompress2NZ8CDecoder14QueryInterfaceERK4GUIDPPv = comdat any

$_ZThn8_N9NCompress2NZ8CDecoder6AddRefEv = comdat any

$_ZThn8_N9NCompress2NZ8CDecoder7ReleaseEv = comdat any

$_ZTI18CInBufferException = comdat any

$_ZTS18CInBufferException = comdat any

$_ZTI16CSystemException = comdat any

$_ZTS16CSystemException = comdat any

$_ZTI19COutBufferException = comdat any

$_ZTS19COutBufferException = comdat any

$_ZTI14ICompressCoder = comdat any

$_ZTS14ICompressCoder = comdat any

$_ZTI8IUnknown = comdat any

$_ZTS8IUnknown = comdat any

$_ZTI30ICompressSetDecoderProperties2 = comdat any

$_ZTS30ICompressSetDecoderProperties2 = comdat any

$_ZTI13CMyUnknownImp = comdat any

$_ZTS13CMyUnknownImp = comdat any

@_ZTVN9NCompress2NZ8CDecoderE = dso_local unnamed_addr constant { [9 x ptr], [8 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN9NCompress2NZ8CDecoderE, ptr @_ZN9NCompress2NZ8CDecoder14QueryInterfaceERK4GUIDPPv, ptr @_ZN9NCompress2NZ8CDecoder6AddRefEv, ptr @_ZN9NCompress2NZ8CDecoder7ReleaseEv, ptr @_ZN9NCompress2NZ8CDecoderD2Ev, ptr @_ZN9NCompress2NZ8CDecoderD0Ev, ptr @_ZN9NCompress2NZ8CDecoder4CodeEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo, ptr @_ZN9NCompress2NZ8CDecoder21SetDecoderProperties2EPKhj], [8 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr @_ZTIN9NCompress2NZ8CDecoderE, ptr @_ZThn8_N9NCompress2NZ8CDecoder14QueryInterfaceERK4GUIDPPv, ptr @_ZThn8_N9NCompress2NZ8CDecoder6AddRefEv, ptr @_ZThn8_N9NCompress2NZ8CDecoder7ReleaseEv, ptr @_ZThn8_N9NCompress2NZ8CDecoderD1Ev, ptr @_ZThn8_N9NCompress2NZ8CDecoderD0Ev, ptr @_ZThn8_N9NCompress2NZ8CDecoder21SetDecoderProperties2EPKhj] }, align 8, !guid !8
@_ZTI18CInBufferException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS18CInBufferException, ptr @_ZTI16CSystemException }, comdat, align 8, !guid !9
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS18CInBufferException = linkonce_odr dso_local constant [21 x i8] c"18CInBufferException\00", comdat, align 1, !guid !10
@_ZTI16CSystemException = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS16CSystemException }, comdat, align 8, !guid !11
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS16CSystemException = linkonce_odr dso_local constant [19 x i8] c"16CSystemException\00", comdat, align 1, !guid !12
@_ZTI19COutBufferException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS19COutBufferException, ptr @_ZTI16CSystemException }, comdat, align 8, !guid !13
@_ZTS19COutBufferException = linkonce_odr dso_local constant [22 x i8] c"19COutBufferException\00", comdat, align 1, !guid !14
@_ZTIN9NCompress2NZ8CDecoderE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN9NCompress2NZ8CDecoderE, i32 1, i32 3, ptr @_ZTI14ICompressCoder, i64 2, ptr @_ZTI30ICompressSetDecoderProperties2, i64 2050, ptr @_ZTI13CMyUnknownImp, i64 4098 }, align 8, !guid !15
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN9NCompress2NZ8CDecoderE = dso_local constant [25 x i8] c"N9NCompress2NZ8CDecoderE\00", align 1, !guid !16
@_ZTI14ICompressCoder = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS14ICompressCoder, ptr @_ZTI8IUnknown }, comdat, align 8, !guid !17
@_ZTS14ICompressCoder = linkonce_odr dso_local constant [17 x i8] c"14ICompressCoder\00", comdat, align 1, !guid !18
@_ZTI8IUnknown = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS8IUnknown }, comdat, align 8, !guid !19
@_ZTS8IUnknown = linkonce_odr dso_local constant [10 x i8] c"8IUnknown\00", comdat, align 1, !guid !20
@_ZTI30ICompressSetDecoderProperties2 = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS30ICompressSetDecoderProperties2, ptr @_ZTI8IUnknown }, comdat, align 8, !guid !21
@_ZTS30ICompressSetDecoderProperties2 = linkonce_odr dso_local constant [33 x i8] c"30ICompressSetDecoderProperties2\00", comdat, align 1, !guid !22
@_ZTI13CMyUnknownImp = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13CMyUnknownImp }, comdat, align 8, !guid !23
@_ZTS13CMyUnknownImp = linkonce_odr dso_local constant [16 x i8] c"13CMyUnknownImp\00", comdat, align 1, !guid !24
@IID_IUnknown = external local_unnamed_addr global %struct.GUID, align 4
@IID_ICompressSetDecoderProperties2 = external local_unnamed_addr global %struct.GUID, align 4

@_ZN9NCompress2NZ8CDecoderD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN9NCompress2NZ8CDecoderD2Ev

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9NCompress2NZ8CDecoder4FreeEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #0 align 2 !guid !48 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  tail call void @MyFree(ptr noundef %i.b)
  store ptr null, ptr %i.a, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  tail call void @MyFree(ptr noundef %i.d)
  store ptr null, ptr %i.c, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35
  tail call void @MyFree(ptr noundef %i.f)
  store ptr null, ptr %i.e, align 8, !tbaa !35
  ret void
}

declare void @MyFree(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9NCompress2NZ8CDecoderD2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) initializes((0, 16)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !guid !49 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN9NCompress2NZ8CDecoderE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN9NCompress2NZ8CDecoderE, i64 88), ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33
  invoke void @MyFree(ptr noundef %i.c)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34
  invoke void @MyFree(ptr noundef %i.e)
          to label %.noexc1 unwind label %bb.c

.noexc1:                                          ; preds = %.noexc
  store ptr null, ptr %i.d, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35
  invoke void @MyFree(ptr noundef %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.noexc1
  store ptr null, ptr %i.f, align 8, !tbaa !35
  ret void

bb.c:                                             ; preds = %.noexc1, %.noexc, %bb.a
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #11
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat !guid !50 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #12 ; 0 uses
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @_ZThn8_N9NCompress2NZ8CDecoderD1Ev(ptr nofree noundef captures(none) initializes((-8, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !guid !51 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN9NCompress2NZ8CDecoderE, i64 16), ptr %i.a, align 8, !tbaa !37
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN9NCompress2NZ8CDecoderE, i64 88), ptr %0, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33
  invoke void @MyFree(ptr noundef %i.c)
          to label %.noexc.i unwind label %bb.b, !inline_history !38

.noexc.i:                                         ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34
  invoke void @MyFree(ptr noundef %i.e)
          to label %.noexc1.i unwind label %bb.b, !inline_history !38

.noexc1.i:                                        ; preds = %.noexc.i
  store ptr null, ptr %i.d, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35
  invoke void @MyFree(ptr noundef %i.g)
          to label %_ZN9NCompress2NZ8CDecoderD2Ev.exit unwind label %bb.b, !inline_history !38

bb.b:                                             ; preds = %.noexc1.i, %.noexc.i, %bb.a
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #11, !inline_history !38
  unreachable

_ZN9NCompress2NZ8CDecoderD2Ev.exit:               ; preds = %.noexc1.i
  store ptr null, ptr %i.f, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9NCompress2NZ8CDecoderD0Ev(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 16)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !guid !52 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN9NCompress2NZ8CDecoderE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN9NCompress2NZ8CDecoderE, i64 88), ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33
  invoke void @MyFree(ptr noundef %i.c)
          to label %.noexc.i unwind label %bb.b, !inline_history !38

.noexc.i:                                         ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34
  invoke void @MyFree(ptr noundef %i.e)
          to label %.noexc1.i unwind label %bb.b, !inline_history !38

.noexc1.i:                                        ; preds = %.noexc.i
  store ptr null, ptr %i.d, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35
  invoke void @MyFree(ptr noundef %i.g)
          to label %_ZN9NCompress2NZ8CDecoderD2Ev.exit unwind label %bb.b, !inline_history !38

bb.b:                                             ; preds = %.noexc1.i, %.noexc.i, %bb.a
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #11, !inline_history !38
  unreachable

_ZN9NCompress2NZ8CDecoderD2Ev.exit:               ; preds = %.noexc1.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #13
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @_ZThn8_N9NCompress2NZ8CDecoderD0Ev(ptr noundef initializes((-8, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !guid !53 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN9NCompress2NZ8CDecoderE, i64 16), ptr %i.a, align 8, !tbaa !37
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN9NCompress2NZ8CDecoderE, i64 88), ptr %0, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33
  invoke void @MyFree(ptr noundef %i.c)
          to label %.noexc.i.i unwind label %bb.b, !inline_history !54

.noexc.i.i:                                       ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34
  invoke void @MyFree(ptr noundef %i.e)
          to label %.noexc1.i.i unwind label %bb.b, !inline_history !54

.noexc1.i.i:                                      ; preds = %.noexc.i.i
  store ptr null, ptr %i.d, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35
  invoke void @MyFree(ptr noundef %i.g)
          to label %_ZN9NCompress2NZ8CDecoderD0Ev.exit unwind label %bb.b, !inline_history !54

bb.b:                                             ; preds = %.noexc1.i.i, %.noexc.i.i, %bb.a
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #11, !inline_history !54
  unreachable

_ZN9NCompress2NZ8CDecoderD0Ev.exit:               ; preds = %.noexc1.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 noundef 56) #13, !inline_history !55
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress2NZ8CDecoder8CodeRealEP19ISequentialInStreamP20ISequentialOutStreamPKyS7_P21ICompressProgressInfo(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3, ptr nofree readnone captures(none) %4, ptr noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !60 {
bb.a:
  %6 = alloca %class.CInBuffer, align 8           ; 19 uses
  %7 = alloca %class.COutBuffer, align 8          ; 17 uses
  %i.a = alloca [20 x i8], align 16               ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @_ZN9CInBufferC1Ev(ptr noundef nonnull align 8 dereferenceable(45) %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  store ptr null, ptr %7, align 8, !tbaa !64
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i32 0, ptr %i.d, align 8, !tbaa !65
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr null, ptr %i.f, align 8, !tbaa !66
  %i.g = invoke noundef zeroext i1 @_ZN9CInBuffer6CreateEj(ptr noundef nonnull align 8 dereferenceable(45) %6, i32 noundef 1048576)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.c, label %bb.as

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN9CInBuffer9SetStreamEP19ISequentialInStream(ptr noundef nonnull align 8 dereferenceable(45) %6, ptr noundef %1)
          to label %bb.d unwind label %bb.p

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN9CInBuffer4InitEv(ptr noundef nonnull align 8 dereferenceable(45) %6)
          to label %bb.e unwind label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.h = invoke noundef zeroext i1 @_ZN10COutBuffer6CreateEj(ptr noundef nonnull align 8 dereferenceable(49) %7, i32 noundef 1048576)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %bb.e
  br i1 %i.h, label %bb.g, label %bb.as

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN10COutBuffer9SetStreamEP20ISequentialOutStream(ptr noundef nonnull align 8 dereferenceable(49) %7, ptr noundef %2)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN10COutBuffer4InitEv(ptr noundef nonnull align 8 dereferenceable(49) %7)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load i8, ptr %i.i, align 8, !tbaa !42    ; 2 uses
  %i.k = and i8 %i.j, 31                          ; 2 uses
  %i.l = zext nneg i8 %i.k to i32                 ; 4 uses
  %i.m = add nsw i8 %i.k, -17
  %or.cond = icmp ult i8 %i.m, -8
  br i1 %or.cond, label %bb.as, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = shl nuw nsw i32 1, %i.l                  ; 2 uses
  %i.o = icmp sgt i8 %i.j, -1                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !67
  %.not = icmp eq i32 %i.q, %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !33   ; 5 uses
  br i1 %.not, label %bb.k, label %._crit_edge172

bb.k:                                             ; preds = %bb.j
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %._crit_edge172, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !34   ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %._crit_edge172, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !35
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %._crit_edge172, label %bb.v

._crit_edge172:                                   ; preds = %bb.j, %bb.m, %bb.l, %bb.k
  %i.aa = phi ptr [ null, %bb.k ], [ %i.s, %bb.m ], [ %i.s, %bb.l ], [ %i.s, %bb.j ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @MyFree(ptr noundef %i.aa)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %._crit_edge172
  store ptr null, ptr %i.ab, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !34
  invoke void @MyFree(ptr noundef %i.ad)
          to label %.noexc130 unwind label %bb.p

.noexc130:                                        ; preds = %.noexc
  store ptr null, ptr %i.ac, align 8, !tbaa !34
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !35
  invoke void @MyFree(ptr noundef %i.af)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %.noexc130
  store ptr null, ptr %i.ae, align 8, !tbaa !35
  %i.ag = zext nneg i32 %i.n to i64               ; 3 uses
  %i.ah = shl nuw nsw i64 %i.ag, 1
  %i.ai = invoke ptr @MyAlloc(i64 noundef %i.ah)
          to label %bb.o unwind label %bb.p       ; 2 uses

bb.o:                                             ; preds = %bb.n
  store ptr %i.ai, ptr %i.ab, align 8, !tbaa !33
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.as, label %bb.q

bb.p:                                             ; preds = %.noexc130, %.noexc, %._crit_edge172, %bb.a, %bb.c, %bb.d, %bb.e, %bb.g, %bb.h, %bb.s, %bb.q, %bb.n
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.q:                                             ; preds = %bb.o
  %i.al = invoke ptr @MyAlloc(i64 noundef %i.ag)
          to label %bb.r unwind label %bb.p       ; 2 uses

bb.r:                                             ; preds = %bb.q
  store ptr %i.al, ptr %i.ac, align 8, !tbaa !34
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.as, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = invoke ptr @MyAlloc(i64 noundef %i.ag)
          to label %bb.t unwind label %bb.p       ; 2 uses

bb.t:                                             ; preds = %bb.s
  store ptr %i.an, ptr %i.ae, align 8, !tbaa !35
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.as, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 %i.l, ptr %i.p, align 4, !tbaa !67
  %.pre174 = load ptr, ptr %i.ab, align 8, !tbaa !33
  %.pre176 = load ptr, ptr %i.ac, align 8, !tbaa !34
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.m
  %i.ap = phi ptr [ %.pre176, %bb.u ], [ %i.v, %bb.m ]
  %i.aq = phi ptr [ %.pre174, %bb.u ], [ %i.s, %bb.m ]
  %i.ar = select i1 %i.o, i32 256, i32 257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 512
  store i16 0, ptr %i.at, align 2, !tbaa !69
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 256
  store i8 0, ptr %i.av, align 1, !tbaa !43
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.not117 = icmp ne ptr %5, null
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 12
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.v
  %.087.ph = phi i64 [ 0, %bb.v ], [ %.390, %.outer.backedge ]
  %.084.ph = phi i32 [ 9, %bb.v ], [ %.084.ph.be, %.outer.backedge ] ; 10 uses
  %.081.ph = phi i32 [ %i.ar, %bb.v ], [ %.081.ph.be, %.outer.backedge ]
  %.078.ph = phi i1 [ false, %bb.v ], [ %or.cond5.not, %.outer.backedge ]
  %.not27.i = icmp eq i32 %.084.ph, 0
  %wide.trip.count.i = zext i32 %.084.ph to i64   ; 2 uses
  %wide.trip.count32.i = zext i32 %.084.ph to i64
  %i.bb = shl nuw i32 1, %.084.ph                 ; 2 uses
  %i.bc = add nsw i32 %i.bb, -1
  %i.bd = icmp slt i32 %.084.ph, %i.l
  br label %.outer195

.outer195:                                        ; preds = %.outer, %bb.ap
  %.087.ph196 = phi i64 [ %.087.ph, %.outer ], [ %.390, %bb.ap ]
  %.081.ph197 = phi i32 [ %.081.ph, %.outer ], [ %i.ep, %bb.ap ] ; 6 uses
  %.078.ph198 = phi i1 [ %.078.ph, %.outer ], [ true, %bb.ap ]
  %.074.ph = phi i32 [ 0, %.outer ], [ %i.db, %bb.ap ]
  %.072.ph = phi i32 [ 0, %.outer ], [ %.173, %bb.ap ]
  %i.be = add i32 %.081.ph197, -1                 ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %i.bg = icmp ult i32 %.081.ph197, %i.n
  br label %bb.w

bb.w:                                             ; preds = %.outer195, %bb.ao
  %.087 = phi i64 [ %.390, %bb.ao ], [ %.087.ph196, %.outer195 ] ; 3 uses
  %.078 = phi i1 [ false, %bb.ao ], [ %.078.ph198, %.outer195 ]
  %.074 = phi i32 [ %i.db, %bb.ao ], [ %.074.ph, %.outer195 ] ; 2 uses
  %.072 = phi i32 [ %.173, %bb.ao ], [ %.072.ph, %.outer195 ] ; 2 uses
  %i.bh = icmp eq i32 %.072, %.074
  br i1 %i.bh, label %bb.x, label %bb.ag

bb.x:                                             ; preds = %bb.w
  %i.bi = load ptr, ptr %i.aw, align 8, !tbaa !71
end_hunk_0
