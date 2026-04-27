inline.NumInlined: 2
begin_hunk_0_@Try:.lr.ph
  %i.b = getelementptr inbounds [4 x i8], ptr %5, i64 %i.a ; 2 uses
  %i.c = icmp slt i32 %0, 8
  %i.d = add nsw i32 %0, 1
  br i1 %i.c, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %i.a
end_hunk_0
begin_hunk_1_@Try:.lr.ph
  %i.p = and i1 %i.o, %.not.us
  br i1 %i.p, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !10

.lr.ph.split:                                     ; preds = %.lr.ph
  store i32 0, ptr %1, align 4, !tbaa !4
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %7 = load i32, ptr %6, align 4, !tbaa !4
  %.not41 = icmp eq i32 %7, 0
  br i1 %.not41, label %.lr.ph.split.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.a
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4
end_hunk_1
begin_hunk_2_@Try:.lr.ph
  store i32 1, ptr %1, align 4, !tbaa !4
  br label %._crit_edge

.lr.ph.split.1:                                   ; preds = %bb.g, %bb.f, %.lr.ph.split
  store i32 0, ptr %1, align 4, !tbaa !4
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %.not41.1 = icmp eq i32 %i.ac, 0
end_hunk_2
begin_hunk_3_@Try:.lr.ph
  br i1 %.not43.1, label %.lr.ph.split.2, label %.thread53

.lr.ph.split.2:                                   ; preds = %bb.i, %bb.h, %.lr.ph.split.1
  store i32 0, ptr %1, align 4, !tbaa !4
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %.not41.2 = icmp eq i32 %i.al, 0
end_hunk_3
begin_hunk_4_@Try:.lr.ph
  br i1 %.not43.2, label %.lr.ph.split.3, label %.thread53

.lr.ph.split.3:                                   ; preds = %bb.k, %bb.j, %.lr.ph.split.2
  store i32 0, ptr %1, align 4, !tbaa !4
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %.not41.3 = icmp eq i32 %i.au, 0
end_hunk_4
begin_hunk_5_@Try:.lr.ph
  br i1 %.not43.3, label %.lr.ph.split.4, label %.thread53

.lr.ph.split.4:                                   ; preds = %bb.m, %bb.l, %.lr.ph.split.3
  store i32 0, ptr %1, align 4, !tbaa !4
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !4
  %.not41.4 = icmp eq i32 %i.bd, 0
end_hunk_5
begin_hunk_6_@Try:.lr.ph
  br i1 %.not43.4, label %.lr.ph.split.5, label %.thread53

.lr.ph.split.5:                                   ; preds = %bb.o, %bb.n, %.lr.ph.split.4
  store i32 0, ptr %1, align 4, !tbaa !4
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !4
  %.not41.5 = icmp eq i32 %i.bm, 0
end_hunk_6
begin_hunk_7_@Try:.lr.ph
  br i1 %.not43.5, label %.lr.ph.split.6, label %.thread53

.lr.ph.split.6:                                   ; preds = %bb.q, %bb.p, %.lr.ph.split.5
  store i32 0, ptr %1, align 4, !tbaa !4
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !4
  %.not41.6 = icmp eq i32 %i.bv, 0
end_hunk_7
begin_hunk_8_@Try:.lr.ph
  br i1 %.not43.6, label %.lr.ph.split.7, label %.thread53

.lr.ph.split.7:                                   ; preds = %bb.s, %bb.r, %.lr.ph.split.6
  store i32 0, ptr %1, align 4, !tbaa !4
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !4
  %.not41.7 = icmp eq i32 %i.cd, 0
end_hunk_8
