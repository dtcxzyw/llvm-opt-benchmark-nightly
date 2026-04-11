inline.NumInlined: 1
begin_hunk_0_@png_do_strip_channel
define void @png_do_strip_channel(ptr noundef captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !39   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %i.b ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 3 uses
  %i.e = load i8, ptr %i.d, align 2, !tbaa !53
  switch i8 %i.e, label %bb.k [
end_hunk_0
begin_hunk_1_@png_do_strip_channel:bb.a

bb.c:                                             ; preds = %bb.b
  %.not87.a = icmp eq i32 %2, 0                   ; 2 uses
  %.074.idx = zext i1 %.not87.a to i64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.074.idx ; 2 uses
  %.pn90 = select i1 %.not87.a, i64 2, i64 1      ; 2 uses
  %i.i = icmp samesign ult i64 %.pn90, %i.b
  br i1 %i.i, label %.lr.ph108.preheader, label %._crit_edge106

.lr.ph108.preheader:                              ; preds = %bb.c
  %.0 = getelementptr inbounds nuw i8, ptr %1, i64 %.pn90
  br label %.lr.ph105

.lr.ph105:                                        ; preds = %.lr.ph108.preheader, %.lr.ph105
  %.1103 = phi ptr [ %i.l, %.lr.ph105 ], [ %.0, %.lr.ph108.preheader ] ; 2 uses
  %.175102 = phi ptr [ %i.k, %.lr.ph105 ], [ %i.h, %.lr.ph108.preheader ] ; 2 uses
  %i.j = load i8, ptr %.1103, align 1, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %.175102, i64 1 ; 2 uses
  store i8 %i.j, ptr %.175102, align 1, !tbaa !27
end_hunk_1
begin_hunk_2_@png_do_strip_channel:bb.a

bb.d:                                             ; preds = %bb.b
  %.not86 = icmp eq i32 %2, 0                     ; 2 uses
  %.276.idx = select i1 %.not86, i64 2, i64 0
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.276.idx ; 2 uses
  %.pn88 = select i1 %.not86, i64 4, i64 2        ; 2 uses
  %i.o = icmp samesign ult i64 %.pn88, %i.b
  br i1 %i.o, label %.lr.ph102.preheader, label %._crit_edge106

.lr.ph102.preheader:                              ; preds = %bb.d
  %.2 = getelementptr inbounds nuw i8, ptr %1, i64 %.pn88
  br label %.lr.ph99

.lr.ph99:                                         ; preds = %.lr.ph102.preheader, %.lr.ph99
  %.397 = phi ptr [ %i.u, %.lr.ph99 ], [ %.2, %.lr.ph102.preheader ] ; 3 uses
  %.37796 = phi ptr [ %i.t, %.lr.ph99 ], [ %i.n, %.lr.ph102.preheader ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.397, i64 1
  %i.q = load i8, ptr %.397, align 1, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %.37796, i64 1
end_hunk_2
begin_hunk_3_@png_do_strip_channel:bb.a
  br i1 %i.v, label %.lr.ph99, label %._crit_edge106, !llvm.loop !58

._crit_edge106:                                   ; preds = %.lr.ph99, %.lr.ph105, %bb.d, %bb.c
  %.478 = phi ptr [ %i.h, %bb.c ], [ %i.n, %bb.d ], [ %i.k, %.lr.ph105 ], [ %i.t, %.lr.ph99 ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.g, ptr %i.w, align 1, !tbaa !59
  store i8 1, ptr %i.d, align 2, !tbaa !53
end_hunk_3
