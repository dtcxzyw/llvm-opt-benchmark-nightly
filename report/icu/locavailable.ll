inline.NumInlined: 47
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.icu_78::ErrorCode" = type <{ ptr, i32, [4 x i8] }>
%"class.icu_78::internal::LocalOpenPointer" = type { %"class.icu_78::LocalPointerBase.1" }
%"class.icu_78::LocalPointerBase.1" = type { ptr }
%"class.(anonymous namespace)::AvailableLocalesSink" = type { %"class.icu_78::ResourceSink" }
%"class.icu_78::ResourceSink" = type { %"class.icu_78::UObject" }
%"class.icu_78::UObject" = type { ptr }
%"class.icu_78::ResourceTable" = type <{ ptr, ptr, ptr, ptr, i32, [4 x i8] }>

$__clang_call_terminate = comdat any

$_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev = comdat any

@_ZN6icu_78L24availableLocaleListCountE = internal unnamed_addr global i32 0, align 4
@_ZN6icu_78L19availableLocaleListE = internal unnamed_addr global ptr null, align 8
@_ZN12_GLOBAL__N_122gAvailableLocaleCountsE = internal unnamed_addr global [2 x i32] zeroinitializer, align 4
@_ZN12_GLOBAL__N_121gAvailableLocaleNamesE = internal unnamed_addr global [2 x ptr] zeroinitializer, align 16
@_ZN6icu_78L15gInitOnceLocaleE = internal global { { i32 }, i32 } zeroinitializer, align 4
@_ZTVN6icu_789ErrorCodeE = external constant { [5 x ptr] }, align 8
@_ZN12_GLOBAL__N_125ginstalledLocalesInitOnceE = internal global { { i32 }, i32 } zeroinitializer, align 4
@.str = private unnamed_addr constant [10 x i8] c"res_index\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZTVN12_GLOBAL__N_120AvailableLocalesSinkE = internal constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_120AvailableLocalesSinkE, ptr @_ZN6icu_7812ResourceSinkD2Ev, ptr @_ZN12_GLOBAL__N_120AvailableLocalesSinkD0Ev, ptr @_ZNK6icu_787UObject17getDynamicClassIDEv, ptr @_ZN12_GLOBAL__N_120AvailableLocalesSink3putEPKcRN6icu_7813ResourceValueEaR10UErrorCode] }, align 8
@_ZTIN12_GLOBAL__N_120AvailableLocalesSinkE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_120AvailableLocalesSinkE, ptr @_ZTIN6icu_7812ResourceSinkE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN12_GLOBAL__N_120AvailableLocalesSinkE = internal constant [39 x i8] c"N12_GLOBAL__N_120AvailableLocalesSinkE\00", align 1
@_ZTIN6icu_7812ResourceSinkE = external constant ptr
@.str.4 = private unnamed_addr constant [17 x i8] c"InstalledLocales\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"AliasLocales\00", align 1
@_ZTVN12_GLOBAL__N_133AvailableLocalesStringEnumerationE = internal constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN12_GLOBAL__N_133AvailableLocalesStringEnumerationE, ptr @_ZN6icu_7817StringEnumerationD2Ev, ptr @_ZN12_GLOBAL__N_133AvailableLocalesStringEnumerationD0Ev, ptr @_ZNK6icu_787UObject17getDynamicClassIDEv, ptr @_ZNK6icu_7817StringEnumeration5cloneEv, ptr @_ZNK12_GLOBAL__N_133AvailableLocalesStringEnumeration5countER10UErrorCode, ptr @_ZN12_GLOBAL__N_133AvailableLocalesStringEnumeration4nextEPiR10UErrorCode, ptr @_ZN6icu_7817StringEnumeration5unextEPiR10UErrorCode, ptr @_ZN6icu_7817StringEnumeration5snextER10UErrorCode, ptr @_ZN12_GLOBAL__N_133AvailableLocalesStringEnumeration5resetER10UErrorCode, ptr @_ZNK6icu_7817StringEnumerationeqERKS0_, ptr @_ZNK6icu_7817StringEnumerationneERKS0_] }, align 8
@_ZTIN12_GLOBAL__N_133AvailableLocalesStringEnumerationE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN12_GLOBAL__N_133AvailableLocalesStringEnumerationE, ptr @_ZTIN6icu_7817StringEnumerationE }, align 8
@_ZTSN12_GLOBAL__N_133AvailableLocalesStringEnumerationE = internal constant [52 x i8] c"N12_GLOBAL__N_133AvailableLocalesStringEnumerationE\00", align 1
@_ZTIN6icu_7817StringEnumerationE = external constant ptr

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7821locale_available_initEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.icu_78::ErrorCode", align 8 ; 7 uses
  %1 = alloca %"class.icu_78::ErrorCode", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_789ErrorCodeE, i64 16), ptr %1, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !10
  invoke fastcc void @_ZN12_GLOBAL__N_122_load_installedLocalesER10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %uloc_countAvailable_78.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.l, %.loopexit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.s, %.loopexit ], [ %i.ag, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_789ErrorCodeD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br label %common.resume

uloc_countAvailable_78.exit:                      ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 8, !tbaa !10
  %i.d = load i32, ptr @_ZN12_GLOBAL__N_122gAvailableLocaleCountsE, align 4
  %.inv.i = icmp sgt i32 %i.c, 0
  %.0.i = select i1 %.inv.i, i32 0, i32 %i.d      ; 3 uses
  call void @_ZN6icu_789ErrorCodeD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  store i32 %.0.i, ptr @_ZN6icu_78L24availableLocaleListCountE, align 4, !tbaa !13
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %thread-pre-split, label %bb.c

bb.c:                                             ; preds = %uloc_countAvailable_78.exit
  %i.e = sext i32 %.0.i to i64                    ; 2 uses
  %i.f = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.e, i64 40) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  %i.h = extractvalue { i64, i1 } %i.f, 0         ; 2 uses
  %i.i = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.h, i64 8) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  %i.k = or i1 %i.g, %i.j
  %i.l = extractvalue { i64, i1 } %i.i, 0
  %i.m = select i1 %i.k, i64 -1, i64 %i.l
  %i.n = call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.m) #14 ; 6 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.loopexit22, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.e, ptr %i.n, align 8
  %.ptr15 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.idx = phi i64 [ 8, %bb.d ], [ %.add, %bb.f ]  ; 5 uses
  %.ptr.ptr = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  invoke void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %.ptr.ptr)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %.add = add nuw nsw i64 %.idx, 40
  %i.p = add nuw nsw i64 %.idx, 32
  %i.q = icmp eq i64 %i.p, %i.h
  br i1 %i.q, label %.loopexit22, label %bb.e

.loopexit22:                                      ; preds = %bb.f, %bb.c
  %i.r = phi ptr [ null, %bb.c ], [ %.ptr15, %bb.f ] ; 2 uses
  store ptr %i.r, ptr @_ZN6icu_78L19availableLocaleListE, align 8, !tbaa !14
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = icmp eq i64 %.idx, 8
  br i1 %i.t, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.g, %.preheader
  %.idx16 = phi i64 [ %.add17, %.preheader ], [ %.idx, %bb.g ]
  %.add17 = add nuw nsw i64 %.idx16, -40          ; 2 uses
  %.ptr19 = getelementptr inbounds i8, ptr %i.n, i64 %.add17
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.ptr19) #14
  br label %.preheader

.loopexit:                                        ; preds = %bb.g
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.n) #14
  br label %common.resume

thread-pre-split:                                 ; preds = %uloc_countAvailable_78.exit
  %.pr = load ptr, ptr @_ZN6icu_78L19availableLocaleListE, align 8, !tbaa !14
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split, %.loopexit22
  %i.u = phi ptr [ %.pr, %thread-pre-split ], [ %i.r, %.loopexit22 ]
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  store i32 0, ptr @_ZN6icu_78L24availableLocaleListCountE, align 4, !tbaa !13
  br label %._crit_edge

bb.i:                                             ; preds = %bb.h
  %.pre = load i32, ptr @_ZN6icu_78L24availableLocaleListCountE, align 4, !tbaa !13 ; 2 uses
  %i.w = icmp sgt i32 %.pre, 0
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.y = zext nneg i32 %.pre to i64
  br label %bb.j

._crit_edge:                                      ; preds = %uloc_getAvailable_78.exit, %.thread, %bb.i
  call void @ucln_common_registerCleanup_78(i32 noundef 9, ptr noundef nonnull @_ZN6icu_7812_GLOBAL__N_124locale_available_cleanupEv)
  ret void

bb.j:                                             ; preds = %.lr.ph, %uloc_getAvailable_78.exit
  %indvars.iv = phi i64 [ %i.y, %.lr.ph ], [ %indvars.iv.next, %uloc_getAvailable_78.exit ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 4 uses
  %i.z = load ptr, ptr @_ZN6icu_78L19availableLocaleListE, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw [40 x i8], ptr %i.z, i64 %indvars.iv.next
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_789ErrorCodeE, i64 16), ptr %0, align 8, !tbaa !8
  store i32 0, ptr %i.x, align 8, !tbaa !10
  invoke fastcc void @_ZN12_GLOBAL__N_122_load_installedLocalesER10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4) %i.x)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ab = load i32, ptr %i.x, align 8, !tbaa !10
  %i.ac = icmp sgt i32 %i.ab, 0
  %i.ad = load i32, ptr @_ZN12_GLOBAL__N_122gAvailableLocaleCountsE, align 4
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp sgt i64 %indvars.iv.next, %i.ae
  %or.cond.i = select i1 %i.ac, i1 true, i1 %i.af
  br i1 %or.cond.i, label %uloc_getAvailable_78.exit, label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_789ErrorCodeD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #14
  br label %common.resume

bb.m:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr @_ZN12_GLOBAL__N_121gAvailableLocaleNamesE, align 16, !tbaa !17
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !20
  br label %uloc_getAvailable_78.exit

uloc_getAvailable_78.exit:                        ; preds = %bb.k, %bb.m
  %.0.i21 = phi ptr [ %i.aj, %bb.m ], [ null, %bb.k ]
  call void @_ZN6icu_789ErrorCodeD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #14
  call void @_ZN6icu_786Locale14setFromPOSIXIDEPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, ptr noundef %.0.i21)
  %i.ak = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ak, label %bb.j, label %._crit_edge, !llvm.loop !22
}

; Function Attrs: mustprogress uwtable
define i32 @uloc_countAvailable_78() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.icu_78::ErrorCode", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_789ErrorCodeE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !10
  invoke fastcc void @_ZN12_GLOBAL__N_122_load_installedLocalesER10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %i.a, align 8, !tbaa !10
  %i.c = load i32, ptr @_ZN12_GLOBAL__N_122gAvailableLocaleCountsE, align 4
  %.inv = icmp sgt i32 %i.b, 0
  %.0 = select i1 %.inv, i32 0, i32 %i.c
  call void @_ZN6icu_789ErrorCodeD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #14
  ret i32 %.0

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_789ErrorCodeD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #14
  resume { ptr, i32 } %i.d
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef) local_unnamed_addr #2

declare void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydaEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare void @_ZN6icu_786Locale14setFromPOSIXIDEPKc(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define ptr @uloc_getAvailable_78(i32 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.icu_78::ErrorCode", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_789ErrorCodeE, i64 16), ptr %1, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !10
  invoke fastcc void @_ZN12_GLOBAL__N_122_load_installedLocalesER10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %i.a, align 8, !tbaa !10
  %i.c = icmp sgt i32 %i.b, 0
  %i.d = load i32, ptr @_ZN12_GLOBAL__N_122gAvailableLocaleCountsE, align 4
  %i.e = icmp sgt i32 %0, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_789ErrorCodeD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @_ZN12_GLOBAL__N_121gAvailableLocaleNamesE, align 16, !tbaa !17
  %i.h = sext i32 %0 to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.0 = phi ptr [ %i.j, %bb.d ], [ null, %bb.b ]
  call void @_ZN6icu_789ErrorCodeD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare void @ucln_common_registerCleanup_78(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal noundef signext i8 @_ZN6icu_7812_GLOBAL__N_124locale_available_cleanupEv() #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZN6icu_78L19availableLocaleListE, align 8, !tbaa !14 ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %.idx = mul nsw i64 %i.c, 40
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %.idx
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %i.f = phi ptr [ %i.g, %.preheader ], [ %i.e, %.preheader.preheader ]
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -40 ; 3 uses
  tail call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.g) #14
  %i.h = icmp eq ptr %i.g, %i.a
  br i1 %i.h, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %bb.b
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.b) #14
  store ptr null, ptr @_ZN6icu_78L19availableLocaleListE, align 8, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.a
end_hunk_0
