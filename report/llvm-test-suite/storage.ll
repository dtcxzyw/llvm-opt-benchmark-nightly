Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/storage?download=true
inline.NumInlined: 19
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@store_var:bb.a
  %or.cond14 = or i1 %i.ae, %i.af
  br i1 %or.cond14, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 99, ptr @scale, align 4, !tbaa !4
  tail call void (ptr, ...) @rt_warn(ptr noundef nonnull @.str.9, i32 noundef 99) #10
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ag = trunc i64 %.03450 to i32
  store i32 %i.ag, ptr @scale, align 4, !tbaa !4
  br label %bb.t

bb.t:                                             ; preds = %bb.f, %bb.j, %bb.k, %bb.h, %bb.o, %bb.p, %bb.m, %bb.s, %bb.r, %get_var.exit, %get_var.exit.thread
  ret void
}

declare signext i8 @is_neg(ptr noundef) local_unnamed_addr #2

declare void @rt_warn(ptr noundef, ...) local_unnamed_addr #2

declare i64 @num2long(ptr noundef) local_unnamed_addr #2

declare signext i8 @is_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @store_array(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %.07.i = load ptr, ptr @ex_stack, align 8, !tbaa !14 ; 3 uses
  %.not = icmp eq ptr %.07.i, null
  br i1 %.not, label %check_stack.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  %.0.i = load ptr, ptr %i.a, align 8, !tbaa !14
  %.not16 = icmp eq ptr %.0.i, null
  br i1 %.not16, label %check_stack.exit.thread, label %check_stack.exit

check_stack.exit.thread:                          ; preds = %.lr.ph.i, %bb.a
  tail call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.1) #10
  br label %pop.exit

check_stack.exit:                                 ; preds = %.lr.ph.i
  %i.b = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59
  %i.e = tail call i64 @num2long(ptr noundef %i.d) #10 ; 3 uses
  %or.cond = icmp ugt i64 %i.e, 2048
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %check_stack.exit
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %.split

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !59
  %i.k = tail call signext i8 @is_zero(ptr noundef %i.j) #10
  %.not10 = icmp eq i8 %i.k, 0
  br i1 %.not10, label %bb.d, label %.split

bb.d:                                             ; preds = %bb.c, %check_stack.exit
  %i.l = load ptr, ptr @a_names, align 8, !tbaa !8
  %i.m = sext i32 %0 to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12
  tail call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.10, ptr noundef %i.o) #10
  br label %pop.exit

.split:                                           ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ %i.e, %bb.b ], [ 0, %bb.c ]
  %i.p = tail call ptr @get_array_num(i32 noundef %0, i64 noundef %.sink) ; 3 uses
  %.not11 = icmp eq ptr %i.p, null
  br i1 %.not11, label %pop.exit, label %bb.e

bb.e:                                             ; preds = %.split
  tail call void @free_num(ptr noundef nonnull %i.p) #10
  %i.q = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !59
  %i.s = tail call ptr @copy_num(ptr noundef %i.r) #10
  store ptr %i.s, ptr %i.p, align 8, !tbaa !19
  %i.t = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !57
  tail call void @free_num(ptr noundef %i.v) #10
  %i.w = load ptr, ptr @ex_stack, align 8, !tbaa !14 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !59
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !57
  store ptr %i.x, ptr %i.z, align 8, !tbaa !59
  tail call void @init_num(ptr noundef nonnull %i.w) #10
  %i.aa = load ptr, ptr @ex_stack, align 8, !tbaa !14 ; 4 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %pop.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !57
  store ptr %i.ac, ptr @ex_stack, align 8, !tbaa !14
  tail call void @free_num(ptr noundef nonnull %i.aa) #10
  tail call void @free(ptr noundef nonnull %i.aa) #10
  br label %pop.exit

pop.exit:                                         ; preds = %bb.f, %bb.e, %check_stack.exit.thread, %bb.d, %.split
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @load_var(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  switch i32 %0, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_zero_, align 8, !tbaa !19
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #11 ; 4 uses
  %i.c = tail call ptr @copy_num(ptr noundef %i.a) #10
  store ptr %i.c, ptr %i.b, align 8, !tbaa !59
  %i.d = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !57
  store ptr %i.b, ptr @ex_stack, align 8, !tbaa !14
  %i.f = load i32, ptr @i_base, align 4, !tbaa !4
  tail call void @int2num(ptr noundef nonnull %i.b, i32 noundef %i.f) #10
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @_zero_, align 8, !tbaa !19
  %i.h = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #11 ; 4 uses
  %i.i = tail call ptr @copy_num(ptr noundef %i.g) #10
  store ptr %i.i, ptr %i.h, align 8, !tbaa !59
  %i.j = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !57
  store ptr %i.h, ptr @ex_stack, align 8, !tbaa !14
  %i.l = load i32, ptr @o_base, align 4, !tbaa !4
  tail call void @int2num(ptr noundef nonnull %i.h, i32 noundef %i.l) #10
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.m = load ptr, ptr @_zero_, align 8, !tbaa !19
  %i.n = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #11 ; 4 uses
  %i.o = tail call ptr @copy_num(ptr noundef %i.m) #10
  store ptr %i.o, ptr %i.n, align 8, !tbaa !59
  %i.p = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !57
  store ptr %i.n, ptr @ex_stack, align 8, !tbaa !14
  %i.r = load i32, ptr @scale, align 4, !tbaa !4
  tail call void @int2num(ptr noundef nonnull %i.n, i32 noundef %i.r) #10
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.s = load ptr, ptr @variables, align 8, !tbaa !30
  %i.t = sext i32 %0 to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !32   ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !75
  %i.x = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #11 ; 3 uses
  %i.y = tail call ptr @copy_num(ptr noundef %i.w) #10
  store ptr %i.y, ptr %i.x, align 8, !tbaa !59
  %i.z = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !57
  store ptr %i.x, ptr @ex_stack, align 8, !tbaa !14
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr @_zero_, align 8, !tbaa !19
  %i.ac = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #11 ; 3 uses
  %i.ad = tail call ptr @copy_num(ptr noundef %i.ab) #10
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !59
  %i.ae = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !57
  store ptr %i.ac, ptr @ex_stack, align 8, !tbaa !14
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d, %bb.c, %bb.b
  ret void
}

declare void @int2num(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @load_array(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %.07.i = load ptr, ptr @ex_stack, align 8, !tbaa !14 ; 2 uses
  %.not = icmp eq ptr %.07.i, null
  br i1 %.not, label %check_stack.exit.thread, label %check_stack.exit

check_stack.exit:                                 ; preds = %bb.a
  %i.a = load ptr, ptr %.07.i, align 8, !tbaa !59
  %i.b = tail call i64 @num2long(ptr noundef %i.a) #10 ; 3 uses
  %or.cond = icmp ugt i64 %i.b, 2048
  br i1 %or.cond, label %bb.d, label %bb.b

check_stack.exit.thread:                          ; preds = %bb.a
  tail call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.1) #10
  br label %bb.g

bb.b:                                             ; preds = %check_stack.exit
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %.split

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59
  %i.f = tail call signext i8 @is_zero(ptr noundef %i.e) #10
  %.not9 = icmp eq i8 %i.f, 0
  br i1 %.not9, label %bb.d, label %.split

bb.d:                                             ; preds = %bb.c, %check_stack.exit
  %i.g = load ptr, ptr @a_names, align 8, !tbaa !8
  %i.h = sext i32 %0 to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12
  tail call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.10, ptr noundef %i.j) #10
  br label %bb.g

.split:                                           ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ %i.b, %bb.b ], [ 0, %bb.c ]
  %i.k = tail call ptr @get_array_num(i32 noundef %0, i64 noundef %.sink) ; 2 uses
  %.not10 = icmp eq ptr %i.k, null
  br i1 %.not10, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.split
  %i.l = load ptr, ptr @ex_stack, align 8, !tbaa !14 ; 4 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %pop.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57
  store ptr %i.n, ptr @ex_stack, align 8, !tbaa !14
  tail call void @free_num(ptr noundef nonnull %i.l) #10
  tail call void @free(ptr noundef nonnull %i.l) #10
  br label %pop.exit

pop.exit:                                         ; preds = %bb.e, %bb.f
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.p = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #11 ; 3 uses
  %i.q = tail call ptr @copy_num(ptr noundef %i.o) #10
  store ptr %i.q, ptr %i.p, align 8, !tbaa !59
  %i.r = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.r, ptr %i.s, align 8, !tbaa !57
  store ptr %i.p, ptr @ex_stack, align 8, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %check_stack.exit.thread, %bb.d, %pop.exit, %.split
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @decr_var(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  switch i32 %0, label %bb.k [
    i32 0, label %bb.b
    i32 1, label %bb.e
    i32 2, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr @i_base, align 4, !tbaa !4 ; 2 uses
  %i.b = icmp sgt i32 %i.a, 2
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = add nsw i32 %i.a, -1
  store i32 %i.c, ptr @i_base, align 4, !tbaa !4
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  tail call void (ptr, ...) @rt_warn(ptr noundef nonnull @.str.11) #10
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.d = load i32, ptr @o_base, align 4, !tbaa !4 ; 2 uses
  %i.e = icmp sgt i32 %i.d, 2
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr @o_base, align 4, !tbaa !4
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  tail call void (ptr, ...) @rt_warn(ptr noundef nonnull @.str.12) #10
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  %i.g = load i32, ptr @scale, align 4, !tbaa !4  ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr @scale, align 4, !tbaa !4
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  tail call void (ptr, ...) @rt_warn(ptr noundef nonnull @.str.13) #10
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.j = load ptr, ptr @variables, align 8, !tbaa !30
  %i.k = sext i32 %0 to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.k ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !32   ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %get_var.exit, label %get_var.exit.thread

get_var.exit:                                     ; preds = %bb.k
  %i.o = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #11 ; 4 uses
  store ptr %i.o, ptr %i.l, align 8, !tbaa !32
  tail call void @init_num(ptr noundef %i.o) #10
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.l, label %get_var.exit.thread

get_var.exit.thread:                              ; preds = %bb.k, %get_var.exit
  %.0.i9 = phi ptr [ %i.o, %get_var.exit ], [ %i.m, %bb.k ] ; 2 uses
  %i.p = load ptr, ptr %.0.i9, align 8, !tbaa !75
  %i.q = load ptr, ptr @_one_, align 8, !tbaa !19
  tail call void @bc_sub(ptr noundef %i.p, ptr noundef %i.q, ptr noundef nonnull %.0.i9) #10
  br label %bb.l

bb.l:                                             ; preds = %get_var.exit, %get_var.exit.thread, %bb.i, %bb.j, %bb.f, %bb.g, %bb.c, %bb.d
  ret void
}

declare void @bc_sub(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @decr_array(i8 noundef signext %0) local_unnamed_addr #0 {
bb.a:
  %.07.i = load ptr, ptr @ex_stack, align 8, !tbaa !14 ; 2 uses
  %.not = icmp eq ptr %.07.i, null
  br i1 %.not, label %check_stack.exit.thread, label %check_stack.exit

check_stack.exit:                                 ; preds = %bb.a
  %i.a = load ptr, ptr %.07.i, align 8, !tbaa !59
  %i.b = tail call i64 @num2long(ptr noundef %i.a) #10 ; 3 uses
  %or.cond = icmp ugt i64 %i.b, 2048
  br i1 %or.cond, label %bb.d, label %bb.b

check_stack.exit.thread:                          ; preds = %bb.a
  tail call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.1) #10
  br label %bb.g

bb.b:                                             ; preds = %check_stack.exit
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %.split

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59
  %i.f = tail call signext i8 @is_zero(ptr noundef %i.e) #10
  %.not10 = icmp eq i8 %i.f, 0
  br i1 %.not10, label %bb.d, label %.split

bb.d:                                             ; preds = %bb.c, %check_stack.exit
  %i.g = load ptr, ptr @a_names, align 8, !tbaa !8
  %i.h = sext i8 %0 to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12
  tail call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.10, ptr noundef %i.j) #10
  br label %bb.g

.split:                                           ; preds = %bb.c, %bb.b
  %.sink16 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.c ]
  %i.k = sext i8 %0 to i32
  %i.l = tail call ptr @get_array_num(i32 noundef %i.k, i64 noundef %.sink16) ; 3 uses
  %.not11 = icmp eq ptr %i.l, null
  br i1 %.not11, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.split
  %i.m = load ptr, ptr @ex_stack, align 8, !tbaa !14 ; 4 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %pop.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !57
  store ptr %i.o, ptr @ex_stack, align 8, !tbaa !14
  tail call void @free_num(ptr noundef nonnull %i.m) #10
  tail call void @free(ptr noundef nonnull %i.m) #10
  br label %pop.exit

pop.exit:                                         ; preds = %bb.e, %bb.f
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !19
  %i.q = load ptr, ptr @_one_, align 8, !tbaa !19
  tail call void @bc_sub(ptr noundef %i.p, ptr noundef %i.q, ptr noundef nonnull %i.l) #10
  br label %bb.g

bb.g:                                             ; preds = %check_stack.exit.thread, %bb.d, %pop.exit, %.split
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @incr_var(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  switch i32 %0, label %bb.k [
    i32 0, label %bb.b
    i32 1, label %bb.e
    i32 2, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr @i_base, align 4, !tbaa !4 ; 2 uses
  %i.b = icmp slt i32 %i.a, 16
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = add nsw i32 %i.a, 1
  store i32 %i.c, ptr @i_base, align 4, !tbaa !4
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  tail call void (ptr, ...) @rt_warn(ptr noundef nonnull @.str.14) #10
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.d = load i32, ptr @o_base, align 4, !tbaa !4 ; 2 uses
  %i.e = icmp slt i32 %i.d, 99
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.f = add nsw i32 %i.d, 1
  store i32 %i.f, ptr @o_base, align 4, !tbaa !4
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  tail call void (ptr, ...) @rt_warn(ptr noundef nonnull @.str.15) #10
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  %i.g = load i32, ptr @scale, align 4, !tbaa !4  ; 2 uses
  %i.h = icmp slt i32 %i.g, 99
  br i1 %i.h, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.i = add nsw i32 %i.g, 1
  store i32 %i.i, ptr @scale, align 4, !tbaa !4
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  tail call void (ptr, ...) @rt_warn(ptr noundef nonnull @.str.16) #10
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  %i.j = load ptr, ptr @variables, align 8, !tbaa !30
  %i.k = sext i32 %0 to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.k ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !32   ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %get_var.exit, label %get_var.exit.thread

get_var.exit:                                     ; preds = %bb.k
  %i.o = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #11 ; 4 uses
  store ptr %i.o, ptr %i.l, align 8, !tbaa !32
  tail call void @init_num(ptr noundef %i.o) #10
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.l, label %get_var.exit.thread

get_var.exit.thread:                              ; preds = %bb.k, %get_var.exit
  %.0.i9 = phi ptr [ %i.o, %get_var.exit ], [ %i.m, %bb.k ] ; 2 uses
  %i.p = load ptr, ptr %.0.i9, align 8, !tbaa !75
  %i.q = load ptr, ptr @_one_, align 8, !tbaa !19
  tail call void @bc_add(ptr noundef %i.p, ptr noundef %i.q, ptr noundef nonnull %.0.i9) #10
  br label %bb.l

bb.l:                                             ; preds = %get_var.exit, %get_var.exit.thread, %bb.i, %bb.j, %bb.f, %bb.g, %bb.c, %bb.d
  ret void
}

declare void @bc_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @incr_array(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %.07.i = load ptr, ptr @ex_stack, align 8, !tbaa !14 ; 2 uses
  %.not = icmp eq ptr %.07.i, null
  br i1 %.not, label %check_stack.exit.thread, label %check_stack.exit

check_stack.exit:                                 ; preds = %bb.a
  %i.a = load ptr, ptr %.07.i, align 8, !tbaa !59
  %i.b = tail call i64 @num2long(ptr noundef %i.a) #10 ; 3 uses
  %or.cond = icmp ugt i64 %i.b, 2048
  br i1 %or.cond, label %bb.d, label %bb.b

check_stack.exit.thread:                          ; preds = %bb.a
  tail call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.1) #10
  br label %bb.g

bb.b:                                             ; preds = %check_stack.exit
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %.split

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @ex_stack, align 8, !tbaa !14
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59
  %i.f = tail call signext i8 @is_zero(ptr noundef %i.e) #10
  %.not10 = icmp eq i8 %i.f, 0
  br i1 %.not10, label %bb.d, label %.split

bb.d:                                             ; preds = %bb.c, %check_stack.exit
  %i.g = load ptr, ptr @a_names, align 8, !tbaa !8
  %i.h = sext i32 %0 to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12
  tail call void (ptr, ...) @rt_error(ptr noundef nonnull @.str.10, ptr noundef %i.j) #10
  br label %bb.g

.split:                                           ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ %i.b, %bb.b ], [ 0, %bb.c ]
  %i.k = tail call ptr @get_array_num(i32 noundef %0, i64 noundef %.sink) ; 3 uses
  %.not11 = icmp eq ptr %i.k, null
  br i1 %.not11, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.split
  %i.l = load ptr, ptr @ex_stack, align 8, !tbaa !14 ; 4 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %pop.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57
  store ptr %i.n, ptr @ex_stack, align 8, !tbaa !14
  tail call void @free_num(ptr noundef nonnull %i.l) #10
  tail call void @free(ptr noundef nonnull %i.l) #10
  br label %pop.exit

pop.exit:                                         ; preds = %bb.e, %bb.f
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.p = load ptr, ptr @_one_, align 8, !tbaa !19
  tail call void @bc_add(ptr noundef %i.o, ptr noundef %i.p, ptr noundef nonnull %i.k) #10
  br label %bb.g

bb.g:                                             ; preds = %check_stack.exit.thread, %bb.d, %pop.exit, %.split
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @auto_var(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #11 ; 3 uses
  %i.c = load ptr, ptr @variables, align 8, !tbaa !30
  %i.d = zext nneg i32 %0 to i64                  ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !77
  tail call void @init_num(ptr noundef %i.b) #10
  %i.h = load ptr, ptr @variables, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.d
  store ptr %i.b, ptr %i.i, align 8, !tbaa !32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = sub nsw i32 0, %0
  %i.k = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #11 ; 4 uses
  %i.l = load ptr, ptr @arrays, align 8, !tbaa !40
  %i.m = zext nneg i32 %i.j to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !42
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !64
  store ptr null, ptr %i.k, align 8, !tbaa !61
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i8 0, ptr %i.q, align 8, !tbaa !65
  store ptr %i.k, ptr %i.n, align 8, !tbaa !42
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_a_tree(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp sgt i32 %1, 1
  br i1 %i.a, label %.preheader, label %.preheader13.preheader

.preheader13.preheader:                           ; preds = %bb.b
  tail call void @free_num(ptr noundef nonnull %0) #10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @free_num(ptr noundef nonnull %i.b) #10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @free_num(ptr noundef nonnull %i.c) #10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @free_num(ptr noundef nonnull %i.d) #10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @free_num(ptr noundef nonnull %i.e) #10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @free_num(ptr noundef nonnull %i.f) #10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @free_num(ptr noundef nonnull %i.g) #10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @free_num(ptr noundef nonnull %i.h) #10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @free_num(ptr noundef nonnull %i.i) #10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @free_num(ptr noundef nonnull %i.j) #10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @free_num(ptr noundef nonnull %i.k) #10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @free_num(ptr noundef nonnull %i.l) #10
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @free_num(ptr noundef nonnull %i.m) #10
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @free_num(ptr noundef nonnull %i.n) #10
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @free_num(ptr noundef nonnull %i.o) #10
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @free_num(ptr noundef nonnull %i.p) #10
  br label %.loopexit

.preheader:                                       ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.r = add nsw i32 %1, -1                       ; 16 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !72
  tail call void @free_a_tree(ptr noundef %i.s, i32 noundef %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !72
  tail call void @free_a_tree(ptr noundef %i.u, i32 noundef %i.r)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !72
  tail call void @free_a_tree(ptr noundef %i.w, i32 noundef %i.r)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !72
  tail call void @free_a_tree(ptr noundef %i.y, i32 noundef %i.r)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !72
  tail call void @free_a_tree(ptr noundef %i.aa, i32 noundef %i.r)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !72
  tail call void @free_a_tree(ptr noundef %i.ac, i32 noundef %i.r)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !72
  tail call void @free_a_tree(ptr noundef %i.ae, i32 noundef %i.r)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !72
  tail call void @free_a_tree(ptr noundef %i.ag, i32 noundef %i.r)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !72
  tail call void @free_a_tree(ptr noundef %i.ai, i32 noundef %i.r)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !72
  tail call void @free_a_tree(ptr noundef %i.ak, i32 noundef %i.r)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !72
  tail call void @free_a_tree(ptr noundef %i.am, i32 noundef %i.r)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !72
  tail call void @free_a_tree(ptr noundef %i.ao, i32 noundef %i.r)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !72
  tail call void @free_a_tree(ptr noundef %i.aq, i32 noundef %i.r)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !72
  tail call void @free_a_tree(ptr noundef %i.as, i32 noundef %i.r)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !72
  tail call void @free_a_tree(ptr noundef %i.au, i32 noundef %i.r)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !72
  tail call void @free_a_tree(ptr noundef %i.aw, i32 noundef %i.r)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader13.preheader, %.preheader
  tail call void @free(ptr noundef nonnull %0) #10
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @pop_vars(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not28 = icmp eq ptr %0, null
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %.029 = phi ptr [ %i.y, %bb.h ], [ %0, %bb.a ]  ; 2 uses
  %i.a = load i32, ptr %.029, align 8, !tbaa !78  ; 3 uses
end_hunk_0
