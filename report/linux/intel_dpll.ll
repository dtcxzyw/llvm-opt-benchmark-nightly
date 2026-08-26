Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_dpll?download=true
inline.NumInlined: 218
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ilk_crtc_compute_clock:bb.a
  %i.df = zext i8 %i.de to i32
  %i.dg = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.dh = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.df, i64 %i.dg) #13, !srcloc !43 ; 2 uses
  %i.di = extractvalue { i32, i64 } %i.dh, 1
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.di)
  %i.dj = extractvalue { i32, i64 } %i.dh, 0
  %i.dk = icmp eq i32 %i.dj, 3
  br i1 %i.dk, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %.val51.i.i = load i32, ptr %i.n, align 8
  %i.dl = and i32 %.val51.i.i, 2
  %.not59.i.i = icmp eq i32 %i.dl, 0
  %spec.select49.i.i = select i1 %.not59.i.i, i32 %spec.select.i15.i, i32 %i.da
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.3.i.i = phi i32 [ %spec.select.i15.i, %bb.ae ], [ %spec.select49.i.i, %bb.af ]
  %i.dm = load i32, ptr %i.an, align 8
  %i.dn = add i32 %i.dm, -1
  %i.do = shl i32 65537, %i.dn
  %i.dp = or i32 %i.do, %.3.i.i                   ; 3 uses
  %i.dq = load i32, ptr %i.ap, align 4
  switch i32 %i.dq, label %bb.aj [
    i32 5, label %bb.ah
    i32 7, label %bb.ai
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.dr = or i32 %i.dp, 16777216
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.ds = or i32 %i.dp, 16777216
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ag, %bb.ah, %bb.ai
  %.4.i.i = phi i32 [ %i.dp, %bb.ag ], [ %i.dr, %bb.ah ], [ %i.ds, %bb.ai ] ; 3 uses
  %.val.i16.i = load i32, ptr %i.n, align 8
  %i.dt = and i32 %.val.i16.i, 16
  %.not60.i.i = icmp eq i32 %i.dt, 0
  br i1 %.not60.i.i, label %ilk_compute_dpll.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.du = tail call zeroext i1 @intel_panel_use_ssc(ptr noundef %i.cr) #12
  %i.dv = or i32 %.4.i.i, 24576
  %spec.select50.i.i = select i1 %i.du, i32 %i.dv, i32 %.4.i.i
  br label %ilk_compute_dpll.exit

ilk_compute_dpll.exit:                            ; preds = %bb.aj, %bb.ak
  %.5.i.i = phi i32 [ %.4.i.i, %bb.aj ], [ %spec.select50.i.i, %bb.ak ]
  %i.dw = getelementptr i8, ptr %i.j, i64 944
  store i32 %.5.i.i, ptr %i.dw, align 8
  %i.dx = tail call i32 @intel_dpll_compute(ptr noundef %0, ptr noundef %1, ptr noundef null) #12 ; 2 uses
  %.not38 = icmp eq i32 %i.dx, 0
  br i1 %.not38, label %bb.al, label %bb.am

bb.al:                                            ; preds = %ilk_compute_dpll.exit
  %i.dy = load i32, ptr %i.bl, align 8
  %i.dz = getelementptr i8, ptr %i.j, i64 1320
  store i32 %i.dy, ptr %i.dz, align 8
  %i.ea = tail call i32 @intel_crtc_dotclock(ptr noundef %i.j) #12
  %i.eb = getelementptr i8, ptr %i.j, i64 644
  store i32 %i.ea, ptr %i.eb, align 4
  br label %bb.am

bb.am:                                            ; preds = %ilk_compute_dpll.exit, %bb.l, %bb.c, %bb.al
  %.034 = phi i32 [ -22, %bb.l ], [ 0, %bb.al ], [ 0, %bb.c ], [ %i.dx, %ilk_compute_dpll.exit ]
  ret i32 %.034
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ilk_crtc_get_dpll(ptr noundef %0, ptr noundef %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %1, i64 136
  %.val5 = load i32, ptr %i.b, align 8
  %i.c = zext i32 %.val5 to i64
  %i.d = getelementptr [56 x i8], ptr %.val, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 876
  %i.h = load i8, ptr %i.g, align 4, !range !23, !noundef !24
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call i32 @intel_dpll_reserve(ptr noundef %0, ptr noundef %1, ptr noundef null) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.j, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_panel_use_ssc(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_is_dual_link_lvds(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc zeroext i1 @g4x_find_best_dpll(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 36)) %4) unnamed_addr #2 align 16 {
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
  %i.e = ashr i32 %2, 8
  %i.f = ashr i32 %2, 9
  %i.g = add nsw i32 %i.e, %i.f
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(36) %4, i8 0, i64 36, i1 false)
  %i.h = load ptr, ptr %1, align 8
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @__drm_to_display(ptr noundef nonnull %i.i) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = phi ptr [ %i.j, %bb.d ], [ null, %bb.c ]
  %i.l = getelementptr i8, ptr %1, i64 888
  %.val.i = load i32, ptr %i.l, align 8
  %i.m = and i32 %.val.i, 16
  %.not11.i = icmp eq i32 %i.m, 0
  br i1 %.not11.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call zeroext i1 @intel_is_dual_link_lvds(ptr noundef %i.k) #12
  %..i = select i1 %i.n, i64 72, i64 68
  br label %i9xx_select_p2_div.exit

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %0, i64 64
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp slt i32 %2, %i.p
  %.13.i = select i1 %i.q, i64 68, i64 72
  br label %i9xx_select_p2_div.exit

i9xx_select_p2_div.exit:                          ; preds = %bb.f, %bb.g
  %.sink.i = phi i64 [ %..i, %bb.f ], [ %.13.i, %bb.g ]
  %i.r = getelementptr i8, ptr %0, i64 %.sink.i
  %.0.i = load i32, ptr %i.r, align 4             ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.t = getelementptr i8, ptr %0, i64 20         ; 2 uses
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %i.v = load i32, ptr %i.s, align 4              ; 2 uses
  %.not4365 = icmp sgt i32 %i.v, %i.u
  br i1 %.not4365, label %._crit_edge72, label %.lr.ph71

.lr.ph71:                                         ; preds = %i9xx_select_p2_div.exit
  %i.w = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.x = getelementptr i8, ptr %0, i64 36         ; 3 uses
  %i.y = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %i.z = getelementptr i8, ptr %0, i64 44         ; 3 uses
  %i.aa = getelementptr i8, ptr %0, i64 56        ; 2 uses
  %i.ab = getelementptr i8, ptr %0, i64 60        ; 3 uses
  %i.ac = getelementptr i8, ptr %i.d, i64 8
  %i.ad = getelementptr i8, ptr %0, i64 48
  %i.ae = getelementptr i8, ptr %0, i64 52
  %i.af = getelementptr i8, ptr %0, i64 24
  %i.ag = getelementptr i8, ptr %0, i64 28
  %i.ah = getelementptr i8, ptr %0, i64 8
  %i.ai = getelementptr i8, ptr %0, i64 12
  %i.aj = getelementptr i8, ptr %0, i64 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 28
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ak = load i32, ptr %i.x, align 4
  %i.al = load i32, ptr %i.w, align 4             ; 3 uses
  %i.am = icmp slt i32 %i.ak, %i.al
  br i1 %i.am, label %._crit_edge72, label %.lr.ph71.split

.lr.ph71.split:                                   ; preds = %.lr.ph71, %._crit_edge58
  %i.an = phi i32 [ %i.dp, %._crit_edge58 ], [ %i.al, %.lr.ph71 ] ; 3 uses
  %i.ao = phi i32 [ %i.dq, %._crit_edge58 ], [ %i.al, %.lr.ph71 ] ; 3 uses
  %.070 = phi i32 [ %.1.lcssa, %._crit_edge58 ], [ %i.u, %.lr.ph71 ] ; 3 uses
  %.02969 = phi i1 [ %.130.lcssa, %._crit_edge58 ], [ false, %.lr.ph71 ] ; 3 uses
  %.03568 = phi i32 [ %.136.lcssa, %._crit_edge58 ], [ %i.g, %.lr.ph71 ] ; 3 uses
  %storemerge66 = phi i32 [ %i.dr, %._crit_edge58 ], [ %i.v, %.lr.ph71 ] ; 6 uses
  %i.ap = load i32, ptr %i.x, align 4             ; 2 uses
  %.not4550 = icmp slt i32 %i.ap, %i.ao
  br i1 %.not4550, label %._crit_edge58, label %.lr.ph57

.lr.ph57:                                         ; preds = %.lr.ph71.split
  %i.aq = add i32 %storemerge66, 2                ; 4 uses
  %i.ar = icmp eq i32 %i.aq, 0
  %i.as = icmp slt i32 %i.aq, 1
  %i.at = load i32, ptr %i.z, align 4
  %i.au = load i32, ptr %i.y, align 4             ; 3 uses
  %i.av = icmp slt i32 %i.at, %i.au
  br i1 %i.av, label %._crit_edge58, label %.lr.ph57.split

.lr.ph57.split:                                   ; preds = %.lr.ph57, %._crit_edge43
  %i.aw = phi i32 [ %i.dl, %._crit_edge43 ], [ %i.an, %.lr.ph57 ] ; 2 uses
  %i.ax = phi i32 [ %i.dm, %._crit_edge43 ], [ %i.au, %.lr.ph57 ] ; 3 uses
  %i.ay = phi i32 [ %i.dn, %._crit_edge43 ], [ %i.au, %.lr.ph57 ] ; 3 uses
  %.155 = phi i32 [ %.2.lcssa, %._crit_edge43 ], [ %.070, %.lr.ph57 ] ; 3 uses
  %.13054 = phi i1 [ %.231.lcssa, %._crit_edge43 ], [ %.02969, %.lr.ph57 ] ; 3 uses
  %.13653 = phi i32 [ %.237.lcssa, %._crit_edge43 ], [ %.03568, %.lr.ph57 ] ; 3 uses
  %storemerge4451 = phi i32 [ %i.do, %._crit_edge43 ], [ %i.ap, %.lr.ph57 ] ; 6 uses
  %i.az = load i32, ptr %i.z, align 4             ; 2 uses
  %.not4736 = icmp slt i32 %i.az, %i.ay
  br i1 %.not4736, label %._crit_edge43, label %.lr.ph42

.lr.ph42:                                         ; preds = %.lr.ph57.split
  %i.ba = mul i32 %storemerge4451, 5
  %invariant.op47 = add i32 %i.ba, 12
  %i.bb = load i32, ptr %i.ab, align 4
  %i.bc = load i32, ptr %i.aa, align 4            ; 3 uses
  %i.bd = icmp slt i32 %i.bb, %i.bc
  br i1 %i.bd, label %._crit_edge43, label %.lr.ph42.split

.lr.ph42.split:                                   ; preds = %.lr.ph42, %._crit_edge
  %i.be = phi i32 [ %i.dh, %._crit_edge ], [ %i.ax, %.lr.ph42 ]
  %i.bf = phi i32 [ %i.di, %._crit_edge ], [ %i.bc, %.lr.ph42 ] ; 2 uses
  %i.bg = phi i32 [ %i.dj, %._crit_edge ], [ %i.bc, %.lr.ph42 ] ; 2 uses
  %.240 = phi i32 [ %.3.lcssa, %._crit_edge ], [ %.155, %.lr.ph42 ] ; 2 uses
  %.23139 = phi i1 [ %.332.lcssa, %._crit_edge ], [ %.13054, %.lr.ph42 ] ; 2 uses
  %.23738 = phi i32 [ %.338.lcssa, %._crit_edge ], [ %.13653, %.lr.ph42 ] ; 2 uses
  %storemerge4637 = phi i32 [ %i.dk, %._crit_edge ], [ %i.az, %.lr.ph42 ] ; 6 uses
  %i.bh = load i32, ptr %i.ab, align 4            ; 2 uses
  %.not4929 = icmp slt i32 %i.bh, %i.bg
  br i1 %.not4929, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph42.split
  %.reass.reass = add i32 %storemerge4637, %invariant.op47 ; 4 uses
  %i.bi = mul i32 %.reass.reass, %3               ; 2 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  %i.bk = xor i1 %i.as, %i.bj
  %.not56.i = icmp sgt i32 %storemerge4451, %storemerge4637
  %5 = freeze i1 %i.bk
  %..neg.i.v = select i1 %5, i32 2, i32 -2
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %intel_pll_is_valid.exit.thread
  %i.bl = phi i32 [ %i.bf, %.lr.ph ], [ %i.df, %intel_pll_is_valid.exit.thread ] ; 17 uses
  %.333 = phi i32 [ %.240, %.lr.ph ], [ %.5, %intel_pll_is_valid.exit.thread ] ; 17 uses
  %.33232 = phi i1 [ %.23139, %.lr.ph ], [ %.534, %intel_pll_is_valid.exit.thread ] ; 17 uses
  %.33831 = phi i32 [ %.23738, %.lr.ph ], [ %.540, %intel_pll_is_valid.exit.thread ] ; 18 uses
  %storemerge4830 = phi i32 [ %i.bh, %.lr.ph ], [ %i.dg, %intel_pll_is_valid.exit.thread ] ; 4 uses
  %i.bm = mul i32 %storemerge4830, %.0.i          ; 8 uses
  br i1 %i.ar, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %..neg.i = sdiv i32 %i.aq, %..neg.i.v
  %.pn.i = add i32 %..neg.i, %i.bi
  %i.bn = sdiv i32 %.pn.i, %i.aq
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bo = phi i32 [ %i.bn, %bb.i ], [ 0, %bb.h ]  ; 5 uses
  %i.bp = icmp eq i32 %i.bm, 0
  br i1 %i.bp, label %i9xx_calc_dpll_params.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = icmp sgt i32 %i.bo, 0
  %i.br = icmp slt i32 %i.bm, 1
  %i.bs = xor i1 %i.br, %i.bq
  br i1 %i.bs, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bt = sdiv i32 %i.bm, 2
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %.neg33.i = sdiv i32 %i.bm, -2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn37.i = phi i32 [ %i.bt, %bb.l ], [ %.neg33.i, %bb.m ]
  %.pn34.i = add i32 %.pn37.i, %i.bo
  %i.bu = sdiv i32 %.pn34.i, %i.bm
  br label %i9xx_calc_dpll_params.exit

i9xx_calc_dpll_params.exit:                       ; preds = %bb.j, %bb.n
  %i.bv = phi i32 [ %i.bu, %bb.n ], [ 0, %bb.j ]  ; 4 uses
  %i.bw = load i32, ptr %i.s, align 4
  %i.bx = icmp slt i32 %storemerge66, %i.bw
  br i1 %i.bx, label %intel_pll_is_valid.exit.thread, label %bb.o

bb.o:                                             ; preds = %i9xx_calc_dpll_params.exit
  %i.by = load i32, ptr %i.t, align 4
  %i.bz = icmp slt i32 %i.by, %storemerge66
  br i1 %i.bz, label %intel_pll_is_valid.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = load i32, ptr %i.ab, align 4
  %i.cb = icmp slt i32 %i.ca, %storemerge4830
  br i1 %i.cb, label %intel_pll_is_valid.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cc = load i32, ptr %i.y, align 4
  %i.cd = icmp slt i32 %storemerge4637, %i.cc
  br i1 %i.cd, label %intel_pll_is_valid.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ce = load i32, ptr %i.z, align 4
  %i.cf = icmp slt i32 %i.ce, %storemerge4637
  br i1 %i.cf, label %intel_pll_is_valid.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cg = load i32, ptr %i.w, align 4
  %i.ch = icmp slt i32 %storemerge4451, %i.cg
  br i1 %i.ch, label %intel_pll_is_valid.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ci = load i32, ptr %i.x, align 4
  %i.cj = icmp slt i32 %i.ci, %storemerge4451
  br i1 %i.cj, label %intel_pll_is_valid.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ck = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.cl = and i64 %i.ck, 36642492416
  %or.cond63.i = icmp ne i64 %i.cl, 0
  %or.cond64.i = or i1 %.not56.i, %or.cond63.i
  br i1 %or.cond64.i, label %bb.v, label %intel_pll_is_valid.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.cm = and i64 %i.ck, 36642488320
  %or.cond67.i = icmp eq i64 %i.cm, 0
  br i1 %or.cond67.i, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.cn = load i32, ptr %i.ad, align 4
  %i.co = icmp slt i32 %i.bm, %i.cn
  br i1 %i.co, label %intel_pll_is_valid.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cp = load i32, ptr %i.ae, align 4
  %i.cq = icmp slt i32 %i.cp, %i.bm
  br i1 %i.cq, label %intel_pll_is_valid.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cr = load i32, ptr %i.af, align 4
  %i.cs = icmp slt i32 %.reass.reass, %i.cr
  br i1 %i.cs, label %intel_pll_is_valid.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ct = load i32, ptr %i.ag, align 4
  %i.cu = icmp slt i32 %i.ct, %.reass.reass
  br i1 %i.cu, label %intel_pll_is_valid.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.v
  %i.cv = load i32, ptr %i.ah, align 4
  %i.cw = icmp slt i32 %i.bo, %i.cv
  br i1 %i.cw, label %intel_pll_is_valid.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cx = load i32, ptr %i.ai, align 4
  %i.cy = icmp slt i32 %i.cx, %i.bo
  br i1 %i.cy, label %intel_pll_is_valid.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cz = load i32, ptr %0, align 4
  %i.da = icmp slt i32 %i.bv, %i.cz
  br i1 %i.da, label %intel_pll_is_valid.exit.thread, label %intel_pll_is_valid.exit

intel_pll_is_valid.exit:                          ; preds = %bb.ac
  %i.db = load i32, ptr %i.aj, align 4
  %.not28 = icmp slt i32 %i.db, %i.bv
  br i1 %.not28, label %intel_pll_is_valid.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %intel_pll_is_valid.exit
  %i.dc = sub i32 %i.bv, %2
  %i.dd = tail call i32 @llvm.abs.i32(i32 %i.dc, i1 false) ; 2 uses
  %i.de = icmp slt i32 %i.dd, %.33831
  br i1 %i.de, label %bb.ae, label %intel_pll_is_valid.exit.thread

bb.ae:                                            ; preds = %bb.ad
  store i32 %storemerge66, ptr %4, align 4
  store i32 %storemerge4451, ptr %.sroa.9.0..sroa_idx, align 4
  store i32 %storemerge4637, ptr %.sroa.13.0..sroa_idx, align 4
  store i32 %storemerge4830, ptr %.sroa.17.0..sroa_idx, align 4
  store i32 %.0.i, ptr %.sroa.21.0..sroa_idx, align 4
  store i32 %i.bv, ptr %.sroa.23.0..sroa_idx, align 4
  store i32 %i.bo, ptr %.sroa.26.0..sroa_idx, align 4
  store i32 %.reass.reass, ptr %.sroa.28.0..sroa_idx, align 4
  store i32 %i.bm, ptr %.sroa.30.0..sroa_idx, align 4
  %.pre = load i32, ptr %i.aa, align 4
  br label %intel_pll_is_valid.exit.thread

intel_pll_is_valid.exit.thread:                   ; preds = %bb.ab, %bb.z, %bb.x, %bb.t, %bb.r, %bb.p, %bb.o, %bb.w, %bb.u, %bb.ac, %bb.aa, %bb.y, %bb.q, %i9xx_calc_dpll_params.exit, %bb.s, %bb.ad, %bb.ae, %intel_pll_is_valid.exit
  %i.df = phi i32 [ %i.bl, %intel_pll_is_valid.exit ], [ %.pre, %bb.ae ], [ %i.bl, %bb.ad ], [ %i.bl, %bb.s ], [ %i.bl, %i9xx_calc_dpll_params.exit ], [ %i.bl, %bb.q ], [ %i.bl, %bb.y ], [ %i.bl, %bb.aa ], [ %i.bl, %bb.ac ], [ %i.bl, %bb.u ], [ %i.bl, %bb.w ], [ %i.bl, %bb.o ], [ %i.bl, %bb.p ], [ %i.bl, %bb.r ], [ %i.bl, %bb.t ], [ %i.bl, %bb.x ], [ %i.bl, %bb.z ], [ %i.bl, %bb.ab ] ; 4 uses
  %.540 = phi i32 [ %.33831, %intel_pll_is_valid.exit ], [ %i.dd, %bb.ae ], [ %.33831, %bb.ad ], [ %.33831, %bb.s ], [ %.33831, %i9xx_calc_dpll_params.exit ], [ %.33831, %bb.q ], [ %.33831, %bb.y ], [ %.33831, %bb.aa ], [ %.33831, %bb.ac ], [ %.33831, %bb.u ], [ %.33831, %bb.w ], [ %.33831, %bb.o ], [ %.33831, %bb.p ], [ %.33831, %bb.r ], [ %.33831, %bb.t ], [ %.33831, %bb.x ], [ %.33831, %bb.z ], [ %.33831, %bb.ab ] ; 2 uses
  %.534 = phi i1 [ %.33232, %intel_pll_is_valid.exit ], [ true, %bb.ae ], [ %.33232, %bb.ad ], [ %.33232, %bb.s ], [ %.33232, %i9xx_calc_dpll_params.exit ], [ %.33232, %bb.q ], [ %.33232, %bb.y ], [ %.33232, %bb.aa ], [ %.33232, %bb.ac ], [ %.33232, %bb.u ], [ %.33232, %bb.w ], [ %.33232, %bb.o ], [ %.33232, %bb.p ], [ %.33232, %bb.r ], [ %.33232, %bb.t ], [ %.33232, %bb.x ], [ %.33232, %bb.z ], [ %.33232, %bb.ab ] ; 2 uses
  %.5 = phi i32 [ %.333, %intel_pll_is_valid.exit ], [ %storemerge66, %bb.ae ], [ %.333, %bb.ad ], [ %.333, %bb.s ], [ %.333, %i9xx_calc_dpll_params.exit ], [ %.333, %bb.q ], [ %.333, %bb.y ], [ %.333, %bb.aa ], [ %.333, %bb.ac ], [ %.333, %bb.u ], [ %.333, %bb.w ], [ %.333, %bb.o ], [ %.333, %bb.p ], [ %.333, %bb.r ], [ %.333, %bb.t ], [ %.333, %bb.x ], [ %.333, %bb.z ], [ %.333, %bb.ab ] ; 2 uses
  %i.dg = add i32 %storemerge4830, -1             ; 2 uses
  %.not49 = icmp slt i32 %i.dg, %i.df
  br i1 %.not49, label %._crit_edge.loopexit, label %bb.h, !llvm.loop !44

._crit_edge.loopexit:                             ; preds = %intel_pll_is_valid.exit.thread
  %.pre78 = load i32, ptr %i.y, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph42.split
  %i.dh = phi i32 [ %i.be, %.lr.ph42.split ], [ %.pre78, %._crit_edge.loopexit ] ; 4 uses
  %i.di = phi i32 [ %i.bf, %.lr.ph42.split ], [ %i.df, %._crit_edge.loopexit ]
  %i.dj = phi i32 [ %i.bg, %.lr.ph42.split ], [ %i.df, %._crit_edge.loopexit ]
  %.338.lcssa = phi i32 [ %.23738, %.lr.ph42.split ], [ %.540, %._crit_edge.loopexit ] ; 2 uses
  %.332.lcssa = phi i1 [ %.23139, %.lr.ph42.split ], [ %.534, %._crit_edge.loopexit ] ; 2 uses
  %.3.lcssa = phi i32 [ %.240, %.lr.ph42.split ], [ %.5, %._crit_edge.loopexit ] ; 2 uses
  %i.dk = add i32 %storemerge4637, -1             ; 2 uses
  %.not47 = icmp slt i32 %i.dk, %i.dh
  br i1 %.not47, label %._crit_edge43.loopexit75, label %.lr.ph42.split, !llvm.loop !45

._crit_edge43.loopexit75:                         ; preds = %._crit_edge
  %.pre79 = load i32, ptr %i.w, align 4
  br label %._crit_edge43

._crit_edge43:                                    ; preds = %.lr.ph42, %._crit_edge43.loopexit75, %.lr.ph57.split
  %i.dl = phi i32 [ %i.aw, %.lr.ph57.split ], [ %.pre79, %._crit_edge43.loopexit75 ], [ %i.aw, %.lr.ph42 ] ; 4 uses
  %i.dm = phi i32 [ %i.ax, %.lr.ph57.split ], [ %i.dh, %._crit_edge43.loopexit75 ], [ %i.ax, %.lr.ph42 ]
  %i.dn = phi i32 [ %i.ay, %.lr.ph57.split ], [ %i.dh, %._crit_edge43.loopexit75 ], [ %i.ay, %.lr.ph42 ]
  %.237.lcssa = phi i32 [ %.13653, %.lr.ph57.split ], [ %.338.lcssa, %._crit_edge43.loopexit75 ], [ %.13653, %.lr.ph42 ] ; 2 uses
  %.231.lcssa = phi i1 [ %.13054, %.lr.ph57.split ], [ %.332.lcssa, %._crit_edge43.loopexit75 ], [ %.13054, %.lr.ph42 ] ; 2 uses
  %.2.lcssa = phi i32 [ %.155, %.lr.ph57.split ], [ %.3.lcssa, %._crit_edge43.loopexit75 ], [ %.155, %.lr.ph42 ] ; 2 uses
  %i.do = add i32 %storemerge4451, -1             ; 2 uses
  %.not45 = icmp slt i32 %i.do, %i.dl
  br i1 %.not45, label %._crit_edge58, label %.lr.ph57.split, !llvm.loop !46

._crit_edge58:                                    ; preds = %._crit_edge43, %.lr.ph57, %.lr.ph71.split
  %i.dp = phi i32 [ %i.an, %.lr.ph71.split ], [ %i.an, %.lr.ph57 ], [ %i.dl, %._crit_edge43 ]
  %i.dq = phi i32 [ %i.ao, %.lr.ph71.split ], [ %i.ao, %.lr.ph57 ], [ %i.dl, %._crit_edge43 ]
  %.136.lcssa = phi i32 [ %.03568, %.lr.ph71.split ], [ %.03568, %.lr.ph57 ], [ %.237.lcssa, %._crit_edge43 ]
  %.130.lcssa = phi i1 [ %.02969, %.lr.ph71.split ], [ %.02969, %.lr.ph57 ], [ %.231.lcssa, %._crit_edge43 ] ; 2 uses
  %.1.lcssa = phi i32 [ %.070, %.lr.ph71.split ], [ %.070, %.lr.ph57 ], [ %.2.lcssa, %._crit_edge43 ] ; 2 uses
  %i.dr = add i32 %storemerge66, 1                ; 2 uses
  %.not43 = icmp sgt i32 %i.dr, %.1.lcssa
  br i1 %.not43, label %._crit_edge72, label %.lr.ph71.split, !llvm.loop !47

._crit_edge72:                                    ; preds = %._crit_edge58, %.lr.ph71, %i9xx_select_p2_div.exit
  %.029.lcssa = phi i1 [ false, %i9xx_select_p2_div.exit ], [ false, %.lr.ph71 ], [ %.130.lcssa, %._crit_edge58 ]
  ret i1 %.029.lcssa
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
  br i1 %i.i, label %bb.ac, label %bb.b

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
  br label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.split102.us.i, %bb.d
  %.0106.i = phi i32 [ 1000000, %bb.d ], [ %.4.1.i, %.split102.us.i ]
  %.041105.i = phi i1 [ false, %bb.d ], [ %.445.1.i, %.split102.us.i ]
  %storemerge104.i = phi i32 [ 1, %bb.d ], [ %i.dt, %.split102.us.i ] ; 8 uses
  %i.r = mul i32 %storemerge104.i, %i.k
  br label %.preheader.i

.preheader.i:                                     ; preds = %.split90.i, %.preheader.preheader.i
  %.195.i = phi i32 [ %.4.1.i, %.split90.i ], [ %.0106.i, %.preheader.preheader.i ]
  %.14294.i = phi i1 [ %.445.1.i, %.split90.i ], [ %.041105.i, %.preheader.preheader.i ]
  %storemerge4893.i = phi i32 [ %i.dr, %.split90.i ], [ 3, %.preheader.preheader.i ] ; 5 uses
  br label %.split74.i

.split74.i:                                       ; preds = %intel_pll_is_valid.exit.thread.1.i, %.preheader.i
  %.282.i = phi i32 [ %.195.i, %.preheader.i ], [ %.4.1.i, %intel_pll_is_valid.exit.thread.1.i ] ; 7 uses
  %.24381.i = phi i1 [ %.14294.i, %.preheader.i ], [ %.445.1.i, %intel_pll_is_valid.exit.thread.1.i ] ; 6 uses
  %storemerge4980.i = phi i32 [ 20, %.preheader.i ], [ %i.dp, %intel_pll_is_valid.exit.thread.1.i ] ; 5 uses
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
  %..neg.i107.v.i = select i1 %i.ab, i32 2, i32 -2
  %..neg.i107.i = sdiv i32 %storemerge104.i, %..neg.i107.v.i
  %.pn.i.i = add i32 %i.aa, %..neg.i107.i
  %i.ac = sdiv i32 %.pn.i.i, %storemerge104.i     ; 4 uses
  br i1 %i.w, label %vlv_calc_dpll_params.exit.i, label %bb.e

bb.e:                                             ; preds = %.split74.i
  %i.ad = icmp sgt i32 %i.ac, 0
  %i.ae = xor i1 %i.x, %i.ad
  %..neg34.i.v.i = select i1 %i.ae, i32 2, i32 -2
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
  %or.cond67.i.i.a = icmp eq i64 %i.aj, 0
  br i1 %or.cond67.i.i.a, label %intel_pll_is_valid.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = add i32 %i.ac, -4000000
  %or.cond53.i.a = icmp ult i32 %i.ak, 2000001
  %i.al = icmp sgt i32 %i.ag, 24999
  %or.cond55.not61.i = and i1 %or.cond53.i.a, %i.al
  %.old57.i.a = icmp samesign ult i32 %i.ag, 270001
  %or.cond59.i.a = select i1 %or.cond55.not61.i, i1 %.old57.i.a, i1 false
  br i1 %or.cond59.i.a, label %bb.h, label %intel_pll_is_valid.exit.thread.i

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
  %i.bq = icmp ult i32 %i.bp, %.282.i
  br i1 %i.bq, label %vlv_PLL_is_optimal.exit.thread.i, label %intel_pll_is_valid.exit.thread.i

vlv_PLL_is_optimal.exit.thread.i:                 ; preds = %vlv_PLL_is_optimal.exit.i, %bb.o, %.split.i
  %.03438.i = phi i32 [ 0, %.split.i ], [ %i.bl, %vlv_PLL_is_optimal.exit.i ], [ 0, %bb.o ]
  store i32 %storemerge104.i, ptr %i.l, align 4
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
  %.445.i = phi i1 [ true, %vlv_PLL_is_optimal.exit.thread.i ], [ %.24381.i, %bb.g ], [ %.24381.i, %vlv_PLL_is_optimal.exit.i ], [ %.24381.i, %.split.i ], [ %.24381.i, %vlv_PLL_is_optimal.exit.thread39.i ], [ %.24381.i, %bb.f ], [ %.24381.i, %vlv_calc_dpll_params.exit.i ] ; 7 uses
  %.4.i = phi i32 [ %.03438.i, %vlv_PLL_is_optimal.exit.thread.i ], [ %.282.i, %bb.g ], [ %.282.i, %vlv_PLL_is_optimal.exit.i ], [ %.282.i, %.split.i ], [ %.282.i, %vlv_PLL_is_optimal.exit.thread39.i ], [ %.282.i, %bb.f ], [ %.282.i, %vlv_calc_dpll_params.exit.i ] ; 8 uses
  %.pn.p.1.i = select i1 %i.v, i32 150000, i32 -150000
  %.pn.1.i = add i32 %.pn.p.1.i, %i.u
  %.pn.1.fr.i = freeze i32 %.pn.1.i               ; 2 uses
  %i.br = sdiv i32 %.pn.1.fr.i, 300000            ; 4 uses
  %i.bs = mul nuw nsw i32 %i.br, 3                ; 2 uses
  %i.bt = mul nsw i32 %i.br, 300000
  %i.bu = icmp sgt i32 %.pn.1.fr.i, 299999
  %..neg.i107.v.1.i = select i1 %i.bu, i32 2, i32 -2
  %..neg.i107.1.i = sdiv i32 %storemerge104.i, %..neg.i107.v.1.i
  %.pn.i.1.i = add i32 %..neg.i107.1.i, %i.bt
  %i.bv = sdiv i32 %.pn.i.1.i, %storemerge104.i   ; 6 uses
  br i1 %i.w, label %vlv_calc_dpll_params.exit.1.i, label %bb.p

bb.p:                                             ; preds = %intel_pll_is_valid.exit.thread.i
  %i.bw = icmp sgt i32 %i.bv, 0
  %i.bx = xor i1 %i.x, %i.bw
  %..neg34.i.v.1.i = select i1 %i.bx, i32 2, i32 -2
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
  %2 = or i32 %i.bs, %i.s
  %or.cond49.not69.1.i = icmp eq i32 %2, 0
  %i.cg = icmp sgt i32 %i.bv, 3999999
  %or.cond50.not66.1.i = and i1 %or.cond49.not69.1.i, %i.cg
  %i.ch = icmp samesign ult i32 %i.bv, 6000001
  %or.cond52.not64.1.i = select i1 %or.cond50.not66.1.i, i1 %i.ch, i1 false
  %.old54.1.i = icmp sgt i32 %i.bz, 24999
  %or.cond56.not62.1.i = and i1 %or.cond52.not64.1.i, %.old54.1.i
  %i.ci = icmp samesign ult i32 %i.bz, 270001
  %or.cond58.1.i = select i1 %or.cond56.not62.1.i, i1 %i.ci, i1 false
  br i1 %or.cond58.1.i, label %bb.u, label %intel_pll_is_valid.exit.thread.1.i

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cj = and i64 %i.cb, 134217728
  %.not.i.1.i = icmp eq i64 %i.cj, 0
  br i1 %.not.i.1.i, label %bb.v, label %.split.1.i

.split.1.i:                                       ; preds = %bb.u
  %i.ck = load i32, ptr %i.p, align 4
  %i.cl = icmp sgt i32 %i.t, %i.ck
  br i1 %i.cl, label %vlv_PLL_is_optimal.exit.thread.1.i, label %intel_pll_is_valid.exit.thread.1.i

bb.v:                                             ; preds = %bb.u
  br i1 %.not30.i.i, label %bb.x, label %.critedge.i.1.i, !prof !14

.critedge.i.1.i:                                  ; preds = %bb.v
  %i.cm = sub i32 %i.k, %i.bz
  %i.cn = tail call i32 @llvm.abs.i32(i32 %i.cm, i1 false)
  %i.co = sext i32 %i.cn to i64
  %i.cp = mul nsw i64 %i.co, 1000000
  %i.cq = udiv i64 %i.cp, %i.q
  %i.cr = trunc i64 %i.cq to i32                  ; 3 uses
  %i.cs = icmp ult i32 %i.cr, 100
  br i1 %i.cs, label %bb.w, label %vlv_PLL_is_optimal.exit.1.i

bb.w:                                             ; preds = %.critedge.i.1.i
  %i.ct = load i32, ptr %i.p, align 4
  %i.cu = icmp sgt i32 %i.t, %i.ct
  br i1 %i.cu, label %vlv_PLL_is_optimal.exit.thread.1.i, label %vlv_PLL_is_optimal.exit.1.i

vlv_PLL_is_optimal.exit.1.i:                      ; preds = %bb.w, %.critedge.i.1.i
  %i.cv = add i32 %i.cr, 10
  %i.cw = icmp ult i32 %i.cv, %.4.i
  br i1 %i.cw, label %vlv_PLL_is_optimal.exit.thread.1.i, label %intel_pll_is_valid.exit.thread.1.i

vlv_PLL_is_optimal.exit.thread.1.i:               ; preds = %vlv_PLL_is_optimal.exit.1.i, %bb.w, %.split.1.i
  %.03438.1.i = phi i32 [ 0, %.split.1.i ], [ %i.cr, %vlv_PLL_is_optimal.exit.1.i ], [ 0, %bb.w ]
  store i32 %storemerge104.i, ptr %i.l, align 4
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
  %i.cx = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i.i.1.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.1.i, label %__drm_to_dev.exit.i.1.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cy = getelementptr i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  br label %__drm_to_dev.exit.i.1.i

__drm_to_dev.exit.i.1.i:                          ; preds = %bb.y, %bb.x
  %i.da = phi ptr [ %i.cz, %bb.y ], [ null, %bb.x ]
  %i.db = tail call ptr @dev_driver_string(ptr noundef %i.da) #12 ; 0 uses
  %i.dc = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.1, ptr nonnull @.str.3, i32 838, i32 2323, i64 16) #14, !srcloc !15
  %i.dd = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i34.i.1.i = icmp eq ptr %i.dd, null
  br i1 %.not.i34.i.1.i, label %__drm_to_dev.exit35.i.1.i, label %bb.z

bb.z:                                             ; preds = %__drm_to_dev.exit.i.1.i
  %i.de = getelementptr i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8
  br label %__drm_to_dev.exit35.i.1.i

__drm_to_dev.exit35.i.1.i:                        ; preds = %bb.z, %__drm_to_dev.exit.i.1.i
  %i.dg = phi ptr [ %i.df, %bb.z ], [ null, %__drm_to_dev.exit.i.1.i ]
  %i.dh = tail call ptr @dev_driver_string(ptr noundef %i.dg) #12
  %i.di = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not.i36.i.1.i = icmp eq ptr %i.di, null
  br i1 %.not.i36.i.1.i, label %__drm_to_dev.exit37.i.1.i, label %bb.aa

bb.aa:                                            ; preds = %__drm_to_dev.exit35.i.1.i
  %i.dj = getelementptr i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  br label %__drm_to_dev.exit37.i.1.i

__drm_to_dev.exit37.i.1.i:                        ; preds = %bb.aa, %__drm_to_dev.exit35.i.1.i
  %i.dl = phi ptr [ %i.dk, %bb.aa ], [ null, %__drm_to_dev.exit35.i.1.i ] ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 80
  %i.dn = load ptr, ptr %i.dm, align 8            ; 2 uses
  %.not.i38.i.1.i = icmp eq ptr %i.dn, null
  br i1 %.not.i38.i.1.i, label %bb.ab, label %vlv_PLL_is_optimal.exit.thread39.1.i

bb.ab:                                            ; preds = %__drm_to_dev.exit37.i.1.i
  %.val.i40.i.1.i = load ptr, ptr %i.dl, align 8
  br label %vlv_PLL_is_optimal.exit.thread39.1.i

vlv_PLL_is_optimal.exit.thread39.1.i:             ; preds = %bb.ab, %__drm_to_dev.exit37.i.1.i
  %.0.i39.i.1.i = phi ptr [ %.val.i40.i.1.i, %bb.ab ], [ %i.dn, %__drm_to_dev.exit37.i.1.i ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.dc, ptr noundef %i.dh, ptr noundef %.0.i39.i.1.i, ptr noundef nonnull @.str.8) #12
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !16
  br label %intel_pll_is_valid.exit.thread.1.i

intel_pll_is_valid.exit.thread.1.i:               ; preds = %vlv_PLL_is_optimal.exit.thread39.1.i, %vlv_PLL_is_optimal.exit.thread.1.i, %vlv_PLL_is_optimal.exit.1.i, %.split.1.i, %bb.t, %bb.s, %bb.q, %vlv_calc_dpll_params.exit.1.i
  %.445.1.i = phi i1 [ true, %vlv_PLL_is_optimal.exit.thread.1.i ], [ %.445.i, %bb.s ], [ %.445.i, %vlv_PLL_is_optimal.exit.1.i ], [ %.445.i, %.split.1.i ], [ %.445.i, %vlv_PLL_is_optimal.exit.thread39.1.i ], [ %.445.i, %bb.q ], [ %.445.i, %vlv_calc_dpll_params.exit.1.i ], [ %.445.i, %bb.t ] ; 4 uses
  %.4.1.i = phi i32 [ %.03438.1.i, %vlv_PLL_is_optimal.exit.thread.1.i ], [ %.4.i, %bb.s ], [ %.4.i, %vlv_PLL_is_optimal.exit.1.i ], [ %.4.i, %.split.1.i ], [ %.4.i, %vlv_PLL_is_optimal.exit.thread39.1.i ], [ %.4.i, %bb.q ], [ %.4.i, %vlv_calc_dpll_params.exit.1.i ], [ %.4.i, %bb.t ] ; 3 uses
  %i.do = icmp samesign ugt i32 %storemerge4980.i, 10
  %.neg.i = select i1 %i.do, i32 -2, i32 -1
  %i.dp = add nsw i32 %.neg.i, %storemerge4980.i  ; 2 uses
  %i.dq = icmp sgt i32 %i.dp, 1
  br i1 %i.dq, label %.split74.i, label %.split90.i, !llvm.loop !48

.split90.i:                                       ; preds = %intel_pll_is_valid.exit.thread.1.i
  %i.dr = add nsw i32 %storemerge4893.i, -1
  %i.ds = icmp samesign ugt i32 %storemerge4893.i, 2
  br i1 %i.ds, label %.preheader.i, label %.split102.us.i, !llvm.loop !49

.split102.us.i:                                   ; preds = %.split90.i
  %i.dt = add nuw nsw i32 %storemerge104.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.dt, 6
  br i1 %exitcond.not.i, label %vlv_find_best_dpll.exit, label %.preheader.preheader.i, !llvm.loop !50

vlv_find_best_dpll.exit:                          ; preds = %.split102.us.i
  br i1 %.445.1.i, label %bb.ac, label %bb.an

bb.ac:                                            ; preds = %vlv_find_best_dpll.exit, %bb.a
  %i.du = getelementptr i8, ptr %i.f, i64 900
  %i.dv = getelementptr i8, ptr %i.f, i64 904
  %i.dw = load i32, ptr %i.dv, align 8
  %i.dx = getelementptr i8, ptr %i.f, i64 908
  %i.dy = load i32, ptr %i.dx, align 4
  %i.dz = mul i32 %i.dy, %i.dw                    ; 2 uses
  %i.ea = getelementptr i8, ptr %i.f, i64 928
  store i32 %i.dz, ptr %i.ea, align 8
  %i.eb = getelementptr i8, ptr %i.f, i64 912
  %i.ec = load i32, ptr %i.eb, align 8
  %i.ed = getelementptr i8, ptr %i.f, i64 916
  %i.ee = load i32, ptr %i.ed, align 4
  %i.ef = mul i32 %i.ee, %i.ec                    ; 2 uses
  %i.eg = mul i32 %i.ef, 5                        ; 5 uses
  %i.eh = getelementptr i8, ptr %i.f, i64 932
  store i32 %i.eg, ptr %i.eh, align 4
  %i.ei = load i32, ptr %i.du, align 4            ; 5 uses
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ek = mul i32 %i.dz, 100000                   ; 2 uses
  %i.el = icmp sgt i32 %i.ek, 0
  %i.em = icmp slt i32 %i.ei, 1
  %i.en = xor i1 %i.el, %i.em
  br i1 %i.en, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.eo = sdiv i32 %i.ei, 2
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %.neg.i19 = sdiv i32 %i.ei, -2
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn36.i = phi i32 [ %i.eo, %bb.ae ], [ %.neg.i19, %bb.af ]
  %.pn.i20 = add i32 %.pn36.i, %i.ek
  %i.ep = sdiv i32 %.pn.i20, %i.ei
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ac
  %i.eq = phi i32 [ %i.ep, %bb.ag ], [ 0, %bb.ac ] ; 3 uses
  %i.er = getelementptr i8, ptr %i.f, i64 924
  store i32 %i.eq, ptr %i.er, align 4
  %i.es = icmp eq i32 %i.ef, 0
  br i1 %i.es, label %vlv_calc_dpll_params.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.et = icmp sgt i32 %i.eq, 0
  %i.eu = icmp slt i32 %i.eg, 1
  %i.ev = xor i1 %i.eu, %i.et
  br i1 %i.ev, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ew = sdiv i32 %i.eg, 2
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %.neg34.i = sdiv i32 %i.eg, -2
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn37.i = phi i32 [ %i.ew, %bb.aj ], [ %.neg34.i, %bb.ak ]
  %.pn35.i = add i32 %.pn37.i, %i.eq
  %i.ex = sdiv i32 %.pn35.i, %i.eg
  br label %vlv_calc_dpll_params.exit

vlv_calc_dpll_params.exit:                        ; preds = %bb.ah, %bb.al
  %i.ey = phi i32 [ %i.ex, %bb.al ], [ 0, %bb.ah ] ; 2 uses
  %i.ez = getelementptr i8, ptr %i.f, i64 920
  store i32 %i.ey, ptr %i.ez, align 8
  %i.fa = getelementptr i8, ptr %i.f, i64 944
  %.val.i = load ptr, ptr %i.f, align 8
  %i.fb = getelementptr i8, ptr %i.f, i64 888
end_hunk_0
begin_hunk_1_@i9xx_compute_dpll:bb.a

bb.y:                                             ; preds = %bb.x
  %i.cg = tail call zeroext i1 @intel_panel_use_ssc(ptr noundef %i.am) #12
  %i.ch = or i32 %spec.select66.i, 24576
  %spec.select67.i = select i1 %i.cg, i32 %i.ch, i32 %spec.select66.i
  br label %i9xx_dpll.exit

i9xx_dpll.exit:                                   ; preds = %bb.w, %bb.x, %bb.y
  %.7.i = phi i32 [ %i.ce, %bb.w ], [ %spec.select66.i, %bb.x ], [ %spec.select67.i, %bb.y ]
  store i32 %.7.i, ptr %i.e, align 8
  %i.ci = getelementptr i8, ptr %i.d, i64 1168
  %i.cj = load i16, ptr %i.ci, align 8
  %i.ck = icmp ugt i16 %i.cj, 3
  br i1 %i.ck, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %i9xx_dpll.exit
  %i.cl = getelementptr i8, ptr %0, i64 1324
  %.val = load i32, ptr %i.cl, align 4
  %i.cm = shl i32 %.val, 8
  %i.cn = add i32 %i.cm, -256
  %i.co = getelementptr i8, ptr %0, i64 948
  store i32 %i.cn, ptr %i.co, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %i9xx_dpll.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -22, 1) i32 @pnv_crtc_compute_clock(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 align 16 prefalign(16) {
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
  %.val27 = load ptr, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %1, i64 136
  %.val28 = load i32, ptr %i.f, align 8
  %i.g = zext i32 %.val28 to i64
  %i.h = getelementptr [56 x i8], ptr %.val27, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8              ; 26 uses
  %i.k = getelementptr i8, ptr %i.j, i64 888      ; 2 uses
  %.val = load i32, ptr %i.k, align 8
  %i.l = and i32 %.val, 16
  %.not36 = icmp eq i32 %i.l, 0
  br i1 %.not36, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call zeroext i1 @intel_panel_use_ssc(ptr noundef %i.d) #12
  br i1 %i.m, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.d, i64 5220
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %i.p = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
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
  %.024 = phi ptr [ @pnv_limits_lvds, %bb.d ], [ @pnv_limits_lvds, %__drm_to_dev.exit ], [ @pnv_limits_sdvo, %bb.c ] ; 18 uses
  %.1 = phi i32 [ 96000, %bb.d ], [ %i.o, %__drm_to_dev.exit ], [ 96000, %bb.c ] ; 2 uses
  %i.t = getelementptr i8, ptr %i.j, i64 896
  %i.u = load i8, ptr %i.t, align 8, !range !23, !noundef !24
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.af, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr i8, ptr %i.j, i64 1320
  %i.x = load i32, ptr %i.w, align 8              ; 4 uses
  %i.y = getelementptr i8, ptr %i.j, i64 900      ; 2 uses
  %i.z = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not.i29 = icmp eq ptr %i.aa, null
  br i1 %.not.i29, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = tail call ptr @__drm_to_display(ptr noundef nonnull %i.aa) #12
  %.pre = load ptr, ptr %i.j, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ac = phi ptr [ %.pre, %bb.i ], [ %i.z, %bb.h ]
  %i.ad = phi ptr [ %i.ab, %bb.i ], [ null, %bb.h ]
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(36) %i.y, i8 0, i64 36, i1 false)
  %i.ae = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = tail call ptr @__drm_to_display(ptr noundef nonnull %i.ae) #12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ag = phi ptr [ %i.af, %bb.k ], [ null, %bb.j ]
  %.val.i.i = load i32, ptr %i.k, align 8
  %i.ah = and i32 %.val.i.i, 16
  %.not11.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not11.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = tail call zeroext i1 @intel_is_dual_link_lvds(ptr noundef %i.ag) #12
  %..i.i = select i1 %i.ai, i64 72, i64 68
  br label %i9xx_select_p2_div.exit.i

bb.n:                                             ; preds = %bb.l
  %i.aj = getelementptr i8, ptr %.024, i64 64
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = icmp slt i32 %i.x, %i.ak
  %.13.i.i = select i1 %i.al, i64 68, i64 72
  br label %i9xx_select_p2_div.exit.i

i9xx_select_p2_div.exit.i:                        ; preds = %bb.n, %bb.m
  %.sink.i.i = phi i64 [ %..i.i, %bb.m ], [ %.13.i.i, %bb.n ]
  %i.am = getelementptr i8, ptr %.024, i64 %.sink.i.i
  %.0.i.i = load i32, ptr %i.am, align 4          ; 2 uses
  %i.an = getelementptr i8, ptr %.024, i64 32
  %i.ao = load i32, ptr %i.an, align 4            ; 3 uses
  %i.ap = getelementptr i8, ptr %.024, i64 36
  %i.aq = load i32, ptr %i.ap, align 4            ; 2 uses
  %.not3346.i = icmp sgt i32 %i.ao, %i.aq
  br i1 %.not3346.i, label %pnv_find_best_dpll.exit.thread, label %.lr.ph50.i

.lr.ph50.i:                                       ; preds = %i9xx_select_p2_div.exit.i
  %i.ar = getelementptr i8, ptr %.024, i64 40
  %i.as = getelementptr i8, ptr %.024, i64 44
  %i.at = getelementptr i8, ptr %.024, i64 56
  %i.au = getelementptr i8, ptr %.024, i64 60
  %i.av = getelementptr i8, ptr %i.ad, i64 8
  %i.aw = getelementptr i8, ptr %.024, i64 48
  %i.ax = getelementptr i8, ptr %.024, i64 52
  %i.ay = getelementptr i8, ptr %.024, i64 24
  %i.az = getelementptr i8, ptr %.024, i64 28
  %i.ba = getelementptr i8, ptr %.024, i64 8
  %i.bb = getelementptr i8, ptr %.024, i64 12
  %i.bc = getelementptr i8, ptr %.024, i64 4
  %.sroa.8.0..sroa_idx.i = getelementptr i8, ptr %i.j, i64 904
  %.sroa.11.0..sroa_idx.i = getelementptr i8, ptr %i.j, i64 908
  %.sroa.15.0..sroa_idx.i = getelementptr i8, ptr %i.j, i64 912
  %.sroa.19.0..sroa_idx.i = getelementptr i8, ptr %i.j, i64 916
  %.sroa.21.0..sroa_idx.i = getelementptr i8, ptr %i.j, i64 920
  %.sroa.24.0..sroa_idx.i = getelementptr i8, ptr %i.j, i64 924
  %.sroa.26.0..sroa_idx.i = getelementptr i8, ptr %i.j, i64 928
  %.sroa.28.0..sroa_idx.i = getelementptr i8, ptr %i.j, i64 932
  %i.bd = load i32, ptr %i.ar, align 4            ; 3 uses
  %i.be = load i32, ptr %i.as, align 4            ; 2 uses
  %i.bf = icmp sgt i32 %i.bd, %i.be
  br i1 %i.bf, label %pnv_find_best_dpll.exit.thread, label %.lr.ph50.split.i.preheader

.lr.ph50.split.i.preheader:                       ; preds = %.lr.ph50.i
  %i.bg = getelementptr i8, ptr %.024, i64 20
  %i.bh = getelementptr i8, ptr %.024, i64 16
  %i.bi = load i32, ptr %i.bh, align 4            ; 3 uses
  %i.bj = load i32, ptr %i.bg, align 4            ; 2 uses
  %i.bk = icmp sgt i32 %i.bi, %i.bj
  br i1 %i.bk, label %pnv_find_best_dpll.exit.thread, label %.lr.ph50.split.i.preheader.split

.lr.ph50.split.i.preheader.split:                 ; preds = %.lr.ph50.split.i.preheader
  %i.bl = load i32, ptr %i.at, align 4            ; 3 uses
  %i.bm = load i32, ptr %i.au, align 4            ; 2 uses
  %i.bn = icmp sgt i32 %i.bl, %i.bm
  br i1 %i.bn, label %pnv_find_best_dpll.exit.thread, label %.lr.ph50.split.i

.lr.ph50.split.i:                                 ; preds = %.lr.ph50.split.i.preheader.split, %._crit_edge43.i.loopexit.split
  %.049.i = phi i32 [ %.us-phi, %._crit_edge43.i.loopexit.split ], [ %i.x, %.lr.ph50.split.i.preheader.split ]
  %storemerge47.i = phi i32 [ %i.dg, %._crit_edge43.i.loopexit.split ], [ %i.ao, %.lr.ph50.split.i.preheader.split ] ; 4 uses
  %i.bo = icmp slt i32 %storemerge47.i, %i.ao
  br label %.lr.ph42.split.i

.lr.ph42.split.i:                                 ; preds = %.lr.ph50.split.i, %._crit_edge35.i.loopexit
  %.140.i = phi i32 [ %.us-phi, %._crit_edge35.i.loopexit ], [ %.049.i, %.lr.ph50.split.i ]
  %storemerge3438.i = phi i32 [ %i.df, %._crit_edge35.i.loopexit ], [ %i.bd, %.lr.ph50.split.i ] ; 5 uses
  %i.bp = add i32 %storemerge3438.i, 2            ; 4 uses
  %i.bq = mul i32 %i.bp, %.1                      ; 2 uses
  %i.br = icmp sgt i32 %i.bq, 0
  %.not56.i.i = icmp sgt i32 %storemerge47.i, %storemerge3438.i
  %i.bs = icmp slt i32 %storemerge3438.i, %i.bd
  %invariant.op43.reass = or i1 %i.bs, %i.bo
  br label %.lr.ph34.split.i

.lr.ph34.split.i:                                 ; preds = %.lr.ph42.split.i, %._crit_edge.i.loopexit
  %.232.i = phi i32 [ %.us-phi, %._crit_edge.i.loopexit ], [ %.140.i, %.lr.ph42.split.i ] ; 2 uses
  %storemerge3631.i = phi i32 [ %i.de, %._crit_edge.i.loopexit ], [ %i.bi, %.lr.ph42.split.i ] ; 7 uses
  %i.bt = icmp eq i32 %storemerge3631.i, 0
  %i.bu = icmp slt i32 %storemerge3631.i, 1
  %i.bv = xor i1 %i.br, %i.bu
  %..neg.i.v.i = select i1 %i.bv, i32 2, i32 -2
  %i.bw = icmp slt i32 %storemerge3631.i, %i.bi
  %invariant.op40.reass = or i1 %i.bw, %invariant.op43.reass
  %invariant.op40.fr = freeze i1 %invariant.op40.reass
  br i1 %invariant.op40.fr, label %._crit_edge.i.loopexit, label %.lr.ph.i.split

.lr.ph.i.split:                                   ; preds = %.lr.ph34.split.i, %intel_pll_is_valid.exit.thread.i
  %.329.i = phi i32 [ %.5.i, %intel_pll_is_valid.exit.thread.i ], [ %.232.i, %.lr.ph34.split.i ] ; 12 uses
  %storemerge3828.i = phi i32 [ %i.dd, %intel_pll_is_valid.exit.thread.i ], [ %i.bl, %.lr.ph34.split.i ] ; 4 uses
  %i.bx = mul i32 %storemerge3828.i, %.0.i.i      ; 8 uses
  br i1 %i.bt, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.split
  %..neg.i.i = sdiv i32 %storemerge3631.i, %..neg.i.v.i
  %.pn.i.i = add i32 %..neg.i.i, %i.bq
  %i.by = sdiv i32 %.pn.i.i, %storemerge3631.i
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i.split
  %i.bz = phi i32 [ %i.by, %bb.o ], [ 0, %.lr.ph.i.split ] ; 5 uses
  %i.ca = icmp eq i32 %i.bx, 0
  br i1 %i.ca, label %pnv_calc_dpll_params.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cb = icmp sgt i32 %i.bz, 0
  %i.cc = icmp slt i32 %i.bx, 1
  %i.cd = xor i1 %i.cc, %i.cb
  br i1 %i.cd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ce = sdiv i32 %i.bx, 2
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %.neg33.i.i = sdiv i32 %i.bx, -2
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn36.i.i = phi i32 [ %i.ce, %bb.r ], [ %.neg33.i.i, %bb.s ]
  %.pn34.i.i = add i32 %.pn36.i.i, %i.bz
  %i.cf = sdiv i32 %.pn34.i.i, %i.bx
  br label %pnv_calc_dpll_params.exit.i

pnv_calc_dpll_params.exit.i:                      ; preds = %bb.t, %bb.p
  %i.cg = phi i32 [ %i.cf, %bb.t ], [ 0, %bb.p ]  ; 4 uses
  %i.ch = icmp slt i32 %storemerge3828.i, %i.bl
  br i1 %i.ch, label %intel_pll_is_valid.exit.thread.i, label %bb.u

bb.u:                                             ; preds = %pnv_calc_dpll_params.exit.i
  %i.ci = load i64, ptr %i.av, align 8            ; 2 uses
  %i.cj = and i64 %i.ci, 36642492416
  %or.cond63.i.i = icmp ne i64 %i.cj, 0
  %or.cond64.i.i = or i1 %.not56.i.i, %or.cond63.i.i
  br i1 %or.cond64.i.i, label %bb.v, label %intel_pll_is_valid.exit.thread.i

bb.v:                                             ; preds = %bb.u
  %i.ck = and i64 %i.ci, 36642488320
  %or.cond67.i.i = icmp eq i64 %i.ck, 0
  br i1 %or.cond67.i.i, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.cl = load i32, ptr %i.aw, align 4
  %i.cm = icmp slt i32 %i.bx, %i.cl
  br i1 %i.cm, label %intel_pll_is_valid.exit.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cn = load i32, ptr %i.ax, align 4
  %i.co = icmp slt i32 %i.cn, %i.bx
  br i1 %i.co, label %intel_pll_is_valid.exit.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cp = load i32, ptr %i.ay, align 4
  %i.cq = icmp slt i32 %i.bp, %i.cp
  br i1 %i.cq, label %intel_pll_is_valid.exit.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cr = load i32, ptr %i.az, align 4
  %i.cs = icmp slt i32 %i.cr, %i.bp
  br i1 %i.cs, label %intel_pll_is_valid.exit.thread.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.v
  %i.ct = load i32, ptr %i.ba, align 4
  %i.cu = icmp slt i32 %i.bz, %i.ct
  br i1 %i.cu, label %intel_pll_is_valid.exit.thread.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cv = load i32, ptr %i.bb, align 4
  %i.cw = icmp slt i32 %i.cv, %i.bz
  br i1 %i.cw, label %intel_pll_is_valid.exit.thread.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cx = load i32, ptr %.024, align 4
  %i.cy = icmp slt i32 %i.cg, %i.cx
  br i1 %i.cy, label %intel_pll_is_valid.exit.thread.i, label %intel_pll_is_valid.exit.i

intel_pll_is_valid.exit.i:                        ; preds = %bb.ac
  %i.cz = load i32, ptr %i.bc, align 4
  %.not26.i = icmp slt i32 %i.cz, %i.cg
  br i1 %.not26.i, label %intel_pll_is_valid.exit.thread.i, label %bb.ad

bb.ad:                                            ; preds = %intel_pll_is_valid.exit.i
  %i.da = sub i32 %i.cg, %i.x
  %i.db = tail call i32 @llvm.abs.i32(i32 %i.da, i1 false) ; 2 uses
  %i.dc = icmp slt i32 %i.db, %.329.i
  br i1 %i.dc, label %bb.ae, label %intel_pll_is_valid.exit.thread.i

bb.ae:                                            ; preds = %bb.ad
  store i32 %storemerge3631.i, ptr %i.y, align 4
  store i32 %storemerge47.i, ptr %.sroa.8.0..sroa_idx.i, align 8
  store i32 %storemerge3438.i, ptr %.sroa.11.0..sroa_idx.i, align 4
  store i32 %storemerge3828.i, ptr %.sroa.15.0..sroa_idx.i, align 8
  store i32 %.0.i.i, ptr %.sroa.19.0..sroa_idx.i, align 4
  store i32 %i.cg, ptr %.sroa.21.0..sroa_idx.i, align 8
  store i32 %i.bz, ptr %.sroa.24.0..sroa_idx.i, align 4
  store i32 %i.bp, ptr %.sroa.26.0..sroa_idx.i, align 8
  store i32 %i.bx, ptr %.sroa.28.0..sroa_idx.i, align 4
  br label %intel_pll_is_valid.exit.thread.i

intel_pll_is_valid.exit.thread.i:                 ; preds = %bb.ae, %bb.ad, %intel_pll_is_valid.exit.i, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.u, %pnv_calc_dpll_params.exit.i
  %.5.i = phi i32 [ %.329.i, %intel_pll_is_valid.exit.i ], [ %i.db, %bb.ae ], [ %.329.i, %bb.ad ], [ %.329.i, %bb.ab ], [ %.329.i, %pnv_calc_dpll_params.exit.i ], [ %.329.i, %bb.z ], [ %.329.i, %bb.x ], [ %.329.i, %bb.y ], [ %.329.i, %bb.aa ], [ %.329.i, %bb.ac ], [ %.329.i, %bb.u ], [ %.329.i, %bb.w ] ; 2 uses
  %i.dd = add i32 %storemerge3828.i, 1            ; 2 uses
  %.not39.i = icmp sgt i32 %i.dd, %i.bm
  br i1 %.not39.i, label %._crit_edge.i.loopexit, label %.lr.ph.i.split, !llvm.loop !61

._crit_edge.i.loopexit:                           ; preds = %intel_pll_is_valid.exit.thread.i, %.lr.ph34.split.i
  %.us-phi = phi i32 [ %.232.i, %.lr.ph34.split.i ], [ %.5.i, %intel_pll_is_valid.exit.thread.i ] ; 4 uses
  %i.de = add i32 %storemerge3631.i, 1            ; 2 uses
  %.not37.i = icmp sgt i32 %i.de, %i.bj
  br i1 %.not37.i, label %._crit_edge35.i.loopexit, label %.lr.ph34.split.i, !llvm.loop !62

._crit_edge35.i.loopexit:                         ; preds = %._crit_edge.i.loopexit
  %i.df = add i32 %storemerge3438.i, 1            ; 2 uses
  %.not35.i = icmp sgt i32 %i.df, %i.be
  br i1 %.not35.i, label %._crit_edge43.i.loopexit.split, label %.lr.ph42.split.i, !llvm.loop !63

._crit_edge43.i.loopexit.split:                   ; preds = %._crit_edge35.i.loopexit
  %i.dg = add i32 %storemerge47.i, 1              ; 2 uses
  %.not33.i = icmp sgt i32 %i.dg, %i.aq
  br i1 %.not33.i, label %pnv_find_best_dpll.exit, label %.lr.ph50.split.i, !llvm.loop !64

pnv_find_best_dpll.exit:                          ; preds = %._crit_edge43.i.loopexit.split
  %i.dh = icmp eq i32 %.us-phi, %i.x
  br i1 %i.dh, label %pnv_find_best_dpll.exit.thread, label %bb.af

bb.af:                                            ; preds = %pnv_find_best_dpll.exit, %bb.g
  %i.di = getelementptr i8, ptr %i.j, i64 900     ; 3 uses
  %i.dj = getelementptr i8, ptr %i.j, i64 908
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = add i32 %i.dk, 2                        ; 2 uses
  %i.dm = getelementptr i8, ptr %i.j, i64 928
  store i32 %i.dl, ptr %i.dm, align 8
  %i.dn = getelementptr i8, ptr %i.j, i64 912
  %i.do = load i32, ptr %i.dn, align 8
  %i.dp = getelementptr i8, ptr %i.j, i64 916
  %i.dq = load i32, ptr %i.dp, align 4
  %i.dr = mul i32 %i.dq, %i.do                    ; 6 uses
  %i.ds = getelementptr i8, ptr %i.j, i64 932
  store i32 %i.dr, ptr %i.ds, align 4
  %i.dt = load i32, ptr %i.di, align 4            ; 5 uses
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dv = mul i32 %i.dl, %.1                      ; 2 uses
  %i.dw = icmp sgt i32 %i.dv, 0
  %i.dx = icmp slt i32 %i.dt, 1
  %i.dy = xor i1 %i.dw, %i.dx
  br i1 %i.dy, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.dz = sdiv i32 %i.dt, 2
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %.neg.i = sdiv i32 %i.dt, -2
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn35.i = phi i32 [ %i.dz, %bb.ah ], [ %.neg.i, %bb.ai ]
  %.pn.i = add i32 %.pn35.i, %i.dv
  %i.ea = sdiv i32 %.pn.i, %i.dt
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.af
  %i.eb = phi i32 [ %i.ea, %bb.aj ], [ 0, %bb.af ] ; 3 uses
  %i.ec = getelementptr i8, ptr %i.j, i64 924
  store i32 %i.eb, ptr %i.ec, align 4
  %i.ed = icmp eq i32 %i.dr, 0
  br i1 %i.ed, label %pnv_calc_dpll_params.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ee = icmp sgt i32 %i.eb, 0
  %i.ef = icmp slt i32 %i.dr, 1
  %i.eg = xor i1 %i.ef, %i.ee
  br i1 %i.eg, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.eh = sdiv i32 %i.dr, 2
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %.neg33.i = sdiv i32 %i.dr, -2
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn36.i = phi i32 [ %i.eh, %bb.am ], [ %.neg33.i, %bb.an ]
  %.pn34.i = add i32 %.pn36.i, %i.eb
  %i.ei = sdiv i32 %.pn34.i, %i.dr
  br label %pnv_calc_dpll_params.exit

pnv_calc_dpll_params.exit:                        ; preds = %bb.ak, %bb.ao
  %i.ej = phi i32 [ %i.ei, %bb.ao ], [ 0, %bb.ak ]
  %i.ek = getelementptr i8, ptr %i.j, i64 920     ; 2 uses
  store i32 %i.ej, ptr %i.ek, align 8
  tail call fastcc void @i9xx_compute_dpll(ptr noundef %i.j, ptr noundef %i.di, ptr noundef %i.di) #15, !srcloc !65
end_hunk_1
begin_hunk_2_@i9xx_crtc_compute_clock:bb.a
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
  %i.ah = phi i32 [ %i.s, %.lr.ph55 ], [ %i.dm, %._crit_edge47 ] ; 2 uses
  %i.ai = phi i32 [ %.pre, %.lr.ph55 ], [ %i.dn, %._crit_edge47 ] ; 5 uses
  %i.aj = phi i32 [ %.pre, %.lr.ph55 ], [ %i.do, %._crit_edge47 ] ; 2 uses
  %i.ak = phi i32 [ %.pre, %.lr.ph55 ], [ %i.dp, %._crit_edge47 ] ; 2 uses
  %.054 = phi i32 [ %2, %.lr.ph55 ], [ %.1.lcssa, %._crit_edge47 ] ; 3 uses
  %storemerge52 = phi i32 [ %i.q, %.lr.ph55 ], [ %i.dq, %._crit_edge47 ] ; 7 uses
  %i.al = load i32, ptr %i.t, align 4             ; 3 uses
  %.not3639 = icmp sle i32 %i.al, %i.ak
  %.not3740 = icmp slt i32 %i.al, %storemerge52
  %or.cond41 = and i1 %.not3740, %.not3639
  br i1 %or.cond41, label %.lr.ph46, label %._crit_edge47

.lr.ph46:                                         ; preds = %bb.h
  %i.am = mul i32 %storemerge52, 5
  %invariant.op49 = add i32 %i.am, 12
  %i.an = load i32, ptr %i.v, align 4
  %i.ao = load i32, ptr %i.w, align 4             ; 3 uses
  %i.ap = icmp sgt i32 %i.an, %i.ao
  br i1 %i.ap, label %._crit_edge47, label %.lr.ph46.split

.lr.ph46.split:                                   ; preds = %.lr.ph46, %._crit_edge37
  %i.aq = phi i32 [ %i.dh, %._crit_edge37 ], [ %i.ai, %.lr.ph46 ] ; 2 uses
  %i.ar = phi i32 [ %i.di, %._crit_edge37 ], [ %i.aj, %.lr.ph46 ] ; 2 uses
  %i.as = phi i32 [ %i.dj, %._crit_edge37 ], [ %i.ao, %.lr.ph46 ] ; 3 uses
  %i.at = phi i32 [ %i.dk, %._crit_edge37 ], [ %i.ao, %.lr.ph46 ] ; 3 uses
  %.144 = phi i32 [ %.2.lcssa, %._crit_edge37 ], [ %.054, %.lr.ph46 ] ; 3 uses
  %storemerge3542 = phi i32 [ %i.dl, %._crit_edge37 ], [ %i.al, %.lr.ph46 ] ; 6 uses
  %i.au = load i32, ptr %i.v, align 4             ; 2 uses
  %.not3932 = icmp sgt i32 %i.au, %i.at
  br i1 %.not3932, label %._crit_edge37, label %.lr.ph36

.lr.ph36:                                         ; preds = %.lr.ph46.split
  %.reass.reass = add i32 %storemerge3542, %invariant.op49 ; 4 uses
  %i.av = mul i32 %.reass.reass, %3               ; 2 uses
  %i.aw = icmp sgt i32 %i.av, 0
  %i.ax = load i32, ptr %i.x, align 4
  %i.ay = load i32, ptr %i.y, align 4             ; 3 uses
  %i.az = icmp sgt i32 %i.ax, %i.ay
  br i1 %i.az, label %._crit_edge37, label %.lr.ph36.split

.lr.ph36.split:                                   ; preds = %.lr.ph36, %._crit_edge
  %i.ba = phi i32 [ %i.dd, %._crit_edge ], [ %i.as, %.lr.ph36 ]
  %i.bb = phi i32 [ %i.de, %._crit_edge ], [ %i.ay, %.lr.ph36 ] ; 2 uses
  %i.bc = phi i32 [ %i.df, %._crit_edge ], [ %i.ay, %.lr.ph36 ] ; 2 uses
  %.234 = phi i32 [ %.3.lcssa, %._crit_edge ], [ %.144, %.lr.ph36 ] ; 2 uses
  %storemerge3833 = phi i32 [ %i.dg, %._crit_edge ], [ %i.au, %.lr.ph36 ] ; 5 uses
  %i.bd = load i32, ptr %i.x, align 4             ; 2 uses
  %.not4129 = icmp sgt i32 %i.bd, %i.bc
  br i1 %.not4129, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph36.split
  %i.be = add i32 %storemerge3833, 2              ; 4 uses
  %i.bf = icmp eq i32 %i.be, 0
  %i.bg = icmp slt i32 %i.be, 1
  %i.bh = xor i1 %i.aw, %i.bg
  %5 = freeze i1 %i.bh
  %..neg.i.v = select i1 %5, i32 2, i32 -2
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %intel_pll_is_valid.exit.thread
  %i.bi = phi i32 [ %i.bb, %.lr.ph ], [ %i.db, %intel_pll_is_valid.exit.thread ] ; 16 uses
  %.331 = phi i32 [ %.234, %.lr.ph ], [ %.5, %intel_pll_is_valid.exit.thread ] ; 17 uses
  %storemerge4030 = phi i32 [ %i.bd, %.lr.ph ], [ %i.dc, %intel_pll_is_valid.exit.thread ] ; 4 uses
  %i.bj = mul i32 %storemerge4030, %.0.i          ; 8 uses
  br i1 %i.bf, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %..neg.i = sdiv i32 %i.be, %..neg.i.v
  %.pn.i = add i32 %..neg.i, %i.av
  %i.bk = sdiv i32 %.pn.i, %i.be
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bl = phi i32 [ %i.bk, %bb.j ], [ 0, %bb.i ]  ; 5 uses
  %i.bm = icmp eq i32 %i.bj, 0
  br i1 %i.bm, label %i9xx_calc_dpll_params.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = icmp sgt i32 %i.bl, 0
  %i.bo = icmp slt i32 %i.bj, 1
  %i.bp = xor i1 %i.bo, %i.bn
  br i1 %i.bp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bq = sdiv i32 %i.bj, 2
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %.neg33.i = sdiv i32 %i.bj, -2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn37.i = phi i32 [ %i.bq, %bb.m ], [ %.neg33.i, %bb.n ]
  %.pn34.i = add i32 %.pn37.i, %i.bl
  %i.br = sdiv i32 %.pn34.i, %i.bj
  br label %i9xx_calc_dpll_params.exit

i9xx_calc_dpll_params.exit:                       ; preds = %bb.k, %bb.o
  %i.bs = phi i32 [ %i.br, %bb.o ], [ 0, %bb.k ]  ; 4 uses
  %i.bt = load i32, ptr %i.v, align 4
  %i.bu = icmp slt i32 %storemerge3833, %i.bt
  br i1 %i.bu, label %intel_pll_is_valid.exit.thread, label %bb.p

bb.p:                                             ; preds = %i9xx_calc_dpll_params.exit
  %i.bv = load i32, ptr %i.w, align 4
  %i.bw = icmp slt i32 %i.bv, %storemerge3833
  br i1 %i.bw, label %intel_pll_is_valid.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = load i32, ptr %i.x, align 4
  %i.by = icmp slt i32 %storemerge4030, %i.bx
  br i1 %i.by, label %intel_pll_is_valid.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = load i32, ptr %i.t, align 4
  %i.ca = icmp slt i32 %storemerge3542, %i.bz
  br i1 %i.ca, label %intel_pll_is_valid.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = load i32, ptr %i.u, align 4
  %i.cc = icmp slt i32 %i.cb, %storemerge3542
  br i1 %i.cc, label %intel_pll_is_valid.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cd = load i32, ptr %i.p, align 4
  %i.ce = icmp slt i32 %storemerge52, %i.cd
  br i1 %i.ce, label %intel_pll_is_valid.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cf = load i32, ptr %i.r, align 4
  %i.cg = icmp slt i32 %i.cf, %storemerge52
  br i1 %i.cg, label %intel_pll_is_valid.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ch = load i64, ptr %i.z, align 8
  %i.ci = and i64 %i.ch, 36642488320
  %or.cond67.i = icmp eq i64 %i.ci, 0
  br i1 %or.cond67.i, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.cj = load i32, ptr %i.aa, align 4
  %i.ck = icmp slt i32 %i.bj, %i.cj
  br i1 %i.ck, label %intel_pll_is_valid.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cl = load i32, ptr %i.ab, align 4
  %i.cm = icmp slt i32 %i.cl, %i.bj
  br i1 %i.cm, label %intel_pll_is_valid.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cn = load i32, ptr %i.ac, align 4
  %i.co = icmp slt i32 %.reass.reass, %i.cn
  br i1 %i.co, label %intel_pll_is_valid.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cp = load i32, ptr %i.ad, align 4
  %i.cq = icmp slt i32 %i.cp, %.reass.reass
  br i1 %i.cq, label %intel_pll_is_valid.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.v
  %i.cr = load i32, ptr %i.ae, align 4
  %i.cs = icmp slt i32 %i.bl, %i.cr
  br i1 %i.cs, label %intel_pll_is_valid.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ct = load i32, ptr %i.af, align 4
  %i.cu = icmp slt i32 %i.ct, %i.bl
  br i1 %i.cu, label %intel_pll_is_valid.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cv = load i32, ptr %0, align 4
  %i.cw = icmp slt i32 %i.bs, %i.cv
  br i1 %i.cw, label %intel_pll_is_valid.exit.thread, label %intel_pll_is_valid.exit

intel_pll_is_valid.exit:                          ; preds = %bb.ac
  %i.cx = load i32, ptr %i.ag, align 4
  %.not28 = icmp slt i32 %i.cx, %i.bs
  br i1 %.not28, label %intel_pll_is_valid.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %intel_pll_is_valid.exit
  %i.cy = sub i32 %i.bs, %2
  %i.cz = tail call i32 @llvm.abs.i32(i32 %i.cy, i1 false) ; 2 uses
  %i.da = icmp slt i32 %i.cz, %.331
  br i1 %i.da, label %bb.ae, label %intel_pll_is_valid.exit.thread

bb.ae:                                            ; preds = %bb.ad
  store i32 %storemerge3833, ptr %4, align 4
  store i32 %storemerge52, ptr %.sroa.8.0..sroa_idx, align 4
  store i32 %storemerge3542, ptr %.sroa.13.0..sroa_idx, align 4
  store i32 %storemerge4030, ptr %.sroa.17.0..sroa_idx, align 4
  store i32 %.0.i, ptr %.sroa.21.0..sroa_idx, align 4
  store i32 %i.bs, ptr %.sroa.23.0..sroa_idx, align 4
  store i32 %i.bl, ptr %.sroa.26.0..sroa_idx, align 4
  store i32 %.reass.reass, ptr %.sroa.28.0..sroa_idx, align 4
  store i32 %i.bj, ptr %.sroa.30.0..sroa_idx, align 4
  %.pre60 = load i32, ptr %i.y, align 4
  br label %intel_pll_is_valid.exit.thread

intel_pll_is_valid.exit.thread:                   ; preds = %bb.z, %bb.x, %bb.u, %bb.s, %bb.p, %bb.w, %bb.ab, %bb.ac, %bb.aa, %bb.y, %bb.r, %bb.q, %i9xx_calc_dpll_params.exit, %bb.t, %bb.ad, %bb.ae, %intel_pll_is_valid.exit
  %i.db = phi i32 [ %i.bi, %intel_pll_is_valid.exit ], [ %.pre60, %bb.ae ], [ %i.bi, %bb.ad ], [ %i.bi, %bb.t ], [ %i.bi, %i9xx_calc_dpll_params.exit ], [ %i.bi, %bb.q ], [ %i.bi, %bb.r ], [ %i.bi, %bb.y ], [ %i.bi, %bb.aa ], [ %i.bi, %bb.ac ], [ %i.bi, %bb.ab ], [ %i.bi, %bb.w ], [ %i.bi, %bb.p ], [ %i.bi, %bb.s ], [ %i.bi, %bb.u ], [ %i.bi, %bb.x ], [ %i.bi, %bb.z ] ; 4 uses
  %.5 = phi i32 [ %.331, %intel_pll_is_valid.exit ], [ %i.cz, %bb.ae ], [ %.331, %bb.ad ], [ %.331, %bb.t ], [ %.331, %i9xx_calc_dpll_params.exit ], [ %.331, %bb.q ], [ %.331, %bb.r ], [ %.331, %bb.y ], [ %.331, %bb.aa ], [ %.331, %bb.ac ], [ %.331, %bb.ab ], [ %.331, %bb.w ], [ %.331, %bb.p ], [ %.331, %bb.s ], [ %.331, %bb.u ], [ %.331, %bb.x ], [ %.331, %bb.z ] ; 2 uses
  %i.dc = add i32 %storemerge4030, 1              ; 2 uses
  %.not41 = icmp sgt i32 %i.dc, %i.db
  br i1 %.not41, label %._crit_edge.loopexit, label %bb.i, !llvm.loop !67

._crit_edge.loopexit:                             ; preds = %intel_pll_is_valid.exit.thread
  %.pre61 = load i32, ptr %i.w, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph36.split
  %i.dd = phi i32 [ %i.ba, %.lr.ph36.split ], [ %.pre61, %._crit_edge.loopexit ] ; 4 uses
  %i.de = phi i32 [ %i.bb, %.lr.ph36.split ], [ %i.db, %._crit_edge.loopexit ]
  %i.df = phi i32 [ %i.bc, %.lr.ph36.split ], [ %i.db, %._crit_edge.loopexit ]
  %.3.lcssa = phi i32 [ %.234, %.lr.ph36.split ], [ %.5, %._crit_edge.loopexit ] ; 2 uses
  %i.dg = add i32 %storemerge3833, 1              ; 2 uses
  %.not39 = icmp sgt i32 %i.dg, %i.dd
  br i1 %.not39, label %._crit_edge37.loopexit58, label %.lr.ph36.split, !llvm.loop !68

._crit_edge37.loopexit58:                         ; preds = %._crit_edge
  %.pre62 = load i32, ptr %i.u, align 4           ; 2 uses
  br label %._crit_edge37

._crit_edge37:                                    ; preds = %.lr.ph36, %._crit_edge37.loopexit58, %.lr.ph46.split
  %i.dh = phi i32 [ %i.aq, %.lr.ph46.split ], [ %.pre62, %._crit_edge37.loopexit58 ], [ %i.aq, %.lr.ph36 ] ; 2 uses
  %i.di = phi i32 [ %i.ar, %.lr.ph46.split ], [ %.pre62, %._crit_edge37.loopexit58 ], [ %i.ar, %.lr.ph36 ] ; 4 uses
  %i.dj = phi i32 [ %i.as, %.lr.ph46.split ], [ %i.dd, %._crit_edge37.loopexit58 ], [ %i.as, %.lr.ph36 ]
  %i.dk = phi i32 [ %i.at, %.lr.ph46.split ], [ %i.dd, %._crit_edge37.loopexit58 ], [ %i.at, %.lr.ph36 ]
  %.2.lcssa = phi i32 [ %.144, %.lr.ph46.split ], [ %.3.lcssa, %._crit_edge37.loopexit58 ], [ %.144, %.lr.ph36 ] ; 2 uses
  %i.dl = add nsw i32 %storemerge3542, 1          ; 2 uses
  %.not36 = icmp slt i32 %storemerge3542, %i.di
  %.not37 = icmp slt i32 %i.dl, %storemerge52
  %or.cond = and i1 %.not37, %.not36
  br i1 %or.cond, label %.lr.ph46.split, label %._crit_edge47.loopexit59, !llvm.loop !69

._crit_edge47.loopexit59:                         ; preds = %._crit_edge37
  %.pre63 = load i32, ptr %i.r, align 4
  br label %._crit_edge47

._crit_edge47:                                    ; preds = %.lr.ph46, %._crit_edge47.loopexit59, %bb.h
  %i.dm = phi i32 [ %i.ah, %bb.h ], [ %.pre63, %._crit_edge47.loopexit59 ], [ %i.ah, %.lr.ph46 ] ; 2 uses
  %i.dn = phi i32 [ %i.ai, %bb.h ], [ %i.dh, %._crit_edge47.loopexit59 ], [ %i.ai, %.lr.ph46 ]
  %i.do = phi i32 [ %i.aj, %bb.h ], [ %i.di, %._crit_edge47.loopexit59 ], [ %i.ai, %.lr.ph46 ]
  %i.dp = phi i32 [ %i.ak, %bb.h ], [ %i.di, %._crit_edge47.loopexit59 ], [ %i.ai, %.lr.ph46 ]
  %.1.lcssa = phi i32 [ %.054, %bb.h ], [ %.2.lcssa, %._crit_edge47.loopexit59 ], [ %.054, %.lr.ph46 ] ; 2 uses
  %i.dq = add i32 %storemerge52, 1                ; 2 uses
  %.not34 = icmp sgt i32 %i.dq, %i.dm
  br i1 %.not34, label %._crit_edge56.loopexit, label %bb.h, !llvm.loop !70

._crit_edge56.loopexit:                           ; preds = %._crit_edge47
  %i.dr = icmp ne i32 %.1.lcssa, %2
  br label %._crit_edge56

._crit_edge56:                                    ; preds = %._crit_edge56.loopexit, %i9xx_select_p2_div.exit
  %.0.lcssa = phi i1 [ false, %i9xx_select_p2_div.exit ], [ %i.dr, %._crit_edge56.loopexit ]
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

end_hunk_2
