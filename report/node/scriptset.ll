inline.NumInlined: 57
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.icu_78::ScriptSet" = type { [7 x i32] }
%"class.icu_78::UnicodeString" = type { %"class.icu_78::Replaceable", %"union.icu_78::UnicodeString::StackBufferOrFields" }
%"class.icu_78::Replaceable" = type { %"class.icu_78::UObject" }
%"class.icu_78::UObject" = type { ptr }
%"union.icu_78::UnicodeString::StackBufferOrFields" = type { %struct.anon.0, [32 x i8] }
%struct.anon.0 = type { i16, i32, i32, ptr }
%"class.icu_78::MaybeStackArray" = type { ptr, i32, i8, [20 x i32] }

@_ZTVN6icu_7813UnicodeStringE = external unnamed_addr constant { [13 x ptr] }, align 8

@_ZN6icu_789ScriptSetC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN6icu_789ScriptSetC2Ev
@_ZN6icu_789ScriptSetD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN6icu_789ScriptSetD2Ev
@_ZN6icu_789ScriptSetC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN6icu_789ScriptSetC2ERKS0_

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6icu_789ScriptSetC2Ev(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(28) initializes((0, 28)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN6icu_789ScriptSetD2Ev(ptr nofree nonnull readnone align 4 captures(none) %0) unnamed_addr #2 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN6icu_789ScriptSetC2ERKS0_(ptr nofree noundef nonnull writeonly align 4 captures(address) dereferenceable(28) %0, ptr nofree noundef nonnull readonly align 4 captures(address) dereferenceable(28) %1) unnamed_addr #3 align 2 {
bb.a:
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZN6icu_789ScriptSetaSERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, ptr noundef nonnull readonly align 4 dereferenceable(28) %1, i64 28, i1 false)
  br label %_ZN6icu_789ScriptSetaSERKS0_.exit

_ZN6icu_789ScriptSetaSERKS0_.exit:                ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef nonnull align 4 dereferenceable(28) ptr @_ZN6icu_789ScriptSetaSERKS0_(ptr nofree noundef nonnull returned writeonly align 4 captures(address, ret: address, provenance) dereferenceable(28) %0, ptr nofree noundef nonnull readonly align 4 captures(address) dereferenceable(28) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, ptr noundef nonnull align 4 dereferenceable(28) %1, i64 28, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK6icu_789ScriptSeteqERKS0_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i128, ptr %0, align 4
  %i.b = load i128, ptr %1, align 4
  %i.c = xor i128 %i.a, %i.b
  %i.d = getelementptr i8, ptr %0, i64 12
  %i.e = getelementptr i8, ptr %1, i64 12
  %i.f = load i128, ptr %i.d, align 4
  %i.g = load i128, ptr %i.e, align 4
  %i.h = xor i128 %i.f, %i.g
  %i.i = or i128 %i.c, %i.h
  %i.j = icmp ne i128 %i.i, 0
  %i.k = zext i1 %i.j to i32
  %i.l = icmp eq i32 %i.k, 0
  ret i1 %i.l
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %0, i32 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %or.cond = icmp ugt i32 %1, 223
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %2, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = lshr i32 %1, 5
  %i.d = and i32 %1, 31
  %i.e = zext nneg i32 %i.c to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4
  %i.h = lshr i32 %i.g, %i.d
  %i.i = trunc i32 %i.h to i8
  %i.j = and i8 %i.i, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i8 [ %i.j, %bb.d ], [ 0, %bb.c ], [ 0, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef nonnull align 4 dereferenceable(28) ptr @_ZN6icu_789ScriptSet3setE11UScriptCodeR10UErrorCode(ptr nofree noundef nonnull returned align 4 captures(ret: address, provenance) dereferenceable(28) %0, i32 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %or.cond = icmp ugt i32 %1, 223
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %2, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = lshr i32 %1, 5
  %i.d = and i32 %1, 31
  %i.e = shl nuw i32 1, %i.d
  %i.f = zext nneg i32 %i.c to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f ; 2 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = or i32 %i.h, %i.e
  store i32 %i.i, ptr %i.g, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef nonnull align 4 dereferenceable(28) ptr @_ZN6icu_789ScriptSet5resetE11UScriptCodeR10UErrorCode(ptr nofree noundef nonnull returned align 4 captures(ret: address, provenance) dereferenceable(28) %0, i32 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %or.cond = icmp ugt i32 %1, 223
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %2, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = lshr i32 %1, 5
  %i.d = and i32 %1, 31
  %i.e = shl nuw i32 1, %i.d
  %i.f = xor i32 %i.e, -1
  %i.g = zext nneg i32 %i.c to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, %i.f
  store i32 %i.j, ptr %i.h, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef nonnull align 4 dereferenceable(28) ptr @_ZN6icu_789ScriptSet5UnionERKS0_(ptr nofree noundef nonnull returned align 4 captures(ret: address, provenance) dereferenceable(28) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = load i32, ptr %0, align 4
  %i.c = or i32 %i.b, %i.a
  store i32 %i.c, ptr %0, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = or i32 %i.g, %i.e
  store i32 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = or i32 %i.l, %i.j
  store i32 %i.m, ptr %i.k, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = load i32, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4
  %i.r = or i32 %i.q, %i.o
  store i32 %i.r, ptr %i.p, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i32, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = or i32 %i.v, %i.t
  store i32 %i.w, ptr %i.u, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.y = load i32, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = or i32 %i.aa, %i.y
  store i32 %i.ab, ptr %i.z, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = or i32 %i.af, %i.ad
  store i32 %i.ag, ptr %i.ae, align 4
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef nonnull align 4 dereferenceable(28) ptr @_ZN6icu_789ScriptSet9intersectERKS0_(ptr nofree noundef nonnull returned align 4 captures(ret: address, provenance) dereferenceable(28) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = load i32, ptr %0, align 4
  %i.c = and i32 %i.b, %i.a
  store i32 %i.c, ptr %0, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, %i.e
  store i32 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, %i.j
  store i32 %i.m, ptr %i.k, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = load i32, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4
  %i.r = and i32 %i.q, %i.o
  store i32 %i.r, ptr %i.p, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i32, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = and i32 %i.v, %i.t
  store i32 %i.w, ptr %i.u, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.y = load i32, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = and i32 %i.aa, %i.y
  store i32 %i.ab, ptr %i.z, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = and i32 %i.af, %i.ad
  store i32 %i.ag, ptr %i.ae, align 4
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef nonnull align 4 dereferenceable(28) ptr @_ZN6icu_789ScriptSet9intersectE11UScriptCodeR10UErrorCode(ptr nofree noundef nonnull returned align 4 captures(ret: address, provenance) dereferenceable(28) %0, i32 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.icu_78::ScriptSet", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %3, i8 0, i64 28, i1 false)
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_789ScriptSet3setE11UScriptCodeR10UErrorCode.exit.thread

bb.b:                                             ; preds = %bb.a
  %or.cond.i = icmp ugt i32 %1, 223
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %2, align 4
  br label %_ZN6icu_789ScriptSet3setE11UScriptCodeR10UErrorCode.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.c = lshr i32 %1, 5
  %i.d = and i32 %1, 31
  %i.e = shl nuw i32 1, %i.d
  %i.f = zext nneg i32 %i.c to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.f ; 2 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = or i32 %i.h, %i.e
  store i32 %i.i, ptr %i.g, align 4
  %i.j = load <4 x i32>, ptr %3, align 16
  %i.k = load <4 x i32>, ptr %0, align 4
  %i.l = and <4 x i32> %i.k, %i.j
  store <4 x i32> %i.l, ptr %0, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load <2 x i32>, ptr %i.m, align 16
  %i.p = load <2 x i32>, ptr %i.n, align 4
  %i.q = and <2 x i32> %i.p, %i.o
  store <2 x i32> %i.q, ptr %i.n, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.s = load i32, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4
  %i.v = and i32 %i.u, %i.s
  store i32 %i.v, ptr %i.t, align 4
  br label %_ZN6icu_789ScriptSet3setE11UScriptCodeR10UErrorCode.exit.thread

_ZN6icu_789ScriptSet3setE11UScriptCodeR10UErrorCode.exit.thread: ; preds = %bb.c, %bb.a, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZNK6icu_789ScriptSet10intersectsERKS0_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = load i32, ptr %1, align 4
  %i.c = and i32 %i.b, %i.a
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, %i.e
  %.not.1 = icmp eq i32 %i.h, 0
  br i1 %.not.1, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, %i.j
  %.not.2 = icmp eq i32 %i.m, 0
  br i1 %.not.2, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = load i32, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = load i32, ptr %i.p, align 4
  %i.r = and i32 %i.q, %i.o
  %.not.3 = icmp eq i32 %i.r, 0
  br i1 %.not.3, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i32, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i32, ptr %i.u, align 4
  %i.w = and i32 %i.v, %i.t
  %.not.4 = icmp eq i32 %i.w, 0
  br i1 %.not.4, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.y = load i32, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = and i32 %i.aa, %i.y
  %.not.5 = icmp eq i32 %i.ab, 0
  br i1 %.not.5, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = and i32 %i.af, %i.ad
  %.not.6 = icmp ne i32 %i.ag, 0
  %spec.select = zext i1 %.not.6 to i8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.ah = phi i8 [ 1, %bb.a ], [ 1, %bb.f ], [ 1, %bb.b ], [ %spec.select, %bb.g ], [ 1, %bb.c ], [ 1, %bb.e ], [ 1, %bb.d ]
  ret i8 %i.ah
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZNK6icu_789ScriptSet8containsERKS0_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <4 x i32>, ptr %0, align 4
  %i.c = load <4 x i32>, ptr %1, align 4          ; 2 uses
  %i.d = and <4 x i32> %i.c, %i.b
  %i.e = icmp eq <4 x i32> %i.d, %i.c
  %i.f = load <2 x i32>, ptr %.sroa.15.0..sroa_idx, align 4
  %i.g = load <2 x i32>, ptr %i.a, align 4        ; 2 uses
  %i.h = and <2 x i32> %i.g, %i.f
  %i.i = icmp eq <2 x i32> %i.h, %i.g
  %.fr15 = freeze <2 x i1> %i.i                   ; 2 uses
  %i.j = freeze <4 x i1> %i.e
  %i.k = bitcast <4 x i1> %i.j to i4
  %i.l = icmp eq i4 %i.k, -1
  %i.m = extractelement <2 x i1> %.fr15, i64 0
  %op.rdx = and i1 %i.l, %i.m
  %i.n = extractelement <2 x i1> %.fr15, i64 1
  %op.rdx14 = and i1 %op.rdx, %i.n
  br i1 %op.rdx14, label %bb.b, label %_ZNK6icu_789ScriptSeteqERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.21.0.copyload = load i32, ptr %.sroa.21.0..sroa_idx, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %i.q = and i32 %i.p, %.sroa.21.0.copyload
  %.not.6.i = icmp eq i32 %i.q, %i.p
  %i.r = zext i1 %.not.6.i to i8
  br label %_ZNK6icu_789ScriptSeteqERKS0_.exit

_ZNK6icu_789ScriptSeteqERKS0_.exit:               ; preds = %bb.a, %bb.b
  %.not.lcssa.i = phi i8 [ 0, %bb.a ], [ %i.r, %bb.b ]
  ret i8 %.not.lcssa.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef nonnull align 4 dereferenceable(28) ptr @_ZN6icu_789ScriptSet6setAllEv(ptr nofree noundef nonnull returned writeonly align 4 captures(ret: address, provenance) dereferenceable(28) initializes((0, 28)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, i8 -1, i64 28, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef nonnull align 4 dereferenceable(28) ptr @_ZN6icu_789ScriptSet8resetAllEv(ptr nofree noundef nonnull returned writeonly align 4 captures(ret: address, provenance) dereferenceable(28) initializes((0, 28)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK6icu_789ScriptSet12countMembersEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 2 uses
  %.not10 = icmp eq i32 %i.a, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.012 = phi i32 [ %i.d, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %.111 = phi i32 [ %i.b, %.lr.ph ], [ 0, %bb.a ]
  %i.b = add nuw nsw i32 %.111, 1                 ; 2 uses
  %i.c = add i32 %.012, -1
  %i.d = and i32 %i.c, %.012                      ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !5

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.1.lcssa = phi i32 [ 0, %bb.a ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %.not10.1 = icmp eq i32 %i.f, 0
  br i1 %.not10.1, label %._crit_edge.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %._crit_edge, %.lr.ph.1
  %.012.1 = phi i32 [ %i.i, %.lr.ph.1 ], [ %i.f, %._crit_edge ] ; 2 uses
  %.111.1 = phi i32 [ %i.g, %.lr.ph.1 ], [ %.1.lcssa, %._crit_edge ]
end_hunk_0
