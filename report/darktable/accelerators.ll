Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/accelerators?download=true
inline.NumInlined: 193
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@dt_shortcut_key_press:bb.a
  br label %bb.ai

bb.ag:                                            ; preds = %_interrupt_delayed_release.exit
  %i.dw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 32), align 8, !tbaa !95
  %.not89 = icmp eq ptr %i.dw, null
  br i1 %.not89, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call fastcc void @_ungrab_grab_widget()
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @_sc, i8 0, i64 56, i1 false)
  br label %.critedge95

bb.ai:                                            ; preds = %bb.ag, %bb.af
  %i.dx = phi ptr [ %i.dm, %bb.ag ], [ %.pre102, %bb.af ] ; 2 uses
  %i.dy = icmp ne ptr %i.dx, null
  %i.dz = load i32, ptr @_last_time, align 4
  %i.ea = add i32 %i.dz, 2000
  %i.eb = icmp ugt i32 %1, %i.ea
  %i.ec = select i1 %i.dy, i1 %i.eb, i1 false
  %i.ed = zext i1 %i.ec to i32
  store i32 %i.ed, ptr @_break_stuck, align 4, !tbaa !12
  store i32 %1, ptr @_last_time, align 4, !tbaa !12
  store i8 %0, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 8), align 8, !tbaa !90
  store i32 %2, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 12), align 4, !tbaa !91
  store i32 0, ptr @_pressed_button, align 4, !tbaa !12
  %i.ee = load i16, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4
  %i.ef = and i16 %i.ee, -2041
  store i16 %i.ef, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4
  %i.eg = call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #26 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eg, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !271
  %i.eh = call ptr @g_slist_prepend(ptr noundef %i.dx, ptr noundef nonnull %i.eg) #23
  store ptr %i.eh, ptr @_pressed_keys, align 8, !tbaa !67
  %i.ei = add i32 %2, -65361
  %i.ej = icmp ult i32 %i.ei, 4
  br i1 %i.ej, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @dt_shortcut_key_release(i8 noundef zeroext 0, i32 noundef %1, i32 noundef %2)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.al

.critedge95:                                      ; preds = %bb.ah, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.al

bb.al:                                            ; preds = %bb.e, %bb.f, %bb.ak, %.critedge95
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

declare ptr @g_slist_find_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @_cmp_key(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #12 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !218
  %i.b = load i8, ptr %1, align 8, !tbaa !218
  %.not = icmp eq i8 %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !219
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !219
  %i.g = icmp ne i32 %i.d, %i.f
  %i.h = zext i1 %i.g to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i32 [ 1, %bb.a ], [ %i.h, %bb.b ]
  ret i32 %i.i
}

declare ptr @g_sequence_lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @g_slist_prepend(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @dt_gui_long_click(i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @gdk_seat_grab(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @gdk_display_get_default_seat(ptr noundef) local_unnamed_addr #1

declare ptr @gtk_widget_get_window(ptr noundef) local_unnamed_addr #1

declare ptr @dt_ui_main_window(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @dt_shortcut_key_release(i8 noundef zeroext %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.dt_device_key_t, align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  store i8 %0, ptr %3, align 8, !tbaa !218
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !219
  %i.b = load ptr, ptr @_hold_keys, align 8, !tbaa !67
  %i.c = call ptr @g_slist_find_custom(ptr noundef %i.b, ptr noundef nonnull %3, ptr noundef nonnull @_cmp_key) #23 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !221
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !212
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !222
  %i.k = call reassoc nsz arcp contract afn float %i.h(ptr noundef null, i32 noundef %i.j, i32 noundef 2, float noundef 1.000000e+00) #23 ; 0 uses
  call void @g_free(ptr noundef %i.d) #23
  %i.l = load ptr, ptr @_hold_keys, align 8, !tbaa !67
  %i.m = call ptr @g_slist_delete_link(ptr noundef %i.l, ptr noundef nonnull %i.c) #23
  store ptr %i.m, ptr @_hold_keys, align 8, !tbaa !67
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr @_pressed_keys, align 8, !tbaa !67
  %i.o = call ptr @g_slist_find_custom(ptr noundef %i.n, ptr noundef nonnull %3, ptr noundef nonnull @_cmp_key) #23 ; 3 uses
  %.not16 = icmp eq ptr %i.o, null
  br i1 %.not16, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr @_timeout_source, align 4, !tbaa !12 ; 2 uses
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %_interrupt_delayed_release.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = call i32 @g_source_remove(i32 noundef %i.p) #23, !inline_history !214 ; 0 uses
  store i32 0, ptr @_timeout_source, align 4, !tbaa !12
  %i.r = call reassoc nsz arcp contract afn float @dt_shortcut_move(i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, float noundef 1.000000e+00), !inline_history !214 ; 0 uses
  %i.s = load i32, ptr @_pressed_button, align 4, !tbaa !12
  %i.t = trunc i32 %i.s to i16
  %i.u = load i16, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4
  %i.v = shl i16 %i.t, 3
  %i.w = and i16 %i.v, 56
  %i.x = and i16 %i.u, -505
  %i.y = or disjoint i16 %i.w, %i.x
  store i16 %i.y, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4
  br label %_interrupt_delayed_release.exit

_interrupt_delayed_release.exit:                  ; preds = %bb.d, %bb.e
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !69
  call void @g_free(ptr noundef %i.z) #23
  %i.aa = load ptr, ptr @_pressed_keys, align 8, !tbaa !67
  %i.ab = call ptr @g_slist_delete_link(ptr noundef %i.aa, ptr noundef nonnull %i.o) #23
  store ptr %i.ab, ptr @_pressed_keys, align 8, !tbaa !67
  %i.ac = load i8, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 8), align 8, !tbaa !90
  %.not17 = icmp eq i8 %i.ac, %0
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 12), align 4
  %.not18 = icmp eq i32 %i.ad, %2
  %or.cond = select i1 %.not17, i1 %.not18, i1 false
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_interrupt_delayed_release.exit
  store i32 0, ptr @_break_stuck, align 4, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %_interrupt_delayed_release.exit, %bb.f
  store i8 %0, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 8), align 8, !tbaa !90
  store i32 %2, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 12), align 4, !tbaa !91
  call fastcc void @_delay_for_double_triple(i32 noundef %1, i32 noundef -1)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

declare ptr @g_slist_delete_link(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @_delay_for_double_triple(i32 noundef %0, i32 noundef range(i32 -1, 1) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !12
  %i.b = tail call ptr @gtk_settings_get_default() #23
  call void (ptr, ptr, ...) @g_object_get(ptr noundef %i.b, ptr noundef nonnull @.str.338, ptr noundef nonnull %i.a, ptr noundef null) #23
  %i.c = load i32, ptr @_last_time, align 4, !tbaa !12
  %i.d = sub i32 %0, %i.c                         ; 12 uses
  %i.e = load i32, ptr %i.a, align 4, !tbaa !12   ; 5 uses
  %i.f = icmp ugt i32 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i16, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4 ; 2 uses
  %i.h = trunc nsw i32 %1 to i16                  ; 2 uses
  %i.i = and i16 %i.h, 1
  %i.j = shl nsw i16 %i.h, 6
  %i.k = and i16 %i.j, 64
  %.mask = and i16 %i.g, 448
  %.masked = and i16 %i.g, -449
  %i.l = or disjoint i16 %i.k, %i.i
  %i.m = or i16 %i.l, %.masked
  %i.n = xor i16 %i.m, 64
  %i.o = or i16 %i.n, %.mask
  store i16 %i.o, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4
  br label %bb.ar

bb.c:                                             ; preds = %bb.a
  %i.p = load i32, ptr @_break_stuck, align 4, !tbaa !12
  %.not = icmp ne i32 %i.p, 0
  %.pre = load i16, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4 ; 6 uses
  %i.q = and i16 %.pre, 56
  %.not45 = icmp eq i16 %i.q, 0
  %or.cond92 = select i1 %.not, i1 %.not45, i1 false
  br i1 %or.cond92, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call fastcc void @_ungrab_grab_widget()
  %i.r = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.339, i32 noundef 5) #23
  call void (ptr, ...) @dt_control_log(ptr noundef %i.r) #23
  br label %bb.au

bb.e:                                             ; preds = %bb.c
  %.not46 = icmp eq i32 %1, 0                     ; 3 uses
  %i.s = lshr i16 %.pre, 6
  %.in.in = select i1 %.not46, i16 %i.s, i16 %.pre
  %i.t = and i16 %.in.in, 4
  %.not47 = icmp eq i16 %i.t, 0
  br i1 %.not47, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = add i32 %i.d, %i.e
  br label %bb.ar

bb.g:                                             ; preds = %bb.e
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 32), align 8, !tbaa !95
  %.not48 = icmp eq ptr %i.v, null
  br i1 %.not48, label %bb.h, label %bb.ar

bb.h:                                             ; preds = %bb.g
  %i.w = trunc nsw i32 %1 to i16
  %i.x = and i16 %i.w, 2                          ; 3 uses
  %i.y = add i16 %.pre, %i.x
  %i.z = and i16 %i.y, 7
  %i.aa = and i16 %.pre, -456
  %i.ab = or disjoint i16 %i.z, %i.aa
  %i.ac = shl nuw nsw i16 %i.x, 6
  %i.ad = xor i16 %i.ac, 128                      ; 2 uses
  %i.ae = add i16 %.pre, %i.ad
  %i.af = and i16 %i.ae, 448
  %i.ag = or disjoint i16 %i.ab, %i.af
  store i16 %i.ag, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4
  %i.ah = call i32 @dt_view_get_current() #23     ; 2 uses
  store i32 %i.ah, ptr @_sc, align 8, !tbaa !89
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !65
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 552
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !86
  %i.al = sext i32 %i.ah to i64
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = call ptr @g_sequence_search(ptr noundef %i.ak, ptr noundef nonnull @_sc, ptr noundef nonnull @_shortcut_compare_func, ptr noundef %i.am) #23 ; 3 uses
  %i.ao = call i32 @g_sequence_iter_is_end(ptr noundef %i.an) #23
  %.not50 = icmp eq i32 %i.ao, 0
  br i1 %.not50, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ap = call ptr @g_sequence_get(ptr noundef %i.an) #23 ; 5 uses
  %.not51 = icmp eq ptr %i.ap, null
  br i1 %.not51, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !90
  %i.as = load i8, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 8), align 8, !tbaa !90
  %i.at = icmp eq i8 %i.ar, %i.as
  br i1 %i.at, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !91
  %i.aw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 12), align 4, !tbaa !91
  %i.ax = icmp eq i32 %i.av, %i.aw
  br i1 %i.ax, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  %i.az = load i16, ptr %i.ay, align 4            ; 3 uses
  br i1 %.not46, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = and i16 %i.az, 7
  %i.bb = load i16, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4 ; 2 uses
  %i.bc = and i16 %i.bb, 7
  %.not53 = icmp samesign ult i16 %i.ba, %i.bc
  br i1 %.not53, label %bb.p, label %.thread69

bb.n:                                             ; preds = %bb.l
  %i.bd = load i16, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4 ; 3 uses
  %i.be = xor i16 %i.bd, %i.az
  %i.bf = and i16 %i.be, 63
  %or.cond = icmp eq i16 %i.bf, 0
  br i1 %or.cond, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bg = lshr i16 %i.az, 6
  %i.bh = and i16 %i.bg, 7
  %i.bi = lshr i16 %i.bd, 6
  %i.bj = and i16 %i.bi, 7
  %.not52 = icmp samesign ult i16 %i.bh, %i.bj
  br i1 %.not52, label %bb.p, label %.thread69

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.k, %bb.j, %bb.i
  %i.bk = load i16, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4 ; 2 uses
  %i.bl = and i16 %i.bk, 448
  %.not54 = icmp eq i16 %i.bl, 0
  br i1 %.not54, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !65 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 560
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !172
  %.not55 = icmp eq i32 %i.bo, 0
  br i1 %.not55, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !95 ; 3 uses
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !99 ; 2 uses
  %.not15.i = icmp eq i32 %i.br, 11
  br i1 %.not15.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !100
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = trunc i64 %i.bu to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bw = phi i32 [ %i.bv, %bb.t ], [ %i.br, %bb.s ] ; 2 uses
  %i.bx = add i32 %i.bw, -15                      ; 3 uses
  %i.by = icmp sgt i32 %i.bx, -1
  br i1 %i.by, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bm, i64 584
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !101 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !103
  %i.cd = icmp ult i32 %i.bx, %i.cc
  br i1 %i.cd, label %_action_find_definition.exit, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  switch i32 %i.bw, label %.thread [
    i32 4, label %_action_find_definition.exit.thread
    i32 3, label %bb.x
    i32 12, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  br label %_action_find_definition.exit.thread

bb.y:                                             ; preds = %bb.w
  br label %_action_find_definition.exit.thread

_action_find_definition.exit:                     ; preds = %bb.v
  %i.ce = load ptr, ptr %i.ca, align 8, !tbaa !104
  %i.cf = zext nneg i32 %i.bx to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !73 ; 2 uses
  %.not56 = icmp eq ptr %i.ch, null
  br i1 %.not56, label %.thread, label %_action_find_definition.exit.thread

_action_find_definition.exit.thread:              ; preds = %bb.w, %bb.y, %bb.x, %_action_find_definition.exit
  %.1.i62 = phi ptr [ %i.ch, %_action_find_definition.exit ], [ @dt_action_def_iop, %bb.w ], [ @dt_action_def_value, %bb.y ], [ @dt_action_def_lib, %bb.x ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.1.i62, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !110
  %.not57 = icmp eq ptr %i.cj, null
  br i1 %.not57, label %.thread, label %.thread69

.thread:                                          ; preds = %bb.q, %bb.p, %_action_find_definition.exit, %_action_find_definition.exit.thread, %bb.r, %bb.w, %bb.h
  %i.ck = call ptr @g_sequence_iter_prev(ptr noundef %i.an) #23 ; 3 uses
  %i.cl = call i32 @g_sequence_iter_is_end(ptr noundef %i.ck) #23
  %.not50.1 = icmp eq i32 %i.cl, 0
  br i1 %.not50.1, label %bb.z, label %bb.aq

bb.z:                                             ; preds = %.thread
  %i.cm = call ptr @g_sequence_get(ptr noundef %i.ck) #23 ; 5 uses
  %.not51.1 = icmp eq ptr %i.cm, null
  br i1 %.not51.1, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !90
  %i.cp = load i8, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 8), align 8, !tbaa !90
  %i.cq = icmp eq i8 %i.co, %i.cp
  br i1 %i.cq, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !91
  %i.ct = load i32, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 12), align 4, !tbaa !91
  %i.cu = icmp eq i32 %i.cs, %i.ct
  br i1 %i.cu, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cm, i64 20
  %i.cw = load i16, ptr %i.cv, align 4            ; 3 uses
  br i1 %.not46, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cx = and i16 %i.cw, 7
  %i.cy = load i16, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4 ; 2 uses
  %i.cz = and i16 %i.cy, 7
  %.not53.1 = icmp samesign ult i16 %i.cx, %i.cz
  br i1 %.not53.1, label %bb.ag, label %.thread69

bb.ae:                                            ; preds = %bb.ac
  %i.da = load i16, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4 ; 3 uses
  %i.db = xor i16 %i.da, %i.cw
  %i.dc = and i16 %i.db, 63
  %or.cond.1 = icmp eq i16 %i.dc, 0
  br i1 %or.cond.1, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dd = lshr i16 %i.cw, 6
  %i.de = and i16 %i.dd, 7
  %i.df = lshr i16 %i.da, 6
  %i.dg = and i16 %i.df, 7
  %.not52.1 = icmp samesign ult i16 %i.de, %i.dg
  br i1 %.not52.1, label %bb.ag, label %.thread69

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ab, %bb.aa, %bb.z
  %i.dh = load i16, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4 ; 2 uses
  %i.di = and i16 %i.dh, 448
  %.not54.1 = icmp eq i16 %i.di, 0
  br i1 %.not54.1, label %.thread.1, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !65 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 560
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !172
  %.not55.1 = icmp eq i32 %i.dl, 0
  br i1 %.not55.1, label %.thread.1, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !95 ; 3 uses
  %.not.i.1 = icmp eq ptr %i.dn, null
  br i1 %.not.i.1, label %.thread.1, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !99 ; 2 uses
  %.not15.i.1 = icmp eq i32 %i.do, 11
  br i1 %.not15.i.1, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !100
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = trunc i64 %i.dr to i32
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.dt = phi i32 [ %i.ds, %bb.ak ], [ %i.do, %bb.aj ] ; 2 uses
  %i.du = add i32 %i.dt, -15                      ; 3 uses
  %i.dv = icmp sgt i32 %i.du, -1
  br i1 %i.dv, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dj, i64 584
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !101 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !103
  %i.ea = icmp ult i32 %i.du, %i.dz
  br i1 %i.ea, label %_action_find_definition.exit.1, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  switch i32 %i.dt, label %.thread.1 [
    i32 4, label %_action_find_definition.exit.thread.1
    i32 3, label %bb.ap
    i32 12, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an
  br label %_action_find_definition.exit.thread.1

bb.ap:                                            ; preds = %bb.an
  br label %_action_find_definition.exit.thread.1

_action_find_definition.exit.1:                   ; preds = %bb.am
  %i.eb = load ptr, ptr %i.dx, align 8, !tbaa !104
  %i.ec = zext nneg i32 %i.du to i64
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ec
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !73 ; 2 uses
  %.not56.1 = icmp eq ptr %i.ee, null
  br i1 %.not56.1, label %.thread.1, label %_action_find_definition.exit.thread.1

_action_find_definition.exit.thread.1:            ; preds = %_action_find_definition.exit.1, %bb.ap, %bb.ao, %bb.an
  %.1.i62.1 = phi ptr [ %i.ee, %_action_find_definition.exit.1 ], [ @dt_action_def_iop, %bb.an ], [ @dt_action_def_value, %bb.ao ], [ @dt_action_def_lib, %bb.ap ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.1.i62.1, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !110
  %.not57.1 = icmp eq ptr %i.eg, null
  br i1 %.not57.1, label %.thread.1, label %.thread69

.thread.1:                                        ; preds = %_action_find_definition.exit.thread.1, %_action_find_definition.exit.1, %bb.an, %bb.ai, %bb.ah, %bb.ag
  %i.eh = load i32, ptr %i.a, align 4
  %.138.1 = add i32 %i.eh, %i.d
  br label %bb.aq

bb.aq:                                            ; preds = %.thread.1, %.thread
  %.3.1 = phi i32 [ %i.d, %.thread ], [ %.138.1, %.thread.1 ]
  %i.ei = call ptr @g_sequence_iter_prev(ptr noundef %i.ck) #23 ; 0 uses
  %.pre76 = load i16, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4
  br label %.thread69

.thread69:                                        ; preds = %bb.aq, %_action_find_definition.exit.thread.1, %bb.af, %bb.ad, %_action_find_definition.exit.thread, %bb.o, %bb.m
  %i.ej = phi i16 [ %i.bk, %_action_find_definition.exit.thread ], [ %i.bd, %bb.o ], [ %i.bb, %bb.m ], [ %.pre76, %bb.aq ], [ %i.cy, %bb.ad ], [ %i.da, %bb.af ], [ %i.dh, %_action_find_definition.exit.thread.1 ] ; 3 uses
  %.037.lcssa = phi i32 [ %i.d, %_action_find_definition.exit.thread ], [ %i.d, %bb.o ], [ %i.d, %bb.m ], [ %.3.1, %bb.aq ], [ %i.d, %bb.ad ], [ %i.d, %bb.af ], [ %i.d, %_action_find_definition.exit.thread.1 ]
  %i.ek = sub i16 %i.ej, %i.x
  %i.el = and i16 %i.ek, 7
  %i.em = and i16 %i.ej, -456
  %i.en = or disjoint i16 %i.el, %i.em
  %i.eo = sub i16 %i.ej, %i.ad
  %i.ep = and i16 %i.eo, 448
  %i.eq = or disjoint i16 %i.en, %i.ep
  store i16 %i.eq, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4
  %.pre77 = load i32, ptr %i.a, align 4, !tbaa !12
  br label %bb.ar

bb.ar:                                            ; preds = %bb.g, %.thread69, %bb.f, %bb.b
  %i.er = phi i32 [ %i.e, %bb.b ], [ %i.e, %bb.f ], [ %i.e, %bb.g ], [ %.pre77, %.thread69 ] ; 3 uses
  %.5 = phi i32 [ %i.d, %bb.b ], [ %i.u, %bb.f ], [ %i.d, %bb.g ], [ %.037.lcssa, %.thread69 ] ; 3 uses
  %.not59 = icmp eq i32 %1, 0
  %2 = select i1 %.not59, ptr @_button_release_delayed, ptr @_key_release_delayed ; 2 uses
  %i.es = icmp ult i32 %.5, %i.er
  br i1 %i.es, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.et = sub nuw i32 %i.er, %.5
  %i.eu = call i32 @g_timeout_add(i32 noundef %i.et, ptr noundef nonnull %2, ptr noundef null) #23
  store i32 %i.eu, ptr @_timeout_source, align 4, !tbaa !12
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %3 = shl nsw i32 %i.er, 1
  %4 = icmp ugt i32 %.5, %3
  %5 = zext i1 %4 to i64
  %6 = inttoptr i64 %5 to ptr
  %7 = call i32 %2(ptr noundef %6) #23, !callees !272 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @dt_shortcut_key_active(i8 noundef zeroext %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.dt_shortcut_t, align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @_sc, i64 56, i1 false), !tbaa.struct !163
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) getelementptr inbounds nuw (i8, ptr @_sc, i64 9), i8 0, i64 3, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_sc, i64 16), i8 0, i64 40, i1 false)
  store i64 0, ptr @_sc, align 8, !tbaa !12
  store i8 %0, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 8), align 8, !tbaa !11
  store i32 %1, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 12), align 4, !tbaa !12
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 24), align 8, !tbaa !93
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 48), align 8, !tbaa !131
  store i16 0, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4
  store i32 0, ptr @_break_stuck, align 4, !tbaa !12
  %i.a = tail call reassoc nsz arcp contract afn fastcc float @_process_shortcut(float noundef f0xFF7FFFFF), !inline_history !273 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @_sc, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false), !tbaa.struct !163
  %i.b = frem reassoc nsz arcp contract afn float %i.a, 1.000000e+00
  %i.c = fcmp reassoc nsz arcp contract afn ugt float %i.b, -5.000000e-01
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = frem reassoc nsz arcp contract afn float %i.a, 2.000000e+00
  %i.e = fcmp reassoc nsz arcp contract afn ogt float %i.d, 5.000000e-01
  %i.f = zext i1 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i32 [ 1, %bb.a ], [ %i.f, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @dt_shortcut_dispatcher(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 6 uses
  %3 = alloca %struct.dt_shortcut_t, align 8      ; 8 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %4 = alloca %struct.dt_shortcut_t, align 8      ; 5 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = alloca i32, align 4                      ; 2 uses
  %i.e = load i32, ptr %1, align 8, !tbaa !11     ; 4 uses
  %i.f = and i32 %i.e, -4
  %switch = icmp eq i32 %i.f, 4
  br i1 %switch, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.h = load i32, ptr %i.g, align 4, !tbaa !11   ; 2 uses
  %i.i = icmp ugt i32 %i.h, 7
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %i.e, 7
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !11   ; 2 uses
  %i.m = add i32 %i.h, -7                         ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @dt_shortcut_key_release(i8 noundef zeroext 1, i32 noundef %i.l, i32 noundef %i.m)
  br label %g_set_weak_pointer.exit

bb.e:                                             ; preds = %bb.c
  tail call void @dt_shortcut_key_press(i8 noundef zeroext 1, i32 noundef %i.l, i32 noundef %i.m)
  br label %g_set_weak_pointer.exit

bb.f:                                             ; preds = %bb.a, %bb.b
  %i.n = load ptr, ptr @_pressed_keys, align 8, !tbaa !67
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %bb.ad

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 32), align 8, !tbaa !95 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !95
  switch i32 %i.e, label %.thread205 [
    i32 4, label %bb.h
    i32 31, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.s = load i32, ptr %i.r, align 4, !tbaa !11
  %i.t = icmp eq i32 %i.s, 2
  br i1 %i.t, label %bb.i, label %.thread205

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.u = phi i1 [ false, %bb.g ], [ true, %bb.h ]
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !65
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 568
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !132  ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %.thread205, label %dt_action_widget.exit

dt_action_widget.exit:                            ; preds = %bb.j
  %i.y = load i32, ptr @_action_quark, align 4, !tbaa !12
  %i.z = tail call ptr @g_object_get_qdata(ptr noundef nonnull %i.x, i32 noundef %i.y) #23 ; 2 uses
  store ptr %i.z, ptr %i.p, align 8, !tbaa !95
  %.not154 = icmp eq ptr %i.z, null
  br i1 %.not154, label %.thread205, label %bb.k

bb.k:                                             ; preds = %dt_action_widget.exit, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  br i1 %i.u, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = call i32 @dt_gui_get_scroll_unit_delta(ptr noundef nonnull %1, ptr noundef nonnull %i.b) #23
  %.not168 = icmp eq i32 %i.aa, 0
  br i1 %.not168, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = load i32, ptr %i.b, align 4, !tbaa !12
  %i.ac = call reassoc nsz arcp contract afn float @llvm.powi.f32.i32(float 1.000000e+01, i32 %i.ab)
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.m
  %i.ad = phi reassoc nsz arcp contract afn float [ %i.ac, %bb.m ], [ -1.000000e+00, %bb.k ]
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 48
  store float %i.ad, ptr %i.ae, align 8, !tbaa !131
  %i.af = call fastcc i32 @_insert_shortcut(ptr noundef %3, i32 noundef 1, i32 noundef 0)
  %.not169 = icmp eq i32 %i.af, 0
  br i1 %.not169, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.critedge
  call fastcc void @_action_description(ptr noundef nonnull %3, i32 noundef 2)
  call void (ptr, ...) @dt_control_log(ptr noundef nonnull @.str.94, ptr noundef nonnull @_action_description.hint) #23
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.a, i8 0, i64 4096, i1 false)
  call void @dt_loc_get_user_config_dir(ptr noundef nonnull %i.a, i64 noundef 4096) #23
  %i.ag = call i64 @g_strlcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.148, i64 noundef 4096) #23 ; 0 uses
  call fastcc void @_shortcuts_save(ptr noundef nonnull %i.a, i8 noundef zeroext -1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.critedge188

.thread205:                                       ; preds = %bb.j, %bb.g, %bb.h, %dt_action_widget.exit
  %i.ah = load ptr, ptr @_grab_widget, align 8, !tbaa !215
  %.not155 = icmp ne ptr %i.ah, null
  %.pr = load i32, ptr %1, align 8, !tbaa !11     ; 4 uses
  %i.ai = icmp eq i32 %.pr, 4
  %or.cond248 = select i1 %.not155, i1 %i.ai, i1 false
  br i1 %or.cond248, label %bb.q, label %thread-pre-split

bb.q:                                             ; preds = %.thread205
  tail call fastcc void @_ungrab_grab_widget()
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @_sc, i8 0, i64 56, i1 false)
  br label %.critedge188

thread-pre-split:                                 ; preds = %.thread205
  switch i32 %.pr, label %.critedge188 [
    i32 8, label %bb.r
    i32 9, label %bb.r
    i32 12, label %bb.r
  ]

bb.r:                                             ; preds = %thread-pre-split, %thread-pre-split, %thread-pre-split
  %i.aj = tail call i64 @gtk_window_get_type() #24 ; 2 uses
  %.not159 = icmp eq ptr %0, null
  br i1 %.not159, label %.critedge188.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ak = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  %.not160 = icmp eq ptr %i.ak, null
  br i1 %.not160, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !19
  %i.am = icmp eq i64 %i.al, %i.aj
  br i1 %i.am, label %.critedge190, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.an = tail call i32 @g_type_check_instance_is_a(ptr noundef nonnull %0, i64 noundef %i.aj) #25
  %i.ao = icmp ne i32 %i.an, 0
  %switch196 = icmp samesign ult i32 %.pr, 10
  %or.cond220 = and i1 %switch196, %i.ao
  br i1 %or.cond220, label %bb.v, label %.critedge188.thread

.critedge190:                                     ; preds = %bb.t
  %switch196.old = icmp samesign ult i32 %.pr, 10
  br i1 %switch196.old, label %bb.v, label %.critedge188.thread

bb.v:                                             ; preds = %bb.u, %.critedge190
  %i.ap = tail call ptr @gtk_window_get_focus(ptr noundef nonnull %0) #23 ; 5 uses
  %.not162 = icmp eq ptr %i.ap, null
  br i1 %.not162, label %.critedge188.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aq = tail call i32 @gtk_widget_event(ptr noundef nonnull %i.ap, ptr noundef nonnull %1) #23
  %.not163 = icmp eq i32 %i.aq, 0
  br i1 %.not163, label %bb.x, label %.critedge188

bb.x:                                             ; preds = %bb.w
  %i.ar = tail call i64 @gtk_entry_get_type() #24 ; 2 uses
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !16 ; 3 uses
  %.not164 = icmp eq ptr %i.as, null              ; 2 uses
  br i1 %.not164, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.at = load i64, ptr %i.as, align 8, !tbaa !19
  %i.au = icmp eq i64 %i.at, %i.ar
  br i1 %i.au, label %.critedge192, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.av = tail call i32 @g_type_check_instance_is_a(ptr noundef nonnull %i.ap, i64 noundef %i.ar) #25
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.aa, label %.critedge192

bb.aa:                                            ; preds = %bb.z
  %i.ax = tail call i64 @gtk_tree_view_get_type() #24 ; 2 uses
  br i1 %.not164, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !19
  %i.az = icmp eq i64 %i.ay, %i.ax
  br i1 %i.az, label %.critedge192, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ba = tail call i32 @g_type_check_instance_is_a(ptr noundef nonnull %i.ap, i64 noundef %i.ax) #25
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %.critedge188.thread, label %.critedge192

.critedge192:                                     ; preds = %bb.ab, %bb.y, %bb.ac, %bb.z
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !11
  switch i32 %i.bd, label %.critedge188.thread [
    i32 65289, label %.critedge188
    i32 65417, label %.critedge188
    i32 65056, label %.critedge188
  ]

.critedge188.thread:                              ; preds = %bb.u, %bb.r, %.critedge190, %.critedge192, %bb.ac, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.pre = load i32, ptr %1, align 8, !tbaa !11
  br label %bb.ad

.critedge188:                                     ; preds = %.critedge192, %.critedge192, %.critedge192, %bb.w, %thread-pre-split, %bb.q, %bb.p
  %.2 = phi i32 [ 1, %bb.p ], [ 1, %bb.q ], [ 0, %thread-pre-split ], [ 0, %.critedge192 ], [ 0, %.critedge192 ], [ 0, %.critedge192 ], [ 1, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %g_set_weak_pointer.exit

bb.ad:                                            ; preds = %.critedge188.thread, %bb.f
  %i.be = phi i32 [ %.pre, %.critedge188.thread ], [ %i.e, %bb.f ]
  switch i32 %i.be, label %g_set_weak_pointer.exit [
    i32 8, label %bb.ae
    i32 9, label %bb.am
    i32 35, label %bb.as
    i32 32, label %bb.au
    i32 12, label %bb.aw
    i32 31, label %bb.bd
    i32 3, label %bb.bi
    i32 4, label %bb.bw
    i32 5, label %bb.ca
    i32 6, label %bb.cb
    i32 7, label %bb.cc
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 51
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = and i8 %i.bg, 1
  %.not180 = icmp eq i8 %i.bh, 0
  br i1 %.not180, label %bb.af, label %g_set_weak_pointer.exit

bb.af:                                            ; preds = %bb.ae
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !11
  switch i32 %i.bj, label %bb.ag [
    i32 16777215, label %g_set_weak_pointer.exit
    i32 65511, label %g_set_weak_pointer.exit
    i32 65512, label %g_set_weak_pointer.exit
    i32 65027, label %g_set_weak_pointer.exit
  ]

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %i.bk = tail call i32 @dt_view_get_current() #23 ; 2 uses
  store i32 %i.bk, ptr %4, align 8, !tbaa !89
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %i.bm = tail call fastcc i32 @_fix_keyval(ptr noundef nonnull %1)
  %i.bn = add i32 %i.bm, -1
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !91
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i16 7, ptr %i.bo, align 4
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 32), align 8, !tbaa !95
  %.not181 = icmp eq ptr %i.bp, null
  br i1 %.not181, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !65 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 568
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !132 ; 2 uses
  %.not.i199 = icmp eq ptr %i.bs, null
  br i1 %.not.i199, label %dt_action_widget.exit200.thread, label %dt_action_widget.exit200

dt_action_widget.exit200:                         ; preds = %bb.ah
  %i.bt = load i32, ptr @_action_quark, align 4, !tbaa !12
  %i.bu = tail call ptr @g_object_get_qdata(ptr noundef nonnull %i.bs, i32 noundef %i.bt) #23
  %.not182 = icmp eq ptr %i.bu, null
  br i1 %.not182, label %dt_action_widget.exit200.dt_action_widget.exit200.thread_crit_edge, label %bb.al

dt_action_widget.exit200.dt_action_widget.exit200.thread_crit_edge: ; preds = %dt_action_widget.exit200
  %.pre223 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !65
  br label %dt_action_widget.exit200.thread

dt_action_widget.exit200.thread:                  ; preds = %dt_action_widget.exit200.dt_action_widget.exit200.thread_crit_edge, %bb.ah
  %i.bv = phi ptr [ %.pre223, %dt_action_widget.exit200.dt_action_widget.exit200.thread_crit_edge ], [ %i.bq, %bb.ah ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 552
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !86
  %i.by = sext i32 %i.bk to i64
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = call ptr @g_sequence_search(ptr noundef %i.bx, ptr noundef nonnull %4, ptr noundef nonnull @_shortcut_compare_func, ptr noundef %i.bz) #23 ; 2 uses
  %i.cb = call i32 @g_sequence_iter_is_end(ptr noundef %i.ca) #23
  %.not183 = icmp eq i32 %i.cb, 0
  br i1 %.not183, label %bb.ai, label %g_set_weak_pointer.exit

bb.ai:                                            ; preds = %dt_action_widget.exit200.thread
  %i.cc = call ptr @g_sequence_get(ptr noundef %i.ca) #23 ; 3 uses
  %.not184 = icmp eq ptr %i.cc, null
  br i1 %.not184, label %g_set_weak_pointer.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i8, ptr %i.cd, align 8, !tbaa !90
  %.not185 = icmp eq i8 %i.ce, 0
  br i1 %.not185, label %bb.ak, label %g_set_weak_pointer.exit

bb.ak:                                            ; preds = %bb.aj
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !91
  %i.ch = load i32, ptr %i.bl, align 4, !tbaa !91
  %i.ci = add i32 %i.ch, 1
  %.not186 = icmp eq i32 %i.cg, %i.ci
  br i1 %.not186, label %bb.al, label %g_set_weak_pointer.exit

bb.al:                                            ; preds = %bb.ak, %dt_action_widget.exit200, %bb.ag
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !11
  %i.cl = call fastcc i32 @_key_modifiers_clean(i32 noundef %i.ck)
  store i32 %i.cl, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 16), align 8, !tbaa !94
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !11
  %i.co = load i32, ptr %i.bl, align 4, !tbaa !91
  %i.cp = add i32 %i.co, 1
  call void @dt_shortcut_key_press(i8 noundef zeroext 0, i32 noundef %i.cn, i32 noundef %i.cp)
  br label %g_set_weak_pointer.exit

bb.am:                                            ; preds = %bb.ad
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 51
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = and i8 %i.cr, 1
  %.not178 = icmp eq i8 %i.cs, 0
  br i1 %.not178, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !11
  %i.cv = icmp eq i32 %i.cu, 65027
  br i1 %i.cv, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.cw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 32), align 8, !tbaa !95 ; 2 uses
  %.not179 = icmp eq ptr %i.cw, null
  br i1 %.not179, label %g_set_weak_pointer.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !99
  %i.cy = icmp eq i32 %i.cx, 11
  br i1 %i.cy, label %bb.aq, label %g_set_weak_pointer.exit

bb.aq:                                            ; preds = %bb.ap
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !11
  %i.db = tail call fastcc i32 @_key_modifiers_clean(i32 noundef %i.da)
  store i32 %i.db, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 16), align 8, !tbaa !94
  %i.dc = tail call reassoc nsz arcp contract afn float @dt_shortcut_move(i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, float noundef 1.000000e+00) ; 0 uses
  br label %g_set_weak_pointer.exit

bb.ar:                                            ; preds = %bb.an
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !11
  %i.df = tail call fastcc i32 @_fix_keyval(ptr noundef nonnull %1)
  tail call void @dt_shortcut_key_release(i8 noundef zeroext 0, i32 noundef %i.de, i32 noundef %i.df)
  br label %g_set_weak_pointer.exit

bb.as:                                            ; preds = %bb.ad
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !11
  %.not177 = icmp eq i32 %i.dh, 0
  br i1 %.not177, label %bb.at, label %g_set_weak_pointer.exit

bb.at:                                            ; preds = %bb.as
  store ptr null, ptr @_grab_window, align 8, !tbaa !215
  %i.di = load i32, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 12), align 4, !tbaa !91
  store i32 %i.di, ptr @_focus_loss_key, align 4, !tbaa !12
  %i.dj = load i16, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4
  %i.dk = and i16 %i.dj, 7
  %i.dl = zext nneg i16 %i.dk to i32
  store i32 %i.dl, ptr @_focus_loss_press, align 4, !tbaa !12
  tail call fastcc void @_ungrab_grab_widget(), !inline_history !274
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @_sc, i8 0, i64 56, i1 false)
  br label %g_set_weak_pointer.exit

bb.au:                                            ; preds = %bb.ad
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !11
  %i.do = and i32 %i.dn, 128
  %.not176 = icmp eq i32 %i.do, 0
  br i1 %.not176, label %bb.av, label %g_set_weak_pointer.exit

bb.av:                                            ; preds = %bb.au
  store ptr null, ptr @_grab_window, align 8, !tbaa !215
  %i.dp = load i32, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 12), align 4, !tbaa !91
  store i32 %i.dp, ptr @_focus_loss_key, align 4, !tbaa !12
  %i.dq = load i16, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4
  %i.dr = and i16 %i.dq, 7
  %i.ds = zext nneg i16 %i.dr to i32
  store i32 %i.ds, ptr @_focus_loss_press, align 4, !tbaa !12
  tail call fastcc void @_ungrab_grab_widget(), !inline_history !274
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @_sc, i8 0, i64 56, i1 false)
  br label %g_set_weak_pointer.exit

bb.aw:                                            ; preds = %bb.ad
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !11
  %.not175 = icmp eq i16 %i.du, 0
  br i1 %.not175, label %bb.bc, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dv = load ptr, ptr @_grab_window, align 8, !tbaa !73 ; 3 uses
  %i.dw = icmp eq ptr %i.dv, %0
  br i1 %i.dw, label %g_set_weak_pointer.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.not.i201 = icmp eq ptr %i.dv, null
  br i1 %.not.i201, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call void @g_object_remove_weak_pointer(ptr noundef nonnull %i.dv, ptr noundef nonnull @_grab_window) #23
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  store ptr %0, ptr @_grab_window, align 8, !tbaa !73
  %.not13.i = icmp eq ptr %0, null
  br i1 %.not13.i, label %g_set_weak_pointer.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @g_object_add_weak_pointer(ptr noundef nonnull %0, ptr noundef nonnull @_grab_window) #23
  br label %g_set_weak_pointer.exit

bb.bc:                                            ; preds = %bb.aw
  store ptr null, ptr @_grab_window, align 8, !tbaa !215
  %i.dx = load i32, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 12), align 4, !tbaa !91
  store i32 %i.dx, ptr @_focus_loss_key, align 4, !tbaa !12
  %i.dy = load i16, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4
  %i.dz = and i16 %i.dy, 7
  %i.ea = zext nneg i16 %i.dz to i32
  store i32 %i.ea, ptr @_focus_loss_press, align 4, !tbaa !12
  tail call fastcc void @_ungrab_grab_widget(), !inline_history !274
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @_sc, i8 0, i64 56, i1 false)
  br label %g_set_weak_pointer.exit

bb.bd:                                            ; preds = %bb.ad
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !11
  %i.ed = tail call ptr @gdk_display_get_default() #23
  %i.ee = tail call ptr @gdk_keymap_get_for_display(ptr noundef %i.ed) #23
  %i.ef = tail call i32 @gdk_keymap_get_modifier_mask(ptr noundef %i.ee, i32 noundef 0) #23
  %i.eg = or i32 %i.ef, 141
  %i.eh = and i32 %i.eg, %i.ec
  %i.ei = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !12
  %i.ej = or i32 %i.eh, %i.ei
  store i32 %i.ej, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 16), align 8, !tbaa !94
  %i.ek = call i32 @dt_gui_get_scroll_unit_deltas(ptr noundef nonnull %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #23
  %.not172 = icmp eq i32 %i.ek, 0
  br i1 %.not172, label %g_set_weak_pointer.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.el = load i32, ptr %i.c, align 4, !tbaa !12  ; 2 uses
  %.not173 = icmp eq i32 %i.el, 0
  br i1 %.not173, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.en = load i32, ptr %i.em, align 4, !tbaa !11
  %i.eo = sub nsw i32 0, %i.el
  %i.ep = sitofp reassoc nsz arcp contract afn i32 %i.eo to float
  %i.eq = call reassoc nsz arcp contract afn float @dt_shortcut_move(i8 noundef zeroext 0, i32 noundef %i.en, i32 noundef 2, float noundef %i.ep) ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.er = load i32, ptr %i.d, align 4, !tbaa !12  ; 2 uses
  %.not174 = icmp eq i32 %i.er, 0
  br i1 %.not174, label %g_set_weak_pointer.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.et = load i32, ptr %i.es, align 4, !tbaa !11
  %i.eu = sub nsw i32 0, %i.er
  %i.ev = sitofp reassoc nsz arcp contract afn i32 %i.eu to float
  %i.ew = call reassoc nsz arcp contract afn float @dt_shortcut_move(i8 noundef zeroext 0, i32 noundef %i.et, i32 noundef 1, float noundef %i.ev) ; 0 uses
  br label %g_set_weak_pointer.exit

bb.bi:                                            ; preds = %bb.ad
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !11 ; 2 uses
  %i.ez = load double, ptr @dt_shortcut_dispatcher.move_start_x, align 8, !tbaa !275
  %i.fa = fsub reassoc nsz arcp contract afn double %i.ey, %i.ez ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !11 ; 2 uses
  %i.fd = load double, ptr @dt_shortcut_dispatcher.move_start_y, align 8, !tbaa !275
  %i.fe = fsub reassoc nsz arcp contract afn double %i.fc, %i.fd ; 4 uses
  %i.ff = load i32, ptr @dt_shortcut_dispatcher.move_last_time, align 4, !tbaa !12 ; 3 uses
  %i.fg = load i32, ptr @_last_time, align 4, !tbaa !12 ; 2 uses
  %.not170 = icmp eq i32 %i.ff, %i.fg
  br i1 %.not170, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.fh = fmul reassoc nsz arcp contract afn double %i.fa, %i.fa
  %i.fi = fmul reassoc nsz arcp contract afn double %i.fe, %i.fe
  %i.fj = fadd reassoc nsz arcp contract afn double %i.fi, %i.fh
  %i.fk = fcmp reassoc nsz arcp contract afn olt double %i.fj, 0.000000e+00
  br i1 %i.fk, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  store double %i.ey, ptr @dt_shortcut_dispatcher.move_start_x, align 8, !tbaa !275
  store double %i.fc, ptr @dt_shortcut_dispatcher.move_start_y, align 8, !tbaa !275
  store i32 %i.fg, ptr @dt_shortcut_dispatcher.move_last_time, align 4, !tbaa !12
  br label %g_set_weak_pointer.exit

bb.bl:                                            ; preds = %bb.bj
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !11 ; 2 uses
  %i.fn = icmp ugt i32 %i.fm, %i.ff
  br i1 %i.fn, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.fo = tail call i32 @dt_gui_long_click(i32 noundef %i.fm, i32 noundef %i.ff) #23
  %.not171 = icmp eq i32 %i.fo, 0
  br i1 %.not171, label %g_set_weak_pointer.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !11
  %i.fr = tail call fastcc i32 @_key_modifiers_clean(i32 noundef %i.fq)
  store i32 %i.fr, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 16), align 8, !tbaa !94
  %i.fs = fadd reassoc nsz arcp contract afn double %i.fe, 1.000000e-03
  %i.ft = fdiv reassoc nsz arcp contract afn double %i.fa, %i.fs ; 3 uses
  %i.fu = fmul reassoc nsz arcp contract afn double %i.fa, 1.000000e-01
  %i.fv = tail call reassoc nsz arcp contract afn double @llvm.trunc.f64(double %i.fu) ; 3 uses
  %i.fw = fmul reassoc nsz arcp contract afn double %i.fe, 1.000000e-01
  %i.fx = tail call reassoc nsz arcp contract afn double @llvm.trunc.f64(double %i.fw) ; 3 uses
  %i.fy = fneg reassoc nsz arcp contract afn double %i.fx ; 2 uses
  %i.fz = fcmp reassoc nsz arcp contract afn une double %i.fv, 0.000000e+00
  %i.ga = fcmp reassoc nsz arcp contract afn une double %i.fx, 0.000000e+00
  %or.cond = select i1 %i.fz, i1 true, i1 %i.ga
  br i1 %or.cond, label %bb.bo, label %g_set_weak_pointer.exit

bb.bo:                                            ; preds = %bb.bn
  %i.gb = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ft) ; 2 uses
  %i.gc = fcmp reassoc nsz arcp contract afn ult double %i.gb, 2.000000e+00
  br i1 %i.gc, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gd = fmul reassoc nsz arcp contract afn double %i.fv, 1.000000e+01
  %i.ge = load double, ptr @dt_shortcut_dispatcher.move_start_x, align 8, !tbaa !275
  %i.gf = fadd reassoc nsz arcp contract afn double %i.ge, %i.gd
  store double %i.gf, ptr @dt_shortcut_dispatcher.move_start_x, align 8, !tbaa !275
  %i.gg = load double, ptr %i.fb, align 8, !tbaa !11
  store double %i.gg, ptr @dt_shortcut_dispatcher.move_start_y, align 8, !tbaa !275
  br label %bb.bt

bb.bq:                                            ; preds = %bb.bo
  %i.gh = fmul reassoc nsz arcp contract afn double %i.fx, -1.000000e+01 ; 2 uses
  %i.gi = load double, ptr @dt_shortcut_dispatcher.move_start_y, align 8, !tbaa !275
  %i.gj = fsub reassoc nsz arcp contract afn double %i.gi, %i.gh
  store double %i.gj, ptr @dt_shortcut_dispatcher.move_start_y, align 8, !tbaa !275
  %i.gk = fcmp reassoc nsz arcp contract afn olt double %i.gb, 5.000000e-01
  br i1 %i.gk, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.gl = load double, ptr %i.ex, align 8, !tbaa !11
  store double %i.gl, ptr @dt_shortcut_dispatcher.move_start_x, align 8, !tbaa !275
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %i.gm = fmul reassoc nsz arcp contract afn double %i.gh, %i.ft
  %i.gn = load double, ptr @dt_shortcut_dispatcher.move_start_x, align 8, !tbaa !275
  %i.go = fsub reassoc nsz arcp contract afn double %i.gn, %i.gm
  store double %i.go, ptr @dt_shortcut_dispatcher.move_start_x, align 8, !tbaa !275
  %i.gp = fcmp reassoc nsz arcp contract afn olt double %i.ft, 0.000000e+00
  %i.gq = select i1 %i.gp, i32 6, i32 5
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs, %bb.bp
  %.0129 = phi nsz double [ %i.fv, %bb.bp ], [ %i.fy, %bb.br ], [ %i.fy, %bb.bs ]
  %.0 = phi i32 [ 3, %bb.bp ], [ 4, %bb.br ], [ %i.gq, %bb.bs ] ; 3 uses
  %i.gr = load i32, ptr @_previous_move, align 4, !tbaa !12 ; 2 uses
  %i.gs = icmp eq i32 %i.gr, %.0
  %i.gt = icmp eq i32 %i.gr, 0
  %or.cond3 = or i1 %i.gs, %i.gt
  br i1 %or.cond3, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.gu = load i32, ptr %i.fl, align 4, !tbaa !11
  %i.gv = fptrunc reassoc nsz arcp contract afn double %.0129 to float
  %i.gw = tail call reassoc nsz arcp contract afn float @dt_shortcut_move(i8 noundef zeroext 0, i32 noundef %i.gu, i32 noundef %.0, float noundef %i.gv) ; 0 uses
  br label %g_set_weak_pointer.exit

bb.bv:                                            ; preds = %bb.bt
  store i32 %.0, ptr @_previous_move, align 4, !tbaa !12
  br label %g_set_weak_pointer.exit

bb.bw:                                            ; preds = %bb.ad
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !11
  %i.gz = tail call ptr @gdk_display_get_default() #23
  %i.ha = tail call ptr @gdk_keymap_get_for_display(ptr noundef %i.gz) #23
  %i.hb = tail call i32 @gdk_keymap_get_modifier_mask(ptr noundef %i.ha, i32 noundef 0) #23
  %i.hc = or i32 %i.hb, 141
  %i.hd = and i32 %i.hc, %i.gy
  %i.he = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !12
  %i.hf = or i32 %i.hd, %i.he
  store i32 %i.hf, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 16), align 8, !tbaa !94
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !11
  %i.hi = add i32 %i.hh, -1
  %i.hj = shl nuw i32 1, %i.hi
  %i.hk = load i32, ptr @_pressed_button, align 4, !tbaa !12
  %i.hl = or i32 %i.hj, %i.hk                     ; 3 uses
  store i32 %i.hl, ptr @_pressed_button, align 4, !tbaa !12
  %i.hm = load i32, ptr @_timeout_source, align 4, !tbaa !12 ; 2 uses
  %.not.i202 = icmp eq i32 %i.hm, 0
  %.pre222 = load i16, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4 ; 2 uses
  br i1 %.not.i202, label %_interrupt_delayed_release.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hn = lshr i16 %.pre222, 3
  %i.ho = and i16 %i.hn, 7
  %i.hp = zext nneg i16 %i.ho to i32
  %.not221 = icmp eq i32 %i.hl, %i.hp
  %i.hq = tail call i32 @g_source_remove(i32 noundef %i.hm) #23, !inline_history !214 ; 0 uses
  store i32 0, ptr @_timeout_source, align 4, !tbaa !12
  br i1 %.not221, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.hr = tail call reassoc nsz arcp contract afn float @dt_shortcut_move(i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, float noundef 1.000000e+00), !inline_history !214 ; 0 uses
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.hs = load i32, ptr @_pressed_button, align 4, !tbaa !12
  %i.ht = load i16, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4
  br label %_interrupt_delayed_release.exit

_interrupt_delayed_release.exit:                  ; preds = %bb.bw, %bb.bz
  %.pre224.sink.in = phi i32 [ %i.hs, %bb.bz ], [ %i.hl, %bb.bw ]
  %.pre222.sink = phi i16 [ %i.ht, %bb.bz ], [ %.pre222, %bb.bw ]
  %.pre224.sink = trunc i32 %.pre224.sink.in to i16
  %.pre225 = shl i16 %.pre224.sink, 3
  %.pre227 = and i16 %.pre225, 56
  %i.hu = and i16 %.pre222.sink, -505
  %i.hv = or disjoint i16 %.pre227, %i.hu
  store i16 %i.hv, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !11
  store i32 %i.hx, ptr @_last_time, align 4, !tbaa !12
  br label %g_set_weak_pointer.exit

bb.ca:                                            ; preds = %bb.ad
  %i.hy = load i16, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4
  %i.hz = or i16 %i.hy, 128
  store i16 %i.hz, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4
  br label %g_set_weak_pointer.exit

bb.cb:                                            ; preds = %bb.ad
  %i.ia = load i16, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4
  %i.ib = or i16 %i.ia, 256
  store i16 %i.ib, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4
  br label %g_set_weak_pointer.exit

bb.cc:                                            ; preds = %bb.ad
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !11
  %i.ie = add i32 %i.id, -1
  %i.if = shl nuw i32 1, %i.ie
  %i.ig = xor i32 %i.if, -1
  %i.ih = load i32, ptr @_pressed_button, align 4, !tbaa !12
  %i.ii = and i32 %i.ih, %i.ig
  store i32 %i.ii, ptr @_pressed_button, align 4, !tbaa !12
  %i.ij = load i32, ptr @_timeout_source, align 4, !tbaa !12 ; 2 uses
  %.not.i203 = icmp eq i32 %i.ij, 0
  br i1 %.not.i203, label %_interrupt_delayed_release.exit204, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ik = tail call i32 @g_source_remove(i32 noundef %i.ij) #23, !inline_history !214 ; 0 uses
  store i32 0, ptr @_timeout_source, align 4, !tbaa !12
  %i.il = load i32, ptr @_pressed_button, align 4, !tbaa !12
  %i.im = trunc i32 %i.il to i16
  %i.in = load i16, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4
  %i.io = shl i16 %i.im, 3
  %i.ip = and i16 %i.io, 56
  %i.iq = and i16 %i.in, -505
  %i.ir = or disjoint i16 %i.ip, %i.iq
  store i16 %i.ir, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4
  br label %_interrupt_delayed_release.exit204

_interrupt_delayed_release.exit204:               ; preds = %bb.cc, %bb.cd
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.it = load i32, ptr %i.is, align 4, !tbaa !11
  tail call fastcc void @_delay_for_double_triple(i32 noundef %i.it, i32 noundef 0)
  store i32 0, ptr @_last_time, align 4, !tbaa !12
  br label %g_set_weak_pointer.exit

g_set_weak_pointer.exit:                          ; preds = %dt_action_widget.exit200.thread, %bb.aj, %bb.ak, %bb.ai, %bb.bb, %bb.ba, %bb.ax, %.critedge188, %bb.al, %bb.ar, %bb.bk, %_interrupt_delayed_release.exit, %bb.ca, %bb.cb, %_interrupt_delayed_release.exit204, %bb.bg, %bb.bh, %bb.bd, %bb.bm, %bb.bn, %bb.bv, %bb.bu, %bb.ad, %bb.bc, %bb.au, %bb.av, %bb.as, %bb.at, %bb.ao, %bb.ap, %bb.aq, %bb.ae, %bb.af, %bb.af, %bb.af, %bb.af, %bb.d, %bb.e
  %.5 = phi i32 [ %.2, %.critedge188 ], [ 1, %bb.al ], [ 1, %bb.d ], [ 0, %bb.ad ], [ 0, %bb.bb ], [ 0, %bb.ae ], [ 0, %bb.ao ], [ 0, %bb.as ], [ 0, %bb.au ], [ 1, %bb.e ], [ 0, %bb.af ], [ 0, %bb.af ], [ 0, %bb.af ], [ 0, %bb.af ], [ 0, %bb.aq ], [ 0, %bb.ap ], [ 0, %bb.at ], [ 0, %bb.av ], [ 0, %bb.bc ], [ 1, %bb.bu ], [ 1, %bb.bv ], [ 1, %bb.bn ], [ 1, %bb.bm ], [ 1, %bb.bd ], [ 1, %bb.bh ], [ 1, %bb.bg ], [ 1, %_interrupt_delayed_release.exit204 ], [ 1, %bb.cb ], [ 1, %bb.ca ], [ 1, %_interrupt_delayed_release.exit ], [ 1, %bb.bk ], [ 1, %bb.ar ], [ 0, %bb.ax ], [ 0, %bb.ba ], [ 0, %bb.ai ], [ 0, %bb.aj ], [ 0, %bb.ak ], [ 0, %dt_action_widget.exit200.thread ]
  ret i32 %.5
}

declare i32 @dt_gui_get_scroll_unit_delta(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @gtk_window_get_type() local_unnamed_addr #10

declare ptr @gtk_window_get_focus(ptr noundef) local_unnamed_addr #1

declare i32 @gtk_widget_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @gtk_entry_get_type() local_unnamed_addr #10

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @gtk_tree_view_get_type() local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_fix_keyval(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !12
  %i.b = tail call ptr @gdk_display_get_default() #23
  %i.c = tail call ptr @gdk_keymap_get_for_display(ptr noundef %i.b) #23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i16, ptr %i.d, align 8, !tbaa !11
  %i.f = zext i16 %i.e to i32
  %i.g = call i32 @gdk_keymap_translate_keyboard_state(ptr noundef %i.c, i32 noundef %i.f, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef null) #23 ; 0 uses
  %i.h = load i32, ptr %i.a, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %i.h
}

declare ptr @g_sequence_search(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @dt_gui_get_scroll_unit_deltas(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.trunc.f64(double) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #13

; Function Attrs: nounwind uwtable
define void @dt_action_insert_sorted(ptr noundef %0, ptr noundef initializes((32, 40)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %0, ptr %i.a, align 8, !tbaa !97
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !145
  %.not19 = icmp eq ptr %i.d, null
  br i1 %.not19, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge2
  %.020 = phi ptr [ %i.b, %.lr.ph ], [ %i.v, %.critedge2 ] ; 4 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !144
  %i.g = tail call i32 @g_ascii_strcasecmp(ptr noundef %i.f, ptr noundef nonnull @.str.64) #23
  %.not17 = icmp eq i32 %i.g, 0
  %.pre25.pre = load ptr, ptr %.020, align 8, !tbaa !145 ; 2 uses
  br i1 %.not17, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.pre25.pre, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !144
  %i.j = tail call i32 @g_ascii_strcasecmp(ptr noundef %i.i, ptr noundef nonnull @.str.64) #23
  %.not18 = icmp eq i32 %i.j, 0
  %.pre = load ptr, ptr %.020, align 8, !tbaa !145 ; 3 uses
  br i1 %.not18, label %.critedge2, label %bb.d
end_hunk_0
begin_hunk_1_@dt_action_define:bb.a
  store ptr %2, ptr %i.g, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.h, align 16, !tbaa !21
  %.not = icmp eq ptr %1, null
  %.sroa.sel = select i1 %.not, ptr %i.g, ptr %i.a
  %i.i = call ptr @dt_action_locate(ptr noundef nonnull %0, ptr noundef nonnull %.sroa.sel, i32 noundef 1) ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not45 = icmp eq ptr %i.i, null
  br i1 %.not45, label %bb.w, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4, !tbaa !12
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !65
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 584
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !101
  %i.m = call i32 @g_ptr_array_find(ptr noundef %i.l, ptr noundef %4, ptr noundef nonnull %i.b) #23
  %.not46 = icmp eq i32 %i.m, 0
  br i1 %.not46, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i32, ptr %i.b, align 4, !tbaa !12
  %i.o = add i32 %i.n, 15
  store i32 %i.o, ptr %i.i, align 8, !tbaa !99
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.p = icmp eq ptr %4, @_action_def_dummy
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 14, ptr %i.i, align 8, !tbaa !99
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %.not47 = icmp eq ptr %4, null
  br i1 %.not47, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !65
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 584
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !101  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !103
  %i.v = add i32 %i.u, 15
  store i32 %i.v, ptr %i.i, align 8, !tbaa !99
  call void @g_ptr_array_add(ptr noundef %i.s, ptr noundef nonnull %4) #23
  %i.w = load i32, ptr %i.i, align 8, !tbaa !99
  call void @dt_action_define_fallback(i32 noundef %i.w, ptr noundef nonnull %4)
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j, %bb.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %bb.k
  %.05659 = phi ptr [ %i.i, %bb.k ], [ %0, %bb.c ] ; 6 uses
  %i.x = icmp ne ptr %4, null                     ; 2 uses
  br i1 %i.x, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !213
  %.not48 = icmp eq i32 %i.z, 0
  br i1 %.not48, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.05659, i64 24
  store ptr %3, ptr %i.aa, align 8, !tbaa !100
  br label %bb.w

bb.o:                                             ; preds = %bb.m, %bb.l
  %.not49 = icmp eq ptr %3, null
  br i1 %.not49, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ab = load i32, ptr @_action_quark, align 4, !tbaa !12 ; 2 uses
  %.not50 = icmp eq i32 %i.ab, 0
  br i1 %.not50, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ac = call i32 @g_quark_from_static_string(ptr noundef nonnull @.str.167) #23 ; 2 uses
  store i32 %i.ac, ptr @_action_quark, align 4, !tbaa !12
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ad = phi i32 [ %i.ac, %bb.q ], [ %i.ab, %bb.p ]
  %i.ae = call ptr @g_object_get_qdata(ptr noundef nonnull %3, i32 noundef %i.ad) #23
  %.not51 = icmp eq ptr %i.ae, null
  br i1 %.not51, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.af = load i32, ptr @_action_quark, align 4, !tbaa !12
  call void @g_object_set_qdata(ptr noundef nonnull %3, i32 noundef %i.af, ptr noundef nonnull %.05659) #23
  %or.cond = and i1 %i.f, %i.x
  br i1 %or.cond, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ag = getelementptr inbounds nuw i8, ptr %.05659, i64 24 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !100
  %.not52 = icmp eq ptr %i.ah, null
  br i1 %.not52, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call fastcc void @g_set_weak_pointer(ptr noundef nonnull %i.ag, ptr noundef nonnull %3)
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.t, %bb.u, %bb.r
  call void @gtk_widget_set_has_tooltip(ptr noundef nonnull %3, i32 noundef 1) #23
  %i.ai = call i64 @g_signal_connect_data(ptr noundef nonnull %3, ptr noundef nonnull @.str.168, ptr noundef nonnull @_reset_element_on_leave, ptr noundef null, ptr noundef null, i32 noundef 0) #23 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.d, %bb.o, %bb.v, %bb.n, %bb.b
  %.041 = phi ptr [ %i.e, %bb.b ], [ %.05659, %bb.n ], [ %.05659, %bb.v ], [ %.05659, %bb.o ], [ null, %bb.d ]
  ret ptr %.041
}

; Function Attrs: nounwind uwtable
define ptr @dt_action_define_iop(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.split, label %bb.b

.split:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !143
  %.not49 = icmp eq ptr %4, null
  %i.c = select i1 %.not49, ptr @_action_def_dummy, ptr %4
  %i.d = tail call ptr @dt_action_define(ptr noundef %i.b, ptr noundef null, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.c)
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  %i.f = icmp ugt i64 %i.e, 4
  br i1 %i.f, label %bb.c, label %.split46

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %1, align 1
  %i.h = xor i32 %i.g, 1852140642
  %i.i = getelementptr i8, ptr %1, i64 4
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i32
  %i.l = xor i32 %i.k, 100
  %i.m = or i32 %i.h, %i.l
  %i.n = icmp ne i32 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %.not61 = icmp eq i32 %i.o, 0
  br i1 %.not61, label %bb.d, label %.split46

.split46:                                         ; preds = %bb.b, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !143
  %.not51 = icmp eq ptr %4, null
  %i.r = select i1 %.not51, ptr @_action_def_dummy, ptr %4
  %i.s = tail call ptr @dt_action_define(ptr noundef %i.q, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.r)
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.u = load i8, ptr %i.t, align 1, !tbaa !11
  %.not52 = icmp eq i8 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.w = select i1 %.not52, ptr null, ptr %i.v
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !65
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 352
  %i.z = tail call ptr @dt_action_define(ptr noundef nonnull %i.y, ptr noundef %i.w, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  br label %bb.e

bb.e:                                             ; preds = %.split, %.split46, %bb.d
  %.0 = phi ptr [ %i.z, %bb.d ], [ %i.d, %.split ], [ %i.s, %.split46 ] ; 2 uses
  %i.aa = tail call noalias dereferenceable_or_null(16) ptr @g_malloc0(i64 noundef 16) #27 ; 5 uses
  store ptr %.0, ptr %i.aa, align 8, !tbaa !210
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %3, ptr %i.ab, align 8, !tbaa !211
  %i.ac = tail call i64 @dt_bh_get_type() #23     ; 2 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %DT_IS_BAUHAUS_WIDGET.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %.not10.i = icmp eq ptr %i.ad, null
  br i1 %.not10.i, label %DT_IS_BAUHAUS_WIDGET.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !19
  %i.af = icmp eq i64 %i.ae, %i.ac
  br i1 %i.af, label %DT_IS_BAUHAUS_WIDGET.exit.thread58, label %DT_IS_BAUHAUS_WIDGET.exit

DT_IS_BAUHAUS_WIDGET.exit:                        ; preds = %bb.f, %bb.g
  %i.ag = tail call i32 @g_type_check_instance_is_a(ptr noundef nonnull readonly %3, i64 noundef %i.ac) #25
  %.not53 = icmp eq i32 %i.ag, 0
  br i1 %.not53, label %DT_IS_BAUHAUS_WIDGET.exit.thread, label %DT_IS_BAUHAUS_WIDGET.exit.thread58

DT_IS_BAUHAUS_WIDGET.exit.thread58:               ; preds = %bb.g, %DT_IS_BAUHAUS_WIDGET.exit
  %i.ah = tail call ptr @dt_bauhaus_widget_get_field(ptr noundef nonnull %3) #23
  %.not54 = icmp eq ptr %i.ah, null
  br i1 %.not54, label %DT_IS_BAUHAUS_WIDGET.exit.thread, label %bb.h

bb.h:                                             ; preds = %DT_IS_BAUHAUS_WIDGET.exit.thread58
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !276 ; 2 uses
  %.not55 = icmp eq ptr %i.aj, null
  br i1 %.not55, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = tail call ptr @g_slist_append(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.aa) #23
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !276
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.al = tail call ptr @g_slist_alloc() #23      ; 3 uses
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !276
  store ptr %i.aa, ptr %i.al, align 8, !tbaa !69
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 16, !tbaa !223
  %i.ao = tail call ptr @g_slist_concat(ptr noundef %i.an, ptr noundef nonnull %i.al) #23
  store ptr %i.ao, ptr %i.am, align 16, !tbaa !223
  br label %bb.k

DT_IS_BAUHAUS_WIDGET.exit.thread:                 ; preds = %bb.e, %DT_IS_BAUHAUS_WIDGET.exit.thread58, %DT_IS_BAUHAUS_WIDGET.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 16, !tbaa !223
  %i.ar = tail call ptr @g_slist_prepend(ptr noundef %i.aq, ptr noundef nonnull %i.aa) #23
  store ptr %i.ar, ptr %i.ap, align 16, !tbaa !223
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %DT_IS_BAUHAUS_WIDGET.exit.thread
  ret ptr %.0
}

declare i32 @g_ptr_array_find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @g_ptr_array_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @dt_action_define_fallback(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %2 = alloca %struct.dt_shortcut_t, align 8      ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !110  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.d = load ptr, ptr %1, align 8, !tbaa !179
  store ptr %i.d, ptr %i.a, align 16, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.e, align 8, !tbaa !21
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !65
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 496
  %i.h = call ptr @dt_action_locate(ptr noundef nonnull %i.g, ptr noundef nonnull %i.a, i32 noundef 1) ; 3 uses
  store i32 11, ptr %i.h, align 8, !tbaa !99
  %i.i = zext i32 %0 to i64
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.j, ptr %i.k, align 8, !tbaa !100
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 23
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 52
  br label %bb.c

bb.c:                                             ; preds = %_mods_fix_primary.exit, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.au, %_mods_fix_primary.exit ] ; 8 uses
  %i.x = load i32, ptr %.0, align 4, !tbaa !278   ; 4 uses
  %.not25 = icmp eq i32 %i.x, 0
  br i1 %.not25, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.z = load i16, ptr %i.y, align 4
  %i.aa = and i16 %i.z, 2047
  %or.cond32 = icmp eq i16 %i.aa, 0
  br i1 %or.cond32, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !279
  %.not30 = icmp eq i32 %i.ac, 0
  br i1 %.not30, label %bb.g, label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.c, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i32 0, ptr %2, align 8, !tbaa !89
  store i32 1, ptr %i.l, align 4, !tbaa !161
  store i64 0, ptr %i.m, align 8
  %i.ad = tail call ptr @gdk_display_get_default() #23
  %i.ae = tail call ptr @gdk_keymap_get_for_display(ptr noundef %i.ad) #23
  %i.af = and i32 %i.x, 4
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %_mods_fix_primary.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.ag = and i32 %i.x, -5
  %i.ah = tail call i32 @gdk_keymap_get_modifier_mask(ptr noundef %i.ae, i32 noundef 0) #23
  %i.ai = or i32 %i.ah, %i.ag
  br label %_mods_fix_primary.exit

_mods_fix_primary.exit:                           ; preds = %.critedge, %bb.f
  %.0.i = phi i32 [ %i.ai, %bb.f ], [ %i.x, %.critedge ]
  store i32 %.0.i, ptr %i.n, align 8, !tbaa !94
  %i.aj = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.ak = load i16, ptr %i.aj, align 4
  %i.al = and i16 %i.ak, 2047
  store i16 %i.al, ptr %i.o, align 4
  store i8 0, ptr %i.p, align 2, !tbaa !92
  store i8 0, ptr %i.q, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.an = load i32, ptr %i.am, align 4, !tbaa !279
  store i32 %i.an, ptr %i.r, align 8, !tbaa !93
  store i32 0, ptr %i.s, align 4
  store ptr %i.h, ptr %i.t, align 8, !tbaa !95
  %i.ao = getelementptr inbounds nuw i8, ptr %.0, i64 12
  %i.ap = load <2 x i32>, ptr %i.ao, align 4, !tbaa !12
  store <2 x i32> %i.ap, ptr %i.u, align 8, !tbaa !12
  %i.aq = getelementptr inbounds nuw i8, ptr %.0, i64 20
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !280 ; 2 uses
  %i.as = fcmp reassoc nsz arcp contract afn une float %i.ar, 0.000000e+00
  %spec.select = select i1 %i.as, float %i.ar, float 1.000000e+00
  store float %spec.select, ptr %i.v, align 8, !tbaa !131
  store i32 0, ptr %i.w, align 4, !tbaa !98
  %i.at = call fastcc i32 @_insert_shortcut(ptr noundef %2, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.c

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  ret void
}

declare i32 @g_quark_from_static_string(ptr noundef) local_unnamed_addr #1

declare void @g_object_set_qdata(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @gtk_widget_set_has_tooltip(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @_reset_element_on_leave(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #14 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !65
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 580
  store i32 -1, ptr %i.b, align 4, !tbaa !133
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #15

declare ptr @dt_bauhaus_widget_get_field(ptr noundef) local_unnamed_addr #1

declare ptr @g_slist_alloc() local_unnamed_addr #1

declare ptr @g_slist_concat(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @dt_shortcut_register(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %struct.dt_shortcut_t, align 16     ; 11 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !65
  %i.d = load i32, ptr %i.c, align 8, !tbaa !281
  %.not32 = icmp eq i32 %i.d, 0
  br i1 %.not32, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @gdk_display_get_default() #23
  %i.f = tail call ptr @gdk_keymap_get_for_display(ptr noundef %i.e) #23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.g = call i32 @gdk_keymap_get_entries_for_keyval(ptr noundef %i.f, i32 noundef %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #23
  %.not33 = icmp eq i32 %i.g, 0
  br i1 %.not33, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.h = load i32, ptr %i.b, align 4, !tbaa !12
  %i.i = icmp sgt i32 %i.h, 0
  %.pre41 = load ptr, ptr %i.a, align 8, !tbaa !283 ; 2 uses
  br i1 %i.i, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %bb.j
  %i.j = sext i32 %.1 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.k = phi ptr [ %.pre41, %.preheader ], [ %i.ap, %._crit_edge.loopexit ]
  %.026.lcssa = phi i64 [ 0, %.preheader ], [ %i.j, %._crit_edge.loopexit ] ; 2 uses
  %i.l = getelementptr inbounds [12 x i8], ptr %i.k, i64 %.026.lcssa
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !285  ; 2 uses
  %i.o = and i32 %i.n, 1
  %i.p = shl i32 %i.n, 6
  %i.q = and i32 %i.p, 128
  %i.r = or disjoint i32 %i.o, %i.q
  %.128 = or i32 %i.r, %4                         ; 2 uses
  %i.s = call ptr @gdk_display_get_default() #23
  %i.t = call ptr @gdk_keymap_get_for_display(ptr noundef %i.s) #23
  %i.u = and i32 %4, 4
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %_mods_fix_primary.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.v = and i32 %.128, -5
  %i.w = call i32 @gdk_keymap_get_modifier_mask(ptr noundef %i.t, i32 noundef 0) #23
  %i.x = or i32 %i.w, %i.v
  br label %_mods_fix_primary.exit

_mods_fix_primary.exit:                           ; preds = %._crit_edge, %bb.d
  %.0.i = phi i32 [ %i.x, %bb.d ], [ %.128, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !283
  %i.z = getelementptr inbounds [12 x i8], ptr %i.y, i64 %.026.lcssa
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !286
  %i.ab = insertelement <4 x i32> <i32 0, i32 1, i32 0, i32 poison>, i32 %i.aa, i64 3
  store <4 x i32> %i.ab, ptr %5, align 16
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %.0.i, ptr %i.ac, align 16, !tbaa !94
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ad, i8 0, i64 12, i1 false)
  store ptr %0, ptr %i.ae, align 16, !tbaa !95
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 %1, ptr %i.af, align 8, !tbaa !109
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 %2, ptr %i.ag, align 4, !tbaa !114
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 48
  store float 1.000000e+00, ptr %i.ah, align 16, !tbaa !131
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 0, ptr %i.ai, align 4, !tbaa !98
  %i.aj = call fastcc i32 @_insert_shortcut(ptr noundef %5, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !283
  call void @g_free(ptr noundef %i.ak) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.k

.lr.ph:                                           ; preds = %.preheader, %bb.j
  %i.al = phi ptr [ %i.ap, %bb.j ], [ %.pre41, %.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %.preheader ] ; 4 uses
  %.02637 = phi i32 [ %.1, %bb.j ], [ 0, %.preheader ] ; 3 uses
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %i.al, i64 %indvars.iv ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !286
  %i.ao = call i32 @gdk_keymap_translate_keyboard_state(ptr noundef %i.f, i32 noundef %i.an, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.am, ptr noundef null, ptr noundef null, ptr noundef null) #23 ; 0 uses
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !283 ; 4 uses
  %i.aq = getelementptr inbounds nuw [12 x i8], ptr %i.ap, i64 %indvars.iv ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !286
  %i.as = add i32 %i.ar, -65470
  %i.at = icmp ult i32 %i.as, -62
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aq, i64 4 ; 2 uses
  br i1 %i.at, label %.lr.ph._crit_edge, label %bb.e

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %.pre40 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !287
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  store i32 10, ptr %.phi.trans.insert, align 4, !tbaa !287
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph._crit_edge, %bb.e
  %i.au = phi i32 [ %.pre40, %.lr.ph._crit_edge ], [ 10, %bb.e ] ; 2 uses
  %i.av = sext i32 %.02637 to i64
  %i.aw = getelementptr inbounds [12 x i8], ptr %i.ap, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !287 ; 2 uses
  %i.az = icmp slt i32 %i.au, %i.ay
  br i1 %i.az, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = icmp eq i32 %i.au, %i.ay
  br i1 %i.ba, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !285
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !285
  %i.bf = icmp slt i32 %i.bc, %i.be
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.bg = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i32 [ %i.bg, %bb.i ], [ %.02637, %bb.h ], [ %.02637, %bb.g ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bh = load i32, ptr %i.b, align 4, !tbaa !12
  %i.bi = sext i32 %i.bh to i64
  %i.bj = icmp slt i64 %indvars.iv.next, %i.bi
  br i1 %i.bj, label %.lr.ph, label %._crit_edge.loopexit

bb.k:                                             ; preds = %bb.c, %_mods_fix_primary.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b, %bb.a
  ret void
}

declare ptr @gdk_keymap_get_for_display(ptr noundef) local_unnamed_addr #1

declare i32 @gdk_keymap_get_entries_for_keyval(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gdk_keymap_translate_keyboard_state(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @dt_action_define_preset(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr @.str.64, ptr %i.a, align 16, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.c, align 16, !tbaa !21
  %i.d = call ptr @dt_action_locate(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 1) ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 10, ptr %i.d, align 8, !tbaa !99
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr inttoptr (i64 1 to ptr), ptr %i.e, align 8, !tbaa !100
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: nounwind uwtable
define void @dt_action_rename(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 6 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !144
  tail call void @g_free(ptr noundef %i.c) #23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !96
  tail call void @g_free(ptr noundef %i.e) #23
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !97
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !145  ; 3 uses
  %.not2935 = icmp eq ptr %i.i, null
  br i1 %.not2935, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.j = icmp eq ptr %i.i, %0
  br i1 %i.j, label %.lr.ph._crit_edge, label %.lr.ph50

.lr.ph50:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.k = phi ptr [ %i.m, %.lr.ph ], [ %i.i, %.lr.ph.preheader ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !145  ; 3 uses
  %.not29 = icmp eq ptr %i.m, null
  br i1 %.not29, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph50
  %i.n = icmp eq ptr %i.m, %0
  br i1 %i.n, label %.lr.ph._crit_edge.loopexit, label %.lr.ph50

.lr.ph._crit_edge.loopexit:                       ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  br label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph._crit_edge.loopexit, %.lr.ph.preheader
  %.02536.lcssa = phi ptr [ %i.h, %.lr.ph.preheader ], [ %i.o, %.lr.ph._crit_edge.loopexit ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !146
  store ptr %i.q, ptr %.02536.lcssa, align 8, !tbaa !145
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph50, %bb.b, %.lr.ph._crit_edge
  %.not30 = icmp eq ptr %1, null
  br i1 %.not30, label %bb.e, label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %.loopexit
  %i.r = tail call noalias ptr @g_strdup(ptr noundef nonnull %1) #23
  store ptr %i.r, ptr %i.b, align 8, !tbaa !144
  %i.s = tail call ptr @dt_util_localize_segmented_name(ptr noundef nonnull %1, i32 noundef 1) #23
  store ptr %i.s, ptr %i.d, align 8, !tbaa !96
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !97
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !145
  %.not19.i = icmp eq ptr %i.v, null
  br i1 %.not19.i, label %dt_action_insert_sorted.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %g_strdup_inline.exit, %.critedge2.i
  %.020.i = phi ptr [ %i.am, %.critedge2.i ], [ %i.u, %g_strdup_inline.exit ] ; 4 uses
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !144
  %i.x = tail call i32 @g_ascii_strcasecmp(ptr noundef %i.w, ptr noundef nonnull @.str.64) #23
  %.not17.i = icmp eq i32 %i.x, 0
  %.pre25.pre.i = load ptr, ptr %.020.i, align 8, !tbaa !145 ; 2 uses
  br i1 %.not17.i, label %dt_action_insert_sorted.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %.pre25.pre.i, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !144
  %i.aa = tail call i32 @g_ascii_strcasecmp(ptr noundef %i.z, ptr noundef nonnull @.str.64) #23
  %.not18.i = icmp eq i32 %i.aa, 0
  %.pre.i = load ptr, ptr %.020.i, align 8, !tbaa !145 ; 3 uses
  br i1 %.not18.i, label %.critedge2.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !96 ; 2 uses
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !96  ; 2 uses
  %i.ae = tail call i32 @g_utf8_collate(ptr noundef %i.ac, ptr noundef %i.ad) #25
  %i.af = load i8, ptr %i.ac, align 1, !tbaa !11
  %i.ag = icmp eq i8 %i.af, 60
  %i.ah = select i1 %i.ag, i32 1000, i32 0
  %i.ai = load i8, ptr %i.ad, align 1, !tbaa !11
  %i.aj = icmp eq i8 %i.ai, 60
  %.neg.i = select i1 %i.aj, i32 -1000, i32 0
  %i.ak = add nsw i32 %.neg.i, %i.ah
  %i.al = icmp slt i32 %i.ae, %i.ak
  br i1 %i.al, label %.critedge2.i, label %dt_action_insert_sorted.exit

.critedge2.i:                                     ; preds = %bb.d, %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %.pre.i, i64 40 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !145
  %.not.i32 = icmp eq ptr %i.an, null
  br i1 %.not.i32, label %dt_action_insert_sorted.exit, label %.lr.ph.i

dt_action_insert_sorted.exit:                     ; preds = %bb.d, %.critedge2.i, %.lr.ph.i, %g_strdup_inline.exit
  %i.ao = phi ptr [ null, %g_strdup_inline.exit ], [ null, %.critedge2.i ], [ %.pre.i, %bb.d ], [ %.pre25.pre.i, %.lr.ph.i ]
  %.0.lcssa.i = phi ptr [ %i.u, %g_strdup_inline.exit ], [ %i.am, %.critedge2.i ], [ %.020.i, %bb.d ], [ %.020.i, %.lr.ph.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !146
  store ptr %0, ptr %.0.lcssa.i, align 8, !tbaa !145
  br label %bb.h

bb.e:                                             ; preds = %.loopexit
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !65
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 552
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !86
  %i.at = tail call ptr @g_sequence_get_begin_iter(ptr noundef %i.as) #23 ; 2 uses
  %i.au = tail call i32 @g_sequence_iter_is_end(ptr noundef %i.at) #23
  %.not3137 = icmp eq i32 %i.au, 0
  br i1 %.not3137, label %.lr.ph39, label %._crit_edge

.lr.ph39:                                         ; preds = %bb.e, %bb.g
  %.038 = phi ptr [ %i.av, %bb.g ], [ %i.at, %bb.e ] ; 3 uses
  %i.av = tail call ptr @g_sequence_iter_next(ptr noundef %.038) #23 ; 2 uses
  %i.aw = tail call ptr @g_sequence_get(ptr noundef %.038) #23
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !95
  %i.az = icmp eq ptr %i.ay, %0
  br i1 %i.az, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph39
  tail call fastcc void @_remove_shortcut(ptr noundef %.038)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph39
  %i.ba = tail call i32 @g_sequence_iter_is_end(ptr noundef %i.av) #23
  %.not31 = icmp eq i32 %i.ba, 0
  br i1 %.not31, label %.lr.ph39, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %bb.e
  tail call void @g_free(ptr noundef nonnull %0) #23
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %dt_action_insert_sorted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.a, i8 0, i64 4096, i1 false)
  call void @dt_loc_get_user_config_dir(ptr noundef nonnull %i.a, i64 noundef 4096) #23
  %i.bb = call i64 @g_strlcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.148, i64 noundef 4096) #23 ; 0 uses
  call fastcc void @_shortcuts_save(ptr noundef nonnull %i.a, i8 noundef zeroext -1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_remove_shortcut(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @g_sequence_get(ptr noundef %0) #23 ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr @_selected_shortcut, align 8, !tbaa !160
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !161
  %.not19 = icmp eq i32 %i.c, 0
  br i1 %.not19, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %i.a, align 8, !tbaa !89
  %i.e = icmp eq i32 %i.d, 0                      ; 2 uses
  %i.f = zext i1 %i.e to i32
  %i.g = xor i1 %i.e, true
  %i.h = zext i1 %i.g to i32
  %i.i = tail call fastcc i32 @_insert_shortcut(ptr noundef %i.a, i32 noundef %i.f, i32 noundef %i.h) ; 0 uses
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.j = load ptr, ptr @_shortcuts_store, align 8, !tbaa !166 ; 2 uses
  %.not20 = icmp eq ptr %i.j, null
  br i1 %.not20, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @gtk_tree_model_foreach(ptr noundef nonnull %i.j, ptr noundef nonnull @_remove_shortcut_from_store, ptr noundef %0) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %i.l = load i16, ptr %i.k, align 4              ; 2 uses
  %i.m = and i16 %i.l, 1536
  %.not21 = icmp eq i16 %i.m, 0
  br i1 %.not21, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = and i16 %i.l, -1537
  store i16 %i.n, ptr %i.k, align 4
  %i.o = tail call ptr @g_sequence_iter_prev(ptr noundef %0) #23
  %i.p = tail call ptr @g_sequence_get(ptr noundef %i.o) #23 ; 2 uses
  %i.q = tail call i32 @g_sequence_iter_is_begin(ptr noundef %0) #23
  %.not22 = icmp eq i32 %i.q, 0
  br i1 %.not22, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = load i32, ptr %i.a, align 8, !tbaa !89
  %i.s = sext i32 %i.r to i64
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = tail call i32 @_shortcut_compare_func(ptr noundef nonnull %i.a, ptr noundef %i.p, ptr noundef %i.t)
  %.not23 = icmp eq i32 %i.u, 0
  br i1 %.not23, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = tail call ptr @g_sequence_iter_next(ptr noundef %0) #23
  %i.w = tail call ptr @g_sequence_get(ptr noundef %i.v) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi ptr [ %i.w, %bb.i ], [ %i.p, %bb.h ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0, i64 20 ; 2 uses
  %i.y = load i16, ptr %i.x, align 4
  %i.z = and i16 %i.y, -1537
  store i16 %i.z, ptr %i.x, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  tail call void @g_sequence_remove(ptr noundef %0) #23
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %bb.k, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @dt_action_rename_preset(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr @.str.64, ptr %i.a, align 16, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.c, align 16, !tbaa !21
  %i.d = call ptr @dt_action_locate(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 0) ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %2, null
  %i.f = load ptr, ptr @_actions_store, align 8   ; 2 uses
  %i.g = icmp ne ptr %i.f, null
  %or.cond = select i1 %i.e, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @gtk_tree_model_foreach(ptr noundef nonnull %i.f, ptr noundef nonnull @_remove_shortcut_from_store, ptr noundef nonnull %i.d) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @dt_action_rename(ptr noundef nonnull %i.d, ptr noundef %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

declare void @gtk_tree_model_foreach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @_remove_shortcut_from_store(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef %2, ptr nofree noundef readnone captures(address) %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void (ptr, ptr, ...) @gtk_tree_model_get(ptr noundef %0, ptr noundef %2, i32 noundef 0, ptr noundef nonnull %i.a, i32 noundef -1) #23
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.c = icmp eq ptr %i.b, %3
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @gtk_tree_store_remove(ptr noundef %0, ptr noundef %2) #23 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @dt_action_widget_toast(ptr noundef %0, ptr noundef %1, ptr noundef %2, ...) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !147
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load atomic i32, ptr %i.c seq_cst, align 4
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.f = call noalias ptr @g_strdup_vprintf(ptr noundef %2, ptr noundef nonnull %3) #23 ; 3 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %dt_action_widget.exit.thread43

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %dt_action_widget.exit.thread, label %dt_action_widget.exit

dt_action_widget.exit:                            ; preds = %bb.c
  %i.g = load i32, ptr @_action_quark, align 4, !tbaa !12
  %i.h = call ptr @g_object_get_qdata(ptr noundef nonnull %1, i32 noundef %i.g) #23 ; 2 uses
  %.not34 = icmp eq ptr %i.h, null
  br i1 %.not34, label %dt_action_widget.exit.thread, label %dt_action_widget.exit.thread43

dt_action_widget.exit.thread43:                   ; preds = %bb.b, %dt_action_widget.exit
  %.03046 = phi ptr [ %i.h, %dt_action_widget.exit ], [ %0, %bb.b ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr null, ptr %i.a, align 8, !tbaa !21
  %i.i = load i32, ptr %.03046, align 8, !tbaa !99
  %i.j = icmp eq i32 %i.i, 7
  br i1 %i.j, label %bb.d, label %.thread

bb.d:                                             ; preds = %dt_action_widget.exit.thread43
  %i.k = getelementptr inbounds nuw i8, ptr %.03046, i64 952
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !143  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.03046, i64 964 ; 3 uses
  %i.n = load i8, ptr %i.m, align 4, !tbaa !11
  %.not36 = icmp eq i8 %i.n, 0
  br i1 %.not36, label %g_strdup_inline.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.03046, i64 1092
  %i.p = load i32, ptr %i.o, align 4, !tbaa !288
  %.not37 = icmp eq i32 %i.p, 0
  br i1 %.not37, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = call noalias ptr @g_strdup(ptr noundef nonnull %i.m) #23
  br label %g_strdup_inline.exit

bb.g:                                             ; preds = %bb.e
  %i.r = call ptr @dt_util_localize_segmented_name(ptr noundef nonnull %i.m, i32 noundef 1) #23
  br label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %bb.f, %bb.g, %bb.d
  %.029 = phi ptr [ @.str.5, %bb.d ], [ %i.r, %bb.g ], [ %i.q, %bb.f ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.03046, i64 912
  %.02848 = load ptr, ptr %i.s, align 8, !tbaa !67 ; 2 uses
  %.not3849 = icmp eq ptr %.02848, null
  br i1 %.not3849, label %.thread, label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.02850, i64 8
  %.028 = load ptr, ptr %i.t, align 8, !tbaa !67  ; 2 uses
  %.not38 = icmp eq ptr %.028, null
  br i1 %.not38, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %g_strdup_inline.exit, %bb.h
  %.02850 = phi ptr [ %.028, %bb.h ], [ %.02848, %g_strdup_inline.exit ] ; 2 uses
  %i.u = load ptr, ptr %.02850, align 8, !tbaa !69 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !211
  %.not39 = icmp eq ptr %i.w, %1
  br i1 %.not39, label %bb.i, label %bb.h

bb.i:                                             ; preds = %.lr.ph
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !210  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !97
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !65
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 352
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  call fastcc void @_action_distinct_label(ptr noundef %i.a, ptr noundef nonnull %i.x, ptr noundef null)
  br label %.thread

.thread:                                          ; preds = %bb.h, %g_strdup_inline.exit, %bb.i, %bb.j, %dt_action_widget.exit.thread43
  %.5 = phi ptr [ %.03046, %dt_action_widget.exit.thread43 ], [ %i.x, %bb.i ], [ %i.l, %bb.j ], [ %i.l, %g_strdup_inline.exit ], [ %i.l, %bb.h ]
  %.1 = phi ptr [ @.str.5, %dt_action_widget.exit.thread43 ], [ %.029, %bb.i ], [ %.029, %bb.j ], [ %.029, %g_strdup_inline.exit ], [ %.029, %bb.h ] ; 3 uses
  call fastcc void @_action_distinct_label(ptr noundef %i.a, ptr noundef %.5, ptr noundef %.1)
  %i.ad = load i8, ptr %.1, align 1, !tbaa !11
  %.not40 = icmp eq i8 %i.ad, 0
  br i1 %.not40, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.thread
  call void @g_free(ptr noundef nonnull %.1) #23
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !21  ; 2 uses
  call void (ptr, ...) @dt_toast_log(ptr noundef nonnull @.str.170, ptr noundef %i.ae, ptr noundef %i.f) #23
  call void @g_free(ptr noundef %i.ae) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.m

dt_action_widget.exit.thread:                     ; preds = %bb.c, %dt_action_widget.exit
  call void (ptr, ...) @dt_toast_log(ptr noundef nonnull @.str.94, ptr noundef %i.f) #23
  br label %bb.m

bb.m:                                             ; preds = %dt_action_widget.exit.thread, %bb.l
  call void @g_free(ptr noundef %i.f) #23
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #16

declare noalias ptr @g_strdup_vprintf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @_action_distinct_label(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %.not30 = icmp eq ptr %1, null
  br i1 %.not30, label %tailrecurse._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %.tr2831 = phi ptr [ %i.t, %tailrecurse ], [ %1, %bb.a ] ; 5 uses
  %i.a = load i32, ptr %.tr2831, align 8, !tbaa !99 ; 2 uses
  %i.b = icmp ult i32 %i.a, 2
  br i1 %i.b, label %tailrecurse._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = icmp eq i32 %i.a, 4
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr %2, align 1, !tbaa !11
  %.not24 = icmp eq i8 %i.d, 0
  br i1 %.not24, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.tr2831, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !96
  %i.g = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.340, ptr noundef %i.f, ptr noundef nonnull %2) #23
  br label %g_strdup_inline.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.tr2831, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !96
  %i.j = tail call noalias ptr @g_strdup(ptr noundef %i.i) #23
  br label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %bb.e, %bb.d
  %i.k = phi ptr [ %i.g, %bb.d ], [ %i.j, %bb.e ] ; 3 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !21     ; 3 uses
  %.not25 = icmp eq ptr %i.l, null
  br i1 %.not25, label %bb.j, label %bb.f

bb.f:                                             ; preds = %g_strdup_inline.exit
  %i.m = getelementptr inbounds nuw i8, ptr %.tr2831, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !96
  %i.o = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(1) %i.l) #25
  %.not26 = icmp eq ptr %i.o, null
  br i1 %.not26, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load i8, ptr %2, align 1, !tbaa !11
  %.not27 = icmp eq i8 %i.p, 0
  br i1 %.not27, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.q = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.341, ptr noundef %i.k, ptr noundef nonnull %i.l) #23
  %i.r = load ptr, ptr %0, align 8, !tbaa !21
  tail call void @g_free(ptr noundef %i.r) #23
  store ptr %i.q, ptr %0, align 8, !tbaa !21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @g_free(ptr noundef %i.k) #23
  br label %tailrecurse

bb.j:                                             ; preds = %g_strdup_inline.exit
  store ptr %i.k, ptr %0, align 8, !tbaa !21
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.j, %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %.tr2831, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !97   ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %tailrecurse._crit_edge, label %.lr.ph

tailrecurse._crit_edge:                           ; preds = %.lr.ph, %tailrecurse, %bb.a
  ret void
}

declare void @dt_toast_log(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #16

; Function Attrs: nounwind uwtable
define float @dt_accel_get_speed_multiplier(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.dt_shortcut_t, align 8      ; 10 uses
  %i.a = tail call i32 @dt_conf_get_int(ptr noundef nonnull @.str.171) #23 ; 2 uses
  %i.b = icmp eq i32 %i.a, 1
  %i.c = icmp eq i32 %i.a, 2
  %i.d = select i1 %i.c, ptr @.str.173, ptr @.str.174
  %i.e = select i1 %i.b, ptr @.str.172, ptr %i.d
  %i.f = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull %i.e) #23 ; 3 uses
  %.not = icmp eq i32 %1, 1543512063
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i32 536870912, ptr %2, align 8, !tbaa !89
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.g, i8 0, i64 12, i1 false)
  %i.i = tail call ptr @gdk_display_get_default() #23
  %i.j = tail call ptr @gdk_keymap_get_for_display(ptr noundef %i.i) #23
  %i.k = tail call i32 @gdk_keymap_get_modifier_mask(ptr noundef %i.j, i32 noundef 0) #23
  %i.l = or i32 %i.k, 141
  %i.m = and i32 %i.l, %1
  %i.n = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !12
  %i.o = or i32 %i.m, %i.n
  store i32 %i.o, ptr %i.h, align 8, !tbaa !94
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.p, i8 0, i64 12, i1 false)
  store ptr @_value_action, ptr %i.q, align 8, !tbaa !95
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.not.i = icmp eq ptr %0, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  br i1 %.not.i, label %.lr.ph.preheader, label %bb.c

end_hunk_1
begin_hunk_2_@_shortcut_key_move_name:bb.a
  %i.bq = select i1 %.not83.2, ptr @.str.5, ptr %.4.1
  %i.br = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #23
  %i.bs = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.201, ptr noundef nonnull %i.bq, ptr noundef %i.br) #23
  call void @g_free(ptr noundef %.4.1) #23
  br label %.preheader.split.3

.preheader.split.3:                               ; preds = %bb.ac, %.preheader.split.2
  %.4.2 = phi ptr [ %i.bs, %bb.ac ], [ %.4.1, %.preheader.split.2 ] ; 4 uses
  %i.bt = and i32 %2, 16
  %.not80.3 = icmp eq i32 %i.bt, 0
  br i1 %.not80.3, label %.preheader.split.4, label %bb.ad

bb.ad:                                            ; preds = %.preheader.split.3
  %.not83.3 = icmp eq ptr %.4.2, null
  %i.bu = select i1 %.not83.3, ptr @.str.5, ptr %.4.2
  %i.bv = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #23
  %i.bw = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.201, ptr noundef nonnull %i.bu, ptr noundef %i.bv) #23
  call void @g_free(ptr noundef %.4.2) #23
  br label %.preheader.split.4

.preheader.split.4:                               ; preds = %bb.ad, %.preheader.split.3
  %.4.3 = phi ptr [ %i.bw, %bb.ad ], [ %.4.2, %.preheader.split.3 ] ; 4 uses
  %i.bx = and i32 %2, 128
  %.not80.4 = icmp eq i32 %i.bx, 0
  br i1 %.not80.4, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %.preheader.split.4
  %.not83.4 = icmp eq ptr %.4.3, null
  %i.by = select i1 %.not83.4, ptr @.str.5, ptr %.4.3
  %i.bz = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #23
  %i.ca = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.201, ptr noundef nonnull %i.by, ptr noundef %i.bz) #23
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.z, %bb.ae
  %.4.3.sink = phi ptr [ %.4.3, %bb.ae ], [ %.4.us.3, %bb.z ]
  %.5.ph = phi ptr [ %i.ca, %bb.ae ], [ %i.bh, %bb.z ]
  call void @g_free(ptr noundef %.4.3.sink) #23
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %.preheader.split.4, %.preheader.split.us.4, %g_strdup_inline.exit86
  %.5 = phi ptr [ %.2, %g_strdup_inline.exit86 ], [ %.4.us.3, %.preheader.split.us.4 ], [ %.4.3, %.preheader.split.4 ], [ %.5.ph, %.loopexit.sink.split ] ; 4 uses
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !21  ; 2 uses
  %.not78 = icmp eq ptr %i.cb, null
  br i1 %.not78, label %g_strdup_inline.exit91, label %bb.af

bb.af:                                            ; preds = %.loopexit
  %.not79 = icmp eq ptr %.5, null
  %i.cc = select i1 %.not79, ptr @.str.5, ptr %.5
  %i.cd = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.61, ptr noundef nonnull %i.cc, ptr noundef nonnull %i.cb) #23
  call void @g_free(ptr noundef %.5) #23
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !21
  call void @g_free(ptr noundef %i.ce) #23
  br label %g_strdup_inline.exit91

g_strdup_inline.exit91:                           ; preds = %bb.e, %.loopexit, %bb.af, %bb.n
  %.0 = phi ptr [ %.5, %.loopexit ], [ %i.w, %bb.n ], [ %i.cd, %bb.af ], [ %i.k, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret ptr %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #9

declare ptr @gtk_accelerator_get_label(i32 noundef, i32 noundef) local_unnamed_addr #1

declare noalias ptr @g_utf8_strdown(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @gtk_accelerator_name(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noalias ptr @_action_full_label(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %common.ret, label %bb.b

common.ret10:                                     ; preds = %bb.b, %common.ret
  %common.ret10.op = phi ptr [ %i.i, %common.ret ], [ %i.f, %bb.b ]
  ret ptr %common.ret10.op

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @_action_full_label(ptr noundef nonnull %i.b) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !96
  %i.f = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.180, ptr noundef %i.c, ptr noundef %i.e) #23
  tail call void @g_free(ptr noundef %i.c) #23
  br label %common.ret10

common.ret:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !96
  %i.i = tail call noalias ptr @g_strdup(ptr noundef %i.h) #23
  br label %common.ret10
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_action_find_effect_combo(ptr noundef %0, ptr nofree readnone captures(address) %.8.val, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %.8.val, @dt_action_effect_selection
  %i.b = icmp sgt i32 %1, 6
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !116
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !126
  %i.f = tail call ptr @g_hash_table_lookup(ptr noundef %i.e, ptr noundef %0) #23 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = zext nneg i32 %1 to i64
  %i.h = getelementptr [24 x i8], ptr %i.f, i64 %i.g ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -152
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !128  ; 2 uses
  %.not19 = icmp eq ptr %i.j, null
  br i1 %.not19, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.h, i64 -168
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !129
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 128), align 8, !tbaa !116
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 304
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !130
  %i.p = tail call ptr @g_hash_table_lookup(ptr noundef %i.o, ptr noundef %0) #23 ; 2 uses
  %.not18 = icmp eq ptr %i.p, null
  br i1 %.not18, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = zext nneg i32 %1 to i64
  %i.r = getelementptr [8 x i8], ptr %i.p, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 -56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.u = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.210, i32 noundef 5) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.g, %bb.f
  %.2 = phi ptr [ %i.u, %bb.g ], [ %i.j, %bb.c ], [ %i.l, %bb.d ], [ %i.t, %bb.f ], [ null, %bb.a ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_find_relative_instance(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 {
bb.a:
  %.not51 = icmp eq ptr %0, null
  br i1 %.not51, label %.critedge47, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.03452 = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ] ; 6 uses
  %i.a = load i32, ptr %.03452, align 8, !tbaa !99
  %.not40 = icmp eq i32 %i.a, 4
  br i1 %.not40, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.b = getelementptr inbounds nuw i8, ptr %.03452, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !97   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.critedge47, label %.lr.ph

.critedge:                                        ; preds = %.lr.ph
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 400
  %i.f = icmp eq ptr %.03452, %i.e
  br i1 %i.f, label %.critedge47, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.g = getelementptr inbounds nuw i8, ptr %.03452, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !177
  %i.i = tail call i32 %i.h() #23
  %i.j = and i32 %i.i, 128
  %.not41 = icmp eq i32 %i.j, 0
  br i1 %.not41, label %bb.d, label %.critedge47

bb.d:                                             ; preds = %bb.c
  %.not42 = icmp eq ptr %1, null
  br i1 %.not42, label %.critedge47, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !100
  %i.m = icmp eq ptr %i.l, %1
  br i1 %i.m, label %.critedge47, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call i64 @dtgtk_expander_get_type() #23
  %i.o = tail call ptr @gtk_widget_get_ancestor(ptr noundef nonnull %1, i64 noundef %i.n) #23 ; 2 uses
  %i.p = tail call ptr @dt_iop_get_module_preferred_instance(ptr noundef nonnull %.03452) #23 ; 2 uses
  %.not43 = icmp eq ptr %i.p, null
  br i1 %.not43, label %.critedge47, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 872
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !289
  %.not44 = icmp eq ptr %i.o, %i.r
  br i1 %.not44, label %.critedge47, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !164
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2088
  %.053 = load ptr, ptr %i.t, align 8, !tbaa !208 ; 2 uses
  %.not4554 = icmp eq ptr %.053, null
  br i1 %.not4554, label %._crit_edge, label %.lr.ph57

._crit_edge.loopexit:                             ; preds = %bb.l
  %i.u = add nsw i32 %.1, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.h
  %.033.lcssa = phi i32 [ 1, %bb.h ], [ %i.u, %._crit_edge.loopexit ] ; 2 uses
  %i.v = load i32, ptr %2, align 4, !tbaa !12     ; 3 uses
  %i.w = sub nsw i32 %.033.lcssa, %i.v
  %i.x = icmp slt i32 %i.w, %i.v
  br i1 %i.x, label %bb.m, label %.critedge47

.lr.ph57:                                         ; preds = %bb.h, %bb.l
  %.056 = phi ptr [ %.0, %bb.l ], [ %.053, %bb.h ] ; 2 uses
  %.03355 = phi i32 [ %.1, %bb.l ], [ 0, %bb.h ]  ; 3 uses
  %i.y = load ptr, ptr %.056, align 8, !tbaa !175 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 952
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !143
  %i.ab = icmp eq ptr %i.aa, %.03452
  br i1 %i.ab, label %bb.i, label %bb.l

bb.i:                                             ; preds = %.lr.ph57
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 480
  %i.ad = load i32, ptr %i.ac, align 16, !tbaa !207
  %.not46 = icmp eq i32 %i.ad, 2147483647
  br i1 %.not46, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = add nsw i32 %.03355, 1                  ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 872
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !289
  %i.ah = icmp eq ptr %i.ag, %i.o
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.ae, ptr %2, align 4, !tbaa !12
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i, %.lr.ph57
  %.1 = phi i32 [ %i.ae, %bb.k ], [ %i.ae, %bb.j ], [ %.03355, %bb.i ], [ %.03355, %.lr.ph57 ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.056, i64 8
  %.0 = load ptr, ptr %i.ai, align 8, !tbaa !208  ; 2 uses
  %.not45 = icmp eq ptr %.0, null
  br i1 %.not45, label %._crit_edge.loopexit, label %.lr.ph57

bb.m:                                             ; preds = %._crit_edge
  %i.aj = sub nsw i32 %i.v, %.033.lcssa
  store i32 %i.aj, ptr %2, align 4, !tbaa !12
  br label %.critedge47

.critedge47:                                      ; preds = %bb.b, %bb.a, %bb.f, %bb.g, %bb.m, %._crit_edge, %bb.d, %bb.e, %.critedge, %bb.c
  %.035 = phi i32 [ 1, %bb.d ], [ 0, %.critedge ], [ 1, %bb.f ], [ 0, %bb.c ], [ 1, %bb.e ], [ 1, %._crit_edge ], [ 1, %bb.m ], [ 1, %bb.g ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.035
}

declare i32 @g_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @dt_bauhaus_widget_get_type(ptr noundef) local_unnamed_addr #1

declare ptr @dt_bauhaus_combobox_get_data(ptr noundef) local_unnamed_addr #1

declare float @dt_bauhaus_slider_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_action_full_id(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !144
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #25
  %i.d = shl i64 %i.c, 1
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !97   ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.h = tail call ptr @g_realloc(ptr noundef null, i64 noundef %i.e) #23 ; 2 uses
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = tail call fastcc ptr @_action_full_id(ptr noundef nonnull %i.g) ; 2 uses
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #25 ; 3 uses
  %i.k = add i64 %i.j, %i.e
  %i.l = tail call ptr @g_realloc(ptr noundef nonnull %i.i, i64 noundef %i.k) #23 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j ; 3 uses
  %.not29 = icmp eq i64 %i.j, 0
  br i1 %.not29, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store i8 47, ptr %i.m, align 1, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c, %bb.b
  %i.o = phi ptr [ %i.l, %bb.c ], [ %i.l, %bb.b ], [ %i.h, %.thread ]
  %.023 = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ], [ %i.h, %.thread ] ; 2 uses
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !144  ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !11    ; 2 uses
  %.not3035 = icmp eq i8 %i.q, 0
  br i1 %.not3035, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %bb.d
  %.1.lcssa = phi ptr [ %.023, %bb.d ], [ %.2, %bb.i ]
  store i8 0, ptr %.1.lcssa, align 1, !tbaa !11
  ret ptr %i.o

.lr.ph:                                           ; preds = %bb.d, %bb.i
  %i.r = phi i8 [ %i.y, %bb.i ], [ %i.q, %bb.d ]  ; 2 uses
  %.037 = phi ptr [ %i.x, %bb.i ], [ %i.p, %bb.d ] ; 2 uses
  %.136 = phi ptr [ %.2, %bb.i ], [ %.023, %bb.d ] ; 4 uses
  %i.s = sext i8 %i.r to i32
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.215, i32 %i.s, i64 5)
  %.not31 = icmp eq ptr %memchr, null
  %i.t = getelementptr inbounds nuw i8, ptr %.136, i64 1 ; 2 uses
  br i1 %.not31, label %bb.h, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  store i8 64, ptr %.136, align 1, !tbaa !11
  %i.u = load i8, ptr %.037, align 1, !tbaa !11
  switch i8 %i.u, label %bb.f [
    i8 59, label %bb.g
    i8 47, label %.fold.split
    i8 92, label %switch.edge
  ]

switch.edge:                                      ; preds = %bb.e
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  br label %bb.g

.fold.split:                                      ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %switch.edge, %bb.e, %.fold.split, %bb.f
  %i.v = phi i8 [ 58, %bb.e ], [ 64, %bb.f ], [ 60, %.fold.split ], [ 62, %switch.edge ]
  %i.w = getelementptr inbounds nuw i8, ptr %.136, i64 2
  store i8 %i.v, ptr %i.t, align 1, !tbaa !11
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph
  store i8 %i.r, ptr %.136, align 1, !tbaa !11
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.2 = phi ptr [ %i.w, %bb.g ], [ %i.t, %bb.h ]  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.037, i64 1 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !11    ; 2 uses
  %.not30 = icmp eq i8 %i.y, 0
  br i1 %.not30, label %._crit_edge, label %.lr.ph
}

declare i64 @dtgtk_expander_get_type() local_unnamed_addr #1

declare ptr @dt_iop_get_module_preferred_instance(ptr noundef) local_unnamed_addr #1

declare ptr @g_realloc(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @gdk_window_get_width(ptr noundef) local_unnamed_addr #1

declare i32 @gdk_window_get_origin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @gdk_monitor_get_workarea(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @gdk_display_get_monitor_at_window(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @gdk_window_get_display(ptr noundef) local_unnamed_addr #1

declare void @gdk_window_move(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @g_object_remove_weak_pointer(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @g_object_add_weak_pointer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @_add_shortcuts_to_tree() unnamed_addr #0 {
bb.a:
  %0 = alloca %struct._GtkTreeIter, align 8       ; 4 uses
  %i.a = tail call i32 @dt_view_get_current() #23
  %i.b = load ptr, ptr @_shortcuts_store, align 8, !tbaa !166
  tail call void (ptr, ptr, ptr, i32, ...) @gtk_tree_store_insert_with_values(ptr noundef %i.b, ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 0, ptr noundef null, i32 noundef -1) #23
  %i.c = load ptr, ptr @_shortcuts_store, align 8, !tbaa !166
  tail call void (ptr, ptr, ptr, i32, ...) @gtk_tree_store_insert_with_values(ptr noundef %i.c, ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 0, ptr noundef nonnull inttoptr (i64 1 to ptr), i32 noundef -1) #23
  %i.d = load ptr, ptr @_shortcuts_store, align 8, !tbaa !166
  tail call void (ptr, ptr, ptr, i32, ...) @gtk_tree_store_insert_with_values(ptr noundef %i.d, ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 0, ptr noundef nonnull inttoptr (i64 2 to ptr), i32 noundef -1) #23
  %i.e = load ptr, ptr @_shortcuts_store, align 8, !tbaa !166
  tail call void (ptr, ptr, ptr, i32, ...) @gtk_tree_store_insert_with_values(ptr noundef %i.e, ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 0, ptr noundef nonnull inttoptr (i64 3 to ptr), i32 noundef -1) #23
  %i.f = load ptr, ptr @_shortcuts_store, align 8, !tbaa !166
  tail call void (ptr, ptr, ptr, i32, ...) @gtk_tree_store_insert_with_values(ptr noundef %i.f, ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 0, ptr noundef nonnull inttoptr (i64 4 to ptr), i32 noundef -1) #23
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !65
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 552
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !86
  %i.j = tail call ptr @g_sequence_get_begin_iter(ptr noundef %i.i) #23 ; 2 uses
  %i.k = tail call i32 @g_sequence_iter_is_end(ptr noundef %i.j) #23
  %.not10 = icmp eq i32 %i.k, 0
  br i1 %.not10, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_shortcuts_store_category.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_shortcuts_store_category.exit
  %.011 = phi ptr [ %i.aj, %_shortcuts_store_category.exit ], [ %i.j, %bb.a ] ; 3 uses
  %i.l = call ptr @g_sequence_get(ptr noundef %.011) #23 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #23
  %i.m = load ptr, ptr @_shortcuts_store, align 8, !tbaa !166
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_shortcuts_store_category.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.n = load i32, ptr %i.l, align 8, !tbaa !89   ; 3 uses
  %.not5.i.i = icmp eq i32 %i.n, 0
  br i1 %.not5.i.i, label %_shortcuts_store_category.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load i8, ptr %i.o, align 8, !tbaa !90
  %.not.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i, label %bb.d, label %_shortcut_is_speed.exit.thread.i.i

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !91
  %.not8.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not8.i.i.i, label %bb.e, label %_shortcut_is_speed.exit.thread.i.i

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.t = load i16, ptr %i.s, align 4              ; 2 uses
  %i.u = and i16 %i.t, 7
  %.not9.i.i.i = icmp eq i16 %i.u, 0
end_hunk_2
begin_hunk_3_@llvm.assume
!72 = !{!71, !70, i64 48}
!73 = !{!13, !13, i64 0}
!74 = !{!"p1 _ZTS11dt_action_t", !13, i64 0}
!75 = !{!"dt_action_t", !8, i64 0, !20, i64 8, !20, i64 16, !13, i64 24, !74, i64 32, !74, i64 40}
!76 = !{!"p1 _ZTS10_GSequence", !13, i64 0}
!77 = !{!"p1 _ZTS10_GPtrArray", !13, i64 0}
!78 = !{!"p1 long", !13, i64 0}
!79 = !{!"any p2 pointer", !13, i64 0}
!80 = !{!"p2 _ZTS9_dt_job_t", !79, i64 0}
!81 = !{!"", !70, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40}
!82 = !{!"", !23, i64 0, !17, i64 8, !17, i64 16, !55, i64 24, !47, i64 32, !81, i64 72}
!83 = !{!"", !70, i64 0, !13, i64 8}
!84 = !{!"", !83, i64 0}
!85 = !{!"dt_control_t", !8, i64 0, !74, i64 8, !75, i64 16, !75, i64 64, !75, i64 112, !75, i64 160, !75, i64 208, !75, i64 256, !75, i64 304, !75, i64 352, !75, i64 400, !75, i64 448, !75, i64 496, !74, i64 544, !76, i64 552, !8, i64 560, !62, i64 568, !8, i64 576, !8, i64 580, !77, i64 584, !66, i64 592, !55, i64 600, !8, i64 608, !8, i64 612, !17, i64 616, !8, i64 624, !8, i64 628, !8, i64 632, !55, i64 640, !55, i64 648, !8, i64 656, !8, i64 660, !8, i64 664, !8, i64 668, !8, i64 672, !47, i64 680, !8, i64 720, !8, i64 724, !7, i64 728, !8, i64 2728, !8, i64 2732, !8, i64 2736, !7, i64 2740, !8, i64 3340, !23, i64 3344, !47, i64 3352, !47, i64 3392, !47, i64 3432, !7, i64 3472, !7, i64 3476, !7, i64 3480, !8, i64 3484, !8, i64 3488, !47, i64 3496, !47, i64 3536, !7, i64 3576, !8, i64 3624, !78, i64 3632, !17, i64 3640, !17, i64 3648, !80, i64 3656, !7, i64 3664, !7, i64 3704, !47, i64 3744, !7, i64 3784, !7, i64 3808, !7, i64 3816, !82, i64 3840, !84, i64 3960}
!86 = !{!85, !76, i64 552}
!87 = !{!"float", !7, i64 0}
!88 = !{!"dt_shortcut_t", !8, i64 0, !8, i64 4, !7, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 20, !8, i64 20, !8, i64 21, !7, i64 22, !8, i64 24, !74, i64 32, !8, i64 40, !8, i64 44, !87, i64 48, !8, i64 52}
!89 = !{!88, !8, i64 0}
!90 = !{!88, !7, i64 8}
!91 = !{!88, !8, i64 12}
!92 = !{!88, !7, i64 22}
!93 = !{!88, !8, i64 24}
!94 = !{!88, !8, i64 16}
!95 = !{!88, !74, i64 32}
!96 = !{!75, !20, i64 16}
!97 = !{!75, !74, i64 32}
!98 = !{!88, !8, i64 52}
!99 = !{!75, !8, i64 0}
!100 = !{!75, !13, i64 24}
!101 = !{!85, !77, i64 584}
!102 = !{!"_GPtrArray", !79, i64 0, !8, i64 8}
!103 = !{!102, !8, i64 8}
!104 = !{!102, !79, i64 0}
!105 = !{!"p1 _ZTS23dt_action_element_def_t", !13, i64 0}
!106 = !{!"p1 _ZTS22dt_shortcut_fallback_t", !13, i64 0}
!107 = !{!"dt_action_def_t", !20, i64 0, !13, i64 8, !105, i64 16, !106, i64 24, !8, i64 32}
!108 = !{!107, !105, i64 16}
!109 = !{!88, !8, i64 40}
!110 = !{!107, !106, i64 24}
!111 = !{!"p2 omnipotent char", !79, i64 0}
!112 = !{!"dt_action_element_def_t", !20, i64 0, !111, i64 8}
!113 = !{!112, !20, i64 0}
!114 = !{!88, !8, i64 44}
!115 = !{!112, !111, i64 8}
!116 = !{!64, !34, i64 128}
!117 = !{!"p1 _ZTS16_DtBauhausWidget", !13, i64 0}
!118 = !{!"short", !7, i64 0}
!119 = !{!"_GtkBorder", !118, i64 0, !118, i64 2, !118, i64 4, !118, i64 6}
!120 = !{!"_cairo_rectangle_int", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!121 = !{!"dt_bauhaus_popup_t", !62, i64 0, !62, i64 8, !119, i64 16, !120, i64 24, !8, i64 40, !8, i64 44, !87, i64 48}
!122 = !{!"p1 _ZTS11_GHashTable", !13, i64 0}
!123 = !{!"p1 _ZTS21_PangoFontDescription", !13, i64 0}
!124 = !{!"_GdkRGBA", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24}
!125 = !{!"dt_bauhaus_t", !117, i64 0, !121, i64 8, !62, i64 64, !87, i64 72, !87, i64 76, !8, i64 80, !8, i64 84, !87, i64 88, !7, i64 92, !8, i64 272, !8, i64 276, !7, i64 280, !8, i64 288, !122, i64 296, !122, i64 304, !87, i64 312, !87, i64 316, !8, i64 320, !87, i64 324, !87, i64 328, !87, i64 332, !123, i64 336, !8, i64 344, !8, i64 348, !8, i64 352, !124, i64 360, !124, i64 392, !124, i64 424, !124, i64 456, !124, i64 488, !124, i64 520, !124, i64 552, !124, i64 584, !124, i64 616, !124, i64 648, !124, i64 680, !124, i64 712, !124, i64 744, !124, i64 776, !124, i64 808, !7, i64 840, !7, i64 936}
!126 = !{!125, !122, i64 296}
!127 = !{!"dt_introspection_type_enum_tuple_t", !20, i64 0, !8, i64 8, !20, i64 16}
!128 = !{!127, !20, i64 16}
!129 = !{!127, !20, i64 0}
!130 = !{!125, !122, i64 304}
!131 = !{!88, !87, i64 48}
!132 = !{!85, !62, i64 568}
!133 = !{!85, !8, i64 580}
!134 = !{!"p1 _ZTS8_GModule", !13, i64 0}
!135 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !17, i64 8, !8, i64 16, !8, i64 20}
!136 = !{!"p1 _ZTS25dt_develop_blend_params_t", !13, i64 0}
!137 = !{!"", !122, i64 0, !122, i64 8}
!138 = !{!"p1 _ZTS15dt_iop_module_t", !13, i64 0}
!139 = !{!"", !138, i64 0, !8, i64 8}
!140 = !{!"", !137, i64 0, !139, i64 16}
!141 = !{!"p1 _ZTS18dt_iop_module_so_t", !13, i64 0}
!142 = !{!"dt_iop_module_t", !8, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !13, i64 376, !13, i64 384, !13, i64 392, !13, i64 400, !13, i64 408, !13, i64 416, !13, i64 424, !13, i64 432, !13, i64 440, !134, i64 448, !7, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !7, i64 512, !7, i64 528, !7, i64 544, !7, i64 560, !7, i64 576, !7, i64 592, !58, i64 608, !135, i64 616, !7, i64 640, !8, i64 656, !8, i64 660, !26, i64 664, !8, i64 672, !8, i64 676, !13, i64 680, !13, i64 688, !8, i64 696, !13, i64 704, !47, i64 712, !13, i64 752, !13, i64 760, !136, i64 768, !136, i64 776, !13, i64 784, !140, i64 792, !62, i64 824, !62, i64 832, !62, i64 840, !62, i64 848, !62, i64 856, !62, i64 864, !62, i64 872, !8, i64 880, !62, i64 888, !62, i64 896, !62, i64 904, !66, i64 912, !66, i64 920, !62, i64 928, !62, i64 936, !8, i64 944, !141, i64 952, !8, i64 960, !7, i64 964, !8, i64 1092, !62, i64 1096, !13, i64 1104, !8, i64 1112}
!143 = !{!142, !141, i64 952}
!144 = !{!75, !20, i64 8}
!145 = !{!74, !74, i64 0}
!146 = !{!75, !74, i64 40}
!147 = !{!64, !31, i64 104}
!148 = !{!"p1 _ZTS7dt_ui_t", !13, i64 0}
!149 = !{!"dt_gui_widgets_t", !62, i64 0, !62, i64 8, !62, i64 16, !62, i64 24, !8, i64 32, !8, i64 36, !8, i64 40}
!150 = !{!"dt_gui_scrollbars_t", !62, i64 0, !62, i64 8, !8, i64 16}
!151 = !{!"p1 _ZTS14_cairo_surface", !13, i64 0}
!152 = !{!"dt_gui_gtk_t", !148, i64 0, !149, i64 8, !150, i64 56, !151, i64 80, !8, i64 88, !20, i64 96, !7, i64 104, !7, i64 112, !8, i64 1360, !8, i64 1364, !8, i64 1368, !8, i64 1372, !8, i64 1376, !8, i64 1380, !55, i64 1384, !55, i64 1392, !55, i64 1400, !55, i64 1408, !62, i64 1416, !55, i64 1424, !55, i64 1432, !55, i64 1440, !55, i64 1448, !8, i64 1456, !8, i64 1460, !7, i64 1464, !8, i64 5560, !8, i64 5564, !8, i64 5568}
!153 = !{!"p1 _ZTS12_GtkTreePath", !13, i64 0}
!154 = !{!153, !153, i64 0}
!155 = !{!"p1 _ZTS14_GSequenceNode", !13, i64 0}
!156 = !{!155, !155, i64 0}
!157 = !{!"p1 _ZTS13_GtkTreeModel", !13, i64 0}
!158 = !{!157, !157, i64 0}
!159 = !{!"p1 _ZTS13dt_shortcut_t", !13, i64 0}
!160 = !{!159, !159, i64 0}
!161 = !{!88, !8, i64 4}
!162 = !{!87, !87, i64 0}
!163 = !{i64 0, i64 4, !12, i64 4, i64 4, !12, i64 8, i64 1, !11, i64 12, i64 4, !12, i64 16, i64 4, !12, i64 20, i64 2, !11, i64 22, i64 1, !11, i64 24, i64 4, !12, i64 32, i64 8, !145, i64 40, i64 4, !12, i64 44, i64 4, !12, i64 48, i64 4, !162, i64 52, i64 4, !12}
!164 = !{!64, !26, i64 64}
!165 = !{!"p1 _ZTS13_GtkTreeStore", !13, i64 0}
!166 = !{!165, !165, i64 0}
!167 = !{!152, !148, i64 0}
!168 = !{!"dt_view_t", !75, i64 0, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !7, i64 232, !134, i64 296, !13, i64 304, !8, i64 312, !8, i64 316, !87, i64 320, !87, i64 324, !87, i64 328, !87, i64 332, !87, i64 336, !87, i64 340, !87, i64 344, !87, i64 348}
!169 = !{!168, !13, i64 64}
!170 = !{!85, !74, i64 8}
!171 = !{i64 0, i64 4, !12, i64 8, i64 8, !73, i64 16, i64 8, !73, i64 24, i64 8, !73}
!172 = !{!85, !8, i64 560}
!173 = !{!"p1 _ZTS10_GdkWindow", !13, i64 0}
!174 = !{!"_GList", !13, i64 0, !23, i64 8, !23, i64 16}
!175 = !{!174, !13, i64 0}
!176 = !{!"dt_iop_module_so_t", !75, i64 0, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !13, i64 376, !13, i64 384, !13, i64 392, !13, i64 400, !13, i64 408, !13, i64 416, !13, i64 424, !13, i64 432, !13, i64 440, !13, i64 448, !13, i64 456, !13, i64 464, !13, i64 472, !13, i64 480, !134, i64 488, !7, i64 496, !13, i64 520, !8, i64 528, !13, i64 536, !8, i64 544, !8, i64 548}
!177 = !{!176, !13, i64 104}
!178 = !{!"dt_lib_module_t", !75, i64 0, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !134, i64 280, !13, i64 288, !7, i64 296, !62, i64 424, !62, i64 432, !8, i64 440, !62, i64 448, !62, i64 456, !62, i64 464, !62, i64 472, !8, i64 480}
!179 = !{!107, !20, i64 0}
!180 = !{!64, !8, i64 8}
!181 = !{!71, !20, i64 0}
!182 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !13, i64 0}
!183 = !{!"", !118, i64 0, !118, i64 2}
!184 = !{!"", !8, i64 0, !7, i64 16}
!185 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !183, i64 48, !184, i64 64, !7, i64 96, !8, i64 112}
!186 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!187 = !{!"dt_image_geoloc_t", !55, i64 0, !55, i64 8, !55, i64 16}
!188 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16}
!189 = !{!"p1 _ZTS16dt_cache_entry_t", !13, i64 0}
!190 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !87, i64 8, !87, i64 12, !87, i64 16, !87, i64 20, !87, i64 24, !87, i64 28, !87, i64 32, !87, i64 36, !8, i64 40, !7, i64 44, !7, i64 108, !7, i64 172, !7, i64 300, !7, i64 364, !7, i64 428, !7, i64 492, !17, i64 560, !8, i64 568, !7, i64 572, !7, i64 800, !7, i64 864, !7, i64 928, !7, i64 992, !8, i64 1120, !7, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !87, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !17, i64 1448, !17, i64 1456, !17, i64 1464, !17, i64 1472, !8, i64 1480, !185, i64 1488, !7, i64 1616, !20, i64 1656, !8, i64 1664, !8, i64 1668, !186, i64 1672, !187, i64 1680, !188, i64 1704, !118, i64 1736, !7, i64 1738, !8, i64 1748, !8, i64 1752, !87, i64 1756, !87, i64 1760, !7, i64 1776, !7, i64 1792, !7, i64 1840, !23, i64 1856, !189, i64 1864, !8, i64 1872, !8, i64 1876}
!191 = !{!"p1 _ZTS15dt_masks_form_t", !13, i64 0}
!192 = !{!"p1 _ZTS19dt_masks_form_gui_t", !13, i64 0}
!193 = !{!"dt_dev_proxy_exposure_t", !138, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32}
!194 = !{!"", !70, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64}
!195 = !{!"", !70, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32}
!196 = !{!"", !193, i64 0, !138, i64 40, !194, i64 48, !195, i64 120}
!197 = !{!"dt_dev_chroma_t", !138, i64 0, !138, i64 8, !7, i64 16, !7, i64 32, !7, i64 64, !8, i64 96}
!198 = !{!"", !138, i64 0, !138, i64 8, !13, i64 16}
!199 = !{!"", !62, i64 0, !62, i64 8, !8, i64 16, !8, i64 20, !87, i64 24, !87, i64 28, !8, i64 32}
!200 = !{!"", !62, i64 0, !62, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !87, i64 28}
!201 = !{!"", !62, i64 0, !62, i64 8}
!202 = !{!"", !62, i64 0, !8, i64 8}
!203 = !{!"", !62, i64 0, !62, i64 8, !62, i64 16, !62, i64 24, !62, i64 32}
!204 = !{!"dt_dev_viewport_t", !62, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !8, i64 56, !8, i64 60, !8, i64 64, !87, i64 68, !87, i64 72, !87, i64 76, !182, i64 80, !62, i64 88, !26, i64 96}
!205 = !{!"dt_develop_t", !8, i64 0, !8, i64 4, !8, i64 8, !13, i64 16, !55, i64 24, !55, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !55, i64 64, !8, i64 72, !8, i64 76, !8, i64 80, !138, i64 88, !182, i64 96, !190, i64 112, !8, i64 2000, !8, i64 2004, !47, i64 2008, !8, i64 2048, !23, i64 2056, !8, i64 2064, !138, i64 2072, !8, i64 2080, !23, i64 2088, !23, i64 2096, !8, i64 2104, !23, i64 2112, !23, i64 2120, !58, i64 2128, !58, i64 2136, !8, i64 2144, !8, i64 2148, !23, i64 2152, !191, i64 2160, !192, i64 2168, !23, i64 2176, !8, i64 2184, !8, i64 2188, !8, i64 2192, !87, i64 2196, !87, i64 2200, !138, i64 2208, !8, i64 2216, !196, i64 2224, !197, i64 2384, !198, i64 2496, !199, i64 2520, !200, i64 2560, !201, i64 2592, !202, i64 2608, !203, i64 2624, !62, i64 2664, !62, i64 2672, !204, i64 2680, !204, i64 2784, !8, i64 2888, !8, i64 2892, !8, i64 2896, !8, i64 2900, !23, i64 2904, !8, i64 2912, !26, i64 2920}
!206 = !{!205, !138, i64 88}
!207 = !{!142, !8, i64 480}
!208 = !{!23, !23, i64 0}
!209 = !{!"dt_action_target_t", !74, i64 0, !13, i64 8}
!210 = !{!209, !74, i64 0}
!211 = !{!209, !13, i64 8}
!212 = !{!107, !13, i64 8}
!213 = !{!107, !8, i64 32}
!214 = !{ptr @_interrupt_delayed_release}
!215 = !{!62, !62, i64 0}
!216 = !{!"p1 _ZTS15dt_action_def_t", !13, i64 0}
!217 = !{!"dt_device_key_t", !7, i64 0, !8, i64 4, !216, i64 8, !8, i64 16}
!218 = !{!217, !7, i64 0}
!219 = !{!217, !8, i64 4}
!220 = !{!105, !105, i64 0}
!221 = !{!217, !216, i64 8}
!222 = !{!217, !8, i64 16}
!223 = !{!142, !66, i64 912}
!224 = !{!70, !70, i64 0}
!225 = !{i64 0, i64 8, !21, i64 8, i64 8, !73, i64 16, i64 8, !73, i64 24, i64 8, !73, i64 32, i64 8, !73, i64 40, i64 8, !73, i64 48, i64 8, !224}
!226 = !{!85, !66, i64 592}
!227 = !{!127, !8, i64 8}
!228 = !{!125, !117, i64 0}
!229 = !{!152, !8, i64 1360}
!230 = !{!120, !8, i64 0}
!231 = !{!120, !8, i64 8}
!232 = !{!64, !28, i64 80}
!233 = !{!"_GtkTreeIter", !8, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!234 = !{!233, !13, i64 8}
!235 = !{!"_GdkEventKey", !8, i64 0, !173, i64 8, !7, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !20, i64 40, !118, i64 48, !7, i64 50, !8, i64 51}
!236 = !{!235, !8, i64 24}
!237 = !{!235, !8, i64 28}
!238 = !{}
!239 = distinct !{null}
!240 = distinct !{null}
!241 = !{!178, !13, i64 128}
!242 = !{!178, !13, i64 232}
!243 = !{!178, !13, i64 88}
!244 = !{!"p1 double", !13, i64 0}
!245 = !{!"p1 _ZTS10_GdkDevice", !13, i64 0}
!246 = !{!"_GdkEventButton", !8, i64 0, !173, i64 8, !7, i64 16, !8, i64 20, !55, i64 24, !55, i64 32, !244, i64 40, !8, i64 48, !8, i64 52, !245, i64 56, !55, i64 64, !55, i64 72}
!247 = !{!246, !8, i64 52}
!248 = !{!246, !55, i64 24}
!249 = !{!246, !55, i64 32}
!250 = !{!246, !8, i64 0}
!251 = !{!71, !13, i64 16}
!252 = !{!"_modifier_name", !8, i64 0, !20, i64 8}
!253 = !{!252, !8, i64 0}
!254 = !{!71, !13, i64 32}
!255 = !{!178, !13, i64 120}
!256 = !{!178, !13, i64 112}
!257 = !{!178, !13, i64 72}
!258 = !{!142, !62, i64 824}
!259 = !{!205, !23, i64 2088}
!260 = !{!178, !13, i64 48}
!261 = !{!64, !48, i64 3136}
!262 = !{!85, !8, i64 576}
!263 = !{!68, !66, i64 8}
!264 = distinct !{null}
!265 = !{!85, !70, i64 3912}
!266 = !{!178, !62, i64 424}
!267 = !{!71, !13, i64 40}
!268 = !{ptr @_remove_shortcut}
!269 = !{!85, !74, i64 544}
!270 = !{!216, !216, i64 0}
!271 = !{i64 0, i64 1, !11, i64 4, i64 4, !12, i64 8, i64 8, !270, i64 16, i64 4, !12}
!272 = !{ptr @_button_release_delayed, ptr @_key_release_delayed}
!273 = !{ptr @dt_shortcut_move}
!274 = distinct !{null}
!275 = !{!55, !55, i64 0}
!276 = !{!142, !66, i64 920}
!277 = !{!"dt_shortcut_fallback_t", !8, i64 0, !8, i64 4, !8, i64 4, !8, i64 4, !8, i64 5, !8, i64 8, !8, i64 12, !8, i64 16, !87, i64 20}
!278 = !{!277, !8, i64 0}
!279 = !{!277, !8, i64 8}
!280 = !{!277, !87, i64 20}
!281 = !{!85, !8, i64 0}
!282 = !{!"p1 _ZTS13_GdkKeymapKey", !13, i64 0}
!283 = !{!282, !282, i64 0}
!284 = !{!"_GdkKeymapKey", !8, i64 0, !8, i64 4, !8, i64 8}
!285 = !{!284, !8, i64 8}
!286 = !{!284, !8, i64 0}
!287 = !{!284, !8, i64 4}
!288 = !{!142, !8, i64 1092}
!289 = !{!142, !62, i64 872}
end_hunk_3
