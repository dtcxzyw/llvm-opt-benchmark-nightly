Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/gtk?download=true
inline.NumInlined: 219
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@dt_gui_get_scroll_deltas:bb.a
  %i.a = tail call i32 @gdk_event_get_pointer_emulated(ptr noundef %0) #16
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !68
  switch i32 %i.c, label %bb.s [
    i32 2, label %bb.c
    i32 3, label %bb.e
    i32 0, label %bb.g
    i32 1, label %bb.j
    i32 4, label %bb.m
  ]

bb.c:                                             ; preds = %bb.b
  %.not45 = icmp eq ptr %1, null
  br i1 %.not45, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  store double -1.000000e+00, ptr %1, align 8, !tbaa !69
  %.not46 = icmp eq ptr %2, null
  br i1 %.not46, label %bb.s, label %.sink.split

bb.e:                                             ; preds = %bb.b
  %.not43 = icmp eq ptr %1, null
  br i1 %.not43, label %bb.s, label %bb.f

bb.f:                                             ; preds = %bb.e
  store double 1.000000e+00, ptr %1, align 8, !tbaa !69
  %.not44 = icmp eq ptr %2, null
  br i1 %.not44, label %bb.s, label %.sink.split

bb.g:                                             ; preds = %bb.b
  %.not41 = icmp eq ptr %2, null
  br i1 %.not41, label %bb.s, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not42 = icmp eq ptr %1, null
  br i1 %.not42, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  store double 0.000000e+00, ptr %1, align 8, !tbaa !69
  br label %.sink.split

bb.j:                                             ; preds = %bb.b
  %.not39 = icmp eq ptr %2, null
  br i1 %.not39, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not40 = icmp eq ptr %1, null
  br i1 %.not40, label %.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  store double 0.000000e+00, ptr %1, align 8, !tbaa !69
  br label %.sink.split

bb.m:                                             ; preds = %bb.b
  %.not36 = icmp eq ptr %1, null                  ; 2 uses
  br i1 %.not36, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load double, ptr %i.d, align 8, !tbaa !70 ; 2 uses
  %i.f = fcmp reassoc nsz arcp contract afn une double %i.e, 0.000000e+00
  br i1 %i.f, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.not37 = icmp eq ptr %2, null
  br i1 %.not37, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load double, ptr %i.g, align 8, !tbaa !71
  %i.i = fcmp reassoc nsz arcp contract afn une double %i.h, 0.000000e+00
  br i1 %i.i, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  br i1 %.not36, label %.thread47, label %.thread49

.thread49:                                        ; preds = %bb.q
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load double, ptr %i.j, align 8, !tbaa !70
  store double %i.k, ptr %1, align 8, !tbaa !69
  br label %.thread47

bb.r:                                             ; preds = %bb.n
  store double %i.e, ptr %1, align 8, !tbaa !69
  %.not38 = icmp eq ptr %2, null
  br i1 %.not38, label %bb.s, label %.thread47

.thread47:                                        ; preds = %bb.q, %.thread49, %bb.r
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load double, ptr %i.l, align 8, !tbaa !71
  br label %.sink.split

.sink.split:                                      ; preds = %bb.k, %bb.l, %bb.h, %bb.i, %bb.f, %bb.d, %.thread47
  %.sink = phi double [ 0.000000e+00, %bb.f ], [ -1.000000e+00, %bb.h ], [ %i.m, %.thread47 ], [ 0.000000e+00, %bb.d ], [ -1.000000e+00, %bb.i ], [ 1.000000e+00, %bb.l ], [ 1.000000e+00, %bb.k ]
  store double %.sink, ptr %2, align 8, !tbaa !69
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.c, %bb.e, %bb.g, %bb.j, %bb.p, %bb.o, %bb.b, %bb.d, %bb.f, %bb.r, %bb.a
  %.029 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.o ], [ 0, %bb.c ], [ 1, %bb.d ], [ 0, %bb.e ], [ 0, %bb.p ], [ 0, %bb.g ], [ 1, %bb.r ], [ 0, %bb.j ], [ 1, %bb.f ], [ 1, %.sink.split ]
  ret i32 %.029
}

declare i32 @gdk_event_get_pointer_emulated(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @dt_gui_get_scroll_unit_deltas(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @gdk_event_get_pointer_emulated(ptr noundef %0) #16
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.y

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !68
  switch i32 %i.c, label %bb.y [
    i32 2, label %bb.c
    i32 3, label %bb.f
    i32 0, label %bb.i
    i32 1, label %bb.m
    i32 4, label %bb.q
  ]

bb.c:                                             ; preds = %bb.b
  %.not56 = icmp eq ptr %1, null
  br i1 %.not56, label %bb.y, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 -1, ptr %1, align 4, !tbaa !72
  %.not57 = icmp eq ptr %2, null
  br i1 %.not57, label %bb.y, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %2, align 4, !tbaa !72
  br label %bb.y

bb.f:                                             ; preds = %bb.b
  %.not54 = icmp eq ptr %1, null
  br i1 %.not54, label %bb.y, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %1, align 4, !tbaa !72
  %.not55 = icmp eq ptr %2, null
  br i1 %.not55, label %bb.y, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %2, align 4, !tbaa !72
  br label %bb.y

bb.i:                                             ; preds = %bb.b
  %.not52 = icmp eq ptr %2, null
  br i1 %.not52, label %bb.y, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not53 = icmp eq ptr %1, null
  br i1 %.not53, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %1, align 4, !tbaa !72
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store i32 -1, ptr %2, align 4, !tbaa !72
  br label %bb.y

bb.m:                                             ; preds = %bb.b
  %.not50 = icmp eq ptr %2, null
  br i1 %.not50, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not51 = icmp eq ptr %1, null
  br i1 %.not51, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %1, align 4, !tbaa !72
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store i32 1, ptr %2, align 4, !tbaa !72
  br label %bb.y

bb.q:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i8, ptr %i.d, align 8
  %i.f = and i8 %i.e, 1
  %.not48 = icmp eq i8 %i.f, 0
  br i1 %.not48, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store double 0.000000e+00, ptr @dt_gui_get_scroll_unit_deltas.acc_y, align 8, !tbaa !69
  store double 0.000000e+00, ptr @dt_gui_get_scroll_unit_deltas.acc_x, align 8, !tbaa !69
  br label %bb.y

bb.s:                                             ; preds = %bb.q
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load double, ptr %i.g, align 8, !tbaa !70
  %i.i = load double, ptr @dt_gui_get_scroll_unit_deltas.acc_x, align 8, !tbaa !69
  %i.j = fadd reassoc nsz arcp contract afn double %i.i, %i.h ; 4 uses
  store double %i.j, ptr @dt_gui_get_scroll_unit_deltas.acc_x, align 8, !tbaa !69
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = load double, ptr %i.k, align 8, !tbaa !71
  %i.m = load double, ptr @dt_gui_get_scroll_unit_deltas.acc_y, align 8, !tbaa !69
  %i.n = fadd reassoc nsz arcp contract afn double %i.m, %i.l ; 4 uses
  store double %i.n, ptr @dt_gui_get_scroll_unit_deltas.acc_y, align 8, !tbaa !69
  %i.o = tail call reassoc nsz arcp contract afn double @llvm.trunc.f64(double %i.j) ; 2 uses
  %i.p = tail call reassoc nsz arcp contract afn double @llvm.trunc.f64(double %i.n) ; 2 uses
  %i.q = fcmp reassoc nsz arcp contract afn une double %i.o, 0.000000e+00 ; 2 uses
  %i.r = fcmp reassoc nsz arcp contract afn une double %i.p, 0.000000e+00 ; 2 uses
  %or.cond = select i1 %i.q, i1 true, i1 %i.r
  br i1 %or.cond, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.s = fsub reassoc nsz arcp contract afn double %i.j, %i.o
  store double %i.s, ptr @dt_gui_get_scroll_unit_deltas.acc_x, align 8, !tbaa !69
  %i.t = fsub reassoc nsz arcp contract afn double %i.n, %i.p
  store double %i.t, ptr @dt_gui_get_scroll_unit_deltas.acc_y, align 8, !tbaa !69
  %i.u = icmp ne ptr %1, null                     ; 2 uses
  %or.cond3 = and i1 %i.u, %i.q
  %i.v = icmp ne ptr %2, null                     ; 2 uses
  %or.cond5 = select i1 %i.v, i1 %i.r, i1 false
  %or.cond58 = select i1 %or.cond3, i1 true, i1 %or.cond5
  br i1 %or.cond58, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  br i1 %i.u, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.w = fptosi double %i.j to i32
  store i32 %i.w, ptr %1, align 4, !tbaa !72
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  br i1 %i.v, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.x = fptosi double %i.n to i32
  store i32 %i.x, ptr %2, align 4, !tbaa !72
  br label %bb.y

bb.y:                                             ; preds = %bb.r, %bb.c, %bb.f, %bb.l, %bb.i, %bb.p, %bb.m, %bb.s, %bb.b, %bb.e, %bb.d, %bb.h, %bb.g, %bb.t, %bb.x, %bb.w, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.s ], [ 0, %bb.c ], [ 1, %bb.d ], [ 0, %bb.f ], [ 1, %bb.l ], [ 0, %bb.i ], [ 1, %bb.p ], [ 0, %bb.m ], [ 0, %bb.r ], [ 1, %bb.g ], [ 0, %bb.t ], [ 1, %bb.e ], [ 1, %bb.h ], [ 1, %bb.x ], [ 1, %bb.w ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @dt_gui_get_scroll_delta(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @gdk_event_get_pointer_emulated(ptr noundef %0) #16
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %dt_gui_get_scroll_deltas.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !68
  switch i32 %i.c, label %dt_gui_get_scroll_deltas.exit [
    i32 2, label %.sink.split.i
    i32 3, label %bb.d
    i32 0, label %.sink.split.i
    i32 1, label %bb.d
    i32 4, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load double, ptr %i.d, align 8, !tbaa !70 ; 2 uses
  %i.f = fcmp reassoc nsz arcp contract afn une double %i.e, 0.000000e+00
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !71 ; 2 uses
  %i.g = fcmp reassoc nsz arcp contract afn une double %.pre, 0.000000e+00
  %or.cond = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond, label %.thread47.i, label %dt_gui_get_scroll_deltas.exit

.thread47.i:                                      ; preds = %bb.c
  %i.h = fadd reassoc nsz arcp contract afn double %.pre, %i.e
  br label %bb.d

.sink.split.i:                                    ; preds = %bb.b, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.b, %.thread47.i, %.sink.split.i
  %.2.ph = phi double [ -1.000000e+00, %.sink.split.i ], [ %i.h, %.thread47.i ], [ 1.000000e+00, %bb.b ], [ 1.000000e+00, %bb.b ]
  store double %.2.ph, ptr %1, align 8, !tbaa !69
  br label %dt_gui_get_scroll_deltas.exit

dt_gui_get_scroll_deltas.exit:                    ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @dt_gui_get_scroll_unit_delta(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @gdk_event_get_pointer_emulated(ptr noundef %0) #16
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %dt_gui_get_scroll_unit_deltas.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !68
  switch i32 %i.c, label %dt_gui_get_scroll_unit_deltas.exit [
    i32 2, label %bb.j
    i32 3, label %bb.c
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 4, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  br label %bb.j

bb.f:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i8, ptr %i.d, align 8
  %i.f = and i8 %i.e, 1
  %.not48.i = icmp eq i8 %i.f, 0
  br i1 %.not48.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store double 0.000000e+00, ptr @dt_gui_get_scroll_unit_deltas.acc_y, align 8, !tbaa !69
  store double 0.000000e+00, ptr @dt_gui_get_scroll_unit_deltas.acc_x, align 8, !tbaa !69
  br label %dt_gui_get_scroll_unit_deltas.exit

bb.h:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load double, ptr %i.g, align 8, !tbaa !70
  %i.i = load double, ptr @dt_gui_get_scroll_unit_deltas.acc_x, align 8, !tbaa !69
  %i.j = fadd reassoc nsz arcp contract afn double %i.i, %i.h ; 4 uses
  store double %i.j, ptr @dt_gui_get_scroll_unit_deltas.acc_x, align 8, !tbaa !69
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = load double, ptr %i.k, align 8, !tbaa !71
  %i.m = load double, ptr @dt_gui_get_scroll_unit_deltas.acc_y, align 8, !tbaa !69
  %i.n = fadd reassoc nsz arcp contract afn double %i.m, %i.l ; 4 uses
  store double %i.n, ptr @dt_gui_get_scroll_unit_deltas.acc_y, align 8, !tbaa !69
  %i.o = tail call reassoc nsz arcp contract afn double @llvm.trunc.f64(double %i.j) ; 2 uses
  %i.p = tail call reassoc nsz arcp contract afn double @llvm.trunc.f64(double %i.n) ; 2 uses
  %i.q = fcmp reassoc nsz arcp contract afn une double %i.o, 0.000000e+00
  %i.r = fcmp reassoc nsz arcp contract afn une double %i.p, 0.000000e+00
  %or.cond.i = select i1 %i.q, i1 true, i1 %i.r
  br i1 %or.cond.i, label %bb.i, label %dt_gui_get_scroll_unit_deltas.exit

bb.i:                                             ; preds = %bb.h
  %i.s = fsub reassoc nsz arcp contract afn double %i.j, %i.o
  store double %i.s, ptr @dt_gui_get_scroll_unit_deltas.acc_x, align 8, !tbaa !69
  %i.t = fsub reassoc nsz arcp contract afn double %i.n, %i.p
  store double %i.t, ptr @dt_gui_get_scroll_unit_deltas.acc_y, align 8, !tbaa !69
  %i.u = fptosi double %i.j to i32
  %i.v = fptosi double %i.n to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.i, %bb.c, %bb.d, %bb.e
  %.04.ph = phi i32 [ %i.u, %bb.i ], [ 0, %bb.e ], [ 0, %bb.d ], [ 1, %bb.c ], [ -1, %bb.b ]
  %.03.ph = phi i32 [ %i.v, %bb.i ], [ 1, %bb.e ], [ -1, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %i.w = add nsw i32 %.03.ph, %.04.ph
  store i32 %i.w, ptr %1, align 4, !tbaa !72
  br label %dt_gui_get_scroll_unit_deltas.exit

dt_gui_get_scroll_unit_deltas.exit:               ; preds = %bb.h, %bb.g, %bb.b, %bb.a, %bb.j
  %.0 = phi i32 [ 1, %bb.j ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.g ], [ 0, %bb.h ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @_valid_window_placement(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct._cairo_rectangle_int, align 4 ; 8 uses
  %i.a = tail call ptr @gdk_display_get_default() #16 ; 2 uses
  %i.b = tail call i32 @gdk_display_get_n_monitors(ptr noundef %i.a) #16 ; 2 uses
  %.not43 = icmp sgt i32 %i.b, 0
  br i1 %.not43, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = shl nsw i32 %4, 1                        ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.g = add nsw i32 %2, %0
  %i.h = add nsw i32 %3, %1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.03244 = phi i32 [ 0, %.lr.ph ], [ %i.ab, %bb.e ] ; 2 uses
  %i.i = call ptr @gdk_display_get_monitor(ptr noundef %i.a, i32 noundef %.03244) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @gdk_monitor_get_geometry(ptr noundef %i.i, ptr noundef nonnull %5) #16
  %i.j = load i32, ptr %i.c, align 4, !tbaa !74
  %i.k = sub nsw i32 %i.j, %i.d                   ; 2 uses
  %i.l = load i32, ptr %i.e, align 4, !tbaa !75
  %i.m = sub nsw i32 %i.l, %i.d                   ; 2 uses
  %i.n = icmp slt i32 %i.k, 1
  %i.o = icmp slt i32 %i.m, 1
  %or.cond = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load i32, ptr %i.f, align 4, !tbaa !217
  %i.q = add nsw i32 %i.p, %4                     ; 2 uses
  %i.r = load i32, ptr %5, align 4, !tbaa !76
  %i.s = add nsw i32 %i.r, %4                     ; 2 uses
  %i.t = add nsw i32 %i.s, %i.k
  %i.u = icmp slt i32 %0, %i.t
  %i.v = icmp sgt i32 %i.g, %i.s
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  %i.x = add nsw i32 %i.q, %i.m
  %i.y = icmp slt i32 %1, %i.x
  %i.z = icmp sgt i32 %i.h, %i.q
  %i.aa = select i1 %i.w, i1 %i.y, i1 false
  %or.cond3 = select i1 %i.aa, i1 %i.z, i1 false
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.loopexit

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.ab = add nuw nsw i32 %.03244, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ab, %i.b
  br i1 %exitcond.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.e, %bb.a, %bb.d
  %.not42 = phi i32 [ 1, %bb.d ], [ 0, %bb.a ], [ 0, %bb.e ]
  ret i32 %.not42
}

declare ptr @gdk_display_get_default() local_unnamed_addr #2

declare i32 @gdk_display_get_n_monitors(ptr noundef) local_unnamed_addr #2

declare ptr @gdk_display_get_monitor(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @gdk_monitor_get_geometry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef i32 @dt_gui_gtk_load_config() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct._cairo_rectangle_int, align 8 ; 6 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80   ; 7 uses
  %i.e = tail call i32 @dt_conf_get_int(ptr noundef nonnull @.str.7) #16 ; 2 uses
  %i.f = tail call i32 @dt_conf_get_int(ptr noundef nonnull @.str.8) #16 ; 2 uses
  %i.g = tail call i32 @dt_conf_get_int(ptr noundef nonnull @.str.9) #16
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @dt_conf_get_int(ptr noundef nonnull @.str.9) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi i32 [ %i.i, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  %i.k = tail call i32 @dt_conf_get_int(ptr noundef nonnull @.str.10) #16
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i32 @dt_conf_get_int(ptr noundef nonnull @.str.10) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.n = phi i32 [ %i.m, %bb.d ], [ 0, %bb.c ]    ; 3 uses
  tail call void @gtk_window_resize(ptr noundef %i.d, i32 noundef %i.e, i32 noundef %i.f) #16
  %i.o = tail call ptr @gdk_display_get_default() #16 ; 2 uses
  %i.p = tail call i32 @gdk_display_get_n_monitors(ptr noundef %i.o) #16 ; 2 uses
  %.not43.i = icmp sgt i32 %i.p, 0
  br i1 %.not43.i, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = insertelement <2 x i32> poison, i32 %i.j, i64 0
  %i.s = insertelement <2 x i32> %i.r, i32 %i.n, i64 1
  %i.t = insertelement <2 x i32> poison, i32 %i.e, i64 0
  %i.u = insertelement <2 x i32> %i.t, i32 %i.f, i64 1
  %i.v = add nsw <2 x i32> %i.s, %i.u
  %i.w = insertelement <4 x i32> poison, i32 %i.j, i64 2
  %i.x = insertelement <4 x i32> %i.w, i32 %i.n, i64 3
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph.i
  %.03244.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ao, %bb.h ] ; 2 uses
  %i.y = call ptr @gdk_display_get_monitor(ptr noundef %i.o, i32 noundef %.03244.i) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  call void @gdk_monitor_get_geometry(ptr noundef %i.y, ptr noundef nonnull %0) #16
  %i.z = load <2 x i32>, ptr %i.q, align 8, !tbaa !72 ; 2 uses
  %i.aa = icmp slt <2 x i32> %i.z, splat (i32 49) ; 2 uses
  %i.ab = extractelement <2 x i1> %i.aa, i64 0
  %i.ac = extractelement <2 x i1> %i.aa, i64 1
  %or.cond.i = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = add nsw <2 x i32> %i.z, splat (i32 -48)
  %i.ae = load <2 x i32>, ptr %0, align 8, !tbaa !72
  %i.af = add nsw <2 x i32> %i.ae, splat (i32 24) ; 2 uses
  %i.ag = add nsw <2 x i32> %i.ad, %i.af
  %i.ah = shufflevector <2 x i32> %i.v, <2 x i32> %i.ag, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ai = shufflevector <2 x i32> %i.af, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aj = shufflevector <4 x i32> %i.ai, <4 x i32> %i.x, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ak = icmp sgt <4 x i32> %i.ah, %i.aj
  %i.al = freeze <4 x i1> %i.ak
  %i.am = bitcast <4 x i1> %i.al to i4
  %i.an = icmp eq i4 %i.am, -1
  br i1 %i.an, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  %i.ao = add nuw nsw i32 %.03244.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ao, %i.p
  br i1 %exitcond.not.i, label %.loopexit, label %bb.f

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  call void @gtk_window_move(ptr noundef %i.d, i32 noundef %i.j, i32 noundef %i.n) #16
  br label %bb.j

.loopexit:                                        ; preds = %bb.h, %bb.e
  call void @gtk_window_move(ptr noundef %i.d, i32 noundef 0, i32 noundef 0) #16
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %bb.i
  %i.ap = call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.11) #16
  %.not16 = icmp eq i32 %i.ap, 0
  br i1 %.not16, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @gtk_window_fullscreen(ptr noundef %i.d) #16
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  call void @gtk_window_unfullscreen(ptr noundef %i.d) #16
  %i.aq = call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.12) #16
  %.not17 = icmp eq i32 %i.aq, 0
  br i1 %.not17, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @gtk_window_maximize(ptr noundef %i.d) #16
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @gtk_window_unmaximize(ptr noundef %i.d) #16
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.k
  %i.ar = call i32 @dt_conf_key_exists(ptr noundef nonnull @.str.13) #16
  %.not18 = icmp eq i32 %i.ar, 0
  br i1 %.not18, label %bb.q, label %bb.p
end_hunk_0
begin_hunk_1_@_scrolled:bb.a

bb.e:                                             ; preds = %bb.d
  %i.ak = tail call i32 @gdk_device_get_source(ptr noundef nonnull %i.a) #16
  %i.al = icmp eq i32 %i.ak, 6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.am = phi i1 [ false, %bb.d ], [ %i.al, %bb.e ] ; 2 uses
  %i.an = zext i1 %i.am to i32
  %i.ao = load ptr, ptr @_touchpad, align 8, !tbaa !131
  %i.ap = icmp eq ptr %i.a, %i.ao                 ; 2 uses
  %i.aq = zext i1 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !68
  %i.at = icmp eq i32 %i.as, 4
  br i1 %i.at, label %bb.g, label %.thread120

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.av = load i8, ptr %i.au, align 8
  %i.aw = and i8 %i.av, 1
  %.not75 = icmp eq i8 %i.aw, 0                   ; 2 uses
  %i.ax = icmp eq i32 %i.d, 0
  %or.cond = select i1 %i.ax, i1 true, i1 %i.k
  %or.cond.not = xor i1 %or.cond, true
  %or.cond3 = select i1 %i.am, i1 true, i1 %i.ap
  %or.cond85 = select i1 %or.cond.not, i1 %or.cond3, i1 false
  %i.ay = select i1 %or.cond85, i1 %.not75, i1 false
  br i1 %i.ay, label %bb.h, label %bb.v

bb.h:                                             ; preds = %bb.g
  %i.az = tail call i32 @gdk_event_get_pointer_emulated(ptr noundef nonnull %1) #16
  %.not.i = icmp eq i32 %i.az, 0
  br i1 %.not.i, label %bb.i, label %dt_gui_get_scroll_deltas.exit

bb.i:                                             ; preds = %bb.h
  %i.ba = load i32, ptr %i.ar, align 4, !tbaa !68
  switch i32 %i.ba, label %dt_gui_get_scroll_deltas.exit [
    i32 2, label %.sink.split.i
    i32 3, label %.thread114
    i32 0, label %bb.j
    i32 1, label %bb.k
    i32 4, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  br label %.thread114

bb.k:                                             ; preds = %bb.i
  br label %.thread114

bb.l:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !70 ; 2 uses
  %i.bd = fcmp reassoc nsz arcp contract afn une double %i.bc, 0.000000e+00
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !71 ; 2 uses
  %i.be = fcmp reassoc nsz arcp contract afn une double %.pre, 0.000000e+00
  %or.cond121 = select i1 %i.bd, i1 true, i1 %i.be
  br i1 %or.cond121, label %..thread47.i_crit_edge, label %dt_gui_get_scroll_deltas.exit

.sink.split.i:                                    ; preds = %bb.i
  br label %.thread114

dt_gui_get_scroll_deltas.exit:                    ; preds = %bb.l, %bb.i, %bb.h
  %i.bf = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !104
  %i.bg = and i32 %i.bf, 16384
  %.not78 = icmp eq i32 %i.bg, 0
  br i1 %.not78, label %.critedge, label %bb.m

bb.m:                                             ; preds = %dt_gui_get_scroll_deltas.exit
  br i1 %.not74, label %.thread100, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = tail call ptr @gdk_device_get_name(ptr noundef nonnull %i.a) #16
  %i.bi = tail call i32 @gdk_device_get_source(ptr noundef nonnull %i.a) #16
  br label %.thread100

.thread100:                                       ; preds = %bb.m, %bb.n
  %i.bj = phi ptr [ %i.bh, %bb.n ], [ @.str.212, %bb.m ]
  %i.bk = phi i32 [ %i.bi, %bb.n ], [ -1, %bb.m ]
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.213, ptr noundef %i.bj, i32 noundef %i.bk) #16
  br label %.critedge

..thread47.i_crit_edge:                           ; preds = %bb.l
  %i.bl = fmul reassoc nsz arcp contract afn double %i.bc, 5.000000e+01 ; 2 uses
  %i.bm = fmul reassoc nsz arcp contract afn double %.pre, 5.000000e+01 ; 2 uses
  %i.bn = fcmp reassoc nsz arcp contract afn une double %i.bl, 0.000000e+00
  %i.bo = fcmp reassoc nsz arcp contract afn une double %i.bm, 0.000000e+00
  %or.cond5 = select i1 %i.bn, i1 true, i1 %i.bo
  br i1 %or.cond5, label %.thread114, label %.thread120

.thread114:                                       ; preds = %bb.j, %bb.k, %bb.i, %.sink.split.i, %..thread47.i_crit_edge
  %.092.ph119 = phi double [ %i.bm, %..thread47.i_crit_edge ], [ 0.000000e+00, %bb.i ], [ -5.000000e+01, %bb.j ], [ 5.000000e+01, %bb.k ], [ 0.000000e+00, %.sink.split.i ] ; 3 uses
  %.2.ph118 = phi double [ %i.bl, %..thread47.i_crit_edge ], [ 5.000000e+01, %bb.i ], [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %bb.k ], [ -5.000000e+01, %.sink.split.i ] ; 3 uses
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !132
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !242
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !243
  %i.bu = load i32, ptr %i.e, align 8, !tbaa !16
  %i.bv = and i32 %i.bu, 15
  %i.bw = tail call i32 @dt_view_manager_gesture_pan(ptr noundef %i.bp, double noundef %i.br, double noundef %i.bt, double noundef %.2.ph118, double noundef %.092.ph119, i32 noundef %i.bv) #16
  %.not79 = icmp eq i32 %i.bw, 0
  %i.bx = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !104
  %i.by = and i32 %i.bx, 16384
  %.not80 = icmp eq i32 %i.by, 0                  ; 2 uses
  br i1 %.not79, label %bb.t, label %bb.o

bb.o:                                             ; preds = %.thread114
  br i1 %.not80, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = load double, ptr %i.bq, align 8, !tbaa !242
  %i.ca = load double, ptr %i.bs, align 8, !tbaa !243
  br i1 %.not74, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cb = tail call ptr @gdk_device_get_name(ptr noundef nonnull %i.a) #16
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.cc = phi ptr [ %i.cb, %bb.q ], [ @.str.212, %bb.p ]
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.214, double noundef %i.bz, double noundef %i.ca, double noundef %.2.ph118, double noundef %.092.ph119, ptr noundef %i.cc) #16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  tail call void @gtk_widget_queue_draw(ptr noundef %0) #16
  br label %.critedge

bb.t:                                             ; preds = %.thread114
  br i1 %.not80, label %.thread120, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.215, double noundef %.2.ph118, double noundef %.092.ph119) #16
  br label %.thread120

bb.v:                                             ; preds = %bb.g
  br i1 %.not75, label %bb.w, label %.thread120

bb.w:                                             ; preds = %bb.v
  %i.cd = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !104
  %i.ce = and i32 %i.cd, 16384
  %.not76 = icmp eq i32 %i.ce, 0
  br i1 %.not76, label %.thread120, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %.not74, label %.thread102, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cf = tail call ptr @gdk_device_get_name(ptr noundef nonnull %i.a) #16
  %i.cg = tail call i32 @gdk_device_get_source(ptr noundef nonnull %i.a) #16
  br label %.thread102

.thread102:                                       ; preds = %bb.x, %bb.y
  %i.ch = phi ptr [ %i.cf, %bb.y ], [ @.str.212, %bb.x ]
  %i.ci = phi i32 [ %i.cg, %bb.y ], [ -1, %bb.x ]
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.216, i32 noundef %i.d, i32 noundef %i.l, i32 noundef %i.an, i32 noundef %i.aq, i32 noundef 0, ptr noundef %i.ch, i32 noundef %i.ci) #16
  br label %.thread120

.thread120:                                       ; preds = %bb.f, %bb.u, %bb.t, %..thread47.i_crit_edge, %bb.v, %.thread102, %bb.w
  %i.cj = tail call i32 @gdk_event_get_pointer_emulated(ptr noundef nonnull %1) #16
  %.not.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i, label %bb.z, label %.critedge

bb.z:                                             ; preds = %.thread120
  %i.ck = load i32, ptr %i.ar, align 4, !tbaa !68
  switch i32 %i.ck, label %.critedge [
    i32 2, label %bb.ah
    i32 3, label %bb.aa
    i32 0, label %bb.ab
    i32 1, label %bb.ac
    i32 4, label %bb.ad
  ]

bb.aa:                                            ; preds = %bb.z
  br label %bb.ah

bb.ab:                                            ; preds = %bb.z
  br label %bb.ah

bb.ac:                                            ; preds = %bb.z
  br label %bb.ah

bb.ad:                                            ; preds = %bb.z
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cm = load i8, ptr %i.cl, align 8
  %i.cn = and i8 %i.cm, 1
  %.not48.i.i = icmp eq i8 %i.cn, 0
  br i1 %.not48.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store double 0.000000e+00, ptr @dt_gui_get_scroll_unit_deltas.acc_y, align 8, !tbaa !69
  store double 0.000000e+00, ptr @dt_gui_get_scroll_unit_deltas.acc_x, align 8, !tbaa !69
  br label %.critedge

bb.af:                                            ; preds = %bb.ad
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cp = load double, ptr %i.co, align 8, !tbaa !70
  %i.cq = load double, ptr @dt_gui_get_scroll_unit_deltas.acc_x, align 8, !tbaa !69
  %i.cr = fadd reassoc nsz arcp contract afn double %i.cq, %i.cp ; 4 uses
  store double %i.cr, ptr @dt_gui_get_scroll_unit_deltas.acc_x, align 8, !tbaa !69
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !71
  %i.cu = load double, ptr @dt_gui_get_scroll_unit_deltas.acc_y, align 8, !tbaa !69
  %i.cv = fadd reassoc nsz arcp contract afn double %i.cu, %i.ct ; 4 uses
  store double %i.cv, ptr @dt_gui_get_scroll_unit_deltas.acc_y, align 8, !tbaa !69
  %i.cw = tail call reassoc nsz arcp contract afn double @llvm.trunc.f64(double %i.cr) ; 2 uses
  %i.cx = tail call reassoc nsz arcp contract afn double @llvm.trunc.f64(double %i.cv) ; 2 uses
  %i.cy = fcmp reassoc nsz arcp contract afn une double %i.cw, 0.000000e+00
  %i.cz = fcmp reassoc nsz arcp contract afn une double %i.cx, 0.000000e+00
  %or.cond.i.i = select i1 %i.cy, i1 true, i1 %i.cz
  br i1 %or.cond.i.i, label %bb.ag, label %.critedge

bb.ag:                                            ; preds = %bb.af
  %i.da = fsub reassoc nsz arcp contract afn double %i.cr, %i.cw
  store double %i.da, ptr @dt_gui_get_scroll_unit_deltas.acc_x, align 8, !tbaa !69
  %i.db = fsub reassoc nsz arcp contract afn double %i.cv, %i.cx
  store double %i.db, ptr @dt_gui_get_scroll_unit_deltas.acc_y, align 8, !tbaa !69
  %i.dc = fptosi double %i.cr to i32
  %i.dd = fptosi double %i.cv to i32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ac, %bb.ab, %bb.aa, %bb.z
  %.04.ph.i = phi i32 [ %i.dc, %bb.ag ], [ 0, %bb.ac ], [ 0, %bb.ab ], [ 1, %bb.aa ], [ -1, %bb.z ]
  %.03.ph.i = phi i32 [ %i.dd, %bb.ag ], [ 1, %bb.ac ], [ -1, %bb.ab ], [ 0, %bb.aa ], [ 0, %bb.z ]
  %i.de = add nsw i32 %.03.ph.i, %.04.ph.i        ; 2 uses
  %i.df = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !104
  %i.dg = and i32 %i.df, 16384
  %.not83 = icmp eq i32 %i.dg, 0
  br i1 %.not83, label %._crit_edge, label %bb.ai

._crit_edge:                                      ; preds = %bb.ah
  %.pre107 = lshr i32 %i.de, 31
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.di = load double, ptr %i.dh, align 8, !tbaa !242
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !243
  %.lobit = lshr i32 %i.de, 31                    ; 2 uses
  %i.dl = load i32, ptr %i.e, align 8, !tbaa !16
  br i1 %.not74, label %.thread106, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dm = tail call ptr @gdk_device_get_name(ptr noundef nonnull %i.a) #16
  %i.dn = tail call i32 @gdk_device_get_source(ptr noundef nonnull %i.a) #16
  br label %.thread106

.thread106:                                       ; preds = %bb.ai, %bb.aj
  %i.do = phi ptr [ %i.dm, %bb.aj ], [ @.str.212, %bb.ai ]
  %i.dp = phi i32 [ %i.dn, %bb.aj ], [ -1, %bb.ai ]
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.217, double noundef %i.di, double noundef %i.dk, i32 noundef %.lobit, i32 noundef %i.dl, ptr noundef %i.do, i32 noundef %i.dp) #16
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge, %.thread106
  %.lobit84.pre-phi = phi i32 [ %.pre107, %._crit_edge ], [ %.lobit, %.thread106 ]
  %i.dq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !132
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !242
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.du = load double, ptr %i.dt, align 8, !tbaa !243
  %i.dv = load i32, ptr %i.e, align 8, !tbaa !16
  %i.dw = and i32 %i.dv, 15
  tail call void @dt_view_manager_scrolled(ptr noundef %i.dq, double noundef %i.ds, double noundef %i.du, i32 noundef %.lobit84.pre-phi, i32 noundef %i.dw) #16
  tail call void @gtk_widget_queue_draw(ptr noundef %0) #16
  br label %.critedge

.critedge:                                        ; preds = %bb.af, %bb.ae, %bb.z, %.thread120, %bb.s, %dt_gui_get_scroll_deltas.exit, %.thread100, %bb.ak
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @dt_ui_snapshot(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal void @_scrollbar_changed(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !120
  %i.g = tail call ptr @gtk_range_get_adjustment(ptr noundef %i.f) #16
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !119
  %i.k = tail call ptr @gtk_range_get_adjustment(ptr noundef %i.j) #16
  %i.l = tail call reassoc nsz arcp contract afn double @gtk_adjustment_get_value(ptr noundef %i.g) #16
  %i.m = tail call reassoc nsz arcp contract afn double @gtk_adjustment_get_value(ptr noundef %i.k) #16
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 80), align 8, !tbaa !132
  tail call void @dt_view_manager_scrollbar_changed(ptr noundef %i.n, double noundef %i.l, double noundef %i.m) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare ptr @dt_action_define(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @dt_action_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @_toggle_panel_accel_callback(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146
  %i.c = tail call i32 @g_ascii_strcasecmp(ptr noundef %i.b, ptr noundef nonnull @.str.3) #16
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !77
  %i.f = tail call fastcc i32 @_panel_is_visible(i32 noundef 3)
  %.not33.i = icmp eq i32 %i.f, 0
  %i.g = zext i1 %.not33.i to i32
  tail call void @dt_ui_panel_show(ptr noundef readonly %i.e, i32 noundef 3, i32 noundef %i.g, i32 noundef 1)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !146
  %i.i = tail call i32 @g_ascii_strcasecmp(ptr noundef %i.h, ptr noundef nonnull @.str.4) #16
  %.not3 = icmp eq i32 %i.i, 0
  br i1 %.not3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !77
  %i.l = tail call fastcc i32 @_panel_is_visible(i32 noundef 4)
  %.not.i = icmp eq i32 %i.l, 0
  %i.m = zext i1 %.not.i to i32
  tail call void @dt_ui_panel_show(ptr noundef readonly %i.k, i32 noundef 4, i32 noundef %i.m, i32 noundef 1)
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !146
  %i.o = tail call i32 @g_ascii_strcasecmp(ptr noundef %i.n, ptr noundef nonnull @.str.47) #16
  %.not4 = icmp eq i32 %i.o, 0
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !77   ; 2 uses
  br i1 %.not4, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_panel_toggle(i32 noundef 0, ptr noundef %i.q)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call fastcc void @_panel_toggle(i32 noundef 1, ptr noundef %i.q)
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.f, %bb.b
  ret void
}

declare void @dt_gui_presets_init(...) local_unnamed_addr #2

declare void @gtk_widget_set_app_paintable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @_window_configure(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = load i32, ptr @_window_configure.oldx, align 4, !tbaa !72
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !96
  %.not = icmp eq i32 %i.a, %i.c
  br i1 %.not, label %bb.b, label %dt_gui_get_session_type.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @_window_configure.oldy, align 4, !tbaa !72
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !96
  %.not4 = icmp eq i32 %i.d, %i.f
  br i1 %.not4, label %bb.c, label %dt_gui_get_session_type.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @gdk_display_get_default() #16 ; 3 uses
  %i.h = tail call i64 @gdk_wayland_display_get_type() #16 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %dt_gui_get_session_type.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !86   ; 2 uses
  %.not10.i = icmp eq ptr %i.i, null
  br i1 %.not10.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i64, ptr %i.i, align 8, !tbaa !88
  %i.k = icmp eq i64 %i.j, %i.h
  br i1 %i.k, label %dt_gui_get_session_type.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = tail call i32 @g_type_check_instance_is_a(ptr noundef nonnull %i.g, i64 noundef %i.h) #18
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %dt_gui_get_session_type.exit, label %dt_gui_get_session_type.exit.thread

dt_gui_get_session_type.exit.thread:              ; preds = %bb.e, %bb.f, %bb.b, %bb.a
  tail call void @dt_colorspaces_set_display_profile(i32 noundef 8) #16
  %i.n = load i32, ptr %i.b, align 4, !tbaa !96
  store i32 %i.n, ptr @_window_configure.oldx, align 4, !tbaa !72
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !96
  store i32 %i.p, ptr @_window_configure.oldy, align 4, !tbaa !72
  br label %dt_gui_get_session_type.exit

dt_gui_get_session_type.exit:                     ; preds = %bb.f, %bb.c, %dt_gui_get_session_type.exit.thread
  ret i32 0
}

declare void @g_signal_override_class_handler(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2
end_hunk_1
begin_hunk_2_@_notebook_size_callback:bb.a
  call void @gtk_widget_get_allocation(ptr noundef %i.h, ptr noundef nonnull %5) #16
  %i.i = load i32, ptr %5, align 4, !tbaa !76
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !74
  %i.l = add nsw i32 %i.k, %i.i
  %i.m = load i32, ptr %4, align 4, !tbaa !76
  %i.n = sub i32 %i.l, %i.m                       ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.preheader, label %.loopexit

bb.e:                                             ; preds = %bb.c, %bb.e
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
  %i.q = call ptr @gtk_notebook_get_nth_page(ptr noundef %0, i32 noundef %i.p) #16
  %i.r = call ptr @gtk_notebook_get_tab_label(ptr noundef %0, ptr noundef %i.q) #16 ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv ; 3 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !267
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 0, ptr %i.t, align 8, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @gtk_widget_get_preferred_size(ptr noundef %i.r, ptr noundef null, ptr noundef nonnull %3) #16
  %i.u = load i32, ptr %3, align 4, !tbaa !270
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 %i.u, ptr %i.v, align 4, !tbaa !271
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %exitcond.not, label %bb.d, label %bb.e

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.w = call i32 @gtk_distribute_natural_allocation(i32 noundef %i.n, i32 noundef %i.a, ptr noundef nonnull %i.d) #16 ; 0 uses
  br label %.lr.ph

.lr.ph49.preheader:                               ; preds = %.lr.ph
  call void @gtk_widget_size_allocate(ptr noundef %0, ptr noundef %1) #16
  %wide.trip.count59 = zext nneg i32 %i.a to i64
  br label %.lr.ph49

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv51 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next52, %.lr.ph ] ; 2 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv51 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !267
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !268
  call void @gtk_widget_set_size_request(ptr noundef %i.y, i32 noundef %i.aa, i32 noundef -1) #16
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %exitcond55.not = icmp eq i64 %indvars.iv.next52, %i.c
  br i1 %exitcond55.not, label %.lr.ph49.preheader, label %.lr.ph

.lr.ph49:                                         ; preds = %.lr.ph49.preheader, %.lr.ph49
  %indvars.iv56 = phi i64 [ 0, %.lr.ph49.preheader ], [ %indvars.iv.next57, %.lr.ph49 ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !267
  call void @gtk_widget_set_size_request(ptr noundef %i.ac, i32 noundef -1, i32 noundef -1) #16
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next57, %wide.trip.count59
  br i1 %exitcond60.not, label %.loopexit, label %.lr.ph49

.loopexit:                                        ; preds = %.lr.ph49, %bb.d
  call void @g_free(ptr noundef nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_notebook_motion_notify_callback(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 4 uses
  %4 = alloca %struct._cairo_rectangle_int, align 4 ; 5 uses
  %i.a = tail call ptr @gtk_get_event_widget(ptr noundef %1) #16
  %.not = icmp eq ptr %i.a, %0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #16
  %i.b = call i32 @gtk_notebook_get_n_pages(ptr noundef %0) #16 ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.015 = phi i32 [ 0, %.lr.ph ], [ %i.s, %bb.e ] ; 3 uses
  %i.f = call ptr @gtk_notebook_get_nth_page(ptr noundef %0, i32 noundef %.015) #16
  %i.g = call ptr @gtk_notebook_get_tab_label(ptr noundef %0, ptr noundef %i.f) #16
  call void @gtk_widget_get_allocation(ptr noundef %i.g, ptr noundef nonnull %4) #16
  %i.h = load double, ptr %i.d, align 8, !tbaa !135
  %i.i = load i32, ptr %3, align 4, !tbaa !76
  %i.j = sitofp reassoc nsz arcp contract afn i32 %i.i to double
  %i.k = fadd reassoc nsz arcp contract afn double %i.h, %i.j
  %i.l = load i32, ptr %4, align 4, !tbaa !76
  %i.m = load i32, ptr %i.e, align 4, !tbaa !74
  %i.n = add nsw i32 %i.m, %i.l
  %i.o = sitofp reassoc nsz arcp contract afn i32 %i.n to double
  %i.p = fcmp reassoc nsz arcp contract afn olt double %i.k, %i.o
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !122
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 580
  store i32 %.015, ptr %i.r, align 4, !tbaa !272
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.s = add nuw nsw i32 %.015, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.s, %i.b
  br i1 %exitcond.not, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.e, %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %.loopexit
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_notebook_scroll_callback(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = tail call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.6) #16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call i32 @gtk_accelerator_get_default_mod_mask() #16
  %i.e = and i32 %i.d, %i.c                       ; 3 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %dt_gui_ignore_scroll.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 5564
  %i.i = load i32, ptr %i.h, align 4, !tbaa !67
  %i.j = icmp eq i32 %i.e, %i.i
  br i1 %i.j, label %bb.c, label %dt_gui_ignore_scroll.exit.thread

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %dt_gui_ignore_scroll.exit.thread9, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = xor i32 %i.e, -1
  %i.l = load i32, ptr %i.b, align 8, !tbaa !16
  %i.m = and i32 %i.l, %i.k
  store i32 %i.m, ptr %i.b, align 8, !tbaa !16
  br label %dt_gui_ignore_scroll.exit.thread

dt_gui_ignore_scroll.exit:                        ; preds = %bb.a
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %dt_gui_ignore_scroll.exit.thread, label %dt_gui_ignore_scroll.exit.thread9

dt_gui_ignore_scroll.exit.thread:                 ; preds = %bb.b, %bb.d, %dt_gui_ignore_scroll.exit
  %i.n = tail call i32 @gdk_event_get_pointer_emulated(ptr noundef nonnull %1) #16
  %.not.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i, label %bb.e, label %dt_gui_ignore_scroll.exit.thread9

bb.e:                                             ; preds = %dt_gui_ignore_scroll.exit.thread
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !68
  switch i32 %i.p, label %dt_gui_ignore_scroll.exit.thread9 [
    i32 2, label %dt_gui_get_scroll_unit_delta.exit
    i32 3, label %bb.f
    i32 0, label %bb.g
    i32 1, label %bb.h
    i32 4, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  br label %dt_gui_get_scroll_unit_delta.exit

bb.g:                                             ; preds = %bb.e
  br label %dt_gui_get_scroll_unit_delta.exit

bb.h:                                             ; preds = %bb.e
  br label %dt_gui_get_scroll_unit_delta.exit

bb.i:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.r = load i8, ptr %i.q, align 8
  %i.s = and i8 %i.r, 1
  %.not48.i.i = icmp eq i8 %i.s, 0
  br i1 %.not48.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store double 0.000000e+00, ptr @dt_gui_get_scroll_unit_deltas.acc_y, align 8, !tbaa !69
  store double 0.000000e+00, ptr @dt_gui_get_scroll_unit_deltas.acc_x, align 8, !tbaa !69
  br label %dt_gui_ignore_scroll.exit.thread9

bb.k:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load double, ptr %i.t, align 8, !tbaa !70
  %i.v = load double, ptr @dt_gui_get_scroll_unit_deltas.acc_x, align 8, !tbaa !69
  %i.w = fadd reassoc nsz arcp contract afn double %i.v, %i.u ; 4 uses
  store double %i.w, ptr @dt_gui_get_scroll_unit_deltas.acc_x, align 8, !tbaa !69
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.y = load double, ptr %i.x, align 8, !tbaa !71
  %i.z = load double, ptr @dt_gui_get_scroll_unit_deltas.acc_y, align 8, !tbaa !69
  %i.aa = fadd reassoc nsz arcp contract afn double %i.z, %i.y ; 4 uses
  store double %i.aa, ptr @dt_gui_get_scroll_unit_deltas.acc_y, align 8, !tbaa !69
  %i.ab = tail call reassoc nsz arcp contract afn double @llvm.trunc.f64(double %i.w) ; 2 uses
  %i.ac = tail call reassoc nsz arcp contract afn double @llvm.trunc.f64(double %i.aa) ; 2 uses
  %i.ad = fcmp reassoc nsz arcp contract afn une double %i.ab, 0.000000e+00
  %i.ae = fcmp reassoc nsz arcp contract afn une double %i.ac, 0.000000e+00
  %or.cond.i.i = select i1 %i.ad, i1 true, i1 %i.ae
  br i1 %or.cond.i.i, label %bb.l, label %dt_gui_ignore_scroll.exit.thread9

bb.l:                                             ; preds = %bb.k
  %i.af = fsub reassoc nsz arcp contract afn double %i.w, %i.ab
  store double %i.af, ptr @dt_gui_get_scroll_unit_deltas.acc_x, align 8, !tbaa !69
  %i.ag = fsub reassoc nsz arcp contract afn double %i.aa, %i.ac
  store double %i.ag, ptr @dt_gui_get_scroll_unit_deltas.acc_y, align 8, !tbaa !69
  %i.ah = fptosi double %i.w to i32
  %i.ai = fptosi double %i.aa to i32
  br label %dt_gui_get_scroll_unit_delta.exit

dt_gui_get_scroll_unit_delta.exit:                ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.l
  %.04.ph.i = phi i32 [ %i.ah, %bb.l ], [ 0, %bb.h ], [ 0, %bb.g ], [ 1, %bb.f ], [ -1, %bb.e ]
  %.03.ph.i = phi i32 [ %i.ai, %bb.l ], [ 1, %bb.h ], [ -1, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.aj = add nsw i32 %.03.ph.i, %.04.ph.i        ; 3 uses
  %.not15 = icmp eq i32 %i.aj, 0
  br i1 %.not15, label %dt_gui_ignore_scroll.exit.thread9, label %bb.m

bb.m:                                             ; preds = %dt_gui_get_scroll_unit_delta.exit
  %i.ak = icmp slt i32 %i.aj, 0
  %i.al = select i1 %i.ak, i32 1, i32 2
  %i.am = sitofp reassoc nsz arcp contract afn i32 %i.aj to float
  %i.an = tail call reassoc nsz arcp contract afn float @_action_process_tabs(ptr noundef %0, i32 noundef 0, i32 noundef %i.al, float noundef %i.am) ; 0 uses
  br label %dt_gui_ignore_scroll.exit.thread9

dt_gui_ignore_scroll.exit.thread9:                ; preds = %bb.k, %bb.j, %bb.e, %dt_gui_ignore_scroll.exit.thread, %bb.c, %dt_gui_get_scroll_unit_delta.exit, %bb.m, %dt_gui_ignore_scroll.exit
  %.0 = phi i32 [ 1, %dt_gui_get_scroll_unit_delta.exit ], [ 0, %dt_gui_ignore_scroll.exit ], [ 0, %bb.c ], [ 1, %bb.m ], [ 1, %dt_gui_ignore_scroll.exit.thread ], [ 1, %bb.e ], [ 1, %bb.j ], [ 1, %bb.k ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_notebook_button_press_callback(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !142
  %i.b = icmp eq i32 %i.a, 5
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @gtk_get_event_widget(ptr noundef nonnull %1) #16
  %i.d = icmp eq ptr %i.c, %0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @gtk_notebook_get_current_page(ptr noundef %0) #16
  %i.f = tail call ptr @gtk_notebook_get_nth_page(ptr noundef %0, i32 noundef %i.e) #16
  tail call fastcc void @_reset_all_bauhaus(ptr noundef %0, ptr noundef %i.f)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define noundef ptr @dt_ui_resize_wrap(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @dtgtk_drawing_area_new_with_height(i32 noundef %1) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %i.a, %bb.b ]    ; 10 uses
  tail call void @gtk_widget_set_has_tooltip(ptr noundef %.0, i32 noundef 1) #16
  tail call void @g_object_set_data(ptr noundef %.0, ptr noundef nonnull @.str.175, ptr noundef nonnull inttoptr (i64 1 to ptr)) #16
  %i.b = tail call i64 @dtgtk_drawing_area_get_type() #16 ; 2 uses
  %.not.i = icmp eq ptr %.0, null
  br i1 %.not.i, label %DTGTK_IS_DRAWING_AREA.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %.0, align 8, !tbaa !86    ; 2 uses
  %.not10.i = icmp eq ptr %i.c, null
  br i1 %.not10.i, label %DTGTK_IS_DRAWING_AREA.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = load i64, ptr %i.c, align 8, !tbaa !88
  %i.e = icmp eq i64 %i.d, %i.b
  br i1 %i.e, label %DTGTK_IS_DRAWING_AREA.exit.thread37, label %DTGTK_IS_DRAWING_AREA.exit

DTGTK_IS_DRAWING_AREA.exit:                       ; preds = %bb.d, %bb.e
  %i.f = tail call i32 @g_type_check_instance_is_a(ptr noundef nonnull readonly %.0, i64 noundef %i.b) #18
  %.not34 = icmp eq i32 %i.f, 0
  br i1 %.not34, label %DTGTK_IS_DRAWING_AREA.exit.thread, label %DTGTK_IS_DRAWING_AREA.exit.thread37

DTGTK_IS_DRAWING_AREA.exit.thread37:              ; preds = %bb.e, %DTGTK_IS_DRAWING_AREA.exit
  %i.g = tail call i32 @dt_conf_get_int(ptr noundef %2) #16
  %i.h = sitofp reassoc nsz arcp contract afn i32 %i.g to float
  %i.i = fptosi float %i.h to i32
  tail call void @dtgtk_drawing_area_set_height(ptr noundef nonnull %.0, i32 noundef %i.i) #16
  %i.j = tail call i64 @g_signal_connect_data(ptr noundef nonnull %.0, ptr noundef nonnull @.str.44, ptr noundef nonnull @_scroll_wrap_height, ptr noundef %2, ptr noundef null, i32 noundef 0) #16 ; 0 uses
  br label %bb.f

DTGTK_IS_DRAWING_AREA.exit.thread:                ; preds = %bb.c, %DTGTK_IS_DRAWING_AREA.exit
  %i.k = tail call ptr @gtk_scrolled_window_new(ptr noundef null, ptr noundef null) #16 ; 7 uses
  tail call void @gtk_widget_set_vexpand(ptr noundef %i.k, i32 noundef 1) #16
  tail call void @gtk_container_add(ptr noundef %i.k, ptr noundef %.0) #16
  tail call void @gtk_scrolled_window_set_policy(ptr noundef %i.k, i32 noundef 2, i32 noundef 1) #16
  %i.l = sitofp reassoc nsz arcp contract afn i32 %1 to double
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1432
  %i.o = load double, ptr %i.n, align 8, !tbaa !109
  %i.p = fneg reassoc nsz arcp contract afn double %i.l
  %i.q = fmul reassoc nsz arcp contract afn double %i.o, %i.p
  %i.r = fptosi double %i.q to i32
  tail call void @gtk_scrolled_window_set_min_content_height(ptr noundef %i.k, i32 noundef %i.r) #16
  %i.s = tail call i64 @g_signal_connect_data(ptr noundef %i.k, ptr noundef nonnull @.str.44, ptr noundef nonnull @_resize_wrap_scroll, ptr noundef %2, ptr noundef null, i32 noundef 0) #16 ; 0 uses
  %i.t = tail call i64 @g_signal_connect_data(ptr noundef %.0, ptr noundef nonnull @.str.37, ptr noundef nonnull @_resize_wrap_draw, ptr noundef %2, ptr noundef null, i32 noundef 0) #16 ; 0 uses
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1432
  %i.w = load double, ptr %i.v, align 8, !tbaa !109
  %i.x = fmul reassoc nsz arcp contract afn double %i.w, 5.000000e+00
  %i.y = fptosi double %i.x to i32
  tail call void @gtk_widget_set_margin_bottom(ptr noundef %i.k, i32 noundef %i.y) #16
  %i.z = tail call ptr @gtk_event_box_new() #16   ; 2 uses
  tail call void @gtk_container_add(ptr noundef %i.z, ptr noundef %i.k) #16
  br label %bb.f

bb.f:                                             ; preds = %DTGTK_IS_DRAWING_AREA.exit.thread, %DTGTK_IS_DRAWING_AREA.exit.thread37
  %.1 = phi ptr [ %.0, %DTGTK_IS_DRAWING_AREA.exit.thread37 ], [ %i.z, %DTGTK_IS_DRAWING_AREA.exit.thread ] ; 8 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 5560
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !101
  %i.ad = or i32 %i.ac, 13060
  tail call void @gtk_widget_add_events(ptr noundef %.1, i32 noundef %i.ad) #16
  %i.ae = tail call i64 @g_signal_connect_data(ptr noundef %.1, ptr noundef nonnull @.str.39, ptr noundef nonnull @_resize_wrap_motion, ptr noundef %2, ptr noundef null, i32 noundef 0) #16 ; 0 uses
  %i.af = tail call i64 @g_signal_connect_data(ptr noundef %.1, ptr noundef nonnull @.str.42, ptr noundef nonnull @_resize_wrap_button, ptr noundef %2, ptr noundef null, i32 noundef 0) #16 ; 0 uses
  %i.ag = tail call i64 @g_signal_connect_data(ptr noundef %.1, ptr noundef nonnull @.str.43, ptr noundef nonnull @_resize_wrap_button, ptr noundef %2, ptr noundef null, i32 noundef 0) #16 ; 0 uses
  %i.ah = tail call i64 @g_signal_connect_data(ptr noundef %.1, ptr noundef nonnull @.str.41, ptr noundef nonnull @_resize_wrap_enter_leave, ptr noundef %2, ptr noundef null, i32 noundef 0) #16 ; 0 uses
  %i.ai = tail call i64 @g_signal_connect_data(ptr noundef %.1, ptr noundef nonnull @.str.40, ptr noundef nonnull @_resize_wrap_enter_leave, ptr noundef %2, ptr noundef null, i32 noundef 0) #16 ; 0 uses
  %i.aj = tail call i64 @g_signal_connect_data(ptr noundef %.1, ptr noundef nonnull @.str.37, ptr noundef nonnull @_resize_wrap_draw_handle, ptr noundef null, ptr noundef null, i32 noundef 1) #16 ; 0 uses
  ret ptr %.1
}

declare ptr @dtgtk_drawing_area_new_with_height(i32 noundef) local_unnamed_addr #2

declare void @dtgtk_drawing_area_set_height(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_scroll_wrap_height(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !16
  %i.c = tail call i32 @gtk_accelerator_get_default_mod_mask() #16
  %i.d = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !72
  %i.e = or i32 %i.d, %i.b
  %i.f = and i32 %i.e, %i.c
  %.not = icmp eq i32 %i.f, 9
  br i1 %.not, label %bb.b, label %dt_gui_get_scroll_unit_delta.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @gdk_event_get_pointer_emulated(ptr noundef nonnull %1) #16
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %bb.c, label %dt_gui_get_scroll_unit_delta.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.i = load i32, ptr %i.h, align 4, !tbaa !68
  switch i32 %i.i, label %dt_gui_get_scroll_unit_delta.exit.thread [
    i32 2, label %bb.k
    i32 3, label %bb.d
    i32 0, label %bb.e
    i32 1, label %bb.f
    i32 4, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  br label %bb.k

bb.f:                                             ; preds = %bb.c
  br label %bb.k

bb.g:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.k = load i8, ptr %i.j, align 8
  %i.l = and i8 %i.k, 1
  %.not48.i.i = icmp eq i8 %i.l, 0
  br i1 %.not48.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store double 0.000000e+00, ptr @dt_gui_get_scroll_unit_deltas.acc_y, align 8, !tbaa !69
  store double 0.000000e+00, ptr @dt_gui_get_scroll_unit_deltas.acc_x, align 8, !tbaa !69
  br label %dt_gui_get_scroll_unit_delta.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = load double, ptr %i.m, align 8, !tbaa !70
  %i.o = load double, ptr @dt_gui_get_scroll_unit_deltas.acc_x, align 8, !tbaa !69
  %i.p = fadd reassoc nsz arcp contract afn double %i.o, %i.n ; 4 uses
  store double %i.p, ptr @dt_gui_get_scroll_unit_deltas.acc_x, align 8, !tbaa !69
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.r = load double, ptr %i.q, align 8, !tbaa !71
  %i.s = load double, ptr @dt_gui_get_scroll_unit_deltas.acc_y, align 8, !tbaa !69
  %i.t = fadd reassoc nsz arcp contract afn double %i.s, %i.r ; 4 uses
  store double %i.t, ptr @dt_gui_get_scroll_unit_deltas.acc_y, align 8, !tbaa !69
  %i.u = tail call reassoc nsz arcp contract afn double @llvm.trunc.f64(double %i.p) ; 2 uses
  %i.v = tail call reassoc nsz arcp contract afn double @llvm.trunc.f64(double %i.t) ; 2 uses
  %i.w = fcmp reassoc nsz arcp contract afn une double %i.u, 0.000000e+00
  %i.x = fcmp reassoc nsz arcp contract afn une double %i.v, 0.000000e+00
  %or.cond.i.i = select i1 %i.w, i1 true, i1 %i.x
  br i1 %or.cond.i.i, label %bb.j, label %dt_gui_get_scroll_unit_delta.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.y = fsub reassoc nsz arcp contract afn double %i.p, %i.u
  store double %i.y, ptr @dt_gui_get_scroll_unit_deltas.acc_x, align 8, !tbaa !69
  %i.z = fsub reassoc nsz arcp contract afn double %i.t, %i.v
  store double %i.z, ptr @dt_gui_get_scroll_unit_deltas.acc_y, align 8, !tbaa !69
  %i.aa = fptosi double %i.p to i32
  %i.ab = fptosi double %i.t to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f, %bb.e, %bb.d, %bb.c
  %.04.ph.i = phi i32 [ %i.aa, %bb.j ], [ 0, %bb.f ], [ 0, %bb.e ], [ 1, %bb.d ], [ -1, %bb.c ]
  %.03.ph.i = phi i32 [ %i.ab, %bb.j ], [ 1, %bb.f ], [ -1, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ]
  %i.ac = add nsw i32 %.03.ph.i, %.04.ph.i
  %i.ad = tail call i32 @dt_conf_get_int(ptr noundef %2) #16
  %i.ae = add nsw i32 %i.ac, %i.ad                ; 2 uses
  tail call void @dt_conf_set_int(ptr noundef %2, i32 noundef %i.ae) #16
  tail call void @dtgtk_drawing_area_set_height(ptr noundef %0, i32 noundef %i.ae) #16
  br label %dt_gui_get_scroll_unit_delta.exit.thread

dt_gui_get_scroll_unit_delta.exit.thread:         ; preds = %bb.i, %bb.h, %bb.c, %bb.b, %bb.k, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.k ], [ 1, %bb.b ], [ 1, %bb.c ], [ 1, %bb.h ], [ 1, %bb.i ]
  ret i32 %.0
}

declare void @gtk_scrolled_window_set_policy(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @gtk_scrolled_window_set_min_content_height(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_resize_wrap_scroll(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @gdk_event_get_pointer_emulated(ptr noundef %1) #16
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %bb.b, label %dt_gui_get_scroll_unit_delta.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !68
  switch i32 %i.c, label %dt_gui_get_scroll_unit_delta.exit.thread [
    i32 2, label %dt_gui_get_scroll_unit_delta.exit
    i32 3, label %bb.c
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 4, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  br label %dt_gui_get_scroll_unit_delta.exit

bb.d:                                             ; preds = %bb.b
  br label %dt_gui_get_scroll_unit_delta.exit

bb.e:                                             ; preds = %bb.b
  br label %dt_gui_get_scroll_unit_delta.exit

bb.f:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.e = load i8, ptr %i.d, align 8
  %i.f = and i8 %i.e, 1
  %.not48.i.i = icmp eq i8 %i.f, 0
  br i1 %.not48.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store double 0.000000e+00, ptr @dt_gui_get_scroll_unit_deltas.acc_y, align 8, !tbaa !69
  store double 0.000000e+00, ptr @dt_gui_get_scroll_unit_deltas.acc_x, align 8, !tbaa !69
  br label %dt_gui_get_scroll_unit_delta.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load double, ptr %i.g, align 8, !tbaa !70
  %i.i = load double, ptr @dt_gui_get_scroll_unit_deltas.acc_x, align 8, !tbaa !69
  %i.j = fadd reassoc nsz arcp contract afn double %i.i, %i.h ; 4 uses
  store double %i.j, ptr @dt_gui_get_scroll_unit_deltas.acc_x, align 8, !tbaa !69
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = load double, ptr %i.k, align 8, !tbaa !71
  %i.m = load double, ptr @dt_gui_get_scroll_unit_deltas.acc_y, align 8, !tbaa !69
  %i.n = fadd reassoc nsz arcp contract afn double %i.m, %i.l ; 4 uses
  store double %i.n, ptr @dt_gui_get_scroll_unit_deltas.acc_y, align 8, !tbaa !69
  %i.o = tail call reassoc nsz arcp contract afn double @llvm.trunc.f64(double %i.j) ; 2 uses
  %i.p = tail call reassoc nsz arcp contract afn double @llvm.trunc.f64(double %i.n) ; 2 uses
  %i.q = fcmp reassoc nsz arcp contract afn une double %i.o, 0.000000e+00
  %i.r = fcmp reassoc nsz arcp contract afn une double %i.p, 0.000000e+00
  %or.cond.i.i = select i1 %i.q, i1 true, i1 %i.r
  br i1 %or.cond.i.i, label %bb.i, label %dt_gui_get_scroll_unit_delta.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.s = fsub reassoc nsz arcp contract afn double %i.j, %i.o
  store double %i.s, ptr @dt_gui_get_scroll_unit_deltas.acc_x, align 8, !tbaa !69
  %i.t = fsub reassoc nsz arcp contract afn double %i.n, %i.p
  store double %i.t, ptr @dt_gui_get_scroll_unit_deltas.acc_y, align 8, !tbaa !69
  %i.u = fptosi double %i.j to i32
  %i.v = fptosi double %i.n to i32
  br label %dt_gui_get_scroll_unit_delta.exit

dt_gui_get_scroll_unit_delta.exit:                ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.i
  %.04.ph.i = phi i32 [ %i.u, %bb.i ], [ 0, %bb.e ], [ 0, %bb.d ], [ 1, %bb.c ], [ -1, %bb.b ]
  %.03.ph.i = phi i32 [ %i.v, %bb.i ], [ 1, %bb.e ], [ -1, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %i.w = add nsw i32 %.03.ph.i, %.04.ph.i         ; 3 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %dt_gui_get_scroll_unit_delta.exit.thread, label %bb.j

bb.j:                                             ; preds = %dt_gui_get_scroll_unit_delta.exit
  %i.y = tail call ptr @gtk_bin_get_child(ptr noundef %0) #16 ; 5 uses
  %i.z = tail call i64 @gtk_viewport_get_type() #17 ; 2 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !86  ; 2 uses
  %.not39 = icmp eq ptr %i.aa, null
  br i1 %.not39, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !88
  %i.ac = icmp eq i64 %i.ab, %i.z
  br i1 %i.ac, label %.critedge43, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ad = tail call i32 @g_type_check_instance_is_a(ptr noundef nonnull %i.y, i64 noundef %i.z) #18
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %.critedge, label %.critedge43

.critedge43:                                      ; preds = %bb.l, %bb.m
  %i.af = tail call ptr @gtk_bin_get_child(ptr noundef nonnull %i.y) #16
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %.critedge43, %bb.m
  %.036 = phi ptr [ %i.af, %.critedge43 ], [ %i.y, %bb.m ], [ null, %bb.j ] ; 2 uses
  %i.ag = tail call fastcc i32 @_get_container_row_heigth(ptr noundef %.036) ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !16
  %i.aj = tail call i32 @gtk_accelerator_get_default_mod_mask() #16
  %i.ak = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !72
  %i.al = or i32 %i.ak, %i.ai
  %i.am = and i32 %i.al, %i.aj
  %.not48 = icmp eq i32 %i.am, 9
  br i1 %.not48, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.critedge
  %i.an = tail call i32 @dt_conf_get_int(ptr noundef %2) #16
  %i.ao = mul nsw i32 %i.ag, %i.w
  %i.ap = add nsw i32 %i.an, %i.ao                ; 2 uses
  %i.aq = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.320, i32 noundef 5) #16
  %i.ar = sdiv i32 %i.ap, %i.ag
  %i.as = add nsw i32 %i.ar, 1
  tail call void (ptr, ...) @dt_toast_log(ptr noundef %i.aq, i32 noundef %i.as) #16
  tail call void @dt_conf_set_int(ptr noundef %2, i32 noundef %i.ap) #16
  tail call void @gtk_widget_queue_draw(ptr noundef %.036) #16
  br label %dt_gui_get_scroll_unit_delta.exit.thread

bb.o:                                             ; preds = %.critedge
  %i.at = tail call ptr @gtk_scrolled_window_get_vadjustment(ptr noundef %0) #16 ; 3 uses
  %i.au = tail call reassoc nsz arcp contract afn double @gtk_adjustment_get_value(ptr noundef %i.at) #16
  %i.av = fptosi double %i.au to i32              ; 2 uses
  %i.aw = mul nsw i32 %i.ag, %i.w
  %i.ax = add nsw i32 %i.aw, %i.av                ; 2 uses
  %i.ay = srem i32 %i.ax, %i.ag
  %i.az = sub nsw i32 %i.ax, %i.ay
  %i.ba = sitofp reassoc nsz arcp contract afn i32 %i.az to double
  tail call void @gtk_adjustment_set_value(ptr noundef %i.at, double noundef %i.ba) #16
  %i.bb = tail call reassoc nsz arcp contract afn double @gtk_adjustment_get_value(ptr noundef %i.at) #16
  %i.bc = fptosi double %i.bb to i32
  %i.bd = icmp eq i32 %i.bc, %i.av
  br i1 %i.bd, label %bb.p, label %dt_gui_get_scroll_unit_delta.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.be = tail call ptr @gtk_widget_get_parent(ptr noundef %0) #16
  tail call void @gtk_propagate_event(ptr noundef %i.be, ptr noundef nonnull %1) #16
  br label %dt_gui_get_scroll_unit_delta.exit.thread

dt_gui_get_scroll_unit_delta.exit.thread:         ; preds = %bb.a, %bb.g, %bb.h, %bb.b, %bb.n, %bb.p, %bb.o, %dt_gui_get_scroll_unit_delta.exit
  %.0 = phi i32 [ 0, %dt_gui_get_scroll_unit_delta.exit ], [ 1, %bb.o ], [ 1, %bb.p ], [ 1, %bb.n ], [ 0, %bb.b ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_resize_wrap_draw(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca %struct._GtkBorder, align 2         ; 5 uses
  %4 = alloca %struct._GtkBorder, align 2         ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = tail call ptr @gtk_widget_get_parent(ptr noundef %0) #16 ; 5 uses
  %i.d = tail call i64 @gtk_viewport_get_type() #17 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !86   ; 2 uses
  %.not54 = icmp eq ptr %i.e, null
  br i1 %.not54, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %i.e, align 8, !tbaa !88
  %i.g = icmp eq i64 %i.f, %i.d
  br i1 %i.g, label %.critedge58, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = tail call i32 @g_type_check_instance_is_a(ptr noundef nonnull %i.c, i64 noundef %i.d) #18
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.critedge, label %.critedge58

.critedge58:                                      ; preds = %bb.c, %bb.d
  %i.j = tail call ptr @gtk_widget_get_parent(ptr noundef nonnull %i.c) #16
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %.critedge58, %bb.d
  %.0 = phi ptr [ %i.j, %.critedge58 ], [ %i.c, %bb.d ], [ null, %bb.a ] ; 6 uses
  %i.k = tail call fastcc i32 @_get_container_row_heigth(ptr noundef %0) ; 3 uses
  %i.l = tail call i32 @dt_conf_get_int(ptr noundef %2) #16 ; 2 uses
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1432
  %i.p = load double, ptr %i.o, align 8, !tbaa !109
  %i.q = fmul reassoc nsz arcp contract afn double %i.p, 1.000000e+03
  %i.r = fptosi double %i.q to i32
  %i.s = tail call i32 @llvm.smin.i32(i32 %i.l, i32 %i.r)
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.e
  %i.t = phi i32 [ %i.s, %bb.e ], [ 1, %.critedge ] ; 2 uses
  tail call void @dt_conf_set_int(ptr noundef %2, i32 noundef %i.t) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @gtk_widget_get_preferred_height(ptr noundef %0, ptr noundef null, ptr noundef nonnull %i.a) #16
  %i.u = call i32 @gtk_scrolled_window_get_min_content_height(ptr noundef %.0) #16
  %i.v = sub nsw i32 0, %i.u                      ; 3 uses
  %i.w = load i32, ptr %i.a, align 4, !tbaa !72   ; 2 uses
  %i.x = icmp slt i32 %i.w, %i.v
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %i.v, ptr %i.a, align 4, !tbaa !72
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = phi i32 [ %i.v, %bb.g ], [ %i.w, %bb.f ]
  %spec.select = call i32 @llvm.smin.i32(i32 %i.t, i32 %i.y)
  %i.z = add nsw i32 %i.k, -1
  %i.aa = add nsw i32 %i.z, %spec.select          ; 2 uses
  %i.ab = srem i32 %i.aa, %i.k
  %i.ac = sub i32 %i.aa, %i.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.ad = call ptr @gtk_widget_get_style_context(ptr noundef %0) #16
  %i.ae = call i32 @gtk_widget_get_state_flags(ptr noundef %0) #16
  call void @gtk_style_context_get_padding(ptr noundef %i.ad, i32 noundef %i.ae, ptr noundef nonnull %3) #16
  %i.af = call ptr @gtk_widget_get_style_context(ptr noundef %.0) #16
  %i.ag = call i32 @gtk_widget_get_state_flags(ptr noundef %.0) #16
  call void @gtk_style_context_get_margin(ptr noundef %i.af, i32 noundef %i.ag, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i32 0, ptr %i.b, align 4, !tbaa !72
  call void @gtk_widget_get_size_request(ptr noundef %.0, ptr noundef null, ptr noundef nonnull %i.b) #16
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !274
  %i.aj = sext i16 %i.ai to i32
  %i.ak = add nsw i32 %i.ac, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.am = load i16, ptr %i.al, align 2, !tbaa !275
  %i.an = sext i16 %i.am to i32
  %i.ao = add nsw i32 %i.ak, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !274
  %i.ar = sext i16 %i.aq to i32
  %i.as = add nsw i32 %i.ao, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.au = load i16, ptr %i.at, align 2, !tbaa !275
  %i.av = sext i16 %i.au to i32
  %i.aw = add nsw i32 %i.as, %i.av                ; 2 uses
  %i.ax = load i32, ptr %i.b, align 4, !tbaa !72
  %.not56 = icmp eq i32 %i.aw, %i.ax
  br i1 %.not56, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @gtk_widget_set_size_request(ptr noundef %.0, i32 noundef -1, i32 noundef %i.aw) #16
  %i.ay = call ptr @gtk_scrolled_window_get_vadjustment(ptr noundef %.0) #16 ; 2 uses
  %i.az = call reassoc nsz arcp contract afn double @gtk_adjustment_get_value(ptr noundef %i.ay) #16
  %i.ba = fptosi double %i.az to i32              ; 2 uses
  %i.bb = srem i32 %i.ba, %i.k
  %i.bc = sub nsw i32 %i.ba, %i.bb
  %i.bd = sitofp reassoc nsz arcp contract afn i32 %i.bc to double
  call void @gtk_adjustment_set_value(ptr noundef %i.ay, double noundef %i.bd) #16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 0
end_hunk_2
begin_hunk_3_@gtk_style_context_get_padding
declare void @gtk_style_context_get_padding(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @gtk_style_context_get_margin(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @gtk_widget_get_size_request(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #3

declare void @cairo_line_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare void @cairo_set_line_width(ptr noundef, double noundef) local_unnamed_addr #2

declare void @cairo_stroke(ptr noundef) local_unnamed_addr #2

declare void @gtk_container_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gtk_label_set_xalign(ptr noundef, float noundef) local_unnamed_addr #2

declare void @dt_iop_request_focus(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @_scroll_proxy_real(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @gtk_get_current_event() #16 ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @gdk_event_get_event_type(ptr noundef nonnull %i.a) #16
  %i.c = icmp eq i32 %i.b, 31
  br i1 %i.c, label %bb.c, label %bb.x

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @gdk_event_get_pointer_emulated(ptr noundef nonnull %i.a) #16
  %.not27 = icmp eq i32 %i.d, 0
  br i1 %.not27, label %bb.d, label %bb.x

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @gtk_event_controller_get_widget(ptr noundef %0) #16 ; 5 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !77
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 152 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !83   ; 4 uses
  %i.j = tail call i64 @gtk_widget_get_type() #17 ; 4 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %dt_ui_panel_ancestor.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !86   ; 2 uses
  %.not22.i.i = icmp eq ptr %i.k, null
  br i1 %.not22.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i64, ptr %i.k, align 8, !tbaa !88
  %i.m = icmp eq i64 %i.l, %i.j
  br i1 %i.m, label %.critedge27.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = tail call i32 @g_type_check_instance_is_a(ptr noundef nonnull %i.i, i64 noundef %i.j) #18
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %dt_ui_panel_ancestor.exit.thread.i, label %.critedge27.i.i, !prof !89

dt_ui_panel_ancestor.exit.thread.i:               ; preds = %bb.g, %bb.d
  tail call void @g_return_if_fail_warning(ptr noundef null, ptr noundef nonnull @__func__.dt_ui_panel_ancestor, ptr noundef nonnull @.str.90) #16
  br label %bb.h

.critedge27.i.i:                                  ; preds = %bb.g, %bb.f
  %i.p = tail call i32 @gtk_widget_is_ancestor(ptr noundef %i.e, ptr noundef nonnull %i.i) #16
  %.not25.i.i = icmp eq i32 %i.p, 0
  br i1 %.not25.i.i, label %dt_ui_panel_ancestor.exit.i, label %dt_ui_panel_ancestor.exit.thread28.i

dt_ui_panel_ancestor.exit.i:                      ; preds = %.critedge27.i.i
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !83
  %i.r = tail call i32 @gtk_widget_is_ancestor(ptr noundef %i.q, ptr noundef %i.e) #16
  %.not43.i = icmp eq i32 %i.r, 0
  br i1 %.not43.i, label %bb.h, label %dt_ui_panel_ancestor.exit.thread28.i

bb.h:                                             ; preds = %dt_ui_panel_ancestor.exit.i, %dt_ui_panel_ancestor.exit.thread.i
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !77
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 160 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !83   ; 4 uses
  %.not.i17.i = icmp eq ptr %i.v, null
  br i1 %.not.i17.i, label %dt_ui_panel_ancestor.exit23.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !86   ; 2 uses
  %.not22.i18.i = icmp eq ptr %i.w, null
  br i1 %.not22.i18.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = load i64, ptr %i.w, align 8, !tbaa !88
  %i.y = icmp eq i64 %i.x, %i.j
  br i1 %i.y, label %.critedge27.i19.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.z = tail call i32 @g_type_check_instance_is_a(ptr noundef nonnull %i.v, i64 noundef %i.j) #18
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %dt_ui_panel_ancestor.exit23.thread.i, label %.critedge27.i19.i, !prof !89

dt_ui_panel_ancestor.exit23.thread.i:             ; preds = %bb.k, %bb.h
  tail call void @g_return_if_fail_warning(ptr noundef null, ptr noundef nonnull @__func__.dt_ui_panel_ancestor, ptr noundef nonnull @.str.90) #16
  br label %bb.p

.critedge27.i19.i:                                ; preds = %bb.k, %bb.j
  %i.ab = tail call i32 @gtk_widget_is_ancestor(ptr noundef %i.e, ptr noundef nonnull %i.v) #16
  %.not25.i20.i = icmp eq i32 %i.ab, 0
  br i1 %.not25.i20.i, label %dt_ui_panel_ancestor.exit23.i, label %dt_ui_panel_ancestor.exit.thread28.i

dt_ui_panel_ancestor.exit23.i:                    ; preds = %.critedge27.i19.i
  %i.ac = load ptr, ptr %i.u, align 8, !tbaa !83
  %i.ad = tail call i32 @gtk_widget_is_ancestor(ptr noundef %i.ac, ptr noundef %i.e) #16
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %bb.p, label %dt_ui_panel_ancestor.exit.thread28.i

dt_ui_panel_ancestor.exit.thread28.i:             ; preds = %dt_ui_panel_ancestor.exit23.i, %.critedge27.i19.i, %dt_ui_panel_ancestor.exit.i, %.critedge27.i.i
  %.sink49.i = phi i64 [ 152, %dt_ui_panel_ancestor.exit.i ], [ 152, %.critedge27.i.i ], [ 160, %.critedge27.i19.i ], [ 160, %dt_ui_panel_ancestor.exit23.i ]
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !77
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sink49.i
  %.010.i = load ptr, ptr %i.ag, align 8, !tbaa !83
  %.not14.i = icmp eq ptr %.010.i, null
  br i1 %.not14.i, label %bb.p, label %bb.l

bb.l:                                             ; preds = %dt_ui_panel_ancestor.exit.thread28.i
  %i.ah = tail call i32 @dt_conf_get_bool(ptr noundef nonnull @.str.6) #16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !16
  %i.ak = tail call i32 @gtk_accelerator_get_default_mod_mask() #16
  %i.al = and i32 %i.ak, %i.aj                    ; 3 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %dt_gui_ignore_scroll.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !61
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 5564
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !67
  %i.aq = icmp eq i32 %i.al, %i.ap
  br i1 %i.aq, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %.not.i25.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i25.i, label %dt_gui_ignore_scroll.exit.thread40.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = xor i32 %i.al, -1
  %i.as = load i32, ptr %i.ai, align 8, !tbaa !16
  %i.at = and i32 %i.as, %i.ar
  store i32 %i.at, ptr %i.ai, align 8, !tbaa !16
  br label %bb.p

dt_gui_ignore_scroll.exit.i:                      ; preds = %bb.l
  %.not15.i = icmp eq i32 %i.ah, 0
  br i1 %.not15.i, label %bb.p, label %dt_gui_ignore_scroll.exit.thread40.i

dt_gui_ignore_scroll.exit.thread40.i:             ; preds = %dt_gui_ignore_scroll.exit.i, %bb.n
  %i.au = tail call i64 @gtk_scrolled_window_get_type() #17
  %i.av = tail call ptr @gtk_widget_get_ancestor(ptr noundef %i.e, i64 noundef %i.au) #16 ; 2 uses
  %.not16.i = icmp eq ptr %i.av, null
  br i1 %.not16.i, label %bb.p, label %_scroll_sidebar.exit

_scroll_sidebar.exit:                             ; preds = %dt_gui_ignore_scroll.exit.thread40.i
  %i.aw = tail call i32 @gtk_widget_event(ptr noundef nonnull %i.av, ptr noundef nonnull %i.a) #16 ; 0 uses
  br label %bb.x

bb.p:                                             ; preds = %dt_gui_ignore_scroll.exit.thread40.i, %dt_gui_ignore_scroll.exit.i, %dt_ui_panel_ancestor.exit.thread28.i, %dt_ui_panel_ancestor.exit23.thread.i, %dt_ui_panel_ancestor.exit23.i, %bb.o, %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !96
  %i.az = icmp eq i32 %i.ay, 4
  br i1 %i.az, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.ba = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %1)
  %i.bb = tail call reassoc nsz arcp contract afn double @llvm.pow.f64(double %i.ba, double 9.000000e-01)
  %i.bc = tail call reassoc nsz arcp contract afn double @llvm.copysign.f64(double %i.bb, double %1)
  %i.bd = fmul reassoc nsz arcp contract afn double %i.bc, f0x3FEE666666666666
  %i.be = fptrunc reassoc nsz arcp contract afn double %i.bd to float
  %i.bf = fpext reassoc nsz arcp contract afn float %i.be to double ; 2 uses
  %i.bg = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %2)
  %i.bh = tail call reassoc nsz arcp contract afn double @llvm.pow.f64(double %i.bg, double 9.000000e-01)
  %i.bi = tail call reassoc nsz arcp contract afn double @llvm.copysign.f64(double %i.bh, double %2)
  %i.bj = fmul reassoc nsz arcp contract afn double %i.bi, f0x3FEE666666666666
  %i.bk = fptrunc reassoc nsz arcp contract afn double %i.bj to float
  %i.bl = fpext reassoc nsz arcp contract afn float %i.bk to double ; 2 uses
  %.not29 = icmp eq i32 %4, 0
  br i1 %.not29, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = load double, ptr @_scroll_discrete_dx, align 8, !tbaa !69
  %i.bn = fadd reassoc nsz arcp contract afn double %i.bm, %i.bf ; 4 uses
  store double %i.bn, ptr @_scroll_discrete_dx, align 8, !tbaa !69
  %i.bo = load double, ptr @_scroll_discrete_dy, align 8, !tbaa !69
  %i.bp = fadd reassoc nsz arcp contract afn double %i.bo, %i.bl ; 4 uses
  store double %i.bp, ptr @_scroll_discrete_dy, align 8, !tbaa !69
  %i.bq = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bn)
  %i.br = fcmp reassoc nsz arcp contract afn ult double %i.bq, 1.000000e+00
  br i1 %i.br, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bs = fptosi double %i.bn to i32
  %i.bt = sitofp reassoc nsz arcp contract afn i32 %i.bs to double ; 2 uses
  %i.bu = fsub reassoc nsz arcp contract afn double %i.bn, %i.bt
  store double %i.bu, ptr @_scroll_discrete_dx, align 8, !tbaa !69
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0 = phi nsz double [ %i.bt, %bb.s ], [ 0.000000e+00, %bb.r ] ; 2 uses
  %i.bv = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.bp)
  %i.bw = fcmp reassoc nsz arcp contract afn ult double %i.bv, 1.000000e+00
  br i1 %i.bw, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bx = fptosi double %i.bp to i32
  %i.by = sitofp reassoc nsz arcp contract afn i32 %i.bx to double ; 2 uses
  %i.bz = fsub reassoc nsz arcp contract afn double %i.bp, %i.by
  store double %i.bz, ptr @_scroll_discrete_dy, align 8, !tbaa !69
  br label %bb.v

bb.v:                                             ; preds = %bb.q, %bb.u, %bb.t, %bb.p
  %.025 = phi nsz double [ %i.by, %bb.u ], [ 0.000000e+00, %bb.t ], [ %i.bl, %bb.q ], [ %2, %bb.p ] ; 2 uses
  %.1 = phi nsz double [ %.0, %bb.u ], [ %.0, %bb.t ], [ %i.bf, %bb.q ], [ %1, %bb.p ] ; 2 uses
  %i.ca = fcmp reassoc nsz arcp contract afn une double %.1, 0.000000e+00
  %i.cb = fcmp reassoc nsz arcp contract afn une double %.025, 0.000000e+00
  %or.cond = select i1 %i.ca, i1 true, i1 %i.cb
  br i1 %or.cond, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cc = tail call ptr @g_object_get_data(ptr noundef %0, ptr noundef nonnull @.str.324) #16
  tail call void %i.cc(ptr noundef %0, double noundef %.1, double noundef %.025, ptr noundef %3) #16
  br label %bb.x

bb.x:                                             ; preds = %_scroll_sidebar.exit, %bb.w, %bb.v, %bb.c, %bb.b
  tail call void @gdk_event_free(ptr noundef nonnull %i.a) #16
  br label %bb.y

bb.y:                                             ; preds = %bb.a, %bb.x
  ret void
}

declare i32 @gdk_event_get_event_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

declare ptr @gtk_event_controller_get_widget(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @gtk_scrolled_window_get_type() local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @_focus_out_commit(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  tail call void @gtk_cell_editable_editing_done(ptr noundef %0) #16
  tail call void @gtk_cell_editable_remove_widget(ptr noundef %0) #16
  ret i32 0
}

declare void @g_object_remove_weak_pointer(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @g_object_add_weak_pointer(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gtk_cell_editable_editing_done(ptr noundef) local_unnamed_addr #2

declare void @gtk_cell_editable_remove_widget(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { nocallback nofree nosync nounwind willreturn }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { allocsize(0,1) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(none) }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS10_GdkWindow", !11, i64 0}
!13 = !{!"double", !7, i64 0}
!14 = !{!"p1 _ZTS10_GdkDevice", !11, i64 0}
!15 = !{!"_GdkEventScroll", !8, i64 0, !12, i64 8, !7, i64 16, !8, i64 20, !13, i64 24, !13, i64 32, !8, i64 40, !8, i64 44, !14, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !8, i64 88}
!16 = !{!15, !8, i64 40}
!17 = !{!"dt_codepath_t", !8, i64 0}
!18 = !{!"p1 _ZTS6_GList", !11, i64 0}
!19 = !{!"p1 _ZTS11_JsonParser", !11, i64 0}
!20 = !{!"p1 _ZTS9dt_conf_t", !11, i64 0}
!21 = !{!"p1 _ZTS12dt_develop_t", !11, i64 0}
!22 = !{!"p1 _ZTS8dt_lib_t", !11, i64 0}
!23 = !{!"p1 _ZTS17dt_view_manager_t", !11, i64 0}
!24 = !{!"p1 _ZTS12dt_control_t", !11, i64 0}
!25 = !{!"p1 _ZTS19dt_control_signal_t", !11, i64 0}
!26 = !{!"p1 _ZTS12dt_gui_gtk_t", !11, i64 0}
!27 = !{!"p1 _ZTS17dt_mipmap_cache_t", !11, i64 0}
!28 = !{!"p1 _ZTS16dt_image_cache_t", !11, i64 0}
!29 = !{!"p1 _ZTS12dt_bauhaus_t", !11, i64 0}
!30 = !{!"p1 _ZTS13dt_database_t", !11, i64 0}
!31 = !{!"p1 _ZTS14dt_pwstorage_t", !11, i64 0}
!32 = !{!"p1 _ZTS11dt_camctl_t", !11, i64 0}
!33 = !{!"p1 _ZTS15dt_collection_t", !11, i64 0}
!34 = !{!"p1 _ZTS14dt_selection_t", !11, i64 0}
!35 = !{!"p1 _ZTS11dt_points_t", !11, i64 0}
!36 = !{!"p1 _ZTS12dt_imageio_t", !11, i64 0}
!37 = !{!"p1 _ZTS11dt_opencl_t", !11, i64 0}
!38 = !{!"p1 _ZTS9dt_dbus_t", !11, i64 0}
!39 = !{!"p1 _ZTS9dt_undo_t", !11, i64 0}
!40 = !{!"p1 _ZTS16dt_colorspaces_t", !11, i64 0}
!41 = !{!"p1 _ZTS9dt_l10n_t", !11, i64 0}
!42 = !{!"dt_pthread_mutex_t", !7, i64 0}
!43 = !{!"p1 omnipotent char", !11, i64 0}
!44 = !{!"p1 _ZTS9lua_State", !11, i64 0}
!45 = !{!"_Bool", !7, i64 0}
!46 = !{!"p1 _ZTS10_GMainLoop", !11, i64 0}
!47 = !{!"p1 _ZTS13_GMainContext", !11, i64 0}
!48 = !{!"p1 _ZTS12_GThreadPool", !11, i64 0}
!49 = !{!"p1 _ZTS12_GAsyncQueue", !11, i64 0}
!50 = !{!"", !44, i64 0, !42, i64 8, !7, i64 48, !45, i64 96, !45, i64 97, !46, i64 104, !47, i64 112, !48, i64 120, !49, i64 128, !49, i64 136, !49, i64 144}
!51 = !{!"p1 _ZTS10_GTimeZone", !11, i64 0}
!52 = !{!"p1 _ZTS10_GDateTime", !11, i64 0}
!53 = !{!"long", !7, i64 0}
!54 = !{!"p1 int", !11, i64 0}
!55 = !{!"dt_sys_resources_t", !53, i64 0, !53, i64 8, !54, i64 16, !54, i64 24, !8, i64 32}
!56 = !{!"dt_backthumb_t", !13, i64 0, !13, i64 8, !8, i64 16, !8, i64 20}
!57 = !{!"dt_gimp_t", !8, i64 0, !43, i64 8, !43, i64 16, !8, i64 24, !8, i64 28}
!58 = !{!"p1 _ZTS10_GtkWidget", !11, i64 0}
!59 = !{!"dt_splash_t", !58, i64 0, !58, i64 8, !58, i64 16, !58, i64 24, !8, i64 32}
!60 = !{!"darktable_t", !17, i64 0, !8, i64 4, !8, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !19, i64 48, !20, i64 56, !21, i64 64, !22, i64 72, !23, i64 80, !24, i64 88, !25, i64 96, !26, i64 104, !27, i64 112, !28, i64 120, !29, i64 128, !30, i64 136, !31, i64 144, !32, i64 152, !33, i64 160, !34, i64 168, !35, i64 176, !36, i64 184, !37, i64 192, !38, i64 200, !39, i64 208, !40, i64 216, !41, i64 224, !7, i64 232, !42, i64 2792, !42, i64 2832, !42, i64 2872, !42, i64 2912, !42, i64 2952, !42, i64 2992, !43, i64 3032, !43, i64 3040, !43, i64 3048, !43, i64 3056, !43, i64 3064, !43, i64 3072, !43, i64 3080, !43, i64 3088, !43, i64 3096, !43, i64 3104, !43, i64 3112, !43, i64 3120, !43, i64 3128, !50, i64 3136, !18, i64 3288, !13, i64 3296, !18, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !51, i64 3520, !52, i64 3528, !55, i64 3536, !56, i64 3576, !57, i64 3600, !59, i64 3632, !8, i64 3672}
!61 = !{!60, !26, i64 104}
!62 = !{!"p1 _ZTS7dt_ui_t", !11, i64 0}
!63 = !{!"dt_gui_widgets_t", !58, i64 0, !58, i64 8, !58, i64 16, !58, i64 24, !8, i64 32, !8, i64 36, !8, i64 40}
!64 = !{!"dt_gui_scrollbars_t", !58, i64 0, !58, i64 8, !8, i64 16}
!65 = !{!"p1 _ZTS14_cairo_surface", !11, i64 0}
!66 = !{!"dt_gui_gtk_t", !62, i64 0, !63, i64 8, !64, i64 56, !65, i64 80, !8, i64 88, !43, i64 96, !7, i64 104, !7, i64 112, !8, i64 1360, !8, i64 1364, !8, i64 1368, !8, i64 1372, !8, i64 1376, !8, i64 1380, !13, i64 1384, !13, i64 1392, !13, i64 1400, !13, i64 1408, !58, i64 1416, !13, i64 1424, !13, i64 1432, !13, i64 1440, !13, i64 1448, !8, i64 1456, !8, i64 1460, !7, i64 1464, !8, i64 5560, !8, i64 5564, !8, i64 5568}
!67 = !{!66, !8, i64 5564}
!68 = !{!15, !8, i64 44}
!69 = !{!13, !13, i64 0}
!70 = !{!15, !13, i64 72}
!71 = !{!15, !13, i64 80}
!72 = !{!8, !8, i64 0}
!73 = !{!"_cairo_rectangle_int", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!74 = !{!73, !8, i64 8}
!75 = !{!73, !8, i64 12}
!76 = !{!73, !8, i64 0}
!77 = !{!66, !62, i64 0}
!78 = !{!"p1 _ZTS15dt_thumbtable_t", !11, i64 0}
!79 = !{!"dt_ui_t", !7, i64 0, !7, i64 128, !58, i64 176, !58, i64 184, !58, i64 192, !58, i64 200, !78, i64 208, !58, i64 216, !58, i64 224}
!80 = !{!79, !58, i64 200}
!81 = !{!66, !8, i64 1376}
!82 = !{!66, !13, i64 1440}
!83 = !{!58, !58, i64 0}
!84 = !{!"p1 _ZTS11_GTypeClass", !11, i64 0}
!85 = !{!"_GTypeInstance", !84, i64 0}
!86 = !{!85, !84, i64 0}
!87 = !{!"_GTypeClass", !53, i64 0}
!88 = !{!87, !53, i64 0}
!89 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!90 = !{!66, !43, i64 96}
!91 = !{!"short", !7, i64 0}
!92 = !{!"p1 _ZTS7_GError", !11, i64 0}
!93 = !{!92, !92, i64 0}
!94 = !{!"_GError", !8, i64 0, !8, i64 4, !43, i64 8}
!95 = !{!94, !43, i64 8}
!96 = !{!7, !7, i64 0}
!97 = !{!43, !43, i64 0}
!98 = !{!66, !65, i64 80}
!99 = !{!66, !8, i64 1360}
!100 = !{!66, !8, i64 1456}
!101 = !{!66, !8, i64 5560}
!102 = !{!66, !8, i64 1380}
!103 = !{!60, !8, i64 3312}
!104 = !{!60, !8, i64 8}
!105 = !{!60, !25, i64 96}
!106 = !{!66, !13, i64 1448}
end_hunk_3
