inline.NumInlined: 9
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZTV17CBaseRecordVector = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI17CBaseRecordVector, ptr @_ZN17CBaseRecordVectorD2Ev, ptr @_ZN17CBaseRecordVectorD0Ev, ptr @_ZN17CBaseRecordVector6DeleteEii] }, align 8
@_ZTIi = external constant ptr
@_ZTI17CBaseRecordVector = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS17CBaseRecordVector }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS17CBaseRecordVector = dso_local constant [20 x i8] c"17CBaseRecordVector\00", align 1

@_ZN17CBaseRecordVectorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN17CBaseRecordVectorD2Ev

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 captures(none) dead_on_return(32) dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17CBaseRecordVector, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !10
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.a, label %_ZN17CBaseRecordVector6DeleteEii.exit

bb.a:                                             ; preds = %.noexc
  store i32 0, ptr %i.a, align 4, !tbaa !10
  br label %_ZN17CBaseRecordVector6DeleteEii.exit

_ZN17CBaseRecordVector6DeleteEii.exit:            ; preds = %.noexc, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN17CBaseRecordVector6DeleteEii.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN17CBaseRecordVector6DeleteEii.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17CBaseRecordVector12ClearAndFreeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !10
  %i.c = load ptr, ptr %0, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 0, i32 noundef %i.b), !inline_history !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14   ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN17CBaseRecordVectorD0Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17CBaseRecordVector, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !10
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN17CBaseRecordVector6DeleteEii.exit.i

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 4, !tbaa !10
  br label %_ZN17CBaseRecordVector6DeleteEii.exit.i

_ZN17CBaseRecordVector6DeleteEii.exit.i:          ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN17CBaseRecordVectorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN17CBaseRecordVector6DeleteEii.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #9, !inline_history !16
  br label %_ZN17CBaseRecordVectorD2Ev.exit

_ZN17CBaseRecordVectorD2Ev.exit:                  ; preds = %_ZN17CBaseRecordVector6DeleteEii.exit.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #9
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !10
  %i.c = load ptr, ptr %0, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 0, i32 noundef %i.b), !inline_history !17
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17CBaseRecordVector10DeleteFromEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !10
  %i.c = sub nsw i32 %i.b, %1
  %i.d = load ptr, ptr %0, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %i.c)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17CBaseRecordVector10DeleteBackEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !10
  %i.c = add nsw i32 %i.b, -1
  %i.d = load ptr, ptr %0, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.c, i32 noundef 1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !10   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = icmp sgt i32 %i.b, 63
  %i.f = lshr i32 %i.b, 2
  %.inv = icmp slt i32 %i.b, 8
  %spec.select = select i1 %.inv, i32 1, i32 8
  %.0 = select i1 %i.e, i32 %i.f, i32 %spec.select
  %i.g = add nsw i32 %.0, %i.b
  tail call void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18
  %i.c = icmp eq i32 %1, %i.b
  br i1 %i.c, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %1, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 4) #10 ; 2 uses
  store i32 1052353, ptr %i.e, align 16, !tbaa !4
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIi, ptr null) #11
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = zext nneg i32 %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.h, i64 %i.f) ; 2 uses
  %mul.val = extractvalue { i64, i1 } %mul, 0     ; 2 uses
  %mul.ov = extractvalue { i64, i1 } %mul, 1
  br i1 %mul.ov, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = tail call ptr @__cxa_allocate_exception(i64 4) #10 ; 2 uses
  store i32 1052354, ptr %i.i, align 16, !tbaa !4
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIi, ptr null) #11
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not = icmp eq i64 %mul.val, 0
  br i1 %.not, label %._crit_edge, label %bb.g

._crit_edge:                                      ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !14
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %mul.val) #12 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !10
  %i.m = tail call i32 @llvm.smin.i32(i32 %i.l, i32 %1)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14   ; 2 uses
  %2 = load i64, ptr %i.g, align 8, !tbaa !19
  %i.p = sext i32 %i.m to i64
  %i.q = mul i64 %2, %i.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.o, i64 %i.q, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %i.r = phi ptr [ %i.o, %bb.g ], [ %.pre, %._crit_edge ] ; 2 uses
  %.0 = phi ptr [ %i.j, %bb.g ], [ null, %._crit_edge ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = icmp eq ptr %i.r, null
  br i1 %i.t, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdaPv(ptr noundef nonnull %i.r) #9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr %.0, ptr %i.s, align 8, !tbaa !14
  store i32 %1, ptr %i.a, align 8, !tbaa !18
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17CBaseRecordVector11ReserveDownEv(ptr noundef nonnull align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !10
  tail call void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN17CBaseRecordVector9MoveItemsEii(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19   ; 3 uses
  %i.f = mul i64 %i.e, %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f
  %i.h = sext i32 %2 to i64
  %i.i = mul i64 %i.e, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !10
  %i.m = sub nsw i32 %i.l, %2
  %i.n = sext i32 %i.m to i64
  %i.o = mul i64 %i.e, %i.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.j, i64 %i.o, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17CBaseRecordVector13InsertOneItemEi(ptr noundef nonnull align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !10   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18
  %.not.i = icmp eq i32 %i.b, %i.d
  br i1 %.not.i, label %bb.b, label %_ZN17CBaseRecordVector18ReserveOnePositionEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp sgt i32 %i.b, 63
  %i.f = lshr i32 %i.b, 2
  %.inv.i = icmp slt i32 %i.b, 8
  %spec.select.i = select i1 %.inv.i, i32 1, i32 8
  %.0.i = select i1 %i.e, i32 %i.f, i32 %spec.select.i
  %i.g = add nsw i32 %.0.i, %i.b
  tail call void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.g)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !10
  br label %_ZN17CBaseRecordVector18ReserveOnePositionEv.exit

_ZN17CBaseRecordVector18ReserveOnePositionEv.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.b, %bb.a ], [ %.pre, %bb.b ]
  %i.i = add nsw i32 %1, 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14   ; 2 uses
  %i.l = sext i32 %i.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !19   ; 3 uses
  %i.o = mul i64 %i.n, %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.o
  %i.q = sext i32 %1 to i64
  %i.r = mul i64 %i.n, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.r
  %i.t = sub nsw i32 %i.h, %1
  %i.u = sext i32 %i.t to i64
  %i.v = mul i64 %i.n, %i.u
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.s, i64 %i.v, i1 false)
  %i.w = load i32, ptr %i.a, align 4, !tbaa !10
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.a, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN17CBaseRecordVector6DeleteEii(ptr noundef nonnull align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 align 2 {
_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit:
  %i.a = add nsw i32 %2, %1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !10   ; 3 uses
  %i.d = icmp sgt i32 %i.a, %i.c
  %i.e = sub nsw i32 %i.c, %1
  %spec.select = select i1 %i.d, i32 %i.e, i32 %2 ; 3 uses
  %i.f = icmp sgt i32 %spec.select, 0
  br i1 %i.f, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
  %i.g = add nsw i32 %spec.select, %1             ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14   ; 2 uses
  %i.j = sext i32 %1 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !19   ; 3 uses
  %i.m = mul i64 %i.l, %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.m
  %i.o = sext i32 %i.g to i64
  %i.p = mul i64 %i.l, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.p
  %i.r = sub nsw i32 %i.c, %i.g
  %i.s = sext i32 %i.r to i64
  %i.t = mul i64 %i.l, %i.s
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.q, i64 %i.t, i1 false)
  %i.u = load i32, ptr %i.b, align 4, !tbaa !10
  %i.v = sub nsw i32 %i.u, %spec.select
  store i32 %i.v, ptr %i.b, align 4, !tbaa !10
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { builtin nounwind }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !5, i64 12}
!11 = !{!"_ZTS17CBaseRecordVector", !5, i64 8, !5, i64 12, !12, i64 16, !13, i64 24}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!11, !12, i64 16}
!15 = !{ptr @_ZN17CBaseRecordVector5ClearEv, ptr @_ZN17CBaseRecordVector10DeleteFromEi}
!16 = !{ptr @_ZN17CBaseRecordVectorD2Ev}
!17 = !{ptr @_ZN17CBaseRecordVector10DeleteFromEi}
!18 = !{!11, !5, i64 8}
!19 = !{!11, !13, i64 24}
end_hunk_0
