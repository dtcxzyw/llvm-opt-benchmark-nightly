inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0_@zif_decbin:bb.a
  %i.i = call zeroext i1 @zend_parse_arg_long_slow(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, i32 noundef 1) #13
  br i1 %i.i, label %.critedgethread-pre-split, label %bb.c, !prof !64

bb.c:                                             ; preds = %zend_parse_arg_long_ex.exit, %.thread52
  %.059 = phi i32 [ 0, %.thread52 ], [ 1, %zend_parse_arg_long_ex.exit ]
  %.03758 = phi i32 [ 1, %.thread52 ], [ 9, %zend_parse_arg_long_ex.exit ]
  %.03857 = phi ptr [ null, %.thread52 ], [ %i.d, %zend_parse_arg_long_ex.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.03758, i32 noundef %.059, ptr noundef null, i32 noundef 0, ptr noundef %.03857) #13
  br label %bb.e

.critedgethread-pre-split:                        ; preds = %zend_parse_arg_long_ex.exit
  %.pr = load i64, ptr %i.a, align 8, !tbaa !22
  br label %.critedge

.critedge:                                        ; preds = %.critedgethread-pre-split, %.thread
  %i.j = phi i64 [ %.pr, %.critedgethread-pre-split ], [ %i.h, %.thread ] ; 3 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.j, i1 true)
  %narrow.i = sub nuw nsw i64 64, %i.l
  %.018.i = select i1 %i.k, i64 1, i64 %narrow.i  ; 3 uses
  %i.m = and i64 %.018.i, 120
  %i.n = add nuw nsw i64 %i.m, 32
  %i.o = call noalias ptr @_emalloc(i64 noundef %i.n) #16 ; 7 uses
  store i32 1, ptr %i.o, align 4, !tbaa !61
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 22, ptr %i.p, align 4, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 0, ptr %i.q, align 8, !tbaa !62
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.018.i, ptr %i.r, align 8, !tbaa !48
  %.add.i = add nuw nsw i64 %.018.i, 24           ; 2 uses
  %.ptr21.i = getelementptr inbounds nuw i8, ptr %i.o, i64 %.add.i
  store i8 0, ptr %.ptr21.i, align 1, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.critedge
  %.017.i = phi i64 [ %i.j, %.critedge ], [ %i.w, %bb.d ] ; 2 uses
  %.0.idx.i = phi i64 [ %.add.i, %.critedge ], [ %.0.add.i, %bb.d ] ; 2 uses
  %i.s = icmp sgt i64 %.0.idx.i, 24
  call void @llvm.assume(i1 %i.s)
  %i.t = and i64 %.017.i, 1
  %i.u = getelementptr inbounds nuw i8, ptr @_php_math_longtobase_pwr2.digits, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !15
  %.0.add.i = add nsw i64 %.0.idx.i, -1           ; 2 uses
  %.ptr.i = getelementptr inbounds nuw i8, ptr %i.o, i64 %.0.add.i
  store i8 %i.v, ptr %.ptr.i, align 1, !tbaa !15
  %i.w = lshr i64 %.017.i, 1                      ; 2 uses
  %.not.i = icmp eq i64 %i.w, 0
  br i1 %.not.i, label %_php_math_longtobase_pwr2.exit, label %bb.d, !llvm.loop !65

_php_math_longtobase_pwr2.exit:                   ; preds = %bb.d
  store ptr %i.o, ptr %1, align 8, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 262, ptr %i.x, align 8, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %_php_math_longtobase_pwr2.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zif_decoct(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !15
  %cond = icmp eq i32 %i.c, 1
  br i1 %cond, label %bb.b, label %.thread52, !prof !16

.thread52:                                        ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 1) #13
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i8, ptr %i.e, align 8, !tbaa !15
  %i.g = icmp eq i8 %i.f, 4
  br i1 %i.g, label %.thread, label %zend_parse_arg_long_ex.exit, !prof !25

.thread:                                          ; preds = %bb.b
  %i.h = load i64, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  store i64 %i.h, ptr %i.a, align 8, !tbaa !22
  br label %.critedge

zend_parse_arg_long_ex.exit:                      ; preds = %bb.b
  %i.i = call zeroext i1 @zend_parse_arg_long_slow(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, i32 noundef 1) #13
  br i1 %i.i, label %.critedgethread-pre-split, label %bb.c, !prof !64

bb.c:                                             ; preds = %zend_parse_arg_long_ex.exit, %.thread52
  %.059 = phi i32 [ 0, %.thread52 ], [ 1, %zend_parse_arg_long_ex.exit ]
  %.03758 = phi i32 [ 1, %.thread52 ], [ 9, %zend_parse_arg_long_ex.exit ]
  %.03857 = phi ptr [ null, %.thread52 ], [ %i.d, %zend_parse_arg_long_ex.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.03758, i32 noundef %.059, ptr noundef null, i32 noundef 0, ptr noundef %.03857) #13
  br label %bb.f

.critedgethread-pre-split:                        ; preds = %zend_parse_arg_long_ex.exit
  %.pr = load i64, ptr %i.a, align 8, !tbaa !22
  br label %.critedge

.critedge:                                        ; preds = %.critedgethread-pre-split, %.thread
  %i.j = phi i64 [ %.pr, %.critedgethread-pre-split ], [ %i.h, %.thread ] ; 3 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %zend_string_alloc.exit, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.l = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.j, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i8
  %.lhs.trunc = sub nuw nsw i8 66, %i.m
  %i.n = udiv i8 %.lhs.trunc, 3
  %.zext = zext nneg i8 %i.n to i64
  br label %zend_string_alloc.exit

zend_string_alloc.exit:                           ; preds = %.critedge, %bb.d
  %.018.i = phi i64 [ %.zext, %bb.d ], [ 1, %.critedge ] ; 3 uses
  %i.o = and i64 %.018.i, 120
  %i.p = add nuw nsw i64 %i.o, 32
  %i.q = call noalias ptr @_emalloc(i64 noundef %i.p) #16 ; 7 uses
  store i32 1, ptr %i.q, align 4, !tbaa !61
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 22, ptr %i.r, align 4, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !62
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.018.i, ptr %i.t, align 8, !tbaa !48
  %.add.i = add nuw nsw i64 %.018.i, 24           ; 2 uses
  %.ptr21.i = getelementptr inbounds nuw i8, ptr %i.q, i64 %.add.i
  store i8 0, ptr %.ptr21.i, align 1, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %zend_string_alloc.exit
  %.017.i = phi i64 [ %i.j, %zend_string_alloc.exit ], [ %i.y, %bb.e ] ; 2 uses
  %.0.idx.i = phi i64 [ %.add.i, %zend_string_alloc.exit ], [ %.0.add.i, %bb.e ] ; 2 uses
  %i.u = icmp sgt i64 %.0.idx.i, 24
  call void @llvm.assume(i1 %i.u)
  %i.v = and i64 %.017.i, 7
  %i.w = getelementptr inbounds nuw i8, ptr @_php_math_longtobase_pwr2.digits, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !15
  %.0.add.i = add nsw i64 %.0.idx.i, -1           ; 2 uses
  %.ptr.i = getelementptr inbounds nuw i8, ptr %i.q, i64 %.0.add.i
  store i8 %i.x, ptr %.ptr.i, align 1, !tbaa !15
  %i.y = lshr i64 %.017.i, 3                      ; 2 uses
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %_php_math_longtobase_pwr2.exit, label %bb.e, !llvm.loop !65

_php_math_longtobase_pwr2.exit:                   ; preds = %bb.e
  store ptr %i.q, ptr %1, align 8, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 262, ptr %i.z, align 8, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_php_math_longtobase_pwr2.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zif_dechex(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !15
  %cond = icmp eq i32 %i.c, 1
  br i1 %cond, label %bb.b, label %.thread52, !prof !16

.thread52:                                        ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 1) #13
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i8, ptr %i.e, align 8, !tbaa !15
  %i.g = icmp eq i8 %i.f, 4
  br i1 %i.g, label %.thread, label %zend_parse_arg_long_ex.exit, !prof !25

.thread:                                          ; preds = %bb.b
  %i.h = load i64, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  store i64 %i.h, ptr %i.a, align 8, !tbaa !22
  br label %.critedge

zend_parse_arg_long_ex.exit:                      ; preds = %bb.b
  %i.i = call zeroext i1 @zend_parse_arg_long_slow(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, i32 noundef 1) #13
  br i1 %i.i, label %.critedgethread-pre-split, label %bb.c, !prof !64

bb.c:                                             ; preds = %zend_parse_arg_long_ex.exit, %.thread52
  %.059 = phi i32 [ 0, %.thread52 ], [ 1, %zend_parse_arg_long_ex.exit ]
  %.03758 = phi i32 [ 1, %.thread52 ], [ 9, %zend_parse_arg_long_ex.exit ]
  %.03857 = phi ptr [ null, %.thread52 ], [ %i.d, %zend_parse_arg_long_ex.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.03758, i32 noundef %.059, ptr noundef null, i32 noundef 0, ptr noundef %.03857) #13
  br label %bb.e

.critedgethread-pre-split:                        ; preds = %zend_parse_arg_long_ex.exit
  %.pr = load i64, ptr %i.a, align 8, !tbaa !22
  br label %.critedge

.critedge:                                        ; preds = %.critedgethread-pre-split, %.thread
  %i.j = phi i64 [ %.pr, %.critedgethread-pre-split ], [ %i.h, %.thread ] ; 3 uses
  %2 = icmp eq i64 %i.j, 0
  %i.k = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.j, i1 true)
  %.lhs.trunc = sub nuw nsw i64 67, %i.k
  %.zext = lshr i64 %.lhs.trunc, 2
  %.018.i = select i1 %2, i64 1, i64 %.zext       ; 3 uses
  %i.l = and i64 %.018.i, 24
  %i.m = or disjoint i64 %i.l, 32
  %i.n = call noalias ptr @_emalloc(i64 noundef %i.m) #16 ; 7 uses
  store i32 1, ptr %i.n, align 4, !tbaa !61
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 22, ptr %i.o, align 4, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !62
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.018.i, ptr %i.q, align 8, !tbaa !48
  %.add.i = add nuw nsw i64 %.018.i, 24           ; 2 uses
  %.ptr21.i = getelementptr inbounds nuw i8, ptr %i.n, i64 %.add.i
  store i8 0, ptr %.ptr21.i, align 1, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.critedge
  %.017.i = phi i64 [ %i.j, %.critedge ], [ %i.v, %bb.d ] ; 2 uses
  %.0.idx.i = phi i64 [ %.add.i, %.critedge ], [ %.0.add.i, %bb.d ] ; 2 uses
  %i.r = icmp sgt i64 %.0.idx.i, 24
  call void @llvm.assume(i1 %i.r)
  %i.s = and i64 %.017.i, 15
  %i.t = getelementptr inbounds nuw i8, ptr @_php_math_longtobase_pwr2.digits, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !15
  %.0.add.i = add nsw i64 %.0.idx.i, -1           ; 2 uses
  %.ptr.i = getelementptr inbounds nuw i8, ptr %i.n, i64 %.0.add.i
  store i8 %i.u, ptr %.ptr.i, align 1, !tbaa !15
  %i.v = lshr i64 %.017.i, 4                      ; 2 uses
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %_php_math_longtobase_pwr2.exit, label %bb.d, !llvm.loop !65

_php_math_longtobase_pwr2.exit:                   ; preds = %bb.d
  store ptr %i.n, ptr %1, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 262, ptr %i.w, align 8, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %_php_math_longtobase_pwr2.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zflf_dechex_1(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !15
  %i.d = icmp eq i8 %i.c, 4
  br i1 %i.d, label %zend_parse_arg_long_ex.exit.thread, label %zend_parse_arg_long_ex.exit, !prof !25

zend_parse_arg_long_ex.exit.thread:               ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !tbaa !15     ; 2 uses
  store i64 %i.e, ptr %i.a, align 8, !tbaa !22
  br label %zend_string_alloc.exit

zend_parse_arg_long_ex.exit:                      ; preds = %bb.a
  %i.f = call zeroext i1 @zend_flf_parse_arg_long_slow(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i32 noundef 1) #13
  br i1 %i.f, label %thread-pre-split, label %bb.b

bb.b:                                             ; preds = %zend_parse_arg_long_ex.exit
  call void @zend_wrong_parameter_type_error(i32 noundef 1, i32 noundef 0, ptr noundef nonnull %1) #13
  br label %bb.d

thread-pre-split:                                 ; preds = %zend_parse_arg_long_ex.exit
  %.pr = load i64, ptr %i.a, align 8, !tbaa !22
  br label %zend_string_alloc.exit

zend_string_alloc.exit:                           ; preds = %thread-pre-split, %zend_parse_arg_long_ex.exit.thread
  %i.g = phi i64 [ %.pr, %thread-pre-split ], [ %i.e, %zend_parse_arg_long_ex.exit.thread ] ; 3 uses
  %2 = icmp eq i64 %i.g, 0
  %i.h = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.g, i1 true)
  %.lhs.trunc = sub nuw nsw i64 67, %i.h
  %.zext = lshr i64 %.lhs.trunc, 2
  %.018.i = select i1 %2, i64 1, i64 %.zext       ; 3 uses
  %i.i = and i64 %.018.i, 24
  %i.j = or disjoint i64 %i.i, 32
  %i.k = call noalias ptr @_emalloc(i64 noundef %i.j) #16 ; 7 uses
  store i32 1, ptr %i.k, align 4, !tbaa !61
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 22, ptr %i.l, align 4, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !62
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.018.i, ptr %i.n, align 8, !tbaa !48
  %.add.i = add nuw nsw i64 %.018.i, 24           ; 2 uses
  %.ptr21.i = getelementptr inbounds nuw i8, ptr %i.k, i64 %.add.i
  store i8 0, ptr %.ptr21.i, align 1, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %zend_string_alloc.exit
  %.017.i = phi i64 [ %i.g, %zend_string_alloc.exit ], [ %i.s, %bb.c ] ; 2 uses
  %.0.idx.i = phi i64 [ %.add.i, %zend_string_alloc.exit ], [ %.0.add.i, %bb.c ] ; 2 uses
  %i.o = icmp sgt i64 %.0.idx.i, 24
  call void @llvm.assume(i1 %i.o)
  %i.p = and i64 %.017.i, 15
  %i.q = getelementptr inbounds nuw i8, ptr @_php_math_longtobase_pwr2.digits, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !15
  %.0.add.i = add nsw i64 %.0.idx.i, -1           ; 2 uses
  %.ptr.i = getelementptr inbounds nuw i8, ptr %i.k, i64 %.0.add.i
  store i8 %i.r, ptr %.ptr.i, align 1, !tbaa !15
  %i.s = lshr i64 %.017.i, 4                      ; 2 uses
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %_php_math_longtobase_pwr2.exit, label %bb.c, !llvm.loop !65

_php_math_longtobase_pwr2.exit:                   ; preds = %bb.c
  store ptr %i.k, ptr %0, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 262, ptr %i.t, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %_php_math_longtobase_pwr2.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

declare void @zend_wrong_parameter_type_error(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @zif_base_convert(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct._zval_struct, align 8       ; 4 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !15
  %.not = icmp eq i32 %i.e, 3
  br i1 %.not, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 3, i32 noundef 3) #13
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load i8, ptr %i.g, align 8, !tbaa !15
  %i.i = icmp eq i8 %i.h, 6
  br i1 %i.i, label %zend_parse_arg_str_ex.exit.thread, label %zend_parse_arg_str_ex.exit, !prof !25

zend_parse_arg_str_ex.exit.thread:                ; preds = %bb.c
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !15
  store ptr %i.j, ptr %i.a, align 8, !tbaa !59
  br label %bb.d

zend_parse_arg_str_ex.exit:                       ; preds = %bb.c
  %i.k = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, i32 noundef 1) #13
  br i1 %i.k, label %bb.d, label %.thread, !prof !21

bb.d:                                             ; preds = %zend_parse_arg_str_ex.exit.thread, %zend_parse_arg_str_ex.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = load i8, ptr %i.m, align 8, !tbaa !15
  %i.o = icmp eq i8 %i.n, 4
  br i1 %i.o, label %zend_parse_arg_long_ex.exit.thread, label %zend_parse_arg_long_ex.exit, !prof !25

zend_parse_arg_long_ex.exit.thread:               ; preds = %bb.d
  %i.p = load i64, ptr %i.l, align 8, !tbaa !15
  store i64 %i.p, ptr %i.b, align 8, !tbaa !22
  br label %bb.e

zend_parse_arg_long_ex.exit:                      ; preds = %bb.d
  %i.q = call zeroext i1 @zend_parse_arg_long_slow(ptr noundef nonnull %i.l, ptr noundef nonnull %i.b, i32 noundef 2) #13
  br i1 %i.q, label %bb.e, label %.thread, !prof !21

bb.e:                                             ; preds = %zend_parse_arg_long_ex.exit.thread, %zend_parse_arg_long_ex.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.t = load i8, ptr %i.s, align 8, !tbaa !15
  %i.u = icmp eq i8 %i.t, 4
  br i1 %i.u, label %.thread99, label %zend_parse_arg_long_ex.exit82, !prof !25

.thread99:                                        ; preds = %bb.e
  %i.v = load i64, ptr %i.r, align 8, !tbaa !15
  store i64 %i.v, ptr %i.c, align 8, !tbaa !22
  br label %.critedge

zend_parse_arg_long_ex.exit82:                    ; preds = %bb.e
  %i.w = call zeroext i1 @zend_parse_arg_long_slow(ptr noundef nonnull %i.r, ptr noundef nonnull %i.c, i32 noundef 3) #13
  br i1 %i.w, label %.critedge, label %.thread, !prof !64

.thread:                                          ; preds = %zend_parse_arg_long_ex.exit82, %zend_parse_arg_str_ex.exit, %zend_parse_arg_long_ex.exit, %bb.b
  %.098 = phi i32 [ 3, %zend_parse_arg_long_ex.exit82 ], [ 0, %bb.b ], [ 1, %zend_parse_arg_str_ex.exit ], [ 2, %zend_parse_arg_long_ex.exit ]
  %.07097 = phi i32 [ 9, %zend_parse_arg_long_ex.exit82 ], [ 1, %bb.b ], [ 9, %zend_parse_arg_str_ex.exit ], [ 9, %zend_parse_arg_long_ex.exit ]
  %.07196 = phi ptr [ %i.r, %zend_parse_arg_long_ex.exit82 ], [ null, %bb.b ], [ %i.f, %zend_parse_arg_str_ex.exit ], [ %i.l, %zend_parse_arg_long_ex.exit ]
  %.07295 = phi i32 [ 0, %zend_parse_arg_long_ex.exit82 ], [ 0, %bb.b ], [ 4, %zend_parse_arg_str_ex.exit ], [ 0, %zend_parse_arg_long_ex.exit ]
  call void @zend_wrong_parameter_error(i32 noundef %.07097, i32 noundef %.098, ptr noundef null, i32 noundef %.07295, ptr noundef %.07196) #13
  br label %bb.k

.critedge:                                        ; preds = %zend_parse_arg_long_ex.exit82, %.thread99
  %i.x = load i64, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %i.y = add i64 %i.x, -37
  %or.cond = icmp ult i64 %i.y, -35
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge
  call void (i32, ptr, ...) @zend_argument_value_error(i32 noundef 2, ptr noundef nonnull @.str.6) #13
  br label %bb.k

bb.g:                                             ; preds = %.critedge
  %i.z = load i64, ptr %i.c, align 8, !tbaa !22
  %i.aa = add i64 %i.z, -37
  %or.cond3 = icmp ult i64 %i.aa, -35
  br i1 %or.cond3, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void (i32, ptr, ...) @zend_argument_value_error(i32 noundef 3, ptr noundef nonnull @.str.6) #13
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.ac = trunc nuw nsw i64 %i.x to i32
  call void @_php_math_basetozval(ptr noundef %i.ab, i32 noundef %i.ac, ptr noundef nonnull %2)
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !22
  %i.ae = trunc i64 %i.ad to i32
  %i.af = call ptr @_php_math_zvaltobase(ptr noundef nonnull %2, i32 noundef %i.ae) ; 3 uses
  %.not77 = icmp eq ptr %i.af, null
  br i1 %.not77, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.af, ptr %1, align 8, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !15
  %i.ai = and i32 %i.ah, 64
  %.not78 = icmp eq i32 %i.ai, 0
  %i.aj = select i1 %.not78, i32 262, i32 6
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !15
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.i, %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_php_math_number_format(double noundef %0, i32 noundef %1, i8 noundef signext %2, i8 noundef signext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 2 uses
  %i.b = alloca i8, align 1                       ; 2 uses
  store i8 %2, ptr %i.a, align 1, !tbaa !15
  store i8 %3, ptr %i.b, align 1, !tbaa !15
  %i.c = call ptr @_php_math_number_format_ex(double noundef %0, i32 noundef %1, ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef nonnull %i.b, i64 noundef 1)
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_php_math_number_format_ex(double noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = fcmp olt double %0, 0.000000e+00         ; 2 uses
  %i.b = fneg double %0
  %.095 = select i1 %i.a, double %i.b, double %0
  %i.c = tail call double @_php_math_round(double noundef %.095, i32 noundef %1, i32 noundef 1) ; 2 uses
  %i.d = tail call i32 @llvm.smax.i32(i32 %1, i32 0) ; 3 uses
  %i.e = tail call ptr (i64, ptr, ...) @zend_strpprintf(i64 noundef 0, ptr noundef nonnull @.str.7, i32 noundef %i.d, double noundef %i.c) #13 ; 15 uses
  %i.f = ptrtoaddr ptr %i.e to i64
  %i.g = icmp eq ptr %i.e, null
  br i1 %i.g, label %zend_string_release_ex.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__ctype_b_loc() #15
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52
  %.ptr116 = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  %i.j = load i8, ptr %.ptr116, align 8, !tbaa !15
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !54
  %i.n = and i16 %i.m, 2048
  %.not = icmp eq i16 %i.n, 0
  br i1 %.not, label %zend_string_release_ex.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = fcmp une double %i.c, 0.000000e+00
  %.not104 = icmp slt i32 %1, 1                   ; 3 uses
  br i1 %.not104, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = tail call ptr @strpbrk(ptr noundef nonnull %.ptr116, ptr noundef nonnull @.str.8) #17 ; 3 uses
end_hunk_0
