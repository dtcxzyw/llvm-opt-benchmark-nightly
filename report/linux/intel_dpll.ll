inline.NumInlined: 218
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@chv_crtc_compute_clock:bb.a
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
  br i1 %i.i, label %bb.ah, label %bb.b

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

.preheader70.i:                                   ; preds = %bb.ag, %bb.d
  %.0106.i = phi i32 [ 1000000, %bb.d ], [ %.4.1.i, %bb.ag ]
  %.041105.i = phi i1 [ false, %bb.d ], [ %.445.1.i, %bb.ag ]
  %storemerge104.i = phi i32 [ 1, %bb.d ], [ %i.dz, %bb.ag ] ; 8 uses
  %i.r = mul i32 %storemerge104.i, %i.k
  br label %.split74.preheader.i

.split74.preheader.i:                             ; preds = %.split96.us.i, %.preheader70.i
  %.1103.i = phi i32 [ %.0106.i, %.preheader70.i ], [ %.4.1.i, %.split96.us.i ]
  %.142102.i = phi i1 [ %.041105.i, %.preheader70.i ], [ %.445.1.i, %.split96.us.i ]
  %storemerge48100.i = phi i32 [ 3, %.preheader70.i ], [ %i.dx, %.split96.us.i ] ; 5 uses
  br label %bb.e

bb.e:                                             ; preds = %intel_pll_is_valid.exit.thread.1.i, %.split74.preheader.i
  %.286.i = phi i32 [ %.4.1.i, %intel_pll_is_valid.exit.thread.1.i ], [ %.1103.i, %.split74.preheader.i ] ; 8 uses
  %.24385.i = phi i1 [ %.445.1.i, %intel_pll_is_valid.exit.thread.1.i ], [ %.142102.i, %.split74.preheader.i ] ; 7 uses
  %storemerge4984.i = phi i32 [ %i.dv, %intel_pll_is_valid.exit.thread.1.i ], [ 20, %.split74.preheader.i ] ; 5 uses
  %i.s = mul i32 %storemerge4984.i, %storemerge48100.i ; 2 uses
  %i.t = mul i32 %i.s, 5                          ; 12 uses
  %i.u = mul i32 %i.r, %i.t                       ; 3 uses
  %i.v = icmp sgt i32 %i.u, 0                     ; 2 uses
  %i.w = icmp eq i32 %i.s, 0                      ; 4 uses
  %i.x = icmp slt i32 %i.t, 1                     ; 2 uses
  %.pn.p.i = select i1 %i.v, i32 100000, i32 -100000
  %.pn.i = add i32 %.pn.p.i, %i.u
  %.pn.fr.i = freeze i32 %.pn.i                   ; 3 uses
  %i.y = sdiv i32 %.pn.fr.i, 200000               ; 4 uses
  %i.z = shl nuw nsw i32 %i.y, 1
  %i.aa = mul nsw i32 %i.y, 200000
  %i.ab = icmp sgt i32 %.pn.fr.i, 199999
  %..neg.i.v.i = select i1 %i.ab, i32 2, i32 -2
  %..neg.i.i = sdiv i32 %storemerge104.i, %..neg.i.v.i
  %.pn.i.i = add i32 %i.aa, %..neg.i.i
  %i.ac = sdiv i32 %.pn.i.i, %storemerge104.i     ; 6 uses
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
  %i.ah = phi i32 [ %i.ag, %bb.f ], [ 0, %bb.e ]  ; 6 uses
  %i.ai = add nsw i32 %i.y, -157
  %or.cond45.i = icmp ult i32 %i.ai, -146
  br i1 %or.cond45.i, label %bb.s, label %bb.g

bb.g:                                             ; preds = %vlv_calc_dpll_params.exit.i
  %i.aj = load i64, ptr %i.o, align 8             ; 3 uses
  %i.ak = and i64 %i.aj, 36642492416
  %or.cond63.i.not.i = icmp eq i64 %i.ak, 0
  br i1 %or.cond63.i.not.i, label %bb.s, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = and i64 %i.aj, 36642488320
  %or.cond67.i.i = icmp eq i64 %i.al, 0
  br i1 %or.cond67.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.pn.fr.off.i = add i32 %.pn.fr.i, 199999
  %i.am = icmp ult i32 %.pn.fr.off.i, 399999
  %2 = icmp sgt i32 %i.ac, 3999999
  %3 = and i1 %2, %i.am
  %or.cond50.not66.i = and i1 %i.w, %3
  %i.an = icmp samesign ult i32 %i.ac, 6000001
  %or.cond52.not64.i = select i1 %or.cond50.not66.i, i1 %i.an, i1 false
  %.old54.i = icmp sgt i32 %i.ah, 24999
  %or.cond56.not62.i = select i1 %or.cond52.not64.i, i1 %.old54.i, i1 false
  %i.ao = icmp samesign ult i32 %i.ah, 270001
  %or.cond58.i = select i1 %or.cond56.not62.i, i1 %i.ao, i1 false
  br i1 %or.cond58.i, label %bb.k, label %bb.s

bb.j:                                             ; preds = %bb.h
  %i.ap = add i32 %i.ac, -4000000
  %or.cond53.i = icmp ult i32 %i.ap, 2000001
  %4 = icmp sgt i32 %i.ah, 24999
  %or.cond55.not61.i = select i1 %or.cond53.i, i1 %4, i1 false
  %i.aq = icmp samesign ult i32 %i.ah, 270001
  %or.cond59.i = select i1 %or.cond55.not61.i, i1 %i.aq, i1 false
  br i1 %or.cond59.i, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ar = and i64 %i.aj, 134217728
  %.not.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i, label %bb.l, label %.split.i

.split.i:                                         ; preds = %bb.k
  %i.as = load i32, ptr %i.p, align 4
  %i.at = icmp sgt i32 %i.t, %i.as
  br i1 %i.at, label %vlv_PLL_is_optimal.exit.thread.i, label %bb.s

bb.l:                                             ; preds = %bb.k
  br i1 %.not30.i.i, label %bb.m, label %.critedge.i.i, !prof !14

bb.m:                                             ; preds = %bb.l
  %i.au = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i, label %__drm_to_dev.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  br label %__drm_to_dev.exit.i.i

__drm_to_dev.exit.i.i:                            ; preds = %bb.n, %bb.m
  %i.ax = phi ptr [ %i.aw, %bb.n ], [ null, %bb.m ]
  %i.ay = tail call ptr @dev_driver_string(ptr noundef %i.ax) #12 ; 0 uses
  %i.az = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.3, i32 838, i32 2323, i64 16) #14, !srcloc !15
  %i.ba = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i34.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i34.i.i, label %__drm_to_dev.exit35.i.i, label %bb.o

bb.o:                                             ; preds = %__drm_to_dev.exit.i.i
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  br label %__drm_to_dev.exit35.i.i

__drm_to_dev.exit35.i.i:                          ; preds = %bb.o, %__drm_to_dev.exit.i.i
  %i.bd = phi ptr [ %i.bc, %bb.o ], [ null, %__drm_to_dev.exit.i.i ]
  %i.be = tail call ptr @dev_driver_string(ptr noundef %i.bd) #12
  %i.bf = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i36.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i36.i.i, label %__drm_to_dev.exit37.i.i, label %bb.p

bb.p:                                             ; preds = %__drm_to_dev.exit35.i.i
  %i.bg = getelementptr i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  br label %__drm_to_dev.exit37.i.i

__drm_to_dev.exit37.i.i:                          ; preds = %bb.p, %__drm_to_dev.exit35.i.i
  %i.bi = phi ptr [ %i.bh, %bb.p ], [ null, %__drm_to_dev.exit35.i.i ] ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 80
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %.not.i38.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i38.i.i, label %bb.q, label %vlv_PLL_is_optimal.exit.thread39.i

bb.q:                                             ; preds = %__drm_to_dev.exit37.i.i
  %.val.i40.i.i = load ptr, ptr %i.bi, align 8
  br label %vlv_PLL_is_optimal.exit.thread39.i

vlv_PLL_is_optimal.exit.thread39.i:               ; preds = %bb.q, %__drm_to_dev.exit37.i.i
  %.0.i39.i.i = phi ptr [ %.val.i40.i.i, %bb.q ], [ %i.bk, %__drm_to_dev.exit37.i.i ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.az, ptr noundef %i.be, ptr noundef %.0.i39.i.i, ptr noundef nonnull @.str.8) #12
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !16
  br label %bb.s

.critedge.i.i:                                    ; preds = %bb.l
  %i.bl = sub i32 %i.k, %i.ah
  %i.bm = tail call i32 @llvm.abs.i32(i32 %i.bl, i1 false)
  %i.bn = sext i32 %i.bm to i64
  %i.bo = mul nsw i64 %i.bn, 1000000
  %i.bp = udiv i64 %i.bo, %i.q
  %i.bq = trunc i64 %i.bp to i32                  ; 3 uses
  %i.br = icmp ult i32 %i.bq, 100
  br i1 %i.br, label %bb.r, label %vlv_PLL_is_optimal.exit.i

bb.r:                                             ; preds = %.critedge.i.i
  %i.bs = load i32, ptr %i.p, align 4
  %i.bt = icmp sgt i32 %i.t, %i.bs
  br i1 %i.bt, label %vlv_PLL_is_optimal.exit.thread.i, label %vlv_PLL_is_optimal.exit.i

vlv_PLL_is_optimal.exit.i:                        ; preds = %bb.r, %.critedge.i.i
  %i.bu = add i32 %i.bq, 10
  %i.bv = icmp ult i32 %i.bu, %.286.i
  br i1 %i.bv, label %vlv_PLL_is_optimal.exit.thread.i, label %bb.s

vlv_PLL_is_optimal.exit.thread.i:                 ; preds = %vlv_PLL_is_optimal.exit.i, %bb.r, %.split.i
  %.03438.i = phi i32 [ 0, %.split.i ], [ %i.bq, %vlv_PLL_is_optimal.exit.i ], [ 0, %bb.r ]
  store i32 %storemerge104.i, ptr %i.l, align 4
  store i32 2, ptr %.sroa.9.0..sroa_idx.i, align 8
  store i32 %i.y, ptr %.sroa.14.0..sroa_idx.i, align 4
  store i32 %storemerge48100.i, ptr %.sroa.17.0..sroa_idx.i, align 8
  store i32 %storemerge4984.i, ptr %.sroa.22.0..sroa_idx.i, align 4
  store i32 %i.ah, ptr %.sroa.25.0..sroa_idx.i, align 8
  store i32 %i.ac, ptr %.sroa.28.0..sroa_idx.i, align 4
  store i32 %i.z, ptr %.sroa.30.0..sroa_idx.i, align 8
  store i32 %i.t, ptr %i.p, align 4
  br label %bb.s

bb.s:                                             ; preds = %vlv_PLL_is_optimal.exit.thread.i, %vlv_PLL_is_optimal.exit.i, %vlv_PLL_is_optimal.exit.thread39.i, %.split.i, %bb.j, %bb.i, %bb.g, %vlv_calc_dpll_params.exit.i
  %.445.i = phi i1 [ true, %vlv_PLL_is_optimal.exit.thread.i ], [ %.24385.i, %bb.j ], [ %.24385.i, %vlv_PLL_is_optimal.exit.i ], [ %.24385.i, %.split.i ], [ %.24385.i, %vlv_PLL_is_optimal.exit.thread39.i ], [ %.24385.i, %bb.g ], [ %.24385.i, %vlv_calc_dpll_params.exit.i ], [ %.24385.i, %bb.i ] ; 7 uses
  %.4.i = phi i32 [ %.03438.i, %vlv_PLL_is_optimal.exit.thread.i ], [ %.286.i, %bb.j ], [ %.286.i, %vlv_PLL_is_optimal.exit.i ], [ %.286.i, %.split.i ], [ %.286.i, %vlv_PLL_is_optimal.exit.thread39.i ], [ %.286.i, %bb.g ], [ %.286.i, %vlv_calc_dpll_params.exit.i ], [ %.286.i, %bb.i ] ; 8 uses
  %.pn.p.1.i = select i1 %i.v, i32 150000, i32 -150000
  %.pn.1.i = add i32 %.pn.p.1.i, %i.u
  %.pn.1.fr.i = freeze i32 %.pn.1.i               ; 3 uses
  %i.bw = sdiv i32 %.pn.1.fr.i, 300000            ; 4 uses
  %i.bx = mul nuw nsw i32 %i.bw, 3
  %i.by = mul nsw i32 %i.bw, 300000
  %i.bz = icmp sgt i32 %.pn.1.fr.i, 299999
  %..neg.i.v.1.i = select i1 %i.bz, i32 2, i32 -2
  %..neg.i.1.i = sdiv i32 %storemerge104.i, %..neg.i.v.1.i
  %.pn.i.1.i = add i32 %..neg.i.1.i, %i.by
  %i.ca = sdiv i32 %.pn.i.1.i, %storemerge104.i   ; 6 uses
  br i1 %i.w, label %vlv_calc_dpll_params.exit.1.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = icmp sgt i32 %i.ca, 0
  %i.cc = xor i1 %i.x, %i.cb
  %i.cd = freeze i1 %i.cc
  %..neg34.i.v.1.i = select i1 %i.cd, i32 2, i32 -2
  %..neg34.i.1.i = sdiv i32 %i.t, %..neg34.i.v.1.i
  %.pn35.i.1.i = add i32 %..neg34.i.1.i, %i.ca
  %i.ce = sdiv i32 %.pn35.i.1.i, %i.t
  br label %vlv_calc_dpll_params.exit.1.i

vlv_calc_dpll_params.exit.1.i:                    ; preds = %bb.t, %bb.s
  %i.cf = phi i32 [ %i.ce, %bb.t ], [ 0, %bb.s ]  ; 6 uses
  %i.cg = add nsw i32 %i.bw, -157
  %or.cond45.1.i = icmp ult i32 %i.cg, -146
  br i1 %or.cond45.1.i, label %intel_pll_is_valid.exit.thread.1.i, label %bb.u

bb.u:                                             ; preds = %vlv_calc_dpll_params.exit.1.i
  %i.ch = load i64, ptr %i.o, align 8             ; 3 uses
  %i.ci = and i64 %i.ch, 36642492416
  %or.cond63.i.not.1.i = icmp eq i64 %i.ci, 0
  br i1 %or.cond63.i.not.1.i, label %intel_pll_is_valid.exit.thread.1.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cj = and i64 %i.ch, 36642488320
  %or.cond67.i.1.i = icmp eq i64 %i.cj, 0
  br i1 %or.cond67.i.1.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ck = add i32 %i.ca, -4000000
  %or.cond53.1.i = icmp ult i32 %i.ck, 2000001
  %5 = icmp sgt i32 %i.cf, 24999
  %or.cond55.not61.1.i = select i1 %or.cond53.1.i, i1 %5, i1 false
  %i.cl = icmp samesign ult i32 %i.cf, 270001
  %or.cond59.1.i = select i1 %or.cond55.not61.1.i, i1 %i.cl, i1 false
  br i1 %or.cond59.1.i, label %bb.y, label %intel_pll_is_valid.exit.thread.1.i

bb.x:                                             ; preds = %bb.v
  %.pn.1.fr.off.i = add i32 %.pn.1.fr.i, 299999
  %i.cm = icmp ult i32 %.pn.1.fr.off.i, 599999
  %6 = icmp sgt i32 %i.ca, 3999999
  %7 = and i1 %i.cm, %6
  %or.cond50.not66.1.i = and i1 %i.w, %7
  %i.cn = icmp samesign ult i32 %i.ca, 6000001
  %or.cond52.not64.1.i = select i1 %or.cond50.not66.1.i, i1 %i.cn, i1 false
  %.old54.1.i = icmp sgt i32 %i.cf, 24999
  %or.cond56.not62.1.i = select i1 %or.cond52.not64.1.i, i1 %.old54.1.i, i1 false
  %i.co = icmp samesign ult i32 %i.cf, 270001
  %or.cond58.1.i = select i1 %or.cond56.not62.1.i, i1 %i.co, i1 false
  br i1 %or.cond58.1.i, label %bb.y, label %intel_pll_is_valid.exit.thread.1.i

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cp = and i64 %i.ch, 134217728
  %.not.i.1.i = icmp eq i64 %i.cp, 0
  br i1 %.not.i.1.i, label %bb.z, label %.split.1.i

.split.1.i:                                       ; preds = %bb.y
  %i.cq = load i32, ptr %i.p, align 4
  %i.cr = icmp sgt i32 %i.t, %i.cq
  br i1 %i.cr, label %vlv_PLL_is_optimal.exit.thread.1.i, label %intel_pll_is_valid.exit.thread.1.i

bb.z:                                             ; preds = %bb.y
  br i1 %.not30.i.i, label %bb.ab, label %.critedge.i.1.i, !prof !14

.critedge.i.1.i:                                  ; preds = %bb.z
  %i.cs = sub i32 %i.k, %i.cf
  %i.ct = tail call i32 @llvm.abs.i32(i32 %i.cs, i1 false)
  %i.cu = sext i32 %i.ct to i64
  %i.cv = mul nsw i64 %i.cu, 1000000
  %i.cw = udiv i64 %i.cv, %i.q
  %i.cx = trunc i64 %i.cw to i32                  ; 3 uses
  %i.cy = icmp ult i32 %i.cx, 100
  br i1 %i.cy, label %bb.aa, label %vlv_PLL_is_optimal.exit.1.i

bb.aa:                                            ; preds = %.critedge.i.1.i
  %i.cz = load i32, ptr %i.p, align 4
  %i.da = icmp sgt i32 %i.t, %i.cz
  br i1 %i.da, label %vlv_PLL_is_optimal.exit.thread.1.i, label %vlv_PLL_is_optimal.exit.1.i

vlv_PLL_is_optimal.exit.1.i:                      ; preds = %bb.aa, %.critedge.i.1.i
  %i.db = add i32 %i.cx, 10
  %i.dc = icmp ult i32 %i.db, %.4.i
  br i1 %i.dc, label %vlv_PLL_is_optimal.exit.thread.1.i, label %intel_pll_is_valid.exit.thread.1.i

vlv_PLL_is_optimal.exit.thread.1.i:               ; preds = %vlv_PLL_is_optimal.exit.1.i, %bb.aa, %.split.1.i
  %.03438.1.i = phi i32 [ 0, %.split.1.i ], [ %i.cx, %vlv_PLL_is_optimal.exit.1.i ], [ 0, %bb.aa ]
  store i32 %storemerge104.i, ptr %i.l, align 4
  store i32 3, ptr %.sroa.9.0..sroa_idx.i, align 8
  store i32 %i.bw, ptr %.sroa.14.0..sroa_idx.i, align 4
  store i32 %storemerge48100.i, ptr %.sroa.17.0..sroa_idx.i, align 8
  store i32 %storemerge4984.i, ptr %.sroa.22.0..sroa_idx.i, align 4
  store i32 %i.cf, ptr %.sroa.25.0..sroa_idx.i, align 8
  store i32 %i.ca, ptr %.sroa.28.0..sroa_idx.i, align 4
  store i32 %i.bx, ptr %.sroa.30.0..sroa_idx.i, align 8
  store i32 %i.t, ptr %i.p, align 4
  br label %intel_pll_is_valid.exit.thread.1.i

bb.ab:                                            ; preds = %bb.z
  %i.dd = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i.i.1.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.1.i, label %__drm_to_dev.exit.i.1.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.de = getelementptr i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8
  br label %__drm_to_dev.exit.i.1.i

__drm_to_dev.exit.i.1.i:                          ; preds = %bb.ac, %bb.ab
  %i.dg = phi ptr [ %i.df, %bb.ac ], [ null, %bb.ab ]
  %i.dh = tail call ptr @dev_driver_string(ptr noundef %i.dg) #12 ; 0 uses
  %i.di = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.3, i32 838, i32 2323, i64 16) #14, !srcloc !15
  %i.dj = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i34.i.1.i = icmp eq ptr %i.dj, null
  br i1 %.not.i34.i.1.i, label %__drm_to_dev.exit35.i.1.i, label %bb.ad

bb.ad:                                            ; preds = %__drm_to_dev.exit.i.1.i
  %i.dk = getelementptr i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8
  br label %__drm_to_dev.exit35.i.1.i

__drm_to_dev.exit35.i.1.i:                        ; preds = %bb.ad, %__drm_to_dev.exit.i.1.i
  %i.dm = phi ptr [ %i.dl, %bb.ad ], [ null, %__drm_to_dev.exit.i.1.i ]
  %i.dn = tail call ptr @dev_driver_string(ptr noundef %i.dm) #12
  %i.do = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i36.i.1.i = icmp eq ptr %i.do, null
  br i1 %.not.i36.i.1.i, label %__drm_to_dev.exit37.i.1.i, label %bb.ae

bb.ae:                                            ; preds = %__drm_to_dev.exit35.i.1.i
  %i.dp = getelementptr i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8
  br label %__drm_to_dev.exit37.i.1.i

__drm_to_dev.exit37.i.1.i:                        ; preds = %bb.ae, %__drm_to_dev.exit35.i.1.i
  %i.dr = phi ptr [ %i.dq, %bb.ae ], [ null, %__drm_to_dev.exit35.i.1.i ] ; 2 uses
  %i.ds = getelementptr i8, ptr %i.dr, i64 80
  %i.dt = load ptr, ptr %i.ds, align 8            ; 2 uses
  %.not.i38.i.1.i = icmp eq ptr %i.dt, null
  br i1 %.not.i38.i.1.i, label %bb.af, label %vlv_PLL_is_optimal.exit.thread39.1.i

bb.af:                                            ; preds = %__drm_to_dev.exit37.i.1.i
  %.val.i40.i.1.i = load ptr, ptr %i.dr, align 8
  br label %vlv_PLL_is_optimal.exit.thread39.1.i

vlv_PLL_is_optimal.exit.thread39.1.i:             ; preds = %bb.af, %__drm_to_dev.exit37.i.1.i
  %.0.i39.i.1.i = phi ptr [ %.val.i40.i.1.i, %bb.af ], [ %i.dt, %__drm_to_dev.exit37.i.1.i ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.di, ptr noundef %i.dn, ptr noundef %.0.i39.i.1.i, ptr noundef nonnull @.str.8) #12
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !16
  br label %intel_pll_is_valid.exit.thread.1.i

intel_pll_is_valid.exit.thread.1.i:               ; preds = %vlv_PLL_is_optimal.exit.thread39.1.i, %vlv_PLL_is_optimal.exit.thread.1.i, %vlv_PLL_is_optimal.exit.1.i, %.split.1.i, %bb.x, %bb.w, %bb.u, %vlv_calc_dpll_params.exit.1.i
  %.445.1.i = phi i1 [ true, %vlv_PLL_is_optimal.exit.thread.1.i ], [ %.445.i, %bb.w ], [ %.445.i, %vlv_PLL_is_optimal.exit.1.i ], [ %.445.i, %.split.1.i ], [ %.445.i, %vlv_PLL_is_optimal.exit.thread39.1.i ], [ %.445.i, %bb.u ], [ %.445.i, %vlv_calc_dpll_params.exit.1.i ], [ %.445.i, %bb.x ] ; 4 uses
  %.4.1.i = phi i32 [ %.03438.1.i, %vlv_PLL_is_optimal.exit.thread.1.i ], [ %.4.i, %bb.w ], [ %.4.i, %vlv_PLL_is_optimal.exit.1.i ], [ %.4.i, %.split.1.i ], [ %.4.i, %vlv_PLL_is_optimal.exit.thread39.1.i ], [ %.4.i, %bb.u ], [ %.4.i, %vlv_calc_dpll_params.exit.1.i ], [ %.4.i, %bb.x ] ; 3 uses
  %i.du = icmp samesign ugt i32 %storemerge4984.i, 10
  %.neg.i = select i1 %i.du, i32 -2, i32 -1
  %i.dv = add nsw i32 %.neg.i, %storemerge4984.i  ; 2 uses
  %i.dw = icmp sgt i32 %i.dv, 1
  br i1 %i.dw, label %bb.e, label %.split96.us.i, !llvm.loop !48

.split96.us.i:                                    ; preds = %intel_pll_is_valid.exit.thread.1.i
  %i.dx = add nsw i32 %storemerge48100.i, -1
  %i.dy = icmp samesign ugt i32 %storemerge48100.i, 2
  br i1 %i.dy, label %.split74.preheader.i, label %bb.ag, !llvm.loop !49

bb.ag:                                            ; preds = %.split96.us.i
  %i.dz = add nuw nsw i32 %storemerge104.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.dz, 6
  br i1 %exitcond.not.i, label %vlv_find_best_dpll.exit, label %.preheader70.i, !llvm.loop !50

vlv_find_best_dpll.exit:                          ; preds = %bb.ag
  br i1 %.445.1.i, label %bb.ah, label %bb.as

bb.ah:                                            ; preds = %vlv_find_best_dpll.exit, %bb.a
  %i.ea = getelementptr i8, ptr %i.f, i64 900
  %i.eb = getelementptr i8, ptr %i.f, i64 904
  %i.ec = load i32, ptr %i.eb, align 8
  %i.ed = getelementptr i8, ptr %i.f, i64 908
  %i.ee = load i32, ptr %i.ed, align 4
  %i.ef = mul i32 %i.ee, %i.ec                    ; 2 uses
  %i.eg = getelementptr i8, ptr %i.f, i64 928
  store i32 %i.ef, ptr %i.eg, align 8
  %i.eh = getelementptr i8, ptr %i.f, i64 912
  %i.ei = load i32, ptr %i.eh, align 8
  %i.ej = getelementptr i8, ptr %i.f, i64 916
  %i.ek = load i32, ptr %i.ej, align 4
  %i.el = mul i32 %i.ek, %i.ei                    ; 2 uses
  %i.em = mul i32 %i.el, 5                        ; 5 uses
  %i.en = getelementptr i8, ptr %i.f, i64 932
  store i32 %i.em, ptr %i.en, align 4
  %i.eo = load i32, ptr %i.ea, align 4            ; 5 uses
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eq = mul i32 %i.ef, 100000                   ; 2 uses
  %i.er = icmp sgt i32 %i.eq, 0
  %i.es = icmp slt i32 %i.eo, 1
  %i.et = xor i1 %i.er, %i.es
  br i1 %i.et, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.eu = sdiv i32 %i.eo, 2
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %.neg.i19 = sdiv i32 %i.eo, -2
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn36.i = phi i32 [ %i.eu, %bb.aj ], [ %.neg.i19, %bb.ak ]
  %.pn.i20 = add i32 %.pn36.i, %i.eq
  %i.ev = sdiv i32 %.pn.i20, %i.eo
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ah
  %i.ew = phi i32 [ %i.ev, %bb.al ], [ 0, %bb.ah ] ; 3 uses
  %i.ex = getelementptr i8, ptr %i.f, i64 924
  store i32 %i.ew, ptr %i.ex, align 4
  %i.ey = icmp eq i32 %i.el, 0
  br i1 %i.ey, label %vlv_calc_dpll_params.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ez = icmp sgt i32 %i.ew, 0
  %i.fa = icmp slt i32 %i.em, 1
  %i.fb = xor i1 %i.fa, %i.ez
  br i1 %i.fb, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fc = sdiv i32 %i.em, 2
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %.neg34.i = sdiv i32 %i.em, -2
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn37.i = phi i32 [ %i.fc, %bb.ao ], [ %.neg34.i, %bb.ap ]
  %.pn35.i = add i32 %.pn37.i, %i.ew
  %i.fd = sdiv i32 %.pn35.i, %i.em
  br label %vlv_calc_dpll_params.exit

vlv_calc_dpll_params.exit:                        ; preds = %bb.am, %bb.aq
  %i.fe = phi i32 [ %i.fd, %bb.aq ], [ 0, %bb.am ] ; 2 uses
  %i.ff = getelementptr i8, ptr %i.f, i64 920
  store i32 %i.fe, ptr %i.ff, align 8
  %i.fg = getelementptr i8, ptr %i.f, i64 944
  %.val.i = load ptr, ptr %i.f, align 8
  %i.fh = getelementptr i8, ptr %i.f, i64 888
  %.val5.i = load i32, ptr %i.fh, align 8
  %i.fi = getelementptr i8, ptr %.val.i, i64 1664
end_hunk_0
