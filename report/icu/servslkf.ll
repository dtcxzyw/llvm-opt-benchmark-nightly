Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/servslkf?download=true
inline.NumInlined: 19
inline.NumDeleted: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.icu_78::UnicodeString" = type { %"class.icu_78::Replaceable", %"union.icu_78::UnicodeString::StackBufferOrFields" }
%"class.icu_78::Replaceable" = type { %"class.icu_78::UObject" }
%"class.icu_78::UObject" = type { ptr }
%"union.icu_78::UnicodeString::StackBufferOrFields" = type { %struct.anon.0, [32 x i8] }
%struct.anon.0 = type { i16, i32, i32, ptr }

@_ZTVN6icu_7822SimpleLocaleKeyFactoryE = constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN6icu_7822SimpleLocaleKeyFactoryE, ptr @_ZN6icu_7822SimpleLocaleKeyFactoryD1Ev, ptr @_ZN6icu_7822SimpleLocaleKeyFactoryD0Ev, ptr @_ZNK6icu_7822SimpleLocaleKeyFactory17getDynamicClassIDEv, ptr @_ZNK6icu_7822SimpleLocaleKeyFactory6createERKNS_13ICUServiceKeyEPKNS_10ICUServiceER10UErrorCode, ptr @_ZNK6icu_7822SimpleLocaleKeyFactory16updateVisibleIDsERNS_9HashtableER10UErrorCode, ptr @_ZNK6icu_7816LocaleKeyFactory14getDisplayNameERKNS_13UnicodeStringERKNS_6LocaleERS1_, ptr @_ZNK6icu_7816LocaleKeyFactory10handlesKeyERKNS_13ICUServiceKeyER10UErrorCode, ptr @_ZNK6icu_7816LocaleKeyFactory12handleCreateERKNS_6LocaleEiPKNS_10ICUServiceER10UErrorCode, ptr @_ZNK6icu_7816LocaleKeyFactory15getSupportedIDsER10UErrorCode] }, align 8
@_ZZN6icu_7822SimpleLocaleKeyFactory16getStaticClassIDEvE7classID = internal global i8 0, align 1
@_ZTIN6icu_7822SimpleLocaleKeyFactoryE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6icu_7822SimpleLocaleKeyFactoryE, ptr @_ZTIN6icu_7816LocaleKeyFactoryE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6icu_7822SimpleLocaleKeyFactoryE = constant [34 x i8] c"N6icu_7822SimpleLocaleKeyFactoryE\00", align 1
@_ZTIN6icu_7816LocaleKeyFactoryE = external constant ptr
@_ZTVN6icu_7813UnicodeStringE = external constant { [13 x ptr] }, align 8

@_ZN6icu_7822SimpleLocaleKeyFactoryC1EPNS_7UObjectERKNS_13UnicodeStringEii = unnamed_addr alias void (ptr, ptr, ptr, i32, i32), ptr @_ZN6icu_7822SimpleLocaleKeyFactoryC2EPNS_7UObjectERKNS_13UnicodeStringEii
@_ZN6icu_7822SimpleLocaleKeyFactoryC1EPNS_7UObjectERKNS_6LocaleEii = unnamed_addr alias void (ptr, ptr, ptr, i32, i32), ptr @_ZN6icu_7822SimpleLocaleKeyFactoryC2EPNS_7UObjectERKNS_6LocaleEii
@_ZN6icu_7822SimpleLocaleKeyFactoryD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6icu_7822SimpleLocaleKeyFactoryD2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7822SimpleLocaleKeyFactoryC2EPNS_7UObjectERKNS_13UnicodeStringEii(ptr noundef nonnull align 8 dereferenceable(156) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6icu_7816LocaleKeyFactoryC2Ei(ptr noundef nonnull align 8 dereferenceable(76) %0, i32 noundef %4)
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6icu_7822SimpleLocaleKeyFactoryE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %1, ptr %i.a, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %3, ptr %i.c, align 8, !tbaa !19
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_7816LocaleKeyFactoryD2Ev(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %0) #6
  resume { ptr, i32 } %i.d
}

declare void @_ZN6icu_7816LocaleKeyFactoryC2Ei(ptr noundef nonnull align 8 dereferenceable(76), i32 noundef) unnamed_addr #1

declare void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN6icu_7816LocaleKeyFactoryD2Ev(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7822SimpleLocaleKeyFactoryC2EPNS_7UObjectERKNS_6LocaleEii(ptr noundef nonnull align 8 dereferenceable(156) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6icu_7816LocaleKeyFactoryC2Ei(ptr noundef nonnull align 8 dereferenceable(76) %0, i32 noundef %4)
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6icu_7822SimpleLocaleKeyFactoryE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %1, ptr %i.a, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.b, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i16 2, ptr %i.c, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i32 %3, ptr %i.d, align 8, !tbaa !19
  %i.e = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813LocaleUtility18initNameFromLocaleERKNS_6LocaleERNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.b) #6
  tail call void @_ZN6icu_7816LocaleKeyFactoryD2Ev(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %0) #6
  resume { ptr, i32 } %i.f
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813LocaleUtility18initNameFromLocaleERKNS_6LocaleERNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7822SimpleLocaleKeyFactoryD2Ev(ptr noundef nonnull align 8 dead_on_return(156) dereferenceable(156) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN6icu_7822SimpleLocaleKeyFactoryE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.g) #6
  tail call void @_ZN6icu_7816LocaleKeyFactoryD2Ev(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %0) #6
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7822SimpleLocaleKeyFactoryD0Ev(ptr noundef nonnull align 8 dereferenceable(156) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6icu_7822SimpleLocaleKeyFactoryD1Ev(ptr noundef nonnull align 8 dead_on_return(156) dereferenceable(156) %0) #6
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6icu_7822SimpleLocaleKeyFactory6createERKNS_13ICUServiceKeyEPKNS_10ICUServiceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(156) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 11 uses
  %i.a = load i32, ptr %3, align 4, !tbaa !22
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = load i32, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(272) %1)
  %i.j = icmp eq i32 %i.d, %i.i
  br i1 %i.j, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %4, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i16 2, ptr %i.k, align 8, !tbaa !20
  %i.l = load ptr, ptr %1, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef nonnull align 8 dereferenceable(64) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(272) %1, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.e unwind label %bb.i       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = load i16, ptr %i.q, align 8, !tbaa !20   ; 3 uses
  %i.s = and i16 %i.r, 1
  %.not.i = icmp eq i16 %i.s, 0
  br i1 %.not.i, label %bb.f, label %.split

.split:                                           ; preds = %bb.e
  %i.t = load i16, ptr %i.k, align 8, !tbaa !20
  %i.u = trunc i16 %i.t to i1
  br i1 %i.u, label %bb.h, label %.thread.sink.split

bb.f:                                             ; preds = %bb.e
  %i.v = icmp slt i16 %i.r, 0
  %i.w = ashr i16 %i.r, 5
  %i.x = sext i16 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = select i1 %i.v, i32 %i.z, i32 %i.x      ; 2 uses
  %i.ab = load i16, ptr %i.k, align 8, !tbaa !20  ; 4 uses
  %i.ac = icmp slt i16 %i.ab, 0
  %i.ad = ashr i16 %i.ab, 5
  %i.ae = sext i16 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = select i1 %i.ac, i32 %i.ag, i32 %i.ae
  %i.ai = and i16 %i.ab, 1
  %.not9.i = icmp eq i16 %i.ai, 0
  %i.aj = icmp eq i32 %i.aa, %i.ah
  %or.cond.i = and i1 %.not9.i, %i.aj
  br i1 %or.cond.i, label %bb.g, label %.thread.sink.split

bb.g:                                             ; preds = %bb.f
  %i.ak = and i16 %i.ab, 2
  %.not.i.i.i = icmp eq i16 %i.ak, 0
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = select i1 %.not.i.i.i, ptr %i.an, ptr %i.al
  %i.ap = invoke noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef %i.ao, i32 noundef %i.aa)
          to label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit unwind label %bb.i

_ZNK6icu_7813UnicodeStringeqERKS0_.exit:          ; preds = %bb.g
  %.not = icmp eq i8 %i.ap, 0
  br i1 %.not, label %.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %.split, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !18
  %i.as = load ptr, ptr %2, align 8, !tbaa !9
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 112
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = invoke noundef ptr %i.au(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef %i.ar)
          to label %.thread.sink.split unwind label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  resume { ptr, i32 } %i.aw

.thread.sink.split:                               ; preds = %bb.f, %bb.h, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit, %.split
  %5 = phi i1 [ false, %bb.h ], [ true, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit ], [ true, %.split ], [ true, %bb.f ]
  %.3.ph = phi ptr [ %i.av, %bb.h ], [ undef, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit ], [ undef, %.split ], [ undef, %bb.f ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br i1 %5, label %.thread, label %.thread.a

.thread:                                          ; preds = %bb.c, %.thread.sink.split, %bb.a
  br label %.thread.a

.thread.a:                                        ; preds = %.thread.sink.split, %.thread
  %.3 = phi ptr [ null, %.thread ], [ %.3.ph, %.thread.sink.split ]
  ret ptr %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define void @_ZNK6icu_7822SimpleLocaleKeyFactory16updateVisibleIDsERNS_9HashtableER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(156) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !22
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i32, ptr %i.c, align 8, !tbaa !23
  %i.e = and i32 %i.d, 1
  %.not5 = icmp eq i32 %i.e, 0
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load ptr, ptr %1, align 8, !tbaa !29
  %i.h = tail call noundef ptr @uhash_remove_78(ptr noundef %i.g, ptr noundef nonnull align 8 dereferenceable(64) %i.f) ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %1, align 8, !tbaa !29
  %i.j = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #6 ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %i.l)
          to label %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.j) #6
  resume { ptr, i32 } %i.m

_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit: ; preds = %bb.d, %bb.e
  %i.n = tail call noundef ptr @uhash_put_78(ptr noundef %i.i, ptr noundef %i.j, ptr noundef nonnull %0, ptr noundef nonnull align 4 dereferenceable(4) %2) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN6icu_7822SimpleLocaleKeyFactory16getStaticClassIDEv() local_unnamed_addr #5 align 2 {
bb.a:
  ret ptr @_ZZN6icu_7822SimpleLocaleKeyFactory16getStaticClassIDEvE7classID
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZNK6icu_7822SimpleLocaleKeyFactory17getDynamicClassIDEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #5 align 2 {
bb.a:
  ret ptr @_ZZN6icu_7822SimpleLocaleKeyFactory16getStaticClassIDEvE7classID
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7816LocaleKeyFactory14getDisplayNameERKNS_13UnicodeStringERKNS_6LocaleERS1_(ptr noundef nonnull align 8 dereferenceable(76), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

declare noundef signext i8 @_ZNK6icu_7816LocaleKeyFactory10handlesKeyERKNS_13ICUServiceKeyER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(76), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #1

declare noundef ptr @_ZNK6icu_7816LocaleKeyFactory12handleCreateERKNS_6LocaleEiPKNS_10ICUServiceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(76), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #1

declare noundef ptr @_ZNK6icu_7816LocaleKeyFactory15getSupportedIDsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(76), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #1

declare noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @uhash_remove_78(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @uhash_put_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"vtable pointer", !3, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"_ZTSN6icu_787UObjectE"}
!11 = !{!"_ZTSN6icu_7817ICUServiceFactoryE", !10, i64 0}
!12 = !{!"_ZTSN6icu_7811ReplaceableE", !10, i64 0}
!13 = !{!"_ZTSN6icu_7813UnicodeStringE", !12, i64 0, !4, i64 8}
!14 = !{!"_ZTSN6icu_7816LocaleKeyFactoryE", !11, i64 0, !13, i64 8, !5, i64 72}
!15 = !{!"any pointer", !4, i64 0}
!16 = !{!"p1 _ZTSN6icu_787UObjectE", !15, i64 0}
!17 = !{!"_ZTSN6icu_7822SimpleLocaleKeyFactoryE", !14, i64 0, !16, i64 80, !13, i64 88, !5, i64 152}
!18 = !{!17, !16, i64 80}
!19 = !{!17, !5, i64 152}
!20 = !{!4, !4, i64 0}
!21 = !{!"_ZTS10UErrorCode", !4, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!14, !5, i64 72}
!24 = !{!"p1 _ZTS10UHashtable", !15, i64 0}
!25 = !{!"p1 _ZTS12UHashElement", !15, i64 0}
!26 = !{!"float", !4, i64 0}
!27 = !{!"_ZTS10UHashtable", !25, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !26, i64 64, !26, i64 68, !4, i64 72, !4, i64 73}
!28 = !{!"_ZTSN6icu_789HashtableE", !24, i64 0, !27, i64 8}
!29 = !{!28, !24, i64 0}
end_hunk_0
