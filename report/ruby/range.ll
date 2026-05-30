inline.NumInlined: 546
inline.NumDeleted: 69
begin_hunk_0_@range_size:bb.a
rb_integer_type_p.exit.thread16:                  ; preds = %bb.c, %bb.f, %rb_integer_type_p.exit
  %i.ag = tail call i32 @rb_respond_to(i64 noundef %i.c, i64 noundef 3073) #11
  %.not11 = icmp eq i32 %i.ag, 0
  br i1 %.not11, label %bb.h, label %bb.i

bb.h:                                             ; preds = %rb_integer_type_p.exit.thread16
  %i.ah = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  %i.ai = tail call ptr @rb_obj_classname(i64 noundef %i.c) #11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ah, ptr noundef nonnull @.str.38, ptr noundef %i.ai) #12
  unreachable

bb.i:                                             ; preds = %rb_integer_type_p.exit.thread16, %bb.g, %RANGE_EXCL.exit
  %.0 = phi i64 [ %i.ad, %RANGE_EXCL.exit ], [ %i.af, %bb.g ], [ 4, %rb_integer_type_p.exit.thread16 ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @range_to_a(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %i.c = and i64 %i.b, 1040384
  %.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 16
  br label %RANGE_END.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.a, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  br label %RANGE_END.exit

RANGE_END.exit:                                   ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  %i.g = getelementptr i8, ptr %.0.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11
  %i.i = icmp eq i64 %i.h, 4
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %RANGE_END.exit
  %i.j = load i64, ptr @rb_eRangeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.j, ptr noundef nonnull @.str.58) #12
  unreachable

bb.e:                                             ; preds = %RANGE_END.exit
  %i.k = tail call i64 @rb_call_super(i32 noundef 0, ptr noundef null) #11
  ret i64 %i.k
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @range_to_set(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %i.c = and i64 %i.b, 1040384
  %.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 16
  br label %RANGE_END.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.a, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  br label %RANGE_END.exit

RANGE_END.exit:                                   ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  %i.g = getelementptr i8, ptr %.0.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11
  %i.i = icmp eq i64 %i.h, 4
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %RANGE_END.exit
  %i.j = load i64, ptr @rb_eRangeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.j, ptr noundef nonnull @.str.59) #12
  unreachable

bb.e:                                             ; preds = %RANGE_END.exit
  %i.k = tail call i64 @rb_call_super(i32 noundef %0, ptr noundef %1) #11
  ret i64 %i.k
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @range_to_s(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16       ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !15
  %i.d = tail call i64 @rb_obj_as_string(i64 noundef %i.c) #11
  %i.e = load i64, ptr %i.a, align 8, !tbaa !13
  %i.f = and i64 %i.e, 1040384
  %.not.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i, label %bb.b, label %RANGE_END.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.a, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  br label %RANGE_END.exit

RANGE_END.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi ptr [ %i.h, %bb.b ], [ %i.b, %bb.a ]
  %i.i = getelementptr i8, ptr %.0.i.i.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !11
  %i.k = tail call i64 @rb_obj_as_string(i64 noundef %i.j) #11
  %i.l = tail call i64 @rb_str_dup(i64 noundef %i.d) #11 ; 3 uses
  %i.m = load i64, ptr %i.a, align 8, !tbaa !13
  %i.n = and i64 %i.m, 1040384
  %.not.i.i.i8 = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i8, label %bb.c, label %RANGE_EXCL.exit

bb.c:                                             ; preds = %RANGE_END.exit
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
  %2 = tail call fastcc zeroext i1 @range_string_range_p(i64 noundef %i.d, i64 noundef %i.j)
  br i1 %2, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bi = load i64, ptr %i.b, align 8, !tbaa !13
  %i.bj = and i64 %i.bi, 1040384
  %.not.i.i.i30.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i30.i, label %bb.o, label %RANGE_EXCL.exit.i

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr i8, ptr %i.b, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !15
  br label %RANGE_EXCL.exit.i

RANGE_EXCL.exit.i:                                ; preds = %bb.o, %bb.n
  %.0.i.i.i31.i = phi ptr [ %i.bl, %bb.o ], [ %i.c, %bb.n ]
  %i.bm = getelementptr i8, ptr %.0.i.i.i31.i, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !11
  %i.bo = tail call i64 @rb_str_include_range_p(i64 noundef %i.d, i64 noundef %i.j, i64 noundef %1, i64 noundef %i.bn) #11
  br label %range_include_internal.exit

bb.p:                                             ; preds = %bb.m
  %i.bp = tail call fastcc i64 @range_include_fallback(i64 noundef %i.d, i64 noundef %i.j, i64 noundef %1)
  br label %range_include_internal.exit

range_include_internal.exit:                      ; preds = %RANGE_EXCL.exit.i, %bb.p
  %.0.i = phi i64 [ %i.bp, %bb.p ], [ %i.bo, %RANGE_EXCL.exit.i ] ; 2 uses
  %i.bq = icmp eq i64 %.0.i, 36
  br i1 %i.bq, label %bb.q, label %range_include_internal.exit.thread

bb.q:                                             ; preds = %range_include_internal.exit
  %i.br = call i64 @rb_call_super(i32 noundef 1, ptr noundef nonnull %i.a) #11
  br label %range_include_internal.exit.thread

range_include_internal.exit.thread:               ; preds = %bb.l, %bb.i, %r_less.exit.i.i, %r_less.exit12.i.i, %.thread.i.i, %range_include_internal.exit, %bb.q
  %.0 = phi i64 [ %i.br, %bb.q ], [ %.0.i, %range_include_internal.exit ], [ 0, %bb.l ], [ 0, %bb.i ], [ 0, %r_less.exit.i.i ], [ 0, %r_less.exit12.i.i ], [ 20, %.thread.i.i ]
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
end_hunk_0
begin_hunk_1_@range_cover:bb.a
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

empty_region_p.exit54.thread:                     ; preds = %empty_region_p.exit.thread, %empty_region_p.exit54
  br i1 %i.af, label %.critedge, label %bb.h

bb.h:                                             ; preds = %empty_region_p.exit54.thread
  br i1 %i.am, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.h, i64 noundef 135, i32 noundef 1, i64 noundef %i.u) #11 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4
  br i1 %i.au, label %empty_region_p.exit.thread72, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = tail call i32 @rb_cmpint(i64 noundef %i.at, i64 noundef %i.h, i64 noundef %i.u) #11
  %.not100 = icmp eq i32 %i.av, 0
  br i1 %.not100, label %empty_region_p.exit.thread72, label %bb.m

.critedge:                                        ; preds = %empty_region_p.exit54.thread
  %.not98 = xor i1 %i.am, true
  %brmerge = or i1 %i.an, %.not98
  br i1 %brmerge, label %empty_region_p.exit61.thread, label %bb.k

bb.k:                                             ; preds = %.critedge
  br i1 %i.ag, label %empty_region_p.exit.thread72, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.n, i64 noundef 135, i32 noundef 1, i64 noundef %i.aa) #11
  %i.ax = icmp eq i64 %i.aw, 4
  %i.ay = select i1 %i.ax, i64 0, i64 20
  br label %empty_region_p.exit.thread72

bb.m:                                             ; preds = %bb.h, %bb.j
  br i1 %i.an, label %empty_region_p.exit61.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.h, i64 noundef 135, i32 noundef 1, i64 noundef %i.n) #11 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 4
  br i1 %i.ba, label %empty_region_p.exit.thread72, label %empty_region_p.exit61

empty_region_p.exit61:                            ; preds = %bb.n
  %i.bb = tail call i32 @rb_cmpint(i64 noundef %i.az, i64 noundef %i.h, i64 noundef %i.n) #11 ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  %i.bd = icmp eq i32 %i.bb, 0
  %or.cond.i58 = and i1 %i.r, %i.bd
  %.0.i59 = or i1 %i.bc, %or.cond.i58
  br i1 %.0.i59, label %empty_region_p.exit.thread72, label %empty_region_p.exit61.thread

empty_region_p.exit61.thread:                     ; preds = %.critedge, %bb.m, %empty_region_p.exit61
  %or.cond9.i62 = or i1 %i.am, %i.ag
  br i1 %or.cond9.i62, label %empty_region_p.exit.thread72, label %bb.o

bb.o:                                             ; preds = %empty_region_p.exit61.thread
  %i.be = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.u, i64 noundef 135, i32 noundef 1, i64 noundef %i.aa) #11 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 4
  br i1 %i.bf, label %empty_region_p.exit68.thread92, label %empty_region_p.exit68

empty_region_p.exit68:                            ; preds = %bb.o
  %i.bg = tail call i32 @rb_cmpint(i64 noundef %i.be, i64 noundef %i.u, i64 noundef %i.aa) #11 ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  %i.bi = icmp eq i32 %i.bg, 0
  %or.cond.i65 = and i1 %i.ae, %i.bi
  %.0.i66 = or i1 %i.bh, %or.cond.i65
  %cond.fr = freeze i1 %.0.i66
  br i1 %cond.fr, label %empty_region_p.exit68.thread92, label %empty_region_p.exit.thread72

empty_region_p.exit68.thread92:                   ; preds = %bb.o, %empty_region_p.exit68
  br label %empty_region_p.exit.thread72

empty_region_p.exit.thread72:                     ; preds = %bb.k, %empty_region_p.exit61.thread, %bb.n, %bb.i, %bb.g, %bb.f, %empty_region_p.exit68.thread92, %empty_region_p.exit68, %empty_region_p.exit61, %empty_region_p.exit54, %empty_region_p.exit, %bb.j, %bb.l
  %.1 = phi i64 [ 20, %bb.j ], [ 0, %empty_region_p.exit ], [ 0, %empty_region_p.exit54 ], [ 0, %bb.i ], [ 0, %empty_region_p.exit61 ], [ %i.ay, %bb.l ], [ 0, %bb.n ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %empty_region_p.exit68.thread92 ], [ 20, %empty_region_p.exit68 ], [ 20, %empty_region_p.exit61.thread ], [ 20, %bb.k ]
  ret i64 %.1
}

declare i64 @rb_funcall(i64 noundef, i64 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @rb_class_of(i64 noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %i.f = getelementptr i8, ptr %i.e, i64 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  switch i64 %0, label %bb.f [
    i64 0, label %bb.h
    i64 4, label %bb.d
    i64 20, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.g = trunc i64 %0 to i1
  br i1 %i.g, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = and i64 %0, 254
  %i.i = icmp eq i64 %i.h, 12
  %spec.select = select i1 %i.i, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.c, %bb.e, %bb.d, %bb.b
  %.0.in = phi ptr [ %i.f, %bb.b ], [ @rb_cNilClass, %bb.d ], [ @rb_cTrueClass, %bb.e ], [ @rb_cFalseClass, %bb.c ], [ @rb_cInteger, %bb.f ], [ %spec.select, %bb.g ]
  %.0 = load i64, ptr %.0.in, align 8, !tbaa !11
  ret i64 %.0
}

declare i64 @rb_obj_freeze(i64 noundef) local_unnamed_addr #2

declare void @rb_gc_writebarrier(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_num2long(i64 noundef) local_unnamed_addr #2

declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_struct_alloc_noinit(i64 noundef) local_unnamed_addr #2

declare i64 @rb_ivar_set(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_ivar_get(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint noreturn nounwind sspstrong uwtable
define internal fastcc void @rb_name_err_raise(i64 noundef %0, i64 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = tail call i64 @rb_fstring_cstr(ptr noundef nonnull @.str.36) #11
  tail call fastcc void @rb_name_err_raise_str(i64 noundef %i.a, i64 noundef %0, i64 noundef %1) #13
  unreachable
}

declare i64 @rb_id2sym(i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @rb_error_frozen_object(i64 noundef) local_unnamed_addr #3

declare void @rb_str_modify(i64 noundef) local_unnamed_addr #2

declare i64 @rb_fstring_cstr(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint noreturn nounwind sspstrong uwtable
define internal fastcc void @rb_name_err_raise_str(i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = tail call i64 @rb_name_err_new(i64 noundef %0, i64 noundef %1, i64 noundef %2) #11
  tail call void @rb_exc_raise(i64 noundef %i.a) #12
  unreachable
}

declare i64 @rb_name_err_new(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @rb_exc_raise(i64 noundef) local_unnamed_addr #3

declare i32 @rb_block_given_p() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @rb_error_arity(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @rb_struct_init_copy(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_exec_recursive_paired(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @recursive_equal(i64 noundef %0, i64 noundef %1, i32 noundef %2) #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.a = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16       ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !15
  %i.d = inttoptr i64 %1 to ptr                   ; 5 uses
  %i.e = getelementptr i8, ptr %i.d, i64 16       ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !15
  %i.g = tail call i64 @rb_equal(i64 noundef %i.c, i64 noundef %i.f) #11
  %.not8 = icmp eq i64 %i.g, 0
  br i1 %.not8, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr %i.a, align 8, !tbaa !13
  %i.i = and i64 %i.h, 1040384
  %.not.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i, label %bb.d, label %RANGE_END.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.a, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15
  br label %RANGE_END.exit

RANGE_END.exit:                                   ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi ptr [ %i.k, %bb.d ], [ %i.b, %bb.c ]
  %i.l = getelementptr i8, ptr %.0.i.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11
  %i.n = load i64, ptr %i.d, align 8, !tbaa !13
  %i.o = and i64 %i.n, 1040384
  %.not.i.i.i10 = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i10, label %bb.e, label %RANGE_END.exit12

bb.e:                                             ; preds = %RANGE_END.exit
  %i.p = getelementptr i8, ptr %i.d, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !15
  br label %RANGE_END.exit12

RANGE_END.exit12:                                 ; preds = %RANGE_END.exit, %bb.e
  %.0.i.i.i11 = phi ptr [ %i.q, %bb.e ], [ %i.e, %RANGE_END.exit ]
  %i.r = getelementptr i8, ptr %.0.i.i.i11, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !11
  %i.t = tail call i64 @rb_equal(i64 noundef %i.m, i64 noundef %i.s) #11
  %.not9 = icmp eq i64 %i.t, 0
  br i1 %.not9, label %bb.i, label %bb.f

bb.f:                                             ; preds = %RANGE_END.exit12
  %i.u = load i64, ptr %i.a, align 8, !tbaa !13
  %i.v = and i64 %i.u, 1040384
  %.not.i.i.i13 = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i13, label %bb.g, label %RANGE_EXCL.exit

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr i8, ptr %i.a, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !15
  br label %RANGE_EXCL.exit

RANGE_EXCL.exit:                                  ; preds = %bb.f, %bb.g
  %.0.i.i.i14 = phi ptr [ %i.x, %bb.g ], [ %i.b, %bb.f ]
  %i.y = getelementptr i8, ptr %.0.i.i.i14, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !11
  %i.aa = and i64 %i.z, -5
  %i.ab = icmp ne i64 %i.aa, 0
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !13
  %i.ad = and i64 %i.ac, 1040384
  %.not.i.i.i15 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i15, label %bb.h, label %RANGE_EXCL.exit17

bb.h:                                             ; preds = %RANGE_EXCL.exit
  %i.ae = getelementptr i8, ptr %i.d, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !15
  br label %RANGE_EXCL.exit17

RANGE_EXCL.exit17:                                ; preds = %RANGE_EXCL.exit, %bb.h
  %.0.i.i.i16 = phi ptr [ %i.af, %bb.h ], [ %i.e, %RANGE_EXCL.exit ]
  %i.ag = getelementptr i8, ptr %.0.i.i.i16, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !11
  %i.ai = and i64 %i.ah, -5
  %i.aj = icmp ne i64 %i.ai, 0
  %i.ak = xor i1 %i.ab, %i.aj
  %i.al = select i1 %i.ak, i64 0, i64 20
  br label %bb.i

bb.i:                                             ; preds = %RANGE_END.exit12, %bb.b, %bb.a, %RANGE_EXCL.exit17
  %.0 = phi i64 [ 20, %bb.a ], [ %i.al, %RANGE_EXCL.exit17 ], [ 0, %bb.b ], [ 0, %RANGE_END.exit12 ]
  ret i64 %.0
}
end_hunk_1
begin_hunk_2_@first_i:bb.a

bb.d:                                             ; preds = %rb_num2long_inline.exit
  tail call void @rb_iter_break() #12
  unreachable

bb.e:                                             ; preds = %rb_num2long_inline.exit
  %i.g = getelementptr i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11
  %i.i = tail call i64 @rb_ary_push(i64 noundef %i.h, i64 noundef %0) #11 ; 0 uses
  %i.j = add nsw i64 %.0.i, -1                    ; 2 uses
  %i.k = icmp samesign ult i64 %.0.i, 4611686018427387905
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = shl nuw nsw i64 %i.j, 1
  %i.m = or disjoint i64 %i.l, 1
  br label %rb_long2num_inline.exit

bb.g:                                             ; preds = %bb.e
  %i.n = tail call i64 @rb_int2big(i64 noundef %i.j) #11
  br label %rb_long2num_inline.exit

rb_long2num_inline.exit:                          ; preds = %bb.f, %bb.g
  %.0.i7 = phi i64 [ %i.m, %bb.f ], [ %i.n, %bb.g ]
  store i64 %.0.i7, ptr %i.a, align 8, !tbaa !11
  ret i64 4
}

; Function Attrs: noreturn
declare void @rb_iter_break() local_unnamed_addr #3

declare i64 @rb_ary_push(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_ary_last(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_Array(i64 noundef) local_unnamed_addr #2

declare i32 @rb_method_basic_definition_p(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_int_plus(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @rb_num_negative_p(i64 noundef) local_unnamed_addr #2

declare i64 @rb_int_gt(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @rb_str_cmp(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @rb_float_cmp(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_assoc_new(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_obj_as_string(i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_dup(i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_cat(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_append(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_exec_recursive(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @inspect_range(i64 noundef %0, i64 %1, i32 noundef %2) #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  %i.a = inttoptr i64 %0 to ptr                   ; 11 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %i.c = and i64 %i.b, 1040384
  %.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %i.a, i64 16
  br label %RANGE_EXCL.exit

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %i.a, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  br label %RANGE_EXCL.exit

RANGE_EXCL.exit:                                  ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi ptr [ %i.d, %bb.c ], [ %i.f, %bb.d ]
  %i.g = getelementptr i8, ptr %.0.i.i.i, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11
  %i.i = and i64 %i.h, -5
  %.not29 = icmp eq i64 %i.i, 0
  %i.j = select i1 %.not29, ptr @.str.62, ptr @.str.61
  %i.k = tail call i64 @rb_str_new_cstr(ptr noundef nonnull %i.j) #11
  br label %.thread

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.a, i64 16       ; 6 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !15   ; 2 uses
  %i.n = icmp eq i64 %i.m, 4
  br i1 %i.n, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.o = load i64, ptr %i.a, align 8, !tbaa !13
  %i.p = and i64 %i.o, 1040384
  %.not.i.i.i17 = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i17, label %bb.g, label %RANGE_END.exit

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr i8, ptr %i.a, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15
  br label %RANGE_END.exit

RANGE_END.exit:                                   ; preds = %bb.f, %bb.g
  %.0.i.i.i18 = phi ptr [ %i.r, %bb.g ], [ %i.l, %bb.f ]
  %i.s = getelementptr i8, ptr %.0.i.i.i18, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !11
  %i.u = icmp eq i64 %i.t, 4
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %RANGE_END.exit, %bb.e
  %i.v = tail call i64 @rb_inspect(i64 noundef %i.m) #11
  %i.w = tail call i64 @rb_str_dup(i64 noundef %i.v) #11
  br label %bb.j

bb.i:                                             ; preds = %RANGE_END.exit
  %i.x = tail call i64 @rb_str_new_static(ptr noundef null, i64 noundef 0) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.015 = phi i64 [ %i.w, %bb.h ], [ %i.x, %bb.i ] ; 5 uses
  %i.y = load i64, ptr %i.a, align 8, !tbaa !13
  %i.z = and i64 %i.y, 1040384
  %.not.i.i.i19 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i19, label %bb.k, label %RANGE_EXCL.exit21

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr i8, ptr %i.a, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !15
  br label %RANGE_EXCL.exit21

RANGE_EXCL.exit21:                                ; preds = %bb.j, %bb.k
  %.0.i.i.i20 = phi ptr [ %i.ab, %bb.k ], [ %i.l, %bb.j ]
  %i.ac = getelementptr i8, ptr %.0.i.i.i20, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !11
  %i.ae = and i64 %i.ad, -5
  %.not30 = icmp eq i64 %i.ae, 0
  %i.af = select i1 %.not30, i64 2, i64 3
  %i.ag = tail call i64 @rb_str_cat(i64 noundef %.015, ptr noundef nonnull @.str.60, i64 noundef %i.af) #11 ; 0 uses
  %i.ah = load i64, ptr %i.l, align 8, !tbaa !15
  %i.ai = icmp eq i64 %i.ah, 4
  %.pre = load i64, ptr %i.a, align 8, !tbaa !13
  %.pre31 = and i64 %.pre, 1040384                ; 2 uses
  br i1 %i.ai, label %RANGE_EXCL.exit21._crit_edge, label %bb.l

bb.l:                                             ; preds = %RANGE_EXCL.exit21
  %.not.i.i.i22 = icmp eq i64 %.pre31, 0
  br i1 %.not.i.i.i22, label %bb.m, label %RANGE_END.exit24

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr i8, ptr %i.a, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !15
  br label %RANGE_END.exit24

RANGE_END.exit24:                                 ; preds = %bb.l, %bb.m
  %.0.i.i.i23 = phi ptr [ %i.ak, %bb.m ], [ %i.l, %bb.l ]
  %i.al = getelementptr i8, ptr %.0.i.i.i23, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !11
  %i.an = icmp eq i64 %i.am, 4
  br i1 %i.an, label %.thread, label %RANGE_EXCL.exit21._crit_edge

RANGE_EXCL.exit21._crit_edge:                     ; preds = %RANGE_EXCL.exit21, %RANGE_END.exit24
  %.not.i.i.i25 = icmp eq i64 %.pre31, 0
  br i1 %.not.i.i.i25, label %bb.n, label %bb.o

bb.n:                                             ; preds = %RANGE_EXCL.exit21._crit_edge
  %i.ao = getelementptr i8, ptr %i.a, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !15
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %RANGE_EXCL.exit21._crit_edge
  %.0.i.i.i26 = phi ptr [ %i.ap, %bb.n ], [ %i.l, %RANGE_EXCL.exit21._crit_edge ]
  %i.aq = getelementptr i8, ptr %.0.i.i.i26, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !11
  %i.as = tail call i64 @rb_inspect(i64 noundef %i.ar) #11 ; 2 uses
  %i.at = icmp eq i64 %i.as, 36
  br i1 %i.at, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = tail call i64 @rb_str_append(i64 noundef %.015, i64 noundef %i.as) #11 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %RANGE_END.exit24, %bb.o, %bb.p, %RANGE_EXCL.exit
  %.016 = phi i64 [ %i.k, %RANGE_EXCL.exit ], [ %.015, %bb.p ], [ %.015, %bb.o ], [ %.015, %RANGE_END.exit24 ]
  ret i64 %.016
}

declare i64 @rb_str_new_cstr(ptr noundef) local_unnamed_addr #2

declare i64 @rb_inspect(i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_new_static(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc zeroext i1 @range_string_range_p(i64 noundef %0, i64 noundef %1) unnamed_addr #5 {
  %3 = icmp eq i64 %0, 0
  %4 = and i64 %0, 7
  %5 = icmp ne i64 %4, 0
  %6 = or i1 %3, %5
  br i1 %6, label %rbimpl_RB_TYPE_P_fastpath.exit, label %rbimpl_RB_TYPE_P_fastpath.exit3

rbimpl_RB_TYPE_P_fastpath.exit3:                  ; preds = %2
  %7 = inttoptr i64 %0 to ptr
  %8 = load i64, ptr %7, align 8, !tbaa !13
  %9 = and i64 %8, 31
  %10 = icmp eq i64 %9, 5
  br i1 %10, label %11, label %rbimpl_RB_TYPE_P_fastpath.exit

11:                                               ; preds = %rbimpl_RB_TYPE_P_fastpath.exit3
  %12 = icmp eq i64 %1, 0
  %13 = and i64 %1, 7
  %14 = icmp ne i64 %13, 0
  %15 = or i1 %12, %14
  br i1 %15, label %rbimpl_RB_TYPE_P_fastpath.exit, label %16

16:                                               ; preds = %11
  %17 = inttoptr i64 %1 to ptr
  %18 = load i64, ptr %17, align 8, !tbaa !13
  %19 = and i64 %18, 31
  %20 = icmp eq i64 %19, 5
  br label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %2, %16, %11, %rbimpl_RB_TYPE_P_fastpath.exit3
  %21 = phi i1 [ %20, %16 ], [ false, %rbimpl_RB_TYPE_P_fastpath.exit3 ], [ false, %11 ], [ false, %2 ]
  ret i1 %21
}

declare i64 @rb_str_include_range_p(i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc range(i64 20, 37) i64 @range_include_fallback(i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #9 {
bb.a:
  %i.a = icmp eq i64 %0, 4
  %i.b = icmp eq i64 %1, 4                        ; 2 uses
  br i1 %i.a, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %linear_object_p.exit.thread8

bb.c:                                             ; preds = %bb.b
  %i.c = trunc i64 %2 to i1
  %i.d = and i64 %2, 3
  %i.e = icmp eq i64 %i.d, 2
  %or.cond.i = or i1 %i.e, %i.c
  br i1 %or.cond.i, label %linear_object_p.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %2, 0
  %i.g = and i64 %2, 6
  %i.h = icmp ne i64 %i.g, 0
  %i.i = or i1 %i.f, %i.h
  br i1 %i.i, label %linear_object_p.exit.thread8, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = inttoptr i64 %2 to ptr
  %i.k = load i64, ptr %i.j, align 8, !tbaa !13
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.l, 31
  switch i32 %i.m, label %bb.f [
    i32 4, label %linear_object_p.exit.thread
    i32 10, label %linear_object_p.exit.thread
  ]

bb.f:                                             ; preds = %bb.e
  %i.n = load i64, ptr @rb_cNumeric, align 8, !tbaa !11
  %i.o = tail call i64 @rb_obj_is_kind_of(i64 noundef %2, i64 noundef %i.n) #11
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %linear_object_p.exit, label %linear_object_p.exit.thread

linear_object_p.exit:                             ; preds = %bb.f
  %i.p = load i64, ptr @rb_cTime, align 8, !tbaa !11
  %i.q = tail call i64 @rb_obj_is_kind_of(i64 noundef %2, i64 noundef %i.p) #11
  %.not7.i.not = icmp eq i64 %i.q, 0
  br i1 %.not7.i.not, label %linear_object_p.exit.thread8, label %linear_object_p.exit.thread

.critedge:                                        ; preds = %bb.a
  br i1 %i.b, label %linear_object_p.exit.thread8, label %linear_object_p.exit.thread

linear_object_p.exit.thread8:                     ; preds = %bb.d, %bb.b, %linear_object_p.exit, %.critedge
  %i.r = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.r, ptr noundef nonnull @.str.64) #12
  unreachable

linear_object_p.exit.thread:                      ; preds = %bb.f, %bb.e, %bb.e, %bb.c, %.critedge, %linear_object_p.exit
  %.0 = phi i64 [ 20, %linear_object_p.exit ], [ 36, %.critedge ], [ 20, %bb.c ], [ 20, %bb.e ], [ 20, %bb.e ], [ 20, %bb.f ]
  ret i64 %.0
}

declare i64 @rb_check_to_integer(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_rescue2(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @r_call_max(i64 noundef %0) #0 {
bb.a:
  %.pr.i = load i64, ptr @r_call_max.rbimpl_id, align 8, !tbaa !11 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.a = tail call i64 @rb_intern2(ptr noundef nonnull @.str.20, i64 noundef 3) #11 ; 3 uses
  store i64 %i.a, ptr @r_call_max.rbimpl_id, align 8, !tbaa !11
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !16

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i64 [ %.pr.i, %bb.a ], [ %i.a, %.lr.ph.i ]
  %i.b = tail call i64 @rb_funcallv(i64 noundef %0, i64 noundef %.lcssa.i, i32 noundef 0, ptr noundef null) #11
  ret i64 %i.b
}

declare i64 @rb_class_name(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { noreturn }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!14, !12, i64 0}
!14 = !{!"RBasic", !12, i64 0, !12, i64 8}
!15 = !{!9, !9, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!14, !12, i64 8}
!19 = !{!"branch_weights", i32 2146410443, i32 1073205}
!20 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!21 = !{!"branch_weights", i32 4001, i32 1}
!22 = distinct !{!22, !17}
!23 = distinct !{!23, !17}
!24 = distinct !{!24, !17}
!25 = distinct !{!25, !17}
!26 = distinct !{!26, !17}
!27 = distinct !{!27, !17}
!28 = distinct !{!28, !17}
!29 = distinct !{!29, !17}
!30 = distinct !{!30, !17}
!31 = distinct !{!31, !17}
!32 = distinct !{!32, !17}
!33 = distinct !{!33, !17}
!34 = distinct !{!34, !17}
!35 = distinct !{!35, !17}
!36 = distinct !{!36, !17}
!37 = distinct !{!37, !17}
!38 = distinct !{!38, !17}
!39 = !{!40, !41, i64 16}
!40 = !{!"RFloat", !14, i64 0, !41, i64 16}
!41 = !{!"double", !9, i64 0}
!42 = distinct !{!42, !17}
!43 = distinct !{!43, !17}
!44 = distinct !{!44, !17}
!45 = distinct !{!45, !17}
!46 = !{!47, !47, i64 0}
!47 = !{!"short", !9, i64 0}
!48 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!49 = distinct !{!49, !17}
!50 = distinct !{!50, !17}
end_hunk_2
