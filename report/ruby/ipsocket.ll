inline.NumInlined: 107
inline.NumDeleted: 39
begin_hunk_0_@ip_inspect:bb.a
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [1024 x i8], align 16             ; 4 uses
  %i.c = alloca [1024 x i8], align 16             ; 4 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %i.e = tail call i64 @rb_call_super(i32 noundef 0, ptr noundef null) #16 ; 6 uses
  %i.f = inttoptr i64 %0 to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
end_hunk_0
begin_hunk_1_@ip_inspect:bb.a

bb.h:                                             ; preds = %RSTRING_PTR.exit, %bb.e
  %.0 = phi i64 [ %i.t, %bb.e ], [ %spec.select, %RSTRING_PTR.exit ]
  %i.af = phi i8 [ 0, %bb.e ], [ %spec.select28, %RSTRING_PTR.exit ]
  store i8 %i.af, ptr %i.d, align 1, !tbaa !96
  %i.ag = call i64 @rb_str_subseq(i64 noundef %i.e, i64 noundef 0, i64 noundef %.0) #16 ; 8 uses
  %i.ah = call i64 @rb_str_cat(i64 noundef %i.ag, ptr noundef nonnull @.str.37, i64 noundef 2) #16 ; 0 uses
end_hunk_1
begin_hunk_2_@ip_inspect:bb.a
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %2 = load i8, ptr %i.d, align 1, !tbaa !96
  %.not27 = icmp eq i8 %2, 0
  br i1 %.not27, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
end_hunk_2
