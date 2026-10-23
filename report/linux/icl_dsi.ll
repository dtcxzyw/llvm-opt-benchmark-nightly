Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/icl_dsi?download=true
inline.NumInlined: 314
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumUnrolled: 38
begin_hunk_0_@wait_for_payload_credits:bb.a
  %i.f = tail call i64 @ktime_get() #8
  %i.g = icmp sgt i64 %i.f, %i.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !136
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.e) #8
  %.val.i.i = load ptr, ptr %0, align 8
  %i.h = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i) #8 ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 144
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call i32 %i.j(ptr noundef %i.h, i32 %i.e, i1 noundef zeroext true) #8, !inline_history !135
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.e) #8
  %i.l = and i32 %i.k, 255
  %.not = icmp samesign uge i32 %i.l, %2          ; 3 uses
  %brmerge = select i1 %.not, i1 true, i1 %i.g
  br i1 %brmerge, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @usleep_range_state(i64 noundef 3, i64 noundef 10, i32 noundef 2) #8
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !19
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.e, %bb.f
  %i.p = phi ptr [ %i.o, %bb.f ], [ null, %bb.e ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.p, ptr noundef @.str.50) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %__drm_to_dev.exit
  ret i1 %.not
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_nop(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @usleep_range_state(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_backlight_enable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_panel_prepare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_crtc_vblank_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_de_wait_for_set_ms(ptr noundef, i32, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_panel_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_backlight_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_crtc_vblank_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_dsc_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @skl_scaler_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_de_wait_for_clear_ms(ptr noundef, i32, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_display_power_put_unchecked(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_ddi_get_clock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @icl_ddi_combo_get_pll(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @bdw_get_pipe_misc_bpp(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_panel_compute_config(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_pfit_compute_config(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_bios_get_dsc_params(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_dsc_compute_params(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_dsc_compute_rc_parameters(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_dsc_enable_on_crtc(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_display_power_get_if_enabled(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_panel_detect(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_connector_register(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_connector_unregister(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_connector_destroy(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_digital_connector_duplicate_state(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_digital_connector_atomic_set_property(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_digital_connector_atomic_get_property(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_dsi_get_modes(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @gen11_dsi_mode_valid(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  %i.d = tail call i32 @intel_cpu_transcoder_mode_valid(ptr noundef %i.c, ptr noundef %1) #8 ; 2 uses
  %.not10 = icmp eq i32 %i.d, 0
  br i1 %.not10, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @intel_dsi_mode_valid(ptr noundef %0, ptr noundef %1) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i32 [ %i.e, %bb.d ], [ %i.d, %bb.c ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_digital_connector_atomic_check(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_cpu_transcoder_mode_valid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_dsi_mode_valid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal noundef i32 @gen11_dsi_host_attach(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #6 align 16 prefalign(16) {
bb.a:
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal noundef i32 @gen11_dsi_host_detach(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #6 align 16 prefalign(16) {
bb.a:
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @gen11_dsi_host_transfer(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.mipi_dsi_packet, align 8    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false), !annotation !141
  %i.a = call i32 @mipi_dsi_create_packet(ptr noundef nonnull %2, ptr noundef %1) #8 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %i.a to i64
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 2
  %i.e = load i16, ptr %i.d, align 2
  %i.f = and i16 %i.e, 2
  %.not.not = icmp eq i16 %i.f, 0
  %i.g = getelementptr i8, ptr %1, i64 1
  %i.h = load i8, ptr %i.g, align 1
  %i.i = call zeroext i1 @mipi_dsi_packet_format_is_long(i8 noundef zeroext %i.h) #8
  br i1 %i.i, label %bb.d, label %dsi_send_pkt_payld.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = call ptr @__drm_to_display(ptr noundef nonnull %i.l) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = phi ptr [ %i.m, %bb.e ], [ null, %bb.d ] ; 5 uses
  %i.o = getelementptr i8, ptr %0, i64 40
  %i.p = load i32, ptr %i.o, align 8
  %i.q = icmp eq i32 %i.p, 0
  %..i.i = select i1 %i.q, i32 5, i32 6           ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load i64, ptr %i.r, align 8
  %i.t = trunc i64 %i.s to i32                    ; 4 uses
  %i.u = icmp ugt i32 %i.t, 256
  br i1 %i.u, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %__drm_to_dev.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.h, %bb.g
  %i.y = phi ptr [ %i.x, %bb.h ], [ null, %bb.g ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.y, ptr noundef @.str.73) #10
  br label %.loopexit

bb.i:                                             ; preds = %bb.f
  %.not49.i = icmp eq i32 %i.t, 0
  br i1 %.not49.i, label %dsi_send_pkt_payld.exit, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = shl nuw nsw i32 %..i.i, 11
  %i.ac = add nuw nsw i32 %i.ab, 428292           ; 3 uses
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.i, %.lr.ph45.i
  %indvars.iv.i = phi i32 [ %i.t, %.lr.ph45.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 5 uses
  %.03243.i = phi i32 [ 0, %.lr.ph45.i ], [ %i.ba, %._crit_edge.i ]
  %.03342.i = phi ptr [ %i.aa, %.lr.ph45.i ], [ %i.aw, %._crit_edge.i ] ; 5 uses
  %umax = call i32 @llvm.umax.i32(i32 %indvars.iv.i, i32 1)
  %umin = call i32 @llvm.umin.i32(i32 %umax, i32 4)
  %i.ad = call fastcc zeroext i1 @wait_for_payload_credits(ptr noundef %i.n, i32 noundef %..i.i, i32 noundef 1) #12, !srcloc !142
  br i1 %i.ad, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.j
  %i.ae = load i8, ptr %.03342.i, align 1
  %i.af = zext i8 %i.ae to i32                    ; 2 uses
  %exitcond.not.i = icmp ult i32 %indvars.iv.i, 2
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.ag = getelementptr i8, ptr %.03342.i, i64 1
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 8
  %i.ak = or disjoint i32 %i.aj, %i.af            ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %indvars.iv.i, 2
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.al = getelementptr i8, ptr %.03342.i, i64 2
  %i.am = load i8, ptr %i.al, align 1
  %i.an = zext i8 %i.am to i32
  %i.ao = shl nuw nsw i32 %i.an, 16
  %i.ap = or disjoint i32 %i.ao, %i.ak            ; 2 uses
  %exitcond.not.i.2 = icmp eq i32 %indvars.iv.i, 3
  br i1 %exitcond.not.i.2, label %._crit_edge.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.aq = getelementptr i8, ptr %.03342.i, i64 3
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i32
  %i.at = shl nuw i32 %i.as, 24
  %i.au = or disjoint i32 %i.at, %i.ap
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.3, %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.i
  %.lcssa = phi i32 [ %i.af, %.lr.ph.i ], [ %i.ak, %.lr.ph.i.1 ], [ %i.ap, %.lr.ph.i.2 ], [ %i.au, %.lr.ph.i.3 ]
  %i.av = zext nneg i32 %umin to i64
  %i.aw = getelementptr i8, ptr %.03342.i, i64 %i.av
  call void @intel_dmc_wl_get(ptr noundef %i.n, i32 %i.ac) #8
  %.val.i.i = load ptr, ptr %i.n, align 8
  %i.ax = call ptr @to_intel_uncore(ptr noundef %.val.i.i) #8 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 176
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef %i.ax, i32 %i.ac, i32 noundef %.lcssa, i1 noundef zeroext true) #8, !inline_history !137
  call void @intel_dmc_wl_put(ptr noundef %i.n, i32 %i.ac) #8
  %i.ba = add nuw nsw i32 %.03243.i, 4            ; 2 uses
  %i.bb = icmp ult i32 %i.ba, %i.t
  %indvars.iv.next.i = add i32 %indvars.iv.i, -4
  br i1 %i.bb, label %bb.j, label %dsi_send_pkt_payld.exit, !llvm.loop !138

dsi_send_pkt_payld.exit:                          ; preds = %._crit_edge.i, %bb.i, %bb.c
  %i.bc = getelementptr i8, ptr %0, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %.not.i18 = icmp eq ptr %i.be, null
  br i1 %.not.i18, label %bb.l, label %bb.k

bb.k:                                             ; preds = %dsi_send_pkt_payld.exit
  %i.bf = call ptr @__drm_to_display(ptr noundef nonnull %i.be) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %dsi_send_pkt_payld.exit
  %i.bg = phi ptr [ %i.bf, %bb.k ], [ null, %dsi_send_pkt_payld.exit ] ; 7 uses
  %i.bh = getelementptr i8, ptr %0, i64 40
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = icmp eq i32 %i.bi, 0
  %..i.i19 = select i1 %i.bj, i32 5, i32 6        ; 2 uses
  %i.bk = call fastcc zeroext i1 @wait_for_header_credits(ptr noundef %i.bg, i32 noundef %..i.i19, i32 noundef 1) #12, !srcloc !143
  br i1 %i.bk, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.bl = shl nuw nsw i32 %..i.i19, 11
  %i.bm = add nuw nsw i32 %i.bl, 428288           ; 6 uses
  call void @intel_dmc_wl_get(ptr noundef %i.bg, i32 %i.bm) #8
  %.val.i.i20 = load ptr, ptr %i.bg, align 8
  %i.bn = call ptr @to_intel_uncore(ptr noundef %.val.i.i20) #8 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 144
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = call i32 %i.bp(ptr noundef %i.bn, i32 %i.bm, i1 noundef zeroext true) #8, !inline_history !139
  call void @intel_dmc_wl_put(ptr noundef %i.bg, i32 %i.bm) #8
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  %.not30.i = icmp eq ptr %i.bs, null
  %i.bt = and i32 %i.bq, 251658240
  %masksel.i = select i1 %.not30.i, i32 0, i32 -2147483648
  %.1.v.i = select i1 %.not.not, i32 268435456, i32 1073741824
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bv = load i8, ptr %i.bu, align 8
  %i.bw = zext i8 %i.bv to i32                    ; 2 uses
  %i.bx = shl nuw nsw i32 %i.bw, 6
  %i.by = and i32 %i.bx, 12288
  %i.bz = and i32 %i.bw, 63
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 9
  %3 = load i16, ptr %i.ca, align 1
  %i.cb = zext i16 %3 to i32
  %i.cc = shl nuw nsw i32 %i.cb, 8
  %.1.i.a = or disjoint i32 %i.bt, %.1.v.i
  %i.cd = or disjoint i32 %.1.i.a, %masksel.i
  %i.ce = or disjoint i32 %i.cd, %i.bz
  %i.cf = or disjoint i32 %i.ce, %i.by
  %i.cg = or i32 %i.cf, %i.cc
  call void @intel_dmc_wl_get(ptr noundef %i.bg, i32 %i.bm) #8
  %.val.i31.i = load ptr, ptr %i.bg, align 8
  %i.ch = call ptr @to_intel_uncore(ptr noundef %.val.i31.i) #8 ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 176
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef %i.ch, i32 %i.bm, i32 noundef %i.cg, i1 noundef zeroext true) #8, !inline_history !140
  call void @intel_dmc_wl_put(ptr noundef %i.bg, i32 %i.bm) #8
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = add i64 %i.cl, 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.l, %__drm_to_dev.exit.i, %bb.m, %bb.b
  %.014 = phi i64 [ %i.c, %bb.b ], [ %i.cm, %bb.m ], [ -22, %__drm_to_dev.exit.i ], [ -16, %bb.l ], [ -16, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret i64 %.014
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @mipi_dsi_create_packet(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @mipi_dsi_packet_format_is_long(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_dsi_log_params(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_attach_scaling_mode_property(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_connector_set_panel_orientation_with_quirk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_dsi_get_panel_orientation(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { noredzone nounwind "no-builtin-wcslen" }
attributes #9 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }
attributes #10 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #11 = { nounwind }
attributes #12 = { noredzone "no-builtin-wcslen" }

!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !{null, null, null, null}
!1 = distinct !{null, null, null, null}
!2 = distinct !{null, null}
!3 = distinct !{null, null}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 8, !"cf-protection-branch", i32 1}
!6 = !{i32 4, !"function_return_thunk_extern", i32 1}
!7 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!8 = !{i32 1, !"Code Model", i32 2}
!9 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!10 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!11 = !{i32 1, !"override-stack-alignment", i32 8}
!12 = !{i32 4, !"SkipRaxSetup", i32 1}
!13 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!14 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!15 = !{i8 0, i8 2}
!16 = !{}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.peeled.count", i32 1}
!19 = !{i64 2382565}
!20 = distinct !{null, null, null}
!21 = distinct !{null, null, null}
!22 = !{i64 2162700108, i64 2162700135, i64 2162700516, i64 2162700549, i64 2162700584, i64 2162700600, i64 2162701441, i64 2162701499, i64 2162701548, i64 2162701358, i64 2162700659, i64 2162700691}
!23 = !{i64 2162698163}
!24 = !{i64 2162709346, i64 2162709373, i64 2162709754, i64 2162709787, i64 2162709822, i64 2162709838, i64 2162710679, i64 2162710737, i64 2162710786, i64 2162710596, i64 2162709897, i64 2162709929}
!25 = !{i64 2162703336}
!26 = distinct !{null, null, null, null}
!27 = distinct !{null, null, null, null}
!28 = distinct !{null, null, null}
!29 = distinct !{null, null, null}
!30 = distinct !{!30, !17}
!31 = distinct !{!31, !17}
!32 = distinct !{!32, !17}
!33 = !{i64 12970}
!34 = distinct !{null, null, null}
!35 = distinct !{null, null, null}
!36 = distinct !{null, null, null}
!37 = distinct !{null, null, null}
!38 = distinct !{!38, !17, !18}
!39 = distinct !{null, null, null}
!40 = !{i64 37265}
!41 = !{i64 36274}
!42 = distinct !{null, null, null, null}
!43 = distinct !{null, null, null, null}
!44 = distinct !{null, null, null, null}
!45 = distinct !{null, null, null, null}
!46 = distinct !{!46, !17, !18}
!47 = distinct !{null, null, null, null}
!48 = distinct !{null, null, null, null}
!49 = distinct !{!49, !17, !18}
!50 = distinct !{null, null, null, null}
!51 = distinct !{null, null, null, null}
!52 = distinct !{null, null, null}
!53 = distinct !{null, null, null}
!54 = distinct !{!54, !17, !18}
!55 = distinct !{null, null, null, null}
!56 = distinct !{null, null, null, null}
!57 = distinct !{null, null, null, null}
!58 = distinct !{null, null, null, null}
!59 = distinct !{!59, !17}
!60 = distinct !{null, null, null, null}
!61 = distinct !{null, null, null, null}
!62 = !{i64 40519}
!63 = !{i64 42552}
!64 = !{i64 44542}
!65 = distinct !{null, null, null}
!66 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!67 = !{i64 2162619471, i64 2162619498, i64 2162619879, i64 2162619912, i64 2162619947, i64 2162619963, i64 2162620804, i64 2162620862, i64 2162620911, i64 2162620721, i64 2162620022, i64 2162620054}
!68 = !{i64 2162617604}
!69 = !{i64 2162624197, i64 2162624224, i64 2162624605, i64 2162624638, i64 2162624673, i64 2162624689, i64 2162625530, i64 2162625588, i64 2162625637, i64 2162625447, i64 2162624748, i64 2162624780}
!70 = !{i64 2162622330}
!71 = !{i64 2162633237, i64 2162633264, i64 2162633645, i64 2162633678, i64 2162633713, i64 2162633729, i64 2162634570, i64 2162634628, i64 2162634677, i64 2162634487, i64 2162633788, i64 2162633820}
!72 = !{i64 2162631324}
!73 = !{i64 2162638029, i64 2162638056, i64 2162638437, i64 2162638470, i64 2162638505, i64 2162638521, i64 2162639362, i64 2162639420, i64 2162639469, i64 2162639279, i64 2162638580, i64 2162638612}
!74 = !{i64 2162636150}
!75 = !{i64 2162643030, i64 2162643057, i64 2162643438, i64 2162643471, i64 2162643506, i64 2162643522, i64 2162644363, i64 2162644421, i64 2162644470, i64 2162644280, i64 2162643581, i64 2162643613}
!76 = !{i64 2162641113}
!77 = distinct !{!77, !17, !18}
!78 = !{i64 51832}
!79 = distinct !{!79, !17, !18}
!80 = !{i64 2161518823, i64 2161518850, i64 2161519231, i64 2161519264, i64 2161519299, i64 2161519315, i64 2161520156, i64 2161520214, i64 2161520263, i64 2161520073, i64 2161519374, i64 2161519406}
!81 = !{i64 2161516942}
!82 = distinct !{null, null, null, null}
!83 = distinct !{null, null, null, null}
!84 = distinct !{!84, !17}
!85 = distinct !{null, null, null}
!86 = distinct !{null, null, null}
!87 = distinct !{!87, !17}
!88 = distinct !{null, null, null}
!89 = distinct !{null, null, null}
!90 = distinct !{null, null, null, null}
!91 = distinct !{null, null, null, null}
!92 = distinct !{!92, !17}
!93 = distinct !{!93, !17}
!94 = distinct !{null, null, null, null}
!95 = distinct !{null, null, null, null}
!96 = distinct !{null, null, null, null, null}
!97 = distinct !{null, null, null, null, null}
!98 = distinct !{!98, !17}
!99 = distinct !{!99, !17}
!100 = distinct !{null, null, null}
!101 = distinct !{null, null, null, null}
!102 = distinct !{null, null, null, null}
!103 = distinct !{null, null, null, null}
!104 = distinct !{null, null, null, null}
!105 = distinct !{!105, !17}
!106 = distinct !{null, null, null, null}
!107 = distinct !{null, null, null, null}
!108 = distinct !{null, null, null}
!109 = distinct !{null, null, null, null}
!110 = distinct !{null, null, null, null}
!111 = distinct !{!111, !17, !18}
!112 = distinct !{null, null, null}
!113 = distinct !{null, null, null}
!114 = distinct !{!114, !17, !18}
!115 = distinct !{null, null, null, null}
!116 = distinct !{null, null, null, null}
!117 = distinct !{null, null, null, null}
!118 = distinct !{null, null, null, null, null}
!119 = distinct !{null, null, null, null, null}
!120 = distinct !{null, null, null, null}
!121 = distinct !{!121, !17, !18}
!122 = !{i64 34835}
!123 = !{i64 34980}
!124 = !{i64 2161847049, i64 2161847076, i64 2161847465, i64 2161847498, i64 2161847533, i64 2161847549, i64 2161848390, i64 2161848448, i64 2161848497, i64 2161848307, i64 2161847608, i64 2161847640}
!125 = !{i64 2161845332}
!126 = !{i64 2161851386, i64 2161851413, i64 2161851802, i64 2161851835, i64 2161851870, i64 2161851886, i64 2161852727, i64 2161852785, i64 2161852834, i64 2161852644, i64 2161851945, i64 2161851977}
!127 = !{i64 2161849677}
!128 = !{i64 2161909535, i64 2161909562, i64 2161909951, i64 2161909984, i64 2161910019, i64 2161910035, i64 2161910876, i64 2161910934, i64 2161910983, i64 2161910793, i64 2161910094, i64 2161910126}
!129 = !{i64 2161907894}
!130 = !{i64 3873}
!131 = !{i64 3939}
!132 = !{i64 4436}
!133 = distinct !{null, null, null}
!134 = !{i64 2160995072}
!135 = distinct !{null, null, null}
!136 = !{i64 2160997034}
!137 = distinct !{null, null, null}
end_hunk_0
