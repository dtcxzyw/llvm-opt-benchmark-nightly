inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@SubPelBlockMotionSearch:bb.a
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.f, %bb.f, %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 2936
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !45
  %i.at = icmp ne i32 %i.as, 0
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.h, %bb.g
  %i.au = phi i1 [ false, %bb.h ], [ false, %bb.g ], [ %i.at, %bb.i ] ; 4 uses
  %i.av = add nsw i32 %i.ag, %2
  %i.aw = sext i32 %i.av to i64                   ; 5 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr @listX, i64 %i.aw
end_hunk_0
begin_hunk_1_@SubPelBlockMotionSearch:bb.a
.lr.ph:                                           ; preds = %bb.q
  %i.dr = sext i16 %6 to i32                      ; 2 uses
  %i.ds = sext i16 %7 to i32                      ; 2 uses
  %14 = select i1 %i.au, i64 4, i64 1
  %15 = getelementptr inbounds nuw [8 x i8], ptr @computeUniPred, i64 %14 ; 2 uses
  %i.dt = ashr i32 %i.bn, 12
  %i.du = sext i32 %i.w to i64                    ; 2 uses
  %.pre221.a = load ptr, ptr @spiral_hpel_search_x, align 8, !tbaa !68 ; 2 uses
end_hunk_1
begin_hunk_2_@SubPelBlockMotionSearch:bb.a
bb.r:                                             ; preds = %.lr.ph.split.us
  %i.ev = add nsw i32 %i.ed, %i.t
  %i.ew = add nsw i32 %i.ej, %i.v
  %i.ex = load ptr, ptr %15, align 8, !tbaa !8
  %i.ey = sub nsw i32 %.0189.us, %i.eu
  %i.ez = tail call i32 %i.ex(ptr noundef %0, i32 noundef %i.r, i32 noundef %i.p, i32 noundef %i.ey, i32 noundef %i.ev, i32 noundef %i.ew) #2
  %.0156.us = add i32 %i.eu, %i.ez                ; 2 uses
end_hunk_2
begin_hunk_3_@SubPelBlockMotionSearch:bb.a
bb.t:                                             ; preds = %.lr.ph.split
  %i.gf = add nsw i32 %i.fn, %i.t
  %i.gg = add nsw i32 %i.ft, %i.v
  %i.gh = load ptr, ptr %15, align 8, !tbaa !8
  %i.gi = sub nsw i32 %.0189, %i.ge
  %i.gj = tail call i32 %i.gh(ptr noundef %0, i32 noundef %i.r, i32 noundef %i.p, i32 noundef %i.gi, i32 noundef %i.gf, i32 noundef %i.gg) #2
  %i.gk = icmp eq i64 %indvars.iv204, 0
end_hunk_3
begin_hunk_4_@SubPelBlockMotionSearch:bb.a
.lr.ph196:                                        ; preds = %bb.z
  %i.hp = sext i16 %6 to i32
  %i.hq = sext i16 %7 to i32
  %16 = select i1 %i.au, i64 5, i64 2
  %17 = getelementptr inbounds nuw [8 x i8], ptr @computeUniPred, i64 %16
  %i.hr = sext i32 %i.hc to i64
  %.pre229.a = load ptr, ptr @spiral_search_x, align 8, !tbaa !68
  %.pre231.a = load ptr, ptr @spiral_search_y, align 8, !tbaa !68
end_hunk_4
begin_hunk_5_@SubPelBlockMotionSearch:bb.a
bb.ab:                                            ; preds = %bb.aa
  %i.is = add nsw i32 %i.ia, %i.t
  %i.it = add nsw i32 %i.ig, %i.v
  %i.iu = load ptr, ptr %17, align 8, !tbaa !8
  %i.iv = sub nsw i32 %.3194, %i.ir
  %i.iw = tail call i32 %i.iu(ptr noundef %0, i32 noundef %i.r, i32 noundef %i.p, i32 noundef %i.iv, i32 noundef %i.is, i32 noundef %i.it) #2
  %i.ix = add nsw i32 %i.iw, %i.ir                ; 2 uses
end_hunk_5
