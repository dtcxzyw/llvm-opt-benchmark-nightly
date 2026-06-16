inline.NumInlined: 17
inline.NumDeleted: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.icu_78::UnicodeString" = type { %"class.icu_78::Replaceable", %"union.icu_78::UnicodeString::StackBufferOrFields" }
%"class.icu_78::Replaceable" = type { %"class.icu_78::UObject" }
%"class.icu_78::UObject" = type { ptr }
%"union.icu_78::UnicodeString::StackBufferOrFields" = type { %struct.anon.0, [32 x i8] }
%struct.anon.0 = type { i16, i32, i32, ptr }
%"class.icu_78::ConstChar16Ptr" = type { ptr }
%struct.UCaseContext = type { ptr, i32, i32, i32, i32, i32, i8, i8, i8, i8 }

@_ZZN6icu_7823TitlecaseTransliterator16getStaticClassIDEvE7classID = internal global i8 0, align 1
@.str = private unnamed_addr constant [10 x i16] [i16 65, i16 110, i16 121, i16 45, i16 84, i16 105, i16 116, i16 108, i16 101, i16 0], align 2
@_ZTVN6icu_7823TitlecaseTransliteratorE = dso_local unnamed_addr constant { [19 x ptr] } { [19 x ptr] [ptr null, ptr @_ZTIN6icu_7823TitlecaseTransliteratorE, ptr @_ZN6icu_7823TitlecaseTransliteratorD2Ev, ptr @_ZN6icu_7823TitlecaseTransliteratorD0Ev, ptr @_ZNK6icu_7823TitlecaseTransliterator17getDynamicClassIDEv, ptr @_ZNK6icu_7823TitlecaseTransliterator5cloneEv, ptr @_ZNK6icu_7814Transliterator13transliterateERNS_11ReplaceableEii, ptr @_ZNK6icu_7814Transliterator13transliterateERNS_11ReplaceableE, ptr @_ZNK6icu_7814Transliterator13transliterateERNS_11ReplaceableER14UTransPositionRKNS_13UnicodeStringER10UErrorCode, ptr @_ZNK6icu_7814Transliterator13transliterateERNS_11ReplaceableER14UTransPositioniR10UErrorCode, ptr @_ZNK6icu_7814Transliterator13transliterateERNS_11ReplaceableER14UTransPositionR10UErrorCode, ptr @_ZNK6icu_7814Transliterator21finishTransliterationERNS_11ReplaceableER14UTransPosition, ptr @_ZNK6icu_7823TitlecaseTransliterator19handleTransliterateERNS_11ReplaceableER14UTransPositiona, ptr @_ZNK6icu_7814Transliterator21filteredTransliterateERNS_11ReplaceableER14UTransPositiona, ptr @_ZNK6icu_7814Transliterator21filteredTransliterateERNS_11ReplaceableER14UTransPositionaa, ptr @_ZNK6icu_7814Transliterator5getIDEv, ptr @_ZNK6icu_7814Transliterator7toRulesERNS_13UnicodeStringEa, ptr @_ZNK6icu_7814Transliterator18handleGetSourceSetERNS_10UnicodeSetE, ptr @_ZNK6icu_7814Transliterator12getTargetSetERNS_10UnicodeSetE] }, align 8
@_ZTIN6icu_7823TitlecaseTransliteratorE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6icu_7823TitlecaseTransliteratorE, ptr @_ZTIN6icu_7821CaseMapTransliteratorE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6icu_7823TitlecaseTransliteratorE = dso_local constant [35 x i8] c"N6icu_7823TitlecaseTransliteratorE\00", align 1
@_ZTIN6icu_7821CaseMapTransliteratorE = external constant ptr
@_ZTVN6icu_7813UnicodeStringE = external unnamed_addr constant { [13 x ptr] }, align 8

@_ZN6icu_7823TitlecaseTransliteratorC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN6icu_7823TitlecaseTransliteratorC2Ev
@_ZN6icu_7823TitlecaseTransliteratorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN6icu_7823TitlecaseTransliteratorD2Ev
@_ZN6icu_7823TitlecaseTransliteratorC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN6icu_7823TitlecaseTransliteratorC2ERKS0_

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN6icu_7823TitlecaseTransliterator16getStaticClassIDEv() local_unnamed_addr #0 align 2 {
bb.a:
  ret ptr @_ZZN6icu_7823TitlecaseTransliterator16getStaticClassIDEvE7classID
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK6icu_7823TitlecaseTransliterator17getDynamicClassIDEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret ptr @_ZZN6icu_7823TitlecaseTransliterator16getStaticClassIDEvE7classID
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7823TitlecaseTransliteratorC2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %2 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  store ptr @.str, ptr %2, align 8
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %1, i8 noundef signext 1, ptr noundef nonnull %2, i32 noundef 9) #6
  call void @_ZN6icu_7821CaseMapTransliteratorC2ERKNS_13UnicodeStringEPFiiPFiPvaES4_PPKDsiE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef null) #6
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %1) #6
  %i.a = load ptr, ptr %2, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.a) #6, !srcloc !5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN6icu_7823TitlecaseTransliteratorE, i64 16), ptr %0, align 8
  call void @_ZN6icu_7814Transliterator23setMaximumContextLengthEi(ptr noundef nonnull align 8 dereferenceable(84) %0, i32 noundef 2) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64), i8 noundef signext, ptr noundef, i32 noundef) unnamed_addr #3

declare void @_ZN6icu_7821CaseMapTransliteratorC2ERKNS_13UnicodeStringEPFiiPFiPvaES4_PPKDsiE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @_ZN6icu_7814Transliterator23setMaximumContextLengthEi(ptr noundef nonnull align 8 dereferenceable(84), i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN6icu_7821CaseMapTransliteratorD2Ev(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7823TitlecaseTransliteratorD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_7821CaseMapTransliteratorD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) #6
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7823TitlecaseTransliteratorD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_7821CaseMapTransliteratorD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) #6
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7823TitlecaseTransliteratorC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_7821CaseMapTransliteratorC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) #6
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN6icu_7823TitlecaseTransliteratorE, i64 16), ptr %0, align 8
  ret void
}

declare void @_ZN6icu_7821CaseMapTransliteratorC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK6icu_7823TitlecaseTransliterator5cloneEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 96) #6 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_7821CaseMapTransliteratorC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %0) #6, !inline_history !6
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN6icu_7823TitlecaseTransliteratorE, i64 16), ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_7823TitlecaseTransliterator19handleTransliterateERNS_11ReplaceableER14UTransPositiona(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %2, i8 noundef signext %3) unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %struct.UCaseContext, align 8       ; 11 uses
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %6 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 5 uses
  %i.e = load i32, ptr %i.d, align 4
  %.not = icmp slt i32 %i.c, %i.e
  br i1 %.not, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %2, align 4                ; 2 uses
  %.not5761.not = icmp sgt i32 %i.c, %i.f
  br i1 %.not5761.not, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %7 = add nsw i32 %i.c, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.05162 = phi i32 [ %i.o, %bb.d ], [ %7, %.lr.ph.preheader ] ; 2 uses
  %i.g = load ptr, ptr %1, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i32 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %.05162) #6, !inline_history !7 ; 2 uses
  %i.k = tail call i32 @ucase_getTypeOrIgnorable_78(i32 noundef %i.j) #6 ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.._crit_edge.loopexit_crit_edge, label %bb.c

.lr.ph.._crit_edge.loopexit_crit_edge:            ; preds = %.lr.ph
  %.pre.pre = load i32, ptr %2, align 4
  br label %._crit_edge.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.m = icmp eq i32 %i.k, 0
  %.pre.pre74 = load i32, ptr %2, align 4         ; 3 uses
  br i1 %i.m, label %._crit_edge.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = icmp ult i32 %i.j, 65536
  %.neg = select i1 %i.n, i32 -1, i32 -2
  %i.o = add i32 %.neg, %.05162                   ; 2 uses
  %.not57 = icmp slt i32 %i.o, %.pre.pre74
  br i1 %.not57, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !8

._crit_edge.loopexit:                             ; preds = %bb.c, %bb.d, %.lr.ph.._crit_edge.loopexit_crit_edge
  %.pre = phi i32 [ %.pre.pre, %.lr.ph.._crit_edge.loopexit_crit_edge ], [ %.pre.pre74, %bb.d ], [ %.pre.pre74, %bb.c ]
  %.052.ph = phi i8 [ 0, %.lr.ph.._crit_edge.loopexit_crit_edge ], [ 1, %bb.d ], [ 1, %bb.c ]
  %.pre72 = load i32, ptr %i.b, align 4           ; 2 uses
  %.pre73 = load i32, ptr %i.d, align 4
  %i.p = icmp slt i32 %.pre72, %.pre73
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.q = phi i1 [ true, %bb.b ], [ %i.p, %._crit_edge.loopexit ]
  %i.r = phi i32 [ %i.c, %bb.b ], [ %.pre72, %._crit_edge.loopexit ] ; 2 uses
  %i.s = phi i32 [ %i.f, %bb.b ], [ %.pre, %._crit_edge.loopexit ]
  %.052 = phi i8 [ 1, %bb.b ], [ %.052.ph, %._crit_edge.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  store ptr %1, ptr %4, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.s, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i32 %i.w, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %5, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i16 2, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  br i1 %i.q, label %.lr.ph70, label %.loopexit

.lr.ph70:                                         ; preds = %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 29
  %i.ac = icmp ne i8 %3, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph70, %bb.q
  %.05068 = phi i32 [ %i.r, %.lr.ph70 ], [ %.1, %bb.q ] ; 4 uses
  %.15367 = phi i8 [ %.052, %.lr.ph70 ], [ %.2, %bb.q ] ; 2 uses
  store i32 %.05068, ptr %i.z, align 4
  %i.ae = load ptr, ptr %1, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call noundef i32 %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %.05068) #6, !inline_history !7 ; 4 uses
  %i.ai = icmp ult i32 %i.ah, 65536
  %i.aj = select i1 %i.ai, i32 1, i32 2           ; 3 uses
  %i.ak = add nsw i32 %i.aj, %.05068              ; 5 uses
  store i32 %i.ak, ptr %i.aa, align 8
  %i.al = call i32 @ucase_getTypeOrIgnorable_78(i32 noundef %i.ah) #6 ; 2 uses
  %i.am = icmp sgt i32 %i.al, -1
  br i1 %i.am, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %.not58 = icmp eq i8 %.15367, 0
  br i1 %.not58, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = call i32 @ucase_toFullTitle_78(i32 noundef %i.ah, ptr noundef nonnull @utrans_rep_caseContextIterator_78, ptr noundef nonnull %4, ptr noundef nonnull %i.a, i32 noundef 1) #6
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ao = call i32 @ucase_toFullLower_78(i32 noundef %i.ah, ptr noundef nonnull @utrans_rep_caseContextIterator_78, ptr noundef nonnull %4, ptr noundef nonnull %i.a, i32 noundef 1) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi i32 [ %i.an, %bb.g ], [ %i.ao, %bb.h ] ; 5 uses
  %i.ap = icmp eq i32 %i.al, 0
  %i.aq = zext i1 %i.ap to i8                     ; 3 uses
  %i.ar = load i8, ptr %i.ab, align 1
  %i.as = icmp ne i8 %i.ar, 0
  %or.cond = and i1 %i.ac, %i.as
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = load i32, ptr %i.z, align 4
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.au = icmp sgt i32 %.0, -1
  br i1 %i.au, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.av = icmp samesign ult i32 %.0, 32
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aw = load ptr, ptr %i.a, align 8
  store ptr %i.aw, ptr %6, align 8
  %i.ax = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 noundef signext 0, ptr noundef nonnull %6, i32 noundef %.0) #6 ; 0 uses
  %i.ay = load ptr, ptr %6, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.ay) #6, !srcloc !5
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %5) #6
  %i.az = load i16, ptr %i.y, align 8             ; 2 uses
  %i.ba = icmp slt i16 %i.az, 0
  %i.bb = ashr i16 %i.az, 5
  %i.bc = sext i16 %i.bb to i32
  %i.bd = load i32, ptr %i.ad, align 4
  %i.be = select i1 %i.ba, i32 %i.bd, i32 %i.bc
  %i.bf = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString7replaceEiii(ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef 0, i32 noundef %i.be, i32 noundef %.0) #6 ; 0 uses
  %i.bg = load i16, ptr %i.y, align 8             ; 2 uses
  %i.bh = icmp slt i16 %i.bg, 0
  %i.bi = ashr i16 %i.bg, 5
  %i.bj = sext i16 %i.bi to i32
  %i.bk = load i32, ptr %i.ad, align 4
  %i.bl = select i1 %i.bh, i32 %i.bk, i32 %i.bj
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0.pn = phi i32 [ %.0, %bb.m ], [ %i.bl, %bb.n ] ; 3 uses
  %i.bm = load i32, ptr %i.z, align 4
  %i.bn = load ptr, ptr %1, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.bm, i32 noundef %i.ak, ptr noundef nonnull align 8 dereferenceable(64) %5) #6
  %.not59 = icmp eq i32 %.0.pn, %i.aj
  br i1 %.not59, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.049 = sub nsw i32 %.0.pn, %i.aj               ; 2 uses
  %i.bq = add i32 %.0.pn, %.05068
  %i.br = load i32, ptr %i.v, align 4
  %i.bs = add nsw i32 %i.br, %.049                ; 2 uses
  store i32 %i.bs, ptr %i.v, align 4
  store i32 %i.bs, ptr %i.x, align 8
  %i.bt = load i32, ptr %i.d, align 4
  %i.bu = add nsw i32 %i.bt, %.049
  store i32 %i.bu, ptr %i.d, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.k, %bb.p, %bb.o, %bb.e
  %.2 = phi i8 [ %i.aq, %bb.p ], [ %i.aq, %bb.o ], [ %i.aq, %bb.k ], [ %.15367, %bb.e ]
  %.1 = phi i32 [ %i.bq, %bb.p ], [ %i.ak, %bb.o ], [ %i.ak, %bb.k ], [ %i.ak, %bb.e ] ; 3 uses
  %i.bv = load i32, ptr %i.d, align 4
  %i.bw = icmp slt i32 %.1, %i.bv
  br i1 %i.bw, label %bb.e, label %.loopexit, !llvm.loop !10

.loopexit:                                        ; preds = %bb.q, %._crit_edge, %bb.j
  %storemerge = phi i32 [ %i.at, %bb.j ], [ %i.r, %._crit_edge ], [ %.1, %bb.q ]
  store i32 %storemerge, ptr %i.b, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %.loopexit
  ret void
}

declare i32 @ucase_getTypeOrIgnorable_78(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare i32 @ucase_toFullTitle_78(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @utrans_rep_caseContextIterator_78(ptr noundef, i8 noundef signext) #3

declare i32 @ucase_toFullLower_78(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64), i8 noundef signext, ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZNK6icu_7814Transliterator13transliterateERNS_11ReplaceableEii(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #3

declare void @_ZNK6icu_7814Transliterator13transliterateERNS_11ReplaceableE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare void @_ZNK6icu_7814Transliterator13transliterateERNS_11ReplaceableER14UTransPositionRKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #3

declare void @_ZNK6icu_7814Transliterator13transliterateERNS_11ReplaceableER14UTransPositioniR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(16), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #3

declare void @_ZNK6icu_7814Transliterator13transliterateERNS_11ReplaceableER14UTransPositionR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #3
end_hunk_0
