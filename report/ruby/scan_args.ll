inline.NumInlined: 62
inline.NumDeleted: 6
begin_hunk_0_@scan_args_var_trail:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i64 %i.q
}

; Function Attrs: nounwind uwtable
define internal i64 @scan_args_lead_var_trail(i32 noundef %0, ptr noundef %1, i64 %2) #0 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.d = icmp slt i32 %0, 2
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %1, align 8, !tbaa !10
  store i64 %i.f, ptr %i.e, align 8, !tbaa !10
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i32 %0, -2
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = tail call i64 @rb_ary_new_from_values(i64 noundef %i.h, ptr noundef nonnull %i.i) #4
  store i64 %i.j, ptr %i.b, align 16, !tbaa !10
  %i.k = add nsw i32 %0, -1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = tail call i64 @rb_ary_new() #4
  store i64 %i.l, ptr %i.b, align 16, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.4.i = phi i32 [ 1, %bb.d ], [ %i.k, %bb.c ]   ; 2 uses
  %i.m = zext nneg i32 %.4.i to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !10
  store i64 %i.o, ptr %i.c, align 8, !tbaa !10
  %i.p = add nuw nsw i32 %.4.i, 1
  %i.q = icmp eq i32 %i.p, %0
  br i1 %i.q, label %rb_scan_args_set.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 2, i32 noundef -1) #5
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.e
  %i.r = shl nuw i32 %0, 1
  %i.s = or disjoint i32 %i.r, 1
  %i.t = zext i32 %i.s to i64
  store i64 %i.t, ptr %i.a, align 16, !tbaa !10
  %i.u = call i64 @rb_ary_new_from_values(i64 noundef 4, ptr noundef nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i64 %i.u
}

; Function Attrs: nounwind uwtable
define internal i64 @scan_args_opt_var_trail(i32 noundef %0, ptr noundef %1, i64 %2) #0 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = icmp slt i32 %0, 1
  br i1 %i.e, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.f = load i64, ptr %1, align 8, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.b
  %.sink = phi i64 [ %i.f, %bb.b ], [ 4, %.preheader ]
  %.185.i.lcssa = phi i32 [ 1, %bb.b ], [ 0, %.preheader ] ; 3 uses
  store i64 %.sink, ptr %i.b, align 8, !tbaa !10
  %.neg = xor i32 %.185.i.lcssa, -1
  %i.g = add nsw i32 %0, %.neg                    ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = zext nneg i32 %i.g to i64
  %i.j = zext nneg i32 %.185.i.lcssa to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.j
  %i.l = tail call i64 @rb_ary_new_from_values(i64 noundef %i.i, ptr noundef %i.k) #4
  store i64 %i.l, ptr %i.c, align 16, !tbaa !10
  %i.m = add nsw i32 %0, -1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = tail call i64 @rb_ary_new() #4
  store i64 %i.n, ptr %i.c, align 16, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.4.i = phi i32 [ %.185.i.lcssa, %bb.e ], [ %i.m, %bb.d ] ; 2 uses
  %i.o = zext nneg i32 %.4.i to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !10
  store i64 %i.q, ptr %i.d, align 8, !tbaa !10
  %i.r = add nuw nsw i32 %.4.i, 1
  %i.s = icmp eq i32 %i.r, %0
  br i1 %i.s, label %rb_scan_args_set.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef -1) #5
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.f
  %i.t = shl nuw i32 %0, 1
  %i.u = or disjoint i32 %i.t, 1
  %i.v = zext i32 %i.u to i64
  store i64 %i.v, ptr %i.a, align 16, !tbaa !10
  %i.w = call i64 @rb_ary_new_from_values(i64 noundef 4, ptr noundef nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i64 %i.w
}

; Function Attrs: nounwind uwtable
define internal i64 @scan_args_lead_opt_var_trail(i32 noundef %0, ptr noundef %1, i64 %2) #0 {
bb.a:
  %i.a = alloca [5 x i64], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = icmp slt i32 %0, 2
  br i1 %i.e, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %1, align 8, !tbaa !10
  store i64 %i.g, ptr %i.f, align 8, !tbaa !10
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.b
  %.sink = phi i64 [ %i.i, %bb.b ], [ 4, %.preheader ]
  %.185.i.lcssa = phi i32 [ 2, %bb.b ], [ 1, %.preheader ] ; 3 uses
  store i64 %.sink, ptr %i.b, align 16, !tbaa !10
  %.neg = xor i32 %.185.i.lcssa, -1
  %i.j = add nsw i32 %0, %.neg                    ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = zext nneg i32 %i.j to i64
  %i.m = zext nneg i32 %.185.i.lcssa to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.m
  %i.o = tail call i64 @rb_ary_new_from_values(i64 noundef %i.l, ptr noundef nonnull %i.n) #4
  store i64 %i.o, ptr %i.c, align 8, !tbaa !10
  %i.p = add nsw i32 %0, -1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.q = tail call i64 @rb_ary_new() #4
  store i64 %i.q, ptr %i.c, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.4.i = phi i32 [ %.185.i.lcssa, %bb.e ], [ %i.p, %bb.d ] ; 2 uses
  %i.r = zext nneg i32 %.4.i to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8, !tbaa !10
  store i64 %i.t, ptr %i.d, align 16, !tbaa !10
  %i.u = add nuw nsw i32 %.4.i, 1
  %i.v = icmp eq i32 %i.u, %0
  br i1 %i.v, label %rb_scan_args_set.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 2, i32 noundef -1) #5
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.f
  %i.w = shl nuw i32 %0, 1
  %i.x = or disjoint i32 %i.w, 1
  %i.y = zext i32 %i.x to i64
  store i64 %i.y, ptr %i.a, align 16, !tbaa !10
  %i.z = call i64 @rb_ary_new_from_values(i64 noundef 5, ptr noundef nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i64 %i.z
}

; Function Attrs: nounwind uwtable
define internal i64 @scan_args_hash(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 %2) #0 {
rb_scan_args_n_opt.exit:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = icmp sgt i32 %0, 0
  br i1 %i.c, label %bb.a, label %bb.b

bb.a:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.d = zext nneg i32 %0 to i64
  %i.e = getelementptr [8 x i8], ptr %1, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !10
  %i.h = tail call i32 @rb_keyword_given_p() #4
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.thread10.a, label %bb.c

bb.b:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.i = icmp slt i32 %0, 0
  br i1 %i.i, label %.thread10.a, label %.thread7

.thread7:                                         ; preds = %bb.b
  store i64 4, ptr %i.b, align 8, !tbaa !10
  br label %rb_scan_args_set.exit

bb.c:                                             ; preds = %bb.a
  %i.j = tail call i64 @rb_hash_dup(i64 noundef %i.g) #4
  %i.k = add nsw i32 %0, -1                       ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !10
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %rb_scan_args_set.exit, label %.thread10.a

.thread10.a:                                      ; preds = %bb.a, %bb.c, %bb.b
  %.1.i6 = phi i32 [ %i.k, %bb.c ], [ %0, %bb.b ], [ %0, %bb.a ]
  tail call void @rb_error_arity(i32 noundef %.1.i6, i32 noundef 0, i32 noundef 0) #5
  unreachable

rb_scan_args_set.exit:                            ; preds = %.thread7, %bb.c
  store i64 1, ptr %i.a, align 16, !tbaa !10
  %i.m = call i64 @rb_ary_new_from_values(i64 noundef 2, ptr noundef nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i64 %i.m
}

; Function Attrs: nounwind uwtable
define internal i64 @scan_args_lead_hash(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 %2) #0 {
rb_scan_args_n_opt.exit:
  %i.a = alloca [3 x i64], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = icmp sgt i32 %0, 0
  br i1 %i.d, label %bb.a, label %.thread

bb.a:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.e = zext nneg i32 %0 to i64
  %i.f = getelementptr [8 x i8], ptr %1, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !10
  %i.i = tail call i32 @rb_keyword_given_p() #4
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.thread7, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i64 @rb_hash_dup(i64 noundef %i.h) #4
  %i.k = add nsw i32 %0, -1                       ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.thread, label %.thread7

.thread7:                                         ; preds = %bb.a, %bb.b
  %.1.i11 = phi i32 [ %i.k, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.188.i10 = phi i64 [ %i.j, %bb.b ], [ 4, %bb.a ]
  %i.m = load i64, ptr %1, align 8, !tbaa !10
  store i64 %i.m, ptr %i.b, align 8, !tbaa !10
  store i64 %.188.i10, ptr %i.c, align 16, !tbaa !10
  %i.n = icmp eq i32 %.1.i11, 1
  br i1 %i.n, label %rb_scan_args_set.exit, label %.thread

.thread:                                          ; preds = %rb_scan_args_n_opt.exit, %.thread7, %bb.b
  %.1.i4 = phi i32 [ 0, %bb.b ], [ %.1.i11, %.thread7 ], [ %0, %rb_scan_args_n_opt.exit ]
  tail call void @rb_error_arity(i32 noundef %.1.i4, i32 noundef 1, i32 noundef 1) #5
  unreachable

rb_scan_args_set.exit:                            ; preds = %.thread7
  store i64 3, ptr %i.a, align 16, !tbaa !10
  %i.o = call i64 @rb_ary_new_from_values(i64 noundef 3, ptr noundef nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i64 %i.o
}

; Function Attrs: nounwind uwtable
define internal i64 @scan_args_opt_hash(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 %2) #0 {
rb_scan_args_n_opt.exit:
  %i.a = alloca [3 x i64], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = icmp sgt i32 %0, 0
  br i1 %i.d, label %bb.a, label %bb.b

bb.a:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.e = zext nneg i32 %0 to i64
  %i.f = getelementptr [8 x i8], ptr %1, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !10
  %i.i = tail call i32 @rb_keyword_given_p() #4
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.preheader.thread19, label %.preheader

bb.b:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.j = icmp slt i32 %0, 0
  br i1 %i.j, label %bb.c, label %.preheader.thread

.preheader:                                       ; preds = %bb.a
  %i.k = tail call i64 @rb_hash_dup(i64 noundef %i.h) #4 ; 2 uses
  %i.l = add nsw i32 %0, -1                       ; 2 uses
  %.not4 = icmp eq i32 %i.l, 0
  br i1 %.not4, label %.preheader.thread, label %.preheader.thread19

.preheader.thread19:                              ; preds = %bb.a, %.preheader
  %.1.i.ph24 = phi i32 [ %i.l, %.preheader ], [ %0, %bb.a ] ; 2 uses
  %.188.i.ph23 = phi i64 [ %i.k, %.preheader ], [ 4, %bb.a ]
  %i.m = load i64, ptr %1, align 8, !tbaa !10
  %i.n = icmp eq i32 %.1.i.ph24, 1
  br label %.preheader.thread

.preheader.thread:                                ; preds = %.preheader, %bb.b, %.preheader.thread19
  %.sink = phi i64 [ %i.m, %.preheader.thread19 ], [ 4, %bb.b ], [ 4, %.preheader ]
  %.188.i917 = phi i64 [ %.188.i.ph23, %.preheader.thread19 ], [ 4, %bb.b ], [ %i.k, %.preheader ]
  %.1.i1015 = phi i32 [ %.1.i.ph24, %.preheader.thread19 ], [ 0, %bb.b ], [ 0, %.preheader ] ; 2 uses
  %.185.i.lcssa = phi i1 [ %i.n, %.preheader.thread19 ], [ true, %bb.b ], [ true, %.preheader ]
  store i64 %.sink, ptr %i.b, align 8, !tbaa !10
  store i64 %.188.i917, ptr %i.c, align 16, !tbaa !10
  br i1 %.185.i.lcssa, label %rb_scan_args_set.exit, label %bb.c

bb.c:                                             ; preds = %.preheader.thread, %bb.b
  %.1.i11 = phi i32 [ %.1.i1015, %.preheader.thread ], [ %0, %bb.b ]
  tail call void @rb_error_arity(i32 noundef %.1.i11, i32 noundef 0, i32 noundef 1) #5
  unreachable

rb_scan_args_set.exit:                            ; preds = %.preheader.thread
  %i.o = shl nuw nsw i32 %.1.i1015, 1
  %i.p = or disjoint i32 %i.o, 1
  %i.q = zext nneg i32 %i.p to i64
  store i64 %i.q, ptr %i.a, align 16, !tbaa !10
  %i.r = call i64 @rb_ary_new_from_values(i64 noundef 3, ptr noundef nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i64 %i.r
}

; Function Attrs: nounwind uwtable
define internal i64 @scan_args_lead_opt_hash(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 %2) #0 {
rb_scan_args_n_opt.exit:
  %i.a = alloca [4 x i64], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = icmp sgt i32 %0, 0
  br i1 %i.e, label %bb.a, label %.thread

bb.a:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.f = zext nneg i32 %0 to i64
  %i.g = getelementptr [8 x i8], ptr %1, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !10
  %i.j = tail call i32 @rb_keyword_given_p() #4
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i64 @rb_hash_dup(i64 noundef %i.i) #4
  %i.l = add nsw i32 %0, -1                       ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %.1.i16 = phi i32 [ %i.l, %bb.b ], [ %0, %bb.a ] ; 4 uses
  %.188.i15 = phi i64 [ %i.k, %bb.b ], [ 4, %bb.a ]
  %i.n = load i64, ptr %1, align 8, !tbaa !10
  store i64 %i.n, ptr %i.b, align 8, !tbaa !10
  %i.o = icmp samesign ugt i32 %.1.i16, 1
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.c
  %.sink = phi i64 [ %i.q, %bb.c ], [ 4, %.preheader ]
  %.185.i.lcssa = phi i32 [ 2, %bb.c ], [ 1, %.preheader ]
  store i64 %.sink, ptr %i.c, align 16, !tbaa !10
  store i64 %.188.i15, ptr %i.d, align 8, !tbaa !10
  %i.r = icmp eq i32 %.185.i.lcssa, %.1.i16
  br i1 %i.r, label %rb_scan_args_set.exit, label %.thread

.thread:                                          ; preds = %rb_scan_args_n_opt.exit, %bb.d, %bb.b
  %.1.i4 = phi i32 [ 0, %bb.b ], [ %.1.i16, %bb.d ], [ %0, %rb_scan_args_n_opt.exit ]
  tail call void @rb_error_arity(i32 noundef %.1.i4, i32 noundef 1, i32 noundef 2) #5
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.d
  %i.s = zext nneg i32 %.1.i16 to i64
  %i.t = shl nuw nsw i64 %i.s, 1
  %i.u = or disjoint i64 %i.t, 1
  store i64 %i.u, ptr %i.a, align 16, !tbaa !10
  %i.v = call i64 @rb_ary_new_from_values(i64 noundef 4, ptr noundef nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i64 %i.v
}

; Function Attrs: nounwind uwtable
define internal i64 @scan_args_var_hash(i32 noundef %0, ptr noundef %1, i64 %2) #0 {
rb_scan_args_n_opt.exit:
  %i.a = alloca [3 x i64], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = icmp sgt i32 %0, 0
  br i1 %i.b, label %bb.a, label %bb.b

bb.a:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.c = zext nneg i32 %0 to i64
  %i.d = getelementptr [8 x i8], ptr %1, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !10
  %i.g = tail call i32 @rb_keyword_given_p() #4
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.thread16, label %bb.c

bb.b:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.h = icmp slt i32 %0, 0
  br i1 %i.h, label %bb.d, label %.thread8

bb.c:                                             ; preds = %bb.a
end_hunk_0
