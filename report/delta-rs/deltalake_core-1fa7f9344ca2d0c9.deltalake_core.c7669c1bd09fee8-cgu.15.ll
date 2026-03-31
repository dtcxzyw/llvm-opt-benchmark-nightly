begin_hunk_0
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 14, i64 24, i1 false)
  %2 = trunc i64 %1 to i32
  %3 = icmp sgt i32 %2, 2146764484
  br i1 %3, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = trunc i64 %1 to i32
end_hunk_0
begin_hunk_1
  store i64 %2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !577
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 14, i64 24, i1 false), !noalias !577
  %3 = trunc i64 %1 to i32                        ; 2 uses
  %4 = icmp sgt i32 %3, 2146764484
  br i1 %4, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %3, 719163
  %i.e = invoke noundef i32 @_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate25from_num_days_from_ce_opt(i32 noundef %i.d)
          to label %.noexc.i unwind label %bb.c, !noalias !577 ; 3 uses

end_hunk_1
