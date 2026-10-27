Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_dpll_mgr?download=true
inline.NumInlined: 679
inline.NumDeleted: 89
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@skl_compute_dpll:bb.a
.thread.i:                                        ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bl, %.sink.split.i29.i.thread.i, %skl_wrpll_get_multipliers.exit.i.i, %bb.au, %bb.at, %skl_wrpll_try_divider.exit.us.2.1.5.i.i, %skl_wrpll_try_divider.exit.us.2.1.4.i.i, %skl_wrpll_try_divider.exit.us.2.1.2.i.i, %skl_wrpll_try_divider.exit.us.1.1.6.i.i, %skl_wrpll_try_divider.exit.us.1.1.5.i.i, %skl_wrpll_try_divider.exit.us.1.1.4.i.i, %skl_wrpll_try_divider.exit.us.1.1.2.i.i, %skl_wrpll_try_divider.exit.us.1111.6.i.i, %skl_wrpll_try_divider.exit.us.1111.5.i.i, %skl_wrpll_try_divider.exit.us.1111.4.i.i, %skl_wrpll_try_divider.exit.us.1111.2.i.i
  %.sroa.16.069.i = phi i32 [ %.sroa.16.0.i, %bb.bo ], [ %.sroa.16.0.i, %bb.bm ], [ %.sroa.16.0.i, %bb.bl ], [ 4, %skl_wrpll_try_divider.exit.us.1.1.2.i.i ], [ %.sroa.16.0.i, %.sink.split.i29.i.thread.i ], [ 2, %skl_wrpll_try_divider.exit.us.1111.4.i.i ], [ 2, %skl_wrpll_try_divider.exit.us.2.1.4.i.i ], [ 2, %skl_wrpll_try_divider.exit.us.1.1.4.i.i ], [ 4, %skl_wrpll_try_divider.exit.us.1111.6.i.i ], [ 4, %skl_wrpll_try_divider.exit.us.2.1.5.i.i ], [ 4, %bb.au ], [ 4, %bb.at ], [ 4, %skl_wrpll_try_divider.exit.us.1.1.6.i.i ], [ 4, %skl_wrpll_try_divider.exit.us.1.1.5.i.i ], [ 4, %skl_wrpll_try_divider.exit.us.1111.5.i.i ], [ 4, %skl_wrpll_try_divider.exit.us.2.1.2.i.i ], [ 4, %skl_wrpll_try_divider.exit.us.1111.2.i.i ], [ %.sroa.16.0.i, %bb.bn ], [ 4, %skl_wrpll_get_multipliers.exit.i.i ]
  %.sroa.21.02667.i = phi i32 [ %.sroa.21.026.i, %bb.bo ], [ %.sroa.21.026.i, %bb.bm ], [ %.sroa.21.026.i, %bb.bl ], [ 1, %skl_wrpll_try_divider.exit.us.1.1.2.i.i ], [ %.sroa.21.026.i, %.sink.split.i29.i.thread.i ], [ 3, %skl_wrpll_try_divider.exit.us.1111.4.i.i ], [ 0, %skl_wrpll_try_divider.exit.us.2.1.4.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.1.1.4.i.i ], [ 3, %skl_wrpll_try_divider.exit.us.1111.6.i.i ], [ 0, %skl_wrpll_try_divider.exit.us.2.1.5.i.i ], [ 0, %bb.au ], [ 0, %bb.at ], [ 1, %skl_wrpll_try_divider.exit.us.1.1.6.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.1.1.5.i.i ], [ 3, %skl_wrpll_try_divider.exit.us.1111.5.i.i ], [ 0, %skl_wrpll_try_divider.exit.us.2.1.2.i.i ], [ 3, %skl_wrpll_try_divider.exit.us.1111.2.i.i ], [ %.sroa.21.026.i, %bb.bn ], [ %switch.select119.i, %skl_wrpll_get_multipliers.exit.i.i ]
  %.0300.i2865.i = phi i32 [ %.0300.i28.i, %bb.bo ], [ %.0300.i28.i, %bb.bm ], [ %.0300.i28.i, %bb.bl ], [ 1, %skl_wrpll_try_divider.exit.us.1.1.2.i.i ], [ %.0300.i28.i, %.sink.split.i29.i.thread.i ], [ 5, %skl_wrpll_try_divider.exit.us.1111.4.i.i ], [ 5, %skl_wrpll_try_divider.exit.us.2.1.4.i.i ], [ 5, %skl_wrpll_try_divider.exit.us.1.1.4.i.i ], [ 5, %skl_wrpll_try_divider.exit.us.1111.6.i.i ], [ 3, %skl_wrpll_try_divider.exit.us.2.1.5.i.i ], [ 5, %bb.au ], [ 5, %bb.at ], [ 5, %skl_wrpll_try_divider.exit.us.1.1.6.i.i ], [ 3, %skl_wrpll_try_divider.exit.us.1.1.5.i.i ], [ 3, %skl_wrpll_try_divider.exit.us.1111.5.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.2.1.2.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.1111.2.i.i ], [ %.0300.i28.i, %bb.bn ], [ 1, %skl_wrpll_get_multipliers.exit.i.i ]
  %.1298.i3063.i = phi i32 [ %.1298.i30.i, %bb.bo ], [ %.1298.i30.i, %bb.bm ], [ %.1298.i30.i, %bb.bl ], [ 1, %skl_wrpll_try_divider.exit.us.1.1.2.i.i ], [ %.1298.i30.i, %.sink.split.i29.i.thread.i ], [ 1, %skl_wrpll_try_divider.exit.us.1111.4.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.2.1.4.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.1.1.4.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.1111.6.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.2.1.5.i.i ], [ 1, %bb.au ], [ 1, %bb.at ], [ 1, %skl_wrpll_try_divider.exit.us.1.1.6.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.1.1.5.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.1111.5.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.2.1.2.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.1111.2.i.i ], [ %.1298.i30.i, %bb.bn ], [ 1, %skl_wrpll_get_multipliers.exit.i.i ]
  %.139296.i3261.i = phi i32 [ %.139296.i32.i, %bb.bo ], [ %.139296.i32.i, %bb.bm ], [ %.139296.i32.i, %bb.bl ], [ 7, %skl_wrpll_try_divider.exit.us.1.1.2.i.i ], [ %.139296.i32.i, %.sink.split.i29.i.thread.i ], [ 3, %skl_wrpll_try_divider.exit.us.1111.4.i.i ], [ 3, %skl_wrpll_try_divider.exit.us.2.1.4.i.i ], [ 3, %skl_wrpll_try_divider.exit.us.1.1.4.i.i ], [ 7, %skl_wrpll_try_divider.exit.us.1111.6.i.i ], [ 7, %skl_wrpll_try_divider.exit.us.2.1.5.i.i ], [ 7, %bb.au ], [ 7, %bb.at ], [ 7, %skl_wrpll_try_divider.exit.us.1.1.6.i.i ], [ 7, %skl_wrpll_try_divider.exit.us.1.1.5.i.i ], [ 7, %skl_wrpll_try_divider.exit.us.1111.5.i.i ], [ 7, %skl_wrpll_try_divider.exit.us.2.1.2.i.i ], [ 7, %skl_wrpll_try_divider.exit.us.1111.2.i.i ], [ %.139296.i32.i, %bb.bn ], [ 7, %skl_wrpll_get_multipliers.exit.i.i ]
  %.sroa.11.0.i = phi i32 [ 0, %bb.bo ], [ 64, %bb.bm ], [ 32, %bb.bl ], [ 96, %skl_wrpll_try_divider.exit.us.1.1.2.i.i ], [ 0, %.sink.split.i29.i.thread.i ], [ 0, %skl_wrpll_try_divider.exit.us.1111.4.i.i ], [ 0, %skl_wrpll_try_divider.exit.us.2.1.4.i.i ], [ 0, %skl_wrpll_try_divider.exit.us.1.1.4.i.i ], [ 0, %skl_wrpll_try_divider.exit.us.1111.6.i.i ], [ 64, %skl_wrpll_try_divider.exit.us.2.1.5.i.i ], [ 0, %bb.au ], [ 0, %bb.at ], [ 0, %skl_wrpll_try_divider.exit.us.1.1.6.i.i ], [ 64, %skl_wrpll_try_divider.exit.us.1.1.5.i.i ], [ 64, %skl_wrpll_try_divider.exit.us.1111.5.i.i ], [ 96, %skl_wrpll_try_divider.exit.us.2.1.2.i.i ], [ 96, %skl_wrpll_try_divider.exit.us.1111.2.i.i ], [ 96, %bb.bn ], [ 96, %skl_wrpll_get_multipliers.exit.i.i ]
  %.1298.i3063.fr.i = freeze i32 %.1298.i3063.i   ; 3 uses
  %.not120.i = icmp eq i32 %.1298.i3063.fr.i, 1
  %i.kl = mul i32 %.1298.i3063.fr.i, %.0300.i2865.i
  %i.km = mul i32 %i.kl, %.139296.i3261.i
  %i.kn = zext nneg i32 %i.km to i64
  %i.ko = mul i64 %i.r, %i.kn                     ; 2 uses
  %i.kp = mul i32 %i.p, 1000
  %i.kq = zext i32 %i.kp to i64
  %i.kr = udiv i64 %i.ko, %i.kq                   ; 2 uses
  %i.ks = trunc i64 %i.kr to i32
  %i.kt = sdiv i32 %i.p, 1000
  %i.ku = zext i32 %i.kt to i64
  %i.kv = udiv i64 %i.ko, %i.ku
  %i.kw = mul i64 %i.kr, 1000000
  %i.kx = and i64 %i.kw, 4294967232
  %i.ky = sub i64 %i.kv, %i.kx
  %i.kz = shl i64 %i.ky, 15
  %i.la = udiv i64 %i.kz, 1000000
  %i.lb = trunc i64 %i.la to i32
  %i.lc = getelementptr i8, ptr %i.f, i64 944     ; 2 uses
  store i32 33, ptr %i.lc, align 8
  %i.ld = shl i32 %i.lb, 9
  %i.le = or i32 %i.ld, %i.ks
  %i.lf = or i32 %i.le, -2147483648
  %i.lg = getelementptr i8, ptr %i.f, i64 948
  store i32 %i.lf, ptr %i.lg, align 4
  %i.lh = shl i32 %.1298.i3063.fr.i, 8
  %spec.select.i = select i1 %.not120.i, i32 0, i32 128
  %i.li = or disjoint i32 %spec.select.i, %i.lh
  %i.lj = or disjoint i32 %i.li, %.sroa.11.0.i
  %i.lk = shl nuw nsw i32 %.sroa.16.069.i, 2
  %i.ll = or i32 %.sroa.21.02667.i, %i.lk
  %i.lm = or i32 %i.ll, %i.lj
  %i.ln = getelementptr i8, ptr %i.f, i64 952
  store i32 %i.lm, ptr %i.ln, align 8
  %i.lo = tail call fastcc i32 @skl_ddi_wrpll_get_freq(ptr noundef %i.l, ptr noundef %i.lc) #16
  store i32 %i.lo, ptr %i.m, align 8
  br label %skl_ddi_hdmi_pll_dividers.exit

bb.bp:                                            ; preds = %bb.a
  %i.lp = and i32 %.val7, 2432
  %.not10 = icmp eq i32 %i.lp, 0
  br i1 %.not10, label %skl_ddi_hdmi_pll_dividers.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.lq = getelementptr i8, ptr %i.f, i64 1320
  %i.lr = load i32, ptr %i.lq, align 8
  %i.ls = sdiv i32 %i.lr, 2
  switch i32 %i.ls, label %skl_ddi_dp_set_dpll_hw_state.exit [
    i32 81000, label %bb.br
    i32 135000, label %bb.bs
    i32 216000, label %bb.bv
    i32 162000, label %bb.bt
    i32 108000, label %bb.bu
  ]

bb.br:                                            ; preds = %bb.bq
  br label %skl_ddi_dp_set_dpll_hw_state.exit

bb.bs:                                            ; preds = %bb.bq
  br label %skl_ddi_dp_set_dpll_hw_state.exit

bb.bt:                                            ; preds = %bb.bq
  br label %skl_ddi_dp_set_dpll_hw_state.exit

bb.bu:                                            ; preds = %bb.bq
  br label %skl_ddi_dp_set_dpll_hw_state.exit

bb.bv:                                            ; preds = %bb.bq
  br label %skl_ddi_dp_set_dpll_hw_state.exit

skl_ddi_dp_set_dpll_hw_state.exit:                ; preds = %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.bu, %bb.bv
  %.0.i9 = phi i32 [ 1, %bb.bq ], [ 5, %bb.br ], [ 3, %bb.bs ], [ 11, %bb.bv ], [ 7, %bb.bt ], [ 9, %bb.bu ]
  %i.lt = getelementptr i8, ptr %i.f, i64 944
  store i32 %.0.i9, ptr %i.lt, align 8
  br label %skl_ddi_hdmi_pll_dividers.exit

skl_ddi_hdmi_pll_dividers.exit:                   ; preds = %.thread.i, %.loopexit.split.us.1.i.i, %bb.bp, %skl_ddi_dp_set_dpll_hw_state.exit
  %.0 = phi i32 [ -22, %bb.bp ], [ 0, %skl_ddi_dp_set_dpll_hw_state.exit ], [ 0, %.thread.i ], [ -22, %.loopexit.split.us.1.i.i ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -22, 1) i32 @skl_get_dpll(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %1, i64 136
  %.val17 = load i32, ptr %i.b, align 8
  %i.c = zext i32 %.val17 to i64
  %i.d = getelementptr [56 x i8], ptr %.val, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = getelementptr i8, ptr %i.f, i64 888
  %.val18 = load i32, ptr %i.g, align 8
  %i.h = and i32 %.val18, 256
  %.not19 = icmp eq i32 %i.h, 0
  %i.i = getelementptr i8, ptr %i.f, i64 944
  %. = select i1 %.not19, i64 14, i64 1
  %i.j = tail call fastcc ptr @intel_find_dpll(ptr noundef %0, ptr noundef %1, ptr noundef %i.i, i64 noundef %.) #16 ; 4 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call fastcc ptr @intel_atomic_get_dpll_state(ptr noundef %0) #16, !srcloc !31 ; 2 uses
  %i.l = getelementptr i8, ptr %i.j, i64 92       ; 2 uses
  %i.m = load i8, ptr %i.l, align 4
  %i.n = zext i8 %i.m to i64                      ; 2 uses
  %i.o = getelementptr [92 x i8], ptr %i.k, i64 %i.n ; 2 uses
  %i.p = load i8, ptr %i.o, align 4
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.c, label %intel_reference_dpll.exit

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %i.f, i64 944
  %i.s = getelementptr i8, ptr %i.o, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(88) %i.s, ptr noundef readonly align 8 dereferenceable(88) %i.r, i64 88, i1 false)
  %.pre.i = load i8, ptr %i.l, align 4
  %.pre10.i = zext i8 %.pre.i to i64
  br label %intel_reference_dpll.exit

intel_reference_dpll.exit:                        ; preds = %bb.b, %bb.c
  %.pre-phi.i = phi i64 [ %.pre10.i, %bb.c ], [ %i.n, %bb.b ]
  %i.t = getelementptr [92 x i8], ptr %i.k, i64 %.pre-phi.i
  tail call fastcc void @intel_dpll_crtc_get(ptr noundef readonly %1, ptr noundef nonnull readonly %i.j, ptr noundef %i.t) #16, !srcloc !32
  %i.u = getelementptr i8, ptr %i.f, i64 936
  store ptr %i.j, ptr %i.u, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %intel_reference_dpll.exit
  %.016 = phi i32 [ 0, %intel_reference_dpll.exit ], [ -22, %bb.a ]
  ret i32 %.016
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define internal void @skl_update_dpll_ref_clks(ptr nofree noundef captures(none) initializes((4408, 4412)) %0) #6 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 624
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 4408
  store i32 %i.b, ptr %i.c, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @skl_dump_hw_state(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = getelementptr i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %0, ptr noundef @.str.103, i32 noundef %i.a, i32 noundef %i.c, i32 noundef %i.e) #14
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define internal zeroext i1 @skl_compare_hw_state(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #7 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr %0, align 4
  %i.b = load i32, ptr %1, align 4
  %i.c = icmp eq i32 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.j, %i.l
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.n = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.m, %bb.c ]
  ret i1 %i.n
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @skl_ddi_dpll0_enable(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 96
  %.val = load ptr, ptr %i.a, align 8
  %.val4 = load i32, ptr %2, align 4
  %i.b = getelementptr i8, ptr %.val, i64 16
  %.val.val = load i32, ptr %i.b, align 8
  %i.c = mul i32 %.val.val, 6                     ; 2 uses
  %i.d = shl i32 62, %i.c
  %i.e = shl i32 %.val4, %i.c
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 442456) #14
  %.val.i.i = load ptr, ptr %0, align 8
  %i.f = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i) #14 ; 4 uses
  %i.g = getelementptr i8, ptr %i.f, i64 144
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i32 %i.h(ptr noundef %i.f, i32 442456, i1 noundef zeroext true) #14, !inline_history !7
  %i.j = xor i32 %i.d, -1
  %i.k = and i32 %i.i, %i.j
  %i.l = or i32 %i.k, %i.e
  %i.m = getelementptr i8, ptr %i.f, i64 176
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef %i.f, i32 442456, i32 noundef %i.l, i1 noundef zeroext true) #14, !inline_history !8
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 442456) #14
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 442456) #14
  %.val.i8.i = load ptr, ptr %0, align 8
  %i.o = tail call ptr @to_intel_uncore(ptr noundef %.val.i8.i) #14 ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 144
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call i32 %i.q(ptr noundef %i.o, i32 442456, i1 noundef zeroext false) #14, !inline_history !9 ; 0 uses
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 442456) #14
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal void @skl_ddi_dpll0_disable(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #5 align 16 prefalign(16) {
bb.a:
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef zeroext i1 @skl_ddi_dpll0_get_hw_state(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 96
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = tail call ptr @intel_display_power_get_if_enabled(ptr noundef %0, i32 noundef 0) #14
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sext i32 %i.d to i64
  %i.g = getelementptr [12 x i8], ptr @skl_dpll_regs, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.h) #14
  %.val.i = load ptr, ptr %0, align 8
  %i.i = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #14 ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 144
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call i32 %i.k(ptr noundef %i.i, i32 %i.h, i1 noundef zeroext true) #14, !inline_history !6
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.h) #14
  %.not28 = icmp slt i32 %i.l, 0                  ; 2 uses
  br i1 %.not28, label %.critedge, label %bb.c, !prof !30

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.c, %bb.d
  %i.p = phi ptr [ %i.o, %bb.d ], [ null, %bb.c ]
  %i.q = tail call ptr @dev_driver_string(ptr noundef %i.p) #14 ; 0 uses
  %i.r = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.7, ptr @.str.2, i32 1502, i32 2321, i64 16) #13, !srcloc !207
  %i.s = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i33 = icmp eq ptr %i.s, null
  br i1 %.not.i33, label %__drm_to_dev.exit34, label %bb.e

bb.e:                                             ; preds = %__drm_to_dev.exit
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  br label %__drm_to_dev.exit34

__drm_to_dev.exit34:                              ; preds = %__drm_to_dev.exit, %bb.e
  %i.v = phi ptr [ %i.u, %bb.e ], [ null, %__drm_to_dev.exit ]
  %i.w = tail call ptr @dev_driver_string(ptr noundef %i.v) #14
  %i.x = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i35 = icmp eq ptr %i.x, null
  br i1 %.not.i35, label %__drm_to_dev.exit36, label %bb.f

bb.f:                                             ; preds = %__drm_to_dev.exit34
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  br label %__drm_to_dev.exit36

__drm_to_dev.exit36:                              ; preds = %__drm_to_dev.exit34, %bb.f
  %i.aa = phi ptr [ %i.z, %bb.f ], [ null, %__drm_to_dev.exit34 ] ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not.i37 = icmp eq ptr %i.ac, null
  br i1 %.not.i37, label %bb.g, label %dev_name.exit40

bb.g:                                             ; preds = %__drm_to_dev.exit36
  %.val.i39 = load ptr, ptr %i.aa, align 8
  br label %dev_name.exit40

dev_name.exit40:                                  ; preds = %__drm_to_dev.exit36, %bb.g
  %.0.i38 = phi ptr [ %.val.i39, %bb.g ], [ %i.ac, %__drm_to_dev.exit36 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.r, ptr noundef %i.w, ptr noundef %.0.i38, ptr noundef @.str.97) #14
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !208
  br label %bb.h

.critedge:                                        ; preds = %bb.b
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 442456) #14
  %.val.i41 = load ptr, ptr %0, align 8
  %i.ad = tail call ptr @to_intel_uncore(ptr noundef %.val.i41) #14 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 144
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call i32 %i.af(ptr noundef %i.ad, i32 442456, i1 noundef zeroext true) #14, !inline_history !6
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 442456) #14
  %i.ah = mul i32 %i.d, 6
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = and i32 %i.ai, 63
  store i32 %i.aj, ptr %2, align 4
  br label %bb.h

bb.h:                                             ; preds = %dev_name.exit40, %.critedge
  tail call void @intel_display_power_put_unchecked(ptr noundef %0, i32 noundef 0) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  %.0 = phi i1 [ %.not28, %bb.h ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 858993460) i32 @skl_ddi_pll_get_freq(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr %2, align 4                ; 2 uses
  %i.b = and i32 %i.a, 32
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @skl_ddi_wrpll_get_freq(ptr noundef %0, ptr noundef %2) #16
  br label %skl_ddi_lcpll_get_freq.exit

bb.c:                                             ; preds = %bb.a
  %i.d = lshr i32 %i.a, 1
  %i.e = and i32 %i.d, 7
  switch i32 %i.e, label %bb.i [
    i32 2, label %skl_ddi_lcpll_get_freq.exit
    i32 4, label %bb.d
    i32 1, label %bb.e
    i32 3, label %bb.f
    i32 5, label %bb.g
    i32 0, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  br label %skl_ddi_lcpll_get_freq.exit

bb.e:                                             ; preds = %bb.c
  br label %skl_ddi_lcpll_get_freq.exit

bb.f:                                             ; preds = %bb.c
  br label %skl_ddi_lcpll_get_freq.exit

bb.g:                                             ; preds = %bb.c
  br label %skl_ddi_lcpll_get_freq.exit

bb.h:                                             ; preds = %bb.c
  br label %skl_ddi_lcpll_get_freq.exit

bb.i:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %__drm_to_dev.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.j, %bb.i
  %i.i = phi ptr [ %i.h, %bb.j ], [ null, %bb.i ]
  %i.j = tail call ptr @dev_driver_string(ptr noundef %i.i) #14 ; 0 uses
  %i.k = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.101, ptr @.str.2, i32 1931, i32 2321, i64 16) #13, !srcloc !209
  %i.l = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i15.i = icmp eq ptr %i.l, null
  br i1 %.not.i15.i, label %__drm_to_dev.exit16.i, label %bb.k

bb.k:                                             ; preds = %__drm_to_dev.exit.i
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  br label %__drm_to_dev.exit16.i

__drm_to_dev.exit16.i:                            ; preds = %bb.k, %__drm_to_dev.exit.i
  %i.o = phi ptr [ %i.n, %bb.k ], [ null, %__drm_to_dev.exit.i ]
  %i.p = tail call ptr @dev_driver_string(ptr noundef %i.o) #14
  %i.q = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i17.i = icmp eq ptr %i.q, null
  br i1 %.not.i17.i, label %__drm_to_dev.exit18.i, label %bb.l

bb.l:                                             ; preds = %__drm_to_dev.exit16.i
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  br label %__drm_to_dev.exit18.i

__drm_to_dev.exit18.i:                            ; preds = %bb.l, %__drm_to_dev.exit16.i
  %i.t = phi ptr [ %i.s, %bb.l ], [ null, %__drm_to_dev.exit16.i ] ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 80
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not.i19.i = icmp eq ptr %i.v, null
  br i1 %.not.i19.i, label %bb.m, label %dev_name.exit22.i

bb.m:                                             ; preds = %__drm_to_dev.exit18.i
  %.val.i21.i = load ptr, ptr %i.t, align 8
  br label %dev_name.exit22.i

dev_name.exit22.i:                                ; preds = %bb.m, %__drm_to_dev.exit18.i
  %.0.i20.i = phi ptr [ %.val.i21.i, %bb.m ], [ %i.v, %__drm_to_dev.exit18.i ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.k, ptr noundef %i.p, ptr noundef %.0.i20.i) #14
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !210
  br label %skl_ddi_lcpll_get_freq.exit

skl_ddi_lcpll_get_freq.exit:                      ; preds = %dev_name.exit22.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 0, %dev_name.exit22.i ], [ 540000, %bb.h ], [ 216000, %bb.d ], [ 270000, %bb.e ], [ 324000, %bb.f ], [ 432000, %bb.g ], [ 162000, %bb.c ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 0, 858993460) i32 @skl_ddi_wrpll_get_freq(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 16 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4408
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4              ; 4 uses
  %i.e = and i32 %i.d, 28                         ; 2 uses
  %i.f = and i32 %i.d, 128
  %.not = icmp eq i32 %i.f, 0
  %i.g = lshr i32 %i.d, 8
  %i.h = and i32 %i.g, 255
  %.050 = select i1 %.not, i32 1, i32 %i.h        ; 2 uses
  switch i32 %i.e, label %bb.g [
    i32 0, label %bb.h
    i32 4, label %bb.b
    i32 8, label %bb.c
    i32 20, label %bb.d
    i32 16, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.d, %bb.e
  %i.l = phi ptr [ %i.k, %bb.e ], [ null, %bb.d ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.l, i32 noundef 2, ptr noundef @.str.98) #14
  br label %bb.f

bb.f:                                             ; preds = %__drm_to_dev.exit, %bb.a
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.m = zext nneg i32 %i.e to i64
  %i.n = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.2, i32 1793, i32 2321, i64 16) #13, !srcloc !211
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.n, ptr noundef @.str.99, i64 noundef %i.m) #14
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !212
  br label %bb.r

bb.h:                                             ; preds = %bb.a, %bb.f, %bb.c, %bb.b
  %.049 = phi i32 [ 7, %bb.f ], [ 2, %bb.b ], [ 3, %bb.c ], [ 1, %bb.a ]
  %i.o = lshr i32 %i.d, 5
  %i.p = and i32 %i.o, 3
  switch i32 %i.p, label %default.unreachable [
    i32 0, label %bb.l
    i32 1, label %bb.i
    i32 2, label %bb.j
    i32 3, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  br label %bb.l

default.unreachable:                              ; preds = %bb.h
  unreachable

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.i
  %.051 = phi i32 [ 1, %bb.k ], [ 2, %bb.i ], [ 3, %bb.j ], [ 5, %bb.h ]
  %i.q = icmp eq i32 %.050, 0
  br i1 %i.q, label %bb.m, label %.critedge, !prof !24

bb.m:                                             ; preds = %bb.l
  %i.r = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i52 = icmp eq ptr %i.r, null
  br i1 %.not.i52, label %__drm_to_dev.exit53, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  br label %__drm_to_dev.exit53

__drm_to_dev.exit53:                              ; preds = %bb.m, %bb.n
  %i.u = phi ptr [ %i.t, %bb.n ], [ null, %bb.m ]
  %i.v = tail call ptr @dev_driver_string(ptr noundef %i.u) #14 ; 0 uses
  %i.w = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.7, ptr @.str.2, i32 1821, i32 2321, i64 16) #13, !srcloc !213
  %i.x = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i57 = icmp eq ptr %i.x, null
  br i1 %.not.i57, label %__drm_to_dev.exit58, label %bb.o

bb.o:                                             ; preds = %__drm_to_dev.exit53
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  br label %__drm_to_dev.exit58

__drm_to_dev.exit58:                              ; preds = %__drm_to_dev.exit53, %bb.o
  %i.aa = phi ptr [ %i.z, %bb.o ], [ null, %__drm_to_dev.exit53 ]
  %i.ab = tail call ptr @dev_driver_string(ptr noundef %i.aa) #14
  %i.ac = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i59 = icmp eq ptr %i.ac, null
  br i1 %.not.i59, label %__drm_to_dev.exit60, label %bb.p

bb.p:                                             ; preds = %__drm_to_dev.exit58
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  br label %__drm_to_dev.exit60

__drm_to_dev.exit60:                              ; preds = %__drm_to_dev.exit58, %bb.p
  %i.af = phi ptr [ %i.ae, %bb.p ], [ null, %__drm_to_dev.exit58 ] ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not.i61 = icmp eq ptr %i.ah, null
  br i1 %.not.i61, label %bb.q, label %dev_name.exit64

bb.q:                                             ; preds = %__drm_to_dev.exit60
  %.val.i63 = load ptr, ptr %i.af, align 8
  br label %dev_name.exit64

dev_name.exit64:                                  ; preds = %__drm_to_dev.exit60, %bb.q
  %.0.i62 = phi ptr [ %.val.i63, %bb.q ], [ %i.ah, %__drm_to_dev.exit60 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.w, ptr noundef %i.ab, ptr noundef %.0.i62, ptr noundef @.str.58) #14
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !214
  br label %bb.r

.critedge:                                        ; preds = %bb.l
  %i.ai = getelementptr i8, ptr %1, i64 4
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = and i32 %i.aj, 511
  %i.al = mul i32 %i.ak, %i.b
  %i.am = lshr i32 %i.aj, 9
  %i.an = and i32 %i.am, 32767
  %i.ao = mul i32 %i.an, %i.b
  %i.ap = lshr i32 %i.ao, 15
  %i.aq = add i32 %i.ap, %i.al
  %i.ar = mul nuw nsw i32 %.050, 5
  %i.as = mul nuw nsw i32 %i.ar, %.049
  %i.at = mul nuw nsw i32 %i.as, %.051
  %i.au = udiv i32 %i.aq, %i.at
  br label %bb.r

bb.r:                                             ; preds = %dev_name.exit64, %.critedge, %bb.g
  %.0 = phi i32 [ 0, %bb.g ], [ %i.au, %.critedge ], [ 0, %dev_name.exit64 ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @skl_ddi_pll_enable(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 96
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8              ; 4 uses
  %.val25 = load i32, ptr %2, align 4
  %i.e = mul i32 %i.d, 6                          ; 2 uses
  %i.f = shl i32 62, %i.e
  %i.g = shl i32 %.val25, %i.e
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 442456) #14
  %.val.i.i = load ptr, ptr %0, align 8
  %i.h = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i) #14 ; 4 uses
  %i.i = getelementptr i8, ptr %i.h, i64 144
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call i32 %i.j(ptr noundef %i.h, i32 442456, i1 noundef zeroext true) #14, !inline_history !7
  %i.l = xor i32 %i.f, -1
  %i.m = and i32 %i.k, %i.l
  %i.n = or i32 %i.m, %i.g
  %i.o = getelementptr i8, ptr %i.h, i64 176
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef %i.h, i32 442456, i32 noundef %i.n, i1 noundef zeroext true) #14, !inline_history !8
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 442456) #14
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 442456) #14
  %.val.i8.i = load ptr, ptr %0, align 8
  %i.q = tail call ptr @to_intel_uncore(ptr noundef %.val.i8.i) #14 ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 144
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call i32 %i.s(ptr noundef %i.q, i32 442456, i1 noundef zeroext false) #14, !inline_history !9 ; 0 uses
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 442456) #14
  %i.u = sext i32 %i.d to i64
  %i.v = getelementptr [12 x i8], ptr @skl_dpll_regs, i64 %i.u ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %i.x = getelementptr i8, ptr %2, i64 4
  %i.y = load i32, ptr %i.x, align 4
  %i.z = load i32, ptr %i.w, align 4              ; 6 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.z) #14
  %.val.i = load ptr, ptr %0, align 8
  %i.aa = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #14 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 176
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef %i.aa, i32 %i.z, i32 noundef %i.y, i1 noundef zeroext true) #14, !inline_history !4
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.z) #14
  %i.ad = getelementptr i8, ptr %i.v, i64 8
  %i.ae = getelementptr i8, ptr %2, i64 8
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = load i32, ptr %i.ad, align 4            ; 6 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.ag) #14
  %.val.i26 = load ptr, ptr %0, align 8
  %i.ah = tail call ptr @to_intel_uncore(ptr noundef %.val.i26) #14 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 176
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef %i.ah, i32 %i.ag, i32 noundef %i.af, i1 noundef zeroext true) #14, !inline_history !4
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.ag) #14
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.z) #14
  %.val.i27 = load ptr, ptr %0, align 8
  %i.ak = tail call ptr @to_intel_uncore(ptr noundef %.val.i27) #14 ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 144
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call i32 %i.am(ptr noundef %i.ak, i32 %i.z, i1 noundef zeroext false) #14, !inline_history !5 ; 0 uses
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.z) #14
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.ag) #14
  %.val.i28 = load ptr, ptr %0, align 8
  %i.ao = tail call ptr @to_intel_uncore(ptr noundef %.val.i28) #14 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 144
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call i32 %i.aq(ptr noundef %i.ao, i32 %i.ag, i1 noundef zeroext false) #14, !inline_history !5 ; 0 uses
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.ag) #14
  %i.as = load i32, ptr %i.v, align 4             ; 4 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.as) #14
  %.val.i29 = load ptr, ptr %0, align 8
  %i.at = tail call ptr @to_intel_uncore(ptr noundef %.val.i29) #14 ; 4 uses
  %i.au = getelementptr i8, ptr %i.at, i64 144
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call i32 %i.av(ptr noundef %i.at, i32 %i.as, i1 noundef zeroext true) #14, !inline_history !2
  %i.ax = or i32 %i.aw, -2147483648
  %i.ay = getelementptr i8, ptr %i.at, i64 176
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef %i.at, i32 %i.as, i32 noundef %i.ax, i1 noundef zeroext true) #14, !inline_history !3
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.as) #14
  %i.ba = shl i32 %i.d, 3
  %i.bb = shl nuw i32 1, %i.ba
  %i.bc = tail call i32 @intel_de_wait_for_set_ms(ptr noundef %0, i32 442464, i32 noundef %i.bb, i32 noundef 5) #14
  %.not = icmp eq i32 %i.bc, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bd = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i = icmp eq ptr %i.bd, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.b, %bb.c
  %i.bg = phi ptr [ %i.bf, %bb.c ], [ null, %bb.b ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.bg, ptr noundef @.str.102, i32 noundef %i.d) #15
  br label %bb.d

bb.d:                                             ; preds = %__drm_to_dev.exit, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @skl_ddi_pll_disable(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 96
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr [12 x i8], ptr @skl_dpll_regs, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4              ; 7 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.g) #14
  %.val.i = load ptr, ptr %0, align 8
  %i.h = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #14 ; 4 uses
  %i.i = getelementptr i8, ptr %i.h, i64 144
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call i32 %i.j(ptr noundef %i.h, i32 %i.g, i1 noundef zeroext true) #14, !inline_history !2
  %i.l = and i32 %i.k, 2147483647
  %i.m = getelementptr i8, ptr %i.h, i64 176
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef %i.h, i32 %i.g, i32 noundef %i.l, i1 noundef zeroext true) #14, !inline_history !3
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.g) #14
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.g) #14
  %.val.i6 = load ptr, ptr %0, align 8
  %i.o = tail call ptr @to_intel_uncore(ptr noundef %.val.i6) #14 ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 144
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call i32 %i.q(ptr noundef %i.o, i32 %i.g, i1 noundef zeroext false) #14, !inline_history !5 ; 0 uses
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.g) #14
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef zeroext i1 @skl_ddi_pll_get_hw_state(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 96
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = tail call ptr @intel_display_power_get_if_enabled(ptr noundef %0, i32 noundef 0) #14
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sext i32 %i.d to i64
  %i.g = getelementptr [12 x i8], ptr @skl_dpll_regs, i64 %i.f ; 3 uses
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.h) #14
  %.val.i = load ptr, ptr %0, align 8
  %i.i = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #14 ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 144
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call i32 %i.k(ptr noundef %i.i, i32 %i.h, i1 noundef zeroext true) #14, !inline_history !6
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.h) #14
  %.not27 = icmp slt i32 %i.l, 0                  ; 2 uses
  br i1 %.not27, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 442456) #14
  %.val.i29 = load ptr, ptr %0, align 8
  %i.m = tail call ptr @to_intel_uncore(ptr noundef %.val.i29) #14 ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 144
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call i32 %i.o(ptr noundef %i.m, i32 442456, i1 noundef zeroext true) #14, !inline_history !6 ; 2 uses
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 442456) #14
  %i.q = mul i32 %i.d, 6                          ; 2 uses
  %i.r = lshr i32 %i.p, %i.q
  %i.s = and i32 %i.r, 63
  store i32 %i.s, ptr %2, align 4
  %i.t = add i32 %i.q, 5
  %i.u = shl nuw i32 1, %i.t
  %i.v = and i32 %i.p, %i.u
  %.not28 = icmp eq i32 %i.v, 0
  br i1 %.not28, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.g, i64 4
  %i.x = load i32, ptr %i.w, align 4              ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.x) #14
  %.val.i30 = load ptr, ptr %0, align 8
  %i.y = tail call ptr @to_intel_uncore(ptr noundef %.val.i30) #14 ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 144
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call i32 %i.aa(ptr noundef %i.y, i32 %i.x, i1 noundef zeroext true) #14, !inline_history !6
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.x) #14
  %i.ac = getelementptr i8, ptr %2, i64 4
  store i32 %i.ab, ptr %i.ac, align 4
  %i.ad = getelementptr i8, ptr %i.g, i64 8
  %i.ae = load i32, ptr %i.ad, align 4            ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.ae) #14
  %.val.i31 = load ptr, ptr %0, align 8
  %i.af = tail call ptr @to_intel_uncore(ptr noundef %.val.i31) #14 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 144
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call i32 %i.ah(ptr noundef %i.af, i32 %i.ae, i1 noundef zeroext true) #14, !inline_history !6
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.ae) #14
  %i.aj = getelementptr i8, ptr %2, i64 8
  store i32 %i.ai, ptr %i.aj, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  tail call void @intel_display_power_put_unchecked(ptr noundef %0, i32 noundef 0) #14
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.0 = phi i1 [ %.not27, %bb.e ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -22, 1) i32 @hsw_compute_dpll(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40         ; 2 uses
end_hunk_0
