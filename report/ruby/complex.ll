inline.NumInlined: 549
inline.NumDeleted: 101
begin_hunk_0_@nucomp_to_s:bb.a
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @nucomp_inspect(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_usascii_str_new_static(ptr noundef nonnull @.str.74, i64 noundef 1) #17 ; 8 uses
  %i.b = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24       ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16
  %i.e = tail call fastcc i32 @f_tpositive_p(i64 noundef %i.d)
  %i.f = getelementptr i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  %i.h = tail call i64 @rb_inspect(i64 noundef %i.g) #17, !callees !54, !inline_history !55
  %i.i = tail call i64 @rb_str_concat(i64 noundef %i.a, i64 noundef %i.h) #17 ; 0 uses
  %.not.i = icmp eq i32 %i.e, 0
  %i.j = select i1 %.not.i, ptr @.str.34, ptr @.str.33
  %i.k = tail call i64 @rb_str_cat_cstr(i64 noundef %i.a, ptr noundef nonnull %i.j) #17 ; 0 uses
  %i.l = load i64, ptr %i.c, align 8, !tbaa !16   ; 12 uses
  %i.m = trunc i64 %i.l to i1
  br i1 %i.m, label %rb_integer_type_p.exit.thread.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = icmp eq i64 %i.l, 0                      ; 2 uses
  %i.o = and i64 %i.l, 6
  %i.p = icmp ne i64 %i.o, 0
  %i.q = or i1 %i.n, %i.p
  br i1 %i.q, label %rb_integer_type_p.exit.thread15.i.i, label %rb_integer_type_p.exit.i.i

rb_integer_type_p.exit.i.i:                       ; preds = %bb.b
  %i.r = inttoptr i64 %i.l to ptr
  %i.s = load i64, ptr %i.r, align 8, !tbaa !17
  %i.t = and i64 %i.s, 31
  %i.u = icmp eq i64 %i.t, 10
  br i1 %i.u, label %rb_integer_type_p.exit.thread.i.i, label %rb_integer_type_p.exit.thread15.i.i

rb_integer_type_p.exit.thread.i.i:                ; preds = %rb_integer_type_p.exit.i.i, %bb.a
  %i.v = tail call i64 @rb_int_abs(i64 noundef %i.l) #17, !inline_history !25
  br label %f_abs.exit.i

rb_integer_type_p.exit.thread15.i.i:              ; preds = %rb_integer_type_p.exit.i.i, %bb.b
  %i.w = and i64 %i.l, 2
  %.not.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i, label %bb.c, label %RB_FLOAT_TYPE_P.exit.thread.i.i

bb.c:                                             ; preds = %rb_integer_type_p.exit.thread15.i.i
  %i.x = and i64 %i.l, 4
  %i.y = icmp ne i64 %i.x, 0
  %i.z = or i1 %i.n, %i.y
  br i1 %i.z, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %RB_FLOAT_TYPE_P.exit.i.i

RB_FLOAT_TYPE_P.exit.i.i:                         ; preds = %bb.c
  %i.aa = inttoptr i64 %i.l to ptr
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !17
  %i.ac = and i64 %i.ab, 31
  switch i64 %i.ac, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i [
    i64 4, label %RB_FLOAT_TYPE_P.exit.thread.i.i
    i64 15, label %bb.d
    i64 14, label %bb.e
  ]

RB_FLOAT_TYPE_P.exit.thread.i.i:                  ; preds = %RB_FLOAT_TYPE_P.exit.i.i, %rb_integer_type_p.exit.thread15.i.i
  %i.ad = tail call i64 @rb_float_abs(i64 noundef %i.l) #17, !inline_history !25
  br label %f_abs.exit.i

bb.d:                                             ; preds = %RB_FLOAT_TYPE_P.exit.i.i
  %i.ae = tail call i64 @rb_rational_abs(i64 noundef %i.l) #17, !inline_history !25
  br label %f_abs.exit.i

bb.e:                                             ; preds = %RB_FLOAT_TYPE_P.exit.i.i
  %i.af = tail call i64 @rb_complex_abs(i64 noundef %i.l) #18, !inline_history !25
  br label %f_abs.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %RB_FLOAT_TYPE_P.exit.i.i, %bb.c
  %i.ag = load i64, ptr @id_abs, align 8, !tbaa !11
  %i.ah = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.l, i64 noundef %i.ag, i32 noundef 0) #17, !inline_history !25
  br label %f_abs.exit.i

f_abs.exit.i:                                     ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, %bb.e, %bb.d, %RB_FLOAT_TYPE_P.exit.thread.i.i, %rb_integer_type_p.exit.thread.i.i
  %.0.i.i = phi i64 [ %i.v, %rb_integer_type_p.exit.thread.i.i ], [ %i.ad, %RB_FLOAT_TYPE_P.exit.thread.i.i ], [ %i.ae, %bb.d ], [ %i.af, %bb.e ], [ %i.ah, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i ]
  %i.ai = tail call i64 @rb_inspect(i64 noundef %.0.i.i) #17, !callees !54, !inline_history !55
  %i.aj = tail call i64 @rb_str_concat(i64 noundef %i.a, i64 noundef %i.ai) #17 ; 0 uses
  %i.ak = inttoptr i64 %i.a to ptr                ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !17
  %i.am = and i64 %i.al, 8192
  %.not.i15.i = icmp eq i64 %i.am, 0
  %i.an = getelementptr i8, ptr %i.ak, i64 24     ; 2 uses
  br i1 %.not.i15.i, label %RSTRING_PTR.exit.i, label %bb.f

bb.f:                                             ; preds = %f_abs.exit.i
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !56
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.f, %f_abs.exit.i
  %i.ap = phi ptr [ %i.ao, %bb.f ], [ %i.an, %f_abs.exit.i ]
  %i.aq = getelementptr i8, ptr %i.ak, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !57
  %i.as = getelementptr i8, ptr %i.ap, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 -1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !56
  %i.av = sext i8 %i.au to i32
  %i.aw = add nsw i32 %i.av, -58
  %i.ax = icmp ult i32 %i.aw, -10
  br i1 %i.ax, label %bb.g, label %f_format.exit

bb.g:                                             ; preds = %RSTRING_PTR.exit.i
  %i.ay = tail call i64 @rb_str_cat(i64 noundef %i.a, ptr noundef nonnull @.str.35, i64 noundef 1) #17 ; 0 uses
  br label %f_format.exit

f_format.exit:                                    ; preds = %RSTRING_PTR.exit.i, %bb.g
  %i.az = tail call i64 @rb_str_cat(i64 noundef %i.a, ptr noundef nonnull @.str.28, i64 noundef 1) #17 ; 0 uses
  %i.ba = tail call i64 @rb_str_cat(i64 noundef %i.a, ptr noundef nonnull @.str.75, i64 noundef 1) #17 ; 0 uses
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @rb_complex_finite_p(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13   ; 6 uses
  %i.d = trunc i64 %i.c to i1
  %i.e = and i64 %i.c, 3
  %i.f = icmp eq i64 %i.e, 2
  %or.cond.i.i = or i1 %i.f, %i.d
  br i1 %or.cond.i.i, label %f_finite_p.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.c, 0
  %i.h = and i64 %i.c, 6
  %i.i = icmp ne i64 %i.h, 0
  %i.j = or i1 %i.g, %i.i
  br i1 %i.j, label %RB_FLOAT_TYPE_P.exit.thread11.i, label %rb_integer_type_p.exit.i.i

rb_integer_type_p.exit.i.i:                       ; preds = %bb.b
  %i.k = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !17
  %i.m = and i64 %i.l, 31
  switch i64 %i.m, label %RB_FLOAT_TYPE_P.exit.thread11.i [
    i64 10, label %f_finite_p.exit.thread
    i64 15, label %f_finite_p.exit.thread
    i64 4, label %f_finite_p.exit
  ]

RB_FLOAT_TYPE_P.exit.thread11.i:                  ; preds = %rb_integer_type_p.exit.i.i, %bb.b
  %i.n = load i64, ptr @id_finite_p, align 8, !tbaa !11
  %i.o = tail call i64 @rb_funcallv(i64 noundef %i.c, i64 noundef %i.n, i32 noundef 0, ptr noundef null) #17
  %i.p = and i64 %i.o, -5
  %.not.a = icmp eq i64 %i.p, 0
  br i1 %.not.a, label %bb.d, label %f_finite_p.exit.thread

f_finite_p.exit:                                  ; preds = %rb_integer_type_p.exit.i.i
  %i.q = getelementptr i8, ptr %i.k, i64 16
  %i.r = load double, ptr %i.q, align 8, !tbaa !19
  %i.s = tail call double @llvm.fabs.f64(double %i.r)
  %i.t = fcmp ueq double %i.s, +inf
  br i1 %i.t, label %bb.d, label %f_finite_p.exit.thread

f_finite_p.exit.thread:                           ; preds = %RB_FLOAT_TYPE_P.exit.thread11.i, %rb_integer_type_p.exit.i.i, %rb_integer_type_p.exit.i.i, %bb.a, %f_finite_p.exit
  %i.u = getelementptr i8, ptr %i.a, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !16   ; 6 uses
  %i.w = trunc i64 %i.v to i1
  %i.x = and i64 %i.v, 3
  %i.y = icmp eq i64 %i.x, 2
  %or.cond.i.i3 = or i1 %i.y, %i.w
  br i1 %or.cond.i.i3, label %f_finite_p.exit10.thread, label %bb.c

bb.c:                                             ; preds = %f_finite_p.exit.thread
  %i.z = icmp eq i64 %i.v, 0
  %i.aa = and i64 %i.v, 6
  %i.ab = icmp ne i64 %i.aa, 0
  %i.ac = or i1 %i.z, %i.ab
  br i1 %i.ac, label %RB_FLOAT_TYPE_P.exit.thread11.i8, label %rb_integer_type_p.exit.i.i4

rb_integer_type_p.exit.i.i4:                      ; preds = %bb.c
  %i.ad = inttoptr i64 %i.v to ptr                ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !17
  %i.af = and i64 %i.ae, 31
  switch i64 %i.af, label %RB_FLOAT_TYPE_P.exit.thread11.i8 [
    i64 10, label %f_finite_p.exit10.thread
    i64 15, label %f_finite_p.exit10.thread
    i64 4, label %f_finite_p.exit10
  ]

RB_FLOAT_TYPE_P.exit.thread11.i8:                 ; preds = %rb_integer_type_p.exit.i.i4, %bb.c
  %i.ag = load i64, ptr @id_finite_p, align 8, !tbaa !11
  %i.ah = tail call i64 @rb_funcallv(i64 noundef %i.v, i64 noundef %i.ag, i32 noundef 0, ptr noundef null) #17
  %.fr19 = freeze i64 %i.ah
  %i.ai = and i64 %.fr19, -5
  %.not20 = icmp eq i64 %i.ai, 0
  br i1 %.not20, label %bb.d, label %f_finite_p.exit10.thread

f_finite_p.exit10:                                ; preds = %rb_integer_type_p.exit.i.i4
  %i.aj = getelementptr i8, ptr %i.ad, i64 16
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !19
  %.fr18 = freeze double %i.ak
  %i.al = tail call double @llvm.fabs.f64(double %.fr18)
  %i.am = fcmp ueq double %i.al, +inf
  br i1 %i.am, label %bb.d, label %f_finite_p.exit10.thread

f_finite_p.exit10.thread:                         ; preds = %f_finite_p.exit.thread, %rb_integer_type_p.exit.i.i4, %rb_integer_type_p.exit.i.i4, %RB_FLOAT_TYPE_P.exit.thread11.i8, %f_finite_p.exit10
  br label %bb.d

bb.d:                                             ; preds = %f_finite_p.exit10.thread, %f_finite_p.exit10, %RB_FLOAT_TYPE_P.exit.thread11.i8, %RB_FLOAT_TYPE_P.exit.thread11.i, %f_finite_p.exit
  %i.an = phi i64 [ 0, %f_finite_p.exit ], [ 0, %RB_FLOAT_TYPE_P.exit.thread11.i ], [ 20, %f_finite_p.exit10.thread ], [ 0, %f_finite_p.exit10 ], [ 0, %RB_FLOAT_TYPE_P.exit.thread11.i8 ]
  ret i64 %i.an
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 3, 5) i64 @rb_complex_infinite_p(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13   ; 6 uses
  %i.d = trunc i64 %i.c to i1
  %i.e = and i64 %i.c, 3
  %i.f = icmp eq i64 %i.e, 2
  %or.cond.i.i = or i1 %i.f, %i.d
  br i1 %or.cond.i.i, label %f_infinite_p.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.c, 0
  %i.h = and i64 %i.c, 6
  %i.i = icmp ne i64 %i.h, 0
  %i.j = or i1 %i.g, %i.i
  br i1 %i.j, label %f_infinite_p.exit, label %rb_integer_type_p.exit.i.i

rb_integer_type_p.exit.i.i:                       ; preds = %bb.b
  %i.k = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !17
  %i.m = and i64 %i.l, 31
  switch i64 %i.m, label %f_infinite_p.exit [
    i64 10, label %f_infinite_p.exit.thread
    i64 15, label %f_infinite_p.exit.thread
    i64 4, label %rb_float_value_inline.exit.i
  ]

rb_float_value_inline.exit.i:                     ; preds = %rb_integer_type_p.exit.i.i
  %i.n = getelementptr i8, ptr %i.k, i64 16
  %i.o = load double, ptr %i.n, align 8, !tbaa !19
  %i.p = tail call double @llvm.fabs.f64(double %i.o) #22
  %i.q = fcmp oeq double %i.p, +inf
  br i1 %i.q, label %f_infinite_p.exit.thread13, label %f_infinite_p.exit.thread

f_infinite_p.exit:                                ; preds = %rb_integer_type_p.exit.i.i, %bb.b
  %i.r = load i64, ptr @id_infinite_p, align 8, !tbaa !11
  %i.s = tail call i64 @rb_funcallv(i64 noundef %i.c, i64 noundef %i.r, i32 noundef 0, ptr noundef null) #17
  %i.t = and i64 %i.s, -5
  %.not22 = icmp eq i64 %i.t, 0
  br i1 %.not22, label %f_infinite_p.exit.thread, label %f_infinite_p.exit.thread13

f_infinite_p.exit.thread:                         ; preds = %rb_integer_type_p.exit.i.i, %rb_integer_type_p.exit.i.i, %bb.a, %rb_float_value_inline.exit.i, %f_infinite_p.exit
  %i.u = getelementptr i8, ptr %i.a, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !16   ; 6 uses
  %i.w = trunc i64 %i.v to i1
  %i.x = and i64 %i.v, 3
  %i.y = icmp eq i64 %i.x, 2
  %or.cond.i.i4 = or i1 %i.y, %i.w
  br i1 %or.cond.i.i4, label %f_infinite_p.exit10.thread, label %bb.c

bb.c:                                             ; preds = %f_infinite_p.exit.thread
  %i.z = icmp eq i64 %i.v, 0
  %i.aa = and i64 %i.v, 6
  %i.ab = icmp ne i64 %i.aa, 0
  %i.ac = or i1 %i.z, %i.ab
  br i1 %i.ac, label %f_infinite_p.exit10, label %rb_integer_type_p.exit.i.i5

rb_integer_type_p.exit.i.i5:                      ; preds = %bb.c
  %i.ad = inttoptr i64 %i.v to ptr                ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !17
  %i.af = and i64 %i.ae, 31
  switch i64 %i.af, label %f_infinite_p.exit10 [
    i64 10, label %f_infinite_p.exit10.thread
    i64 15, label %f_infinite_p.exit10.thread
    i64 4, label %rb_float_value_inline.exit.i9
  ]

rb_float_value_inline.exit.i9:                    ; preds = %rb_integer_type_p.exit.i.i5
  %i.ag = getelementptr i8, ptr %i.ad, i64 16
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !19
  %i.ai = tail call double @llvm.fabs.f64(double %i.ah) #22
  %i.aj = fcmp oeq double %i.ai, +inf
  br i1 %i.aj, label %f_infinite_p.exit.thread13, label %f_infinite_p.exit10.thread

f_infinite_p.exit10:                              ; preds = %rb_integer_type_p.exit.i.i5, %bb.c
  %i.ak = load i64, ptr @id_infinite_p, align 8, !tbaa !11
  %i.al = tail call i64 @rb_funcallv(i64 noundef %i.v, i64 noundef %i.ak, i32 noundef 0, ptr noundef null) #17
  %i.am = and i64 %i.al, -5
  %.not = icmp eq i64 %i.am, 0
  br i1 %.not, label %f_infinite_p.exit10.thread, label %f_infinite_p.exit.thread13

f_infinite_p.exit.thread13:                       ; preds = %rb_float_value_inline.exit.i9, %rb_float_value_inline.exit.i, %f_infinite_p.exit10, %f_infinite_p.exit
  br label %f_infinite_p.exit10.thread

f_infinite_p.exit10.thread:                       ; preds = %rb_integer_type_p.exit.i.i5, %rb_integer_type_p.exit.i.i5, %f_infinite_p.exit.thread, %rb_float_value_inline.exit.i9, %f_infinite_p.exit10, %f_infinite_p.exit.thread13
  %.0 = phi i64 [ 3, %f_infinite_p.exit.thread13 ], [ 4, %f_infinite_p.exit10 ], [ 4, %rb_float_value_inline.exit.i9 ], [ 4, %rb_integer_type_p.exit.i.i5 ], [ 4, %rb_integer_type_p.exit.i.i5 ], [ 4, %f_infinite_p.exit.thread ]
  ret i64 %.0
}

declare extern_weak void @rb_define_private_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @nucomp_marshal_dump(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr i8, ptr %i.a, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16
  %i.f = tail call i64 @rb_assoc_new(i64 noundef %i.c, i64 noundef %i.e) #17 ; 2 uses
  tail call void @rb_copy_generic_ivar(i64 noundef %i.f, i64 noundef %0) #17
  ret i64 %i.f
}

declare i64 @rb_define_class_under(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @nucomp_marshal_load(i64 noundef returned %0, i64 noundef %1) #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = and i64 %1, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !59

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.e = inttoptr i64 %1 to ptr                   ; 7 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17   ; 3 uses
  %i.g = and i64 %i.f, 31
  %i.h = icmp eq i64 %i.g, 7
  br i1 %i.h, label %Check_Type.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, !prof !60

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  tail call void @rb_unexpected_type(i64 noundef %1, i32 noundef 7) #23
  unreachable

Check_Type.exit:                                  ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.i = and i64 %i.f, 8192
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %rb_array_len.exit, label %rb_array_len.exit.thread

rb_array_len.exit:                                ; preds = %Check_Type.exit
  %i.j = getelementptr i8, ptr %i.e, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !56   ; 2 uses
  %.not = icmp eq i64 %i.k, 2
  br i1 %.not, label %bb.d, label %bb.b

rb_array_len.exit.thread:                         ; preds = %Check_Type.exit
  %i.l = lshr i64 %i.f, 15
  %i.m = and i64 %i.l, 127                        ; 2 uses
  %.not12 = icmp eq i64 %i.m, 2
  br i1 %.not12, label %bb.c, label %bb.b

bb.b:                                             ; preds = %rb_array_len.exit.thread, %rb_array_len.exit
  %.0.i13 = phi i64 [ %i.m, %rb_array_len.exit.thread ], [ %i.k, %rb_array_len.exit ]
  %i.n = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.n, ptr noundef nonnull @.str.76, i64 noundef %.0.i13) #21
  unreachable

bb.c:                                             ; preds = %rb_array_len.exit.thread
  %i.o = getelementptr i8, ptr %i.e, i64 16
  br label %RARRAY_AREF.exit

bb.d:                                             ; preds = %rb_array_len.exit
  %i.p = getelementptr i8, ptr %i.e, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !56
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.o, %bb.c ], [ %i.q, %bb.d ]
  %i.r = load i64, ptr @id_i_real, align 8, !tbaa !11
  %i.s = load i64, ptr %.0.i.i, align 8, !tbaa !11
  %i.t = tail call i64 @rb_ivar_set(i64 noundef %0, i64 noundef %i.r, i64 noundef %i.s) #17 ; 0 uses
  %i.u = load i64, ptr @id_i_imag, align 8, !tbaa !11
  %i.v = load i64, ptr %i.e, align 8, !tbaa !17
  %i.w = and i64 %i.v, 8192
  %.not.i.i8 = icmp eq i64 %i.w, 0
  br i1 %.not.i.i8, label %bb.f, label %bb.e

bb.e:                                             ; preds = %RARRAY_AREF.exit
  %i.x = getelementptr i8, ptr %i.e, i64 16
  br label %RARRAY_AREF.exit10

bb.f:                                             ; preds = %RARRAY_AREF.exit
  %i.y = getelementptr i8, ptr %i.e, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !56
  br label %RARRAY_AREF.exit10

RARRAY_AREF.exit10:                               ; preds = %bb.e, %bb.f
  %.0.i.i9 = phi ptr [ %i.x, %bb.e ], [ %i.z, %bb.f ]
  %i.aa = getelementptr i8, ptr %.0.i.i9, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !11
  %i.ac = tail call i64 @rb_ivar_set(i64 noundef %0, i64 noundef %i.u, i64 noundef %i.ab) #17 ; 0 uses
  ret i64 %0
}

declare void @rb_marshal_define_compat(i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i64 @nucomp_dumper(i64 noundef returned %0) #9 {
bb.a:
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
end_hunk_0
