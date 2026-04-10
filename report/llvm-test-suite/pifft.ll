inline.NumInlined: 52
begin_hunk_0_@mp_inv_newton:bb.a
.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.e = add i32 %0, 1
  %i.f = sext i32 %i.e to i64
  %11 = add nsw i32 %0, -2
  %.neg = xor i32 %i.a, -1
  %i.g = add i32 %11, %.neg
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = shl nuw nsw i64 %i.h, 2
  %i.j = sub nsw i64 %i.f, %i.h
end_hunk_0
begin_hunk_1_@mp_sqrt_init:bb.a
; Function Attrs: nounwind uwtable
define dso_local i32 @mp_sqrt_newton(i32 noundef %0, i32 noundef %1, ptr noundef readonly captures(none) %2, ptr noundef captures(none) %3, ptr noundef captures(none) %4, ptr noundef captures(none) %5, i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef captures(none) %11) local_unnamed_addr #7 {
bb.a:
  %i.a = ashr i32 %6, 1                           ; 10 uses
  %i.b = add nsw i32 %i.a, 1                      ; 3 uses
  %.neg131 = xor i32 %i.a, -1                     ; 2 uses
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.a, i32 2) ; 6 uses
  %i.c = sdiv i32 %0, 2
  %i.d = add nsw i32 %i.c, 1
end_hunk_1
begin_hunk_2_@mp_sqrt_newton:bb.a
.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.j = add nuw i32 %spec.select, 1
  %i.k = sext i32 %i.j to i64
  %12 = add nsw i32 %spec.select, -2
  %.neg = xor i32 %i.f, -1
  %i.l = add nsw i32 %12, %.neg
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = shl nuw nsw i64 %i.m, 2
  %i.o = sub nsw i64 %i.k, %i.m
end_hunk_2
begin_hunk_3_@mp_sqrt_newton:bb.a
.lr.ph.preheader.i103:                            ; preds = %bb.i
  %i.bu = add i32 %0, 1
  %i.bv = sext i32 %i.bu to i64
  %13 = add nsw i32 %0, -2
  %i.bw = add i32 %13, %.neg131
  %i.bx = zext i32 %i.bw to i64                   ; 2 uses
  %i.by = shl nuw nsw i64 %i.bx, 2
  %i.bz = sub nsw i64 %i.bv, %i.bx
end_hunk_3
begin_hunk_4_@mp_sqrt_newton:bb.a
.lr.ph.preheader.i120:                            ; preds = %bb.m
  %i.eo = add i32 %spec.select, 1
  %i.ep = sext i32 %i.eo to i64
  %14 = add nsw i32 %spec.select, -2
  %i.eq = add i32 %14, %.neg131
  %i.er = zext i32 %i.eq to i64                   ; 2 uses
  %i.es = shl nuw nsw i64 %i.er, 2
  %i.et = sub nsw i64 %i.ep, %i.er
end_hunk_4
