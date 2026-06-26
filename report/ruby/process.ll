inline.NumInlined: 701
inline.NumDeleted: 154
begin_hunk_0_@proc_getegid:bb.a
  %i.d = or disjoint i64 %i.c, 1
  ret i64 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @proc_setegid(i64 %0, i64 noundef returned %1) #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %.b.i = load i1, ptr @under_gid_switch, align 4
  br i1 %.b.i, label %bb.b, label %check_gid_switch.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !47
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.230) #28
  unreachable

check_gid_switch.exit:                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !47
  %i.c = call fastcc i32 @obj2gid(i64 noundef %1, ptr noundef %i.a)
  %i.d = load i64, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %obj2gid0.exit, label %bb.c

bb.c:                                             ; preds = %check_gid_switch.exit
  %i.e = tail call i64 @rb_str_resize(i64 noundef %i.d, i64 noundef 0) #26 ; 0 uses
  br label %obj2gid0.exit

obj2gid0.exit:                                    ; preds = %check_gid_switch.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.f = tail call i32 @setresgid(i32 noundef -1, i32 noundef %i.c, i32 noundef -1) #26
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %obj2gid0.exit
  %i.h = tail call ptr @rb_errno_ptr() #26
  %i.i = load i32, ptr %i.h, align 4, !tbaa !7
  tail call void @rb_syserr_fail(i32 noundef %i.i, ptr noundef null) #28
  unreachable

bb.e:                                             ; preds = %obj2gid0.exit
  ret i64 %1
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @proc_initgroups(i64 noundef %0, i64 noundef %1, i64 noundef %2) #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  store i64 %1, ptr %i.b, align 8, !tbaa !47
  %i.c = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !47
  %i.d = call fastcc i32 @obj2gid(i64 noundef %2, ptr noundef %i.a)
  %i.e = load i64, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %obj2gid0.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call i64 @rb_str_resize(i64 noundef %i.e, i64 noundef 0) #26 ; 0 uses
  br label %obj2gid0.exit

obj2gid0.exit:                                    ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.g = call i32 @initgroups(ptr noundef %i.c, i32 noundef %i.d) #26
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %obj2gid0.exit
  %i.h = call ptr @rb_errno_ptr() #26
  %i.i = load i32, ptr %i.h, align 4, !tbaa !7
  call void @rb_syserr_fail(i32 noundef %i.i, ptr noundef null) #28
  unreachable

bb.d:                                             ; preds = %obj2gid0.exit
  %i.j = call i64 @proc_getgroups(i64 poison)
  ret i64 %i.j
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @proc_getgroups(i64 %0) #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = tail call i32 @getgroups(i32 noundef 0, ptr noundef null) #26 ; 5 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @rb_errno_ptr() #26
  %i.e = load i32, ptr %i.d, align 4, !tbaa !7
  tail call void @rb_syserr_fail(i32 noundef %i.e, ptr noundef null) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = sext i32 %i.b to i64                     ; 3 uses
  %i.g = icmp ult i32 %i.b, 256
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %i.a, align 8, !tbaa !47
  %i.h = shl nuw nsw i64 %i.f, 2
  %i.i = alloca i8, i64 %i.h, align 16
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.j = icmp slt i32 %i.b, 0
  br i1 %i.j, label %bb.f, label %rb_alloc_tmp_buffer2.exit, !prof !106

bb.f:                                             ; preds = %bb.e
  tail call void @ruby_malloc_size_overflow(i64 noundef range(i64 -2147483648, 2147483648) %i.f, i64 noundef range(i64 -2147483648, 2147483648) 4) #28
  unreachable

rb_alloc_tmp_buffer2.exit:                        ; preds = %bb.e
  %i.k = shl nuw nsw i64 %i.f, 2                  ; 2 uses
  %i.l = add nuw nsw i64 %i.k, 4
  %i.m = lshr i64 %i.l, 3
  %i.n = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.a, i64 noundef %i.k, i64 noundef %i.m) #29
  br label %bb.g

bb.g:                                             ; preds = %rb_alloc_tmp_buffer2.exit, %bb.d
  %i.o = phi ptr [ %i.i, %bb.d ], [ %i.n, %rb_alloc_tmp_buffer2.exit ] ; 2 uses
  %i.p = call i32 @getgroups(i32 noundef %i.b, ptr noundef nonnull %i.o) #26 ; 3 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = call ptr @rb_errno_ptr() #26
  %i.s = load i32, ptr %i.r, align 4, !tbaa !7
  call void @rb_syserr_fail(i32 noundef %i.s, ptr noundef null) #28
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.t = call i64 @rb_ary_new() #26               ; 2 uses
  %i.u = icmp sgt i32 %i.p, 0
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.i
  %wide.trip.count = zext nneg i32 %i.p to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.v = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4, !tbaa !7
  %i.x = zext i32 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 1
  %i.z = or disjoint i64 %i.y, 1
  %i.aa = call i64 @rb_ary_push(i64 noundef %i.t, i64 noundef %i.z) #26 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !203

._crit_edge:                                      ; preds = %.lr.ph, %bb.i
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i64 %i.t
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @proc_setgroups(i64 %0, i64 noundef %1) #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 0, ptr %i.b, align 8, !tbaa !47
  %i.c = icmp eq i64 %1, 0
  %i.d = and i64 %1, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !70

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.g = inttoptr i64 %1 to ptr                   ; 5 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !71   ; 3 uses
  %i.i = and i64 %i.h, 31
  %i.j = icmp eq i64 %i.i, 7
  br i1 %i.j, label %Check_Type.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, !prof !204

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  tail call void @rb_unexpected_type(i64 noundef %1, i32 noundef 7) #33
  unreachable

Check_Type.exit:                                  ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.k = and i64 %i.h, 8192
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %Check_Type.exit
  %i.l = lshr i64 %i.h, 15
  %i.m = and i64 %i.l, 127
  br label %rb_array_len.exit.i

bb.c:                                             ; preds = %Check_Type.exit
  %i.n = getelementptr i8, ptr %i.g, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !68
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.c, %bb.b
  %.0.i.i = phi i64 [ %i.m, %bb.b ], [ %i.o, %bb.c ] ; 10 uses
  %i.p = add i64 %.0.i.i, 2147483648
  %.not.i1.i = icmp ult i64 %i.p, 4294967296
  br i1 %.not.i1.i, label %RARRAY_LENINT.exit, label %bb.d

bb.d:                                             ; preds = %rb_array_len.exit.i
  tail call void @rb_out_of_int(i64 noundef %.0.i.i) #33
  unreachable

RARRAY_LENINT.exit:                               ; preds = %rb_array_len.exit.i
  %i.q = trunc nsw i64 %.0.i.i to i32             ; 2 uses
  %i.r = load i32, ptr @_maxgroups, align 4, !tbaa !7 ; 2 uses
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %maxgroups.exit

bb.e:                                             ; preds = %RARRAY_LENINT.exit
  %i.t = tail call i64 @sysconf(i32 noundef 3) #26
  %i.u = trunc i64 %i.t to i32                    ; 2 uses
  %i.v = icmp slt i32 %i.u, 0
  %spec.store.select.i = select i1 %i.v, i32 65536, i32 %i.u ; 2 uses
  store i32 %spec.store.select.i, ptr @_maxgroups, align 4
  br label %maxgroups.exit

maxgroups.exit:                                   ; preds = %RARRAY_LENINT.exit, %bb.e
  %i.w = phi i32 [ %spec.store.select.i, %bb.e ], [ %i.r, %RARRAY_LENINT.exit ]
  %i.x = icmp slt i32 %i.w, %i.q
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %maxgroups.exit
  %i.y = load i64, ptr @rb_eArgError, align 8, !tbaa !47
  %i.z = tail call fastcc i32 @maxgroups()
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.y, ptr noundef nonnull @.str.248, i32 noundef %i.z) #28
  unreachable

bb.g:                                             ; preds = %maxgroups.exit
  %i.aa = icmp ult i64 %.0.i.i, 256
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %i.a, align 8, !tbaa !47
  %2 = shl nuw nsw i64 %.0.i.i, 2
  %i.ab = alloca i8, i64 %2, align 16
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ac = icmp ugt i64 %.0.i.i, 4611686018427387903
  br i1 %i.ac, label %bb.j, label %rb_alloc_tmp_buffer2.exit, !prof !106

bb.j:                                             ; preds = %bb.i
  tail call void @ruby_malloc_size_overflow(i64 noundef range(i64 -2147483648, 2147483648) %.0.i.i, i64 noundef range(i64 -2147483648, 2147483648) 4) #28
  unreachable

rb_alloc_tmp_buffer2.exit:                        ; preds = %bb.i
  %3 = shl nuw nsw i64 %.0.i.i, 2                 ; 2 uses
  %i.ad = add nuw nsw i64 %3, 4
  %i.ae = lshr i64 %i.ad, 3
  %i.af = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.a, i64 noundef %3, i64 noundef %i.ae) #29
  br label %bb.k

bb.k:                                             ; preds = %rb_alloc_tmp_buffer2.exit, %bb.h
  %i.ag = phi ptr [ %i.ab, %bb.h ], [ %i.af, %rb_alloc_tmp_buffer2.exit ] ; 2 uses
  %.not28 = icmp eq i64 %.0.i.i, 0
  br i1 %.not28, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.ah = getelementptr i8, ptr %i.g, i64 16
  %i.ai = getelementptr i8, ptr %i.g, i64 32
  %smax = call i32 @llvm.smax.i32(i32 %i.q, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %RARRAY_AREF.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %RARRAY_AREF.exit ] ; 3 uses
  %i.aj = load i64, ptr %i.g, align 8, !tbaa !71
  %i.ak = and i64 %i.aj, 8192
  %.not.i.i20 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i20, label %bb.m, label %RARRAY_AREF.exit

bb.m:                                             ; preds = %bb.l
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !68
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %bb.l, %bb.m
  %.0.i.i21 = phi ptr [ %i.al, %bb.m ], [ %i.ah, %bb.l ]
  %i.am = getelementptr [8 x i8], ptr %.0.i.i21, i64 %indvars.iv
  %i.an = load i64, ptr %i.am, align 8, !tbaa !47
  %i.ao = call fastcc i32 @obj2gid(i64 noundef %i.an, ptr noundef %i.b)
  %i.ap = getelementptr [4 x i8], ptr %i.ag, i64 %indvars.iv
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.l, !llvm.loop !205

._crit_edge:                                      ; preds = %RARRAY_AREF.exit
  %.pre = load i64, ptr %i.b, align 8, !tbaa !47  ; 2 uses
  %.not = icmp eq i64 %.pre, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.aq = call i64 @rb_str_resize(i64 noundef %.pre, i64 noundef 0) #26 ; 0 uses
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.k, %._crit_edge, %bb.n
  %i.ar = call i32 @setgroups(i64 noundef %.0.i.i, ptr noundef nonnull %i.ag) #26
  %i.as = icmp eq i32 %i.ar, -1
  br i1 %i.as, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge.thread
  %i.at = call ptr @rb_errno_ptr() #26
  %i.au = load i32, ptr %i.at, align 4, !tbaa !7
  call void @rb_syserr_fail(i32 noundef %i.au, ptr noundef null) #28
  unreachable

bb.p:                                             ; preds = %._crit_edge.thread
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.a) #26
  %i.av = call i64 @proc_getgroups(i64 poison)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i64 %i.av
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 0) i64 @proc_getmaxgroups(i64 %0) #1 {
bb.a:
  %i.a = load i32, ptr @_maxgroups, align 4, !tbaa !7 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %maxgroups.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @sysconf(i32 noundef 3) #26
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  %spec.store.select.i = select i1 %i.e, i32 65536, i32 %i.d ; 2 uses
  store i32 %spec.store.select.i, ptr @_maxgroups, align 4
  br label %maxgroups.exit

maxgroups.exit:                                   ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %spec.store.select.i, %bb.b ], [ %i.a, %bb.a ]
  %i.g = sext i32 %i.f to i64
  %i.h = shl nsw i64 %i.g, 1
  %i.i = or disjoint i64 %i.h, 1
  ret i64 %i.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 8589934592) i64 @proc_setmaxgroups(i64 %0, i64 noundef %1) #1 {
bb.a:
  %i.a = tail call i64 @rb_fix2int(i64 noundef %1) #26
  %i.b = trunc i64 %i.a to i32                    ; 3 uses
  %i.c = tail call i64 @sysconf(i32 noundef 3) #26
  %i.d = icmp slt i32 %i.b, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr @rb_eArgError, align 8, !tbaa !47
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.e, ptr noundef nonnull @.str.249, i32 noundef %i.b) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = trunc i64 %i.c to i32                    ; 2 uses
  %i.g = tail call i32 @llvm.umin.i32(i32 %i.b, i32 65536) ; 2 uses
  %i.h = icmp sgt i32 %i.f, 0
  %i.i = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %i.f)
  %.0 = select i1 %i.h, i32 %i.i, i32 %i.g        ; 2 uses
  store i32 %.0, ptr @_maxgroups, align 4, !tbaa !7
  %i.j = zext nneg i32 %.0 to i64
  %i.k = shl nuw nsw i64 %i.j, 1
  %i.l = or disjoint i64 %i.k, 1
  ret i64 %i.l
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 4294967296) i64 @proc_daemon(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #1 {
bb.a:
  %or.cond = icmp ugt i32 %0, 2
  br i1 %or.cond, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 2) #28
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  switch i32 %0, label %bb.g [
    i32 2, label %bb.c
    i32 1, label %bb.e
  ]

bb.c:                                             ; preds = %rb_check_arity.exit
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.c = icmp eq i64 %i.b, 4
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @rb_bool_expected(i64 noundef %i.b, ptr noundef nonnull @.str.250, i32 noundef 1) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %rb_check_arity.exit
  %.09 = phi i32 [ 0, %rb_check_arity.exit ], [ %i.d, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !47     ; 2 uses
  %i.f = icmp eq i64 %i.e, 4
  br i1 %i.f, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = tail call i32 @rb_bool_expected(i64 noundef %i.e, ptr noundef nonnull @.str.251, i32 noundef 1) #26
  %i.h = icmp eq i32 %i.g, 0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %rb_check_arity.exit
  %.1 = phi i32 [ 0, %rb_check_arity.exit ], [ %.09, %bb.e ], [ %.09, %bb.f ]
  %.0 = phi i1 [ true, %rb_check_arity.exit ], [ true, %bb.e ], [ %i.h, %bb.f ]
  %i.i = load i64, ptr @rb_stdout, align 8, !tbaa !47
  %i.j = tail call i64 @rb_io_flush(i64 noundef %i.i) #26 ; 0 uses
  %i.k = load i64, ptr @rb_stderr, align 8, !tbaa !47
  %i.l = tail call i64 @rb_io_flush(i64 noundef %i.k) #26 ; 0 uses
  %i.m = tail call i32 @rb_fork_ruby(ptr noundef null)
  switch i32 %i.m, label %bb.h [
    i32 -1, label %rb_daemon.exit.thread
    i32 0, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  tail call void @_exit(i32 noundef 0) #28
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.n = tail call i32 @setsid() #26              ; 0 uses
  br i1 %.0, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.o = tail call i32 @chdir(ptr noundef nonnull @.str.252) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.010.i = phi i32 [ 0, %bb.i ], [ %i.o, %bb.j ] ; 2 uses
  %.not12.i = icmp eq i32 %.1, 0
  br i1 %.not12.i, label %bb.l, label %rb_daemon.exit

bb.l:                                             ; preds = %bb.k
  %i.p = tail call i32 @rb_cloexec_open(ptr noundef nonnull @ruby_null_device, i32 noundef 2, i32 noundef 0) #26 ; 7 uses
  %.not13.i = icmp eq i32 %i.p, -1
  br i1 %.not13.i, label %rb_daemon.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @rb_update_max_fd(i32 noundef %i.p) #26
  %i.q = tail call i32 @dup2(i32 noundef %i.p, i32 noundef 0) #26 ; 0 uses
  %i.r = tail call i32 @dup2(i32 noundef %i.p, i32 noundef 1) #26 ; 0 uses
  %i.s = tail call i32 @dup2(i32 noundef %i.p, i32 noundef 2) #26 ; 0 uses
  %i.t = icmp sgt i32 %i.p, 2
  br i1 %i.t, label %bb.n, label %rb_daemon.exit

bb.n:                                             ; preds = %bb.m
  %i.u = tail call i32 @close(i32 noundef %i.p) #26 ; 0 uses
  br label %rb_daemon.exit

rb_daemon.exit:                                   ; preds = %bb.k, %bb.l, %bb.m, %bb.n
  %i.v = icmp slt i32 %.010.i, 0
  br i1 %i.v, label %rb_daemon.exit.thread, label %bb.o

rb_daemon.exit.thread:                            ; preds = %bb.g, %rb_daemon.exit
  %i.w = tail call ptr @rb_errno_ptr() #26
  %i.x = load i32, ptr %i.w, align 4, !tbaa !7
  tail call void @rb_syserr_fail(i32 noundef %i.x, ptr noundef nonnull @.str.107) #28
end_hunk_0
