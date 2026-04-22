inline.NumInlined: 68
inline.NumDeleted: 32
begin_hunk_0_@ucnvsel_selectForString_78:bb.a
bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = add nsw i32 %i.g, 31
  %i.i = sdiv i32 %i.h, 32                        ; 3 uses
  %i.j = shl nsw i32 %i.i, 2
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  %i.l = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.k) #13 ; 9 uses
end_hunk_0
begin_hunk_1_@ucnvsel_selectForString_78:bb.a
  %wide.trip.count.i = zext i32 %i.i to i64       ; 6 uses
  %i.t = shl nuw nsw i64 %wide.trip.count.i, 2    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.l, i64 %i.t
  %min.iters.check = icmp ult i32 %i.i, 8
  %n.vec = and i64 %wide.trip.count.i, 67108856   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
end_hunk_1
begin_hunk_2_@ucnvsel_selectForUTF8_78:bb.a
bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = add nsw i32 %i.g, 31
  %i.i = sdiv i32 %i.h, 32                        ; 3 uses
  %i.j = shl nsw i32 %i.i, 2
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  %i.l = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.k) #13 ; 9 uses
end_hunk_2
begin_hunk_3_@ucnvsel_selectForUTF8_78:bb.a
  %wide.trip.count.i = zext i32 %i.i to i64       ; 6 uses
  %i.u = shl nuw nsw i64 %wide.trip.count.i, 2    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.l, i64 %i.u
  %min.iters.check = icmp ult i32 %i.i, 8
  %n.vec = and i64 %wide.trip.count.i, 67108856   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
end_hunk_3
