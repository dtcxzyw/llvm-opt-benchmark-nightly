inline.NumInlined: 173
inline.NumDeleted: 57
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.icu_78::UCharsTrie::Iterator" = type { ptr, ptr, ptr, i32, i32, i8, %"class.icu_78::UnicodeString", i32, i32, ptr }
%"class.icu_78::UnicodeString" = type { %"class.icu_78::Replaceable", %"union.icu_78::UnicodeString::StackBufferOrFields" }
%"class.icu_78::Replaceable" = type { %"class.icu_78::UObject" }
%"class.icu_78::UObject" = type { ptr }
%"union.icu_78::UnicodeString::StackBufferOrFields" = type { %struct.anon.0, [32 x i8] }
%struct.anon.0 = type { i16, i32, i32, ptr }
%"class.icu_78::ConstChar16Ptr" = type { ptr }
%"class.icu_78::UTF16CollationIterator" = type { %"class.icu_78::CollationIterator.base", ptr, ptr, ptr }
%"class.icu_78::CollationIterator.base" = type <{ %"class.icu_78::UObject", ptr, ptr, %"class.icu_78::CollationIterator::CEBuffer", i32, [4 x i8], ptr, i32, i8 }>
%"class.icu_78::CollationIterator::CEBuffer" = type { i32, %"class.icu_78::MaybeStackArray" }
%"class.icu_78::MaybeStackArray" = type { ptr, i32, i8, [40 x i64] }

$_ZTIN6icu_787UMemoryE = comdat any

$_ZTSN6icu_787UMemoryE = comdat any

@_ZTVN6icu_7825ContractionsAndExpansions6CESinkE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN6icu_7825ContractionsAndExpansions6CESinkE, ptr @_ZN6icu_7825ContractionsAndExpansions6CESinkD2Ev, ptr @_ZN6icu_7825ContractionsAndExpansions6CESinkD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, align 8
@_ZTIN6icu_7825ContractionsAndExpansions6CESinkE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6icu_7825ContractionsAndExpansions6CESinkE, ptr @_ZTIN6icu_787UMemoryE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6icu_7825ContractionsAndExpansions6CESinkE = dso_local constant [44 x i8] c"N6icu_7825ContractionsAndExpansions6CESinkE\00", align 1
@_ZTIN6icu_787UMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6icu_787UMemoryE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN6icu_787UMemoryE = linkonce_odr dso_local constant [18 x i8] c"N6icu_787UMemoryE\00", comdat, align 1
@_ZTVN6icu_7822UTF16CollationIteratorE = external unnamed_addr constant { [18 x ptr] }, align 8

@_ZN6icu_7825ContractionsAndExpansions6CESinkD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN6icu_7825ContractionsAndExpansions6CESinkD2Ev

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7811TailoredSet7forDataEPKNS_13CollationDataER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4                ; 2 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store i32 %i.a, ptr %i.c, align 8
  store ptr %1, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  %i.g = load ptr, ptr %1, align 8
  tail call void @utrie2_enum_78(ptr noundef %i.g, ptr noundef null, ptr noundef nonnull @_ZN6icu_78L17enumTailoredRangeEPKviij, ptr noundef nonnull %0) #9
  %i.h = load i32, ptr %i.c, align 8
  store i32 %i.h, ptr %2, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @utrie2_enum_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal noundef signext range(i8 0, 2) i8 @_ZN6icu_78L17enumTailoredRangeEPKviij(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = icmp eq i32 %3, 192
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef signext i8 @_ZN6icu_7811TailoredSet10handleCE32Eiij(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i8 [ %i.b, %bb.b ], [ 1, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZN6icu_7811TailoredSet10handleCE32Eiij(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = and i32 %3, 192
  %.not = icmp eq i32 %i.a, 192
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8
  %i.c = tail call noundef i32 @_ZNK6icu_7813CollationData15getIndirectCE32Ej(ptr noundef nonnull align 8 dereferenceable(140) %i.b, i32 noundef %3) #9 ; 2 uses
  %i.d = icmp eq i32 %i.c, 192
  br i1 %i.d, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.015 = phi i32 [ %i.c, %bb.b ], [ %3, %bb.a ]  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = and i32 %.015, 192
  %.not.i23 = icmp eq i32 %i.f, 192
  %i.g = and i32 %.015, 15
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.p, %bb.c
  %.016 = phi i32 [ %1, %bb.c ], [ %i.bo, %bb.p ] ; 15 uses
  %i.i = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp ult i32 %.016, 55296
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.j, align 8
  %i.o = lshr i32 %.016, 5
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2
  %i.s = zext i16 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 2
  %i.u = and i32 %.016, 31
  %i.v = add nuw nsw i32 %i.t, %i.u
  br label %_ZNK6icu_7813CollationData7getCE32Ei.exit

bb.f:                                             ; preds = %bb.d
  %i.w = icmp ult i32 %.016, 65536
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.j, align 8
  %i.y = icmp samesign ult i32 %.016, 56320
  %i.z = select i1 %i.y, i32 320, i32 0
  %i.aa = lshr i32 %.016, 5
  %i.ab = add nuw nsw i32 %i.z, %i.aa
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = zext i16 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 2
  %i.ah = and i32 %.016, 31
  %i.ai = add nuw nsw i32 %i.ag, %i.ah
  br label %_ZNK6icu_7813CollationData7getCE32Ei.exit

bb.h:                                             ; preds = %bb.f
  %i.aj = icmp ugt i32 %.016, 1114111
  br i1 %i.aj, label %_ZNK6icu_7813CollationData7getCE32Ei.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.al = load i32, ptr %i.ak, align 4
  %.not.i = icmp slt i32 %.016, %i.al
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.an = load i32, ptr %i.am, align 8
  br label %_ZNK6icu_7813CollationData7getCE32Ei.exit

bb.k:                                             ; preds = %bb.i
  %i.ao = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ap = lshr i32 %.016, 11
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4160
  %i.at = load i16, ptr %i.as, align 2
  %i.au = zext i16 %i.at to i32
  %i.av = lshr i32 %.016, 5
  %i.aw = and i32 %i.av, 63
  %i.ax = add nuw nsw i32 %i.aw, %i.au
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2
  %i.bb = zext i16 %i.ba to i32
  %i.bc = shl nuw nsw i32 %i.bb, 2
  %i.bd = and i32 %.016, 31
  %i.be = add nuw nsw i32 %i.bc, %i.bd
  br label %_ZNK6icu_7813CollationData7getCE32Ei.exit

_ZNK6icu_7813CollationData7getCE32Ei.exit:        ; preds = %bb.e, %bb.g, %bb.h, %bb.j, %bb.k
  %i.bf = phi i32 [ %i.v, %bb.e ], [ %i.ai, %bb.g ], [ 128, %bb.h ], [ %i.an, %bb.j ], [ %i.be, %bb.k ]
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = tail call noundef i32 @_ZNK6icu_7813CollationData12getFinalCE32Ej(ptr noundef nonnull align 8 dereferenceable(140) %i.i, i32 noundef %i.bi) #9 ; 4 uses
  br i1 %.not.i23, label %bb.l, label %_ZN6icu_789Collation19isSelfContainedCE32Ej.exit.thread

bb.l:                                             ; preds = %_ZNK6icu_7813CollationData7getCE32Ei.exit
  switch i32 %i.g, label %bb.o [
    i32 4, label %_ZN6icu_789Collation19isSelfContainedCE32Ej.exit.thread
    i32 2, label %_ZN6icu_789Collation19isSelfContainedCE32Ej.exit.thread
    i32 1, label %_ZN6icu_789Collation19isSelfContainedCE32Ej.exit.thread
  ]

_ZN6icu_789Collation19isSelfContainedCE32Ej.exit.thread: ; preds = %bb.l, %bb.l, %bb.l, %_ZNK6icu_7813CollationData7getCE32Ei.exit
  %i.bk = and i32 %i.bj, 192
  %.not.i24 = icmp eq i32 %i.bk, 192
  br i1 %.not.i24, label %bb.m, label %_ZN6icu_789Collation19isSelfContainedCE32Ej.exit27.thread

bb.m:                                             ; preds = %_ZN6icu_789Collation19isSelfContainedCE32Ej.exit.thread
  %i.bl = and i32 %i.bj, 15
  switch i32 %i.bl, label %bb.o [
    i32 4, label %_ZN6icu_789Collation19isSelfContainedCE32Ej.exit27.thread
    i32 2, label %_ZN6icu_789Collation19isSelfContainedCE32Ej.exit27.thread
    i32 1, label %_ZN6icu_789Collation19isSelfContainedCE32Ej.exit27.thread
  ]

_ZN6icu_789Collation19isSelfContainedCE32Ej.exit27.thread: ; preds = %bb.m, %bb.m, %bb.m, %_ZN6icu_789Collation19isSelfContainedCE32Ej.exit.thread
  %.not21 = icmp eq i32 %.015, %i.bj
  br i1 %.not21, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZN6icu_789Collation19isSelfContainedCE32Ej.exit27.thread
  %i.bm = load ptr, ptr %i.h, align 8
  %i.bn = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %i.bm, i32 noundef %.016) #9 ; 0 uses
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.l
  tail call void @_ZN6icu_7811TailoredSet7compareEijj(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %.016, i32 noundef %.015, i32 noundef %i.bj)
  br label %bb.p

bb.p:                                             ; preds = %_ZN6icu_789Collation19isSelfContainedCE32Ej.exit27.thread, %bb.n, %bb.o
  %i.bo = add nsw i32 %.016, 1                    ; 2 uses
  %.not22 = icmp sgt i32 %i.bo, %2
  br i1 %.not22, label %.loopexit, label %bb.d, !llvm.loop !5

.loopexit:                                        ; preds = %bb.p, %bb.b
  %.0.in.in.in = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.0.in.in = load i32, ptr %.0.in.in.in, align 8
  %.0.in = icmp slt i32 %.0.in.in, 1
  %.0 = zext i1 %.0.in to i8
  ret i8 %.0
}

declare noundef i32 @_ZNK6icu_7813CollationData15getIndirectCE32Ej(ptr noundef nonnull align 8 dereferenceable(140), i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare noundef i32 @_ZNK6icu_7813CollationData12getFinalCE32Ej(ptr noundef nonnull align 8 dereferenceable(140), i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7811TailoredSet7compareEijj(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.icu_78::UCharsTrie::Iterator", align 8 ; 8 uses
  %5 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 5 uses
  %6 = alloca %"class.icu_78::UCharsTrie::Iterator", align 8 ; 8 uses
  %7 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 5 uses
  %i.a = and i32 %2, 207
  %narrow.i.i.not = icmp eq i32 %i.a, 200
  br i1 %narrow.i.i.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = lshr i32 %2, 13
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.f ; 4 uses
  %i.h = load i16, ptr %i.g, align 2
  %i.i = zext i16 %i.h to i32
  %i.j = shl nuw i32 %i.i, 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.l = load i16, ptr %i.k, align 2
  %i.m = zext i16 %i.l to i32
  %i.n = or disjoint i32 %i.j, %i.m
  %i.o = tail call noundef i32 @_ZNK6icu_7813CollationData12getFinalCE32Ej(ptr noundef nonnull align 8 dereferenceable(140) %i.b, i32 noundef %i.n) #9 ; 2 uses
  %i.p = and i32 %3, 207
  %narrow.i.i126.not = icmp eq i32 %i.p, 200
  br i1 %narrow.i.i126.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = lshr i32 %3, 13
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.v ; 3 uses
  %i.x = load i16, ptr %i.w, align 2
  %i.y = zext i16 %i.x to i32
  %i.z = shl nuw i32 %i.y, 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = zext i16 %i.ab to i32
  %i.ad = or disjoint i32 %i.z, %i.ac
  %i.ae = tail call noundef i32 @_ZNK6icu_7813CollationData12getFinalCE32Ej(ptr noundef nonnull align 8 dereferenceable(140) %i.r, i32 noundef %i.ad) #9
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  tail call void @_ZN6icu_7811TailoredSet15comparePrefixesEiPKDsS2_(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %1, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ag)
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.ah = load ptr, ptr %0, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  store ptr %i.ai, ptr %7, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  call void @_ZN6icu_7810UCharsTrie8IteratorC1ENS_14ConstChar16PtrEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(120) %6, ptr noundef nonnull %7, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %i.aj) #9
  %i.ak = load ptr, ptr %7, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.ak) #9, !srcloc !7
  %i.al = call noundef signext i8 @_ZN6icu_7810UCharsTrie8Iterator4nextER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(120) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.aj) #9
  %.not3.i = icmp eq i8 %i.al, 0
  br i1 %.not3.i, label %_ZN6icu_7811TailoredSet11addPrefixesEPKNS_13CollationDataEiPKDs.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 108
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %i.ao = load i32, ptr %i.an, align 4
  call void @_ZN6icu_7811TailoredSet9addPrefixEPKNS_13CollationDataERKNS_13UnicodeStringEij(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(64) %i.am, i32 noundef %1, i32 noundef %i.ao)
  %i.ap = call noundef signext i8 @_ZN6icu_7810UCharsTrie8Iterator4nextER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(120) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.aj) #9
  %.not.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i, label %_ZN6icu_7811TailoredSet11addPrefixesEPKNS_13CollationDataEiPKDs.exit, label %bb.e, !llvm.loop !8

_ZN6icu_7811TailoredSet11addPrefixesEPKNS_13CollationDataEiPKDs.exit: ; preds = %bb.e, %bb.d
  call void @_ZN6icu_7810UCharsTrie8IteratorD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.aq = and i32 %3, 207
  %narrow.i.i127.not = icmp eq i32 %i.aq, 200
  br i1 %narrow.i.i127.not, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = lshr i32 %3, 13
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.aw ; 3 uses
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = zext i16 %i.ay to i32
  %i.ba = shl nuw i32 %i.az, 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.bc = load i16, ptr %i.bb, align 2
  %i.bd = zext i16 %i.bc to i32
  %i.be = or disjoint i32 %i.ba, %i.bd
  %i.bf = tail call noundef i32 @_ZNK6icu_7813CollationData12getFinalCE32Ej(ptr noundef nonnull align 8 dereferenceable(140) %i.as, i32 noundef %i.be) #9
  %i.bg = load ptr, ptr %i.ar, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store ptr %i.bh, ptr %5, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  call void @_ZN6icu_7810UCharsTrie8IteratorC1ENS_14ConstChar16PtrEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull %5, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %i.bi) #9
  %i.bj = load ptr, ptr %5, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.bj) #9, !srcloc !7
  %i.bk = call noundef signext i8 @_ZN6icu_7810UCharsTrie8Iterator4nextER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.bi) #9
  %.not3.i128 = icmp eq i8 %i.bk, 0
  br i1 %.not3.i128, label %_ZN6icu_7811TailoredSet11addPrefixesEPKNS_13CollationDataEiPKDs.exit131, label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 108
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i129
  %i.bn = load i32, ptr %i.bm, align 4
  call void @_ZN6icu_7811TailoredSet9addPrefixEPKNS_13CollationDataERKNS_13UnicodeStringEij(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(64) %i.bl, i32 noundef %1, i32 noundef %i.bn)
  %i.bo = call noundef signext i8 @_ZN6icu_7810UCharsTrie8Iterator4nextER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.bi) #9
  %.not.i130 = icmp eq i8 %i.bo, 0
  br i1 %.not.i130, label %_ZN6icu_7811TailoredSet11addPrefixesEPKNS_13CollationDataEiPKDs.exit131, label %bb.h, !llvm.loop !8

_ZN6icu_7811TailoredSet11addPrefixesEPKNS_13CollationDataEiPKDs.exit131: ; preds = %bb.h, %bb.g
  call void @_ZN6icu_7810UCharsTrie8IteratorD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %_ZN6icu_7811TailoredSet11addPrefixesEPKNS_13CollationDataEiPKDs.exit, %bb.f, %_ZN6icu_7811TailoredSet11addPrefixesEPKNS_13CollationDataEiPKDs.exit131
  %.196 = phi i32 [ %3, %bb.f ], [ %i.bf, %_ZN6icu_7811TailoredSet11addPrefixesEPKNS_13CollationDataEiPKDs.exit131 ], [ %i.ae, %bb.c ], [ %3, %_ZN6icu_7811TailoredSet11addPrefixesEPKNS_13CollationDataEiPKDs.exit ] ; 7 uses
  %.0 = phi i32 [ %2, %bb.f ], [ %2, %_ZN6icu_7811TailoredSet11addPrefixesEPKNS_13CollationDataEiPKDs.exit131 ], [ %i.o, %bb.c ], [ %i.o, %_ZN6icu_7811TailoredSet11addPrefixesEPKNS_13CollationDataEiPKDs.exit ] ; 5 uses
  %i.bp = and i32 %.0, 207
  %narrow.i.i132.not = icmp eq i32 %i.bp, 201
  br i1 %narrow.i.i132.not, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.bq = load ptr, ptr %0, align 8               ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = lshr i32 %.0, 13
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %i.bu ; 4 uses
  %i.bw = and i32 %.0, 256
  %.not110 = icmp eq i32 %i.bw, 0
  br i1 %.not110, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bx = load i16, ptr %i.bv, align 2
  %i.by = zext i16 %i.bx to i32
  %i.bz = shl nuw i32 %i.by, 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  %i.cb = load i16, ptr %i.ca, align 2
  %i.cc = zext i16 %i.cb to i32
  %i.cd = or disjoint i32 %i.bz, %i.cc
  %i.ce = call noundef i32 @_ZNK6icu_7813CollationData12getFinalCE32Ej(ptr noundef nonnull align 8 dereferenceable(140) %i.bq, i32 noundef %i.cd) #9
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.1 = phi i32 [ %i.ce, %bb.k ], [ 1, %bb.j ]    ; 2 uses
  %i.cf = and i32 %.196, 207
  %narrow.i.i133.not = icmp eq i32 %i.cf, 201
  br i1 %narrow.i.i133.not, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = lshr i32 %.196, 13
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %i.cl ; 3 uses
  %i.cn = and i32 %.196, 256
  %.not112 = icmp eq i32 %i.cn, 0
  br i1 %.not112, label %bb.n, label %bb.o

end_hunk_0
begin_hunk_1_@_ZN6icu_7825ContractionsAndExpansions10handleCE32Eiij:bb.a
  %i.bu = load ptr, ptr %i.d, align 8
  %i.bv = lshr i32 %.087, 13
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 512
  %wide.trip.count = zext nneg i32 %i.bt to i64
  br label %bb.s

._crit_edge96:                                    ; preds = %_ZN6icu_789Collation10ceFromCE32Ej.exit, %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ca = load ptr, ptr %i.br, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull %i.bz, i32 noundef %i.bt) #9
  br label %bb.w

bb.s:                                             ; preds = %.lr.ph95, %_ZN6icu_789Collation10ceFromCE32Ej.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph95 ], [ %indvars.iv.next, %_ZN6icu_789Collation10ceFromCE32Ej.exit ] ; 2 uses
  %.04693 = phi ptr [ %i.bx, %.lr.ph95 ], [ %i.cd, %_ZN6icu_789Collation10ceFromCE32Ej.exit ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.04693, i64 4
  %i.ce = load i32, ptr %.04693, align 4          ; 5 uses
  %i.cf = and i32 %i.ce, 255                      ; 2 uses
  %i.cg = icmp samesign ult i32 %i.cf, 192
  br i1 %i.cg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ch = and i32 %i.ce, -65536
  %i.ci = zext i32 %i.ch to i64
  %i.cj = shl nuw i64 %i.ci, 32
  %i.ck = shl i32 %i.ce, 16
  %i.cl = and i32 %i.ck, -16777216
  %i.cm = zext i32 %i.cl to i64
  %i.cn = or disjoint i64 %i.cj, %i.cm
  %i.co = shl nuw nsw i32 %i.cf, 8
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = or disjoint i64 %i.cn, %i.cp
  br label %_ZN6icu_789Collation10ceFromCE32Ej.exit

bb.u:                                             ; preds = %bb.s
  %i.cr = and i32 %i.ce, -256
  %i.cs = and i32 %i.ce, 15
  %i.ct = icmp eq i32 %i.cs, 1
  %i.cu = zext i32 %i.cr to i64                   ; 2 uses
  br i1 %i.ct, label %bb.v, label %_ZN6icu_789Collation10ceFromCE32Ej.exit

bb.v:                                             ; preds = %bb.u
  %i.cv = shl nuw i64 %i.cu, 32
  %i.cw = or disjoint i64 %i.cv, 83887360
  br label %_ZN6icu_789Collation10ceFromCE32Ej.exit

_ZN6icu_789Collation10ceFromCE32Ej.exit:          ; preds = %bb.t, %bb.u, %bb.v
  %.0.i = phi i64 [ %i.cq, %bb.t ], [ %i.cw, %bb.v ], [ %i.cu, %bb.u ]
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv
  store i64 %.0.i, ptr %i.cx, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond110.not, label %._crit_edge96, label %bb.s, !llvm.loop !15

bb.w:                                             ; preds = %._crit_edge96, %bb.q
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.cz = load i16, ptr %i.cy, align 8
  %i.da = icmp ugt i16 %i.cz, 31
  br i1 %i.da, label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = icmp eq ptr %i.dc, null
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.df = load ptr, ptr %i.de, align 8            ; 3 uses
  br i1 %i.dd, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %.not4.i67 = icmp eq ptr %i.df, null
  br i1 %.not4.i67, label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dg = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEii(ptr noundef nonnull align 8 dereferenceable(200) %i.df, i32 noundef %1, i32 noundef %2) #9 ; 0 uses
  br label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit

bb.aa:                                            ; preds = %bb.x
  tail call void @_ZN6icu_7825ContractionsAndExpansions10addStringsEiiPNS_10UnicodeSetE(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %1, i32 noundef %2, ptr noundef %i.df)
  br label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit

bb.ab:                                            ; preds = %bb.c
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.di = load ptr, ptr %i.dh, align 8            ; 3 uses
  %.not56 = icmp eq ptr %i.di, null
  br i1 %.not56, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dj = lshr i32 %.087, 8
  %i.dk = and i32 %i.dj, 31
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = lshr i32 %.087, 13
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.do
  %i.dq = load ptr, ptr %i.di, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  tail call void %i.ds(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef %i.dp, i32 noundef %i.dk) #9
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.du = load i16, ptr %i.dt, align 8
  %i.dv = icmp ugt i16 %i.du, 31
  br i1 %i.dv, label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = icmp eq ptr %i.dx, null
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8            ; 3 uses
  br i1 %i.dy, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %.not4.i70 = icmp eq ptr %i.ea, null
  br i1 %.not4.i70, label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eb = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEii(ptr noundef nonnull align 8 dereferenceable(200) %i.ea, i32 noundef %1, i32 noundef %2) #9 ; 0 uses
  br label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit

bb.ah:                                            ; preds = %bb.ae
  tail call void @_ZN6icu_7825ContractionsAndExpansions10addStringsEiiPNS_10UnicodeSetE(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %1, i32 noundef %2, ptr noundef %i.ea)
  br label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit

bb.ai:                                            ; preds = %bb.c
  tail call void @_ZN6icu_7825ContractionsAndExpansions14handlePrefixesEiij(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %1, i32 noundef %2, i32 noundef %.087)
  br label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit

bb.aj:                                            ; preds = %bb.c
  tail call void @_ZN6icu_7825ContractionsAndExpansions18handleContractionsEiij(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %1, i32 noundef %2, i32 noundef %.087)
  br label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit

bb.ak:                                            ; preds = %bb.c
  %i.ec = load ptr, ptr %i.d, align 8
  %i.ed = lshr i32 %.087, 13
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.ee
  br label %bb.av

bb.al:                                            ; preds = %bb.c
  %i.eg = load ptr, ptr %i.d, align 8
  br label %bb.av

bb.am:                                            ; preds = %bb.c
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8
  %.not52 = icmp eq ptr %i.ei, null
  br i1 %.not52, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ek = load ptr, ptr %i.c, align 8
  store ptr %i.ek, ptr %i.ej, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.c, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 0, ptr %i.em, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.eo, ptr %i.en, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 40, ptr %i.ep, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i8 0, ptr %i.eq, align 4
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 368
  store i32 0, ptr %i.er, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 376
  store ptr null, ptr %i.es, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 384
  store i32 -1, ptr %i.et, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 388
  store i8 0, ptr %i.eu, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN6icu_7822UTF16CollationIteratorE, i64 16), ptr %4, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 392 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 400
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ev, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %.not53.not88 = icmp sgt i32 %1, %2
  br i1 %.not53.not88, label %.critedge.thread, label %.lr.ph91

.lr.ph91:                                         ; preds = %bb.an
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  br label %bb.ao

.critedge.thread:                                 ; preds = %bb.ap, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @_ZN6icu_7822UTF16CollationIteratorD1Ev(ptr noundef nonnull align 8 dereferenceable(416) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.aq

bb.ao:                                            ; preds = %.lr.ph91, %bb.ap
  %.04589 = phi i32 [ %1, %.lr.ph91 ], [ %i.fk, %bb.ap ] ; 2 uses
  %i.fa = trunc i32 %.04589 to i16
  store i16 %i.fa, ptr %i.a, align 2
  call void @_ZN6icu_7817CollationIterator5resetEv(ptr noundef nonnull align 8 dereferenceable(416) %4) #9
  store ptr %i.a, ptr %i.ew, align 8
  store ptr %i.a, ptr %i.ev, align 8
  store ptr %i.ey, ptr %i.ex, align 8
  %i.fb = call noundef i32 @_ZN6icu_7817CollationIterator8fetchCEsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(389) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.ez) #9
  %i.fc = load i32, ptr %i.ez, align 8
  %i.fd = icmp slt i32 %i.fc, 1
  br i1 %i.fd, label %bb.ap, label %.critedge

bb.ap:                                            ; preds = %bb.ao
  %i.fe = load ptr, ptr %i.eh, align 8            ; 2 uses
  %i.ff = load ptr, ptr %i.en, align 8
  %i.fg = add nsw i32 %i.fb, -1
  %i.fh = load ptr, ptr %i.fe, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(8) %i.fe, ptr noundef %i.ff, i32 noundef %i.fg) #9
  %i.fk = add nsw i32 %.04589, 1                  ; 2 uses
  %.not53.not = icmp sgt i32 %i.fk, %2
  br i1 %.not53.not, label %.critedge.thread, label %bb.ao, !llvm.loop !16

.critedge:                                        ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @_ZN6icu_7822UTF16CollationIteratorD1Ev(ptr noundef nonnull align 8 dereferenceable(416) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit

bb.aq:                                            ; preds = %.critedge.thread, %bb.am
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.fm = load i16, ptr %i.fl, align 8
  %i.fn = icmp ugt i16 %i.fm, 31
  br i1 %i.fn, label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = icmp eq ptr %i.fp, null
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8            ; 3 uses
  br i1 %i.fq, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %.not4.i73 = icmp eq ptr %i.fs, null
  br i1 %.not4.i73, label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ft = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEii(ptr noundef nonnull align 8 dereferenceable(200) %i.fs, i32 noundef %1, i32 noundef %2) #9 ; 0 uses
  br label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit

bb.au:                                            ; preds = %bb.ar
  call void @_ZN6icu_7825ContractionsAndExpansions10addStringsEiiPNS_10UnicodeSetE(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %1, i32 noundef %2, ptr noundef %i.fs)
  br label %_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit

default.unreachable125:                           ; preds = %bb.c
  unreachable

bb.av:                                            ; preds = %bb.al, %bb.ak
  %.1.in = phi ptr [ %i.eg, %bb.al ], [ %i.ef, %bb.ak ]
  %.1 = load i32, ptr %.1.in, align 4             ; 3 uses
  %i.fu = and i32 %.1, 192
  %.not = icmp eq i32 %i.fu, 192
  br i1 %.not, label %bb.c, label %._crit_edge, !llvm.loop !17

_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii.exit: ; preds = %bb.c, %bb.c, %bb.c, %bb.au, %bb.at, %bb.as, %.critedge, %bb.ah, %bb.ag, %bb.af, %bb.aa, %bb.z, %bb.y, %bb.p, %bb.o, %bb.n, %bb.aq, %bb.ad, %bb.w, %bb.l, %bb.h, %bb.i, %bb.f, %bb.g, %bb.d, %bb.e, %._crit_edge, %bb.b, %bb.aj, %bb.ai
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7825ContractionsAndExpansions13addExpansionsEii(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.b = load i16, ptr %i.a, align 8
  %i.c = icmp ult i16 %i.b, 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, null
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not4 = icmp eq ptr %i.h, null
  br i1 %.not4, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEii(ptr noundef nonnull align 8 dereferenceable(200) %i.h, i32 noundef %1, i32 noundef %2) #9 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN6icu_7825ContractionsAndExpansions10addStringsEiiPNS_10UnicodeSetE(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %1, i32 noundef %2, ptr noundef %i.h)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7825ContractionsAndExpansions14handlePrefixesEiij(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.icu_78::UCharsTrie::Iterator", align 8 ; 8 uses
  %5 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 3 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = lshr i32 %3, 13
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.e ; 3 uses
  %i.g = load i16, ptr %i.f, align 2
  %i.h = zext i16 %i.g to i32
  %i.i = shl nuw i32 %i.h, 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.k = load i16, ptr %i.j, align 2
  %i.l = zext i16 %i.k to i32
  %i.m = or disjoint i32 %i.i, %i.l
  tail call void @_ZN6icu_7825ContractionsAndExpansions10handleCE32Eiij(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i8, ptr %i.n, align 8
  %.not = icmp eq i8 %i.o, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store ptr %i.p, ptr %5, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 3 uses
  call void @_ZN6icu_7810UCharsTrie8IteratorC1ENS_14ConstChar16PtrEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull %5, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %i.q) #9
  %i.r = load ptr, ptr %5, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.r) #9, !srcloc !7
  %i.s = call noundef signext i8 @_ZN6icu_7810UCharsTrie8Iterator4nextER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.q) #9
  %.not1213 = icmp eq i8 %i.s, 0
  br i1 %.not1213, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 108
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %i.aa = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.u, ptr noundef nonnull align 8 dereferenceable(64) %i.t) #9 ; 0 uses
  %i.ab = load i16, ptr %i.v, align 8             ; 2 uses
  %i.ac = icmp slt i16 %i.ab, 0
  %i.ad = ashr i16 %i.ab, 5
  %i.ae = sext i16 %i.ad to i32
  %i.af = load i32, ptr %i.w, align 4
  %i.ag = select i1 %i.ac, i32 %i.af, i32 %i.ae
  %i.ah = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReverseEii(ptr noundef nonnull align 8 dereferenceable(64) %i.u, i32 noundef 0, i32 noundef %i.ag) #9 ; 0 uses
  %i.ai = load ptr, ptr %i.x, align 8
  call void @_ZN6icu_7825ContractionsAndExpansions10addStringsEiiPNS_10UnicodeSetE(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %1, i32 noundef %2, ptr noundef %i.ai)
  %i.aj = load ptr, ptr %i.y, align 8
  call void @_ZN6icu_7825ContractionsAndExpansions10addStringsEiiPNS_10UnicodeSetE(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %1, i32 noundef %2, ptr noundef %i.aj)
  %i.ak = load i32, ptr %i.z, align 4
  call void @_ZN6icu_7825ContractionsAndExpansions10handleCE32Eiij(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.ak)
  %i.al = call noundef signext i8 @_ZN6icu_7810UCharsTrie8Iterator4nextER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.q) #9
  %.not12 = icmp eq i8 %i.al, 0
  br i1 %.not12, label %._crit_edge, label %bb.c, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.an = load i16, ptr %i.am, align 8            ; 2 uses
  %i.ao = and i16 %i.an, 1
  %.not.i.i = icmp eq i16 %i.ao, 0
  %i.ap = and i16 %i.an, 30
  %storemerge.i.i = select i1 %.not.i.i, i16 %i.ap, i16 2
  store i16 %storemerge.i.i, ptr %i.am, align 8
  call void @_ZN6icu_7810UCharsTrie8IteratorD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7825ContractionsAndExpansions18handleContractionsEiij(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.icu_78::UCharsTrie::Iterator", align 8 ; 8 uses
  %5 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 3 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = lshr i32 %3, 13
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.e ; 3 uses
  %i.g = and i32 %3, 256
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i16, ptr %i.f, align 2
  %i.i = zext i16 %i.h to i32
  %i.j = shl nuw i32 %i.i, 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.l = load i16, ptr %i.k, align 2
  %i.m = zext i16 %i.l to i32
  %i.n = or disjoint i32 %i.j, %i.m
  tail call void @_ZN6icu_7825ContractionsAndExpansions10handleCE32Eiij(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.n)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store ptr %i.o, ptr %5, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 3 uses
  call void @_ZN6icu_7810UCharsTrie8IteratorC1ENS_14ConstChar16PtrEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull %5, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %i.p) #9
  %i.q = load ptr, ptr %5, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.q) #9, !srcloc !7
  %i.r = call noundef signext i8 @_ZN6icu_7810UCharsTrie8Iterator4nextER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.p) #9
  %.not1315 = icmp eq i8 %i.r, 0
  br i1 %.not1315, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 108
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  store ptr %i.s, ptr %i.t, align 8
  %i.y = load ptr, ptr %i.u, align 8
  call void @_ZN6icu_7825ContractionsAndExpansions10addStringsEiiPNS_10UnicodeSetE(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %1, i32 noundef %2, ptr noundef %i.y)
  %i.z = load i16, ptr %i.v, align 8
  %i.aa = icmp ugt i16 %i.z, 31
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.w, align 8
  call void @_ZN6icu_7825ContractionsAndExpansions10addStringsEiiPNS_10UnicodeSetE(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %1, i32 noundef %2, ptr noundef %i.ab)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = load i32, ptr %i.x, align 4
  call void @_ZN6icu_7825ContractionsAndExpansions10handleCE32Eiij(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.ac)
  %i.ad = call noundef signext i8 @_ZN6icu_7810UCharsTrie8Iterator4nextER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.p) #9
  %.not13 = icmp eq i8 %i.ad, 0
  br i1 %.not13, label %._crit_edge, label %bb.d, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.f, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 504
  store ptr null, ptr %i.ae, align 8
  call void @_ZN6icu_7810UCharsTrie8IteratorD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare noundef i32 @_ZN6icu_7817CollationIterator8fetchCEsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(389), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6icu_7822UTF16CollationIteratorD1Ev(ptr noundef nonnull align 8 dereferenceable(416)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7825ContractionsAndExpansions10addStringsEiiPNS_10UnicodeSetE(ptr noundef nonnull align 8 dereferenceable(764) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 440
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %i.b) #9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZN6icu_7813UnicodeString8truncateEi.exit, %bb.b
  %.0 = phi i32 [ %1, %bb.b ], [ %i.an, %_ZN6icu_7813UnicodeString8truncateEi.exit ] ; 2 uses
  %i.h = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef %.0) #9 ; 0 uses
  %i.i = load ptr, ptr %i.c, align 8              ; 4 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i16, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp slt i16 %i.k, 0
  %i.m = ashr i16 %i.k, 5
  %i.n = sext i16 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.p = load i32, ptr %i.o, align 4
  %i.q = select i1 %i.l, i32 %i.p, i32 %i.n
  %i.r = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i32 noundef 0, i32 noundef %i.q) #9 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(200) %3, ptr noundef nonnull align 8 dereferenceable(64) %4) #9 ; 0 uses
  %i.t = load i16, ptr %i.d, align 8              ; 2 uses
  %i.u = icmp slt i16 %i.t, 0
  %i.v = ashr i16 %i.t, 5
  %i.w = sext i16 %i.v to i32
  %i.x = load i32, ptr %i.e, align 4
  %i.y = select i1 %i.u, i32 %i.x, i32 %i.w       ; 5 uses
  %i.z = load i16, ptr %i.f, align 8              ; 5 uses
  %i.aa = trunc i16 %i.z to i1
  %i.ab = icmp eq i32 %i.y, 0
  %or.cond.i = and i1 %i.ab, %i.aa
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %4) #9
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

bb.g:                                             ; preds = %bb.e
  %i.ac = icmp slt i16 %i.z, 0
  %i.ad = ashr i16 %i.z, 5
  %i.ae = sext i16 %i.ad to i32
  %i.af = load i32, ptr %i.g, align 4
  %i.ag = select i1 %i.ac, i32 %i.af, i32 %i.ae
  %i.ah = icmp ult i32 %i.y, %i.ag
  br i1 %i.ah, label %bb.h, label %_ZN6icu_7813UnicodeString8truncateEi.exit

bb.h:                                             ; preds = %bb.g
  %i.ai = icmp slt i32 %i.y, 1024
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aj = and i16 %i.z, 31
  %.tr.i.i.i = trunc i32 %i.y to i16
  %i.ak = shl i16 %.tr.i.i.i, 5
  %i.al = or disjoint i16 %i.ak, %i.aj
  store i16 %i.al, ptr %i.f, align 8
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

bb.j:                                             ; preds = %bb.h
  %i.am = or i16 %i.z, -32
  store i16 %i.am, ptr %i.f, align 8
  store i32 %i.y, ptr %i.g, align 4
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

_ZN6icu_7813UnicodeString8truncateEi.exit:        ; preds = %bb.f, %bb.g, %bb.i, %bb.j
  %i.an = add nsw i32 %.0, 1                      ; 2 uses
  %.not8 = icmp sgt i32 %i.an, %2
  br i1 %.not8, label %bb.k, label %bb.c, !llvm.loop !20

bb.k:                                             ; preds = %_ZN6icu_7813UnicodeString8truncateEi.exit
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  ret void
}

declare noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEii(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @__cxa_pure_virtual() unnamed_addr

declare noundef signext i8 @_ZNK6icu_7813UnicodeString9doCompareEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReverseEii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3setEii(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet9removeAllERKS0_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #1

declare noundef i32 @_ZNK6icu_7810UnicodeSet13getRangeCountEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #1

declare noundef i32 @_ZNK6icu_7810UnicodeSet13getRangeStartEi(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK6icu_7810UnicodeSet11getRangeEndEi(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #1

declare noundef signext i8 @_ZNK6icu_7810UnicodeSet12containsNoneEii(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN6icu_7817CollationIterator5resetEv(ptr noundef nonnull align 8 dereferenceable(389)) local_unnamed_addr #1

declare void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{i64 2149117816}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
end_hunk_1
