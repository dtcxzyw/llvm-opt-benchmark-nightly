Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/arm_gicv3_redist?download=true
inline.NumInlined: 149
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@gicv3_redist_write:bb.a
bb.bs:                                            ; preds = %bb.bb, %gicr_write_ipriorityr.exit.i, %bb.bf, %bb.k, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.v, %bb.j, %bb.j, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %.split190.us.i, %bb.u, %bb.ap, %mask_group.exit.i, %gicr_write_bitmap_reg.exit.i, %bb.ax, %bb.aw, %bb.az, %bb.ay, %bb.bc, %bb.bd, %bb.be, %bb.m, %bb.n, %bb.ba, %bb.bk, %bb.bh, %bb.bi, %bb.bm, %bb.bl, %bb.bj
  %i.hx = getelementptr i8, ptr %i.r, i64 72
  %.val55 = load i64, ptr %i.hx, align 8
  %i.hy = lshr i64 %.val55, 32
  %i.hz = trunc nuw i64 %i.hy to i32
  %i.ia = trunc i64 %4 to i32
  %i.ib = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i65 = icmp eq i32 %i.ib, 0
  br i1 %.not.i65, label %trace_gicv3_redist_badwrite.exit, label %bb.bt, !prof !9

bb.bt:                                            ; preds = %bb.bs
  %i.ic = load i16, ptr @_TRACE_GICV3_REDIST_WRITE_DSTATE, align 2
  %.not5.i66 = icmp eq i16 %i.ic, 0
  br i1 %.not5.i66, label %trace_gicv3_redist_badwrite.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.id = load i32, ptr @qemu_loglevel, align 4
  %i.ie = and i32 %i.id, 32768
  %.not6.i67 = icmp eq i32 %i.ie, 0
  br i1 %.not6.i67, label %trace_gicv3_redist_badwrite.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.if = and i32 %i.ia, 1
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.11, i32 noundef %i.hz, i64 noundef range(i64 0, 262144) %i.p, i64 noundef %2, i32 noundef %3, i32 noundef %i.if) #7
  br label %trace_gicv3_redist_badwrite.exit

trace_gicv3_redist_badwrite.exit:                 ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @gicv3_redist_update_lpi_only(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = and i64 %i.e, 31
  %i.g = tail call i64 @llvm.umin.i64(i64 %i.f, i64 15)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 4503599627304960
  %i.k = and i64 %i.e, 4503599627366400
  %i.l = trunc nuw nsw i64 %i.g to i32
  %i.m = load ptr, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1320
  %i.o = load i32, ptr %i.n, align 8
  %i.p = and i32 %i.o, 64
  %i.q = icmp ne i32 %i.p, 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 660
  tail call fastcc void @update_for_all_lpis(ptr noundef nonnull %0, i64 noundef %i.j, i64 noundef %i.k, i32 noundef %i.l, i1 noundef zeroext %i.q, ptr noundef nonnull %i.r)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @update_for_all_lpis(ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 0, 4503599627304961) %1, i64 noundef range(i64 0, 4503599627366401) %2, i32 noundef %3, i1 noundef zeroext %4, ptr nofree noundef captures(none) initializes((4, 5), (12, 13)) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i8, align 1                       ; 8 uses
  %i.d = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.e = add i32 %3, 1
  %i.f = zext nneg i32 %i.e to i64
  %i.g = shl nuw i64 1, %i.f                      ; 2 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i8 -1, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 0, ptr %i.j, align 4
  %i.k = icmp ugt i32 %i.h, 8199
  br i1 %i.k, label %.lr.ph33, label %._crit_edge34

.lr.ph33:                                         ; preds = %bb.a
  store i8 0, ptr %i.c, align 1, !annotation !10
  %i.l = lshr i64 %i.g, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 1192
  %wide.trip.count = and i64 %i.l, 536870911
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph33, %._crit_edge
  %indvars.iv = phi i64 [ 1024, %.lr.ph33 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.n = add nuw nsw i64 %1, %indvars.iv          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i64 0, ptr %i.a, align 8, !annotation !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i64 0, ptr %i.b, align 8, !annotation !10
  %i.o = call ptr @get_ptr_rcu_reader() #7        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %bb.c, label %rcu_read_auto_lock.exit

bb.c:                                             ; preds = %bb.b
  %i.s = load atomic i64, ptr @rcu_gp_ctr monotonic, align 8
  %i.t = and i64 %i.s, 4294967295
  store atomic i64 %i.t, ptr %i.o monotonic, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !11
  fence seq_cst
  br label %rcu_read_auto_lock.exit

rcu_read_auto_lock.exit:                          ; preds = %bb.b, %bb.c
  %i.u = load atomic ptr, ptr %i.m monotonic, align 8 ; 2 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !12
  store i64 1, ptr %i.a, align 8
  %i.v = call ptr @flatview_translate(ptr noundef %i.u, i64 noundef %i.n, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i1 noundef zeroext false, i64 4294967296) #7 ; 6 uses
  %i.w = load i64, ptr %i.a, align 8              ; 2 uses
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.d, label %memory_access_is_direct.exit.thread28

bb.d:                                             ; preds = %rcu_read_auto_lock.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 45
  %i.z = load i8, ptr %i.y, align 1, !range !7, !noundef !8
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %memory_region_is_romd.exit.i.i, label %memory_region_is_romd.exit.thread.i.i

memory_region_is_romd.exit.i.i:                   ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.ac = load i8, ptr %i.ab, align 8, !range !7, !noundef !8
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %memory_access_is_direct.exit.thread, label %memory_region_is_romd.exit.thread.i.i

memory_region_is_romd.exit.thread.i.i:            ; preds = %memory_region_is_romd.exit.i.i, %bb.d
  %i.ae = getelementptr i8, ptr %i.v, i64 41
  %.val.i.i = load i8, ptr %i.ae, align 1, !range !7, !noundef !8
  %i.af = trunc nuw i8 %.val.i.i to i1
  br i1 %i.af, label %memory_access_is_direct.exit, label %memory_access_is_direct.exit.thread28

memory_access_is_direct.exit:                     ; preds = %memory_region_is_romd.exit.thread.i.i
  %i.ag = call zeroext i1 @memory_region_is_ram_device(ptr noundef nonnull %i.v) #7
  br i1 %i.ag, label %memory_access_is_direct.exit.memory_access_is_direct.exit.thread28_crit_edge, label %memory_access_is_direct.exit.thread

memory_access_is_direct.exit.memory_access_is_direct.exit.thread28_crit_edge: ; preds = %memory_access_is_direct.exit
  %.pre = load i64, ptr %i.a, align 8
  br label %memory_access_is_direct.exit.thread28

memory_access_is_direct.exit.thread:              ; preds = %memory_region_is_romd.exit.i.i, %memory_access_is_direct.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = load i64, ptr %i.b, align 8
  %i.ak = call ptr @qemu_map_ram_ptr(ptr noundef %i.ai, i64 noundef %i.aj) #7
  %i.al = load i8, ptr %i.ak, align 1
  store i8 %i.al, ptr %i.c, align 1
  br label %address_space_read.exit

memory_access_is_direct.exit.thread28:            ; preds = %memory_access_is_direct.exit.memory_access_is_direct.exit.thread28_crit_edge, %memory_region_is_romd.exit.thread.i.i, %rcu_read_auto_lock.exit
  %i.am = phi i64 [ %.pre, %memory_access_is_direct.exit.memory_access_is_direct.exit.thread28_crit_edge ], [ 1, %memory_region_is_romd.exit.thread.i.i ], [ %i.w, %rcu_read_auto_lock.exit ]
  %i.an = load i64, ptr %i.b, align 8
  %i.ao = call i32 @flatview_read_continue(ptr noundef %i.u, i64 noundef %i.n, i64 4294967296, ptr noundef nonnull %i.c, i64 noundef 1, i64 noundef %i.an, i64 noundef %i.am, ptr noundef %i.v) #7 ; 0 uses
  br label %address_space_read.exit

address_space_read.exit:                          ; preds = %memory_access_is_direct.exit.thread28, %memory_access_is_direct.exit.thread
  %i.ap = call ptr @get_ptr_rcu_reader() #7       ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 12 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4            ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %address_space_read.exit
  call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 101, ptr noundef nonnull @__PRETTY_FUNCTION__.rcu_read_unlock) #6
  unreachable

bb.f:                                             ; preds = %address_space_read.exit
  %i.as = add i32 %i.ar, -1                       ; 2 uses
  store i32 %i.as, ptr %i.aq, align 4
  %.not8.i.i.i.i = icmp eq i32 %i.as, 0
  br i1 %.not8.i.i.i.i, label %bb.g, label %glib_autoptr_cleanup_RCUReadAuto.exit

bb.g:                                             ; preds = %bb.f
  store atomic i64 0, ptr %i.ap release, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !13
  fence seq_cst
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.au = load atomic i8, ptr %i.at monotonic, align 8, !range !7, !noundef !8
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.h, label %glib_autoptr_cleanup_RCUReadAuto.exit, !prof !14

bb.h:                                             ; preds = %bb.g
  store atomic i8 0, ptr %i.at monotonic, align 8
  call void @qemu_event_set(ptr noundef nonnull @rcu_gp_event) #7
  br label %glib_autoptr_cleanup_RCUReadAuto.exit

glib_autoptr_cleanup_RCUReadAuto.exit:            ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %.pr = load i8, ptr %i.c, align 1               ; 2 uses
  %.not30 = icmp eq i8 %.pr, 0
  br i1 %.not30, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %glib_autoptr_cleanup_RCUReadAuto.exit
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.aw = shl nuw i32 %indvars.iv.tr, 3
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %i.ax = phi i8 [ %.pr, %.lr.ph ], [ %i.be, %bb.i ]
  %i.ay = call range(i8 0, 9) i8 @llvm.cttz.i8(i8 %i.ax, i1 true) ; 2 uses
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.aw, %i.az
  %.val25 = load ptr, ptr %0, align 8
  call fastcc void @update_for_one_lpi(ptr %.val25, i32 noundef %i.ba, i64 noundef %2, i1 noundef zeroext %4, ptr noundef %5)
  %i.bb = shl nuw i8 1, %i.ay
  %i.bc = load i8, ptr %i.c, align 1
  %i.bd = xor i8 %i.bb, -1
  %i.be = and i8 %i.bc, %i.bd                     ; 3 uses
  store i8 %i.be, ptr %i.c, align 1
  %.not = icmp eq i8 %i.be, 0
  br i1 %.not, label %._crit_edge, label %bb.i, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.i, %glib_autoptr_cleanup_RCUReadAuto.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge34, label %bb.b, !llvm.loop !17

._crit_edge34:                                    ; preds = %._crit_edge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @gicv3_redist_update_lpi(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 1
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %gicv3_redist_update_lpi_only.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = and i64 %i.e, 31
  %i.g = tail call i64 @llvm.umin.i64(i64 %i.f, i64 15)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 4503599627304960
  %i.k = and i64 %i.e, 4503599627366400
  %i.l = trunc nuw nsw i64 %i.g to i32
  %i.m = load ptr, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1320
  %i.o = load i32, ptr %i.n, align 8
  %i.p = and i32 %i.o, 64
  %i.q = icmp ne i32 %i.p, 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 660
  tail call fastcc void @update_for_all_lpis(ptr noundef nonnull %0, i64 noundef %i.j, i64 noundef %i.k, i32 noundef %i.l, i1 noundef zeroext %i.q, ptr noundef nonnull %i.r)
  br label %gicv3_redist_update_lpi_only.exit

gicv3_redist_update_lpi_only.exit:                ; preds = %bb.a, %bb.b
  tail call void @gicv3_redist_update(ptr noundef nonnull %0) #7
  ret void
}

declare void @gicv3_redist_update(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @gicv3_redist_lpi_pending(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 4503599627304960
  %i.d = icmp ne i32 %2, 0                        ; 2 uses
  %.val = load ptr, ptr %0, align 8
  %i.e = tail call fastcc zeroext i1 @set_pending_table_bit(ptr %.val, i64 noundef %i.c, i32 noundef %1, i1 noundef zeroext %i.d)
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load i64, ptr %i.f, align 8
  %i.h = and i64 %i.g, 4503599627366400
  %i.i = load ptr, ptr %0, align 8                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1320
  %i.k = load i32, ptr %i.j, align 8
  %i.l = and i32 %i.k, 64
  %i.m = icmp ne i32 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 660
  tail call fastcc void @update_for_one_lpi(ptr %i.i, i32 noundef %1, i64 noundef %i.h, i1 noundef zeroext %i.m, ptr noundef nonnull %i.n)
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 660 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp eq i32 %1, %i.p
  br i1 %i.q, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.s = load i32, ptr %i.r, align 4
  %i.t = and i32 %i.s, 1
  %.not.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i, label %.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = and i64 %i.v, 31
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.w, i64 15)
  %i.y = load i64, ptr %i.a, align 8
  %i.z = and i64 %i.y, 4503599627304960
  %i.aa = and i64 %i.v, 4503599627366400
  %i.ab = trunc nuw nsw i64 %i.x to i32
  %i.ac = load ptr, ptr %0, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1320
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = and i32 %i.ae, 64
  %i.ag = icmp ne i32 %i.af, 0
  tail call fastcc void @update_for_all_lpis(ptr noundef nonnull %0, i64 noundef %i.z, i64 noundef %i.aa, i32 noundef %i.ab, i1 noundef zeroext %i.ag, ptr noundef nonnull %i.o)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.e, %bb.c
  tail call void @gicv3_redist_update(ptr noundef nonnull %0) #7
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @set_pending_table_bit(ptr %.0.val, i64 noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i8, align 1                       ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 1160
  %i.e = sdiv i32 %1, 8
  %i.f = srem i32 %1, 8                           ; 4 uses
  %i.g = sext i32 %i.e to i64
  %i.h = add i64 %0, %i.g                         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i8 0, ptr %i.c, align 1, !annotation !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i64 0, ptr %i.a, align 8, !annotation !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i64 0, ptr %i.b, align 8, !annotation !10
  %i.i = tail call ptr @get_ptr_rcu_reader() #7   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %bb.b, label %rcu_read_auto_lock.exit

bb.b:                                             ; preds = %bb.a
  %i.m = load atomic i64, ptr @rcu_gp_ctr monotonic, align 8
  %i.n = and i64 %i.m, 4294967295
  store atomic i64 %i.n, ptr %i.i monotonic, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !11
  fence seq_cst
  br label %rcu_read_auto_lock.exit

rcu_read_auto_lock.exit:                          ; preds = %bb.a, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val, i64 1192
  %i.p = load atomic ptr, ptr %i.o monotonic, align 8 ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !12
  store i64 1, ptr %i.a, align 8
  %i.q = call ptr @flatview_translate(ptr noundef %i.p, i64 noundef %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i1 noundef zeroext false, i64 4294967296) #7 ; 6 uses
  %i.r = load i64, ptr %i.a, align 8              ; 2 uses
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.c, label %memory_access_is_direct.exit.thread2

bb.c:                                             ; preds = %rcu_read_auto_lock.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 45
  %i.u = load i8, ptr %i.t, align 1, !range !7, !noundef !8
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %memory_region_is_romd.exit.i.i, label %memory_region_is_romd.exit.thread.i.i

memory_region_is_romd.exit.i.i:                   ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.x = load i8, ptr %i.w, align 8, !range !7, !noundef !8
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %memory_access_is_direct.exit.thread, label %memory_region_is_romd.exit.thread.i.i

memory_region_is_romd.exit.thread.i.i:            ; preds = %memory_region_is_romd.exit.i.i, %bb.c
  %i.z = getelementptr i8, ptr %i.q, i64 41
  %.val.i.i = load i8, ptr %i.z, align 1, !range !7, !noundef !8
  %i.aa = trunc nuw i8 %.val.i.i to i1
  br i1 %i.aa, label %memory_access_is_direct.exit, label %memory_access_is_direct.exit.thread2

memory_access_is_direct.exit:                     ; preds = %memory_region_is_romd.exit.thread.i.i
  %i.ab = call zeroext i1 @memory_region_is_ram_device(ptr noundef nonnull %i.q) #7
  br i1 %i.ab, label %memory_access_is_direct.exit.memory_access_is_direct.exit.thread2_crit_edge, label %memory_access_is_direct.exit.thread

memory_access_is_direct.exit.memory_access_is_direct.exit.thread2_crit_edge: ; preds = %memory_access_is_direct.exit
  %.pre = load i64, ptr %i.a, align 8
  br label %memory_access_is_direct.exit.thread2

memory_access_is_direct.exit.thread:              ; preds = %memory_region_is_romd.exit.i.i, %memory_access_is_direct.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = load i64, ptr %i.b, align 8
end_hunk_0
