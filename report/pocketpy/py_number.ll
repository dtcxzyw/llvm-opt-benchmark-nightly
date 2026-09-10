Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pocketpy/original/py_number?download=true
inline.NumInlined: 39
inline.NumDeleted: 3
begin_hunk_0_@int__invert__:bb.a
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %0) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i64 @py_toint(ptr noundef %1) #7
  %i.c = tail call ptr (...) @py_retval() #7
  %i.d = xor i64 %i.b, -1
  tail call void @py_newint(ptr noundef %i.c, i64 noundef %i.d) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @int__and__(i32 noundef %0, ptr noundef %1) #2 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %0) #7
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i64 @py_toint(ptr noundef %1) #7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = tail call zeroext i1 @py_istype(ptr noundef nonnull %i.c, i16 noundef signext 3) #7
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i64 @py_toint(ptr noundef nonnull %i.c) #7
  %i.f = tail call ptr (...) @py_retval() #7
  %i.g = and i64 %i.e, %i.b
  tail call void @py_newint(ptr noundef %i.f, i64 noundef %i.g) #7
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = tail call ptr (...) @py_retval() #7
  tail call void @py_newnotimplemented(ptr noundef %i.h) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.e ], [ true, %bb.d ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @int__or__(i32 noundef %0, ptr noundef %1) #2 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %0) #7
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i64 @py_toint(ptr noundef %1) #7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = tail call zeroext i1 @py_istype(ptr noundef nonnull %i.c, i16 noundef signext 3) #7
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i64 @py_toint(ptr noundef nonnull %i.c) #7
  %i.f = tail call ptr (...) @py_retval() #7
  %i.g = or i64 %i.e, %i.b
  tail call void @py_newint(ptr noundef %i.f, i64 noundef %i.g) #7
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = tail call ptr (...) @py_retval() #7
  tail call void @py_newnotimplemented(ptr noundef %i.h) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.e ], [ true, %bb.d ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @int__xor__(i32 noundef %0, ptr noundef %1) #2 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %0) #7
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i64 @py_toint(ptr noundef %1) #7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = tail call zeroext i1 @py_istype(ptr noundef nonnull %i.c, i16 noundef signext 3) #7
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i64 @py_toint(ptr noundef nonnull %i.c) #7
  %i.f = tail call ptr (...) @py_retval() #7
  %i.g = xor i64 %i.e, %i.b
  tail call void @py_newint(ptr noundef %i.f, i64 noundef %i.g) #7
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = tail call ptr (...) @py_retval() #7
  tail call void @py_newnotimplemented(ptr noundef %i.h) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.e ], [ true, %bb.d ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @int__lshift__(i32 noundef %0, ptr noundef %1) #2 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %0) #7
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i64 @py_toint(ptr noundef %1) #7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = tail call zeroext i1 @py_istype(ptr noundef nonnull %i.c, i16 noundef signext 3) #7
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i64 @py_toint(ptr noundef nonnull %i.c) #7
  %i.f = tail call ptr (...) @py_retval() #7
  %i.g = shl i64 %i.b, %i.e
  tail call void @py_newint(ptr noundef %i.f, i64 noundef %i.g) #7
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = tail call ptr (...) @py_retval() #7
  tail call void @py_newnotimplemented(ptr noundef %i.h) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.e ], [ true, %bb.d ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @int__rshift__(i32 noundef %0, ptr noundef %1) #2 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %0) #7
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i64 @py_toint(ptr noundef %1) #7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = tail call zeroext i1 @py_istype(ptr noundef nonnull %i.c, i16 noundef signext 3) #7
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i64 @py_toint(ptr noundef nonnull %i.c) #7
  %i.f = tail call ptr (...) @py_retval() #7
  %i.g = ashr i64 %i.b, %i.e
  tail call void @py_newint(ptr noundef %i.f, i64 noundef %i.g) #7
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = tail call ptr (...) @py_retval() #7
  tail call void @py_newnotimplemented(ptr noundef %i.h) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.e ], [ true, %bb.d ]
  ret i1 %.0
}

declare void @py_bindmethod(i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal zeroext i1 @int_bit_length(i32 noundef %0, ptr noundef %1) #2 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %0) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i64 @py_toint(ptr noundef %1) #7 ; 2 uses
  %.not1415 = icmp eq i64 %i.b, 0
  br i1 %.not1415, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %spec.select = tail call i64 @llvm.abs.i64(i64 %i.b, i1 true)
  %2 = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %spec.select, i1 true)
  %3 = sub nuw nsw i64 64, %2
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.0.lcssa = phi i64 [ 0, %bb.c ], [ %3, %.lr.ph ]
  %i.c = tail call ptr (...) @py_retval() #7
  tail call void @py_newint(ptr noundef %i.c, i64 noundef %.0.lcssa) #7
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %.010 = phi i1 [ %i.a, %bb.b ], [ true, %._crit_edge ]
  ret i1 %.010
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bool__new__(i32 noundef %0, ptr noundef %1) #2 {
bb.a:
  switch i32 %0, label %bb.e [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr (...) @py_retval() #7
  tail call void @py_newbool(ptr noundef %i.a, i1 noundef zeroext false) #7
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = tail call i32 @py_bool(ptr noundef nonnull %i.b) #7 ; 2 uses
  %.not = icmp eq i32 %i.c, -1
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr (...) @py_retval() #7
  %i.e = icmp ne i32 %i.c, 0
  tail call void @py_newbool(ptr noundef %i.d, i1 noundef zeroext %i.e) #7
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.f = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.18) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e, %bb.b
  %.1 = phi i1 [ true, %bb.b ], [ %i.f, %bb.e ], [ false, %bb.c ], [ true, %bb.d ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bool__hash__(i32 noundef %0, ptr noundef %1) #2 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %0) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @py_tobool(ptr noundef %1) #7
  %i.c = tail call ptr (...) @py_retval() #7
  %i.d = zext i1 %i.b to i64
  tail call void @py_newint(ptr noundef %i.c, i64 noundef %i.d) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bool__repr__(i32 noundef %0, ptr noundef %1) #2 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %0) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @py_tobool(ptr noundef %1) #7
  %i.c = tail call ptr (...) @py_retval() #7
  %i.d = select i1 %i.b, ptr @.str.19, ptr @.str.20
  tail call void @py_newstr(ptr noundef %i.c, ptr noundef nonnull %i.d) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bool__eq__(i32 noundef %0, ptr noundef %1) #2 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %0) #7
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @py_tobool(ptr noundef %1) #7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load i16, ptr %i.c, align 8, !tbaa !14
  %i.e = icmp eq i16 %i.d, 5
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call zeroext i1 @py_tobool(ptr noundef nonnull %i.c) #7
  %i.g = tail call ptr (...) @py_retval() #7
  %i.h = xor i1 %i.b, %i.f
  %i.i = xor i1 %i.h, true
  tail call void @py_newbool(ptr noundef %i.g, i1 noundef zeroext %i.i) #7
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = tail call ptr (...) @py_retval() #7
  tail call void @py_newnotimplemented(ptr noundef %i.j) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.e ], [ true, %bb.d ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bool__ne__(i32 noundef %0, ptr noundef %1) #2 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %0) #7
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @py_tobool(ptr noundef %1) #7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load i16, ptr %i.c, align 8, !tbaa !14
  %i.e = icmp eq i16 %i.d, 5
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call zeroext i1 @py_tobool(ptr noundef nonnull %i.c) #7
  %i.g = tail call ptr (...) @py_retval() #7
  %i.h = xor i1 %i.b, %i.f
  tail call void @py_newbool(ptr noundef %i.g, i1 noundef zeroext %i.h) #7
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = tail call ptr (...) @py_retval() #7
  tail call void @py_newnotimplemented(ptr noundef %i.i) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.e ], [ true, %bb.d ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bool__and__(i32 noundef %0, ptr noundef %1) #2 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %0) #7
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @py_tobool(ptr noundef %1) #7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load i16, ptr %i.c, align 8, !tbaa !14
  %i.e = icmp eq i16 %i.d, 5
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call zeroext i1 @py_tobool(ptr noundef nonnull %i.c) #7
  %i.g = tail call ptr (...) @py_retval() #7
  %i.h = select i1 %i.b, i1 %i.f, i1 false
  tail call void @py_newbool(ptr noundef %i.g, i1 noundef zeroext %i.h) #7
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = tail call ptr (...) @py_retval() #7
  tail call void @py_newnotimplemented(ptr noundef %i.i) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bb.e ], [ true, %bb.d ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bool__or__(i32 noundef %0, ptr noundef %1) #2 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %0) #7
  br label %bb.f

end_hunk_0
begin_hunk_1_@bool__add__:bb.a
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bool__sub__(i32 noundef %0, ptr noundef %1) #2 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %0) #7
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @py_tobool(ptr noundef %1) #7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.d = load i16, ptr %i.c, align 8, !tbaa !14
  switch i16 %i.d, label %bool_try_cast_i64.exit [
    i16 3, label %bb.d
    i16 5, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i64 @py_toint(ptr noundef nonnull %i.c) #7
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = tail call zeroext i1 @py_tobool(ptr noundef nonnull %i.c) #7
  %i.g = zext i1 %i.f to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.06.ph = phi i64 [ %i.e, %bb.d ], [ %i.g, %bb.e ]
  %i.h = zext i1 %i.b to i64
  %i.i = tail call ptr (...) @py_retval() #7
  %i.j = sub nsw i64 %i.h, %.06.ph
  tail call void @py_newint(ptr noundef %i.i, i64 noundef %i.j) #7
  br label %bb.g

bool_try_cast_i64.exit:                           ; preds = %bb.c
  %i.k = tail call ptr (...) @py_retval() #7
  tail call void @py_newnotimplemented(ptr noundef %i.k) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bool_try_cast_i64.exit, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bool_try_cast_i64.exit ], [ true, %bb.f ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bool__mul__(i32 noundef %0, ptr noundef %1) #2 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %0) #7
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @py_tobool(ptr noundef %1) #7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.d = load i16, ptr %i.c, align 8, !tbaa !14
  switch i16 %i.d, label %bool_try_cast_i64.exit [
    i16 3, label %bb.d
    i16 5, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i64 @py_toint(ptr noundef nonnull %i.c) #7
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = tail call zeroext i1 @py_tobool(ptr noundef nonnull %i.c) #7
  %i.g = zext i1 %i.f to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.06.ph = phi i64 [ %i.e, %bb.d ], [ %i.g, %bb.e ]
  %i.h = tail call ptr (...) @py_retval() #7
  %i.i = select i1 %i.b, i64 %.06.ph, i64 0
  tail call void @py_newint(ptr noundef %i.h, i64 noundef %i.i) #7
  br label %bb.g

bool_try_cast_i64.exit:                           ; preds = %bb.c
  %i.j = tail call ptr (...) @py_retval() #7
  tail call void @py_newnotimplemented(ptr noundef %i.j) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bool_try_cast_i64.exit, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bool_try_cast_i64.exit ], [ true, %bb.f ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @bool__rsub__(i32 noundef %0, ptr noundef %1) #2 {
bb.a:
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (i16, ptr, ...) @py_exception(i16 noundef signext 45, ptr noundef nonnull @.str.1, i32 noundef 2, i32 noundef %0) #7
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @py_tobool(ptr noundef %1) #7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.d = load i16, ptr %i.c, align 8, !tbaa !14
  switch i16 %i.d, label %bool_try_cast_i64.exit [
    i16 3, label %bb.d
    i16 5, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i64 @py_toint(ptr noundef nonnull %i.c) #7
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = tail call zeroext i1 @py_tobool(ptr noundef nonnull %i.c) #7
  %i.g = zext i1 %i.f to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.06.ph = phi i64 [ %i.e, %bb.d ], [ %i.g, %bb.e ]
  %.neg = sext i1 %i.b to i64
  %i.h = tail call ptr (...) @py_retval() #7
  %i.i = add i64 %.06.ph, %.neg
  tail call void @py_newint(ptr noundef %i.h, i64 noundef %i.i) #7
  br label %bb.g

bool_try_cast_i64.exit:                           ; preds = %bb.c
  %i.j = tail call ptr (...) @py_retval() #7
  tail call void @py_newnotimplemented(ptr noundef %i.j) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bool_try_cast_i64.exit, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ true, %bool_try_cast_i64.exit ], [ true, %bb.f ]
  ret i1 %.0
}

declare zeroext i1 @py_exception(i16 noundef signext, ptr noundef, ...) local_unnamed_addr #3

declare zeroext i1 @py_istype(ptr noundef, i16 noundef signext) local_unnamed_addr #3

declare i64 @py_toint(ptr noundef) local_unnamed_addr #3

declare void @py_newint(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @py_retval(...) local_unnamed_addr #3

declare double @py_tofloat(ptr noundef) local_unnamed_addr #3

declare void @py_newfloat(ptr noundef, double noundef) local_unnamed_addr #3

declare void @py_newnotimplemented(ptr noundef) local_unnamed_addr #3

declare void @py_newbool(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare void @py_newstrv(ptr noundef, ptr, i32) local_unnamed_addr #3

declare void @c11_sbuf__ctor(ptr noundef) local_unnamed_addr #3

declare void @c11_sbuf__write_f64(ptr noundef, double noundef, i32 noundef) local_unnamed_addr #3

declare void @c11_sbuf__py_submit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare double @dmath_fabs(double noundef) local_unnamed_addr #3

declare zeroext i1 @py_tobool(ptr noundef) local_unnamed_addr #3

declare zeroext i1 @py_checktype(ptr noundef, i16 noundef signext) local_unnamed_addr #3

declare { ptr, i32 } @py_tosv(ptr noundef) local_unnamed_addr #3

declare i32 @c11__parse_uint(ptr, i32, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i1 @c11__sveq2(ptr, i32, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #5

declare double @dmath_pow(double noundef, double noundef) local_unnamed_addr #3

declare zeroext i1 @py_castfloat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @py_newtuple(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @py_bool(ptr noundef) local_unnamed_addr #3

declare void @py_newstr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"double", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"short", !4, i64 0}
!12 = !{!"_Bool", !4, i64 0}
!13 = !{!"py_TValue", !11, i64 0, !12, i64 2, !5, i64 4, !4, i64 8}
!14 = !{!13, !11, i64 0}
!15 = !{!4, !4, i64 0}
!16 = !{!11, !11, i64 0}
!17 = !{!12, !12, i64 0}
!18 = !{!5, !5, i64 0}
!19 = !{i64 0, i64 2, !16, i64 2, i64 1, !17, i64 4, i64 4, !18, i64 8, i64 16, !15}
!20 = !{!"p1 _ZTS13py_OpaqueName", !10, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"p1 omnipotent char", !10, i64 0}
!23 = !{!22, !22, i64 0}
end_hunk_1
