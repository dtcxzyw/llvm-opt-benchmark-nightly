Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_flipq?download=true
inline.NumInlined: 94
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@intel_flipq_dump:bb.a
bb.k:                                             ; preds = %bb.j
  %i.ax = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.9, ptr @.str.11, i32 87, i32 2321, i64 16) #4, !srcloc !15
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.ax, ptr noundef @.str.10, i64 noundef %i.e) #3
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !16
  br label %intel_flipq_elem_size_dw.exit

intel_flipq_elem_size_dw.exit:                    ; preds = %bb.j, %bb.k
  %.0.i80 = phi i8 [ 1, %bb.k ], [ %switch.masked, %bb.j ]
  %.lhs.trunc = trunc nuw nsw i32 %.0 to i8
  %i.ay = urem i8 %.lhs.trunc, %.0.i80
  %.zext = zext nneg i8 %i.ay to i32
  switch i32 %1, label %bb.m [
    i32 0, label %intel_flipq_elem_size_dw.exit82
    i32 1, label %intel_flipq_elem_size_dw.exit82
    i32 2, label %intel_flipq_elem_size_dw.exit82
    i32 3, label %bb.l
    i32 4, label %bb.l
  ]

bb.l:                                             ; preds = %intel_flipq_elem_size_dw.exit, %intel_flipq_elem_size_dw.exit
  br label %intel_flipq_elem_size_dw.exit82

bb.m:                                             ; preds = %intel_flipq_elem_size_dw.exit
  %i.az = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.9, ptr @.str.11, i32 87, i32 2321, i64 16) #4, !srcloc !15
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.az, ptr noundef @.str.10, i64 noundef %i.e) #3
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !16
  br label %intel_flipq_elem_size_dw.exit82

intel_flipq_elem_size_dw.exit82:                  ; preds = %intel_flipq_elem_size_dw.exit, %intel_flipq_elem_size_dw.exit, %intel_flipq_elem_size_dw.exit, %bb.l, %bb.m
  %.0.i81 = phi i32 [ 0, %bb.m ], [ 5, %bb.l ], [ 3, %intel_flipq_elem_size_dw.exit ], [ 3, %intel_flipq_elem_size_dw.exit ], [ 3, %intel_flipq_elem_size_dw.exit ]
  %i.ba = icmp eq i32 %.0.i81, %.zext
  br i1 %i.ba, label %bb.n, label %bb.o

bb.n:                                             ; preds = %intel_flipq_elem_size_dw.exit82
  %i.bb = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #5 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %intel_flipq_elem_size_dw.exit82, %bb.n
  %i.bc = add nuw nsw i32 %.0, 1
  br label %bb.e, !llvm.loop !20

bb.p:                                             ; preds = %__drm_to_dev.exit79
  %i.bd = add i32 %i.ao, 389416
  %i.be = shl nuw nsw i32 %1, 4
  %i.bf = or disjoint i32 %i.bd, %i.be
  br label %bb.r

bb.q:                                             ; preds = %__drm_to_dev.exit79
  %i.bg = mul i32 %1, 12
  %i.bh = add i32 %i.bg, 389456
  %i.bi = add i32 %i.bh, %i.ao
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bj = phi i32 [ %i.bf, %bb.p ], [ %i.bi, %bb.q ] ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.bj) #3
  %.val.i84 = load ptr, ptr %i.c, align 8
  %i.bk = tail call ptr @to_intel_uncore(ptr noundef %.val.i84) #3 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 144
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call i32 %i.bm(ptr noundef %i.bk, i32 %i.bj, i1 noundef zeroext true) #3, !inline_history !0
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.bj) #3
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.w, i32 noundef 2, ptr noundef @.str.3, i32 noundef %i.x, ptr noundef %i.y, i32 noundef %1, i32 noundef %i.al, i32 noundef %i.bn) #3
  %i.bo = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i85 = icmp eq ptr %i.bo, null
  br i1 %.not.i85, label %__drm_to_dev.exit86, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  br label %__drm_to_dev.exit86

__drm_to_dev.exit86:                              ; preds = %bb.r, %bb.s
  %i.br = phi ptr [ %i.bq, %bb.s ], [ null, %bb.r ]
  %i.bs = load i32, ptr %i.k, align 8
  %i.bt = load ptr, ptr %i.m, align 8
  %i.bu = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i87 = icmp eq ptr %i.bu, null
  br i1 %.not.i87, label %intel_flipq_current_head.exit, label %bb.t

bb.t:                                             ; preds = %__drm_to_dev.exit86
  %i.bv = tail call ptr @__drm_to_display(ptr noundef nonnull %i.bu) #3
  br label %intel_flipq_current_head.exit

intel_flipq_current_head.exit:                    ; preds = %__drm_to_dev.exit86, %bb.t
  %i.bw = phi ptr [ %i.bv, %bb.t ], [ null, %__drm_to_dev.exit86 ] ; 3 uses
  %i.bx = getelementptr i8, ptr %0, i64 1664      ; 3 uses
  %i.by = load i32, ptr %i.bx, align 8
  %i.bz = shl i32 %i.by, 10
  %i.ca = mul i32 %1, 12
  %i.cb = add i32 %i.ca, 389464
  %i.cc = shl nuw nsw i32 %1, 4
  %i.cd = add nuw nsw i32 %i.cc, 389424
  %.sink.i = select i1 %i.z, i32 %i.cd, i32 %i.cb
  %i.ce = add i32 %i.bz, %.sink.i                 ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.bw, i32 %i.ce) #3
  %.val.i.i = load ptr, ptr %i.bw, align 8
  %i.cf = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i) #3 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 144
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = tail call i32 %i.ch(ptr noundef %i.cf, i32 %i.ce, i1 noundef zeroext true) #3, !inline_history !21
  tail call void @intel_dmc_wl_put(ptr noundef %i.bw, i32 %i.ce) #3
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.br, i32 noundef 2, ptr noundef @.str.4, i32 noundef %i.bs, ptr noundef %i.bt, i32 noundef %1, i32 noundef %i.ci) #3
  %i.cj = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i88 = icmp eq ptr %i.cj, null
  br i1 %.not.i88, label %__drm_to_dev.exit89, label %bb.u

bb.u:                                             ; preds = %intel_flipq_current_head.exit
  %i.ck = getelementptr i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  br label %__drm_to_dev.exit89

__drm_to_dev.exit89:                              ; preds = %intel_flipq_current_head.exit, %bb.u
  %i.cm = phi ptr [ %i.cl, %bb.u ], [ null, %intel_flipq_current_head.exit ]
  %i.cn = load i32, ptr %i.k, align 8
  %i.co = load ptr, ptr %i.m, align 8
  %i.cp = load i32, ptr %i.bx, align 8
  %i.cq = shl i32 %i.cp, 10
  %i.cr = add i32 %i.cq, 389428                   ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.cr) #3
  %.val.i90 = load ptr, ptr %i.c, align 8
  %i.cs = tail call ptr @to_intel_uncore(ptr noundef %.val.i90) #3 ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 144
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = tail call i32 %i.cu(ptr noundef %i.cs, i32 %i.cr, i1 noundef zeroext true) #3, !inline_history !0
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.cr) #3
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.cm, i32 noundef 2, ptr noundef @.str.5, i32 noundef %i.cn, ptr noundef %i.co, i32 noundef %i.cv) #3
  %i.cw = load i32, ptr %i.bx, align 8
  %i.cx = shl i32 %i.cw, 10
  %i.cy = add i32 %i.cx, 389280                   ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.cy) #3
  %.val.i91 = load ptr, ptr %i.c, align 8
  %i.cz = tail call ptr @to_intel_uncore(ptr noundef %.val.i91) #3 ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 144
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = tail call i32 %i.db(ptr noundef %i.cz, i32 %i.cy, i1 noundef zeroext true) #3, !inline_history !0 ; 5 uses
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.cy) #3
  %i.dd = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i92 = icmp eq ptr %i.dd, null
  br i1 %.not.i92, label %__drm_to_dev.exit93, label %bb.v

bb.v:                                             ; preds = %__drm_to_dev.exit89
  %i.de = getelementptr i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8
  br label %__drm_to_dev.exit93

__drm_to_dev.exit93:                              ; preds = %__drm_to_dev.exit89, %bb.v
  %i.dg = phi ptr [ %i.df, %bb.v ], [ null, %__drm_to_dev.exit89 ]
  %i.dh = load i32, ptr %i.k, align 8
  %i.di = load ptr, ptr %i.m, align 8
  %i.dj = lshr i32 %i.dc, 26
  %i.dk = lshr i32 %i.dc, 19
  %i.dl = and i32 %i.dk, 63
  %i.dm = lshr i32 %i.dc, 12
  %i.dn = and i32 %i.dm, 63
  %i.do = and i32 %i.dc, 31
  %i.dp = lshr i32 %i.dc, 6
  %i.dq = and i32 %i.dp, 31
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.dg, i32 noundef 2, ptr noundef @.str.6, i32 noundef %i.dh, ptr noundef %i.di, i32 noundef %i.dj, i32 noundef %i.dl, i32 noundef %i.dn, i32 noundef %i.do, i32 noundef %i.dq) #3
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__drm_to_display(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__drm_dev_dbg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_flipq_reset(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @intel_crtc_for_pipe(ptr noundef %0, i32 noundef %1) #3 ; 5 uses
  %i.b = shl i32 %1, 10                           ; 13 uses
  %i.c = add i32 %i.b, 389240                     ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.c) #3
  %.val.i = load ptr, ptr %0, align 8
  %i.d = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #3 ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 176
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef %i.d, i32 %i.c, i32 noundef 0, i1 noundef zeroext true) #3, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.c) #3
  %i.g = add i32 %i.b, 389408                     ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.g) #3
  %.val.i39 = load ptr, ptr %0, align 8
  %i.h = tail call ptr @to_intel_uncore(ptr noundef %.val.i39) #3 ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 176
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef %i.h, i32 %i.g, i32 noundef 0, i1 noundef zeroext true) #3, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.g) #3
  %i.k = add i32 %i.b, 389412                     ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.k) #3
  %.val.i40 = load ptr, ptr %0, align 8
  %i.l = tail call ptr @to_intel_uncore(ptr noundef %.val.i40) #3 ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 176
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef %i.l, i32 %i.k, i32 noundef 0, i1 noundef zeroext true) #3, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.k) #3
  %i.o = add i32 %i.b, 389416                     ; 4 uses
  %i.p = add i32 %i.b, 389424                     ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.o) #3
  %.val.i41 = load ptr, ptr %0, align 8
  %i.q = tail call ptr @to_intel_uncore(ptr noundef %.val.i41) #3 ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 176
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef %i.q, i32 %i.o, i32 noundef 0, i1 noundef zeroext true) #3, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.o) #3
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.p) #3
  %.val.i42 = load ptr, ptr %0, align 8
  %i.t = tail call ptr @to_intel_uncore(ptr noundef %.val.i42) #3 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 176
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef %i.t, i32 %i.p, i32 noundef 0, i1 noundef zeroext true) #3, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.p) #3
  %i.w = getelementptr i8, ptr %i.a, i64 1764
  store i8 0, ptr %i.w, align 4
  %i.x = or disjoint i32 %i.o, 16                 ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.x) #3
  %.val.i41.1 = load ptr, ptr %0, align 8
  %i.y = tail call ptr @to_intel_uncore(ptr noundef %.val.i41.1) #3 ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 176
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef %i.y, i32 %i.x, i32 noundef 0, i1 noundef zeroext true) #3, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.x) #3
  %i.ab = add i32 %i.b, 389440                    ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.ab) #3
  %.val.i42.1 = load ptr, ptr %0, align 8
  %i.ac = tail call ptr @to_intel_uncore(ptr noundef %.val.i42.1) #3 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 176
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef %i.ac, i32 %i.ab, i32 noundef 0, i1 noundef zeroext true) #3, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.ab) #3
  %i.af = getelementptr i8, ptr %i.a, i64 1776
  store i8 0, ptr %i.af, align 4
  %i.ag = add i32 %i.b, 389480                    ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.ag) #3
  %.val.i41.2 = load ptr, ptr %0, align 8
  %i.ah = tail call ptr @to_intel_uncore(ptr noundef %.val.i41.2) #3 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 176
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef %i.ah, i32 %i.ag, i32 noundef 0, i1 noundef zeroext true) #3, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.ag) #3
  %i.ak = add i32 %i.b, 389488                    ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.ak) #3
  %.val.i42.2 = load ptr, ptr %0, align 8
  %i.al = tail call ptr @to_intel_uncore(ptr noundef %.val.i42.2) #3 ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 176
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef %i.al, i32 %i.ak, i32 noundef 0, i1 noundef zeroext true) #3, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.ak) #3
  %i.ao = getelementptr i8, ptr %i.a, i64 1788
  store i8 0, ptr %i.ao, align 4
  %i.ap = add i32 %i.b, 389492                    ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.ap) #3
  %.val.i41.3 = load ptr, ptr %0, align 8
  %i.aq = tail call ptr @to_intel_uncore(ptr noundef %.val.i41.3) #3 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 176
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef %i.aq, i32 %i.ap, i32 noundef 0, i1 noundef zeroext true) #3, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.ap) #3
  %2 = add i32 %i.b, 389500                       ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %2) #3
  %.val.i42.3 = load ptr, ptr %0, align 8
  %i.at = tail call ptr @to_intel_uncore(ptr noundef %.val.i42.3) #3 ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 176
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr noundef %i.at, i32 %2, i32 noundef 0, i1 noundef zeroext true) #3, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %2) #3
  %i.aw = getelementptr i8, ptr %i.a, i64 1800
  store i8 0, ptr %i.aw, align 4
  %i.ax = add i32 %i.b, 389504                    ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.ax) #3
  %.val.i41.4 = load ptr, ptr %0, align 8
  %i.ay = tail call ptr @to_intel_uncore(ptr noundef %.val.i41.4) #3 ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 176
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef %i.ay, i32 %i.ax, i32 noundef 0, i1 noundef zeroext true) #3, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.ax) #3
  %narrow = add i32 %i.b, 389512                  ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %narrow) #3
  %.val.i42.4 = load ptr, ptr %0, align 8
  %i.bb = tail call ptr @to_intel_uncore(ptr noundef %.val.i42.4) #3 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 176
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef %i.bb, i32 %narrow, i32 noundef 0, i1 noundef zeroext true) #3, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %narrow) #3
  %i.be = getelementptr i8, ptr %i.a, i64 1812
  store i8 0, ptr %i.be, align 4
  %i.bf = add i32 %i.b, 389280                    ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.bf) #3
  %.val.i43 = load ptr, ptr %0, align 8
  %i.bg = tail call ptr @to_intel_uncore(ptr noundef %.val.i43) #3 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 176
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef %i.bg, i32 %i.bf, i32 noundef 0, i1 noundef zeroext true) #3, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.bf) #3
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_crtc_for_pipe(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_flipq_enable(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #3
  %.pre = load ptr, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %.pre, %bb.b ], [ %i.a, %bb.a ] ; 3 uses
  %i.e = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 16 uses
  %i.f = getelementptr i8, ptr %0, i64 616        ; 3 uses
  %i.g = tail call i32 @intel_mode_vblank_start(ptr noundef %i.f) #3
  %i.h = load ptr, ptr %0, align 8
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %intel_flipq_exec_time_lines.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @__drm_to_display(ptr noundef nonnull %i.i) #3
  br label %intel_flipq_exec_time_lines.exit

intel_flipq_exec_time_lines.exit:                 ; preds = %bb.c, %bb.d
  %i.k = phi ptr [ %i.j, %bb.d ], [ null, %bb.c ] ; 3 uses
  %i.l = tail call i32 @intel_dsb_exec_time_us() #3
  %i.m = getelementptr i8, ptr %i.k, i64 616
  %i.n = load i32, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.k, i64 1168
  %.val.i.i = load i16, ptr %i.o, align 8
  %i.p = icmp ugt i16 %.val.i.i, 29
  %..i.i.i = select i1 %i.p, i32 120, i32 280
  %i.q = mul i32 %..i.i.i, %i.n
  %i.r = add i32 %i.q, 539992
  %i.s = udiv i32 %i.r, 540000
  %i.t = getelementptr i8, ptr %i.k, i64 2228
  %i.u = load i32, ptr %i.t, align 4
  %i.v = add i32 %i.u, %i.l
  %i.w = add i32 %i.v, %i.s
  %i.x = tail call i32 @intel_usecs_to_scanlines(ptr noundef %i.f, i32 noundef %i.w) #3
  %i.y = getelementptr i8, ptr %i.e, i64 1168     ; 2 uses
  %i.z = load i16, ptr %i.y, align 8
  %i.aa = icmp ugt i16 %i.z, 29
  br i1 %i.aa, label %bb.e, label %bb.g

bb.e:                                             ; preds = %intel_flipq_exec_time_lines.exit
  %i.ab = tail call i32 @intel_pipedmc_start_mmioaddr(ptr noundef %i.d) #3 ; 2 uses
  %i.ac = add i32 %i.ab, 1720                     ; 3 uses
  %i.ad = load ptr, ptr %0, align 8
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not.i27 = icmp eq ptr %i.ae, null
  br i1 %.not.i27, label %intel_flipq_exec_time_lines.exit30, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = tail call ptr @__drm_to_display(ptr noundef nonnull %i.ae) #3
  br label %intel_flipq_exec_time_lines.exit30

intel_flipq_exec_time_lines.exit30:               ; preds = %bb.e, %bb.f
  %i.ag = phi ptr [ %i.af, %bb.f ], [ null, %bb.e ] ; 3 uses
  %i.ah = tail call i32 @intel_dsb_exec_time_us() #3
  %i.ai = getelementptr i8, ptr %i.ag, i64 616
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = getelementptr i8, ptr %i.ag, i64 1168
  %.val.i.i28 = load i16, ptr %i.ak, align 8
  %i.al = icmp ugt i16 %.val.i.i28, 29
  %..i.i.i29 = select i1 %i.al, i32 120, i32 280
  %i.am = mul i32 %..i.i.i29, %i.aj
  %i.an = add i32 %i.am, 539992
  %i.ao = udiv i32 %i.an, 540000
  %i.ap = getelementptr i8, ptr %i.ag, i64 2228
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = add i32 %i.aq, %i.ah
  %i.as = add i32 %i.ar, %i.ao
  %i.at = tail call i32 @intel_usecs_to_scanlines(ptr noundef %i.f, i32 noundef %i.as) #3
  tail call void @intel_dmc_wl_get(ptr noundef %i.e, i32 %i.ac) #3
  %.val.i = load ptr, ptr %i.e, align 8
  %i.au = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #3 ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 176
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef %i.au, i32 %i.ac, i32 noundef %i.at, i1 noundef zeroext true) #3, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %i.ac) #3
  %i.ax = add i32 %i.ab, 1728                     ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.e, i32 %i.ax) #3
  %.val.i31 = load ptr, ptr %i.e, align 8
  %i.ay = tail call ptr @to_intel_uncore(ptr noundef %.val.i31) #3 ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 176
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef %i.ay, i32 %i.ax, i32 noundef 100, i1 noundef zeroext true) #3, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %i.ax) #3
  br label %bb.g

bb.g:                                             ; preds = %intel_flipq_exec_time_lines.exit30, %intel_flipq_exec_time_lines.exit
  %i.bb = sub i32 %i.g, %i.x                      ; 2 uses
  %i.bc = getelementptr i8, ptr %i.d, i64 1664    ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = shl i32 %i.bd, 10
  %i.bf = add i32 %i.be, 389412                   ; 3 uses
  %i.bg = and i32 %i.bb, 2097151
  tail call void @intel_dmc_wl_get(ptr noundef %i.e, i32 %i.bf) #3
  %.val.i32 = load ptr, ptr %i.e, align 8
  %i.bh = tail call ptr @to_intel_uncore(ptr noundef %.val.i32) #3 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 176
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bj(ptr noundef %i.bh, i32 %i.bf, i32 noundef %i.bg, i1 noundef zeroext true) #3, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %i.bf) #3
  %i.bk = load i32, ptr %i.bc, align 8
  %i.bl = shl i32 %i.bk, 10
  %i.bm = add i32 %i.bl, 389408                   ; 3 uses
  %i.bn = add i32 %i.bb, 2097150
  %i.bo = and i32 %i.bn, 2097151
  %i.bp = or disjoint i32 %i.bo, -2147483648
  tail call void @intel_dmc_wl_get(ptr noundef %i.e, i32 %i.bm) #3
  %.val.i33 = load ptr, ptr %i.e, align 8
  %i.bq = tail call ptr @to_intel_uncore(ptr noundef %.val.i33) #3 ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 176
  %i.bs = load ptr, ptr %i.br, align 8
  tail call void %i.bs(ptr noundef %i.bq, i32 %i.bm, i32 noundef %i.bp, i1 noundef zeroext true) #3, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %i.bm) #3
  %.val = load i16, ptr %i.y, align 8
  %i.bt = icmp ugt i16 %.val, 29
  %..i = select i1 %i.bt, i32 43, i32 45
  tail call void @intel_pipedmc_enable_event(ptr noundef %i.d, i32 noundef %..i) #3
  %i.bu = load i32, ptr %i.bc, align 8
  %i.bv = shl i32 %i.bu, 10
  %i.bw = add i32 %i.bv, 389240                   ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.e, i32 %i.bw) #3
  %.val.i34 = load ptr, ptr %i.e, align 8
  %i.bx = tail call ptr @to_intel_uncore(ptr noundef %.val.i34) #3 ; 2 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 176
  %i.bz = load ptr, ptr %i.by, align 8
  tail call void %i.bz(ptr noundef %i.bx, i32 %i.bw, i32 noundef -2147483648, i1 noundef zeroext true) #3, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.e, i32 %i.bw) #3
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_mode_vblank_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_pipedmc_start_mmioaddr(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_pipedmc_enable_event(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_flipq_disable(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #3
  %.pre = load ptr, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %.pre, %bb.b ], [ %i.a, %bb.a ] ; 3 uses
  %i.e = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 10 uses
  tail call fastcc void @intel_flipq_preempt(ptr noundef %i.d, i1 noundef zeroext true) #6, !srcloc !22
  %i.f = getelementptr i8, ptr %i.d, i64 1664     ; 3 uses
end_hunk_0
