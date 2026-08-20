inline.NumInlined: 218
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@g4x_find_best_dpll:bb.a
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
  br i1 %i.i, label %bb.af, label %bb.b

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

.preheader70.i:                                   ; preds = %bb.ae, %bb.d
  %.0106.i = phi i1 [ false, %bb.d ], [ %.4.1.i, %bb.ae ]
  %.041105.i = phi i32 [ 1000000, %bb.d ], [ %.445.1.i, %bb.ae ]
  %storemerge104.i = phi i32 [ 1, %bb.d ], [ %i.dv, %bb.ae ] ; 8 uses
  %i.r = mul i32 %storemerge104.i, %i.k
  br label %.split74.preheader.i

.split74.preheader.i:                             ; preds = %.split96.us.i, %.preheader70.i
  %.1103.i = phi i1 [ %.0106.i, %.preheader70.i ], [ %.4.1.i, %.split96.us.i ]
  %.142102.i = phi i32 [ %.041105.i, %.preheader70.i ], [ %.445.1.i, %.split96.us.i ]
  %storemerge48100.i = phi i32 [ 3, %.preheader70.i ], [ %i.dt, %.split96.us.i ] ; 5 uses
  br label %bb.e

bb.e:                                             ; preds = %intel_pll_is_valid.exit.thread.1.i, %.split74.preheader.i
  %.286.i = phi i1 [ %.4.1.i, %intel_pll_is_valid.exit.thread.1.i ], [ %.1103.i, %.split74.preheader.i ] ; 6 uses
  %.24385.i = phi i32 [ %.445.1.i, %intel_pll_is_valid.exit.thread.1.i ], [ %.142102.i, %.split74.preheader.i ] ; 7 uses
  %storemerge4984.i = phi i32 [ %i.dr, %intel_pll_is_valid.exit.thread.1.i ], [ 20, %.split74.preheader.i ] ; 5 uses
  %i.s = mul i32 %storemerge4984.i, %storemerge48100.i ; 3 uses
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
  %..neg.i.v.i = select i1 %i.ab, i32 2, i32 -2
  %..neg.i.i = sdiv i32 %storemerge104.i, %..neg.i.v.i
  %.pn.i.i = add i32 %i.aa, %..neg.i.i
  %i.ac = sdiv i32 %.pn.i.i, %storemerge104.i     ; 4 uses
  br i1 %i.w, label %vlv_calc_dpll_params.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = icmp sgt i32 %i.ac, 0
  %i.ae = xor i1 %i.x, %i.ad
  %i.af = freeze i1 %i.ae
  %..neg34.i.v.i = select i1 %i.af, i32 2, i32 -2
  %..neg34.i.i = sdiv i32 %i.t, %..neg34.i.v.i
  %.pn35.i.i = add i32 %..neg34.i.i, %i.ac
  %i.ag = sdiv i32 %.pn35.i.i, %i.t
  br label %vlv_calc_dpll_params.exit.i

vlv_calc_dpll_params.exit.i:                      ; preds = %bb.f, %bb.e
  %i.ah = phi i32 [ %i.ag, %bb.f ], [ 0, %bb.e ]  ; 4 uses
  %i.ai = add nsw i32 %i.y, -157
  %or.cond45.i = icmp ult i32 %i.ai, -146
  br i1 %or.cond45.i, label %bb.q, label %bb.g

bb.g:                                             ; preds = %vlv_calc_dpll_params.exit.i
  %i.aj = load i64, ptr %i.o, align 8             ; 2 uses
  %i.ak = and i64 %i.aj, 36642488320
  %or.cond63.i.not.i = icmp eq i64 %i.ak, 0
  br i1 %or.cond63.i.not.i, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.pn.fr.off.i = add i32 %i.ac, -4000000
  %i.al = icmp ult i32 %.pn.fr.off.i, 2000001
  %.old54.i = icmp sgt i32 %i.ah, 24999
  %or.cond55.not61.i = and i1 %i.al, %.old54.i
  %i.am = icmp samesign ult i32 %i.ah, 270001
  %or.cond58.i = select i1 %or.cond55.not61.i, i1 %i.am, i1 false
  br i1 %or.cond58.i, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.an = and i64 %i.aj, 134217728
  %.not.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i, label %bb.j, label %.split.i

.split.i:                                         ; preds = %bb.i
  %i.ao = load i32, ptr %i.p, align 4
  %i.ap = icmp sgt i32 %i.t, %i.ao
  br i1 %i.ap, label %vlv_PLL_is_optimal.exit.thread.i, label %bb.q

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
  br label %bb.q

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
  %i.br = icmp ult i32 %i.bq, %.24385.i
  br i1 %i.br, label %vlv_PLL_is_optimal.exit.thread.i, label %bb.q

vlv_PLL_is_optimal.exit.thread.i:                 ; preds = %vlv_PLL_is_optimal.exit.i, %bb.p, %.split.i
  %.03438.i = phi i32 [ 0, %.split.i ], [ %i.bm, %vlv_PLL_is_optimal.exit.i ], [ 0, %bb.p ]
  store i32 %storemerge104.i, ptr %i.l, align 4
  store i32 2, ptr %.sroa.9.0..sroa_idx.i, align 8
  store i32 %i.y, ptr %.sroa.14.0..sroa_idx.i, align 4
  store i32 %storemerge48100.i, ptr %.sroa.17.0..sroa_idx.i, align 8
  store i32 %storemerge4984.i, ptr %.sroa.22.0..sroa_idx.i, align 4
  store i32 %i.ah, ptr %.sroa.25.0..sroa_idx.i, align 8
  store i32 %i.ac, ptr %.sroa.28.0..sroa_idx.i, align 4
  store i32 %i.z, ptr %.sroa.30.0..sroa_idx.i, align 8
  store i32 %i.t, ptr %i.p, align 4
  br label %bb.q

bb.q:                                             ; preds = %vlv_PLL_is_optimal.exit.thread.i, %vlv_PLL_is_optimal.exit.i, %vlv_PLL_is_optimal.exit.thread39.i, %.split.i, %bb.h, %bb.g, %vlv_calc_dpll_params.exit.i
  %.445.i = phi i32 [ %.03438.i, %vlv_PLL_is_optimal.exit.thread.i ], [ %.24385.i, %bb.h ], [ %.24385.i, %vlv_PLL_is_optimal.exit.i ], [ %.24385.i, %.split.i ], [ %.24385.i, %vlv_PLL_is_optimal.exit.thread39.i ], [ %.24385.i, %bb.g ], [ %.24385.i, %vlv_calc_dpll_params.exit.i ] ; 8 uses
  %.4.i = phi i1 [ true, %vlv_PLL_is_optimal.exit.thread.i ], [ %.286.i, %bb.h ], [ %.286.i, %vlv_PLL_is_optimal.exit.i ], [ %.286.i, %.split.i ], [ %.286.i, %vlv_PLL_is_optimal.exit.thread39.i ], [ %.286.i, %bb.g ], [ %.286.i, %vlv_calc_dpll_params.exit.i ] ; 7 uses
  %.pn.p.1.i = select i1 %i.v, i32 150000, i32 -150000
  %.pn.1.i = add i32 %.pn.p.1.i, %i.u
  %.pn.1.fr.i = freeze i32 %.pn.1.i               ; 2 uses
  %i.bs = sdiv i32 %.pn.1.fr.i, 300000            ; 4 uses
  %i.bt = mul nuw nsw i32 %i.bs, 3                ; 2 uses
  %i.bu = mul nsw i32 %i.bs, 300000
  %i.bv = icmp sgt i32 %.pn.1.fr.i, 299999
  %..neg.i.v.1.i = select i1 %i.bv, i32 2, i32 -2
  %..neg.i.1.i = sdiv i32 %storemerge104.i, %..neg.i.v.1.i
  %.pn.i.1.i = add i32 %..neg.i.1.i, %i.bu
  %i.bw = sdiv i32 %.pn.i.1.i, %storemerge104.i   ; 6 uses
  br i1 %i.w, label %vlv_calc_dpll_params.exit.1.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bx = icmp sgt i32 %i.bw, 0
  %i.by = xor i1 %i.x, %i.bx
  %i.bz = freeze i1 %i.by
  %..neg34.i.v.1.i = select i1 %i.bz, i32 2, i32 -2
  %..neg34.i.1.i = sdiv i32 %i.t, %..neg34.i.v.1.i
  %.pn35.i.1.i = add i32 %..neg34.i.1.i, %i.bw
  %i.ca = sdiv i32 %.pn35.i.1.i, %i.t
  br label %vlv_calc_dpll_params.exit.1.i

vlv_calc_dpll_params.exit.1.i:                    ; preds = %bb.r, %bb.q
  %i.cb = phi i32 [ %i.ca, %bb.r ], [ 0, %bb.q ]  ; 6 uses
  %i.cc = add nsw i32 %i.bs, -157
  %or.cond45.1.i = icmp ult i32 %i.cc, -146
  br i1 %or.cond45.1.i, label %intel_pll_is_valid.exit.thread.1.i, label %bb.s

bb.s:                                             ; preds = %vlv_calc_dpll_params.exit.1.i
  %i.cd = load i64, ptr %i.o, align 8             ; 3 uses
  %i.ce = and i64 %i.cd, 36642492416
  %or.cond63.i.not.1.i = icmp eq i64 %i.ce, 0
  br i1 %or.cond63.i.not.1.i, label %intel_pll_is_valid.exit.thread.1.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cf = and i64 %i.cd, 36642488320
  %or.cond67.i.1.i = icmp eq i64 %i.cf, 0
  br i1 %or.cond67.i.1.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cg = add i32 %i.bw, -4000000
  %or.cond53.1.i = icmp ult i32 %i.cg, 2000001
  %i.ch = icmp sgt i32 %i.cb, 24999
  %or.cond55.not61.1.i = and i1 %or.cond53.1.i, %i.ch
  %.old57.1.i = icmp samesign ult i32 %i.cb, 270001
  %or.cond59.1.i = select i1 %or.cond55.not61.1.i, i1 %.old57.1.i, i1 false
  br i1 %or.cond59.1.i, label %bb.w, label %intel_pll_is_valid.exit.thread.1.i

bb.v:                                             ; preds = %bb.t
  %2 = or i32 %i.bt, %i.s
  %or.cond49.not69.1.i = icmp eq i32 %2, 0
  %i.ci = icmp sgt i32 %i.bw, 3999999
  %or.cond50.not66.1.i = and i1 %or.cond49.not69.1.i, %i.ci
  %i.cj = icmp samesign ult i32 %i.bw, 6000001
  %or.cond52.not64.1.i = select i1 %or.cond50.not66.1.i, i1 %i.cj, i1 false
  %.old54.1.i = icmp sgt i32 %i.cb, 24999
  %or.cond56.not62.1.i = and i1 %or.cond52.not64.1.i, %.old54.1.i
  %i.ck = icmp samesign ult i32 %i.cb, 270001
  %or.cond58.1.i = select i1 %or.cond56.not62.1.i, i1 %i.ck, i1 false
  br i1 %or.cond58.1.i, label %bb.w, label %intel_pll_is_valid.exit.thread.1.i

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cl = and i64 %i.cd, 134217728
  %.not.i.1.i = icmp eq i64 %i.cl, 0
  br i1 %.not.i.1.i, label %bb.x, label %.split.1.i

.split.1.i:                                       ; preds = %bb.w
  %i.cm = load i32, ptr %i.p, align 4
  %i.cn = icmp sgt i32 %i.t, %i.cm
  br i1 %i.cn, label %vlv_PLL_is_optimal.exit.thread.1.i, label %intel_pll_is_valid.exit.thread.1.i

bb.x:                                             ; preds = %bb.w
  br i1 %.not30.i.i, label %bb.z, label %.critedge.i.1.i, !prof !14

.critedge.i.1.i:                                  ; preds = %bb.x
  %i.co = sub i32 %i.k, %i.cb
  %i.cp = tail call i32 @llvm.abs.i32(i32 %i.co, i1 false)
  %i.cq = sext i32 %i.cp to i64
  %i.cr = mul nsw i64 %i.cq, 1000000
  %i.cs = udiv i64 %i.cr, %i.q
  %i.ct = trunc i64 %i.cs to i32                  ; 3 uses
  %i.cu = icmp ult i32 %i.ct, 100
  br i1 %i.cu, label %bb.y, label %vlv_PLL_is_optimal.exit.1.i

bb.y:                                             ; preds = %.critedge.i.1.i
  %i.cv = load i32, ptr %i.p, align 4
  %i.cw = icmp sgt i32 %i.t, %i.cv
  br i1 %i.cw, label %vlv_PLL_is_optimal.exit.thread.1.i, label %vlv_PLL_is_optimal.exit.1.i

vlv_PLL_is_optimal.exit.1.i:                      ; preds = %bb.y, %.critedge.i.1.i
  %i.cx = add i32 %i.ct, 10
  %i.cy = icmp ult i32 %i.cx, %.445.i
  br i1 %i.cy, label %vlv_PLL_is_optimal.exit.thread.1.i, label %intel_pll_is_valid.exit.thread.1.i

vlv_PLL_is_optimal.exit.thread.1.i:               ; preds = %vlv_PLL_is_optimal.exit.1.i, %bb.y, %.split.1.i
  %.03438.1.i = phi i32 [ 0, %.split.1.i ], [ %i.ct, %vlv_PLL_is_optimal.exit.1.i ], [ 0, %bb.y ]
  store i32 %storemerge104.i, ptr %i.l, align 4
  store i32 3, ptr %.sroa.9.0..sroa_idx.i, align 8
  store i32 %i.bs, ptr %.sroa.14.0..sroa_idx.i, align 4
  store i32 %storemerge48100.i, ptr %.sroa.17.0..sroa_idx.i, align 8
  store i32 %storemerge4984.i, ptr %.sroa.22.0..sroa_idx.i, align 4
  store i32 %i.cb, ptr %.sroa.25.0..sroa_idx.i, align 8
  store i32 %i.bw, ptr %.sroa.28.0..sroa_idx.i, align 4
  store i32 %i.bt, ptr %.sroa.30.0..sroa_idx.i, align 8
  store i32 %i.t, ptr %i.p, align 4
  br label %intel_pll_is_valid.exit.thread.1.i

bb.z:                                             ; preds = %bb.x
  %i.cz = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i.i.1.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.1.i, label %__drm_to_dev.exit.i.1.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.da = getelementptr i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8
  br label %__drm_to_dev.exit.i.1.i

__drm_to_dev.exit.i.1.i:                          ; preds = %bb.aa, %bb.z
  %i.dc = phi ptr [ %i.db, %bb.aa ], [ null, %bb.z ]
  %i.dd = tail call ptr @dev_driver_string(ptr noundef %i.dc) #12 ; 0 uses
  %i.de = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.3, i32 838, i32 2323, i64 16) #14, !srcloc !15
  %i.df = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i34.i.1.i = icmp eq ptr %i.df, null
  br i1 %.not.i34.i.1.i, label %__drm_to_dev.exit35.i.1.i, label %bb.ab

bb.ab:                                            ; preds = %__drm_to_dev.exit.i.1.i
  %i.dg = getelementptr i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  br label %__drm_to_dev.exit35.i.1.i

__drm_to_dev.exit35.i.1.i:                        ; preds = %bb.ab, %__drm_to_dev.exit.i.1.i
  %i.di = phi ptr [ %i.dh, %bb.ab ], [ null, %__drm_to_dev.exit.i.1.i ]
  %i.dj = tail call ptr @dev_driver_string(ptr noundef %i.di) #12
  %i.dk = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i36.i.1.i = icmp eq ptr %i.dk, null
  br i1 %.not.i36.i.1.i, label %__drm_to_dev.exit37.i.1.i, label %bb.ac

bb.ac:                                            ; preds = %__drm_to_dev.exit35.i.1.i
  %i.dl = getelementptr i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  br label %__drm_to_dev.exit37.i.1.i

__drm_to_dev.exit37.i.1.i:                        ; preds = %bb.ac, %__drm_to_dev.exit35.i.1.i
  %i.dn = phi ptr [ %i.dm, %bb.ac ], [ null, %__drm_to_dev.exit35.i.1.i ] ; 2 uses
  %i.do = getelementptr i8, ptr %i.dn, i64 80
  %i.dp = load ptr, ptr %i.do, align 8            ; 2 uses
  %.not.i38.i.1.i = icmp eq ptr %i.dp, null
  br i1 %.not.i38.i.1.i, label %bb.ad, label %vlv_PLL_is_optimal.exit.thread39.1.i

bb.ad:                                            ; preds = %__drm_to_dev.exit37.i.1.i
  %.val.i40.i.1.i = load ptr, ptr %i.dn, align 8
  br label %vlv_PLL_is_optimal.exit.thread39.1.i

vlv_PLL_is_optimal.exit.thread39.1.i:             ; preds = %bb.ad, %__drm_to_dev.exit37.i.1.i
  %.0.i39.i.1.i = phi ptr [ %.val.i40.i.1.i, %bb.ad ], [ %i.dp, %__drm_to_dev.exit37.i.1.i ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.de, ptr noundef %i.dj, ptr noundef %.0.i39.i.1.i, ptr noundef nonnull @.str.8) #12
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !16
  br label %intel_pll_is_valid.exit.thread.1.i

intel_pll_is_valid.exit.thread.1.i:               ; preds = %vlv_PLL_is_optimal.exit.thread39.1.i, %vlv_PLL_is_optimal.exit.thread.1.i, %vlv_PLL_is_optimal.exit.1.i, %.split.1.i, %bb.v, %bb.u, %bb.s, %vlv_calc_dpll_params.exit.1.i
  %.445.1.i = phi i32 [ %.03438.1.i, %vlv_PLL_is_optimal.exit.thread.1.i ], [ %.445.i, %bb.u ], [ %.445.i, %vlv_PLL_is_optimal.exit.1.i ], [ %.445.i, %.split.1.i ], [ %.445.i, %vlv_PLL_is_optimal.exit.thread39.1.i ], [ %.445.i, %bb.s ], [ %.445.i, %vlv_calc_dpll_params.exit.1.i ], [ %.445.i, %bb.v ] ; 3 uses
  %.4.1.i = phi i1 [ true, %vlv_PLL_is_optimal.exit.thread.1.i ], [ %.4.i, %bb.u ], [ %.4.i, %vlv_PLL_is_optimal.exit.1.i ], [ %.4.i, %.split.1.i ], [ %.4.i, %vlv_PLL_is_optimal.exit.thread39.1.i ], [ %.4.i, %bb.s ], [ %.4.i, %vlv_calc_dpll_params.exit.1.i ], [ %.4.i, %bb.v ] ; 4 uses
  %i.dq = icmp samesign ugt i32 %storemerge4984.i, 10
  %.neg.i = select i1 %i.dq, i32 -2, i32 -1
  %i.dr = add nsw i32 %.neg.i, %storemerge4984.i  ; 2 uses
  %i.ds = icmp sgt i32 %i.dr, 1
  br i1 %i.ds, label %bb.e, label %.split96.us.i, !llvm.loop !48

.split96.us.i:                                    ; preds = %intel_pll_is_valid.exit.thread.1.i
  %i.dt = add nsw i32 %storemerge48100.i, -1
  %i.du = icmp samesign ugt i32 %storemerge48100.i, 2
  br i1 %i.du, label %.split74.preheader.i, label %bb.ae, !llvm.loop !49

bb.ae:                                            ; preds = %.split96.us.i
  %i.dv = add nuw nsw i32 %storemerge104.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.dv, 6
  br i1 %exitcond.not.i, label %vlv_find_best_dpll.exit, label %.preheader70.i, !llvm.loop !50

vlv_find_best_dpll.exit:                          ; preds = %bb.ae
  br i1 %.4.1.i, label %bb.af, label %bb.aq

bb.af:                                            ; preds = %vlv_find_best_dpll.exit, %bb.a
  %i.dw = getelementptr i8, ptr %i.f, i64 900
  %i.dx = getelementptr i8, ptr %i.f, i64 904
  %i.dy = load i32, ptr %i.dx, align 8
  %i.dz = getelementptr i8, ptr %i.f, i64 908
  %i.ea = load i32, ptr %i.dz, align 4
  %i.eb = mul i32 %i.ea, %i.dy                    ; 2 uses
  %i.ec = getelementptr i8, ptr %i.f, i64 928
  store i32 %i.eb, ptr %i.ec, align 8
  %i.ed = getelementptr i8, ptr %i.f, i64 912
  %i.ee = load i32, ptr %i.ed, align 8
  %i.ef = getelementptr i8, ptr %i.f, i64 916
  %i.eg = load i32, ptr %i.ef, align 4
  %i.eh = mul i32 %i.eg, %i.ee                    ; 2 uses
  %i.ei = mul i32 %i.eh, 5                        ; 5 uses
  %i.ej = getelementptr i8, ptr %i.f, i64 932
  store i32 %i.ei, ptr %i.ej, align 4
  %i.ek = load i32, ptr %i.dw, align 4            ; 5 uses
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.em = mul i32 %i.eb, 100000                   ; 2 uses
  %i.en = icmp sgt i32 %i.em, 0
  %i.eo = icmp slt i32 %i.ek, 1
  %i.ep = xor i1 %i.en, %i.eo
  br i1 %i.ep, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.eq = sdiv i32 %i.ek, 2
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %.neg.i19 = sdiv i32 %i.ek, -2
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn36.i = phi i32 [ %i.eq, %bb.ah ], [ %.neg.i19, %bb.ai ]
  %.pn.i20 = add i32 %.pn36.i, %i.em
  %i.er = sdiv i32 %.pn.i20, %i.ek
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.af
  %i.es = phi i32 [ %i.er, %bb.aj ], [ 0, %bb.af ] ; 3 uses
  %i.et = getelementptr i8, ptr %i.f, i64 924
  store i32 %i.es, ptr %i.et, align 4
  %i.eu = icmp eq i32 %i.eh, 0
  br i1 %i.eu, label %vlv_calc_dpll_params.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ev = icmp sgt i32 %i.es, 0
  %i.ew = icmp slt i32 %i.ei, 1
  %i.ex = xor i1 %i.ew, %i.ev
  br i1 %i.ex, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ey = sdiv i32 %i.ei, 2
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %.neg34.i = sdiv i32 %i.ei, -2
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn37.i = phi i32 [ %i.ey, %bb.am ], [ %.neg34.i, %bb.an ]
  %.pn35.i = add i32 %.pn37.i, %i.es
  %i.ez = sdiv i32 %.pn35.i, %i.ei
  br label %vlv_calc_dpll_params.exit

vlv_calc_dpll_params.exit:                        ; preds = %bb.ak, %bb.ao
  %i.fa = phi i32 [ %i.ez, %bb.ao ], [ 0, %bb.ak ] ; 2 uses
  %i.fb = getelementptr i8, ptr %i.f, i64 920
  store i32 %i.fa, ptr %i.fb, align 8
  %i.fc = getelementptr i8, ptr %i.f, i64 944
  %.val.i = load ptr, ptr %i.f, align 8
  %i.fd = getelementptr i8, ptr %i.f, i64 888
end_hunk_0
