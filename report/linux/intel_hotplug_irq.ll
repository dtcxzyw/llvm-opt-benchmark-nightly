Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_hotplug_irq?download=true
inline.NumInlined: 504
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@intel_dmc_wl_put
; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @to_intel_uncore(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i915_hpd_irq_setup(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 624      ; 3 uses
  %.pn14.i = load ptr, ptr %i.b, align 8          ; 2 uses
  %.not15.i = icmp eq ptr %.pn14.i, %i.b
  br i1 %.not15.i, label %intel_hpd_enabled_irqs.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.pn17.i = phi ptr [ %.pn.i, %bb.c ], [ %.pn14.i, %bb.a ] ; 2 uses
  %.01316.i = phi i32 [ %.1.i, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr i8, ptr %.pn17.i, i64 480
  %i.d = load i32, ptr %i.c, align 8
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr [24 x i8], ptr %0, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 4560
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr [4 x i8], ptr @hpd_mask_i915, i64 %i.e
  %i.k = load i32, ptr %i.j, align 4
  %i.l = or i32 %i.k, %.01316.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.1.i = phi i32 [ %i.l, %bb.b ], [ %.01316.i, %.lr.ph.i ] ; 2 uses
  %.pn.i = load ptr, ptr %.pn17.i, align 8        ; 2 uses
  %.not.i = icmp eq ptr %.pn.i, %i.b
  br i1 %.not.i, label %intel_hpd_enabled_irqs.exit, label %.lr.ph.i, !llvm.loop !4

intel_hpd_enabled_irqs.exit:                      ; preds = %bb.c, %bb.a
  %.013.lcssa.i = phi i32 [ 0, %bb.a ], [ %.1.i, %bb.c ]
  %i.m = getelementptr i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = and i64 %i.n, 32768
  %.not7 = icmp eq i64 %i.o, 0
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %intel_hpd_enabled_irqs.exit
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 85352) #3
  %.val.i.i = load ptr, ptr %0, align 8
  %i.p = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i) #3 ; 4 uses
  %i.q = getelementptr i8, ptr %i.p, i64 144
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call i32 %i.r(ptr noundef %i.p, i32 85352, i1 noundef zeroext true) #3, !inline_history !5
  %i.t = and i32 %i.s, -16
  %i.u = or disjoint i32 %i.t, 13
  %i.v = getelementptr i8, ptr %i.p, i64 176
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef %i.p, i32 85352, i32 noundef %i.u, i1 noundef zeroext true) #3, !inline_history !6
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 85352) #3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %intel_hpd_enabled_irqs.exit
  %i.x = trunc i64 %i.n to i32
  %i.y = shl i32 %i.x, 8
  %i.z = and i32 %i.y, 256
  %spec.select = or i32 %.013.lcssa.i, %i.z
  %i.aa = or i32 %spec.select, 32
  tail call void @i915_hotplug_interrupt_update_locked(ptr noundef %0, i32 noundef 1040188256, i32 noundef %i.aa) #5
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i915_hpd_enable_detection(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #3
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 6 uses
  %i.d = getelementptr i8, ptr %0, i64 488
  %i.e = load i32, ptr %i.d, align 8
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr [4 x i8], ptr @hpd_mask_i915, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = getelementptr i8, ptr %i.c, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = and i64 %i.j, 32768
  %.not7 = icmp eq i64 %i.k, 0
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 85352) #3
  %.val.i.i = load ptr, ptr %i.c, align 8
  %i.l = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i) #3 ; 4 uses
  %i.m = getelementptr i8, ptr %i.l, i64 144
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call i32 %i.n(ptr noundef %i.l, i32 85352, i1 noundef zeroext true) #3, !inline_history !5
  %i.p = and i32 %i.o, -16
  %i.q = or disjoint i32 %i.p, 13
  %i.r = getelementptr i8, ptr %i.l, i64 176
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef %i.l, i32 85352, i32 noundef %i.q, i1 noundef zeroext true) #3, !inline_history !6
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 85352) #3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = getelementptr i8, ptr %i.c, i64 1224     ; 2 uses
  tail call void @_raw_spin_lock_irq(ptr noundef %i.t) #3
  tail call void @i915_hotplug_interrupt_update_locked(ptr noundef %i.c, i32 noundef %i.h, i32 noundef %i.h) #5
  tail call void @_raw_spin_unlock_irq(ptr noundef %i.t) #3
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @icp_hpd_irq_setup(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4536
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 624      ; 4 uses
  %.pn14.i = load ptr, ptr %i.d, align 8          ; 3 uses
  %.not15.i = icmp eq ptr %.pn14.i, %i.d
  br i1 %.not15.i, label %intel_hpd_hotplug_irqs.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.pn17.i = phi ptr [ %.pn.i, %bb.c ], [ %.pn14.i, %bb.a ] ; 2 uses
  %.01316.i = phi i32 [ %.1.i, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr i8, ptr %.pn17.i, i64 480
  %i.f = load i32, ptr %i.e, align 8
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr [24 x i8], ptr %0, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 4560
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr [4 x i8], ptr %i.b, i64 %i.g
  %i.m = load i32, ptr %i.l, align 4
  %i.n = or i32 %i.m, %.01316.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.1.i = phi i32 [ %i.n, %bb.b ], [ %.01316.i, %.lr.ph.i ] ; 2 uses
  %.pn.i = load ptr, ptr %.pn17.i, align 8        ; 2 uses
  %.not.i = icmp eq ptr %.pn.i, %i.d
  br i1 %.not.i, label %.lr.ph.i9, label %.lr.ph.i, !llvm.loop !4

.lr.ph.i9:                                        ; preds = %bb.c, %.lr.ph.i9
  %.pn4.i = phi ptr [ %.pn.i10, %.lr.ph.i9 ], [ %.pn14.i, %bb.c ] ; 2 uses
  %.0113.i = phi i32 [ %i.t, %.lr.ph.i9 ], [ 0, %bb.c ]
  %i.o = getelementptr i8, ptr %.pn4.i, i64 480
  %i.p = load i32, ptr %i.o, align 8
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr [4 x i8], ptr %i.b, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4
  %i.t = or i32 %i.s, %.0113.i                    ; 2 uses
  %.pn.i10 = load ptr, ptr %.pn4.i, align 8       ; 2 uses
  %.not.i11 = icmp eq ptr %.pn.i10, %i.d
  br i1 %.not.i11, label %intel_hpd_hotplug_irqs.exit, label %.lr.ph.i9, !llvm.loop !7

intel_hpd_hotplug_irqs.exit:                      ; preds = %.lr.ph.i9, %bb.a
  %.013.lcssa.i24 = phi i32 [ 0, %bb.a ], [ %.1.i, %.lr.ph.i9 ]
  %.011.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.t, %.lr.ph.i9 ]
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 802872) #3
  %.val.i = load ptr, ptr %0, align 8
  %i.u = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #3 ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 176
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef %i.u, i32 802872, i32 noundef 248, i1 noundef zeroext true) #3, !inline_history !3
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 802872) #3
  tail call void @ibx_display_interrupt_update(ptr noundef %0, i32 noundef %.011.lcssa.i, i32 noundef %.013.lcssa.i24) #3
  %i.x = load ptr, ptr %0, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 624      ; 3 uses
  %.pn12.i.i = load ptr, ptr %i.y, align 8        ; 2 uses
  %.not13.i.i = icmp eq ptr %.pn12.i.i, %i.y
  br i1 %.not13.i.i, label %icp_ddi_hpd_detection_setup.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %intel_hpd_hotplug_irqs.exit, %.lr.ph.i.i
  %.pn15.i.i = phi ptr [ %.pn.i.i, %.lr.ph.i.i ], [ %.pn12.i.i, %intel_hpd_hotplug_irqs.exit ] ; 2 uses
  %.01114.i.i = phi i32 [ %i.af, %.lr.ph.i.i ], [ 0, %intel_hpd_hotplug_irqs.exit ]
  %i.z = getelementptr i8, ptr %.pn15.i.i, i64 480
  %i.aa = load i32, ptr %i.z, align 8             ; 2 uses
  %i.ab = and i32 %i.aa, -4
  %switch.i.i.i = icmp eq i32 %i.ab, 4
  %i.ac = shl i32 %i.aa, 2
  %i.ad = add i32 %i.ac, -16
  %i.ae = shl i32 8, %i.ad
  %.0.i.i.i = select i1 %switch.i.i.i, i32 %i.ae, i32 0
  %i.af = or i32 %.0.i.i.i, %.01114.i.i           ; 2 uses
  %.pn.i.i = load ptr, ptr %.pn15.i.i, align 8    ; 2 uses
  %.not.i.i = icmp eq ptr %.pn.i.i, %i.y
  br i1 %.not.i.i, label %icp_ddi_hpd_detection_setup.exit, label %.lr.ph.i.i, !llvm.loop !8

icp_ddi_hpd_detection_setup.exit:                 ; preds = %.lr.ph.i.i, %intel_hpd_hotplug_irqs.exit
  %.011.lcssa.i.i = phi i32 [ 0, %intel_hpd_hotplug_irqs.exit ], [ %i.af, %.lr.ph.i.i ]
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 802864) #3
  %.val.i.i = load ptr, ptr %0, align 8
  %i.ag = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i) #3 ; 4 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call i32 %i.ai(ptr noundef %i.ag, i32 802864, i1 noundef zeroext true) #3, !inline_history !33
  %i.ak = and i32 %i.aj, -34953
  %i.al = or i32 %i.ak, %.011.lcssa.i.i
  %i.am = getelementptr i8, ptr %i.ag, i64 176
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef %i.ag, i32 802864, i32 noundef %i.al, i1 noundef zeroext true) #3, !inline_history !34
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 802864) #3
  %i.ao = load ptr, ptr %0, align 8
  %i.ap = getelementptr i8, ptr %i.ao, i64 624    ; 3 uses
  %.pn12.i.i12 = load ptr, ptr %i.ap, align 8     ; 2 uses
  %.not13.i.i13 = icmp eq ptr %.pn12.i.i12, %i.ap
  br i1 %.not13.i.i13, label %icp_tc_hpd_detection_setup.exit, label %.lr.ph.i.i14

.lr.ph.i.i14:                                     ; preds = %icp_ddi_hpd_detection_setup.exit, %.lr.ph.i.i14
  %.pn15.i.i15 = phi ptr [ %.pn.i.i19, %.lr.ph.i.i14 ], [ %.pn12.i.i12, %icp_ddi_hpd_detection_setup.exit ] ; 2 uses
  %.01114.i.i16 = phi i32 [ %i.av, %.lr.ph.i.i14 ], [ 0, %icp_ddi_hpd_detection_setup.exit ]
  %i.aq = getelementptr i8, ptr %.pn15.i.i15, i64 480
  %i.ar = load i32, ptr %i.aq, align 8            ; 2 uses
  %.off.i.i.i = add i32 %i.ar, -9
  %switch.i.i.i17 = icmp ult i32 %.off.i.i.i, 6
  %i.as = shl i32 %i.ar, 2
  %i.at = add i32 %i.as, -36
  %i.au = shl i32 8, %i.at
  %.0.i.i.i18 = select i1 %switch.i.i.i17, i32 %i.au, i32 0
  %i.av = or i32 %.0.i.i.i18, %.01114.i.i16       ; 2 uses
  %.pn.i.i19 = load ptr, ptr %.pn15.i.i15, align 8 ; 2 uses
  %.not.i.i20 = icmp eq ptr %.pn.i.i19, %i.ap
  br i1 %.not.i.i20, label %icp_tc_hpd_detection_setup.exit, label %.lr.ph.i.i14, !llvm.loop !8

icp_tc_hpd_detection_setup.exit:                  ; preds = %.lr.ph.i.i14, %icp_ddi_hpd_detection_setup.exit
  %.011.lcssa.i.i21 = phi i32 [ 0, %icp_ddi_hpd_detection_setup.exit ], [ %i.av, %.lr.ph.i.i14 ]
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 802868) #3
  %.val.i.i22 = load ptr, ptr %0, align 8
  %i.aw = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i22) #3 ; 4 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 144
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = tail call i32 %i.ay(ptr noundef %i.aw, i32 802868, i1 noundef zeroext true) #3, !inline_history !35
  %i.ba = and i32 %i.az, -8947849
  %i.bb = or i32 %i.ba, %.011.lcssa.i.i21
  %i.bc = getelementptr i8, ptr %i.aw, i64 176
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef %i.aw, i32 802868, i32 noundef %i.bb, i1 noundef zeroext true) #3, !inline_history !36
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 802868) #3
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @icp_hpd_enable_detection(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %icp_ddi_hpd_enable_detection.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #3
  br label %icp_ddi_hpd_enable_detection.exit

icp_ddi_hpd_enable_detection.exit:                ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 488        ; 2 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = and i32 %i.e, -4
  %switch.i.i = icmp eq i32 %i.f, 4
  %i.g = shl i32 %i.e, 2
  %i.h = add i32 %i.g, -16
  %i.i = shl i32 8, %i.h
  %.0.i.i = select i1 %switch.i.i, i32 %i.i, i32 0
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 802864) #3
  %.val.i.i = load ptr, ptr %i.c, align 8
  %i.j = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i) #3 ; 4 uses
  %i.k = getelementptr i8, ptr %i.j, i64 144
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call i32 %i.l(ptr noundef %i.j, i32 802864, i1 noundef zeroext true) #3, !inline_history !37
  %i.n = or i32 %i.m, %.0.i.i
  %i.o = getelementptr i8, ptr %i.j, i64 176
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef %i.j, i32 802864, i32 noundef %i.n, i1 noundef zeroext true) #3, !inline_history !38
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 802864) #3
  %i.q = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i2 = icmp eq ptr %i.q, null
  br i1 %.not.i2, label %icp_tc_hpd_enable_detection.exit, label %bb.c

bb.c:                                             ; preds = %icp_ddi_hpd_enable_detection.exit
  %i.r = tail call ptr @__drm_to_display(ptr noundef nonnull %i.q) #3
  br label %icp_tc_hpd_enable_detection.exit

icp_tc_hpd_enable_detection.exit:                 ; preds = %icp_ddi_hpd_enable_detection.exit, %bb.c
  %i.s = phi ptr [ %i.r, %bb.c ], [ null, %icp_ddi_hpd_enable_detection.exit ] ; 3 uses
  %i.t = load i32, ptr %i.d, align 8              ; 2 uses
  %.off.i.i = add i32 %i.t, -9
  %switch.i.i3 = icmp ult i32 %.off.i.i, 6
  %i.u = shl i32 %i.t, 2
  %i.v = add i32 %i.u, -36
  %i.w = shl i32 8, %i.v
  %.0.i.i4 = select i1 %switch.i.i3, i32 %i.w, i32 0
  tail call void @intel_dmc_wl_get(ptr noundef %i.s, i32 802868) #3
  %.val.i.i5 = load ptr, ptr %i.s, align 8
  %i.x = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i5) #3 ; 4 uses
  %i.y = getelementptr i8, ptr %i.x, i64 144
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call i32 %i.z(ptr noundef %i.x, i32 802868, i1 noundef zeroext true) #3, !inline_history !39
  %i.ab = or i32 %i.aa, %.0.i.i4
  %i.ac = getelementptr i8, ptr %i.x, i64 176
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef %i.x, i32 802868, i32 noundef %i.ab, i1 noundef zeroext true) #3, !inline_history !40
  tail call void @intel_dmc_wl_put(ptr noundef %i.s, i32 802868) #3
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ibx_display_interrupt_update(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dg1_hpd_irq_setup(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 794624) #3
  %.val.i.i = load ptr, ptr %0, align 8
  %i.a = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i) #3 ; 4 uses
  %i.b = getelementptr i8, ptr %i.a, i64 144
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 %i.c(ptr noundef %i.a, i32 794624, i1 noundef zeroext true) #3, !inline_history !9
  %i.e = or i32 %i.d, 491520
  %i.f = getelementptr i8, ptr %i.a, i64 176
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef %i.a, i32 794624, i32 noundef %i.e, i1 noundef zeroext true) #3, !inline_history !10
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 794624) #3
  tail call void @icp_hpd_irq_setup(ptr noundef %0) #5, !srcloc !41
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dg1_hpd_enable_detection(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #3
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 794624) #3
  %.val.i.i = load ptr, ptr %i.c, align 8
  %i.d = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i) #3 ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 144
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i32 %i.f(ptr noundef %i.d, i32 794624, i1 noundef zeroext true) #3, !inline_history !9
  %i.h = or i32 %i.g, 491520
  %i.i = getelementptr i8, ptr %i.d, i64 176
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef %i.d, i32 794624, i32 noundef %i.h, i1 noundef zeroext true) #3, !inline_history !10
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 794624) #3
  tail call void @icp_hpd_enable_detection(ptr noundef %0) #5, !srcloc !42
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @xelpdp_hpd_irq_setup(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4528
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 624      ; 4 uses
  %.pn14.i = load ptr, ptr %i.d, align 8          ; 3 uses
  %.not15.i = icmp eq ptr %.pn14.i, %i.d
  br i1 %.not15.i, label %intel_hpd_hotplug_irqs.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.pn17.i = phi ptr [ %.pn.i, %bb.c ], [ %.pn14.i, %bb.a ] ; 2 uses
  %.01316.i = phi i32 [ %.1.i, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr i8, ptr %.pn17.i, i64 480
  %i.f = load i32, ptr %i.e, align 8
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr [24 x i8], ptr %0, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 4560
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr [4 x i8], ptr %i.b, i64 %i.g
  %i.m = load i32, ptr %i.l, align 4
  %i.n = or i32 %i.m, %.01316.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.1.i = phi i32 [ %i.n, %bb.b ], [ %.01316.i, %.lr.ph.i ] ; 2 uses
  %.pn.i = load ptr, ptr %.pn17.i, align 8        ; 2 uses
  %.not.i = icmp eq ptr %.pn.i, %i.d
  br i1 %.not.i, label %.lr.ph.i14, label %.lr.ph.i, !llvm.loop !4

.lr.ph.i14:                                       ; preds = %bb.c, %.lr.ph.i14
  %.pn4.i = phi ptr [ %.pn.i15, %.lr.ph.i14 ], [ %.pn14.i, %bb.c ] ; 2 uses
  %.0113.i = phi i32 [ %i.t, %.lr.ph.i14 ], [ 0, %bb.c ]
  %i.o = getelementptr i8, ptr %.pn4.i, i64 480
  %i.p = load i32, ptr %i.o, align 8
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr [4 x i8], ptr %i.b, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4
  %i.t = or i32 %i.s, %.0113.i                    ; 3 uses
  %.pn.i15 = load ptr, ptr %.pn4.i, align 8       ; 2 uses
  %.not.i16 = icmp eq ptr %.pn.i15, %i.d
  br i1 %.not.i16, label %intel_hpd_hotplug_irqs.exit.loopexit, label %.lr.ph.i14, !llvm.loop !7

intel_hpd_hotplug_irqs.exit.loopexit:             ; preds = %.lr.ph.i14
  %i.u = xor i32 %.1.i, -1
  %i.v = and i32 %i.t, %i.u
  %i.w = xor i32 %i.t, -1
  br label %intel_hpd_hotplug_irqs.exit

intel_hpd_hotplug_irqs.exit:                      ; preds = %intel_hpd_hotplug_irqs.exit.loopexit, %bb.a
  %.013.lcssa.i48 = phi i32 [ 0, %bb.a ], [ %i.v, %intel_hpd_hotplug_irqs.exit.loopexit ]
  %.011.lcssa.i = phi i32 [ -1, %bb.a ], [ %i.w, %intel_hpd_hotplug_irqs.exit.loopexit ]
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 1506900) #3
  %.val.i = load ptr, ptr %0, align 8
  %i.x = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #3 ; 4 uses
  %i.y = getelementptr i8, ptr %i.x, i64 144
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call i32 %i.z(ptr noundef %i.x, i32 1506900, i1 noundef zeroext true) #3, !inline_history !0
  %i.ab = and i32 %i.aa, %.011.lcssa.i
  %i.ac = or i32 %i.ab, %.013.lcssa.i48
  %i.ad = getelementptr i8, ptr %i.x, i64 176
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef %i.x, i32 1506900, i32 noundef %i.ac, i1 noundef zeroext true) #3, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 1506900) #3
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 1506900) #3
  %.val.i17 = load ptr, ptr %0, align 8
  %i.af = tail call ptr @to_intel_uncore(ptr noundef %.val.i17) #3 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 144
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call i32 %i.ah(ptr noundef %i.af, i32 range(i32 279668, 1506901) 1506900, i1 noundef zeroext false) #3, !inline_history !11 ; 0 uses
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 1506900) #3
  %i.aj = load ptr, ptr %0, align 8
  %i.ak = getelementptr i8, ptr %i.aj, i64 624    ; 3 uses
  %.pn18.i = load ptr, ptr %i.ak, align 8         ; 2 uses
  %.not19.i = icmp eq ptr %.pn18.i, %i.ak
  br i1 %.not19.i, label %.preheader.i, label %.lr.ph.i18

.preheader.loopexit.i:                            ; preds = %.lr.ph.i18
  %i.al = zext i32 %i.ar to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %intel_hpd_hotplug_irqs.exit
  %.015.lcssa.i = phi i64 [ 0, %intel_hpd_hotplug_irqs.exit ], [ %i.al, %.preheader.loopexit.i ]
  br label %bb.d

.lr.ph.i18:                                       ; preds = %intel_hpd_hotplug_irqs.exit, %.lr.ph.i18
  %.pn21.i = phi ptr [ %.pn.i19, %.lr.ph.i18 ], [ %.pn18.i, %intel_hpd_hotplug_irqs.exit ] ; 2 uses
  %.01520.i = phi i32 [ %i.ar, %.lr.ph.i18 ], [ 0, %intel_hpd_hotplug_irqs.exit ]
  %i.am = getelementptr i8, ptr %.pn21.i, i64 480
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = shl nuw i64 1, %i.ao
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = or i32 %.01520.i, %i.aq                 ; 2 uses
  %.pn.i19 = load ptr, ptr %.pn21.i, align 8      ; 2 uses
  %.not.i20 = icmp eq ptr %.pn.i19, %i.ak
  br i1 %.not.i20, label %.preheader.loopexit.i, label %.lr.ph.i18, !llvm.loop !43

bb.d:                                             ; preds = %_xelpdp_pica_hpd_detection_setup.exit.i, %.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.preheader.i ], [ %indvars.iv.next.i, %_xelpdp_pica_hpd_detection_setup.exit.i ] ; 3 uses
  %i.as = trunc i64 %indvars.iv.i to i32          ; 2 uses
  %i.at = add i32 %i.as, -9
  %i.au = icmp ult i32 %i.at, 4
  br i1 %i.au, label %bb.e, label %_xelpdp_pica_hpd_detection_setup.exit.i

bb.e:                                             ; preds = %bb.d
  %i.av = shl nuw nsw i64 1, %indvars.iv.i
  %i.aw = and i64 %i.av, %.015.lcssa.i
  %.not17.i = icmp eq i64 %i.aw, 0
  %i.ax = select i1 %.not17.i, i32 0, i32 68
  %i.ay = shl nuw nsw i32 %i.as, 9
  %i.az = or disjoint i32 %i.ay, 1499248          ; 4 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.az) #3
  %.val.i.i.i = load ptr, ptr %0, align 8
  %i.ba = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i.i) #3 ; 4 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 144
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = tail call i32 %i.bc(ptr noundef %i.ba, i32 %i.az, i1 noundef zeroext true) #3, !inline_history !44
  %i.be = and i32 %i.bd, -69
  %i.bf = or disjoint i32 %i.be, %i.ax
  %i.bg = getelementptr i8, ptr %i.ba, i64 176
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef %i.ba, i32 %i.az, i32 noundef %i.bf, i1 noundef zeroext true) #3, !inline_history !45
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.az) #3
  br label %_xelpdp_pica_hpd_detection_setup.exit.i

_xelpdp_pica_hpd_detection_setup.exit.i:          ; preds = %bb.e, %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 15
  br i1 %exitcond.not.i, label %xelpdp_pica_hpd_detection_setup.exit, label %bb.d, !llvm.loop !46

xelpdp_pica_hpd_detection_setup.exit:             ; preds = %_xelpdp_pica_hpd_detection_setup.exit.i
  %i.bi = getelementptr i8, ptr %0, i64 24
  %i.bj = load i32, ptr %i.bi, align 8            ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, 1026
  br i1 %i.bk, label %bb.f, label %bb.i

bb.f:                                             ; preds = %xelpdp_pica_hpd_detection_setup.exit
  %i.bl = getelementptr i8, ptr %0, i64 4536
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bn = load ptr, ptr %0, align 8
  %i.bo = getelementptr i8, ptr %i.bn, i64 624    ; 4 uses
  %.pn14.i.i = load ptr, ptr %i.bo, align 8       ; 3 uses
  %.not15.i.i = icmp eq ptr %.pn14.i.i, %i.bo
  br i1 %.not15.i.i, label %intel_hpd_hotplug_irqs.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.h
  %.pn17.i.i = phi ptr [ %.pn.i.i, %bb.h ], [ %.pn14.i.i, %bb.f ] ; 2 uses
  %.01316.i.i = phi i32 [ %.1.i.i, %bb.h ], [ 0, %bb.f ] ; 2 uses
  %i.bp = getelementptr i8, ptr %.pn17.i.i, i64 480
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %i.bs = getelementptr [24 x i8], ptr %0, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 4560
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.bw = getelementptr [4 x i8], ptr %i.bm, i64 %i.br
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = or i32 %i.bx, %.01316.i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.1.i.i = phi i32 [ %i.by, %bb.g ], [ %.01316.i.i, %.lr.ph.i.i ] ; 2 uses
  %.pn.i.i = load ptr, ptr %.pn17.i.i, align 8    ; 2 uses
  %.not.i.i = icmp eq ptr %.pn.i.i, %i.bo
  br i1 %.not.i.i, label %.lr.ph.i8.i, label %.lr.ph.i.i, !llvm.loop !4

.lr.ph.i8.i:                                      ; preds = %bb.h, %.lr.ph.i8.i
  %.pn4.i.i = phi ptr [ %.pn.i9.i, %.lr.ph.i8.i ], [ %.pn14.i.i, %bb.h ] ; 2 uses
  %.0113.i.i = phi i32 [ %i.ce, %.lr.ph.i8.i ], [ 0, %bb.h ]
  %i.bz = getelementptr i8, ptr %.pn4.i.i, i64 480
  %i.ca = load i32, ptr %i.bz, align 8
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr [4 x i8], ptr %i.bm, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = or i32 %i.cd, %.0113.i.i                ; 2 uses
  %.pn.i9.i = load ptr, ptr %.pn4.i.i, align 8    ; 2 uses
  %.not.i10.i = icmp eq ptr %.pn.i9.i, %i.bo
  br i1 %.not.i10.i, label %intel_hpd_hotplug_irqs.exit.i, label %.lr.ph.i8.i, !llvm.loop !7

intel_hpd_hotplug_irqs.exit.i:                    ; preds = %.lr.ph.i8.i, %bb.f
  %.013.lcssa.i23.i = phi i32 [ 0, %bb.f ], [ %.1.i.i, %.lr.ph.i8.i ]
  %.011.lcssa.i.i = phi i32 [ 0, %bb.f ], [ %i.ce, %.lr.ph.i8.i ]
  tail call void @ibx_display_interrupt_update(ptr noundef %0, i32 noundef %.011.lcssa.i.i, i32 noundef %.013.lcssa.i23.i) #3
  %i.cf = load ptr, ptr %0, align 8
  %i.cg = getelementptr i8, ptr %i.cf, i64 624    ; 3 uses
  %.pn12.i.i.i = load ptr, ptr %i.cg, align 8     ; 2 uses
  %.not13.i.i.i = icmp eq ptr %.pn12.i.i.i, %i.cg
  br i1 %.not13.i.i.i, label %mtp_ddi_hpd_detection_setup.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %intel_hpd_hotplug_irqs.exit.i, %.lr.ph.i.i.i
  %.pn15.i.i.i = phi ptr [ %.pn.i.i.i, %.lr.ph.i.i.i ], [ %.pn12.i.i.i, %intel_hpd_hotplug_irqs.exit.i ] ; 2 uses
  %.01114.i.i.i = phi i32 [ %i.cn, %.lr.ph.i.i.i ], [ 0, %intel_hpd_hotplug_irqs.exit.i ]
  %i.ch = getelementptr i8, ptr %.pn15.i.i.i, i64 480
  %i.ci = load i32, ptr %i.ch, align 8            ; 2 uses
  %i.cj = and i32 %i.ci, -2
  %switch.i.i.i.i = icmp eq i32 %i.cj, 4
  %i.ck = shl i32 %i.ci, 2
  %i.cl = add i32 %i.ck, -16
  %i.cm = shl i32 8, %i.cl
  %.0.i.i.i.i = select i1 %switch.i.i.i.i, i32 %i.cm, i32 0
  %i.cn = or i32 %.0.i.i.i.i, %.01114.i.i.i       ; 2 uses
  %.pn.i.i.i = load ptr, ptr %.pn15.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pn.i.i.i, %i.cg
  br i1 %.not.i.i.i, label %mtp_ddi_hpd_detection_setup.exit.i, label %.lr.ph.i.i.i, !llvm.loop !8

mtp_ddi_hpd_detection_setup.exit.i:               ; preds = %.lr.ph.i.i.i, %intel_hpd_hotplug_irqs.exit.i
  %.011.lcssa.i.i.i = phi i32 [ 0, %intel_hpd_hotplug_irqs.exit.i ], [ %i.cn, %.lr.ph.i.i.i ]
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 802864) #3
  %.val.i.i.i21 = load ptr, ptr %0, align 8
  %i.co = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i.i21) #3 ; 4 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 144
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = tail call i32 %i.cq(ptr noundef %i.co, i32 802864, i1 noundef zeroext true) #3, !inline_history !47
  %i.cs = and i32 %i.cr, -137
  %i.ct = or i32 %i.cs, %.011.lcssa.i.i.i
  %i.cu = getelementptr i8, ptr %i.co, i64 176
  %i.cv = load ptr, ptr %i.cu, align 8
  tail call void %i.cv(ptr noundef %i.co, i32 802864, i32 noundef %i.ct, i1 noundef zeroext true) #3, !inline_history !48
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 802864) #3
  %i.cw = load ptr, ptr %0, align 8
  %i.cx = getelementptr i8, ptr %i.cw, i64 624    ; 3 uses
  %.pn12.i.i11.i = load ptr, ptr %i.cx, align 8   ; 2 uses
  %.not13.i.i12.i = icmp eq ptr %.pn12.i.i11.i, %i.cx
  br i1 %.not13.i.i12.i, label %.sink.split, label %.lr.ph.i.i13.i

.lr.ph.i.i13.i:                                   ; preds = %mtp_ddi_hpd_detection_setup.exit.i, %.lr.ph.i.i13.i
  %.pn15.i.i14.i = phi ptr [ %.pn.i.i18.i, %.lr.ph.i.i13.i ], [ %.pn12.i.i11.i, %mtp_ddi_hpd_detection_setup.exit.i ] ; 2 uses
  %.01114.i.i15.i = phi i32 [ %i.dd, %.lr.ph.i.i13.i ], [ 0, %mtp_ddi_hpd_detection_setup.exit.i ]
  %i.cy = getelementptr i8, ptr %.pn15.i.i14.i, i64 480
  %i.cz = load i32, ptr %i.cy, align 8            ; 2 uses
  %.off.i.i.i.i = add i32 %i.cz, -9
  %switch.i.i.i16.i = icmp ult i32 %.off.i.i.i.i, 4
  %i.da = shl i32 %i.cz, 2
  %i.db = add i32 %i.da, -36
  %i.dc = shl i32 8, %i.db
  %.0.i.i.i17.i = select i1 %switch.i.i.i16.i, i32 %i.dc, i32 0
  %i.dd = or i32 %.0.i.i.i17.i, %.01114.i.i15.i   ; 2 uses
  %.pn.i.i18.i = load ptr, ptr %.pn15.i.i14.i, align 8 ; 2 uses
  %.not.i.i19.i = icmp eq ptr %.pn.i.i18.i, %i.cx
  br i1 %.not.i.i19.i, label %.sink.split, label %.lr.ph.i.i13.i, !llvm.loop !8

bb.i:                                             ; preds = %xelpdp_pica_hpd_detection_setup.exit
  %i.de = icmp eq i32 %i.bj, 1026
  br i1 %i.de, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.df = getelementptr i8, ptr %0, i64 4536
  %i.dg = load ptr, ptr %i.df, align 8            ; 2 uses
  %i.dh = load ptr, ptr %0, align 8
  %i.di = getelementptr i8, ptr %i.dh, i64 624    ; 4 uses
  %.pn14.i.i22 = load ptr, ptr %i.di, align 8     ; 3 uses
  %.not15.i.i23 = icmp eq ptr %.pn14.i.i22, %i.di
  br i1 %.not15.i.i23, label %intel_hpd_hotplug_irqs.exit.i32, label %.lr.ph.i.i24

.lr.ph.i.i24:                                     ; preds = %bb.j, %bb.l
  %.pn17.i.i25 = phi ptr [ %.pn.i.i28, %bb.l ], [ %.pn14.i.i22, %bb.j ] ; 2 uses
  %.01316.i.i26 = phi i32 [ %.1.i.i27, %bb.l ], [ 0, %bb.j ] ; 2 uses
  %i.dj = getelementptr i8, ptr %.pn17.i.i25, i64 480
  %i.dk = load i32, ptr %i.dj, align 8
  %i.dl = zext i32 %i.dk to i64                   ; 2 uses
  %i.dm = getelementptr [24 x i8], ptr %0, i64 %i.dl
  %i.dn = getelementptr i8, ptr %i.dm, i64 4560
  %i.do = load i32, ptr %i.dn, align 8
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i24
  %i.dq = getelementptr [4 x i8], ptr %i.dg, i64 %i.dl
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = or i32 %i.dr, %.01316.i.i26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i.i24
  %.1.i.i27 = phi i32 [ %i.ds, %bb.k ], [ %.01316.i.i26, %.lr.ph.i.i24 ] ; 2 uses
  %.pn.i.i28 = load ptr, ptr %.pn17.i.i25, align 8 ; 2 uses
  %.not.i.i29 = icmp eq ptr %.pn.i.i28, %i.di
  br i1 %.not.i.i29, label %.lr.ph.i10.i, label %.lr.ph.i.i24, !llvm.loop !4

.lr.ph.i10.i:                                     ; preds = %bb.l, %.lr.ph.i10.i
  %.pn4.i.i30 = phi ptr [ %.pn.i11.i, %.lr.ph.i10.i ], [ %.pn14.i.i22, %bb.l ] ; 2 uses
  %.0113.i.i31 = phi i32 [ %i.dy, %.lr.ph.i10.i ], [ 0, %bb.l ]
  %i.dt = getelementptr i8, ptr %.pn4.i.i30, i64 480
  %i.du = load i32, ptr %i.dt, align 8
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr [4 x i8], ptr %i.dg, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4
  %i.dy = or i32 %i.dx, %.0113.i.i31              ; 2 uses
  %.pn.i11.i = load ptr, ptr %.pn4.i.i30, align 8 ; 2 uses
  %.not.i12.i = icmp eq ptr %.pn.i11.i, %i.di
  br i1 %.not.i12.i, label %intel_hpd_hotplug_irqs.exit.i32, label %.lr.ph.i10.i, !llvm.loop !7

intel_hpd_hotplug_irqs.exit.i32:                  ; preds = %.lr.ph.i10.i, %bb.j
  %.013.lcssa.i26.i = phi i32 [ 0, %bb.j ], [ %.1.i.i27, %.lr.ph.i10.i ]
  %.011.lcssa.i.i33 = phi i32 [ 0, %bb.j ], [ %i.dy, %.lr.ph.i10.i ]
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 802872) #3
  %.val.i.i = load ptr, ptr %0, align 8
  %i.dz = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i) #3 ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 176
  %i.eb = load ptr, ptr %i.ea, align 8
  tail call void %i.eb(ptr noundef %i.dz, i32 802872, i32 noundef 248, i1 noundef zeroext true) #3, !inline_history !49
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 802872) #3
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 794624) #3
  %.val.i.i.i34 = load ptr, ptr %0, align 8
  %i.ec = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i.i34) #3 ; 4 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 144
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = tail call i32 %i.ee(ptr noundef %i.ec, i32 794624, i1 noundef zeroext true) #3, !inline_history !50
  %i.eg = or i32 %i.ef, 528711680
  %i.eh = getelementptr i8, ptr %i.ec, i64 176
  %i.ei = load ptr, ptr %i.eh, align 8
  tail call void %i.ei(ptr noundef %i.ec, i32 794624, i32 noundef %i.eg, i1 noundef zeroext true) #3, !inline_history !51
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 794624) #3
  tail call void @ibx_display_interrupt_update(ptr noundef %0, i32 noundef %.011.lcssa.i.i33, i32 noundef %.013.lcssa.i26.i) #3
  %i.ej = load ptr, ptr %0, align 8
  %i.ek = getelementptr i8, ptr %i.ej, i64 624    ; 3 uses
  %.pn12.i.i.i35 = load ptr, ptr %i.ek, align 8   ; 2 uses
  %.not13.i.i.i36 = icmp eq ptr %.pn12.i.i.i35, %i.ek
  br i1 %.not13.i.i.i36, label %mtp_ddi_hpd_detection_setup.exit.i44, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %intel_hpd_hotplug_irqs.exit.i32, %.lr.ph.i.i.i37
  %.pn15.i.i.i38 = phi ptr [ %.pn.i.i.i42, %.lr.ph.i.i.i37 ], [ %.pn12.i.i.i35, %intel_hpd_hotplug_irqs.exit.i32 ] ; 2 uses
  %.01114.i.i.i39 = phi i32 [ %i.er, %.lr.ph.i.i.i37 ], [ 0, %intel_hpd_hotplug_irqs.exit.i32 ]
  %i.el = getelementptr i8, ptr %.pn15.i.i.i38, i64 480
  %i.em = load i32, ptr %i.el, align 8            ; 2 uses
  %i.en = and i32 %i.em, -2
  %switch.i.i.i.i40 = icmp eq i32 %i.en, 4
  %i.eo = shl i32 %i.em, 2
  %i.ep = add i32 %i.eo, -16
  %i.eq = shl i32 8, %i.ep
  %.0.i.i.i.i41 = select i1 %switch.i.i.i.i40, i32 %i.eq, i32 0
  %i.er = or i32 %.0.i.i.i.i41, %.01114.i.i.i39   ; 2 uses
  %.pn.i.i.i42 = load ptr, ptr %.pn15.i.i.i38, align 8 ; 2 uses
  %.not.i.i.i43 = icmp eq ptr %.pn.i.i.i42, %i.ek
  br i1 %.not.i.i.i43, label %mtp_ddi_hpd_detection_setup.exit.i44, label %.lr.ph.i.i.i37, !llvm.loop !8

mtp_ddi_hpd_detection_setup.exit.i44:             ; preds = %.lr.ph.i.i.i37, %intel_hpd_hotplug_irqs.exit.i32
  %.011.lcssa.i.i.i45 = phi i32 [ 0, %intel_hpd_hotplug_irqs.exit.i32 ], [ %i.er, %.lr.ph.i.i.i37 ]
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 802864) #3
  %.val.i.i13.i = load ptr, ptr %0, align 8
  %i.es = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i13.i) #3 ; 4 uses
  %i.et = getelementptr i8, ptr %i.es, i64 144
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = tail call i32 %i.eu(ptr noundef %i.es, i32 802864, i1 noundef zeroext true) #3, !inline_history !52
  %i.ew = and i32 %i.ev, -137
  %i.ex = or i32 %i.ew, %.011.lcssa.i.i.i45
  %i.ey = getelementptr i8, ptr %i.es, i64 176
  %i.ez = load ptr, ptr %i.ey, align 8
  tail call void %i.ez(ptr noundef %i.es, i32 802864, i32 noundef %i.ex, i1 noundef zeroext true) #3, !inline_history !53
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 802864) #3
  %i.fa = load ptr, ptr %0, align 8
  %i.fb = getelementptr i8, ptr %i.fa, i64 624    ; 3 uses
  %.pn12.i.i14.i = load ptr, ptr %i.fb, align 8   ; 2 uses
  %.not13.i.i15.i = icmp eq ptr %.pn12.i.i14.i, %i.fb
  br i1 %.not13.i.i15.i, label %.sink.split, label %.lr.ph.i.i16.i

.lr.ph.i.i16.i:                                   ; preds = %mtp_ddi_hpd_detection_setup.exit.i44, %.lr.ph.i.i16.i
  %.pn15.i.i17.i = phi ptr [ %.pn.i.i21.i, %.lr.ph.i.i16.i ], [ %.pn12.i.i14.i, %mtp_ddi_hpd_detection_setup.exit.i44 ] ; 2 uses
  %.01114.i.i18.i = phi i32 [ %i.fh, %.lr.ph.i.i16.i ], [ 0, %mtp_ddi_hpd_detection_setup.exit.i44 ]
  %i.fc = getelementptr i8, ptr %.pn15.i.i17.i, i64 480
  %i.fd = load i32, ptr %i.fc, align 8            ; 2 uses
  %.off.i.i.i.i46 = add i32 %i.fd, -9
  %switch.i.i.i19.i = icmp ult i32 %.off.i.i.i.i46, 4
  %i.fe = shl i32 %i.fd, 2
  %i.ff = add i32 %i.fe, -36
  %i.fg = shl i32 8, %i.ff
  %.0.i.i.i20.i = select i1 %switch.i.i.i19.i, i32 %i.fg, i32 0
  %i.fh = or i32 %.0.i.i.i20.i, %.01114.i.i18.i   ; 2 uses
  %.pn.i.i21.i = load ptr, ptr %.pn15.i.i17.i, align 8 ; 2 uses
  %.not.i.i22.i = icmp eq ptr %.pn.i.i21.i, %i.fb
  br i1 %.not.i.i22.i, label %.sink.split, label %.lr.ph.i.i16.i, !llvm.loop !8

.sink.split:                                      ; preds = %.lr.ph.i.i16.i, %.lr.ph.i.i13.i, %mtp_ddi_hpd_detection_setup.exit.i44, %mtp_ddi_hpd_detection_setup.exit.i
  %.011.lcssa.i.i23.i.sink = phi i32 [ %i.dd, %.lr.ph.i.i13.i ], [ 0, %mtp_ddi_hpd_detection_setup.exit.i ], [ 0, %mtp_ddi_hpd_detection_setup.exit.i44 ], [ %i.fh, %.lr.ph.i.i16.i ]
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 802868) #3
  %.val.i.i24.i = load ptr, ptr %0, align 8
  %i.fi = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i24.i) #3 ; 4 uses
  %i.fj = getelementptr i8, ptr %i.fi, i64 144
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = tail call i32 %i.fk(ptr noundef %i.fi, i32 802868, i1 noundef zeroext true) #3
  %i.fm = and i32 %i.fl, -34953
  %i.fn = or i32 %i.fm, %.011.lcssa.i.i23.i.sink
  %i.fo = getelementptr i8, ptr %i.fi, i64 176
  %i.fp = load ptr, ptr %i.fo, align 8
  tail call void %i.fp(ptr noundef %i.fi, i32 802868, i32 noundef %i.fn, i1 noundef zeroext true) #3
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 802868) #3
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.i
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @xelpdp_hpd_enable_detection(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 488        ; 3 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = add i32 %i.e, -9
  %i.g = icmp ult i32 %i.f, 4
  br i1 %i.g, label %bb.d, label %xelpdp_pica_hpd_enable_detection.exit

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw nsw i32 %i.e, 9
  %i.i = or disjoint i32 %i.h, 1499248            ; 4 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.i) #3
  %.val.i.i.i = load ptr, ptr %i.c, align 8
  %i.j = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i.i) #3 ; 4 uses
  %i.k = getelementptr i8, ptr %i.j, i64 144
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call i32 %i.l(ptr noundef %i.j, i32 %i.i, i1 noundef zeroext true) #3, !inline_history !54
  %i.n = or i32 %i.m, 68
  %i.o = getelementptr i8, ptr %i.j, i64 176
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef %i.j, i32 %i.i, i32 noundef %i.n, i1 noundef zeroext true) #3, !inline_history !55
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.i) #3
  br label %xelpdp_pica_hpd_enable_detection.exit

xelpdp_pica_hpd_enable_detection.exit:            ; preds = %bb.c, %bb.d
  %i.q = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i2 = icmp eq ptr %i.q, null
  br i1 %.not.i2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %xelpdp_pica_hpd_enable_detection.exit
  %i.r = tail call ptr @__drm_to_display(ptr noundef nonnull %i.q) #3
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %xelpdp_pica_hpd_enable_detection.exit
  %i.s = phi ptr [ %i.r, %bb.e ], [ null, %xelpdp_pica_hpd_enable_detection.exit ] ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.s, i32 794624) #3
  %.val.i.i.i3 = load ptr, ptr %i.s, align 8
  %i.t = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i.i3) #3 ; 4 uses
  %i.u = getelementptr i8, ptr %i.t, i64 144
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call i32 %i.v(ptr noundef %i.t, i32 794624, i1 noundef zeroext true) #3, !inline_history !56
  %i.x = or i32 %i.w, 528711680
  %i.y = getelementptr i8, ptr %i.t, i64 176
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef %i.t, i32 794624, i32 noundef %i.x, i1 noundef zeroext true) #3, !inline_history !57
  tail call void @intel_dmc_wl_put(ptr noundef %i.s, i32 794624) #3
  %i.aa = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %mtp_ddi_hpd_enable_detection.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = tail call ptr @__drm_to_display(ptr noundef nonnull %i.aa) #3
  br label %mtp_ddi_hpd_enable_detection.exit.i

mtp_ddi_hpd_enable_detection.exit.i:              ; preds = %bb.g, %bb.f
  %i.ac = phi ptr [ %i.ab, %bb.g ], [ null, %bb.f ] ; 3 uses
  %i.ad = load i32, ptr %i.d, align 8             ; 2 uses
  %i.ae = and i32 %i.ad, -2
  %switch.i.i.i = icmp eq i32 %i.ae, 4
  %i.af = shl i32 %i.ad, 2
  %i.ag = add i32 %i.af, -16
  %i.ah = shl i32 8, %i.ag
  %.0.i.i.i = select i1 %switch.i.i.i, i32 %i.ah, i32 0
  tail call void @intel_dmc_wl_get(ptr noundef %i.ac, i32 802864) #3
  %.val.i.i5.i = load ptr, ptr %i.ac, align 8
  %i.ai = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i5.i) #3 ; 4 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 144
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call i32 %i.ak(ptr noundef %i.ai, i32 802864, i1 noundef zeroext true) #3, !inline_history !58
  %i.am = or i32 %i.al, %.0.i.i.i
  %i.an = getelementptr i8, ptr %i.ai, i64 176
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef %i.ai, i32 802864, i32 noundef %i.am, i1 noundef zeroext true) #3, !inline_history !59
  tail call void @intel_dmc_wl_put(ptr noundef %i.ac, i32 802864) #3
  %i.ap = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i6.i = icmp eq ptr %i.ap, null
  br i1 %.not.i6.i, label %mtp_hpd_enable_detection.exit, label %bb.h

bb.h:                                             ; preds = %mtp_ddi_hpd_enable_detection.exit.i
  %i.aq = tail call ptr @__drm_to_display(ptr noundef nonnull %i.ap) #3
  br label %mtp_hpd_enable_detection.exit

mtp_hpd_enable_detection.exit:                    ; preds = %mtp_ddi_hpd_enable_detection.exit.i, %bb.h
  %i.ar = phi ptr [ %i.aq, %bb.h ], [ null, %mtp_ddi_hpd_enable_detection.exit.i ] ; 3 uses
  %i.as = load i32, ptr %i.d, align 8             ; 2 uses
  %.off.i.i.i = add i32 %i.as, -9
  %switch.i.i7.i = icmp ult i32 %.off.i.i.i, 4
  %i.at = shl i32 %i.as, 2
  %i.au = add i32 %i.at, -36
  %i.av = shl i32 8, %i.au
  %.0.i.i8.i = select i1 %switch.i.i7.i, i32 %i.av, i32 0
  tail call void @intel_dmc_wl_get(ptr noundef %i.ar, i32 802868) #3
  %.val.i.i9.i = load ptr, ptr %i.ar, align 8
  %i.aw = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i9.i) #3 ; 4 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 144
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = tail call i32 %i.ay(ptr noundef %i.aw, i32 802868, i1 noundef zeroext true) #3, !inline_history !60
  %i.ba = or i32 %i.az, %.0.i.i8.i
  %i.bb = getelementptr i8, ptr %i.aw, i64 176
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void %i.bc(ptr noundef %i.aw, i32 802868, i32 noundef %i.ba, i1 noundef zeroext true) #3, !inline_history !61
  tail call void @intel_dmc_wl_put(ptr noundef %i.ar, i32 802868) #3
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @gen11_hpd_irq_setup(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4528
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 624      ; 4 uses
  %.pn14.i = load ptr, ptr %i.d, align 8          ; 3 uses
  %.not15.i = icmp eq ptr %.pn14.i, %i.d
  br i1 %.not15.i, label %intel_hpd_hotplug_irqs.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.pn17.i = phi ptr [ %.pn.i, %bb.c ], [ %.pn14.i, %bb.a ] ; 2 uses
  %.01316.i = phi i32 [ %.1.i, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr i8, ptr %.pn17.i, i64 480
  %i.f = load i32, ptr %i.e, align 8
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr [24 x i8], ptr %0, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 4560
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr [4 x i8], ptr %i.b, i64 %i.g
  %i.m = load i32, ptr %i.l, align 4
  %i.n = or i32 %i.m, %.01316.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.1.i = phi i32 [ %i.n, %bb.b ], [ %.01316.i, %.lr.ph.i ] ; 2 uses
  %.pn.i = load ptr, ptr %.pn17.i, align 8        ; 2 uses
  %.not.i = icmp eq ptr %.pn.i, %i.d
  br i1 %.not.i, label %.lr.ph.i13, label %.lr.ph.i, !llvm.loop !4

.lr.ph.i13:                                       ; preds = %bb.c, %.lr.ph.i13
  %.pn4.i = phi ptr [ %.pn.i14, %.lr.ph.i13 ], [ %.pn14.i, %bb.c ] ; 2 uses
  %.0113.i = phi i32 [ %i.t, %.lr.ph.i13 ], [ 0, %bb.c ]
  %i.o = getelementptr i8, ptr %.pn4.i, i64 480
  %i.p = load i32, ptr %i.o, align 8
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr [4 x i8], ptr %i.b, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4
  %i.t = or i32 %i.s, %.0113.i                    ; 3 uses
  %.pn.i14 = load ptr, ptr %.pn4.i, align 8       ; 2 uses
  %.not.i15 = icmp eq ptr %.pn.i14, %i.d
  br i1 %.not.i15, label %intel_hpd_hotplug_irqs.exit.loopexit, label %.lr.ph.i13, !llvm.loop !7

intel_hpd_hotplug_irqs.exit.loopexit:             ; preds = %.lr.ph.i13
  %i.u = xor i32 %.1.i, -1
  %i.v = and i32 %i.t, %i.u
  %i.w = xor i32 %i.t, -1
  br label %intel_hpd_hotplug_irqs.exit

intel_hpd_hotplug_irqs.exit:                      ; preds = %intel_hpd_hotplug_irqs.exit.loopexit, %bb.a
  %.013.lcssa.i30 = phi i32 [ 0, %bb.a ], [ %i.v, %intel_hpd_hotplug_irqs.exit.loopexit ]
  %.011.lcssa.i = phi i32 [ -1, %bb.a ], [ %i.w, %intel_hpd_hotplug_irqs.exit.loopexit ]
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 279668) #3
  %.val.i = load ptr, ptr %0, align 8
  %i.x = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #3 ; 4 uses
  %i.y = getelementptr i8, ptr %i.x, i64 144
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call i32 %i.z(ptr noundef %i.x, i32 279668, i1 noundef zeroext true) #3, !inline_history !0
  %i.ab = and i32 %i.aa, %.011.lcssa.i
  %i.ac = or i32 %i.ab, %.013.lcssa.i30
  %i.ad = getelementptr i8, ptr %i.x, i64 176
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef %i.x, i32 279668, i32 noundef %i.ac, i1 noundef zeroext true) #3, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 279668) #3
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 279668) #3
  %.val.i16 = load ptr, ptr %0, align 8
  %i.af = tail call ptr @to_intel_uncore(ptr noundef %.val.i16) #3 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 144
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call i32 %i.ah(ptr noundef %i.af, i32 range(i32 279668, 1506901) 279668, i1 noundef zeroext false) #3, !inline_history !11 ; 0 uses
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 279668) #3
  %i.aj = load ptr, ptr %0, align 8
  %i.ak = getelementptr i8, ptr %i.aj, i64 624    ; 3 uses
  %.pn12.i.i = load ptr, ptr %i.ak, align 8       ; 2 uses
  %.not13.i.i = icmp eq ptr %.pn12.i.i, %i.ak
  br i1 %.not13.i.i, label %gen11_tc_hpd_detection_setup.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %intel_hpd_hotplug_irqs.exit, %.lr.ph.i.i
  %.pn15.i.i = phi ptr [ %.pn.i.i, %.lr.ph.i.i ], [ %.pn12.i.i, %intel_hpd_hotplug_irqs.exit ] ; 2 uses
  %.01114.i.i = phi i32 [ %i.aq, %.lr.ph.i.i ], [ 0, %intel_hpd_hotplug_irqs.exit ]
  %i.al = getelementptr i8, ptr %.pn15.i.i, i64 480
  %i.am = load i32, ptr %i.al, align 8            ; 2 uses
  %.off.i.i.i = add i32 %i.am, -9
  %switch.i.i.i = icmp ult i32 %.off.i.i.i, 6
  %i.an = shl i32 %i.am, 2
  %i.ao = add i32 %i.an, -36
  %i.ap = shl i32 8, %i.ao
  %.0.i.i.i = select i1 %switch.i.i.i, i32 %i.ap, i32 0
  %i.aq = or i32 %.0.i.i.i, %.01114.i.i           ; 2 uses
  %.pn.i.i = load ptr, ptr %.pn15.i.i, align 8    ; 2 uses
  %.not.i.i = icmp eq ptr %.pn.i.i, %i.ak
  br i1 %.not.i.i, label %gen11_tc_hpd_detection_setup.exit, label %.lr.ph.i.i, !llvm.loop !8

gen11_tc_hpd_detection_setup.exit:                ; preds = %.lr.ph.i.i, %intel_hpd_hotplug_irqs.exit
  %.011.lcssa.i.i = phi i32 [ 0, %intel_hpd_hotplug_irqs.exit ], [ %i.aq, %.lr.ph.i.i ]
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 278584) #3
  %.val.i.i = load ptr, ptr %0, align 8
  %i.ar = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i) #3 ; 4 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 144
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call i32 %i.at(ptr noundef %i.ar, i32 278584, i1 noundef zeroext true) #3, !inline_history !62
  %i.av = and i32 %i.au, -8947849
  %i.aw = or i32 %i.av, %.011.lcssa.i.i
  %i.ax = getelementptr i8, ptr %i.ar, i64 176
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef %i.ar, i32 278584, i32 noundef %i.aw, i1 noundef zeroext true) #3, !inline_history !63
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 278584) #3
  %i.az = load ptr, ptr %0, align 8
  %i.ba = getelementptr i8, ptr %i.az, i64 624    ; 3 uses
  %.pn12.i.i17 = load ptr, ptr %i.ba, align 8     ; 2 uses
  %.not13.i.i18 = icmp eq ptr %.pn12.i.i17, %i.ba
  br i1 %.not13.i.i18, label %gen11_tbt_hpd_detection_setup.exit, label %.lr.ph.i.i19

.lr.ph.i.i19:                                     ; preds = %gen11_tc_hpd_detection_setup.exit, %.lr.ph.i.i19
  %.pn15.i.i20 = phi ptr [ %.pn.i.i25, %.lr.ph.i.i19 ], [ %.pn12.i.i17, %gen11_tc_hpd_detection_setup.exit ] ; 2 uses
  %.01114.i.i21 = phi i32 [ %i.bg, %.lr.ph.i.i19 ], [ 0, %gen11_tc_hpd_detection_setup.exit ]
  %i.bb = getelementptr i8, ptr %.pn15.i.i20, i64 480
  %i.bc = load i32, ptr %i.bb, align 8            ; 2 uses
  %.off.i.i.i22 = add i32 %i.bc, -9
  %switch.i.i.i23 = icmp ult i32 %.off.i.i.i22, 6
  %i.bd = shl i32 %i.bc, 2
  %i.be = add i32 %i.bd, -36
  %i.bf = shl i32 8, %i.be
  %.0.i.i.i24 = select i1 %switch.i.i.i23, i32 %i.bf, i32 0
  %i.bg = or i32 %.0.i.i.i24, %.01114.i.i21       ; 2 uses
  %.pn.i.i25 = load ptr, ptr %.pn15.i.i20, align 8 ; 2 uses
  %.not.i.i26 = icmp eq ptr %.pn.i.i25, %i.ba
  br i1 %.not.i.i26, label %gen11_tbt_hpd_detection_setup.exit, label %.lr.ph.i.i19, !llvm.loop !8

gen11_tbt_hpd_detection_setup.exit:               ; preds = %.lr.ph.i.i19, %gen11_tc_hpd_detection_setup.exit
  %.011.lcssa.i.i27 = phi i32 [ 0, %gen11_tc_hpd_detection_setup.exit ], [ %i.bg, %.lr.ph.i.i19 ]
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 278576) #3
  %.val.i.i28 = load ptr, ptr %0, align 8
  %i.bh = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i28) #3 ; 4 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 144
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = tail call i32 %i.bj(ptr noundef %i.bh, i32 278576, i1 noundef zeroext true) #3, !inline_history !64
  %i.bl = and i32 %i.bk, -8947849
  %i.bm = or i32 %i.bl, %.011.lcssa.i.i27
  %i.bn = getelementptr i8, ptr %i.bh, i64 176
  %i.bo = load ptr, ptr %i.bn, align 8
  tail call void %i.bo(ptr noundef %i.bh, i32 278576, i32 noundef %i.bm, i1 noundef zeroext true) #3, !inline_history !65
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 278576) #3
  %i.bp = getelementptr i8, ptr %0, i64 24
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = icmp sgt i32 %i.bq, 6
  br i1 %i.br, label %bb.d, label %bb.e

bb.d:                                             ; preds = %gen11_tbt_hpd_detection_setup.exit
  tail call void @icp_hpd_irq_setup(ptr noundef %0) #5, !srcloc !66
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %gen11_tbt_hpd_detection_setup.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @gen11_hpd_enable_detection(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %gen11_tc_hpd_enable_detection.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #3 ; 2 uses
  %.pr = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %gen11_tc_hpd_enable_detection.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %.pr) #3
  br label %gen11_tc_hpd_enable_detection.exit

gen11_tc_hpd_enable_detection.exit:               ; preds = %bb.a, %bb.b, %bb.c
  %i.d = phi ptr [ %i.b, %bb.c ], [ %i.b, %bb.b ], [ null, %bb.a ]
  %i.e = phi ptr [ %i.c, %bb.c ], [ null, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.f = getelementptr i8, ptr %0, i64 488        ; 2 uses
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %.off.i.i = add i32 %i.g, -9
  %switch.i.i = icmp ult i32 %.off.i.i, 6
  %i.h = shl i32 %i.g, 2
  %i.i = add i32 %i.h, -36
  %i.j = shl i32 8, %i.i
  %.0.i.i = select i1 %switch.i.i, i32 %i.j, i32 0
  tail call void @intel_dmc_wl_get(ptr noundef %i.e, i32 278584) #3
  %.val.i.i = load ptr, ptr %i.e, align 8
  %i.k = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i) #3 ; 4 uses
  %i.l = getelementptr i8, ptr %i.k, i64 144
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call i32 %i.m(ptr noundef %i.k, i32 278584, i1 noundef zeroext true) #3, !inline_history !67
  %i.o = or i32 %i.n, %.0.i.i
  %i.p = getelementptr i8, ptr %i.k, i64 176
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef %i.k, i32 278584, i32 noundef %i.o, i1 noundef zeroext true) #3, !inline_history !68
  tail call void @intel_dmc_wl_put(ptr noundef %i.e, i32 278584) #3
  %i.r = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i6 = icmp eq ptr %i.r, null
  br i1 %.not.i6, label %gen11_tbt_hpd_enable_detection.exit, label %bb.d

bb.d:                                             ; preds = %gen11_tc_hpd_enable_detection.exit
  %i.s = tail call ptr @__drm_to_display(ptr noundef nonnull %i.r) #3
  br label %gen11_tbt_hpd_enable_detection.exit

gen11_tbt_hpd_enable_detection.exit:              ; preds = %gen11_tc_hpd_enable_detection.exit, %bb.d
  %i.t = phi ptr [ %i.s, %bb.d ], [ null, %gen11_tc_hpd_enable_detection.exit ] ; 3 uses
  %i.u = load i32, ptr %i.f, align 8              ; 2 uses
  %.off.i.i7 = add i32 %i.u, -9
  %switch.i.i8 = icmp ult i32 %.off.i.i7, 6
  %i.v = shl i32 %i.u, 2
  %i.w = add i32 %i.v, -36
  %i.x = shl i32 8, %i.w
  %.0.i.i9 = select i1 %switch.i.i8, i32 %i.x, i32 0
  tail call void @intel_dmc_wl_get(ptr noundef %i.t, i32 278576) #3
  %.val.i.i10 = load ptr, ptr %i.t, align 8
  %i.y = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i10) #3 ; 4 uses
  %i.z = getelementptr i8, ptr %i.y, i64 144
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call i32 %i.aa(ptr noundef %i.y, i32 278576, i1 noundef zeroext true) #3, !inline_history !69
  %i.ac = or i32 %i.ab, %.0.i.i9
  %i.ad = getelementptr i8, ptr %i.y, i64 176
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef %i.y, i32 278576, i32 noundef %i.ac, i1 noundef zeroext true) #3, !inline_history !70
  tail call void @intel_dmc_wl_put(ptr noundef %i.t, i32 278576) #3
  %i.af = getelementptr i8, ptr %i.d, i64 24
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = icmp sgt i32 %i.ag, 6
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %gen11_tbt_hpd_enable_detection.exit
  tail call void @icp_hpd_enable_detection(ptr noundef %0) #5, !srcloc !71
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %gen11_tbt_hpd_enable_detection.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bxt_hpd_irq_setup(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4528
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 624      ; 4 uses
  %.pn14.i = load ptr, ptr %i.d, align 8          ; 3 uses
  %.not15.i = icmp eq ptr %.pn14.i, %i.d
  br i1 %.not15.i, label %intel_hpd_hotplug_irqs.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.pn17.i = phi ptr [ %.pn.i, %bb.c ], [ %.pn14.i, %bb.a ] ; 2 uses
  %.01316.i = phi i32 [ %.1.i, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr i8, ptr %.pn17.i, i64 480
  %i.f = load i32, ptr %i.e, align 8
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr [24 x i8], ptr %0, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 4560
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr [4 x i8], ptr %i.b, i64 %i.g
  %i.m = load i32, ptr %i.l, align 4
  %i.n = or i32 %i.m, %.01316.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.1.i = phi i32 [ %i.n, %bb.b ], [ %.01316.i, %.lr.ph.i ] ; 2 uses
  %.pn.i = load ptr, ptr %.pn17.i, align 8        ; 2 uses
  %.not.i = icmp eq ptr %.pn.i, %i.d
  br i1 %.not.i, label %.lr.ph.i7, label %.lr.ph.i, !llvm.loop !4

.lr.ph.i7:                                        ; preds = %bb.c, %.lr.ph.i7
  %.pn4.i = phi ptr [ %.pn.i8, %.lr.ph.i7 ], [ %.pn14.i, %bb.c ] ; 2 uses
  %.0113.i = phi i32 [ %i.t, %.lr.ph.i7 ], [ 0, %bb.c ]
  %i.o = getelementptr i8, ptr %.pn4.i, i64 480
  %i.p = load i32, ptr %i.o, align 8
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr [4 x i8], ptr %i.b, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4
  %i.t = or i32 %i.s, %.0113.i                    ; 2 uses
  %.pn.i8 = load ptr, ptr %.pn4.i, align 8        ; 2 uses
  %.not.i9 = icmp eq ptr %.pn.i8, %i.d
  br i1 %.not.i9, label %intel_hpd_hotplug_irqs.exit, label %.lr.ph.i7, !llvm.loop !7

intel_hpd_hotplug_irqs.exit:                      ; preds = %.lr.ph.i7, %bb.a
  %.013.lcssa.i11 = phi i32 [ 0, %bb.a ], [ %.1.i, %.lr.ph.i7 ]
  %.011.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.t, %.lr.ph.i7 ]
  tail call void @bdw_update_port_irq(ptr noundef %0, i32 noundef %.011.lcssa.i, i32 noundef %.013.lcssa.i11) #3
  %i.u = load ptr, ptr %0, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 624      ; 2 uses
  %.pn12.i.i = load ptr, ptr %i.v, align 8        ; 2 uses
  %.not13.i.i = icmp eq ptr %.pn12.i.i, %i.v
  br i1 %.not13.i.i, label %bxt_hpd_detection_setup.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %intel_hpd_hotplug_irqs.exit, %bxt_hotplug_enables.exit.i
  %.pn15.i.i = phi ptr [ %.pn.i.i, %bxt_hotplug_enables.exit.i ], [ %.pn12.i.i, %intel_hpd_hotplug_irqs.exit ] ; 5 uses
  %.01114.i.i = phi i32 [ %i.ah, %bxt_hotplug_enables.exit.i ], [ 0, %intel_hpd_hotplug_irqs.exit ]
  %i.w = getelementptr i8, ptr %.pn15.i.i, i64 480
  %i.x = load i32, ptr %i.w, align 8
  switch i32 %i.x, label %bxt_hotplug_enables.exit.i [
    i32 4, label %bb.d
    i32 5, label %bb.e
    i32 6, label %bb.f
  ]

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.y = getelementptr i8, ptr %.pn15.i.i, i64 488
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call zeroext i1 @intel_bios_encoder_hpd_invert(ptr noundef %i.z) #3
  %spec.select.i.i = select i1 %i.aa, i32 402653184, i32 268435456
  br label %bxt_hotplug_enables.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ab = getelementptr i8, ptr %.pn15.i.i, i64 488
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call zeroext i1 @intel_bios_encoder_hpd_invert(ptr noundef %i.ac) #3
  %spec.select11.i.i = select i1 %i.ad, i32 24, i32 16
  br label %bxt_hotplug_enables.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ae = getelementptr i8, ptr %.pn15.i.i, i64 488
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call zeroext i1 @intel_bios_encoder_hpd_invert(ptr noundef %i.af) #3
  %spec.select12.i.i = select i1 %i.ag, i32 6144, i32 4096
  br label %bxt_hotplug_enables.exit.i

bxt_hotplug_enables.exit.i:                       ; preds = %bb.f, %bb.e, %bb.d, %.lr.ph.i.i
  %.010.i.i = phi i32 [ %spec.select12.i.i, %bb.f ], [ %spec.select.i.i, %bb.d ], [ %spec.select11.i.i, %bb.e ], [ 0, %.lr.ph.i.i ]
  %i.ah = or i32 %.010.i.i, %.01114.i.i           ; 2 uses
  %.pn.i.i = load ptr, ptr %.pn15.i.i, align 8    ; 2 uses
  %i.ai = load ptr, ptr %0, align 8
  %i.aj = getelementptr i8, ptr %i.ai, i64 624
  %.not.i.i = icmp eq ptr %.pn.i.i, %i.aj
  br i1 %.not.i.i, label %bxt_hpd_detection_setup.exit, label %.lr.ph.i.i, !llvm.loop !8

bxt_hpd_detection_setup.exit:                     ; preds = %bxt_hotplug_enables.exit.i, %intel_hpd_hotplug_irqs.exit
  %.011.lcssa.i.i = phi i32 [ 0, %intel_hpd_hotplug_irqs.exit ], [ %i.ah, %bxt_hotplug_enables.exit.i ]
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 802864) #3
  %.val.i.i = load ptr, ptr %0, align 8
  %i.ak = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i) #3 ; 4 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 144
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call i32 %i.am(ptr noundef %i.ak, i32 802864, i1 noundef zeroext true) #3, !inline_history !72
  %i.ao = and i32 %i.an, -402659353
  %i.ap = or i32 %i.ao, %.011.lcssa.i.i
  %i.aq = getelementptr i8, ptr %i.ak, i64 176
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef %i.ak, i32 802864, i32 noundef %i.ap, i1 noundef zeroext true) #3, !inline_history !73
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 802864) #3
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bxt_hpd_enable_detection(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #3
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 488
  %i.e = load i32, ptr %i.d, align 8
  switch i32 %i.e, label %bxt_hotplug_enables.exit [
    i32 4, label %bxt_hotplug_mask.exit.thread
    i32 5, label %bxt_hotplug_mask.exit.thread8
    i32 6, label %bxt_hotplug_mask.exit.thread11
  ]

bxt_hotplug_mask.exit.thread:                     ; preds = %bb.c
  %i.f = getelementptr i8, ptr %0, i64 496
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call zeroext i1 @intel_bios_encoder_hpd_invert(ptr noundef %i.g) #3
  %spec.select.i = select i1 %i.h, i32 402653184, i32 268435456
  br label %bxt_hotplug_enables.exit

bxt_hotplug_mask.exit.thread8:                    ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 496
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call zeroext i1 @intel_bios_encoder_hpd_invert(ptr noundef %i.j) #3
  %spec.select11.i = select i1 %i.k, i32 24, i32 16
  br label %bxt_hotplug_enables.exit

bxt_hotplug_mask.exit.thread11:                   ; preds = %bb.c
  %i.l = getelementptr i8, ptr %0, i64 496
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call zeroext i1 @intel_bios_encoder_hpd_invert(ptr noundef %i.m) #3
  %spec.select12.i = select i1 %i.n, i32 6144, i32 4096
  br label %bxt_hotplug_enables.exit

bxt_hotplug_enables.exit:                         ; preds = %bb.c, %bxt_hotplug_mask.exit.thread, %bxt_hotplug_mask.exit.thread8, %bxt_hotplug_mask.exit.thread11
  %i.o = phi i32 [ -6145, %bxt_hotplug_mask.exit.thread11 ], [ -402653185, %bxt_hotplug_mask.exit.thread ], [ -25, %bxt_hotplug_mask.exit.thread8 ], [ -1, %bb.c ]
  %.010.i = phi i32 [ %spec.select12.i, %bxt_hotplug_mask.exit.thread11 ], [ %spec.select.i, %bxt_hotplug_mask.exit.thread ], [ %spec.select11.i, %bxt_hotplug_mask.exit.thread8 ], [ 0, %bb.c ]
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 802864) #3
  %.val.i = load ptr, ptr %i.c, align 8
  %i.p = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #3 ; 4 uses
  %i.q = getelementptr i8, ptr %i.p, i64 144
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call i32 %i.r(ptr noundef %i.p, i32 802864, i1 noundef zeroext true) #3, !inline_history !0
  %i.t = and i32 %i.s, %i.o
  %i.u = or i32 %i.t, %.010.i
  %i.v = getelementptr i8, ptr %i.p, i64 176
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef %i.p, i32 802864, i32 noundef %i.u, i1 noundef zeroext true) #3, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 802864) #3
  ret void
end_hunk_0
