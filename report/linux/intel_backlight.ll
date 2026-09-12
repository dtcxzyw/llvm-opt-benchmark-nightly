Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_backlight?download=true
inline.NumInlined: 270
inline.NumDeleted: 35
begin_hunk_0_@cnp_disable_backlight:bb.a
  %i.ac = and i32 %i.ab, 2147483647
  %i.ad = getelementptr i8, ptr %i.y, i64 176
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef %i.y, i32 %i.x, i32 noundef %i.ac, i1 noundef zeroext true) #9, !inline_history !4
  tail call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %i.x) #9
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cnp_enable_backlight(ptr nofree readnone captures(none) %0, ptr noundef %1, i32 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 19 uses
  %i.e = getelementptr i8, ptr %i.a, i64 2342     ; 6 uses
  %i.f = load i8, ptr %i.e, align 2
  %i.g = zext i8 %i.f to i32
  %i.h = shl nuw nsw i32 %i.g, 8
  %i.i = add nuw nsw i32 %i.h, 819792             ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.d, i32 %i.i) #9
  %.val.i = load ptr, ptr %i.d, align 8
  %i.j = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #9 ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 144
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call i32 %i.l(ptr noundef %i.j, i32 %i.i, i1 noundef zeroext true) #9, !inline_history !1 ; 2 uses
  tail call void @intel_dmc_wl_put(ptr noundef %i.d, i32 %i.i) #9
  %.not34 = icmp sgt i32 %i.m, -1
  br i1 %.not34, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.d, %bb.e
  %i.q = phi ptr [ %i.p, %bb.e ], [ null, %bb.d ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.q, i32 noundef 2, ptr noundef nonnull @.str.35) #9
  %i.r = and i32 %i.m, 2147483647
  %i.s = load i8, ptr %i.e, align 2
  %i.t = zext i8 %i.s to i32
  %i.u = shl nuw nsw i32 %i.t, 8
  %i.v = add nuw nsw i32 %i.u, 819792             ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.d, i32 %i.v) #9
  %.val.i35 = load ptr, ptr %i.d, align 8
  %i.w = tail call ptr @to_intel_uncore(ptr noundef %.val.i35) #9 ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 176
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef %i.w, i32 %i.v, i32 noundef %i.r, i1 noundef zeroext true) #9, !inline_history !2
  tail call void @intel_dmc_wl_put(ptr noundef %i.d, i32 %i.v) #9
  br label %bb.f

bb.f:                                             ; preds = %__drm_to_dev.exit, %bb.c
  %i.z = load i8, ptr %i.e, align 2
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 8
  %i.ac = add nuw nsw i32 %i.ab, 819796           ; 3 uses
  %i.ad = getelementptr i8, ptr %i.a, i64 2336
  %i.ae = load i32, ptr %i.ad, align 8
  tail call void @intel_dmc_wl_get(ptr noundef %i.d, i32 %i.ac) #9
  %.val.i36 = load ptr, ptr %i.d, align 8
  %i.af = tail call ptr @to_intel_uncore(ptr noundef %.val.i36) #9 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 176
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef %i.af, i32 %i.ac, i32 noundef %i.ae, i1 noundef zeroext true) #9, !inline_history !2
  tail call void @intel_dmc_wl_put(ptr noundef %i.d, i32 %i.ac) #9
  %i.ai = load ptr, ptr %1, align 8               ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %.not.i37 = icmp eq ptr %i.aj, null
  br i1 %.not.i37, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = tail call ptr @__drm_to_display(ptr noundef nonnull %i.aj) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.al = phi ptr [ %i.ak, %bb.g ], [ null, %bb.f ]
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %intel_backlight_set_pwm_level.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  br label %intel_backlight_set_pwm_level.exit

intel_backlight_set_pwm_level.exit:               ; preds = %bb.h, %bb.i
  %i.ap = phi ptr [ %i.ao, %bb.i ], [ null, %bb.h ]
  %i.aq = getelementptr i8, ptr %i.ai, i64 64
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = getelementptr i8, ptr %i.ai, i64 96
  %i.at = load ptr, ptr %i.as, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ap, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef %i.ar, ptr noundef %i.at, i32 noundef %2) #9
  %i.au = getelementptr i8, ptr %i.ai, i64 2408
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef %1, i32 noundef %2) #9, !inline_history !30
  %i.ay = getelementptr i8, ptr %i.a, i64 2330
  %i.az = load i8, ptr %i.ay, align 2, !range !24, !noundef !25
  %i.ba = zext nneg i8 %i.az to i32
  %spec.select = shl nuw nsw i32 %i.ba, 29        ; 2 uses
  %i.bb = load i8, ptr %i.e, align 2
  %i.bc = zext i8 %i.bb to i32
  %i.bd = shl nuw nsw i32 %i.bc, 8
  %i.be = add nuw nsw i32 %i.bd, 819792           ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.d, i32 %i.be) #9
  %.val.i38 = load ptr, ptr %i.d, align 8
  %i.bf = tail call ptr @to_intel_uncore(ptr noundef %.val.i38) #9 ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 176
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef %i.bf, i32 %i.be, i32 noundef %spec.select, i1 noundef zeroext true) #9, !inline_history !2
  tail call void @intel_dmc_wl_put(ptr noundef %i.d, i32 %i.be) #9
  %i.bi = load i8, ptr %i.e, align 2
  %i.bj = zext i8 %i.bi to i32
  %i.bk = shl nuw nsw i32 %i.bj, 8
  %i.bl = add nuw nsw i32 %i.bk, 819792           ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.d, i32 %i.bl) #9
  %.val.i39 = load ptr, ptr %i.d, align 8
  %i.bm = tail call ptr @to_intel_uncore(ptr noundef %.val.i39) #9 ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 144
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call i32 %i.bo(ptr noundef %i.bm, i32 %i.bl, i1 noundef zeroext false) #9, !inline_history !5 ; 0 uses
  tail call void @intel_dmc_wl_put(ptr noundef %i.d, i32 %i.bl) #9
  %i.bq = load i8, ptr %i.e, align 2
  %i.br = zext i8 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 8
  %i.bt = add nuw nsw i32 %i.bs, 819792           ; 3 uses
  %i.bu = or disjoint i32 %spec.select, -2147483648
  tail call void @intel_dmc_wl_get(ptr noundef %i.d, i32 %i.bt) #9
  %.val.i40 = load ptr, ptr %i.d, align 8
  %i.bv = tail call ptr @to_intel_uncore(ptr noundef %.val.i40) #9 ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 176
  %i.bx = load ptr, ptr %i.bw, align 8
  tail call void %i.bx(ptr noundef %i.bv, i32 %i.bt, i32 noundef %i.bu, i1 noundef zeroext true) #9, !inline_history !2
  tail call void @intel_dmc_wl_put(ptr noundef %i.d, i32 %i.bt) #9
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cnp_hz_to_pwm(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  %i.d = getelementptr i8, ptr %i.c, i64 1184
  %i.e = load i32, ptr %i.d, align 8
  %i.f = mul i32 %i.e, 1000
  %i.g = lshr i32 %1, 1
  %i.h = add i32 %i.f, %i.g
  %i.i = udiv i32 %i.h, %1
  ret i32 %i.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -19, 1) i32 @lpt_setup_backlight(ptr noundef initializes((2330, 2332), (2336, 2340)) %0, i32 %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 24 uses
  %i.d = getelementptr i8, ptr %i.c, i64 24       ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %.off = add i32 %i.e, -3
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 794628) #9
  %.val.i = load ptr, ptr %i.c, align 8
  %i.f = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #9 ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 144
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i32 %i.h(ptr noundef %i.f, i32 794628, i1 noundef zeroext true) #9, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 794628) #9
  %2 = trunc i32 %i.i to i8
  %3 = lshr i8 %2, 5
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 794624) #9
  %.val.i57 = load ptr, ptr %i.c, align 8
  %i.j = tail call ptr @to_intel_uncore(ptr noundef %.val.i57) #9 ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 144
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call i32 %i.l(ptr noundef %i.j, i32 794624, i1 noundef zeroext true) #9, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 794624) #9
  %4 = trunc i32 %i.m to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.048.in = phi i8 [ %3, %bb.d ], [ %4, %bb.e ]
  %i.n = getelementptr i8, ptr %0, i64 2331
  %i.o = and i8 %.048.in, 1
  store i8 %i.o, ptr %i.n, align 1
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 819792) #9
  %.val.i58 = load ptr, ptr %i.c, align 8
  %i.p = tail call ptr @to_intel_uncore(ptr noundef %.val.i58) #9 ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 144
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call i32 %i.r(ptr noundef %i.p, i32 819792, i1 noundef zeroext true) #9, !inline_history !1 ; 5 uses
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 819792) #9
  %i.t = getelementptr i8, ptr %0, i64 2330
  %i.u = lshr i32 %i.s, 29
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = and i8 %i.v, 1
  store i8 %i.w, ptr %i.t, align 2
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 819796) #9
  %.val.i59 = load ptr, ptr %i.c, align 8
  %i.x = tail call ptr @to_intel_uncore(ptr noundef %.val.i59) #9 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 144
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call i32 %i.z(ptr noundef %i.x, i32 819796, i1 noundef zeroext true) #9, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 819796) #9
  %i.ab = lshr i32 %i.aa, 16
  %i.ac = getelementptr i8, ptr %0, i64 2336      ; 3 uses
  store i32 %i.ab, ptr %i.ac, align 8
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 295504) #9
  %.val.i60 = load ptr, ptr %i.c, align 8
  %i.ad = tail call ptr @to_intel_uncore(ptr noundef %.val.i60) #9 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 144
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call i32 %i.af(ptr noundef %i.ad, i32 295504, i1 noundef zeroext true) #9, !inline_history !1 ; 2 uses
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 295504) #9
  %i.ah = load i32, ptr %i.ac, align 8
  %.not52 = icmp eq i32 %i.ah, 0
  br i1 %.not52, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.ai = tail call fastcc i32 @get_backlight_max_vbt(ptr noundef %0) #11, !srcloc !60 ; 2 uses
  store i32 %i.ai, ptr %i.ac, align 8
  %.not53 = icmp eq i32 %i.ai, 0
  br i1 %.not53, label %bb.n, label %.thread

.thread:                                          ; preds = %bb.f, %bb.g
  %i.aj = tail call fastcc i32 @get_backlight_min_vbt(ptr noundef %0) #11, !srcloc !61
  %i.ak = getelementptr i8, ptr %0, i64 2332
  store i32 %i.aj, ptr %i.ak, align 4
  %i.al = icmp slt i32 %i.s, 0
  %i.am = getelementptr i8, ptr %0, i64 2340
  %.lobit = lshr i32 %i.s, 31
  %i.an = trunc nuw nsw i32 %.lobit to i8
  store i8 %i.an, ptr %i.am, align 4
  br i1 %i.al, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.thread
  %i.ao = load i32, ptr %i.d, align 8
  %.off55 = add i32 %i.ao, -3
  %switch56 = icmp ult i32 %.off55, 2
  br i1 %switch56, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.ap = and i32 %i.s, 1073741824
  %.not54 = icmp eq i32 %i.ap, 0
  %i.aq = icmp slt i32 %i.ag, 0
  %spec.select = select i1 %.not54, i1 %i.aq, i1 false
  br i1 %spec.select, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %pch_get_backlight.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = tail call ptr @__drm_to_display(ptr noundef nonnull %i.ar) #9
  br label %pch_get_backlight.exit

pch_get_backlight.exit:                           ; preds = %bb.j, %bb.k
  %i.at = phi ptr [ %i.as, %bb.k ], [ null, %bb.j ] ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.at, i32 295508) #9
  %.val.i.i = load ptr, ptr %i.at, align 8
  %i.au = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i) #9 ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 144
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call i32 %i.aw(ptr noundef %i.au, i32 295508, i1 noundef zeroext true) #9, !inline_history !59
  tail call void @intel_dmc_wl_put(ptr noundef %i.at, i32 295508) #9
  %i.ay = and i32 %i.ax, 65535
  %i.az = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i61 = icmp eq ptr %i.az, null
  br i1 %.not.i61, label %__drm_to_dev.exit, label %bb.l

bb.l:                                             ; preds = %pch_get_backlight.exit
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %pch_get_backlight.exit, %bb.l
  %i.bc = phi ptr [ %i.bb, %bb.l ], [ null, %pch_get_backlight.exit ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.bc, i32 noundef 2, ptr noundef nonnull @.str.36) #9
  %i.bd = getelementptr i8, ptr %0, i64 1960
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void @lpt_set_backlight(ptr noundef %i.be, i32 noundef %i.ay) #11, !srcloc !62
  %i.bf = or disjoint i32 %i.s, 1073741824
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 819792) #9
  %.val.i62 = load ptr, ptr %i.c, align 8
  %i.bg = tail call ptr @to_intel_uncore(ptr noundef %.val.i62) #9 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 176
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef %i.bg, i32 819792, i32 noundef %i.bf, i1 noundef zeroext true) #9, !inline_history !2
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 819792) #9
  %i.bj = and i32 %i.ag, 2147483647
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 295504) #9
  %.val.i63 = load ptr, ptr %i.c, align 8
  %i.bk = tail call ptr @to_intel_uncore(ptr noundef %.val.i63) #9 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 176
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(ptr noundef %i.bk, i32 295504, i32 noundef %i.bj, i1 noundef zeroext true) #9, !inline_history !2
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 295504) #9
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %.thread, %__drm_to_dev.exit, %bb.i
  %i.bn = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i64 = icmp eq ptr %i.bn, null
  br i1 %.not.i64, label %__drm_to_dev.exit65, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.bo = getelementptr i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  br label %__drm_to_dev.exit65

__drm_to_dev.exit65:                              ; preds = %.critedge, %bb.m
  %i.bq = phi ptr [ %i.bp, %bb.m ], [ null, %.critedge ]
  %i.br = getelementptr i8, ptr %0, i64 64
  %i.bs = load i32, ptr %i.br, align 8
  %i.bt = getelementptr i8, ptr %0, i64 96
  %i.bu = load ptr, ptr %i.bt, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.bq, i32 noundef 2, ptr noundef nonnull @.str.37, i32 noundef %i.bs, ptr noundef %i.bu) #9
  br label %bb.n

bb.n:                                             ; preds = %bb.g, %__drm_to_dev.exit65
  %.0 = phi i32 [ 0, %__drm_to_dev.exit65 ], [ -19, %bb.g ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 65536) i32 @lpt_get_backlight(ptr nofree noundef readonly captures(none) %0, i32 %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 819796) #9
  %.val.i = load ptr, ptr %i.c, align 8
  %i.d = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #9 ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 144
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i32 %i.f(ptr noundef %i.d, i32 819796, i1 noundef zeroext true) #9, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 819796) #9
  %i.h = and i32 %i.g, 65535
  ret i32 %i.h
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @lpt_set_backlight(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 6 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.d, i32 819796) #9
  %.val.i = load ptr, ptr %i.d, align 8
  %i.e = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #9 ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 144
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call i32 %i.g(ptr noundef %i.e, i32 819796, i1 noundef zeroext true) #9, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.d, i32 819796) #9
  %i.i = and i32 %i.h, -65536
  %i.j = or i32 %i.i, %1
  tail call void @intel_dmc_wl_get(ptr noundef %i.d, i32 819796) #9
  %.val.i9 = load ptr, ptr %i.d, align 8
  %i.k = tail call ptr @to_intel_uncore(ptr noundef %.val.i9) #9 ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 176
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef %i.k, i32 819796, i32 noundef %i.j, i1 noundef zeroext true) #9, !inline_history !2
  tail call void @intel_dmc_wl_put(ptr noundef %i.d, i32 819796) #9
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
end_hunk_0
