inline.NumInlined: 295
inline.NumDeleted: 97
begin_hunk_0_@thread_profile_frames:bb.a
  %i.f = icmp sgt i32 %2, 0
  %i.g = icmp ne ptr %i.b, %i.e
  %i.h = select i1 %i.f, i1 %i.g, i1 false
  br i1 %i.h, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %.not69 = icmp eq ptr %4, null                  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.y
  %.05474 = phi i32 [ %1, %.lr.ph ], [ %.1, %bb.y ] ; 8 uses
  %.05572 = phi i32 [ 0, %.lr.ph ], [ %.156, %bb.y ] ; 9 uses
  %.05771 = phi ptr [ %i.b, %.lr.ph ], [ %i.bo, %bb.y ] ; 9 uses
  %i.i = getelementptr i8, ptr %.05771, i64 32
  %.057.val = load ptr, ptr %i.i, align 8, !tbaa !11
  %.057.val.val = load i64, ptr %.057.val, align 8, !tbaa !17
  %i.j = and i64 %.057.val.val, 128
  %.not64.not = icmp eq i64 %i.j, 0
  br i1 %.not64.not, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %.05771, align 8, !tbaa !19
  %.not65 = icmp eq ptr %i.k, null
  br i1 %.not65, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp sgt i32 %.05474, 0
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = add nsw i32 %.05474, -1
  br label %bb.y

bb.g:                                             ; preds = %bb.e
  %i.n = tail call ptr @rb_vm_frame_method_entry_unchecked(ptr noundef nonnull %.05771) #7 ; 3 uses
  %.not68 = icmp eq ptr %i.n, null
  br i1 %.not68, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !128
  %i.q = load i8, ptr %i.p, align 8
  %i.r = and i8 %i.q, 15
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.t = getelementptr i8, ptr %.05771, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !18
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sink86 = phi ptr [ %i.u, %bb.i ], [ %i.n, %bb.h ]
  %i.v = ptrtoint ptr %.sink86 to i64
  %i.w = sext i32 %.05572 to i64
  %i.x = getelementptr [8 x i8], ptr %3, i64 %i.w
  store i64 %i.v, ptr %i.x, align 8, !tbaa !17
  br i1 %.not69, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = load ptr, ptr %.05771, align 8, !tbaa !19 ; 5 uses
  %i.z = getelementptr i8, ptr %.05771, i64 16
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
  %1 = trunc i64 %i.g to i32
  %2 = lshr i32 %1, 12
  %3 = and i32 %2, 15
  switch i32 %3, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i [
    i32 7, label %frame2iseq.exit.thread4
    i32 6, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.f, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !128  ; 2 uses
  %i.l = load i8, ptr %i.k, align 8
  %i.m = and i8 %i.l, 15
  %cond.i = icmp eq i8 %i.m, 0
  br i1 %cond.i, label %frame2iseq.exit, label %frame2iseq.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.b
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.43) #20
  unreachable

frame2iseq.exit:                                  ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !46   ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %frame2iseq.exit.thread, label %frame2iseq.exit.thread4

frame2iseq.exit.thread4:                          ; preds = %bb.c, %frame2iseq.exit
  %.1.i7 = phi ptr [ %i.o, %frame2iseq.exit ], [ %i.f, %bb.c ]
  %i.p = tail call i64 @rb_iseq_path(ptr noundef nonnull %.1.i7) #7
  br label %frame2iseq.exit.thread

frame2iseq.exit.thread:                           ; preds = %bb.d, %bb.a, %frame2iseq.exit, %frame2iseq.exit.thread4
  %i.q = phi i64 [ %i.p, %frame2iseq.exit.thread4 ], [ 4, %frame2iseq.exit ], [ 4, %bb.a ], [ 4, %bb.d ]
  ret i64 %i.q
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
  %i.l = and i8 %i.k, 15
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
  %1 = trunc i64 %i.p to i32
  %2 = lshr i32 %1, 12
  %3 = and i32 %2, 15
  switch i32 %3, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i [
    i32 7, label %frame2iseq.exit.thread13
    i32 6, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr %i.o, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !128  ; 2 uses
  %i.u = load i8, ptr %i.t, align 8
  %i.v = and i8 %i.u, 15
  %cond.i = icmp eq i8 %i.v, 0
  br i1 %cond.i, label %frame2iseq.exit, label %frame2iseq.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.b, %bb.e, %rbimpl_RB_TYPE_P_fastpath.exit.i7
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.43) #20
  unreachable

frame2iseq.exit:                                  ; preds = %bb.f
  %i.w = getelementptr i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !46   ; 2 uses
  %.not5 = icmp eq ptr %i.x, null
  br i1 %.not5, label %frame2iseq.exit.thread, label %frame2iseq.exit.thread13

frame2iseq.exit.thread13:                         ; preds = %bb.e, %frame2iseq.exit
  %.1.i816 = phi ptr [ %i.x, %frame2iseq.exit ], [ %i.o, %bb.e ]
  %i.y = tail call i64 @rb_iseq_realpath(ptr noundef nonnull %.1.i816) #7
  br label %frame2iseq.exit.thread

frame2iseq.exit.thread:                           ; preds = %cframe.exit, %bb.d, %bb.a, %bb.f, %frame2iseq.exit.thread13, %frame2iseq.exit
  %.0 = phi i64 [ 4, %bb.a ], [ %i.y, %frame2iseq.exit.thread13 ], [ 4, %frame2iseq.exit ], [ 4, %bb.f ], [ %.pre, %bb.d ], [ %i.m, %cframe.exit ]
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
  %1 = trunc i64 %i.g to i32
  %2 = lshr i32 %1, 12
  %3 = and i32 %2, 15
  switch i32 %3, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i [
    i32 7, label %frame2iseq.exit.thread4
    i32 6, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.f, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !128  ; 2 uses
  %i.l = load i8, ptr %i.k, align 8
  %i.m = and i8 %i.l, 15
  %cond.i = icmp eq i8 %i.m, 0
  br i1 %cond.i, label %frame2iseq.exit, label %frame2iseq.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.b
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.43) #20
  unreachable

frame2iseq.exit:                                  ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !46   ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %frame2iseq.exit.thread, label %frame2iseq.exit.thread4

frame2iseq.exit.thread4:                          ; preds = %bb.c, %frame2iseq.exit
  %.1.i7 = phi ptr [ %i.o, %frame2iseq.exit ], [ %i.f, %bb.c ]
  %i.p = tail call i64 @rb_iseq_label(ptr noundef nonnull %.1.i7) #7
  br label %frame2iseq.exit.thread

frame2iseq.exit.thread:                           ; preds = %bb.d, %bb.a, %frame2iseq.exit, %frame2iseq.exit.thread4
  %i.q = phi i64 [ %i.p, %frame2iseq.exit.thread4 ], [ 4, %frame2iseq.exit ], [ 4, %bb.a ], [ 4, %bb.d ]
  ret i64 %i.q
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
  %1 = trunc i64 %i.g to i32
  %2 = lshr i32 %1, 12
  %3 = and i32 %2, 15
  switch i32 %3, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i [
    i32 7, label %frame2iseq.exit.thread4
    i32 6, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.f, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !128  ; 2 uses
  %i.l = load i8, ptr %i.k, align 8
  %i.m = and i8 %i.l, 15
  %cond.i = icmp eq i8 %i.m, 0
  br i1 %cond.i, label %frame2iseq.exit, label %frame2iseq.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.b
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.43) #20
  unreachable

frame2iseq.exit:                                  ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !46   ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %frame2iseq.exit.thread, label %frame2iseq.exit.thread4

frame2iseq.exit.thread4:                          ; preds = %bb.c, %frame2iseq.exit
  %.1.i7 = phi ptr [ %i.o, %frame2iseq.exit ], [ %i.f, %bb.c ]
  %i.p = tail call i64 @rb_iseq_base_label(ptr noundef nonnull %.1.i7) #7
  br label %frame2iseq.exit.thread

frame2iseq.exit.thread:                           ; preds = %bb.d, %bb.a, %frame2iseq.exit, %frame2iseq.exit.thread4
  %i.q = phi i64 [ %i.p, %frame2iseq.exit.thread4 ], [ 4, %frame2iseq.exit ], [ 4, %bb.a ], [ 4, %bb.d ]
  ret i64 %i.q
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
  %i.i = icmp eq i64 %i.h, 26
  br i1 %i.i, label %bb.c, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %1 = trunc i64 %i.g to i32
  %2 = lshr i32 %1, 12
  %3 = and i32 %2, 15
  switch i32 %3, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i [
    i32 7, label %frame2iseq.exit.thread4
    i32 6, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.f, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !128  ; 2 uses
  %i.l = load i8, ptr %i.k, align 8
  %i.m = and i8 %i.l, 15
  %cond.i = icmp eq i8 %i.m, 0
  br i1 %cond.i, label %frame2iseq.exit, label %frame2iseq.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.b
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.43) #20
  unreachable

frame2iseq.exit:                                  ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !46   ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %frame2iseq.exit.thread, label %frame2iseq.exit.thread4

frame2iseq.exit.thread4:                          ; preds = %bb.c, %frame2iseq.exit
  %.1.i7 = phi ptr [ %i.o, %frame2iseq.exit ], [ %i.f, %bb.c ]
  %i.p = tail call i64 @rb_iseq_first_lineno(ptr noundef nonnull %.1.i7) #7
  br label %frame2iseq.exit.thread

frame2iseq.exit.thread:                           ; preds = %bb.d, %bb.a, %frame2iseq.exit, %frame2iseq.exit.thread4
  %i.q = phi i64 [ %i.p, %frame2iseq.exit.thread4 ], [ 4, %frame2iseq.exit ], [ 4, %bb.a ], [ 4, %bb.d ]
  ret i64 %i.q
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
  %i.l = and i8 %i.k, 15
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
  %1 = trunc i64 %i.q to i32
  %2 = lshr i32 %1, 12
  %3 = and i32 %2, 15
  switch i32 %3, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i [
    i32 7, label %frame2iseq.exit.thread17
    i32 6, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %i.p, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !128  ; 2 uses
  %i.v = load i8, ptr %i.u, align 8
  %i.w = and i8 %i.v, 15
  %cond.i = icmp eq i8 %i.w, 0
  br i1 %cond.i, label %frame2iseq.exit, label %frame2iseq.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.b, %bb.d, %rbimpl_RB_TYPE_P_fastpath.exit.i11
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.43) #20
  unreachable

frame2iseq.exit:                                  ; preds = %bb.e
  %i.x = getelementptr i8, ptr %i.u, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !46   ; 2 uses
  %.not9 = icmp eq ptr %i.y, null
  br i1 %.not9, label %frame2iseq.exit.thread, label %frame2iseq.exit.thread17

frame2iseq.exit.thread17:                         ; preds = %bb.d, %frame2iseq.exit
  %.1.i1220 = phi ptr [ %i.y, %frame2iseq.exit ], [ %i.p, %bb.d ]
  %i.z = tail call i64 @rb_iseq_method_name(ptr noundef nonnull %.1.i1220) #7
  br label %frame2iseq.exit.thread

frame2iseq.exit.thread:                           ; preds = %bb.a, %bb.e, %frame2iseq.exit.thread17, %frame2iseq.exit, %cframe.exit
  %.0 = phi i64 [ %..i10, %cframe.exit ], [ %i.z, %frame2iseq.exit.thread17 ], [ 4, %frame2iseq.exit ], [ 4, %bb.e ], [ 4, %bb.a ]
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
  %.not44 = icmp eq i64 %0, 4
  br i1 %.not44, label %rb_profile_frame_base_label.exit, label %bb.b

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
  %i.k = and i8 %i.j, 15
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
  %1 = trunc i64 %i.ae to i32
  %2 = lshr i32 %1, 12
  %3 = and i32 %2, 15
  switch i32 %3, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i [
    i32 7, label %frame2iseq.exit.thread4.i
    i32 6, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr i8, ptr %i.ad, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !128 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 8
  %i.ak = and i8 %i.aj, 15
  %cond.i.i = icmp eq i8 %i.ak, 0
  br i1 %cond.i.i, label %frame2iseq.exit.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i27

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %bb.b, %bb.f, %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.43) #20
  unreachable

frame2iseq.exit.i:                                ; preds = %bb.g
  %i.al = getelementptr i8, ptr %i.ai, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !46 ; 2 uses
  %.not.i26 = icmp eq ptr %i.am, null
  br i1 %.not.i26, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i27, label %frame2iseq.exit.thread4.i

frame2iseq.exit.thread4.i:                        ; preds = %frame2iseq.exit.i, %bb.f
  %.1.i7.i = phi ptr [ %i.am, %frame2iseq.exit.i ], [ %i.ad, %bb.f ]
  %i.an = tail call i64 @rb_iseq_label(ptr noundef nonnull %.1.i7.i) #7
  %.pre = load i64, ptr %i.ad, align 8, !tbaa !44
  br label %rbimpl_RB_TYPE_P_fastpath.exit.i.i27

rbimpl_RB_TYPE_P_fastpath.exit.i.i27:             ; preds = %frame2iseq.exit.thread4.i, %frame2iseq.exit.i, %bb.g
  %i.ao = phi i64 [ %i.ae, %bb.g ], [ %i.ae, %frame2iseq.exit.i ], [ %.pre, %frame2iseq.exit.thread4.i ] ; 2 uses
  %.ph = phi i64 [ 4, %bb.g ], [ 4, %frame2iseq.exit.i ], [ %i.an, %frame2iseq.exit.thread4.i ] ; 3 uses
  %i.ap = and i64 %i.ao, 31
  %i.aq = icmp eq i64 %i.ap, 26
  br i1 %i.aq, label %bb.h, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i28

bb.h:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i27
  %4 = trunc i64 %i.ao to i32
  %5 = lshr i32 %4, 12
  %6 = and i32 %5, 15
  switch i32 %6, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i28 [
    i32 7, label %frame2iseq.exit.thread4.i32
    i32 6, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr i8, ptr %i.ad, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !128 ; 2 uses
  %i.at = load i8, ptr %i.as, align 8
  %i.au = and i8 %i.at, 15
  %cond.i.i29 = icmp eq i8 %i.au, 0
  br i1 %cond.i.i29, label %frame2iseq.exit.i30, label %rb_profile_frame_base_label.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i28:      ; preds = %bb.h, %rbimpl_RB_TYPE_P_fastpath.exit.i.i27
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.43) #20
  unreachable

frame2iseq.exit.i30:                              ; preds = %bb.i
  %i.av = getelementptr i8, ptr %i.as, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !46 ; 2 uses
  %.not.i31 = icmp eq ptr %i.aw, null
  br i1 %.not.i31, label %rb_profile_frame_base_label.exit, label %frame2iseq.exit.thread4.i32

frame2iseq.exit.thread4.i32:                      ; preds = %frame2iseq.exit.i30, %bb.h
  %.1.i7.i33 = phi ptr [ %i.aw, %frame2iseq.exit.i30 ], [ %i.ad, %bb.h ]
  %i.ax = tail call i64 @rb_iseq_base_label(ptr noundef nonnull %.1.i7.i33) #7
  br label %rb_profile_frame_base_label.exit

rb_profile_frame_base_label.exit:                 ; preds = %bb.a, %bb.i, %frame2iseq.exit.i30, %frame2iseq.exit.thread4.i32
  %i.ay = phi i64 [ %.ph, %frame2iseq.exit.thread4.i32 ], [ %.ph, %frame2iseq.exit.i30 ], [ %.ph, %bb.i ], [ 4, %bb.a ] ; 3 uses
  %i.az = phi i64 [ %i.ax, %frame2iseq.exit.thread4.i32 ], [ 4, %frame2iseq.exit.i30 ], [ 4, %bb.i ], [ 4, %bb.a ] ; 2 uses
  %i.ba = tail call i64 @rb_profile_frame_method_name(i64 noundef %0) ; 3 uses
  %.not.i.i34 = icmp eq i64 %i.ba, 4
  br i1 %.not.i.i34, label %qualified_method_name.exit, label %bb.j

bb.j:                                             ; preds = %rb_profile_frame_base_label.exit
  %i.bb = tail call i64 @rb_profile_frame_classpath(i64 noundef %0) ; 2 uses
  %i.bc = and i64 %0, 7
  %.not = icmp eq i64 %i.bc, 0
  br i1 %.not, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i, label %rb_profile_frame_singleton_method_p.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i:           ; preds = %bb.j
  %i.bd = inttoptr i64 %0 to ptr                  ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !44
  %i.bf = and i64 %i.be, 61471
  %or.cond.i.i.i.i = icmp eq i64 %i.bf, 24602
  br i1 %or.cond.i.i.i.i, label %frame2klass.exit.i.i.i, label %rb_profile_frame_singleton_method_p.exit.i.i

frame2klass.exit.i.i.i:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i
  %i.bg = getelementptr i8, ptr %i.bd, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !175 ; 3 uses
  switch i64 %i.bh, label %bb.k [
    i64 0, label %rb_profile_frame_singleton_method_p.exit.i.i
    i64 4, label %rb_profile_frame_singleton_method_p.exit.i.i
  ]

bb.k:                                             ; preds = %frame2klass.exit.i.i.i
  %i.bi = and i64 %i.bh, 7
  %.not.i.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i4.i.i.i, label %rb_profile_frame_singleton_method_p.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i4.i.i.i:          ; preds = %bb.k
  %i.bj = inttoptr i64 %i.bh to ptr
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !44
  %.fr10.i.i.i = freeze i64 %i.bk                 ; 2 uses
  %i.bl = and i64 %.fr10.i.i.i, 31
  %i.bm = icmp eq i64 %i.bl, 2
  br i1 %i.bm, label %RCLASS_SINGLETON_P.exit.i.i.i, label %rb_profile_frame_singleton_method_p.exit.i.i

RCLASS_SINGLETON_P.exit.i.i.i:                    ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i4.i.i.i
  %i.bn = and i64 %.fr10.i.i.i, 8192
  %.not11.i.not.i.i = icmp eq i64 %i.bn, 0
  %i.bo = select i1 %.not11.i.not.i.i, ptr @.str.46, ptr @.str.45
  br label %rb_profile_frame_singleton_method_p.exit.i.i

rb_profile_frame_singleton_method_p.exit.i.i:     ; preds = %RCLASS_SINGLETON_P.exit.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i4.i.i.i, %bb.k, %frame2klass.exit.i.i.i, %frame2klass.exit.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i, %bb.j
  %i.bp = phi ptr [ @.str.46, %frame2klass.exit.i.i.i ], [ @.str.46, %frame2klass.exit.i.i.i ], [ @.str.46, %bb.j ], [ @.str.46, %bb.k ], [ %i.bo, %RCLASS_SINGLETON_P.exit.i.i.i ], [ @.str.46, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i ], [ @.str.46, %rbimpl_RB_TYPE_P_fastpath.exit.i4.i.i.i ]
  %.not11.i.i = icmp eq i64 %i.bb, 4
  br i1 %.not11.i.i, label %rb_profile_frame_qualified_method_name.exit, label %bb.l

bb.l:                                             ; preds = %rb_profile_frame_singleton_method_p.exit.i.i
  %i.bq = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.44, i64 noundef %i.bb, ptr noundef nonnull %i.bp, i64 noundef %i.ba) #7
  br label %rb_profile_frame_qualified_method_name.exit

rb_profile_frame_qualified_method_name.exit:      ; preds = %rb_profile_frame_singleton_method_p.exit.i.i, %bb.l
  %.1.i.i = phi i64 [ %i.ba, %rb_profile_frame_singleton_method_p.exit.i.i ], [ %i.bq, %bb.l ] ; 3 uses
  %i.br = icmp eq i64 %.1.i.i, 4
  %i.bs = icmp eq i64 %i.az, %.1.i.i
  %or.cond = select i1 %i.br, i1 true, i1 %i.bs
  br i1 %or.cond, label %qualified_method_name.exit, label %bb.m

bb.m:                                             ; preds = %rb_profile_frame_qualified_method_name.exit
  %i.bt = inttoptr i64 %i.ay to ptr               ; 3 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !176
  %i.bw = inttoptr i64 %i.az to ptr
  %i.bx = getelementptr i8, ptr %i.bw, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !176
  %i.bz = sub i64 %i.bv, %i.by                    ; 3 uses
  %i.ca = add i64 %i.bz, 2147483648
  %.not.i35 = icmp ult i64 %i.ca, 4294967296
  br i1 %.not.i35, label %rb_long2int_inline.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @rb_out_of_int(i64 noundef %i.bz) #20
  unreachable

rb_long2int_inline.exit:                          ; preds = %bb.m
  %i.cb = trunc nsw i64 %i.bz to i32
  %i.cc = load i64, ptr %i.bt, align 8, !tbaa !44
  %i.cd = and i64 %i.cc, 8192
  %.not.i36 = icmp eq i64 %i.cd, 0
  %i.ce = getelementptr i8, ptr %i.bt, i64 24     ; 2 uses
  br i1 %.not.i36, label %RSTRING_PTR.exit, label %bb.o

bb.o:                                             ; preds = %rb_long2int_inline.exit
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !46
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %rb_long2int_inline.exit, %bb.o
  %i.cg = phi ptr [ %i.cf, %bb.o ], [ %i.ce, %rb_long2int_inline.exit ]
  %i.ch = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.19, i32 noundef %i.cb, ptr noundef %i.cg, i64 noundef %.1.i.i) #7
  br label %qualified_method_name.exit

qualified_method_name.exit:                       ; preds = %rb_profile_frame_base_label.exit, %bb.e, %rb_profile_frame_singleton_method_p.exit.i, %cframe.exit, %RSTRING_PTR.exit, %rb_profile_frame_qualified_method_name.exit
  %.1 = phi i64 [ %i.ay, %rb_profile_frame_qualified_method_name.exit ], [ %i.ch, %RSTRING_PTR.exit ], [ %i.n, %rb_profile_frame_singleton_method_p.exit.i ], [ %i.ac, %bb.e ], [ 4, %cframe.exit ], [ %i.ay, %rb_profile_frame_base_label.exit ]
  ret i64 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

declare i32 @rb_iseq_line_no(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @rb_iseq_node_id(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @location_mark(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !178
  tail call void @rb_gc_mark_movable(i64 noundef %i.b) #7
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @location_ref_update(ptr noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !178
  %i.c = tail call i64 @rb_gc_location(i64 noundef %i.b) #7
  store i64 %i.c, ptr %i.a, align 8, !tbaa !178
  ret void
}

declare void @rb_gc_mark_movable(i64 noundef) local_unnamed_addr #2

declare i64 @rb_gc_location(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @backtrace_mark(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !83     ; 2 uses
  %i.b = sext i32 %i.a to i64
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %location_mark_entry.exit
  %.08 = phi i64 [ 0, %.lr.ph ], [ %i.j, %location_mark_entry.exit ] ; 2 uses
  %i.d = getelementptr [24 x i8], ptr %i.c, i64 %.08 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !97
  %i.f = ptrtoint ptr %i.e to i64
  tail call void @rb_gc_mark(i64 noundef %i.f) #7
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !66   ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %location_mark_entry.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = ptrtoint ptr %i.h to i64
  tail call void @rb_gc_mark_movable(i64 noundef %i.i) #7
  br label %location_mark_entry.exit

location_mark_entry.exit:                         ; preds = %bb.b, %bb.c
  %i.j = add nuw i64 %.08, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !179

._crit_edge:                                      ; preds = %location_mark_entry.exit, %bb.a
  %i.k = getelementptr i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !91
  tail call void @rb_gc_mark_movable(i64 noundef %i.l) #7
  %i.m = getelementptr i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !95
  tail call void @rb_gc_mark_movable(i64 noundef %i.n) #7
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
end_hunk_0
