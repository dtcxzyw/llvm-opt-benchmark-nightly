Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/core_array?download=true
inline.NumInlined: 1
begin_hunk_0_@count_core_array_set:bb.a
bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.h = phi i32 [ %.pre, %bb.b ], [ %i.c, %.lr.ph ] ; 2 uses
  %.1 = phi i32 [ %i.g, %bb.b ], [ %.01015, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.i = sext i32 %i.h to i64
  %i.j = icmp slt i64 %indvars.iv.next, %i.i
  br i1 %i.j, label %.lr.ph, label %.loopexit, !llvm.loop !12

.loopexit:                                        ; preds = %bb.c, %bb.a
  %.011 = phi i32 [ 0, %bb.a ], [ %.1, %bb.c ]
  ret i32 %.011
}

declare i32 @bit_set_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @core_array_not(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp ne ptr %0, null
  %i.a = load i32, ptr @node_record_count, align 4 ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  %or.cond = select i1 %.not, i1 %i.b, i1 false
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.c = phi i32 [ %i.f, %bb.c ], [ %i.a, %bb.a ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not8 = icmp eq ptr %i.e, null
  br i1 %.not8, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @bit_not(ptr noundef nonnull %i.e) #3
  %.pre = load i32, ptr @node_record_count, align 4
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.f = phi i32 [ %i.c, %.lr.ph ], [ %.pre, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = icmp slt i64 %indvars.iv.next, %i.g
  br i1 %i.h, label %.lr.ph, label %.loopexit, !llvm.loop !13

.loopexit:                                        ; preds = %bb.c, %bb.a
  ret void
}

declare void @bit_not(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @core_array_and(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @node_record_count, align 4
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8
  %.not32 = icmp eq ptr %i.f, null
  br i1 %.not32, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i64 @bit_size(ptr noundef nonnull %i.d) #3 ; 2 uses
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = load ptr, ptr %i.e, align 8
  %i.j = tail call i64 @bit_size(ptr noundef %i.i) #3 ; 2 uses
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  %i.l = icmp sgt i32 %i.h, %i.k
  br i1 %i.l, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp slt i32 %i.h, %i.k
  br i1 %i.m, label %.sink.split, label %bb.e

.sink.split:                                      ; preds = %bb.d, %bb.c
  %.sink40 = phi i64 [ %i.g, %bb.c ], [ %i.j, %bb.d ]
  %.sink = phi ptr [ %i.e, %bb.c ], [ %i.c, %bb.d ]
  %sext = shl i64 %.sink40, 32
  %i.n = ashr exact i64 %sext, 32
  %i.o = tail call ptr @slurm_bit_realloc(ptr noundef nonnull %.sink, i64 noundef %i.n) #3 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d
  %i.p = load ptr, ptr %i.c, align 8
  %i.q = load ptr, ptr %i.e, align 8
  tail call void @bit_and(ptr noundef %i.p, ptr noundef %i.q) #3
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  tail call void @slurm_bit_free(ptr noundef nonnull %i.c) #3
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %bb.f
  store ptr null, ptr %i.c, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = load i32, ptr @node_record_count, align 4
  %i.s = sext i32 %i.r to i64
  %i.t = icmp slt i64 %indvars.iv.next, %i.s
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret void
}

declare i64 @bit_size(ptr noundef) local_unnamed_addr #1

declare ptr @slurm_bit_realloc(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @bit_and(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @slurm_bit_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @core_array_and_not(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @node_record_count, align 4 ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %i.c = phi i32 [ %i.s, %bb.f ], [ %i.a, %bb.a ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8
  %.not26 = icmp eq ptr %i.g, null
  br i1 %.not26, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i64 @bit_size(ptr noundef nonnull %i.e) #3 ; 2 uses
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = load ptr, ptr %i.f, align 8
  %i.k = tail call i64 @bit_size(ptr noundef %i.j) #3 ; 2 uses
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = icmp sgt i32 %i.i, %i.l
  br i1 %i.m, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = icmp slt i32 %i.i, %i.l
  br i1 %i.n, label %.sink.split, label %bb.e

.sink.split:                                      ; preds = %bb.d, %bb.c
  %.sink34 = phi i64 [ %i.h, %bb.c ], [ %i.k, %bb.d ]
  %.sink = phi ptr [ %i.f, %bb.c ], [ %i.d, %bb.d ]
  %sext = shl i64 %.sink34, 32
  %i.o = ashr exact i64 %sext, 32
  %i.p = tail call ptr @slurm_bit_realloc(ptr noundef nonnull %.sink, i64 noundef %i.o) #3 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d
  %i.q = load ptr, ptr %i.d, align 8
  %i.r = load ptr, ptr %i.f, align 8
  tail call void @bit_and_not(ptr noundef %i.q, ptr noundef %i.r) #3
  %.pre = load i32, ptr @node_record_count, align 4
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.b, %bb.e
  %i.s = phi i32 [ %i.c, %.lr.ph ], [ %i.c, %bb.b ], [ %.pre, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = icmp slt i64 %indvars.iv.next, %i.t
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void
}

declare void @bit_and_not(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @core_array_or(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @node_record_count, align 4
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.thread
  %indvars.iv = phi i64 [ %indvars.iv.next, %.thread ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %.pre = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not33 = icmp eq ptr %.pre, null
  br i1 %.not33, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i64 @bit_size(ptr noundef nonnull %i.d) #3 ; 2 uses
  %i.f = trunc i64 %i.e to i32                    ; 2 uses
  %i.g = load ptr, ptr %.phi.trans.insert, align 8
  %i.h = tail call i64 @bit_size(ptr noundef %i.g) #3 ; 2 uses
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = icmp sgt i32 %i.f, %i.i
  br i1 %i.j, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp slt i32 %i.f, %i.i
  br i1 %i.k, label %.sink.split, label %bb.e

.sink.split:                                      ; preds = %bb.d, %bb.c
  %.sink43 = phi i64 [ %i.e, %bb.c ], [ %i.h, %bb.d ]
  %.sink = phi ptr [ %.phi.trans.insert, %bb.c ], [ %i.c, %bb.d ]
  %sext = shl i64 %.sink43, 32
  %i.l = ashr exact i64 %sext, 32
  %i.m = tail call ptr @slurm_bit_realloc(ptr noundef nonnull %.sink, i64 noundef %i.l) #3 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d
  %i.n = load ptr, ptr %i.c, align 8
  %i.o = load ptr, ptr %.phi.trans.insert, align 8
  tail call void @bit_or(ptr noundef %i.n, ptr noundef %i.o) #3
  br label %.thread

bb.f:                                             ; preds = %.lr.ph, %bb.b
  %2 = phi ptr [ null, %bb.b ], [ %.pre, %.lr.ph ] ; 2 uses
  %.not34 = icmp eq ptr %2, null
  br i1 %.not34, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call ptr @bit_copy(ptr noundef nonnull %2) #3
  store ptr %i.p, ptr %i.c, align 8
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.g, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = load i32, ptr @node_record_count, align 4
  %i.r = sext i32 %i.q to i64
  %i.s = icmp slt i64 %indvars.iv.next, %i.r
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %.thread, %bb.a
  ret void
}

declare void @bit_or(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @free_core_array(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  store ptr %i.b, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = load i32, ptr @node_record_count, align 4
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %.preheader ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %.not6 = icmp eq ptr %i.f, null
  br i1 %.not6, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @slurm_bit_free(ptr noundef nonnull %i.e) #3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  store ptr null, ptr %i.e, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.g = load i32, ptr @node_record_count, align 4
  %i.h = sext i32 %i.g to i64
  %i.i = icmp slt i64 %indvars.iv.next, %i.h
  br i1 %i.i, label %.lr.ph, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.c, %.preheader
  call void @slurm_xfree(ptr noundef nonnull %i.a) #3
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void
}

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @core_array_log(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.e = and i64 %i.d, 1
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @get_log_level() #3
  %i.g = icmp sgt i32 %i.f, 3
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.1, ptr noundef %0) #3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not17 = icmp eq ptr %1, null
  br i1 %.not17, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %i.h = tail call ptr @bitmap2node_name(ptr noundef nonnull %1) #3 ; 2 uses
  store ptr %i.h, ptr %i.b, align 8
  %i.i = tail call i32 @get_log_level() #3
  %i.j = icmp sgt i32 %i.i, 3
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.2, ptr noundef %i.h) #3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @slurm_xfree(ptr noundef nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.not18 = icmp eq ptr %2, null
  br i1 %.not18, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  store ptr null, ptr %i.c, align 8
  %i.k = load i32, ptr @node_record_count, align 4
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.l, %bb.i
  %i.m = call i32 @get_log_level() #3
  %i.n = icmp sgt i32 %i.m, 3
  br i1 %i.n, label %bb.m, label %bb.n

.lr.ph:                                           ; preds = %bb.i, %bb.l
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ 0, %bb.i ] ; 3 uses
  %.01320 = phi ptr [ %.1, %bb.l ], [ @.str.3, %bb.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not19 = icmp eq ptr %i.p, null
  br i1 %.not19, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.q = call i64 @bit_ffs(ptr noundef nonnull %i.p) #3
  %i.r = icmp eq i64 %i.q, -1
  br i1 %i.r, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = load ptr, ptr %i.o, align 8
  %i.t = call ptr @bit_fmt(ptr noundef nonnull %i.a, i32 noundef 100, ptr noundef %i.s) #3 ; 0 uses
  %i.u = trunc nuw nsw i64 %indvars.iv to i32
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.4, ptr noundef %.01320, i32 noundef %i.u, ptr noundef nonnull %i.a) #3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.j, %bb.k
  %.1 = phi ptr [ %.01320, %bb.j ], [ @.str.5, %bb.k ], [ %.01320, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = load i32, ptr @node_record_count, align 4
  %i.w = sext i32 %i.v to i64
  %i.x = icmp slt i64 %indvars.iv.next, %i.w
  br i1 %i.x, label %.lr.ph, label %._crit_edge, !llvm.loop !18

bb.m:                                             ; preds = %._crit_edge
  %i.y = load ptr, ptr %i.c, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.6, ptr noundef %i.y) #3
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  call void @slurm_xfree(ptr noundef nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  br label %bb.o

bb.o:                                             ; preds = %bb.h, %bb.n, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret void
}

declare i32 @get_log_level() local_unnamed_addr #1

declare void @log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @bitmap2node_name(ptr noundef) local_unnamed_addr #1

declare i64 @bit_ffs(ptr noundef) local_unnamed_addr #1

declare ptr @bit_fmt(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_xstrfmtcat(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @core_bitmap_to_array(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca [128 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit45, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @bit_ffs(ptr noundef nonnull %0) #3
  %i.d = trunc i64 %i.c to i32                    ; 3 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %.loopexit45, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr @node_record_count, align 4
  %i.g = sext i32 %i.f to i64
  %i.h = tail call ptr @slurm_xcalloc(i64 noundef %i.g, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 50, ptr noundef nonnull @__func__.build_core_array) #3 ; 5 uses
  %i.i = tail call i64 @bit_fls(ptr noundef nonnull %0) #3
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  %.not3949 = icmp sgt i32 %i.d, %i.j
  br i1 %.not3949, label %.loopexit45, label %.lr.ph53

.lr.ph53:                                         ; preds = %bb.c, %bb.k
  %.051 = phi i32 [ %.2, %bb.k ], [ 0, %bb.c ]    ; 4 uses
  %.03250 = phi i32 [ %i.bb, %bb.k ], [ %i.d, %bb.c ] ; 5 uses
  %i.k = sext i32 %.03250 to i64
end_hunk_0
