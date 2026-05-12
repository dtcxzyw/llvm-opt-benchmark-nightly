inline.NumInlined: 48
inline.NumDeleted: 34
begin_hunk_0_@_ZN6hermes11SNPrintfBuf6printfEPKcz:bb.a
  call void @llvm.va_copy.p0(ptr nonnull %3, ptr nonnull %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !19
  %i.e = sext i32 %i.d to i64
  %i.f = call i32 @vsnprintf(ptr noundef %i.b, i64 noundef %i.e, ptr noundef %1, ptr noundef nonnull %2) #8 ; 3 uses
  %i.g = load i32, ptr %i.c, align 8, !tbaa !19   ; 3 uses
  %.not = icmp slt i32 %i.f, %i.g
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, 1
  %i.i = load i32, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.j = shl nsw i32 %i.i, 1
  %.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.h, i32 %i.j) ; 3 uses
  %i.k = sext i32 %.sroa.speculated.i to i64
  %i.l = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #7 ; 3 uses
  %i.m = sub nsw i32 %i.i, %i.g                   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17   ; 3 uses
  %i.p = add nsw i32 %i.m, 1
end_hunk_0
begin_hunk_1_@_ZN6hermes11SNPrintfBuf7reallocEi
define hidden void @_ZN6hermes11SNPrintfBuf7reallocEi(ptr noundef nonnull align 8 captures(none) dereferenceable(28) initializes((16, 24)) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = add nsw i32 %1, 1
  %i.b = load i32, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.c = shl nsw i32 %i.b, 1
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.a, i32 %i.c) ; 3 uses
  %i.d = sext i32 %.sroa.speculated to i64
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #7 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !19
  %i.h = sub nsw i32 %i.b, %i.g                   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17   ; 3 uses
  %i.k = add nsw i32 %i.h, 1
end_hunk_1
