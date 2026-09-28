Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_dpll?download=true
inline.NumInlined: 218
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@g4x_find_best_dpll:bb.a
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
  %i.h = load i8, ptr %i.g, align 8, !range !19, !noundef !20
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
  %i.h = load i8, ptr %i.g, align 8, !range !19, !noundef !20
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
  %.082.i = phi i1 [ false, %bb.d ], [ %.4.1.i, %bb.ac ]
  %.04181.i = phi i32 [ 1000000, %bb.d ], [ %.445.1.i, %bb.ac ]
  %storemerge80.i = phi i32 [ 1, %bb.d ], [ %i.dr, %bb.ac ] ; 7 uses
  %i.r = mul i32 %storemerge80.i, %i.k
  %.neg.i83.i = lshr i32 %storemerge80.i, 1       ; 3 uses
  %.neg.i.i = sub nsw i32 0, %.neg.i83.i          ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.ab, %.preheader70.i
  %.179.i = phi i1 [ %.082.i, %.preheader70.i ], [ %.4.1.i, %bb.ab ]
  %.14278.i = phi i32 [ %.04181.i, %.preheader70.i ], [ %.445.1.i, %bb.ab ]
  %storemerge4877.i = phi i32 [ 3, %.preheader70.i ], [ %i.dp, %bb.ab ] ; 5 uses
  br label %bb.e

bb.e:                                             ; preds = %intel_pll_is_valid.exit.thread.1.i, %.preheader.i
  %.276.i = phi i1 [ %.179.i, %.preheader.i ], [ %.4.1.i, %intel_pll_is_valid.exit.thread.1.i ] ; 7 uses
  %.24375.i = phi i32 [ %.14278.i, %.preheader.i ], [ %.445.1.i, %intel_pll_is_valid.exit.thread.1.i ] ; 8 uses
  %storemerge4974.i = phi i32 [ 20, %.preheader.i ], [ %i.dn, %intel_pll_is_valid.exit.thread.1.i ] ; 5 uses
  %i.s = mul i32 %storemerge4974.i, %storemerge4877.i ; 2 uses
  %i.t = mul i32 %i.s, 5                          ; 12 uses
  %i.u = mul i32 %i.r, %i.t                       ; 3 uses
  %i.v = icmp sgt i32 %i.u, 0                     ; 2 uses
  %i.w = icmp eq i32 %i.s, 0                      ; 4 uses
  %i.x = icmp slt i32 %i.t, 1                     ; 2 uses
  %.pn.p.i = select i1 %i.v, i32 100000, i32 -100000
  %.pn.i = add i32 %.pn.p.i, %i.u                 ; 3 uses
  %i.y = sdiv i32 %.pn.i, 200000                  ; 4 uses
  %i.z = shl nuw nsw i32 %i.y, 1
  %i.aa = mul nsw i32 %i.y, 200000
  %i.ab = icmp sgt i32 %.pn.i, 199999
  %..neg.i.i = select i1 %i.ab, i32 %.neg.i83.i, i32 %.neg.i.i
  %.pn.i.i = add i32 %..neg.i.i, %i.aa
  %i.ac = sdiv i32 %.pn.i.i, %storemerge80.i      ; 6 uses
  br i1 %i.w, label %vlv_calc_dpll_params.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = icmp sgt i32 %i.ac, 0
  %i.ae = xor i1 %i.ad, %i.x
  %i.af = freeze i1 %i.ae
  %..neg34.i.v.i = select i1 %i.af, i32 2, i32 -2
  %..neg34.i.i = sdiv i32 %i.t, %..neg34.i.v.i
  %.pn35.i.i = add i32 %..neg34.i.i, %i.ac
  %i.ag = sdiv i32 %.pn35.i.i, %i.t
  br label %vlv_calc_dpll_params.exit.i

vlv_calc_dpll_params.exit.i:                      ; preds = %bb.f, %bb.e
  %i.ah = phi i32 [ %i.ag, %bb.f ], [ 0, %bb.e ]  ; 6 uses
  %i.ai = add nsw i32 %i.y, -157
  %or.cond45.i = icmp ult i32 %i.ai, -146
  br i1 %or.cond45.i, label %intel_pll_is_valid.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %vlv_calc_dpll_params.exit.i
  %i.aj = load i64, ptr %i.o, align 8             ; 3 uses
  %i.ak = and i64 %i.aj, 36642492416
  %or.cond63.i.not.i = icmp eq i64 %i.ak, 0
  br i1 %or.cond63.i.not.i, label %intel_pll_is_valid.exit.thread.i, label %2

2:                                                ; preds = %bb.g
  %3 = and i64 %i.aj, 36642488320
  %or.cond67.i.i = icmp eq i64 %3, 0
  br i1 %or.cond67.i.i, label %4, label %bb.h

4:                                                ; preds = %2
  %.pn.off.i = add i32 %.pn.i, 199999
  %5 = icmp ult i32 %.pn.off.i, 399999
  %6 = icmp sgt i32 %i.ac, 3999999
  %7 = and i1 %6, %5
  %or.cond50.not66.i = and i1 %i.w, %7
  %8 = icmp samesign ult i32 %i.ac, 6000001
  %or.cond52.not64.i = select i1 %or.cond50.not66.i, i1 %8, i1 false
  %.old54.i = icmp sgt i32 %i.ah, 24999
  %or.cond56.not62.i = select i1 %or.cond52.not64.i, i1 %.old54.i, i1 false
  %9 = icmp samesign ult i32 %i.ah, 270001
  %or.cond58.i = select i1 %or.cond56.not62.i, i1 %9, i1 false
  br i1 %or.cond58.i, label %bb.i, label %intel_pll_is_valid.exit.thread.i

bb.h:                                             ; preds = %2
  %i.al = add i32 %i.ac, -4000000
  %or.cond53.i = icmp ult i32 %i.al, 2000001
  %i.am = icmp sgt i32 %i.ah, 24999
  %or.cond55.not61.i = select i1 %or.cond53.i, i1 %i.am, i1 false
  %.old57.i = icmp samesign ult i32 %i.ah, 270001
  %or.cond59.i = select i1 %or.cond55.not61.i, i1 %.old57.i, i1 false
  br i1 %or.cond59.i, label %bb.i, label %intel_pll_is_valid.exit.thread.i

bb.i:                                             ; preds = %bb.h, %4
  %i.an = and i64 %i.aj, 134217728
  %.not.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i, label %bb.j, label %.split.i

.split.i:                                         ; preds = %bb.i
  %i.ao = load i32, ptr %i.p, align 4
  %i.ap = icmp sgt i32 %i.t, %i.ao
  br i1 %i.ap, label %vlv_PLL_is_optimal.exit.thread.i, label %intel_pll_is_valid.exit.thread.i

bb.j:                                             ; preds = %bb.i
  br i1 %.not30.i.i, label %bb.k, label %.critedge.i.i, !prof !14

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %__drm_to_dev.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  br label %__drm_to_dev.exit.i.i

__drm_to_dev.exit.i.i:                            ; preds = %bb.l, %bb.k
  %i.at = phi ptr [ %i.as, %bb.l ], [ null, %bb.k ]
  %i.au = tail call ptr @dev_driver_string(ptr noundef %i.at) #12 ; 0 uses
  %i.av = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.3, i32 838, i32 2323, i64 16) #14, !srcloc !15
  %i.aw = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i34.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i34.i.i, label %__drm_to_dev.exit35.i.i, label %bb.m

bb.m:                                             ; preds = %__drm_to_dev.exit.i.i
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  br label %__drm_to_dev.exit35.i.i

__drm_to_dev.exit35.i.i:                          ; preds = %bb.m, %__drm_to_dev.exit.i.i
  %i.az = phi ptr [ %i.ay, %bb.m ], [ null, %__drm_to_dev.exit.i.i ]
  %i.ba = tail call ptr @dev_driver_string(ptr noundef %i.az) #12
  %i.bb = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i36.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i36.i.i, label %__drm_to_dev.exit37.i.i, label %bb.n

bb.n:                                             ; preds = %__drm_to_dev.exit35.i.i
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  br label %__drm_to_dev.exit37.i.i

__drm_to_dev.exit37.i.i:                          ; preds = %bb.n, %__drm_to_dev.exit35.i.i
  %i.be = phi ptr [ %i.bd, %bb.n ], [ null, %__drm_to_dev.exit35.i.i ] ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 80
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %.not.i38.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i38.i.i, label %bb.o, label %vlv_PLL_is_optimal.exit.thread39.i

bb.o:                                             ; preds = %__drm_to_dev.exit37.i.i
  %.val.i40.i.i = load ptr, ptr %i.be, align 8
  br label %vlv_PLL_is_optimal.exit.thread39.i

vlv_PLL_is_optimal.exit.thread39.i:               ; preds = %bb.o, %__drm_to_dev.exit37.i.i
  %.0.i39.i.i = phi ptr [ %.val.i40.i.i, %bb.o ], [ %i.bg, %__drm_to_dev.exit37.i.i ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.av, ptr noundef %i.ba, ptr noundef %.0.i39.i.i, ptr noundef nonnull @.str.8) #12
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !16
  br label %intel_pll_is_valid.exit.thread.i

.critedge.i.i:                                    ; preds = %bb.j
  %i.bh = sub i32 %i.k, %i.ah
  %i.bi = tail call i32 @llvm.abs.i32(i32 %i.bh, i1 false)
  %i.bj = sext i32 %i.bi to i64
  %i.bk = mul nsw i64 %i.bj, 1000000
  %i.bl = udiv i64 %i.bk, %i.q
  %i.bm = trunc i64 %i.bl to i32                  ; 3 uses
  %i.bn = icmp ult i32 %i.bm, 100
  br i1 %i.bn, label %bb.p, label %vlv_PLL_is_optimal.exit.i

bb.p:                                             ; preds = %.critedge.i.i
  %i.bo = load i32, ptr %i.p, align 4
  %i.bp = icmp sgt i32 %i.t, %i.bo
  br i1 %i.bp, label %vlv_PLL_is_optimal.exit.thread.i, label %vlv_PLL_is_optimal.exit.i

vlv_PLL_is_optimal.exit.i:                        ; preds = %bb.p, %.critedge.i.i
  %i.bq = add i32 %i.bm, 10
  %i.br = icmp ult i32 %i.bq, %.24375.i
  br i1 %i.br, label %vlv_PLL_is_optimal.exit.thread.i, label %intel_pll_is_valid.exit.thread.i

vlv_PLL_is_optimal.exit.thread.i:                 ; preds = %vlv_PLL_is_optimal.exit.i, %bb.p, %.split.i
  %.03438.i = phi i32 [ 0, %.split.i ], [ %i.bm, %vlv_PLL_is_optimal.exit.i ], [ 0, %bb.p ]
  store i32 %storemerge80.i, ptr %i.l, align 4
  store i32 2, ptr %.sroa.9.0..sroa_idx.i, align 8
  store i32 %i.y, ptr %.sroa.14.0..sroa_idx.i, align 4
  store i32 %storemerge4877.i, ptr %.sroa.17.0..sroa_idx.i, align 8
  store i32 %storemerge4974.i, ptr %.sroa.22.0..sroa_idx.i, align 4
  store i32 %i.ah, ptr %.sroa.25.0..sroa_idx.i, align 8
  store i32 %i.ac, ptr %.sroa.28.0..sroa_idx.i, align 4
  store i32 %i.z, ptr %.sroa.30.0..sroa_idx.i, align 8
  store i32 %i.t, ptr %i.p, align 4
  br label %intel_pll_is_valid.exit.thread.i

intel_pll_is_valid.exit.thread.i:                 ; preds = %vlv_PLL_is_optimal.exit.thread.i, %vlv_PLL_is_optimal.exit.i, %vlv_PLL_is_optimal.exit.thread39.i, %.split.i, %bb.h, %4, %bb.g, %vlv_calc_dpll_params.exit.i
  %.445.i = phi i32 [ %.03438.i, %vlv_PLL_is_optimal.exit.thread.i ], [ %.24375.i, %bb.h ], [ %.24375.i, %vlv_PLL_is_optimal.exit.i ], [ %.24375.i, %.split.i ], [ %.24375.i, %vlv_PLL_is_optimal.exit.thread39.i ], [ %.24375.i, %bb.g ], [ %.24375.i, %vlv_calc_dpll_params.exit.i ], [ %.24375.i, %4 ] ; 8 uses
  %.4.i = phi i1 [ true, %vlv_PLL_is_optimal.exit.thread.i ], [ %.276.i, %bb.h ], [ %.276.i, %vlv_PLL_is_optimal.exit.i ], [ %.276.i, %.split.i ], [ %.276.i, %vlv_PLL_is_optimal.exit.thread39.i ], [ %.276.i, %bb.g ], [ %.276.i, %vlv_calc_dpll_params.exit.i ], [ %.276.i, %4 ] ; 7 uses
  %.pn.p.1.i = select i1 %i.v, i32 150000, i32 -150000
  %.pn.1.i = add i32 %.pn.p.1.i, %i.u             ; 3 uses
  %i.bs = sdiv i32 %.pn.1.i, 300000               ; 4 uses
  %i.bt = mul nuw nsw i32 %i.bs, 3
  %i.bu = mul nsw i32 %i.bs, 300000
  %i.bv = icmp sgt i32 %.pn.1.i, 299999
  %..neg.i.1.i = select i1 %i.bv, i32 %.neg.i83.i, i32 %.neg.i.i
  %.pn.i.1.i = add i32 %..neg.i.1.i, %i.bu
  %i.bw = sdiv i32 %.pn.i.1.i, %storemerge80.i    ; 6 uses
  br i1 %i.w, label %vlv_calc_dpll_params.exit.1.i, label %bb.q

bb.q:                                             ; preds = %intel_pll_is_valid.exit.thread.i
  %i.bx = icmp sgt i32 %i.bw, 0
  %i.by = xor i1 %i.x, %i.bx
  %i.bz = freeze i1 %i.by
  %..neg34.i.v.1.i = select i1 %i.bz, i32 2, i32 -2
  %..neg34.i.1.i = sdiv i32 %i.t, %..neg34.i.v.1.i
  %.pn35.i.1.i = add i32 %..neg34.i.1.i, %i.bw
  %i.ca = sdiv i32 %.pn35.i.1.i, %i.t
  br label %vlv_calc_dpll_params.exit.1.i

vlv_calc_dpll_params.exit.1.i:                    ; preds = %bb.q, %intel_pll_is_valid.exit.thread.i
  %i.cb = phi i32 [ %i.ca, %bb.q ], [ 0, %intel_pll_is_valid.exit.thread.i ] ; 6 uses
  %i.cc = add nsw i32 %i.bs, -157
  %or.cond45.1.i = icmp ult i32 %i.cc, -146
  br i1 %or.cond45.1.i, label %intel_pll_is_valid.exit.thread.1.i, label %bb.r

bb.r:                                             ; preds = %vlv_calc_dpll_params.exit.1.i
  %i.cd = load i64, ptr %i.o, align 8             ; 3 uses
  %i.ce = and i64 %i.cd, 36642492416
  %or.cond63.i.not.1.i = icmp eq i64 %i.ce, 0
  br i1 %or.cond63.i.not.1.i, label %intel_pll_is_valid.exit.thread.1.i, label %10

10:                                               ; preds = %bb.r
  %11 = and i64 %i.cd, 36642488320
  %or.cond67.i.1.i = icmp eq i64 %11, 0
  br i1 %or.cond67.i.1.i, label %bb.s, label %12

12:                                               ; preds = %10
  %13 = add i32 %i.bw, -4000000
  %or.cond53.1.i = icmp ult i32 %13, 2000001
  %14 = icmp sgt i32 %i.cb, 24999
  %or.cond55.not61.1.i = select i1 %or.cond53.1.i, i1 %14, i1 false
  %.old57.1.i = icmp samesign ult i32 %i.cb, 270001
  %or.cond59.1.i = select i1 %or.cond55.not61.1.i, i1 %.old57.1.i, i1 false
  br i1 %or.cond59.1.i, label %bb.t, label %intel_pll_is_valid.exit.thread.1.i

bb.s:                                             ; preds = %10
  %.pn.1.off.i = add i32 %.pn.1.i, 299999
  %15 = icmp ult i32 %.pn.1.off.i, 599999
  %16 = icmp sgt i32 %i.bw, 3999999
  %17 = and i1 %15, %16
  %or.cond50.not66.1.i = and i1 %i.w, %17
  %i.cf = icmp samesign ult i32 %i.bw, 6000001
  %or.cond52.not64.1.i = select i1 %or.cond50.not66.1.i, i1 %i.cf, i1 false
  %.old54.1.i = icmp sgt i32 %i.cb, 24999
  %or.cond56.not62.1.i = select i1 %or.cond52.not64.1.i, i1 %.old54.1.i, i1 false
  %i.cg = icmp samesign ult i32 %i.cb, 270001
  %or.cond58.1.i = select i1 %or.cond56.not62.1.i, i1 %i.cg, i1 false
  br i1 %or.cond58.1.i, label %bb.t, label %intel_pll_is_valid.exit.thread.1.i

bb.t:                                             ; preds = %bb.s, %12
  %i.ch = and i64 %i.cd, 134217728
  %.not.i.1.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i.1.i, label %bb.u, label %.split.1.i

.split.1.i:                                       ; preds = %bb.t
  %i.ci = load i32, ptr %i.p, align 4
  %i.cj = icmp sgt i32 %i.t, %i.ci
  br i1 %i.cj, label %vlv_PLL_is_optimal.exit.thread.1.i, label %intel_pll_is_valid.exit.thread.1.i

bb.u:                                             ; preds = %bb.t
  br i1 %.not30.i.i, label %bb.w, label %.critedge.i.1.i, !prof !14

.critedge.i.1.i:                                  ; preds = %bb.u
  %i.ck = sub i32 %i.k, %i.cb
  %i.cl = tail call i32 @llvm.abs.i32(i32 %i.ck, i1 false)
  %i.cm = sext i32 %i.cl to i64
  %i.cn = mul nsw i64 %i.cm, 1000000
  %i.co = udiv i64 %i.cn, %i.q
  %i.cp = trunc i64 %i.co to i32                  ; 3 uses
  %i.cq = icmp ult i32 %i.cp, 100
  br i1 %i.cq, label %bb.v, label %vlv_PLL_is_optimal.exit.1.i

bb.v:                                             ; preds = %.critedge.i.1.i
  %i.cr = load i32, ptr %i.p, align 4
  %i.cs = icmp sgt i32 %i.t, %i.cr
  br i1 %i.cs, label %vlv_PLL_is_optimal.exit.thread.1.i, label %vlv_PLL_is_optimal.exit.1.i

vlv_PLL_is_optimal.exit.1.i:                      ; preds = %bb.v, %.critedge.i.1.i
  %i.ct = add i32 %i.cp, 10
  %i.cu = icmp ult i32 %i.ct, %.445.i
  br i1 %i.cu, label %vlv_PLL_is_optimal.exit.thread.1.i, label %intel_pll_is_valid.exit.thread.1.i

vlv_PLL_is_optimal.exit.thread.1.i:               ; preds = %vlv_PLL_is_optimal.exit.1.i, %bb.v, %.split.1.i
  %.03438.1.i = phi i32 [ 0, %.split.1.i ], [ %i.cp, %vlv_PLL_is_optimal.exit.1.i ], [ 0, %bb.v ]
  store i32 %storemerge80.i, ptr %i.l, align 4
  store i32 3, ptr %.sroa.9.0..sroa_idx.i, align 8
  store i32 %i.bs, ptr %.sroa.14.0..sroa_idx.i, align 4
  store i32 %storemerge4877.i, ptr %.sroa.17.0..sroa_idx.i, align 8
  store i32 %storemerge4974.i, ptr %.sroa.22.0..sroa_idx.i, align 4
  store i32 %i.cb, ptr %.sroa.25.0..sroa_idx.i, align 8
  store i32 %i.bw, ptr %.sroa.28.0..sroa_idx.i, align 4
  store i32 %i.bt, ptr %.sroa.30.0..sroa_idx.i, align 8
  store i32 %i.t, ptr %i.p, align 4
  br label %intel_pll_is_valid.exit.thread.1.i

bb.w:                                             ; preds = %bb.u
  %i.cv = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i.i.1.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.1.i, label %__drm_to_dev.exit.i.1.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cw = getelementptr i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  br label %__drm_to_dev.exit.i.1.i

__drm_to_dev.exit.i.1.i:                          ; preds = %bb.x, %bb.w
  %i.cy = phi ptr [ %i.cx, %bb.x ], [ null, %bb.w ]
  %i.cz = tail call ptr @dev_driver_string(ptr noundef %i.cy) #12 ; 0 uses
  %i.da = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.3, i32 838, i32 2323, i64 16) #14, !srcloc !15
  %i.db = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i34.i.1.i = icmp eq ptr %i.db, null
  br i1 %.not.i34.i.1.i, label %__drm_to_dev.exit35.i.1.i, label %bb.y

bb.y:                                             ; preds = %__drm_to_dev.exit.i.1.i
  %i.dc = getelementptr i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  br label %__drm_to_dev.exit35.i.1.i

__drm_to_dev.exit35.i.1.i:                        ; preds = %bb.y, %__drm_to_dev.exit.i.1.i
  %i.de = phi ptr [ %i.dd, %bb.y ], [ null, %__drm_to_dev.exit.i.1.i ]
  %i.df = tail call ptr @dev_driver_string(ptr noundef %i.de) #12
  %i.dg = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i36.i.1.i = icmp eq ptr %i.dg, null
  br i1 %.not.i36.i.1.i, label %__drm_to_dev.exit37.i.1.i, label %bb.z

bb.z:                                             ; preds = %__drm_to_dev.exit35.i.1.i
  %i.dh = getelementptr i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8
  br label %__drm_to_dev.exit37.i.1.i

__drm_to_dev.exit37.i.1.i:                        ; preds = %bb.z, %__drm_to_dev.exit35.i.1.i
  %i.dj = phi ptr [ %i.di, %bb.z ], [ null, %__drm_to_dev.exit35.i.1.i ] ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 80
  %i.dl = load ptr, ptr %i.dk, align 8            ; 2 uses
  %.not.i38.i.1.i = icmp eq ptr %i.dl, null
  br i1 %.not.i38.i.1.i, label %bb.aa, label %vlv_PLL_is_optimal.exit.thread39.1.i

bb.aa:                                            ; preds = %__drm_to_dev.exit37.i.1.i
  %.val.i40.i.1.i = load ptr, ptr %i.dj, align 8
  br label %vlv_PLL_is_optimal.exit.thread39.1.i

vlv_PLL_is_optimal.exit.thread39.1.i:             ; preds = %bb.aa, %__drm_to_dev.exit37.i.1.i
  %.0.i39.i.1.i = phi ptr [ %.val.i40.i.1.i, %bb.aa ], [ %i.dl, %__drm_to_dev.exit37.i.1.i ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.da, ptr noundef %i.df, ptr noundef %.0.i39.i.1.i, ptr noundef nonnull @.str.8) #12
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !16
  br label %intel_pll_is_valid.exit.thread.1.i

intel_pll_is_valid.exit.thread.1.i:               ; preds = %vlv_PLL_is_optimal.exit.thread39.1.i, %vlv_PLL_is_optimal.exit.thread.1.i, %vlv_PLL_is_optimal.exit.1.i, %.split.1.i, %bb.s, %12, %bb.r, %vlv_calc_dpll_params.exit.1.i
  %.445.1.i = phi i32 [ %.03438.1.i, %vlv_PLL_is_optimal.exit.thread.1.i ], [ %.445.i, %12 ], [ %.445.i, %vlv_PLL_is_optimal.exit.1.i ], [ %.445.i, %.split.1.i ], [ %.445.i, %vlv_PLL_is_optimal.exit.thread39.1.i ], [ %.445.i, %bb.r ], [ %.445.i, %vlv_calc_dpll_params.exit.1.i ], [ %.445.i, %bb.s ] ; 3 uses
  %.4.1.i = phi i1 [ true, %vlv_PLL_is_optimal.exit.thread.1.i ], [ %.4.i, %12 ], [ %.4.i, %vlv_PLL_is_optimal.exit.1.i ], [ %.4.i, %.split.1.i ], [ %.4.i, %vlv_PLL_is_optimal.exit.thread39.1.i ], [ %.4.i, %bb.r ], [ %.4.i, %vlv_calc_dpll_params.exit.1.i ], [ %.4.i, %bb.s ] ; 4 uses
  %i.dm = icmp samesign ugt i32 %storemerge4974.i, 10
  %.neg.i = select i1 %i.dm, i32 -2, i32 -1
  %i.dn = add nsw i32 %.neg.i, %storemerge4974.i  ; 2 uses
  %i.do = icmp sgt i32 %i.dn, 1
  br i1 %i.do, label %bb.e, label %bb.ab, !llvm.loop !48

bb.ab:                                            ; preds = %intel_pll_is_valid.exit.thread.1.i
  %i.dp = add nsw i32 %storemerge4877.i, -1
  %i.dq = icmp samesign ugt i32 %storemerge4877.i, 2
  br i1 %i.dq, label %.preheader.i, label %bb.ac, !llvm.loop !49

bb.ac:                                            ; preds = %bb.ab
  %i.dr = add nuw nsw i32 %storemerge80.i, 1      ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.dr, 6
  br i1 %exitcond.not.i, label %vlv_find_best_dpll.exit, label %.preheader70.i, !llvm.loop !50

vlv_find_best_dpll.exit:                          ; preds = %bb.ac
  br i1 %.4.1.i, label %bb.ad, label %bb.ao

bb.ad:                                            ; preds = %vlv_find_best_dpll.exit, %bb.a
  %i.ds = getelementptr i8, ptr %i.f, i64 900
  %i.dt = getelementptr i8, ptr %i.f, i64 904
  %i.du = load i32, ptr %i.dt, align 8
  %i.dv = getelementptr i8, ptr %i.f, i64 908
  %i.dw = load i32, ptr %i.dv, align 4
  %i.dx = mul i32 %i.dw, %i.du                    ; 2 uses
  %i.dy = getelementptr i8, ptr %i.f, i64 928
  store i32 %i.dx, ptr %i.dy, align 8
  %i.dz = getelementptr i8, ptr %i.f, i64 912
  %i.ea = load i32, ptr %i.dz, align 8
  %i.eb = getelementptr i8, ptr %i.f, i64 916
  %i.ec = load i32, ptr %i.eb, align 4
  %i.ed = mul i32 %i.ec, %i.ea                    ; 2 uses
  %i.ee = mul i32 %i.ed, 5                        ; 5 uses
  %i.ef = getelementptr i8, ptr %i.f, i64 932
  store i32 %i.ee, ptr %i.ef, align 4
  %i.eg = load i32, ptr %i.ds, align 4            ; 5 uses
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ei = mul i32 %i.dx, 100000                   ; 2 uses
  %i.ej = icmp sgt i32 %i.ei, 0
  %i.ek = icmp slt i32 %i.eg, 1
  %i.el = xor i1 %i.ej, %i.ek
  br i1 %i.el, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.em = sdiv i32 %i.eg, 2
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %.neg.i19 = sdiv i32 %i.eg, -2
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn36.i = phi i32 [ %i.em, %bb.af ], [ %.neg.i19, %bb.ag ]
  %.pn.i20 = add i32 %.pn36.i, %i.ei
  %i.en = sdiv i32 %.pn.i20, %i.eg
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ad
  %i.eo = phi i32 [ %i.en, %bb.ah ], [ 0, %bb.ad ] ; 3 uses
  %i.ep = getelementptr i8, ptr %i.f, i64 924
  store i32 %i.eo, ptr %i.ep, align 4
  %i.eq = icmp eq i32 %i.ed, 0
  br i1 %i.eq, label %vlv_calc_dpll_params.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.er = icmp sgt i32 %i.eo, 0
  %i.es = icmp slt i32 %i.ee, 1
  %i.et = xor i1 %i.es, %i.er
  br i1 %i.et, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.eu = sdiv i32 %i.ee, 2
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %.neg34.i = sdiv i32 %i.ee, -2
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.pn37.i = phi i32 [ %i.eu, %bb.ak ], [ %.neg34.i, %bb.al ]
  %.pn35.i = add i32 %.pn37.i, %i.eo
  %i.ev = sdiv i32 %.pn35.i, %i.ee
  br label %vlv_calc_dpll_params.exit

vlv_calc_dpll_params.exit:                        ; preds = %bb.ai, %bb.am
  %i.ew = phi i32 [ %i.ev, %bb.am ], [ 0, %bb.ai ] ; 2 uses
  %i.ex = getelementptr i8, ptr %i.f, i64 920
  store i32 %i.ew, ptr %i.ex, align 8
  %i.ey = getelementptr i8, ptr %i.f, i64 944
  %.val.i = load ptr, ptr %i.f, align 8
  %i.ez = getelementptr i8, ptr %i.f, i64 888
  %.val5.i = load i32, ptr %i.ez, align 8
  %i.fa = getelementptr i8, ptr %.val.i, i64 1664
  %.val.val.i = load i32, ptr %i.fa, align 8
  %.not.i.i21 = icmp eq i32 %.val.val.i, 0
  %spec.select.i.i = select i1 %.not.i.i21, i32 805314560, i32 805330944 ; 2 uses
  %i.fb = and i32 %.val5.i, 512
  %.not1.i.i = icmp eq i32 %i.fb, 0               ; 2 uses
  %i.fc = or disjoint i32 %spec.select.i.i, -1073741824
  %.1.i.i = select i1 %.not1.i.i, i32 %i.fc, i32 %spec.select.i.i
  store i32 %.1.i.i, ptr %i.ey, align 8
  %i.fd = getelementptr i8, ptr %i.f, i64 1324
  %.val6.i = load i32, ptr %i.fd, align 4
  %i.fe = shl i32 %.val6.i, 8
  %i.ff = add i32 %i.fe, -256
  %i.fg = getelementptr i8, ptr %i.f, i64 948
  store i32 %i.ff, ptr %i.fg, align 4
  br i1 %.not1.i.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %vlv_calc_dpll_params.exit
  %i.fh = getelementptr i8, ptr %i.f, i64 1320
  store i32 %i.ew, ptr %i.fh, align 8
  %i.fi = tail call i32 @intel_crtc_dotclock(ptr noundef %i.f) #12
  %i.fj = getelementptr i8, ptr %i.f, i64 644
  store i32 %i.fi, ptr %i.fj, align 4
  br label %bb.ao

bb.ao:                                            ; preds = %vlv_calc_dpll_params.exit, %vlv_find_best_dpll.exit, %bb.an
  %.0 = phi i32 [ -22, %vlv_find_best_dpll.exit ], [ 0, %bb.an ], [ 0, %vlv_calc_dpll_params.exit ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -22, 1) i32 @g4x_crtc_compute_clock(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 40
  %.val36 = load ptr, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %1, i64 136
  %.val37 = load i32, ptr %i.f, align 8
  %i.g = zext i32 %.val37 to i64
  %i.h = getelementptr [56 x i8], ptr %.val36, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8              ; 18 uses
  %i.k = getelementptr i8, ptr %i.j, i64 888      ; 2 uses
  %.val35 = load i32, ptr %i.k, align 8
  %i.l = zext i32 %.val35 to i64                  ; 3 uses
  %i.m = and i64 %i.l, 16
  %.not39 = icmp eq i64 %i.m, 0
  br i1 %.not39, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call zeroext i1 @intel_panel_use_ssc(ptr noundef %i.d) #12
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %i.d, i64 5220
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %i.q = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.e, %bb.f
  %i.t = phi ptr [ %i.s, %bb.f ], [ null, %bb.e ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.t, i32 noundef 2, ptr noundef nonnull @.str.9, i32 noundef %i.p) #12
  br label %bb.g

bb.g:                                             ; preds = %__drm_to_dev.exit, %bb.d
  %.0 = phi i32 [ %i.p, %__drm_to_dev.exit ], [ 96000, %bb.d ]
  %i.u = tail call zeroext i1 @intel_is_dual_link_lvds(ptr noundef %i.d) #12
  %intel_limits_g4x_dual_channel_lvds.intel_limits_g4x_single_channel_lvds = select i1 %i.u, ptr @intel_limits_g4x_dual_channel_lvds, ptr @intel_limits_g4x_single_channel_lvds
  br label %bb.j

bb.h:                                             ; preds = %bb.c
  %i.v = and i64 %i.l, 66
  %or.cond.not = icmp eq i64 %i.v, 0
  br i1 %or.cond.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = and i64 %i.l, 8
  %.not40 = icmp eq i64 %i.w, 0
  %intel_limits_g4x_sdvo.intel_limits_i9xx_sdvo = select i1 %.not40, ptr @intel_limits_i9xx_sdvo, ptr @intel_limits_g4x_sdvo
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.029 = phi ptr [ %intel_limits_g4x_dual_channel_lvds.intel_limits_g4x_single_channel_lvds, %bb.g ], [ @intel_limits_g4x_hdmi, %bb.h ], [ %intel_limits_g4x_sdvo.intel_limits_i9xx_sdvo, %bb.i ]
  %.1 = phi i32 [ %.0, %bb.g ], [ 96000, %bb.h ], [ 96000, %bb.i ] ; 2 uses
  %i.x = getelementptr i8, ptr %i.j, i64 896
  %i.y = load i8, ptr %i.x, align 8, !range !19, !noundef !20
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.l, label %bb.k
end_hunk_0
