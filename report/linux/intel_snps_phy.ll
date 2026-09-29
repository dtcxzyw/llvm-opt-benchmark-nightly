Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_snps_phy?download=true
inline.NumInlined: 106
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@intel_mpllb_enable:bb.a
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 29 uses
  %i.d = tail call i32 @intel_encoder_to_phy(ptr noundef %0) #6 ; 4 uses
  %i.e = icmp slt i32 %i.d, 4
  %i.f = shl i32 %i.d, 2
  %i.g = add i32 %i.f, 286736
  %.sroa.08.0 = select i1 %i.e, i32 %i.g, i32 286768 ; 5 uses
  %i.h = shl i32 %i.d, 12                         ; 7 uses
  %i.i = add i32 %i.h, 1474560                    ; 3 uses
  %i.j = getelementptr i8, ptr %1, i64 952
  %i.k = load i32, ptr %i.j, align 4
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.i) #6
  %.val.i = load ptr, ptr %i.c, align 8
  %i.l = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #6 ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 176
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef %i.l, i32 %i.i, i32 noundef %i.k, i1 noundef zeroext true) #6, !inline_history !2
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.i) #6
  %i.o = add i32 %i.h, 1474564                    ; 6 uses
  %i.p = getelementptr i8, ptr %1, i64 956        ; 2 uses
  %i.q = load i32, ptr %i.p, align 4
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.o) #6
  %.val.i47 = load ptr, ptr %i.c, align 8
  %i.r = tail call ptr @to_intel_uncore(ptr noundef %.val.i47) #6 ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 176
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef %i.r, i32 %i.o, i32 noundef %i.q, i1 noundef zeroext true) #6, !inline_history !2
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.o) #6
  %i.u = add i32 %i.h, 1474588                    ; 3 uses
  %i.v = getelementptr i8, ptr %1, i64 960
  %i.w = load i32, ptr %i.v, align 4
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.u) #6
  %.val.i48 = load ptr, ptr %i.c, align 8
  %i.x = tail call ptr @to_intel_uncore(ptr noundef %.val.i48) #6 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 176
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef %i.x, i32 %i.u, i32 noundef %i.w, i1 noundef zeroext true) #6, !inline_history !2
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.u) #6
  %i.aa = add i32 %i.h, 1474580                   ; 3 uses
  %i.ab = getelementptr i8, ptr %1, i64 972
  %i.ac = load i32, ptr %i.ab, align 4
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.aa) #6
  %.val.i49 = load ptr, ptr %i.c, align 8
  %i.ad = tail call ptr @to_intel_uncore(ptr noundef %.val.i49) #6 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 176
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef %i.ad, i32 %i.aa, i32 noundef %i.ac, i1 noundef zeroext true) #6, !inline_history !2
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.aa) #6
  %i.ag = add i32 %i.h, 1474584                   ; 3 uses
  %i.ah = getelementptr i8, ptr %1, i64 976
  %i.ai = load i32, ptr %i.ah, align 4
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.ag) #6
  %.val.i50 = load ptr, ptr %i.c, align 8
  %i.aj = tail call ptr @to_intel_uncore(ptr noundef %.val.i50) #6 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 176
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef %i.aj, i32 %i.ag, i32 noundef %i.ai, i1 noundef zeroext true) #6, !inline_history !2
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.ag) #6
  %i.am = add i32 %i.h, 1474568                   ; 3 uses
  %i.an = getelementptr i8, ptr %1, i64 964
  %i.ao = load i32, ptr %i.an, align 4
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.am) #6
  %.val.i51 = load ptr, ptr %i.c, align 8
  %i.ap = tail call ptr @to_intel_uncore(ptr noundef %.val.i51) #6 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 176
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef %i.ap, i32 %i.am, i32 noundef %i.ao, i1 noundef zeroext true) #6, !inline_history !2
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.am) #6
  %i.as = add i32 %i.h, 1474572                   ; 3 uses
  %i.at = getelementptr i8, ptr %1, i64 968
  %i.au = load i32, ptr %i.at, align 4
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.as) #6
  %.val.i52 = load ptr, ptr %i.c, align 8
  %i.av = tail call ptr @to_intel_uncore(ptr noundef %.val.i52) #6 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 176
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef %i.av, i32 %i.as, i32 noundef %i.au, i1 noundef zeroext true) #6, !inline_history !2
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.as) #6
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %.sroa.08.0) #6
  %.val.i53 = load ptr, ptr %i.c, align 8
  %i.ay = tail call ptr @to_intel_uncore(ptr noundef %.val.i53) #6 ; 4 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 144
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call i32 %i.ba(ptr noundef %i.ay, i32 %.sroa.08.0, i1 noundef zeroext true) #6, !inline_history !0
  %i.bc = or i32 %i.bb, -2147483648
  %i.bd = getelementptr i8, ptr %i.ay, i64 176
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void %i.be(ptr noundef %i.ay, i32 %.sroa.08.0, i32 noundef %i.bc, i1 noundef zeroext true) #6, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %.sroa.08.0) #6
  %i.bf = load i32, ptr %i.p, align 4
  %i.bg = or i32 %i.bf, -2147483648
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.o) #6
  %.val.i54 = load ptr, ptr %i.c, align 8
  %i.bh = tail call ptr @to_intel_uncore(ptr noundef %.val.i54) #6 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 176
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bj(ptr noundef %i.bh, i32 %i.o, i32 noundef %i.bg, i1 noundef zeroext true) #6, !inline_history !2
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.o) #6
  %i.bk = tail call i32 @intel_de_wait_for_set_ms(ptr noundef %i.c, i32 %.sroa.08.0, i32 noundef 1073741824, i32 noundef 5) #6
  %.not46 = icmp eq i32 %i.bk, 0
  br i1 %.not46, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bl = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i = icmp eq ptr %i.bl, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bm = getelementptr i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.d, %bb.e
  %i.bo = phi ptr [ %i.bn, %bb.e ], [ null, %bb.d ]
  %i.bp = add i32 %i.d, 65
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.bo, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef %i.bp) #6
  br label %bb.f

bb.f:                                             ; preds = %__drm_to_dev.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_de_wait_for_set_ms(ptr noundef, i32, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__drm_dev_dbg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_mpllb_disable(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 8 uses
  %i.d = tail call i32 @intel_encoder_to_phy(ptr noundef %0) #6 ; 4 uses
  %i.e = icmp slt i32 %i.d, 4
  %i.f = shl i32 %i.d, 2
  %i.g = add i32 %i.f, 286736
  %.sroa.01.0 = select i1 %i.e, i32 %i.g, i32 286768 ; 5 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %.sroa.01.0) #6
  %.val.i = load ptr, ptr %i.c, align 8
  %i.h = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #6 ; 4 uses
  %i.i = getelementptr i8, ptr %i.h, i64 144
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call i32 %i.j(ptr noundef %i.h, i32 %.sroa.01.0, i1 noundef zeroext true) #6, !inline_history !0
  %i.l = and i32 %i.k, 2147483647
  %i.m = getelementptr i8, ptr %i.h, i64 176
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef %i.h, i32 %.sroa.01.0, i32 noundef %i.l, i1 noundef zeroext true) #6, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %.sroa.01.0) #6
  %i.o = shl i32 %i.d, 12
  %i.p = add i32 %i.o, 1474564                    ; 4 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.p) #6
  %.val.i17 = load ptr, ptr %i.c, align 8
  %i.q = tail call ptr @to_intel_uncore(ptr noundef %.val.i17) #6 ; 4 uses
  %i.r = getelementptr i8, ptr %i.q, i64 144
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call i32 %i.s(ptr noundef %i.q, i32 %i.p, i1 noundef zeroext true) #6, !inline_history !0
  %i.u = and i32 %i.t, 2147483647
  %i.v = getelementptr i8, ptr %i.q, i64 176
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef %i.q, i32 %i.p, i32 noundef %i.u, i1 noundef zeroext true) #6, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.p) #6
  %i.x = tail call i32 @intel_de_wait_for_clear_ms(ptr noundef %i.c, i32 %.sroa.01.0, i32 noundef 1073741824, i32 noundef 5) #6
  %.not16 = icmp eq i32 %i.x, 0
  br i1 %.not16, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.d, %bb.e
  %i.ab = phi ptr [ %i.aa, %bb.e ], [ null, %bb.d ]
  %i.ac = add i32 %i.d, 65
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.ab, ptr noundef nonnull @.str.4, i32 noundef %i.ac) #8
  br label %bb.f

bb.f:                                             ; preds = %__drm_to_dev.exit, %bb.c
  ret void
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local range(i32 0, 20646618) i32 @intel_mpllb_calc_port_clock(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not = icmp sgt i32 %i.d, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = and i32 %i.f, 65535
  %i.h = lshr i32 %i.f, 16
  %i.i = and i32 %i.d, 65535
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.043 = phi i32 [ %i.i, %bb.b ], [ 1, %bb.a ]   ; 2 uses
  %.042 = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]
  %.0 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  %i.j = lshr i32 %i.b, 12
  %i.k = and i32 %i.j, 7
  %2 = add nsw i32 %i.k, -1
  %i.l = lshr i32 100000, %2                      ; 2 uses
  %i.m = getelementptr i8, ptr %1, i64 12
  %i.n = load i32, ptr %i.m, align 4
  %i.o = lshr i32 %i.n, 5
  %i.p = and i32 %i.o, 7
  %i.q = shl nuw nsw i32 655360, %i.p             ; 2 uses
  %i.r = shl i32 %i.b, 15
  %i.s = and i32 %i.r, 134152192
  %i.t = add nuw nsw i32 %i.s, 1048576
  %i.u = or disjoint i32 %.0, %i.t
  %i.v = zext nneg i32 %i.l to i64
  %i.w = zext nneg i32 %i.u to i64
  %i.x = mul nuw nsw i64 %i.w, %i.v
  %i.y = mul i32 %.042, %i.l
  %i.z = lshr i32 %.043, 1
  %i.aa = add i32 %i.y, %i.z
  %i.ab = udiv i32 %i.aa, %.043
  %i.ac = zext i32 %i.ab to i64
  %i.ad = add nuw nsw i64 %i.x, %i.ac
  %i.ae = lshr exact i32 %i.q, 1
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = add nuw nsw i64 %i.ad, %i.af
  %i.ah = zext nneg i32 %i.q to i64
  %i.ai = udiv i64 %i.ag, %i.ah
  %i.aj = trunc nuw nsw i64 %i.ai to i32
  ret i32 %i.aj
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_mpllb_readout_hw_state(ptr noundef %0, ptr nofree noundef captures(none) initializes((4, 36)) %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 24 uses
  %i.d = tail call i32 @intel_encoder_to_phy(ptr noundef %0) #6
  %i.e = shl i32 %i.d, 12                         ; 8 uses
  %i.f = add i32 %i.e, 1474560                    ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.f) #6
  %.val.i = load ptr, ptr %i.c, align 8
  %i.g = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #6 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 144
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i32 %i.i(ptr noundef %i.g, i32 %i.f, i1 noundef zeroext true) #6, !inline_history !21
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.f) #6
  %i.k = getelementptr i8, ptr %1, i64 8
  store i32 %i.j, ptr %i.k, align 4
  %i.l = add i32 %i.e, 1474564                    ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.l) #6
  %.val.i34 = load ptr, ptr %i.c, align 8
  %i.m = tail call ptr @to_intel_uncore(ptr noundef %.val.i34) #6 ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 144
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call i32 %i.o(ptr noundef %i.m, i32 %i.l, i1 noundef zeroext true) #6, !inline_history !21
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.l) #6
  %i.q = getelementptr i8, ptr %1, i64 12         ; 3 uses
  store i32 %i.p, ptr %i.q, align 4
  %i.r = add i32 %i.e, 1474588                    ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.r) #6
  %.val.i35 = load ptr, ptr %i.c, align 8
  %i.s = tail call ptr @to_intel_uncore(ptr noundef %.val.i35) #6 ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 144
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call i32 %i.u(ptr noundef %i.s, i32 %i.r, i1 noundef zeroext true) #6, !inline_history !21
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.r) #6
  %i.w = getelementptr i8, ptr %1, i64 16
  store i32 %i.v, ptr %i.w, align 4
  %i.x = add i32 %i.e, 1474580                    ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.x) #6
  %.val.i36 = load ptr, ptr %i.c, align 8
  %i.y = tail call ptr @to_intel_uncore(ptr noundef %.val.i36) #6 ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 144
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call i32 %i.aa(ptr noundef %i.y, i32 %i.x, i1 noundef zeroext true) #6, !inline_history !21
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.x) #6
  %i.ac = getelementptr i8, ptr %1, i64 28
  store i32 %i.ab, ptr %i.ac, align 4
  %i.ad = add i32 %i.e, 1474584                   ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.ad) #6
  %.val.i37 = load ptr, ptr %i.c, align 8
  %i.ae = tail call ptr @to_intel_uncore(ptr noundef %.val.i37) #6 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 144
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call i32 %i.ag(ptr noundef %i.ae, i32 %i.ad, i1 noundef zeroext true) #6, !inline_history !21
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.ad) #6
  %i.ai = getelementptr i8, ptr %1, i64 32
  store i32 %i.ah, ptr %i.ai, align 4
  %i.aj = add i32 %i.e, 1474568                   ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.aj) #6
  %.val.i38 = load ptr, ptr %i.c, align 8
  %i.ak = tail call ptr @to_intel_uncore(ptr noundef %.val.i38) #6 ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 144
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call i32 %i.am(ptr noundef %i.ak, i32 %i.aj, i1 noundef zeroext true) #6, !inline_history !21
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.aj) #6
  %i.ao = getelementptr i8, ptr %1, i64 20
  store i32 %i.an, ptr %i.ao, align 4
  %i.ap = add i32 %i.e, 1474572                   ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.ap) #6
  %.val.i39 = load ptr, ptr %i.c, align 8
  %i.aq = tail call ptr @to_intel_uncore(ptr noundef %.val.i39) #6 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 144
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call i32 %i.as(ptr noundef %i.aq, i32 %i.ap, i1 noundef zeroext true) #6, !inline_history !21
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.ap) #6
  %i.au = getelementptr i8, ptr %1, i64 24
  store i32 %i.at, ptr %i.au, align 4
  %i.av = add i32 %i.e, 1474952                   ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.av) #6
  %.val.i40 = load ptr, ptr %i.c, align 8
  %i.aw = tail call ptr @to_intel_uncore(ptr noundef %.val.i40) #6 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 144
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = tail call i32 %i.ay(ptr noundef %i.aw, i32 %i.av, i1 noundef zeroext true) #6, !inline_history !21
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.av) #6
  %i.ba = and i32 %i.az, -134217728
  %i.bb = getelementptr i8, ptr %1, i64 4
  store i32 %i.ba, ptr %i.bb, align 4
  %i.bc = load i32, ptr %i.q, align 4
  %i.bd = and i32 %i.bc, 2147483647
  store i32 %i.bd, ptr %i.q, align 4
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_mpllb_state_verify(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.intel_mpllb_state, align 4  ; 12 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 33 uses
  %i.e = getelementptr i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %1, i64 136
  %.val234 = load i32, ptr %i.f, align 8
  %i.g = zext i32 %.val234 to i64
  %i.h = getelementptr [56 x i8], ptr %.val, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8              ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  %i.k = getelementptr i8, ptr %i.d, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = and i64 %i.l, 72057594037927936
  %.not211 = icmp eq i64 %i.m, 0
  br i1 %.not211, label %bb.bs, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.j, i64 344
  %i.o = load i8, ptr %i.n, align 8, !range !22, !noundef !23
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %bb.bs

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %i.j, i64 10
  %.val235 = load i8, ptr %i.q, align 2
  %i.r = and i8 %.val235, 14
  %.not376 = icmp eq i8 %i.r, 0
  br i1 %.not376, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr %i.j, i64 844
  %.val236 = load i8, ptr %i.s, align 4, !range !22, !noundef !23
  %i.t = trunc nuw i8 %.val236 to i1
  br i1 %i.t, label %bb.g, label %bb.bs

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = tail call ptr @intel_get_crtc_new_encoder(ptr noundef %0, ptr noundef %i.j) #6
  call void @intel_mpllb_readout_hw_state(ptr noundef %i.u, ptr noundef nonnull %2) #9
  %i.v = getelementptr i8, ptr %i.j, i64 952      ; 2 uses
  %i.w = load i32, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = load i32, ptr %i.x, align 4              ; 3 uses
  %.not212 = icmp eq i32 %i.w, %i.y
  br i1 %.not212, label %bb.o, label %bb.h, !prof !24

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr i8, ptr %i.d, i64 5187
  %i.aa = load i8, ptr %i.z, align 1, !range !22, !noundef !23
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = load ptr, ptr %i.d, align 8             ; 3 uses
  %.not.i = icmp eq ptr %i.ac, null               ; 2 uses
  br i1 %i.ab, label %bb.i, label %.critedge, !prof !13

bb.i:                                             ; preds = %bb.h
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.j

end_hunk_0
