inline.NumInlined: 369
inline.NumDeleted: 245
begin_hunk_0_@_ZN10duckdb_re28BitState4PushEiPKc
define hidden void @_ZN10duckdb_re28BitState4PushEiPKc(ptr noundef nonnull align 8 captures(none) dereferenceable(116) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.LogMessage, align 8          ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !52   ; 3 uses
  %.not = icmp slt i32 %i.b, %i.d
end_hunk_0
begin_hunk_1_@_ZN10duckdb_re28BitState4PushEiPKc:bb.a
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #15 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !54   ; 3 uses
  %i.l = sext i32 %i.b to i64
  %i.m = shl nsw i64 %i.l, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.i, ptr align 8 %i.k, i64 %i.m, i1 false)
  store ptr %i.i, ptr %i.j, align 8, !tbaa !54
end_hunk_1
begin_hunk_2_@_ZN10duckdb_re28BitState4PushEiPKc:bb.a
  br label %_ZN10duckdb_re28BitState9GrowStackEv.exit

_ZN10duckdb_re28BitState9GrowStackEv.exit:        ; preds = %_ZN10duckdb_re28PODArrayINS_3JobEEC2Ei.exit.i, %bb.c
  %i.n = phi i32 [ %i.b, %_ZN10duckdb_re28PODArrayINS_3JobEEC2Ei.exit.i ], [ %.pre, %bb.c ] ; 2 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !3
  %.not18 = icmp slt i32 %i.n, %i.e
  br i1 %.not18, label %bb.h, label %bb.d
end_hunk_2
