inline.NumInlined: 218
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@g4x_find_best_dpll:bb.a

._crit_edge58:                                    ; preds = %._crit_edge43, %.lr.ph57, %.lr.ph71.split
  %i.dq = phi i32 [ %i.an, %.lr.ph71.split ], [ %i.an, %.lr.ph57 ], [ %i.dm, %._crit_edge43 ]
  %i.dr = phi i32 [ %i.ao, %.lr.ph71.split ], [ %i.ao, %.lr.ph57 ], [ %i.dm, %._crit_edge43 ]
  %.136.lcssa = phi i1 [ %.03568, %.lr.ph71.split ], [ %.03568, %.lr.ph57 ], [ %.237.lcssa, %._crit_edge43 ] ; 2 uses
  %.130.lcssa = phi i32 [ %.02969, %.lr.ph71.split ], [ %.02969, %.lr.ph57 ], [ %.231.lcssa, %._crit_edge43 ]
  %.1.lcssa = phi i32 [ %.070, %.lr.ph71.split ], [ %.070, %.lr.ph57 ], [ %.2.lcssa, %._crit_edge43 ] ; 2 uses
  %i.ds = add i32 %storemerge66, 1                ; 2 uses
  %.not43 = icmp sgt i32 %i.ds, %.1.lcssa
  br i1 %.not43, label %._crit_edge72, label %.lr.ph71.split, !llvm.loop !47

._crit_edge72:                                    ; preds = %._crit_edge58, %.lr.ph71, %i9xx_select_p2_div.exit
  %.035.lcssa = phi i1 [ false, %i9xx_select_p2_div.exit ], [ false, %.lr.ph71 ], [ %.136.lcssa, %._crit_edge58 ]
  ret i1 %.035.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -22, 1) i32 @chv_crtc_compute_clock(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %.val17 = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %1, i64 136
  %.val18 = load i32, ptr %i.b, align 8
  %i.c = zext i32 %.val18 to i64
  %i.d = getelementptr [56 x i8], ptr %.val17, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8              ; 21 uses
  %i.g = getelementptr i8, ptr %i.f, i64 896
  %i.h = load i8, ptr %i.g, align 8, !range !23, !noundef !24
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.f, i64 1320
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %i.f, i64 900
  %.val = load ptr, ptr %i.f, align 8
  %.val.val = load ptr, ptr %.val, align 8
  %i.m = tail call fastcc zeroext i1 @chv_find_best_dpll(ptr noundef nonnull @intel_limits_chv, ptr %.val.val, i32 noundef %i.k, ptr noundef %i.l) #15
  br i1 %i.m, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = getelementptr i8, ptr %i.f, i64 900
  %i.o = getelementptr i8, ptr %i.f, i64 904
  %i.p = load i32, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.f, i64 908
  %i.r = load i32, ptr %i.q, align 4
  %i.s = mul i32 %i.r, %i.p                       ; 2 uses
  %i.t = getelementptr i8, ptr %i.f, i64 928
  store i32 %i.s, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %i.f, i64 912
  %i.v = load i32, ptr %i.u, align 8
  %i.w = getelementptr i8, ptr %i.f, i64 916
  %i.x = load i32, ptr %i.w, align 4
  %i.y = mul i32 %i.x, %i.v                       ; 2 uses
  %i.z = mul i32 %i.y, 5                          ; 5 uses
  %i.aa = getelementptr i8, ptr %i.f, i64 932
  store i32 %i.z, ptr %i.aa, align 4
  %i.ab = load i32, ptr %i.n, align 4             ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = shl i32 %i.ab, 22                       ; 2 uses
  %i.ae = zext i32 %i.s to i64
  %i.af = mul nuw nsw i64 %i.ae, 100000
  %i.ag = ashr exact i32 %i.ad, 1
  %i.ah = sext i32 %i.ag to i64
  %i.ai = add nsw i64 %i.af, %i.ah
  %i.aj = zext i32 %i.ad to i64
  %i.ak = udiv i64 %i.ai, %i.aj
  %i.al = trunc i64 %i.ak to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.am = phi i32 [ %i.al, %bb.d ], [ 0, %bb.c ]  ; 3 uses
  %i.an = getelementptr i8, ptr %i.f, i64 924
  store i32 %i.am, ptr %i.an, align 4
  %i.ao = icmp eq i32 %i.y, 0
  br i1 %i.ao, label %chv_calc_dpll_params.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = icmp sgt i32 %i.am, 0
  %i.aq = icmp slt i32 %i.z, 1
  %i.ar = xor i1 %i.aq, %i.ap
  br i1 %i.ar, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.as = sdiv i32 %i.z, 2
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %.neg.i = sdiv i32 %i.z, -2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn34.i = phi i32 [ %i.as, %bb.g ], [ %.neg.i, %bb.h ]
  %.pn.i = add i32 %.pn34.i, %i.am
  %i.at = sdiv i32 %.pn.i, %i.z
  br label %chv_calc_dpll_params.exit

chv_calc_dpll_params.exit:                        ; preds = %bb.e, %bb.i
  %i.au = phi i32 [ %i.at, %bb.i ], [ 0, %bb.e ]  ; 2 uses
  %i.av = getelementptr i8, ptr %i.f, i64 920
  store i32 %i.au, ptr %i.av, align 8
  %i.aw = getelementptr i8, ptr %i.f, i64 944
  %.val5.i = load ptr, ptr %i.f, align 8
  %i.ax = getelementptr i8, ptr %i.f, i64 888
  %.val6.i = load i32, ptr %i.ax, align 8         ; 2 uses
  %i.ay = getelementptr i8, ptr %.val5.i, i64 1664
  %.val5.val.i = load i32, ptr %i.ay, align 8
  %.not.i.i = icmp eq i32 %.val5.val.i, 0
  %spec.select.i.i = select i1 %.not.i.i, i32 805314560, i32 805330944
  %i.az = shl i32 %.val6.i, 22
  %i.ba = and i32 %i.az, -2147483648
  %i.bb = or disjoint i32 %spec.select.i.i, %i.ba
  %.1.i.i = xor i32 %i.bb, -2147483648
  store i32 %.1.i.i, ptr %i.aw, align 8
  %i.bc = getelementptr i8, ptr %i.f, i64 1324
  %.val.i = load i32, ptr %i.bc, align 4
  %i.bd = shl i32 %.val.i, 8
  %i.be = add i32 %i.bd, -256
  %i.bf = getelementptr i8, ptr %i.f, i64 948
  store i32 %i.be, ptr %i.bf, align 4
  %i.bg = and i32 %.val6.i, 512
  %.not = icmp eq i32 %i.bg, 0
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %chv_calc_dpll_params.exit
  %i.bh = getelementptr i8, ptr %i.f, i64 1320
  store i32 %i.au, ptr %i.bh, align 8
  %i.bi = tail call i32 @intel_crtc_dotclock(ptr noundef %i.f) #12
  %i.bj = getelementptr i8, ptr %i.f, i64 644
  store i32 %i.bi, ptr %i.bj, align 4
  br label %bb.k

bb.k:                                             ; preds = %chv_calc_dpll_params.exit, %bb.b, %bb.j
  %.0 = phi i32 [ -22, %bb.b ], [ 0, %bb.j ], [ 0, %chv_calc_dpll_params.exit ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -22, 1) i32 @vlv_crtc_compute_clock(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %.val16 = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %1, i64 136
  %.val17 = load i32, ptr %i.b, align 8
  %i.c = zext i32 %.val17 to i64
  %i.d = getelementptr [56 x i8], ptr %.val16, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8              ; 29 uses
  %i.g = getelementptr i8, ptr %i.f, i64 896
  %i.h = load i8, ptr %i.g, align 8, !range !23, !noundef !24
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.f, i64 1320
  %i.k = load i32, ptr %i.j, align 8              ; 5 uses
  %i.l = getelementptr i8, ptr %i.f, i64 900      ; 3 uses
  %.val18 = load ptr, ptr %i.f, align 8
  %.val18.val = load ptr, ptr %.val18, align 8    ; 2 uses
  %.not.i = icmp eq ptr %.val18.val, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call ptr @__drm_to_display(ptr noundef nonnull %.val18.val) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = phi ptr [ %i.m, %bb.c ], [ null, %bb.b ] ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(36) %i.l, i8 0, i64 36, i1 false)
  %i.o = getelementptr i8, ptr %i.n, i64 8        ; 2 uses
  %i.p = getelementptr i8, ptr %i.f, i64 932      ; 6 uses
  %.not30.i.i = icmp eq i32 %i.k, 0               ; 2 uses
  %i.q = zext i32 %i.k to i64                     ; 2 uses
  %.sroa.9.0..sroa_idx.i = getelementptr i8, ptr %i.f, i64 904 ; 2 uses
  %.sroa.14.0..sroa_idx.i = getelementptr i8, ptr %i.f, i64 908 ; 2 uses
  %.sroa.17.0..sroa_idx.i = getelementptr i8, ptr %i.f, i64 912 ; 2 uses
  %.sroa.22.0..sroa_idx.i = getelementptr i8, ptr %i.f, i64 916 ; 2 uses
  %.sroa.25.0..sroa_idx.i = getelementptr i8, ptr %i.f, i64 920 ; 2 uses
  %.sroa.28.0..sroa_idx.i = getelementptr i8, ptr %i.f, i64 924 ; 2 uses
  %.sroa.30.0..sroa_idx.i = getelementptr i8, ptr %i.f, i64 928 ; 2 uses
  br label %.preheader70.i

.preheader70.i:                                   ; preds = %bb.ac, %bb.d
  %.098.i = phi i1 [ false, %bb.d ], [ %.4.1.i, %bb.ac ]
  %.04197.i = phi i32 [ 1000000, %bb.d ], [ %.445.1.i, %bb.ac ]
  %storemerge96.i = phi i32 [ 1, %bb.d ], [ %i.du, %bb.ac ] ; 8 uses
  %i.r = mul i32 %storemerge96.i, %i.k
  br label %.split74.preheader.i

.split74.preheader.i:                             ; preds = %.split90.us.i, %.preheader70.i
  %.195.i = phi i1 [ %.098.i, %.preheader70.i ], [ %.4.1.i, %.split90.us.i ]
  %.14294.i = phi i32 [ %.04197.i, %.preheader70.i ], [ %.445.1.i, %.split90.us.i ]
  %storemerge4893.i = phi i32 [ 3, %.preheader70.i ], [ %i.ds, %.split90.us.i ] ; 5 uses
  br label %.split74.i

.split74.i:                                       ; preds = %intel_pll_is_valid.exit.thread.1.i, %.split74.preheader.i
  %.282.i = phi i1 [ %.4.1.i, %intel_pll_is_valid.exit.thread.1.i ], [ %.195.i, %.split74.preheader.i ] ; 6 uses
  %.24381.i = phi i32 [ %.445.1.i, %intel_pll_is_valid.exit.thread.1.i ], [ %.14294.i, %.split74.preheader.i ] ; 7 uses
  %storemerge4980.i = phi i32 [ %i.dq, %intel_pll_is_valid.exit.thread.1.i ], [ 20, %.split74.preheader.i ] ; 5 uses
  %i.s = mul i32 %storemerge4980.i, %storemerge4893.i ; 3 uses
  %i.t = mul i32 %i.s, 5                          ; 12 uses
  %i.u = mul i32 %i.r, %i.t                       ; 3 uses
  %i.v = icmp sgt i32 %i.u, 0                     ; 2 uses
  %i.w = icmp eq i32 %i.s, 0                      ; 2 uses
  %i.x = icmp slt i32 %i.t, 1                     ; 2 uses
  %.pn.p.i = select i1 %i.v, i32 100000, i32 -100000
  %.pn.i = add i32 %.pn.p.i, %i.u
  %.pn.fr.i = freeze i32 %.pn.i                   ; 2 uses
  %i.y = sdiv i32 %.pn.fr.i, 200000               ; 4 uses
  %i.z = shl nuw nsw i32 %i.y, 1
  %i.aa = mul nsw i32 %i.y, 200000
  %i.ab = icmp sgt i32 %.pn.fr.i, 199999
  %..neg.i99.v.i = select i1 %i.ab, i32 2, i32 -2
  %..neg.i99.i = sdiv i32 %storemerge96.i, %..neg.i99.v.i
  %.pn.i.i = add i32 %i.aa, %..neg.i99.i
  %i.ac = sdiv i32 %.pn.i.i, %storemerge96.i      ; 4 uses
  br i1 %i.w, label %vlv_calc_dpll_params.exit.i, label %bb.e

bb.e:                                             ; preds = %.split74.i
  %i.ad = icmp sgt i32 %i.ac, 0
  %i.ae = xor i1 %i.x, %i.ad
  %2 = freeze i1 %i.ae
  %..neg34.i.v.i = select i1 %2, i32 2, i32 -2
  %..neg34.i.i = sdiv i32 %i.t, %..neg34.i.v.i
  %.pn35.i.i = add i32 %..neg34.i.i, %i.ac
  %i.af = sdiv i32 %.pn35.i.i, %i.t
  br label %vlv_calc_dpll_params.exit.i

vlv_calc_dpll_params.exit.i:                      ; preds = %bb.e, %.split74.i
  %i.ag = phi i32 [ %i.af, %bb.e ], [ 0, %.split74.i ] ; 4 uses
  %i.ah = add nsw i32 %i.y, -157
  %or.cond45.i = icmp ult i32 %i.ah, -146
  br i1 %or.cond45.i, label %intel_pll_is_valid.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %vlv_calc_dpll_params.exit.i
  %i.ai = load i64, ptr %i.o, align 8             ; 2 uses
  %i.aj = and i64 %i.ai, 36642488320
  %or.cond67.i.i = icmp eq i64 %i.aj, 0
  br i1 %or.cond67.i.i, label %intel_pll_is_valid.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = add i32 %i.ac, -4000000
  %or.cond53.i = icmp ult i32 %i.ak, 2000001
  %i.al = icmp sgt i32 %i.ag, 24999
  %or.cond55.not61.i = and i1 %or.cond53.i, %i.al
  %.old57.i = icmp samesign ult i32 %i.ag, 270001
  %or.cond59.i = select i1 %or.cond55.not61.i, i1 %.old57.i, i1 false
  br i1 %or.cond59.i, label %bb.h, label %intel_pll_is_valid.exit.thread.i

bb.h:                                             ; preds = %bb.g
  %i.am = and i64 %i.ai, 134217728
  %.not.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i, label %bb.i, label %.split.i

.split.i:                                         ; preds = %bb.h
  %i.an = load i32, ptr %i.p, align 4
  %i.ao = icmp sgt i32 %i.t, %i.an
  br i1 %i.ao, label %vlv_PLL_is_optimal.exit.thread.i, label %intel_pll_is_valid.exit.thread.i

bb.i:                                             ; preds = %bb.h
  br i1 %.not30.i.i, label %bb.j, label %.critedge.i.i, !prof !14

bb.j:                                             ; preds = %bb.i
  %i.ap = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %__drm_to_dev.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  br label %__drm_to_dev.exit.i.i

__drm_to_dev.exit.i.i:                            ; preds = %bb.k, %bb.j
  %i.as = phi ptr [ %i.ar, %bb.k ], [ null, %bb.j ]
  %i.at = tail call ptr @dev_driver_string(ptr noundef %i.as) #12 ; 0 uses
  %i.au = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.3, i32 838, i32 2323, i64 16) #14, !srcloc !15
  %i.av = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i34.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i34.i.i, label %__drm_to_dev.exit35.i.i, label %bb.l

bb.l:                                             ; preds = %__drm_to_dev.exit.i.i
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  br label %__drm_to_dev.exit35.i.i

__drm_to_dev.exit35.i.i:                          ; preds = %bb.l, %__drm_to_dev.exit.i.i
  %i.ay = phi ptr [ %i.ax, %bb.l ], [ null, %__drm_to_dev.exit.i.i ]
  %i.az = tail call ptr @dev_driver_string(ptr noundef %i.ay) #12
  %i.ba = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i36.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i36.i.i, label %__drm_to_dev.exit37.i.i, label %bb.m

bb.m:                                             ; preds = %__drm_to_dev.exit35.i.i
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  br label %__drm_to_dev.exit37.i.i

__drm_to_dev.exit37.i.i:                          ; preds = %bb.m, %__drm_to_dev.exit35.i.i
  %i.bd = phi ptr [ %i.bc, %bb.m ], [ null, %__drm_to_dev.exit35.i.i ] ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 80
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  %.not.i38.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i38.i.i, label %bb.n, label %vlv_PLL_is_optimal.exit.thread39.i

bb.n:                                             ; preds = %__drm_to_dev.exit37.i.i
  %.val.i40.i.i = load ptr, ptr %i.bd, align 8
  br label %vlv_PLL_is_optimal.exit.thread39.i

vlv_PLL_is_optimal.exit.thread39.i:               ; preds = %bb.n, %__drm_to_dev.exit37.i.i
  %.0.i39.i.i = phi ptr [ %.val.i40.i.i, %bb.n ], [ %i.bf, %__drm_to_dev.exit37.i.i ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.au, ptr noundef %i.az, ptr noundef %.0.i39.i.i, ptr noundef nonnull @.str.8) #12
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !16
  br label %intel_pll_is_valid.exit.thread.i

.critedge.i.i:                                    ; preds = %bb.i
  %i.bg = sub i32 %i.k, %i.ag
  %i.bh = tail call i32 @llvm.abs.i32(i32 %i.bg, i1 false)
  %i.bi = sext i32 %i.bh to i64
  %i.bj = mul nsw i64 %i.bi, 1000000
  %i.bk = udiv i64 %i.bj, %i.q
  %i.bl = trunc i64 %i.bk to i32                  ; 3 uses
  %i.bm = icmp ult i32 %i.bl, 100
  br i1 %i.bm, label %bb.o, label %vlv_PLL_is_optimal.exit.i

bb.o:                                             ; preds = %.critedge.i.i
  %i.bn = load i32, ptr %i.p, align 4
  %i.bo = icmp sgt i32 %i.t, %i.bn
  br i1 %i.bo, label %vlv_PLL_is_optimal.exit.thread.i, label %vlv_PLL_is_optimal.exit.i

vlv_PLL_is_optimal.exit.i:                        ; preds = %bb.o, %.critedge.i.i
  %i.bp = add i32 %i.bl, 10
  %i.bq = icmp ult i32 %i.bp, %.24381.i
  br i1 %i.bq, label %vlv_PLL_is_optimal.exit.thread.i, label %intel_pll_is_valid.exit.thread.i

vlv_PLL_is_optimal.exit.thread.i:                 ; preds = %vlv_PLL_is_optimal.exit.i, %bb.o, %.split.i
  %.03438.i = phi i32 [ 0, %.split.i ], [ %i.bl, %vlv_PLL_is_optimal.exit.i ], [ 0, %bb.o ]
  store i32 %storemerge96.i, ptr %i.l, align 4
  store i32 2, ptr %.sroa.9.0..sroa_idx.i, align 8
  store i32 %i.y, ptr %.sroa.14.0..sroa_idx.i, align 4
  store i32 %storemerge4893.i, ptr %.sroa.17.0..sroa_idx.i, align 8
  store i32 %storemerge4980.i, ptr %.sroa.22.0..sroa_idx.i, align 4
  store i32 %i.ag, ptr %.sroa.25.0..sroa_idx.i, align 8
  store i32 %i.ac, ptr %.sroa.28.0..sroa_idx.i, align 4
  store i32 %i.z, ptr %.sroa.30.0..sroa_idx.i, align 8
  store i32 %i.t, ptr %i.p, align 4
  br label %intel_pll_is_valid.exit.thread.i

intel_pll_is_valid.exit.thread.i:                 ; preds = %vlv_PLL_is_optimal.exit.thread.i, %vlv_PLL_is_optimal.exit.i, %vlv_PLL_is_optimal.exit.thread39.i, %.split.i, %bb.g, %bb.f, %vlv_calc_dpll_params.exit.i
  %.445.i = phi i32 [ %.03438.i, %vlv_PLL_is_optimal.exit.thread.i ], [ %.24381.i, %bb.g ], [ %.24381.i, %vlv_PLL_is_optimal.exit.i ], [ %.24381.i, %.split.i ], [ %.24381.i, %vlv_PLL_is_optimal.exit.thread39.i ], [ %.24381.i, %bb.f ], [ %.24381.i, %vlv_calc_dpll_params.exit.i ] ; 8 uses
  %.4.i = phi i1 [ true, %vlv_PLL_is_optimal.exit.thread.i ], [ %.282.i, %bb.g ], [ %.282.i, %vlv_PLL_is_optimal.exit.i ], [ %.282.i, %.split.i ], [ %.282.i, %vlv_PLL_is_optimal.exit.thread39.i ], [ %.282.i, %bb.f ], [ %.282.i, %vlv_calc_dpll_params.exit.i ] ; 7 uses
  %.pn.p.1.i = select i1 %i.v, i32 150000, i32 -150000
  %.pn.1.i = add i32 %.pn.p.1.i, %i.u
  %.pn.1.fr.i = freeze i32 %.pn.1.i               ; 2 uses
  %i.br = sdiv i32 %.pn.1.fr.i, 300000            ; 4 uses
  %i.bs = mul nuw nsw i32 %i.br, 3                ; 2 uses
  %i.bt = mul nsw i32 %i.br, 300000
  %i.bu = icmp sgt i32 %.pn.1.fr.i, 299999
  %..neg.i99.v.1.i = select i1 %i.bu, i32 2, i32 -2
  %..neg.i99.1.i = sdiv i32 %storemerge96.i, %..neg.i99.v.1.i
  %.pn.i.1.i = add i32 %..neg.i99.1.i, %i.bt
  %i.bv = sdiv i32 %.pn.i.1.i, %storemerge96.i    ; 6 uses
  br i1 %i.w, label %vlv_calc_dpll_params.exit.1.i, label %bb.p

bb.p:                                             ; preds = %intel_pll_is_valid.exit.thread.i
  %i.bw = icmp sgt i32 %i.bv, 0
  %i.bx = xor i1 %i.x, %i.bw
  %3 = freeze i1 %i.bx
  %..neg34.i.v.1.i = select i1 %3, i32 2, i32 -2
  %..neg34.i.1.i = sdiv i32 %i.t, %..neg34.i.v.1.i
  %.pn35.i.1.i = add i32 %..neg34.i.1.i, %i.bv
  %i.by = sdiv i32 %.pn35.i.1.i, %i.t
  br label %vlv_calc_dpll_params.exit.1.i

vlv_calc_dpll_params.exit.1.i:                    ; preds = %bb.p, %intel_pll_is_valid.exit.thread.i
  %i.bz = phi i32 [ %i.by, %bb.p ], [ 0, %intel_pll_is_valid.exit.thread.i ] ; 6 uses
  %i.ca = add nsw i32 %i.br, -157
  %or.cond45.1.i = icmp ult i32 %i.ca, -146
  br i1 %or.cond45.1.i, label %intel_pll_is_valid.exit.thread.1.i, label %bb.q

bb.q:                                             ; preds = %vlv_calc_dpll_params.exit.1.i
  %i.cb = load i64, ptr %i.o, align 8             ; 3 uses
  %i.cc = and i64 %i.cb, 36642492416
  %or.cond63.i.not.1.i = icmp eq i64 %i.cc, 0
  br i1 %or.cond63.i.not.1.i, label %intel_pll_is_valid.exit.thread.1.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = and i64 %i.cb, 36642488320
  %or.cond67.i.1.i = icmp eq i64 %i.cd, 0
  br i1 %or.cond67.i.1.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ce = add i32 %i.bv, -4000000
  %or.cond53.1.i = icmp ult i32 %i.ce, 2000001
  %i.cf = icmp sgt i32 %i.bz, 24999
  %or.cond55.not61.1.i = and i1 %or.cond53.1.i, %i.cf
  %.old57.1.i = icmp samesign ult i32 %i.bz, 270001
  %or.cond59.1.i = select i1 %or.cond55.not61.1.i, i1 %.old57.1.i, i1 false
  br i1 %or.cond59.1.i, label %bb.u, label %intel_pll_is_valid.exit.thread.1.i

bb.t:                                             ; preds = %bb.r
  %i.cg = or i32 %i.bs, %i.s
  %or.cond49.not69.1.i = icmp eq i32 %i.cg, 0
  %i.ch = icmp sgt i32 %i.bv, 3999999
  %or.cond50.not66.1.i = and i1 %or.cond49.not69.1.i, %i.ch
  %i.ci = icmp samesign ult i32 %i.bv, 6000001
  %or.cond52.not64.1.i = select i1 %or.cond50.not66.1.i, i1 %i.ci, i1 false
  %.old54.1.i = icmp sgt i32 %i.bz, 24999
  %or.cond56.not62.1.i = and i1 %or.cond52.not64.1.i, %.old54.1.i
  %i.cj = icmp samesign ult i32 %i.bz, 270001
  %or.cond58.1.i = select i1 %or.cond56.not62.1.i, i1 %i.cj, i1 false
  br i1 %or.cond58.1.i, label %bb.u, label %intel_pll_is_valid.exit.thread.1.i

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ck = and i64 %i.cb, 134217728
  %.not.i.1.i = icmp eq i64 %i.ck, 0
  br i1 %.not.i.1.i, label %bb.v, label %.split.1.i

.split.1.i:                                       ; preds = %bb.u
  %i.cl = load i32, ptr %i.p, align 4
  %i.cm = icmp sgt i32 %i.t, %i.cl
  br i1 %i.cm, label %vlv_PLL_is_optimal.exit.thread.1.i, label %intel_pll_is_valid.exit.thread.1.i

bb.v:                                             ; preds = %bb.u
  br i1 %.not30.i.i, label %bb.x, label %.critedge.i.1.i, !prof !14

.critedge.i.1.i:                                  ; preds = %bb.v
  %i.cn = sub i32 %i.k, %i.bz
  %i.co = tail call i32 @llvm.abs.i32(i32 %i.cn, i1 false)
  %i.cp = sext i32 %i.co to i64
  %i.cq = mul nsw i64 %i.cp, 1000000
  %i.cr = udiv i64 %i.cq, %i.q
  %i.cs = trunc i64 %i.cr to i32                  ; 3 uses
  %i.ct = icmp ult i32 %i.cs, 100
  br i1 %i.ct, label %bb.w, label %vlv_PLL_is_optimal.exit.1.i

bb.w:                                             ; preds = %.critedge.i.1.i
  %i.cu = load i32, ptr %i.p, align 4
  %i.cv = icmp sgt i32 %i.t, %i.cu
  br i1 %i.cv, label %vlv_PLL_is_optimal.exit.thread.1.i, label %vlv_PLL_is_optimal.exit.1.i

vlv_PLL_is_optimal.exit.1.i:                      ; preds = %bb.w, %.critedge.i.1.i
  %i.cw = add i32 %i.cs, 10
  %i.cx = icmp ult i32 %i.cw, %.445.i
  br i1 %i.cx, label %vlv_PLL_is_optimal.exit.thread.1.i, label %intel_pll_is_valid.exit.thread.1.i

vlv_PLL_is_optimal.exit.thread.1.i:               ; preds = %vlv_PLL_is_optimal.exit.1.i, %bb.w, %.split.1.i
  %.03438.1.i = phi i32 [ 0, %.split.1.i ], [ %i.cs, %vlv_PLL_is_optimal.exit.1.i ], [ 0, %bb.w ]
  store i32 %storemerge96.i, ptr %i.l, align 4
  store i32 3, ptr %.sroa.9.0..sroa_idx.i, align 8
  store i32 %i.br, ptr %.sroa.14.0..sroa_idx.i, align 4
  store i32 %storemerge4893.i, ptr %.sroa.17.0..sroa_idx.i, align 8
  store i32 %storemerge4980.i, ptr %.sroa.22.0..sroa_idx.i, align 4
  store i32 %i.bz, ptr %.sroa.25.0..sroa_idx.i, align 8
  store i32 %i.bv, ptr %.sroa.28.0..sroa_idx.i, align 4
  store i32 %i.bs, ptr %.sroa.30.0..sroa_idx.i, align 8
  store i32 %i.t, ptr %i.p, align 4
  br label %intel_pll_is_valid.exit.thread.1.i

bb.x:                                             ; preds = %bb.v
  %i.cy = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i.i.1.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.1.i, label %__drm_to_dev.exit.i.1.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cz = getelementptr i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  br label %__drm_to_dev.exit.i.1.i

__drm_to_dev.exit.i.1.i:                          ; preds = %bb.y, %bb.x
  %i.db = phi ptr [ %i.da, %bb.y ], [ null, %bb.x ]
  %i.dc = tail call ptr @dev_driver_string(ptr noundef %i.db) #12 ; 0 uses
  %i.dd = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.3, i32 838, i32 2323, i64 16) #14, !srcloc !15
  %i.de = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i34.i.1.i = icmp eq ptr %i.de, null
  br i1 %.not.i34.i.1.i, label %__drm_to_dev.exit35.i.1.i, label %bb.z

bb.z:                                             ; preds = %__drm_to_dev.exit.i.1.i
  %i.df = getelementptr i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  br label %__drm_to_dev.exit35.i.1.i

__drm_to_dev.exit35.i.1.i:                        ; preds = %bb.z, %__drm_to_dev.exit.i.1.i
  %i.dh = phi ptr [ %i.dg, %bb.z ], [ null, %__drm_to_dev.exit.i.1.i ]
  %i.di = tail call ptr @dev_driver_string(ptr noundef %i.dh) #12
  %i.dj = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i36.i.1.i = icmp eq ptr %i.dj, null
  br i1 %.not.i36.i.1.i, label %__drm_to_dev.exit37.i.1.i, label %bb.aa

bb.aa:                                            ; preds = %__drm_to_dev.exit35.i.1.i
  %i.dk = getelementptr i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8
  br label %__drm_to_dev.exit37.i.1.i

__drm_to_dev.exit37.i.1.i:                        ; preds = %bb.aa, %__drm_to_dev.exit35.i.1.i
  %i.dm = phi ptr [ %i.dl, %bb.aa ], [ null, %__drm_to_dev.exit35.i.1.i ] ; 2 uses
  %i.dn = getelementptr i8, ptr %i.dm, i64 80
  %i.do = load ptr, ptr %i.dn, align 8            ; 2 uses
  %.not.i38.i.1.i = icmp eq ptr %i.do, null
  br i1 %.not.i38.i.1.i, label %bb.ab, label %vlv_PLL_is_optimal.exit.thread39.1.i

bb.ab:                                            ; preds = %__drm_to_dev.exit37.i.1.i
  %.val.i40.i.1.i = load ptr, ptr %i.dm, align 8
  br label %vlv_PLL_is_optimal.exit.thread39.1.i

vlv_PLL_is_optimal.exit.thread39.1.i:             ; preds = %bb.ab, %__drm_to_dev.exit37.i.1.i
  %.0.i39.i.1.i = phi ptr [ %.val.i40.i.1.i, %bb.ab ], [ %i.do, %__drm_to_dev.exit37.i.1.i ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.dd, ptr noundef %i.di, ptr noundef %.0.i39.i.1.i, ptr noundef nonnull @.str.8) #12
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !16
  br label %intel_pll_is_valid.exit.thread.1.i

intel_pll_is_valid.exit.thread.1.i:               ; preds = %vlv_PLL_is_optimal.exit.thread39.1.i, %vlv_PLL_is_optimal.exit.thread.1.i, %vlv_PLL_is_optimal.exit.1.i, %.split.1.i, %bb.t, %bb.s, %bb.q, %vlv_calc_dpll_params.exit.1.i
  %.445.1.i = phi i32 [ %.03438.1.i, %vlv_PLL_is_optimal.exit.thread.1.i ], [ %.445.i, %bb.s ], [ %.445.i, %vlv_PLL_is_optimal.exit.1.i ], [ %.445.i, %.split.1.i ], [ %.445.i, %vlv_PLL_is_optimal.exit.thread39.1.i ], [ %.445.i, %bb.q ], [ %.445.i, %vlv_calc_dpll_params.exit.1.i ], [ %.445.i, %bb.t ] ; 3 uses
  %.4.1.i = phi i1 [ true, %vlv_PLL_is_optimal.exit.thread.1.i ], [ %.4.i, %bb.s ], [ %.4.i, %vlv_PLL_is_optimal.exit.1.i ], [ %.4.i, %.split.1.i ], [ %.4.i, %vlv_PLL_is_optimal.exit.thread39.1.i ], [ %.4.i, %bb.q ], [ %.4.i, %vlv_calc_dpll_params.exit.1.i ], [ %.4.i, %bb.t ] ; 4 uses
  %i.dp = icmp samesign ugt i32 %storemerge4980.i, 10
  %.neg.i = select i1 %i.dp, i32 -2, i32 -1
  %i.dq = add nsw i32 %.neg.i, %storemerge4980.i  ; 2 uses
  %i.dr = icmp sgt i32 %i.dq, 1
  br i1 %i.dr, label %.split74.i, label %.split90.us.i, !llvm.loop !48

.split90.us.i:                                    ; preds = %intel_pll_is_valid.exit.thread.1.i
  %i.ds = add nsw i32 %storemerge4893.i, -1
  %i.dt = icmp samesign ugt i32 %storemerge4893.i, 2
  br i1 %i.dt, label %.split74.preheader.i, label %bb.ac, !llvm.loop !49

bb.ac:                                            ; preds = %.split90.us.i
  %i.du = add nuw nsw i32 %storemerge96.i, 1      ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.du, 6
  br i1 %exitcond.not.i, label %vlv_find_best_dpll.exit, label %.preheader70.i, !llvm.loop !50

vlv_find_best_dpll.exit:                          ; preds = %bb.ac
  br i1 %.4.1.i, label %bb.ad, label %bb.ao

bb.ad:                                            ; preds = %vlv_find_best_dpll.exit, %bb.a
  %i.dv = getelementptr i8, ptr %i.f, i64 900
  %i.dw = getelementptr i8, ptr %i.f, i64 904
  %i.dx = load i32, ptr %i.dw, align 8
  %i.dy = getelementptr i8, ptr %i.f, i64 908
  %i.dz = load i32, ptr %i.dy, align 4
  %i.ea = mul i32 %i.dz, %i.dx                    ; 2 uses
  %i.eb = getelementptr i8, ptr %i.f, i64 928
  store i32 %i.ea, ptr %i.eb, align 8
  %i.ec = getelementptr i8, ptr %i.f, i64 912
  %i.ed = load i32, ptr %i.ec, align 8
  %i.ee = getelementptr i8, ptr %i.f, i64 916
  %i.ef = load i32, ptr %i.ee, align 4
  %i.eg = mul i32 %i.ef, %i.ed                    ; 2 uses
  %i.eh = mul i32 %i.eg, 5                        ; 5 uses
  %i.ei = getelementptr i8, ptr %i.f, i64 932
  store i32 %i.eh, ptr %i.ei, align 4
  %i.ej = load i32, ptr %i.dv, align 4            ; 5 uses
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.el = mul i32 %i.ea, 100000                   ; 2 uses
  %i.em = icmp sgt i32 %i.el, 0
  %i.en = icmp slt i32 %i.ej, 1
  %i.eo = xor i1 %i.em, %i.en
  br i1 %i.eo, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ep = sdiv i32 %i.ej, 2
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %.neg.i19 = sdiv i32 %i.ej, -2
  br label %bb.ah

end_hunk_0
