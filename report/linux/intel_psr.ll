inline.NumInlined: 742
inline.NumDeleted: 170
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@psr_compute_idle_frames:bb.a

__drm_to_dev.exit:                                ; preds = %bb.d, %bb.e
  %i.s = phi ptr [ %i.r, %bb.e ], [ null, %bb.d ]
  %i.t = tail call ptr @dev_driver_string(ptr noundef %i.s) #11 ; 0 uses
  %i.u = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.7, ptr nonnull @.str.9, i32 941, i32 2321, i64 16) #13, !srcloc !157
  %i.v = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i40 = icmp eq ptr %i.v, null
  br i1 %.not.i40, label %__drm_to_dev.exit41, label %bb.f

bb.f:                                             ; preds = %__drm_to_dev.exit
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  br label %__drm_to_dev.exit41

__drm_to_dev.exit41:                              ; preds = %__drm_to_dev.exit, %bb.f
  %i.y = phi ptr [ %i.x, %bb.f ], [ null, %__drm_to_dev.exit ]
  %i.z = tail call ptr @dev_driver_string(ptr noundef %i.y) #11
  %i.aa = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not.i42 = icmp eq ptr %i.aa, null
  br i1 %.not.i42, label %__drm_to_dev.exit43, label %bb.g

bb.g:                                             ; preds = %__drm_to_dev.exit41
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  br label %__drm_to_dev.exit43

__drm_to_dev.exit43:                              ; preds = %__drm_to_dev.exit41, %bb.g
  %i.ad = phi ptr [ %i.ac, %bb.g ], [ null, %__drm_to_dev.exit41 ] ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 80
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not.i44 = icmp eq ptr %i.af, null
  br i1 %.not.i44, label %bb.h, label %dev_name.exit47

bb.h:                                             ; preds = %__drm_to_dev.exit43
  %.val.i46 = load ptr, ptr %i.ad, align 8
  br label %dev_name.exit47

dev_name.exit47:                                  ; preds = %__drm_to_dev.exit43, %bb.h
  %.0.i45 = phi ptr [ %.val.i46, %bb.h ], [ %i.af, %__drm_to_dev.exit43 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.u, ptr noundef %i.z, ptr noundef %.0.i45, ptr noundef nonnull @.str.117) #11
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !158
  br label %bb.i

bb.i:                                             ; preds = %dev_name.exit47, %bb.c
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.n, i32 15)
  %i.ag = trunc nuw nsw i32 %spec.select to i8
  ret i8 %i.ag
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_de_wait_for_clear_ms(ptr noundef, i32, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_display_power_get_current_dc_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_crtc_for_pipe(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @drm_crtc_vblank_crtc(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_dp_source_supports_tps3(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_dsb_reg_write(ptr noundef, i32, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_vrr_possible(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_plane_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_i915_reg_rw(ptr noundef, i1 noundef zeroext, i32, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_alpm_enable_sink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i8 @intel_dp_as_sdp_transmission_time() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_alpm_configure(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_vrr_psr_frame_change_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_dp_aux_pack(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_dsb_poll(ptr noundef, i32, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @drm_atomic_commit_alloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_connector_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_crtc_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_atomic_commit(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_atomic_commit_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_modeset_backoff(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_modeset_drop_locks(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__drm_atomic_commit_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @intel_psr_configure_full_frame_update(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -504
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 8 uses
  %i.e = getelementptr i8, ptr %0, i64 3336
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 3382
  %i.h = load i8, ptr %i.g, align 2, !range !10, !noundef !11
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.d, i64 1168
  %i.k = load i16, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp ugt i16 %i.k, 19
  br i1 %i.l, label %bb.e, label %man_trk_ctl_continuos_full_frame.exit

bb.e:                                             ; preds = %bb.d
  %i.m = shl i32 %i.f, 12
  %i.n = add i32 %i.m, 395544                     ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.d, i32 %i.n) #11
  %.val.i = load ptr, ptr %i.d, align 8
  %i.o = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #11 ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 176
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef %i.o, i32 %i.n, i32 noundef 2, i1 noundef zeroext true) #11, !inline_history !159
  br label %.sink.split

man_trk_ctl_continuos_full_frame.exit:            ; preds = %bb.d
  %i.r = getelementptr i8, ptr %i.d, i64 1160
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 80       ; 2 uses
  %i.u = sext i32 %i.f to i64
  %i.v = getelementptr [4 x i8], ptr %i.t, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4
  %i.x = load i32, ptr %i.t, align 4
  %i.y = getelementptr i8, ptr %i.s, i64 48
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = add i32 %i.w, 395536
  %i.ab = sub i32 %i.aa, %i.x
  %i.ac = add i32 %i.ab, %i.z                     ; 3 uses
  %i.ad = getelementptr i8, ptr %i.d, i64 8
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = and i64 %i.ae, 4503599627370496
  %.not.i = icmp eq i64 %i.af, 0
  %i.ag = icmp ult i16 %i.k, 14
  %1 = and i1 %.not.i, %i.ag
  %i.ah = select i1 %1, i32 -2147483634, i32 -2147459072
  tail call void @intel_dmc_wl_get(ptr noundef %i.d, i32 %i.ac) #11
  %.val.i19 = load ptr, ptr %i.d, align 8
  %i.ai = tail call ptr @to_intel_uncore(ptr noundef %.val.i19) #11 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 176
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef %i.ai, i32 %i.ac, i32 noundef %i.ah, i1 noundef zeroext true) #11, !inline_history !159
  br label %.sink.split

.sink.split:                                      ; preds = %man_trk_ctl_continuos_full_frame.exit, %bb.e
  %.sink = phi i32 [ %i.n, %bb.e ], [ %i.ac, %man_trk_ctl_continuos_full_frame.exit ]
  tail call void @intel_dmc_wl_put(ptr noundef %i.d, i32 %.sink) #11
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.c
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_init_generic(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_alpm_get_error(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_display_power_put_unchecked(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @simple_attr_read(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @simple_attr_write(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @i915_edp_psr_debug_fops_open(ptr noundef %0, ptr noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @simple_attr_open(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @i915_edp_psr_debug_get, ptr noundef nonnull @i915_edp_psr_debug_set, ptr noundef nonnull @.str.137) #11
  ret i32 %i.a
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none)
define internal range(i32 -19, 1) i32 @i915_edp_psr_debug_get(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #8 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1160
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 46
  %i.d = load i16, ptr %i.c, align 2
  %i.e = and i16 %i.d, 4096
  %.not = icmp eq i16 %i.e, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 624      ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.pn.in = phi ptr [ %i.g, %bb.b ], [ %.pn, %bb.d ]
  %.pn = load ptr, ptr %.pn.in, align 8           ; 5 uses
  %.not17 = icmp eq ptr %.pn, %i.g
  br i1 %.not17, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.015 = getelementptr i8, ptr %.pn, i64 -8      ; 5 uses
  %i.h = tail call zeroext i1 @intel_encoder_can_psr(ptr noundef %.015) #10
  br i1 %i.h, label %bb.e, label %bb.c, !llvm.loop !160

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %.pn, i64 144
  %.val.i.i = load i32, ptr %i.i, align 8
  switch i32 %.val.i.i, label %intel_encoder_is_dig_port.exit.thread.fold.split.i.i [
    i32 10, label %enc_to_intel_dp.exit
    i32 7, label %enc_to_intel_dp.exit
    i32 8, label %enc_to_intel_dp.exit
    i32 6, label %enc_to_intel_dp.exit
    i32 11, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %.pn, i64 504
  %i.k = load ptr, ptr %i.j, align 8
  br label %enc_to_intel_dp.exit

intel_encoder_is_dig_port.exit.thread.fold.split.i.i: ; preds = %bb.e
  br label %enc_to_intel_dp.exit

enc_to_intel_dp.exit:                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.f, %intel_encoder_is_dig_port.exit.thread.fold.split.i.i
  %.0.i.i = phi ptr [ %.015, %bb.e ], [ %i.k, %bb.f ], [ %.015, %bb.e ], [ %.015, %bb.e ], [ %.015, %bb.e ], [ null, %intel_encoder_is_dig_port.exit.thread.fold.split.i.i ]
  %i.l = getelementptr i8, ptr %.0.i.i, i64 3824
  %i.m = load volatile i32, ptr %i.l, align 8
  %i.n = zext i32 %i.m to i64
  store i64 %i.n, ptr %1, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.a, %enc_to_intel_dp.exit
  %.0 = phi i32 [ 0, %enc_to_intel_dp.exit ], [ -19, %bb.a ], [ -19, %bb.c ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @i915_edp_psr_debug_set(ptr noundef %0, i64 noundef %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1160
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 46
  %i.d = load i16, ptr %i.c, align 2
  %i.e = and i16 %i.d, 4096
  %.not = icmp eq i16 %i.e, 0
  br i1 %.not, label %.loopexit28, label %.split

.split:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 624      ; 2 uses
  %.pn32 = load ptr, ptr %i.g, align 8            ; 2 uses
  %.not2734 = icmp eq ptr %.pn32, %i.g
  br i1 %.not2734, label %.loopexit28, label %.lr.ph39

.lr.ph39:                                         ; preds = %.split, %.loopexit
  %.pn36 = phi ptr [ %.pn, %.loopexit ], [ %.pn32, %.split ] ; 4 uses
  %.02435 = phi i32 [ %.2, %.loopexit ], [ -19, %.split ] ; 2 uses
  %i.h = phi ptr [ %.pr, %.loopexit ], [ %i.f, %.split ] ; 2 uses
  %.02238 = getelementptr i8, ptr %.pn36, i64 -8  ; 5 uses
  %i.i = tail call zeroext i1 @intel_encoder_can_psr(ptr noundef %.02238) #10
  br i1 %i.i, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.lr.ph39
  %i.j = getelementptr i8, ptr %.pn36, i64 144
  %.val.i.i = load i32, ptr %i.j, align 8
  switch i32 %.val.i.i, label %intel_encoder_is_dig_port.exit.thread.fold.split.i.i [
    i32 10, label %enc_to_intel_dp.exit
    i32 7, label %enc_to_intel_dp.exit
    i32 8, label %enc_to_intel_dp.exit
    i32 6, label %enc_to_intel_dp.exit
    i32 11, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %.pn36, i64 504
  %i.l = load ptr, ptr %i.k, align 8
  br label %enc_to_intel_dp.exit

intel_encoder_is_dig_port.exit.thread.fold.split.i.i: ; preds = %bb.b
  br label %enc_to_intel_dp.exit

enc_to_intel_dp.exit:                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.c, %intel_encoder_is_dig_port.exit.thread.fold.split.i.i
  %.0.i.i = phi ptr [ %.02238, %bb.b ], [ %i.l, %bb.c ], [ %.02238, %bb.b ], [ %.02238, %bb.b ], [ %.02238, %bb.b ], [ null, %intel_encoder_is_dig_port.exit.thread.fold.split.i.i ]
  %i.m = getelementptr i8, ptr %.0.i.i, i64 504
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.d

bb.d:                                             ; preds = %enc_to_intel_dp.exit
  %i.n = getelementptr i8, ptr %i.h, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %enc_to_intel_dp.exit, %bb.d
  %i.p = phi ptr [ %i.o, %bb.d ], [ null, %enc_to_intel_dp.exit ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.p, i32 noundef 2, ptr noundef nonnull @.str.138, i64 noundef %1) #11
  %i.q = tail call ptr @intel_display_rpm_get(ptr noundef %0) #11 ; 2 uses
  %.not2629 = icmp eq ptr %i.q, null
  br i1 %.not2629, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %__drm_to_dev.exit
  %i.r = tail call i32 @intel_psr_debug_set(ptr noundef %i.m, i64 noundef %1) #10
  tail call void @intel_display_rpm_put(ptr noundef %0, ptr noundef nonnull %i.q) #11
  br label %.loopexit

.loopexit:                                        ; preds = %__drm_to_dev.exit, %.lr.ph, %.lr.ph39
  %.2 = phi i32 [ %.02435, %.lr.ph39 ], [ %i.r, %.lr.ph ], [ %.02435, %__drm_to_dev.exit ] ; 2 uses
  %.pr = load ptr, ptr %0, align 8                ; 2 uses
  %.pn = load ptr, ptr %.pn36, align 8            ; 2 uses
  %i.s = getelementptr i8, ptr %.pr, i64 624
  %.not27 = icmp eq ptr %.pn, %i.s
  br i1 %.not27, label %.loopexit28, label %.lr.ph39, !llvm.loop !161

.loopexit28:                                      ; preds = %.loopexit, %.split, %bb.a
  %.0 = phi i32 [ -19, %bb.a ], [ -19, %.split ], [ %.2, %.loopexit ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_display_rpm_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_display_rpm_put(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3
end_hunk_0
