Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_dpll_mgr?download=true
inline.NumInlined: 679
inline.NumDeleted: 89
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@bxt_ddi_pll_get_freq:bb.a
  %i.o = getelementptr i8, ptr %2, i64 12
  %i.p = load i32, ptr %i.o, align 4
  %i.q = lshr i32 %i.p, 8
  %i.r = and i32 %i.q, 15
  store i32 %i.r, ptr %3, align 4
  %i.s = load i32, ptr %2, align 4                ; 2 uses
  %i.t = lshr i32 %i.s, 13
  %i.u = and i32 %i.t, 7
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.u, ptr %i.v, align 4
  %i.w = lshr i32 %i.s, 8
  %i.x = and i32 %i.w, 31
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.x, ptr %i.y, align 4
  %i.z = getelementptr i8, ptr %0, i64 4408
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = call i32 @chv_calc_dpll_params(i32 noundef %i.aa, ptr noundef nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i32 %i.ab
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @bxt_port_to_phy_channel(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_de_wait_for_set_us(ptr noundef, i32, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_de_wait_for_clear_us(ptr noundef, i32, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @chv_calc_dpll_params(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -22, 1) i32 @bxt_ddi_set_dpll_hw_state(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  %i.e = getelementptr i8, ptr %0, i64 944
  %i.f = getelementptr i8, ptr %0, i64 1320
  %i.g = load i32, ptr %i.f, align 8              ; 4 uses
  %i.h = getelementptr i8, ptr %1, i64 24
  %i.i = load i32, ptr %i.h, align 4              ; 4 uses
  %i.j = add i32 %i.i, -6200000
  %or.cond = icmp ult i32 %i.j, 500001
  br i1 %or.cond, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = add i32 %i.i, -5400001
  %or.cond3 = icmp ult i32 %i.k, 799999
  %i.l = add i32 %i.i, -4800000
  %or.cond5 = icmp ult i32 %i.l, 600000
  %or.cond52 = or i1 %or.cond3, %or.cond5
  br i1 %or.cond52, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = icmp eq i32 %i.i, 5400000
  br i1 %i.m, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.f, %bb.g
  %i.q = phi ptr [ %i.p, %bb.g ], [ null, %bb.f ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.q, ptr noundef @.str.92) #15
  br label %bb.o

bb.h:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.047 = phi i32 [ 199429, %bb.d ], [ 198916, %bb.c ], [ 67587, %bb.e ]
  %.044 = phi i32 [ 9, %bb.d ], [ 8, %bb.c ], [ 9, %bb.e ]
  %i.r = icmp sgt i32 %i.g, 270000
  br i1 %i.r, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = icmp sgt i32 %i.g, 135000
  br i1 %i.s, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = icmp sgt i32 %i.g, 67000
  br i1 %i.t, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = icmp sgt i32 %i.g, 33000
  %. = select i1 %i.u, i32 68, i32 66
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.0 = phi i32 [ 71, %bb.j ], [ 88, %bb.h ], [ 77, %bb.i ], [ %., %bb.k ]
  %i.v = getelementptr i8, ptr %1, i64 12
  %i.w = load i32, ptr %i.v, align 4
  %i.x = shl i32 %i.w, 13
  %i.y = and i32 %i.x, 57344
  %i.z = getelementptr i8, ptr %1, i64 16
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = shl i32 %i.aa, 8
  %i.ac = and i32 %i.ab, 7936
  %i.ad = or disjoint i32 %i.ac, %i.y
  store i32 %i.ad, ptr %i.e, align 8
  %i.ae = getelementptr i8, ptr %1, i64 8         ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = lshr i32 %i.af, 22
  %i.ah = and i32 %i.ag, 255
  %i.ai = getelementptr i8, ptr %0, i64 952
  store i32 %i.ah, ptr %i.ai, align 8
  %i.aj = load i32, ptr %1, align 4
  %i.ak = shl i32 %i.aj, 8
  %i.al = and i32 %i.ak, 3840
  %i.am = getelementptr i8, ptr %0, i64 956
  store i32 %i.al, ptr %i.am, align 4
  %i.an = load i32, ptr %i.ae, align 4
  %i.ao = and i32 %i.an, 4194303
  %i.ap = getelementptr i8, ptr %0, i64 960
  store i32 %i.ao, ptr %i.ap, align 8
  %i.aq = load i32, ptr %i.ae, align 4
  %i.ar = and i32 %i.aq, 4194303
  %.not51 = icmp eq i32 %i.ar, 0
  br i1 %.not51, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr i8, ptr %0, i64 964
  store i32 65536, ptr %i.as, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.at = getelementptr i8, ptr %0, i64 968
  store i32 %.047, ptr %i.at, align 8
  %i.au = getelementptr i8, ptr %0, i64 972
  store i32 %.044, ptr %i.au, align 4
  %i.av = getelementptr i8, ptr %0, i64 976
  store i32 10, ptr %i.av, align 8
  %i.aw = getelementptr i8, ptr %0, i64 980
  store i32 134233088, ptr %i.aw, align 4
  %i.ax = getelementptr i8, ptr %0, i64 948
  store i32 8192, ptr %i.ax, align 4
  %i.ay = getelementptr i8, ptr %0, i64 984
  store i32 %.0, ptr %i.ay, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %__drm_to_dev.exit
  %.048 = phi i32 [ 0, %bb.n ], [ -22, %__drm_to_dev.exit ]
  ret i32 %.048
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @bxt_find_best_dpll(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -22, 1) i32 @skl_compute_dpll(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %1, i64 136
  %.val6 = load i32, ptr %i.b, align 8
  %i.c = zext i32 %.val6 to i64
  %i.d = getelementptr [56 x i8], ptr %.val, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8              ; 8 uses
  %i.g = getelementptr i8, ptr %i.f, i64 888
  %.val7 = load i32, ptr %i.g, align 8            ; 2 uses
  %i.h = and i32 %.val7, 64
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.bp, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.f, align 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @__drm_to_display(ptr noundef nonnull %i.j) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = phi ptr [ %i.k, %bb.c ], [ null, %bb.b ] ; 2 uses
  %i.m = getelementptr i8, ptr %i.f, i64 1320     ; 2 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.l, i64 4408
  %i.p = load i32, ptr %i.o, align 8              ; 2 uses
  %i.q = sext i32 %i.n to i64                     ; 8 uses
  %i.r = mul nsw i64 %i.q, 5000                   ; 4 uses
  br label %bb.av

.preheader47.split.us.1.i.i:                      ; preds = %.loopexit.split.us.i.i
  %i.s = mul nsw i64 %i.q, 15000                  ; 12 uses
  %3 = icmp ugt i64 %i.s, 8400000000
  %i.t = add nsw i64 %i.s, -8400000000
  %4 = sub nuw nsw i64 8400000000, %i.s
  %5 = select i1 %3, i64 %i.t, i64 %4
  %6 = mul nsw i64 %5, 10000                      ; 3 uses
  %i.u = udiv i64 %6, 8400000000                  ; 2 uses
  %.not.i.us.1104.i.i = icmp ult i64 %i.s, 8400000000
  %i.v = icmp ult i64 %i.u, %.sroa.0.3.i.i        ; 2 uses
  br i1 %.not.i.us.1104.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader47.split.us.1.i.i
  %i.w = icmp ult i64 %6, 840000000000
  %or.cond45.us.1105.i.i = and i1 %i.w, %i.v
  br i1 %or.cond45.us.1105.i.i, label %.sink.split.i.us.1107.i.i, label %skl_wrpll_try_divider.exit.us.1111.i.i

bb.f:                                             ; preds = %.preheader47.split.us.1.i.i
  %i.x = icmp ult i64 %6, 5040000000000
  %or.cond46.us.1106.i.i = and i1 %i.x, %i.v
  br i1 %or.cond46.us.1106.i.i, label %.sink.split.i.us.1107.i.i, label %skl_wrpll_try_divider.exit.us.1111.i.i

.sink.split.i.us.1107.i.i:                        ; preds = %bb.f, %bb.e
  br label %skl_wrpll_try_divider.exit.us.1111.i.i

skl_wrpll_try_divider.exit.us.1111.i.i:           ; preds = %.sink.split.i.us.1107.i.i, %bb.f, %bb.e
  %.sroa.10.5.us.1108.i.i = phi i32 [ 3, %.sink.split.i.us.1107.i.i ], [ 0, %bb.e ], [ 0, %bb.f ] ; 3 uses
  %.sroa.7.5.us.1109.i.i = phi i64 [ 8400000000, %.sink.split.i.us.1107.i.i ], [ %.sroa.7.3.i.i, %bb.e ], [ %.sroa.7.3.i.i, %bb.f ] ; 3 uses
  %.sroa.0.4.us.1110.i.i = phi i64 [ %i.u, %.sink.split.i.us.1107.i.i ], [ %.sroa.0.3.i.i, %bb.e ], [ %.sroa.0.3.i.i, %bb.f ] ; 4 uses
  %i.y = icmp eq i64 %.sroa.0.4.us.1110.i.i, 0
  br i1 %i.y, label %.loopexit.split.us.1.i.i, label %bb.g

bb.g:                                             ; preds = %skl_wrpll_try_divider.exit.us.1111.i.i
  %i.z = mul nsw i64 %i.q, 25000                  ; 12 uses
  %7 = icmp ugt i64 %i.z, 8400000000
  %i.aa = add nsw i64 %i.z, -8400000000
  %8 = sub nuw nsw i64 8400000000, %i.z
  %9 = select i1 %7, i64 %i.aa, i64 %8
  %10 = mul nsw i64 %9, 10000                     ; 4 uses
  %i.ab = udiv i64 %10, 8400000000                ; 2 uses
  %.not.i.us.1104.1.i.i = icmp ult i64 %i.z, 8400000000
  %i.ac = icmp ult i64 %i.ab, %.sroa.0.4.us.1110.i.i ; 2 uses
  br i1 %.not.i.us.1104.1.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = icmp ult i64 %10, 840000000000
  %or.cond45.us.1105.1.i.i = and i1 %i.ad, %i.ac
  br i1 %or.cond45.us.1105.1.i.i, label %skl_wrpll_try_divider.exit.us.1111.1.i.i, label %skl_wrpll_try_divider.exit.us.1111.1.thread.i.i

bb.i:                                             ; preds = %bb.g
  %i.ae = icmp ult i64 %10, 5040000000000
  %or.cond46.us.1106.1.i.i = and i1 %i.ae, %i.ac
  br i1 %or.cond46.us.1106.1.i.i, label %skl_wrpll_try_divider.exit.us.1111.1.i.i, label %skl_wrpll_try_divider.exit.us.1111.1.thread.i.i

skl_wrpll_try_divider.exit.us.1111.1.i.i:         ; preds = %bb.i, %bb.h
  %i.af = icmp samesign ult i64 %10, 8400000000
  br i1 %i.af, label %.sink.split.i29.i.thread36.i, label %skl_wrpll_try_divider.exit.us.1111.1.thread.i.i

skl_wrpll_try_divider.exit.us.1111.1.thread.i.i:  ; preds = %skl_wrpll_try_divider.exit.us.1111.1.i.i, %bb.i, %bb.h
  %.sroa.0.4.us.1110.1124.i.i = phi i64 [ %i.ab, %skl_wrpll_try_divider.exit.us.1111.1.i.i ], [ %.sroa.0.4.us.1110.i.i, %bb.h ], [ %.sroa.0.4.us.1110.i.i, %bb.i ] ; 3 uses
  %.sroa.7.5.us.1109.1123.i.i = phi i64 [ 8400000000, %skl_wrpll_try_divider.exit.us.1111.1.i.i ], [ %.sroa.7.5.us.1109.i.i, %bb.h ], [ %.sroa.7.5.us.1109.i.i, %bb.i ] ; 2 uses
  %.sroa.10.5.us.1108.1122.i.i = phi i32 [ 5, %skl_wrpll_try_divider.exit.us.1111.1.i.i ], [ %.sroa.10.5.us.1108.i.i, %bb.h ], [ %.sroa.10.5.us.1108.i.i, %bb.i ] ; 2 uses
  %i.ag = mul nsw i64 %i.q, 35000                 ; 12 uses
  %11 = icmp ugt i64 %i.ag, 8400000000
  %i.ah = add nsw i64 %i.ag, -8400000000
  %12 = sub nuw nsw i64 8400000000, %i.ag
  %13 = select i1 %11, i64 %i.ah, i64 %12
  %14 = mul nsw i64 %13, 10000                    ; 4 uses
  %i.ai = udiv i64 %14, 8400000000                ; 2 uses
  %.not.i.us.1104.2.i.i = icmp ult i64 %i.ag, 8400000000
  %i.aj = icmp ult i64 %i.ai, %.sroa.0.4.us.1110.1124.i.i ; 2 uses
  br i1 %.not.i.us.1104.2.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %skl_wrpll_try_divider.exit.us.1111.1.thread.i.i
  %i.ak = icmp ult i64 %14, 840000000000
  %or.cond45.us.1105.2.i.i = and i1 %i.ak, %i.aj
  br i1 %or.cond45.us.1105.2.i.i, label %skl_wrpll_try_divider.exit.us.1111.2.i.i, label %skl_wrpll_try_divider.exit.us.1111.2.thread.i.i

bb.k:                                             ; preds = %skl_wrpll_try_divider.exit.us.1111.1.thread.i.i
  %i.al = icmp ult i64 %14, 5040000000000
  %or.cond46.us.1106.2.i.i = and i1 %i.al, %i.aj
  br i1 %or.cond46.us.1106.2.i.i, label %skl_wrpll_try_divider.exit.us.1111.2.i.i, label %skl_wrpll_try_divider.exit.us.1111.2.thread.i.i

skl_wrpll_try_divider.exit.us.1111.2.i.i:         ; preds = %bb.k, %bb.j
  %i.am = icmp samesign ult i64 %14, 8400000000
  br i1 %i.am, label %.thread.i, label %skl_wrpll_try_divider.exit.us.1111.2.thread.i.i

skl_wrpll_try_divider.exit.us.1111.2.thread.i.i:  ; preds = %skl_wrpll_try_divider.exit.us.1111.2.i.i, %bb.k, %bb.j
  %.sroa.0.4.us.1110.2130.i.i = phi i64 [ %i.ai, %skl_wrpll_try_divider.exit.us.1111.2.i.i ], [ %.sroa.0.4.us.1110.1124.i.i, %bb.j ], [ %.sroa.0.4.us.1110.1124.i.i, %bb.k ] ; 3 uses
  %.sroa.7.5.us.1109.2129.i.i = phi i64 [ 8400000000, %skl_wrpll_try_divider.exit.us.1111.2.i.i ], [ %.sroa.7.5.us.1109.1123.i.i, %bb.j ], [ %.sroa.7.5.us.1109.1123.i.i, %bb.k ] ; 2 uses
  %.sroa.10.5.us.1108.2128.i.i = phi i32 [ 7, %skl_wrpll_try_divider.exit.us.1111.2.i.i ], [ %.sroa.10.5.us.1108.1122.i.i, %bb.j ], [ %.sroa.10.5.us.1108.1122.i.i, %bb.k ] ; 2 uses
  %i.an = mul nsw i64 %i.q, 45000                 ; 12 uses
  %15 = icmp ugt i64 %i.an, 8400000000
  %i.ao = add nsw i64 %i.an, -8400000000
  %16 = sub nuw nsw i64 8400000000, %i.an
  %17 = select i1 %15, i64 %i.ao, i64 %16
  %18 = mul nsw i64 %17, 10000                    ; 4 uses
  %i.ap = udiv i64 %18, 8400000000                ; 2 uses
  %.not.i.us.1104.3.i.i = icmp ult i64 %i.an, 8400000000
  %i.aq = icmp ult i64 %i.ap, %.sroa.0.4.us.1110.2130.i.i ; 2 uses
  br i1 %.not.i.us.1104.3.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %skl_wrpll_try_divider.exit.us.1111.2.thread.i.i
  %i.ar = icmp ult i64 %18, 840000000000
  %or.cond45.us.1105.3.i.i = and i1 %i.ar, %i.aq
  br i1 %or.cond45.us.1105.3.i.i, label %skl_wrpll_try_divider.exit.us.1111.3.i.i, label %skl_wrpll_try_divider.exit.us.1111.3.thread.i.i

bb.m:                                             ; preds = %skl_wrpll_try_divider.exit.us.1111.2.thread.i.i
  %i.as = icmp ult i64 %18, 5040000000000
  %or.cond46.us.1106.3.i.i = and i1 %i.as, %i.aq
  br i1 %or.cond46.us.1106.3.i.i, label %skl_wrpll_try_divider.exit.us.1111.3.i.i, label %skl_wrpll_try_divider.exit.us.1111.3.thread.i.i

skl_wrpll_try_divider.exit.us.1111.3.i.i:         ; preds = %bb.m, %bb.l
  %i.at = icmp samesign ult i64 %18, 8400000000
  br i1 %i.at, label %.thread.thread.thread259.i.i, label %skl_wrpll_try_divider.exit.us.1111.3.thread.i.i

skl_wrpll_try_divider.exit.us.1111.3.thread.i.i:  ; preds = %skl_wrpll_try_divider.exit.us.1111.3.i.i, %bb.m, %bb.l
  %.sroa.0.4.us.1110.3136.i.i = phi i64 [ %i.ap, %skl_wrpll_try_divider.exit.us.1111.3.i.i ], [ %.sroa.0.4.us.1110.2130.i.i, %bb.l ], [ %.sroa.0.4.us.1110.2130.i.i, %bb.m ] ; 3 uses
  %.sroa.7.5.us.1109.3135.i.i = phi i64 [ 8400000000, %skl_wrpll_try_divider.exit.us.1111.3.i.i ], [ %.sroa.7.5.us.1109.2129.i.i, %bb.l ], [ %.sroa.7.5.us.1109.2129.i.i, %bb.m ] ; 2 uses
  %.sroa.10.5.us.1108.3134.i.i = phi i32 [ 9, %skl_wrpll_try_divider.exit.us.1111.3.i.i ], [ %.sroa.10.5.us.1108.2128.i.i, %bb.l ], [ %.sroa.10.5.us.1108.2128.i.i, %bb.m ] ; 2 uses
  %i.au = mul nsw i64 %i.q, 75000                 ; 12 uses
  %19 = icmp ugt i64 %i.au, 8400000000
  %i.av = add nsw i64 %i.au, -8400000000
  %20 = sub nuw nsw i64 8400000000, %i.au
  %21 = select i1 %19, i64 %i.av, i64 %20
  %22 = mul nsw i64 %21, 10000                    ; 4 uses
  %i.aw = udiv i64 %22, 8400000000                ; 2 uses
  %.not.i.us.1104.4.i.i = icmp ult i64 %i.au, 8400000000
  %i.ax = icmp ult i64 %i.aw, %.sroa.0.4.us.1110.3136.i.i ; 2 uses
  br i1 %.not.i.us.1104.4.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %skl_wrpll_try_divider.exit.us.1111.3.thread.i.i
  %i.ay = icmp ult i64 %22, 840000000000
  %or.cond45.us.1105.4.i.i = and i1 %i.ay, %i.ax
  br i1 %or.cond45.us.1105.4.i.i, label %skl_wrpll_try_divider.exit.us.1111.4.i.i, label %skl_wrpll_try_divider.exit.us.1111.4.thread.i.i

bb.o:                                             ; preds = %skl_wrpll_try_divider.exit.us.1111.3.thread.i.i
  %i.az = icmp ult i64 %22, 5040000000000
  %or.cond46.us.1106.4.i.i = and i1 %i.az, %i.ax
  br i1 %or.cond46.us.1106.4.i.i, label %skl_wrpll_try_divider.exit.us.1111.4.i.i, label %skl_wrpll_try_divider.exit.us.1111.4.thread.i.i

skl_wrpll_try_divider.exit.us.1111.4.i.i:         ; preds = %bb.o, %bb.n
  %i.ba = icmp samesign ult i64 %22, 8400000000
  br i1 %i.ba, label %.thread.i, label %skl_wrpll_try_divider.exit.us.1111.4.thread.i.i

skl_wrpll_try_divider.exit.us.1111.4.thread.i.i:  ; preds = %skl_wrpll_try_divider.exit.us.1111.4.i.i, %bb.o, %bb.n
  %.sroa.0.4.us.1110.4142.i.i = phi i64 [ %i.aw, %skl_wrpll_try_divider.exit.us.1111.4.i.i ], [ %.sroa.0.4.us.1110.3136.i.i, %bb.n ], [ %.sroa.0.4.us.1110.3136.i.i, %bb.o ] ; 3 uses
  %.sroa.7.5.us.1109.4141.i.i = phi i64 [ 8400000000, %skl_wrpll_try_divider.exit.us.1111.4.i.i ], [ %.sroa.7.5.us.1109.3135.i.i, %bb.n ], [ %.sroa.7.5.us.1109.3135.i.i, %bb.o ] ; 2 uses
  %.sroa.10.5.us.1108.4140.i.i = phi i32 [ 15, %skl_wrpll_try_divider.exit.us.1111.4.i.i ], [ %.sroa.10.5.us.1108.3134.i.i, %bb.n ], [ %.sroa.10.5.us.1108.3134.i.i, %bb.o ] ; 2 uses
  %i.bb = mul nsw i64 %i.q, 105000                ; 12 uses
  %23 = icmp ugt i64 %i.bb, 8400000000
  %i.bc = add nsw i64 %i.bb, -8400000000
  %24 = sub nuw nsw i64 8400000000, %i.bb
  %25 = select i1 %23, i64 %i.bc, i64 %24
  %26 = mul nsw i64 %25, 10000                    ; 4 uses
  %i.bd = udiv i64 %26, 8400000000                ; 2 uses
  %.not.i.us.1104.5.i.i = icmp ult i64 %i.bb, 8400000000
  %i.be = icmp ult i64 %i.bd, %.sroa.0.4.us.1110.4142.i.i ; 2 uses
  br i1 %.not.i.us.1104.5.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %skl_wrpll_try_divider.exit.us.1111.4.thread.i.i
  %i.bf = icmp ult i64 %26, 840000000000
  %or.cond45.us.1105.5.i.i = and i1 %i.bf, %i.be
  br i1 %or.cond45.us.1105.5.i.i, label %skl_wrpll_try_divider.exit.us.1111.5.i.i, label %skl_wrpll_try_divider.exit.us.1111.5.thread.i.i

bb.q:                                             ; preds = %skl_wrpll_try_divider.exit.us.1111.4.thread.i.i
  %i.bg = icmp ult i64 %26, 5040000000000
  %or.cond46.us.1106.5.i.i = and i1 %i.bg, %i.be
  br i1 %or.cond46.us.1106.5.i.i, label %skl_wrpll_try_divider.exit.us.1111.5.i.i, label %skl_wrpll_try_divider.exit.us.1111.5.thread.i.i

skl_wrpll_try_divider.exit.us.1111.5.i.i:         ; preds = %bb.q, %bb.p
  %i.bh = icmp samesign ult i64 %26, 8400000000
  br i1 %i.bh, label %.thread.i, label %skl_wrpll_try_divider.exit.us.1111.5.thread.i.i

skl_wrpll_try_divider.exit.us.1111.5.thread.i.i:  ; preds = %skl_wrpll_try_divider.exit.us.1111.5.i.i, %bb.q, %bb.p
  %.sroa.0.4.us.1110.5148.i.i = phi i64 [ %i.bd, %skl_wrpll_try_divider.exit.us.1111.5.i.i ], [ %.sroa.0.4.us.1110.4142.i.i, %bb.p ], [ %.sroa.0.4.us.1110.4142.i.i, %bb.q ] ; 3 uses
  %.sroa.7.5.us.1109.5147.i.i = phi i64 [ 8400000000, %skl_wrpll_try_divider.exit.us.1111.5.i.i ], [ %.sroa.7.5.us.1109.4141.i.i, %bb.p ], [ %.sroa.7.5.us.1109.4141.i.i, %bb.q ] ; 2 uses
  %.sroa.10.5.us.1108.5146.i.i = phi i32 [ 21, %skl_wrpll_try_divider.exit.us.1111.5.i.i ], [ %.sroa.10.5.us.1108.4140.i.i, %bb.p ], [ %.sroa.10.5.us.1108.4140.i.i, %bb.q ] ; 2 uses
  %i.bi = mul nsw i64 %i.q, 175000                ; 12 uses
  %27 = icmp ugt i64 %i.bi, 8400000000
  %i.bj = add nsw i64 %i.bi, -8400000000
  %28 = sub nuw nsw i64 8400000000, %i.bi
  %29 = select i1 %27, i64 %i.bj, i64 %28
  %30 = mul nsw i64 %29, 10000                    ; 4 uses
  %i.bk = udiv i64 %30, 8400000000                ; 2 uses
  %.not.i.us.1104.6.i.i = icmp ult i64 %i.bi, 8400000000
  %i.bl = icmp ult i64 %i.bk, %.sroa.0.4.us.1110.5148.i.i ; 2 uses
  br i1 %.not.i.us.1104.6.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %skl_wrpll_try_divider.exit.us.1111.5.thread.i.i
  %i.bm = icmp ult i64 %30, 840000000000
  %or.cond45.us.1105.6.i.i = and i1 %i.bm, %i.bl
  br i1 %or.cond45.us.1105.6.i.i, label %skl_wrpll_try_divider.exit.us.1111.6.i.i, label %._crit_edge.us.1117.i.i

bb.s:                                             ; preds = %skl_wrpll_try_divider.exit.us.1111.5.thread.i.i
  %i.bn = icmp ult i64 %30, 5040000000000
  %or.cond46.us.1106.6.i.i = and i1 %i.bn, %i.bl
  br i1 %or.cond46.us.1106.6.i.i, label %skl_wrpll_try_divider.exit.us.1111.6.i.i, label %._crit_edge.us.1117.i.i

skl_wrpll_try_divider.exit.us.1111.6.i.i:         ; preds = %bb.s, %bb.r
  %i.bo = icmp samesign ult i64 %30, 8400000000
  br i1 %i.bo, label %.thread.i, label %._crit_edge.us.1117.i.i

._crit_edge.us.1117.i.i:                          ; preds = %skl_wrpll_try_divider.exit.us.1111.6.i.i, %bb.s, %bb.r
  %.sroa.0.4.us.1110.6154.i.i = phi i64 [ %i.bk, %skl_wrpll_try_divider.exit.us.1111.6.i.i ], [ %.sroa.0.4.us.1110.5148.i.i, %bb.r ], [ %.sroa.0.4.us.1110.5148.i.i, %bb.s ] ; 3 uses
  %.sroa.7.5.us.1109.6153.i.i = phi i64 [ 8400000000, %skl_wrpll_try_divider.exit.us.1111.6.i.i ], [ %.sroa.7.5.us.1109.5147.i.i, %bb.r ], [ %.sroa.7.5.us.1109.5147.i.i, %bb.s ] ; 2 uses
  %.sroa.10.5.us.1108.6152.i.i = phi i32 [ 35, %skl_wrpll_try_divider.exit.us.1111.6.i.i ], [ %.sroa.10.5.us.1108.5146.i.i, %bb.r ], [ %.sroa.10.5.us.1108.5146.i.i, %bb.s ] ; 2 uses
  %31 = icmp ugt i64 %i.s, 9000000000
  %i.bp = add nsw i64 %i.s, -9000000000
  %32 = sub nuw nsw i64 9000000000, %i.s
  %33 = select i1 %31, i64 %i.bp, i64 %32
  %34 = mul nsw i64 %33, 10000                    ; 4 uses
  %i.bq = udiv i64 %34, 9000000000                ; 2 uses
  %.not.i.us.1.1.i.i = icmp ult i64 %i.s, 9000000000
  %i.br = icmp ult i64 %i.bq, %.sroa.0.4.us.1110.6154.i.i ; 2 uses
  br i1 %.not.i.us.1.1.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %._crit_edge.us.1117.i.i
  %i.bs = icmp ult i64 %34, 900000000000
  %or.cond45.us.1.1.i.i = and i1 %i.bs, %i.br
  br i1 %or.cond45.us.1.1.i.i, label %skl_wrpll_try_divider.exit.us.1.1.i.i, label %skl_wrpll_try_divider.exit.us.1.1.thread.i.i

bb.u:                                             ; preds = %._crit_edge.us.1117.i.i
  %i.bt = icmp ult i64 %34, 5400000000000
  %or.cond46.us.1.1.i.i = and i1 %i.bt, %i.br
  br i1 %or.cond46.us.1.1.i.i, label %skl_wrpll_try_divider.exit.us.1.1.i.i, label %skl_wrpll_try_divider.exit.us.1.1.thread.i.i

skl_wrpll_try_divider.exit.us.1.1.i.i:            ; preds = %bb.u, %bb.t
  %i.bu = icmp samesign ult i64 %34, 9000000000
  br i1 %i.bu, label %.thread.thread.thread259.i.i, label %skl_wrpll_try_divider.exit.us.1.1.thread.i.i

skl_wrpll_try_divider.exit.us.1.1.thread.i.i:     ; preds = %skl_wrpll_try_divider.exit.us.1.1.i.i, %bb.u, %bb.t
  %.sroa.0.4.us.1.1160.i.i = phi i64 [ %i.bq, %skl_wrpll_try_divider.exit.us.1.1.i.i ], [ %.sroa.0.4.us.1110.6154.i.i, %bb.t ], [ %.sroa.0.4.us.1110.6154.i.i, %bb.u ] ; 3 uses
  %.sroa.7.5.us.1.1159.i.i = phi i64 [ 9000000000, %skl_wrpll_try_divider.exit.us.1.1.i.i ], [ %.sroa.7.5.us.1109.6153.i.i, %bb.t ], [ %.sroa.7.5.us.1109.6153.i.i, %bb.u ] ; 2 uses
  %.sroa.10.5.us.1.1158.i.i = phi i32 [ 3, %skl_wrpll_try_divider.exit.us.1.1.i.i ], [ %.sroa.10.5.us.1108.6152.i.i, %bb.t ], [ %.sroa.10.5.us.1108.6152.i.i, %bb.u ] ; 2 uses
  %35 = icmp ugt i64 %i.z, 9000000000
  %i.bv = add nsw i64 %i.z, -9000000000
  %36 = sub nuw nsw i64 9000000000, %i.z
  %37 = select i1 %35, i64 %i.bv, i64 %36
  %38 = mul nsw i64 %37, 10000                    ; 4 uses
  %i.bw = udiv i64 %38, 9000000000                ; 2 uses
  %.not.i.us.1.1.1.i.i = icmp ult i64 %i.z, 9000000000
  %i.bx = icmp ult i64 %i.bw, %.sroa.0.4.us.1.1160.i.i ; 2 uses
  br i1 %.not.i.us.1.1.1.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %skl_wrpll_try_divider.exit.us.1.1.thread.i.i
  %i.by = icmp ult i64 %38, 900000000000
  %or.cond45.us.1.1.1.i.i = and i1 %i.by, %i.bx
  br i1 %or.cond45.us.1.1.1.i.i, label %skl_wrpll_try_divider.exit.us.1.1.1.i.i, label %skl_wrpll_try_divider.exit.us.1.1.1.thread.i.i

bb.w:                                             ; preds = %skl_wrpll_try_divider.exit.us.1.1.thread.i.i
  %i.bz = icmp ult i64 %38, 5400000000000
  %or.cond46.us.1.1.1.i.i = and i1 %i.bz, %i.bx
  br i1 %or.cond46.us.1.1.1.i.i, label %skl_wrpll_try_divider.exit.us.1.1.1.i.i, label %skl_wrpll_try_divider.exit.us.1.1.1.thread.i.i

skl_wrpll_try_divider.exit.us.1.1.1.i.i:          ; preds = %bb.w, %bb.v
  %i.ca = icmp samesign ult i64 %38, 9000000000
  br i1 %i.ca, label %.sink.split.i29.i.thread36.i, label %skl_wrpll_try_divider.exit.us.1.1.1.thread.i.i

skl_wrpll_try_divider.exit.us.1.1.1.thread.i.i:   ; preds = %skl_wrpll_try_divider.exit.us.1.1.1.i.i, %bb.w, %bb.v
  %.sroa.0.4.us.1.1.1166.i.i = phi i64 [ %i.bw, %skl_wrpll_try_divider.exit.us.1.1.1.i.i ], [ %.sroa.0.4.us.1.1160.i.i, %bb.v ], [ %.sroa.0.4.us.1.1160.i.i, %bb.w ] ; 3 uses
  %.sroa.7.5.us.1.1.1165.i.i = phi i64 [ 9000000000, %skl_wrpll_try_divider.exit.us.1.1.1.i.i ], [ %.sroa.7.5.us.1.1159.i.i, %bb.v ], [ %.sroa.7.5.us.1.1159.i.i, %bb.w ] ; 2 uses
  %.sroa.10.5.us.1.1.1164.i.i = phi i32 [ 5, %skl_wrpll_try_divider.exit.us.1.1.1.i.i ], [ %.sroa.10.5.us.1.1158.i.i, %bb.v ], [ %.sroa.10.5.us.1.1158.i.i, %bb.w ] ; 2 uses
  %39 = icmp ugt i64 %i.ag, 9000000000
  %i.cb = add nsw i64 %i.ag, -9000000000
  %40 = sub nuw nsw i64 9000000000, %i.ag
  %41 = select i1 %39, i64 %i.cb, i64 %40
  %42 = mul nsw i64 %41, 10000                    ; 4 uses
  %i.cc = udiv i64 %42, 9000000000                ; 2 uses
  %.not.i.us.1.1.2.i.i = icmp ult i64 %i.ag, 9000000000
  %i.cd = icmp ult i64 %i.cc, %.sroa.0.4.us.1.1.1166.i.i ; 2 uses
  br i1 %.not.i.us.1.1.2.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %skl_wrpll_try_divider.exit.us.1.1.1.thread.i.i
  %i.ce = icmp ult i64 %42, 900000000000
  %or.cond45.us.1.1.2.i.i = and i1 %i.ce, %i.cd
  br i1 %or.cond45.us.1.1.2.i.i, label %skl_wrpll_try_divider.exit.us.1.1.2.i.i, label %skl_wrpll_try_divider.exit.us.1.1.2.thread.i.i

bb.y:                                             ; preds = %skl_wrpll_try_divider.exit.us.1.1.1.thread.i.i
  %i.cf = icmp ult i64 %42, 5400000000000
  %or.cond46.us.1.1.2.i.i = and i1 %i.cf, %i.cd
  br i1 %or.cond46.us.1.1.2.i.i, label %skl_wrpll_try_divider.exit.us.1.1.2.i.i, label %skl_wrpll_try_divider.exit.us.1.1.2.thread.i.i

skl_wrpll_try_divider.exit.us.1.1.2.i.i:          ; preds = %bb.y, %bb.x
  %i.cg = icmp samesign ult i64 %42, 9000000000
  br i1 %i.cg, label %.thread.i, label %skl_wrpll_try_divider.exit.us.1.1.2.thread.i.i

skl_wrpll_try_divider.exit.us.1.1.2.thread.i.i:   ; preds = %skl_wrpll_try_divider.exit.us.1.1.2.i.i, %bb.y, %bb.x
  %.sroa.0.4.us.1.1.2172.i.i = phi i64 [ %i.cc, %skl_wrpll_try_divider.exit.us.1.1.2.i.i ], [ %.sroa.0.4.us.1.1.1166.i.i, %bb.x ], [ %.sroa.0.4.us.1.1.1166.i.i, %bb.y ] ; 3 uses
  %.sroa.7.5.us.1.1.2171.i.i = phi i64 [ 9000000000, %skl_wrpll_try_divider.exit.us.1.1.2.i.i ], [ %.sroa.7.5.us.1.1.1165.i.i, %bb.x ], [ %.sroa.7.5.us.1.1.1165.i.i, %bb.y ] ; 2 uses
  %.sroa.10.5.us.1.1.2170.i.i = phi i32 [ 7, %skl_wrpll_try_divider.exit.us.1.1.2.i.i ], [ %.sroa.10.5.us.1.1.1164.i.i, %bb.x ], [ %.sroa.10.5.us.1.1.1164.i.i, %bb.y ] ; 2 uses
  %43 = icmp ugt i64 %i.an, 9000000000
  %i.ch = add nsw i64 %i.an, -9000000000
  %44 = sub nuw nsw i64 9000000000, %i.an
  %45 = select i1 %43, i64 %i.ch, i64 %44
  %46 = mul nsw i64 %45, 10000                    ; 4 uses
  %i.ci = udiv i64 %46, 9000000000                ; 2 uses
  %.not.i.us.1.1.3.i.i = icmp ult i64 %i.an, 9000000000
  %i.cj = icmp ult i64 %i.ci, %.sroa.0.4.us.1.1.2172.i.i ; 2 uses
  br i1 %.not.i.us.1.1.3.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %skl_wrpll_try_divider.exit.us.1.1.2.thread.i.i
  %i.ck = icmp ult i64 %46, 900000000000
  %or.cond45.us.1.1.3.i.i = and i1 %i.ck, %i.cj
  br i1 %or.cond45.us.1.1.3.i.i, label %skl_wrpll_try_divider.exit.us.1.1.3.i.i, label %skl_wrpll_try_divider.exit.us.1.1.3.thread.i.i

bb.aa:                                            ; preds = %skl_wrpll_try_divider.exit.us.1.1.2.thread.i.i
  %i.cl = icmp ult i64 %46, 5400000000000
  %or.cond46.us.1.1.3.i.i = and i1 %i.cl, %i.cj
  br i1 %or.cond46.us.1.1.3.i.i, label %skl_wrpll_try_divider.exit.us.1.1.3.i.i, label %skl_wrpll_try_divider.exit.us.1.1.3.thread.i.i

skl_wrpll_try_divider.exit.us.1.1.3.i.i:          ; preds = %bb.aa, %bb.z
  %i.cm = icmp samesign ult i64 %46, 9000000000
  br i1 %i.cm, label %.thread.thread.thread259.i.i, label %skl_wrpll_try_divider.exit.us.1.1.3.thread.i.i

skl_wrpll_try_divider.exit.us.1.1.3.thread.i.i:   ; preds = %skl_wrpll_try_divider.exit.us.1.1.3.i.i, %bb.aa, %bb.z
  %.sroa.0.4.us.1.1.3178.i.i = phi i64 [ %i.ci, %skl_wrpll_try_divider.exit.us.1.1.3.i.i ], [ %.sroa.0.4.us.1.1.2172.i.i, %bb.z ], [ %.sroa.0.4.us.1.1.2172.i.i, %bb.aa ] ; 3 uses
  %.sroa.7.5.us.1.1.3177.i.i = phi i64 [ 9000000000, %skl_wrpll_try_divider.exit.us.1.1.3.i.i ], [ %.sroa.7.5.us.1.1.2171.i.i, %bb.z ], [ %.sroa.7.5.us.1.1.2171.i.i, %bb.aa ] ; 2 uses
  %.sroa.10.5.us.1.1.3176.i.i = phi i32 [ 9, %skl_wrpll_try_divider.exit.us.1.1.3.i.i ], [ %.sroa.10.5.us.1.1.2170.i.i, %bb.z ], [ %.sroa.10.5.us.1.1.2170.i.i, %bb.aa ] ; 2 uses
  %47 = icmp ugt i64 %i.au, 9000000000
  %i.cn = add nsw i64 %i.au, -9000000000
  %48 = sub nuw nsw i64 9000000000, %i.au
  %49 = select i1 %47, i64 %i.cn, i64 %48
  %50 = mul nsw i64 %49, 10000                    ; 4 uses
  %i.co = udiv i64 %50, 9000000000                ; 2 uses
  %.not.i.us.1.1.4.i.i = icmp ult i64 %i.au, 9000000000
  %i.cp = icmp ult i64 %i.co, %.sroa.0.4.us.1.1.3178.i.i ; 2 uses
  br i1 %.not.i.us.1.1.4.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %skl_wrpll_try_divider.exit.us.1.1.3.thread.i.i
  %i.cq = icmp ult i64 %50, 900000000000
  %or.cond45.us.1.1.4.i.i = and i1 %i.cq, %i.cp
  br i1 %or.cond45.us.1.1.4.i.i, label %skl_wrpll_try_divider.exit.us.1.1.4.i.i, label %skl_wrpll_try_divider.exit.us.1.1.4.thread.i.i

bb.ac:                                            ; preds = %skl_wrpll_try_divider.exit.us.1.1.3.thread.i.i
  %i.cr = icmp ult i64 %50, 5400000000000
  %or.cond46.us.1.1.4.i.i = and i1 %i.cr, %i.cp
  br i1 %or.cond46.us.1.1.4.i.i, label %skl_wrpll_try_divider.exit.us.1.1.4.i.i, label %skl_wrpll_try_divider.exit.us.1.1.4.thread.i.i

skl_wrpll_try_divider.exit.us.1.1.4.i.i:          ; preds = %bb.ac, %bb.ab
  %i.cs = icmp samesign ult i64 %50, 9000000000
  br i1 %i.cs, label %.thread.i, label %skl_wrpll_try_divider.exit.us.1.1.4.thread.i.i

skl_wrpll_try_divider.exit.us.1.1.4.thread.i.i:   ; preds = %skl_wrpll_try_divider.exit.us.1.1.4.i.i, %bb.ac, %bb.ab
  %.sroa.0.4.us.1.1.4184.i.i = phi i64 [ %i.co, %skl_wrpll_try_divider.exit.us.1.1.4.i.i ], [ %.sroa.0.4.us.1.1.3178.i.i, %bb.ab ], [ %.sroa.0.4.us.1.1.3178.i.i, %bb.ac ] ; 3 uses
  %.sroa.7.5.us.1.1.4183.i.i = phi i64 [ 9000000000, %skl_wrpll_try_divider.exit.us.1.1.4.i.i ], [ %.sroa.7.5.us.1.1.3177.i.i, %bb.ab ], [ %.sroa.7.5.us.1.1.3177.i.i, %bb.ac ] ; 2 uses
  %.sroa.10.5.us.1.1.4182.i.i = phi i32 [ 15, %skl_wrpll_try_divider.exit.us.1.1.4.i.i ], [ %.sroa.10.5.us.1.1.3176.i.i, %bb.ab ], [ %.sroa.10.5.us.1.1.3176.i.i, %bb.ac ] ; 2 uses
  %51 = icmp ugt i64 %i.bb, 9000000000
  %i.ct = add nsw i64 %i.bb, -9000000000
  %52 = sub nuw nsw i64 9000000000, %i.bb
  %53 = select i1 %51, i64 %i.ct, i64 %52
  %54 = mul nsw i64 %53, 10000                    ; 4 uses
  %i.cu = udiv i64 %54, 9000000000                ; 2 uses
  %.not.i.us.1.1.5.i.i = icmp ult i64 %i.bb, 9000000000
  %i.cv = icmp ult i64 %i.cu, %.sroa.0.4.us.1.1.4184.i.i ; 2 uses
  br i1 %.not.i.us.1.1.5.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %skl_wrpll_try_divider.exit.us.1.1.4.thread.i.i
  %i.cw = icmp ult i64 %54, 900000000000
  %or.cond45.us.1.1.5.i.i = and i1 %i.cw, %i.cv
  br i1 %or.cond45.us.1.1.5.i.i, label %skl_wrpll_try_divider.exit.us.1.1.5.i.i, label %skl_wrpll_try_divider.exit.us.1.1.5.thread.i.i

bb.ae:                                            ; preds = %skl_wrpll_try_divider.exit.us.1.1.4.thread.i.i
  %i.cx = icmp ult i64 %54, 5400000000000
  %or.cond46.us.1.1.5.i.i = and i1 %i.cx, %i.cv
  br i1 %or.cond46.us.1.1.5.i.i, label %skl_wrpll_try_divider.exit.us.1.1.5.i.i, label %skl_wrpll_try_divider.exit.us.1.1.5.thread.i.i

skl_wrpll_try_divider.exit.us.1.1.5.i.i:          ; preds = %bb.ae, %bb.ad
  %i.cy = icmp samesign ult i64 %54, 9000000000
  br i1 %i.cy, label %.thread.i, label %skl_wrpll_try_divider.exit.us.1.1.5.thread.i.i

skl_wrpll_try_divider.exit.us.1.1.5.thread.i.i:   ; preds = %skl_wrpll_try_divider.exit.us.1.1.5.i.i, %bb.ae, %bb.ad
  %.sroa.0.4.us.1.1.5190.i.i = phi i64 [ %i.cu, %skl_wrpll_try_divider.exit.us.1.1.5.i.i ], [ %.sroa.0.4.us.1.1.4184.i.i, %bb.ad ], [ %.sroa.0.4.us.1.1.4184.i.i, %bb.ae ] ; 3 uses
  %.sroa.7.5.us.1.1.5189.i.i = phi i64 [ 9000000000, %skl_wrpll_try_divider.exit.us.1.1.5.i.i ], [ %.sroa.7.5.us.1.1.4183.i.i, %bb.ad ], [ %.sroa.7.5.us.1.1.4183.i.i, %bb.ae ] ; 2 uses
  %.sroa.10.5.us.1.1.5188.i.i = phi i32 [ 21, %skl_wrpll_try_divider.exit.us.1.1.5.i.i ], [ %.sroa.10.5.us.1.1.4182.i.i, %bb.ad ], [ %.sroa.10.5.us.1.1.4182.i.i, %bb.ae ] ; 2 uses
  %55 = icmp ugt i64 %i.bi, 9000000000
  %i.cz = add nsw i64 %i.bi, -9000000000
  %56 = sub nuw nsw i64 9000000000, %i.bi
  %57 = select i1 %55, i64 %i.cz, i64 %56
  %58 = mul nsw i64 %57, 10000                    ; 4 uses
  %i.da = udiv i64 %58, 9000000000                ; 2 uses
  %.not.i.us.1.1.6.i.i = icmp ult i64 %i.bi, 9000000000
  %i.db = icmp ult i64 %i.da, %.sroa.0.4.us.1.1.5190.i.i ; 2 uses
  br i1 %.not.i.us.1.1.6.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %skl_wrpll_try_divider.exit.us.1.1.5.thread.i.i
  %i.dc = icmp ult i64 %58, 900000000000
  %or.cond45.us.1.1.6.i.i = and i1 %i.dc, %i.db
  br i1 %or.cond45.us.1.1.6.i.i, label %skl_wrpll_try_divider.exit.us.1.1.6.i.i, label %._crit_edge.us.1.1.i.i

bb.ag:                                            ; preds = %skl_wrpll_try_divider.exit.us.1.1.5.thread.i.i
  %i.dd = icmp ult i64 %58, 5400000000000
  %or.cond46.us.1.1.6.i.i = and i1 %i.dd, %i.db
  br i1 %or.cond46.us.1.1.6.i.i, label %skl_wrpll_try_divider.exit.us.1.1.6.i.i, label %._crit_edge.us.1.1.i.i

skl_wrpll_try_divider.exit.us.1.1.6.i.i:          ; preds = %bb.ag, %bb.af
  %i.de = icmp samesign ult i64 %58, 9000000000
  br i1 %i.de, label %.thread.i, label %._crit_edge.us.1.1.i.i

._crit_edge.us.1.1.i.i:                           ; preds = %skl_wrpll_try_divider.exit.us.1.1.6.i.i, %bb.ag, %bb.af
  %.sroa.0.4.us.1.1.6196.i.i = phi i64 [ %i.da, %skl_wrpll_try_divider.exit.us.1.1.6.i.i ], [ %.sroa.0.4.us.1.1.5190.i.i, %bb.af ], [ %.sroa.0.4.us.1.1.5190.i.i, %bb.ag ] ; 3 uses
  %.sroa.7.5.us.1.1.6195.i.i = phi i64 [ 9000000000, %skl_wrpll_try_divider.exit.us.1.1.6.i.i ], [ %.sroa.7.5.us.1.1.5189.i.i, %bb.af ], [ %.sroa.7.5.us.1.1.5189.i.i, %bb.ag ] ; 2 uses
  %.sroa.10.5.us.1.1.6194.i.i = phi i32 [ 35, %skl_wrpll_try_divider.exit.us.1.1.6.i.i ], [ %.sroa.10.5.us.1.1.5188.i.i, %bb.af ], [ %.sroa.10.5.us.1.1.5188.i.i, %bb.ag ] ; 2 uses
  %59 = icmp ugt i64 %i.s, 9600000000
  %i.df = add nsw i64 %i.s, -9600000000
  %60 = sub nuw nsw i64 9600000000, %i.s
  %61 = select i1 %59, i64 %i.df, i64 %60
  %62 = mul nsw i64 %61, 10000                    ; 4 uses
  %i.dg = udiv i64 %62, 9600000000                ; 2 uses
  %.not.i.us.2.1.i.i = icmp ult i64 %i.s, 9600000000
  %i.dh = icmp ult i64 %i.dg, %.sroa.0.4.us.1.1.6196.i.i ; 2 uses
  br i1 %.not.i.us.2.1.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.us.1.1.i.i
  %i.di = icmp ult i64 %62, 960000000000
  %or.cond45.us.2.1.i.i = and i1 %i.di, %i.dh
  br i1 %or.cond45.us.2.1.i.i, label %skl_wrpll_try_divider.exit.us.2.1.i.i, label %skl_wrpll_try_divider.exit.us.2.1.thread.i.i

bb.ai:                                            ; preds = %._crit_edge.us.1.1.i.i
  %i.dj = icmp ult i64 %62, 5760000000000
  %or.cond46.us.2.1.i.i = and i1 %i.dj, %i.dh
  br i1 %or.cond46.us.2.1.i.i, label %skl_wrpll_try_divider.exit.us.2.1.i.i, label %skl_wrpll_try_divider.exit.us.2.1.thread.i.i

skl_wrpll_try_divider.exit.us.2.1.i.i:            ; preds = %bb.ai, %bb.ah
  %i.dk = icmp samesign ult i64 %62, 9600000000
  br i1 %i.dk, label %.thread.thread.thread259.i.i, label %skl_wrpll_try_divider.exit.us.2.1.thread.i.i

skl_wrpll_try_divider.exit.us.2.1.thread.i.i:     ; preds = %skl_wrpll_try_divider.exit.us.2.1.i.i, %bb.ai, %bb.ah
  %.sroa.0.4.us.2.1202.i.i = phi i64 [ %i.dg, %skl_wrpll_try_divider.exit.us.2.1.i.i ], [ %.sroa.0.4.us.1.1.6196.i.i, %bb.ah ], [ %.sroa.0.4.us.1.1.6196.i.i, %bb.ai ] ; 3 uses
  %.sroa.7.5.us.2.1201.i.i = phi i64 [ 9600000000, %skl_wrpll_try_divider.exit.us.2.1.i.i ], [ %.sroa.7.5.us.1.1.6195.i.i, %bb.ah ], [ %.sroa.7.5.us.1.1.6195.i.i, %bb.ai ] ; 2 uses
  %.sroa.10.5.us.2.1200.i.i = phi i32 [ 3, %skl_wrpll_try_divider.exit.us.2.1.i.i ], [ %.sroa.10.5.us.1.1.6194.i.i, %bb.ah ], [ %.sroa.10.5.us.1.1.6194.i.i, %bb.ai ] ; 2 uses
  %63 = icmp ugt i64 %i.z, 9600000000
  %i.dl = add nsw i64 %i.z, -9600000000
  %64 = sub nuw nsw i64 9600000000, %i.z
  %65 = select i1 %63, i64 %i.dl, i64 %64
  %66 = mul nsw i64 %65, 10000                    ; 4 uses
  %i.dm = udiv i64 %66, 9600000000                ; 2 uses
  %.not.i.us.2.1.1.i.i = icmp ult i64 %i.z, 9600000000
  %i.dn = icmp ult i64 %i.dm, %.sroa.0.4.us.2.1202.i.i ; 2 uses
  br i1 %.not.i.us.2.1.1.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %skl_wrpll_try_divider.exit.us.2.1.thread.i.i
  %i.do = icmp ult i64 %66, 960000000000
  %or.cond45.us.2.1.1.i.i = and i1 %i.do, %i.dn
  br i1 %or.cond45.us.2.1.1.i.i, label %skl_wrpll_try_divider.exit.us.2.1.1.i.i, label %skl_wrpll_try_divider.exit.us.2.1.1.thread.i.i

bb.ak:                                            ; preds = %skl_wrpll_try_divider.exit.us.2.1.thread.i.i
  %i.dp = icmp ult i64 %66, 5760000000000
  %or.cond46.us.2.1.1.i.i = and i1 %i.dp, %i.dn
  br i1 %or.cond46.us.2.1.1.i.i, label %skl_wrpll_try_divider.exit.us.2.1.1.i.i, label %skl_wrpll_try_divider.exit.us.2.1.1.thread.i.i

skl_wrpll_try_divider.exit.us.2.1.1.i.i:          ; preds = %bb.ak, %bb.aj
  %i.dq = icmp samesign ult i64 %66, 9600000000
  br i1 %i.dq, label %.sink.split.i29.i.thread36.i, label %skl_wrpll_try_divider.exit.us.2.1.1.thread.i.i

skl_wrpll_try_divider.exit.us.2.1.1.thread.i.i:   ; preds = %skl_wrpll_try_divider.exit.us.2.1.1.i.i, %bb.ak, %bb.aj
  %.sroa.0.4.us.2.1.1208.i.i = phi i64 [ %i.dm, %skl_wrpll_try_divider.exit.us.2.1.1.i.i ], [ %.sroa.0.4.us.2.1202.i.i, %bb.aj ], [ %.sroa.0.4.us.2.1202.i.i, %bb.ak ] ; 3 uses
  %.sroa.7.5.us.2.1.1207.i.i = phi i64 [ 9600000000, %skl_wrpll_try_divider.exit.us.2.1.1.i.i ], [ %.sroa.7.5.us.2.1201.i.i, %bb.aj ], [ %.sroa.7.5.us.2.1201.i.i, %bb.ak ] ; 2 uses
  %.sroa.10.5.us.2.1.1206.i.i = phi i32 [ 5, %skl_wrpll_try_divider.exit.us.2.1.1.i.i ], [ %.sroa.10.5.us.2.1200.i.i, %bb.aj ], [ %.sroa.10.5.us.2.1200.i.i, %bb.ak ] ; 2 uses
  %67 = icmp ugt i64 %i.ag, 9600000000
  %i.dr = add nsw i64 %i.ag, -9600000000
  %68 = sub nuw nsw i64 9600000000, %i.ag
  %69 = select i1 %67, i64 %i.dr, i64 %68
  %70 = mul nsw i64 %69, 10000                    ; 4 uses
  %i.ds = udiv i64 %70, 9600000000                ; 2 uses
  %.not.i.us.2.1.2.i.i = icmp ult i64 %i.ag, 9600000000
  %i.dt = icmp ult i64 %i.ds, %.sroa.0.4.us.2.1.1208.i.i ; 2 uses
  br i1 %.not.i.us.2.1.2.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %skl_wrpll_try_divider.exit.us.2.1.1.thread.i.i
  %i.du = icmp ult i64 %70, 960000000000
  %or.cond45.us.2.1.2.i.i = and i1 %i.du, %i.dt
  br i1 %or.cond45.us.2.1.2.i.i, label %skl_wrpll_try_divider.exit.us.2.1.2.i.i, label %skl_wrpll_try_divider.exit.us.2.1.2.thread.i.i

bb.am:                                            ; preds = %skl_wrpll_try_divider.exit.us.2.1.1.thread.i.i
  %i.dv = icmp ult i64 %70, 5760000000000
  %or.cond46.us.2.1.2.i.i = and i1 %i.dv, %i.dt
  br i1 %or.cond46.us.2.1.2.i.i, label %skl_wrpll_try_divider.exit.us.2.1.2.i.i, label %skl_wrpll_try_divider.exit.us.2.1.2.thread.i.i

skl_wrpll_try_divider.exit.us.2.1.2.i.i:          ; preds = %bb.am, %bb.al
  %i.dw = icmp samesign ult i64 %70, 9600000000
  br i1 %i.dw, label %.thread.i, label %skl_wrpll_try_divider.exit.us.2.1.2.thread.i.i

skl_wrpll_try_divider.exit.us.2.1.2.thread.i.i:   ; preds = %skl_wrpll_try_divider.exit.us.2.1.2.i.i, %bb.am, %bb.al
  %.sroa.0.4.us.2.1.2214.i.i = phi i64 [ %i.ds, %skl_wrpll_try_divider.exit.us.2.1.2.i.i ], [ %.sroa.0.4.us.2.1.1208.i.i, %bb.al ], [ %.sroa.0.4.us.2.1.1208.i.i, %bb.am ] ; 3 uses
  %.sroa.7.5.us.2.1.2213.i.i = phi i64 [ 9600000000, %skl_wrpll_try_divider.exit.us.2.1.2.i.i ], [ %.sroa.7.5.us.2.1.1207.i.i, %bb.al ], [ %.sroa.7.5.us.2.1.1207.i.i, %bb.am ] ; 2 uses
  %.sroa.10.5.us.2.1.2212.i.i = phi i32 [ 7, %skl_wrpll_try_divider.exit.us.2.1.2.i.i ], [ %.sroa.10.5.us.2.1.1206.i.i, %bb.al ], [ %.sroa.10.5.us.2.1.1206.i.i, %bb.am ] ; 2 uses
  %71 = icmp ugt i64 %i.an, 9600000000
  %i.dx = add nsw i64 %i.an, -9600000000
  %72 = sub nuw nsw i64 9600000000, %i.an
  %73 = select i1 %71, i64 %i.dx, i64 %72
  %74 = mul nsw i64 %73, 10000                    ; 4 uses
  %i.dy = udiv i64 %74, 9600000000                ; 2 uses
  %.not.i.us.2.1.3.i.i = icmp ult i64 %i.an, 9600000000
  %i.dz = icmp ult i64 %i.dy, %.sroa.0.4.us.2.1.2214.i.i ; 2 uses
  br i1 %.not.i.us.2.1.3.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %skl_wrpll_try_divider.exit.us.2.1.2.thread.i.i
  %i.ea = icmp ult i64 %74, 960000000000
  %or.cond45.us.2.1.3.i.i = and i1 %i.ea, %i.dz
  br i1 %or.cond45.us.2.1.3.i.i, label %skl_wrpll_try_divider.exit.us.2.1.3.i.i, label %skl_wrpll_try_divider.exit.us.2.1.3.thread.i.i

bb.ao:                                            ; preds = %skl_wrpll_try_divider.exit.us.2.1.2.thread.i.i
  %i.eb = icmp ult i64 %74, 5760000000000
  %or.cond46.us.2.1.3.i.i = and i1 %i.eb, %i.dz
  br i1 %or.cond46.us.2.1.3.i.i, label %skl_wrpll_try_divider.exit.us.2.1.3.i.i, label %skl_wrpll_try_divider.exit.us.2.1.3.thread.i.i

skl_wrpll_try_divider.exit.us.2.1.3.i.i:          ; preds = %bb.ao, %bb.an
  %i.ec = icmp samesign ult i64 %74, 9600000000
  br i1 %i.ec, label %.thread.thread.thread259.i.i, label %skl_wrpll_try_divider.exit.us.2.1.3.thread.i.i

skl_wrpll_try_divider.exit.us.2.1.3.thread.i.i:   ; preds = %skl_wrpll_try_divider.exit.us.2.1.3.i.i, %bb.ao, %bb.an
  %.sroa.0.4.us.2.1.3220.i.i = phi i64 [ %i.dy, %skl_wrpll_try_divider.exit.us.2.1.3.i.i ], [ %.sroa.0.4.us.2.1.2214.i.i, %bb.an ], [ %.sroa.0.4.us.2.1.2214.i.i, %bb.ao ] ; 3 uses
  %.sroa.7.5.us.2.1.3219.i.i = phi i64 [ 9600000000, %skl_wrpll_try_divider.exit.us.2.1.3.i.i ], [ %.sroa.7.5.us.2.1.2213.i.i, %bb.an ], [ %.sroa.7.5.us.2.1.2213.i.i, %bb.ao ] ; 2 uses
  %.sroa.10.5.us.2.1.3218.i.i = phi i32 [ 9, %skl_wrpll_try_divider.exit.us.2.1.3.i.i ], [ %.sroa.10.5.us.2.1.2212.i.i, %bb.an ], [ %.sroa.10.5.us.2.1.2212.i.i, %bb.ao ] ; 2 uses
  %75 = icmp ugt i64 %i.au, 9600000000
  %i.ed = add nsw i64 %i.au, -9600000000
  %76 = sub nuw nsw i64 9600000000, %i.au
  %77 = select i1 %75, i64 %i.ed, i64 %76
  %78 = mul nsw i64 %77, 10000                    ; 4 uses
  %i.ee = udiv i64 %78, 9600000000                ; 2 uses
  %.not.i.us.2.1.4.i.i = icmp ult i64 %i.au, 9600000000
  %i.ef = icmp ult i64 %i.ee, %.sroa.0.4.us.2.1.3220.i.i ; 2 uses
  br i1 %.not.i.us.2.1.4.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %skl_wrpll_try_divider.exit.us.2.1.3.thread.i.i
  %i.eg = icmp ult i64 %78, 960000000000
  %or.cond45.us.2.1.4.i.i = and i1 %i.eg, %i.ef
  br i1 %or.cond45.us.2.1.4.i.i, label %skl_wrpll_try_divider.exit.us.2.1.4.i.i, label %skl_wrpll_try_divider.exit.us.2.1.4.thread.i.i

bb.aq:                                            ; preds = %skl_wrpll_try_divider.exit.us.2.1.3.thread.i.i
  %i.eh = icmp ult i64 %78, 5760000000000
  %or.cond46.us.2.1.4.i.i = and i1 %i.eh, %i.ef
  br i1 %or.cond46.us.2.1.4.i.i, label %skl_wrpll_try_divider.exit.us.2.1.4.i.i, label %skl_wrpll_try_divider.exit.us.2.1.4.thread.i.i

skl_wrpll_try_divider.exit.us.2.1.4.i.i:          ; preds = %bb.aq, %bb.ap
  %i.ei = icmp samesign ult i64 %78, 9600000000
  br i1 %i.ei, label %.thread.i, label %skl_wrpll_try_divider.exit.us.2.1.4.thread.i.i

skl_wrpll_try_divider.exit.us.2.1.4.thread.i.i:   ; preds = %skl_wrpll_try_divider.exit.us.2.1.4.i.i, %bb.aq, %bb.ap
  %.sroa.0.4.us.2.1.4226.i.i = phi i64 [ %i.ee, %skl_wrpll_try_divider.exit.us.2.1.4.i.i ], [ %.sroa.0.4.us.2.1.3220.i.i, %bb.ap ], [ %.sroa.0.4.us.2.1.3220.i.i, %bb.aq ] ; 3 uses
  %.sroa.7.5.us.2.1.4225.i.i = phi i64 [ 9600000000, %skl_wrpll_try_divider.exit.us.2.1.4.i.i ], [ %.sroa.7.5.us.2.1.3219.i.i, %bb.ap ], [ %.sroa.7.5.us.2.1.3219.i.i, %bb.aq ] ; 2 uses
  %.sroa.10.5.us.2.1.4224.i.i = phi i32 [ 15, %skl_wrpll_try_divider.exit.us.2.1.4.i.i ], [ %.sroa.10.5.us.2.1.3218.i.i, %bb.ap ], [ %.sroa.10.5.us.2.1.3218.i.i, %bb.aq ] ; 2 uses
  %79 = icmp ugt i64 %i.bb, 9600000000
  %i.ej = add nsw i64 %i.bb, -9600000000
  %80 = sub nuw nsw i64 9600000000, %i.bb
  %81 = select i1 %79, i64 %i.ej, i64 %80
  %82 = mul nsw i64 %81, 10000                    ; 4 uses
  %i.ek = udiv i64 %82, 9600000000                ; 2 uses
  %.not.i.us.2.1.5.i.i = icmp ult i64 %i.bb, 9600000000
  %i.el = icmp ult i64 %i.ek, %.sroa.0.4.us.2.1.4226.i.i ; 2 uses
  br i1 %.not.i.us.2.1.5.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %skl_wrpll_try_divider.exit.us.2.1.4.thread.i.i
  %i.em = icmp ult i64 %82, 960000000000
  %or.cond45.us.2.1.5.i.i = and i1 %i.em, %i.el
  br i1 %or.cond45.us.2.1.5.i.i, label %skl_wrpll_try_divider.exit.us.2.1.5.i.i, label %skl_wrpll_try_divider.exit.us.2.1.5.thread.i.i

bb.as:                                            ; preds = %skl_wrpll_try_divider.exit.us.2.1.4.thread.i.i
  %i.en = icmp ult i64 %82, 5760000000000
  %or.cond46.us.2.1.5.i.i = and i1 %i.en, %i.el
  br i1 %or.cond46.us.2.1.5.i.i, label %skl_wrpll_try_divider.exit.us.2.1.5.i.i, label %skl_wrpll_try_divider.exit.us.2.1.5.thread.i.i

skl_wrpll_try_divider.exit.us.2.1.5.i.i:          ; preds = %bb.as, %bb.ar
  %i.eo = icmp samesign ult i64 %82, 9600000000
  br i1 %i.eo, label %.thread.i, label %skl_wrpll_try_divider.exit.us.2.1.5.thread.i.i

skl_wrpll_try_divider.exit.us.2.1.5.thread.i.i:   ; preds = %skl_wrpll_try_divider.exit.us.2.1.5.i.i, %bb.as, %bb.ar
  %.sroa.0.4.us.2.1.5232.i.i = phi i64 [ %i.ek, %skl_wrpll_try_divider.exit.us.2.1.5.i.i ], [ %.sroa.0.4.us.2.1.4226.i.i, %bb.ar ], [ %.sroa.0.4.us.2.1.4226.i.i, %bb.as ]
  %.sroa.7.5.us.2.1.5231.i.i = phi i64 [ 9600000000, %skl_wrpll_try_divider.exit.us.2.1.5.i.i ], [ %.sroa.7.5.us.2.1.4225.i.i, %bb.ar ], [ %.sroa.7.5.us.2.1.4225.i.i, %bb.as ] ; 2 uses
  %.sroa.10.5.us.2.1.5230.i.i = phi i32 [ 21, %skl_wrpll_try_divider.exit.us.2.1.5.i.i ], [ %.sroa.10.5.us.2.1.4224.i.i, %bb.ar ], [ %.sroa.10.5.us.2.1.4224.i.i, %bb.as ] ; 2 uses
  %83 = icmp ugt i64 %i.bi, 9600000000
  %i.ep = add nsw i64 %i.bi, -9600000000
  %84 = sub nuw nsw i64 9600000000, %i.bi
  %85 = select i1 %83, i64 %i.ep, i64 %84
  %86 = mul nsw i64 %85, 10000                    ; 3 uses
  %i.eq = udiv i64 %86, 9600000000
  %.not.i.us.2.1.6.i.i = icmp ult i64 %i.bi, 9600000000
  %i.er = icmp ult i64 %i.eq, %.sroa.0.4.us.2.1.5232.i.i ; 2 uses
  br i1 %.not.i.us.2.1.6.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %skl_wrpll_try_divider.exit.us.2.1.5.thread.i.i
  %i.es = icmp ult i64 %86, 960000000000
  %or.cond45.us.2.1.6.i.i = and i1 %i.es, %i.er
  br i1 %or.cond45.us.2.1.6.i.i, label %.thread.i, label %.loopexit.split.us.1.i.i

bb.au:                                            ; preds = %skl_wrpll_try_divider.exit.us.2.1.5.thread.i.i
  %i.et = icmp ult i64 %86, 5760000000000
  %or.cond46.us.2.1.6.i.i = and i1 %i.et, %i.er
  br i1 %or.cond46.us.2.1.6.i.i, label %.thread.i, label %.loopexit.split.us.1.i.i

.loopexit.split.us.1.i.i:                         ; preds = %bb.au, %bb.at, %skl_wrpll_try_divider.exit.us.1111.i.i
  %.sroa.10.3.1.i.i = phi i32 [ %.sroa.10.5.us.1108.i.i, %skl_wrpll_try_divider.exit.us.1111.i.i ], [ %.sroa.10.5.us.2.1.5230.i.i, %bb.at ], [ %.sroa.10.5.us.2.1.5230.i.i, %bb.au ] ; 2 uses
  %.sroa.7.3.1.i.i = phi i64 [ %.sroa.7.5.us.1109.i.i, %skl_wrpll_try_divider.exit.us.1111.i.i ], [ %.sroa.7.5.us.2.1.5231.i.i, %bb.at ], [ %.sroa.7.5.us.2.1.5231.i.i, %bb.au ]
  %.not.i.i = icmp eq i32 %.sroa.10.3.1.i.i, 0
  br i1 %.not.i.i, label %skl_ddi_hdmi_pll_dividers.exit, label %.thread.i.i

skl_wrpll_try_divider.exit.us.thread.i.i:         ; preds = %skl_wrpll_try_divider.exit.us.i.i, %bb.ax, %bb.aw
  %.sroa.0.4.us246.i.i = phi i64 [ %i.fb, %skl_wrpll_try_divider.exit.us.i.i ], [ %.sroa.0.259.us.i.i, %bb.aw ], [ %.sroa.0.259.us.i.i, %bb.ax ] ; 2 uses
  %.sroa.7.5.us245.i.i = phi i64 [ 8400000000, %skl_wrpll_try_divider.exit.us.i.i ], [ %.sroa.7.258.us.i.i, %bb.aw ], [ %.sroa.7.258.us.i.i, %bb.ax ] ; 2 uses
  %.sroa.10.5.us244.i.i = phi i32 [ %i.ew, %skl_wrpll_try_divider.exit.us.i.i ], [ %.sroa.10.257.us.i.i, %bb.aw ], [ %.sroa.10.257.us.i.i, %bb.ax ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 36
  br i1 %exitcond.not.i.i, label %._crit_edge.us.i.i, label %bb.av, !llvm.loop !202

bb.av:                                            ; preds = %skl_wrpll_try_divider.exit.us.thread.i.i, %bb.d
  %indvars.iv.i.i = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.i.i, %skl_wrpll_try_divider.exit.us.thread.i.i ] ; 2 uses
  %.sroa.0.259.us.i.i = phi i64 [ -1, %bb.d ], [ %.sroa.0.4.us246.i.i, %skl_wrpll_try_divider.exit.us.thread.i.i ] ; 3 uses
  %.sroa.7.258.us.i.i = phi i64 [ 0, %bb.d ], [ %.sroa.7.5.us245.i.i, %skl_wrpll_try_divider.exit.us.thread.i.i ] ; 2 uses
  %.sroa.10.257.us.i.i = phi i32 [ 0, %bb.d ], [ %.sroa.10.5.us244.i.i, %skl_wrpll_try_divider.exit.us.thread.i.i ] ; 2 uses
  %i.eu = getelementptr i8, ptr @skl_ddi_calculate_wrpll.even_dividers, i64 %indvars.iv.i.i
  %i.ev = load i8, ptr %i.eu, align 1             ; 2 uses
  %i.ew = zext i8 %i.ev to i32                    ; 2 uses
  %i.ex = zext i8 %i.ev to i64
  %i.ey = mul nsw i64 %i.r, %i.ex                 ; 4 uses
  %87 = icmp ugt i64 %i.ey, 8400000000
  %i.ez = add nsw i64 %i.ey, -8400000000
  %88 = sub nuw nsw i64 8400000000, %i.ey
  %89 = select i1 %87, i64 %i.ez, i64 %88
  %i.fa = mul i64 %89, 10000                      ; 4 uses
  %i.fb = udiv i64 %i.fa, 8400000000              ; 2 uses
  %.not.i.us.i.i = icmp ult i64 %i.ey, 8400000000
  %i.fc = icmp ult i64 %i.fb, %.sroa.0.259.us.i.i ; 2 uses
  br i1 %.not.i.us.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fd = icmp ult i64 %i.fa, 840000000000
  %or.cond45.us.i.i = and i1 %i.fd, %i.fc
  br i1 %or.cond45.us.i.i, label %skl_wrpll_try_divider.exit.us.i.i, label %skl_wrpll_try_divider.exit.us.thread.i.i

bb.ax:                                            ; preds = %bb.av
  %i.fe = icmp ult i64 %i.fa, 5040000000000
  %or.cond46.us.i.i = and i1 %i.fe, %i.fc
  br i1 %or.cond46.us.i.i, label %skl_wrpll_try_divider.exit.us.i.i, label %skl_wrpll_try_divider.exit.us.thread.i.i

skl_wrpll_try_divider.exit.us.i.i:                ; preds = %bb.ax, %bb.aw
  %i.ff = icmp samesign ult i64 %i.fa, 8400000000
  br i1 %i.ff, label %.loopexit.split.us.i.i, label %skl_wrpll_try_divider.exit.us.thread.i.i

._crit_edge.us.i.i:                               ; preds = %skl_wrpll_try_divider.exit.us.thread.i.i, %bb.ba
  %indvars.iv.1.i.i = phi i64 [ %indvars.iv.next.1.i.i, %bb.ba ], [ 0, %skl_wrpll_try_divider.exit.us.thread.i.i ] ; 2 uses
  %.sroa.0.259.us.1.i.i = phi i64 [ %.sroa.0.4.us.1.i.i, %bb.ba ], [ %.sroa.0.4.us246.i.i, %skl_wrpll_try_divider.exit.us.thread.i.i ] ; 3 uses
  %.sroa.7.258.us.1.i.i = phi i64 [ %.sroa.7.5.us.1.i.i, %bb.ba ], [ %.sroa.7.5.us245.i.i, %skl_wrpll_try_divider.exit.us.thread.i.i ] ; 2 uses
  %.sroa.10.257.us.1.i.i = phi i32 [ %.sroa.10.5.us.1.i.i, %bb.ba ], [ %.sroa.10.5.us244.i.i, %skl_wrpll_try_divider.exit.us.thread.i.i ] ; 2 uses
  %i.fg = getelementptr i8, ptr @skl_ddi_calculate_wrpll.even_dividers, i64 %indvars.iv.1.i.i
  %i.fh = load i8, ptr %i.fg, align 1             ; 2 uses
  %i.fi = zext i8 %i.fh to i32
  %i.fj = zext i8 %i.fh to i64
  %i.fk = mul nsw i64 %i.r, %i.fj                 ; 4 uses
  %90 = icmp ugt i64 %i.fk, 9000000000
  %i.fl = add nsw i64 %i.fk, -9000000000
  %91 = sub nuw nsw i64 9000000000, %i.fk
  %92 = select i1 %90, i64 %i.fl, i64 %91
  %i.fm = mul i64 %92, 10000                      ; 3 uses
  %i.fn = udiv i64 %i.fm, 9000000000              ; 2 uses
  %.not.i.us.1.i.i = icmp ult i64 %i.fk, 9000000000
  %i.fo = icmp ult i64 %i.fn, %.sroa.0.259.us.1.i.i ; 2 uses
  br i1 %.not.i.us.1.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge.us.i.i
  %i.fp = icmp ult i64 %i.fm, 900000000000
  %or.cond45.us.1.i.i = and i1 %i.fp, %i.fo
  br i1 %or.cond45.us.1.i.i, label %.sink.split.i.us.1.i.i, label %skl_wrpll_try_divider.exit.us.1.i.i

bb.az:                                            ; preds = %._crit_edge.us.i.i
  %i.fq = icmp ult i64 %i.fm, 5400000000000
  %or.cond46.us.1.i.i = and i1 %i.fq, %i.fo
  br i1 %or.cond46.us.1.i.i, label %.sink.split.i.us.1.i.i, label %skl_wrpll_try_divider.exit.us.1.i.i

.sink.split.i.us.1.i.i:                           ; preds = %bb.az, %bb.ay
  br label %skl_wrpll_try_divider.exit.us.1.i.i

skl_wrpll_try_divider.exit.us.1.i.i:              ; preds = %.sink.split.i.us.1.i.i, %bb.az, %bb.ay
  %.sroa.10.5.us.1.i.i = phi i32 [ %i.fi, %.sink.split.i.us.1.i.i ], [ %.sroa.10.257.us.1.i.i, %bb.ay ], [ %.sroa.10.257.us.1.i.i, %bb.az ] ; 3 uses
  %.sroa.7.5.us.1.i.i = phi i64 [ 9000000000, %.sink.split.i.us.1.i.i ], [ %.sroa.7.258.us.1.i.i, %bb.ay ], [ %.sroa.7.258.us.1.i.i, %bb.az ] ; 3 uses
  %.sroa.0.4.us.1.i.i = phi i64 [ %i.fn, %.sink.split.i.us.1.i.i ], [ %.sroa.0.259.us.1.i.i, %bb.ay ], [ %.sroa.0.259.us.1.i.i, %bb.az ] ; 3 uses
  %i.fr = icmp eq i64 %.sroa.0.4.us.1.i.i, 0
  br i1 %i.fr, label %.loopexit.split.us.i.i, label %bb.ba

bb.ba:                                            ; preds = %skl_wrpll_try_divider.exit.us.1.i.i
  %indvars.iv.next.1.i.i = add nuw nsw i64 %indvars.iv.1.i.i, 1 ; 2 uses
  %exitcond.1.not.i.i = icmp eq i64 %indvars.iv.next.1.i.i, 36
  br i1 %exitcond.1.not.i.i, label %._crit_edge.us.1.i.i, label %._crit_edge.us.i.i, !llvm.loop !202

._crit_edge.us.1.i.i:                             ; preds = %bb.ba, %skl_wrpll_try_divider.exit.us.2.i.thread.i
  %indvars.iv.2.i.i = phi i64 [ %indvars.iv.next.2.i.i, %skl_wrpll_try_divider.exit.us.2.i.thread.i ], [ 0, %bb.ba ] ; 2 uses
  %.sroa.0.259.us.2.i.i = phi i64 [ %.sroa.0.4.us.2.i21.i, %skl_wrpll_try_divider.exit.us.2.i.thread.i ], [ %.sroa.0.4.us.1.i.i, %bb.ba ] ; 3 uses
  %.sroa.7.258.us.2.i.i = phi i64 [ %.sroa.7.5.us.2.i20.i, %skl_wrpll_try_divider.exit.us.2.i.thread.i ], [ %.sroa.7.5.us.1.i.i, %bb.ba ] ; 2 uses
  %.sroa.10.257.us.2.i.i = phi i32 [ %.sroa.10.5.us.2.i19.i, %skl_wrpll_try_divider.exit.us.2.i.thread.i ], [ %.sroa.10.5.us.1.i.i, %bb.ba ] ; 2 uses
  %i.fs = getelementptr i8, ptr @skl_ddi_calculate_wrpll.even_dividers, i64 %indvars.iv.2.i.i
  %i.ft = load i8, ptr %i.fs, align 1             ; 2 uses
  %i.fu = zext i8 %i.ft to i32                    ; 2 uses
  %i.fv = zext i8 %i.ft to i64
  %i.fw = mul nsw i64 %i.r, %i.fv                 ; 4 uses
  %93 = icmp ugt i64 %i.fw, 9600000000
  %i.fx = add nsw i64 %i.fw, -9600000000
  %94 = sub nuw nsw i64 9600000000, %i.fw
  %95 = select i1 %93, i64 %i.fx, i64 %94
  %i.fy = mul i64 %95, 10000                      ; 4 uses
  %i.fz = udiv i64 %i.fy, 9600000000              ; 2 uses
  %.not.i.us.2.i.i = icmp ult i64 %i.fw, 9600000000
  %i.ga = icmp ult i64 %i.fz, %.sroa.0.259.us.2.i.i ; 2 uses
  br i1 %.not.i.us.2.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge.us.1.i.i
  %i.gb = icmp ult i64 %i.fy, 960000000000
  %or.cond45.us.2.i.i = and i1 %i.gb, %i.ga
  br i1 %or.cond45.us.2.i.i, label %skl_wrpll_try_divider.exit.us.2.i.i, label %skl_wrpll_try_divider.exit.us.2.i.thread.i

bb.bc:                                            ; preds = %._crit_edge.us.1.i.i
  %i.gc = icmp ult i64 %i.fy, 5760000000000
  %or.cond46.us.2.i.i = and i1 %i.gc, %i.ga
  br i1 %or.cond46.us.2.i.i, label %skl_wrpll_try_divider.exit.us.2.i.i, label %skl_wrpll_try_divider.exit.us.2.i.thread.i

skl_wrpll_try_divider.exit.us.2.i.i:              ; preds = %bb.bc, %bb.bb
  %i.gd = icmp samesign ult i64 %i.fy, 9600000000
  br i1 %i.gd, label %.loopexit.split.us.i.i, label %skl_wrpll_try_divider.exit.us.2.i.thread.i

skl_wrpll_try_divider.exit.us.2.i.thread.i:       ; preds = %skl_wrpll_try_divider.exit.us.2.i.i, %bb.bc, %bb.bb
  %.sroa.0.4.us.2.i21.i = phi i64 [ %i.fz, %skl_wrpll_try_divider.exit.us.2.i.i ], [ %.sroa.0.259.us.2.i.i, %bb.bb ], [ %.sroa.0.259.us.2.i.i, %bb.bc ] ; 2 uses
  %.sroa.7.5.us.2.i20.i = phi i64 [ 9600000000, %skl_wrpll_try_divider.exit.us.2.i.i ], [ %.sroa.7.258.us.2.i.i, %bb.bb ], [ %.sroa.7.258.us.2.i.i, %bb.bc ] ; 2 uses
  %.sroa.10.5.us.2.i19.i = phi i32 [ %i.fu, %skl_wrpll_try_divider.exit.us.2.i.i ], [ %.sroa.10.257.us.2.i.i, %bb.bb ], [ %.sroa.10.257.us.2.i.i, %bb.bc ] ; 2 uses
  %indvars.iv.next.2.i.i = add nuw nsw i64 %indvars.iv.2.i.i, 1 ; 2 uses
  %exitcond.2.not.i.i = icmp eq i64 %indvars.iv.next.2.i.i, 36
  br i1 %exitcond.2.not.i.i, label %.loopexit.split.us.i.i, label %._crit_edge.us.1.i.i, !llvm.loop !202

.loopexit.split.us.i.i:                           ; preds = %skl_wrpll_try_divider.exit.us.i.i, %skl_wrpll_try_divider.exit.us.1.i.i, %skl_wrpll_try_divider.exit.us.2.i.thread.i, %skl_wrpll_try_divider.exit.us.2.i.i
  %.sroa.10.3.i.i = phi i32 [ %.sroa.10.5.us.1.i.i, %skl_wrpll_try_divider.exit.us.1.i.i ], [ %i.fu, %skl_wrpll_try_divider.exit.us.2.i.i ], [ %.sroa.10.5.us.2.i19.i, %skl_wrpll_try_divider.exit.us.2.i.thread.i ], [ %i.ew, %skl_wrpll_try_divider.exit.us.i.i ] ; 2 uses
  %.sroa.7.3.i.i = phi i64 [ %.sroa.7.5.us.1.i.i, %skl_wrpll_try_divider.exit.us.1.i.i ], [ 9600000000, %skl_wrpll_try_divider.exit.us.2.i.i ], [ %.sroa.7.5.us.2.i20.i, %skl_wrpll_try_divider.exit.us.2.i.thread.i ], [ 8400000000, %skl_wrpll_try_divider.exit.us.i.i ] ; 3 uses
  %.sroa.0.3.i.i = phi i64 [ 0, %skl_wrpll_try_divider.exit.us.1.i.i ], [ 0, %skl_wrpll_try_divider.exit.us.2.i.i ], [ %.sroa.0.4.us.2.i21.i, %skl_wrpll_try_divider.exit.us.2.i.thread.i ], [ 0, %skl_wrpll_try_divider.exit.us.i.i ] ; 3 uses
  %.not118.i.i = icmp eq i32 %.sroa.10.3.i.i, 0
  br i1 %.not118.i.i, label %.preheader47.split.us.1.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %.loopexit.split.us.i.i, %.loopexit.split.us.1.i.i
  %.sroa.10.384.i.i = phi i32 [ %.sroa.10.3.i.i, %.loopexit.split.us.i.i ], [ %.sroa.10.3.1.i.i, %.loopexit.split.us.1.i.i ] ; 15 uses
  %.sroa.7.382.i.i = phi i64 [ %.sroa.7.3.i.i, %.loopexit.split.us.i.i ], [ %.sroa.7.3.1.i.i, %.loopexit.split.us.1.i.i ] ; 12 uses
  %i.ge = and i32 %.sroa.10.384.i.i, 1
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %bb.bd, label %.thread.thread.i.i

bb.bd:                                            ; preds = %.thread.i.i
  %i.gg = lshr exact i32 %.sroa.10.384.i.i, 1     ; 5 uses
  %i.gh = and i32 %.sroa.10.384.i.i, -6
  %i.gi = icmp eq i32 %i.gh, 2
  br i1 %i.gi, label %skl_wrpll_get_multipliers.exit.i.thread.i, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %bb.bd
  switch i32 %.sroa.10.384.i.i, label %bb.be [
    i32 10, label %skl_wrpll_get_multipliers.exit.i.thread.i
    i32 4, label %skl_wrpll_get_multipliers.exit.i.thread.i
  ]

bb.be:                                            ; preds = %switch.early.test.i.i.i
  %i.gj = and i32 %.sroa.10.384.i.i, 2
  %i.gk = icmp eq i32 %i.gj, 0
  br i1 %i.gk, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.gl = lshr exact i32 %.sroa.10.384.i.i, 2
  br label %skl_wrpll_get_multipliers.exit.i.thread.i

bb.bg:                                            ; preds = %bb.be
  %i.gm = urem i32 %i.gg, 3
  %i.gn = icmp eq i32 %i.gm, 0
  br i1 %i.gn, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.go = udiv i32 %.sroa.10.384.i.i, 6
  br label %skl_wrpll_get_multipliers.exit.i.thread148.i

bb.bi:                                            ; preds = %bb.bg
  %i.gp = urem i32 %i.gg, 7
  %i.gq = icmp eq i32 %i.gp, 0
  br i1 %i.gq, label %bb.bj, label %skl_wrpll_get_multipliers.exit.i.thread176.i

bb.bj:                                            ; preds = %bb.bi
  %i.gr = udiv i32 %.sroa.10.384.i.i, 14
  br label %skl_wrpll_get_multipliers.exit.i.thread163.i

.thread.thread.i.i:                               ; preds = %.thread.i.i
  switch i32 %.sroa.10.384.i.i, label %.thread.thread.thread.i.i [
    i32 9, label %.thread.thread.thread259.i.i
    i32 3, label %.thread.thread.thread259.i.i
  ]

.thread.thread.thread259.i.i:                     ; preds = %.thread.thread.i.i, %.thread.thread.i.i, %skl_wrpll_try_divider.exit.us.2.1.3.i.i, %skl_wrpll_try_divider.exit.us.2.1.i.i, %skl_wrpll_try_divider.exit.us.1.1.3.i.i, %skl_wrpll_try_divider.exit.us.1.1.i.i, %skl_wrpll_try_divider.exit.us.1111.3.i.i
  %.sroa.10.384249263.i.i = phi i32 [ %.sroa.10.384.i.i, %.thread.thread.i.i ], [ %.sroa.10.384.i.i, %.thread.thread.i.i ], [ 3, %skl_wrpll_try_divider.exit.us.1.1.i.i ], [ 9, %skl_wrpll_try_divider.exit.us.1111.3.i.i ], [ 3, %skl_wrpll_try_divider.exit.us.2.1.i.i ], [ 9, %skl_wrpll_try_divider.exit.us.1.1.3.i.i ], [ 9, %skl_wrpll_try_divider.exit.us.2.1.3.i.i ]
  %.sroa.7.382251262.i.i = phi i64 [ %.sroa.7.382.i.i, %.thread.thread.i.i ], [ %.sroa.7.382.i.i, %.thread.thread.i.i ], [ 9000000000, %skl_wrpll_try_divider.exit.us.1.1.i.i ], [ 8400000000, %skl_wrpll_try_divider.exit.us.1111.3.i.i ], [ 9600000000, %skl_wrpll_try_divider.exit.us.2.1.i.i ], [ 9000000000, %skl_wrpll_try_divider.exit.us.1.1.3.i.i ], [ 9600000000, %skl_wrpll_try_divider.exit.us.2.1.3.i.i ]
  %.lhs.trunc.i.i.i = trunc nuw nsw i32 %.sroa.10.384249263.i.i to i8
  %i.gs = udiv i8 %.lhs.trunc.i.i.i, 3
  %.zext.i.i.i = zext nneg i8 %i.gs to i32
  br label %skl_wrpll_get_multipliers.exit.i.thread148.i

.thread.thread.thread.i.i:                        ; preds = %.thread.thread.i.i
  %i.gt = and i32 %.sroa.10.384.i.i, -3
  %or.cond9.i.i.i = icmp eq i32 %i.gt, 5
  br i1 %or.cond9.i.i.i, label %skl_wrpll_get_multipliers.exit.i.i, label %.thread.thread.thread.thread.i.i

.thread.thread.thread.thread.i.i:                 ; preds = %.thread.thread.thread.i.i
  switch i32 %.sroa.10.384.i.i, label %skl_wrpll_get_multipliers.exit.i.thread176.i [
    i32 15, label %skl_wrpll_get_multipliers.exit.i.thread148.i
    i32 21, label %skl_wrpll_get_multipliers.exit.i.thread163.i
    i32 35, label %bb.bk
  ]

bb.bk:                                            ; preds = %.thread.thread.thread.thread.i.i
  br label %skl_wrpll_get_multipliers.exit.i.thread163.i

skl_wrpll_get_multipliers.exit.i.thread.i:        ; preds = %bb.bf, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %bb.bd
  %.1.i.ph.i = phi i32 [ 1, %switch.early.test.i.i.i ], [ 1, %switch.early.test.i.i.i ], [ 1, %bb.bd ], [ %i.gl, %bb.bf ]
  %.0.i.ph.i = phi i32 [ %i.gg, %switch.early.test.i.i.i ], [ %i.gg, %switch.early.test.i.i.i ], [ %i.gg, %bb.bd ], [ 2, %bb.bf ]
  %switch.selectcmp138.i = icmp eq i64 %.sroa.7.382.i.i, 9000000000
  %switch.select139.i = zext i1 %switch.selectcmp138.i to i32
  %switch.selectcmp118140.i = icmp eq i64 %.sroa.7.382.i.i, 8400000000
  %switch.select119141.i = select i1 %switch.selectcmp118140.i, i32 3, i32 %switch.select139.i
  br label %.sink.split.i29.i.thread.i

skl_wrpll_get_multipliers.exit.i.thread148.i:     ; preds = %.thread.thread.thread.thread.i.i, %.thread.thread.thread259.i.i, %bb.bh
  %.sroa.7.382250.i.ph.i = phi i64 [ %.sroa.7.382251262.i.i, %.thread.thread.thread259.i.i ], [ %.sroa.7.382.i.i, %bb.bh ], [ %.sroa.7.382.i.i, %.thread.thread.thread.thread.i.i ] ; 2 uses
  %.1.i.ph146.i = phi i32 [ 1, %.thread.thread.thread259.i.i ], [ %i.go, %bb.bh ], [ 1, %.thread.thread.thread.thread.i.i ]
  %.0.i.ph147.i = phi i32 [ %.zext.i.i.i, %.thread.thread.thread259.i.i ], [ 2, %bb.bh ], [ 5, %.thread.thread.thread.thread.i.i ]
  %switch.selectcmp153.i = icmp eq i64 %.sroa.7.382250.i.ph.i, 9000000000
  %switch.select154.i = zext i1 %switch.selectcmp153.i to i32
  %switch.selectcmp118155.i = icmp eq i64 %.sroa.7.382250.i.ph.i, 8400000000
  %switch.select119156.i = select i1 %switch.selectcmp118155.i, i32 3, i32 %switch.select154.i
  br label %.sink.split.i29.i.thread.i

skl_wrpll_get_multipliers.exit.i.thread163.i:     ; preds = %bb.bk, %.thread.thread.thread.thread.i.i, %bb.bj
  %.1.i.ph161.i = phi i32 [ %i.gr, %bb.bj ], [ 1, %bb.bk ], [ 1, %.thread.thread.thread.thread.i.i ]
  %.0.i.ph162.i = phi i32 [ 2, %bb.bj ], [ 5, %bb.bk ], [ 3, %.thread.thread.thread.thread.i.i ]
  %switch.selectcmp168.i = icmp eq i64 %.sroa.7.382.i.i, 9000000000
  %switch.select169.i = zext i1 %switch.selectcmp168.i to i32
  %switch.selectcmp118170.i = icmp eq i64 %.sroa.7.382.i.i, 8400000000
  %switch.select119171.i = select i1 %switch.selectcmp118170.i, i32 3, i32 %switch.select169.i
  br label %.sink.split.i29.i.thread.i

skl_wrpll_get_multipliers.exit.i.thread176.i:     ; preds = %.thread.thread.thread.thread.i.i, %bb.bi
  %switch.selectcmp181.i = icmp eq i64 %.sroa.7.382.i.i, 9000000000
  %switch.select182.i = zext i1 %switch.selectcmp181.i to i32
  %switch.selectcmp118183.i = icmp eq i64 %.sroa.7.382.i.i, 8400000000
  %switch.select119184.i = select i1 %switch.selectcmp118183.i, i32 3, i32 %switch.select182.i
  br label %.sink.split.i29.i.thread36.i

skl_wrpll_get_multipliers.exit.i.i:               ; preds = %.thread.thread.thread.i.i
  %switch.selectcmp.i = icmp eq i64 %.sroa.7.382.i.i, 9000000000
  %switch.select.i = zext i1 %switch.selectcmp.i to i32
  %switch.selectcmp118.i = icmp eq i64 %.sroa.7.382.i.i, 8400000000
  %switch.select119.i = select i1 %switch.selectcmp118.i, i32 3, i32 %switch.select.i ; 2 uses
  %cond.i = icmp eq i32 %.sroa.10.384.i.i, 7
  br i1 %cond.i, label %.thread.i, label %.sink.split.i29.i.thread36.i

.sink.split.i29.i.thread36.i:                     ; preds = %skl_wrpll_get_multipliers.exit.i.i, %skl_wrpll_get_multipliers.exit.i.thread176.i, %skl_wrpll_try_divider.exit.us.2.1.1.i.i, %skl_wrpll_try_divider.exit.us.1.1.1.i.i, %skl_wrpll_try_divider.exit.us.1111.1.i.i
  %.139296.i44.i = phi i32 [ %.sroa.10.384.i.i, %skl_wrpll_get_multipliers.exit.i.i ], [ 5, %skl_wrpll_try_divider.exit.us.2.1.1.i.i ], [ 5, %skl_wrpll_try_divider.exit.us.1.1.1.i.i ], [ 5, %skl_wrpll_try_divider.exit.us.1111.1.i.i ], [ 0, %skl_wrpll_get_multipliers.exit.i.thread176.i ]
  %.1298.i43.i = phi i32 [ 1, %skl_wrpll_get_multipliers.exit.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.2.1.1.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.1.1.1.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.1111.1.i.i ], [ 0, %skl_wrpll_get_multipliers.exit.i.thread176.i ] ; 2 uses
  %.sroa.21.041.i = phi i32 [ %switch.select119.i, %skl_wrpll_get_multipliers.exit.i.i ], [ 0, %skl_wrpll_try_divider.exit.us.2.1.1.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.1.1.1.i.i ], [ 3, %skl_wrpll_try_divider.exit.us.1111.1.i.i ], [ %switch.select119184.i, %skl_wrpll_get_multipliers.exit.i.thread176.i ]
  %i.gu = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.62, ptr @.str.2, i32 1648, i32 2321, i64 16) #13, !srcloc !203
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.gu) #14
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !204
  br label %.sink.split.i29.i.thread.i

.sink.split.i29.i.thread.i:                       ; preds = %.sink.split.i29.i.thread36.i, %skl_wrpll_get_multipliers.exit.i.thread163.i, %skl_wrpll_get_multipliers.exit.i.thread148.i, %skl_wrpll_get_multipliers.exit.i.thread.i
  %.139296.i32.i = phi i32 [ %.139296.i44.i, %.sink.split.i29.i.thread36.i ], [ 2, %skl_wrpll_get_multipliers.exit.i.thread.i ], [ 3, %skl_wrpll_get_multipliers.exit.i.thread148.i ], [ 7, %skl_wrpll_get_multipliers.exit.i.thread163.i ] ; 5 uses
  %.1298.i30.i = phi i32 [ %.1298.i43.i, %.sink.split.i29.i.thread36.i ], [ %.1.i.ph.i, %skl_wrpll_get_multipliers.exit.i.thread.i ], [ %.1.i.ph146.i, %skl_wrpll_get_multipliers.exit.i.thread148.i ], [ %.1.i.ph161.i, %skl_wrpll_get_multipliers.exit.i.thread163.i ] ; 5 uses
  %.0300.i28.i = phi i32 [ %.1298.i43.i, %.sink.split.i29.i.thread36.i ], [ %.0.i.ph.i, %skl_wrpll_get_multipliers.exit.i.thread.i ], [ %.0.i.ph147.i, %skl_wrpll_get_multipliers.exit.i.thread148.i ], [ %.0.i.ph162.i, %skl_wrpll_get_multipliers.exit.i.thread163.i ] ; 6 uses
  %.sroa.21.026.i = phi i32 [ %.sroa.21.041.i, %.sink.split.i29.i.thread36.i ], [ %switch.select119141.i, %skl_wrpll_get_multipliers.exit.i.thread.i ], [ %switch.select119156.i, %skl_wrpll_get_multipliers.exit.i.thread148.i ], [ %switch.select119171.i, %skl_wrpll_get_multipliers.exit.i.thread163.i ] ; 5 uses
  %.sroa.16.0.i = phi i32 [ 0, %.sink.split.i29.i.thread36.i ], [ 1, %skl_wrpll_get_multipliers.exit.i.thread.i ], [ 2, %skl_wrpll_get_multipliers.exit.i.thread148.i ], [ 4, %skl_wrpll_get_multipliers.exit.i.thread163.i ] ; 5 uses
  switch i32 %.0300.i28.i, label %bb.bo [
    i32 5, label %.thread.i
    i32 2, label %bb.bl
    i32 3, label %bb.bm
    i32 1, label %bb.bn
  ]

bb.bl:                                            ; preds = %.sink.split.i29.i.thread.i
  br label %.thread.i

bb.bm:                                            ; preds = %.sink.split.i29.i.thread.i
  br label %.thread.i

bb.bn:                                            ; preds = %.sink.split.i29.i.thread.i
  br label %.thread.i

bb.bo:                                            ; preds = %.sink.split.i29.i.thread.i
  %i.gv = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.61, ptr @.str.2, i32 1665, i32 2321, i64 16) #13, !srcloc !205
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.gv) #14
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !206
  br label %.thread.i

.thread.i:                                        ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bl, %.sink.split.i29.i.thread.i, %skl_wrpll_get_multipliers.exit.i.i, %bb.au, %bb.at, %skl_wrpll_try_divider.exit.us.2.1.5.i.i, %skl_wrpll_try_divider.exit.us.2.1.4.i.i, %skl_wrpll_try_divider.exit.us.2.1.2.i.i, %skl_wrpll_try_divider.exit.us.1.1.6.i.i, %skl_wrpll_try_divider.exit.us.1.1.5.i.i, %skl_wrpll_try_divider.exit.us.1.1.4.i.i, %skl_wrpll_try_divider.exit.us.1.1.2.i.i, %skl_wrpll_try_divider.exit.us.1111.6.i.i, %skl_wrpll_try_divider.exit.us.1111.5.i.i, %skl_wrpll_try_divider.exit.us.1111.4.i.i, %skl_wrpll_try_divider.exit.us.1111.2.i.i
  %.sroa.16.069.i = phi i32 [ %.sroa.16.0.i, %bb.bo ], [ %.sroa.16.0.i, %bb.bm ], [ %.sroa.16.0.i, %bb.bl ], [ 4, %skl_wrpll_try_divider.exit.us.1.1.2.i.i ], [ %.sroa.16.0.i, %.sink.split.i29.i.thread.i ], [ 2, %skl_wrpll_try_divider.exit.us.1111.4.i.i ], [ 2, %skl_wrpll_try_divider.exit.us.2.1.4.i.i ], [ 2, %skl_wrpll_try_divider.exit.us.1.1.4.i.i ], [ 4, %skl_wrpll_try_divider.exit.us.1111.6.i.i ], [ 4, %skl_wrpll_try_divider.exit.us.2.1.5.i.i ], [ 4, %bb.au ], [ 4, %bb.at ], [ 4, %skl_wrpll_try_divider.exit.us.1.1.6.i.i ], [ 4, %skl_wrpll_try_divider.exit.us.1.1.5.i.i ], [ 4, %skl_wrpll_try_divider.exit.us.1111.5.i.i ], [ 4, %skl_wrpll_try_divider.exit.us.2.1.2.i.i ], [ 4, %skl_wrpll_try_divider.exit.us.1111.2.i.i ], [ %.sroa.16.0.i, %bb.bn ], [ 4, %skl_wrpll_get_multipliers.exit.i.i ]
  %.sroa.21.02667.i = phi i32 [ %.sroa.21.026.i, %bb.bo ], [ %.sroa.21.026.i, %bb.bm ], [ %.sroa.21.026.i, %bb.bl ], [ 1, %skl_wrpll_try_divider.exit.us.1.1.2.i.i ], [ %.sroa.21.026.i, %.sink.split.i29.i.thread.i ], [ 3, %skl_wrpll_try_divider.exit.us.1111.4.i.i ], [ 0, %skl_wrpll_try_divider.exit.us.2.1.4.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.1.1.4.i.i ], [ 3, %skl_wrpll_try_divider.exit.us.1111.6.i.i ], [ 0, %skl_wrpll_try_divider.exit.us.2.1.5.i.i ], [ 0, %bb.au ], [ 0, %bb.at ], [ 1, %skl_wrpll_try_divider.exit.us.1.1.6.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.1.1.5.i.i ], [ 3, %skl_wrpll_try_divider.exit.us.1111.5.i.i ], [ 0, %skl_wrpll_try_divider.exit.us.2.1.2.i.i ], [ 3, %skl_wrpll_try_divider.exit.us.1111.2.i.i ], [ %.sroa.21.026.i, %bb.bn ], [ %switch.select119.i, %skl_wrpll_get_multipliers.exit.i.i ]
  %.0300.i2865.i = phi i32 [ %.0300.i28.i, %bb.bo ], [ %.0300.i28.i, %bb.bm ], [ %.0300.i28.i, %bb.bl ], [ 1, %skl_wrpll_try_divider.exit.us.1.1.2.i.i ], [ %.0300.i28.i, %.sink.split.i29.i.thread.i ], [ 5, %skl_wrpll_try_divider.exit.us.1111.4.i.i ], [ 5, %skl_wrpll_try_divider.exit.us.2.1.4.i.i ], [ 5, %skl_wrpll_try_divider.exit.us.1.1.4.i.i ], [ 5, %skl_wrpll_try_divider.exit.us.1111.6.i.i ], [ 3, %skl_wrpll_try_divider.exit.us.2.1.5.i.i ], [ 5, %bb.au ], [ 5, %bb.at ], [ 5, %skl_wrpll_try_divider.exit.us.1.1.6.i.i ], [ 3, %skl_wrpll_try_divider.exit.us.1.1.5.i.i ], [ 3, %skl_wrpll_try_divider.exit.us.1111.5.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.2.1.2.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.1111.2.i.i ], [ %.0300.i28.i, %bb.bn ], [ 1, %skl_wrpll_get_multipliers.exit.i.i ]
  %.1298.i3063.i = phi i32 [ %.1298.i30.i, %bb.bo ], [ %.1298.i30.i, %bb.bm ], [ %.1298.i30.i, %bb.bl ], [ 1, %skl_wrpll_try_divider.exit.us.1.1.2.i.i ], [ %.1298.i30.i, %.sink.split.i29.i.thread.i ], [ 1, %skl_wrpll_try_divider.exit.us.1111.4.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.2.1.4.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.1.1.4.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.1111.6.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.2.1.5.i.i ], [ 1, %bb.au ], [ 1, %bb.at ], [ 1, %skl_wrpll_try_divider.exit.us.1.1.6.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.1.1.5.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.1111.5.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.2.1.2.i.i ], [ 1, %skl_wrpll_try_divider.exit.us.1111.2.i.i ], [ %.1298.i30.i, %bb.bn ], [ 1, %skl_wrpll_get_multipliers.exit.i.i ]
  %.139296.i3261.i = phi i32 [ %.139296.i32.i, %bb.bo ], [ %.139296.i32.i, %bb.bm ], [ %.139296.i32.i, %bb.bl ], [ 7, %skl_wrpll_try_divider.exit.us.1.1.2.i.i ], [ %.139296.i32.i, %.sink.split.i29.i.thread.i ], [ 3, %skl_wrpll_try_divider.exit.us.1111.4.i.i ], [ 3, %skl_wrpll_try_divider.exit.us.2.1.4.i.i ], [ 3, %skl_wrpll_try_divider.exit.us.1.1.4.i.i ], [ 7, %skl_wrpll_try_divider.exit.us.1111.6.i.i ], [ 7, %skl_wrpll_try_divider.exit.us.2.1.5.i.i ], [ 7, %bb.au ], [ 7, %bb.at ], [ 7, %skl_wrpll_try_divider.exit.us.1.1.6.i.i ], [ 7, %skl_wrpll_try_divider.exit.us.1.1.5.i.i ], [ 7, %skl_wrpll_try_divider.exit.us.1111.5.i.i ], [ 7, %skl_wrpll_try_divider.exit.us.2.1.2.i.i ], [ 7, %skl_wrpll_try_divider.exit.us.1111.2.i.i ], [ %.139296.i32.i, %bb.bn ], [ 7, %skl_wrpll_get_multipliers.exit.i.i ]
  %.sroa.11.0.i = phi i32 [ 0, %bb.bo ], [ 64, %bb.bm ], [ 32, %bb.bl ], [ 96, %skl_wrpll_try_divider.exit.us.1.1.2.i.i ], [ 0, %.sink.split.i29.i.thread.i ], [ 0, %skl_wrpll_try_divider.exit.us.1111.4.i.i ], [ 0, %skl_wrpll_try_divider.exit.us.2.1.4.i.i ], [ 0, %skl_wrpll_try_divider.exit.us.1.1.4.i.i ], [ 0, %skl_wrpll_try_divider.exit.us.1111.6.i.i ], [ 64, %skl_wrpll_try_divider.exit.us.2.1.5.i.i ], [ 0, %bb.au ], [ 0, %bb.at ], [ 0, %skl_wrpll_try_divider.exit.us.1.1.6.i.i ], [ 64, %skl_wrpll_try_divider.exit.us.1.1.5.i.i ], [ 64, %skl_wrpll_try_divider.exit.us.1111.5.i.i ], [ 96, %skl_wrpll_try_divider.exit.us.2.1.2.i.i ], [ 96, %skl_wrpll_try_divider.exit.us.1111.2.i.i ], [ 96, %bb.bn ], [ 96, %skl_wrpll_get_multipliers.exit.i.i ]
  %.1298.i3063.fr.i = freeze i32 %.1298.i3063.i   ; 3 uses
  %.not120.i = icmp eq i32 %.1298.i3063.fr.i, 1
  %i.gw = mul i32 %.1298.i3063.fr.i, %.0300.i2865.i
  %i.gx = mul i32 %i.gw, %.139296.i3261.i
end_hunk_0
begin_hunk_1_@skl_ddi_pll_get_hw_state:bb.a
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
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %1, i64 136        ; 2 uses
  %.val10 = load i32, ptr %i.b, align 8
  %i.c = zext i32 %.val10 to i64
  %i.d = getelementptr [56 x i8], ptr %.val, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8              ; 6 uses
  %i.g = getelementptr i8, ptr %i.f, i64 888
  %.val12 = load i32, ptr %i.g, align 8           ; 2 uses
  %i.h = zext i32 %.val12 to i64                  ; 2 uses
  %i.i = and i64 %i.h, 64
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @__drm_to_display(ptr noundef nonnull %i.k) #14 ; 0 uses
  %.val.i.pre = load ptr, ptr %i.a, align 8
  %.val10.i.pre = load i32, ptr %i.b, align 8
  %.phi.trans.insert = zext i32 %.val10.i.pre to i64
  %.phi.trans.insert24 = getelementptr [56 x i8], ptr %.val.i.pre, i64 %.phi.trans.insert
  %.phi.trans.insert25 = getelementptr i8, ptr %.phi.trans.insert24, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert25, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = phi ptr [ %.pre, %bb.c ], [ %i.f, %bb.b ] ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 1320     ; 2 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = mul i32 %i.o, 1000                       ; 3 uses
  %i.q = sdiv i32 %i.p, 100
  %i.r = sext i32 %i.q to i64                     ; 3 uses
  switch i32 %i.p, label %hsw_wrpll_get_budget_for_freq.exit.i.i [
    i32 25175000, label %.preheader31.i.i
    i32 25200000, label %.preheader31.i.i
    i32 27000000, label %.preheader31.i.i
    i32 27027000, label %.preheader31.i.i
    i32 268500000, label %bb.h
    i32 37800000, label %.preheader31.i.i
    i32 40500000, label %.preheader31.i.i
    i32 40541000, label %.preheader31.i.i
    i32 54000000, label %.preheader31.i.i
    i32 54054000, label %.preheader31.i.i
    i32 59341000, label %.preheader31.i.i
    i32 59400000, label %.preheader31.i.i
    i32 72000000, label %.preheader31.i.i
    i32 74176000, label %.preheader31.i.i
    i32 74250000, label %.preheader31.i.i
    i32 81000000, label %.preheader31.i.i
    i32 81081000, label %.preheader31.i.i
    i32 89012000, label %.preheader31.i.i
    i32 89100000, label %.preheader31.i.i
    i32 108000000, label %.preheader31.i.i
    i32 108108000, label %.preheader31.i.i
    i32 111264000, label %.preheader31.i.i
    i32 111375000, label %.preheader31.i.i
    i32 148352000, label %.preheader31.i.i
    i32 148500000, label %.preheader31.i.i
    i32 162000000, label %.preheader31.i.i
    i32 162162000, label %.preheader31.i.i
    i32 222525000, label %.preheader31.i.i
    i32 222750000, label %.preheader31.i.i
    i32 296703000, label %.preheader31.i.i
    i32 297000000, label %.preheader31.i.i
    i32 233500000, label %bb.e
    i32 245250000, label %bb.e
    i32 247750000, label %bb.e
    i32 253250000, label %bb.e
    i32 298000000, label %bb.e
    i32 169128000, label %bb.f
    i32 169500000, label %bb.f
    i32 179500000, label %bb.f
    i32 202000000, label %bb.f
    i32 256250000, label %bb.g
    i32 262500000, label %bb.g
    i32 270000000, label %bb.g
    i32 272500000, label %bb.g
    i32 273750000, label %bb.g
    i32 280750000, label %bb.g
    i32 281250000, label %bb.g
    i32 286000000, label %bb.g
    i32 291750000, label %bb.g
    i32 267250000, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  br label %.preheader31.i.i

bb.f:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  br label %.preheader31.i.i

bb.g:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  br label %.preheader31.i.i

bb.h:                                             ; preds = %bb.d, %bb.d
  br label %.preheader31.i.i

hsw_wrpll_get_budget_for_freq.exit.i.i:           ; preds = %bb.d
  %.off.i.i = add i32 %i.p, -540000000
  %i.s = icmp ult i32 %.off.i.i, 100
  br i1 %i.s, label %hsw_ddi_wrpll_compute_dpll.exit, label %.preheader31.i.i

.preheader31.i.i:                                 ; preds = %hsw_wrpll_get_budget_for_freq.exit.i.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %.0.i61.i.i = phi i64 [ 1000, %hsw_wrpll_get_budget_for_freq.exit.i.i ], [ 5000, %bb.h ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.d ], [ 4000, %bb.g ], [ 2000, %bb.f ], [ 1500, %bb.e ]
  %i.t = mul nsw i64 %.0.i61.i.i, %i.r            ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i, %.preheader31.i.i
  %indvars.iv56.i.i = phi i64 [ 14, %.preheader31.i.i ], [ %indvars.iv.next57.i.i, %._crit_edge.i.i ] ; 4 uses
  %indvars.iv51.i.i = phi i64 [ 112, %.preheader31.i.i ], [ %indvars.iv.next52.i.i, %._crit_edge.i.i ] ; 2 uses
  %.sroa.15.047.i.i = phi i32 [ 0, %.preheader31.i.i ], [ %.sroa.15.1.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  %.sroa.9.046.i.i = phi i32 [ 0, %.preheader31.i.i ], [ %.sroa.9.1.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  %.sroa.0.045.i.i = phi i32 [ 0, %.preheader31.i.i ], [ %.sroa.0.1.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  %indvars58.i.i = trunc i64 %indvars.iv56.i.i to i32 ; 6 uses
  %.0.tr.i.i = trunc i64 %indvars.iv56.i.i to i16
  %.lhs.trunc.i.i = shl nuw nsw i16 %.0.tr.i.i, 3
  %i.u = udiv i16 %.lhs.trunc.i.i, 9
  %.zext.i.i = zext nneg i16 %i.u to i32
  %i.v = shl nuw nsw i32 %indvars58.i.i, 4
  %i.w = udiv i32 %i.v, 9                         ; 2 uses
  %.not.not38.i.i = icmp samesign ugt i32 %i.w, %.zext.i.i
  br i1 %.not.not38.i.i, label %.preheader.lr.ph.i.i, label %._crit_edge.i.i

.preheader.lr.ph.i.i:                             ; preds = %bb.i
  %i.x = udiv i64 %indvars.iv51.i.i, 9
  %i.y = mul nuw nsw i32 %indvars58.i.i, %indvars58.i.i
  %i.z = zext nneg i32 %i.w to i64
  br label %.preheader.i.i

.loopexit.i.i:                                    ; preds = %hsw_wrpll_update_rnp.exit.i.i
  %.not.not.i.i = icmp samesign ult i64 %indvars.iv.next54.i.i, %i.z
  br i1 %.not.not.i.i, label %.preheader.i.i, label %._crit_edge.i.i, !llvm.loop !215

.preheader.i.i:                                   ; preds = %.loopexit.i.i, %.preheader.lr.ph.i.i
  %indvars.iv53.i.i = phi i64 [ %i.x, %.preheader.lr.ph.i.i ], [ %indvars.iv.next54.i.i, %.loopexit.i.i ]
  %.sroa.15.141.i.i = phi i32 [ %.sroa.15.047.i.i, %.preheader.lr.ph.i.i ], [ %.sroa.15.3.i.i, %.loopexit.i.i ]
  %.sroa.9.140.i.i = phi i32 [ %.sroa.9.046.i.i, %.preheader.lr.ph.i.i ], [ %.sroa.9.3.i.i, %.loopexit.i.i ]
  %.sroa.0.139.i.i = phi i32 [ %.sroa.0.045.i.i, %.preheader.lr.ph.i.i ], [ %.sroa.0.3.i.i, %.loopexit.i.i ]
  %indvars.iv.next54.i.i = add nuw nsw i64 %indvars.iv53.i.i, 1 ; 4 uses
  %i.aa = mul nuw nsw i64 %indvars.iv.next54.i.i, 5400000 ; 3 uses
  %i.ab = trunc nuw nsw i64 %indvars.iv.next54.i.i to i32 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %hsw_wrpll_update_rnp.exit.i.i, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 2, %.preheader.i.i ], [ %indvars.iv.next.i.i, %hsw_wrpll_update_rnp.exit.i.i ] ; 4 uses
  %.sroa.15.235.i.i = phi i32 [ %.sroa.15.141.i.i, %.preheader.i.i ], [ %.sroa.15.3.i.i, %hsw_wrpll_update_rnp.exit.i.i ] ; 7 uses
  %.sroa.9.234.i.i = phi i32 [ %.sroa.9.140.i.i, %.preheader.i.i ], [ %.sroa.9.3.i.i, %hsw_wrpll_update_rnp.exit.i.i ] ; 5 uses
  %.sroa.0.233.i.i = phi i32 [ %.sroa.0.139.i.i, %.preheader.i.i ], [ %.sroa.0.3.i.i, %hsw_wrpll_update_rnp.exit.i.i ] ; 6 uses
  %i.ac = icmp eq i32 %.sroa.0.233.i.i, 0
  %i.ad = trunc nuw nsw i64 %indvars.iv.i.i to i32 ; 3 uses
  br i1 %i.ac, label %hsw_wrpll_update_rnp.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = mul nuw nsw i64 %indvars.iv.i.i, %indvars.iv56.i.i ; 3 uses
  %i.af = mul nsw i64 %i.ae, %i.t
  %i.ag = zext i32 %.sroa.0.233.i.i to i64
  %i.ah = zext i32 %.sroa.15.235.i.i to i64
  %i.ai = mul nuw i64 %i.ag, %i.ah                ; 2 uses
  %i.aj = mul i64 %i.ai, %i.t
  %i.ak = mul nsw i64 %i.ae, %i.r                 ; 3 uses
  %3 = icmp ugt i64 %i.ak, %i.aa
  %4 = sub nuw nsw i64 %i.ak, %i.aa
  %5 = sub nuw nsw i64 %i.aa, %i.ak
  %6 = select i1 %3, i64 %4, i64 %5               ; 2 uses
  %i.al = mul i64 %i.ai, %i.r                     ; 3 uses
  %i.am = zext i32 %.sroa.9.234.i.i to i64
  %i.an = mul nuw nsw i64 %i.am, 5400000          ; 3 uses
  %7 = icmp ugt i64 %i.al, %i.an
  %8 = sub nuw i64 %i.al, %i.an
  %9 = sub nuw nsw i64 %i.an, %i.al
  %10 = select i1 %7, i64 %8, i64 %9              ; 2 uses
  %i.ao = mul nsw i64 %6, 1000000
  %i.ap = mul i64 %10, 1000000
  %i.aq = icmp ult i64 %i.af, %i.ao               ; 3 uses
  %i.ar = icmp ult i64 %i.aj, %i.ap               ; 3 uses
  %or.cond.i.i.i = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond.i.i.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.as = mul i32 %.sroa.0.233.i.i, %.sroa.15.235.i.i
  %i.at = zext i32 %i.as to i64
  %i.au = mul i64 %6, %i.at
  %i.av = mul i64 %10, %i.ae
  %i.aw = icmp ult i64 %i.au, %i.av
  br i1 %i.aw, label %bb.m, label %hsw_wrpll_update_rnp.exit.i.i

bb.m:                                             ; preds = %bb.p, %bb.l
  br label %hsw_wrpll_update_rnp.exit.i.i

bb.n:                                             ; preds = %bb.k
  %.not.not.i.i.i = xor i1 %i.aq, true
  %or.cond88.i.i.i = select i1 %.not.not.i.i.i, i1 %i.ar, i1 false
  br i1 %or.cond88.i.i.i, label %hsw_wrpll_update_rnp.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %or.cond89.i.i.i = select i1 %i.aq, i1 true, i1 %i.ar
  br i1 %or.cond89.i.i.i, label %hsw_wrpll_update_rnp.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = mul i32 %.sroa.15.235.i.i, %i.ab
  %i.ay = mul i32 %i.ax, %.sroa.15.235.i.i
  %i.az = mul i32 %i.y, %.sroa.9.234.i.i
  %i.ba = icmp ugt i32 %i.ay, %i.az
  br i1 %i.ba, label %bb.m, label %hsw_wrpll_update_rnp.exit.i.i

hsw_wrpll_update_rnp.exit.i.i:                    ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.j
  %.sroa.0.3.i.i = phi i32 [ %.sroa.0.233.i.i, %bb.p ], [ %i.ad, %bb.m ], [ %.sroa.0.233.i.i, %bb.l ], [ %i.ad, %bb.j ], [ %.sroa.0.233.i.i, %bb.o ], [ %i.ad, %bb.n ] ; 3 uses
  %.sroa.9.3.i.i = phi i32 [ %.sroa.9.234.i.i, %bb.p ], [ %i.ab, %bb.m ], [ %.sroa.9.234.i.i, %bb.l ], [ %i.ab, %bb.j ], [ %.sroa.9.234.i.i, %bb.o ], [ %i.ab, %bb.n ] ; 3 uses
  %.sroa.15.3.i.i = phi i32 [ %.sroa.15.235.i.i, %bb.p ], [ %indvars58.i.i, %bb.m ], [ %.sroa.15.235.i.i, %bb.l ], [ %indvars58.i.i, %bb.j ], [ %.sroa.15.235.i.i, %bb.o ], [ %indvars58.i.i, %bb.n ] ; 3 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 2
  %i.bb = icmp samesign ult i64 %indvars.iv.i.i, 63
  br i1 %i.bb, label %bb.j, label %.loopexit.i.i, !llvm.loop !216

._crit_edge.i.i:                                  ; preds = %.loopexit.i.i, %bb.i
  %.sroa.0.1.lcssa.i.i = phi i32 [ %.sroa.0.045.i.i, %bb.i ], [ %.sroa.0.3.i.i, %.loopexit.i.i ] ; 2 uses
  %.sroa.9.1.lcssa.i.i = phi i32 [ %.sroa.9.046.i.i, %bb.i ], [ %.sroa.9.3.i.i, %.loopexit.i.i ] ; 2 uses
  %.sroa.15.1.lcssa.i.i = phi i32 [ %.sroa.15.047.i.i, %bb.i ], [ %.sroa.15.3.i.i, %.loopexit.i.i ] ; 3 uses
  %indvars.iv.next57.i.i = add nuw nsw i64 %indvars.iv56.i.i, 1 ; 2 uses
  %indvars.iv.next52.i.i = add nuw nsw i64 %indvars.iv51.i.i, 8
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next57.i.i, 113
  br i1 %exitcond.not.i.i, label %hsw_ddi_calculate_wrpll.exit.loopexit.i, label %bb.i, !llvm.loop !217

hsw_ddi_calculate_wrpll.exit.loopexit.i:          ; preds = %._crit_edge.i.i
  %i.bc = shl i32 %.sroa.9.1.lcssa.i.i, 16
  %i.bd = shl i32 %.sroa.0.1.lcssa.i.i, 8
  %i.be = or i32 %i.bc, %i.bd
  %i.bf = or i32 %i.be, %.sroa.15.1.lcssa.i.i
  %i.bg = and i32 %.sroa.15.1.lcssa.i.i, 255
  br label %hsw_ddi_wrpll_compute_dpll.exit

hsw_ddi_wrpll_compute_dpll.exit:                  ; preds = %hsw_wrpll_get_budget_for_freq.exit.i.i, %hsw_ddi_calculate_wrpll.exit.loopexit.i
  %storemerge.i.i = phi i32 [ 2, %hsw_wrpll_get_budget_for_freq.exit.i.i ], [ %i.bg, %hsw_ddi_calculate_wrpll.exit.loopexit.i ]
  %i.bh = phi i32 [ 131330, %hsw_wrpll_get_budget_for_freq.exit.i.i ], [ %i.bf, %hsw_ddi_calculate_wrpll.exit.loopexit.i ] ; 3 uses
  %i.bi = getelementptr i8, ptr %i.m, i64 944
  %i.bj = or i32 %i.bh, -1342177280
  store i32 %i.bj, ptr %i.bi, align 8
  %i.bk = lshr i32 %i.bh, 8
  %i.bl = and i32 %i.bk, 63
  %i.bm = lshr i32 %i.bh, 16
  %i.bn = and i32 %i.bm, 255
  %i.bo = mul nuw nsw i32 %i.bn, 270000
  %i.bp = mul nuw nsw i32 %i.bl, %storemerge.i.i
  %i.bq = udiv i32 %i.bo, %i.bp
  %i.br = shl nuw nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.n, align 8
  br label %hsw_ddi_lcpll_compute_dpll.exit

bb.q:                                             ; preds = %bb.a
  %i.bs = and i32 %.val12, 2432
  %.not20 = icmp eq i32 %i.bs, 0
  br i1 %.not20, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = load ptr, ptr %i.f, align 8
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %.not.i15 = icmp eq ptr %i.bu, null
  br i1 %.not.i15, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bv = tail call ptr @__drm_to_display(ptr noundef nonnull %i.bu) #14
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bw = phi ptr [ %i.bv, %bb.s ], [ null, %bb.r ]
  %i.bx = getelementptr i8, ptr %i.f, i64 1320
  %i.by = load i32, ptr %i.bx, align 8            ; 2 uses
  %i.bz = sdiv i32 %i.by, 2
  switch i32 %i.bz, label %bb.u [
    i32 81000, label %hsw_ddi_lcpll_compute_dpll.exit
    i32 135000, label %hsw_ddi_lcpll_compute_dpll.exit
    i32 270000, label %hsw_ddi_lcpll_compute_dpll.exit
  ]

bb.u:                                             ; preds = %bb.t
  %i.ca = load ptr, ptr %i.bw, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i, label %__drm_to_dev.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.v, %bb.u
  %i.cd = phi ptr [ %i.cc, %bb.v ], [ null, %bb.u ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.cd, i32 noundef 2, ptr noundef @.str.114, i32 noundef %i.by) #14
  br label %hsw_ddi_lcpll_compute_dpll.exit

bb.w:                                             ; preds = %bb.q
  %i.ce = and i64 %i.h, 2
  %.not21 = icmp eq i64 %i.ce, 0
  br i1 %.not21, label %hsw_ddi_lcpll_compute_dpll.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cf = getelementptr i8, ptr %i.f, i64 1320
  %i.cg = load i32, ptr %i.cf, align 8
  %i.ch = and i32 %i.cg, -2
  %.not.i16 = icmp eq i32 %i.ch, 270000
  br i1 %.not.i16, label %.critedge.i, label %bb.y, !prof !30

bb.y:                                             ; preds = %bb.x
  %i.ci = load ptr, ptr %1, align 8               ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i17, label %__drm_to_dev.exit.i18, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cj = getelementptr i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  br label %__drm_to_dev.exit.i18

__drm_to_dev.exit.i18:                            ; preds = %bb.z, %bb.y
  %i.cl = phi ptr [ %i.ck, %bb.z ], [ null, %bb.y ]
  %i.cm = tail call ptr @dev_driver_string(ptr noundef %i.cl) #14 ; 0 uses
  %i.cn = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.7, ptr @.str.2, i32 1173, i32 2321, i64 16) #13, !srcloc !218
  %i.co = load ptr, ptr %1, align 8               ; 2 uses
  %.not.i20.i = icmp eq ptr %i.co, null
  br i1 %.not.i20.i, label %__drm_to_dev.exit21.i, label %bb.aa

bb.aa:                                            ; preds = %__drm_to_dev.exit.i18
  %i.cp = getelementptr i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  br label %__drm_to_dev.exit21.i

__drm_to_dev.exit21.i:                            ; preds = %bb.aa, %__drm_to_dev.exit.i18
  %i.cr = phi ptr [ %i.cq, %bb.aa ], [ null, %__drm_to_dev.exit.i18 ]
  %i.cs = tail call ptr @dev_driver_string(ptr noundef %i.cr) #14
  %i.ct = load ptr, ptr %1, align 8               ; 2 uses
  %.not.i22.i = icmp eq ptr %i.ct, null
  br i1 %.not.i22.i, label %__drm_to_dev.exit23.i, label %bb.ab

bb.ab:                                            ; preds = %__drm_to_dev.exit21.i
  %i.cu = getelementptr i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  br label %__drm_to_dev.exit23.i

__drm_to_dev.exit23.i:                            ; preds = %bb.ab, %__drm_to_dev.exit21.i
  %i.cw = phi ptr [ %i.cv, %bb.ab ], [ null, %__drm_to_dev.exit21.i ] ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 80
  %i.cy = load ptr, ptr %i.cx, align 8            ; 2 uses
  %.not.i24.i = icmp eq ptr %i.cy, null
  br i1 %.not.i24.i, label %bb.ac, label %dev_name.exit27.i

bb.ac:                                            ; preds = %__drm_to_dev.exit23.i
  %.val.i26.i = load ptr, ptr %i.cw, align 8
  br label %dev_name.exit27.i

dev_name.exit27.i:                                ; preds = %bb.ac, %__drm_to_dev.exit23.i
  %.0.i25.i = phi ptr [ %.val.i26.i, %bb.ac ], [ %i.cy, %__drm_to_dev.exit23.i ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.cn, ptr noundef %i.cs, ptr noundef %.0.i25.i, ptr noundef @.str.115) #14
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !219
  br label %hsw_ddi_lcpll_compute_dpll.exit

.critedge.i:                                      ; preds = %bb.x
  %i.cz = getelementptr i8, ptr %i.f, i64 948
  store i32 -1811939328, ptr %i.cz, align 4
  br label %hsw_ddi_lcpll_compute_dpll.exit

hsw_ddi_lcpll_compute_dpll.exit:                  ; preds = %.critedge.i, %dev_name.exit27.i, %__drm_to_dev.exit.i, %bb.t, %bb.t, %bb.t, %bb.w, %hsw_ddi_wrpll_compute_dpll.exit
  %.0 = phi i32 [ 0, %hsw_ddi_wrpll_compute_dpll.exit ], [ -22, %bb.w ], [ 0, %bb.t ], [ -22, %__drm_to_dev.exit.i ], [ 0, %bb.t ], [ 0, %bb.t ], [ 0, %.critedge.i ], [ -22, %dev_name.exit27.i ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -22, 1) i32 @hsw_get_dpll(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %1, i64 136
  %.val18 = load i32, ptr %i.b, align 8
  %i.c = zext i32 %.val18 to i64
  %i.d = getelementptr [56 x i8], ptr %.val, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8              ; 6 uses
  %i.g = getelementptr i8, ptr %i.f, i64 888
  %.val20 = load i32, ptr %i.g, align 8           ; 2 uses
  %i.h = zext i32 %.val20 to i64                  ; 2 uses
  %i.i = and i64 %i.h, 64
  %.not30 = icmp eq i64 %i.i, 0
  br i1 %.not30, label %bb.b, label %hsw_ddi_lcpll_get_dpll.exit

bb.b:                                             ; preds = %bb.a
  %i.j = and i32 %.val20, 2432
  %.not31 = icmp eq i32 %i.j, 0
end_hunk_1
begin_hunk_2_@ibx_pch_dpll_enable:bb.a
  br i1 %.not.i21.i, label %__drm_to_dev.exit22.i, label %bb.e

bb.e:                                             ; preds = %__drm_to_dev.exit.i
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  br label %__drm_to_dev.exit22.i

__drm_to_dev.exit22.i:                            ; preds = %bb.e, %__drm_to_dev.exit.i
  %i.v = phi ptr [ %i.u, %bb.e ], [ null, %__drm_to_dev.exit.i ]
  %i.w = tail call ptr @dev_driver_string(ptr noundef %i.v) #14
  %i.x = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i23.i = icmp eq ptr %i.x, null
  br i1 %.not.i23.i, label %__drm_to_dev.exit24.i, label %bb.f

bb.f:                                             ; preds = %__drm_to_dev.exit22.i
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  br label %__drm_to_dev.exit24.i

__drm_to_dev.exit24.i:                            ; preds = %bb.f, %__drm_to_dev.exit22.i
  %i.aa = phi ptr [ %i.z, %bb.f ], [ null, %__drm_to_dev.exit22.i ] ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not.i25.i = icmp eq ptr %i.ac, null
  br i1 %.not.i25.i, label %bb.g, label %dev_name.exit28.i

bb.g:                                             ; preds = %__drm_to_dev.exit24.i
  %.val.i27.i = load ptr, ptr %i.aa, align 8
  br label %dev_name.exit28.i

dev_name.exit28.i:                                ; preds = %bb.g, %__drm_to_dev.exit24.i
  %.0.i26.i = phi ptr [ %.val.i27.i, %bb.g ], [ %i.ac, %__drm_to_dev.exit24.i ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.r, ptr noundef %i.w, ptr noundef %.0.i26.i) #14
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !231
  br label %ibx_assert_pch_refclk_enabled.exit

.critedge.i:                                      ; preds = %bb.b
  br i1 %.not.i.i, label %__drm_to_dev.exit30.i, label %bb.h

bb.h:                                             ; preds = %.critedge.i
  %i.ad = getelementptr i8, ptr %i.m, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  br label %__drm_to_dev.exit30.i

__drm_to_dev.exit30.i:                            ; preds = %bb.h, %.critedge.i
  %i.af = phi ptr [ %i.ae, %bb.h ], [ null, %.critedge.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.af, ptr noundef @.str.122) #15
  br label %ibx_assert_pch_refclk_enabled.exit

ibx_assert_pch_refclk_enabled.exit:               ; preds = %bb.a, %dev_name.exit28.i, %__drm_to_dev.exit30.i
  %i.ag = icmp eq i32 %i.d, 0                     ; 3 uses
  %i.ah = select i1 %i.ag, i32 811072, i32 811080 ; 3 uses
  %i.ai = getelementptr i8, ptr %2, i64 8
  %i.aj = load i32, ptr %i.ai, align 4
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.ah) #14
  %.val.i = load ptr, ptr %0, align 8
  %i.ak = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #14 ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 176
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef %i.ak, i32 %i.ah, i32 noundef %i.aj, i1 noundef zeroext true) #14, !inline_history !4
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.ah) #14
  %i.an = select i1 %i.ag, i32 811076, i32 811084 ; 3 uses
  %i.ao = getelementptr i8, ptr %2, i64 12
  %i.ap = load i32, ptr %i.ao, align 4
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.an) #14
  %.val.i23 = load ptr, ptr %0, align 8
  %i.aq = tail call ptr @to_intel_uncore(ptr noundef %.val.i23) #14 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 176
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef %i.aq, i32 %i.an, i32 noundef %i.ap, i1 noundef zeroext true) #14, !inline_history !4
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.an) #14
  %i.at = select i1 %i.ag, i32 811028, i32 811032 ; 12 uses
  %i.au = load i32, ptr %2, align 4
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.at) #14
  %.val.i24 = load ptr, ptr %0, align 8
  %i.av = tail call ptr @to_intel_uncore(ptr noundef %.val.i24) #14 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 176
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef %i.av, i32 %i.at, i32 noundef %i.au, i1 noundef zeroext true) #14, !inline_history !4
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.at) #14
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.at) #14
  %.val.i25 = load ptr, ptr %0, align 8
  %i.ay = tail call ptr @to_intel_uncore(ptr noundef %.val.i25) #14 ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 144
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call i32 %i.ba(ptr noundef %i.ay, i32 %i.at, i1 noundef zeroext false) #14, !inline_history !5 ; 0 uses
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.at) #14
  tail call void @__const_udelay(i64 noundef 644250) #14
  %i.bc = load i32, ptr %2, align 4
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.at) #14
  %.val.i26 = load ptr, ptr %0, align 8
  %i.bd = tail call ptr @to_intel_uncore(ptr noundef %.val.i26) #14 ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 176
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void %i.bf(ptr noundef %i.bd, i32 %i.at, i32 noundef %i.bc, i1 noundef zeroext true) #14, !inline_history !4
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.at) #14
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.at) #14
  %.val.i27 = load ptr, ptr %0, align 8
  %i.bg = tail call ptr @to_intel_uncore(ptr noundef %.val.i27) #14 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 144
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call i32 %i.bi(ptr noundef %i.bg, i32 %i.at, i1 noundef zeroext false) #14, !inline_history !5 ; 0 uses
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.at) #14
  tail call void @__const_udelay(i64 noundef 859000) #14
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ibx_pch_dpll_disable(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 96
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  %i.f = select i1 %i.e, i32 811028, i32 811032   ; 6 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.f) #14
  %.val.i = load ptr, ptr %0, align 8
  %i.g = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #14 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 176
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef %i.g, i32 %i.f, i32 noundef 0, i1 noundef zeroext true) #14, !inline_history !4
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.f) #14
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.f) #14
  %.val.i5 = load ptr, ptr %0, align 8
  %i.j = tail call ptr @to_intel_uncore(ptr noundef %.val.i5) #14 ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 144
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call i32 %i.l(ptr noundef %i.j, i32 %i.f, i1 noundef zeroext false) #14, !inline_history !5 ; 0 uses
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.f) #14
  tail call void @__const_udelay(i64 noundef 859000) #14
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @ibx_pch_dpll_get_hw_state(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 96
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8
  %i.e = tail call ptr @intel_display_power_get_if_enabled(ptr noundef %0, i32 noundef 0) #14
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %i.d, 0                      ; 3 uses
  %i.g = select i1 %i.f, i32 811028, i32 811032   ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.g) #14
  %.val.i = load ptr, ptr %0, align 8
  %i.h = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #14 ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 144
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call i32 %i.j(ptr noundef %i.h, i32 %i.g, i1 noundef zeroext true) #14, !inline_history !6 ; 2 uses
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.g) #14
  store i32 %i.k, ptr %2, align 4
  %i.l = select i1 %i.f, i32 811072, i32 811080   ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.l) #14
  %.val.i20 = load ptr, ptr %0, align 8
  %i.m = tail call ptr @to_intel_uncore(ptr noundef %.val.i20) #14 ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 144
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call i32 %i.o(ptr noundef %i.m, i32 %i.l, i1 noundef zeroext true) #14, !inline_history !6
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.l) #14
  %i.q = getelementptr i8, ptr %2, i64 8
  store i32 %i.p, ptr %i.q, align 4
  %i.r = select i1 %i.f, i32 811076, i32 811084   ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.r) #14
  %.val.i21 = load ptr, ptr %0, align 8
  %i.s = tail call ptr @to_intel_uncore(ptr noundef %.val.i21) #14 ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 144
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call i32 %i.u(ptr noundef %i.s, i32 %i.r, i1 noundef zeroext true) #14, !inline_history !6
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.r) #14
  %i.w = getelementptr i8, ptr %2, i64 12
  store i32 %i.v, ptr %i.w, align 4
  tail call void @intel_display_power_put_unchecked(ptr noundef %0, i32 noundef 0) #14
  %i.x = icmp slt i32 %i.k, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.x, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__drm_printfn_dbg(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #6 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #9 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #13 = { nounwind }
attributes #14 = { noredzone nounwind "no-builtin-wcslen" }
attributes #15 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #16 = { noredzone "no-builtin-wcslen" }
attributes #17 = { nounwind memory(none) }

!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = distinct !{!0, !20}
!1 = distinct !{!1, !20}
!2 = distinct !{null, null, null}
!3 = distinct !{null, null, null}
!4 = distinct !{null, null}
!5 = distinct !{null, null}
!6 = distinct !{ptr @intel_de_read, null}
!7 = distinct !{null, null, null, null}
!8 = distinct !{null, null, null, null}
!9 = distinct !{null, null, null}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 8, !"cf-protection-branch", i32 1}
!12 = !{i32 4, !"function_return_thunk_extern", i32 1}
!13 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!14 = !{i32 1, !"Code Model", i32 2}
!15 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!16 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!17 = !{i32 1, !"override-stack-alignment", i32 8}
!18 = !{i32 4, !"SkipRaxSetup", i32 1}
!19 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{i64 2160944747, i64 2160944774, i64 2160945163, i64 2160945196, i64 2160945231, i64 2160945247, i64 2160946088, i64 2160946146, i64 2160946195, i64 2160946005, i64 2160945306, i64 2160945338}
!22 = !{i64 2160943114}
!23 = !{!"auto-init"}
!24 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!25 = !{ptr @intel_dpll_get_hw_state}
!26 = !{i8 0, i8 2}
!27 = !{}
!28 = !{i64 2160960157, i64 2160960184, i64 2160960573, i64 2160960606, i64 2160960641, i64 2160960657, i64 2160961498, i64 2160961556, i64 2160961605, i64 2160961415, i64 2160960716, i64 2160960748}
!29 = !{i64 2160958516}
!30 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!31 = !{i64 13306}
!32 = !{i64 13448}
!33 = !{i64 14461}
!34 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!35 = !{!"branch_weights", i32 1, i32 4001}
!36 = !{i64 2160949246, i64 2160949273, i64 2160949684, i64 2160949717, i64 2160949752, i64 2160949768, i64 2160950609, i64 2160950667, i64 2160950716, i64 2160950526, i64 2160949827, i64 2160949859}
!37 = !{i64 2160947383}
!38 = !{i64 2160954741, i64 2160954768, i64 2160955195, i64 2160955228, i64 2160955263, i64 2160955279, i64 2160956120, i64 2160956178, i64 2160956227, i64 2160956037, i64 2160955338, i64 2160955370}
!39 = !{i64 2160952740}
!40 = distinct !{null}
!41 = !{i64 2160979508, i64 2160979535, i64 2160979916, i64 2160979949, i64 2160979984, i64 2160980000, i64 2160980841, i64 2160980899, i64 2160980948, i64 2160980758, i64 2160980059, i64 2160980091}
!42 = !{i64 2160977673}
!43 = !{i64 2160984405, i64 2160984432, i64 2160984813, i64 2160984846, i64 2160984881, i64 2160984897, i64 2160985738, i64 2160985796, i64 2160985845, i64 2160985655, i64 2160984956, i64 2160984988}
!44 = !{i64 2160982508}
!45 = !{i64 2160989225, i64 2160989252, i64 2160989633, i64 2160989666, i64 2160989701, i64 2160989717, i64 2160990558, i64 2160990616, i64 2160990665, i64 2160990475, i64 2160989776, i64 2160989808}
!46 = !{i64 2160987342}
!47 = !{i64 2160994281, i64 2160994308, i64 2160994689, i64 2160994722, i64 2160994757, i64 2160994773, i64 2160995614, i64 2160995672, i64 2160995721, i64 2160995531, i64 2160994832, i64 2160994864}
!48 = !{i64 2160992438}
!49 = !{i64 2160998906, i64 2160998933, i64 2160999314, i64 2160999347, i64 2160999382, i64 2160999398, i64 2161000239, i64 2161000297, i64 2161000346, i64 2161000156, i64 2160999457, i64 2160999489}
!50 = !{i64 2160997065}
!51 = distinct !{null}
!52 = !{i64 2161010947, i64 2161010974, i64 2161011382, i64 2161011415, i64 2161011450, i64 2161011466, i64 2161012307, i64 2161012365, i64 2161012414, i64 2161012224, i64 2161011525, i64 2161011557}
!53 = !{i64 2161009006}
!54 = !{i64 2161016068, i64 2161016095, i64 2161016476, i64 2161016509, i64 2161016544, i64 2161016560, i64 2161017401, i64 2161017459, i64 2161017508, i64 2161017318, i64 2161016619, i64 2161016651}
!55 = !{i64 2161014225}
!56 = !{i64 2161058303, i64 2161058330, i64 2161058711, i64 2161058744, i64 2161058779, i64 2161058795, i64 2161059636, i64 2161059694, i64 2161059743, i64 2161059553, i64 2161058854, i64 2161058886}
!57 = !{i64 2161056360}
!58 = distinct !{!58, !20}
!59 = !{i64 2162734360, i64 2162734387, i64 2162734768, i64 2162734801, i64 2162734836, i64 2162734852, i64 2162735693, i64 2162735751, i64 2162735800, i64 2162735610, i64 2162734911, i64 2162734943}
!60 = !{i64 2162732067}
!61 = !{i64 2162739104, i64 2162739131, i64 2162739512, i64 2162739545, i64 2162739580, i64 2162739596, i64 2162744498, i64 2162744556, i64 2162744605, i64 2162744415, i64 2162739655, i64 2162739687}
!62 = !{i64 2162737235}
!63 = !{i64 2162753059, i64 2162753086, i64 2162753467, i64 2162753500, i64 2162753535, i64 2162753551, i64 2162754392, i64 2162754450, i64 2162754499, i64 2162754309, i64 2162753610, i64 2162753642}
!64 = !{i64 2162751214}
!65 = !{i64 2162762956, i64 2162762983, i64 2162763364, i64 2162763397, i64 2162763432, i64 2162763448, i64 2162764289, i64 2162764347, i64 2162764396, i64 2162764206, i64 2162763507, i64 2162763539}
!66 = !{i64 2162761111}
!67 = !{i64 2162778265, i64 2162778292, i64 2162778673, i64 2162778706, i64 2162778741, i64 2162778757, i64 2162779598, i64 2162779656, i64 2162779705, i64 2162779515, i64 2162778816, i64 2162778848}
!68 = !{i64 2162776420}
!69 = !{i64 2162783075, i64 2162783102, i64 2162783483, i64 2162783516, i64 2162783551, i64 2162783567, i64 2162784408, i64 2162784466, i64 2162784515, i64 2162784325, i64 2162783626, i64 2162783658}
!70 = !{i64 2162781194}
!71 = distinct !{null, ptr @intel_dpll_get_hw_state}
!72 = distinct !{!72, !20}
!73 = distinct !{!73, !20}
!74 = !{i64 143259}
!75 = distinct !{null, null}
!76 = distinct !{!76, !20}
!77 = !{i64 143960}
!78 = !{i64 148743}
!79 = !{i64 2162860209, i64 2162860236, i64 2162860686, i64 2162860719, i64 2162860754, i64 2162860770, i64 2162861611, i64 2162861669, i64 2162861718, i64 2162861528, i64 2162860829, i64 2162860861}
!80 = !{i64 2162858170}
!81 = !{i64 2162871715, i64 2162871742, i64 2162872192, i64 2162872225, i64 2162872260, i64 2162872276, i64 2162873117, i64 2162873175, i64 2162873224, i64 2162873034, i64 2162872335, i64 2162872367}
!82 = !{i64 2162865607}
!83 = distinct !{!83, i1 true, !"drm_dbg_printer"}
!84 = distinct !{!84, !83, !"drm_dbg_printer: argument 0"}
!85 = !{i64 2162800059, i64 2162800086, i64 2162800514, i64 2162800547, i64 2162800582, i64 2162800598, i64 2162801439, i64 2162801497, i64 2162801546, i64 2162801356, i64 2162800657, i64 2162800689}
!86 = !{i64 2162798150}
!87 = !{i64 2162806511, i64 2162806538, i64 2162806964, i64 2162806997, i64 2162807032, i64 2162807048, i64 2162807889, i64 2162807947, i64 2162807996, i64 2162807806, i64 2162807107, i64 2162807139}
!88 = !{i64 2162804606}
!89 = !{i64 2162813083, i64 2162813110, i64 2162813540, i64 2162813573, i64 2162813608, i64 2162813624, i64 2162814465, i64 2162814523, i64 2162814572, i64 2162814382, i64 2162813683, i64 2162813715}
!90 = !{i64 2162811136}
!91 = !{i64 2162819985, i64 2162820012, i64 2162820448, i64 2162820481, i64 2162820516, i64 2162820532, i64 2162821373, i64 2162821431, i64 2162821480, i64 2162821290, i64 2162820591, i64 2162820623}
!92 = !{i64 2162817980}
!93 = !{i64 2162827201, i64 2162827228, i64 2162827671, i64 2162827704, i64 2162827739, i64 2162827755, i64 2162828596, i64 2162828654, i64 2162828703, i64 2162828513, i64 2162827814, i64 2162827846}
!94 = !{i64 2162825176}
!95 = !{i64 2162834440, i64 2162834467, i64 2162834915, i64 2162834948, i64 2162834983, i64 2162834999, i64 2162835840, i64 2162835898, i64 2162835947, i64 2162835757, i64 2162835058, i64 2162835090}
!96 = !{i64 2162832405}
!97 = !{i64 2162841545, i64 2162841572, i64 2162842007, i64 2162842040, i64 2162842075, i64 2162842091, i64 2162842932, i64 2162842990, i64 2162843039, i64 2162842849, i64 2162842150, i64 2162842182}
!98 = !{i64 2162839556}
!99 = !{i64 2162848083, i64 2162848110, i64 2162848516, i64 2162848549, i64 2162848584, i64 2162848600, i64 2162849441, i64 2162849499, i64 2162849548, i64 2162849358, i64 2162848659, i64 2162848691}
!100 = !{i64 2162846218}
!101 = !{!84}
!102 = !{i64 2155711136}
!103 = distinct !{!103, !20}
!104 = !{i64 149826}
!105 = !{i64 129955}
!106 = !{i64 96496}
!107 = !{i64 2162710306, i64 2162710333, i64 2162710714, i64 2162710747, i64 2162710782, i64 2162710798, i64 2162711639, i64 2162711697, i64 2162711746, i64 2162711556, i64 2162710857, i64 2162710889}
!108 = !{i64 2162708463}
!109 = !{i64 2162714907, i64 2162714934, i64 2162715315, i64 2162715348, i64 2162715383, i64 2162715399, i64 2162716240, i64 2162716298, i64 2162716347, i64 2162716157, i64 2162715458, i64 2162715490}
!110 = !{i64 2162713064}
!111 = !{i64 2162705702, i64 2162705729, i64 2162706110, i64 2162706143, i64 2162706178, i64 2162706194, i64 2162707035, i64 2162707093, i64 2162707142, i64 2162706952, i64 2162706253, i64 2162706285}
!112 = !{i64 2162703859}
!113 = !{i64 2162701101, i64 2162701128, i64 2162701509, i64 2162701542, i64 2162701577, i64 2162701593, i64 2162702434, i64 2162702492, i64 2162702541, i64 2162702351, i64 2162701652, i64 2162701684}
!114 = !{i64 2162699272}
!115 = !{i64 95040}
!116 = !{i64 95398}
!117 = distinct !{!117, !20}
!118 = distinct !{!118, !20}
!119 = !{i64 2161021573, i64 2161021600, i64 2161021981, i64 2161022014, i64 2161022049, i64 2161022065, i64 2161022906, i64 2161022964, i64 2161023013, i64 2161022823, i64 2161022124, i64 2161022156}
!120 = !{i64 2161019662}
!121 = !{i64 11270}
!122 = !{i64 2161035748, i64 2161035775, i64 2161036156, i64 2161036189, i64 2161036224, i64 2161036240, i64 2161037081, i64 2161037139, i64 2161037188, i64 2161036998, i64 2161036299, i64 2161036331}
!123 = !{i64 2161033869}
!124 = !{i64 1256779}
!125 = distinct !{!125, !20}
!126 = !{i64 2160940698, i64 2160940725, i64 2160941106, i64 2160941139, i64 2160941174, i64 2160941190, i64 2160942031, i64 2160942089, i64 2160942138, i64 2160941948, i64 2160941249, i64 2160941281}
!127 = !{i64 2160938773}
!128 = !{i64 2161047364, i64 2161047391, i64 2161047772, i64 2161047805, i64 2161047840, i64 2161047856, i64 2161048697, i64 2161048755, i64 2161048804, i64 2161048614, i64 2161047915, i64 2161047947}
!129 = !{i64 2161045421}
!130 = !{i64 2162691976, i64 2162692003, i64 2162692384, i64 2162692417, i64 2162692452, i64 2162692468, i64 2162693309, i64 2162693367, i64 2162693416, i64 2162693226, i64 2162692527, i64 2162692559}
!131 = !{i64 2162690133}
!132 = !{i64 2162696577, i64 2162696604, i64 2162696985, i64 2162697018, i64 2162697053, i64 2162697069, i64 2162697910, i64 2162697968, i64 2162698017, i64 2162697827, i64 2162697128, i64 2162697160}
!133 = !{i64 2162694734}
!134 = !{i64 2162683311, i64 2162683338, i64 2162683719, i64 2162683752, i64 2162683787, i64 2162683803, i64 2162684644, i64 2162684702, i64 2162684751, i64 2162684561, i64 2162683862, i64 2162683894}
!135 = !{i64 2162681468}
!136 = distinct !{!136, !20}
!137 = !{i64 2162366519, i64 2162366546, i64 2162366925, i64 2162366958, i64 2162366993, i64 2162367009, i64 2162367850, i64 2162367908, i64 2162367957, i64 2162367767, i64 2162367068, i64 2162367100}
!138 = !{i64 2162364946}
!139 = !{i64 2162370191, i64 2162370218, i64 2162370597, i64 2162370630, i64 2162370665, i64 2162370681, i64 2162371522, i64 2162371580, i64 2162371629, i64 2162371439, i64 2162370740, i64 2162370772}
!140 = !{i64 2162368618}
!141 = !{!"branch_weights", !"expected", i32 8222683, i32 2139260965}
!142 = !{i64 2162372558, i64 2162372433}
!143 = !{i64 2162373081, i64 2162374141, i64 2162374174, i64 2162374209, i64 2162374225, i64 2162375152, i64 2162375210, i64 2162375259, i64 2162375069, i64 2162374284, i64 2162374316, i64 2162374399}
!144 = !{i64 2162375585, i64 2162375461}
!145 = !{i64 2162390471, i64 2162390498, i64 2162390887, i64 2162390920, i64 2162390955, i64 2162390971, i64 2162391812, i64 2162391870, i64 2162391919, i64 2162391729, i64 2162391030, i64 2162391062}
!146 = !{i64 2162388826}
!147 = !{i64 79376}
!148 = !{i64 91641}
!149 = !{i64 2162400387, i64 2162400414, i64 2162400803, i64 2162400836, i64 2162400871, i64 2162400887, i64 2162401728, i64 2162401786, i64 2162401835, i64 2162401645, i64 2162400946, i64 2162400978}
!150 = !{i64 2162398654}
!151 = !{i64 2162404632, i64 2162404659, i64 2162405048, i64 2162405081, i64 2162405116, i64 2162405132, i64 2162405973, i64 2162406031, i64 2162406080, i64 2162405890, i64 2162405191, i64 2162405223}
!152 = !{i64 2162402899}
!153 = !{i64 2162493342, i64 2162493369, i64 2162493758, i64 2162493791, i64 2162493826, i64 2162493842, i64 2162498744, i64 2162498802, i64 2162498851, i64 2162498661, i64 2162493901, i64 2162493933}
!154 = !{i64 2162491677}
!155 = !{i64 2162582766, i64 2162582793, i64 2162583182, i64 2162583215, i64 2162583250, i64 2162583266, i64 2162584107, i64 2162584165, i64 2162584214, i64 2162584024, i64 2162583325, i64 2162583357}
!156 = !{i64 2162581089}
!157 = !{i64 93112}
!158 = !{i64 97385}
!159 = !{i64 2162586810, i64 2162586837, i64 2162587226, i64 2162587259, i64 2162587294, i64 2162587310, i64 2162588151, i64 2162588209, i64 2162588258, i64 2162588068, i64 2162587369, i64 2162587401}
!160 = !{i64 2162585133}
!161 = !{i64 112985}
!162 = !{i64 113248}
!163 = !{i64 113292}
!164 = !{i64 115833}
!165 = !{i64 78872}
!166 = !{i64 2162429407, i64 2162429434, i64 2162429815, i64 2162429848, i64 2162429883, i64 2162429899, i64 2162430740, i64 2162430798, i64 2162430847, i64 2162430657, i64 2162429958, i64 2162429990}
!167 = !{i64 2162427522}
!168 = !{i64 2162628083, i64 2162628110, i64 2162628491, i64 2162628524, i64 2162628559, i64 2162628575, i64 2162629416, i64 2162629474, i64 2162629523, i64 2162629333, i64 2162628634, i64 2162628666}
!169 = !{i64 2162625910}
!170 = !{i64 2162657796, i64 2162657823, i64 2162658204, i64 2162658237, i64 2162658272, i64 2162658288, i64 2162659129, i64 2162659187, i64 2162659236, i64 2162659046, i64 2162658347, i64 2162658379}
!171 = !{i64 2162655845}
!172 = !{i64 2162667977, i64 2162668004, i64 2162668385, i64 2162668418, i64 2162668453, i64 2162668469, i64 2162669310, i64 2162669368, i64 2162669417, i64 2162669227, i64 2162668528, i64 2162668560}
!173 = !{i64 2162665578}
!174 = distinct !{null}
!175 = !{i64 104059}
!176 = !{i64 104132}
!177 = !{i64 104247}
end_hunk_2
