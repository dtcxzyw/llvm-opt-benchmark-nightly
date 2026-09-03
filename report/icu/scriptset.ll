Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/scriptset?download=true
inline.NumInlined: 52
inline.NumDeleted: 20
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

$_ZN6icu_7815MaybeStackArrayI11UScriptCodeLi20EED2Ev = comdat any

$__clang_call_terminate = comdat any

@_ZTVN6icu_7813UnicodeStringE = external constant { [13 x ptr] }, align 8

@_ZN6icu_789ScriptSetC1Ev = unnamed_addr alias void (ptr), ptr @_ZN6icu_789ScriptSetC2Ev
@_ZN6icu_789ScriptSetD1Ev = unnamed_addr alias void (ptr), ptr @_ZN6icu_789ScriptSetD2Ev
@_ZN6icu_789ScriptSetC1ERKS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN6icu_789ScriptSetC2ERKS0_

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6icu_789ScriptSetC2Ev(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(28) initializes((0, 28)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN6icu_789ScriptSetD2Ev(ptr nofree nonnull readnone align 4 captures(none) dead_on_return(28) %0) unnamed_addr #2 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6icu_789ScriptSetC2ERKS0_(ptr nofree noundef nonnull writeonly align 4 captures(address) dereferenceable(28) %0, ptr nofree noundef nonnull readonly align 4 captures(address) dereferenceable(28) %1) unnamed_addr #3 align 2 {
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
define noundef nonnull align 4 dereferenceable(28) ptr @_ZN6icu_789ScriptSetaSERKS0_(ptr nofree noundef nonnull returned writeonly align 4 captures(address, ret: address, provenance) dereferenceable(28) %0, ptr nofree noundef nonnull readonly align 4 captures(address) dereferenceable(28) %1) local_unnamed_addr #3 align 2 {
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
define noundef zeroext i1 @_ZNK6icu_789ScriptSeteqERKS0_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %1) local_unnamed_addr #5 align 2 {
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
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %0, i32 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !11
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %or.cond = icmp ugt i32 %1, 223
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %2, align 4, !tbaa !11
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = lshr i32 %1, 5
  %i.d = and i32 %1, 31
  %i.e = zext nneg i32 %i.c to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !12
  %i.h = lshr i32 %i.g, %i.d
  %i.i = trunc i32 %i.h to i8
  %i.j = and i8 %i.i, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i8 [ %i.j, %bb.d ], [ 0, %bb.c ], [ 0, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 4 dereferenceable(28) ptr @_ZN6icu_789ScriptSet3setE11UScriptCodeR10UErrorCode(ptr nofree noundef nonnull returned align 4 captures(ret: address, provenance) dereferenceable(28) %0, i32 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !11
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %or.cond = icmp ugt i32 %1, 223
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %2, align 4, !tbaa !11
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = lshr i32 %1, 5
  %i.d = and i32 %1, 31
  %i.e = shl nuw i32 1, %i.d
  %i.f = zext nneg i32 %i.c to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !12
  %i.i = or i32 %i.h, %i.e
  store i32 %i.i, ptr %i.g, align 4, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 4 dereferenceable(28) ptr @_ZN6icu_789ScriptSet5resetE11UScriptCodeR10UErrorCode(ptr nofree noundef nonnull returned align 4 captures(ret: address, provenance) dereferenceable(28) %0, i32 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !11
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %or.cond = icmp ugt i32 %1, 223
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %2, align 4, !tbaa !11
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = lshr i32 %1, 5
  %i.d = and i32 %1, 31
  %i.e = shl nuw i32 1, %i.d
  %i.f = xor i32 %i.e, -1
  %i.g = zext nneg i32 %i.c to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !12
  %i.j = and i32 %i.i, %i.f
  store i32 %i.j, ptr %i.h, align 4, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 4 dereferenceable(28) ptr @_ZN6icu_789ScriptSet5UnionERKS0_(ptr nofree noundef nonnull returned align 4 captures(ret: address, provenance) dereferenceable(28) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = add nuw i64 %i.b, 28
  %i.d = add nuw i64 %i.a, 28
  %rt.bound0 = icmp ugt i64 %i.c, %i.a
  %rt.bound1 = icmp ugt i64 %i.d, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %.rtscalar, label %.rtvec

.rtvec:                                           ; preds = %bb.a
  %i.e = load <4 x i32>, ptr %1, align 4, !tbaa !12
  %i.f = load <4 x i32>, ptr %0, align 4, !tbaa !12
  %i.g = or <4 x i32> %i.f, %i.e
  store <4 x i32> %i.g, ptr %0, align 4, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load <2 x i32>, ptr %i.h, align 4, !tbaa !12
  %i.k = load <2 x i32>, ptr %i.i, align 4, !tbaa !12
  %i.l = or <2 x i32> %i.k, %i.j
  store <2 x i32> %i.l, ptr %i.i, align 4, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i32, ptr %i.m, align 4, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !12
  %i.q = or i32 %i.p, %i.n
  store i32 %i.q, ptr %i.o, align 4, !tbaa !12
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.r = load i32, ptr %1, align 4, !tbaa !12
  %i.s = load i32, ptr %0, align 4, !tbaa !12
  %i.t = or i32 %i.s, %i.r
  store i32 %i.t, ptr %0, align 4, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !12
  %i.y = or i32 %i.x, %i.v
  store i32 %i.y, ptr %i.w, align 4, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !12
  %i.ad = or i32 %i.ac, %i.aa
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !12
  %i.ai = or i32 %i.ah, %i.af
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !12
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !12
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !12
  %i.an = or i32 %i.am, %i.ak
  store i32 %i.an, ptr %i.al, align 4, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !12
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !12
  %i.as = or i32 %i.ar, %i.ap
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !12
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.au = load i32, ptr %i.at, align 4, !tbaa !12
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !12
  %i.ax = or i32 %i.aw, %i.au
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !12
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef nonnull align 4 dereferenceable(28) ptr @_ZN6icu_789ScriptSet9intersectERKS0_(ptr nofree noundef nonnull returned align 4 captures(ret: address, provenance) dereferenceable(28) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = add nuw i64 %i.b, 28
  %i.d = add nuw i64 %i.a, 28
  %rt.bound0 = icmp ugt i64 %i.c, %i.a
  %rt.bound1 = icmp ugt i64 %i.d, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %.rtscalar, label %.rtvec

.rtvec:                                           ; preds = %bb.a
  %i.e = load <4 x i32>, ptr %1, align 4, !tbaa !12
  %i.f = load <4 x i32>, ptr %0, align 4, !tbaa !12
  %i.g = and <4 x i32> %i.f, %i.e
  store <4 x i32> %i.g, ptr %0, align 4, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load <2 x i32>, ptr %i.h, align 4, !tbaa !12
  %i.k = load <2 x i32>, ptr %i.i, align 4, !tbaa !12
  %i.l = and <2 x i32> %i.k, %i.j
  store <2 x i32> %i.l, ptr %i.i, align 4, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i32, ptr %i.m, align 4, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !12
  %i.q = and i32 %i.p, %i.n
  store i32 %i.q, ptr %i.o, align 4, !tbaa !12
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.r = load i32, ptr %1, align 4, !tbaa !12
  %i.s = load i32, ptr %0, align 4, !tbaa !12
  %i.t = and i32 %i.s, %i.r
  store i32 %i.t, ptr %0, align 4, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !12
  %i.y = and i32 %i.x, %i.v
  store i32 %i.y, ptr %i.w, align 4, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !12
  %i.ad = and i32 %i.ac, %i.aa
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !12
  %i.ai = and i32 %i.ah, %i.af
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !12
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !12
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !12
  %i.an = and i32 %i.am, %i.ak
  store i32 %i.an, ptr %i.al, align 4, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !12
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !12
  %i.as = and i32 %i.ar, %i.ap
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !12
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.au = load i32, ptr %i.at, align 4, !tbaa !12
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !12
  %i.ax = and i32 %i.aw, %i.au
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !12
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 4 dereferenceable(28) ptr @_ZN6icu_789ScriptSet9intersectE11UScriptCodeR10UErrorCode(ptr nofree noundef nonnull returned align 4 captures(ret: address, provenance) dereferenceable(28) %0, i32 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::ScriptSet", align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @_ZN6icu_789ScriptSetC1Ev(ptr noundef nonnull align 4 dereferenceable(28) %3)
  %i.a = load i32, ptr %2, align 4, !tbaa !11
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_789ScriptSet3setE11UScriptCodeR10UErrorCode.exit.thread

bb.b:                                             ; preds = %bb.a
  %or.cond.i = icmp ugt i32 %1, 223
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %2, align 4, !tbaa !11
  br label %_ZN6icu_789ScriptSet3setE11UScriptCodeR10UErrorCode.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.c = lshr i32 %1, 5
  %i.d = and i32 %1, 31
  %i.e = shl nuw i32 1, %i.d
  %i.f = zext nneg i32 %i.c to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.f ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !12
  %i.i = or i32 %i.h, %i.e
  store i32 %i.i, ptr %i.g, align 4, !tbaa !12
  %i.j = load <4 x i32>, ptr %3, align 16, !tbaa !12
  %i.k = load <4 x i32>, ptr %0, align 4, !tbaa !12
  %i.l = and <4 x i32> %i.k, %i.j
  store <4 x i32> %i.l, ptr %0, align 4, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load <2 x i32>, ptr %i.m, align 16, !tbaa !12
  %i.p = load <2 x i32>, ptr %i.n, align 4, !tbaa !12
  %i.q = and <2 x i32> %i.p, %i.o
  store <2 x i32> %i.q, ptr %i.n, align 4, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !12
  %i.v = and i32 %i.u, %i.s
  store i32 %i.v, ptr %i.t, align 4, !tbaa !12
  br label %_ZN6icu_789ScriptSet3setE11UScriptCodeR10UErrorCode.exit.thread

_ZN6icu_789ScriptSet3setE11UScriptCodeR10UErrorCode.exit.thread: ; preds = %bb.a, %bb.c, %bb.d
  call void @_ZN6icu_789ScriptSetD1Ev(ptr noundef nonnull align 4 dead_on_return(28) dereferenceable(28) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret ptr %0
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_789ScriptSet10intersectsERKS0_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !12
  %i.b = load i32, ptr %1, align 4, !tbaa !12
  %i.c = and i32 %i.b, %i.a
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !12
  %i.h = and i32 %i.g, %i.e
  %.not.1 = icmp eq i32 %i.h, 0
  br i1 %.not.1, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !12
  %i.m = and i32 %i.l, %i.j
  %.not.2 = icmp eq i32 %i.m, 0
  br i1 %.not.2, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !12
  %i.r = and i32 %i.q, %i.o
  %.not.3 = icmp eq i32 %i.r, 0
  br i1 %.not.3, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i32, ptr %i.s, align 4, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i32, ptr %i.u, align 4, !tbaa !12
  %i.w = and i32 %i.v, %i.t
  %.not.4 = icmp eq i32 %i.w, 0
  br i1 %.not.4, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !12
  %i.ab = and i32 %i.aa, %i.y
  %.not.5 = icmp eq i32 %i.ab, 0
  br i1 %.not.5, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !12
  %i.ag = and i32 %i.af, %i.ad
  %.not.6 = icmp ne i32 %i.ag, 0
  %spec.select = zext i1 %.not.6 to i8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.ah = phi i8 [ 1, %bb.a ], [ 1, %bb.f ], [ 1, %bb.b ], [ %spec.select, %bb.g ], [ 1, %bb.c ], [ 1, %bb.e ], [ 1, %bb.d ]
  ret i8 %i.ah
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_789ScriptSet8containsERKS0_(ptr noundef nonnull align 4 dereferenceable(28) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %1) local_unnamed_addr #6 align 2 {
_ZNK6icu_789ScriptSeteqERKS0_.exit:
  %2 = alloca %"class.icu_78::ScriptSet", align 16 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @_ZN6icu_789ScriptSetC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(28) %2, ptr noundef nonnull align 4 dereferenceable(28) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 4, !tbaa !12   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK6icu_789ScriptSet12countMembersEv:bb.a
  %i.k = load i32, ptr %i.j, align 4, !tbaa !12   ; 2 uses
  %.not10.2 = icmp eq i32 %i.k, 0
  br i1 %.not10.2, label %._crit_edge.2, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %._crit_edge.1, %.lr.ph.2
  %.012.2 = phi i32 [ %i.n, %.lr.ph.2 ], [ %i.k, %._crit_edge.1 ] ; 2 uses
  %.111.2 = phi i32 [ %i.l, %.lr.ph.2 ], [ %.1.lcssa.1, %._crit_edge.1 ]
  %i.l = add nsw i32 %.111.2, 1                   ; 2 uses
  %i.m = add i32 %.012.2, -1
  %i.n = and i32 %i.m, %.012.2                    ; 2 uses
  %.not.2 = icmp eq i32 %i.n, 0
  br i1 %.not.2, label %._crit_edge.2, label %.lr.ph.2, !llvm.loop !0

._crit_edge.2:                                    ; preds = %.lr.ph.2, %._crit_edge.1
  %.1.lcssa.2 = phi i32 [ %.1.lcssa.1, %._crit_edge.1 ], [ %i.l, %.lr.ph.2 ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !12   ; 2 uses
  %.not10.3 = icmp eq i32 %i.p, 0
  br i1 %.not10.3, label %._crit_edge.3, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %._crit_edge.2, %.lr.ph.3
  %.012.3 = phi i32 [ %i.s, %.lr.ph.3 ], [ %i.p, %._crit_edge.2 ] ; 2 uses
  %.111.3 = phi i32 [ %i.q, %.lr.ph.3 ], [ %.1.lcssa.2, %._crit_edge.2 ]
  %i.q = add nsw i32 %.111.3, 1                   ; 2 uses
  %i.r = add i32 %.012.3, -1
  %i.s = and i32 %i.r, %.012.3                    ; 2 uses
  %.not.3 = icmp eq i32 %i.s, 0
  br i1 %.not.3, label %._crit_edge.3, label %.lr.ph.3, !llvm.loop !0

._crit_edge.3:                                    ; preds = %.lr.ph.3, %._crit_edge.2
  %.1.lcssa.3 = phi i32 [ %.1.lcssa.2, %._crit_edge.2 ], [ %i.q, %.lr.ph.3 ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i32, ptr %i.t, align 4, !tbaa !12   ; 2 uses
  %.not10.4 = icmp eq i32 %i.u, 0
  br i1 %.not10.4, label %._crit_edge.4, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %._crit_edge.3, %.lr.ph.4
  %.012.4 = phi i32 [ %i.x, %.lr.ph.4 ], [ %i.u, %._crit_edge.3 ] ; 2 uses
  %.111.4 = phi i32 [ %i.v, %.lr.ph.4 ], [ %.1.lcssa.3, %._crit_edge.3 ]
  %i.v = add nsw i32 %.111.4, 1                   ; 2 uses
  %i.w = add i32 %.012.4, -1
  %i.x = and i32 %i.w, %.012.4                    ; 2 uses
  %.not.4 = icmp eq i32 %i.x, 0
  br i1 %.not.4, label %._crit_edge.4, label %.lr.ph.4, !llvm.loop !0

._crit_edge.4:                                    ; preds = %.lr.ph.4, %._crit_edge.3
  %.1.lcssa.4 = phi i32 [ %.1.lcssa.3, %._crit_edge.3 ], [ %i.v, %.lr.ph.4 ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.z = load i32, ptr %i.y, align 4, !tbaa !12   ; 2 uses
  %.not10.5 = icmp eq i32 %i.z, 0
  br i1 %.not10.5, label %._crit_edge.5, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %._crit_edge.4, %.lr.ph.5
  %.012.5 = phi i32 [ %i.ac, %.lr.ph.5 ], [ %i.z, %._crit_edge.4 ] ; 2 uses
  %.111.5 = phi i32 [ %i.aa, %.lr.ph.5 ], [ %.1.lcssa.4, %._crit_edge.4 ]
  %i.aa = add nsw i32 %.111.5, 1                  ; 2 uses
  %i.ab = add i32 %.012.5, -1
  %i.ac = and i32 %i.ab, %.012.5                  ; 2 uses
  %.not.5 = icmp eq i32 %i.ac, 0
  br i1 %.not.5, label %._crit_edge.5, label %.lr.ph.5, !llvm.loop !0

._crit_edge.5:                                    ; preds = %.lr.ph.5, %._crit_edge.4
  %.1.lcssa.5 = phi i32 [ %.1.lcssa.4, %._crit_edge.4 ], [ %i.aa, %.lr.ph.5 ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !12 ; 2 uses
  %.not10.6 = icmp eq i32 %i.ae, 0
  br i1 %.not10.6, label %._crit_edge.6, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %._crit_edge.5, %.lr.ph.6
  %.012.6 = phi i32 [ %i.ah, %.lr.ph.6 ], [ %i.ae, %._crit_edge.5 ] ; 2 uses
  %.111.6 = phi i32 [ %i.af, %.lr.ph.6 ], [ %.1.lcssa.5, %._crit_edge.5 ]
  %i.af = add nsw i32 %.111.6, 1                  ; 2 uses
  %i.ag = add i32 %.012.6, -1
  %i.ah = and i32 %i.ag, %.012.6                  ; 2 uses
  %.not.6 = icmp eq i32 %i.ah, 0
  br i1 %.not.6, label %._crit_edge.6, label %.lr.ph.6, !llvm.loop !0

._crit_edge.6:                                    ; preds = %.lr.ph.6, %._crit_edge.5
  %.1.lcssa.6 = phi i32 [ %.1.lcssa.5, %._crit_edge.5 ], [ %i.af, %.lr.ph.6 ]
  ret i32 %.1.lcssa.6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK6icu_789ScriptSet8hashCodeEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load <4 x i32>, ptr %0, align 4, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 4, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 4, !tbaa !12
  %i.h = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %i.a)
  %op.rdx = xor i32 %i.h, %i.c
  %op.rdx9 = xor i32 %i.e, %i.g
  %op.rdx10 = xor i32 %op.rdx, %op.rdx9
  ret i32 %op.rdx10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 -1, 224) i32 @_ZNK6icu_789ScriptSet10nextSetBitEi(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %or.cond = icmp ugt i32 %1, 223
  br i1 %or.cond, label %.loopexit, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit: ; preds = %bb.a, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread
  %.0816 = phi i32 [ %i.h, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread ], [ %1, %bb.a ] ; 4 uses
  %i.a = lshr i32 %.0816, 5
  %i.b = and i32 %.0816, 31
  %i.c = zext nneg i32 %i.a to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !12
  %i.f = shl nuw i32 1, %i.b
  %i.g = and i32 %i.e, %i.f
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread, label %.loopexit

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread: ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit
  %i.h = add nuw nsw i32 %.0816, 1                ; 2 uses
  %exitcond = icmp eq i32 %i.h, 224
  br i1 %exitcond, label %.loopexit, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit, !llvm.loop !1

.loopexit:                                        ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread, %bb.a
  %.2 = phi i32 [ -1, %bb.a ], [ %.0816, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit ], [ -1, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_789ScriptSet7isEmptyEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load <4 x i32>, ptr %0, align 4
  %.fr = freeze <4 x i32> %i.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 4
  %.fr24 = freeze i32 %i.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4
  %.fr23 = freeze i32 %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 4
  %.not.6 = icmp eq i32 %i.g, 0
  %i.h = icmp ne <4 x i32> %.fr, zeroinitializer
  %i.i = bitcast <4 x i1> %i.h to i4
  %i.j = icmp eq i4 %i.i, 0
  %i.k = or i32 %.fr23, %.fr24
  %i.l = icmp eq i32 %i.k, 0
  %i.m = and i1 %i.j, %i.l
  %op.rdx22 = select i1 %i.m, i1 %.not.6, i1 false
  %i.n = zext i1 %op.rdx22 to i8
  ret i8 %i.n
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_789ScriptSet14displayScriptsERNS_13UnicodeStringE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %0, ptr noundef nonnull returned align 8 dereferenceable(64) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %2 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  br label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i: ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i.1, %bb.a
  %.0816.i = phi i32 [ 0, %bb.a ], [ %i.m, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i.1 ] ; 5 uses
  %i.b = lshr i32 %.0816.i, 5
  %i.c = and i32 %.0816.i, 30
  %i.d = zext nneg i32 %i.b to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !12   ; 2 uses
  %i.g = shl nuw nsw i32 1, %i.c
  %i.h = and i32 %i.g, %i.f
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i, label %.lr.ph

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i: ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i
  %i.i = or disjoint i32 %.0816.i, 1              ; 2 uses
  %i.j = and i32 %i.i, 31
  %i.k = shl nuw i32 1, %i.j
  %i.l = and i32 %i.k, %i.f
  %.not.i.1 = icmp eq i32 %i.l, 0
  br i1 %.not.i.1, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i.1, label %.lr.ph

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i.1: ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i
  %i.m = add nuw nsw i32 %.0816.i, 2              ; 2 uses
  %exitcond.i.1 = icmp eq i32 %i.m, 224
  br i1 %exitcond.i.1, label %._crit_edge, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i, !llvm.loop !1

.lr.ph:                                           ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i
  %.0816.i.lcssa = phi i32 [ %.0816.i, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i ], [ %i.i, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12
  br label %_ZNK6icu_789ScriptSet10nextSetBitEi.exit17

._crit_edge:                                      ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i.1, %_ZN6icu_7813UnicodeString6appendERKS0_.exit, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i15
  ret ptr %1

_ZNK6icu_789ScriptSet10nextSetBitEi.exit17:       ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i11, %.lr.ph
  %.not19 = phi i1 [ false, %.lr.ph ], [ true, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i11 ]
  %.01018 = phi i32 [ %.0816.i.lcssa, %.lr.ph ], [ %.0816.i12, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i11 ] ; 3 uses
  br i1 %.not19, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK6icu_789ScriptSet10nextSetBitEi.exit17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 32, ptr %i.a, align 2, !tbaa !20
  %i.p = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK6icu_789ScriptSet10nextSetBitEi.exit17
  %i.q = call ptr @uscript_getShortName_78(i32 noundef %.01018)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef %i.q, i32 noundef -1, i32 noundef 0)
  %i.r = load i16, ptr %i.n, align 8, !tbaa !14   ; 2 uses
  %i.s = icmp slt i16 %i.r, 0
  %i.t = ashr i16 %i.r, 5
  %i.u = sext i16 %i.t to i32
  %i.v = load i32, ptr %i.o, align 4
  %i.w = select i1 %i.s, i32 %i.v, i32 %i.u
  %i.x = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 0, i32 noundef %i.w)
          to label %_ZN6icu_7813UnicodeString6appendERKS0_.exit unwind label %bb.d ; 0 uses

_ZN6icu_7813UnicodeString6appendERKS0_.exit:      ; preds = %bb.c
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %or.cond.i = icmp ugt i32 %.01018, 222
  br i1 %or.cond.i, label %._crit_edge, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i11.preheader

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i11.preheader: ; preds = %_ZN6icu_7813UnicodeString6appendERKS0_.exit
  %i.y = add nuw nsw i32 %.01018, 1
  br label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i11

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i11: ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i11.preheader, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i15
  %.0816.i12 = phi i32 [ %i.ag, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i15 ], [ %i.y, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i11.preheader ] ; 4 uses
  %i.z = lshr i32 %.0816.i12, 5
  %i.aa = and i32 %.0816.i12, 31
  %i.ab = zext nneg i32 %i.z to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !12
  %i.ae = shl nuw i32 1, %i.aa
  %i.af = and i32 %i.ae, %i.ad
  %.not.i13 = icmp eq i32 %i.af, 0
  br i1 %.not.i13, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i15, label %_ZNK6icu_789ScriptSet10nextSetBitEi.exit17

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i15: ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i11
  %i.ag = add nuw nsw i32 %.0816.i12, 1           ; 2 uses
  %exitcond.i16 = icmp eq i32 %i.ag, 224
  br i1 %exitcond.i16, label %._crit_edge, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i11, !llvm.loop !1

bb.d:                                             ; preds = %bb.c
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  resume { ptr, i32 } %i.ah
}

declare ptr @uscript_getShortName_78(i32 noundef) local_unnamed_addr #7

declare void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define noundef nonnull align 4 dereferenceable(28) ptr @_ZN6icu_789ScriptSet12parseScriptsERKNS_13UnicodeStringER10UErrorCode(ptr nofree noundef nonnull returned align 4 captures(ret: address, provenance) dereferenceable(28) initializes((0, 28)) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  %i.a = alloca [40 x i8], align 16               ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  %i.b = load i32, ptr %2, align 4, !tbaa !11
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %3, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i16 2, ptr %i.d, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.g = load i16, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.h = icmp slt i16 %i.g, 0
  %i.i = ashr i16 %i.g, 5
  %i.j = sext i16 %i.i to i32
  %i.k = load i32, ptr %i.f, align 4
  %i.l = select i1 %i.h, i32 %i.k, i32 %i.j
  %.not3946 = icmp sgt i32 %i.l, 0
  br i1 %.not3946, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 39
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.s
  %.02947 = phi i32 [ 0, %.lr.ph ], [ %i.p, %bb.s ] ; 2 uses
  %i.o = invoke noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.02947)
          to label %bb.d unwind label %bb.i       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.p = invoke noundef i32 @_ZNK6icu_7813UnicodeString11moveIndex32Eii(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.02947, i32 noundef 1)
          to label %bb.e unwind label %bb.i       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.q = invoke signext i8 @u_isUWhiteSpace_78(i32 noundef %i.o)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %.not34 = icmp eq i8 %i.q, 0
  br i1 %.not34, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.r = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %i.o)
          to label %bb.h unwind label %bb.i       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.s = load i16, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.t = icmp slt i16 %i.s, 0
  %i.u = ashr i16 %i.s, 5
  %i.v = sext i16 %i.u to i32
  %i.w = load i32, ptr %i.f, align 4
  %i.x = select i1 %i.t, i32 %i.w, i32 %i.v
  %i.y = icmp slt i32 %i.p, %i.x
  br i1 %i.y, label %bb.s, label %bb.j, !llvm.loop !21

bb.i:                                             ; preds = %bb.g, %bb.e, %bb.d, %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.j:                                             ; preds = %bb.f, %bb.h
  %i.aa = load i16, ptr %i.d, align 8, !tbaa !14  ; 2 uses
  %i.ab = icmp slt i16 %i.aa, 0
  %i.ac = ashr i16 %i.aa, 5
  %i.ad = sext i16 %i.ac to i32
  %i.ae = load i32, ptr %i.m, align 4
  %i.af = select i1 %i.ab, i32 %i.ae, i32 %i.ad   ; 2 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.ah = invoke noundef i32 @_ZNK6icu_7813UnicodeString7extractEiiPciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0, i32 noundef %i.af, ptr noundef nonnull %i.a, i32 noundef 39, i32 noundef 0)
          to label %bb.l unwind label %bb.n       ; 0 uses

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr %i.n, align 1, !tbaa !14
  %i.ai = invoke i32 @u_getPropertyValueEnum_78(i32 noundef 4106, ptr noundef nonnull %i.a)
          to label %bb.m unwind label %bb.o       ; 4 uses

bb.m:                                             ; preds = %bb.l
  %i.aj = icmp eq i32 %i.ai, -1
  br i1 %i.aj, label %.thread.sink.split, label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  %i.am = load i32, ptr %2, align 4, !tbaa !11
  %i.an = icmp slt i32 %i.am, 1
  br i1 %i.an, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %or.cond.i = icmp ugt i32 %i.ai, 223
  br i1 %or.cond.i, label %.thread.sink.split, label %select.unfold

.thread.sink.split:                               ; preds = %bb.q, %bb.m
  store i32 1, ptr %2, align 4, !tbaa !11
  br label %.thread

.thread:                                          ; preds = %bb.p, %.thread.sink.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.loopexit

bb.r:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.al, %bb.o ], [ %i.ak, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.t

select.unfold:                                    ; preds = %bb.q
  %i.ao = lshr i32 %i.ai, 5
  %i.ap = and i32 %i.ai, 31
  %i.aq = shl nuw i32 1, %i.ap
  %i.ar = zext nneg i32 %i.ao to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ar ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !12
  %i.au = or i32 %i.at, %i.aq
  store i32 %i.au, ptr %i.as, align 4, !tbaa !12
  %i.av = load i16, ptr %i.d, align 8, !tbaa !14  ; 2 uses
  %i.aw = and i16 %i.av, 1
  %.not.i = icmp eq i16 %i.aw, 0
  %i.ax = and i16 %i.av, 30
  %storemerge.i = select i1 %.not.i, i16 %i.ax, i16 2
  store i16 %storemerge.i, ptr %i.d, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.s

bb.s:                                             ; preds = %select.unfold, %bb.j, %bb.h
  %i.ay = load i16, ptr %i.e, align 8, !tbaa !14  ; 2 uses
  %i.az = icmp slt i16 %i.ay, 0
  %i.ba = ashr i16 %i.ay, 5
  %i.bb = sext i16 %i.ba to i32
  %i.bc = load i32, ptr %i.f, align 4
  %i.bd = select i1 %i.az, i32 %i.bc, i32 %i.bb
  %.not39 = icmp slt i32 %i.p, %i.bd
  br i1 %.not39, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %bb.s, %bb.b, %.thread
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.u

bb.t:                                             ; preds = %bb.i, %bb.r
  %.pn.pn.pn = phi { ptr, i32 } [ %i.z, %bb.i ], [ %.pn, %bb.r ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  resume { ptr, i32 } %.pn.pn.pn

bb.u:                                             ; preds = %bb.a, %.loopexit
  ret ptr %0
}

declare noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #7

declare noundef i32 @_ZNK6icu_7813UnicodeString11moveIndex32Eii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #7

declare signext i8 @u_isUWhiteSpace_78(i32 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #7

declare noundef i32 @_ZNK6icu_7813UnicodeString7extractEiiPciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare i32 @u_getPropertyValueEnum_78(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_789ScriptSet19setScriptExtensionsEiR10UErrorCode(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(28) %0, i32 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::MaybeStackArray", align 8 ; 12 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = load i32, ptr %2, align 4, !tbaa !11
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 20, ptr %i.e, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 4 uses
  store i8 0, ptr %i.f, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  br label %bb.c

bb.c:                                             ; preds = %_ZN6icu_7815MaybeStackArrayI11UScriptCodeLi20EE6resizeEii.exit, %bb.b
  %i.g = phi i32 [ %i.i, %_ZN6icu_7815MaybeStackArrayI11UScriptCodeLi20EE6resizeEii.exit ], [ 20, %bb.b ]
  %i.h = phi ptr [ %i.o, %_ZN6icu_7815MaybeStackArrayI11UScriptCodeLi20EE6resizeEii.exit ], [ %i.d, %bb.b ]
  store i32 0, ptr %i.a, align 4, !tbaa !11
  %i.i = invoke i32 @uscript_getScriptExtensions_78(i32 noundef %1, ptr noundef nonnull %i.h, i32 noundef %i.g, ptr noundef nonnull %i.a)
          to label %bb.d unwind label %bb.i       ; 6 uses

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.a, align 4, !tbaa !11   ; 3 uses
  %i.k = icmp eq i32 %i.j, 15
  br i1 %i.k, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.l = icmp sgt i32 %i.i, 0
  br i1 %i.l, label %bb.f, label %.loopexit.sink.split

bb.f:                                             ; preds = %bb.e
  %i.m = zext nneg i32 %i.i to i64
  %i.n = shl nuw nsw i64 %i.m, 2
  %i.o = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.n) #15
          to label %.noexc unwind label %bb.i     ; 3 uses

.noexc:                                           ; preds = %bb.f
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %.loopexit.sink.split, label %bb.g

bb.g:                                             ; preds = %.noexc
  %i.p = load i8, ptr %i.f, align 4, !tbaa !18
  %.not.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i, label %_ZN6icu_7815MaybeStackArrayI11UScriptCodeLi20EE6resizeEii.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr %3, align 8, !tbaa !17
  invoke void @uprv_free_78(ptr noundef %i.q)
          to label %_ZN6icu_7815MaybeStackArrayI11UScriptCodeLi20EE6resizeEii.exit unwind label %bb.i

_ZN6icu_7815MaybeStackArrayI11UScriptCodeLi20EE6resizeEii.exit: ; preds = %bb.g, %bb.h
  store ptr %i.o, ptr %3, align 8, !tbaa !17
  store i32 %i.i, ptr %i.e, align 8, !tbaa !26
  store i8 1, ptr %i.f, align 4, !tbaa !18
  br label %bb.c, !llvm.loop !24

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @_ZN6icu_7815MaybeStackArrayI11UScriptCodeLi20EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  resume { ptr, i32 } %i.r

bb.j:                                             ; preds = %bb.d
  %i.s = icmp slt i32 %i.j, 1
  br i1 %i.s, label %.preheader, label %.loopexit.sink.split

.preheader:                                       ; preds = %bb.j
  %i.t = icmp sgt i32 %i.i, 0
  br i1 %i.t, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.u = load ptr, ptr %3, align 8, !tbaa !17
  %i.v = load i32, ptr %2, align 4, !tbaa !11
  %i.w = icmp slt i32 %i.v, 1
  br i1 %i.w, label %.lr.ph.split.preheader, label %.loopexit

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %i.x = lshr i32 %i.af, 5
  %i.y = and i32 %i.af, 31
  %i.z = shl nuw i32 1, %i.y
  %i.aa = zext nneg i32 %i.x to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !12
  %i.ad = or i32 %i.ac, %i.z
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.l, !llvm.loop !25

bb.l:                                             ; preds = %bb.k, %.lr.ph.split.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !29 ; 3 uses
  %or.cond.i = icmp ugt i32 %i.af, 223
  br i1 %or.cond.i, label %.loopexit.sink.split, label %bb.k

.loopexit.sink.split:                             ; preds = %bb.e, %.noexc, %bb.l, %bb.j
  %.sink = phi i32 [ %i.j, %bb.j ], [ 1, %bb.l ], [ 7, %.noexc ], [ 7, %bb.e ]
  store i32 %.sink, ptr %2, align 4, !tbaa !11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %.loopexit.sink.split, %.lr.ph, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.ag = load i8, ptr %i.f, align 4, !tbaa !18
  %.not.i.i22 = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i22, label %_ZN6icu_7815MaybeStackArrayI11UScriptCodeLi20EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.loopexit
  %i.ah = load ptr, ptr %3, align 8, !tbaa !17
  invoke void @uprv_free_78(ptr noundef %i.ah)
          to label %_ZN6icu_7815MaybeStackArrayI11UScriptCodeLi20EED2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #16
  unreachable

_ZN6icu_7815MaybeStackArrayI11UScriptCodeLi20EED2Ev.exit: ; preds = %.loopexit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %_ZN6icu_7815MaybeStackArrayI11UScriptCodeLi20EED2Ev.exit
  ret void
}

declare i32 @uscript_getScriptExtensions_78(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_7815MaybeStackArrayI11UScriptCodeLi20EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !18
  %.not.i = icmp eq i8 %i.b, 0
  br i1 %.not.i, label %_ZN6icu_7815MaybeStackArrayI11UScriptCodeLi20EE12releaseArrayEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !17
  invoke void @uprv_free_78(ptr noundef %i.c)
          to label %_ZN6icu_7815MaybeStackArrayI11UScriptCodeLi20EE12releaseArrayEv.exit unwind label %bb.c

_ZN6icu_7815MaybeStackArrayI11UScriptCodeLi20EE12releaseArrayEv.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #16
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define signext range(i8 0, 2) i8 @uhash_equalsScriptSet_78(ptr nofree readonly captures(none) %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !12
  %i.b = load i32, ptr %1, align 4, !tbaa !12
  %.not.i = icmp eq i32 %i.a, %i.b
  br i1 %.not.i, label %bb.b, label %_ZNK6icu_789ScriptSeteqERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !12
  %.not.1.i = icmp eq i32 %i.d, %i.f
  br i1 %.not.1.i, label %bb.c, label %_ZNK6icu_789ScriptSeteqERKS0_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !12
  %.not.2.i = icmp eq i32 %i.h, %i.j
  br i1 %.not.2.i, label %bb.d, label %_ZNK6icu_789ScriptSeteqERKS0_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !12
  %.not.3.i = icmp eq i32 %i.l, %i.n
  br i1 %.not.3.i, label %bb.e, label %_ZNK6icu_789ScriptSeteqERKS0_.exit

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i32, ptr %i.o, align 4, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i32, ptr %i.q, align 4, !tbaa !12
  %.not.4.i = icmp eq i32 %i.p, %i.r
  br i1 %.not.4.i, label %bb.f, label %_ZNK6icu_789ScriptSeteqERKS0_.exit

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.v = load i32, ptr %i.u, align 4, !tbaa !12
  %.not.5.i = icmp eq i32 %i.t, %i.v
  br i1 %.not.5.i, label %bb.g, label %_ZNK6icu_789ScriptSeteqERKS0_.exit

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load i32, ptr %i.w, align 4, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i32, ptr %i.y, align 4, !tbaa !12
  %.not.6.i = icmp eq i32 %i.x, %i.z
  %i.aa = zext i1 %.not.6.i to i8
  br label %_ZNK6icu_789ScriptSeteqERKS0_.exit

_ZNK6icu_789ScriptSeteqERKS0_.exit:               ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.not.lcssa.i = phi i8 [ 0, %bb.a ], [ 0, %bb.f ], [ 0, %bb.b ], [ %i.aa, %bb.g ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.d ]
  ret i8 %.not.lcssa.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @uhash_compareScriptSet_78(ptr nofree readonly captures(none) %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !12     ; 2 uses
  %.not10.i = icmp eq i32 %i.a, 0
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.012.i = phi i32 [ %i.d, %.lr.ph.i ], [ %i.a, %bb.a ] ; 2 uses
  %.111.i = phi i32 [ %i.b, %.lr.ph.i ], [ 0, %bb.a ]
  %i.b = add nuw nsw i32 %.111.i, 1               ; 2 uses
  %i.c = add i32 %.012.i, -1
  %i.d = and i32 %i.c, %.012.i                    ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.1.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.b, %.lr.ph.i ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !12   ; 2 uses
  %.not10.1.i = icmp eq i32 %i.f, 0
  br i1 %.not10.1.i, label %._crit_edge.1.i, label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %._crit_edge.i, %.lr.ph.1.i
  %.012.1.i = phi i32 [ %i.i, %.lr.ph.1.i ], [ %i.f, %._crit_edge.i ] ; 2 uses
  %.111.1.i = phi i32 [ %i.g, %.lr.ph.1.i ], [ %.1.lcssa.i, %._crit_edge.i ]
  %i.g = add nsw i32 %.111.1.i, 1                 ; 2 uses
  %i.h = add i32 %.012.1.i, -1
  %i.i = and i32 %i.h, %.012.1.i                  ; 2 uses
  %.not.1.i = icmp eq i32 %i.i, 0
  br i1 %.not.1.i, label %._crit_edge.1.i, label %.lr.ph.1.i, !llvm.loop !0

._crit_edge.1.i:                                  ; preds = %.lr.ph.1.i, %._crit_edge.i
  %.1.lcssa.1.i = phi i32 [ %.1.lcssa.i, %._crit_edge.i ], [ %i.g, %.lr.ph.1.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !12   ; 2 uses
  %.not10.2.i = icmp eq i32 %i.k, 0
  br i1 %.not10.2.i, label %._crit_edge.2.i, label %.lr.ph.2.i

.lr.ph.2.i:                                       ; preds = %._crit_edge.1.i, %.lr.ph.2.i
  %.012.2.i = phi i32 [ %i.n, %.lr.ph.2.i ], [ %i.k, %._crit_edge.1.i ] ; 2 uses
  %.111.2.i = phi i32 [ %i.l, %.lr.ph.2.i ], [ %.1.lcssa.1.i, %._crit_edge.1.i ]
  %i.l = add nsw i32 %.111.2.i, 1                 ; 2 uses
  %i.m = add i32 %.012.2.i, -1
  %i.n = and i32 %i.m, %.012.2.i                  ; 2 uses
  %.not.2.i = icmp eq i32 %i.n, 0
  br i1 %.not.2.i, label %._crit_edge.2.i, label %.lr.ph.2.i, !llvm.loop !0

._crit_edge.2.i:                                  ; preds = %.lr.ph.2.i, %._crit_edge.1.i
  %.1.lcssa.2.i = phi i32 [ %.1.lcssa.1.i, %._crit_edge.1.i ], [ %i.l, %.lr.ph.2.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !12   ; 2 uses
  %.not10.3.i = icmp eq i32 %i.p, 0
  br i1 %.not10.3.i, label %._crit_edge.3.i, label %.lr.ph.3.i

.lr.ph.3.i:                                       ; preds = %._crit_edge.2.i, %.lr.ph.3.i
  %.012.3.i = phi i32 [ %i.s, %.lr.ph.3.i ], [ %i.p, %._crit_edge.2.i ] ; 2 uses
  %.111.3.i = phi i32 [ %i.q, %.lr.ph.3.i ], [ %.1.lcssa.2.i, %._crit_edge.2.i ]
  %i.q = add nsw i32 %.111.3.i, 1                 ; 2 uses
  %i.r = add i32 %.012.3.i, -1
  %i.s = and i32 %i.r, %.012.3.i                  ; 2 uses
  %.not.3.i = icmp eq i32 %i.s, 0
  br i1 %.not.3.i, label %._crit_edge.3.i, label %.lr.ph.3.i, !llvm.loop !0

._crit_edge.3.i:                                  ; preds = %.lr.ph.3.i, %._crit_edge.2.i
  %.1.lcssa.3.i = phi i32 [ %.1.lcssa.2.i, %._crit_edge.2.i ], [ %i.q, %.lr.ph.3.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i32, ptr %i.t, align 4, !tbaa !12   ; 2 uses
  %.not10.4.i = icmp eq i32 %i.u, 0
  br i1 %.not10.4.i, label %._crit_edge.4.i, label %.lr.ph.4.i

.lr.ph.4.i:                                       ; preds = %._crit_edge.3.i, %.lr.ph.4.i
  %.012.4.i = phi i32 [ %i.x, %.lr.ph.4.i ], [ %i.u, %._crit_edge.3.i ] ; 2 uses
  %.111.4.i = phi i32 [ %i.v, %.lr.ph.4.i ], [ %.1.lcssa.3.i, %._crit_edge.3.i ]
  %i.v = add nsw i32 %.111.4.i, 1                 ; 2 uses
  %i.w = add i32 %.012.4.i, -1
  %i.x = and i32 %i.w, %.012.4.i                  ; 2 uses
  %.not.4.i = icmp eq i32 %i.x, 0
  br i1 %.not.4.i, label %._crit_edge.4.i, label %.lr.ph.4.i, !llvm.loop !0

._crit_edge.4.i:                                  ; preds = %.lr.ph.4.i, %._crit_edge.3.i
  %.1.lcssa.4.i = phi i32 [ %.1.lcssa.3.i, %._crit_edge.3.i ], [ %i.v, %.lr.ph.4.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.z = load i32, ptr %i.y, align 4, !tbaa !12   ; 2 uses
  %.not10.5.i = icmp eq i32 %i.z, 0
  br i1 %.not10.5.i, label %._crit_edge.5.i, label %.lr.ph.5.i

.lr.ph.5.i:                                       ; preds = %._crit_edge.4.i, %.lr.ph.5.i
  %.012.5.i = phi i32 [ %i.ac, %.lr.ph.5.i ], [ %i.z, %._crit_edge.4.i ] ; 2 uses
  %.111.5.i = phi i32 [ %i.aa, %.lr.ph.5.i ], [ %.1.lcssa.4.i, %._crit_edge.4.i ]
  %i.aa = add nsw i32 %.111.5.i, 1                ; 2 uses
  %i.ab = add i32 %.012.5.i, -1
  %i.ac = and i32 %i.ab, %.012.5.i                ; 2 uses
  %.not.5.i = icmp eq i32 %i.ac, 0
  br i1 %.not.5.i, label %._crit_edge.5.i, label %.lr.ph.5.i, !llvm.loop !0

._crit_edge.5.i:                                  ; preds = %.lr.ph.5.i, %._crit_edge.4.i
  %.1.lcssa.5.i = phi i32 [ %.1.lcssa.4.i, %._crit_edge.4.i ], [ %i.aa, %.lr.ph.5.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !12 ; 2 uses
  %.not10.6.i = icmp eq i32 %i.ae, 0
  br i1 %.not10.6.i, label %_ZNK6icu_789ScriptSet12countMembersEv.exit, label %.lr.ph.6.i

.lr.ph.6.i:                                       ; preds = %._crit_edge.5.i, %.lr.ph.6.i
  %.012.6.i = phi i32 [ %i.ah, %.lr.ph.6.i ], [ %i.ae, %._crit_edge.5.i ] ; 2 uses
  %.111.6.i = phi i32 [ %i.af, %.lr.ph.6.i ], [ %.1.lcssa.5.i, %._crit_edge.5.i ]
  %i.af = add nsw i32 %.111.6.i, 1                ; 2 uses
  %i.ag = add i32 %.012.6.i, -1
  %i.ah = and i32 %i.ag, %.012.6.i                ; 2 uses
  %.not.6.i = icmp eq i32 %i.ah, 0
  br i1 %.not.6.i, label %_ZNK6icu_789ScriptSet12countMembersEv.exit, label %.lr.ph.6.i, !llvm.loop !0

_ZNK6icu_789ScriptSet12countMembersEv.exit:       ; preds = %.lr.ph.6.i, %._crit_edge.5.i
  %.1.lcssa.6.i = phi i32 [ %.1.lcssa.5.i, %._crit_edge.5.i ], [ %i.af, %.lr.ph.6.i ]
  %i.ai = load i32, ptr %1, align 4, !tbaa !12    ; 2 uses
  %.not10.i18 = icmp eq i32 %i.ai, 0
  br i1 %.not10.i18, label %._crit_edge.i23, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %_ZNK6icu_789ScriptSet12countMembersEv.exit, %.lr.ph.i19
  %.012.i20 = phi i32 [ %i.al, %.lr.ph.i19 ], [ %i.ai, %_ZNK6icu_789ScriptSet12countMembersEv.exit ] ; 2 uses
  %.111.i21 = phi i32 [ %i.aj, %.lr.ph.i19 ], [ 0, %_ZNK6icu_789ScriptSet12countMembersEv.exit ]
  %i.aj = add nuw nsw i32 %.111.i21, 1            ; 2 uses
  %i.ak = add i32 %.012.i20, -1
  %i.al = and i32 %i.ak, %.012.i20                ; 2 uses
end_hunk_1
begin_hunk_2_@uhash_compareScriptSet_78:bb.a
  %.not10.2.i32 = icmp eq i32 %i.as, 0
  br i1 %.not10.2.i32, label %._crit_edge.2.i37, label %.lr.ph.2.i33

.lr.ph.2.i33:                                     ; preds = %._crit_edge.1.i30, %.lr.ph.2.i33
  %.012.2.i34 = phi i32 [ %i.av, %.lr.ph.2.i33 ], [ %i.as, %._crit_edge.1.i30 ] ; 2 uses
  %.111.2.i35 = phi i32 [ %i.at, %.lr.ph.2.i33 ], [ %.1.lcssa.1.i31, %._crit_edge.1.i30 ]
  %i.at = add nsw i32 %.111.2.i35, 1              ; 2 uses
  %i.au = add i32 %.012.2.i34, -1
  %i.av = and i32 %i.au, %.012.2.i34              ; 2 uses
  %.not.2.i36 = icmp eq i32 %i.av, 0
  br i1 %.not.2.i36, label %._crit_edge.2.i37, label %.lr.ph.2.i33, !llvm.loop !0

._crit_edge.2.i37:                                ; preds = %.lr.ph.2.i33, %._crit_edge.1.i30
  %.1.lcssa.2.i38 = phi i32 [ %.1.lcssa.1.i31, %._crit_edge.1.i30 ], [ %i.at, %.lr.ph.2.i33 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !12 ; 2 uses
  %.not10.3.i39 = icmp eq i32 %i.ax, 0
  br i1 %.not10.3.i39, label %._crit_edge.3.i44, label %.lr.ph.3.i40

.lr.ph.3.i40:                                     ; preds = %._crit_edge.2.i37, %.lr.ph.3.i40
  %.012.3.i41 = phi i32 [ %i.ba, %.lr.ph.3.i40 ], [ %i.ax, %._crit_edge.2.i37 ] ; 2 uses
  %.111.3.i42 = phi i32 [ %i.ay, %.lr.ph.3.i40 ], [ %.1.lcssa.2.i38, %._crit_edge.2.i37 ]
  %i.ay = add nsw i32 %.111.3.i42, 1              ; 2 uses
  %i.az = add i32 %.012.3.i41, -1
  %i.ba = and i32 %i.az, %.012.3.i41              ; 2 uses
  %.not.3.i43 = icmp eq i32 %i.ba, 0
  br i1 %.not.3.i43, label %._crit_edge.3.i44, label %.lr.ph.3.i40, !llvm.loop !0

._crit_edge.3.i44:                                ; preds = %.lr.ph.3.i40, %._crit_edge.2.i37
  %.1.lcssa.3.i45 = phi i32 [ %.1.lcssa.2.i38, %._crit_edge.2.i37 ], [ %i.ay, %.lr.ph.3.i40 ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !12 ; 2 uses
  %.not10.4.i46 = icmp eq i32 %i.bc, 0
  br i1 %.not10.4.i46, label %._crit_edge.4.i51, label %.lr.ph.4.i47

.lr.ph.4.i47:                                     ; preds = %._crit_edge.3.i44, %.lr.ph.4.i47
  %.012.4.i48 = phi i32 [ %i.bf, %.lr.ph.4.i47 ], [ %i.bc, %._crit_edge.3.i44 ] ; 2 uses
  %.111.4.i49 = phi i32 [ %i.bd, %.lr.ph.4.i47 ], [ %.1.lcssa.3.i45, %._crit_edge.3.i44 ]
  %i.bd = add nsw i32 %.111.4.i49, 1              ; 2 uses
  %i.be = add i32 %.012.4.i48, -1
  %i.bf = and i32 %i.be, %.012.4.i48              ; 2 uses
  %.not.4.i50 = icmp eq i32 %i.bf, 0
  br i1 %.not.4.i50, label %._crit_edge.4.i51, label %.lr.ph.4.i47, !llvm.loop !0

._crit_edge.4.i51:                                ; preds = %.lr.ph.4.i47, %._crit_edge.3.i44
  %.1.lcssa.4.i52 = phi i32 [ %.1.lcssa.3.i45, %._crit_edge.3.i44 ], [ %i.bd, %.lr.ph.4.i47 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !12 ; 2 uses
  %.not10.5.i53 = icmp eq i32 %i.bh, 0
  br i1 %.not10.5.i53, label %._crit_edge.5.i58, label %.lr.ph.5.i54

.lr.ph.5.i54:                                     ; preds = %._crit_edge.4.i51, %.lr.ph.5.i54
  %.012.5.i55 = phi i32 [ %i.bk, %.lr.ph.5.i54 ], [ %i.bh, %._crit_edge.4.i51 ] ; 2 uses
  %.111.5.i56 = phi i32 [ %i.bi, %.lr.ph.5.i54 ], [ %.1.lcssa.4.i52, %._crit_edge.4.i51 ]
  %i.bi = add nsw i32 %.111.5.i56, 1              ; 2 uses
  %i.bj = add i32 %.012.5.i55, -1
  %i.bk = and i32 %i.bj, %.012.5.i55              ; 2 uses
  %.not.5.i57 = icmp eq i32 %i.bk, 0
  br i1 %.not.5.i57, label %._crit_edge.5.i58, label %.lr.ph.5.i54, !llvm.loop !0

._crit_edge.5.i58:                                ; preds = %.lr.ph.5.i54, %._crit_edge.4.i51
  %.1.lcssa.5.i59 = phi i32 [ %.1.lcssa.4.i52, %._crit_edge.4.i51 ], [ %i.bi, %.lr.ph.5.i54 ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !12 ; 2 uses
  %.not10.6.i60 = icmp eq i32 %i.bm, 0
  br i1 %.not10.6.i60, label %_ZNK6icu_789ScriptSet12countMembersEv.exit66, label %.lr.ph.6.i61

.lr.ph.6.i61:                                     ; preds = %._crit_edge.5.i58, %.lr.ph.6.i61
  %.012.6.i62 = phi i32 [ %i.bp, %.lr.ph.6.i61 ], [ %i.bm, %._crit_edge.5.i58 ] ; 2 uses
  %.111.6.i63 = phi i32 [ %i.bn, %.lr.ph.6.i61 ], [ %.1.lcssa.5.i59, %._crit_edge.5.i58 ]
  %i.bn = add nsw i32 %.111.6.i63, 1              ; 2 uses
  %i.bo = add i32 %.012.6.i62, -1
  %i.bp = and i32 %i.bo, %.012.6.i62              ; 2 uses
  %.not.6.i64 = icmp eq i32 %i.bp, 0
  br i1 %.not.6.i64, label %_ZNK6icu_789ScriptSet12countMembersEv.exit66, label %.lr.ph.6.i61, !llvm.loop !0

_ZNK6icu_789ScriptSet12countMembersEv.exit66:     ; preds = %.lr.ph.6.i61, %._crit_edge.5.i58
  %.1.lcssa.6.i65 = phi i32 [ %.1.lcssa.5.i59, %._crit_edge.5.i58 ], [ %i.bn, %.lr.ph.6.i61 ]
  %i.bq = sub nsw i32 %.1.lcssa.6.i, %.1.lcssa.6.i65 ; 2 uses
  %.not = icmp eq i32 %i.bq, 0
  br i1 %.not, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i, label %.loopexit

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i: ; preds = %_ZNK6icu_789ScriptSet12countMembersEv.exit66, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i.1
  %.0816.i = phi i32 [ %i.cc, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i.1 ], [ 0, %_ZNK6icu_789ScriptSet12countMembersEv.exit66 ] ; 5 uses
  %i.br = lshr i32 %.0816.i, 5
  %i.bs = and i32 %.0816.i, 30
  %i.bt = zext nneg i32 %i.br to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !12 ; 2 uses
  %i.bw = shl nuw nsw i32 1, %i.bs
  %i.bx = and i32 %i.bw, %i.bv
  %.not.i67 = icmp eq i32 %i.bx, 0
  br i1 %.not.i67, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i, label %_ZNK6icu_789ScriptSet10nextSetBitEi.exit

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i: ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i
  %i.by = or disjoint i32 %.0816.i, 1             ; 2 uses
  %i.bz = and i32 %i.by, 31
  %i.ca = shl nuw i32 1, %i.bz
  %i.cb = and i32 %i.ca, %i.bv
  %.not.i67.1 = icmp eq i32 %i.cb, 0
  br i1 %.not.i67.1, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i.1, label %_ZNK6icu_789ScriptSet10nextSetBitEi.exit

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i.1: ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i
  %i.cc = add nuw nsw i32 %.0816.i, 2             ; 2 uses
  %exitcond.i.1 = icmp eq i32 %i.cc, 224
  br i1 %exitcond.i.1, label %_ZNK6icu_789ScriptSet10nextSetBitEi.exit, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i, !llvm.loop !1

_ZNK6icu_789ScriptSet10nextSetBitEi.exit:         ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i.1, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i
  %.2.i = phi i32 [ -1, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i.1 ], [ %.0816.i, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i ], [ %i.by, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i ] ; 3 uses
  br label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i68

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i68: ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i72.1, %_ZNK6icu_789ScriptSet10nextSetBitEi.exit
  %.0816.i69 = phi i32 [ 0, %_ZNK6icu_789ScriptSet10nextSetBitEi.exit ], [ %i.co, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i72.1 ] ; 5 uses
  %i.cd = lshr i32 %.0816.i69, 5
  %i.ce = and i32 %.0816.i69, 30
  %i.cf = zext nneg i32 %i.cd to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !12 ; 2 uses
  %i.ci = shl nuw nsw i32 1, %i.ce
  %i.cj = and i32 %i.ci, %i.ch
  %.not.i70 = icmp eq i32 %i.cj, 0
  br i1 %.not.i70, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i72, label %_ZNK6icu_789ScriptSet10nextSetBitEi.exit74

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i72: ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i68
  %i.ck = or disjoint i32 %.0816.i69, 1           ; 2 uses
  %i.cl = and i32 %i.ck, 31
  %i.cm = shl nuw i32 1, %i.cl
  %i.cn = and i32 %i.cm, %i.ch
  %.not.i70.1 = icmp eq i32 %i.cn, 0
  br i1 %.not.i70.1, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i72.1, label %_ZNK6icu_789ScriptSet10nextSetBitEi.exit74

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i72.1: ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i72
  %i.co = add nuw nsw i32 %.0816.i69, 2           ; 2 uses
  %exitcond.i73.1 = icmp eq i32 %i.co, 224
  br i1 %exitcond.i73.1, label %_ZNK6icu_789ScriptSet10nextSetBitEi.exit74, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i68, !llvm.loop !1

_ZNK6icu_789ScriptSet10nextSetBitEi.exit74:       ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i72.1, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i72, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i68
  %.2.i71 = phi i32 [ -1, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i72.1 ], [ %.0816.i69, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i68 ], [ %i.ck, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i72 ] ; 2 uses
  %i.cp = sub nsw i32 %.2.i, %.2.i71              ; 2 uses
  %i.cq = icmp eq i32 %i.cp, 0
  %i.cr = icmp sgt i32 %.2.i, 0
  %i.cs = and i1 %i.cr, %i.cq
  br i1 %i.cs, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNK6icu_789ScriptSet10nextSetBitEi.exit74, %_ZNK6icu_789ScriptSet10nextSetBitEi.exit89
  %.0105 = phi i32 [ %.2.i86, %_ZNK6icu_789ScriptSet10nextSetBitEi.exit89 ], [ %.2.i71, %_ZNK6icu_789ScriptSet10nextSetBitEi.exit74 ]
  %.015104 = phi i32 [ %.2.i78, %_ZNK6icu_789ScriptSet10nextSetBitEi.exit89 ], [ %.2.i, %_ZNK6icu_789ScriptSet10nextSetBitEi.exit74 ] ; 2 uses
  %or.cond.i = icmp samesign ugt i32 %.015104, 222
  br i1 %or.cond.i, label %_ZNK6icu_789ScriptSet10nextSetBitEi.exit81, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i75.preheader

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i75.preheader: ; preds = %.lr.ph
  %i.ct = add nuw nsw i32 %.015104, 1
  br label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i75

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i75: ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i75.preheader, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i79
  %.0816.i76 = phi i32 [ %i.db, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i79 ], [ %i.ct, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i75.preheader ] ; 4 uses
  %i.cu = lshr i32 %.0816.i76, 5
  %i.cv = and i32 %.0816.i76, 31
  %i.cw = zext nneg i32 %i.cu to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !12
  %i.cz = shl nuw i32 1, %i.cv
  %i.da = and i32 %i.cz, %i.cy
  %.not.i77 = icmp eq i32 %i.da, 0
  br i1 %.not.i77, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i79, label %_ZNK6icu_789ScriptSet10nextSetBitEi.exit81

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i79: ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i75
  %i.db = add nuw nsw i32 %.0816.i76, 1           ; 2 uses
  %exitcond.i80 = icmp eq i32 %i.db, 224
  br i1 %exitcond.i80, label %_ZNK6icu_789ScriptSet10nextSetBitEi.exit81, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i75, !llvm.loop !1

_ZNK6icu_789ScriptSet10nextSetBitEi.exit81:       ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i75, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i79, %.lr.ph
  %.2.i78 = phi i32 [ -1, %.lr.ph ], [ -1, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i79 ], [ %.0816.i76, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i75 ] ; 3 uses
  %i.dc = add nsw i32 %.0105, 1                   ; 2 uses
  %or.cond.i82 = icmp ugt i32 %i.dc, 223
  br i1 %or.cond.i82, label %_ZNK6icu_789ScriptSet10nextSetBitEi.exit89, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i83

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i83: ; preds = %_ZNK6icu_789ScriptSet10nextSetBitEi.exit81, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i87
  %.0816.i84 = phi i32 [ %i.dk, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i87 ], [ %i.dc, %_ZNK6icu_789ScriptSet10nextSetBitEi.exit81 ] ; 4 uses
  %i.dd = lshr i32 %.0816.i84, 5
  %i.de = and i32 %.0816.i84, 31
  %i.df = zext nneg i32 %i.dd to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !12
  %i.di = shl nuw i32 1, %i.de
  %i.dj = and i32 %i.di, %i.dh
  %.not.i85 = icmp eq i32 %i.dj, 0
  br i1 %.not.i85, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i87, label %_ZNK6icu_789ScriptSet10nextSetBitEi.exit89

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i87: ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i83
  %i.dk = add nuw nsw i32 %.0816.i84, 1           ; 2 uses
  %exitcond.i88 = icmp eq i32 %i.dk, 224
  br i1 %exitcond.i88, label %_ZNK6icu_789ScriptSet10nextSetBitEi.exit89, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i83, !llvm.loop !1

_ZNK6icu_789ScriptSet10nextSetBitEi.exit89:       ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i83, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i87, %_ZNK6icu_789ScriptSet10nextSetBitEi.exit81
  %.2.i86 = phi i32 [ -1, %_ZNK6icu_789ScriptSet10nextSetBitEi.exit81 ], [ -1, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i87 ], [ %.0816.i84, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i83 ] ; 2 uses
  %i.dl = sub nsw i32 %.2.i78, %.2.i86            ; 2 uses
  %i.dm = icmp eq i32 %i.dl, 0
  %i.dn = icmp sgt i32 %.2.i78, 0
  %i.do = and i1 %i.dn, %i.dm
  br i1 %i.do, label %.lr.ph, label %.loopexit, !llvm.loop !30

.loopexit:                                        ; preds = %_ZNK6icu_789ScriptSet10nextSetBitEi.exit89, %_ZNK6icu_789ScriptSet10nextSetBitEi.exit74, %_ZNK6icu_789ScriptSet12countMembersEv.exit66
  %.016 = phi i32 [ %i.bq, %_ZNK6icu_789ScriptSet12countMembersEv.exit66 ], [ %i.cp, %_ZNK6icu_789ScriptSet10nextSetBitEi.exit74 ], [ %i.dl, %_ZNK6icu_789ScriptSet10nextSetBitEi.exit89 ]
  ret i32 %.016
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @uhash_hashScriptSet_78(ptr nofree readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load <4 x i32>, ptr %0, align 4, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 4, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 4, !tbaa !12
  %i.h = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %i.a)
  %op.rdx = xor i32 %i.h, %i.c
  %op.rdx1 = xor i32 %i.e, %i.g
  %op.rdx2 = xor i32 %op.rdx, %op.rdx1
  ret i32 %op.rdx2
}

; Function Attrs: mustprogress nounwind uwtable
define void @uhash_deleteScriptSet_78(ptr noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_789ScriptSetD1Ev(ptr noundef nonnull align 4 dead_on_return(28) dereferenceable(28) %0) #14
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #7

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.xor.v4i32(<4 x i32>) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { allocsize(0) }
attributes #16 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !13}
!1 = distinct !{!1, !13}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"_ZTS10UErrorCode", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!7, !7, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!6, !6, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"_ZTSN6icu_7815MaybeStackArrayI11UScriptCodeLi20EEE", !15, i64 0, !7, i64 8, !6, i64 12, !6, i64 16}
!17 = !{!16, !15, i64 0}
!18 = !{!16, !6, i64 12}
!19 = !{!"char16_t", !6, i64 0}
!20 = !{!19, !19, i64 0}
!21 = distinct !{!21, !13}
!22 = !{!"vtable pointer", !5, i64 0}
!23 = !{!22, !22, i64 0}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13, !27}
!26 = !{!16, !7, i64 8}
!27 = !{!"llvm.loop.unswitch.partial.disable"}
!28 = !{!"_ZTS11UScriptCode", !6, i64 0}
!29 = !{!28, !28, i64 0}
!30 = distinct !{!30, !13}
end_hunk_2
