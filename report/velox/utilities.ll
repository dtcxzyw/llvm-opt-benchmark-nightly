begin_hunk_0
bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(10) ptr @malloc(i64 noundef 10) #14 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %create_s.exit.thread, label %create_s.exit

create_s.exit.thread:                             ; preds = %bb.b
  store ptr null, ptr %0, align 8, !tbaa !13
  br label %bb.m

create_s.exit:                                    ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1
  store i32 %i.h, ptr %5, align 4, !tbaa !3
  br label %bb.m

bb.m:                                             ; preds = %increase_size.exit.thread, %create_s.exit.thread, %bb.k, %bb.l
  %.0 = phi i32 [ -1, %increase_size.exit.thread ], [ -1, %create_s.exit.thread ], [ 0, %bb.l ], [ 0, %bb.k ]
  ret i32 %.0
}

end_hunk_1
