inline.NumInlined: 295
inline.NumDeleted: 97
begin_hunk_0_@thread_profile_frames:bb.a
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !18  ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !20 ; 4 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !42 ; 4 uses
  %i.af = icmp eq ptr %.05771, %i.b
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr i8, ptr %i.ac, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !173
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr [8 x i8], ptr %i.ae, i64 %i.ai
  %i.ak = icmp ult ptr %i.y, %i.ae
  %i.al = icmp ugt ptr %i.y, %i.aj
  %or.cond = select i1 %i.ak, i1 true, i1 %i.al
  br i1 %or.cond, label %.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.am = icmp eq ptr %i.y, null
  br i1 %i.am, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.an = load i32, ptr %i.ac, align 8, !tbaa !23
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr i8, ptr %i.ac, i64 88
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !41
  br label %.sink.split

bb.p:                                             ; preds = %bb.m
  %i.ar = ptrtoint ptr %i.y to i64
  %i.as = ptrtoint ptr %i.ae to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 3                 ; 2 uses
  %i.av = icmp sgt i64 %i.au, -1
  tail call void @llvm.assume(i1 %i.av)
  %.not.i.i = icmp eq ptr %i.y, %i.ae
  %i.aw = add nsw i64 %i.au, -1
  %spec.select.i.i = select i1 %.not.i.i, i64 0, i64 %i.aw, !prof !43
  %i.ax = tail call i32 @rb_iseq_line_no(ptr noundef nonnull %i.aa, i64 noundef %spec.select.i.i) #7
  br label %.sink.split

.sink.split:                                      ; preds = %bb.p, %bb.o, %bb.n, %bb.l
  %.sink = phi i32 [ 0, %bb.l ], [ 0, %bb.n ], [ %i.ax, %bb.p ], [ %i.aq, %bb.o ]
  %i.ay = sext i32 %.05572 to i64
  %i.az = getelementptr [4 x i8], ptr %4, i64 %i.ay
  store i32 %.sink, ptr %i.az, align 4, !tbaa !7
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.j
  %i.ba = add nsw i32 %.05572, 1
  br label %bb.y

bb.r:                                             ; preds = %bb.d, %bb.c
  %i.bb = tail call ptr @rb_vm_frame_method_entry_unchecked(ptr noundef nonnull %.05771) #7 ; 3 uses
  %.not66 = icmp eq ptr %i.bb, null
  br i1 %.not66, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !128
  %i.be = load i8, ptr %i.bd, align 8
  %i.bf = and i8 %i.be, 15
  %i.bg = icmp eq i8 %i.bf, 1
  br i1 %i.bg, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.bh = icmp sgt i32 %.05474, 0
  br i1 %i.bh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bi = add nsw i32 %.05474, -1
  br label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.bj = ptrtoint ptr %i.bb to i64
  %i.bk = sext i32 %.05572 to i64                 ; 2 uses
  %i.bl = getelementptr [8 x i8], ptr %3, i64 %i.bk
  store i64 %i.bj, ptr %i.bl, align 8, !tbaa !17
  br i1 %.not69, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bm = getelementptr [4 x i8], ptr %4, i64 %i.bk
  store i32 0, ptr %i.bm, align 4, !tbaa !7
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bn = add nsw i32 %.05572, 1
  br label %bb.y

bb.y:                                             ; preds = %bb.q, %bb.x, %bb.s, %bb.r, %bb.u, %bb.f
  %.156 = phi i32 [ %.05572, %bb.f ], [ %i.ba, %bb.q ], [ %.05572, %bb.u ], [ %i.bn, %bb.x ], [ %.05572, %bb.s ], [ %.05572, %bb.r ] ; 3 uses
  %.1 = phi i32 [ %i.m, %bb.f ], [ %.05474, %bb.q ], [ %i.bi, %bb.u ], [ %.05474, %bb.x ], [ %.05474, %bb.s ], [ %.05474, %bb.r ]
  %i.bo = getelementptr i8, ptr %.05771, i64 56   ; 2 uses
  %i.bp = icmp slt i32 %.156, %2
  %i.bq = icmp ne ptr %i.bo, %i.e
  %i.br = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %i.br, label %bb.c, label %.loopexit, !llvm.loop !174

.loopexit:                                        ; preds = %bb.y, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %.156, %bb.y ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rb_profile_thread_frames(i64 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly captures(none) %3, ptr noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @ruby_threadptr_data_type) #7
  %i.b = getelementptr i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !136
  %i.d = tail call fastcc i32 @thread_profile_frames(ptr noundef %i.c, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4)
  ret i32 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_profile_frame_path(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 4
  br i1 %i.a, label %frame2iseq.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.b
  %i.f = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !44   ; 2 uses
  %i.h = and i64 %i.g, 31
  %i.i = icmp eq i64 %i.h, 26
  br i1 %i.i, label %bb.c, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.j = trunc i64 %i.g to i32
  %i.k = lshr i32 %i.j, 12
  %i.l = and i32 %i.k, 15
  switch i32 %i.l, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i [
    i32 7, label %frame2iseq.exit.thread4
    i32 6, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.f, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !128  ; 2 uses
  %i.o = load i8, ptr %i.n, align 8
  %i.p = and i8 %i.o, 15
  %cond.i = icmp eq i8 %i.p, 0
  br i1 %cond.i, label %frame2iseq.exit, label %frame2iseq.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.b
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.43) #20
  unreachable

frame2iseq.exit:                                  ; preds = %bb.d
  %i.q = getelementptr i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !46   ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %frame2iseq.exit.thread, label %frame2iseq.exit.thread4

frame2iseq.exit.thread4:                          ; preds = %bb.c, %frame2iseq.exit
  %.1.i7 = phi ptr [ %i.r, %frame2iseq.exit ], [ %i.f, %bb.c ]
  %i.s = tail call i64 @rb_iseq_path(ptr noundef nonnull %.1.i7) #7
  br label %frame2iseq.exit.thread

frame2iseq.exit.thread:                           ; preds = %bb.d, %bb.a, %frame2iseq.exit, %frame2iseq.exit.thread4
  %i.t = phi i64 [ %i.s, %frame2iseq.exit.thread4 ], [ 4, %frame2iseq.exit ], [ 4, %bb.a ], [ 4, %bb.d ]
  ret i64 %i.t
}

declare i64 @rb_iseq_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_profile_frame_absolute_path(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 4
  br i1 %i.a, label %frame2iseq.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.b
  %i.f = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !44
  %i.h = and i64 %i.g, 61471
  %or.cond.i = icmp eq i64 %i.h, 24602
  br i1 %or.cond.i, label %bb.c, label %rbimpl_RB_TYPE_P_fastpath.exit.i7

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.i = getelementptr i8, ptr %i.f, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !128
  %i.k = load i8, ptr %i.j, align 8
  %.fr17 = freeze i8 %i.k
  %i.l = and i8 %.fr17, 15
  %cond1.i = icmp eq i8 %i.l, 1
  br i1 %cond1.i, label %cframe.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i7

cframe.exit:                                      ; preds = %bb.c
  %i.m = load i64, ptr @rb_profile_frame_absolute_path.cfunc_str, align 8, !tbaa !17 ; 2 uses
  %.not6 = icmp eq i64 %i.m, 0
  br i1 %.not6, label %bb.d, label %frame2iseq.exit.thread

bb.d:                                             ; preds = %cframe.exit
  %i.n = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.17, i64 noundef 7) #7 ; 2 uses
  store i64 %i.n, ptr @rb_profile_frame_absolute_path.cfunc_str, align 8, !tbaa !17
  tail call void @rb_vm_register_global_object(i64 noundef %i.n) #7
  %.pre = load i64, ptr @rb_profile_frame_absolute_path.cfunc_str, align 8, !tbaa !17
  br label %frame2iseq.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.i7:                ; preds = %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.o = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !44   ; 2 uses
  %i.q = and i64 %i.p, 31
  %i.r = icmp eq i64 %i.q, 26
  br i1 %i.r, label %bb.e, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i7
  %i.s = trunc i64 %i.p to i32
  %i.t = lshr i32 %i.s, 12
  %i.u = and i32 %i.t, 15
  switch i32 %i.u, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i [
    i32 7, label %frame2iseq.exit.thread13
    i32 6, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %i.o, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !128  ; 2 uses
  %i.x = load i8, ptr %i.w, align 8
  %i.y = and i8 %i.x, 15
  %cond.i = icmp eq i8 %i.y, 0
  br i1 %cond.i, label %frame2iseq.exit, label %frame2iseq.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.b, %bb.e, %rbimpl_RB_TYPE_P_fastpath.exit.i7
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.43) #20
  unreachable

frame2iseq.exit:                                  ; preds = %bb.f
  %i.z = getelementptr i8, ptr %i.w, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !46  ; 2 uses
  %.not5 = icmp eq ptr %i.aa, null
  br i1 %.not5, label %frame2iseq.exit.thread, label %frame2iseq.exit.thread13

frame2iseq.exit.thread13:                         ; preds = %bb.e, %frame2iseq.exit
  %.1.i816 = phi ptr [ %i.aa, %frame2iseq.exit ], [ %i.o, %bb.e ]
  %i.ab = tail call i64 @rb_iseq_realpath(ptr noundef nonnull %.1.i816) #7
  br label %frame2iseq.exit.thread

frame2iseq.exit.thread:                           ; preds = %cframe.exit, %bb.d, %bb.a, %bb.f, %frame2iseq.exit.thread13, %frame2iseq.exit
  %.0 = phi i64 [ 4, %bb.a ], [ %i.ab, %frame2iseq.exit.thread13 ], [ 4, %frame2iseq.exit ], [ 4, %bb.f ], [ %.pre, %bb.d ], [ %i.m, %cframe.exit ]
  ret i64 %.0
}

declare i64 @rb_str_new_static(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @rb_vm_register_global_object(i64 noundef) local_unnamed_addr #2

declare i64 @rb_iseq_realpath(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_profile_frame_label(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 4
  br i1 %i.a, label %frame2iseq.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.b
  %i.f = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !44   ; 2 uses
  %i.h = and i64 %i.g, 31
  %i.i = icmp eq i64 %i.h, 26
  br i1 %i.i, label %bb.c, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.j = trunc i64 %i.g to i32
  %i.k = lshr i32 %i.j, 12
  %i.l = and i32 %i.k, 15
  switch i32 %i.l, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i [
    i32 7, label %frame2iseq.exit.thread4
    i32 6, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.f, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !128  ; 2 uses
  %i.o = load i8, ptr %i.n, align 8
  %i.p = and i8 %i.o, 15
  %cond.i = icmp eq i8 %i.p, 0
  br i1 %cond.i, label %frame2iseq.exit, label %frame2iseq.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.b
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.43) #20
  unreachable

frame2iseq.exit:                                  ; preds = %bb.d
  %i.q = getelementptr i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !46   ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %frame2iseq.exit.thread, label %frame2iseq.exit.thread4

frame2iseq.exit.thread4:                          ; preds = %bb.c, %frame2iseq.exit
  %.1.i7 = phi ptr [ %i.r, %frame2iseq.exit ], [ %i.f, %bb.c ]
  %i.s = tail call i64 @rb_iseq_label(ptr noundef nonnull %.1.i7) #7
  br label %frame2iseq.exit.thread

frame2iseq.exit.thread:                           ; preds = %bb.d, %bb.a, %frame2iseq.exit, %frame2iseq.exit.thread4
  %i.t = phi i64 [ %i.s, %frame2iseq.exit.thread4 ], [ 4, %frame2iseq.exit ], [ 4, %bb.a ], [ 4, %bb.d ]
  ret i64 %i.t
}

declare i64 @rb_iseq_label(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_profile_frame_base_label(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 4
  br i1 %i.a, label %frame2iseq.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.b
  %i.f = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !44   ; 2 uses
  %i.h = and i64 %i.g, 31
  %i.i = icmp eq i64 %i.h, 26
  br i1 %i.i, label %bb.c, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.j = trunc i64 %i.g to i32
  %i.k = lshr i32 %i.j, 12
  %i.l = and i32 %i.k, 15
  switch i32 %i.l, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i [
    i32 7, label %frame2iseq.exit.thread4
    i32 6, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.f, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !128  ; 2 uses
  %i.o = load i8, ptr %i.n, align 8
  %i.p = and i8 %i.o, 15
  %cond.i = icmp eq i8 %i.p, 0
  br i1 %cond.i, label %frame2iseq.exit, label %frame2iseq.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.b
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.43) #20
  unreachable

frame2iseq.exit:                                  ; preds = %bb.d
  %i.q = getelementptr i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !46   ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %frame2iseq.exit.thread, label %frame2iseq.exit.thread4

frame2iseq.exit.thread4:                          ; preds = %bb.c, %frame2iseq.exit
  %.1.i7 = phi ptr [ %i.r, %frame2iseq.exit ], [ %i.f, %bb.c ]
  %i.s = tail call i64 @rb_iseq_base_label(ptr noundef nonnull %.1.i7) #7
  br label %frame2iseq.exit.thread

frame2iseq.exit.thread:                           ; preds = %bb.d, %bb.a, %frame2iseq.exit, %frame2iseq.exit.thread4
  %i.t = phi i64 [ %i.s, %frame2iseq.exit.thread4 ], [ 4, %frame2iseq.exit ], [ 4, %bb.a ], [ 4, %bb.d ]
  ret i64 %i.t
}

declare i64 @rb_iseq_base_label(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_profile_frame_first_lineno(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 4
  br i1 %i.a, label %frame2iseq.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.b
  %i.f = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !44   ; 2 uses
  %i.h = and i64 %i.g, 31
end_hunk_0
begin_hunk_1_@rb_profile_frame_first_lineno:bb.a
  %i.l = and i32 %i.k, 15
  switch i32 %i.l, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i [
    i32 7, label %frame2iseq.exit.thread4
    i32 6, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.f, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !128  ; 2 uses
  %i.o = load i8, ptr %i.n, align 8
  %i.p = and i8 %i.o, 15
  %cond.i = icmp eq i8 %i.p, 0
  br i1 %cond.i, label %frame2iseq.exit, label %frame2iseq.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.b
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.43) #20
  unreachable

frame2iseq.exit:                                  ; preds = %bb.d
  %i.q = getelementptr i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !46   ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %frame2iseq.exit.thread, label %frame2iseq.exit.thread4

frame2iseq.exit.thread4:                          ; preds = %bb.c, %frame2iseq.exit
  %.1.i7 = phi ptr [ %i.r, %frame2iseq.exit ], [ %i.f, %bb.c ]
  %i.s = tail call i64 @rb_iseq_first_lineno(ptr noundef nonnull %.1.i7) #7
  br label %frame2iseq.exit.thread

frame2iseq.exit.thread:                           ; preds = %bb.d, %bb.a, %frame2iseq.exit, %frame2iseq.exit.thread4
  %i.t = phi i64 [ %i.s, %frame2iseq.exit.thread4 ], [ 4, %frame2iseq.exit ], [ 4, %bb.a ], [ 4, %bb.d ]
  ret i64 %i.t
}

declare i64 @rb_iseq_first_lineno(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_profile_frame_classpath(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 4
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.thread, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.b
  %i.f = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !44
  %i.h = and i64 %i.g, 61471
  %or.cond.i = icmp eq i64 %i.h, 24602
  br i1 %or.cond.i, label %frame2klass.exit, label %.thread

frame2klass.exit:                                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.i = getelementptr i8, ptr %i.f, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !175  ; 5 uses
  switch i64 %i.j, label %bb.c [
    i64 0, label %.thread
    i64 4, label %.thread
  ]

bb.c:                                             ; preds = %frame2klass.exit
  %i.k = and i64 %i.j, 7
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %rbimpl_RB_TYPE_P_fastpath.exit18, label %RCLASS_SINGLETON_P.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit18:                 ; preds = %bb.c
  %i.l = inttoptr i64 %i.j to ptr                 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !44   ; 2 uses
  %i.n = and i64 %i.m, 31
  %i.o = icmp eq i64 %i.n, 28
  br i1 %i.o, label %bb.d, label %rbimpl_RB_TYPE_P_fastpath.exit.i19

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit18
  %i.p = getelementptr i8, ptr %i.l, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !157
  br label %RCLASS_SINGLETON_P.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.i19:               ; preds = %rbimpl_RB_TYPE_P_fastpath.exit18
  %i.r = and i64 %i.m, 8223
  %or.cond = icmp eq i64 %i.r, 8194
  br i1 %or.cond, label %bb.e, label %RCLASS_SINGLETON_P.exit.thread

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i19
  %i.s = getelementptr i8, ptr %i.l, i64 136
  %i.t = load i64, ptr %i.s, align 8, !tbaa !46   ; 5 uses
  %i.u = icmp eq i64 %i.t, 0
  %i.v = and i64 %i.t, 7
  %i.w = icmp ne i64 %i.v, 0
  %i.x = or i1 %i.u, %i.w
  %.pre = inttoptr i64 %i.t to ptr                ; 2 uses
  br i1 %i.x, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit16

rbimpl_RB_TYPE_P_fastpath.exit16:                 ; preds = %bb.e
  %i.y = load i64, ptr %.pre, align 8, !tbaa !44
  %i.z = and i64 %i.y, 30
  %switch = icmp eq i64 %i.z, 2
  br i1 %switch, label %RCLASS_SINGLETON_P.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit16, %bb.e
  %i.aa = tail call i64 @rb_obj_class(i64 noundef %i.t) #7
  %i.ab = tail call ptr @rb_class2name(i64 noundef %i.aa) #7
  %i.ac = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.18, ptr noundef %i.ab, ptr noundef %.pre) #7
  br label %.thread

RCLASS_SINGLETON_P.exit.thread:                   ; preds = %rbimpl_RB_TYPE_P_fastpath.exit16, %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit.i19, %bb.d
  %.0 = phi i64 [ %i.q, %bb.d ], [ %i.j, %rbimpl_RB_TYPE_P_fastpath.exit.i19 ], [ %i.t, %rbimpl_RB_TYPE_P_fastpath.exit16 ], [ %i.j, %bb.c ]
  %i.ad = tail call i64 @rb_class_path(i64 noundef %.0) #7
  br label %.thread

.thread:                                          ; preds = %frame2klass.exit, %frame2klass.exit, %bb.a, %bb.b, %rbimpl_RB_TYPE_P_fastpath.exit.i, %RCLASS_SINGLETON_P.exit.thread, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %.013 = phi i64 [ %i.ac, %rbimpl_RB_TYPE_P_fastpath.exit.thread ], [ %i.ad, %RCLASS_SINGLETON_P.exit.thread ], [ 4, %frame2klass.exit ], [ 4, %frame2klass.exit ], [ 4, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ 4, %bb.b ], [ 4, %bb.a ]
  ret i64 %.013
}

declare ptr @rb_class2name(i64 noundef) local_unnamed_addr #2

declare i64 @rb_obj_class(i64 noundef) local_unnamed_addr #2

declare i64 @rb_class_path(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 0, 21) i64 @rb_profile_frame_singleton_method_p(i64 noundef %0) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp eq i64 %0, 4
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.thread, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.b
  %i.f = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !44
  %i.h = and i64 %i.g, 61471
  %or.cond.i = icmp eq i64 %i.h, 24602
  br i1 %or.cond.i, label %frame2klass.exit, label %.thread

frame2klass.exit:                                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.i = getelementptr i8, ptr %i.f, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !175  ; 3 uses
  switch i64 %i.j, label %bb.c [
    i64 0, label %.thread
    i64 4, label %.thread
  ]

bb.c:                                             ; preds = %frame2klass.exit
  %i.k = and i64 %i.j, 7
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %rbimpl_RB_TYPE_P_fastpath.exit.i4, label %.thread

rbimpl_RB_TYPE_P_fastpath.exit.i4:                ; preds = %bb.c
  %i.l = inttoptr i64 %i.j to ptr
  %i.m = load i64, ptr %i.l, align 8, !tbaa !44
  %.fr10 = freeze i64 %i.m                        ; 2 uses
  %i.n = and i64 %.fr10, 31
  %i.o = icmp eq i64 %i.n, 2
  br i1 %i.o, label %RCLASS_SINGLETON_P.exit, label %.thread

RCLASS_SINGLETON_P.exit:                          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i4
  %i.p = and i64 %.fr10, 8192
  %.not11 = icmp eq i64 %i.p, 0
  %spec.select = select i1 %.not11, i64 0, i64 20
  br label %.thread

.thread:                                          ; preds = %RCLASS_SINGLETON_P.exit, %frame2klass.exit, %frame2klass.exit, %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit.i4, %bb.a, %bb.b, %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.q = phi i64 [ 0, %frame2klass.exit ], [ 0, %frame2klass.exit ], [ 0, %bb.a ], [ 0, %bb.c ], [ %spec.select, %RCLASS_SINGLETON_P.exit ], [ 0, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ 0, %bb.b ], [ 0, %rbimpl_RB_TYPE_P_fastpath.exit.i4 ]
  ret i64 %i.q
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_profile_frame_method_name(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 4
  br i1 %i.a, label %frame2iseq.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.b
  %i.f = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !44
  %i.h = and i64 %i.g, 61471
  %or.cond.i = icmp eq i64 %i.h, 24602
  br i1 %or.cond.i, label %bb.c, label %rbimpl_RB_TYPE_P_fastpath.exit.i11

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.i = getelementptr i8, ptr %i.f, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !128  ; 2 uses
  %i.k = load i8, ptr %i.j, align 8
  %.fr21 = freeze i8 %i.k
  %i.l = and i8 %.fr21, 15
  %cond1.i = icmp eq i8 %i.l, 1
  br i1 %cond1.i, label %cframe.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i11

cframe.exit:                                      ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.j, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !131
  %i.o = tail call i64 @rb_id2str(i64 noundef %i.n) #7 ; 2 uses
  %.not.i = icmp eq i64 %i.o, 0
  %..i10 = select i1 %.not.i, i64 4, i64 %i.o
  br label %frame2iseq.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.i11:               ; preds = %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.p = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !44   ; 2 uses
  %i.r = and i64 %i.q, 31
  %i.s = icmp eq i64 %i.r, 26
  br i1 %i.s, label %bb.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i11
  %i.t = trunc i64 %i.q to i32
  %i.u = lshr i32 %i.t, 12
  %i.v = and i32 %i.u, 15
  switch i32 %i.v, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i [
    i32 7, label %frame2iseq.exit.thread17
    i32 6, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr i8, ptr %i.p, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !128  ; 2 uses
  %i.y = load i8, ptr %i.x, align 8
  %i.z = and i8 %i.y, 15
  %cond.i = icmp eq i8 %i.z, 0
  br i1 %cond.i, label %frame2iseq.exit, label %frame2iseq.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.b, %bb.d, %rbimpl_RB_TYPE_P_fastpath.exit.i11
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.43) #20
  unreachable

frame2iseq.exit:                                  ; preds = %bb.e
  %i.aa = getelementptr i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !46 ; 2 uses
  %.not9 = icmp eq ptr %i.ab, null
  br i1 %.not9, label %frame2iseq.exit.thread, label %frame2iseq.exit.thread17

frame2iseq.exit.thread17:                         ; preds = %bb.d, %frame2iseq.exit
  %.1.i1220 = phi ptr [ %i.ab, %frame2iseq.exit ], [ %i.p, %bb.d ]
  %i.ac = tail call i64 @rb_iseq_method_name(ptr noundef nonnull %.1.i1220) #7
  br label %frame2iseq.exit.thread

frame2iseq.exit.thread:                           ; preds = %bb.a, %bb.e, %frame2iseq.exit.thread17, %frame2iseq.exit, %cframe.exit
  %.0 = phi i64 [ %..i10, %cframe.exit ], [ %i.ac, %frame2iseq.exit.thread17 ], [ 4, %frame2iseq.exit ], [ 4, %bb.e ], [ 4, %bb.a ]
  ret i64 %.0
}

declare i64 @rb_iseq_method_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_profile_frame_qualified_method_name(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_profile_frame_method_name(i64 noundef %0) ; 3 uses
  %.not.i = icmp eq i64 %i.a, 4
  br i1 %.not.i, label %qualified_method_name.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_profile_frame_classpath(i64 noundef %0) ; 2 uses
  %i.c = icmp eq i64 %0, 4
  br i1 %i.c, label %rb_profile_frame_singleton_method_p.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i64 %0, 0
  %i.e = and i64 %0, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %rb_profile_frame_singleton_method_p.exit.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %bb.c
  %i.h = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !44
  %i.j = and i64 %i.i, 61471
  %or.cond.i.i.i = icmp eq i64 %i.j, 24602
  br i1 %or.cond.i.i.i, label %frame2klass.exit.i.i, label %rb_profile_frame_singleton_method_p.exit.i

frame2klass.exit.i.i:                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  %i.k = getelementptr i8, ptr %i.h, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !175  ; 3 uses
  switch i64 %i.l, label %bb.d [
    i64 0, label %rb_profile_frame_singleton_method_p.exit.i
    i64 4, label %rb_profile_frame_singleton_method_p.exit.i
  ]

bb.d:                                             ; preds = %frame2klass.exit.i.i
  %i.m = and i64 %i.l, 7
  %.not.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i4.i.i, label %rb_profile_frame_singleton_method_p.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i4.i.i:            ; preds = %bb.d
  %i.n = inttoptr i64 %i.l to ptr
  %i.o = load i64, ptr %i.n, align 8, !tbaa !44
  %.fr10.i.i = freeze i64 %i.o                    ; 2 uses
  %i.p = and i64 %.fr10.i.i, 31
  %i.q = icmp eq i64 %i.p, 2
  br i1 %i.q, label %RCLASS_SINGLETON_P.exit.i.i, label %rb_profile_frame_singleton_method_p.exit.i

RCLASS_SINGLETON_P.exit.i.i:                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i4.i.i
  %i.r = and i64 %.fr10.i.i, 8192
  %.not11.i.not.i = icmp eq i64 %i.r, 0
  %i.s = select i1 %.not11.i.not.i, ptr @.str.46, ptr @.str.45
  br label %rb_profile_frame_singleton_method_p.exit.i

rb_profile_frame_singleton_method_p.exit.i:       ; preds = %RCLASS_SINGLETON_P.exit.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i4.i.i, %bb.d, %frame2klass.exit.i.i, %frame2klass.exit.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %bb.c, %bb.b
  %i.t = phi ptr [ @.str.46, %frame2klass.exit.i.i ], [ @.str.46, %frame2klass.exit.i.i ], [ @.str.46, %bb.b ], [ @.str.46, %bb.d ], [ %i.s, %RCLASS_SINGLETON_P.exit.i.i ], [ @.str.46, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i ], [ @.str.46, %bb.c ], [ @.str.46, %rbimpl_RB_TYPE_P_fastpath.exit.i4.i.i ]
  %.not11.i = icmp eq i64 %i.b, 4
  br i1 %.not11.i, label %qualified_method_name.exit, label %bb.e

bb.e:                                             ; preds = %rb_profile_frame_singleton_method_p.exit.i
  %i.u = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.44, i64 noundef %i.b, ptr noundef nonnull %i.t, i64 noundef %i.a) #7
  br label %qualified_method_name.exit

qualified_method_name.exit:                       ; preds = %bb.a, %rb_profile_frame_singleton_method_p.exit.i, %bb.e
  %.1.i = phi i64 [ %i.a, %rb_profile_frame_singleton_method_p.exit.i ], [ %i.u, %bb.e ], [ 4, %bb.a ]
  ret i64 %.1.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_profile_frame_full_label(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not45 = icmp eq i64 %0, 4
  br i1 %.not45, label %rb_profile_frame_base_label.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.b
  %i.e = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !44
  %i.g = and i64 %i.f, 61471
  %or.cond.i = icmp eq i64 %i.g, 24602
  br i1 %or.cond.i, label %bb.c, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.h = getelementptr i8, ptr %i.e, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !128  ; 2 uses
  %i.j = load i8, ptr %i.i, align 8
  %.fr41 = freeze i8 %i.j
  %i.k = and i8 %.fr41, 15
  %cond1.i = icmp eq i8 %i.k, 1
  br i1 %cond1.i, label %cframe.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

cframe.exit:                                      ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.i, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !131
  %i.n = tail call i64 @rb_id2str(i64 noundef %i.m) #7 ; 3 uses
  %i.o = and i64 %i.n, -5
  %.not.i24 = icmp eq i64 %i.o, 0
  br i1 %.not.i24, label %qualified_method_name.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %cframe.exit
  %i.p = tail call i64 @rb_profile_frame_classpath(i64 noundef %0) ; 2 uses
  %i.q = load i64, ptr %i.e, align 8, !tbaa !44
  %i.r = and i64 %i.q, 61471
  %or.cond.i.i.i = icmp eq i64 %i.r, 24602
  br i1 %or.cond.i.i.i, label %frame2klass.exit.i.i, label %rb_profile_frame_singleton_method_p.exit.i

frame2klass.exit.i.i:                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  %i.s = getelementptr i8, ptr %i.e, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !175  ; 3 uses
  switch i64 %i.t, label %bb.d [
    i64 0, label %rb_profile_frame_singleton_method_p.exit.i
    i64 4, label %rb_profile_frame_singleton_method_p.exit.i
  ]

bb.d:                                             ; preds = %frame2klass.exit.i.i
  %i.u = and i64 %i.t, 7
  %.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i4.i.i, label %rb_profile_frame_singleton_method_p.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i4.i.i:            ; preds = %bb.d
  %i.v = inttoptr i64 %i.t to ptr
  %i.w = load i64, ptr %i.v, align 8, !tbaa !44
  %.fr10.i.i = freeze i64 %i.w                    ; 2 uses
  %i.x = and i64 %.fr10.i.i, 31
  %i.y = icmp eq i64 %i.x, 2
  br i1 %i.y, label %RCLASS_SINGLETON_P.exit.i.i, label %rb_profile_frame_singleton_method_p.exit.i

RCLASS_SINGLETON_P.exit.i.i:                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i4.i.i
  %i.z = and i64 %.fr10.i.i, 8192
  %.not11.i.not.i = icmp eq i64 %i.z, 0
  %i.aa = select i1 %.not11.i.not.i, ptr @.str.46, ptr @.str.45
  br label %rb_profile_frame_singleton_method_p.exit.i

rb_profile_frame_singleton_method_p.exit.i:       ; preds = %RCLASS_SINGLETON_P.exit.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i4.i.i, %bb.d, %frame2klass.exit.i.i, %frame2klass.exit.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  %i.ab = phi ptr [ @.str.46, %frame2klass.exit.i.i ], [ @.str.46, %frame2klass.exit.i.i ], [ @.str.46, %rbimpl_RB_TYPE_P_fastpath.exit.i4.i.i ], [ @.str.46, %bb.d ], [ %i.aa, %RCLASS_SINGLETON_P.exit.i.i ], [ @.str.46, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i ]
  %.not11.i = icmp eq i64 %i.p, 4
  br i1 %.not11.i, label %qualified_method_name.exit, label %bb.e

bb.e:                                             ; preds = %rb_profile_frame_singleton_method_p.exit.i
  %i.ac = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.44, i64 noundef %i.p, ptr noundef nonnull %i.ab, i64 noundef %i.n) #7
  br label %qualified_method_name.exit

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.ad = inttoptr i64 %0 to ptr                  ; 6 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !44 ; 4 uses
  %i.af = and i64 %i.ae, 31
  %i.ag = icmp eq i64 %i.af, 26
  br i1 %i.ag, label %bb.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.ah = trunc i64 %i.ae to i32
  %i.ai = lshr i32 %i.ah, 12
  %i.aj = and i32 %i.ai, 15
  switch i32 %i.aj, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i [
    i32 7, label %frame2iseq.exit.thread4.i
    i32 6, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr i8, ptr %i.ad, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !128 ; 2 uses
  %i.am = load i8, ptr %i.al, align 8
  %i.an = and i8 %i.am, 15
  %cond.i.i = icmp eq i8 %i.an, 0
  br i1 %cond.i.i, label %frame2iseq.exit.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i27

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %bb.b, %bb.f, %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.43) #20
  unreachable

frame2iseq.exit.i:                                ; preds = %bb.g
  %i.ao = getelementptr i8, ptr %i.al, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !46 ; 2 uses
  %.not.i26 = icmp eq ptr %i.ap, null
  br i1 %.not.i26, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i27, label %frame2iseq.exit.thread4.i

frame2iseq.exit.thread4.i:                        ; preds = %frame2iseq.exit.i, %bb.f
  %.1.i7.i = phi ptr [ %i.ap, %frame2iseq.exit.i ], [ %i.ad, %bb.f ]
  %i.aq = tail call i64 @rb_iseq_label(ptr noundef nonnull %.1.i7.i) #7
  %.pre = load i64, ptr %i.ad, align 8, !tbaa !44
  br label %rbimpl_RB_TYPE_P_fastpath.exit.i.i27

rbimpl_RB_TYPE_P_fastpath.exit.i.i27:             ; preds = %frame2iseq.exit.thread4.i, %frame2iseq.exit.i, %bb.g
  %i.ar = phi i64 [ %i.ae, %bb.g ], [ %i.ae, %frame2iseq.exit.i ], [ %.pre, %frame2iseq.exit.thread4.i ] ; 2 uses
  %.ph = phi i64 [ 4, %bb.g ], [ 4, %frame2iseq.exit.i ], [ %i.aq, %frame2iseq.exit.thread4.i ] ; 3 uses
  %i.as = and i64 %i.ar, 31
  %i.at = icmp eq i64 %i.as, 26
  br i1 %i.at, label %bb.h, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i28

bb.h:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i27
  %i.au = trunc i64 %i.ar to i32
  %i.av = lshr i32 %i.au, 12
  %i.aw = and i32 %i.av, 15
  switch i32 %i.aw, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i28 [
    i32 7, label %frame2iseq.exit.thread4.i32
    i32 6, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr i8, ptr %i.ad, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !128 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 8
  %i.ba = and i8 %i.az, 15
  %cond.i.i29 = icmp eq i8 %i.ba, 0
  br i1 %cond.i.i29, label %frame2iseq.exit.i30, label %rb_profile_frame_base_label.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i28:      ; preds = %bb.h, %rbimpl_RB_TYPE_P_fastpath.exit.i.i27
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.43) #20
  unreachable

frame2iseq.exit.i30:                              ; preds = %bb.i
  %i.bb = getelementptr i8, ptr %i.ay, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !46 ; 2 uses
  %.not.i31 = icmp eq ptr %i.bc, null
  br i1 %.not.i31, label %rb_profile_frame_base_label.exit, label %frame2iseq.exit.thread4.i32

frame2iseq.exit.thread4.i32:                      ; preds = %frame2iseq.exit.i30, %bb.h
  %.1.i7.i33 = phi ptr [ %i.bc, %frame2iseq.exit.i30 ], [ %i.ad, %bb.h ]
  %i.bd = tail call i64 @rb_iseq_base_label(ptr noundef nonnull %.1.i7.i33) #7
  br label %rb_profile_frame_base_label.exit

rb_profile_frame_base_label.exit:                 ; preds = %bb.a, %bb.i, %frame2iseq.exit.i30, %frame2iseq.exit.thread4.i32
  %i.be = phi i64 [ %.ph, %frame2iseq.exit.thread4.i32 ], [ %.ph, %frame2iseq.exit.i30 ], [ %.ph, %bb.i ], [ 4, %bb.a ] ; 3 uses
  %i.bf = phi i64 [ %i.bd, %frame2iseq.exit.thread4.i32 ], [ 4, %frame2iseq.exit.i30 ], [ 4, %bb.i ], [ 4, %bb.a ] ; 2 uses
  %i.bg = tail call i64 @rb_profile_frame_method_name(i64 noundef %0) ; 3 uses
  %.not.i.i34 = icmp eq i64 %i.bg, 4
  br i1 %.not.i.i34, label %qualified_method_name.exit, label %bb.j

bb.j:                                             ; preds = %rb_profile_frame_base_label.exit
  %i.bh = tail call i64 @rb_profile_frame_classpath(i64 noundef %0) ; 2 uses
  %i.bi = and i64 %0, 7
  %.not = icmp eq i64 %i.bi, 0
  br i1 %.not, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i, label %rb_profile_frame_singleton_method_p.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i:           ; preds = %bb.j
  %i.bj = inttoptr i64 %0 to ptr                  ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !44
  %i.bl = and i64 %i.bk, 61471
  %or.cond.i.i.i.i = icmp eq i64 %i.bl, 24602
  br i1 %or.cond.i.i.i.i, label %frame2klass.exit.i.i.i, label %rb_profile_frame_singleton_method_p.exit.i.i

frame2klass.exit.i.i.i:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i
  %i.bm = getelementptr i8, ptr %i.bj, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !175 ; 3 uses
  switch i64 %i.bn, label %bb.k [
    i64 0, label %rb_profile_frame_singleton_method_p.exit.i.i
    i64 4, label %rb_profile_frame_singleton_method_p.exit.i.i
  ]

bb.k:                                             ; preds = %frame2klass.exit.i.i.i
  %i.bo = and i64 %i.bn, 7
  %.not.i.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i4.i.i.i, label %rb_profile_frame_singleton_method_p.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i4.i.i.i:          ; preds = %bb.k
  %i.bp = inttoptr i64 %i.bn to ptr
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !44
  %.fr10.i.i.i = freeze i64 %i.bq                 ; 2 uses
  %i.br = and i64 %.fr10.i.i.i, 31
  %i.bs = icmp eq i64 %i.br, 2
  br i1 %i.bs, label %RCLASS_SINGLETON_P.exit.i.i.i, label %rb_profile_frame_singleton_method_p.exit.i.i

RCLASS_SINGLETON_P.exit.i.i.i:                    ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i4.i.i.i
  %i.bt = and i64 %.fr10.i.i.i, 8192
  %.not11.i.not.i.i = icmp eq i64 %i.bt, 0
  %i.bu = select i1 %.not11.i.not.i.i, ptr @.str.46, ptr @.str.45
  br label %rb_profile_frame_singleton_method_p.exit.i.i

rb_profile_frame_singleton_method_p.exit.i.i:     ; preds = %RCLASS_SINGLETON_P.exit.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i4.i.i.i, %bb.k, %frame2klass.exit.i.i.i, %frame2klass.exit.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i, %bb.j
  %i.bv = phi ptr [ @.str.46, %frame2klass.exit.i.i.i ], [ @.str.46, %frame2klass.exit.i.i.i ], [ @.str.46, %bb.j ], [ @.str.46, %bb.k ], [ %i.bu, %RCLASS_SINGLETON_P.exit.i.i.i ], [ @.str.46, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i ], [ @.str.46, %rbimpl_RB_TYPE_P_fastpath.exit.i4.i.i.i ]
  %.not11.i.i = icmp eq i64 %i.bh, 4
  br i1 %.not11.i.i, label %rb_profile_frame_qualified_method_name.exit, label %bb.l

bb.l:                                             ; preds = %rb_profile_frame_singleton_method_p.exit.i.i
  %i.bw = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.44, i64 noundef %i.bh, ptr noundef nonnull %i.bv, i64 noundef %i.bg) #7
  br label %rb_profile_frame_qualified_method_name.exit

rb_profile_frame_qualified_method_name.exit:      ; preds = %rb_profile_frame_singleton_method_p.exit.i.i, %bb.l
  %.1.i.i = phi i64 [ %i.bg, %rb_profile_frame_singleton_method_p.exit.i.i ], [ %i.bw, %bb.l ] ; 3 uses
  %i.bx = icmp eq i64 %.1.i.i, 4
  %i.by = icmp eq i64 %i.bf, %.1.i.i
  %or.cond = select i1 %i.bx, i1 true, i1 %i.by
  br i1 %or.cond, label %qualified_method_name.exit, label %bb.m

bb.m:                                             ; preds = %rb_profile_frame_qualified_method_name.exit
  %i.bz = inttoptr i64 %i.be to ptr               ; 3 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !176
end_hunk_1
begin_hunk_2_@location_to_str:bb.a
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.q, %bb.p
  %i.ci = phi ptr [ %i.ch, %bb.q ], [ %i.cg, %bb.p ]
  %i.cj = tail call i64 (ptr, ptr, ...) @rb_enc_sprintf(ptr noundef %i.cc, ptr noundef nonnull @.str.25, ptr noundef %i.ci) #7 ; 5 uses
  %.not.i30 = icmp eq i32 %.1, 0
  br i1 %.not.i30, label %bb.s, label %bb.r

bb.r:                                             ; preds = %RSTRING_PTR.exit.i
  %i.ck = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.cj, ptr noundef nonnull @.str.26, i32 noundef %.1) #7 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %RSTRING_PTR.exit.i
  %i.cl = tail call i64 @rb_str_cat(i64 noundef %i.cj, ptr noundef nonnull @.str.27, i64 noundef 4) #7 ; 0 uses
  %i.cm = icmp eq i64 %.017, 4
  br i1 %i.cm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cn = tail call i64 @rb_str_cat(i64 noundef %i.cj, ptr noundef nonnull @.str.28, i64 noundef 14) #7 ; 0 uses
  br label %location_format.exit

bb.u:                                             ; preds = %bb.s
  %i.co = inttoptr i64 %.017 to ptr               ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !44
  %i.cq = and i64 %i.cp, 8192
  %.not.i9.i = icmp eq i64 %i.cq, 0
  %i.cr = getelementptr i8, ptr %i.co, i64 24     ; 2 uses
  br i1 %.not.i9.i, label %RSTRING_PTR.exit10.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !46
  br label %RSTRING_PTR.exit10.i

RSTRING_PTR.exit10.i:                             ; preds = %bb.v, %bb.u
  %i.ct = phi ptr [ %i.cs, %bb.v ], [ %i.cr, %bb.u ]
  %i.cu = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.cj, ptr noundef nonnull @.str.29, ptr noundef %i.ct) #7 ; 0 uses
  br label %location_format.exit

location_format.exit:                             ; preds = %bb.t, %RSTRING_PTR.exit10.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store ptr %i.a, ptr %i.b, align 8, !tbaa !93
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #7, !srcloc !182
  %i.cv = load ptr, ptr %i.b, align 8, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %i.cw = load volatile i64, ptr %i.cv, align 8, !tbaa !17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.cj
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @calculate_iseq_label(i64 noundef %0, ptr noundef readonly captures(address) %1) unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %.020 = phi ptr [ %1, %bb.a ], [ %i.z, %bb.g ]  ; 5 uses
  %i.a = getelementptr i8, ptr %.020, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 6 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !23
  switch i32 %i.c, label %bb.h [
    i32 0, label %bb.c
    i32 3, label %bb.c
    i32 7, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 8, label %bb.e
    i32 4, label %bb.g
    i32 5, label %bb.g
    i32 6, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.d = getelementptr i8, ptr %i.b, i64 80
  %i.e = load i64, ptr %i.d, align 8, !tbaa !127
  br label %common.ret75

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.b, i64 80
  %i.g = load i64, ptr %i.f, align 8, !tbaa !127
  %i.h = tail call i64 @rb_gen_method_name(i64 noundef %0, i64 noundef %i.g)
  br label %common.ret75

bb.e:                                             ; preds = %bb.b, %bb.b
  %i.i = getelementptr i8, ptr %i.b, i64 168
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !183
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.k = getelementptr i8, ptr %i.b, i64 176
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !184  ; 2 uses
  %.not2333 = icmp eq ptr %i.l, %.020
  br i1 %.not2333, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.01835 = phi i32 [ %spec.select, %.lr.ph ], [ 0, %.preheader ]
  %.12134 = phi ptr [ %i.s, %.lr.ph ], [ %.020, %.preheader ]
  %i.m = getelementptr i8, ptr %.12134, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20   ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !23
  %i.p = icmp eq i32 %i.o, 2
  %i.q = zext i1 %i.p to i32
  %spec.select = add i32 %.01835, %i.q            ; 3 uses
  %i.r = getelementptr i8, ptr %i.n, i64 168
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !183  ; 4 uses
  %.not23 = icmp eq ptr %i.l, %i.s
  br i1 %.not23, label %._crit_edge, label %.lr.ph, !llvm.loop !185

._crit_edge:                                      ; preds = %.lr.ph
  %i.t = icmp slt i32 %spec.select, 2
  br i1 %i.t, label %.thread, label %bb.f

common.ret75:                                     ; preds = %bb.d, %bb.c, %bb.f, %.thread
  %common.ret75.op = phi i64 [ %i.x, %bb.f ], [ %i.v, %.thread ], [ %i.h, %bb.d ], [ %i.e, %bb.c ]
  ret i64 %common.ret75.op

.thread:                                          ; preds = %.preheader, %bb.e, %._crit_edge
  %.22226 = phi ptr [ %i.s, %._crit_edge ], [ %.020, %bb.e ], [ %.020, %.preheader ]
  %i.u = tail call fastcc i64 @calculate_iseq_label(i64 noundef %0, ptr noundef %.22226)
  %i.v = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.22, i64 noundef %i.u) #7
  br label %common.ret75

bb.f:                                             ; preds = %._crit_edge
  %i.w = tail call fastcc i64 @calculate_iseq_label(i64 noundef %0, ptr noundef %i.s)
  %i.x = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.23, i32 noundef %spec.select, i64 noundef %i.w) #7
  br label %common.ret75

bb.g:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.y = getelementptr i8, ptr %i.b, i64 168
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !183
  br label %bb.b

bb.h:                                             ; preds = %bb.b
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.24) #20
  unreachable
}

; Function Attrs: cold noreturn
declare void @rb_bug(ptr noundef, ...) local_unnamed_addr #14

declare i64 @rb_enc_sprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @rb_enc_compatible(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_catf(i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i64 @rb_str_cat(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #15

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @ec_backtrace_range(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef readonly captures(none) %2, i32 noundef range(i32 0, 2) %3, i32 noundef range(i32 0, 2) %4, ptr noundef nonnull writeonly captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i64], align 8                ; 2 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = zext nneg i32 %1 to i64
  %i.f = getelementptr [8 x i8], ptr %2, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !17
  %i.i = tail call i32 @rb_keyword_given_p() #7
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.preheader.preheader.thread77, label %.preheader.preheader

bb.c:                                             ; preds = %bb.a
  %i.j = icmp slt i32 %1, 0
  br i1 %i.j, label %bb.f, label %.preheader.1

.preheader.preheader:                             ; preds = %bb.b
  %i.k = tail call i64 @rb_hash_dup(i64 noundef %i.h) #7 ; 2 uses
  %i.l = add nsw i32 %1, -1                       ; 2 uses
  %.not63 = icmp eq i32 %i.l, 0
  br i1 %.not63, label %.preheader.1, label %.preheader.preheader.thread77

.preheader.preheader.thread77:                    ; preds = %bb.b, %.preheader.preheader
  %.1.i.ph82 = phi i32 [ %i.l, %.preheader.preheader ], [ %1, %bb.b ]
  %.188.i.ph81 = phi i64 [ %i.k, %.preheader.preheader ], [ 4, %bb.b ]
  %i.m = load i64, ptr %2, align 8, !tbaa !17
  br label %.preheader.1

.preheader.1:                                     ; preds = %bb.c, %.preheader.preheader, %.preheader.preheader.thread77
  %.188.i6775 = phi i64 [ %.188.i.ph81, %.preheader.preheader.thread77 ], [ %i.k, %.preheader.preheader ], [ 4, %bb.c ] ; 2 uses
  %.1.i6873 = phi i32 [ %.1.i.ph82, %.preheader.preheader.thread77 ], [ 0, %.preheader.preheader ], [ 0, %bb.c ] ; 3 uses
  %i.n = phi i64 [ %i.m, %.preheader.preheader.thread77 ], [ 4, %.preheader.preheader ], [ 4, %bb.c ] ; 7 uses
  %.286.i = phi i32 [ 1, %.preheader.preheader.thread77 ], [ 0, %.preheader.preheader ], [ 0, %bb.c ] ; 4 uses
  %i.o = icmp samesign ult i32 %.286.i, %.1.i6873
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader.1
  %i.p = zext nneg i32 %.286.i to i64
  %i.q = getelementptr [8 x i8], ptr %2, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !17
  %i.s = add nuw nsw i32 %.286.i, 1
  %6 = freeze i64 %i.r
  br label %bb.e

bb.e:                                             ; preds = %.preheader.1, %bb.d
  %.fr = phi i64 [ %6, %bb.d ], [ 4, %.preheader.1 ] ; 4 uses
  %.286.i.1 = phi i32 [ %i.s, %bb.d ], [ %.286.i, %.preheader.1 ]
  %i.t = icmp eq i32 %.286.i.1, %.1.i6873
  br i1 %i.t, label %rb_scan_args_set.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.1.i69 = phi i32 [ %.1.i6873, %bb.e ], [ %1, %bb.c ]
  tail call void @rb_error_arity(i32 noundef %.1.i69, i32 noundef 0, i32 noundef 2) #17
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.e
  %i.u = icmp eq i64 %.188.i6775, 4
  br i1 %i.u, label %bb.h, label %bb.g

bb.g:                                             ; preds = %rb_scan_args_set.exit
  store i64 0, ptr %i.a, align 8, !tbaa !17
  %i.v = call i32 @rb_get_kwargs(i64 noundef %.188.i6775, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 0, ptr noundef null) #7 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %rb_scan_args_set.exit
  switch i32 %1, label %bb.aa [
    i32 2, label %bb.i
    i32 0, label %bb.j
    i32 1, label %.thread
  ]

bb.i:                                             ; preds = %bb.h
  %i.w = icmp eq i64 %.fr, 4
  br i1 %i.w, label %.thread, label %.thread46

bb.j:                                             ; preds = %bb.h
  %i.x = add nuw nsw i32 %4, %3
  %i.y = zext nneg i32 %i.x to i64
  br label %bb.aa

.thread:                                          ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.z = getelementptr i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !71  ; 2 uses
  %.val.i = load ptr, ptr %0, align 8, !tbaa !81
  %i.ab = getelementptr i8, ptr %0, i64 8
  %.val11.i = load i64, ptr %i.ab, align 8, !tbaa !82
  %i.ac = getelementptr [8 x i8], ptr %.val.i, i64 %.val11.i ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %backtrace_size.exit, label %bb.k

bb.k:                                             ; preds = %.thread
  %i.ae = getelementptr i8, ptr %i.ac, i64 -112   ; 2 uses
  %i.af = icmp ult ptr %i.ae, %i.aa
  br i1 %i.af, label %backtrace_size.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.aa to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = sdiv exact i64 %i.ai, 56
  %i.ak = add nsw i64 %i.aj, 1
  br label %backtrace_size.exit

backtrace_size.exit:                              ; preds = %.thread, %bb.k, %bb.l
  %.0.i = phi i64 [ %i.ak, %bb.l ], [ -1, %.thread ], [ 0, %bb.k ]
  %i.al = zext nneg i32 %4 to i64                 ; 2 uses
  %i.am = sub nsw i64 %.0.i, %i.al
  %i.an = call i64 @rb_range_beg_len(i64 noundef %i.n, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef %i.am, i32 noundef 0) #7
  switch i64 %i.an, label %bb.q [
    i64 0, label %bb.m
    i64 4, label %.critedge
  ]

bb.m:                                             ; preds = %backtrace_size.exit
  %i.ao = trunc i64 %i.n to i1
  br i1 %i.ao, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ap = ashr i64 %i.n, 1
  br label %rb_num2long_inline.exit

bb.o:                                             ; preds = %bb.m
  %i.aq = call i64 @rb_num2long(i64 noundef %i.n) #7
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.n, %bb.o
  %.0.i40 = phi i64 [ %i.ap, %bb.n ], [ %i.aq, %bb.o ] ; 3 uses
  %i.ar = icmp slt i64 %.0.i40, 0
  br i1 %i.ar, label %bb.p, label %bb.r

bb.p:                                             ; preds = %rb_num2long_inline.exit
  %i.as = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.as, ptr noundef nonnull @.str.40, i64 noundef %.0.i40) #17
  unreachable

bb.q:                                             ; preds = %backtrace_size.exit
  %i.at = load i64, ptr %i.b, align 8, !tbaa !17
  %i.au = load i64, ptr %i.c, align 8, !tbaa !17
  br label %bb.r

bb.r:                                             ; preds = %rb_num2long_inline.exit, %bb.q
  %.pn = phi i64 [ %i.at, %bb.q ], [ %.0.i40, %rb_num2long_inline.exit ]
  %.026 = phi i64 [ %i.au, %bb.q ], [ -1, %rb_num2long_inline.exit ]
  %.028 = add i64 %.pn, %i.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.aa

.thread46:                                        ; preds = %bb.i
  %i.av = trunc i64 %i.n to i1
  br i1 %i.av, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.thread46
  %i.aw = ashr i64 %i.n, 1
  br label %rb_num2long_inline.exit42

bb.t:                                             ; preds = %.thread46
  %i.ax = call i64 @rb_num2long(i64 noundef %i.n) #7
  br label %rb_num2long_inline.exit42

rb_num2long_inline.exit42:                        ; preds = %bb.s, %bb.t
  %.0.i41 = phi i64 [ %i.aw, %bb.s ], [ %i.ax, %bb.t ] ; 3 uses
  %i.ay = trunc i64 %.fr to i1
  br i1 %i.ay, label %bb.u, label %bb.v

bb.u:                                             ; preds = %rb_num2long_inline.exit42
  %i.az = ashr i64 %.fr, 1
  br label %rb_num2long_inline.exit44

bb.v:                                             ; preds = %rb_num2long_inline.exit42
  %i.ba = call i64 @rb_num2long(i64 noundef %.fr) #7
  br label %rb_num2long_inline.exit44

rb_num2long_inline.exit44:                        ; preds = %bb.u, %bb.v
  %.0.i43 = phi i64 [ %i.az, %bb.u ], [ %i.ba, %bb.v ] ; 3 uses
  %i.bb = icmp slt i64 %.0.i41, 0
  br i1 %i.bb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %rb_num2long_inline.exit44
  %i.bc = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bc, ptr noundef nonnull @.str.40, i64 noundef %.0.i41) #17
  unreachable

bb.x:                                             ; preds = %rb_num2long_inline.exit44
  %i.bd = icmp slt i64 %.0.i43, 0
  br i1 %i.bd, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.be = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.be, ptr noundef nonnull @.str.41, i64 noundef %.0.i43) #17
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.bf = zext nneg i32 %4 to i64
  %i.bg = add nuw i64 %.0.i41, %i.bf
  br label %bb.aa

bb.aa:                                            ; preds = %bb.h, %bb.r, %bb.z, %bb.j
  %.230 = phi i64 [ %i.bg, %bb.z ], [ %i.y, %bb.j ], [ %.028, %bb.r ], [ 0, %bb.h ]
  %.2 = phi i64 [ %.0.i43, %bb.z ], [ -1, %bb.j ], [ %.026, %bb.r ], [ 0, %bb.h ]
  store i64 %.2, ptr %5, align 8, !tbaa !17
  br label %bb.ab

.critedge:                                        ; preds = %backtrace_size.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.ab

bb.ab:                                            ; preds = %.critedge, %bb.aa
  %.1 = phi i64 [ %.230, %bb.aa ], [ -1, %.critedge ]
  ret i64 %.1
}

declare i32 @rb_get_kwargs(i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_range_beg_len(i64 noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #16

declare i64 @rb_hash_dup(i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @rb_error_arity(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #16

declare i32 @rb_keyword_given_p() local_unnamed_addr #2

declare i64 @rb_num2long(i64 noundef) local_unnamed_addr #2

declare i64 @rb_int2big(i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_inspect(i64 noundef) local_unnamed_addr #2

declare i64 @rb_ary_reverse(i64 noundef) local_unnamed_addr #2

declare void @rb_ary_store(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_vm_make_binding(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @rb_vm_control_frame_id_and_class(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @rb_ec_vm_lock_rec_release(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
end_hunk_2
