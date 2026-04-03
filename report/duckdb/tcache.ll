begin_hunk_0
bb.e:                                             ; preds = %bb.d
  %i.q = zext nneg i16 %i.p to i32                ; 2 uses
  %i.r = lshr i32 %i.q, 2
  %i.s = sub nsw i32 %i.q, %i.r                   ; 3 uses
  %1 = sext i32 %i.s to i64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.f ; 3 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !33    ; 2 uses
  %2 = zext i8 %i.v to i64
  %i.w = icmp ult i64 %1, %2
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = trunc i32 %i.s to i8
  %i.y = sub i8 %i.v, %i.x
  store i8 %i.y, ptr %i.u, align 1, !tbaa !33
  br label %tcache_gc_small.exit
end_hunk_0
