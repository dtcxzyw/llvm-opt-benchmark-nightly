begin_hunk_0
inline.NumInlined: 217
inline.NumDeleted: 76
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge97, %bb.d, %bb.ai, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
end_hunk_1
begin_hunk_2
; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN6icu_7820TimeZoneGenericNames14createInstanceERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = load i32, ptr %1, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZN6icu_7812LocalPointerINS_20TimeZoneGenericNamesEED2Ev.exit
end_hunk_2
begin_hunk_3
  store ptr %i.j, ptr @_ZN6icu_78L14gTZGNCoreCacheE, align 8
  %i.k = load i32, ptr %1, align 4
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call ptr @uhash_setKeyDeleter_78(ptr noundef %i.j, ptr noundef nonnull @uprv_free_78) #17 ; 0 uses
end_hunk_3
begin_hunk_4

bb.h:                                             ; preds = %bb.g, %bb.e
  %.pr = load i32, ptr %1, align 4
  %2 = icmp slt i32 %.pr, 1
  br i1 %2, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.p = tail call noundef ptr @_ZNK6icu_786Locale7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #17 ; 3 uses
end_hunk_4
begin_hunk_5
  br label %bb.t

bb.t:                                             ; preds = %.thread115, %bb.o, %bb.r, %bb.q, %bb.s
  %.243 = phi ptr [ %i.r, %bb.s ], [ %i.ac, %bb.o ], [ null, %bb.r ], [ null, %bb.q ], [ null, %.thread115 ] ; 4 uses
  %i.as = load i32, ptr @_ZN6icu_78L12gAccessCountE, align 4 ; 2 uses
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr @_ZN6icu_78L12gAccessCountE, align 4
end_hunk_5
begin_hunk_6
  %i.bk = load ptr, ptr @_ZN6icu_78L14gTZGNCoreCacheE, align 8
  %i.bl = call ptr @uhash_nextElement_78(ptr noundef %i.bk, ptr noundef nonnull %i.a) #17 ; 2 uses
  %.not.i = icmp eq ptr %i.bl, null
  br i1 %.not.i, label %bb.y, label %.lr.ph.i, !llvm.loop !14

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  store i32 0, ptr @_ZN6icu_78L12gAccessCountE, align 4
  call void @umtx_unlock_78(ptr noundef nonnull @_ZN6icu_78L9gTZGNLockE) #17
  %3 = icmp eq ptr %.243, null
  br i1 %3, label %.thread122, label %.thread69

.thread123:                                       ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  store i32 0, ptr @_ZN6icu_78L12gAccessCountE, align 4
  call void @umtx_unlock_78(ptr noundef nonnull @_ZN6icu_78L9gTZGNLockE) #17
end_hunk_6
begin_hunk_7
  %i.bn = icmp eq ptr %.243, null
  br i1 %i.bn, label %.thread122, label %.thread69

.thread69:                                        ; preds = %.thread123, %.thread121, %bb.y
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.243, ptr %i.bo, align 8
  br label %_ZN6icu_7812LocalPointerINS_20TimeZoneGenericNamesEED2Ev.exit

.critedge:                                        ; preds = %bb.f, %bb.h
  tail call void @umtx_unlock_78(ptr noundef nonnull @_ZN6icu_78L9gTZGNLockE) #17
  br label %.thread122

.thread122:                                       ; preds = %bb.y, %.thread123, %_ZN6icu_7812LocalPointerINS_20TimeZoneGenericNamesEEC2EPS1_R10UErrorCode.exit, %.critedge, %.thread121
  %i.bp = load ptr, ptr %i.d, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
end_hunk_7
