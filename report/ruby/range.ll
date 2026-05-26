inline.NumInlined: 546
inline.NumDeleted: 69
begin_hunk_0_@range_initialize:bb.a
  tail call void @rb_error_frozen_object(i64 noundef %2) #12
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.q = and i64 %i.o, 31
  %i.r = icmp ne i64 %i.q, 5
  %i.s = and i64 %i.o, 49152
  %.not8.i.i = icmp eq i64 %i.s, 0
  %or.cond.i.i = or i1 %i.r, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_check_frozen_inline.exit.i, label %bb.e, !prof !21

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %2) #11
  %.pre.i = load i64, ptr %i.n, align 8, !tbaa !13
  br label %rb_check_frozen_inline.exit.i

rb_check_frozen_inline.exit.i:                    ; preds = %bb.e, %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.t = phi i64 [ %i.o, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ], [ %.pre.i, %bb.e ]
  %i.u = and i64 %i.t, 1040384
  %.not.i.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %rb_check_frozen_inline.exit.i
  %i.v = getelementptr i8, ptr %i.n, i64 16
  br label %RANGE_EXCL.exit.i

bb.g:                                             ; preds = %rb_check_frozen_inline.exit.i
  %i.w = getelementptr i8, ptr %i.n, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !15
  br label %RANGE_EXCL.exit.i

RANGE_EXCL.exit.i:                                ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi ptr [ %i.v, %bb.f ], [ %i.x, %bb.g ]
  %i.y = getelementptr i8, ptr %.0.i.i.i.i, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !11
  %.not.i3 = icmp eq i64 %i.z, 4
  br i1 %.not.i3, label %range_modify.exit, label %bb.h

bb.h:                                             ; preds = %RANGE_EXCL.exit.i
  %i.aa = tail call i64 @rb_id2sym(i64 noundef 3185) #11
  tail call fastcc void @rb_name_err_raise(i64 noundef %2, i64 noundef %i.aa) #13
  unreachable

range_modify.exit:                                ; preds = %RANGE_EXCL.exit.i
  tail call fastcc void @range_init(i64 noundef %2, i64 noundef %i.b, i64 noundef %i.d, i64 noundef %.not)
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, -7) i64 @range_initialize_copy(i64 noundef returned %0, i64 noundef %1) #0 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not3.i.i.i = and i1 %i.a, %i.c
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !19

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13   ; 4 uses
  %i.f = and i64 %i.e, 2048
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !20

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #12
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.g = and i64 %i.e, 31
  %i.h = icmp ne i64 %i.g, 5
  %i.i = and i64 %i.e, 49152
  %.not8.i.i = icmp eq i64 %i.i, 0
  %or.cond.i.i = or i1 %i.h, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_check_frozen_inline.exit.i, label %bb.b, !prof !21

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %0) #11
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !13
  br label %rb_check_frozen_inline.exit.i

rb_check_frozen_inline.exit.i:                    ; preds = %bb.b, %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.j = phi i64 [ %i.e, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ], [ %.pre.i, %bb.b ]
  %i.k = and i64 %i.j, 1040384
  %.not.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %rb_check_frozen_inline.exit.i
  %i.l = getelementptr i8, ptr %i.d, i64 16
  br label %RANGE_EXCL.exit.i

bb.d:                                             ; preds = %rb_check_frozen_inline.exit.i
  %i.m = getelementptr i8, ptr %i.d, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %RANGE_EXCL.exit.i

RANGE_EXCL.exit.i:                                ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.l, %bb.c ], [ %i.n, %bb.d ]
  %i.o = getelementptr i8, ptr %.0.i.i.i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !11
  %.not.i = icmp eq i64 %i.p, 4
  br i1 %.not.i, label %range_modify.exit, label %bb.e

bb.e:                                             ; preds = %RANGE_EXCL.exit.i
  %i.q = tail call i64 @rb_id2sym(i64 noundef 3185) #11
  tail call fastcc void @rb_name_err_raise(i64 noundef %0, i64 noundef %i.q) #13
  unreachable

range_modify.exit:                                ; preds = %RANGE_EXCL.exit.i
  %i.r = tail call i64 @rb_struct_init_copy(i64 noundef %0, i64 noundef %1) #11 ; 0 uses
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @range_eq(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = icmp eq i64 %0, %1
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_cRange, align 8, !tbaa !11
  %i.c = tail call i64 @rb_obj_is_kind_of(i64 noundef %1, i64 noundef %i.b) #11
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @rb_exec_recursive_paired(ptr noundef nonnull @recursive_equal, i64 noundef %0, i64 noundef %1, i64 noundef %1) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i64 [ 20, %bb.a ], [ %i.d, %bb.c ], [ 0, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @range_eqq(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16       ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !15   ; 3 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.e = and i64 %i.d, 1040384
  %.not.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i, label %bb.b, label %RANGE_END.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  br label %RANGE_END.exit

RANGE_END.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ]
  %i.h = getelementptr i8, ptr %.0.i.i.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !11   ; 3 uses
  %i.j = icmp eq i64 %i.c, 4
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %RANGE_END.exit
  %i.k = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.c, i64 noundef 135, i32 noundef 1, i64 noundef %1) #11 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4
  br i1 %i.l, label %r_cover_p.exit, label %r_less.exit.i

r_less.exit.i:                                    ; preds = %bb.c
  %i.m = tail call i32 @rb_cmpint(i64 noundef %i.k, i64 noundef %i.c, i64 noundef %1) #11
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %r_less.exit.i._crit_edge, label %r_cover_p.exit

r_less.exit.i._crit_edge:                         ; preds = %r_less.exit.i
  %.pre = load i64, ptr %i.a, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %r_less.exit.i._crit_edge, %RANGE_END.exit
  %i.o = phi i64 [ %.pre, %r_less.exit.i._crit_edge ], [ %i.d, %RANGE_END.exit ]
  %i.p = and i64 %i.o, 1040384
  %.not.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %RANGE_EXCL.exit.i

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %i.a, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15
  br label %RANGE_EXCL.exit.i

RANGE_EXCL.exit.i:                                ; preds = %bb.d, %bb.e
  %.0.i.i.i.i = phi ptr [ %i.r, %bb.e ], [ %i.b, %bb.d ]
  %i.s = icmp eq i64 %i.i, 4
  br i1 %i.s, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %RANGE_EXCL.exit.i
  %i.t = getelementptr i8, ptr %.0.i.i.i.i, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !11
  %i.v = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %1, i64 noundef 135, i32 noundef 1, i64 noundef %i.i) #11 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4
  br i1 %i.w, label %r_cover_p.exit, label %r_less.exit12.i

r_less.exit12.i:                                  ; preds = %bb.f
  %i.x = and i64 %i.u, -5
  %i.y = icmp ne i64 %i.x, 0
  %.neg.i = sext i1 %i.y to i32
  %i.z = tail call i32 @rb_cmpint(i64 noundef %i.v, i64 noundef %1, i64 noundef %i.i) #11
  %.not.i = icmp sgt i32 %i.z, %.neg.i
  br i1 %.not.i, label %r_cover_p.exit, label %.thread.i

.thread.i:                                        ; preds = %r_less.exit12.i, %RANGE_EXCL.exit.i
  br label %r_cover_p.exit

r_cover_p.exit:                                   ; preds = %bb.c, %r_less.exit.i, %bb.f, %r_less.exit12.i, %.thread.i
  %.1.i = phi i64 [ 20, %.thread.i ], [ 0, %r_less.exit12.i ], [ 0, %r_less.exit.i ], [ 0, %bb.c ], [ 0, %bb.f ]
  ret i64 %.1.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @range_eql(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = icmp eq i64 %0, %1
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_cRange, align 8, !tbaa !11
  %i.c = tail call i64 @rb_obj_is_kind_of(i64 noundef %1, i64 noundef %i.b) #11
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @rb_exec_recursive_paired(ptr noundef nonnull @recursive_eql, i64 noundef %0, i64 noundef %1, i64 noundef %1) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i64 [ 20, %bb.a ], [ %i.d, %bb.c ], [ 0, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 0) i64 @range_hash(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 8 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %i.c = and i64 %i.b, 1040384
  %.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 16
  br label %RANGE_EXCL.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.a, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  br label %RANGE_EXCL.exit

RANGE_EXCL.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  %i.g = getelementptr i8, ptr %.0.i.i.i, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11
  %i.i = and i64 %i.h, -5
  %i.j = icmp ne i64 %i.i, 0
  %i.k = zext i1 %i.j to i64
  %i.l = tail call i64 @rb_hash_start(i64 noundef %i.k) #11
  %i.m = getelementptr i8, ptr %i.a, i64 16       ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !15
  %i.o = tail call i64 @rb_hash(i64 noundef %i.n) #11 ; 3 uses
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %RANGE_EXCL.exit
  %i.q = ashr i64 %i.o, 1
  br label %rb_num2long_inline.exit

bb.e:                                             ; preds = %RANGE_EXCL.exit
  %i.r = tail call i64 @rb_num2long(i64 noundef %i.o) #11
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.d, %bb.e
  %.0.i = phi i64 [ %i.q, %bb.d ], [ %i.r, %bb.e ]
  %i.s = load i64, ptr %i.a, align 8, !tbaa !13
  %i.t = and i64 %i.s, 1040384
  %.not.i.i.i12 = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i12, label %bb.f, label %RANGE_END.exit

bb.f:                                             ; preds = %rb_num2long_inline.exit
  %i.u = getelementptr i8, ptr %i.a, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !15
  br label %RANGE_END.exit

RANGE_END.exit:                                   ; preds = %rb_num2long_inline.exit, %bb.f
  %.0.i.i.i13 = phi ptr [ %i.v, %bb.f ], [ %i.m, %rb_num2long_inline.exit ]
  %i.w = getelementptr i8, ptr %.0.i.i.i13, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !11
  %i.y = tail call i64 @rb_hash(i64 noundef %i.x) #11 ; 3 uses
  %i.z = trunc i64 %i.y to i1
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %RANGE_END.exit
  %i.aa = ashr i64 %i.y, 1
  br label %rb_num2long_inline.exit15

bb.h:                                             ; preds = %RANGE_END.exit
  %i.ab = tail call i64 @rb_num2long(i64 noundef %i.y) #11
  br label %rb_num2long_inline.exit15

rb_num2long_inline.exit15:                        ; preds = %bb.g, %bb.h
  %.0.i14 = phi i64 [ %i.aa, %bb.g ], [ %i.ab, %bb.h ]
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !13
  %i.ad = and i64 %i.ac, 1040384
  %.not.i.i.i16 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i16, label %bb.i, label %RANGE_EXCL.exit18

bb.i:                                             ; preds = %rb_num2long_inline.exit15
  %i.ae = getelementptr i8, ptr %i.a, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !15
  br label %RANGE_EXCL.exit18

RANGE_EXCL.exit18:                                ; preds = %rb_num2long_inline.exit15, %bb.i
  %.0.i.i.i17 = phi ptr [ %i.af, %bb.i ], [ %i.m, %rb_num2long_inline.exit15 ]
  %i.ag = tail call i64 @rb_st_hash_uint(i64 noundef %i.l, i64 noundef %.0.i) #14
  %i.ah = tail call i64 @rb_st_hash_uint(i64 noundef %i.ag, i64 noundef %.0.i14) #14
  %i.ai = getelementptr i8, ptr %.0.i.i.i17, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !11
  %i.ak = and i64 %i.aj, -5
  %.not = icmp eq i64 %i.ak, 0
  %i.al = select i1 %.not, i64 0, i64 16777216
  %i.am = tail call i64 @rb_st_hash_uint(i64 noundef %i.ah, i64 noundef %i.al) #14
  %i.an = tail call i64 @rb_st_hash_end(i64 noundef %i.am) #14 ; 2 uses
  %i.ao = and i64 %i.an, 4611686018427387903
  %i.ap = icmp slt i64 %i.an, 0
  %masksel.i = select i1 %i.ap, i64 -4611686018427387904, i64 0
  %.0.i19 = or disjoint i64 %masksel.i, %i.ao
  %i.aq = shl nsw i64 %.0.i19, 1
  %i.ar = or disjoint i64 %i.aq, 1
  ret i64 %i.ar
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @range_each(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @rb_block_given_p() #11
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_frame_this_func() #11
  %i.c = tail call i64 @rb_id2sym(i64 noundef %i.b) #11
  %i.d = tail call i64 @rb_enumeratorize_with_size(i64 noundef %0, i64 noundef %i.c, i32 noundef 0, ptr noundef null, ptr noundef nonnull @range_enum_size) #11
  br label %range_each_fixnum_loop.exit

bb.c:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 12 uses
  %i.f = getelementptr i8, ptr %i.e, i64 16       ; 8 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !15   ; 22 uses
  %i.h = load i64, ptr %i.e, align 8, !tbaa !13
  %i.i = and i64 %i.h, 1040384
  %.not.i.i.i = icmp eq i64 %i.i, 0               ; 2 uses
  br i1 %.not.i.i.i, label %bb.d, label %RANGE_END.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.e, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15
  br label %RANGE_END.exit

RANGE_END.exit:                                   ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi ptr [ %i.k, %bb.d ], [ %i.f, %bb.c ]
  %i.l = getelementptr i8, ptr %.0.i.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11   ; 27 uses
  %i.n = trunc i64 %i.g to i1                     ; 2 uses
  br i1 %i.n, label %bb.e, label %.critedge

bb.e:                                             ; preds = %RANGE_END.exit
  %i.o = icmp eq i64 %i.m, 4
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @range_each_fixnum_endless(i64 noundef %i.g) #13
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.p = trunc i64 %i.m to i1
  br i1 %i.p, label %bb.h, label %rb_integer_type_p.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.q = ashr i64 %i.m, 1
  br i1 %.not.i.i.i, label %bb.i, label %RANGE_EXCL.exit.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr i8, ptr %i.e, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !15
  br label %RANGE_EXCL.exit.i

RANGE_EXCL.exit.i:                                ; preds = %bb.h, %bb.i
  %.0.i.i.i.i = phi ptr [ %i.s, %bb.i ], [ %i.f, %bb.h ]
  %i.t = getelementptr i8, ptr %.0.i.i.i.i, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !11
  %i.v = and i64 %i.u, -5
  %.not.i = icmp eq i64 %i.v, 0
  %i.w = zext i1 %.not.i to i64
  %i.x = add nsw i64 %i.q, %i.w                   ; 2 uses
  %i.y = ashr i64 %i.g, 1                         ; 2 uses
  %i.z = icmp slt i64 %i.y, %i.x
  br i1 %i.z, label %.lr.ph.i, label %range_each_fixnum_loop.exit

.lr.ph.i:                                         ; preds = %RANGE_EXCL.exit.i, %.lr.ph.i
  %.08.i = phi i64 [ %i.ad, %.lr.ph.i ], [ %i.y, %RANGE_EXCL.exit.i ] ; 2 uses
  %i.aa = shl i64 %.08.i, 1
end_hunk_0
begin_hunk_1_@range_to_s:bb.a
  %i.o = getelementptr i8, ptr %i.a, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !15
  br label %RANGE_EXCL.exit

RANGE_EXCL.exit:                                  ; preds = %RANGE_END.exit, %bb.c
  %.0.i.i.i9 = phi ptr [ %i.p, %bb.c ], [ %i.b, %RANGE_END.exit ]
  %i.q = getelementptr i8, ptr %.0.i.i.i9, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !11
  %i.s = and i64 %i.r, -5
  %.not = icmp eq i64 %i.s, 0
  %i.t = select i1 %.not, i64 2, i64 3
  %i.u = tail call i64 @rb_str_cat(i64 noundef %i.l, ptr noundef nonnull @.str.60, i64 noundef %i.t) #11 ; 0 uses
  %i.v = tail call i64 @rb_str_append(i64 noundef %i.l, i64 noundef %i.k) #11 ; 0 uses
  ret i64 %i.l
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @range_inspect(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_exec_recursive(ptr noundef nonnull @inspect_range, i64 noundef %0, i64 noundef 0) #11
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i64 0, 21) i64 @range_exclude_end_p(i64 noundef %0) #4 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %i.c = and i64 %i.b, 1040384
  %.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 16
  br label %RANGE_EXCL.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.a, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  br label %RANGE_EXCL.exit

RANGE_EXCL.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  %i.g = getelementptr i8, ptr %.0.i.i.i, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11
  %i.i = and i64 %i.h, -5
  %.not = icmp eq i64 %i.i, 0
  %i.j = select i1 %.not, i64 0, i64 20
  ret i64 %i.j
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @range_include(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !11
  %i.b = inttoptr i64 %0 to ptr                   ; 7 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16       ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15   ; 14 uses
  %i.e = load i64, ptr %i.b, align 8, !tbaa !13
  %i.f = and i64 %i.e, 1040384
  %.not.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %RANGE_END.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.b, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  br label %RANGE_END.exit.i

RANGE_END.exit.i:                                 ; preds = %bb.b, %bb.a
  %.0.i.i.i.i = phi ptr [ %i.h, %bb.b ], [ %i.c, %bb.a ]
  %i.i = getelementptr i8, ptr %.0.i.i.i.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !11   ; 15 uses
  %i.k = trunc i64 %i.d to i1
  %i.l = trunc i64 %i.j to i1
  %or.cond.i = select i1 %i.k, i1 true, i1 %i.l
  %i.m = and i64 %i.d, 3
  %i.n = icmp eq i64 %i.m, 2
  %or.cond41.i = or i1 %i.n, %or.cond.i
  br i1 %or.cond41.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %RANGE_END.exit.i
  %i.o = icmp eq i64 %i.d, 0
  %i.p = and i64 %i.d, 6
  %i.q = icmp ne i64 %i.p, 0
  %i.r = or i1 %i.o, %i.q
  br i1 %i.r, label %linear_object_p.exit.thread34.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = inttoptr i64 %i.d to ptr
  %i.t = load i64, ptr %i.s, align 8, !tbaa !13
  %i.u = trunc i64 %i.t to i32
  %i.v = and i32 %i.u, 31
  switch i32 %i.v, label %bb.e [
    i32 4, label %.critedge.i
    i32 10, label %.critedge.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.w = load i64, ptr @rb_cNumeric, align 8, !tbaa !11
  %i.x = tail call i64 @rb_obj_is_kind_of(i64 noundef %i.d, i64 noundef %i.w) #11
  %.not.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i, label %linear_object_p.exit.i, label %.critedge.i

linear_object_p.exit.i:                           ; preds = %bb.e
  %i.y = load i64, ptr @rb_cTime, align 8, !tbaa !11
  %i.z = tail call i64 @rb_obj_is_kind_of(i64 noundef %i.d, i64 noundef %i.y) #11
  %.not7.i.i = icmp ne i64 %i.z, 0
  %i.aa = and i64 %i.j, 2
  %i.ab = icmp ne i64 %i.aa, 0
  %or.cond43.i = select i1 %.not7.i.i, i1 true, i1 %i.ab
  br i1 %or.cond43.i, label %.critedge.i, label %bb.f

linear_object_p.exit.thread34.i:                  ; preds = %bb.c
  %.old.i = and i64 %i.j, 2
  %.old42.not.i = icmp eq i64 %.old.i, 0
  br i1 %.old42.not.i, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %linear_object_p.exit.thread34.i, %linear_object_p.exit.i
  %i.ac = icmp eq i64 %i.j, 0
  %i.ad = and i64 %i.j, 6
  %i.ae = icmp ne i64 %i.ad, 0
  %i.af = or i1 %i.ac, %i.ae
  br i1 %i.af, label %linear_object_p.exit28.thread38.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = inttoptr i64 %i.j to ptr
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !13
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = and i32 %i.ai, 31
  switch i32 %i.aj, label %bb.h [
    i32 4, label %.critedge.i
    i32 10, label %.critedge.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.ak = load i64, ptr @rb_cNumeric, align 8, !tbaa !11
  %i.al = tail call i64 @rb_obj_is_kind_of(i64 noundef %i.j, i64 noundef %i.ak) #11
  %.not.i25.i = icmp eq i64 %i.al, 0
  br i1 %.not.i25.i, label %linear_object_p.exit28.i, label %.critedge.i

linear_object_p.exit28.i:                         ; preds = %bb.h
  %i.am = load i64, ptr @rb_cTime, align 8, !tbaa !11
  %i.an = tail call i64 @rb_obj_is_kind_of(i64 noundef %i.j, i64 noundef %i.am) #11
  %.not7.i26.not.i = icmp eq i64 %i.an, 0
  br i1 %.not7.i26.not.i, label %linear_object_p.exit28.thread38.i, label %.critedge.i

linear_object_p.exit28.thread38.i:                ; preds = %linear_object_p.exit28.i, %bb.f
  %i.ao = tail call i64 @rb_check_to_integer(i64 noundef %i.d, ptr noundef nonnull @.str.63) #11
  %i.ap = icmp eq i64 %i.ao, 4
  br i1 %i.ap, label %range_integer_edge_p.exit.i, label %.critedge.i

range_integer_edge_p.exit.i:                      ; preds = %linear_object_p.exit28.thread38.i
  %i.aq = tail call i64 @rb_check_to_integer(i64 noundef %i.j, ptr noundef nonnull @.str.63) #11
  %.not.i = icmp eq i64 %i.aq, 4
  br i1 %.not.i, label %bb.m, label %.critedge.i

.critedge.i:                                      ; preds = %range_integer_edge_p.exit.i, %linear_object_p.exit28.thread38.i, %linear_object_p.exit28.i, %bb.h, %bb.g, %bb.g, %linear_object_p.exit.thread34.i, %linear_object_p.exit.i, %bb.e, %bb.d, %bb.d, %RANGE_END.exit.i
  %i.ar = icmp eq i64 %i.d, 4
  br i1 %i.ar, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.critedge.i
  %i.as = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.d, i64 noundef 135, i32 noundef 1, i64 noundef %1) #11 ; 2 uses
  %i.at = icmp eq i64 %i.as, 4
  br i1 %i.at, label %range_include_internal.exit.thread, label %r_less.exit.i.i

r_less.exit.i.i:                                  ; preds = %bb.i
  %i.au = tail call i32 @rb_cmpint(i64 noundef %i.as, i64 noundef %i.d, i64 noundef %1) #11
  %i.av = icmp slt i32 %i.au, 1
  br i1 %i.av, label %bb.j, label %range_include_internal.exit.thread

bb.j:                                             ; preds = %r_less.exit.i.i, %.critedge.i
  %i.aw = load i64, ptr %i.b, align 8, !tbaa !13
  %i.ax = and i64 %i.aw, 1040384
  %.not.i.i.i.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.i.i.i, label %bb.k, label %RANGE_EXCL.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr i8, ptr %i.b, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !15
  br label %RANGE_EXCL.exit.i.i

RANGE_EXCL.exit.i.i:                              ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i = phi ptr [ %i.az, %bb.k ], [ %i.c, %bb.j ]
  %i.ba = icmp eq i64 %i.j, 4
  br i1 %i.ba, label %.thread.i.i, label %bb.l

bb.l:                                             ; preds = %RANGE_EXCL.exit.i.i
  %i.bb = getelementptr i8, ptr %.0.i.i.i.i.i, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !11
  %i.bd = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %1, i64 noundef 135, i32 noundef 1, i64 noundef %i.j) #11 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 4
  br i1 %i.be, label %range_include_internal.exit.thread, label %r_less.exit12.i.i

r_less.exit12.i.i:                                ; preds = %bb.l
  %i.bf = and i64 %i.bc, -5
  %i.bg = icmp ne i64 %i.bf, 0
  %.neg.i.i = sext i1 %i.bg to i32
  %i.bh = tail call i32 @rb_cmpint(i64 noundef %i.bd, i64 noundef %1, i64 noundef %i.j) #11
  %.not.i29.i = icmp sgt i32 %i.bh, %.neg.i.i
  br i1 %.not.i29.i, label %range_include_internal.exit.thread, label %.thread.i.i

.thread.i.i:                                      ; preds = %r_less.exit12.i.i, %RANGE_EXCL.exit.i.i
  br label %range_include_internal.exit.thread

bb.m:                                             ; preds = %range_integer_edge_p.exit.i
  %i.bi = tail call fastcc zeroext i1 @range_string_range_p(i64 noundef %i.d, i64 noundef %i.j)
  br i1 %i.bi, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bj = load i64, ptr %i.b, align 8, !tbaa !13
  %i.bk = and i64 %i.bj, 1040384
  %.not.i.i.i30.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i.i30.i, label %bb.o, label %RANGE_EXCL.exit.i

bb.o:                                             ; preds = %bb.n
  %i.bl = getelementptr i8, ptr %i.b, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !15
  br label %RANGE_EXCL.exit.i

RANGE_EXCL.exit.i:                                ; preds = %bb.o, %bb.n
  %.0.i.i.i31.i = phi ptr [ %i.bm, %bb.o ], [ %i.c, %bb.n ]
  %i.bn = getelementptr i8, ptr %.0.i.i.i31.i, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !11
  %i.bp = tail call i64 @rb_str_include_range_p(i64 noundef %i.d, i64 noundef %i.j, i64 noundef %1, i64 noundef %i.bo) #11
  br label %range_include_internal.exit

bb.p:                                             ; preds = %bb.m
  %i.bq = tail call fastcc i64 @range_include_fallback(i64 noundef %i.d, i64 noundef %i.j, i64 noundef %1)
  br label %range_include_internal.exit

range_include_internal.exit:                      ; preds = %RANGE_EXCL.exit.i, %bb.p
  %.0.i = phi i64 [ %i.bq, %bb.p ], [ %i.bp, %RANGE_EXCL.exit.i ] ; 2 uses
  %i.br = icmp eq i64 %.0.i, 36
  br i1 %i.br, label %bb.q, label %range_include_internal.exit.thread

bb.q:                                             ; preds = %range_include_internal.exit
  %i.bs = call i64 @rb_call_super(i32 noundef 1, ptr noundef nonnull %i.a) #11
  br label %range_include_internal.exit.thread

range_include_internal.exit.thread:               ; preds = %bb.l, %bb.i, %r_less.exit.i.i, %r_less.exit12.i.i, %.thread.i.i, %range_include_internal.exit, %bb.q
  %.0 = phi i64 [ %i.bs, %bb.q ], [ %.0.i, %range_include_internal.exit ], [ 0, %bb.l ], [ 0, %bb.i ], [ 0, %r_less.exit.i.i ], [ 0, %r_less.exit12.i.i ], [ 20, %.thread.i.i ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @range_cover(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 10 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16       ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !15   ; 6 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !13
  %i.e = and i64 %i.d, 1040384
  %.not.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i, label %bb.b, label %RANGE_END.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  br label %RANGE_END.exit

RANGE_END.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ]
  %i.h = getelementptr i8, ptr %.0.i.i.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !11   ; 10 uses
  %i.j = load i64, ptr @rb_cRange, align 8, !tbaa !11
  %i.k = tail call i64 @rb_obj_is_kind_of(i64 noundef %1, i64 noundef %i.j) #11
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.y, label %bb.c

bb.c:                                             ; preds = %RANGE_END.exit
  %i.l = inttoptr i64 %1 to ptr                   ; 7 uses
  %i.m = getelementptr i8, ptr %i.l, i64 16       ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !15   ; 7 uses
  %i.o = load i64, ptr %i.l, align 8, !tbaa !13
  %i.p = and i64 %i.o, 1040384
  %.not.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %RANGE_END.exit.i

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.l, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15
  br label %RANGE_END.exit.i

RANGE_END.exit.i:                                 ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.r, %bb.d ], [ %i.m, %bb.c ]
  %i.s = getelementptr i8, ptr %.0.i.i.i.i, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !11   ; 8 uses
  %i.u = icmp eq i64 %i.i, 4                      ; 3 uses
  %i.v = icmp ne i64 %i.t, 4
  %or.cond.not.i = select i1 %i.u, i1 true, i1 %i.v
  br i1 %or.cond.not.i, label %bb.e, label %r_cover_p.exit

bb.e:                                             ; preds = %RANGE_END.exit.i
  %i.w = icmp eq i64 %i.c, 4                      ; 2 uses
  %i.x = icmp eq i64 %i.n, 4                      ; 2 uses
  br i1 %i.w, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.x, label %r_cover_p.exit, label %.thread.i

bb.g:                                             ; preds = %bb.e
  br i1 %i.x, label %.critedge.i, label %.thread.i

.thread.i:                                        ; preds = %bb.g, %bb.f
  %i.y = icmp eq i64 %i.t, 4
  br i1 %i.y, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.thread.i
  %i.z = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.n, i64 noundef 135, i32 noundef 1, i64 noundef %i.t) #11 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4
  br i1 %i.aa, label %r_less.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = tail call i32 @rb_cmpint(i64 noundef %i.z, i64 noundef %i.n, i64 noundef %i.t) #11
  br label %r_less.exit.i

r_less.exit.i:                                    ; preds = %bb.i, %bb.h
  %.0.i.i = phi i32 [ %i.ab, %bb.i ], [ 2147483647, %bb.h ]
  %i.ac = load i64, ptr %i.l, align 8, !tbaa !13
  %i.ad = and i64 %i.ac, 1040384
  %.not.i.i.i43.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i43.i, label %bb.j, label %RANGE_EXCL.exit.i

bb.j:                                             ; preds = %r_less.exit.i
  %i.ae = getelementptr i8, ptr %i.l, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !15
  br label %RANGE_EXCL.exit.i

RANGE_EXCL.exit.i:                                ; preds = %bb.j, %r_less.exit.i
  %.0.i.i.i44.i = phi ptr [ %i.af, %bb.j ], [ %i.m, %r_less.exit.i ]
  %i.ag = getelementptr i8, ptr %.0.i.i.i44.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !11
  %i.ai = and i64 %i.ah, -5
  %i.aj = icmp ne i64 %i.ai, 0
  %i.ak = sext i1 %i.aj to i32
  %i.al = icmp sgt i32 %.0.i.i, %i.ak
  br i1 %i.al, label %r_cover_p.exit, label %bb.k

bb.k:                                             ; preds = %RANGE_EXCL.exit.i, %.thread.i
  br i1 %i.w, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.c, i64 noundef 135, i32 noundef 1, i64 noundef %i.n) #11 ; 2 uses
  %i.an = icmp eq i64 %i.am, 4
  br i1 %i.an, label %r_cover_p.exit, label %r_less.exit.i.i

r_less.exit.i.i:                                  ; preds = %bb.l
  %i.ao = tail call i32 @rb_cmpint(i64 noundef %i.am, i64 noundef %i.c, i64 noundef %i.n) #11
  %i.ap = icmp slt i32 %i.ao, 1
  br i1 %i.ap, label %bb.m, label %r_cover_p.exit

bb.m:                                             ; preds = %r_less.exit.i.i, %bb.k
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !13
  %i.ar = and i64 %i.aq, 1040384
  %.not.i.i.i.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %RANGE_EXCL.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr i8, ptr %i.a, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !15
  br label %RANGE_EXCL.exit.i.i

RANGE_EXCL.exit.i.i:                              ; preds = %bb.m, %bb.n
  %.0.i.i.i.i.i = phi ptr [ %i.at, %bb.n ], [ %i.b, %bb.m ]
  br i1 %i.u, label %.critedge.thread.i, label %bb.o

bb.o:                                             ; preds = %RANGE_EXCL.exit.i.i
  %i.au = getelementptr i8, ptr %.0.i.i.i.i.i, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !11
  %i.aw = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.n, i64 noundef 135, i32 noundef 1, i64 noundef %i.i) #11 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4
  br i1 %i.ax, label %r_cover_p.exit, label %r_less.exit12.i.i

r_less.exit12.i.i:                                ; preds = %bb.o
  %i.ay = and i64 %i.av, -5
  %i.az = icmp ne i64 %i.ay, 0
  %.neg.i.i = sext i1 %i.az to i32
  %i.ba = tail call i32 @rb_cmpint(i64 noundef %i.aw, i64 noundef %i.n, i64 noundef %i.i) #11
  %.not.i.i = icmp sgt i32 %i.ba, %.neg.i.i
  br i1 %.not.i.i, label %r_cover_p.exit, label %.critedge.i

.critedge.i:                                      ; preds = %r_less.exit12.i.i, %bb.g
  %i.bb = icmp eq i64 %i.t, 4
  %brmerge.i = or i1 %i.u, %i.bb
  br i1 %brmerge.i, label %.critedge.thread.i, label %bb.p

bb.p:                                             ; preds = %.critedge.i
  %i.bc = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.i, i64 noundef 135, i32 noundef 1, i64 noundef %i.t) #11 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 4
  br i1 %i.bd, label %r_cover_p.exit, label %r_less.exit46.sink.split.i

.critedge.thread.i:                               ; preds = %.critedge.i, %RANGE_EXCL.exit.i.i
  %i.be = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.i, i64 noundef 135, i32 noundef 1, i64 noundef %i.t) #11 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 4
  br i1 %i.bf, label %r_less.exit46.i, label %r_less.exit46.sink.split.i

r_less.exit46.sink.split.i:                       ; preds = %.critedge.thread.i, %bb.p
  %.sink.i = phi i64 [ %i.bc, %bb.p ], [ %i.be, %.critedge.thread.i ]
  %i.bg = tail call i32 @rb_cmpint(i64 noundef %.sink.i, i64 noundef %i.i, i64 noundef %i.t) #11
  %i.bh = freeze i32 %i.bg
  br label %r_less.exit46.i

r_less.exit46.i:                                  ; preds = %r_less.exit46.sink.split.i, %.critedge.thread.i
  %.140.i = phi i32 [ 2147483647, %.critedge.thread.i ], [ %i.bh, %r_less.exit46.sink.split.i ] ; 3 uses
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !13
  %i.bj = and i64 %i.bi, 1040384
  %.not.i.i.i47.i = icmp eq i64 %i.bj, 0          ; 2 uses
  br i1 %.not.i.i.i47.i, label %bb.q, label %RANGE_EXCL.exit49.i

bb.q:                                             ; preds = %r_less.exit46.i
  %i.bk = getelementptr i8, ptr %i.a, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !15
  br label %RANGE_EXCL.exit49.i

RANGE_EXCL.exit49.i:                              ; preds = %r_less.exit46.i, %bb.q
  %.0.i.i.i48.i = phi ptr [ %i.bl, %bb.q ], [ %i.b, %r_less.exit46.i ]
  %i.bm = getelementptr i8, ptr %.0.i.i.i48.i, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !11
  %i.bo = and i64 %i.bn, -5
  %i.bp = icmp ne i64 %i.bo, 0
  %i.bq = load i64, ptr %i.l, align 8, !tbaa !13
  %i.br = and i64 %i.bq, 1040384
  %.not.i.i.i50.i = icmp eq i64 %i.br, 0
  br i1 %.not.i.i.i50.i, label %bb.r, label %RANGE_EXCL.exit52.i

bb.r:                                             ; preds = %RANGE_EXCL.exit49.i
  %i.bs = getelementptr i8, ptr %i.l, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !15
  br label %RANGE_EXCL.exit52.i

RANGE_EXCL.exit52.i:                              ; preds = %bb.r, %RANGE_EXCL.exit49.i
  %.0.i.i.i51.i = phi ptr [ %i.bt, %bb.r ], [ %i.m, %RANGE_EXCL.exit49.i ]
  %i.bu = getelementptr i8, ptr %.0.i.i.i51.i, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !11
  %i.bw = and i64 %i.bv, -5
  %i.bx = icmp ne i64 %i.bw, 0
  %i.by = xor i1 %i.bp, %i.bx
  br i1 %i.by, label %bb.t, label %bb.s

bb.s:                                             ; preds = %RANGE_EXCL.exit52.i
  %i.bz = icmp sgt i32 %.140.i, -1
  br i1 %i.bz, label %r_cover_range_p.exit.thread35, label %r_cover_p.exit

bb.t:                                             ; preds = %RANGE_EXCL.exit52.i
  br i1 %.not.i.i.i47.i, label %bb.u, label %RANGE_EXCL.exit55.i

bb.u:                                             ; preds = %bb.t
  %i.ca = getelementptr i8, ptr %i.a, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !15
  br label %RANGE_EXCL.exit55.i

RANGE_EXCL.exit55.i:                              ; preds = %bb.t, %bb.u
  %.0.i.i.i54.i = phi ptr [ %i.cb, %bb.u ], [ %i.b, %bb.t ]
  %i.cc = getelementptr i8, ptr %.0.i.i.i54.i, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !11
  %i.ce = and i64 %i.cd, -5
  %.not.i = icmp eq i64 %i.ce, 0
  br i1 %.not.i, label %bb.v, label %r_cover_range_p.exit

bb.v:                                             ; preds = %RANGE_EXCL.exit55.i
  %i.cf = icmp sgt i32 %.140.i, -1
  br i1 %i.cf, label %r_cover_range_p.exit.thread35, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cg = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  %i.ch = tail call i64 (ptr, i64, ptr, i64, ...) @rb_rescue2(ptr noundef nonnull @r_call_max, i64 noundef %1, ptr noundef null, i64 noundef 4, i64 noundef %i.cg, i64 noundef 0) #11 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 4
  br i1 %i.ci, label %r_cover_p.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cj = tail call fastcc i32 @r_less(i64 noundef %i.i, i64 noundef %i.ch)
  %.fr = freeze i32 %i.cj
  %i.ck = icmp sgt i32 %.fr, -1
  br i1 %i.ck, label %r_cover_range_p.exit.thread35, label %r_cover_p.exit

r_cover_range_p.exit:                             ; preds = %RANGE_EXCL.exit55.i
  %i.cl = icmp sgt i32 %.140.i, 0
  br i1 %i.cl, label %r_cover_range_p.exit.thread35, label %r_cover_p.exit

r_cover_range_p.exit.thread35:                    ; preds = %RANGE_EXCL.exit.i16, %r_less.exit12.i, %bb.v, %bb.x, %bb.s, %r_cover_range_p.exit
  br label %r_cover_p.exit

bb.y:                                             ; preds = %RANGE_END.exit
  %i.cm = icmp eq i64 %i.c, 4
  br i1 %i.cm, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cn = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.c, i64 noundef 135, i32 noundef 1, i64 noundef %1) #11 ; 2 uses
  %i.co = icmp eq i64 %i.cn, 4
  br i1 %i.co, label %r_cover_p.exit, label %r_less.exit.i13

r_less.exit.i13:                                  ; preds = %bb.z
  %i.cp = tail call i32 @rb_cmpint(i64 noundef %i.cn, i64 noundef %i.c, i64 noundef %1) #11
  %i.cq = icmp slt i32 %i.cp, 1
  br i1 %i.cq, label %bb.aa, label %r_cover_p.exit

bb.aa:                                            ; preds = %r_less.exit.i13, %bb.y
  %i.cr = load i64, ptr %i.a, align 8, !tbaa !13
  %i.cs = and i64 %i.cr, 1040384
  %.not.i.i.i.i15 = icmp eq i64 %i.cs, 0
  br i1 %.not.i.i.i.i15, label %bb.ab, label %RANGE_EXCL.exit.i16

bb.ab:                                            ; preds = %bb.aa
  %i.ct = getelementptr i8, ptr %i.a, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !15
  br label %RANGE_EXCL.exit.i16

RANGE_EXCL.exit.i16:                              ; preds = %bb.aa, %bb.ab
  %.0.i.i.i.i17 = phi ptr [ %i.cu, %bb.ab ], [ %i.b, %bb.aa ]
  %i.cv = icmp eq i64 %i.i, 4
  br i1 %i.cv, label %r_cover_range_p.exit.thread35, label %bb.ac

bb.ac:                                            ; preds = %RANGE_EXCL.exit.i16
  %i.cw = getelementptr i8, ptr %.0.i.i.i.i17, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !11
  %i.cy = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %1, i64 noundef 135, i32 noundef 1, i64 noundef %i.i) #11 ; 2 uses
  %i.cz = icmp eq i64 %i.cy, 4
  br i1 %i.cz, label %r_cover_p.exit, label %r_less.exit12.i

r_less.exit12.i:                                  ; preds = %bb.ac
  %i.da = and i64 %i.cx, -5
  %i.db = icmp ne i64 %i.da, 0
  %.neg.i = sext i1 %i.db to i32
  %i.dc = tail call i32 @rb_cmpint(i64 noundef %i.cy, i64 noundef %1, i64 noundef %i.i) #11
  %.not.i18 = icmp sgt i32 %i.dc, %.neg.i
  br i1 %.not.i18, label %r_cover_p.exit, label %r_cover_range_p.exit.thread35

r_cover_p.exit:                                   ; preds = %bb.o, %bb.l, %r_less.exit.i.i, %r_less.exit12.i.i, %RANGE_END.exit.i, %bb.f, %RANGE_EXCL.exit.i, %bb.p, %bb.w, %r_cover_range_p.exit.thread35, %r_cover_range_p.exit, %bb.s, %bb.x, %r_less.exit12.i, %bb.ac, %r_less.exit.i13, %bb.z
  %.0 = phi i64 [ 0, %bb.ac ], [ 0, %bb.o ], [ 0, %r_less.exit12.i ], [ 0, %r_less.exit.i13 ], [ 0, %bb.z ], [ 20, %r_cover_range_p.exit.thread35 ], [ 0, %r_cover_range_p.exit ], [ 0, %bb.x ], [ 0, %bb.s ], [ 0, %bb.w ], [ 0, %bb.p ], [ 0, %RANGE_EXCL.exit.i ], [ 0, %bb.f ], [ 0, %RANGE_END.exit.i ], [ 0, %r_less.exit12.i.i ], [ 0, %r_less.exit.i.i ], [ 0, %bb.l ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @range_count(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @rb_call_super(i32 noundef %0, ptr noundef %1) #11
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i32 @rb_block_given_p() #11
  %.not18 = icmp eq i32 %i.b, 0
  br i1 %.not18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call i64 @rb_call_super(i32 noundef 0, ptr noundef %1) #11
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.d = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 16       ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !15   ; 6 uses
  %i.g = load i64, ptr %i.d, align 8, !tbaa !13
  %i.h = and i64 %i.g, 1040384
  %.not.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i, label %bb.f, label %RANGE_END.exit

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr i8, ptr %i.d, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15
  br label %RANGE_END.exit

RANGE_END.exit:                                   ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi ptr [ %i.j, %bb.f ], [ %i.e, %bb.e ]
  %i.k = getelementptr i8, ptr %.0.i.i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !11
  %i.m = icmp eq i64 %i.f, 4
  %i.n = icmp eq i64 %i.l, 4
  %or.cond = select i1 %i.m, i1 true, i1 %i.n
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %RANGE_END.exit
  %i.o = tail call i64 @rb_float_new_in_heap(double noundef +inf) #11
  br label %bb.j

bb.h:                                             ; preds = %RANGE_END.exit
  %i.p = trunc i64 %i.f to i1
  br i1 %i.p, label %is_integer_p.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = icmp eq i64 %i.f, 0
  %i.r = and i64 %i.f, 6
  %i.s = icmp ne i64 %i.r, 0
  %i.t = or i1 %i.q, %i.s
  br i1 %i.t, label %rb_integer_type_p.exit.thread7.i, label %rb_integer_type_p.exit.i

rb_integer_type_p.exit.i:                         ; preds = %bb.i
  %i.u = inttoptr i64 %i.f to ptr
  %i.v = load i64, ptr %i.u, align 8, !tbaa !13
  %i.w = and i64 %i.v, 31
  %i.x = icmp eq i64 %i.w, 10
  br i1 %i.x, label %is_integer_p.exit.thread, label %rb_integer_type_p.exit.thread7.i

rb_integer_type_p.exit.thread7.i:                 ; preds = %rb_integer_type_p.exit.i, %bb.i
  %.pr.i.i = load i64, ptr @is_integer_p.rbimpl_id, align 8, !tbaa !11 ; 2 uses
  %.not4.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not4.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i

.lr.ph.i.i:                                       ; preds = %rb_integer_type_p.exit.thread7.i, %.lr.ph.i.i
  %i.y = tail call i64 @rb_intern2(ptr noundef nonnull @.str.46, i64 noundef 8) #11 ; 3 uses
  store i64 %i.y, ptr @is_integer_p.rbimpl_id, align 8, !tbaa !11
  %.not.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i, !llvm.loop !16

rbimpl_intern_const.exit.i:                       ; preds = %.lr.ph.i.i, %rb_integer_type_p.exit.thread7.i
  %.lcssa.i.i = phi i64 [ %.pr.i.i, %rb_integer_type_p.exit.thread7.i ], [ %i.y, %.lr.ph.i.i ]
  %i.z = tail call i64 @rb_check_funcall(i64 noundef %i.f, i64 noundef %.lcssa.i.i, i32 noundef 0, ptr noundef null) #11
  switch i64 %i.z, label %is_integer_p.exit.thread [
    i64 36, label %is_integer_p.exit.thread22
    i64 4, label %is_integer_p.exit.thread22
    i64 0, label %is_integer_p.exit.thread22
  ]

is_integer_p.exit.thread:                         ; preds = %rbimpl_intern_const.exit.i, %bb.h, %rb_integer_type_p.exit.i
  %i.aa = tail call i64 @range_size(i64 noundef %2) ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4
  br i1 %i.ab, label %is_integer_p.exit.thread22, label %bb.j

is_integer_p.exit.thread22:                       ; preds = %rbimpl_intern_const.exit.i, %rbimpl_intern_const.exit.i, %rbimpl_intern_const.exit.i, %is_integer_p.exit.thread
  %i.ac = tail call i64 @rb_call_super(i32 noundef 0, ptr noundef %1) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %is_integer_p.exit.thread22, %is_integer_p.exit.thread, %bb.d, %bb.b
  %.2 = phi i64 [ %i.a, %bb.b ], [ %i.c, %bb.d ], [ %i.o, %bb.g ], [ %i.ac, %is_integer_p.exit.thread22 ], [ %i.aa, %is_integer_p.exit.thread ]
  ret i64 %.2
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @range_overlap(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = load i64, ptr @rb_cRange, align 8, !tbaa !11
  %i.b = tail call i64 @rb_obj_is_kind_of(i64 noundef %1, i64 noundef %i.a) #11
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  %i.d = tail call i64 @rb_obj_class(i64 noundef %1) #11
  %i.e = tail call i64 @rb_class_name(i64 noundef %i.d) #11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.c, ptr noundef nonnull @.str.65, i64 noundef %i.e) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16       ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !15   ; 7 uses
  %i.i = load i64, ptr %i.f, align 8, !tbaa !13
  %i.j = and i64 %i.i, 1040384
  %.not.i.i.i = icmp eq i64 %i.j, 0
  %i.k = getelementptr i8, ptr %i.f, i64 24       ; 2 uses
  br i1 %.not.i.i.i, label %bb.d, label %RANGE_EXCL.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15   ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 8
  br label %RANGE_EXCL.exit

RANGE_EXCL.exit:                                  ; preds = %bb.c, %bb.d
  %.in = phi ptr [ %i.m, %bb.d ], [ %i.k, %bb.c ]
  %.0.i.i.i41 = phi ptr [ %i.l, %bb.d ], [ %i.g, %bb.c ]
  %i.n = load i64, ptr %.in, align 8, !tbaa !11   ; 6 uses
  %i.o = getelementptr i8, ptr %.0.i.i.i41, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !11
  %i.q = and i64 %i.p, -5
  %i.r = icmp ne i64 %i.q, 0                      ; 2 uses
  %i.s = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.t = getelementptr i8, ptr %i.s, i64 16       ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !15   ; 7 uses
  %i.v = load i64, ptr %i.s, align 8, !tbaa !13
  %i.w = and i64 %i.v, 1040384
  %.not.i.i.i42 = icmp eq i64 %i.w, 0
  %i.x = getelementptr i8, ptr %i.s, i64 24       ; 2 uses
  br i1 %.not.i.i.i42, label %bb.e, label %RANGE_EXCL.exit47

bb.e:                                             ; preds = %RANGE_EXCL.exit
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15   ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 8
  br label %RANGE_EXCL.exit47

RANGE_EXCL.exit47:                                ; preds = %RANGE_EXCL.exit, %bb.e
  %.in99 = phi ptr [ %i.z, %bb.e ], [ %i.x, %RANGE_EXCL.exit ]
  %.0.i.i.i46 = phi ptr [ %i.y, %bb.e ], [ %i.t, %RANGE_EXCL.exit ]
  %i.aa = load i64, ptr %.in99, align 8, !tbaa !11 ; 6 uses
  %i.ab = getelementptr i8, ptr %.0.i.i.i46, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !11
  %i.ad = and i64 %i.ac, -5
  %i.ae = icmp ne i64 %i.ad, 0                    ; 2 uses
  %i.af = icmp eq i64 %i.h, 4                     ; 2 uses
  %i.ag = icmp eq i64 %i.aa, 4                    ; 3 uses
  %or.cond9.i = or i1 %i.af, %i.ag
  br i1 %or.cond9.i, label %empty_region_p.exit.thread, label %bb.f

bb.f:                                             ; preds = %RANGE_EXCL.exit47
  %i.ah = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.h, i64 noundef 135, i32 noundef 1, i64 noundef %i.aa) #11 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 4
  br i1 %i.ai, label %empty_region_p.exit.thread72, label %empty_region_p.exit

empty_region_p.exit:                              ; preds = %bb.f
  %i.aj = tail call i32 @rb_cmpint(i64 noundef %i.ah, i64 noundef %i.h, i64 noundef %i.aa) #11 ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  %i.al = icmp eq i32 %i.aj, 0
  %or.cond.i = and i1 %i.ae, %i.al
  %.0.i = or i1 %i.ak, %or.cond.i
  br i1 %.0.i, label %empty_region_p.exit.thread72, label %empty_region_p.exit.thread

empty_region_p.exit.thread:                       ; preds = %RANGE_EXCL.exit47, %empty_region_p.exit
  %i.am = icmp eq i64 %i.u, 4                     ; 4 uses
  %i.an = icmp eq i64 %i.n, 4                     ; 3 uses
  %or.cond9.i48 = or i1 %i.an, %i.am
  br i1 %or.cond9.i48, label %empty_region_p.exit54.thread, label %bb.g

bb.g:                                             ; preds = %empty_region_p.exit.thread
  %i.ao = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.u, i64 noundef 135, i32 noundef 1, i64 noundef %i.n) #11 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 4
  br i1 %i.ap, label %empty_region_p.exit.thread72, label %empty_region_p.exit54

empty_region_p.exit54:                            ; preds = %bb.g
  %i.aq = tail call i32 @rb_cmpint(i64 noundef %i.ao, i64 noundef %i.u, i64 noundef %i.n) #11 ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  %i.as = icmp eq i32 %i.aq, 0
  %or.cond.i51 = and i1 %i.r, %i.as
  %.0.i52 = or i1 %i.ar, %or.cond.i51
  br i1 %.0.i52, label %empty_region_p.exit.thread72, label %empty_region_p.exit54.thread
end_hunk_1
