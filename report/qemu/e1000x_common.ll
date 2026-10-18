Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/e1000x_common?download=true
inline.NumInlined: 60
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@e1000x_is_oversized:bb.a
bb.h:                                             ; preds = %bb.g
  %i.m = load i32, ptr @qemu_loglevel, align 4
  %i.n = and i32 %i.m, 32768
  %.not2.i = icmp eq i32 %i.n, 0
  br i1 %.not2.i, label %trace_e1000x_rx_oversized.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.9, i64 noundef %1) #7
  br label %trace_e1000x_rx_oversized.exit

trace_e1000x_rx_oversized.exit:                   ; preds = %bb.i, %bb.h, %bb.g, %e1000x_inc_reg_if_not_full.exit, %bb.b, %bb.c, %bb.d
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.c ], [ true, %e1000x_inc_reg_if_not_full.exit ], [ true, %bb.g ], [ true, %bb.h ], [ true, %bb.i ]
  ret i1 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @e1000x_restart_autoneg(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, -3
  store i32 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2
  %i.f = and i16 %i.e, -37
  store i16 %i.f, ptr %i.d, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.h = load i16, ptr %i.g, align 2
  %i.i = and i16 %i.h, -16385
  store i16 %i.i, ptr %i.g, align 2
  %i.j = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %trace_e1000x_link_negotiation_start.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.k = load i16, ptr @_TRACE_E1000X_LINK_NEGOTIATION_START_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.k, 0
  br i1 %.not1.i, label %trace_e1000x_link_negotiation_start.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr @qemu_loglevel, align 4
  %i.m = and i32 %i.l, 32768
  %.not2.i = icmp eq i32 %i.m, 0
  br i1 %.not2.i, label %trace_e1000x_link_negotiation_start.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.10) #7
  br label %trace_e1000x_link_negotiation_start.exit

trace_e1000x_link_negotiation_start.exit:         ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.n = tail call i64 @qemu_clock_get_ns(i32 noundef 1) #7
  %i.o = sdiv i64 %i.n, 1000000
  %i.p = add nsw i64 %i.o, 500
  tail call void @timer_mod(ptr noundef %2, i64 noundef %i.p) #7
  ret void
}

declare void @timer_mod(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @e1000x_reset_mac_addr(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((21504, 21512)) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 21504 ; 5 uses
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 21508 ; 5 uses
  store i32 -2147483648, ptr %i.b, align 4
  %i.c = load i8, ptr %2, align 1
  %i.d = zext i8 %i.c to i32                      ; 2 uses
  store i32 %i.d, ptr %i.a, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = load i8, ptr %i.e, align 1
  %i.g = zext i8 %i.f to i32
  %i.h = or disjoint i32 %i.g, -2147483648        ; 2 uses
  store i32 %i.h, ptr %i.b, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 8
  %i.m = or disjoint i32 %i.l, %i.d               ; 2 uses
  store i32 %i.m, ptr %i.a, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 8
  %i.r = or disjoint i32 %i.h, %i.q               ; 3 uses
  store i32 %i.r, ptr %i.b, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 16
  %i.w = or disjoint i32 %i.v, %i.m               ; 2 uses
  store i32 %i.w, ptr %i.a, align 4
  store i32 %i.r, ptr %i.b, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 3 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i32
  %i.aa = shl nuw i32 %i.z, 24
  %i.ab = or disjoint i32 %i.aa, %i.w
  store i32 %i.ab, ptr %i.a, align 4
  store i32 %i.r, ptr %i.b, align 4
  %i.ac = tail call ptr @qemu_get_queue(ptr noundef %0) #7
  tail call void @qemu_format_nic_info_str(ptr noundef %i.ac, ptr noundef nonnull %2) #7
  %i.ad = load i8, ptr %2, align 1
  %i.ae = load i8, ptr %i.i, align 1
  %i.af = load i8, ptr %i.s, align 1
  %i.ag = load i8, ptr %i.x, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i, label %trace_e1000x_mac_indicate.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.am = load i16, ptr @_TRACE_E1000X_MAC_INDICATE_DSTATE, align 2
  %.not6.i = icmp eq i16 %i.am, 0
  br i1 %.not6.i, label %trace_e1000x_mac_indicate.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = load i32, ptr @qemu_loglevel, align 4
  %i.ao = and i32 %i.an, 32768
  %.not7.i = icmp eq i32 %i.ao, 0
  br i1 %.not7.i, label %trace_e1000x_mac_indicate.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = zext i8 %i.ad to i32
  %i.aq = zext i8 %i.ae to i32
  %i.ar = zext i8 %i.af to i32
  %i.as = zext i8 %i.ag to i32
  %i.at = zext i8 %i.ai to i32
  %i.au = zext i8 %i.ak to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.11, i32 noundef %i.ap, i32 noundef %i.aq, i32 noundef %i.ar, i32 noundef %i.as, i32 noundef %i.at, i32 noundef %i.au) #7
  br label %trace_e1000x_mac_indicate.exit

trace_e1000x_mac_indicate.exit:                   ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

declare void @qemu_format_nic_info_str(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @qemu_get_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @e1000x_update_regs_on_autoneg_done(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = or i32 %i.b, 2
  store i32 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.g = load i16, ptr %i.f, align 2
  %i.h = or i16 %i.g, 16384
  store i16 %i.h, ptr %i.f, align 2
  %i.i = or i16 %i.e, 36
  store i16 %i.i, ptr %i.d, align 2
  %i.j = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %trace_e1000x_link_negotiation_done.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.k = load i16, ptr @_TRACE_E1000X_LINK_NEGOTIATION_DONE_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.k, 0
  br i1 %.not1.i, label %trace_e1000x_link_negotiation_done.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr @qemu_loglevel, align 4
  %i.m = and i32 %i.l, 32768
  %.not2.i = icmp eq i32 %i.m, 0
  br i1 %.not2.i, label %trace_e1000x_link_negotiation_done.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.12) #7
  br label %trace_e1000x_link_negotiation_done.exit

trace_e1000x_link_negotiation_done.exit:          ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nofree nounwind sspstrong uwtable
define dso_local void @e1000x_core_prepare_eeprom(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #3 {
bb.a:
  %i.a = zext i32 %2 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 %1, i64 noundef range(i64 0, 4294967296) %i.a, i1 noundef false) #7
  %i.b = load i16, ptr %4, align 1                ; 2 uses
  store i16 %i.b, ptr %0, align 2
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.d = load i16, ptr %i.c, align 1              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.d, ptr %i.e, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.g = load i16, ptr %i.f, align 1              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %i.g, ptr %i.h, align 2
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 %3, ptr %i.i, align 2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 %3, ptr %i.j, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.l = load i16, ptr %i.k, align 2
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.p = load i16, ptr %i.o, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i16, ptr %i.q, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 108
  %5 = load <4 x i16>, ptr %i.m, align 2
  %6 = load <2 x i16>, ptr %i.n, align 2
  %7 = load <8 x i16>, ptr %i.s, align 2
  %8 = load <8 x i16>, ptr %i.t, align 2
  %9 = load <8 x i16>, ptr %i.u, align 2
  %10 = load <8 x i16>, ptr %i.v, align 2
  %11 = load <8 x i16>, ptr %i.w, align 2
  %12 = load <8 x i16>, ptr %i.x, align 2
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.z = load i16, ptr %i.y, align 2
  %13 = shufflevector <2 x i16> %6, <2 x i16> poison, <56 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %14 = insertelement <56 x i16> %13, i16 %i.p, i64 6
  %15 = insertelement <56 x i16> %14, i16 %i.r, i64 7
  %16 = shufflevector <8 x i16> %12, <8 x i16> poison, <56 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %17 = shufflevector <56 x i16> %15, <56 x i16> %16, <56 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %18 = shufflevector <8 x i16> %11, <8 x i16> poison, <56 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %19 = shufflevector <56 x i16> %17, <56 x i16> %18, <56 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>
  %20 = shufflevector <8 x i16> %10, <8 x i16> poison, <56 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %21 = shufflevector <56 x i16> %19, <56 x i16> %20, <56 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>
  %22 = shufflevector <8 x i16> %9, <8 x i16> poison, <56 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %23 = shufflevector <56 x i16> %21, <56 x i16> %22, <56 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>
  %24 = shufflevector <8 x i16> %8, <8 x i16> poison, <56 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %25 = shufflevector <56 x i16> %23, <56 x i16> %24, <56 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>
  %26 = shufflevector <8 x i16> %7, <8 x i16> poison, <56 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %27 = shufflevector <56 x i16> %25, <56 x i16> %26, <56 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>
  %28 = shufflevector <4 x i16> %5, <4 x i16> poison, <56 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %29 = shufflevector <56 x i16> %28, <56 x i16> %27, <56 x i32> <i32 0, i32 1, i32 2, i32 3, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111>
  %30 = shl i16 %3, 1
  %31 = tail call i16 @llvm.vector.reduce.add.v56i16(<56 x i16> %29)
  %i.aa = add i16 %30, %31
  %i.ab = add i16 %i.aa, %i.l
  %i.ac = add i16 %i.z, %i.d
  %i.ad = add i16 %i.b, %i.g
  %i.ae = add i16 %i.ab, %i.ac
  %i.af = add i16 %i.ae, %i.ad
  %i.ag = sub i16 -17734, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 126
  store i16 %i.ag, ptr %i.ah, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i32 256, 16385) i32 @e1000x_rxbufsize(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = and i32 %0, 33751040
  switch i32 %i.a, label %bb.g [
    i32 33619968, label %bb.h
    i32 33685504, label %bb.b
    i32 33751040, label %bb.c
    i32 65536, label %bb.d
    i32 131072, label %bb.e
    i32 196608, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 2048, %bb.g ], [ 256, %bb.f ], [ 8192, %bb.b ], [ 4096, %bb.c ], [ 1024, %bb.d ], [ 512, %bb.e ], [ 16384, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @e1000x_update_rx_total_stats(ptr nofree noundef captures(none) %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = trunc i64 %3 to i32                      ; 6 uses
  %i.b = icmp sgt i32 %i.a, 1023
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16496 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, -1
  br i1 %.not.i.i, label %e1000x_increase_size_stats.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 4
  br label %e1000x_increase_size_stats.exit

bb.d:                                             ; preds = %bb.a
  %i.f = icmp sgt i32 %i.a, 511
  br i1 %i.f, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16492 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %.not.i17.i = icmp eq i32 %i.h, -1
  br i1 %.not.i17.i, label %e1000x_increase_size_stats.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = add nuw i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 4
  br label %e1000x_increase_size_stats.exit

bb.g:                                             ; preds = %bb.d
  %i.j = icmp sgt i32 %i.a, 255
  br i1 %i.j, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16488 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %.not.i19.i = icmp eq i32 %i.l, -1
  br i1 %.not.i19.i, label %e1000x_increase_size_stats.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = add nuw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 4
  br label %e1000x_increase_size_stats.exit

bb.j:                                             ; preds = %bb.g
  %i.n = icmp sgt i32 %i.a, 127
  br i1 %i.n, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16484 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %.not.i21.i = icmp eq i32 %i.p, -1
  br i1 %.not.i21.i, label %e1000x_increase_size_stats.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = add nuw i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4
  br label %e1000x_increase_size_stats.exit

bb.m:                                             ; preds = %bb.j
  %i.r = icmp sgt i32 %i.a, 64
  br i1 %i.r, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16480 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %.not.i23.i = icmp eq i32 %i.t, -1
  br i1 %.not.i23.i, label %e1000x_increase_size_stats.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.u = add nuw i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4
  br label %e1000x_increase_size_stats.exit

bb.p:                                             ; preds = %bb.m
  %i.v = icmp eq i32 %i.a, 64
  br i1 %i.v, label %bb.q, label %e1000x_increase_size_stats.exit

bb.q:                                             ; preds = %bb.p
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16476 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4              ; 2 uses
  %.not.i25.i = icmp eq i32 %i.x, -1
  br i1 %.not.i25.i, label %e1000x_increase_size_stats.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.y = add nuw i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 4
  br label %e1000x_increase_size_stats.exit

e1000x_increase_size_stats.exit:                  ; preds = %bb.b, %bb.c, %bb.e, %bb.f, %bb.h, %bb.i, %bb.k, %bb.l, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16592 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4             ; 2 uses
  %.not.i = icmp eq i32 %i.aa, -1
  br i1 %.not.i, label %e1000x_inc_reg_if_not_full.exit, label %bb.s

bb.s:                                             ; preds = %e1000x_increase_size_stats.exit
  %i.ab = add nuw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4
  br label %e1000x_inc_reg_if_not_full.exit

e1000x_inc_reg_if_not_full.exit:                  ; preds = %e1000x_increase_size_stats.exit, %bb.s
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16500 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4            ; 2 uses
  %.not.i10 = icmp eq i32 %i.ad, -1
  br i1 %.not.i10, label %e1000x_inc_reg_if_not_full.exit11, label %bb.t

bb.t:                                             ; preds = %e1000x_inc_reg_if_not_full.exit
  %i.ae = add nuw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4
  br label %e1000x_inc_reg_if_not_full.exit11

e1000x_inc_reg_if_not_full.exit11:                ; preds = %e1000x_inc_reg_if_not_full.exit, %bb.t
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16576 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 4
  %i.ah = shl i64 %2, 32
  %sext = add i64 %i.ah, 17179869184
  %i.ai = ashr exact i64 %sext, 32                ; 2 uses
  %..i = tail call i64 @llvm.uadd.sat.i64(i64 %i.ag, i64 %i.ai)
  store i64 %..i, ptr %i.af, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16520 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 4
  %..i12 = tail call i64 @llvm.uadd.sat.i64(i64 %i.ak, i64 %i.ai)
  store i64 %..i12, ptr %i.aj, align 4
  switch i32 %1, label %e1000x_inc_reg_if_not_full.exit14 [
    i32 -1430533119, label %bb.u
    i32 -1430533118, label %bb.w
  ]

bb.u:                                             ; preds = %e1000x_inc_reg_if_not_full.exit11
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16504 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %.not.i13 = icmp eq i32 %i.am, -1
  br i1 %.not.i13, label %e1000x_inc_reg_if_not_full.exit14, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.an = add nuw i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 4
  br label %e1000x_inc_reg_if_not_full.exit14

bb.w:                                             ; preds = %e1000x_inc_reg_if_not_full.exit11
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16508 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4            ; 2 uses
  %.not.i15 = icmp eq i32 %i.ap, -1
  br i1 %.not.i15, label %e1000x_inc_reg_if_not_full.exit14, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aq = add nuw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ao, align 4
  br label %e1000x_inc_reg_if_not_full.exit14

e1000x_inc_reg_if_not_full.exit14:                ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %e1000x_inc_reg_if_not_full.exit11
  ret void
}

end_hunk_0
begin_hunk_1_@e1000x_increase_size_stats:bb.a
  %i.q = load i32, ptr %i.p, align 4
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %0, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %.not.i19 = icmp eq i32 %i.t, -1
  br i1 %.not.i19, label %e1000x_inc_reg_if_not_full.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = add nuw i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4
  br label %e1000x_inc_reg_if_not_full.exit

bb.j:                                             ; preds = %bb.g
  %i.v = icmp sgt i32 %2, 127
  br i1 %i.v, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i32, ptr %i.w, align 4
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4             ; 2 uses
  %.not.i21 = icmp eq i32 %i.aa, -1
  br i1 %.not.i21, label %e1000x_inc_reg_if_not_full.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = add nuw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4
  br label %e1000x_inc_reg_if_not_full.exit

bb.m:                                             ; preds = %bb.j
  %i.ac = icmp sgt i32 %2, 64
  br i1 %i.ac, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %0, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4            ; 2 uses
  %.not.i23 = icmp eq i32 %i.ah, -1
  br i1 %.not.i23, label %e1000x_inc_reg_if_not_full.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = add nuw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 4
  br label %e1000x_inc_reg_if_not_full.exit

bb.p:                                             ; preds = %bb.m
  %i.aj = icmp eq i32 %2, 64
  br i1 %i.aj, label %bb.q, label %e1000x_inc_reg_if_not_full.exit

bb.q:                                             ; preds = %bb.p
  %i.ak = load i32, ptr %1, align 4
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %0, i64 %i.al ; 2 uses
  %i.an = load i32, ptr %i.am, align 4            ; 2 uses
  %.not.i25 = icmp eq i32 %i.an, -1
  br i1 %.not.i25, label %e1000x_inc_reg_if_not_full.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = add nuw i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 4
  br label %e1000x_inc_reg_if_not_full.exit

e1000x_inc_reg_if_not_full.exit:                  ; preds = %bb.r, %bb.q, %bb.o, %bb.n, %bb.l, %bb.k, %bb.i, %bb.h, %bb.f, %bb.e, %bb.c, %bb.b, %bb.p
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @e1000x_read_tx_ctx_descr(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 13), (14, 19)) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4              ; 4 uses
  %i.c = load i8, ptr %0, align 4
  store i8 %i.c, ptr %1, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.e, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = load i16, ptr %i.g, align 2
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.h, ptr %i.i, align 2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i8, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.k, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.n = load i8, ptr %i.m, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.n, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.q = load i16, ptr %i.p, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i16 %i.q, ptr %i.r, align 2
  %i.s = and i32 %i.b, 1048575
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.s, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.v = load i8, ptr %i.u, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i8 %i.v, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.y = load i16, ptr %i.x, align 2
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 14
  store i16 %i.y, ptr %i.z, align 2
  %i.aa = lshr i32 %i.b, 25
  %i.ab = trunc nuw nsw i32 %i.aa to i8
  %i.ac = and i8 %i.ab, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %i.ac, ptr %i.ad, align 4
  %i.ae = lshr i32 %i.b, 24
  %i.af = trunc nuw i32 %i.ae to i8
  %i.ag = and i8 %i.af, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 %i.ag, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.aj = lshr i32 %i.b, 26
  %i.ak = trunc nuw nsw i32 %i.aj to i8
  %i.al = and i8 %i.ak, 1
  store i8 %i.al, ptr %i.ai, align 2
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @e1000x_timestamp(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @qemu_clock_get_ns(i32 noundef 1) #7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 46600
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = and i32 %i.c, 16777215
  %i.e = lshr i32 %i.c, 24
  %i.f = tail call i32 @llvm.umax.i32(i32 %i.e, i32 1)
  %i.g = shl nuw nsw i32 %i.f, 4
  %i.h = zext i64 %i.a to i128
  %i.i = zext nneg i32 %i.d to i128
  %i.j = mul nuw nsw i128 %i.i, %i.h
  %i.k = zext nneg i32 %i.g to i128
  %i.l = udiv i128 %i.j, %i.k
  %i.m = trunc i128 %i.l to i64
  %i.n = add i64 %1, %i.m                         ; 2 uses
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %2
  store i32 %i.o, ptr %i.p, align 4
  %i.q = lshr i64 %i.n, 32
  %i.r = trunc nuw i64 %i.q to i32
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %3
  store i32 %i.r, ptr %i.s, align 4
  ret void
}

declare i64 @qemu_clock_get_ns(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @e1000x_set_timinca(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @qemu_clock_get_ns(i32 noundef 1) #7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 46600 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = and i32 %i.c, 16777215
  %i.e = lshr i32 %i.c, 24
  %i.f = tail call i32 @llvm.umax.i32(i32 %i.e, i32 1)
  %i.g = and i32 %2, 16777215
  %i.h = lshr i32 %2, 24
  %i.i = tail call i32 @llvm.umax.i32(i32 %i.h, i32 1)
  store i32 %2, ptr %i.b, align 4
  %i.j = zext i64 %i.a to i128                    ; 2 uses
  %i.k = zext nneg i32 %i.g to i128
  %i.l = mul nuw nsw i128 %i.j, %i.k
  %i.m = zext nneg i32 %i.i to i128
  %i.n = udiv i128 %i.l, %i.m
  %i.o = trunc i128 %i.n to i64
  %i.p = zext nneg i32 %i.d to i128
  %i.q = mul nuw nsw i128 %i.p, %i.j
  %i.r = zext nneg i32 %i.f to i128
  %i.s = udiv i128 %i.q, %i.r
  %i.t = trunc i128 %i.s to i64
  %i.u = sub i64 %i.o, %i.t
  %i.v = lshr i64 %i.u, 4
  %i.w = load i64, ptr %1, align 8
  %i.x = add i64 %i.v, %i.w
  store i64 %i.x, ptr %1, align 8
  ret void
}

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v56i16(<56 x i16>) #6

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nofree nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!8 = !{!"branch_weights", i32 4001, i32 1}
!9 = !{!"auto-init"}
end_hunk_1
