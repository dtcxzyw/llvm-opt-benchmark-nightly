Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_pch_display?download=true
inline.NumInlined: 142
inline.NumDeleted: 26
begin_hunk_0_@intel_pch_transcoder_get_m1_n1:bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_get_m_n(ptr noundef, ptr noundef, i32, i32, i32, i32) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_pch_transcoder_get_m2_n2(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  %i.d = getelementptr i8, ptr %0, i64 1664
  %i.e = load i32, ptr %i.d, align 8
  %i.f = shl i32 %i.e, 12                         ; 4 uses
  %i.g = add i32 %i.f, 917560
  %i.h = add i32 %i.f, 917564
  %i.i = add i32 %i.f, 917576
  %i.j = add i32 %i.f, 917580
  tail call void @intel_get_m_n(ptr noundef %i.c, ptr noundef %1, i32 %i.g, i32 %i.h, i32 %i.i, i32 %i.j) #5
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ilk_pch_pre_enable(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %1, i64 136
  %.val3 = load i32, ptr %i.b, align 8
  %i.c = zext i32 %.val3 to i64
  %i.d = getelementptr [56 x i8], ptr %.val, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @ilk_fdi_pll_enable(ptr noundef %i.f) #5
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ilk_fdi_pll_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ilk_pch_enable(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 23 uses
  %i.d = getelementptr i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %1, i64 136
  %.val76 = load i32, ptr %i.e, align 8
  %i.f = zext i32 %.val76 to i64
  %i.g = getelementptr [56 x i8], ptr %.val, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8              ; 14 uses
  %i.j = getelementptr i8, ptr %1, i64 1664       ; 3 uses
  %i.k = load i32, ptr %i.j, align 8              ; 6 uses
  tail call fastcc void @assert_pch_transcoder_disabled(ptr noundef %i.c, i32 noundef %i.k) #6, !srcloc !19
  tail call void @intel_fdi_link_train(ptr noundef %1, ptr noundef %i.i) #5
  %i.l = getelementptr i8, ptr %i.c, i64 24       ; 2 uses
  %i.m = load i32, ptr %i.l, align 8
  %i.n = icmp eq i32 %i.m, 2
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 815104) #5
  %.val.i = load ptr, ptr %i.c, align 8
  %i.o = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #5 ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 144
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call i32 %i.q(ptr noundef %i.o, i32 815104, i1 noundef zeroext true) #5, !inline_history !0
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 815104) #5
  %i.s = shl i32 %i.k, 2                          ; 2 uses
  %i.t = shl nuw i32 8, %i.s
  %i.u = or i32 %i.r, %i.t                        ; 2 uses
  %i.v = shl nuw i32 1, %i.s                      ; 2 uses
  %i.w = getelementptr i8, ptr %i.i, i64 936
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call ptr @intel_get_dpll_by_id(ptr noundef %i.c, i32 noundef 1) #5
  %i.z = icmp eq ptr %i.x, %i.y
  %i.aa = or i32 %i.u, %i.v
  %i.ab = xor i32 %i.v, -1
  %i.ac = and i32 %i.u, %i.ab
  %.0 = select i1 %i.z, i32 %i.aa, i32 %i.ac
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 815104) #5
  %.val.i79 = load ptr, ptr %i.c, align 8
  %i.ad = tail call ptr @to_intel_uncore(ptr noundef %.val.i79) #5 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 176
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef %i.ad, i32 815104, i32 noundef %.0, i1 noundef zeroext true) #5, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 815104) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @intel_dpll_enable(ptr noundef %i.i) #5
  tail call void @assert_pps_unlocked(ptr noundef %i.c, i32 noundef %i.k) #5
  %i.ag = getelementptr i8, ptr %i.i, i64 888     ; 3 uses
  %.val78 = load i32, ptr %i.ag, align 8
  %i.ah = and i32 %.val78, 2432
  %.not99 = icmp eq i32 %i.ah, 0
  br i1 %.not99, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr i8, ptr %i.i, i64 1248
  %i.aj = load ptr, ptr %1, align 8               ; 2 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %intel_pch_transcoder_set_m1_n1.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = tail call ptr @__drm_to_display(ptr noundef nonnull %i.aj) #5
  br label %intel_pch_transcoder_set_m1_n1.exit

intel_pch_transcoder_set_m1_n1.exit:              ; preds = %bb.f, %bb.g
  %i.al = phi ptr [ %i.ak, %bb.g ], [ null, %bb.f ]
  %i.am = load i32, ptr %i.j, align 8
  %i.an = shl i32 %i.am, 12                       ; 4 uses
  %i.ao = add i32 %i.an, 917552
  %i.ap = add i32 %i.an, 917556
  %i.aq = add i32 %i.an, 917568
  %i.ar = add i32 %i.an, 917572
  tail call void @intel_set_m_n(ptr noundef %i.al, ptr noundef %i.ai, i32 %i.ao, i32 %i.ap, i32 %i.aq, i32 %i.ar) #5
  %i.as = getelementptr i8, ptr %i.i, i64 1268
  %i.at = load ptr, ptr %1, align 8               ; 2 uses
  %.not.i80 = icmp eq ptr %i.at, null
  br i1 %.not.i80, label %intel_pch_transcoder_set_m2_n2.exit, label %bb.h

bb.h:                                             ; preds = %intel_pch_transcoder_set_m1_n1.exit
  %i.au = tail call ptr @__drm_to_display(ptr noundef nonnull %i.at) #5
  br label %intel_pch_transcoder_set_m2_n2.exit

intel_pch_transcoder_set_m2_n2.exit:              ; preds = %intel_pch_transcoder_set_m1_n1.exit, %bb.h
  %i.av = phi ptr [ %i.au, %bb.h ], [ null, %intel_pch_transcoder_set_m1_n1.exit ]
  %i.aw = load i32, ptr %i.j, align 8
  %i.ax = shl i32 %i.aw, 12                       ; 4 uses
  %i.ay = add i32 %i.ax, 917560
  %i.az = add i32 %i.ax, 917564
  %i.ba = add i32 %i.ax, 917576
  %i.bb = add i32 %i.ax, 917580
  tail call void @intel_set_m_n(ptr noundef %i.av, ptr noundef %i.as, i32 %i.ay, i32 %i.az, i32 %i.ba, i32 %i.bb) #5
  br label %bb.i

bb.i:                                             ; preds = %intel_pch_transcoder_set_m2_n2.exit, %bb.e
  tail call fastcc void @ilk_pch_transcoder_set_timings(ptr noundef %i.i, i32 noundef %i.k) #6, !srcloc !20
  tail call void @intel_fdi_normal_train(ptr noundef %1) #5
  %i.bc = load i32, ptr %i.l, align 8
  %i.bd = icmp eq i32 %i.bc, 2
  br i1 %i.bd, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %.val77 = load i32, ptr %i.ag, align 8
  %i.be = and i32 %.val77, 2432
  %.not100 = icmp eq i32 %i.be, 0
  br i1 %.not100, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr i8, ptr %i.c, i64 1160
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 52     ; 2 uses
  %i.bi = sext i32 %i.k to i64
  %i.bj = getelementptr [4 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = load i32, ptr %i.bh, align 4
  %i.bm = getelementptr i8, ptr %i.bg, i64 48
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = add i32 %i.bk, 458760
  %i.bp = sub i32 %i.bo, %i.bl
  %i.bq = add i32 %i.bp, %i.bn                    ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.bq) #5
  %.val.i81 = load ptr, ptr %i.c, align 8
  %i.br = tail call ptr @to_intel_uncore(ptr noundef %.val.i81) #5 ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 144
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = tail call i32 %i.bt(ptr noundef %i.br, i32 %i.bq, i1 noundef zeroext true) #5, !inline_history !0
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.bq) #5
  %i.bv = shl i32 %i.k, 12
  %i.bw = add i32 %i.bv, 918272                   ; 6 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.bw) #5
  %.val.i82 = load ptr, ptr %i.c, align 8
  %i.bx = tail call ptr @to_intel_uncore(ptr noundef %.val.i82) #5 ; 2 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 144
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = tail call i32 %i.bz(ptr noundef %i.bx, i32 %i.bw, i1 noundef zeroext true) #5, !inline_history !0
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.bw) #5
  %i.cb = and i32 %i.ca, 536869351
  %i.cc = shl i32 %i.bu, 4
  %i.cd = and i32 %i.cc, 3584
  %2 = or i32 %i.cb, %i.cd
  %i.ce = getelementptr i8, ptr %i.i, i64 640
  %i.cf = load i32, ptr %i.ce, align 8            ; 2 uses
  %3 = and i32 %i.cf, 1
  %.not74 = icmp eq i32 %3, 0
  %spec.select.v = select i1 %.not74, i32 -2147483648, i32 -2147483640
  %i.cg = shl i32 %i.cf, 2
  %i.ch = and i32 %i.cg, 16
  %i.ci = tail call ptr @intel_get_crtc_new_encoder(ptr noundef %0, ptr noundef %i.i) #5
  %i.cj = getelementptr i8, ptr %i.ci, i64 156
  %i.ck = load i32, ptr %i.cj, align 4            ; 2 uses
  %i.cl = add i32 %i.ck, -4
  %i.cm = icmp ult i32 %i.cl, -3
  br i1 %i.cm, label %bb.l, label %bb.q, !prof !12

bb.l:                                             ; preds = %bb.k
  %i.cn = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i83 = icmp eq ptr %i.cn, null
  br i1 %.not.i83, label %__drm_to_dev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.co = getelementptr i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.l, %bb.m
  %i.cq = phi ptr [ %i.cp, %bb.m ], [ null, %bb.l ]
  %i.cr = tail call ptr @dev_driver_string(ptr noundef %i.cq) #5 ; 0 uses
  %i.cs = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.2, i32 437, i32 2321, i64 16) #7, !srcloc !21
  %i.ct = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i88 = icmp eq ptr %i.ct, null
  br i1 %.not.i88, label %__drm_to_dev.exit89, label %bb.n

bb.n:                                             ; preds = %__drm_to_dev.exit
  %i.cu = getelementptr i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  br label %__drm_to_dev.exit89

__drm_to_dev.exit89:                              ; preds = %__drm_to_dev.exit, %bb.n
  %i.cw = phi ptr [ %i.cv, %bb.n ], [ null, %__drm_to_dev.exit ]
  %i.cx = tail call ptr @dev_driver_string(ptr noundef %i.cw) #5
  %i.cy = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i90 = icmp eq ptr %i.cy, null
  br i1 %.not.i90, label %__drm_to_dev.exit91, label %bb.o

bb.o:                                             ; preds = %__drm_to_dev.exit89
  %i.cz = getelementptr i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  br label %__drm_to_dev.exit91

__drm_to_dev.exit91:                              ; preds = %__drm_to_dev.exit89, %bb.o
  %i.db = phi ptr [ %i.da, %bb.o ], [ null, %__drm_to_dev.exit89 ] ; 2 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 80
  %i.dd = load ptr, ptr %i.dc, align 8            ; 2 uses
  %.not.i92 = icmp eq ptr %i.dd, null
  br i1 %.not.i92, label %bb.p, label %dev_name.exit95

bb.p:                                             ; preds = %__drm_to_dev.exit91
  %.val.i94 = load ptr, ptr %i.db, align 8
  br label %dev_name.exit95

dev_name.exit95:                                  ; preds = %__drm_to_dev.exit91, %bb.p
  %.0.i93 = phi ptr [ %.val.i94, %bb.p ], [ %i.dd, %__drm_to_dev.exit91 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.cs, ptr noundef %i.cx, ptr noundef %.0.i93, ptr noundef nonnull @.str.1) #5
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !22
  br label %bb.q

bb.q:                                             ; preds = %dev_name.exit95, %bb.k
  %i.de = shl i32 %i.ck, 29
  %i.df = add i32 %i.de, 1610612736
  %4 = and i32 %i.df, 1610612736
  %spec.select = or disjoint i32 %2, %i.ch
  %.2 = or disjoint i32 %spec.select, %spec.select.v
  %i.dg = or disjoint i32 %.2, %4
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.bw) #5
  %.val.i96 = load ptr, ptr %i.c, align 8
  %i.dh = tail call ptr @to_intel_uncore(ptr noundef %.val.i96) #5 ; 2 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 176
  %i.dj = load ptr, ptr %i.di, align 8
  tail call void %i.dj(ptr noundef %i.dh, i32 %i.bw, i32 noundef %i.dg, i1 noundef zeroext true) #5, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.bw) #5
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.j, %bb.i
  %i.dk = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8            ; 2 uses
  %.not.i97 = icmp eq ptr %i.dl, null
  br i1 %.not.i97, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dm = tail call ptr @__drm_to_display(ptr noundef nonnull %i.dl) #5
  %.pre.i = load ptr, ptr %i.i, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dn = phi ptr [ %.pre.i, %bb.s ], [ %i.dk, %bb.r ]
  %i.do = phi ptr [ %i.dm, %bb.s ], [ null, %bb.r ] ; 22 uses
  %i.dp = getelementptr i8, ptr %i.dn, i64 1664
  %i.dq = load i32, ptr %i.dp, align 8            ; 5 uses
  %i.dr = getelementptr i8, ptr %i.i, i64 936
  %i.ds = load ptr, ptr %i.dr, align 8
  tail call void @assert_dpll(ptr noundef %i.do, ptr noundef %i.ds, i1 noundef zeroext true) #5
  tail call void @assert_fdi_tx_enabled(ptr noundef %i.do, i32 noundef %i.dq) #5
  tail call void @assert_fdi_rx_enabled(ptr noundef %i.do, i32 noundef %i.dq) #5
  %i.dt = getelementptr i8, ptr %i.do, i64 24     ; 2 uses
  %i.du = load i32, ptr %i.dt, align 8
  %i.dv = icmp eq i32 %i.du, 2
  %i.dw = shl i32 %i.dq, 12                       ; 2 uses
  br i1 %i.dv, label %bb.u, label %._crit_edge.i

bb.u:                                             ; preds = %bb.t
  %i.dx = add i32 %i.dw, 983140                   ; 6 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.do, i32 %i.dx) #5
  %.val.i.i = load ptr, ptr %i.do, align 8
  %i.dy = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i) #5 ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 144
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = tail call i32 %i.ea(ptr noundef %i.dy, i32 %i.dx, i1 noundef zeroext true) #5, !inline_history !17
  tail call void @intel_dmc_wl_put(ptr noundef %i.do, i32 %i.dx) #5
  %i.ec = and i32 %i.eb, 1744830463
  %i.ed = getelementptr i8, ptr %i.i, i64 3951
  %i.ee = load i8, ptr %i.ed, align 1
  %i.ef = zext i8 %i.ee to i32
  %i.eg = shl i32 %i.ef, 27
  %i.eh = add i32 %i.eg, 402653184
  %i.ei = and i32 %i.eh, 402653184
  %i.ej = or disjoint i32 %i.ec, %i.ei
  %i.ek = or disjoint i32 %i.ej, -2147483648
  tail call void @intel_dmc_wl_get(ptr noundef %i.do, i32 %i.dx) #5
  %.val.i58.i = load ptr, ptr %i.do, align 8
  %i.el = tail call ptr @to_intel_uncore(ptr noundef %.val.i58.i) #5 ; 2 uses
  %i.em = getelementptr i8, ptr %i.el, i64 176
  %i.en = load ptr, ptr %i.em, align 8
  tail call void %i.en(ptr noundef %i.el, i32 %i.dx, i32 noundef %i.ek, i1 noundef zeroext true) #5, !inline_history !18
  tail call void @intel_dmc_wl_put(ptr noundef %i.do, i32 %i.dx) #5
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.u, %bb.t
  %i.eo = add i32 %i.dw, 983048                   ; 7 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.do, i32 %i.eo) #5
  %.val.i59.i = load ptr, ptr %i.do, align 8
  %i.ep = tail call ptr @to_intel_uncore(ptr noundef %.val.i59.i) #5 ; 2 uses
  %i.eq = getelementptr i8, ptr %i.ep, i64 144
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = tail call i32 %i.er(ptr noundef %i.ep, i32 %i.eo, i1 noundef zeroext true) #5, !inline_history !17 ; 2 uses
  tail call void @intel_dmc_wl_put(ptr noundef %i.do, i32 %i.eo) #5
  %i.et = getelementptr i8, ptr %i.do, i64 1160
  %i.eu = load ptr, ptr %i.et, align 8            ; 2 uses
  %i.ev = getelementptr i8, ptr %i.eu, i64 52     ; 2 uses
  %i.ew = sext i32 %i.dq to i64
  %i.ex = getelementptr [4 x i8], ptr %i.ev, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4
  %i.ez = load i32, ptr %i.ev, align 4
  %i.fa = getelementptr i8, ptr %i.eu, i64 48
  %i.fb = load i32, ptr %i.fa, align 4
  %i.fc = add i32 %i.ey, 458760
  %i.fd = sub i32 %i.fc, %i.ez
  %i.fe = add i32 %i.fd, %i.fb                    ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.do, i32 %i.fe) #5
  %.val.i60.i = load ptr, ptr %i.do, align 8
  %i.ff = tail call ptr @to_intel_uncore(ptr noundef %.val.i60.i) #5 ; 2 uses
  %i.fg = getelementptr i8, ptr %i.ff, i64 144
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = tail call i32 %i.fh(ptr noundef %i.ff, i32 %i.fe, i1 noundef zeroext true) #5, !inline_history !17 ; 3 uses
  tail call void @intel_dmc_wl_put(ptr noundef %i.do, i32 %i.fe) #5
  %i.fj = load i32, ptr %i.dt, align 8
  %i.fk = icmp eq i32 %i.fj, 1
  br i1 %i.fk, label %bb.v, label %.thread.i

bb.v:                                             ; preds = %._crit_edge.i
  %i.fl = and i32 %i.es, -417333473
  %i.fm = getelementptr i8, ptr %i.i, i64 3951
  %i.fn = load i8, ptr %i.fm, align 1
  %i.fo = zext i8 %i.fn to i32
  %i.fp = shl i32 %i.fo, 27
  %i.fq = add i32 %i.fp, 402653184
  %i.fr = and i32 %i.fq, 402653184
  %i.fs = or disjoint i32 %i.fr, %i.fl
  %.val57.i = load i32, ptr %i.ag, align 8        ; 2 uses
  %i.ft = and i32 %.val57.i, 64
  %.not64.i = icmp eq i32 %i.ft, 0
  %i.fu = and i32 %i.fi, 224
  %i.fv = select i1 %.not64.i, i32 %i.fu, i32 0
  %.0.i98 = or disjoint i32 %i.fs, %i.fv          ; 3 uses
  %i.fw = and i32 %i.fi, 14680064
  %i.fx = icmp eq i32 %i.fw, 6291456
  br i1 %i.fx, label %bb.w, label %bb.y

.thread.i:                                        ; preds = %._crit_edge.i
  %i.fy = and i32 %i.es, -14680065                ; 2 uses
  %i.fz = and i32 %i.fi, 14680064
  %i.ga = icmp eq i32 %i.fz, 6291456
  br i1 %i.ga, label %.thread63.i, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.gb = and i32 %.val57.i, 8
  %.not65.i = icmp eq i32 %i.gb, 0
  br i1 %.not65.i, label %.thread63.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gc = or disjoint i32 %.0.i98, 4194304
  br label %bb.y

.thread63.i:                                      ; preds = %bb.w, %.thread.i
  %i.gd = phi i32 [ %i.fy, %.thread.i ], [ %.0.i98, %bb.w ]
  %i.ge = or disjoint i32 %i.gd, 6291456
  br label %bb.y

bb.y:                                             ; preds = %.thread63.i, %bb.x, %.thread.i, %bb.v
  %.1.i = phi i32 [ %i.gc, %bb.x ], [ %i.ge, %.thread63.i ], [ %.0.i98, %bb.v ], [ %i.fy, %.thread.i ]
  %i.gf = or i32 %.1.i, -2147483648
  tail call void @intel_dmc_wl_get(ptr noundef %i.do, i32 %i.eo) #5
  %.val.i61.i = load ptr, ptr %i.do, align 8
  %i.gg = tail call ptr @to_intel_uncore(ptr noundef %.val.i61.i) #5 ; 2 uses
  %i.gh = getelementptr i8, ptr %i.gg, i64 176
  %i.gi = load ptr, ptr %i.gh, align 8
  tail call void %i.gi(ptr noundef %i.gg, i32 %i.eo, i32 noundef %i.gf, i1 noundef zeroext true) #5, !inline_history !18
  tail call void @intel_dmc_wl_put(ptr noundef %i.do, i32 %i.eo) #5
  %i.gj = tail call i32 @intel_de_wait_for_set_ms(ptr noundef %i.do, i32 %i.eo, i32 noundef 1073741824, i32 noundef 100) #5
  %.not56.i = icmp eq i32 %i.gj, 0
  br i1 %.not56.i, label %ilk_enable_pch_transcoder.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gk = load ptr, ptr %i.do, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.gk, null
  br i1 %.not.i.i, label %__drm_to_dev.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gl = getelementptr i8, ptr %i.gk, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.aa, %bb.z
  %i.gn = phi ptr [ %i.gm, %bb.aa ], [ null, %bb.z ]
  %i.go = add i32 %i.dq, 65
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.gn, ptr noundef nonnull @.str.6, i32 noundef %i.go) #8
  br label %ilk_enable_pch_transcoder.exit

ilk_enable_pch_transcoder.exit:                   ; preds = %bb.y, %__drm_to_dev.exit.i
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @assert_pch_transcoder_disabled(ptr noundef %0, i32 noundef %1) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = shl i32 %1, 12
  %i.b = add i32 %i.a, 983048                     ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.b) #5
  %.val.i = load ptr, ptr %0, align 8
  %i.c = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #5 ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 144
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i32 %i.e(ptr noundef %i.c, i32 %i.b, i1 noundef zeroext true) #5, !inline_history !0
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.b) #5
  %.not = icmp sgt i32 %i.f, -1
  br i1 %.not, label %bb.i, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 5187
  %i.h = load i8, ptr %i.g, align 1, !range !14, !noundef !15
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i = icmp eq ptr %i.j, null                ; 2 uses
  br i1 %i.i, label %bb.c, label %.critedge, !prof !12

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.c, %bb.d
end_hunk_0
