Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/dev-hub?download=true
inline.NumInlined: 53
inline.NumDeleted: 23
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@usb_hub_realize:bb.a
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %usb_hub_port_set.exit9.sink.split.i.i, label %usb_hub_port_update.exit.i

usb_hub_port_set.exit9.sink.split.i.i:            ; preds = %usb_hub_port_set.exit.i.i
  store i16 769, ptr %i.aj, align 8
  br label %usb_hub_port_update.exit.i

usb_hub_port_update.exit.i:                       ; preds = %usb_hub_port_set.exit9.sink.split.i.i, %usb_hub_port_set.exit.i.i, %bb.j, %usb_hub_port_set.exit.i
  %i.as = add nuw i32 %.012.i, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.as, %i.af
  br i1 %exitcond.not, label %usb_hub_handle_reset.exit, label %usb_hub_port_set.exit.i, !llvm.loop !0

usb_hub_handle_reset.exit:                        ; preds = %usb_hub_port_update.exit.i, %trace_usb_hub_reset.exit.i, %bb.d, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal ptr @usb_hub_find_device(ptr noundef %0, i8 noundef zeroext %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, i32 noundef 55, ptr noundef nonnull @__func__.USB_HUB) #7 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5864 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %.not17 = icmp eq i32 %i.c, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 5880
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.e = phi i32 [ %i.c, %.lr.ph ], [ %i.l, %bb.d ]
  %.014 = phi i32 [ 0, %.lr.ph ], [ %i.m, %bb.d ] ; 2 uses
  %i.f = sext i32 %.014 to i64
  %i.g = getelementptr inbounds [80 x i8], ptr %i.d, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load i16, ptr %i.h, align 8
  %i.j = and i16 %i.i, 2
  %.not = icmp eq i16 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @usb_find_device(ptr noundef nonnull %i.g, i8 noundef zeroext %1) #7 ; 2 uses
  %.not13 = icmp eq ptr %i.k, null
  br i1 %.not13, label %._crit_edge18, label %._crit_edge

._crit_edge18:                                    ; preds = %bb.c
  %.pre = load i32, ptr %i.b, align 8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge18, %bb.b
  %i.l = phi i32 [ %.pre, %._crit_edge18 ], [ %i.e, %bb.b ] ; 2 uses
  %i.m = add nuw i32 %.014, 1                     ; 2 uses
  %i.n = icmp ult i32 %i.m, %i.l
  br i1 %i.n, label %bb.b, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.c, %bb.d, %bb.a
  %.011 = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ %i.k, %bb.c ]
  ret ptr %.011
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @usb_hub_handle_reset(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, i32 noundef 55, ptr noundef nonnull @__func__.USB_HUB) #7 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.c = load i8, ptr %i.b, align 8
  %i.d = zext i8 %i.c to i32
  %i.e = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %trace_usb_hub_reset.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.f = load i16, ptr @_TRACE_USB_HUB_RESET_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.f, 0
  br i1 %.not1.i, label %trace_usb_hub_reset.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr @qemu_loglevel, align 4
  %i.h = and i32 %i.g, 32768
  %.not2.i = icmp eq i32 %i.h, 0
  br i1 %.not2.i, label %trace_usb_hub_reset.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.19, i32 noundef range(i32 0, 256) %i.d) #7
  br label %trace_usb_hub_reset.exit

trace_usb_hub_reset.exit:                         ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 5864
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %._crit_edge, label %usb_hub_port_set.exit.lr.ph

usb_hub_port_set.exit.lr.ph:                      ; preds = %trace_usb_hub_reset.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 5880
  br label %usb_hub_port_set.exit

usb_hub_port_set.exit:                            ; preds = %usb_hub_port_set.exit.lr.ph, %usb_hub_port_update.exit
  %.012 = phi i32 [ 0, %usb_hub_port_set.exit.lr.ph ], [ %i.w, %usb_hub_port_update.exit ] ; 2 uses
  %i.l = sext i32 %.012 to i64
  %i.m = getelementptr inbounds [80 x i8], ptr %i.k, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 74 ; 2 uses
  store i16 0, ptr %i.o, align 2
  store i16 256, ptr %i.n, align 8
  %i.p = load ptr, ptr %i.m, align 8              ; 3 uses
  %.not.i11 = icmp eq ptr %i.p, null
  br i1 %.not.i11, label %usb_hub_port_update.exit, label %bb.e

bb.e:                                             ; preds = %usb_hub_port_set.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 256
  %i.r = load i8, ptr %i.q, align 8, !range !10, !noundef !11
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %usb_hub_port_set.exit.i, label %usb_hub_port_update.exit

usb_hub_port_set.exit.i:                          ; preds = %bb.e
  store i16 257, ptr %i.n, align 8
  store i16 1, ptr %i.o, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 208
  %i.u = load i32, ptr %i.t, align 8
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %usb_hub_port_set.exit9.sink.split.i, label %usb_hub_port_update.exit

usb_hub_port_set.exit9.sink.split.i:              ; preds = %usb_hub_port_set.exit.i
  store i16 769, ptr %i.n, align 8
  br label %usb_hub_port_update.exit

usb_hub_port_update.exit:                         ; preds = %usb_hub_port_set.exit.i, %usb_hub_port_set.exit, %bb.e, %usb_hub_port_set.exit9.sink.split.i
  %i.w = add nuw i32 %.012, 1                     ; 2 uses
  %i.x = icmp ult i32 %i.w, %i.j
  br i1 %i.x, label %usb_hub_port_set.exit, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %usb_hub_port_update.exit, %trace_usb_hub_reset.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @usb_hub_handle_control(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = zext i8 %i.b to i32
  %i.d = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %trace_usb_hub_control.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.e = load i16, ptr @_TRACE_USB_HUB_CONTROL_DSTATE, align 2
  %.not5.i = icmp eq i16 %i.e, 0
  br i1 %.not5.i, label %trace_usb_hub_control.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr @qemu_loglevel, align 4
  %i.g = and i32 %i.f, 32768
  %.not6.i = icmp eq i32 %i.g, 0
  br i1 %.not6.i, label %trace_usb_hub_control.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.20, i32 noundef range(i32 0, 256) %i.c, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #7
  br label %trace_usb_hub_control.exit

trace_usb_hub_control.exit:                       ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.h = tail call i32 @usb_desc_handle_control(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) #7
  %i.i = icmp sgt i32 %i.h, -1
  br i1 %i.i, label %.thread167, label %bb.e

bb.e:                                             ; preds = %trace_usb_hub_control.exit
  switch i32 %2, label %usb_hub_port_clear.exit153 [
    i32 513, label %bb.f
    i32 40960, label %bb.g
    i32 41728, label %bb.h
    i32 8195, label %bb.m
    i32 8193, label %bb.m
    i32 8963, label %bb.n
    i32 8961, label %bb.ac
    i32 40966, label %bb.at
  ]

bb.f:                                             ; preds = %bb.e
  %i.j = icmp eq i32 %3, 0
  %i.k = icmp ne i32 %4, 129
  %or.cond = and i1 %i.j, %i.k
  br i1 %or.cond, label %usb_hub_port_clear.exit153, label %.thread167

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i32 0, ptr %6, align 1
  store i32 4, ptr %i.l, align 8
  br label %.thread167

bb.h:                                             ; preds = %bb.e
  %i.m = add i32 %4, -1                           ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5864
  %i.o = load i32, ptr %i.n, align 8
  %.not128 = icmp ult i32 %i.m, %i.o
  br i1 %.not128, label %bb.i, label %usb_hub_port_clear.exit153

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5880
  %i.q = zext i32 %i.m to i64
  %i.r = getelementptr inbounds nuw [80 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i8, ptr %i.a, align 8
  %i.t = zext i8 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 72 ; 3 uses
  %i.v = load i16, ptr %i.u, align 8              ; 4 uses
  %i.w = zext i16 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 74 ; 3 uses
  %i.y = load i16, ptr %i.x, align 2
  %i.z = zext i16 %i.y to i32
  %i.aa = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i131 = icmp eq i32 %i.aa, 0
  br i1 %.not.i131, label %.thread, label %bb.j, !prof !9

bb.j:                                             ; preds = %bb.i
  %i.ab = load i16, ptr @_TRACE_USB_HUB_GET_PORT_STATUS_DSTATE, align 2
  %.not4.i = icmp eq i16 %i.ab, 0
  br i1 %.not4.i, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i32, ptr @qemu_loglevel, align 4
  %i.ad = and i32 %i.ac, 32768
  %.not5.i132 = icmp eq i32 %i.ad, 0
  br i1 %.not5.i132, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.21, i32 noundef range(i32 0, 256) %i.t, i32 noundef %4, i32 noundef range(i32 0, 65536) %i.w, i32 noundef range(i32 0, 65536) %i.z) #7
  %.pre187 = load i16, ptr %i.u, align 8
  br label %.thread

.thread:                                          ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.ae = phi i16 [ %.pre187, %bb.l ], [ %i.v, %bb.k ], [ %i.v, %bb.j ], [ %i.v, %bb.i ]
  %i.af = trunc i16 %i.ae to i8
  store i8 %i.af, ptr %6, align 1
  %7 = load i16, ptr %i.u, align 8
  %8 = lshr i16 %7, 8
  %9 = trunc nuw i16 %8 to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 %9, ptr %i.ag, align 1
  %i.ah = load i16, ptr %i.x, align 2
  %i.ai = trunc i16 %i.ah to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i8 %i.ai, ptr %i.aj, align 1
  %10 = load i16, ptr %i.x, align 2
  %11 = lshr i16 %10, 8
  %12 = trunc nuw i16 %11 to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 3
  store i8 %12, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i32 4, ptr %i.al, align 8
  br label %.thread167

bb.m:                                             ; preds = %bb.e, %bb.e
  %or.cond3 = icmp ugt i32 %3, 1
  br i1 %or.cond3, label %usb_hub_port_clear.exit153, label %.thread167

bb.n:                                             ; preds = %bb.e
  %i.am = add i32 %4, -1                          ; 2 uses
  %i.an = load i8, ptr %i.a, align 8
  %i.ao = zext i8 %i.an to i32
  %i.ap = icmp ugt i32 %3, 22
  br i1 %i.ap, label %feature_name.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = zext nneg i32 %3 to i64                 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr @feature_name.name, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = shl nuw nsw i64 1, %i.aq
  %i.au = and i64 %i.at, 63712
  %.not.not.i = icmp eq i64 %i.au, 0
  %..str.38.i = select i1 %.not.not.i, ptr %i.as, ptr @.str.38
  br label %feature_name.exit

feature_name.exit:                                ; preds = %bb.n, %bb.o
  %.0.i = phi ptr [ %..str.38.i, %bb.o ], [ @.str.38, %bb.n ]
  %i.av = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i133 = icmp eq i32 %i.av, 0
  br i1 %.not.i133, label %trace_usb_hub_set_port_feature.exit, label %bb.p, !prof !9

bb.p:                                             ; preds = %feature_name.exit
  %i.aw = load i16, ptr @_TRACE_USB_HUB_SET_PORT_FEATURE_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.aw, 0
  br i1 %.not2.i, label %trace_usb_hub_set_port_feature.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = load i32, ptr @qemu_loglevel, align 4
  %i.ay = and i32 %i.ax, 32768
  %.not3.i = icmp eq i32 %i.ay, 0
  br i1 %.not3.i, label %trace_usb_hub_set_port_feature.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.22, i32 noundef range(i32 0, 256) %i.ao, i32 noundef %4, ptr noundef %.0.i) #7
  br label %trace_usb_hub_set_port_feature.exit

trace_usb_hub_set_port_feature.exit:              ; preds = %feature_name.exit, %bb.p, %bb.q, %bb.r
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 5864
  %i.ba = load i32, ptr %i.az, align 8
  %.not126 = icmp ult i32 %i.am, %i.ba
  br i1 %.not126, label %bb.s, label %usb_hub_port_clear.exit153

bb.s:                                             ; preds = %trace_usb_hub_set_port_feature.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 5880
  %i.bc = zext i32 %i.am to i64
  %i.bd = getelementptr inbounds nuw [80 x i8], ptr %i.bb, i64 %i.bc ; 7 uses
  %i.be = load ptr, ptr %i.bd, align 8            ; 3 uses
  switch i32 %3, label %usb_hub_port_clear.exit153 [
    i32 2, label %bb.t
    i32 4, label %bb.u
    i32 8, label %bb.z
  ]

bb.t:                                             ; preds = %bb.s
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 72 ; 2 uses
  %i.bg = load i16, ptr %i.bf, align 8
  %i.bh = or i16 %i.bg, 4
  store i16 %i.bh, ptr %i.bf, align 8
  br label %.thread167

bb.u:                                             ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 72 ; 4 uses
  %i.bj = load i16, ptr %i.bi, align 8            ; 3 uses
  %i.bk = and i16 %i.bj, 16
  %.not.i134 = icmp eq i16 %i.bk, 0
  br i1 %.not.i134, label %bb.v, label %usb_hub_port_clear.exit

bb.v:                                             ; preds = %bb.u
  %i.bl = or disjoint i16 %i.bj, 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 74 ; 2 uses
  %i.bn = load i16, ptr %i.bm, align 2
  %i.bo = or i16 %i.bn, 16
  store i16 %i.bo, ptr %i.bm, align 2
  br label %usb_hub_port_clear.exit

usb_hub_port_clear.exit:                          ; preds = %bb.u, %bb.v
  %i.bp = phi i16 [ %i.bj, %bb.u ], [ %i.bl, %bb.v ]
  %i.bq = and i16 %i.bp, -17
  store i16 %i.bq, ptr %i.bi, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 74 ; 2 uses
  %i.bs = load i16, ptr %i.br, align 2
  %i.bt = or i16 %i.bs, 16
  store i16 %i.bt, ptr %i.br, align 2
  %.not127 = icmp eq ptr %i.be, null
  br i1 %.not127, label %usb_hub_port_set.exit140, label %bb.w

bb.w:                                             ; preds = %usb_hub_port_clear.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.be, i64 256
  %i.bv = load i8, ptr %i.bu, align 8, !range !10, !noundef !11
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.x, label %usb_hub_port_set.exit140

bb.x:                                             ; preds = %bb.w
  tail call void @usb_device_reset(ptr noundef nonnull %i.be) #7
  %i.bx = load i16, ptr %i.bi, align 8            ; 2 uses
  %i.by = and i16 %i.bx, 2
  %.not.i138 = icmp eq i16 %i.by, 0
  br i1 %.not.i138, label %bb.y, label %usb_hub_port_set.exit140

bb.y:                                             ; preds = %bb.x
  %i.bz = or disjoint i16 %i.bx, 2
  store i16 %i.bz, ptr %i.bi, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bd, i64 74 ; 2 uses
  %i.cb = load i16, ptr %i.ca, align 2
  %i.cc = or i16 %i.cb, 2
  store i16 %i.cc, ptr %i.ca, align 2
  br label %usb_hub_port_set.exit140

usb_hub_port_set.exit140:                         ; preds = %bb.y, %bb.x, %bb.w, %usb_hub_port_clear.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 5856
  %i.ce = load ptr, ptr %i.cd, align 8
  tail call void @usb_wakeup(ptr noundef %i.ce, i32 noundef 0) #7
  br label %.thread167

bb.z:                                             ; preds = %bb.s
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 5868
  %i.cg = load i8, ptr %i.cf, align 4, !range !10, !noundef !11
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.aa, label %.thread167

bb.aa:                                            ; preds = %bb.z
  %i.ci = tail call i64 @qemu_clock_get_ns(i32 noundef 1) #7
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bd, i64 72 ; 2 uses
  %i.ck = load i16, ptr %i.cj, align 8            ; 2 uses
  %i.cl = and i16 %i.ck, 256
  %.not.i141 = icmp eq i16 %i.cl, 0
  br i1 %.not.i141, label %bb.ab, label %usb_hub_port_set.exit143

bb.ab:                                            ; preds = %bb.aa
  %i.cm = or disjoint i16 %i.ck, 256
  store i16 %i.cm, ptr %i.cj, align 8
  br label %usb_hub_port_set.exit143

usb_hub_port_set.exit143:                         ; preds = %bb.aa, %bb.ab
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 5872
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = add i64 %i.ci, 5000000
  tail call void @timer_mod(ptr noundef %i.co, i64 noundef %i.cp) #7
  br label %.thread167

bb.ac:                                            ; preds = %bb.e
  %i.cq = add i32 %4, -1                          ; 2 uses
  %i.cr = load i8, ptr %i.a, align 8
  %i.cs = zext i8 %i.cr to i32
  %i.ct = icmp ugt i32 %3, 22
  br i1 %i.ct, label %feature_name.exit147, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cu = zext nneg i32 %3 to i64                 ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr @feature_name.name, i64 %i.cu
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = shl nuw nsw i64 1, %i.cu
  %i.cy = and i64 %i.cx, 63712
  %.not.not.i144 = icmp eq i64 %i.cy, 0
  %..str.38.i145 = select i1 %.not.not.i144, ptr %i.cw, ptr @.str.38
  br label %feature_name.exit147

feature_name.exit147:                             ; preds = %bb.ac, %bb.ad
  %.0.i146 = phi ptr [ %..str.38.i145, %bb.ad ], [ @.str.38, %bb.ac ]
  %i.cz = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i148 = icmp eq i32 %i.cz, 0
  br i1 %.not.i148, label %trace_usb_hub_clear_port_feature.exit, label %bb.ae, !prof !9

bb.ae:                                            ; preds = %feature_name.exit147
  %i.da = load i16, ptr @_TRACE_USB_HUB_CLEAR_PORT_FEATURE_DSTATE, align 2
  %.not2.i149 = icmp eq i16 %i.da, 0
  br i1 %.not2.i149, label %trace_usb_hub_clear_port_feature.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.db = load i32, ptr @qemu_loglevel, align 4
  %i.dc = and i32 %i.db, 32768
  %.not3.i150 = icmp eq i32 %i.dc, 0
  br i1 %.not3.i150, label %trace_usb_hub_clear_port_feature.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.39, i32 noundef range(i32 0, 256) %i.cs, i32 noundef %4, ptr noundef %.0.i146) #7
  br label %trace_usb_hub_clear_port_feature.exit

trace_usb_hub_clear_port_feature.exit:            ; preds = %feature_name.exit147, %bb.ae, %bb.af, %bb.ag
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 5864
  %i.de = load i32, ptr %i.dd, align 8
  %.not = icmp ult i32 %i.cq, %i.de
  br i1 %.not, label %bb.ah, label %usb_hub_port_clear.exit153

bb.ah:                                            ; preds = %trace_usb_hub_clear_port_feature.exit
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 5880
  %i.dg = zext i32 %i.cq to i64
  %i.dh = getelementptr inbounds nuw [80 x i8], ptr %i.df, i64 %i.dg ; 10 uses
  switch i32 %3, label %usb_hub_port_clear.exit153 [
    i32 1, label %bb.ai
end_hunk_0
