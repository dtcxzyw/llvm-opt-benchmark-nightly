inline.NumInlined: 17
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.icu_78::UnicodeString" = type { %"class.icu_78::Replaceable", %"union.icu_78::UnicodeString::StackBufferOrFields" }
%"class.icu_78::Replaceable" = type { %"class.icu_78::UObject" }
%"class.icu_78::UObject" = type { ptr }
%"union.icu_78::UnicodeString::StackBufferOrFields" = type { %struct.anon.0, [32 x i8] }
%struct.anon.0 = type { i16, i32, i32, ptr }

@_ZZN6icu_7822UCharCharacterIterator16getStaticClassIDEvE7classID = internal global i8 0, align 1
@_ZTVN6icu_7822UCharCharacterIteratorE = dso_local unnamed_addr constant { [29 x ptr] } { [29 x ptr] [ptr null, ptr @_ZTIN6icu_7822UCharCharacterIteratorE, ptr @_ZN6icu_7822UCharCharacterIteratorD2Ev, ptr @_ZN6icu_7822UCharCharacterIteratorD0Ev, ptr @_ZNK6icu_7822UCharCharacterIterator17getDynamicClassIDEv, ptr @_ZNK6icu_7822UCharCharacterIteratoreqERKNS_24ForwardCharacterIteratorE, ptr @_ZNK6icu_7822UCharCharacterIterator8hashCodeEv, ptr @_ZN6icu_7822UCharCharacterIterator11nextPostIncEv, ptr @_ZN6icu_7822UCharCharacterIterator13next32PostIncEv, ptr @_ZN6icu_7822UCharCharacterIterator7hasNextEv, ptr @_ZNK6icu_7822UCharCharacterIterator5cloneEv, ptr @_ZN6icu_7822UCharCharacterIterator5firstEv, ptr @_ZN6icu_7822UCharCharacterIterator12firstPostIncEv, ptr @_ZN6icu_7822UCharCharacterIterator7first32Ev, ptr @_ZN6icu_7822UCharCharacterIterator14first32PostIncEv, ptr @_ZN6icu_7822UCharCharacterIterator4lastEv, ptr @_ZN6icu_7822UCharCharacterIterator6last32Ev, ptr @_ZN6icu_7822UCharCharacterIterator8setIndexEi, ptr @_ZN6icu_7822UCharCharacterIterator10setIndex32Ei, ptr @_ZNK6icu_7822UCharCharacterIterator7currentEv, ptr @_ZNK6icu_7822UCharCharacterIterator9current32Ev, ptr @_ZN6icu_7822UCharCharacterIterator4nextEv, ptr @_ZN6icu_7822UCharCharacterIterator6next32Ev, ptr @_ZN6icu_7822UCharCharacterIterator8previousEv, ptr @_ZN6icu_7822UCharCharacterIterator10previous32Ev, ptr @_ZN6icu_7822UCharCharacterIterator11hasPreviousEv, ptr @_ZN6icu_7822UCharCharacterIterator4moveEiNS_17CharacterIterator7EOriginE, ptr @_ZN6icu_7822UCharCharacterIterator6move32EiNS_17CharacterIterator7EOriginE, ptr @_ZN6icu_7822UCharCharacterIterator7getTextERNS_13UnicodeStringE] }, align 8
@_ZTIN6icu_7822UCharCharacterIteratorE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6icu_7822UCharCharacterIteratorE, ptr @_ZTIN6icu_7817CharacterIteratorE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6icu_7822UCharCharacterIteratorE = dso_local constant [34 x i8] c"N6icu_7822UCharCharacterIteratorE\00", align 1
@_ZTIN6icu_7817CharacterIteratorE = external constant ptr

@_ZN6icu_7822UCharCharacterIteratorC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN6icu_7822UCharCharacterIteratorC2Ev
@_ZN6icu_7822UCharCharacterIteratorC1ENS_14ConstChar16PtrEi = dso_local unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN6icu_7822UCharCharacterIteratorC2ENS_14ConstChar16PtrEi
@_ZN6icu_7822UCharCharacterIteratorC1ENS_14ConstChar16PtrEii = dso_local unnamed_addr alias void (ptr, ptr, i32, i32), ptr @_ZN6icu_7822UCharCharacterIteratorC2ENS_14ConstChar16PtrEii
@_ZN6icu_7822UCharCharacterIteratorC1ENS_14ConstChar16PtrEiiii = dso_local unnamed_addr alias void (ptr, ptr, i32, i32, i32, i32), ptr @_ZN6icu_7822UCharCharacterIteratorC2ENS_14ConstChar16PtrEiiii
@_ZN6icu_7822UCharCharacterIteratorC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN6icu_7822UCharCharacterIteratorC2ERKS0_
@_ZN6icu_7822UCharCharacterIteratorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN6icu_7822UCharCharacterIteratorD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN6icu_7822UCharCharacterIterator16getStaticClassIDEv() local_unnamed_addr #0 align 2 {
bb.a:
  ret ptr @_ZZN6icu_7822UCharCharacterIterator16getStaticClassIDEvE7classID
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK6icu_7822UCharCharacterIterator17getDynamicClassIDEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret ptr @_ZZN6icu_7822UCharCharacterIterator16getStaticClassIDEvE7classID
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7822UCharCharacterIteratorC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_7817CharacterIteratorC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  store ptr getelementptr inbounds nuw inrange(-16, 216) (i8, ptr @_ZTVN6icu_7822UCharCharacterIteratorE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.a, align 8
  ret void
}

declare void @_ZN6icu_7817CharacterIteratorC2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7822UCharCharacterIteratorC2ENS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %2, -1
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @u_strlen_78(ptr noundef nonnull %i.a) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %i.d = phi i32 [ %i.c, %bb.c ], [ 0, %bb.a ], [ %2, %bb.b ]
  tail call void @_ZN6icu_7817CharacterIteratorC2Ei(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.d) #12
  store ptr getelementptr inbounds nuw inrange(-16, 216) (i8, ptr @_ZTVN6icu_7822UCharCharacterIteratorE, i64 16), ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %1, align 8
  store ptr %i.f, ptr %i.e, align 8
  ret void
}

declare i32 @u_strlen_78(ptr noundef) local_unnamed_addr #2

declare void @_ZN6icu_7817CharacterIteratorC2Ei(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7822UCharCharacterIteratorC2ENS_14ConstChar16PtrEii(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %2, -1
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @u_strlen_78(ptr noundef nonnull %i.a) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %i.d = phi i32 [ %i.c, %bb.c ], [ 0, %bb.a ], [ %2, %bb.b ]
  tail call void @_ZN6icu_7817CharacterIteratorC2Eii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.d, i32 noundef %3) #12
  store ptr getelementptr inbounds nuw inrange(-16, 216) (i8, ptr @_ZTVN6icu_7822UCharCharacterIteratorE, i64 16), ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %1, align 8
  store ptr %i.f, ptr %i.e, align 8
  ret void
}

declare void @_ZN6icu_7817CharacterIteratorC2Eii(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7822UCharCharacterIteratorC2ENS_14ConstChar16PtrEiiii(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %2, -1
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @u_strlen_78(ptr noundef nonnull %i.a) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %i.d = phi i32 [ %i.c, %bb.c ], [ 0, %bb.a ], [ %2, %bb.b ]
  tail call void @_ZN6icu_7817CharacterIteratorC2Eiiii(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.d, i32 noundef %3, i32 noundef %4, i32 noundef %5) #12
  store ptr getelementptr inbounds nuw inrange(-16, 216) (i8, ptr @_ZTVN6icu_7822UCharCharacterIteratorE, i64 16), ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %1, align 8
  store ptr %i.f, ptr %i.e, align 8
  ret void
}

declare void @_ZN6icu_7817CharacterIteratorC2Eiiii(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7822UCharCharacterIteratorC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_7817CharacterIteratorC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #12
  store ptr getelementptr inbounds nuw inrange(-16, 216) (i8, ptr @_ZTVN6icu_7822UCharCharacterIteratorE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  store ptr %i.c, ptr %i.a, align 8
  ret void
}

declare void @_ZN6icu_7817CharacterIteratorC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN6icu_7822UCharCharacterIteratoraSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6icu_7817CharacterIteratoraSERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #12 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.d, align 8
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN6icu_7817CharacterIteratoraSERKS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_7817CharacterIteratorD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7822UCharCharacterIteratorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_7817CharacterIteratorD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7822UCharCharacterIteratorD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_7817CharacterIteratorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK6icu_7822UCharCharacterIteratoreqERKNS_24ForwardCharacterIteratorE(ptr noundef nonnull readonly align 8 captures(address) dereferenceable(32) %0, ptr noundef nonnull readonly align 8 captures(address) dereferenceable(8) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZNKSt9type_infoeqERKS_.exit.thread13, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %1, align 8
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i8, ptr %i.i, align 1
  %.not.i = icmp eq i8 %i.m, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread13, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.n = load i8, ptr %i.k, align 1
  %i.o = icmp eq i8 %i.n, 42
  %.idx.i.i = zext i1 %i.o to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i.i
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) %i.p) #12
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread13

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = icmp eq ptr %i.t, %i.v
  br i1 %i.w, label %bb.d, label %_ZNKSt9type_infoeqERKS_.exit.thread13

bb.d:                                             ; preds = %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i32, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = icmp eq i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.e, label %_ZNKSt9type_infoeqERKS_.exit.thread13

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = icmp eq i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.f, label %_ZNKSt9type_infoeqERKS_.exit.thread13

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = icmp eq i32 %i.ai, %i.ak
  br i1 %i.al, label %bb.g, label %_ZNKSt9type_infoeqERKS_.exit.thread13

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = icmp eq i32 %i.an, %i.ap
  br label %_ZNKSt9type_infoeqERKS_.exit.thread13

_ZNKSt9type_infoeqERKS_.exit.thread13:            ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %bb.d, %bb.e, %bb.f, %bb.g, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi i1 [ false, %_ZNKSt9type_infoeqERKS_.exit ], [ true, %bb.a ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ %i.aq, %bb.g ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK6icu_7822UCharCharacterIterator8hashCodeEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %i.e = tail call i32 @ustr_hashUCharsN_78(ptr noundef %i.b, i32 noundef %i.d) #12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = xor i32 %i.g, %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8
  %i.k = xor i32 %i.h, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = load i32, ptr %i.l, align 4
  %i.n = xor i32 %i.k, %i.m
  ret i32 %i.n
}

declare i32 @ustr_hashUCharsN_78(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK6icu_7822UCharCharacterIterator5cloneEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 32) #12 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_7817CharacterIteratorC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0) #12, !inline_history !5
  store ptr getelementptr inbounds nuw inrange(-16, 216) (i8, ptr @_ZTVN6icu_7822UCharCharacterIteratorE, i64 16), ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  store ptr %i.e, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i16 @_ZN6icu_7822UCharCharacterIterator5firstEv(ptr noundef nonnull align 8 captures(none) dereferenceable(32) initializes((12, 16)) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.b, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp slt i32 %i.b, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = sext i32 %i.b to i64
  %i.j = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i16 [ %i.k, %bb.b ], [ -1, %bb.a ]
  ret i16 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i16 @_ZN6icu_7822UCharCharacterIterator12firstPostIncEv(ptr noundef nonnull align 8 captures(none) dereferenceable(32) initializes((12, 16)) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 %i.b, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp slt i32 %i.b, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = add nsw i32 %i.b, 1
  store i32 %i.i, ptr %i.c, align 4
  %i.j = sext i32 %i.b to i64
  %i.k = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i16 [ %i.l, %bb.b ], [ -1, %bb.a ]
  ret i16 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i16 @_ZN6icu_7822UCharCharacterIterator4lastEv(ptr noundef nonnull align 8 captures(none) dereferenceable(32) initializes((12, 16)) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 %i.b, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp sgt i32 %i.b, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = add nsw i32 %i.b, -1                     ; 2 uses
  store i32 %i.i, ptr %i.c, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i16 [ %i.l, %bb.b ], [ -1, %bb.a ]
  ret i16 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i16 @_ZN6icu_7822UCharCharacterIterator8setIndexEi(ptr noundef nonnull align 8 captures(none) dereferenceable(32) initializes((12, 16)) %0, i32 noundef %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp slt i32 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.b, ptr %i.d, align 4
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  %i.g = icmp sgt i32 %1, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br i1 %i.g, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  store i32 %i.f, ptr %i.h, align 4
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  store i32 %1, ptr %i.h, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.i = phi i32 [ %.pre, %bb.b ], [ %i.f, %bb.d ]
  %i.j = phi i32 [ %i.b, %bb.b ], [ %1, %bb.d ]   ; 2 uses
  %i.k = icmp slt i32 %i.j, %i.i
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = sext i32 %i.j to i64
  %i.o = getelementptr inbounds [2 x i8], ptr %i.m, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.e, %bb.f
  %.0 = phi i16 [ %i.p, %bb.f ], [ -1, %bb.e ], [ -1, %.thread ]
  ret i16 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i16 @_ZNK6icu_7822UCharCharacterIterator7currentEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8
  %.not = icmp sge i32 %i.b, %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp slt i32 %i.b, %i.f
  %or.cond = select i1 %.not, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = sext i32 %i.b to i64
  %i.k = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i16 [ %i.l, %bb.b ], [ -1, %bb.a ]
  ret i16 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i16 @_ZN6icu_7822UCharCharacterIterator4nextEv(ptr noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = add nsw i32 %i.b, 1                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp slt i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  store i32 %i.c, ptr %i.a, align 4
  %i.i = sext i32 %i.c to i64
  %i.j = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i32 %i.e, ptr %i.a, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i16 [ %i.k, %bb.b ], [ -1, %bb.c ]
  ret i16 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i16 @_ZN6icu_7822UCharCharacterIterator11nextPostIncEv(ptr noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = add nsw i32 %i.b, 1
  store i32 %i.h, ptr %i.a, align 4
  %i.i = sext i32 %i.b to i64
  %i.j = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i16 [ %i.k, %bb.b ], [ -1, %bb.a ]
  ret i16 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZN6icu_7822UCharCharacterIterator7hasNextEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp slt i32 %i.b, %i.d
  %i.f = zext i1 %i.e to i8
  ret i8 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i16 @_ZN6icu_7822UCharCharacterIterator8previousEv(ptr noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp sgt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = add nsw i32 %i.b, -1                     ; 2 uses
  store i32 %i.h, ptr %i.a, align 4
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i16 [ %i.k, %bb.b ], [ -1, %bb.a ]
  ret i16 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZN6icu_7822UCharCharacterIterator11hasPreviousEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp sgt i32 %i.b, %i.d
  %i.f = zext i1 %i.e to i8
  ret i8 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 0, 10559488) i32 @_ZN6icu_7822UCharCharacterIterator7first32Ev(ptr noundef nonnull align 8 captures(none) dereferenceable(32) initializes((12, 16)) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.b, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp slt i32 %i.b, %i.e
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = add nsw i32 %i.b, 1                      ; 2 uses
  %i.j = sext i32 %i.b to i64
  %i.k = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2
  %i.m = zext i16 %i.l to i32                     ; 4 uses
  %i.n = and i32 %i.m, 64512
  %i.o = icmp ne i32 %i.n, 55296
  %.not = icmp eq i32 %i.i, %i.e
  %or.cond = select i1 %i.o, i1 true, i1 %.not
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = sext i32 %i.i to i64
  %i.q = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2
  %i.s = zext i16 %i.r to i32                     ; 2 uses
  %i.t = and i32 %i.s, 64512
  %i.u = icmp eq i32 %i.t, 56320
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = shl nuw nsw i32 %i.m, 10
  %i.w = add nsw i32 %i.v, -56613888
  %i.x = add nuw nsw i32 %i.w, %i.s
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.d, %bb.c
  %.0 = phi i32 [ 65535, %bb.a ], [ %i.m, %bb.b ], [ %i.x, %bb.d ], [ %i.m, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 0, 10559488) i32 @_ZN6icu_7822UCharCharacterIterator14first32PostIncEv(ptr noundef nonnull align 8 captures(none) dereferenceable(32) initializes((12, 16)) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 %i.b, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp slt i32 %i.b, %i.e
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = add nsw i32 %i.b, 1                      ; 3 uses
  store i32 %i.i, ptr %i.c, align 4
  %i.j = sext i32 %i.b to i64
  %i.k = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2
  %i.m = zext i16 %i.l to i32                     ; 4 uses
  %i.n = and i32 %i.m, 64512
  %i.o = icmp ne i32 %i.n, 55296
  %.not = icmp eq i32 %i.i, %i.e
  %or.cond = select i1 %i.o, i1 true, i1 %.not
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = sext i32 %i.i to i64
  %i.q = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2
  %i.s = zext i16 %i.r to i32                     ; 2 uses
  %i.t = and i32 %i.s, 64512
  %i.u = icmp eq i32 %i.t, 56320
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = add nsw i32 %i.b, 2
  store i32 %i.v, ptr %i.c, align 4
  %i.w = shl nuw nsw i32 %i.m, 10
  %i.x = add nsw i32 %i.w, -56613888
  %i.y = add nuw nsw i32 %i.x, %i.s
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.d, %bb.c
  %.0 = phi i32 [ 65535, %bb.a ], [ %i.m, %bb.b ], [ %i.y, %bb.d ], [ %i.m, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 0, 10559488) i32 @_ZN6icu_7822UCharCharacterIterator6last32Ev(ptr noundef nonnull align 8 captures(none) dereferenceable(32) initializes((12, 16)) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 %i.b, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp sgt i32 %i.b, %i.e
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = add nsw i32 %i.b, -1                     ; 3 uses
  store i32 %i.i, ptr %i.c, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2
  %i.m = zext i16 %i.l to i32                     ; 4 uses
  %i.n = and i32 %i.m, 64512
  %i.o = icmp eq i32 %i.n, 56320
  %i.p = icmp sgt i32 %i.i, %i.e
  %or.cond = and i1 %i.p, %i.o
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.q = sext i32 %i.b to i64
  %i.r = getelementptr [2 x i8], ptr %i.h, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 -4
  %i.t = load i16, ptr %i.s, align 2
  %i.u = zext i16 %i.t to i32                     ; 2 uses
  %i.v = and i32 %i.u, 64512
  %i.w = icmp eq i32 %i.v, 55296
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = add nsw i32 %i.b, -2
  store i32 %i.x, ptr %i.c, align 4
  %i.y = shl nuw nsw i32 %i.u, 10
  %i.z = add nuw nsw i32 %i.m, -56613888
  %i.aa = add nsw i32 %i.z, %i.y
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.d, %bb.c
  %.0 = phi i32 [ 65535, %bb.a ], [ %i.m, %bb.b ], [ %i.aa, %bb.d ], [ %i.m, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 0, 10559488) i32 @_ZN6icu_7822UCharCharacterIterator10setIndex32Ei(ptr noundef nonnull align 8 captures(none) dereferenceable(32) initializes((12, 16)) %0, i32 noundef %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp slt i32 %1, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4              ; 3 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.e)
  %.019 = select i1 %i.c, i32 %i.b, i32 %spec.select ; 6 uses
  %i.f = icmp slt i32 %.019, %i.e
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = sext i32 %.019 to i64                    ; 2 uses
  %i.j = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %i.k = load i16, ptr %i.j, align 2
  %i.l = and i16 %i.k, -1024
  %i.m = icmp eq i16 %i.l, -9216
  %i.n = icmp sgt i32 %.019, %i.b
  %or.cond = and i1 %i.n, %i.m
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %i.j, i64 -2
  %i.p = load i16, ptr %i.o, align 2
  %i.q = and i16 %i.p, -1024
  %i.r = icmp eq i16 %i.q, -10240
  %i.s = sext i1 %i.r to i32
  %spec.select26 = add nsw i32 %.019, %i.s        ; 2 uses
  %.pre = sext i32 %spec.select26 to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi = phi i64 [ %.pre, %bb.c ], [ %i.i, %bb.b ]
  %.120 = phi i32 [ %spec.select26, %bb.c ], [ %.019, %bb.b ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.120, ptr %i.t, align 4
  %i.u = add nsw i32 %.120, 1                     ; 2 uses
  %i.v = getelementptr inbounds [2 x i8], ptr %i.h, i64 %.pre-phi
  %i.w = load i16, ptr %i.v, align 2
  %i.x = zext i16 %i.w to i32                     ; 4 uses
  %i.y = and i32 %i.x, 64512
  %i.z = icmp ne i32 %i.y, 55296
  %.not = icmp eq i32 %i.u, %i.e
  %or.cond27 = select i1 %i.z, i1 true, i1 %.not
  br i1 %or.cond27, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = sext i32 %i.u to i64
  %i.ab = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = zext i16 %i.ac to i32                   ; 2 uses
  %i.ae = and i32 %i.ad, 64512
  %i.af = icmp eq i32 %i.ae, 56320
  br i1 %i.af, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ag = shl nuw nsw i32 %i.x, 10
  %i.ah = add nsw i32 %i.ag, -56613888
  %i.ai = add nuw nsw i32 %i.ah, %i.ad
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.019, ptr %i.aj, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.e, %bb.g
  %.0 = phi i32 [ 65535, %bb.g ], [ %i.x, %bb.d ], [ %i.ai, %bb.f ], [ %i.x, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 0, 10559488) i32 @_ZNK6icu_7822UCharCharacterIterator9current32Ev(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %.not = icmp slt i32 %i.b, %i.d
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = icmp slt i32 %i.b, %i.f
  br i1 %i.g, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = sext i32 %i.b to i64
  %i.k = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.j ; 2 uses
  %i.l = load i16, ptr %i.k, align 2
  %i.m = zext i16 %i.l to i32                     ; 9 uses
  %i.n = and i32 %i.m, 63488
  %i.o = icmp eq i32 %i.n, 55296
  br i1 %i.o, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.p = and i32 %i.m, 1024
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.b, 1                      ; 2 uses
  %.not13 = icmp eq i32 %i.r, %i.f
  br i1 %.not13, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2
  %i.v = zext i16 %i.u to i32                     ; 2 uses
  %i.w = and i32 %i.v, 64512
  %i.x = icmp eq i32 %i.w, 56320
  br i1 %i.x, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.y = shl nuw nsw i32 %i.m, 10
  %i.z = add nsw i32 %i.y, -56613888
  %i.aa = add nuw nsw i32 %i.z, %i.v
  br label %bb.k

bb.h:                                             ; preds = %bb.d
  %i.ab = icmp sgt i32 %i.b, %i.d
  br i1 %i.ab, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr i8, ptr %i.k, i64 -2
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = zext i16 %i.ad to i32                   ; 2 uses
  %i.af = and i32 %i.ae, 64512
  %i.ag = icmp eq i32 %i.af, 55296
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = shl nuw nsw i32 %i.ae, 10
  %i.ai = add nuw nsw i32 %i.m, -56613888
  %i.aj = add nsw i32 %i.ai, %i.ah
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.h, %bb.i, %bb.j, %bb.e, %bb.f, %bb.g
  %.08 = phi i32 [ %i.m, %bb.h ], [ %i.m, %bb.c ], [ %i.aa, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.e ], [ %i.aj, %bb.j ], [ %i.m, %bb.i ], [ 65535, %bb.b ], [ 65535, %bb.a ]
  ret i32 %.08
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 0, 10559488) i32 @_ZN6icu_7822UCharCharacterIterator6next32Ev(ptr noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4              ; 5 uses
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  %i.h = add nsw i32 %i.b, 1                      ; 5 uses
  store i32 %i.h, ptr %i.a, align 4
  %i.i = sext i32 %i.b to i64
  %i.j = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2
  %i.l = and i16 %i.k, -1024
  %i.m = icmp ne i16 %i.l, -10240
  %.not = icmp eq i32 %i.h, %i.d
  %or.cond = select i1 %i.m, i1 true, i1 %.not
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = sext i32 %i.h to i64
  %i.o = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2
  %i.q = and i16 %i.p, -1024
  %i.r = icmp eq i16 %i.q, -9216
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = add nsw i32 %i.b, 2                      ; 2 uses
  store i32 %i.s, ptr %i.a, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %i.t = phi i32 [ %i.h, %bb.b ], [ %i.h, %bb.c ], [ %i.s, %bb.d ] ; 3 uses
  %i.u = icmp slt i32 %i.t, %i.d
  br i1 %i.u, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.t, 1                      ; 2 uses
  %i.w = sext i32 %i.t to i64
  %i.x = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2
  %i.z = zext i16 %i.y to i32                     ; 4 uses
  %i.aa = and i32 %i.z, 64512
  %i.ab = icmp ne i32 %i.aa, 55296
  %.not15 = icmp eq i32 %i.v, %i.d
  %or.cond16 = select i1 %i.ab, i1 true, i1 %.not15
  br i1 %or.cond16, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = sext i32 %i.v to i64
  %i.ad = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = zext i16 %i.ae to i32                   ; 2 uses
  %i.ag = and i32 %i.af, 64512
  %i.ah = icmp eq i32 %i.ag, 56320
  br i1 %i.ah, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ai = shl nuw nsw i32 %i.z, 10
  %i.aj = add nsw i32 %i.ai, -56613888
  %i.ak = add nuw nsw i32 %i.aj, %i.af
  br label %bb.j

bb.i:                                             ; preds = %bb.e, %bb.a
  store i32 %i.d, ptr %i.a, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.h, %bb.g, %bb.i
  %.0 = phi i32 [ 65535, %bb.i ], [ %i.z, %bb.f ], [ %i.ak, %bb.h ], [ %i.z, %bb.g ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 0, 10559488) i32 @_ZN6icu_7822UCharCharacterIterator13next32PostIncEv(ptr noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = add nsw i32 %i.b, 1                      ; 3 uses
  store i32 %i.h, ptr %i.a, align 4
  %i.i = sext i32 %i.b to i64
  %i.j = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2
  %i.l = zext i16 %i.k to i32                     ; 4 uses
  %i.m = and i32 %i.l, 64512
  %i.n = icmp ne i32 %i.m, 55296
  %.not = icmp eq i32 %i.h, %i.d
  %or.cond = select i1 %i.n, i1 true, i1 %.not
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = sext i32 %i.h to i64
  %i.p = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2
  %i.r = zext i16 %i.q to i32                     ; 2 uses
  %i.s = and i32 %i.r, 64512
  %i.t = icmp eq i32 %i.s, 56320
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = add nsw i32 %i.b, 2
  store i32 %i.u, ptr %i.a, align 4
  %i.v = shl nuw nsw i32 %i.l, 10
  %i.w = add nsw i32 %i.v, -56613888
  %i.x = add nuw nsw i32 %i.w, %i.r
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.d, %bb.c
  %.0 = phi i32 [ 65535, %bb.a ], [ %i.l, %bb.b ], [ %i.x, %bb.d ], [ %i.l, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 0, 10559488) i32 @_ZN6icu_7822UCharCharacterIterator10previous32Ev(ptr noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp sgt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = add nsw i32 %i.b, -1                     ; 3 uses
  store i32 %i.h, ptr %i.a, align 4
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2
  %i.l = zext i16 %i.k to i32                     ; 4 uses
  %i.m = and i32 %i.l, 64512
  %i.n = icmp eq i32 %i.m, 56320
  %i.o = icmp sgt i32 %i.h, %i.d
  %or.cond = and i1 %i.o, %i.n
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = sext i32 %i.b to i64
  %i.q = getelementptr [2 x i8], ptr %i.g, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -4
  %i.s = load i16, ptr %i.r, align 2
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = and i32 %i.t, 64512
  %i.v = icmp eq i32 %i.u, 55296
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = add nsw i32 %i.b, -2
  store i32 %i.w, ptr %i.a, align 4
  %i.x = shl nuw nsw i32 %i.t, 10
  %i.y = add nuw nsw i32 %i.l, -56613888
  %i.z = add nsw i32 %i.y, %i.x
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.d, %bb.c
  %.0 = phi i32 [ 65535, %bb.a ], [ %i.l, %bb.b ], [ %i.z, %bb.d ], [ %i.l, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_ZN6icu_7822UCharCharacterIterator4moveEiNS_17CharacterIterator7EOriginE(ptr noundef nonnull align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 align 2 {
bb.a:
  switch i32 %2, label %._crit_edge [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8
  %i.c = add nsw i32 %i.b, %1                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.c, ptr %i.d, align 4
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = add nsw i32 %i.f, %1                     ; 2 uses
  store i32 %i.g, ptr %i.e, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = load i32, ptr %i.h, align 4
  %i.j = add nsw i32 %i.i, %1                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.j, ptr %i.k, align 4
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d, %bb.c, %bb.b
  %i.l = phi i32 [ %.pre, %._crit_edge ], [ %i.j, %bb.d ], [ %i.g, %bb.c ], [ %i.c, %bb.b ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp slt i32 %i.l, %i.o
  br i1 %i.p, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.r = load i32, ptr %i.q, align 4              ; 2 uses
  %i.s = icmp sgt i32 %i.l, %i.r
  br i1 %i.s, label %.sink.split, label %bb.g

.sink.split:                                      ; preds = %bb.f, %bb.e
  %.sink = phi i32 [ %i.o, %bb.e ], [ %i.r, %bb.f ] ; 2 uses
  store i32 %.sink, ptr %i.m, align 4
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.f
  %i.t = phi i32 [ %i.l, %bb.f ], [ %.sink, %.sink.split ]
  ret i32 %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN6icu_7822UCharCharacterIterator6move32EiNS_17CharacterIterator7EOriginE(ptr noundef nonnull align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #9 align 2 {
bb.a:
  switch i32 %2, label %.critedge [
    i32 0, label %bb.b
    i32 1, label %bb.j
    i32 2, label %bb.x
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  store i32 %i.b, ptr %i.c, align 4
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4
  %.fr = freeze i32 %i.g                          ; 5 uses
  %i.h = icmp slt i32 %.fr, 0
  %i.i = load ptr, ptr %i.e, align 8              ; 5 uses
  br i1 %i.h, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.f
  %.02859.us = phi i32 [ %i.z, %bb.f ], [ %1, %.preheader ] ; 2 uses
  %i.j = phi i32 [ %i.y, %bb.f ], [ %i.b, %.preheader ] ; 4 uses
  %i.k = icmp slt i32 %i.j, %.fr
  %.pre = sext i32 %i.j to i64                    ; 2 uses
  br i1 %i.k, label %.critedge2.us, label %bb.c

bb.c:                                             ; preds = %.preheader.split.us
  %i.l = getelementptr inbounds [2 x i8], ptr %i.i, i64 %.pre
  %i.m = load i16, ptr %i.l, align 2
  %.not41.us = icmp eq i16 %i.m, 0
  br i1 %.not41.us, label %.critedge, label %.critedge2.us

.critedge2.us:                                    ; preds = %.preheader.split.us, %bb.c
  %i.n = add nsw i32 %i.j, 1                      ; 5 uses
  store i32 %i.n, ptr %i.c, align 4
  %i.o = getelementptr inbounds [2 x i8], ptr %i.i, i64 %.pre
  %i.p = load i16, ptr %i.o, align 2
  %i.q = and i16 %i.p, -1024
  %i.r = icmp ne i16 %i.q, -10240
  %.not42.us = icmp eq i32 %i.n, %.fr
  %or.cond.us = select i1 %i.r, i1 true, i1 %.not42.us
  br i1 %or.cond.us, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.critedge2.us
  %i.s = sext i32 %i.n to i64
  %i.t = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2
  %i.v = and i16 %i.u, -1024
  %i.w = icmp eq i16 %i.v, -9216
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = add nsw i32 %i.j, 2                      ; 2 uses
  store i32 %i.x, ptr %i.c, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.critedge2.us
  %i.y = phi i32 [ %i.x, %bb.e ], [ %i.n, %bb.d ], [ %i.n, %.critedge2.us ]
  %i.z = add nsw i32 %.02859.us, -1
  %i.aa = icmp sgt i32 %.02859.us, 1
  br i1 %i.aa, label %.preheader.split.us, label %.critedge, !llvm.loop !6

.preheader.split:                                 ; preds = %.preheader, %bb.i
  %.02859 = phi i32 [ %i.aq, %bb.i ], [ %1, %.preheader ] ; 2 uses
  %i.ab = phi i32 [ %i.ap, %bb.i ], [ %i.b, %.preheader ] ; 4 uses
  %i.ac = icmp slt i32 %i.ab, %.fr
  br i1 %i.ac, label %.critedge2, label %.critedge

.critedge2:                                       ; preds = %.preheader.split
  %i.ad = add nsw i32 %i.ab, 1                    ; 5 uses
  store i32 %i.ad, ptr %i.c, align 4
  %i.ae = sext i32 %i.ab to i64
  %i.af = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = and i16 %i.ag, -1024
  %i.ai = icmp ne i16 %i.ah, -10240
  %.not42 = icmp eq i32 %i.ad, %.fr
  %or.cond = select i1 %i.ai, i1 true, i1 %.not42
  br i1 %or.cond, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.critedge2
  %i.aj = sext i32 %i.ad to i64
  %i.ak = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2
  %i.am = and i16 %i.al, -1024
  %i.an = icmp eq i16 %i.am, -9216
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ao = add nsw i32 %i.ab, 2                    ; 2 uses
  store i32 %i.ao, ptr %i.c, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.critedge2
  %i.ap = phi i32 [ %i.ao, %bb.h ], [ %i.ad, %bb.g ], [ %i.ad, %.critedge2 ]
  %i.aq = add nsw i32 %.02859, -1
  %i.ar = icmp sgt i32 %.02859, 1
  br i1 %i.ar, label %.preheader.split, label %.critedge, !llvm.loop !6

bb.j:                                             ; preds = %bb.a
  %i.as = icmp sgt i32 %1, 0
  br i1 %i.as, label %.preheader48, label %bb.r

.preheader48:                                     ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aw = load i32, ptr %i.av, align 4
  %.fr61 = freeze i32 %i.aw                       ; 5 uses
  %i.ax = icmp slt i32 %.fr61, 0
  %i.ay = load ptr, ptr %i.at, align 8            ; 5 uses
  %.promoted57 = load i32, ptr %i.au, align 4     ; 2 uses
  br i1 %i.ax, label %.preheader48.split.us, label %.preheader48.split

.preheader48.split.us:                            ; preds = %.preheader48, %bb.n
  %i.az = phi i32 [ %i.bo, %bb.n ], [ %.promoted57, %.preheader48 ] ; 4 uses
  %.02756.us = phi i32 [ %i.bp, %bb.n ], [ %1, %.preheader48 ] ; 2 uses
  %i.ba = icmp slt i32 %i.az, %.fr61
  %.pre67 = sext i32 %i.az to i64                 ; 2 uses
  br i1 %i.ba, label %.critedge6.us, label %bb.k

bb.k:                                             ; preds = %.preheader48.split.us
  %i.bb = getelementptr inbounds [2 x i8], ptr %i.ay, i64 %.pre67
  %i.bc = load i16, ptr %i.bb, align 2
  %.not.us = icmp eq i16 %i.bc, 0
  br i1 %.not.us, label %.critedge, label %.critedge6.us

.critedge6.us:                                    ; preds = %.preheader48.split.us, %bb.k
  %i.bd = add nsw i32 %i.az, 1                    ; 5 uses
  store i32 %i.bd, ptr %i.au, align 4
  %i.be = getelementptr inbounds [2 x i8], ptr %i.ay, i64 %.pre67
  %i.bf = load i16, ptr %i.be, align 2
  %i.bg = and i16 %i.bf, -1024
  %i.bh = icmp ne i16 %i.bg, -10240
  %.not40.us = icmp eq i32 %i.bd, %.fr61
  %or.cond43.us = select i1 %i.bh, i1 true, i1 %.not40.us
  br i1 %or.cond43.us, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.critedge6.us
  %i.bi = sext i32 %i.bd to i64
  %i.bj = getelementptr inbounds [2 x i8], ptr %i.ay, i64 %i.bi
  %i.bk = load i16, ptr %i.bj, align 2
  %i.bl = and i16 %i.bk, -1024
  %i.bm = icmp eq i16 %i.bl, -9216
  br i1 %i.bm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bn = add nsw i32 %i.az, 2                    ; 2 uses
  store i32 %i.bn, ptr %i.au, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %.critedge6.us
  %i.bo = phi i32 [ %i.bn, %bb.m ], [ %i.bd, %bb.l ], [ %i.bd, %.critedge6.us ]
  %i.bp = add nsw i32 %.02756.us, -1
  %i.bq = icmp sgt i32 %.02756.us, 1
  br i1 %i.bq, label %.preheader48.split.us, label %.critedge, !llvm.loop !8

.preheader48.split:                               ; preds = %.preheader48, %bb.q
  %i.br = phi i32 [ %i.cf, %bb.q ], [ %.promoted57, %.preheader48 ] ; 4 uses
  %.02756 = phi i32 [ %i.cg, %bb.q ], [ %1, %.preheader48 ] ; 2 uses
  %i.bs = icmp slt i32 %i.br, %.fr61
  br i1 %i.bs, label %.critedge6, label %.critedge

.critedge6:                                       ; preds = %.preheader48.split
  %i.bt = add nsw i32 %i.br, 1                    ; 5 uses
  store i32 %i.bt, ptr %i.au, align 4
  %i.bu = sext i32 %i.br to i64
  %i.bv = getelementptr inbounds [2 x i8], ptr %i.ay, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2
  %i.bx = and i16 %i.bw, -1024
  %i.by = icmp ne i16 %i.bx, -10240
  %.not40 = icmp eq i32 %i.bt, %.fr61
  %or.cond43 = select i1 %i.by, i1 true, i1 %.not40
  br i1 %or.cond43, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.critedge6
  %i.bz = sext i32 %i.bt to i64
  %i.ca = getelementptr inbounds [2 x i8], ptr %i.ay, i64 %i.bz
  %i.cb = load i16, ptr %i.ca, align 2
  %i.cc = and i16 %i.cb, -1024
  %i.cd = icmp eq i16 %i.cc, -9216
  br i1 %i.cd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ce = add nsw i32 %i.br, 2                    ; 2 uses
  store i32 %i.ce, ptr %i.au, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %.critedge6
  %i.cf = phi i32 [ %i.ce, %bb.p ], [ %i.bt, %bb.o ], [ %i.bt, %.critedge6 ]
  %i.cg = add nsw i32 %.02756, -1
  %i.ch = icmp sgt i32 %.02756, 1
  br i1 %i.ch, label %.preheader48.split, label %.critedge, !llvm.loop !8

bb.r:                                             ; preds = %bb.j
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.cj = icmp slt i32 %1, 0
  br i1 %i.cj, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.r
  %i.ck = sub nsw i32 0, %1
  %.promoted53 = load i32, ptr %i.ci, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cm = load i32, ptr %i.cl, align 8            ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.w
  %.02654 = phi i32 [ %i.ck, %.lr.ph ], [ %i.dg, %bb.w ] ; 2 uses
  %i.cp = phi i32 [ %.promoted53, %.lr.ph ], [ %i.df, %bb.w ] ; 4 uses
  %i.cq = icmp sgt i32 %i.cp, %i.cm
  br i1 %i.cq, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.cr = add nsw i32 %i.cp, -1                   ; 5 uses
  store i32 %i.cr, ptr %i.ci, align 4
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [2 x i8], ptr %i.co, i64 %i.cs
  %i.cu = load i16, ptr %i.ct, align 2
  %i.cv = and i16 %i.cu, -1024
  %i.cw = icmp eq i16 %i.cv, -9216
  %i.cx = icmp sgt i32 %i.cr, %i.cm
  %or.cond45 = and i1 %i.cx, %i.cw
  br i1 %or.cond45, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.cy = sext i32 %i.cp to i64
  %i.cz = getelementptr [2 x i8], ptr %i.co, i64 %i.cy
  %i.da = getelementptr i8, ptr %i.cz, i64 -4
  %i.db = load i16, ptr %i.da, align 2
  %i.dc = and i16 %i.db, -1024
  %i.dd = icmp eq i16 %i.dc, -10240
  br i1 %i.dd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.de = add nsw i32 %i.cp, -2                   ; 2 uses
  store i32 %i.de, ptr %i.ci, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.df = phi i32 [ %i.de, %bb.v ], [ %i.cr, %bb.u ], [ %i.cr, %bb.t ]
  %i.dg = add nsw i32 %.02654, -1
  %i.dh = icmp sgt i32 %.02654, 1
  br i1 %i.dh, label %bb.s, label %.critedge, !llvm.loop !9

bb.x:                                             ; preds = %bb.a
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.dj = load i32, ptr %i.di, align 4            ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 %i.dj, ptr %i.dk, align 4
  %i.dl = icmp slt i32 %1, 0
  br i1 %i.dl, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %i.dm = sub nsw i32 0, %1
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.do = load i32, ptr %i.dn, align 8            ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8            ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.ad
  %.052 = phi i32 [ %i.dm, %bb.y ], [ %i.ei, %bb.ad ] ; 2 uses
  %i.dr = phi i32 [ %i.dj, %bb.y ], [ %i.eh, %bb.ad ] ; 4 uses
  %i.ds = icmp sgt i32 %i.dr, %i.do
  br i1 %i.ds, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %bb.z
  %i.dt = add nsw i32 %i.dr, -1                   ; 5 uses
  store i32 %i.dt, ptr %i.dk, align 4
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [2 x i8], ptr %i.dq, i64 %i.du
  %i.dw = load i16, ptr %i.dv, align 2
  %i.dx = and i16 %i.dw, -1024
  %i.dy = icmp eq i16 %i.dx, -9216
  %i.dz = icmp sgt i32 %i.dt, %i.do
  %or.cond47 = and i1 %i.dz, %i.dy
  br i1 %or.cond47, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.ea = sext i32 %i.dr to i64
  %i.eb = getelementptr [2 x i8], ptr %i.dq, i64 %i.ea
  %i.ec = getelementptr i8, ptr %i.eb, i64 -4
  %i.ed = load i16, ptr %i.ec, align 2
  %i.ee = and i16 %i.ed, -1024
  %i.ef = icmp eq i16 %i.ee, -10240
  br i1 %i.ef, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eg = add nsw i32 %i.dr, -2                   ; 2 uses
  store i32 %i.eg, ptr %i.dk, align 4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.eh = phi i32 [ %i.eg, %bb.ac ], [ %i.dt, %bb.ab ], [ %i.dt, %bb.aa ]
  %i.ei = add nsw i32 %.052, -1
  %i.ej = icmp sgt i32 %.052, 1
  br i1 %i.ej, label %bb.z, label %.critedge, !llvm.loop !10

.critedge:                                        ; preds = %bb.z, %bb.ad, %bb.w, %bb.s, %bb.q, %.preheader48.split, %bb.n, %bb.k, %bb.i, %.preheader.split, %bb.f, %bb.c, %bb.r, %bb.a, %bb.x, %bb.b
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.el = load i32, ptr %i.ek, align 4
  ret i32 %i.el
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN6icu_7822UCharCharacterIterator7setTextENS_14ConstChar16PtrEi(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((8, 32)) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.b, align 8
  %i.c = icmp eq ptr %i.a, null
  %i.d = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  %spec.store.select = select i1 %i.c, i32 0, i32 %i.d ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %spec.store.select, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %spec.store.select, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.h, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7822UCharCharacterIterator7getTextERNS_13UnicodeStringE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8
  call void @_ZN6icu_7813UnicodeStringC1EPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef %i.b, i32 noundef %i.d) #12
  %i.e = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) #12 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void
}

declare void @_ZN6icu_7813UnicodeStringC1EPKDsi(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{ptr @_ZN6icu_7822UCharCharacterIteratorC2ERKS0_}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
end_hunk_0
