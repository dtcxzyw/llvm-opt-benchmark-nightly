inline.NumInlined: 27
inline.NumDeleted: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.icu_78::UnicodeString" = type { %"class.icu_78::Replaceable", %"union.icu_78::UnicodeString::StackBufferOrFields" }
%"class.icu_78::Replaceable" = type { %"class.icu_78::UObject" }
%"class.icu_78::UObject" = type { ptr }
%"union.icu_78::UnicodeString::StackBufferOrFields" = type { %struct.anon.0, [32 x i8] }
%struct.anon.0 = type { i16, i32, i32, ptr }

@.str = private unnamed_addr constant [86 x i8] c"ubrk_swap(): data format %02x.%02x.%02x.%02x (format version %02x) is not recognized\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"ubrk_swap(): RBBI Data header is invalid.\0A\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"ubrk_swap(): too few bytes (%d after ICU Data header) for break data.\0A\00", align 1
@_ZTVN6icu_7813UnicodeStringE = external unnamed_addr constant { [13 x ptr] }, align 8

@_ZN6icu_7815RBBIDataWrapperC1EPKNS_14RBBIDataHeaderER10UErrorCode = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6icu_7815RBBIDataWrapperC2EPKNS_14RBBIDataHeaderER10UErrorCode
@_ZN6icu_7815RBBIDataWrapperC1EPKNS_14RBBIDataHeaderENS0_10EDontAdoptER10UErrorCode = dso_local unnamed_addr alias void (ptr, ptr, i32, ptr), ptr @_ZN6icu_7815RBBIDataWrapperC2EPKNS_14RBBIDataHeaderENS0_10EDontAdoptER10UErrorCode
@_ZN6icu_7815RBBIDataWrapperC1EP11UDataMemoryR10UErrorCode = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN6icu_7815RBBIDataWrapperC2EP11UDataMemoryR10UErrorCode
@_ZN6icu_7815RBBIDataWrapperD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN6icu_7815RBBIDataWrapperD2Ev

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7815RBBIDataWrapperC2EPKNS_14RBBIDataHeaderER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(137) initializes((0, 40), (48, 60), (64, 82)) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i16 2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.e, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(137) %0, i8 0, i64 40, i1 false)
  store atomic i32 0, ptr %i.a seq_cst, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 1, ptr %i.f, align 8
  tail call void @_ZN6icu_7815RBBIDataWrapper4initEPKNS_14RBBIDataHeaderER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(137) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN6icu_7815RBBIDataWrapper5init0Ev(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(137) initializes((0, 40), (48, 56), (64, 72)) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  store atomic i32 0, ptr %i.c seq_cst, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 1, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7815RBBIDataWrapper4initEPKNS_14RBBIDataHeaderER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(137) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8
  %i.c = load i32, ptr %1, align 4
  %.not17 = icmp eq i32 %i.c, 45472
  br i1 %.not17, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i8, ptr %i.d, align 1
  %.not = icmp eq i8 %i.e, 6
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 3, ptr %2, align 4
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.h = load i32, ptr %i.g, align 4
  %.not19 = icmp eq i32 %i.h, 0
  br i1 %.not19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i32, ptr %i.i, align 4
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.o = load i32, ptr %i.n, align 4
  %.not20 = icmp eq i32 %i.o, 0
  br i1 %.not20, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i32, ptr %i.p, align 4
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.s, ptr %i.t, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load i32, ptr %i.u, align 4
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = tail call ptr @ucptrie_openFromBinary_78(i32 noundef 0, i32 noundef -1, ptr noundef nonnull %i.x, i32 noundef %i.z, ptr noundef null, ptr noundef nonnull %2) #10 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = load i32, ptr %2, align 4
  %i.ad = icmp slt i32 %i.ac, 1
  br i1 %i.ad, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call i32 @ucptrie_getValueWidth_78(ptr noundef %i.aa) #10
  %i.af = and i32 %i.ae, -3
  %or.cond = icmp eq i32 %i.af, 0
  br i1 %or.cond, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 3, ptr %2, align 4
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ag = load ptr, ptr %0, align 8               ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ak, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 44
  %i.an = load i32, ptr %i.am, align 4
  call void @_ZN6icu_7813UnicodeString8fromUTF8ENS_11StringPieceE(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %3, ptr nonnull %i.ak, i32 %i.an) #10
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ap = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, ptr noundef nonnull align 8 dereferenceable(64) %3) #10 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.aq = load ptr, ptr %0, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.au, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = lshr i32 %i.ax, 2
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.ay, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 56
  store atomic i32 1, ptr %i.ba seq_cst, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.i, %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7815RBBIDataWrapperC2EPKNS_14RBBIDataHeaderENS0_10EDontAdoptER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(137) initializes((0, 40), (48, 60), (64, 82)) %0, ptr noundef %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i16 2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.e, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(137) %0, i8 0, i64 40, i1 false)
  store atomic i32 0, ptr %i.a seq_cst, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store i8 1, ptr %i.f, align 8
  tail call void @_ZN6icu_7815RBBIDataWrapper4initEPKNS_14RBBIDataHeaderER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(137) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3)
  store i8 1, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7815RBBIDataWrapperC2EP11UDataMemoryR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(137) initializes((0, 40), (48, 60), (64, 82)) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i16 2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr null, ptr %i.e, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(137) %0, i8 0, i64 40, i1 false)
  store atomic i32 0, ptr %i.a seq_cst, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 1, ptr %i.f, align 8
  %i.g = load i32, ptr %2, align 4
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 9 uses
  %i.k = load i16, ptr %i.j, align 2              ; 2 uses
  %i.l = icmp ugt i16 %i.k, 19
  br i1 %i.l, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load i8, ptr %i.m, align 2
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 9
  %i.q = load i8, ptr %i.p, align 1
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.t = load i8, ptr %i.s, align 2
  %i.u = icmp eq i8 %i.t, 66
  br i1 %i.u, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 13
  %i.w = load i8, ptr %i.v, align 1
  %i.x = icmp eq i8 %i.w, 114
  br i1 %i.x, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 14
  %i.z = load i8, ptr %i.y, align 2
  %i.aa = icmp eq i8 %i.z, 107
  br i1 %i.aa, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 15
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = icmp eq i8 %i.ac, 32
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.af = load i8, ptr %i.ae, align 1
  %.not = icmp eq i8 %i.af, 6
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  store i32 3, ptr %2, align 4
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ag = zext i16 %i.k to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ag
  tail call void @_ZN6icu_7815RBBIDataWrapper4initEPKNS_14RBBIDataHeaderER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(137) %0, ptr noundef nonnull %i.ah, ptr noundef nonnull align 4 dereferenceable(4) %2)
  store ptr %1, ptr %i.e, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZN6icu_7815RBBIDataWrapper23isDataVersionAcceptableEPKh(ptr noundef readonly captures(none) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = icmp eq i8 %i.a, 6
  %i.c = zext i1 %i.b to i8
  ret i8 %i.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @ucptrie_openFromBinary_78(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @ucptrie_getValueWidth_78(ptr noundef) local_unnamed_addr #4

declare void @_ZN6icu_7813UnicodeString8fromUTF8ENS_11StringPieceE(ptr dead_on_unwind writable sret(%"class.icu_78::UnicodeString") align 8, ptr, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7815RBBIDataWrapperD2Ev(ptr noundef nonnull align 8 dereferenceable(137) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @ucptrie_close_78(ptr noundef %i.b) #10
  store ptr null, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @udata_close_78(ptr noundef nonnull %i.d) #10
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load i8, ptr %i.e, align 8
  %.not1 = icmp eq i8 %i.f, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %0, align 8
  tail call void @uprv_free_78(ptr noundef %i.g) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.h) #10
  ret void
}

declare void @ucptrie_close_78(ptr noundef) local_unnamed_addr #4

declare void @udata_close_78(ptr noundef) local_unnamed_addr #4

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK6icu_7815RBBIDataWrappereqERKS0_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(137) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(137) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = load ptr, ptr %1, align 8                ; 3 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 4
  %.not = icmp eq i32 %i.e, %i.g
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = zext i32 %i.e to i64
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.a, ptr nonnull %i.b, i64 %i.h)
  %i.i = icmp eq i32 %bcmp, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ %i.i, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN6icu_7815RBBIDataWrapper8hashCodeEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(137) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.c = load i32, ptr %i.b, align 4
  ret i32 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7815RBBIDataWrapper15removeReferenceEv(ptr noundef nonnull align 8 dereferenceable(137) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = atomicrmw sub ptr %i.a, i32 1 seq_cst, align 4
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @ucptrie_close_78(ptr noundef %i.d) #10
  store ptr null, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @udata_close_78(ptr noundef nonnull %i.f) #10
  br label %_ZN6icu_7815RBBIDataWrapperD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load i8, ptr %i.g, align 8
  %.not1.i = icmp eq i8 %i.h, 0
  br i1 %.not1.i, label %bb.e, label %_ZN6icu_7815RBBIDataWrapperD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %0, align 8
  tail call void @uprv_free_78(ptr noundef %i.i) #10
  br label %_ZN6icu_7815RBBIDataWrapperD2Ev.exit

_ZN6icu_7815RBBIDataWrapperD2Ev.exit:             ; preds = %bb.c, %bb.d, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.j) #10
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #10
  br label %bb.f

bb.f:                                             ; preds = %_ZN6icu_7815RBBIDataWrapperD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef nonnull ptr @_ZN6icu_7815RBBIDataWrapper12addReferenceEv(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(137) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = atomicrmw add ptr %i.a, i32 1 seq_cst, align 4 ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7815RBBIDataWrapper19getRuleSourceStringEv(ptr noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(137) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN6icu_7815RBBIDataWrapper9printDataEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(137) %0) local_unnamed_addr #7 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @ubrk_swap_78(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %4, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.af

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %0, null
  %i.e = icmp eq ptr %1, null
  %or.cond = or i1 %i.d, %i.e
  %i.f = icmp slt i32 %2, -1
  %or.cond3 = or i1 %or.cond, %i.f
  br i1 %or.cond3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp sgt i32 %2, 0
  %i.h = icmp eq ptr %3, null
  %or.cond5 = and i1 %i.g, %i.h
  br i1 %or.cond5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %4, align 4
  br label %bb.af

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i8, ptr %i.i, align 2               ; 2 uses
  %i.k = icmp eq i8 %i.j, 66
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.m = load i8, ptr %i.l, align 1               ; 2 uses
  %i.n = icmp eq i8 %i.m, 114
  %or.cond203 = select i1 %i.k, i1 %i.n, i1 false
  br i1 %or.cond203, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.p = load i8, ptr %i.o, align 2
  %i.q = icmp eq i8 %i.p, 107
  br i1 %i.q, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.s = load i8, ptr %i.r, align 1
  %i.t = icmp eq i8 %i.s, 32
  br i1 %i.t, label %bb.i, label %._crit_edge

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i8, ptr %i.u, align 1
  %.not = icmp eq i8 %i.v, 6
  br i1 %.not, label %bb.j, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.i, %bb.h, %bb.g
  %i.w = phi i8 [ %i.m, %bb.f ], [ 114, %bb.i ], [ 114, %bb.h ], [ 114, %bb.g ]
  %i.x = zext i8 %i.j to i32
  %i.y = zext i8 %i.w to i32
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.aa = load i8, ptr %i.z, align 2
  %i.ab = zext i8 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load i8, ptr %i.af, align 2
  %i.ah = zext i8 %i.ag to i32
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef %i.x, i32 noundef %i.y, i32 noundef %i.ab, i32 noundef %i.ae, i32 noundef %i.ah) #10
  store i32 16, ptr %4, align 4
  br label %bb.af

bb.j:                                             ; preds = %bb.i
  %i.ai = tail call i32 @udata_swapDataHeader_78(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %4) #10 ; 2 uses
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %1, i64 %i.aj ; 19 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 18 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load i32, ptr %i.ak, align 4
  %i.ao = tail call noundef i32 %i.am(i32 noundef %i.an) #10
  %.not190 = icmp eq i32 %i.ao, 45472
  br i1 %.not190, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.aq = load i8, ptr %i.ap, align 1
  %.not195 = icmp eq i8 %i.aq, 6
  br i1 %.not195, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ar = load ptr, ptr %i.al, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4
  %i.au = tail call noundef i32 %i.ar(i32 noundef %i.at) #10
  %i.av = icmp ult i32 %i.au, 80
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef nonnull %0, ptr noundef nonnull @.str.1) #10
  store i32 16, ptr %4, align 4
  br label %bb.af

bb.n:                                             ; preds = %bb.l
  %i.aw = load ptr, ptr %i.al, align 8
  %i.ax = load i32, ptr %i.as, align 4
  %i.ay = tail call noundef i32 %i.aw(i32 noundef %i.ax) #10 ; 3 uses
  %i.az = add nsw i32 %i.ay, %i.ai                ; 3 uses
  %i.ba = icmp slt i32 %2, 0
  br i1 %i.ba, label %bb.af, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = icmp slt i32 %2, %i.az
  br i1 %i.bb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, i32 noundef %i.ay) #10
  store i32 8, ptr %4, align 4
  br label %bb.af

bb.q:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds i8, ptr %3, i64 %i.aj ; 8 uses
  %.not192 = icmp eq ptr %1, %3                   ; 4 uses
  br i1 %.not192, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = sext i32 %i.ay to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bc, i8 0, i64 %i.bd, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.be = load ptr, ptr %i.al, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = tail call noundef i32 %i.be(i32 noundef %i.bg) #10
  %i.bi = load ptr, ptr %i.al, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = tail call noundef i32 %i.bi(i32 noundef %i.bk) #10 ; 3 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bn = sext i32 %i.bh to i64                   ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.ak, i64 %i.bn ; 4 uses
  %i.bp = load ptr, ptr %i.al, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = tail call noundef i32 %i.bp(i32 noundef %i.br) #10
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds i8, ptr %i.bc, i64 %i.bn ; 3 uses
  %i.bw = tail call noundef i32 %i.bu(ptr noundef nonnull %0, ptr noundef nonnull %i.bo, i32 noundef 20, ptr noundef %i.bv, ptr noundef nonnull %4) #10 ; 0 uses
  %i.bx = and i32 %i.bs, 4
  %.not193 = icmp eq i32 %i.bx, 0
  br i1 %.not193, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %.not192, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 20
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 20
  %i.ca = add nsw i32 %i.bl, -20
  %i.cb = sext i32 %i.ca to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.by, ptr nonnull align 1 %i.bz, i64 %i.cb, i1 false)
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 20
  %i.cf = add nsw i32 %i.bl, -20
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 20
  %i.ch = tail call noundef i32 %i.cd(ptr noundef nonnull %0, ptr noundef nonnull %i.ce, i32 noundef %i.cf, ptr noundef nonnull %i.cg, ptr noundef nonnull %4) #10 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.s
  %i.ci = load ptr, ptr %i.al, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = tail call noundef i32 %i.ci(i32 noundef %i.ck) #10
  %i.cm = load ptr, ptr %i.al, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = tail call noundef i32 %i.cm(i32 noundef %i.co) #10 ; 3 uses
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.cr = sext i32 %i.cl to i64                   ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.ak, i64 %i.cr ; 4 uses
  %i.ct = load ptr, ptr %i.al, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = tail call noundef i32 %i.ct(i32 noundef %i.cv) #10
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds i8, ptr %i.bc, i64 %i.cr ; 3 uses
  %i.da = tail call noundef i32 %i.cy(ptr noundef nonnull %0, ptr noundef nonnull %i.cs, i32 noundef 20, ptr noundef %i.cz, ptr noundef nonnull %4) #10 ; 0 uses
  %i.db = and i32 %i.cw, 4
  %.not194 = icmp eq i32 %i.db, 0
  br i1 %.not194, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  br i1 %.not192, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 20
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cs, i64 20
  %i.de = add nsw i32 %i.cp, -20
  %i.df = sext i32 %i.de to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dc, ptr nonnull align 1 %i.dd, i64 %i.df, i1 false)
  br label %bb.ac

bb.ab:                                            ; preds = %bb.y
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.cs, i64 20
  %i.dj = add nsw i32 %i.cp, -20
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cz, i64 20
  %i.dl = tail call noundef i32 %i.dh(ptr noundef nonnull %0, ptr noundef nonnull %i.di, i32 noundef %i.dj, ptr noundef nonnull %i.dk, ptr noundef nonnull %4) #10 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.x
  %i.dm = load ptr, ptr %i.al, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4
  %i.dp = tail call noundef i32 %i.dm(i32 noundef %i.do) #10
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.dq
  %i.ds = load ptr, ptr %i.al, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = tail call noundef i32 %i.ds(i32 noundef %i.du) #10
  %i.dw = load ptr, ptr %i.al, align 8
  %i.dx = load i32, ptr %i.dn, align 4
  %i.dy = tail call noundef i32 %i.dw(i32 noundef %i.dx) #10
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.dz
  %i.eb = tail call i32 @ucptrie_swap_78(ptr noundef nonnull %0, ptr noundef nonnull %i.dr, i32 noundef %i.dv, ptr noundef %i.ea, ptr noundef nonnull %4) #10 ; 0 uses
  br i1 %.not192, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ec = load ptr, ptr %i.al, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ak, i64 40 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4
  %i.ef = tail call noundef i32 %i.ec(i32 noundef %i.ee) #10
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.eg
  %i.ei = load ptr, ptr %i.al, align 8
  %i.ej = load i32, ptr %i.ed, align 4
  %i.ek = tail call noundef i32 %i.ei(i32 noundef %i.ej) #10
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.el
  %i.en = load ptr, ptr %i.al, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ak, i64 44
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = tail call noundef i32 %i.en(i32 noundef %i.ep) #10
  %i.er = zext i32 %i.eq to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.eh, ptr nonnull align 1 %i.em, i64 %i.er, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = load ptr, ptr %i.al, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4
  %i.ex = tail call noundef i32 %i.eu(i32 noundef %i.ew) #10
  %i.ey = zext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ey
  %i.fa = load ptr, ptr %i.al, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ak, i64 52
  %i.fc = load i32, ptr %i.fb, align 4
  %i.fd = tail call noundef i32 %i.fa(i32 noundef %i.fc) #10
  %i.fe = load ptr, ptr %i.al, align 8
  %i.ff = load i32, ptr %i.ev, align 4
  %i.fg = tail call noundef i32 %i.fe(i32 noundef %i.ff) #10
  %i.fh = zext i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.fh
  %i.fj = tail call noundef i32 %i.et(ptr noundef nonnull %0, ptr noundef nonnull %i.ez, i32 noundef %i.fd, ptr noundef %i.fi, ptr noundef nonnull %4) #10 ; 0 uses
  %i.fk = load ptr, ptr %i.es, align 8
  %i.fl = tail call noundef i32 %i.fk(ptr noundef nonnull %0, ptr noundef nonnull %i.ak, i32 noundef 80, ptr noundef %i.bc, ptr noundef nonnull %4) #10 ; 0 uses
  %i.fm = load ptr, ptr %i.es, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bc, i64 4 ; 2 uses
  %i.fo = tail call noundef i32 %i.fm(ptr noundef nonnull %0, ptr noundef nonnull %i.fn, i32 noundef 4, ptr noundef nonnull %i.fn, ptr noundef nonnull %4) #10 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge, %bb.p, %bb.ae, %bb.n, %bb.m, %bb.a, %bb.b, %bb.e
  %.3 = phi i32 [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %._crit_edge ], [ 0, %bb.m ], [ %i.az, %bb.ae ], [ 0, %bb.p ], [ %i.az, %bb.n ]
  ret i32 %.3
}

declare void @udata_printError_78(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare i32 @udata_swapDataHeader_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare i32 @ucptrie_swap_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #9

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
end_hunk_0
