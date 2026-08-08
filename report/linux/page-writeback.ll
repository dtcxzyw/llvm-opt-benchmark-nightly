inline.NumInlined: 386
inline.NumDeleted: 149
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@node_dirty_ok:bb.a
  %i.v = add i64 %i.t, %i.u                       ; 2 uses
  %i.w = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #13, !srcloc !12
  %i.x = load i64, ptr @vm_dirty_bytes, align 8   ; 2 uses
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %node_dirtyable_memory.exit.i
  %i.y = add i64 %i.x, 4095
  %i.z = lshr i64 %i.y, 12
  %i.aa = mul i64 %i.z, %i.v
  %i.ab = load volatile i64, ptr @vm_zone_stat, align 16
  %spec.store.select.i.i12.i = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.ab, i64 0)
  %i.ac = load i64, ptr @totalreserve_pages, align 8
  %i.ad = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @vm_node_stat, i64 16), align 16
  %spec.store.select.i.i.i.i = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.ad, i64 0)
  %i.ae = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @vm_node_stat, i64 24), align 8
  %spec.store.select.i.i12.i.i = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.ae, i64 0)
  %i.af = tail call i64 @llvm.usub.sat.i64(i64 %spec.store.select.i.i12.i, i64 %i.ac)
  %i.ag = add nuw i64 %i.af, 1
  %i.ah = add nuw i64 %i.ag, %spec.store.select.i.i.i.i
  %i.ai = add i64 %i.ah, %spec.store.select.i.i12.i.i
  %i.aj = udiv i64 %i.aa, %i.ai
  br label %node_dirty_limit.exit

bb.j:                                             ; preds = %node_dirtyable_memory.exit.i
  %i.ak = load i32, ptr @vm_dirty_ratio, align 4
  %i.al = sext i32 %i.ak to i64
  %i.am = mul i64 %i.v, %i.al
  %i.an = udiv i64 %i.am, 100
  br label %node_dirty_limit.exit

node_dirty_limit.exit:                            ; preds = %bb.i, %bb.j
  %.0.i = phi i64 [ %i.aj, %bb.i ], [ %i.an, %bb.j ] ; 2 uses
  %i.ao = inttoptr i64 %i.w to ptr
  %i.ap = getelementptr i8, ptr %i.ao, i64 104
  %.val.i = load i32, ptr %i.ap, align 8
  %i.aq = icmp slt i32 %.val.i, 100
  %i.ar = lshr i64 %.0.i, 2
  %i.as = select i1 %i.aq, i64 %i.ar, i64 0
  %.1.i = add i64 %i.as, %.0.i
  %i.at = tail call range(i64 0, 4294967296) i64 @llvm.umin.i64(i64 %.1.i, i64 4294967295)
  %i.au = tail call i64 @node_page_state(ptr noundef %0, i32 noundef 20) #14
  %i.av = tail call i64 @node_page_state(ptr noundef %0, i32 noundef 21) #14
  %i.aw = add i64 %i.av, %i.au
  %i.ax = icmp ule i64 %i.aw, %i.at
  ret i1 %i.ax
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @node_page_state(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @wb_writeout_inc(ptr noundef %0) #0 align 16 prefalign(16) {
wb_stat_mod.exit.i:
  %i.a = tail call i64 asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !20
  tail call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !21
  %i.b = load i32, ptr @nr_cpu_ids, align 4
  %i.c = tail call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.b, i32 -1) #13, !srcloc !22
  %i.d = getelementptr i8, ptr %0, i64 216
  %i.e = shl i32 %i.c, 3
  %i.f = add i32 %i.e, 8
  tail call void @percpu_counter_add_batch(ptr noundef %i.d, i64 noundef 1, i32 noundef %i.f) #14
  %i.g = getelementptr i8, ptr %0, i64 352
  %i.h = load ptr, ptr %0, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 80
  %i.j = load i32, ptr %i.i, align 8
  tail call void @__fprop_add_percpu_max(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @global_wb_domain, i64 8), ptr noundef %i.g, i32 noundef %i.j, i64 noundef 1) #14
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_wb_domain, i64 96), align 8
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %bb.a, label %__wb_writeout_add.exit, !prof !23

bb.a:                                             ; preds = %wb_stat_mod.exit.i
  %i.l = load volatile i64, ptr @jiffies, align 64
  %i.m = add i64 %i.l, 3000
  %..i.i.i = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.m, i64 1) ; 2 uses
  store i64 %..i.i.i, ptr getelementptr inbounds nuw (i8, ptr @global_wb_domain, i64 96), align 8
  %i.n = tail call i32 @mod_timer(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @global_wb_domain, i64 56), i64 noundef %..i.i.i) #14 ; 0 uses
  br label %__wb_writeout_add.exit

__wb_writeout_add.exit:                           ; preds = %wb_stat_mod.exit.i, %bb.a
  %i.o = and i64 %i.a, 512
  %.not.i1.not = icmp eq i64 %i.o, 0
  br i1 %.not.i1.not, label %arch_local_irq_restore.exit, label %bb.b

bb.b:                                             ; preds = %__wb_writeout_add.exit
  tail call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !24
  br label %arch_local_irq_restore.exit

arch_local_irq_restore.exit:                      ; preds = %__wb_writeout_add.exit, %bb.b
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @wb_domain_init(ptr noundef initializes((0, 120)) %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(120) %0, i8 0, i64 120, i1 false)
  tail call void @timer_init_key(ptr noundef %i.a, ptr noundef nonnull @writeout_period, i32 noundef 524288, ptr noundef null, ptr noundef null) #14
  %i.b = load volatile i64, ptr @jiffies, align 64
  %i.c = getelementptr i8, ptr %0, i64 104
  store i64 %i.b, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = tail call i32 @fprop_global_init(ptr noundef %i.d, i32 noundef %1) #14
  ret i32 %i.e
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @timer_init_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @writeout_period(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load volatile i64, ptr @jiffies, align 64
  %i.b = getelementptr i8, ptr %0, i64 40         ; 4 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = sub i64 %i.a, %i.c
  %i.e = udiv i64 %i.d, 3000                      ; 2 uses
  %i.f = trunc i64 %i.e to i32
  %i.g = getelementptr i8, ptr %0, i64 -48
  %i.h = add i32 %i.f, 1
  %i.i = tail call zeroext i1 @fprop_new_period(ptr noundef %i.g, i32 noundef %i.h) #14
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.b, align 8
  %sext = mul i64 %i.e, 12884901888000
  %i.k = ashr exact i64 %sext, 32
  %i.l = add nsw i64 %i.k, 3000
  %i.m = add i64 %i.l, %i.j
  %..i = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.m, i64 1) ; 2 uses
  store i64 %..i, ptr %i.b, align 8
  %i.n = tail call i32 @mod_timer(ptr noundef %0, i64 noundef %..i) #14 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %i.b, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @fprop_global_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @bdi_set_min_ratio_no_scale(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ugt i32 %1, 1000000
  br i1 %i.a, label %__bdi_set_min_ratio.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @bdi_lock) #14
  %i.b = getelementptr i8, ptr %0, i64 76
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp ugt i32 %1, %i.c
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp ult i32 %1, %i.f
  %.neg.i = sub i32 %1, %i.f
  %i.h = load i32, ptr @bdi_min_ratio, align 4
  %i.i = add i32 %.neg.i, %i.h                    ; 2 uses
  %i.j = icmp ult i32 %i.i, 1000000
  %or.cond.i = select i1 %i.g, i1 true, i1 %i.j
  br i1 %or.cond.i, label %.sink.split.i, label %bb.d

.sink.split.i:                                    ; preds = %bb.c
  store i32 %i.i, ptr @bdi_min_ratio, align 4
  store i32 %1, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %.sink.split.i, %bb.c, %bb.b
  %.0.i = phi i32 [ -22, %bb.b ], [ -22, %bb.c ], [ 0, %.sink.split.i ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @bdi_lock) #14
  br label %__bdi_set_min_ratio.exit

__bdi_set_min_ratio.exit:                         ; preds = %bb.a, %bb.d
  %.017.i = phi i32 [ %.0.i, %bb.d ], [ -22, %bb.a ]
  ret i32 %.017.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @bdi_set_max_ratio_no_scale(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ugt i32 %1, 1000000
  br i1 %i.a, label %__bdi_set_max_ratio.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @bdi_lock) #14
  %i.b = getelementptr i8, ptr %0, i64 72
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp ugt i32 %i.c, %1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 76
  store i32 %1, ptr %i.e, align 4
  %i.f = shl nuw nsw i32 %1, 10
  %i.g = udiv i32 %i.f, 1000000
  %i.h = getelementptr i8, ptr %0, i64 80
  store i32 %i.g, ptr %i.h, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i32 [ 0, %bb.c ], [ -22, %bb.b ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @bdi_lock) #14
  br label %__bdi_set_max_ratio.exit

__bdi_set_max_ratio.exit:                         ; preds = %bb.a, %bb.d
  %.08.i = phi i32 [ %.0.i, %bb.d ], [ -22, %bb.a ]
  ret i32 %.08.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @bdi_set_min_ratio(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = mul i32 %1, 10000                        ; 5 uses
  %i.b = icmp ugt i32 %i.a, 1000000
  br i1 %i.b, label %__bdi_set_min_ratio.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @bdi_lock) #14
  %i.c = getelementptr i8, ptr %0, i64 76
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp ugt i32 %i.a, %i.d
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp ult i32 %i.a, %i.g
  %.neg.i = sub i32 %i.a, %i.g
  %i.i = load i32, ptr @bdi_min_ratio, align 4
  %i.j = add i32 %.neg.i, %i.i                    ; 2 uses
  %i.k = icmp ult i32 %i.j, 1000000
  %or.cond.i = select i1 %i.h, i1 true, i1 %i.k
  br i1 %or.cond.i, label %.sink.split.i, label %bb.d

.sink.split.i:                                    ; preds = %bb.c
  store i32 %i.j, ptr @bdi_min_ratio, align 4
  store i32 %i.a, ptr %i.f, align 8
  br label %bb.d

bb.d:                                             ; preds = %.sink.split.i, %bb.c, %bb.b
  %.0.i = phi i32 [ -22, %bb.b ], [ -22, %bb.c ], [ 0, %.sink.split.i ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @bdi_lock) #14
  br label %__bdi_set_min_ratio.exit

__bdi_set_min_ratio.exit:                         ; preds = %bb.a, %bb.d
  %.017.i = phi i32 [ %.0.i, %bb.d ], [ -22, %bb.a ]
  ret i32 %.017.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @bdi_set_max_ratio(ptr nofree noundef captures(none) %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = mul i32 %1, 10000                        ; 3 uses
  %i.b = icmp ugt i32 %i.a, 1000000
  br i1 %i.b, label %__bdi_set_max_ratio.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @bdi_lock) #14
  %i.c = getelementptr i8, ptr %0, i64 72
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp ugt i32 %i.d, %i.a
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 76
  store i32 %i.a, ptr %i.f, align 4
  %i.g = mul i32 %1, 10240000
  %i.h = udiv i32 %i.g, 1000000
  %i.i = getelementptr i8, ptr %0, i64 80
  store i32 %i.h, ptr %i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i32 [ 0, %bb.c ], [ -22, %bb.b ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @bdi_lock) #14
  br label %__bdi_set_max_ratio.exit

__bdi_set_max_ratio.exit:                         ; preds = %bb.a, %bb.d
  %.08.i = phi i32 [ %.0.i, %bb.d ], [ -22, %bb.a ]
  ret i32 %.08.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 0, 18446744073710) i64 @bdi_get_min_bytes(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.dirty_throttle_control, align 8 ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 72
  %i.b = load i32, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %1, i8 0, i64 96, i1 false)
  %i.c = load volatile i64, ptr @vm_zone_stat, align 16
  %spec.store.select.i.i.i.i = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.c, i64 0)
  %i.d = load i64, ptr @totalreserve_pages, align 8
  %i.e = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @vm_node_stat, i64 16), align 16
  %spec.store.select.i.i.i.i.i = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.e, i64 0)
  %i.f = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @vm_node_stat, i64 24), align 8
  %spec.store.select.i.i12.i.i.i = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.f, i64 0)
  %i.g = tail call i64 @llvm.usub.sat.i64(i64 %spec.store.select.i.i.i.i, i64 %i.d)
  %i.h = add nuw i64 %i.g, 1
  %i.i = add nuw i64 %i.h, %spec.store.select.i.i.i.i.i
  %i.j = add i64 %i.i, %spec.store.select.i.i12.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.j, ptr %i.k, align 8
  call fastcc void @domain_dirty_limits(ptr noundef nonnull %1) #12, !srcloc !11
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i64, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  %i.n = zext i32 %i.b to i64
  %i.o = shl nuw nsw i64 %i.n, 12
  %i.p = mul i64 %i.o, %i.m
  %i.q = udiv i64 %i.p, 1000000
  ret i64 %i.q
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @bdi_set_min_bytes(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.dirty_throttle_control, align 8 ; 6 uses
  %i.a = lshr i64 %1, 12                          ; 2 uses
  %i.b = load volatile i64, ptr @vm_zone_stat, align 16
  %spec.store.select.i.i.i = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.b, i64 0)
  %i.c = load i64, ptr @totalreserve_pages, align 8 ; 2 uses
  %i.d = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @vm_node_stat, i64 16), align 16
  %spec.store.select.i.i.i.i = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.d, i64 0)
  %i.e = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @vm_node_stat, i64 24), align 8
  %spec.store.select.i.i12.i.i = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.e, i64 0)
  %i.f = tail call i64 @llvm.usub.sat.i64(i64 %spec.store.select.i.i.i, i64 %i.c)
  %i.g = add nuw i64 %i.f, 1
  %i.h = add nuw i64 %i.g, %spec.store.select.i.i.i.i
  %i.i = add i64 %i.h, %spec.store.select.i.i12.i.i
  %.not = icmp ugt i64 %i.a, %i.i
  br i1 %.not, label %__bdi_set_min_ratio.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %2, i8 0, i64 96, i1 false)
  %i.j = load volatile i64, ptr @vm_zone_stat, align 16
  %spec.store.select.i.i.i.i11 = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.j, i64 0)
  %i.k = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @vm_node_stat, i64 16), align 16
  %spec.store.select.i.i.i.i.i = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.k, i64 0)
  %i.l = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @vm_node_stat, i64 24), align 8
  %spec.store.select.i.i12.i.i.i = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.l, i64 0)
  %i.m = tail call i64 @llvm.usub.sat.i64(i64 %spec.store.select.i.i.i.i11, i64 %i.c)
  %i.n = add nuw i64 %i.m, 1
  %i.o = add nuw i64 %i.n, %spec.store.select.i.i.i.i.i
  %i.p = add i64 %i.o, %spec.store.select.i.i12.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.p, ptr %i.q, align 8
  call fastcc void @domain_dirty_limits(ptr noundef nonnull %2) #12, !srcloc !11
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %bdi_ratio_from_pages.exit.thread, label %bdi_ratio_from_pages.exit

bdi_ratio_from_pages.exit:                        ; preds = %bb.b
  %i.t = mul i64 %i.a, 1000000
  %i.u = udiv i64 %i.t, %i.s                      ; 3 uses
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %bdi_ratio_from_pages.exit.thread, label %bb.c

bdi_ratio_from_pages.exit.thread:                 ; preds = %bb.b, %bdi_ratio_from_pages.exit
  %.0.i14 = phi i64 [ %i.u, %bdi_ratio_from_pages.exit ], [ -22, %bb.b ]
  %i.w = trunc i64 %.0.i14 to i32
  br label %__bdi_set_min_ratio.exit

bb.c:                                             ; preds = %bdi_ratio_from_pages.exit
  %i.x = trunc i64 %i.u to i32                    ; 5 uses
  %i.y = icmp ugt i32 %i.x, 1000000
  br i1 %i.y, label %__bdi_set_min_ratio.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @bdi_lock) #14
  %i.z = getelementptr i8, ptr %0, i64 76
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = icmp ult i32 %i.aa, %i.x
  br i1 %i.ab, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr i8, ptr %0, i64 72        ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8            ; 2 uses
  %i.ae = icmp ugt i32 %i.ad, %i.x
  %.neg.i = sub i32 %i.x, %i.ad
  %i.af = load i32, ptr @bdi_min_ratio, align 4
  %i.ag = add i32 %.neg.i, %i.af                  ; 2 uses
  %i.ah = icmp ult i32 %i.ag, 1000000
  %or.cond.i = select i1 %i.ae, i1 true, i1 %i.ah
  br i1 %or.cond.i, label %.sink.split.i, label %bb.f

.sink.split.i:                                    ; preds = %bb.e
  store i32 %i.ag, ptr @bdi_min_ratio, align 4
  store i32 %i.x, ptr %i.ac, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split.i, %bb.e, %bb.d
  %.0.i12 = phi i32 [ -22, %bb.d ], [ -22, %bb.e ], [ 0, %.sink.split.i ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @bdi_lock) #14
  br label %__bdi_set_min_ratio.exit

__bdi_set_min_ratio.exit:                         ; preds = %bb.f, %bb.c, %bb.a, %bdi_ratio_from_pages.exit.thread
  %.0 = phi i32 [ -22, %bb.a ], [ %i.w, %bdi_ratio_from_pages.exit.thread ], [ %.0.i12, %bb.f ], [ -22, %bb.c ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 0, 18446744073710) i64 @bdi_get_max_bytes(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.dirty_throttle_control, align 8 ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 76
  %i.b = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %1, i8 0, i64 96, i1 false)
  %i.c = load volatile i64, ptr @vm_zone_stat, align 16
  %spec.store.select.i.i.i.i = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.c, i64 0)
  %i.d = load i64, ptr @totalreserve_pages, align 8
  %i.e = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @vm_node_stat, i64 16), align 16
  %spec.store.select.i.i.i.i.i = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.e, i64 0)
  %i.f = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @vm_node_stat, i64 24), align 8
  %spec.store.select.i.i12.i.i.i = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.f, i64 0)
  %i.g = tail call i64 @llvm.usub.sat.i64(i64 %spec.store.select.i.i.i.i, i64 %i.d)
  %i.h = add nuw i64 %i.g, 1
  %i.i = add nuw i64 %i.h, %spec.store.select.i.i.i.i.i
  %i.j = add i64 %i.i, %spec.store.select.i.i12.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.j, ptr %i.k, align 8
  call fastcc void @domain_dirty_limits(ptr noundef nonnull %1) #12, !srcloc !11
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i64, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  %i.n = zext i32 %i.b to i64
  %i.o = shl nuw nsw i64 %i.n, 12
  %i.p = mul i64 %i.o, %i.m
  %i.q = udiv i64 %i.p, 1000000
  ret i64 %i.q
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @bdi_set_max_bytes(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.dirty_throttle_control, align 8 ; 6 uses
  %i.a = lshr i64 %1, 12                          ; 2 uses
  %i.b = load volatile i64, ptr @vm_zone_stat, align 16
  %spec.store.select.i.i.i = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.b, i64 0)
  %i.c = load i64, ptr @totalreserve_pages, align 8 ; 2 uses
  %i.d = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @vm_node_stat, i64 16), align 16
  %spec.store.select.i.i.i.i = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.d, i64 0)
  %i.e = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @vm_node_stat, i64 24), align 8
  %spec.store.select.i.i12.i.i = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.e, i64 0)
  %i.f = tail call i64 @llvm.usub.sat.i64(i64 %spec.store.select.i.i.i, i64 %i.c)
  %i.g = add nuw i64 %i.f, 1
  %i.h = add nuw i64 %i.g, %spec.store.select.i.i.i.i
  %i.i = add i64 %i.h, %spec.store.select.i.i12.i.i
  %.not = icmp ugt i64 %i.a, %i.i
  br i1 %.not, label %__bdi_set_max_ratio.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %2, i8 0, i64 96, i1 false)
  %i.j = load volatile i64, ptr @vm_zone_stat, align 16
  %spec.store.select.i.i.i.i11 = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.j, i64 0)
  %i.k = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @vm_node_stat, i64 16), align 16
  %spec.store.select.i.i.i.i.i = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.k, i64 0)
  %i.l = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @vm_node_stat, i64 24), align 8
  %spec.store.select.i.i12.i.i.i = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.l, i64 0)
  %i.m = tail call i64 @llvm.usub.sat.i64(i64 %spec.store.select.i.i.i.i11, i64 %i.c)
  %i.n = add nuw i64 %i.m, 1
  %i.o = add nuw i64 %i.n, %spec.store.select.i.i.i.i.i
  %i.p = add i64 %i.o, %spec.store.select.i.i12.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.p, ptr %i.q, align 8
  call fastcc void @domain_dirty_limits(ptr noundef nonnull %2) #12, !srcloc !11
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %bdi_ratio_from_pages.exit.thread, label %bdi_ratio_from_pages.exit

bdi_ratio_from_pages.exit:                        ; preds = %bb.b
  %i.t = mul i64 %i.a, 1000000
  %i.u = udiv i64 %i.t, %i.s                      ; 3 uses
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %bdi_ratio_from_pages.exit.thread, label %bb.c

bdi_ratio_from_pages.exit.thread:                 ; preds = %bb.b, %bdi_ratio_from_pages.exit
  %.0.i14 = phi i64 [ %i.u, %bdi_ratio_from_pages.exit ], [ -22, %bb.b ]
  %i.w = trunc i64 %.0.i14 to i32
  br label %__bdi_set_max_ratio.exit

bb.c:                                             ; preds = %bdi_ratio_from_pages.exit
  %i.x = trunc i64 %i.u to i32                    ; 4 uses
  %i.y = icmp ugt i32 %i.x, 1000000
  br i1 %i.y, label %__bdi_set_max_ratio.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @bdi_lock) #14
  %i.z = getelementptr i8, ptr %0, i64 72
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = icmp ugt i32 %i.aa, %i.x
  br i1 %i.ab, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr i8, ptr %0, i64 76
  store i32 %i.x, ptr %i.ac, align 4
  %i.ad = shl nuw nsw i32 %i.x, 10
  %i.ae = udiv i32 %i.ad, 1000000
  %i.af = getelementptr i8, ptr %0, i64 80
  store i32 %i.ae, ptr %i.af, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i12 = phi i32 [ 0, %bb.e ], [ -22, %bb.d ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @bdi_lock) #14
  br label %__bdi_set_max_ratio.exit

__bdi_set_max_ratio.exit:                         ; preds = %bb.f, %bb.c, %bb.a, %bdi_ratio_from_pages.exit.thread
  %.0 = phi i32 [ -22, %bb.a ], [ %i.w, %bdi_ratio_from_pages.exit.thread ], [ %.0.i12, %bb.f ], [ -22, %bb.c ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @bdi_set_strict_limit(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ugt i32 %1, 1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @bdi_lock) #14
  %.not = icmp eq i32 %1, 0
  %i.b = getelementptr i8, ptr %0, i64 68         ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, -3
  %masksel = select i1 %.not, i32 0, i32 2
  %.sink = or disjoint i32 %i.d, %masksel
  store i32 %.sink, ptr %i.b, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @bdi_lock) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -22, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 0, 18446744073710) i64 @wb_calc_thresh(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 352
  %i.d = load volatile i64, ptr @vm_zone_stat, align 16 ; 0 uses
  %i.e = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @vm_node_stat, i64 16), align 16 ; 0 uses
  %i.f = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @vm_node_stat, i64 24), align 8 ; 0 uses
  %i.g = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @vm_node_stat, i64 160), align 16
  %spec.store.select.i.i9.i = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.g, i64 0)
  %i.h = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @vm_node_stat, i64 168), align 8
  %spec.store.select.i.i10.i = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.h, i64 0)
  %i.i = add nuw i64 %spec.store.select.i.i10.i, %spec.store.select.i.i9.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 0, ptr %i.a, align 8, !annotation !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i64 0, ptr %i.b, align 8, !annotation !25
  call void @fprop_fraction_percpu(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @global_wb_domain, i64 8), ptr noundef %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #14
  %i.j = load i32, ptr @bdi_min_ratio, align 4
  %i.k = sub i32 1000000, %i.j
  %i.l = zext i32 %i.k to i64
  %i.m = mul i64 %1, %i.l
  %i.n = udiv i64 %i.m, 1000000
  %i.o = load i64, ptr %i.a, align 8
  %i.p = mul i64 %i.n, %i.o
  %i.q = load i64, ptr %i.b, align 8
  %i.r = udiv i64 %i.p, %i.q
  %i.s = load ptr, ptr %0, align 8                ; 3 uses
  %i.t = getelementptr i8, ptr %i.s, i64 72
  %i.u = load i32, ptr %i.t, align 8
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr i8, ptr %i.s, i64 76
  %i.x = load i32, ptr %i.w, align 4
  %i.y = mul i64 %1, %i.v
  %i.z = udiv i64 %i.y, 1000000
  %i.aa = add i64 %i.z, %i.r                      ; 3 uses
  %i.ab = icmp ugt i64 %1, %i.i
  br i1 %i.ab, label %bb.b, label %__wb_calc_thresh.exit

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr i8, ptr %i.s, i64 68
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = and i32 %i.ad, 2
  %.not.i = icmp eq i32 %i.ae, 0
  %i.af = sub nuw i64 %1, %i.i                    ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.ag = udiv i64 %i.af, 100
  %i.ah = call i64 @llvm.umax.i64(i64 %i.aa, i64 %i.ag)
  br label %__wb_calc_thresh.exit

bb.d:                                             ; preds = %bb.b
  %i.ai = lshr i64 %i.af, 3
  %i.aj = call i64 @llvm.umax.i64(i64 %i.aa, i64 %i.ai)
  br label %__wb_calc_thresh.exit

__wb_calc_thresh.exit:                            ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi i64 [ %i.ah, %bb.c ], [ %i.aj, %bb.d ], [ %i.aa, %bb.a ]
  %i.ak = zext i32 %i.x to i64
  %i.al = mul i64 %1, %i.ak
  %i.am = udiv i64 %i.al, 1000000
  %spec.select.i = call range(i64 0, 18446744073710) i64 @llvm.umin.i64(i64 %.0.i, i64 %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i64 %spec.select.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 0, 18446744073710) i64 @cgwb_calc_thresh(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %struct.dirty_throttle_control, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %1, i8 0, i64 96, i1 false)
  %i.c = load volatile i64, ptr @vm_zone_stat, align 16 ; 0 uses
  %i.d = load i64, ptr @totalreserve_pages, align 8
  %i.e = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @vm_node_stat, i64 16), align 16 ; 0 uses
  %i.f = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @vm_node_stat, i64 24), align 8 ; 0 uses
  %i.g = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @vm_node_stat, i64 160), align 16 ; 0 uses
  %i.h = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @vm_node_stat, i64 168), align 8 ; 0 uses
  %i.i = load volatile i64, ptr @vm_zone_stat, align 16
  %spec.store.select.i.i.i1 = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.i, i64 0)
  %i.j = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @vm_node_stat, i64 16), align 16
  %spec.store.select.i.i.i.i2 = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.j, i64 0)
  %i.k = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @vm_node_stat, i64 24), align 8
  %spec.store.select.i.i12.i.i3 = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.k, i64 0)
  %i.l = tail call i64 @llvm.usub.sat.i64(i64 %spec.store.select.i.i.i1, i64 %i.d)
  %i.m = add nuw i64 %i.l, 1
  %i.n = add nuw i64 %i.m, %spec.store.select.i.i.i.i2
  %i.o = add i64 %i.n, %spec.store.select.i.i12.i.i3
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.o, ptr %i.p, align 8
  %i.q = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @vm_node_stat, i64 160), align 16
  %spec.store.select.i.i9.i4 = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.q, i64 0)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.s = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @vm_node_stat, i64 168), align 8
  %spec.store.select.i.i10.i5 = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.s, i64 0)
  %i.t = add nuw i64 %spec.store.select.i.i10.i5, %spec.store.select.i.i9.i4
  store i64 %i.t, ptr %i.r, align 8
  call fastcc void @domain_dirty_limits(ptr noundef nonnull %1) #12, !srcloc !27
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load i64, ptr %i.u, align 8              ; 5 uses
  %i.w = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 0, ptr %i.a, align 8, !annotation !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i64 0, ptr %i.b, align 8, !annotation !25
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void @fprop_fraction_percpu(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @global_wb_domain, i64 8), ptr noundef %i.y, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #14
  %i.z = load i32, ptr @bdi_min_ratio, align 4
  %i.aa = sub i32 1000000, %i.z
  %i.ab = zext i32 %i.aa to i64
  %i.ac = mul i64 %i.v, %i.ab
  %i.ad = udiv i64 %i.ac, 1000000
  %i.ae = load i64, ptr %i.a, align 8
  %i.af = mul i64 %i.ad, %i.ae
  %i.ag = load i64, ptr %i.b, align 8
  %i.ah = udiv i64 %i.af, %i.ag
  %i.ai = load ptr, ptr %i.w, align 8             ; 3 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 72
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr i8, ptr %i.ai, i64 76
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = mul i64 %i.v, %i.al
  %i.ap = udiv i64 %i.ao, 1000000
  %i.aq = add i64 %i.ap, %i.ah                    ; 3 uses
  %i.ar = load i64, ptr %i.r, align 8             ; 2 uses
  %i.as = icmp ugt i64 %i.v, %i.ar
  br i1 %i.as, label %bb.b, label %__wb_calc_thresh.exit

bb.b:                                             ; preds = %bb.a
  %i.at = getelementptr i8, ptr %i.ai, i64 68
  %i.au = load i32, ptr %i.at, align 4
  %i.av = and i32 %i.au, 2
  %.not.i = icmp eq i32 %i.av, 0
  %i.aw = sub nuw i64 %i.v, %i.ar                 ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !26

bb.c:                                             ; preds = %bb.b
  %i.ax = udiv i64 %i.aw, 100
  %i.ay = call i64 @llvm.umax.i64(i64 %i.aq, i64 %i.ax)
  br label %__wb_calc_thresh.exit

bb.d:                                             ; preds = %bb.b
  %i.az = lshr i64 %i.aw, 3
  %i.ba = call i64 @llvm.umax.i64(i64 %i.aq, i64 %i.az)
  br label %__wb_calc_thresh.exit

__wb_calc_thresh.exit:                            ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi i64 [ %i.ay, %bb.c ], [ %i.ba, %bb.d ], [ %i.aq, %bb.a ]
  %i.bb = zext i32 %i.an to i64
  %i.bc = mul i64 %i.v, %i.bb
  %i.bd = udiv i64 %i.bc, 1000000
  %spec.select.i = call range(i64 0, 18446744073710) i64 @llvm.umin.i64(i64 %.0.i, i64 %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  ret i64 %spec.select.i
end_hunk_0
begin_hunk_1_@balance_dirty_pages:bb.a
  %i.bj = getelementptr i8, ptr %i.bi, i64 44
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = and i32 %i.bk, 1048576
  %.not.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i, label %.wb_dirty_freerun.exit_crit_edge.i, label %wb_dirty_freerun.exit.i

.wb_dirty_freerun.exit_crit_edge.i:               ; preds = %bb.i
  %.pre.i = load i8, ptr %i.k, align 8, !range !43
  %i.bm = trunc nuw i8 %.pre.i to i1
  br i1 %i.bm, label %balance_wb_limits.exit, label %wb_dirty_freerun.exit.thread.i

wb_dirty_freerun.exit.i:                          ; preds = %bb.i
  %i.bn = load i64, ptr %.sink14.i.i.sroa.gep, align 8
  %i.bo = load i64, ptr %.sink13.i.i.sroa.gep, align 8
  %i.bp = load i64, ptr %.sink.i.i.sroa.gep, align 8
  %i.bq = add i64 %i.bp, %i.bo
  %i.br = lshr i64 %i.bq, 1
  %i.bs = icmp ult i64 %i.bn, %i.br               ; 2 uses
  %i.bt = zext i1 %i.bs to i8
  store i8 %i.bt, ptr %i.k, align 8
  br i1 %i.bs, label %balance_wb_limits.exit, label %wb_dirty_freerun.exit.thread.i

wb_dirty_freerun.exit.thread.i:                   ; preds = %wb_dirty_freerun.exit.i, %.wb_dirty_freerun.exit_crit_edge.i, %bb.h
  %i.bu = load i64, ptr %.sink14.i.i.sroa.gep, align 8 ; 8 uses
  %i.bv = load i64, ptr %.sink13.i.i.sroa.gep, align 8 ; 7 uses
  %i.bw = icmp ugt i64 %i.bu, %i.bv
  %.pre207 = load i64, ptr %.sink13.i.i.sroa.gep176, align 8 ; 7 uses
  %.pre208 = load i64, ptr %.sink14.i.i.sroa.gep175, align 8 ; 3 uses
  %i.bx = icmp ugt i64 %.pre208, %.pre207
  %i.by = or i1 %i.h, %i.bx
  %narrow = select i1 %i.bw, i1 %i.by, i1 false
  %i.bz = zext i1 %narrow to i8
  store i8 %i.bz, ptr %i.m, align 1
  %i.ca = load ptr, ptr %3, align 8               ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 328
  %i.cc = load volatile i64, ptr %i.cb, align 8
  %i.cd = load i64, ptr %.sink.i.i.sroa.gep177, align 8
  %i.ce = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_wb_domain, i64 112), align 8
  %i.cf = call i64 @llvm.umax.i64(i64 %.pre207, i64 %i.ce) ; 4 uses
  store i64 %i.cf, ptr %i.n, align 8
  store i64 0, ptr %i.o, align 8
  %.not.i5.i = icmp ult i64 %.pre208, %i.cf
  br i1 %.not.i5.i, label %bb.j, label %bb.w, !prof !26

bb.j:                                             ; preds = %wb_dirty_freerun.exit.thread.i
  %i.cg = add i64 %i.cd, %.pre207
  %i.ch = lshr i64 %i.cg, 1
  %i.ci = add i64 %i.ch, %i.cf
  %i.cj = lshr i64 %i.ci, 1                       ; 3 uses
  %i.ck = sub i64 %i.cj, %.pre208
  %i.cl = shl i64 %i.ck, 10
  %i.cm = sub i64 %i.cf, %i.cj
  %i.cn = or i64 %i.cm, 1
  %i.co = sdiv i64 %i.cl, %i.cn                   ; 3 uses
  %i.cp = mul i64 %i.co, %i.co
  %i.cq = ashr i64 %i.cp, 10
  %i.cr = mul i64 %i.cq, %i.co
  %i.cs = ashr i64 %i.cr, 10                      ; 2 uses
  %i.ct = icmp sgt i64 %i.cs, 1023
  %i.cu = call i64 @llvm.smax.i64(i64 %i.cs, i64 -1024)
  %i.cv = add nsw i64 %i.cu, 1024
  %i.cw = select i1 %i.ct, i64 2048, i64 %i.cv    ; 3 uses
  %i.cx = load ptr, ptr %i.ca, align 8
  %i.cy = getelementptr i8, ptr %i.cx, i64 68
  %i.cz = load i32, ptr %i.cy, align 4
  %i.da = and i32 %i.cz, 2
  %.not81.i.i = icmp eq i32 %i.da, 0
  br i1 %.not81.i.i, label %bb.n, label %bb.k, !prof !26

bb.k:                                             ; preds = %bb.j
  %.not82.i.i = icmp ult i64 %i.bu, %i.bv
  br i1 %.not82.i.i, label %bb.l, label %bb.w

bb.l:                                             ; preds = %bb.k
  %i.db = load i64, ptr %.sink.i.i.sroa.gep, align 8
  %i.dc = add i64 %i.db, %i.bv
  %i.dd = lshr i64 %i.dc, 1                       ; 4 uses
  %i.de = icmp eq i64 %i.dd, 0
  %i.df = icmp eq i64 %i.dd, %i.bv
  %or.cond.i.i = or i1 %i.de, %i.df
  br i1 %or.cond.i.i, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dg = sub i64 %i.dd, %i.bu
  %i.dh = shl i64 %i.dg, 10
  %i.di = sub i64 %i.bv, %i.dd
  %i.dj = or i64 %i.di, 1
  %i.dk = sdiv i64 %i.dh, %i.dj                   ; 3 uses
  %i.dl = mul i64 %i.dk, %i.dk
  %i.dm = ashr i64 %i.dl, 10
  %i.dn = mul i64 %i.dm, %i.dk
  %i.do = ashr i64 %i.dn, 10                      ; 2 uses
  %i.dp = icmp sgt i64 %i.do, 1023
  %i.dq = call i64 @llvm.smax.i64(i64 %i.do, i64 -1024)
  %i.dr = add nsw i64 %i.dq, 1024
  %i.ds = select i1 %i.dp, i64 2048, i64 %i.dr
  %i.dt = call i64 @llvm.umin.i64(i64 %i.cw, i64 %i.ds)
  br label %.sink.split.i.i

bb.n:                                             ; preds = %bb.j
  %i.du = icmp ugt i64 %i.bv, %.pre207
  br i1 %i.du, label %bb.o, label %bb.p, !prof !23

bb.o:                                             ; preds = %bb.n
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.i.i166 = phi i64 [ %.pre207, %bb.o ], [ %i.bv, %bb.n ] ; 4 uses
  %i.dv = shl i64 %.0.i.i166, 16
  %i.dw = and i64 %.pre207, 4294967294
  %i.dx = or disjoint i64 %i.dw, 1
  %i.dy = udiv i64 %i.dv, %i.dx                   ; 2 uses
  %i.dz = mul i64 %i.dy, %i.cj
  %i.ea = lshr i64 %i.dz, 16
  %i.eb = shl i64 %i.cc, 3
  %i.ec = add i64 %i.eb, %.pre207
  %i.ed = sub i64 %i.ec, %.0.i.i166
  %i.ee = mul i64 %i.ed, %i.dy                    ; 2 uses
  %i.ef = lshr i64 %i.ee, 16                      ; 2 uses
  %i.eg = add nuw nsw i64 %i.ef, %i.ea            ; 2 uses
  %i.eh = lshr i64 %i.ee, 18
  %i.ei = sub nsw i64 %i.eg, %i.eh
  %i.ej = icmp ult i64 %i.bu, %i.ei
  br i1 %i.ej, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ek = sub i64 %i.eg, %i.bu
  %i.el = mul i64 %i.ek, %i.cw
  %i.em = or i64 %i.ef, 1
  %i.en = udiv i64 %i.el, %i.em
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.eo = lshr i64 %i.cw, 2
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.072.i.i = phi i64 [ %i.en, %bb.q ], [ %i.eo, %bb.r ] ; 3 uses
  %i.ep = lshr i64 %.0.i.i166, 1                  ; 2 uses
  %i.eq = icmp ult i64 %i.bu, %i.ep
  br i1 %i.eq, label %bb.t, label %.sink.split.i.i

bb.t:                                             ; preds = %bb.s
  %i.er = lshr i64 %.0.i.i166, 4
  %i.es = icmp samesign ugt i64 %i.bu, %i.er
  br i1 %i.es, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.et = mul i64 %.072.i.i, %i.ep
  %i.eu = and i64 %i.bu, 4294967295
  %i.ev = udiv i64 %i.et, %i.eu
  br label %.sink.split.i.i

bb.v:                                             ; preds = %bb.t
  %i.ew = shl i64 %.072.i.i, 3
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.v, %bb.u, %bb.s, %bb.m
  %.sink.i.i165 = phi i64 [ %i.dt, %bb.m ], [ %i.ev, %bb.u ], [ %i.ew, %bb.v ], [ %.072.i.i, %bb.s ]
  store i64 %.sink.i.i165, ptr %i.o, align 8
  br label %bb.w

bb.w:                                             ; preds = %wb_dirty_freerun.exit.thread.i, %bb.k, %bb.l, %.sink.split.i.i
  %i.ex = load i8, ptr %i.m, align 1, !range !43, !noundef !46
  %i.ey = zext nneg i8 %i.ex to i32
  store i32 %i.ey, ptr %i.p, align 8
  %i.ez = load volatile i64, ptr %i.q, align 8
  %i.fa = add i64 %i.ez, 200
  %i.fb = load volatile i64, ptr @jiffies, align 64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = icmp slt i64 %i.fc, 0
  br i1 %i.fd, label %bb.x, label %fls64.exit.i

bb.x:                                             ; preds = %bb.w
  call fastcc void @__wb_update_bandwidth(ptr noundef nonnull %3, i1 noundef zeroext true) #12
  br label %fls64.exit.i

fls64.exit.i:                                     ; preds = %bb.w, %bb.x
  %i.fe = load volatile i64, ptr %i.r, align 8    ; 6 uses
  %i.ff = load i64, ptr %i.o, align 8
  %i.fg = mul i64 %i.ff, %i.fe
  %i.fh = lshr i64 %i.fg, 10                      ; 7 uses
  %i.fi = load i64, ptr %.sink14.i.i.sroa.gep, align 8
  %i.fj = load volatile i64, ptr %i.s, align 8
  %i.fk = lshr i64 %i.fj, 7
  %i.fl = add nuw nsw i64 %i.fk, 1
  %i.fm = udiv i64 %i.fi, %i.fl
  %i.fn = add i64 %i.fm, 1
  %i.fo = call range(i64 0, 201) i64 @llvm.umin.i64(i64 %i.fn, i64 200) ; 12 uses
  %i.fp = load volatile i64, ptr %i.s, align 8
  %i.fq = call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.fp, i32 -1) #13, !srcloc !44 ; 2 uses
  %i.fr = load volatile i64, ptr %i.r, align 8
  %i.fs = call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.fr, i32 -1) #13, !srcloc !44 ; 2 uses
  %i.ft = icmp sgt i32 %i.fq, %i.fs
  br i1 %i.ft, label %bb.y, label %bb.z

bb.y:                                             ; preds = %fls64.exit.i
  %i.fu = sext i32 %i.fq to i64
  %i.fv = sext i32 %i.fs to i64
  %i.fw = sub nsw i64 %i.fu, %i.fv
  %i.fx = mul nsw i64 %i.fw, 10000
  %i.fy = sdiv i64 %i.fx, 1024
  %i.fz = add nsw i64 %i.fy, 10
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %fls64.exit.i
  %.0.i168 = phi i64 [ %i.fz, %bb.y ], [ 10, %fls64.exit.i ]
  %.zext = lshr i64 %i.fo, 1
  %i.ga = add nuw nsw i64 %.zext, 1
  %i.gb = call i64 @llvm.smin.i64(i64 %.0.i168, i64 %i.ga) ; 2 uses
  %i.gc = mul i64 %i.gb, %i.fe
  %i.gd = lshr i64 %i.gc, 10
  %i.ge = trunc i64 %i.gd to i32                  ; 2 uses
  %i.gf = icmp slt i32 %i.ge, 32
  br i1 %i.gf, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.gg = mul i64 %i.fo, %i.fe
  %i.gh = lshr i64 %i.gg, 10
  %i.gi = trunc i64 %i.gh to i32                  ; 2 uses
  %i.gj = icmp sgt i32 %i.gi, 32
  br i1 %i.gj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gk = udiv i64 32000, %i.fe
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.048.i = phi i32 [ 32, %bb.ab ], [ %i.gi, %bb.aa ], [ %i.ge, %bb.z ] ; 2 uses
  %.1.i = phi i64 [ %i.gk, %bb.ab ], [ %i.fo, %bb.aa ], [ %i.gb, %bb.z ]
  %i.gl = mul i32 %.048.i, 1000
  %i.gm = sext i32 %i.gl to i64
  %i.gn = add nuw nsw i64 %i.fh, 1
  %i.go = udiv i64 %i.gm, %i.gn
  %i.gp = icmp sgt i64 %i.go, %i.fo               ; 2 uses
  %i.gq = mul nuw nsw i64 %i.fo, %i.fh
  %i.gr = lshr i64 %i.gq, 10
  %i.gs = trunc i64 %i.gr to i32
  %.149.i = select i1 %i.gp, i32 %i.gs, i32 %.048.i ; 2 uses
  %.2.i = select i1 %i.gp, i64 %i.fo, i64 %.1.i   ; 2 uses
  %i.gt = icmp sgt i32 %.149.i, 31
  br i1 %i.gt, label %bb.ad, label %wb_min_pause.exit

bb.ad:                                            ; preds = %bb.ac
  %i.gu = sdiv i64 %.2.i, 2
  %i.gv = add nsw i64 %i.gu, 1
  br label %wb_min_pause.exit

wb_min_pause.exit:                                ; preds = %bb.ac, %bb.ad
  %i.gw = phi i64 [ %i.gv, %bb.ad ], [ %.2.i, %bb.ac ]
  %i.gx = icmp eq i64 %i.fh, 0                    ; 2 uses
  br i1 %i.gx, label %bb.aq, label %bb.ae, !prof !23

bb.ae:                                            ; preds = %wb_min_pause.exit
  %i.gy = udiv i64 %i.t, %i.fh                    ; 5 uses
  %i.gz = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #13, !srcloc !12
  %i.ha = inttoptr i64 %i.gz to ptr               ; 5 uses
  %i.hb = getelementptr i8, ptr %i.ha, i64 2832
  %i.hc = load i64, ptr %i.hb, align 16           ; 2 uses
  %.not = icmp eq i64 %i.hc, 0
  %.neg = sub i64 %i.hc, %i.w
  %i.hd = select i1 %.not, i64 0, i64 %.neg
  %.0141 = add i64 %i.hd, %i.gy                   ; 6 uses
  %i.he = icmp slt i64 %.0141, %i.gw
  br i1 %i.he, label %bb.af, label %bb.ao

bb.af:                                            ; preds = %bb.ae
  %i.hf = getelementptr i8, ptr %i.ha, i64 2832   ; 3 uses
  %i.hg = call i64 @llvm.smin.i64(i64 %.0141, i64 0)
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_balance_dirty_pages, i64 8), i1 false) #11
          to label %trace_balance_dirty_pages.exit [label %arch_test_bit.exit.i.i], !srcloc !13

arch_test_bit.exit.i.i:                           ; preds = %bb.af
  %i.hh = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #11, !srcloc !47
  %i.hi = zext i32 %i.hh to i64
  %i.hj = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.hi) #11, !srcloc !15 ; 2 uses
  %i.hk = icmp ult i8 %i.hj, 2
  call void @llvm.assume(i1 %i.hk)
  %i.hl = trunc nuw i8 %i.hj to i1
  br i1 %i.hl, label %bb.ag, label %trace_balance_dirty_pages.exit

bb.ag:                                            ; preds = %arch_test_bit.exit.i.i
  %i.hm = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.hm, ptr elementtype(i64) %i.hm) #11, !srcloc !16
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !17
  %i.hn = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_balance_dirty_pages, i64 56), align 8 ; 2 uses
  %.not.i.i169 = icmp eq ptr %i.hn, null
  br i1 %.not.i.i169, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ho = getelementptr i8, ptr %i.hn, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8
  %i.hq = call i32 @__SCT__tp_func_balance_dirty_pages(ptr noundef %i.hp, ptr noundef %0, ptr noundef nonnull %3, i64 noundef %i.fe, i64 noundef range(i64 0, 18014398509481984) %i.fh, i64 noundef range(i64 -2147483648, 2147483648) %1, i64 noundef %i.gy, i64 noundef %i.hg, i64 noundef %i.i) #14 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !18
  %i.hr = getelementptr i8, ptr %i.hm, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.hr, ptr elementtype(i64) %i.hr) #11, !srcloc !19
  br label %trace_balance_dirty_pages.exit

trace_balance_dirty_pages.exit:                   ; preds = %bb.af, %arch_test_bit.exit.i.i, %bb.ai
  %i.hs = icmp slt i64 %.0141, -1000
  br i1 %i.hs, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %trace_balance_dirty_pages.exit
  store i64 %i.w, ptr %i.hf, align 16
  %i.ht = getelementptr i8, ptr %i.ha, i64 2824
  store i32 0, ptr %i.ht, align 8
  br label %.loopexit

bb.ak:                                            ; preds = %trace_balance_dirty_pages.exit
  %.not151 = icmp ugt i64 %i.fh, %i.t
  br i1 %.not151, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hu = load i64, ptr %i.hf, align 16
  %i.hv = add i64 %i.hu, %i.gy
  store i64 %i.hv, ptr %i.hf, align 16
  %i.hw = getelementptr i8, ptr %i.ha, i64 2824
  store i32 0, ptr %i.hw, align 8
  br label %.loopexit

bb.am:                                            ; preds = %bb.ak
  %i.hx = getelementptr i8, ptr %i.ha, i64 2828   ; 2 uses
  %i.hy = load i32, ptr %i.hx, align 4            ; 2 uses
  %i.hz = sext i32 %i.hy to i64
  %.not152 = icmp ult i64 %1, %i.hz
  br i1 %.not152, label %.loopexit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ia = trunc nsw i64 %1 to i32
  %i.ib = add i32 %i.hy, %i.ia
  store i32 %i.ib, ptr %i.hx, align 4
  br label %.loopexit

bb.ao:                                            ; preds = %bb.ae
  %i.ic = icmp sgt i64 %.0141, %i.fo
  br i1 %i.ic, label %bb.ap, label %bb.aq, !prof !23

bb.ap:                                            ; preds = %bb.ao
  %i.id = sub nsw i64 %.0141, %i.fo
  %i.ie = call i64 @llvm.smin.i64(i64 %i.id, i64 %i.fo)
  %i.if = add i64 %i.ie, %i.w
  br label %bb.aq

bb.aq:                                            ; preds = %wb_min_pause.exit, %bb.ao, %bb.ap
  %.0144 = phi i64 [ %i.w, %bb.ao ], [ %i.if, %bb.ap ], [ %i.w, %wb_min_pause.exit ]
  %.1 = phi i64 [ %.0141, %bb.ao ], [ %i.fo, %bb.ap ], [ %i.fo, %wb_min_pause.exit ] ; 3 uses
  %.0140 = phi i64 [ %i.gy, %bb.ao ], [ %i.gy, %bb.ap ], [ %i.fo, %wb_min_pause.exit ]
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_balance_dirty_pages, i64 8), i1 false) #11
          to label %trace_balance_dirty_pages.exit174 [label %arch_test_bit.exit.i.i170], !srcloc !13

arch_test_bit.exit.i.i170:                        ; preds = %bb.aq
  %i.ig = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #11, !srcloc !47
  %i.ih = zext i32 %i.ig to i64
  %i.ii = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ih) #11, !srcloc !15 ; 2 uses
  %i.ij = icmp ult i8 %i.ii, 2
  call void @llvm.assume(i1 %i.ij)
  %i.ik = trunc nuw i8 %i.ii to i1
  br i1 %i.ik, label %bb.ar, label %trace_balance_dirty_pages.exit174

bb.ar:                                            ; preds = %arch_test_bit.exit.i.i170
  %i.il = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.il, ptr elementtype(i64) %i.il) #11, !srcloc !16
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !17
  %i.im = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_balance_dirty_pages, i64 56), align 8 ; 2 uses
  %.not.i.i171 = icmp eq ptr %i.im, null
  br i1 %.not.i.i171, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.in = getelementptr i8, ptr %i.im, i64 8
  %i.io = load ptr, ptr %i.in, align 8
  %i.ip = call i32 @__SCT__tp_func_balance_dirty_pages(ptr noundef %i.io, ptr noundef %0, ptr noundef nonnull %3, i64 noundef %i.fe, i64 noundef range(i64 0, 18014398509481984) %i.fh, i64 noundef range(i64 -2147483648, 2147483648) %1, i64 noundef %.0140, i64 noundef %.1, i64 noundef %i.i) #14 ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !18
  %i.iq = getelementptr i8, ptr %i.il, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.iq, ptr elementtype(i64) %i.iq) #11, !srcloc !19
  br label %trace_balance_dirty_pages.exit174

trace_balance_dirty_pages.exit174:                ; preds = %bb.aq, %arch_test_bit.exit.i.i170, %bb.at
  br i1 %.not153, label %bb.au, label %.loopexit

bb.au:                                            ; preds = %trace_balance_dirty_pages.exit174
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_sched_set_state_tp, i64 8), i1 false) #11
          to label %arch_static_branch.exit [label %bb.av], !srcloc !13

bb.av:                                            ; preds = %bb.au
  call void @__trace_set_current_state(i32 noundef 258) #14
  br label %arch_static_branch.exit

arch_static_branch.exit:                          ; preds = %bb.au, %bb.av
  %i.ir = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #13, !srcloc !12
  %i.is = inttoptr i64 %i.ir to ptr               ; 6 uses
  %i.it = getelementptr i8, ptr %i.is, i64 24
  store volatile i32 258, ptr %i.it, align 8
  %i.iu = load volatile i64, ptr @jiffies, align 64
  store i64 %i.iu, ptr %i.v, align 8
  %i.iv = call i64 @io_schedule_timeout(i64 noundef %.1) #14 ; 0 uses
  %i.iw = add i64 %.1, %.0144
end_hunk_1
