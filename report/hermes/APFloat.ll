begin_hunk_0
bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.e = load i8, ptr %i.d, align 2               ; 3 uses
  %i.f = and i8 %i.e, 7                           ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.h = load i8, ptr %i.g, align 2               ; 2 uses
  %i.i = and i8 %i.h, 7
end_hunk_0
begin_hunk_1

bb.f:                                             ; preds = %bb.e
  %i.l = and i8 %i.e, 6
  %spec.select.i.not.i = icmp ne i8 %i.l, 0
  %2 = icmp ne i8 %i.f, 3
  %3 = and i1 %spec.select.i.not.i, %2
  br i1 %3, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_1
begin_hunk_2
  %1 = alloca %"class.llvh::detail::IEEEFloat", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.b = load i8, ptr %i.a, align 2               ; 2 uses
  %i.c = and i8 %i.b, 7                           ; 2 uses
  switch i8 %i.c, label %bb.b [
    i8 1, label %bb.g
    i8 3, label %.fold.split
end_hunk_2
begin_hunk_3

bb.b:                                             ; preds = %bb.a
  %i.d = and i8 %i.b, 6
  %spec.select.i.not.i.i = icmp ne i8 %i.d, 0
  %2 = icmp ne i8 %i.c, 3
  %3 = and i1 %spec.select.i.not.i.i, %2
  br i1 %3, label %bb.c, label %_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_3
begin_hunk_4
bb.b:                                             ; preds = %.lr.ph._crit_edge
  %i.h = getelementptr inbounds nuw i8, ptr %.tr13.lcssa, i64 26
  %i.i = load i8, ptr %i.h, align 2               ; 3 uses
  %i.j = and i8 %i.i, 7                           ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.tr614.lcssa, i64 26
  %i.l = load i8, ptr %i.k, align 2               ; 2 uses
  %i.m = and i8 %i.l, 7
end_hunk_4
begin_hunk_5

bb.e:                                             ; preds = %bb.d
  %i.p = and i8 %i.i, 6
  %spec.select.i.not.i.i = icmp ne i8 %i.p, 0
  %2 = icmp ne i8 %i.j, 3
  %3 = and i1 %spec.select.i.not.i.i, %2
  br i1 %3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.tr13.lcssa, i64 24
end_hunk_5
