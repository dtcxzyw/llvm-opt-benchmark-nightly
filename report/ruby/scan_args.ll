inline.NumInlined: 62
inline.NumDeleted: 6
begin_hunk_0_@scan_args_opt_var:bb.a

bb.c:                                             ; preds = %.preheader, %bb.b
  %.sink = phi i64 [ %i.e, %bb.b ], [ 4, %.preheader ]
  %.185.i.lcssa.a = phi i32 [ 1, %bb.b ], [ 0, %.preheader ] ; 3 uses
  store i64 %.sink, ptr %i.b, align 8, !tbaa !10
  %i.f = sub nsw i32 %0, %.185.i.lcssa.a          ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
end_hunk_0
begin_hunk_1_@scan_args_opt_var:bb.a

.thread:                                          ; preds = %bb.c
  %i.h = zext nneg i32 %i.f to i64
  %3 = zext nneg i32 %.185.i.lcssa.a to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %3
  %i.j = tail call i64 @rb_ary_new_from_values(i64 noundef %i.h, ptr noundef %i.i) #4
  store i64 %i.j, ptr %i.c, align 16, !tbaa !10
  br label %rb_scan_args_set.exit
end_hunk_1
begin_hunk_2_@scan_args_lead_opt_var:bb.a

bb.c:                                             ; preds = %.preheader, %bb.b
  %.sink = phi i64 [ %i.h, %bb.b ], [ 4, %.preheader ]
  %.185.i.lcssa.a = phi i32 [ 2, %bb.b ], [ 1, %.preheader ] ; 3 uses
  store i64 %.sink, ptr %i.b, align 16, !tbaa !10
  %i.i = sub nsw i32 %0, %.185.i.lcssa.a          ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
end_hunk_2
begin_hunk_3_@scan_args_lead_opt_var:bb.a

.thread:                                          ; preds = %bb.c
  %i.k = zext nneg i32 %i.i to i64
  %3 = zext nneg i32 %.185.i.lcssa.a to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %3
  %i.m = tail call i64 @rb_ary_new_from_values(i64 noundef %i.k, ptr noundef nonnull %i.l) #4
  store i64 %i.m, ptr %i.c, align 8, !tbaa !10
  br label %rb_scan_args_set.exit
end_hunk_3
begin_hunk_4_@scan_args_opt_trail:bb.a
bb.a:
  %i.a = alloca [3 x i64], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = icmp slt i32 %0, 1
  br i1 %i.d, label %bb.c, label %.preheader2

.preheader2:                                      ; preds = %bb.a
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.b, label %3

3:                                                ; preds = %.preheader2
  %4 = load i64, ptr %1, align 8, !tbaa !10
  br label %bb.b

bb.b:                                             ; preds = %.preheader2, %3
  %.sink = phi i64 [ %4, %3 ], [ 4, %.preheader2 ]
  %.286.i = phi i32 [ 1, %3 ], [ 0, %.preheader2 ] ; 2 uses
  store i64 %.sink, ptr %i.b, align 8, !tbaa !10
  %5 = zext nneg i32 %.286.i to i64
  %6 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %5
  %7 = load i64, ptr %6, align 8, !tbaa !10
  store i64 %7, ptr %i.c, align 16, !tbaa !10
  %8 = add nuw nsw i32 %.286.i, 1
  %9 = icmp eq i32 %8, %0
  br i1 %9, label %rb_scan_args_set.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #5
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.b
  %i.e = shl nuw nsw i32 %0, 1
  %i.f = or disjoint i32 %i.e, 1
  %i.g = zext nneg i32 %i.f to i64
end_hunk_4
begin_hunk_5_@scan_args_lead_opt_trail:bb.a
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.d = icmp slt i32 %0, 2
  br i1 %i.d, label %8, label %.preheader2

.preheader2:                                      ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
end_hunk_5
begin_hunk_6_@scan_args_lead_opt_trail:bb.a

bb.b:                                             ; preds = %.preheader2
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %3 = load i64, ptr %i.g, align 8, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %.preheader2, %bb.b
  %.sink = phi i64 [ %3, %bb.b ], [ 4, %.preheader2 ]
  %.286.i = phi i32 [ 2, %bb.b ], [ 1, %.preheader2 ] ; 2 uses
  store i64 %.sink, ptr %i.b, align 16, !tbaa !10
  %4 = zext nneg i32 %.286.i to i64
  %5 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %4
  %i.h = load i64, ptr %5, align 8, !tbaa !10
  store i64 %i.h, ptr %i.c, align 8, !tbaa !10
  %6 = add nuw nsw i32 %.286.i, 1
  %7 = icmp eq i32 %6, %0
  br i1 %7, label %rb_scan_args_set.exit, label %8

8:                                                ; preds = %bb.c, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 2, i32 noundef 3) #5
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.c
  %i.i = shl nuw nsw i32 %0, 1
  %i.j = or disjoint i32 %i.i, 1
  %i.k = zext nneg i32 %i.j to i64
end_hunk_6
begin_hunk_7_@scan_args_opt_var_trail:bb.a

bb.c:                                             ; preds = %.preheader, %bb.b
  %.sink = phi i64 [ %i.f, %bb.b ], [ 4, %.preheader ]
  %.185.i.lcssa.a = phi i32 [ 1, %bb.b ], [ 0, %.preheader ] ; 3 uses
  store i64 %.sink, ptr %i.b, align 8, !tbaa !10
  %.neg = xor i32 %.185.i.lcssa.a, -1
  %i.g = add nsw i32 %0, %.neg                    ; 2 uses
end_hunk_7
begin_hunk_8_@scan_args_opt_var_trail:bb.a

bb.d:                                             ; preds = %bb.c
  %i.i = zext nneg i32 %i.g to i64
  %3 = zext nneg i32 %.185.i.lcssa.a to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %3
  %i.k = tail call i64 @rb_ary_new_from_values(i64 noundef %i.i, ptr noundef %i.j) #4
  store i64 %i.k, ptr %i.c, align 16, !tbaa !10
  %i.l = add nsw i32 %0, -1
end_hunk_8
begin_hunk_9_@scan_args_lead_opt_var_trail:bb.a

bb.c:                                             ; preds = %.preheader, %bb.b
  %.sink = phi i64 [ %i.i, %bb.b ], [ 4, %.preheader ]
  %.185.i.lcssa.a = phi i32 [ 2, %bb.b ], [ 1, %.preheader ] ; 3 uses
  store i64 %.sink, ptr %i.b, align 16, !tbaa !10
  %.neg = xor i32 %.185.i.lcssa.a, -1
  %i.j = add nsw i32 %0, %.neg                    ; 2 uses
end_hunk_9
begin_hunk_10_@scan_args_lead_opt_var_trail:bb.a

bb.d:                                             ; preds = %bb.c
  %i.l = zext nneg i32 %i.j to i64
  %3 = zext nneg i32 %.185.i.lcssa.a to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %3
  %i.n = tail call i64 @rb_ary_new_from_values(i64 noundef %i.l, ptr noundef nonnull %i.m) #4
  store i64 %i.n, ptr %i.c, align 8, !tbaa !10
  %i.o = add nsw i32 %0, -1
end_hunk_10
begin_hunk_11_@scan_args_opt_var_hash:rb_scan_args_n_opt.exit
  %.sink = phi i64 [ %i.n, %.preheader.thread22 ], [ 4, %bb.b ], [ 4, %.preheader ]
  %.188.i1220 = phi i64 [ %.188.i.ph26, %.preheader.thread22 ], [ 4, %bb.b ], [ %i.l, %.preheader ] ; 2 uses
  %.1.i1318 = phi i32 [ %.1.i.ph27, %.preheader.thread22 ], [ 0, %bb.b ], [ 0, %.preheader ] ; 4 uses
  %.185.i.lcssa.a = phi i32 [ 1, %.preheader.thread22 ], [ 0, %bb.b ], [ 0, %.preheader ] ; 3 uses
  store i64 %.sink, ptr %i.b, align 8, !tbaa !10
  %i.o = sub nsw i32 %.1.i1318, %.185.i.lcssa.a   ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
end_hunk_11
begin_hunk_12_@scan_args_opt_var_hash:rb_scan_args_n_opt.exit

.thread28:                                        ; preds = %.preheader.thread
  %i.q = zext nneg i32 %i.o to i64
  %3 = zext nneg i32 %.185.i.lcssa.a to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %3
  %i.s = tail call i64 @rb_ary_new_from_values(i64 noundef %i.q, ptr noundef %i.r) #4
  store i64 %i.s, ptr %i.c, align 16, !tbaa !10
  store i64 %.188.i1220, ptr %i.d, align 8, !tbaa !10
end_hunk_12
begin_hunk_13_@scan_args_lead_opt_var_hash:rb_scan_args_n_opt.exit

bb.d:                                             ; preds = %.preheader, %bb.c
  %.sink = phi i64 [ %i.r, %bb.c ], [ 4, %.preheader ]
  %.185.i.lcssa.a = phi i32 [ 2, %bb.c ], [ 1, %.preheader ] ; 3 uses
  store i64 %.sink, ptr %i.c, align 16, !tbaa !10
  %i.s = sub nsw i32 %.1.i19, %.185.i.lcssa.a     ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
end_hunk_13
begin_hunk_14_@scan_args_lead_opt_var_hash:rb_scan_args_n_opt.exit

.thread20:                                        ; preds = %bb.d
  %i.u = zext nneg i32 %i.s to i64
  %3 = zext nneg i32 %.185.i.lcssa.a to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %3
  %i.w = tail call i64 @rb_ary_new_from_values(i64 noundef %i.u, ptr noundef nonnull %i.v) #4
  store i64 %i.w, ptr %i.d, align 8, !tbaa !10
  store i64 %.188.i18, ptr %i.e, align 16, !tbaa !10
end_hunk_14
begin_hunk_15_@scan_args_opt_trail_hash:rb_scan_args_n_opt.exit

bb.d:                                             ; preds = %.preheader5, %bb.c
  %.sink = phi i64 [ %i.o, %bb.c ], [ 4, %.preheader5 ]
  %.286.i = phi i32 [ 1, %bb.c ], [ 0, %.preheader5 ] ; 2 uses
  store i64 %.sink, ptr %i.b, align 8, !tbaa !10
  %3 = zext nneg i32 %.286.i to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %3
  %i.q = load i64, ptr %i.p, align 8, !tbaa !10
  store i64 %i.q, ptr %i.c, align 16, !tbaa !10
  %4 = add nuw nsw i32 %.286.i, 1
  store i64 %.188.i14, ptr %i.d, align 8, !tbaa !10
  %i.r = icmp eq i32 %4, %.1.i15
  br i1 %i.r, label %rb_scan_args_set.exit, label %.thread

.thread:                                          ; preds = %rb_scan_args_n_opt.exit, %bb.d, %bb.b
end_hunk_15
begin_hunk_16_@scan_args_lead_opt_trail_hash:rb_scan_args_n_opt.exit
  %i.a = alloca [5 x i64], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = icmp sgt i32 %0, 0
  br i1 %i.f, label %bb.a, label %.thread

end_hunk_16
begin_hunk_17_@scan_args_lead_opt_trail_hash:rb_scan_args_n_opt.exit
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.188.i = phi i64 [ 4, %bb.a ], [ %i.l, %bb.b ]
  %.1.i = phi i32 [ %0, %bb.a ], [ %i.m, %bb.b ]  ; 6 uses
  %i.n = icmp samesign ult i32 %.1.i, 2
  br i1 %i.n, label %.thread, label %.preheader2
end_hunk_17
begin_hunk_18_@scan_args_lead_opt_trail_hash:rb_scan_args_n_opt.exit
  %i.o = load i64, ptr %1, align 8, !tbaa !10
  store i64 %i.o, ptr %i.b, align 8, !tbaa !10
  %.not10 = icmp eq i32 %.1.i, 2
  br i1 %.not10, label %bb.d, label %3

3:                                                ; preds = %.preheader2
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = load i64, ptr %4, align 8, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %.preheader2, %3
  %.sink = phi i64 [ %5, %3 ], [ 4, %.preheader2 ]
  %.286.i = phi i32 [ 2, %3 ], [ 1, %.preheader2 ] ; 2 uses
  store i64 %.sink, ptr %i.c, align 16, !tbaa !10
  %6 = zext nneg i32 %.286.i to i64
  %7 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %6
  %8 = load i64, ptr %7, align 8, !tbaa !10
  store i64 %8, ptr %i.d, align 8, !tbaa !10
  %9 = add nuw nsw i32 %.286.i, 1
  store i64 %.188.i, ptr %i.e, align 16, !tbaa !10
  %10 = icmp eq i32 %9, %.1.i
  br i1 %10, label %rb_scan_args_set.exit, label %.thread

.thread:                                          ; preds = %rb_scan_args_n_opt.exit, %bb.d, %bb.c
  %.1.i14 = phi i32 [ %.1.i, %bb.c ], [ %.1.i, %bb.d ], [ %0, %rb_scan_args_n_opt.exit ]
  tail call void @rb_error_arity(i32 noundef %.1.i14, i32 noundef 2, i32 noundef 3) #5
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.d
  %i.p = shl nuw nsw i32 %.1.i, 1
  %i.q = or disjoint i32 %i.p, 1
  %i.r = zext nneg i32 %i.q to i64
end_hunk_18
begin_hunk_19_@scan_args_opt_var_trail_hash:rb_scan_args_n_opt.exit

bb.d:                                             ; preds = %.preheader, %bb.c
  %.sink = phi i64 [ %i.p, %bb.c ], [ 4, %.preheader ]
  %.185.i.lcssa.a = phi i32 [ 1, %bb.c ], [ 0, %.preheader ] ; 3 uses
  store i64 %.sink, ptr %i.b, align 8, !tbaa !10
  %.neg = xor i32 %.185.i.lcssa.a, -1
  %i.q = add nsw i32 %.1.i20, %.neg               ; 2 uses
end_hunk_19
begin_hunk_20_@scan_args_opt_var_trail_hash:rb_scan_args_n_opt.exit

bb.e:                                             ; preds = %bb.d
  %i.s = zext nneg i32 %i.q to i64
  %3 = zext nneg i32 %.185.i.lcssa.a to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %3
  %i.u = tail call i64 @rb_ary_new_from_values(i64 noundef %i.s, ptr noundef %i.t) #4
  store i64 %i.u, ptr %i.c, align 16, !tbaa !10
  %i.v = add nsw i32 %.1.i20, -1
end_hunk_20
begin_hunk_21_@scan_args_lead_opt_var_trail_hash:rb_scan_args_n_opt.exit

bb.e:                                             ; preds = %.preheader, %bb.d
  %.sink = phi i64 [ %i.r, %bb.d ], [ 4, %.preheader ]
  %.185.i.lcssa.a = phi i32 [ 2, %bb.d ], [ 1, %.preheader ] ; 3 uses
  store i64 %.sink, ptr %i.c, align 16, !tbaa !10
  %.neg = xor i32 %.185.i.lcssa.a, -1
  %i.s = add nsw i32 %.1.i, %.neg                 ; 2 uses
end_hunk_21
begin_hunk_22_@scan_args_lead_opt_var_trail_hash:rb_scan_args_n_opt.exit

bb.f:                                             ; preds = %bb.e
  %i.u = zext nneg i32 %i.s to i64
  %3 = zext nneg i32 %.185.i.lcssa.a to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %3
  %i.w = tail call i64 @rb_ary_new_from_values(i64 noundef %i.u, ptr noundef nonnull %i.v) #4
  store i64 %i.w, ptr %i.d, align 8, !tbaa !10
  %i.x = add nsw i32 %.1.i, -1
end_hunk_22
