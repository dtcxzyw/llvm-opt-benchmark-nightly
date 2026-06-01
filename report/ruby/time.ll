inline.NumInlined: 958
inline.NumDeleted: 130
begin_hunk_0_@wmul:bb.a
  ret i64 %.06.i
}

declare i64 @rb_big_mul(i64 noundef, i64 noundef) local_unnamed_addr #6

declare i64 @rb_int128t2big(i128 noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @divmodv(i64 noundef %0, i64 noundef %1, ptr noundef nonnull writeonly captures(none) %2, ptr noundef nonnull writeonly captures(none) %3) unnamed_addr #1 {
bb.a:
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.b = ashr i64 %1, 1                           ; 6 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @rb_num_zerodiv() #22
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = trunc i64 %0 to i1
  br i1 %i.d, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.e = ashr i64 %0, 1                           ; 3 uses
  %i.f = icmp eq i64 %i.e, -4611686018427387904
  %i.g = icmp eq i64 %i.b, -1
  %or.cond.i = and i1 %i.f, %i.g
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = tail call i64 @rb_int2big(i64 noundef 4611686018427387904) #18
  store i64 %i.h, ptr %2, align 8, !tbaa !13
  br label %rb_fix_divmod_fix.exit

bb.g:                                             ; preds = %bb.e
  %i.i = sdiv i64 %i.e, %i.b                      ; 3 uses
  %i.j = srem i64 %i.e, %i.b                      ; 5 uses
  %i.k = icmp sgt i64 %i.b, 0
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.l = icmp slt i64 %i.j, 0
  br i1 %i.l, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.m = icmp sgt i64 %i.j, 0
  br i1 %i.m, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.n = add nsw i64 %i.j, %i.b
  %i.o = add nsw i64 %i.i, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.024.i = phi i64 [ %i.o, %bb.j ], [ %i.i, %bb.h ], [ %i.i, %bb.i ]
  %.0.i = phi i64 [ %i.n, %bb.j ], [ %i.j, %bb.h ], [ %i.j, %bb.i ]
  %i.p = shl i64 %.024.i, 1
  %i.q = or disjoint i64 %i.p, 1
  store i64 %i.q, ptr %2, align 8, !tbaa !13
  %i.r = shl i64 %.0.i, 1
  %i.s = or disjoint i64 %i.r, 1
  br label %rb_fix_divmod_fix.exit

bb.l:                                             ; preds = %bb.d, %bb.a
  %i.t = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %0, i64 noundef 3601, i32 noundef 1, i64 noundef %1) #18 ; 2 uses
  %i.u = tail call i64 @rb_check_array_type(i64 noundef %i.t) #18 ; 3 uses
  %i.v = icmp eq i64 %i.u, 4
  br i1 %i.v, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.w = load i64, ptr @rb_eTypeError, align 8, !tbaa !13
  %i.x = tail call i64 @rb_obj_class(i64 noundef %i.t) #18
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @.str.93, i64 noundef %i.x) #19
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.y = tail call i64 @rb_ary_entry(i64 noundef %i.u, i64 noundef 0) #21
  store i64 %i.y, ptr %2, align 8, !tbaa !13
  %i.z = tail call i64 @rb_ary_entry(i64 noundef %i.u, i64 noundef 1) #21
  br label %rb_fix_divmod_fix.exit

rb_fix_divmod_fix.exit:                           ; preds = %bb.f, %bb.k, %bb.n
  %storemerge = phi i64 [ %i.z, %bb.n ], [ %i.s, %bb.k ], [ 1, %bb.f ]
  store i64 %storemerge, ptr %3, align 8, !tbaa !13
  ret void
}

; Function Attrs: cold noreturn
declare void @rb_num_zerodiv() local_unnamed_addr #8

declare i64 @rb_check_array_type(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_ary_entry(i64 noundef, i64 noundef) local_unnamed_addr #9

declare i64 @rb_Integer(i64 noundef) local_unnamed_addr #6

declare i64 @rb_struct_aref(i64 noundef, i64 noundef) local_unnamed_addr #6

declare i64 @rb_funcallv(i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare i64 @rb_numeric_quo(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @wsub(i64 noundef %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = and i64 %0, 1
  %i.b = and i64 %i.a, %1
  %or.cond.not.i = icmp eq i64 %i.b, 0
  br i1 %or.cond.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ashr i64 %0, 1
  %i.d = ashr i64 %1, 1
  %i.e = sub nsw i64 %i.c, %i.d                   ; 3 uses
  %i.f = add i64 %i.e, 4611686018427387904
  %or.cond.i.i = icmp sgt i64 %i.f, -1
  br i1 %or.cond.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = shl nsw i64 %i.e, 1
  %i.h = or disjoint i64 %i.g, 1
  br label %subv.exit

bb.d:                                             ; preds = %bb.b
  %i.i = tail call i64 @rb_int2big(i64 noundef %i.e) #18
  br label %subv.exit

bb.e:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %0, 0
  %i.k = and i64 %0, 7
  %i.l = icmp ne i64 %i.k, 0
  %i.m = or i1 %i.j, %i.l
  br i1 %i.m, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.e
  %i.n = inttoptr i64 %0 to ptr
  %i.o = load i64, ptr %i.n, align 8, !tbaa !30
  %i.p = and i64 %i.o, 31
  %i.q = icmp eq i64 %i.p, 10
  br i1 %i.q, label %bb.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.r = tail call i64 @rb_big_minus(i64 noundef %0, i64 noundef %1) #18
  br label %subv.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.e
  %i.s = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %0, i64 noundef 45, i32 noundef 1, i64 noundef %1) #18
  br label %subv.exit

subv.exit:                                        ; preds = %bb.c, %bb.d, %bb.f, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %.0.i = phi i64 [ %i.s, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ], [ %i.r, %bb.f ], [ %i.h, %bb.c ], [ %i.i, %bb.d ] ; 6 uses
  %i.t = icmp eq i64 %.0.i, 0
  %i.u = and i64 %.0.i, 7
  %i.v = icmp ne i64 %i.u, 0
  %i.w = or i1 %i.t, %i.v
  br i1 %i.w, label %v2w.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i2

rbimpl_RB_TYPE_P_fastpath.exit.i2:                ; preds = %subv.exit
  %i.x = inttoptr i64 %.0.i to ptr                ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !30
  %i.z = and i64 %i.y, 31
  %i.aa = icmp eq i64 %i.z, 15
  br i1 %i.aa, label %bb.g, label %v2w.exit

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i2
  %i.ab = getelementptr i8, ptr %i.x, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !39
  %.not.i = icmp eq i64 %i.ac, 3
  br i1 %.not.i, label %bb.h, label %v2w.exit

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr i8, ptr %i.x, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !41
  br label %v2w.exit

v2w.exit:                                         ; preds = %subv.exit, %rbimpl_RB_TYPE_P_fastpath.exit.i2, %bb.g, %bb.h
  %.06.i = phi i64 [ %.0.i, %bb.g ], [ %i.ae, %bb.h ], [ %.0.i, %rbimpl_RB_TYPE_P_fastpath.exit.i2 ], [ %.0.i, %subv.exit ]
  ret i64 %.06.i
}

declare i64 @rb_big_minus(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i64 5, 4) i64 @num_exact(i64 noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %rb_type.exit.i

bb.b:                                             ; preds = %bb.a
  switch i64 %0, label %bb.c [
    i64 0, label %rb_type.exit.thread.i
    i64 4, label %num_exact_check.exit
    i64 20, label %rb_type.exit.thread.i
    i64 36, label %rb_type.exit.thread.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = trunc i64 %0 to i1
  br i1 %i.e, label %rb_type.exit.thread17.i, label %rb_type.exit.thread.i

rb_type.exit.i:                                   ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr
  %i.g = load i64, ptr %i.f, align 8, !tbaa !30
  %i.h = trunc i64 %i.g to i32
  %i.i = and i32 %i.h, 31
  switch i32 %i.i, label %rb_type.exit.thread.i [
    i32 21, label %rb_type.exit.thread17.i
    i32 10, label %rb_type.exit.thread17.i
    i32 15, label %rb_type.exit.thread17.sink.split.i
    i32 17, label %num_exact_check.exit
    i32 5, label %num_exact_check.exit
  ]

rb_type.exit.thread.i:                            ; preds = %rb_type.exit.i, %bb.c, %bb.b, %bb.b, %bb.b
  %i.j = tail call i64 @rb_check_funcall(i64 noundef %0, i64 noundef 3425, i32 noundef 0, ptr noundef null) #18 ; 8 uses
  %i.k = icmp eq i64 %i.j, 36
  br i1 %i.k, label %bb.g, label %bb.d

bb.d:                                             ; preds = %rb_type.exit.thread.i
  %i.l = tail call i32 @rb_respond_to(i64 noundef %0, i64 noundef 3249) #18
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %num_exact_check.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = trunc i64 %i.j to i1
  br i1 %i.m, label %rb_type.exit.thread17.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = icmp eq i64 %i.j, 0
  %i.o = and i64 %i.j, 6
  %i.p = icmp ne i64 %i.o, 0
  %i.q = or i1 %i.n, %i.p
  br i1 %i.q, label %num_exact_check.exit, label %rb_integer_type_p.exit.i

rb_integer_type_p.exit.i:                         ; preds = %bb.f
  %i.r = inttoptr i64 %i.j to ptr
  %i.s = load i64, ptr %i.r, align 8, !tbaa !30
  %i.t = and i64 %i.s, 31
  switch i64 %i.t, label %num_exact_check.exit [
    i64 10, label %rb_type.exit.thread17.i
    i64 15, label %rb_type.exit.thread17.sink.split.i
  ]

bb.g:                                             ; preds = %rb_type.exit.thread.i
  %i.u = tail call i64 @rb_check_to_int(i64 noundef %0) #18 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4
  br i1 %i.v, label %num_exact_check.exit, label %bb.h

rb_type.exit.thread17.sink.split.i:               ; preds = %rb_integer_type_p.exit.i, %rb_type.exit.i
  %.sink.i = phi i64 [ %0, %rb_type.exit.i ], [ %i.j, %rb_integer_type_p.exit.i ]
  %i.w = tail call i64 @rb_rational_canonicalize(i64 noundef %.sink.i) #18
  br label %rb_type.exit.thread17.i

rb_type.exit.thread17.i:                          ; preds = %rb_integer_type_p.exit.i, %rb_type.exit.thread17.sink.split.i, %bb.e, %rb_type.exit.i, %rb_type.exit.i, %bb.c
  %.0.i = phi i64 [ %i.j, %rb_integer_type_p.exit.i ], [ %0, %bb.c ], [ %i.j, %bb.e ], [ %0, %rb_type.exit.i ], [ %0, %rb_type.exit.i ], [ %i.w, %rb_type.exit.thread17.sink.split.i ] ; 2 uses
  %i.x = icmp ne i64 %.0.i, 4
  tail call void @llvm.assume(i1 %i.x)
  br label %bb.h

num_exact_check.exit:                             ; preds = %rb_integer_type_p.exit.i, %bb.g, %bb.f, %bb.d, %rb_type.exit.i, %rb_type.exit.i, %bb.b
  tail call fastcc void @num_exact_fail(i64 noundef %0) #20
  unreachable

bb.h:                                             ; preds = %rb_type.exit.thread17.i, %bb.g
  %.013.i.ph = phi i64 [ %i.u, %bb.g ], [ %.0.i, %rb_type.exit.thread17.i ]
  ret i64 %.013.i.ph
}

declare ptr @rb_enc_get(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_enc_dummy_p(ptr noundef) local_unnamed_addr #9

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @num_exact_fail(i64 noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr @rb_eTypeError, align 8, !tbaa !13
  %i.b = tail call i64 @rb_obj_class(i64 noundef %0) #18
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.a, ptr noundef nonnull @.str.94, i64 noundef %i.b) #19
  unreachable
}

declare i64 @rb_rational_canonicalize(i64 noundef) local_unnamed_addr #6

declare i32 @rb_respond_to(i64 noundef, i64 noundef) local_unnamed_addr #6

declare i64 @rb_check_to_int(i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @rb_error_frozen_object(i64 noundef) local_unnamed_addr #3

declare void @rb_str_modify(i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal void @time_mark_and_move(ptr noundef %0) #1 {
bb.a:
  tail call void @rb_gc_mark_and_move(ptr noundef %0) #18
  %i.a = getelementptr i8, ptr %0, i64 8
  tail call void @rb_gc_mark_and_move(ptr noundef %i.a) #18
  %i.b = getelementptr i8, ptr %0, i64 16
  tail call void @rb_gc_mark_and_move(ptr noundef %i.b) #18
  %i.c = getelementptr i8, ptr %0, i64 24
  tail call void @rb_gc_mark_and_move(ptr noundef %i.c) #18
  %i.d = getelementptr i8, ptr %0, i64 32
  tail call void @rb_gc_mark_and_move(ptr noundef %i.d) #18
  ret void
}

declare void @rb_gc_mark_and_move(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @timew_out_of_timet_range(i64 noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = trunc i64 %0 to i1
  br i1 %i.a, label %cmp.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_int2big(i64 noundef -9223372036854775808) #18 ; 3 uses
  %i.c = and i64 %i.b, 1
  %or.cond.not.i = icmp eq i64 %i.c, 0
  br i1 %or.cond.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = ashr i64 %i.b, 1
  %i.e = sext i64 %i.d to i128
  %i.f = mul nsw i128 %i.e, 1000000000            ; 3 uses
  %i.g = add nsw i128 %i.f, 4611686018427387904
  %or.cond.i.i = icmp ult i128 %i.g, 9223372036854775808
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = trunc nsw i128 %i.f to i64
  %i.i = shl nsw i64 %i.h, 1
  %i.j = or disjoint i64 %i.i, 1
  br label %mulv.exit

bb.e:                                             ; preds = %bb.c
  %i.k = tail call i64 @rb_int128t2big(i128 noundef %i.f) #18
  br label %mulv.exit

bb.f:                                             ; preds = %bb.b
  %i.l = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef 2000000001, i64 noundef 42, i32 noundef 1, i64 noundef %i.b) #18
  br label %mulv.exit

mulv.exit:                                        ; preds = %bb.f, %bb.e, %bb.d
  %.0.i = phi i64 [ %i.l, %bb.f ], [ %i.k, %bb.e ], [ %i.j, %bb.d ] ; 3 uses
  %i.m = icmp eq i64 %0, 0
  %i.n = and i64 %0, 6
  %i.o = icmp ne i64 %i.n, 0
  %i.p = or i1 %i.m, %i.o
  br i1 %i.p, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %mulv.exit
  %i.q = inttoptr i64 %0 to ptr
  %i.r = load i64, ptr %i.q, align 8, !tbaa !30
  %i.s = and i64 %i.r, 31
  %i.t = icmp eq i64 %i.s, 10
  br i1 %i.t, label %bb.g, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.u = tail call i64 @rb_big_cmp(i64 noundef %0, i64 noundef %.0.i) #18
  %i.v = tail call i64 @rb_fix2int(i64 noundef %i.u) #18
  %i.w = trunc i64 %i.v to i32
  br label %cmp.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %mulv.exit
  %i.x = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %0, i64 noundef 135, i32 noundef 1, i64 noundef %.0.i) #18
  %i.y = tail call i32 @rb_cmpint(i64 noundef %i.x, i64 noundef %0, i64 noundef %.0.i) #18
  br label %cmp.exit

cmp.exit:                                         ; preds = %bb.g, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %.0.i7 = phi i32 [ %i.y, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ], [ %i.w, %bb.g ]
  %i.z = icmp slt i32 %.0.i7, 0
  br i1 %i.z, label %cmp.exit.thread, label %cmp.exit.thread26

cmp.exit.thread26:                                ; preds = %cmp.exit
  %i.aa = tail call i64 @rb_int2big(i64 noundef 9223372036854775807) #18 ; 7 uses
  %i.ab = and i64 %i.aa, 1
  %or.cond.not.i9 = icmp eq i64 %i.ab, 0
  br i1 %or.cond.not.i9, label %bb.k, label %bb.h

bb.h:                                             ; preds = %cmp.exit.thread26
  %i.ac = ashr i64 %i.aa, 1                       ; 2 uses
  %i.ad = add nsw i64 %i.ac, 1                    ; 2 uses
  %.not = icmp eq i64 %i.ac, 4611686018427387903
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = shl nsw i64 %i.ad, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %addv.exit

bb.j:                                             ; preds = %bb.h
  %i.ag = tail call i64 @rb_int2big(i64 noundef %i.ad) #18
end_hunk_0
