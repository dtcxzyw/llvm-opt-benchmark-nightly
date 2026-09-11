Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_ddi?download=true
inline.NumInlined: 867
inline.NumDeleted: 141
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@hsw_set_signal_levels:bb.a
  %i.ap = load ptr, ptr %i.s, align 8             ; 2 uses
  %.not.i57.i = icmp eq ptr %i.ap, null
  br i1 %.not.i57.i, label %__drm_to_dev.exit58.i, label %bb.o

bb.o:                                             ; preds = %__drm_to_dev.exit56.i
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  br label %__drm_to_dev.exit58.i

__drm_to_dev.exit58.i:                            ; preds = %bb.o, %__drm_to_dev.exit56.i
  %i.as = phi ptr [ %i.ar, %bb.o ], [ null, %__drm_to_dev.exit56.i ] ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 80
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not.i59.i = icmp eq ptr %i.au, null
  br i1 %.not.i59.i, label %bb.p, label %dev_name.exit62.i

bb.p:                                             ; preds = %__drm_to_dev.exit58.i
  %.val.i61.i = load ptr, ptr %i.as, align 8
  br label %dev_name.exit62.i

dev_name.exit62.i:                                ; preds = %bb.p, %__drm_to_dev.exit58.i
  %.0.i60.i = phi ptr [ %.val.i61.i, %bb.p ], [ %i.au, %__drm_to_dev.exit58.i ]
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.aj, ptr noundef %i.ao, ptr noundef %.0.i60.i, ptr noundef nonnull @.str.1) #10
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %skl_ddi_set_iboost.exit

.critedge.i:                                      ; preds = %bb.l
  %i.av = load ptr, ptr %i.ad, align 8
  %i.aw = sext i32 %i.h to i64
  %i.ax = getelementptr [12 x i8], ptr %i.av, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = load i8, ptr %i.ay, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.q

bb.q:                                             ; preds = %.critedge.i, %bb.k
  %.2.i = phi i8 [ %i.az, %.critedge.i ], [ %.044.i, %bb.k ] ; 4 uses
  switch i8 %.2.i, label %bb.r [
    i8 7, label %bb.t
    i8 3, label %bb.t
    i8 1, label %bb.t
    i8 0, label %bb.t
  ]

bb.r:                                             ; preds = %bb.q
  %i.ba = zext i8 %.2.i to i32
  %i.bb = load ptr, ptr %i.s, align 8             ; 2 uses
  %.not.i63.i = icmp eq ptr %i.bb, null
  br i1 %.not.i63.i, label %__drm_to_dev.exit64.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  br label %__drm_to_dev.exit64.i

__drm_to_dev.exit64.i:                            ; preds = %bb.s, %bb.r
  %i.be = phi ptr [ %i.bd, %bb.s ], [ null, %bb.r ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.be, ptr noundef nonnull @.str.116, i32 noundef %i.ba) #12
  br label %skl_ddi_set_iboost.exit

bb.t:                                             ; preds = %bb.q, %bb.q, %bb.q, %bb.q
  %i.bf = load i32, ptr %i.i, align 4             ; 2 uses
  call void @intel_dmc_wl_get(ptr noundef %i.s, i32 442380) #10
  %.val.i.i.i = load ptr, ptr %i.s, align 8
  %i.bg = call ptr @to_intel_uncore(ptr noundef %.val.i.i.i) #10 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 144
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = call i32 %i.bi(ptr noundef %i.bg, i32 442380, i1 noundef zeroext true) #10, !inline_history !268
  call void @intel_dmc_wl_put(ptr noundef %i.s, i32 442380) #10
  %i.bk = mul i32 %i.bf, 3
  %i.bl = add i32 %i.bk, 8                        ; 2 uses
  %i.bm = add i32 %i.bf, 23
  %i.bn = shl nuw i32 1, %i.bm                    ; 2 uses
  %.not.i65.i = icmp eq i8 %.2.i, 0               ; 2 uses
  %i.bo = zext nneg i8 %.2.i to i32               ; 2 uses
  %i.bp = shl i32 %i.bo, %i.bl
  %.pn.i.i = select i1 %.not.i65.i, i32 %i.bn, i32 %i.bp
  %i.bq = shl i32 7, %i.bl
  %i.br = or i32 %i.bq, %i.bn
  %i.bs = xor i32 %i.br, -1
  %i.bt = and i32 %i.bj, %i.bs
  %.0.i66.i = or i32 %i.bt, %.pn.i.i
  call void @intel_dmc_wl_get(ptr noundef %i.s, i32 442380) #10
  %.val.i13.i.i = load ptr, ptr %i.s, align 8
  %i.bu = call ptr @to_intel_uncore(ptr noundef %.val.i13.i.i) #10 ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 176
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef %i.bu, i32 442380, i32 noundef %.0.i66.i, i1 noundef zeroext true) #10, !inline_history !269
  call void @intel_dmc_wl_put(ptr noundef %i.s, i32 442380) #10
  %i.bx = load i32, ptr %i.i, align 4
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.u, label %skl_ddi_set_iboost.exit

bb.u:                                             ; preds = %bb.t
  %i.bz = getelementptr i8, ptr %.0.i.i24, i64 4180
  %i.ca = load i8, ptr %i.bz, align 4
  %i.cb = icmp eq i8 %i.ca, 4
  br i1 %i.cb, label %bb.v, label %skl_ddi_set_iboost.exit

bb.v:                                             ; preds = %bb.u
  call void @intel_dmc_wl_get(ptr noundef %i.s, i32 442380) #10
  %.val.i.i67.i = load ptr, ptr %i.s, align 8
  %i.cc = call ptr @to_intel_uncore(ptr noundef %.val.i.i67.i) #10 ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 144
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = call i32 %i.ce(ptr noundef %i.cc, i32 442380, i1 noundef zeroext true) #10, !inline_history !268
  call void @intel_dmc_wl_put(ptr noundef %i.s, i32 442380) #10
  %i.cg = shl nuw nsw i32 %i.bo, 20
  %.pn.i69.i = select i1 %.not.i65.i, i32 134217728, i32 %i.cg
  %i.ch = and i32 %i.cf, -141557761
  %.0.i70.i = or i32 %i.ch, %.pn.i69.i
  call void @intel_dmc_wl_get(ptr noundef %i.s, i32 442380) #10
  %.val.i13.i71.i = load ptr, ptr %i.s, align 8
  %i.ci = call ptr @to_intel_uncore(ptr noundef %.val.i13.i71.i) #10 ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 176
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef %i.ci, i32 442380, i32 noundef %.0.i70.i, i1 noundef zeroext true) #10, !inline_history !269
  call void @intel_dmc_wl_put(ptr noundef %i.s, i32 442380) #10
  br label %skl_ddi_set_iboost.exit

skl_ddi_set_iboost.exit:                          ; preds = %enc_to_intel_dp.exit, %bb.v, %bb.u, %bb.t, %__drm_to_dev.exit64.i, %dev_name.exit62.i, %has_iboost.exit
  %i.cl = getelementptr i8, ptr %1, i64 888
  %.val = load i32, ptr %i.cl, align 8
  %i.cm = and i32 %.val, 64
  %.not29 = icmp eq i32 %i.cm, 0
  br i1 %.not29, label %bb.w, label %bb.y

bb.w:                                             ; preds = %skl_ddi_set_iboost.exit
  %i.cn = shl i32 %i.h, 24
  %i.co = and i32 %i.cn, 251658240                ; 2 uses
  %i.cp = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not.i26 = icmp eq ptr %i.cp, null
  br i1 %.not.i26, label %__drm_to_dev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cq = getelementptr i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.w, %bb.x
  %i.cs = phi ptr [ %i.cr, %bb.x ], [ null, %bb.w ]
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.cs, i32 noundef 2, ptr noundef nonnull @.str.115, i32 noundef %i.co) #10
  %i.ct = getelementptr i8, ptr %.0.i.i, i64 508  ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = and i32 %i.cu, -251658241
  %i.cw = or disjoint i32 %i.cv, %i.co            ; 2 uses
  store i32 %i.cw, ptr %i.ct, align 4
  %i.cx = shl i32 %i.j, 8
  %i.cy = add i32 %i.cx, 409600                   ; 6 uses
  call void @intel_dmc_wl_get(ptr noundef %i.d, i32 %i.cy) #10
  %.val.i27 = load ptr, ptr %i.d, align 8
  %i.cz = call ptr @to_intel_uncore(ptr noundef %.val.i27) #10 ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 176
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef %i.cz, i32 %i.cy, i32 noundef %i.cw, i1 noundef zeroext true) #10, !inline_history !0
  call void @intel_dmc_wl_put(ptr noundef %i.d, i32 %i.cy) #10
  call void @intel_dmc_wl_get(ptr noundef %i.d, i32 %i.cy) #10
  %.val.i28 = load ptr, ptr %i.d, align 8
  %i.dc = call ptr @to_intel_uncore(ptr noundef %.val.i28) #10 ; 2 uses
  %i.dd = getelementptr i8, ptr %i.dc, i64 144
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = call i32 %i.de(ptr noundef %i.dc, i32 %i.cy, i1 noundef zeroext false) #10, !inline_history !8 ; 0 uses
  call void @intel_dmc_wl_put(ptr noundef %i.d, i32 %i.cy) #10
  br label %bb.y

bb.y:                                             ; preds = %skl_ddi_set_iboost.exit, %__drm_to_dev.exit
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_ddi_buf_trans_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_hpd_pin_default(i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_bios_encoder_lane_reversal(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 0, 5) i32 @intel_ddi_max_lanes(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 5 uses
  %i.d = getelementptr i8, ptr %i.c, i64 1168
  %i.e = load i16, ptr %i.d, align 8
  %i.f = icmp ugt i16 %i.e, 10
  br i1 %i.f, label %intel_ddi_a_force_4_lanes.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %0, i64 156        ; 2 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %1 = and i32 %i.h, -5
  %or.cond = icmp eq i32 %1, 0
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 409600) #10
  %.val.i = load ptr, ptr %i.c, align 8
  %i.i = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #10 ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 144
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call i32 %i.k(ptr noundef %i.i, i32 409600, i1 noundef zeroext true) #10, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 409600) #10
  %i.m = and i32 %i.l, 16
  %.not16 = icmp eq i32 %i.m, 0
  %2 = xor i32 %i.h, 4
  %spec.select = select i1 %.not16, i32 2, i32 %2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.014 = phi i32 [ %spec.select, %bb.e ], [ 4, %bb.d ] ; 3 uses
  %i.n = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call ptr @__drm_to_display(ptr noundef nonnull %i.n) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = phi ptr [ %i.o, %bb.g ], [ null, %bb.f ]
  %i.q = load i32, ptr %i.g, align 4
  %.not8.i = icmp eq i32 %i.q, 0
  br i1 %.not8.i, label %bb.i, label %intel_ddi_a_force_4_lanes.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr i8, ptr %0, i64 4177       ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !range !23, !noundef !24
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %intel_ddi_a_force_4_lanes.exit.thread, label %intel_ddi_a_force_4_lanes.exit

intel_ddi_a_force_4_lanes.exit:                   ; preds = %bb.i
  %i.u = getelementptr i8, ptr %i.p, i64 8
  %i.v = load i64, ptr %i.u, align 8
  %i.w = and i64 %i.v, 36507222016
  %or.cond.i.not = icmp eq i64 %i.w, 0
  br i1 %or.cond.i.not, label %intel_ddi_a_force_4_lanes.exit.thread, label %bb.j

bb.j:                                             ; preds = %intel_ddi_a_force_4_lanes.exit
  %i.x = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i17 = icmp eq ptr %i.x, null
  br i1 %.not.i17, label %__drm_to_dev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.j, %bb.k
  %i.aa = phi ptr [ %i.z, %bb.k ], [ null, %bb.j ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.aa, i32 noundef 2, ptr noundef nonnull @.str.117) #10
  store i8 1, ptr %i.r, align 1
  br label %intel_ddi_a_force_4_lanes.exit.thread

intel_ddi_a_force_4_lanes.exit.thread:            ; preds = %bb.i, %bb.h, %intel_ddi_a_force_4_lanes.exit, %__drm_to_dev.exit, %bb.c
  %.0 = phi i32 [ 4, %bb.c ], [ 4, %__drm_to_dev.exit ], [ %.014, %intel_ddi_a_force_4_lanes.exit ], [ %.014, %bb.h ], [ %.014, %bb.i ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_dp_aux_ch(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_bios_encoder_is_dedicated_external(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_bios_encoder_supports_typec_usb(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_bios_encoder_supports_tbt(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @intel_ddi_tc_encoder_suspend_complete(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 152
  %.val.i.i = load i32, ptr %i.a, align 8
  switch i32 %.val.i.i, label %intel_encoder_is_dig_port.exit.thread.fold.split.i.i [
    i32 10, label %enc_to_intel_dp.exit
    i32 7, label %enc_to_intel_dp.exit
    i32 8, label %enc_to_intel_dp.exit
    i32 6, label %enc_to_intel_dp.exit
    i32 11, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 512
  %i.c = load ptr, ptr %i.b, align 8
  br label %enc_to_intel_dp.exit

intel_encoder_is_dig_port.exit.thread.fold.split.i.i: ; preds = %bb.a
  br label %enc_to_intel_dp.exit

enc_to_intel_dp.exit:                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.b, %intel_encoder_is_dig_port.exit.thread.fold.split.i.i
  %.0.i.i = phi ptr [ %0, %bb.a ], [ %i.c, %bb.b ], [ %0, %bb.a ], [ %0, %bb.a ], [ %0, %bb.a ], [ null, %intel_encoder_is_dig_port.exit.thread.fold.split.i.i ]
  tail call void @intel_encoder_link_check_flush_work(ptr noundef %0) #10
  tail call void @intel_tc_port_suspend(ptr noundef %.0.i.i) #10
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @intel_ddi_tc_encoder_shutdown_complete(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 152
  %.val.i.i = load i32, ptr %i.a, align 8
  switch i32 %.val.i.i, label %intel_encoder_is_dig_port.exit.thread.fold.split.i.i [
    i32 10, label %enc_to_intel_dp.exit
    i32 7, label %enc_to_intel_dp.exit
    i32 8, label %enc_to_intel_dp.exit
    i32 6, label %enc_to_intel_dp.exit
    i32 11, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 512
  %i.c = load ptr, ptr %i.b, align 8
  br label %enc_to_intel_dp.exit

intel_encoder_is_dig_port.exit.thread.fold.split.i.i: ; preds = %bb.a
  br label %enc_to_intel_dp.exit

enc_to_intel_dp.exit:                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.b, %intel_encoder_is_dig_port.exit.thread.fold.split.i.i
  %.0.i.i = phi ptr [ %0, %bb.a ], [ %i.c, %bb.b ], [ %0, %bb.a ], [ %0, %bb.a ], [ %0, %bb.a ], [ null, %intel_encoder_is_dig_port.exit.thread.fold.split.i.i ]
  tail call void @intel_tc_port_cleanup(ptr noundef %.0.i.i) #10
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_tc_port_lock(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_tc_port_unlock(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_tc_port_init(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_display_power_ddi_io_domain(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_tc_port_connected(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @lpt_digital_port_connected(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.d = getelementptr i8, ptr %i.c, i64 4536
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %0, i64 488
  %i.g = load i32, ptr %i.f, align 8
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr [4 x i8], ptr %i.e, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 802816) #10
  %.val.i = load ptr, ptr %i.c, align 8
  %i.k = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #10 ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 144
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call i32 %i.m(ptr noundef %i.k, i32 802816, i1 noundef zeroext true) #10, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 802816) #10
  %i.o = and i32 %i.n, %i.j
  %i.p = icmp ne i32 %i.o, 0
  ret i1 %i.p
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @bdw_digital_port_connected(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.d = getelementptr i8, ptr %i.c, i64 4528
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %0, i64 488
  %i.g = load i32, ptr %i.f, align 8
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr [4 x i8], ptr %i.e, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 279616) #10
  %.val.i = load ptr, ptr %i.c, align 8
  %i.k = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #10 ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 144
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call i32 %i.m(ptr noundef %i.k, i32 279616, i1 noundef zeroext true) #10, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 279616) #10
  %i.o = and i32 %i.n, %i.j
  %i.p = icmp ne i32 %i.o, 0
  ret i1 %i.p
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
end_hunk_0
