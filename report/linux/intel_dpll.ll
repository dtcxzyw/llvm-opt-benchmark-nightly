Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_dpll?download=true
inline.NumInlined: 218
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@i9xx_crtc_compute_clock:bb.a
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.e, %bb.f
  %i.s = phi ptr [ %i.r, %bb.f ], [ null, %bb.e ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.s, i32 noundef 2, ptr noundef nonnull @.str.9, i32 noundef %i.o) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %__drm_to_dev.exit
  %.025 = phi ptr [ @intel_limits_i9xx_lvds, %bb.d ], [ @intel_limits_i9xx_lvds, %__drm_to_dev.exit ], [ @intel_limits_i9xx_sdvo, %bb.c ]
  %.1 = phi i32 [ 96000, %bb.d ], [ %i.o, %__drm_to_dev.exit ], [ 96000, %bb.c ] ; 2 uses
  %i.t = getelementptr i8, ptr %i.j, i64 896
  %i.u = load i8, ptr %i.t, align 8, !range !23, !noundef !24
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr i8, ptr %i.j, i64 1320
  %i.x = load i32, ptr %i.w, align 8
  %i.y = getelementptr i8, ptr %i.j, i64 900
  %i.z = tail call fastcc zeroext i1 @i9xx_find_best_dpll(ptr noundef nonnull %.025, ptr noundef %i.j, i32 noundef %i.x, i32 noundef %.1, ptr noundef %i.y) #15
  br i1 %i.z, label %bb.i, label %bb.t

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aa = getelementptr i8, ptr %i.j, i64 900     ; 3 uses
  %i.ab = getelementptr i8, ptr %i.j, i64 904
  %.val.i = load i32, ptr %i.ab, align 8
  %i.ac = getelementptr i8, ptr %i.j, i64 908
  %.val35.i = load i32, ptr %i.ac, align 4
  %i.ad = mul i32 %.val.i, 5
  %i.ae = add i32 %.val35.i, 12
  %i.af = add i32 %i.ae, %i.ad                    ; 2 uses
  %i.ag = getelementptr i8, ptr %i.j, i64 928
  store i32 %i.af, ptr %i.ag, align 8
  %i.ah = getelementptr i8, ptr %i.j, i64 912
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = getelementptr i8, ptr %i.j, i64 916
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = mul i32 %i.ak, %i.ai                    ; 6 uses
  %i.am = getelementptr i8, ptr %i.j, i64 932
  store i32 %i.al, ptr %i.am, align 4
  %i.an = load i32, ptr %i.aa, align 4
  %i.ao = add i32 %i.an, 2                        ; 5 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = mul i32 %i.af, %.1                      ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  %i.as = icmp slt i32 %i.ao, 1
  %i.at = xor i1 %i.ar, %i.as
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.au = sdiv i32 %i.ao, 2
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %.neg.i = sdiv i32 %i.ao, -2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn36.i = phi i32 [ %i.au, %bb.k ], [ %.neg.i, %bb.l ]
  %.pn.i = add i32 %.pn36.i, %i.aq
  %i.av = sdiv i32 %.pn.i, %i.ao
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.i
  %i.aw = phi i32 [ %i.av, %bb.m ], [ 0, %bb.i ]  ; 3 uses
  %i.ax = getelementptr i8, ptr %i.j, i64 924
  store i32 %i.aw, ptr %i.ax, align 4
  %i.ay = icmp eq i32 %i.al, 0
  br i1 %i.ay, label %i9xx_calc_dpll_params.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = icmp sgt i32 %i.aw, 0
  %i.ba = icmp slt i32 %i.al, 1
  %i.bb = xor i1 %i.ba, %i.az
  br i1 %i.bb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = sdiv i32 %i.al, 2
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %.neg33.i = sdiv i32 %i.al, -2
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn37.i = phi i32 [ %i.bc, %bb.p ], [ %.neg33.i, %bb.q ]
  %.pn34.i = add i32 %.pn37.i, %i.aw
  %i.bd = sdiv i32 %.pn34.i, %i.al
  br label %i9xx_calc_dpll_params.exit

i9xx_calc_dpll_params.exit:                       ; preds = %bb.n, %bb.r
  %i.be = phi i32 [ %i.bd, %bb.r ], [ 0, %bb.n ]
  %i.bf = getelementptr i8, ptr %i.j, i64 920     ; 2 uses
  store i32 %i.be, ptr %i.bf, align 8
  tail call fastcc void @i9xx_compute_dpll(ptr noundef %i.j, ptr noundef %i.aa, ptr noundef %i.aa) #15, !srcloc !66
  %i.bg = load i32, ptr %i.bf, align 8
  %i.bh = getelementptr i8, ptr %i.j, i64 1320
  store i32 %i.bg, ptr %i.bh, align 8
  %.val = load i32, ptr %i.k, align 8
  %i.bi = and i32 %.val, 32
  %.not32 = icmp eq i32 %i.bi, 0
  br i1 %.not32, label %bb.s, label %bb.t

bb.s:                                             ; preds = %i9xx_calc_dpll_params.exit
  %i.bj = tail call i32 @intel_crtc_dotclock(ptr noundef %i.j) #12
  %i.bk = getelementptr i8, ptr %i.j, i64 644
  store i32 %i.bj, ptr %i.bk, align 4
  br label %bb.t

bb.t:                                             ; preds = %i9xx_calc_dpll_params.exit, %bb.s, %bb.h
  %.026 = phi i32 [ -22, %bb.h ], [ 0, %bb.s ], [ 0, %i9xx_calc_dpll_params.exit ]
  ret i32 %.026
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc zeroext i1 @i9xx_find_best_dpll(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 36)) %4) unnamed_addr #2 align 16 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(36) %4, i8 0, i64 36, i1 false)
  %i.e = load ptr, ptr %1, align 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @__drm_to_display(ptr noundef nonnull %i.f) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = phi ptr [ %i.g, %bb.d ], [ null, %bb.c ]
  %i.i = getelementptr i8, ptr %1, i64 888
  %.val.i = load i32, ptr %i.i, align 8
  %i.j = and i32 %.val.i, 16
  %.not11.i = icmp eq i32 %i.j, 0
  br i1 %.not11.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call zeroext i1 @intel_is_dual_link_lvds(ptr noundef %i.h) #12
  %..i = select i1 %i.k, i64 72, i64 68
  br label %i9xx_select_p2_div.exit

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %0, i64 64
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp slt i32 %2, %i.m
  %.13.i = select i1 %i.n, i64 68, i64 72
  br label %i9xx_select_p2_div.exit

i9xx_select_p2_div.exit:                          ; preds = %bb.f, %bb.g
  %.sink.i = phi i64 [ %..i, %bb.f ], [ %.13.i, %bb.g ]
  %i.o = getelementptr i8, ptr %0, i64 %.sink.i
  %.0.i = load i32, ptr %i.o, align 4             ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 36         ; 3 uses
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %.not3451 = icmp sgt i32 %i.q, %i.s
  br i1 %.not3451, label %._crit_edge56, label %.lr.ph55

.lr.ph55:                                         ; preds = %i9xx_select_p2_div.exit
  %i.t = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 44         ; 3 uses
  %i.v = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.w = getelementptr i8, ptr %0, i64 20         ; 3 uses
  %i.x = getelementptr i8, ptr %0, i64 56         ; 3 uses
  %i.y = getelementptr i8, ptr %0, i64 60         ; 2 uses
  %i.z = getelementptr i8, ptr %i.d, i64 8
  %i.aa = getelementptr i8, ptr %0, i64 48
  %i.ab = getelementptr i8, ptr %0, i64 52
  %i.ac = getelementptr i8, ptr %0, i64 24
  %i.ad = getelementptr i8, ptr %0, i64 28
  %i.ae = getelementptr i8, ptr %0, i64 8
  %i.af = getelementptr i8, ptr %0, i64 12
  %i.ag = getelementptr i8, ptr %0, i64 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 28
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre = load i32, ptr %i.u, align 4             ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph55, %._crit_edge47
  %5 = phi i32 [ %i.s, %.lr.ph55 ], [ %8, %._crit_edge47 ] ; 2 uses
  %i.ah = phi i32 [ %.pre, %.lr.ph55 ], [ %i.dk, %._crit_edge47 ] ; 5 uses
  %i.ai = phi i32 [ %.pre, %.lr.ph55 ], [ %i.dl, %._crit_edge47 ] ; 2 uses
  %i.aj = phi i32 [ %.pre, %.lr.ph55 ], [ %i.dm, %._crit_edge47 ] ; 2 uses
  %.054 = phi i32 [ %2, %.lr.ph55 ], [ %.1.lcssa, %._crit_edge47 ] ; 3 uses
  %storemerge52 = phi i32 [ %i.q, %.lr.ph55 ], [ %i.dn, %._crit_edge47 ] ; 7 uses
  %i.ak = load i32, ptr %i.t, align 4             ; 3 uses
  %.not3639 = icmp sle i32 %i.ak, %i.aj
  %.not3740 = icmp slt i32 %i.ak, %storemerge52
  %or.cond41 = and i1 %.not3740, %.not3639
  br i1 %or.cond41, label %.lr.ph46, label %._crit_edge47

.lr.ph46:                                         ; preds = %bb.h
  %i.al = mul i32 %storemerge52, 5
  %invariant.op49 = add i32 %i.al, 12
  %i.am = load i32, ptr %i.v, align 4
  %i.an = load i32, ptr %i.w, align 4             ; 3 uses
  %i.ao = icmp sgt i32 %i.am, %i.an
  br i1 %i.ao, label %._crit_edge47, label %.lr.ph46.split

.lr.ph46.split:                                   ; preds = %.lr.ph46, %._crit_edge37
  %6 = phi i32 [ %7, %._crit_edge37 ], [ %i.ah, %.lr.ph46 ] ; 2 uses
  %i.ap = phi i32 [ %i.dg, %._crit_edge37 ], [ %i.ai, %.lr.ph46 ] ; 2 uses
  %i.aq = phi i32 [ %i.dh, %._crit_edge37 ], [ %i.an, %.lr.ph46 ] ; 3 uses
  %i.ar = phi i32 [ %i.di, %._crit_edge37 ], [ %i.an, %.lr.ph46 ] ; 3 uses
  %.144 = phi i32 [ %.2.lcssa, %._crit_edge37 ], [ %.054, %.lr.ph46 ] ; 3 uses
  %storemerge3542 = phi i32 [ %i.dj, %._crit_edge37 ], [ %i.ak, %.lr.ph46 ] ; 6 uses
  %i.as = load i32, ptr %i.v, align 4             ; 2 uses
  %.not3932 = icmp sgt i32 %i.as, %i.ar
  br i1 %.not3932, label %._crit_edge37, label %.lr.ph36

.lr.ph36:                                         ; preds = %.lr.ph46.split
  %.reass.reass = add i32 %storemerge3542, %invariant.op49 ; 4 uses
  %i.at = mul i32 %.reass.reass, %3               ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  %i.av = load i32, ptr %i.x, align 4
  %i.aw = load i32, ptr %i.y, align 4             ; 3 uses
  %i.ax = icmp sgt i32 %i.av, %i.aw
  br i1 %i.ax, label %._crit_edge37, label %.lr.ph36.split

.lr.ph36.split:                                   ; preds = %.lr.ph36, %._crit_edge
  %i.ay = phi i32 [ %i.dc, %._crit_edge ], [ %i.aq, %.lr.ph36 ]
  %i.az = phi i32 [ %i.dd, %._crit_edge ], [ %i.aw, %.lr.ph36 ] ; 2 uses
  %i.ba = phi i32 [ %i.de, %._crit_edge ], [ %i.aw, %.lr.ph36 ] ; 2 uses
  %.234 = phi i32 [ %.3.lcssa, %._crit_edge ], [ %.144, %.lr.ph36 ] ; 2 uses
  %storemerge3833 = phi i32 [ %i.df, %._crit_edge ], [ %i.as, %.lr.ph36 ] ; 5 uses
  %i.bb = load i32, ptr %i.x, align 4             ; 2 uses
  %.not4129 = icmp sgt i32 %i.bb, %i.ba
  br i1 %.not4129, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph36.split
  %i.bc = add i32 %storemerge3833, 2              ; 4 uses
  %i.bd = icmp eq i32 %i.bc, 0
  %i.be = icmp slt i32 %i.bc, 1
  %i.bf = xor i1 %i.au, %i.be
  %i.bg = freeze i1 %i.bf
  %..neg.i.v = select i1 %i.bg, i32 2, i32 -2
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %intel_pll_is_valid.exit.thread
  %i.bh = phi i32 [ %i.az, %.lr.ph ], [ %i.da, %intel_pll_is_valid.exit.thread ] ; 16 uses
  %.331 = phi i32 [ %.234, %.lr.ph ], [ %.5, %intel_pll_is_valid.exit.thread ] ; 17 uses
  %storemerge4030 = phi i32 [ %i.bb, %.lr.ph ], [ %i.db, %intel_pll_is_valid.exit.thread ] ; 4 uses
  %i.bi = mul i32 %storemerge4030, %.0.i          ; 8 uses
  br i1 %i.bd, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %..neg.i = sdiv i32 %i.bc, %..neg.i.v
  %.pn.i = add i32 %..neg.i, %i.at
  %i.bj = sdiv i32 %.pn.i, %i.bc
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bk = phi i32 [ %i.bj, %bb.j ], [ 0, %bb.i ]  ; 5 uses
  %i.bl = icmp eq i32 %i.bi, 0
  br i1 %i.bl, label %i9xx_calc_dpll_params.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = icmp sgt i32 %i.bk, 0
  %i.bn = icmp slt i32 %i.bi, 1
  %i.bo = xor i1 %i.bn, %i.bm
  br i1 %i.bo, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bp = sdiv i32 %i.bi, 2
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %.neg33.i = sdiv i32 %i.bi, -2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn37.i = phi i32 [ %i.bp, %bb.m ], [ %.neg33.i, %bb.n ]
  %.pn34.i = add i32 %.pn37.i, %i.bk
  %i.bq = sdiv i32 %.pn34.i, %i.bi
  br label %i9xx_calc_dpll_params.exit

i9xx_calc_dpll_params.exit:                       ; preds = %bb.k, %bb.o
  %i.br = phi i32 [ %i.bq, %bb.o ], [ 0, %bb.k ]  ; 4 uses
  %i.bs = load i32, ptr %i.v, align 4
  %i.bt = icmp slt i32 %storemerge3833, %i.bs
  br i1 %i.bt, label %intel_pll_is_valid.exit.thread, label %bb.p

bb.p:                                             ; preds = %i9xx_calc_dpll_params.exit
  %i.bu = load i32, ptr %i.w, align 4
  %i.bv = icmp slt i32 %i.bu, %storemerge3833
  br i1 %i.bv, label %intel_pll_is_valid.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bw = load i32, ptr %i.x, align 4
  %i.bx = icmp slt i32 %storemerge4030, %i.bw
  br i1 %i.bx, label %intel_pll_is_valid.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.by = load i32, ptr %i.t, align 4
  %i.bz = icmp slt i32 %storemerge3542, %i.by
  br i1 %i.bz, label %intel_pll_is_valid.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ca = load i32, ptr %i.u, align 4
  %i.cb = icmp slt i32 %i.ca, %storemerge3542
  br i1 %i.cb, label %intel_pll_is_valid.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cc = load i32, ptr %i.p, align 4
  %i.cd = icmp slt i32 %storemerge52, %i.cc
  br i1 %i.cd, label %intel_pll_is_valid.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ce = load i32, ptr %i.r, align 4
  %i.cf = icmp slt i32 %i.ce, %storemerge52
  br i1 %i.cf, label %intel_pll_is_valid.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cg = load i64, ptr %i.z, align 8
  %i.ch = and i64 %i.cg, 36642488320
  %or.cond67.i = icmp eq i64 %i.ch, 0
  br i1 %or.cond67.i, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.ci = load i32, ptr %i.aa, align 4
  %i.cj = icmp slt i32 %i.bi, %i.ci
  br i1 %i.cj, label %intel_pll_is_valid.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ck = load i32, ptr %i.ab, align 4
  %i.cl = icmp slt i32 %i.ck, %i.bi
  br i1 %i.cl, label %intel_pll_is_valid.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = load i32, ptr %i.ac, align 4
  %i.cn = icmp slt i32 %.reass.reass, %i.cm
  br i1 %i.cn, label %intel_pll_is_valid.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.co = load i32, ptr %i.ad, align 4
  %i.cp = icmp slt i32 %i.co, %.reass.reass
  br i1 %i.cp, label %intel_pll_is_valid.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.v
  %i.cq = load i32, ptr %i.ae, align 4
  %i.cr = icmp slt i32 %i.bk, %i.cq
  br i1 %i.cr, label %intel_pll_is_valid.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cs = load i32, ptr %i.af, align 4
  %i.ct = icmp slt i32 %i.cs, %i.bk
  br i1 %i.ct, label %intel_pll_is_valid.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cu = load i32, ptr %0, align 4
  %i.cv = icmp slt i32 %i.br, %i.cu
  br i1 %i.cv, label %intel_pll_is_valid.exit.thread, label %intel_pll_is_valid.exit

intel_pll_is_valid.exit:                          ; preds = %bb.ac
  %i.cw = load i32, ptr %i.ag, align 4
  %.not28 = icmp slt i32 %i.cw, %i.br
  br i1 %.not28, label %intel_pll_is_valid.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %intel_pll_is_valid.exit
  %i.cx = sub i32 %i.br, %2
  %i.cy = tail call i32 @llvm.abs.i32(i32 %i.cx, i1 false) ; 2 uses
  %i.cz = icmp slt i32 %i.cy, %.331
  br i1 %i.cz, label %bb.ae, label %intel_pll_is_valid.exit.thread

bb.ae:                                            ; preds = %bb.ad
  store i32 %storemerge3833, ptr %4, align 4
  store i32 %storemerge52, ptr %.sroa.8.0..sroa_idx, align 4
  store i32 %storemerge3542, ptr %.sroa.13.0..sroa_idx, align 4
  store i32 %storemerge4030, ptr %.sroa.17.0..sroa_idx, align 4
  store i32 %.0.i, ptr %.sroa.21.0..sroa_idx, align 4
  store i32 %i.br, ptr %.sroa.23.0..sroa_idx, align 4
  store i32 %i.bk, ptr %.sroa.26.0..sroa_idx, align 4
  store i32 %.reass.reass, ptr %.sroa.28.0..sroa_idx, align 4
  store i32 %i.bi, ptr %.sroa.30.0..sroa_idx, align 4
  %.pre60 = load i32, ptr %i.y, align 4
  br label %intel_pll_is_valid.exit.thread

intel_pll_is_valid.exit.thread:                   ; preds = %bb.z, %bb.x, %bb.u, %bb.s, %bb.p, %bb.w, %bb.ab, %bb.ac, %bb.aa, %bb.y, %bb.r, %bb.q, %i9xx_calc_dpll_params.exit, %bb.t, %bb.ad, %bb.ae, %intel_pll_is_valid.exit
  %i.da = phi i32 [ %i.bh, %intel_pll_is_valid.exit ], [ %.pre60, %bb.ae ], [ %i.bh, %bb.ad ], [ %i.bh, %bb.t ], [ %i.bh, %i9xx_calc_dpll_params.exit ], [ %i.bh, %bb.q ], [ %i.bh, %bb.r ], [ %i.bh, %bb.y ], [ %i.bh, %bb.aa ], [ %i.bh, %bb.ac ], [ %i.bh, %bb.ab ], [ %i.bh, %bb.w ], [ %i.bh, %bb.p ], [ %i.bh, %bb.s ], [ %i.bh, %bb.u ], [ %i.bh, %bb.x ], [ %i.bh, %bb.z ] ; 4 uses
  %.5 = phi i32 [ %.331, %intel_pll_is_valid.exit ], [ %i.cy, %bb.ae ], [ %.331, %bb.ad ], [ %.331, %bb.t ], [ %.331, %i9xx_calc_dpll_params.exit ], [ %.331, %bb.q ], [ %.331, %bb.r ], [ %.331, %bb.y ], [ %.331, %bb.aa ], [ %.331, %bb.ac ], [ %.331, %bb.ab ], [ %.331, %bb.w ], [ %.331, %bb.p ], [ %.331, %bb.s ], [ %.331, %bb.u ], [ %.331, %bb.x ], [ %.331, %bb.z ] ; 2 uses
  %i.db = add i32 %storemerge4030, 1              ; 2 uses
  %.not41 = icmp sgt i32 %i.db, %i.da
  br i1 %.not41, label %._crit_edge.loopexit, label %bb.i, !llvm.loop !67

._crit_edge.loopexit:                             ; preds = %intel_pll_is_valid.exit.thread
  %.pre61 = load i32, ptr %i.w, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph36.split
  %i.dc = phi i32 [ %i.ay, %.lr.ph36.split ], [ %.pre61, %._crit_edge.loopexit ] ; 4 uses
  %i.dd = phi i32 [ %i.az, %.lr.ph36.split ], [ %i.da, %._crit_edge.loopexit ]
  %i.de = phi i32 [ %i.ba, %.lr.ph36.split ], [ %i.da, %._crit_edge.loopexit ]
  %.3.lcssa = phi i32 [ %.234, %.lr.ph36.split ], [ %.5, %._crit_edge.loopexit ] ; 2 uses
  %i.df = add i32 %storemerge3833, 1              ; 2 uses
  %.not39 = icmp sgt i32 %i.df, %i.dc
  br i1 %.not39, label %._crit_edge37.loopexit58, label %.lr.ph36.split, !llvm.loop !68

._crit_edge37.loopexit58:                         ; preds = %._crit_edge
  %.pre62 = load i32, ptr %i.u, align 4           ; 2 uses
  br label %._crit_edge37

._crit_edge37:                                    ; preds = %.lr.ph36, %._crit_edge37.loopexit58, %.lr.ph46.split
  %7 = phi i32 [ %6, %.lr.ph46.split ], [ %.pre62, %._crit_edge37.loopexit58 ], [ %6, %.lr.ph36 ] ; 2 uses
  %i.dg = phi i32 [ %i.ap, %.lr.ph46.split ], [ %.pre62, %._crit_edge37.loopexit58 ], [ %i.ap, %.lr.ph36 ] ; 4 uses
  %i.dh = phi i32 [ %i.aq, %.lr.ph46.split ], [ %i.dc, %._crit_edge37.loopexit58 ], [ %i.aq, %.lr.ph36 ]
  %i.di = phi i32 [ %i.ar, %.lr.ph46.split ], [ %i.dc, %._crit_edge37.loopexit58 ], [ %i.ar, %.lr.ph36 ]
  %.2.lcssa = phi i32 [ %.144, %.lr.ph46.split ], [ %.3.lcssa, %._crit_edge37.loopexit58 ], [ %.144, %.lr.ph36 ] ; 2 uses
  %i.dj = add nsw i32 %storemerge3542, 1          ; 2 uses
  %.not36 = icmp slt i32 %storemerge3542, %i.dg
  %.not37 = icmp slt i32 %i.dj, %storemerge52
  %or.cond = and i1 %.not37, %.not36
  br i1 %or.cond, label %.lr.ph46.split, label %._crit_edge47.loopexit59, !llvm.loop !69

._crit_edge47.loopexit59:                         ; preds = %._crit_edge37
  %.pre63 = load i32, ptr %i.r, align 4
  br label %._crit_edge47

._crit_edge47:                                    ; preds = %.lr.ph46, %._crit_edge47.loopexit59, %bb.h
  %8 = phi i32 [ %5, %bb.h ], [ %.pre63, %._crit_edge47.loopexit59 ], [ %5, %.lr.ph46 ] ; 2 uses
  %i.dk = phi i32 [ %i.ah, %bb.h ], [ %7, %._crit_edge47.loopexit59 ], [ %i.ah, %.lr.ph46 ]
  %i.dl = phi i32 [ %i.ai, %bb.h ], [ %i.dg, %._crit_edge47.loopexit59 ], [ %i.ah, %.lr.ph46 ]
  %i.dm = phi i32 [ %i.aj, %bb.h ], [ %i.dg, %._crit_edge47.loopexit59 ], [ %i.ah, %.lr.ph46 ]
  %.1.lcssa = phi i32 [ %.054, %bb.h ], [ %.2.lcssa, %._crit_edge47.loopexit59 ], [ %.054, %.lr.ph46 ] ; 2 uses
  %i.dn = add i32 %storemerge52, 1                ; 2 uses
  %.not34 = icmp sgt i32 %i.dn, %8
  br i1 %.not34, label %._crit_edge56.loopexit, label %bb.h, !llvm.loop !70

._crit_edge56.loopexit:                           ; preds = %._crit_edge47
  %i.do = icmp ne i32 %.1.lcssa, %2
  br label %._crit_edge56

._crit_edge56:                                    ; preds = %._crit_edge56.loopexit, %i9xx_select_p2_div.exit
  %.0.lcssa = phi i1 [ false, %i9xx_select_p2_div.exit ], [ %i.do, %._crit_edge56.loopexit ]
  ret i1 %.0.lcssa
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -22, 1) i32 @i8xx_crtc_compute_clock(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 40
  %.val29 = load ptr, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %1, i64 136
  %.val30 = load i32, ptr %i.f, align 8
  %i.g = zext i32 %.val30 to i64
  %i.h = getelementptr [56 x i8], ptr %.val29, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8              ; 21 uses
  %i.k = getelementptr i8, ptr %i.j, i64 888      ; 2 uses
  %.val28 = load i32, ptr %i.k, align 8
  %i.l = zext i32 %.val28 to i64                  ; 2 uses
  %i.m = and i64 %i.l, 16
  %.not31 = icmp eq i64 %i.m, 0
  br i1 %.not31, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call zeroext i1 @intel_panel_use_ssc(ptr noundef %i.d) #12
  br i1 %i.n, label %bb.e, label %bb.h

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
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.u = and i64 %i.l, 4
  %.not32 = icmp eq i64 %i.u, 0
  %intel_limits_i8xx_dvo.intel_limits_i8xx_dac = select i1 %.not32, ptr @intel_limits_i8xx_dac, ptr @intel_limits_i8xx_dvo
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d, %__drm_to_dev.exit
  %.025 = phi ptr [ @intel_limits_i8xx_lvds, %bb.d ], [ %intel_limits_i8xx_dvo.intel_limits_i8xx_dac, %bb.g ], [ @intel_limits_i8xx_lvds, %__drm_to_dev.exit ]
  %.1 = phi i32 [ 48000, %bb.d ], [ 48000, %bb.g ], [ %i.p, %__drm_to_dev.exit ] ; 2 uses
  %i.v = getelementptr i8, ptr %i.j, i64 896
  %i.w = load i8, ptr %i.v, align 8, !range !23, !noundef !24
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr i8, ptr %i.j, i64 1320
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = getelementptr i8, ptr %i.j, i64 900
  %i.ab = tail call fastcc zeroext i1 @i9xx_find_best_dpll(ptr noundef nonnull %.025, ptr noundef %i.j, i32 noundef %i.z, i32 noundef %.1, ptr noundef %i.aa) #15
  br i1 %i.ab, label %bb.j, label %bb.z

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ac = getelementptr i8, ptr %i.j, i64 900
  %i.ad = getelementptr i8, ptr %i.j, i64 904
  %.val.i = load i32, ptr %i.ad, align 8          ; 2 uses
  %i.ae = getelementptr i8, ptr %i.j, i64 908
  %.val35.i = load i32, ptr %i.ae, align 4        ; 2 uses
  %i.af = mul i32 %.val.i, 5
  %i.ag = add i32 %.val35.i, 12
  %i.ah = add i32 %i.ag, %i.af                    ; 2 uses
  %i.ai = getelementptr i8, ptr %i.j, i64 928
  store i32 %i.ah, ptr %i.ai, align 8
  %i.aj = getelementptr i8, ptr %i.j, i64 912     ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr i8, ptr %i.j, i64 916     ; 2 uses
  %i.am = load i32, ptr %i.al, align 4
  %i.an = mul i32 %i.am, %i.ak                    ; 6 uses
  %i.ao = getelementptr i8, ptr %i.j, i64 932
  store i32 %i.an, ptr %i.ao, align 4
  %i.ap = load i32, ptr %i.ac, align 4            ; 2 uses
  %i.aq = add i32 %i.ap, 2                        ; 5 uses
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = mul i32 %i.ah, %.1                      ; 2 uses
  %i.at = icmp sgt i32 %i.as, 0
  %i.au = icmp slt i32 %i.aq, 1
  %i.av = xor i1 %i.at, %i.au
  br i1 %i.av, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aw = sdiv i32 %i.aq, 2
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %.neg.i = sdiv i32 %i.aq, -2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn36.i = phi i32 [ %i.aw, %bb.l ], [ %.neg.i, %bb.m ]
  %.pn.i = add i32 %.pn36.i, %i.as
  %i.ax = sdiv i32 %.pn.i, %i.aq
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j
  %i.ay = phi i32 [ %i.ax, %bb.n ], [ 0, %bb.j ]  ; 3 uses
  %i.az = getelementptr i8, ptr %i.j, i64 924
  store i32 %i.ay, ptr %i.az, align 4
  %i.ba = icmp eq i32 %i.an, 0
  br i1 %i.ba, label %i9xx_calc_dpll_params.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = icmp sgt i32 %i.ay, 0
  %i.bc = icmp slt i32 %i.an, 1
  %i.bd = xor i1 %i.bc, %i.bb
  br i1 %i.bd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.be = sdiv i32 %i.an, 2
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %.neg33.i = sdiv i32 %i.an, -2
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn37.i = phi i32 [ %i.be, %bb.q ], [ %.neg33.i, %bb.r ]
  %.pn34.i = add i32 %.pn37.i, %i.ay
  %i.bf = sdiv i32 %.pn34.i, %i.an
  br label %i9xx_calc_dpll_params.exit

i9xx_calc_dpll_params.exit:                       ; preds = %bb.o, %bb.s
  %i.bg = phi i32 [ %i.bf, %bb.s ], [ 0, %bb.o ]
  %i.bh = getelementptr i8, ptr %i.j, i64 920     ; 2 uses
  store i32 %i.bg, ptr %i.bh, align 8
  %i.bi = shl i32 %i.ap, 16
  %i.bj = shl i32 %.val.i, 8
  %i.bk = or i32 %i.bj, %i.bi
  %i.bl = or i32 %i.bk, %.val35.i                 ; 2 uses
  %i.bm = getelementptr i8, ptr %i.j, i64 952
  store i32 %i.bl, ptr %i.bm, align 8
  %i.bn = getelementptr i8, ptr %i.j, i64 956
  store i32 %i.bl, ptr %i.bn, align 4
  %i.bo = load ptr, ptr %i.j, align 8
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %i9xx_calc_dpll_params.exit
  %i.bq = tail call ptr @__drm_to_display(ptr noundef nonnull %i.bp) #12
  %.pre = load i32, ptr %i.aj, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %i9xx_calc_dpll_params.exit
  %i.br = phi i32 [ %.pre, %bb.t ], [ %i.ak, %i9xx_calc_dpll_params.exit ] ; 3 uses
  %i.bs = phi ptr [ %i.bq, %bb.t ], [ null, %i9xx_calc_dpll_params.exit ] ; 2 uses
  %.val35.i.i = load i32, ptr %i.k, align 8       ; 2 uses
  %i.bt = and i32 %.val35.i.i, 16
  %.not36.i.i = icmp eq i32 %i.bt, 0              ; 2 uses
  br i1 %.not36.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bu = add i32 %i.br, -1
  %i.bv = shl i32 65536, %i.bu
  %i.bw = or i32 %i.bv, -1879048192
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bx = icmp eq i32 %i.br, 2
  %i.by = shl i32 %i.br, 16
  %i.bz = add i32 %i.by, 2147352576
  %i.ca = or i32 %i.bz, -1879048192
  %.0.i.i = select i1 %i.bx, i32 -1876951040, i32 %i.ca ; 2 uses
  %i.cb = load i32, ptr %i.al, align 4
  %i.cc = icmp eq i32 %i.cb, 4
  %i.cd = or i32 %.0.i.i, 8388608
  %spec.select33.i.i = select i1 %i.cc, i32 %i.cd, i32 %.0.i.i
  br label %bb.x
end_hunk_0
