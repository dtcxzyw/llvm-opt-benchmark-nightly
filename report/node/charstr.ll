inline.NumInlined: 82
inline.NumDeleted: 26
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.icu_78::CharString" = type { %"class.icu_78::MaybeStackArray", i32, [4 x i8] }
%"class.icu_78::MaybeStackArray" = type <{ ptr, i32, i8, [40 x i8], [3 x i8] }>

$_ZN6icu_7810CharString6appendERKS0_R10UErrorCode = comdat any

$_ZN6icu_7810CharStringC2EPKciR10UErrorCode = comdat any

@_ZN6icu_7810CharStringC1EOS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN6icu_7810CharStringC2EOS0_

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN6icu_7810CharStringC2EOS0_(ptr noundef nonnull align 8 dereferenceable(60) initializes((0, 13)) %0, ptr noundef nonnull align 8 dereferenceable(60) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8
  store i32 %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4
  store i8 %i.g, ptr %i.e, align 4
  %i.h = load ptr, ptr %1, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 13 ; 3 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 13 ; 2 uses
  store ptr %i.k, ptr %0, align 8
  %i.l = load i32, ptr %i.c, align 8
  %i.m = sext i32 %i.l to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull align 1 %i.i, i64 %i.m, i1 false)
  br label %_ZN6icu_7815MaybeStackArrayIcLi40EEC2EOS1_.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.i, ptr %1, align 8
  store i32 40, ptr %i.c, align 8
  store i8 0, ptr %i.f, align 4
  br label %_ZN6icu_7815MaybeStackArrayIcLi40EEC2EOS1_.exit

_ZN6icu_7815MaybeStackArrayIcLi40EEC2EOS1_.exit:  ; preds = %bb.b, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8
  store i32 %i.p, ptr %i.n, align 8
  store i32 0, ptr %i.o, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharStringaSEOS0_(ptr noundef nonnull returned align 8 dereferenceable(60) initializes((8, 12)) %0, ptr noundef nonnull align 8 dereferenceable(60) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4
  %.not.i.i = icmp eq i8 %i.b, 0
  br i1 %.not.i.i, label %_ZN6icu_7815MaybeStackArrayIcLi40EE12releaseArrayEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8
  tail call void @uprv_free_78(ptr noundef %i.c) #13
  br label %_ZN6icu_7815MaybeStackArrayIcLi40EE12releaseArrayEv.exit.i

_ZN6icu_7815MaybeStackArrayIcLi40EE12releaseArrayEv.exit.i: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.h = load i8, ptr %i.g, align 4
  store i8 %i.h, ptr %i.a, align 4
  %i.i = load ptr, ptr %1, align 8                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 13 ; 3 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN6icu_7815MaybeStackArrayIcLi40EE12releaseArrayEv.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 13 ; 2 uses
  store ptr %i.l, ptr %0, align 8
  %i.m = load i32, ptr %i.d, align 8
  %i.n = sext i32 %i.m to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull align 1 %i.j, i64 %i.n, i1 false)
  br label %_ZN6icu_7815MaybeStackArrayIcLi40EEaSEOS1_.exit

bb.d:                                             ; preds = %_ZN6icu_7815MaybeStackArrayIcLi40EE12releaseArrayEv.exit.i
  store ptr %i.i, ptr %0, align 8
  store ptr %i.j, ptr %1, align 8
  store i32 40, ptr %i.d, align 8
  store i8 0, ptr %i.g, align 4
  br label %_ZN6icu_7815MaybeStackArrayIcLi40EEaSEOS1_.exit

_ZN6icu_7815MaybeStackArrayIcLi40EEaSEOS1_.exit:  ; preds = %bb.c, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.p, ptr %i.q, align 8
  store i32 0, ptr %i.o, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noalias noundef ptr @_ZNK6icu_7810CharString9cloneDataER10UErrorCode(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(60) %0, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = add nsw i32 %i.d, 1
  %i.f = sext i32 %i.e to i64
  %i.g = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.f) #14 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 7, ptr %1, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8
  %i.j = load i32, ptr %i.c, align 8
  %i.k = add nsw i32 %i.j, 1
  %i.l = sext i32 %i.k to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr align 1 %i.i, i64 %i.l, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.g, %bb.d ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK6icu_7810CharString7extractEPciR10UErrorCode(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(60) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i32, ptr %i.c, align 8
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %2, 0
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp ne i32 %2, 0
  %i.g = icmp eq ptr %1, null
  %or.cond = and i1 %i.g, %i.f
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %3, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load i32, ptr %i.h, align 8
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %0, align 8                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8              ; 4 uses
  %i.m = icmp slt i32 %i.l, 1
  %.not19 = icmp sgt i32 %i.l, %2
  %or.cond21 = or i1 %i.m, %.not19
  %.not20 = icmp eq ptr %i.j, %1
  %or.cond22 = or i1 %.not20, %or.cond21
  br i1 %or.cond22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = zext nneg i32 %i.l to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.j, i64 %i.n, i1 false)
  %.pre = load i32, ptr %i.k, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = phi i32 [ %.pre, %bb.g ], [ %i.l, %bb.f ]
  %i.p = tail call i32 @u_terminateChars_78(ptr noundef %1, i32 noundef %2, i32 noundef %i.o, ptr noundef nonnull %3) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ %i.i, %bb.e ], [ %i.p, %bb.h ]
  ret i32 %.0
}

declare i32 @u_terminateChars_78(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString8copyFromERKS0_R10UErrorCode(ptr noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(60) %0, ptr noundef nonnull readonly align 8 captures(address) dereferenceable(60) %1, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp slt i32 %i.a, 1
  %i.c = icmp ne ptr %0, %1
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = add nsw i32 %i.e, 1
  %i.g = tail call noundef signext i8 @_ZN6icu_7810CharString14ensureCapacityEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %i.f, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.d, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.h, ptr %i.i, align 8
  %i.j = load ptr, ptr %0, align 8
  %i.k = load ptr, ptr %1, align 8
  %i.l = add nsw i32 %i.h, 1
  %i.m = sext i32 %i.l to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.k, i64 %i.m, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZN6icu_7810CharString14ensureCapacityEiiR10UErrorCode(ptr noundef nonnull align 8 captures(none) dereferenceable(60) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp sgt i32 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i32 %2, 0
  %i.g = add nsw i32 %i.d, %1
  %spec.select = select i1 %i.f, i32 %i.g, i32 %2 ; 5 uses
  %.not13 = icmp sgt i32 %spec.select, %1
  br i1 %.not13, label %bb.d, label %_ZN6icu_7815MaybeStackArrayIcLi40EE6resizeEii.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = add nsw i32 %i.i, 1
  %i.k = icmp sgt i32 %spec.select, 0
  br i1 %i.k, label %bb.e, label %_ZN6icu_7815MaybeStackArrayIcLi40EE6resizeEii.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.l = zext nneg i32 %spec.select to i64
  %i.m = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.l) #14 ; 3 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZN6icu_7815MaybeStackArrayIcLi40EE6resizeEii.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = icmp sgt i32 %i.i, -1
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr %i.c, align 8
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %i.o)
  %.1.i = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %spec.select)
  %i.p = load ptr, ptr %0, align 8
  %i.q = sext i32 %.1.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr align 1 %i.p, i64 %i.q, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.s = load i8, ptr %i.r, align 4
  %.not.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i, label %_ZN6icu_7815MaybeStackArrayIcLi40EE6resizeEii.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %0, align 8
  tail call void @uprv_free_78(ptr noundef %i.t) #13
  br label %_ZN6icu_7815MaybeStackArrayIcLi40EE6resizeEii.exit

_ZN6icu_7815MaybeStackArrayIcLi40EE6resizeEii.exit: ; preds = %bb.h, %bb.i
  store ptr %i.m, ptr %0, align 8
  store i32 %spec.select, ptr %i.c, align 8
  store i8 1, ptr %i.r, align 4
  br label %bb.p

_ZN6icu_7815MaybeStackArrayIcLi40EE6resizeEii.exit.thread: ; preds = %bb.d, %bb.e, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load i32, ptr %i.u, align 8              ; 2 uses
  %i.w = add nsw i32 %i.v, 1
  %i.x = icmp sgt i32 %1, 0
  br i1 %i.x, label %bb.j, label %bb.o

bb.j:                                             ; preds = %_ZN6icu_7815MaybeStackArrayIcLi40EE6resizeEii.exit.thread
  %i.y = zext nneg i32 %1 to i64
  %i.z = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.y) #14 ; 3 uses
  %.not.i15 = icmp eq ptr %i.z, null
  br i1 %.not.i15, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = icmp sgt i32 %i.v, -1
  br i1 %i.aa, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ab = load i32, ptr %i.c, align 8
  %spec.select.i18 = tail call i32 @llvm.smin.i32(i32 %i.w, i32 %i.ab)
  %.1.i19 = tail call i32 @llvm.smin.i32(i32 %spec.select.i18, i32 %1)
  %i.ac = load ptr, ptr %0, align 8
  %i.ad = sext i32 %.1.i19 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ac, i64 %i.ad, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 4
  %.not.i.i16 = icmp eq i8 %i.af, 0
  br i1 %.not.i.i16, label %_ZN6icu_7815MaybeStackArrayIcLi40EE6resizeEii.exit20, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = load ptr, ptr %0, align 8
  tail call void @uprv_free_78(ptr noundef %i.ag) #13
  br label %_ZN6icu_7815MaybeStackArrayIcLi40EE6resizeEii.exit20

_ZN6icu_7815MaybeStackArrayIcLi40EE6resizeEii.exit20: ; preds = %bb.m, %bb.n
  store ptr %i.z, ptr %0, align 8
  store i32 %1, ptr %i.c, align 8
  store i8 1, ptr %i.ae, align 4
  br label %bb.p

bb.o:                                             ; preds = %bb.j, %_ZN6icu_7815MaybeStackArrayIcLi40EE6resizeEii.exit.thread
  store i32 7, ptr %3, align 4
  br label %bb.p

bb.p:                                             ; preds = %_ZN6icu_7815MaybeStackArrayIcLi40EE6resizeEii.exit20, %_ZN6icu_7815MaybeStackArrayIcLi40EE6resizeEii.exit, %bb.b, %bb.a, %bb.o
  %.0 = phi i8 [ 0, %bb.a ], [ 0, %bb.o ], [ 1, %_ZN6icu_7815MaybeStackArrayIcLi40EE6resizeEii.exit ], [ 1, %_ZN6icu_7815MaybeStackArrayIcLi40EE6resizeEii.exit20 ], [ 1, %bb.b ]
  ret i8 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString8copyFromENS_11StringPieceER10UErrorCode(ptr noundef nonnull returned align 8 dereferenceable(60) %0, ptr %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.c, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 -1, 2147483647) i32 @_ZNK6icu_7810CharString11lastIndexOfEc(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(60) %0, i8 noundef signext %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %0, align 8
  %i.d = icmp sgt i32 %i.b, 0
  br i1 %i.d, label %.lr.ph, label %.split.loop.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = zext nneg i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.f = icmp sgt i32 %indvars.le, 0
  br i1 %i.f, label %bb.c, label %.split.loop.exit, !llvm.loop !5

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv13 = phi i64 [ %i.e, %.lr.ph ], [ %indvars.iv.next, %bb.b ]
  %indvars.iv.next = add nsw i64 %indvars.iv13, -1 ; 3 uses
  %i.g = and i64 %indvars.iv.next, 4294967295
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  %i.j = icmp eq i8 %i.i, %1
  %indvars.le = trunc i64 %indvars.iv.next to i32 ; 2 uses
  br i1 %i.j, label %.split.loop.exit, label %bb.b, !llvm.loop !5

.split.loop.exit:                                 ; preds = %bb.b, %bb.c, %bb.a
  %i.k = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ %indvars.le, %bb.c ]
  ret i32 %i.k
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK6icu_7810CharString8containsENS_11StringPieceE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(60) %0, ptr readonly captures(none) %1, i32 %2) local_unnamed_addr #6 align 2 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %.not9.not12 = icmp slt i32 %i.c, %2
  br i1 %.not9.not12, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = sext i32 %2 to i64
  %i.e = add i32 %i.c, 1
  %i.f = sub i32 %i.e, %2
  %wide.trip.count = zext i32 %i.f to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %bcmp = tail call i32 @bcmp(ptr %i.g, ptr %1, i64 %i.d)
  %i.h = icmp eq i32 %bcmp, 0                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %or.cond = select i1 %i.h, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %.critedge, label %bb.c, !llvm.loop !7

.critedge:                                        ; preds = %bb.c, %bb.b, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.h, %bb.c ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString8truncateEi(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(60) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %1, i32 0) ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp slt i32 %spec.store.select, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %spec.store.select, ptr %i.a, align 8
  %i.d = zext nneg i32 %spec.store.select to i64
  %i.e = load ptr, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  store i8 0, ptr %i.f, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(60) %0, i8 noundef signext %1, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = add nsw i32 %i.b, 2
  %i.d = tail call noundef signext i8 @_ZN6icu_7810CharString14ensureCapacityEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %i.c, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 8              ; 2 uses
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.a, align 8
  %i.g = sext i32 %i.e to i64
  %i.h = load ptr, ptr %0, align 8
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 %i.g
  store i8 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8
  %i.k = sext i32 %i.j to i64
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %i.k
  store i8 0, ptr %i.m, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.icu_78::CharString", align 8 ; 6 uses
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %2, -1
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %1, null
  %i.e = icmp ne i32 %2, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 1, ptr %3, align 4
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.f = icmp slt i32 %2, 0
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #15
  %i.h = trunc i64 %i.g to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.026 = phi i32 [ %i.h, %bb.f ], [ %2, %bb.e ]  ; 8 uses
  %i.i = icmp sgt i32 %.026, 0
  br i1 %i.i, label %bb.h, label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.j = load ptr, ptr %0, align 8                ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.l = load i32, ptr %i.k, align 8              ; 5 uses
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 %i.m ; 2 uses
  %i.o = icmp eq ptr %1, %i.n
  br i1 %i.o, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i32, ptr %i.p, align 8
  %i.r = sub nsw i32 %i.q, %i.l
  %.not32 = icmp slt i32 %.026, %i.r
  br i1 %.not32, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 5, ptr %3, align 4
  br label %bb.r

bb.k:                                             ; preds = %bb.i
  %i.s = add nsw i32 %i.l, %.026                  ; 2 uses
  store i32 %i.s, ptr %i.k, align 8
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %i.j, i64 %i.t
  store i8 0, ptr %i.u, align 1
  br label %bb.r

bb.l:                                             ; preds = %bb.h
  %.not29 = icmp ule ptr %i.j, %1
  %i.v = icmp ult ptr %1, %i.n
  %or.cond33 = and i1 %.not29, %i.v
  br i1 %or.cond33, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i32, ptr %i.w, align 8
  %i.y = sub nsw i32 %i.x, %i.l
  %.not30 = icmp slt i32 %.026, %i.y
  br i1 %.not30, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @_ZN6icu_7810CharStringC2EPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %4, ptr noundef %1, i32 noundef %.026, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.z = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendERKS0_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(60) %4, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ab = load i8, ptr %i.aa, align 4
  %.not.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = load ptr, ptr %4, align 8
  call void @uprv_free_78(ptr noundef %i.ac) #13
  br label %_ZN6icu_7810CharStringD2Ev.exit

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.r

bb.p:                                             ; preds = %bb.m, %bb.l
  %i.ad = add nuw i32 %.026, 1
  %i.ae = add i32 %i.ad, %i.l
  %i.af = tail call noundef signext i8 @_ZN6icu_7810CharString14ensureCapacityEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %i.ae, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %.not31 = icmp eq i8 %i.af, 0
  br i1 %.not31, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = load ptr, ptr %0, align 8
  %i.ah = load i32, ptr %i.k, align 8
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 %i.ai
  %i.ak = zext nneg i32 %.026 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %1, i64 %i.ak, i1 false)
  %i.al = load i32, ptr %i.k, align 8
  %i.am = add nsw i32 %i.al, %.026                ; 2 uses
  store i32 %i.am, ptr %i.k, align 8
  %i.an = sext i32 %i.am to i64
  %i.ao = load ptr, ptr %0, align 8
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.an
  store i8 0, ptr %i.ap, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.g, %bb.q, %bb.p, %bb.j, %bb.k, %bb.a, %_ZN6icu_7810CharStringD2Ev.exit, %bb.d
  %.0 = phi ptr [ %i.z, %_ZN6icu_7810CharStringD2Ev.exit ], [ %0, %bb.d ], [ %0, %bb.a ], [ %0, %bb.k ], [ %0, %bb.j ], [ %0, %bb.p ], [ %0, %bb.q ], [ %0, %bb.g ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendERKS0_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(60) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load i32, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %i.a, i32 noundef %i.c, ptr noundef nonnull align 4 dereferenceable(4) %2)
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6icu_7810CharStringC2EPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 13 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 40, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.d, align 8
  store i8 0, ptr %i.a, align 1
  %i.e = tail call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString12appendNumberElR10UErrorCode(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(60) %0, i64 noundef %1, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = add nsw i32 %i.c, 2
  %i.e = tail call noundef signext i8 @_ZN6icu_7810CharString14ensureCapacityEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %i.d, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.b, align 8              ; 2 uses
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.b, align 8
  %i.h = sext i32 %i.f to i64
  %i.i = load ptr, ptr %0, align 8
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 %i.h
  store i8 45, ptr %i.j, align 1
  %i.k = load i32, ptr %i.b, align 8
  %i.l = sext i32 %i.k to i64
  %i.m = load ptr, ptr %0, align 8
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 %i.l
  store i8 0, ptr %i.n, align 1
  br label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit

_ZN6icu_7810CharString6appendEcR10UErrorCode.exit: ; preds = %bb.b, %bb.c
  %i.o = load i32, ptr %2, align 4
  %i.p = icmp slt i32 %i.o, 1
  br i1 %i.p, label %.preheader, label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit28

bb.d:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %1, 0
  br i1 %i.q, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.t = load i32, ptr %i.s, align 8
  %i.u = add nsw i32 %i.t, 2
  %i.v = tail call noundef signext i8 @_ZN6icu_7810CharString14ensureCapacityEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %i.u, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %.not.i27 = icmp eq i8 %i.v, 0
  br i1 %.not.i27, label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit28, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load i32, ptr %i.s, align 8              ; 2 uses
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.s, align 8
  %i.y = sext i32 %i.w to i64
  %i.z = load ptr, ptr %0, align 8
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.y
  store i8 48, ptr %i.aa, align 1
  %i.ab = load i32, ptr %i.s, align 8
  %i.ac = sext i32 %i.ab to i64
  %i.ad = load ptr, ptr %0, align 8
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %i.ac
  store i8 0, ptr %i.ae, align 1
  br label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit28

bb.g:                                             ; preds = %.preheader, %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit30
  %indvars.iv38 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next39, %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit30 ] ; 2 uses
  %.023 = phi i64 [ %1, %.preheader ], [ %i.af, %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit30 ] ; 3 uses
  %.022 = phi i32 [ 0, %.preheader ], [ %i.ax, %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit30 ] ; 2 uses
  %.not25 = icmp eq i64 %.023, 0
  br i1 %.not25, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = sdiv i64 %.023, 10
  %i.ag = srem i64 %.023, 10
  %i.ah = load i32, ptr %i.r, align 8
  %i.ai = add nsw i32 %i.ah, 2
  %i.aj = tail call noundef signext i8 @_ZN6icu_7810CharString14ensureCapacityEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %i.ai, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %.not.i29 = icmp eq i8 %i.aj, 0
  br i1 %.not.i29, label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit30, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = trunc nsw i64 %i.ag to i32
  %i.al = tail call i32 @llvm.abs.i32(i32 %i.ak, i1 true)
  %i.am = trunc nuw nsw i32 %i.al to i8
  %i.an = add nuw nsw i8 %i.am, 48
  %i.ao = load i32, ptr %i.r, align 8             ; 2 uses
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.r, align 8
  %i.aq = sext i32 %i.ao to i64
  %i.ar = load ptr, ptr %0, align 8
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.aq
  store i8 %i.an, ptr %i.as, align 1
  %i.at = load i32, ptr %i.r, align 8
  %i.au = sext i32 %i.at to i64
  %i.av = load ptr, ptr %0, align 8
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %i.au
  store i8 0, ptr %i.aw, align 1
  br label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit30

_ZN6icu_7810CharString6appendEcR10UErrorCode.exit30: ; preds = %bb.h, %bb.i
  %i.ax = add nuw nsw i32 %.022, 1
  %i.ay = load i32, ptr %2, align 4
  %i.az = icmp slt i32 %i.ay, 1
  %indvars.iv.next39 = add i64 %indvars.iv38, -1
  br i1 %i.az, label %bb.g, label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit28, !llvm.loop !8

bb.j:                                             ; preds = %bb.g
  %i.ba = load i32, ptr %i.r, align 8             ; 3 uses
  %i.bb = sub nsw i32 %i.ba, %.022
  %.033 = add nsw i32 %i.ba, -1
  %i.bc = icmp slt i32 %i.bb, %.033
  br i1 %i.bc, label %.lr.ph.preheader, label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit28

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.bd = sext i32 %i.ba to i64                   ; 2 uses
  %i.be = add nsw i64 %i.bd, -1
  %i.bf = add nsw i64 %indvars.iv38, %i.bd
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv41 = phi i64 [ %i.bf, %.lr.ph.preheader ], [ %indvars.iv.next42, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ %i.be, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.bg = load ptr, ptr %0, align 8               ; 2 uses
  %indvars.iv.next42 = add nsw i64 %indvars.iv41, 1 ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %indvars.iv41 ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 %indvars.iv ; 2 uses
  %i.bj = load i8, ptr %i.bh, align 1
  %i.bk = load i8, ptr %i.bi, align 1
  store i8 %i.bk, ptr %i.bh, align 1
  store i8 %i.bj, ptr %i.bi, align 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.bl = icmp slt i64 %indvars.iv.next42, %indvars.iv.next
  br i1 %i.bl, label %.lr.ph, label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit28, !llvm.loop !9

_ZN6icu_7810CharString6appendEcR10UErrorCode.exit28: ; preds = %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit30, %.lr.ph, %bb.j, %bb.f, %bb.e, %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN6icu_7810CharString15getAppendBufferEiiRiR10UErrorCode(ptr noundef nonnull align 8 captures(none) dereferenceable(60) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %4, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %3, align 4
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8              ; 3 uses
  %i.g = xor i32 %i.f, -1
  %i.h = add i32 %i.d, %i.g                       ; 2 uses
  %.not14 = icmp slt i32 %i.h, %1
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.h, ptr %3, align 4
  %i.i = load ptr, ptr %0, align 8
  %i.j = load i32, ptr %i.e, align 8
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 %i.k
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.m = add i32 %1, 1
  %i.n = add i32 %i.m, %i.f
  %i.o = add i32 %2, 1
  %i.p = add i32 %i.o, %i.f
  %i.q = tail call noundef signext i8 @_ZN6icu_7810CharString14ensureCapacityEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %i.n, i32 noundef %i.p, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %.not15 = icmp eq i8 %i.q, 0
  br i1 %.not15, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.c, align 8
  %i.s = load i32, ptr %i.e, align 8
  %i.t = xor i32 %i.s, -1
  %i.u = add i32 %i.r, %i.t
  store i32 %i.u, ptr %3, align 4
  %i.v = load ptr, ptr %0, align 8
  %i.w = load i32, ptr %i.e, align 8
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 %i.x
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 0, ptr %3, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.g, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ %i.l, %bb.d ], [ %i.y, %bb.f ], [ null, %bb.g ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString20appendInvariantCharsERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i16, ptr %i.a, align 8              ; 4 uses
  %i.c = and i16 %i.b, 17
  %.not.i = icmp eq i16 %i.c, 0
  br i1 %.not.i, label %bb.b, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = and i16 %i.b, 2
  %.not2.i = icmp eq i16 %i.d, 0
  br i1 %.not2.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 10
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

_ZNK6icu_7813UnicodeString9getBufferEv.exit:      ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.g, %bb.d ], [ %i.e, %bb.c ], [ null, %bb.a ] ; 2 uses
  %i.h = icmp slt i16 %i.b, 0
  %i.i = ashr i16 %i.b, 5
  %i.j = sext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load i32, ptr %i.k, align 4
  %i.m = select i1 %i.h, i32 %i.l, i32 %i.j       ; 4 uses
  %i.n = load i32, ptr %2, align 4
  %i.o = icmp slt i32 %i.n, 1
  br i1 %i.o, label %bb.e, label %_ZN6icu_7810CharString20appendInvariantCharsEPKDsiR10UErrorCode.exit

bb.e:                                             ; preds = %_ZNK6icu_7813UnicodeString9getBufferEv.exit
  %i.p = tail call signext i8 @uprv_isInvariantUString_78(ptr noundef %.0.i, i32 noundef %i.m) #13
  %.not10.i = icmp eq i8 %i.p, 0
  br i1 %.not10.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 26, ptr %2, align 4
  br label %_ZN6icu_7810CharString20appendInvariantCharsEPKDsiR10UErrorCode.exit

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = add i32 %i.m, 1
  %i.t = add i32 %i.s, %i.r
  %i.u = tail call noundef signext i8 @_ZN6icu_7810CharString14ensureCapacityEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %i.t, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %.not11.i = icmp eq i8 %i.u, 0
  br i1 %.not11.i, label %_ZN6icu_7810CharString20appendInvariantCharsEPKDsiR10UErrorCode.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %0, align 8
  %i.w = load i32, ptr %i.q, align 8
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 %i.x
  tail call void @u_UCharsToChars_78(ptr noundef %.0.i, ptr noundef %i.y, i32 noundef %i.m) #13
  %i.z = load i32, ptr %i.q, align 8
  %i.aa = add nsw i32 %i.z, %i.m                  ; 2 uses
  store i32 %i.aa, ptr %i.q, align 8
  %i.ab = sext i32 %i.aa to i64
  %i.ac = load ptr, ptr %0, align 8
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.ab
  store i8 0, ptr %i.ad, align 1
  br label %_ZN6icu_7810CharString20appendInvariantCharsEPKDsiR10UErrorCode.exit

_ZN6icu_7810CharString20appendInvariantCharsEPKDsiR10UErrorCode.exit: ; preds = %_ZNK6icu_7813UnicodeString9getBufferEv.exit, %bb.f, %bb.g, %bb.h
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString20appendInvariantCharsEPKDsiR10UErrorCode(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(60) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = tail call signext i8 @uprv_isInvariantUString_78(ptr noundef %1, i32 noundef %2) #13
  %.not10 = icmp eq i8 %i.c, 0
  br i1 %.not10, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 26, ptr %3, align 4
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = add i32 %2, 1
  %i.g = add i32 %i.f, %i.e
  %i.h = tail call noundef signext i8 @_ZN6icu_7810CharString14ensureCapacityEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %i.g, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %.not11 = icmp eq i8 %i.h, 0
  br i1 %.not11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %0, align 8
  %i.j = load i32, ptr %i.d, align 8
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 %i.k
  tail call void @u_UCharsToChars_78(ptr noundef %1, ptr noundef %i.l, i32 noundef %2) #13
  %i.m = load i32, ptr %i.d, align 8
  %i.n = add nsw i32 %i.m, %2                     ; 2 uses
  store i32 %i.n, ptr %i.d, align 8
  %i.o = sext i32 %i.n to i64
  %i.p = load ptr, ptr %0, align 8
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %i.o
  store i8 0, ptr %i.q, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a, %bb.c
  ret ptr %0
}

declare signext i8 @uprv_isInvariantUString_78(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @u_UCharsToChars_78(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString14appendPathPartENS_11StringPieceER10UErrorCode(ptr noundef nonnull returned align 8 dereferenceable(60) %0, ptr %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp sgt i32 %i.a, 0
  %i.c = icmp eq i32 %2, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8              ; 3 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8
  %i.h = zext nneg i32 %i.e to i64
  %i.i = getelementptr i8, ptr %i.g, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 -1
  %i.k = load i8, ptr %i.j, align 1
  %.not7 = icmp eq i8 %i.k, 47
  br i1 %.not7, label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add nuw nsw i32 %i.e, 2
  %i.m = tail call noundef signext i8 @_ZN6icu_7810CharString14ensureCapacityEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %i.l, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr %i.d, align 8              ; 2 uses
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.d, align 8
  %i.p = sext i32 %i.n to i64
  %i.q = load ptr, ptr %0, align 8
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.p
  store i8 47, ptr %i.r, align 1
  %i.s = load i32, ptr %i.d, align 8
  %i.t = sext i32 %i.s to i64
  %i.u = load ptr, ptr %0, align 8
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %i.t
  store i8 0, ptr %i.v, align 1
  br label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit

_ZN6icu_7810CharString6appendEcR10UErrorCode.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.w = tail call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef signext i8 @_ZNK6icu_7810CharString13getDirSepCharEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(60) %0) local_unnamed_addr #10 align 2 {
bb.a:
  ret i8 47
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString27ensureEndsWithFileSeparatorER10UErrorCode(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(60) %0, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8              ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8
  %i.g = zext nneg i32 %i.d to i64
  %i.h = getelementptr i8, ptr %i.f, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -1
  %i.j = load i8, ptr %i.i, align 1
  %.not5 = icmp eq i8 %i.j, 47
  br i1 %.not5, label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw nsw i32 %i.d, 2
  %i.l = tail call noundef signext i8 @_ZN6icu_7810CharString14ensureCapacityEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %i.k, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %.not.i = icmp eq i8 %i.l, 0
  br i1 %.not.i, label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.c, align 8              ; 2 uses
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.c, align 8
  %i.o = sext i32 %i.m to i64
  %i.p = load ptr, ptr %0, align 8
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %i.o
  store i8 47, ptr %i.q, align 1
  %i.r = load i32, ptr %i.c, align 8
  %i.s = sext i32 %i.r to i64
  %i.t = load ptr, ptr %0, align 8
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.s
  store i8 0, ptr %i.u, align 1
  br label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit

_ZN6icu_7810CharString6appendEcR10UErrorCode.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret ptr %0
}

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
end_hunk_0
