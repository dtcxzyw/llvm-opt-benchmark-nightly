inline.NumInlined: 29
inline.NumDeleted: 15
begin_hunk_0_@write_header_as_C:bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !244 ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %bb.e, label %3

3:                                                ; preds = %.loopexit91.a
  %4 = icmp slt i32 %i.ap, 0
  br i1 %4, label %bb.d, label %bb.v

bb.d:                                             ; preds = %3
  %i.ar = icmp ne i32 %.073.lcssa, 0
  %i.as = icmp ne i32 %.272, 0
  %or.cond.a = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond.a, label %bb.e, label %bb.v

bb.e:                                             ; preds = %bb.d, %.loopexit91.a
end_hunk_0
begin_hunk_1_@write_header_as_C:bb.a
  %i.ds = call i64 @fwrite(ptr nonnull @.str.27, i64 7, i64 1, ptr %i.au) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %3, %bb.d, %.loopexit
  %.0 = phi i32 [ 1, %.loopexit ], [ 0, %bb.d ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.0
}
end_hunk_1
