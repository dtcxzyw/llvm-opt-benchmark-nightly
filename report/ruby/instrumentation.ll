Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/instrumentation?download=true
inline.NumInlined: 17
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@rb_global_variable

declare i64 @rb_data_typed_object_wrap(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare extern_weak void @rb_define_singleton_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i64 @thread_register_callback(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = and i64 %1, -5
  %i.b = icmp ne i64 %i.a, 0
  %i.c = zext i1 %i.b to i64
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = tail call ptr @rb_internal_thread_add_event_hook(ptr noundef nonnull @ex_callback, i32 noundef 31, ptr noundef %i.d) #8
  store ptr %i.e, ptr @single_hook, align 8, !tbaa !12
  ret i64 4
}

; Function Attrs: nounwind uwtable
define internal i64 @thread_unregister_callback(i64 %0) #0 {
bb.a:
  %i.a = load ptr, ptr @single_hook, align 8, !tbaa !12 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @rb_internal_thread_remove_event_hook(ptr noundef nonnull %i.a) #8 ; 0 uses
  store ptr null, ptr @single_hook, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load i32, ptr @timeline_cursor, align 4, !tbaa !6
  %i.d = zext i32 %i.c to i64
  %i.e = tail call i64 @rb_ary_new_capa(i64 noundef %i.d) #8 ; 2 uses
  %i.f = load i32, ptr @timeline_cursor, align 4, !tbaa !6
  %.not19 = icmp eq i32 %i.f, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %event_symbol.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %event_symbol.exit ], [ 0, %bb.c ] ; 2 uses
  %i.g = tail call i64 @rb_ary_new_capa(i64 noundef 2) #8 ; 3 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr @event_timeline, i64 %indvars.iv ; 2 uses
  %i.i = load i64, ptr %i.h, align 16, !tbaa !15
  %i.j = tail call i64 @rb_ary_push(i64 noundef %i.g, i64 noundef %i.i) #8 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !17   ; 2 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.l)
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %.split.i, label %bb.i

.split.i:                                         ; preds = %.lr.ph
  %i.o = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.l, i1 true)
  switch i32 %i.o, label %bb.i [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
  ]

bb.d:                                             ; preds = %.split.i
  %.pr.i.i = load i64, ptr @event_symbol.rbimpl_id, align 8, !tbaa !10 ; 2 uses
  %.not4.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not4.i.i, label %.lr.ph.i.i, label %event_symbol.exit

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %i.p = tail call i64 @rb_intern2(ptr noundef nonnull @.str.13, i64 noundef 7) #8 ; 3 uses
  store i64 %i.p, ptr @event_symbol.rbimpl_id, align 8, !tbaa !10
  %.not.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %event_symbol.exit, !llvm.loop !18

bb.e:                                             ; preds = %.split.i
  %.pr.i7.i = load i64, ptr @event_symbol.rbimpl_id.19, align 8, !tbaa !10 ; 2 uses
  %.not4.i8.i = icmp eq i64 %.pr.i7.i, 0
  br i1 %.not4.i8.i, label %.lr.ph.i10.i, label %event_symbol.exit

.lr.ph.i10.i:                                     ; preds = %bb.e, %.lr.ph.i10.i
  %i.q = tail call i64 @rb_intern2(ptr noundef nonnull @.str.14, i64 noundef 5) #8 ; 3 uses
  store i64 %i.q, ptr @event_symbol.rbimpl_id.19, align 8, !tbaa !10
  %.not.i11.i = icmp eq i64 %i.q, 0
  br i1 %.not.i11.i, label %.lr.ph.i10.i, label %event_symbol.exit, !llvm.loop !18

bb.f:                                             ; preds = %.split.i
  %.pr.i13.i = load i64, ptr @event_symbol.rbimpl_id.20, align 8, !tbaa !10 ; 2 uses
  %.not4.i14.i = icmp eq i64 %.pr.i13.i, 0
  br i1 %.not4.i14.i, label %.lr.ph.i16.i, label %event_symbol.exit

.lr.ph.i16.i:                                     ; preds = %bb.f, %.lr.ph.i16.i
  %i.r = tail call i64 @rb_intern2(ptr noundef nonnull @.str.15, i64 noundef 7) #8 ; 3 uses
  store i64 %i.r, ptr @event_symbol.rbimpl_id.20, align 8, !tbaa !10
  %.not.i17.i = icmp eq i64 %i.r, 0
  br i1 %.not.i17.i, label %.lr.ph.i16.i, label %event_symbol.exit, !llvm.loop !18

bb.g:                                             ; preds = %.split.i
  %.pr.i19.i = load i64, ptr @event_symbol.rbimpl_id.21, align 8, !tbaa !10 ; 2 uses
  %.not4.i20.i = icmp eq i64 %.pr.i19.i, 0
  br i1 %.not4.i20.i, label %.lr.ph.i22.i, label %event_symbol.exit

.lr.ph.i22.i:                                     ; preds = %bb.g, %.lr.ph.i22.i
  %i.s = tail call i64 @rb_intern2(ptr noundef nonnull @.str.16, i64 noundef 9) #8 ; 3 uses
  store i64 %i.s, ptr @event_symbol.rbimpl_id.21, align 8, !tbaa !10
  %.not.i23.i = icmp eq i64 %i.s, 0
  br i1 %.not.i23.i, label %.lr.ph.i22.i, label %event_symbol.exit, !llvm.loop !18

bb.h:                                             ; preds = %.split.i
  %.pr.i25.i = load i64, ptr @event_symbol.rbimpl_id.22, align 8, !tbaa !10 ; 2 uses
  %.not4.i26.i = icmp eq i64 %.pr.i25.i, 0
  br i1 %.not4.i26.i, label %.lr.ph.i28.i, label %event_symbol.exit

.lr.ph.i28.i:                                     ; preds = %bb.h, %.lr.ph.i28.i
  %i.t = tail call i64 @rb_intern2(ptr noundef nonnull @.str.17, i64 noundef 6) #8 ; 3 uses
  store i64 %i.t, ptr @event_symbol.rbimpl_id.22, align 8, !tbaa !10
  %.not.i29.i = icmp eq i64 %i.t, 0
  br i1 %.not.i29.i, label %.lr.ph.i28.i, label %event_symbol.exit, !llvm.loop !18

bb.i:                                             ; preds = %.split.i, %.lr.ph
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.23) #9
  unreachable

event_symbol.exit:                                ; preds = %.lr.ph.i28.i, %.lr.ph.i22.i, %.lr.ph.i16.i, %.lr.ph.i10.i, %.lr.ph.i.i, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.lcssa.i27.sink.i = phi i64 [ %i.q, %.lr.ph.i10.i ], [ %i.p, %.lr.ph.i.i ], [ %i.s, %.lr.ph.i22.i ], [ %i.r, %.lr.ph.i16.i ], [ %.pr.i.i, %bb.d ], [ %.pr.i7.i, %bb.e ], [ %.pr.i13.i, %bb.f ], [ %.pr.i19.i, %bb.g ], [ %.pr.i25.i, %bb.h ], [ %i.t, %.lr.ph.i28.i ]
  %i.u = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i27.sink.i) #8
  %i.v = tail call i64 @rb_ary_push(i64 noundef %i.g, i64 noundef %i.u) #8 ; 0 uses
  %i.w = tail call i64 @rb_ary_push(i64 noundef %i.e, i64 noundef %i.g) #8 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = load i32, ptr @timeline_cursor, align 4, !tbaa !6
  %i.y = zext i32 %i.x to i64
  %i.z = icmp samesign ult i64 %indvars.iv.next, %i.y
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %event_symbol.exit, %bb.c
  store i32 0, ptr @timeline_cursor, align 4, !tbaa !6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16384) @event_timeline, i8 0, i64 16384, i1 false)
  ret i64 %i.e
}

; Function Attrs: nounwind uwtable
define internal range(i64 0, 21) i64 @thread_register_and_unregister_callback(i64 %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_internal_thread_add_event_hook(ptr noundef nonnull @ex_callback, i32 noundef 2, ptr noundef null) #8
  %i.b = tail call ptr @rb_internal_thread_add_event_hook(ptr noundef nonnull @ex_callback, i32 noundef 2, ptr noundef null) #8
  %i.c = tail call ptr @rb_internal_thread_add_event_hook(ptr noundef nonnull @ex_callback, i32 noundef 2, ptr noundef null) #8
  %i.d = tail call ptr @rb_internal_thread_add_event_hook(ptr noundef nonnull @ex_callback, i32 noundef 2, ptr noundef null) #8
  %i.e = tail call ptr @rb_internal_thread_add_event_hook(ptr noundef nonnull @ex_callback, i32 noundef 2, ptr noundef null) #8
  %i.f = tail call zeroext i1 @rb_internal_thread_remove_event_hook(ptr noundef %i.e) #8
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = tail call zeroext i1 @rb_internal_thread_remove_event_hook(ptr noundef %i.a) #8
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = tail call zeroext i1 @rb_internal_thread_remove_event_hook(ptr noundef %i.d) #8
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = tail call zeroext i1 @rb_internal_thread_remove_event_hook(ptr noundef %i.c) #8
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call zeroext i1 @rb_internal_thread_remove_event_hook(ptr noundef %i.b) #8
  %. = select i1 %i.j, i64 20, i64 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.04 = phi i64 [ 0, %bb.d ], [ %., %bb.e ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i64 %.04
}

; Function Attrs: nounwind uwtable
define internal void @event_timeline_gc_mark(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %i.a = load i32, ptr @timeline_cursor, align 4, !tbaa !6
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr @event_timeline, i64 %indvars.iv
  %i.c = load i64, ptr %i.b, align 16, !tbaa !15
  tail call void @rb_gc_mark(i64 noundef %i.c) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.d = load i32, ptr @timeline_cursor, align 4, !tbaa !6
  %i.e = zext i32 %i.d to i64
  %i.f = icmp samesign ult i64 %indvars.iv.next, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare void @rb_gc_mark(i64 noundef) local_unnamed_addr #1

declare ptr @rb_internal_thread_add_event_hook(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @ex_callback(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(address_is_null) %2) #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !22     ; 11 uses
  %i.b = load i32, ptr @timeline_cursor, align 4, !tbaa !6 ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %find_last_event.exit.thread, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.a
  %3 = zext i32 %i.b to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ %3, %.preheader.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr @event_timeline, i64 %indvars.iv.i ; 2 uses
  %i.d = load i64, ptr %i.c, align 16, !tbaa !15
  %i.e = icmp eq i64 %i.d, %i.a
  br i1 %i.e, label %find_last_event.exit, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %4 = and i64 %indvars.iv.next.i, 4294967295
  %.not10.i = icmp eq i64 %4, 0
  br i1 %.not10.i, label %find_last_event.exit.thread, label %.preheader.i, !llvm.loop !24

find_last_event.exit:                             ; preds = %.preheader.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !17   ; 15 uses
  %.not60 = icmp eq ptr %2, null                  ; 5 uses
  %.not = icmp ne i32 %i.g, 0
  %i.h = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %0)
  %i.i = icmp eq i32 %i.h, 1
  %or.cond36 = select i1 %.not, i1 %i.i, i1 false
  br i1 %or.cond36, label %.split, label %find_last_event.exit.thread

.split:                                           ; preds = %find_last_event.exit
  %i.j = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %0, i1 true)
  switch i32 %i.j, label %find_last_event.exit.thread [
    i32 0, label %bb.c
    i32 1, label %bb.e
    i32 2, label %bb.h
    i32 3, label %bb.k
    i32 4, label %bb.n
  ]

bb.c:                                             ; preds = %.split
  %i.k = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 1, 0) %i.g)
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %.split.i.i, label %event_name.exit.i

.split.i.i:                                       ; preds = %bb.c
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 1, 0) %i.g, i1 true) ; 2 uses
  %i.n = icmp samesign ult i32 %i.m, 5
  br i1 %i.n, label %switch.lookup, label %event_name.exit.i

switch.lookup:                                    ; preds = %.split.i.i
  %i.o = zext nneg i32 %i.m to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ex_callback.5, i64 %i.o
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %event_name.exit.i

event_name.exit.i:                                ; preds = %bb.c, %.split.i.i, %switch.lookup
  %.0.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.18, %.split.i.i ], [ @.str.18, %bb.c ] ; 2 uses
  br i1 %.not60, label %unexpected.exit, label %bb.d

bb.d:                                             ; preds = %event_name.exit.i
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.6, i64 noundef %i.a, ptr noundef nonnull %.0.i.i) #9
  unreachable

unexpected.exit:                                  ; preds = %event_name.exit.i
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.6, i64 noundef %i.a, ptr noundef nonnull %.0.i.i) #10 ; 0 uses
  br label %find_last_event.exit.thread.sink.split

bb.e:                                             ; preds = %.split
  switch i32 %i.g, label %bb.f [
    i32 8, label %find_last_event.exit.thread
    i32 1, label %find_last_event.exit.thread
  ]

bb.f:                                             ; preds = %bb.e
  %i.r = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 1, 0) %i.g)
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %.split.i.i40, label %event_name.exit.i37

.split.i.i40:                                     ; preds = %bb.f
  %i.t = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 1, 0) %i.g, i1 true) ; 2 uses
  %i.u = icmp samesign ult i32 %i.t, 5
  br i1 %i.u, label %switch.lookup69, label %event_name.exit.i37

switch.lookup69:                                  ; preds = %.split.i.i40
  %i.v = zext nneg i32 %i.t to i64
  %switch.gep70 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ex_callback.5, i64 %i.v
  %switch.load71 = load ptr, ptr %switch.gep70, align 8
  br label %event_name.exit.i37

event_name.exit.i37:                              ; preds = %bb.f, %.split.i.i40, %switch.lookup69
  %.0.i.i38 = phi ptr [ %switch.load71, %switch.lookup69 ], [ @.str.18, %.split.i.i40 ], [ @.str.18, %bb.f ] ; 2 uses
  br i1 %.not60, label %unexpected.exit41, label %bb.g

bb.g:                                             ; preds = %event_name.exit.i37
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.7, i64 noundef %i.a, ptr noundef nonnull %.0.i.i38) #9
  unreachable

unexpected.exit41:                                ; preds = %event_name.exit.i37
  %i.w = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.w, ptr noundef nonnull @.str.7, i64 noundef %i.a, ptr noundef nonnull %.0.i.i38) #10 ; 0 uses
  br label %find_last_event.exit.thread.sink.split

bb.h:                                             ; preds = %.split
  %.not34 = icmp eq i32 %i.g, 2
  br i1 %.not34, label %find_last_event.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 1, 0) %i.g)
  %i.z = icmp eq i32 %i.y, 1
  br i1 %i.z, label %.split.i.i45, label %event_name.exit.i42

.split.i.i45:                                     ; preds = %bb.i
  %i.aa = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 1, 0) %i.g, i1 true) ; 2 uses
  %i.ab = icmp samesign ult i32 %i.aa, 5
  br i1 %i.ab, label %switch.lookup72, label %event_name.exit.i42

switch.lookup72:                                  ; preds = %.split.i.i45
  %i.ac = zext nneg i32 %i.aa to i64
  %switch.gep73 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ex_callback.5, i64 %i.ac
  %switch.load74 = load ptr, ptr %switch.gep73, align 8
  br label %event_name.exit.i42

event_name.exit.i42:                              ; preds = %bb.i, %.split.i.i45, %switch.lookup72
  %.0.i.i43 = phi ptr [ %switch.load74, %switch.lookup72 ], [ @.str.18, %.split.i.i45 ], [ @.str.18, %bb.i ] ; 2 uses
  br i1 %.not60, label %unexpected.exit46, label %bb.j

bb.j:                                             ; preds = %event_name.exit.i42
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.8, i64 noundef %i.a, ptr noundef nonnull %.0.i.i43) #9
  unreachable

unexpected.exit46:                                ; preds = %event_name.exit.i42
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ad, ptr noundef nonnull @.str.8, i64 noundef %i.a, ptr noundef nonnull %.0.i.i43) #10 ; 0 uses
  br label %find_last_event.exit.thread.sink.split

bb.k:                                             ; preds = %.split
  %.not33 = icmp eq i32 %i.g, 4
  br i1 %.not33, label %find_last_event.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 1, 0) %i.g)
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %.split.i.i50, label %event_name.exit.i47

.split.i.i50:                                     ; preds = %bb.l
  %i.ah = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 1, 0) %i.g, i1 true) ; 2 uses
  %i.ai = icmp samesign ult i32 %i.ah, 5
  br i1 %i.ai, label %switch.lookup75, label %event_name.exit.i47

switch.lookup75:                                  ; preds = %.split.i.i50
  %i.aj = zext nneg i32 %i.ah to i64
  %switch.gep76 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ex_callback.5, i64 %i.aj
  %switch.load77 = load ptr, ptr %switch.gep76, align 8
  br label %event_name.exit.i47

event_name.exit.i47:                              ; preds = %bb.l, %.split.i.i50, %switch.lookup75
  %.0.i.i48 = phi ptr [ %switch.load77, %switch.lookup75 ], [ @.str.18, %.split.i.i50 ], [ @.str.18, %bb.l ] ; 2 uses
  br i1 %.not60, label %unexpected.exit51, label %bb.m

bb.m:                                             ; preds = %event_name.exit.i47
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.9, i64 noundef %i.a, ptr noundef nonnull %.0.i.i48) #9
  unreachable

unexpected.exit51:                                ; preds = %event_name.exit.i47
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.al = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ak, ptr noundef nonnull @.str.9, i64 noundef %i.a, ptr noundef nonnull %.0.i.i48) #10 ; 0 uses
  br label %find_last_event.exit.thread.sink.split

bb.n:                                             ; preds = %.split
  switch i32 %i.g, label %bb.o [
    i32 8, label %find_last_event.exit.thread
    i32 4, label %find_last_event.exit.thread
  ]

bb.o:                                             ; preds = %bb.n
  %i.am = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 range(i32 1, 0) %i.g)
  %i.an = icmp eq i32 %i.am, 1
  br i1 %i.an, label %.split.i.i55, label %event_name.exit.i52

.split.i.i55:                                     ; preds = %bb.o
  %i.ao = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 range(i32 1, 0) %i.g, i1 true) ; 2 uses
  %i.ap = icmp samesign ult i32 %i.ao, 5
  br i1 %i.ap, label %switch.lookup78, label %event_name.exit.i52

switch.lookup78:                                  ; preds = %.split.i.i55
  %i.aq = zext nneg i32 %i.ao to i64
  %switch.gep79 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.ex_callback.5, i64 %i.aq
  %switch.load80 = load ptr, ptr %switch.gep79, align 8
  br label %event_name.exit.i52

event_name.exit.i52:                              ; preds = %bb.o, %.split.i.i55, %switch.lookup78
  %.0.i.i53 = phi ptr [ %switch.load80, %switch.lookup78 ], [ @.str.18, %.split.i.i55 ], [ @.str.18, %bb.o ] ; 2 uses
  br i1 %.not60, label %unexpected.exit56, label %bb.p

bb.p:                                             ; preds = %event_name.exit.i52
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.10, i64 noundef %i.a, ptr noundef nonnull %.0.i.i53) #9
  unreachable

unexpected.exit56:                                ; preds = %event_name.exit.i52
  %i.ar = load ptr, ptr @stderr, align 8, !tbaa !25
  %i.as = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ar, ptr noundef nonnull @.str.10, i64 noundef %i.a, ptr noundef nonnull %.0.i.i53) #10 ; 0 uses
  br label %find_last_event.exit.thread.sink.split

find_last_event.exit.thread.sink.split:           ; preds = %unexpected.exit56, %unexpected.exit51, %unexpected.exit46, %unexpected.exit41, %unexpected.exit
  %i.at = load ptr, ptr @stderr, align 8, !tbaa !25
  %fputc.i = tail call i32 @fputc(i32 10, ptr %i.at) ; 0 uses
  br label %find_last_event.exit.thread

find_last_event.exit.thread:                      ; preds = %bb.b, %find_last_event.exit.thread.sink.split, %bb.a, %bb.n, %bb.n, %bb.e, %bb.e, %.split, %bb.h, %bb.k, %find_last_event.exit
  %i.au = atomicrmw volatile add ptr @timeline_cursor, i32 1 seq_cst, align 4 ; 2 uses
  %i.av = icmp ugt i32 %i.au, 1023
  br i1 %i.av, label %bb.q, label %bb.r

bb.q:                                             ; preds = %find_last_event.exit.thread
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.11) #9
  unreachable
end_hunk_0
