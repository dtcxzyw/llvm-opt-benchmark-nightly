inline.NumInlined: 679
inline.NumDeleted: 89
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@skl_ddi_pll_disable:bb.a
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call i32 %i.q(ptr noundef %i.o, i32 %i.g, i1 noundef zeroext false) #14, !inline_history !165 ; 0 uses
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
  %i.l = tail call i32 %i.k(ptr noundef %i.i, i32 %i.h, i1 noundef zeroext true) #14, !inline_history !168
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.h) #14
  %.not27 = icmp slt i32 %i.l, 0                  ; 2 uses
  br i1 %.not27, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 442456) #14
  %.val.i29 = load ptr, ptr %0, align 8
  %i.m = tail call ptr @to_intel_uncore(ptr noundef %.val.i29) #14 ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 144
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call i32 %i.o(ptr noundef %i.m, i32 442456, i1 noundef zeroext true) #14, !inline_history !168 ; 2 uses
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
  %i.ab = tail call i32 %i.aa(ptr noundef %i.y, i32 %i.x, i1 noundef zeroext true) #14, !inline_history !168
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
  %i.ai = tail call i32 %i.ah(ptr noundef %i.af, i32 %i.ae, i1 noundef zeroext true) #14, !inline_history !168
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
  %3 = udiv i16 %.lhs.trunc.i.i, 9
  %.zext.i.i = zext nneg i16 %3 to i32
  %4 = shl i32 %indvars58.i.i, 4
  %i.u = udiv i32 %4, 9                           ; 2 uses
  %.not.not38.i.i = icmp samesign ugt i32 %i.u, %.zext.i.i
  br i1 %.not.not38.i.i, label %.preheader.lr.ph.i.i, label %._crit_edge.i.i

.preheader.lr.ph.i.i:                             ; preds = %bb.i
  %i.v = udiv i64 %indvars.iv51.i.i, 9
  %i.w = mul nuw nsw i32 %indvars58.i.i, %indvars58.i.i
  %i.x = zext nneg i32 %i.u to i64
  br label %.preheader.i.i

.loopexit.i.i:                                    ; preds = %hsw_wrpll_update_rnp.exit.i.i
  %.not.not.i.i = icmp samesign ult i64 %indvars.iv.next54.i.i, %i.x
  br i1 %.not.not.i.i, label %.preheader.i.i, label %._crit_edge.i.i, !llvm.loop !215

.preheader.i.i:                                   ; preds = %.loopexit.i.i, %.preheader.lr.ph.i.i
  %indvars.iv53.i.i = phi i64 [ %i.v, %.preheader.lr.ph.i.i ], [ %indvars.iv.next54.i.i, %.loopexit.i.i ]
  %.sroa.15.141.i.i = phi i32 [ %.sroa.15.047.i.i, %.preheader.lr.ph.i.i ], [ %.sroa.15.3.i.i, %.loopexit.i.i ]
  %.sroa.9.140.i.i = phi i32 [ %.sroa.9.046.i.i, %.preheader.lr.ph.i.i ], [ %.sroa.9.3.i.i, %.loopexit.i.i ]
  %.sroa.0.139.i.i = phi i32 [ %.sroa.0.045.i.i, %.preheader.lr.ph.i.i ], [ %.sroa.0.3.i.i, %.loopexit.i.i ]
  %indvars.iv.next54.i.i = add nuw nsw i64 %indvars.iv53.i.i, 1 ; 4 uses
  %i.y = mul nuw nsw i64 %indvars.iv.next54.i.i, 5400000 ; 3 uses
  %i.z = trunc nuw nsw i64 %indvars.iv.next54.i.i to i32 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %hsw_wrpll_update_rnp.exit.i.i, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 2, %.preheader.i.i ], [ %indvars.iv.next.i.i, %hsw_wrpll_update_rnp.exit.i.i ] ; 4 uses
  %.sroa.15.235.i.i = phi i32 [ %.sroa.15.141.i.i, %.preheader.i.i ], [ %.sroa.15.3.i.i, %hsw_wrpll_update_rnp.exit.i.i ] ; 7 uses
  %.sroa.9.234.i.i = phi i32 [ %.sroa.9.140.i.i, %.preheader.i.i ], [ %.sroa.9.3.i.i, %hsw_wrpll_update_rnp.exit.i.i ] ; 5 uses
  %.sroa.0.233.i.i = phi i32 [ %.sroa.0.139.i.i, %.preheader.i.i ], [ %.sroa.0.3.i.i, %hsw_wrpll_update_rnp.exit.i.i ] ; 6 uses
  %i.aa = icmp eq i32 %.sroa.0.233.i.i, 0
  %i.ab = trunc nuw nsw i64 %indvars.iv.i.i to i32 ; 3 uses
  br i1 %i.aa, label %hsw_wrpll_update_rnp.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = mul nuw nsw i64 %indvars.iv.i.i, %indvars.iv56.i.i ; 3 uses
  %i.ad = mul nsw i64 %i.ac, %i.t
  %i.ae = zext i32 %.sroa.0.233.i.i to i64
  %i.af = zext i32 %.sroa.15.235.i.i to i64
  %i.ag = mul nuw i64 %i.ae, %i.af                ; 2 uses
  %i.ah = mul i64 %i.ag, %i.t
  %i.ai = mul nsw i64 %i.ac, %i.r                 ; 3 uses
  %i.aj = icmp ugt i64 %i.ai, %i.y
  %i.ak = sub nuw nsw i64 %i.ai, %i.y
  %i.al = sub nuw nsw i64 %i.y, %i.ai
  %i.am = select i1 %i.aj, i64 %i.ak, i64 %i.al   ; 2 uses
  %i.an = mul i64 %i.ag, %i.r                     ; 3 uses
  %i.ao = zext i32 %.sroa.9.234.i.i to i64
  %i.ap = mul nuw nsw i64 %i.ao, 5400000          ; 3 uses
  %i.aq = icmp ugt i64 %i.an, %i.ap
  %i.ar = sub nuw i64 %i.an, %i.ap
  %i.as = sub nuw nsw i64 %i.ap, %i.an
  %i.at = select i1 %i.aq, i64 %i.ar, i64 %i.as   ; 2 uses
  %i.au = mul nsw i64 %i.am, 1000000
  %i.av = mul i64 %i.at, 1000000
  %i.aw = icmp ult i64 %i.ad, %i.au               ; 3 uses
  %i.ax = icmp ult i64 %i.ah, %i.av               ; 3 uses
  %or.cond.i.i.i = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %or.cond.i.i.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ay = mul i32 %.sroa.0.233.i.i, %.sroa.15.235.i.i
  %i.az = zext i32 %i.ay to i64
  %i.ba = mul i64 %i.am, %i.az
  %i.bb = mul i64 %i.at, %i.ac
  %i.bc = icmp ult i64 %i.ba, %i.bb
  br i1 %i.bc, label %bb.m, label %hsw_wrpll_update_rnp.exit.i.i

bb.m:                                             ; preds = %bb.p, %bb.l
  br label %hsw_wrpll_update_rnp.exit.i.i

bb.n:                                             ; preds = %bb.k
  %.not.not.i.i.i = xor i1 %i.aw, true
  %or.cond88.i.i.i = select i1 %.not.not.i.i.i, i1 %i.ax, i1 false
  br i1 %or.cond88.i.i.i, label %hsw_wrpll_update_rnp.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %or.cond89.i.i.i = select i1 %i.aw, i1 true, i1 %i.ax
  br i1 %or.cond89.i.i.i, label %hsw_wrpll_update_rnp.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = mul i32 %.sroa.15.235.i.i, %i.z
  %i.be = mul i32 %i.bd, %.sroa.15.235.i.i
  %i.bf = mul i32 %i.w, %.sroa.9.234.i.i
  %i.bg = icmp ugt i32 %i.be, %i.bf
  br i1 %i.bg, label %bb.m, label %hsw_wrpll_update_rnp.exit.i.i

hsw_wrpll_update_rnp.exit.i.i:                    ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.j
  %.sroa.0.3.i.i = phi i32 [ %.sroa.0.233.i.i, %bb.p ], [ %i.ab, %bb.m ], [ %.sroa.0.233.i.i, %bb.l ], [ %i.ab, %bb.j ], [ %.sroa.0.233.i.i, %bb.o ], [ %i.ab, %bb.n ] ; 3 uses
  %.sroa.9.3.i.i = phi i32 [ %.sroa.9.234.i.i, %bb.p ], [ %i.z, %bb.m ], [ %.sroa.9.234.i.i, %bb.l ], [ %i.z, %bb.j ], [ %.sroa.9.234.i.i, %bb.o ], [ %i.z, %bb.n ] ; 3 uses
  %.sroa.15.3.i.i = phi i32 [ %.sroa.15.235.i.i, %bb.p ], [ %indvars58.i.i, %bb.m ], [ %.sroa.15.235.i.i, %bb.l ], [ %indvars58.i.i, %bb.j ], [ %.sroa.15.235.i.i, %bb.o ], [ %indvars58.i.i, %bb.n ] ; 3 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 2
  %i.bh = icmp samesign ult i64 %indvars.iv.i.i, 63
  br i1 %i.bh, label %bb.j, label %.loopexit.i.i, !llvm.loop !216

._crit_edge.i.i:                                  ; preds = %.loopexit.i.i, %bb.i
  %.sroa.0.1.lcssa.i.i = phi i32 [ %.sroa.0.045.i.i, %bb.i ], [ %.sroa.0.3.i.i, %.loopexit.i.i ] ; 2 uses
  %.sroa.9.1.lcssa.i.i = phi i32 [ %.sroa.9.046.i.i, %bb.i ], [ %.sroa.9.3.i.i, %.loopexit.i.i ] ; 2 uses
  %.sroa.15.1.lcssa.i.i = phi i32 [ %.sroa.15.047.i.i, %bb.i ], [ %.sroa.15.3.i.i, %.loopexit.i.i ] ; 3 uses
  %indvars.iv.next57.i.i = add nuw nsw i64 %indvars.iv56.i.i, 1 ; 2 uses
  %indvars.iv.next52.i.i = add nuw nsw i64 %indvars.iv51.i.i, 8
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next57.i.i, 113
  br i1 %exitcond.not.i.i, label %hsw_ddi_calculate_wrpll.exit.loopexit.i, label %bb.i, !llvm.loop !217

hsw_ddi_calculate_wrpll.exit.loopexit.i:          ; preds = %._crit_edge.i.i
  %i.bi = shl i32 %.sroa.9.1.lcssa.i.i, 16
  %i.bj = shl i32 %.sroa.0.1.lcssa.i.i, 8
  %i.bk = or i32 %i.bi, %i.bj
  %i.bl = or i32 %i.bk, %.sroa.15.1.lcssa.i.i
  %i.bm = and i32 %.sroa.15.1.lcssa.i.i, 255
  br label %hsw_ddi_wrpll_compute_dpll.exit

hsw_ddi_wrpll_compute_dpll.exit:                  ; preds = %hsw_wrpll_get_budget_for_freq.exit.i.i, %hsw_ddi_calculate_wrpll.exit.loopexit.i
  %storemerge.i.i = phi i32 [ 2, %hsw_wrpll_get_budget_for_freq.exit.i.i ], [ %i.bm, %hsw_ddi_calculate_wrpll.exit.loopexit.i ]
  %i.bn = phi i32 [ 131330, %hsw_wrpll_get_budget_for_freq.exit.i.i ], [ %i.bl, %hsw_ddi_calculate_wrpll.exit.loopexit.i ] ; 3 uses
  %i.bo = getelementptr i8, ptr %i.m, i64 944
  %i.bp = or i32 %i.bn, -1342177280
  store i32 %i.bp, ptr %i.bo, align 8
  %i.bq = lshr i32 %i.bn, 8
  %i.br = and i32 %i.bq, 63
  %i.bs = lshr i32 %i.bn, 16
  %i.bt = and i32 %i.bs, 255
  %i.bu = mul nuw nsw i32 %i.bt, 270000
  %i.bv = mul nuw nsw i32 %i.br, %storemerge.i.i
  %i.bw = udiv i32 %i.bu, %i.bv
  %i.bx = shl nuw nsw i32 %i.bw, 1
  store i32 %i.bx, ptr %i.n, align 8
  br label %hsw_ddi_lcpll_compute_dpll.exit

bb.q:                                             ; preds = %bb.a
  %i.by = and i32 %.val12, 2432
  %.not20 = icmp eq i32 %i.by, 0
  br i1 %.not20, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = load ptr, ptr %i.f, align 8
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %.not.i15 = icmp eq ptr %i.ca, null
  br i1 %.not.i15, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = tail call ptr @__drm_to_display(ptr noundef nonnull %i.ca) #14
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cc = phi ptr [ %i.cb, %bb.s ], [ null, %bb.r ]
  %i.cd = getelementptr i8, ptr %i.f, i64 1320
  %i.ce = load i32, ptr %i.cd, align 8            ; 2 uses
  %i.cf = sdiv i32 %i.ce, 2
  switch i32 %i.cf, label %bb.u [
    i32 81000, label %hsw_ddi_lcpll_compute_dpll.exit
    i32 135000, label %hsw_ddi_lcpll_compute_dpll.exit
    i32 270000, label %hsw_ddi_lcpll_compute_dpll.exit
  ]

bb.u:                                             ; preds = %bb.t
  %i.cg = load ptr, ptr %i.cc, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i, label %__drm_to_dev.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ch = getelementptr i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.v, %bb.u
  %i.cj = phi ptr [ %i.ci, %bb.v ], [ null, %bb.u ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.cj, i32 noundef 2, ptr noundef nonnull @.str.114, i32 noundef %i.ce) #14
  br label %hsw_ddi_lcpll_compute_dpll.exit

bb.w:                                             ; preds = %bb.q
  %i.ck = and i64 %i.h, 2
  %.not21 = icmp eq i64 %i.ck, 0
  br i1 %.not21, label %hsw_ddi_lcpll_compute_dpll.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cl = getelementptr i8, ptr %i.f, i64 1320
  %i.cm = load i32, ptr %i.cl, align 8
  %i.cn = and i32 %i.cm, -2
  %.not.i16 = icmp eq i32 %i.cn, 270000
  br i1 %.not.i16, label %.critedge.i, label %bb.y, !prof !29

bb.y:                                             ; preds = %bb.x
  %i.co = load ptr, ptr %1, align 8               ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.co, null
  br i1 %.not.i.i17, label %__drm_to_dev.exit.i18, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cp = getelementptr i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  br label %__drm_to_dev.exit.i18

__drm_to_dev.exit.i18:                            ; preds = %bb.z, %bb.y
  %i.cr = phi ptr [ %i.cq, %bb.z ], [ null, %bb.y ]
  %i.cs = tail call ptr @dev_driver_string(ptr noundef %i.cr) #14 ; 0 uses
  %i.ct = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.7, ptr nonnull @.str.2, i32 1173, i32 2321, i64 16) #13, !srcloc !218
  %i.cu = load ptr, ptr %1, align 8               ; 2 uses
  %.not.i20.i = icmp eq ptr %i.cu, null
  br i1 %.not.i20.i, label %__drm_to_dev.exit21.i, label %bb.aa

bb.aa:                                            ; preds = %__drm_to_dev.exit.i18
  %i.cv = getelementptr i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8
  br label %__drm_to_dev.exit21.i

__drm_to_dev.exit21.i:                            ; preds = %bb.aa, %__drm_to_dev.exit.i18
  %i.cx = phi ptr [ %i.cw, %bb.aa ], [ null, %__drm_to_dev.exit.i18 ]
  %i.cy = tail call ptr @dev_driver_string(ptr noundef %i.cx) #14
  %i.cz = load ptr, ptr %1, align 8               ; 2 uses
  %.not.i22.i = icmp eq ptr %i.cz, null
  br i1 %.not.i22.i, label %__drm_to_dev.exit23.i, label %bb.ab

bb.ab:                                            ; preds = %__drm_to_dev.exit21.i
  %i.da = getelementptr i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8
  br label %__drm_to_dev.exit23.i

__drm_to_dev.exit23.i:                            ; preds = %bb.ab, %__drm_to_dev.exit21.i
  %i.dc = phi ptr [ %i.db, %bb.ab ], [ null, %__drm_to_dev.exit21.i ] ; 2 uses
  %i.dd = getelementptr i8, ptr %i.dc, i64 80
  %i.de = load ptr, ptr %i.dd, align 8            ; 2 uses
  %.not.i24.i = icmp eq ptr %i.de, null
  br i1 %.not.i24.i, label %bb.ac, label %dev_name.exit27.i

bb.ac:                                            ; preds = %__drm_to_dev.exit23.i
  %.val.i26.i = load ptr, ptr %i.dc, align 8
  br label %dev_name.exit27.i

dev_name.exit27.i:                                ; preds = %bb.ac, %__drm_to_dev.exit23.i
  %.0.i25.i = phi ptr [ %.val.i26.i, %bb.ac ], [ %i.de, %__drm_to_dev.exit23.i ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.ct, ptr noundef %i.cy, ptr noundef %.0.i25.i, ptr noundef nonnull @.str.115) #14
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !219
  br label %hsw_ddi_lcpll_compute_dpll.exit

.critedge.i:                                      ; preds = %bb.x
  %i.df = getelementptr i8, ptr %i.f, i64 948
  store i32 -1811939328, ptr %i.df, align 4
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
  br i1 %.not31, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.f, align 8
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @__drm_to_display(ptr noundef nonnull %i.l) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = phi ptr [ %i.m, %bb.d ], [ null, %bb.c ] ; 2 uses
  %i.o = getelementptr i8, ptr %i.f, i64 1320
  %i.p = load i32, ptr %i.o, align 8
  %i.q = sdiv i32 %i.p, 2                         ; 2 uses
  switch i32 %i.q, label %bb.h [
    i32 81000, label %bb.i
    i32 135000, label %bb.f
    i32 270000, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.r = sext i32 %i.q to i64
  %i.s = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.2, i32 1129, i32 2321, i64 16) #13, !srcloc !220
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.s, ptr noundef nonnull @.str.116, i64 noundef %i.r) #14
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !221
  br label %hsw_ddi_lcpll_get_dpll.exit.thread

end_hunk_0
