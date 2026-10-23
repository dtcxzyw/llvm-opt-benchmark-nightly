Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/numeric?download=true
inline.NumInlined: 1036
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@rb_int_cmp:bb.a

bb.i:                                             ; preds = %bb.a
  %i.r = icmp eq i64 %0, 0
  %i.s = and i64 %0, 6
  %i.t = icmp ne i64 %i.s, 0
  %i.u = or i1 %i.r, %i.t
  br i1 %i.u, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.i
  %i.v = inttoptr i64 %0 to ptr
  %i.w = load i64, ptr %i.v, align 8, !tbaa !20
  %i.x = and i64 %i.w, 31
  %i.y = icmp eq i64 %i.x, 10
  br i1 %i.y, label %bb.j, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.j:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.z = tail call i64 @rb_big_cmp(i64 noundef %0, i64 noundef %1) #25
  br label %fix_cmp.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.i, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.aa = load i64, ptr @rb_eNotImpError, align 8, !tbaa !18
  %i.ab = tail call ptr @rb_obj_classname(i64 noundef %0) #25
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aa, ptr noundef nonnull @.str.27, ptr noundef %i.ab) #24
  unreachable

fix_cmp.exit:                                     ; preds = %RB_FLOAT_TYPE_P.exit.thread22.i, %RB_FLOAT_TYPE_P.exit.thread.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.b, %bb.j
  %.0 = phi i64 [ %i.z, %bb.j ], [ %i.q, %RB_FLOAT_TYPE_P.exit.thread22.i ], [ %..i, %bb.d ], [ 1, %bb.b ], [ %i.p, %RB_FLOAT_TYPE_P.exit.thread.i ], [ %i.n, %bb.h ], [ 3, %bb.g ], [ -1, %bb.f ]
  ret i64 %.0
}

declare i64 @rb_big_cmp(i64 noundef, i64 noundef) local_unnamed_addr #4

declare ptr @rb_obj_classname(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_int_gt(i64 noundef %0, i64 noundef %1) #2 {
bb.a:
  %i.a = trunc i64 %0 to i1
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = trunc i64 %1 to i1
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = ashr i64 %0, 1
  %i.d = ashr i64 %1, 1
  %i.e = icmp sgt i64 %i.c, %i.d
  %i.f = select i1 %i.e, i64 20, i64 0
  br label %fix_gt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %1, 0
  %i.h = and i64 %1, 6
  %i.i = icmp ne i64 %i.h, 0
  %i.j = or i1 %i.g, %i.i
  br i1 %i.j, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.d
  %i.k = inttoptr i64 %1 to ptr
  %i.l = load i64, ptr %i.k, align 8, !tbaa !20
  %i.m = and i64 %i.l, 31
  switch i64 %i.m, label %RB_FLOAT_TYPE_P.exit.thread16.i [
    i64 10, label %bb.e
    i64 4, label %RB_FLOAT_TYPE_P.exit.thread.i
  ]

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.n = tail call i64 @rb_big_cmp(i64 noundef %1, i64 noundef %0) #25
  %i.o = icmp eq i64 %i.n, -1
  %i.p = select i1 %i.o, i64 20, i64 0
  br label %fix_gt.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.d
  %i.q = and i64 %1, 2
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %RB_FLOAT_TYPE_P.exit.thread16.i, label %RB_FLOAT_TYPE_P.exit.thread.i

RB_FLOAT_TYPE_P.exit.thread.i:                    ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.r = tail call i64 @rb_integer_float_cmp(i64 noundef %0, i64 noundef %1) #25
  %i.s = icmp eq i64 %i.r, 3
  %i.t = select i1 %i.s, i64 20, i64 0
  br label %fix_gt.exit

RB_FLOAT_TYPE_P.exit.thread16.i:                  ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.u = tail call i64 @rb_num_coerce_relop(i64 noundef %0, i64 noundef %1, i64 noundef 62)
  br label %fix_gt.exit

bb.f:                                             ; preds = %bb.a
  %i.v = icmp eq i64 %0, 0
  %i.w = and i64 %0, 6
  %i.x = icmp ne i64 %i.w, 0
  %i.y = or i1 %i.v, %i.x
  br i1 %i.y, label %fix_gt.exit, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.f
  %i.z = inttoptr i64 %0 to ptr
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !20
  %i.ab = and i64 %i.aa, 31
  %i.ac = icmp eq i64 %i.ab, 10
  br i1 %i.ac, label %bb.g, label %fix_gt.exit

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.ad = tail call i64 @rb_big_gt(i64 noundef %0, i64 noundef %1) #25
  br label %fix_gt.exit

fix_gt.exit:                                      ; preds = %bb.f, %RB_FLOAT_TYPE_P.exit.thread16.i, %RB_FLOAT_TYPE_P.exit.thread.i, %bb.e, %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit, %bb.g
  %.0 = phi i64 [ 4, %rbimpl_RB_TYPE_P_fastpath.exit ], [ %i.ad, %bb.g ], [ %i.f, %bb.c ], [ %i.p, %bb.e ], [ %i.t, %RB_FLOAT_TYPE_P.exit.thread.i ], [ %i.u, %RB_FLOAT_TYPE_P.exit.thread16.i ], [ 4, %bb.f ]
  ret i64 %.0
}

declare i64 @rb_big_gt(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_int_ge(i64 noundef %0, i64 noundef %1) #2 {
bb.a:
  %i.a = trunc i64 %0 to i1
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = trunc i64 %1 to i1
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = ashr i64 %0, 1
  %i.d = ashr i64 %1, 1
  %.not14.i = icmp slt i64 %i.c, %i.d
  %i.e = select i1 %.not14.i, i64 0, i64 20
  br label %fix_ge.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %1, 0
  %i.g = and i64 %1, 6
  %i.h = icmp ne i64 %i.g, 0
  %i.i = or i1 %i.f, %i.h
  br i1 %i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.d
  %i.j = inttoptr i64 %1 to ptr
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20
  %i.l = and i64 %i.k, 31
  switch i64 %i.l, label %RB_FLOAT_TYPE_P.exit.thread19.i [
    i64 10, label %bb.e
    i64 4, label %RB_FLOAT_TYPE_P.exit.thread.i
  ]

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.m = tail call i64 @rb_big_cmp(i64 noundef %1, i64 noundef %0) #25
  %.not.i = icmp eq i64 %i.m, 3
  %i.n = select i1 %.not.i, i64 0, i64 20
  br label %fix_ge.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.d
  %i.o = and i64 %1, 2
  %.not21.i = icmp eq i64 %i.o, 0
  br i1 %.not21.i, label %RB_FLOAT_TYPE_P.exit.thread19.i, label %RB_FLOAT_TYPE_P.exit.thread.i

RB_FLOAT_TYPE_P.exit.thread.i:                    ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.p = tail call i64 @rb_integer_float_cmp(i64 noundef %0, i64 noundef %1) #25
  %i.q = and i64 %i.p, -3
  %i.r = icmp eq i64 %i.q, 1
  %i.s = select i1 %i.r, i64 20, i64 0
  br label %fix_ge.exit

RB_FLOAT_TYPE_P.exit.thread19.i:                  ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.t = tail call i64 @rb_num_coerce_relop(i64 noundef %0, i64 noundef %1, i64 noundef 139)
  br label %fix_ge.exit

bb.f:                                             ; preds = %bb.a
  %i.u = icmp eq i64 %0, 0
  %i.v = and i64 %0, 6
  %i.w = icmp ne i64 %i.v, 0
  %i.x = or i1 %i.u, %i.w
  br i1 %i.x, label %fix_ge.exit, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.f
  %i.y = inttoptr i64 %0 to ptr
  %i.z = load i64, ptr %i.y, align 8, !tbaa !20
  %i.aa = and i64 %i.z, 31
  %i.ab = icmp eq i64 %i.aa, 10
  br i1 %i.ab, label %bb.g, label %fix_ge.exit

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.ac = tail call i64 @rb_big_ge(i64 noundef %0, i64 noundef %1) #25
  br label %fix_ge.exit

fix_ge.exit:                                      ; preds = %bb.f, %RB_FLOAT_TYPE_P.exit.thread19.i, %RB_FLOAT_TYPE_P.exit.thread.i, %bb.e, %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit, %bb.g
  %.0 = phi i64 [ 4, %rbimpl_RB_TYPE_P_fastpath.exit ], [ %i.ac, %bb.g ], [ %i.e, %bb.c ], [ %i.n, %bb.e ], [ %i.s, %RB_FLOAT_TYPE_P.exit.thread.i ], [ %i.t, %RB_FLOAT_TYPE_P.exit.thread19.i ], [ 4, %bb.f ]
  ret i64 %.0
}

declare i64 @rb_big_ge(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_int_comp(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = trunc i64 %0 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = xor i64 %0, -2
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %0, 0
  %i.d = and i64 %0, 6
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.c
  %i.g = inttoptr i64 %0 to ptr
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20
  %i.i = and i64 %i.h, 31
  %i.j = icmp eq i64 %i.i, 10
  br i1 %i.j, label %bb.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.k = tail call i64 @rb_big_comp(i64 noundef %0) #25
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit, %bb.d, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ %i.k, %bb.d ], [ 4, %rbimpl_RB_TYPE_P_fastpath.exit ], [ 4, %bb.c ]
  ret i64 %.0
}

declare i64 @rb_big_comp(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 37, 36) i64 @rb_num_coerce_bit(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [3 x i64], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %2, ptr %i.a, align 16, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store i64 %0, ptr %i.b, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 %1, ptr %i.c, align 16, !tbaa !18
  call fastcc void @do_coerce(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 1)
  %i.d = load i64, ptr %i.c, align 16, !tbaa !18
  %i.e = load i64, ptr %i.b, align 8, !tbaa !18
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = call i64 @rb_exec_recursive_paired(ptr noundef nonnull @num_funcall_bit_1, i64 noundef %i.d, i64 noundef %i.e, i64 noundef %i.f) #25 ; 2 uses
  %i.h = icmp eq i64 %i.g, 36
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call fastcc void @coerce_failed(i64 noundef %0, i64 noundef %1) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i64 %i.g
}

declare i64 @rb_exec_recursive_paired(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @num_funcall_bit_1(i64 noundef %0, i64 noundef %1, i32 noundef %2) #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !18
  %i.b = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @num_funcall_op_1_recursion(i64 noundef %i.e, i64 noundef %i.c, i64 noundef %0) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = call i64 @rb_check_funcall(i64 noundef %i.e, i64 noundef %i.c, i32 noundef 1, ptr noundef nonnull %i.a) #25
  ret i64 %i.f
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @coerce_failed(i64 noundef %0, i64 noundef %1) unnamed_addr #14 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = and i64 %1, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  %i.e = and i64 %1, 255
  %i.f = icmp eq i64 %i.e, 12
  %or.cond = or i1 %i.f, %i.d
  br i1 %or.cond, label %RB_SYMBOL_P.exit.thread, label %RB_SYMBOL_P.exit

RB_SYMBOL_P.exit:                                 ; preds = %bb.a
  %i.g = inttoptr i64 %1 to ptr
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20
  %i.i = and i64 %i.h, 31
  switch i64 %i.i, label %bb.b [
    i64 20, label %RB_SYMBOL_P.exit.thread
    i64 4, label %RB_SYMBOL_P.exit.thread
  ]

RB_SYMBOL_P.exit.thread:                          ; preds = %RB_SYMBOL_P.exit, %RB_SYMBOL_P.exit, %bb.a
  %i.j = tail call i64 @rb_inspect(i64 noundef %1) #25
  br label %bb.c

bb.b:                                             ; preds = %RB_SYMBOL_P.exit
  %i.k = tail call i64 @rb_obj_class(i64 noundef %1) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %RB_SYMBOL_P.exit.thread
  %.0 = phi i64 [ %i.j, %RB_SYMBOL_P.exit.thread ], [ %i.k, %bb.b ]
  %i.l = load i64, ptr @rb_eTypeError, align 8, !tbaa !18
  %i.m = tail call i64 @rb_obj_class(i64 noundef %0) #25
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.l, ptr noundef nonnull @.str.150, i64 noundef %.0, i64 noundef %i.m) #24
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_int_and(i64 noundef %0, i64 noundef %1) #2 {
bb.a:
  %i.a = alloca [3 x i64], align 16               ; 6 uses
  %i.b = trunc i64 %0 to i1
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = trunc i64 %1 to i1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = and i64 %1, %0
  br label %fix_and.exit

bb.d:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %1, 0
  %i.f = and i64 %1, 6
  %i.g = icmp ne i64 %i.f, 0
  %i.h = or i1 %i.e, %i.g
  br i1 %i.h, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.d
  %i.i = inttoptr i64 %1 to ptr
  %i.j = load i64, ptr %i.i, align 8, !tbaa !20
  %i.k = and i64 %i.j, 31
  %i.l = icmp eq i64 %i.k, 10
  br i1 %i.l, label %bb.e, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.m = tail call i64 @rb_big_and(i64 noundef %1, i64 noundef %0) #25
  br label %fix_and.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 38, ptr %i.a, align 16, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store i64 %0, ptr %i.n, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 %1, ptr %i.o, align 16, !tbaa !18
  call fastcc void @do_coerce(ptr noundef nonnull %i.n, ptr noundef nonnull %i.o, i32 noundef 1)
  %i.p = load i64, ptr %i.o, align 16, !tbaa !18
  %i.q = load i64, ptr %i.n, align 8, !tbaa !18
  %i.r = ptrtoint ptr %i.a to i64
  %i.s = call i64 @rb_exec_recursive_paired(ptr noundef nonnull @num_funcall_bit_1, i64 noundef %i.p, i64 noundef %i.q, i64 noundef %i.r) #25 ; 2 uses
  %i.t = icmp eq i64 %i.s, 36
  br i1 %i.t, label %bb.f, label %rb_num_coerce_bit.exit.i

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  call fastcc void @coerce_failed(i64 noundef %0, i64 noundef %1) #28
  unreachable

rb_num_coerce_bit.exit.i:                         ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %fix_and.exit

bb.g:                                             ; preds = %bb.a
  %i.u = icmp eq i64 %0, 0
  %i.v = and i64 %0, 6
  %i.w = icmp ne i64 %i.v, 0
  %i.x = or i1 %i.u, %i.w
  br i1 %i.x, label %fix_and.exit, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.g
  %i.y = inttoptr i64 %0 to ptr
  %i.z = load i64, ptr %i.y, align 8, !tbaa !20
  %i.aa = and i64 %i.z, 31
  %i.ab = icmp eq i64 %i.aa, 10
  br i1 %i.ab, label %bb.h, label %fix_and.exit

bb.h:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.ac = tail call i64 @rb_big_and(i64 noundef %0, i64 noundef %1) #25
  br label %fix_and.exit

fix_and.exit:                                     ; preds = %bb.g, %rb_num_coerce_bit.exit.i, %bb.e, %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit, %bb.h
  %.0 = phi i64 [ 4, %rbimpl_RB_TYPE_P_fastpath.exit ], [ %i.ac, %bb.h ], [ %i.s, %rb_num_coerce_bit.exit.i ], [ %i.m, %bb.e ], [ %i.d, %bb.c ], [ 4, %bb.g ]
  ret i64 %.0
}

declare i64 @rb_big_and(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_int_xor(i64 noundef %0, i64 noundef %1) #2 {
bb.a:
  %i.a = alloca [3 x i64], align 16               ; 6 uses
  %i.b = trunc i64 %0 to i1
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = trunc i64 %1 to i1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = xor i64 %1, %0
  %i.e = or disjoint i64 %i.d, 1
  br label %fix_xor.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %1, 0
  %i.g = and i64 %1, 6
  %i.h = icmp ne i64 %i.g, 0
  %i.i = or i1 %i.f, %i.h
  br i1 %i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.d
  %i.j = inttoptr i64 %1 to ptr
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20
  %i.l = and i64 %i.k, 31
end_hunk_0
begin_hunk_1_@flo_next_float:bb.a

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.d, i64 range(i64 3458764513820540929, 3458764513820540928) %i.d, i64 3)
  %i.k = and i64 %i.j, -4
  %i.l = or disjoint i64 %i.k, 2
  br label %flo_nextafter.exit

bb.d:                                             ; preds = %bb.b
  %i.m = icmp eq i64 %i.d, 0
  br i1 %i.m, label %flo_nextafter.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !26
  store volatile ptr %i.o, ptr %i.a, align 8, !tbaa !26
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = load i64, ptr @rb_cFloat, align 8, !tbaa !18
  %i.q = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, i64 noundef %i.p, i64 noundef 4, i32 noundef 0, i64 noundef 24) #25 ; 3 uses
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr i8, ptr %i.r, i64 16
  store double %i.c, ptr %i.s, align 8, !tbaa !29
  tail call void @rb_obj_freeze_inline(i64 noundef %i.q) #25
  br label %flo_nextafter.exit

flo_nextafter.exit:                               ; preds = %bb.c, %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.l, %bb.c ], [ %i.q, %bb.e ], [ -9223372036854775806, %bb.d ]
  ret i64 %.0.i.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @flo_prev_float(i64 noundef %0) #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call double @rb_num2dbl(i64 noundef %0) #25
  %i.c = tail call double @nextafter(double noundef %i.b, double noundef -inf) #25, !tbaa !16 ; 2 uses
  %i.d = bitcast double %i.c to i64               ; 5 uses
  %cond.i.i = icmp eq i64 %i.d, 3458764513820540928
  br i1 %cond.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %i.d, 60
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 7
  %i.h = add nsw i32 %i.g, -5
  %i.i = icmp ult i32 %i.h, -2
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.d, i64 range(i64 3458764513820540929, 3458764513820540928) %i.d, i64 3)
  %i.k = and i64 %i.j, -4
  %i.l = or disjoint i64 %i.k, 2
  br label %flo_nextafter.exit

bb.d:                                             ; preds = %bb.b
  %i.m = icmp eq i64 %i.d, 0
  br i1 %i.m, label %flo_nextafter.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !26
  store volatile ptr %i.o, ptr %i.a, align 8, !tbaa !26
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = load i64, ptr @rb_cFloat, align 8, !tbaa !18
  %i.q = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, i64 noundef %i.p, i64 noundef 4, i32 noundef 0, i64 noundef 24) #25 ; 3 uses
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr i8, ptr %i.r, i64 16
  store double %i.c, ptr %i.s, align 8, !tbaa !29
  tail call void @rb_obj_freeze_inline(i64 noundef %i.q) #25
  br label %flo_nextafter.exit

flo_nextafter.exit:                               ; preds = %bb.c, %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.l, %bb.c ], [ %i.q, %bb.e ], [ -9223372036854775806, %bb.d ]
  ret i64 %.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @rb_float_value(i64 noundef %0) local_unnamed_addr #12 {
bb.a:
  %i.a = and i64 %0, 3
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %0, -9223372036854775806
  br i1 %.not.i.i, label %rb_float_value_inline.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.neg.i.i = ashr i64 %0, 63
  %i.c = add nsw i64 %.neg.i.i, 2
  %i.d = and i64 %0, -4
  %i.e = or i64 %i.c, %i.d                        ; 2 uses
  %i.f = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.e, i64 range(i64 1, 0) %i.e, i64 61)
  %i.g = bitcast i64 %i.f to double
  br label %rb_float_value_inline.exit

bb.d:                                             ; preds = %bb.a
  %i.h = inttoptr i64 %0 to ptr
  %i.i = getelementptr i8, ptr %i.h, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !29
  br label %rb_float_value_inline.exit

rb_float_value_inline.exit:                       ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi double [ %i.j, %bb.d ], [ %i.g, %bb.c ], [ 0.000000e+00, %bb.b ]
  ret double %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_float_new(double noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = bitcast double %0 to i64                 ; 5 uses
  %cond.i = icmp eq i64 %i.b, 3458764513820540928
  br i1 %cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %i.b, 60
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = and i32 %i.d, 7
  %i.f = add nsw i32 %i.e, -5
  %i.g = icmp ult i32 %i.f, -2
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.b, i64 range(i64 3458764513820540929, 3458764513820540928) %i.b, i64 3)
  %i.i = and i64 %i.h, -4
  %i.j = or disjoint i64 %i.i, 2
  br label %rb_float_new_inline.exit

bb.d:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.b, 0
  br i1 %i.k, label %rb_float_new_inline.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26
  store volatile ptr %i.m, ptr %i.a, align 8, !tbaa !26
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = load i64, ptr @rb_cFloat, align 8, !tbaa !18
  %i.o = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 noundef %i.n, i64 noundef 4, i32 noundef 0, i64 noundef 24) #25 ; 3 uses
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr i8, ptr %i.p, i64 16
  store double %0, ptr %i.q, align 8, !tbaa !29
  tail call void @rb_obj_freeze_inline(i64 noundef %i.o) #25
  br label %rb_float_new_inline.exit

rb_float_new_inline.exit:                         ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.j, %bb.c ], [ %i.o, %bb.e ], [ -9223372036854775806, %bb.d ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @Init_builtin_numeric() local_unnamed_addr #2 {
bb.a:
  tail call void @rb_load_with_builtin_functions(ptr noundef nonnull @.str.139, ptr noundef nonnull @Init_builtin_numeric.numeric_table) #25
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @builtin_inline_class_106(ptr nofree readnone captures(none) %0, i64 noundef %1) #2 {
bb.a:
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = ashr i64 %1, 1                           ; 2 uses
  %i.c = sub nsw i64 0, %i.b                      ; 2 uses
  %.not.i.i = icmp eq i64 %i.b, -4611686018427387904
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = shl nsw i64 %i.c, 1
  %i.e = or disjoint i64 %i.d, 1
  br label %rb_int_uminus.exit

bb.d:                                             ; preds = %bb.b
  %i.f = tail call i64 @rb_int2big(i64 noundef %i.c) #25
  br label %rb_int_uminus.exit

bb.e:                                             ; preds = %bb.a
  %i.g = tail call i64 @rb_big_uminus(i64 noundef %1) #25
  br label %rb_int_uminus.exit

rb_int_uminus.exit:                               ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.g, %bb.e ], [ %i.e, %bb.c ], [ %i.f, %bb.d ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @builtin_inline_class_125(ptr nofree readnone captures(none) %0, i64 noundef %1) #2 {
bb.a:
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = xor i64 %1, -2
  br label %rb_int_comp.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %1, 0
  %i.d = and i64 %1, 6
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %rb_int_comp.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.c
  %i.g = inttoptr i64 %1 to ptr
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20
  %i.i = and i64 %i.h, 31
  %i.j = icmp eq i64 %i.i, 10
  br i1 %i.j, label %bb.d, label %rb_int_comp.exit

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.k = tail call i64 @rb_big_comp(i64 noundef %1) #25
  br label %rb_int_comp.exit

rb_int_comp.exit:                                 ; preds = %bb.b, %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.d
  %.0.i = phi i64 [ %i.b, %bb.b ], [ %i.k, %bb.d ], [ 4, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ 4, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @builtin_inline_class_139(ptr nofree readnone captures(none) %0, i64 noundef %1) #2 {
bb.a:
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = ashr i64 %1, 1
  %spec.select.i.i = tail call i64 @llvm.abs.i64(i64 %i.b, i1 true) ; 2 uses
  %i.c = icmp samesign ult i64 %spec.select.i.i, 4611686018427387904
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = shl nuw nsw i64 %spec.select.i.i, 1
  %i.e = or disjoint i64 %i.d, 1
  br label %rb_int_abs.exit

bb.d:                                             ; preds = %bb.b
  %i.f = tail call i64 @rb_int2big(i64 noundef 4611686018427387904) #25
  br label %rb_int_abs.exit

bb.e:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %1, 0
  %i.h = and i64 %1, 6
  %i.i = icmp ne i64 %i.h, 0
  %i.j = or i1 %i.g, %i.i
  br i1 %i.j, label %rb_int_abs.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.e
  %i.k = inttoptr i64 %1 to ptr
  %i.l = load i64, ptr %i.k, align 8, !tbaa !20
  %i.m = and i64 %i.l, 31
  %i.n = icmp eq i64 %i.m, 10
  br i1 %i.n, label %bb.f, label %rb_int_abs.exit

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.o = tail call i64 @rb_big_abs(i64 noundef %1) #25
  br label %rb_int_abs.exit

rb_int_abs.exit:                                  ; preds = %bb.c, %bb.d, %bb.e, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.f
  %.0.i = phi i64 [ 4, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.o, %bb.f ], [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ 4, %bb.e ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @builtin_inline_class_186(ptr nofree readnone captures(none) %0, i64 noundef %1) #2 {
bb.a:
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = ashr i64 %1, 1
  %.lobit.i.i = ashr i64 %1, 63
  %spec.select.i.i = xor i64 %i.b, %.lobit.i.i
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.d = shl nuw nsw i64 %i.c, 1
  %i.e = sub nuw nsw i64 129, %i.d
  br label %rb_int_bit_length.exit

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %1, 0
  %i.g = and i64 %1, 6
  %i.h = icmp ne i64 %i.g, 0
  %i.i = or i1 %i.f, %i.h
  br i1 %i.i, label %rb_int_bit_length.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.c
  %i.j = inttoptr i64 %1 to ptr
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20
  %i.l = and i64 %i.k, 31
  %i.m = icmp eq i64 %i.l, 10
  br i1 %i.m, label %bb.d, label %rb_int_bit_length.exit

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.n = tail call i64 @rb_big_bit_length(i64 noundef %1) #25
  br label %rb_int_bit_length.exit

rb_int_bit_length.exit:                           ; preds = %bb.b, %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.d
  %.0.i = phi i64 [ %i.e, %bb.b ], [ %i.n, %bb.d ], [ 4, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ 4, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @builtin_inline_class_195(ptr nofree readnone captures(none) %0, i64 noundef %1) #2 {
bb.a:
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %1, 2
  %i.c = icmp eq i64 %i.b, 0
  %i.d = select i1 %i.c, i64 20, i64 0
  br label %rb_int_even_p.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i64 @rb_big_even_p(i64 noundef %1) #25
  br label %rb_int_even_p.exit

rb_int_even_p.exit:                               ; preds = %bb.b, %bb.c
  %.0.i.i = phi i64 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i64 %.0.i.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @builtin_inline_class_214(ptr nofree readnone captures(none) %0, i64 noundef %1) #2 {
bb.a:
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %1, 2
  %.not.i = icmp eq i64 %i.b, 0
  %i.c = select i1 %.not.i, i64 0, i64 20
  br label %rb_int_odd_p.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @rb_big_odd_p(i64 noundef %1) #25
  br label %rb_int_odd_p.exit

rb_int_odd_p.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @builtin_inline_class_241(ptr nofree readnone captures(none) %0, i64 noundef %1) #2 {
bb.a:
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %rb_int_size.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %1, 0
  %i.c = and i64 %1, 6
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %rb_int_size.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.b
  %i.f = inttoptr i64 %1 to ptr
  %i.g = load i64, ptr %i.f, align 8, !tbaa !20
  %i.h = and i64 %i.g, 31
  %i.i = icmp eq i64 %i.h, 10
  br i1 %i.i, label %bb.c, label %rb_int_size.exit

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.j = tail call i64 @rb_big_size_m(i64 noundef %1) #25
  br label %rb_int_size.exit

rb_int_size.exit:                                 ; preds = %bb.a, %bb.b, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.c
  %.0.i = phi i64 [ 4, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.j, %bb.c ], [ 17, %bb.a ], [ 4, %bb.b ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @builtin_inline_class_258(ptr nofree readnone captures(none) %0, i64 noundef %1) #2 {
bb.a:
  %i.a = tail call i64 @rb_frame_this_func() #25
  %i.b = tail call i64 @rb_id2sym(i64 noundef %i.a) #25
  %i.c = tail call i64 @rb_enumeratorize_with_size(i64 noundef %1, i64 noundef %i.b, i32 noundef 0, ptr noundef null, ptr noundef nonnull @int_dotimes_size) #25
  ret i64 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @builtin_inline_class_290(ptr nofree readnone captures(none) %0, i64 noundef %1) #2 {
bb.a:
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %1, 1
  br label %rb_int_zero_p.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i32 @rb_bigzero_p(i64 noundef %1) #25
  %i.d = icmp ne i32 %i.c, 0
  br label %rb_int_zero_p.exit

rb_int_zero_p.exit:                               ; preds = %bb.b, %bb.c
  %.0.i.i = phi i1 [ %i.b, %bb.b ], [ %i.d, %bb.c ]
  %i.e = select i1 %.0.i.i, i64 20, i64 0
  ret i64 %i.e
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @rb_builtin_basic_definition_p(ptr nofree readnone captures(none) %0, i64 noundef %1, i64 noundef %2) #8 {
bb.a:
  %i.a = tail call i64 @rb_sym2id(i64 noundef %2) #25
  %i.b = tail call i32 @rb_method_basic_definition_p(i64 noundef %1, i64 noundef %i.a) #25
  %.not = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not, i64 0, i64 20
  ret i64 %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @builtin_inline_class_340(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
end_hunk_1
