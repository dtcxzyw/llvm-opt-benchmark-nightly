begin_hunk_0
; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal i64 @finish_cp50220_encoder(ptr noundef captures(none) %0, ptr noundef %1, i64 %2) #4 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !10      ; 2 uses
  switch i8 %i.a, label %3 [
    i8 0, label %bb.e
    i8 3, label %bb.b
  ]
end_hunk_0
begin_hunk_1
  %.0.i = getelementptr inbounds nuw i8, ptr %1, i64 3
  br label %iso2022jp_put_state.exit

iso2022jp_put_state.exit:                         ; preds = %bb.c, %bb.d
  %.1.i = phi ptr [ %.0.i, %bb.d ], [ %1, %bb.c ] ; 3 uses
  store i8 2, ptr %0, align 1, !tbaa !10
  %i.l = getelementptr i8, ptr %i.f, i64 -65
end_hunk_1
begin_hunk_2
  %i.n = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  store i8 %i.m, ptr %.1.i, align 1, !tbaa !10
  %i.o = load i8, ptr %i.l, align 1, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %.1.i, i64 2
  store i8 %i.o, ptr %i.n, align 1, !tbaa !10
  %.pre = load i8, ptr %0, align 1, !tbaa !10
  br label %3

3:                                                ; preds = %bb.a, %iso2022jp_put_state.exit
  %4 = phi i8 [ %.pre, %iso2022jp_put_state.exit ], [ %i.a, %bb.a ]
  %.020 = phi ptr [ %i.p, %iso2022jp_put_state.exit ], [ %1, %bb.a ] ; 2 uses
  %.not.i23 = icmp eq i8 %4, 0
  br i1 %.not.i23, label %iso2022jp_put_state.exit26, label %.thread

.thread:                                          ; preds = %bb.b, %3
  %.02030 = phi ptr [ %.020, %3 ], [ %1, %bb.b ]  ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.02030, i64 1
  store i8 27, ptr %.02030, align 1, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %.02030, i64 2
end_hunk_2
begin_hunk_3
  store i8 0, ptr %0, align 1, !tbaa !10
  br label %iso2022jp_put_state.exit26

iso2022jp_put_state.exit26:                       ; preds = %3, %.thread
  %.1.i25 = phi ptr [ %.0.i24, %.thread ], [ %.020, %3 ]
  %i.s = ptrtoint ptr %.1.i25 to i64
  %i.t = ptrtoint ptr %1 to i64
  %i.u = sub i64 %i.s, %i.t
end_hunk_3
