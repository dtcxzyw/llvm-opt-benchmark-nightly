Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/processor_idle?download=true
inline.NumInlined: 46
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@acpi_processor_get_power_info:bb.a
  %i.ek = getelementptr [72 x i8], ptr %0, i64 %i.ej
  %i.el = getelementptr i8, ptr %i.ek, i64 80
  store i8 %i.ei, ptr %i.el, align 8
  %i.em = or disjoint i32 %.04180.i, 2            ; 2 uses
  %i.en = trunc i32 %i.em to i8
  %i.eo = sext i32 %i.em to i64
  %i.ep = getelementptr [72 x i8], ptr %0, i64 %i.eo
  %i.eq = getelementptr i8, ptr %i.ep, i64 80
  store i8 %i.en, ptr %i.eq, align 8
  %i.er = or disjoint i32 %.04180.i, 3            ; 2 uses
  %i.es = trunc i32 %i.er to i8
  %i.et = sext i32 %i.er to i64
  %i.eu = getelementptr [72 x i8], ptr %0, i64 %i.et
  %i.ev = getelementptr i8, ptr %i.eu, i64 80
  store i8 %i.es, ptr %i.ev, align 8
  %i.ew = add nuw i32 %.04180.i, 4                ; 2 uses
  %niter.next.3 = add nuw i32 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph82.i, !llvm.loop !26

bb.v:                                             ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.ex = getelementptr i8, ptr %0, i64 40        ; 3 uses
  %i.ey = getelementptr i8, ptr %0, i64 48        ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(416) %i.ey, i8 0, i64 416, i1 false)
  %i.ez = load i8, ptr @nocst, align 1, !range !12, !noundef !14
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %acpi_processor_get_power_info_cst.exit.thread17.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fb = load ptr, ptr %0, align 8
  %i.fc = load i32, ptr %i.c, align 8
  %i.fd = tail call i32 @acpi_processor_evaluate_cst(ptr noundef %i.fb, i32 noundef %i.fc, ptr noundef %i.ex) #15 ; 2 uses
  switch i32 %i.fd, label %acpi_processor_get_cstate_info.exit [
    i32 0, label %bb.x
    i32 -19, label %acpi_processor_get_power_info_cst.exit.thread17.i
  ]

bb.x:                                             ; preds = %bb.w
  %i.fe = load i32, ptr %i.ex, align 8
  %.not8.i.i = icmp eq i32 %i.fe, 0
  br i1 %.not8.i.i, label %acpi_processor_get_cstate_info.exit, label %acpi_processor_get_power_info_fadt.exit.thread24.i

acpi_processor_get_power_info_fadt.exit.thread24.i: ; preds = %bb.x
  %i.ff = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.fg = load i16, ptr %i.ff, align 8
  %i.fh = or i16 %i.fg, 64
  store i16 %i.fh, ptr %i.ff, align 8
  br label %acpi_processor_get_power_info_fadt.exit.thread21.i

acpi_processor_get_power_info_cst.exit.thread17.i: ; preds = %bb.w, %bb.v
  %i.fi = getelementptr i8, ptr %0, i64 20
  %i.fj = load i32, ptr %i.fi, align 4            ; 3 uses
  %.not.i12.i = icmp eq i32 %i.fj, 0
  br i1 %.not.i12.i, label %acpi_processor_get_cstate_info.exit, label %bb.y

bb.y:                                             ; preds = %acpi_processor_get_power_info_cst.exit.thread17.i
  %i.fk = getelementptr i8, ptr %0, i64 153
  store i8 2, ptr %i.fk, align 1
  %i.fl = getelementptr i8, ptr %0, i64 205
  store i8 3, ptr %i.fl, align 1
  %i.fm = add i32 %i.fj, 4                        ; 2 uses
  %i.fn = getelementptr i8, ptr %0, i64 156       ; 3 uses
  store i32 %i.fm, ptr %i.fn, align 4
  %i.fo = add i32 %i.fj, 5
  %i.fp = getelementptr i8, ptr %0, i64 208       ; 4 uses
  store i32 %i.fo, ptr %i.fp, align 8
  %i.fq = load i16, ptr getelementptr inbounds nuw (i8, ptr @acpi_gbl_FADT, i64 96), align 1
  %i.fr = zext i16 %i.fq to i32
  %i.fs = getelementptr i8, ptr %0, i64 164
  store i32 %i.fr, ptr %i.fs, align 4
  %i.ft = load i16, ptr getelementptr inbounds nuw (i8, ptr @acpi_gbl_FADT, i64 98), align 1
  %i.fu = zext i16 %i.ft to i32
  %i.fv = getelementptr i8, ptr %0, i64 216
  store i32 %i.fu, ptr %i.fv, align 8
  %i.fw = load i16, ptr getelementptr inbounds nuw (i8, ptr @acpi_gbl_FADT, i64 96), align 1
  %i.fx = icmp ugt i16 %i.fw, 100
  br i1 %i.fx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.fn, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.fy = phi i32 [ 0, %bb.z ], [ %i.fm, %bb.y ]
  %i.fz = load i16, ptr getelementptr inbounds nuw (i8, ptr @acpi_gbl_FADT, i64 98), align 1
  %i.ga = icmp ugt i16 %i.fz, 1000
  br i1 %i.ga, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.fp, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.gb = getelementptr i8, ptr %0, i64 169
  %i.gc = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.gb, i64 noundef 32, ptr noundef nonnull @.str.8, i32 noundef %i.fy) #15 ; 0 uses
  %i.gd = getelementptr i8, ptr %0, i64 221
  %i.ge = load i32, ptr %i.fp, align 8
  %i.gf = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.gd, i64 noundef 32, ptr noundef nonnull @.str.9, i32 noundef %i.ge) #15 ; 0 uses
  %i.gg = load i32, ptr %i.fn, align 4
  %.not17.i.i = icmp eq i32 %i.gg, 0
  br i1 %.not17.i.i, label %bb.ad, label %acpi_processor_get_power_info_fadt.exit.thread21.i

bb.ad:                                            ; preds = %bb.ac
  %i.gh = load i32, ptr %i.fp, align 8
  %.not18.i.i = icmp eq i32 %i.gh, 0
  br i1 %.not18.i.i, label %acpi_processor_get_cstate_info.exit, label %acpi_processor_get_power_info_fadt.exit.thread21.i

acpi_processor_get_power_info_fadt.exit.thread21.i: ; preds = %bb.ad, %bb.ac, %acpi_processor_get_power_info_fadt.exit.thread24.i
  %i.gi = getelementptr i8, ptr %0, i64 100       ; 5 uses
  %i.gj = load i8, ptr %i.gi, align 4
  %.not.i14.i = icmp eq i8 %i.gj, 0
  br i1 %.not.i14.i, label %bb.ae, label %acpi_processor_get_power_info_default.exit.i

bb.ae:                                            ; preds = %acpi_processor_get_power_info_fadt.exit.thread21.i
  %i.gk = getelementptr i8, ptr %0, i64 101
  store i8 1, ptr %i.gk, align 1
  store i8 1, ptr %i.gi, align 4
  %i.gl = getelementptr i8, ptr %0, i64 108
  store i8 2, ptr %i.gl, align 4
  %i.gm = getelementptr i8, ptr %0, i64 117
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(9) %i.gm, ptr noundef nonnull align 1 dereferenceable(9) @.str.10, i64 9, i1 false)
  br label %acpi_processor_get_power_info_default.exit.i

acpi_processor_get_power_info_default.exit.i:     ; preds = %bb.ae, %acpi_processor_get_power_info_fadt.exit.thread21.i
  store i8 1, ptr %i.ey, align 8
  %i.gn = getelementptr i8, ptr %0, i64 624       ; 3 uses
  store i32 2147483647, ptr %i.gn, align 8
  %i.go = load i32, ptr @max_cstate, align 4
  %.not48.i.i = icmp eq i32 %i.go, 0
  br i1 %.not48.i.i, label %acpi_processor_power_verify.exit.i, label %.lr.ph.i.i13

.lr.ph.i.i13:                                     ; preds = %acpi_processor_get_power_info_default.exit.i
  %i.gp = getelementptr i8, ptr %0, i64 32        ; 4 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ay, %.lr.ph.i.i13
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph.i.i13 ], [ %indvars.iv.next.i.i, %bb.ay ] ; 6 uses
  %.02744.i.i = phi i1 [ false, %.lr.ph.i.i13 ], [ %.2.i.i16, %bb.ay ] ; 2 uses
  %.02843.i.i = phi i32 [ 0, %.lr.ph.i.i13 ], [ %.129.i.i, %bb.ay ] ; 2 uses
  %.03042.i.i = phi i32 [ 0, %.lr.ph.i.i13 ], [ %.131.i.i, %bb.ay ] ; 2 uses
  %.03241.i.i = phi i32 [ 0, %.lr.ph.i.i13 ], [ %.133.i.i, %bb.ay ] ; 2 uses
  %i.gq = getelementptr [52 x i8], ptr %i.ey, i64 %indvars.iv.i.i ; 8 uses
  %i.gr = getelementptr i8, ptr %i.gq, i64 1      ; 3 uses
  %i.gs = load i8, ptr %i.gr, align 1
  switch i8 %i.gs, label %acpi_processor_power_verify_c3.exit.i.i [
    i8 1, label %bb.ag
    i8 2, label %bb.ah
    i8 3, label %bb.aj
  ]

bb.ag:                                            ; preds = %bb.af
  store i8 1, ptr %i.gq, align 4
  br label %acpi_processor_power_verify_c3.exit.thread.i.i

bb.ah:                                            ; preds = %bb.af
  %i.gt = getelementptr i8, ptr %i.gq, i64 4
  %i.gu = load i32, ptr %i.gt, align 4
  %.not.i15.i = icmp eq i32 %i.gu, 0
  br i1 %.not.i15.i, label %acpi_processor_power_verify_c3.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i8 1, ptr %i.gq, align 4
  br label %acpi_processor_power_verify_c3.exit.thread.i.i

bb.aj:                                            ; preds = %bb.af
  %i.gv = getelementptr i8, ptr %i.gq, i64 4
  %i.gw = load i32, ptr %i.gv, align 4
  %.not.i.i.i14 = icmp eq i32 %i.gw, 0
  br i1 %.not.i.i.i14, label %acpi_processor_power_verify_c3.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gx = load i8, ptr getelementptr inbounds nuw (i8, ptr @errata, i64 4), align 4
  %i.gy = and i8 %i.gx, 2
  %.not11.i.i.i = icmp eq i8 %i.gy, 0
  br i1 %.not11.i.i.i, label %bb.al, label %acpi_processor_power_verify_c3.exit.i.i

bb.al:                                            ; preds = %bb.ak
  %i.gz = load i32, ptr @acpi_processor_power_verify_c3.bm_check_flag, align 4 ; 2 uses
  %i.ha = icmp eq i32 %i.gz, -1
  br i1 %i.ha, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.hb = load i32, ptr %i.c, align 8
  tail call void @acpi_processor_power_init_bm_check(ptr noundef %i.gp, i32 noundef %i.hb) #15
  %i.hc = load i16, ptr %i.gp, align 8            ; 3 uses
  %i.hd = lshr i16 %i.hc, 5
  %i.he = and i16 %i.hd, 1
  %i.hf = zext nneg i16 %i.he to i32
  store i32 %i.hf, ptr @acpi_processor_power_verify_c3.bm_check_flag, align 4
  %i.hg = lshr i16 %i.hc, 4
  %i.hh = and i16 %i.hg, 1
  %i.hi = zext nneg i16 %i.hh to i32
  store i32 %i.hi, ptr @acpi_processor_power_verify_c3.bm_control_flag, align 4
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.hj = trunc nuw nsw i32 %i.gz to i16
  %i.hk = load i16, ptr %i.gp, align 8
  %i.hl = shl i16 %i.hj, 5
  %2 = and i16 %i.hl, 8160
  %i.hm = and i16 %i.hk, -49
  %i.hn = or i16 %i.hm, %2
  %i.ho = load i32, ptr @acpi_processor_power_verify_c3.bm_control_flag, align 4
  %i.hp = trunc nsw i32 %i.ho to i16
  %i.hq = shl i16 %i.hp, 4
  %i.hr = and i16 %i.hq, 16
  %i.hs = or disjoint i16 %i.hn, %i.hr            ; 2 uses
  store i16 %i.hs, ptr %i.gp, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ht = phi i16 [ %i.hs, %bb.an ], [ %i.hc, %bb.am ] ; 2 uses
  %i.hu = and i16 %i.ht, 32
  %.not12.i.i.i = icmp eq i16 %i.hu, 0
  br i1 %.not12.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hv = and i16 %i.ht, 80
  %or.cond.i.i.i = icmp eq i16 %i.hv, 0
  br i1 %or.cond.i.i.i, label %acpi_processor_power_verify_c3.exit.i.i, label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.hw = load i32, ptr getelementptr inbounds nuw (i8, ptr @acpi_gbl_FADT, i64 112), align 1
  %i.hx = and i32 %i.hw, 1
  %.not13.i.i.i = icmp eq i32 %i.hx, 0
  br i1 %.not13.i.i.i, label %acpi_processor_power_verify_c3.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  store i8 1, ptr %i.gq, align 4
  %i.hy = tail call i32 @acpi_write_bit_register(i32 noundef 15, i32 noundef 1) #15 ; 0 uses
  br label %acpi_processor_power_verify_c3.exit.i.i

acpi_processor_power_verify_c3.exit.i.i:          ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ak, %bb.aj, %bb.ah, %bb.af
  %.pr.i.i = load i8, ptr %i.gq, align 4
  %.not34.i.i = icmp eq i8 %.pr.i.i, 0
  br i1 %.not34.i.i, label %bb.ay, label %acpi_processor_power_verify_c3.exit.acpi_processor_power_verify_c3.exit.thread_crit_edge.i.i

acpi_processor_power_verify_c3.exit.acpi_processor_power_verify_c3.exit.thread_crit_edge.i.i: ; preds = %acpi_processor_power_verify_c3.exit.i.i
  %.pre.i.i15 = load i8, ptr %i.gr, align 1
  br label %acpi_processor_power_verify_c3.exit.thread.i.i

acpi_processor_power_verify_c3.exit.thread.i.i:   ; preds = %acpi_processor_power_verify_c3.exit.acpi_processor_power_verify_c3.exit.thread_crit_edge.i.i, %bb.ai, %bb.ag
  %i.hz = phi i8 [ %.pre.i.i15, %acpi_processor_power_verify_c3.exit.acpi_processor_power_verify_c3.exit.thread_crit_edge.i.i ], [ 1, %bb.ag ], [ 2, %bb.ai ] ; 4 uses
  %i.ia = zext i8 %i.hz to i32                    ; 3 uses
  %.not35.i.i = icmp samesign ule i32 %.02843.i.i, %i.ia
  %.phi.trans.insert.i.i = getelementptr i8, ptr %i.gq, i64 12
  %.pre49.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4 ; 2 uses
  %i.ib = icmp ult i32 %.pre49.i.i, %.03042.i.i
  %.not58.i.i = select i1 %.not35.i.i, i1 %i.ib, i1 false
  %.1.i.i = select i1 %.not58.i.i, i1 true, i1 %.02744.i.i
  %i.ic = load i32, ptr @local_apic_timer_c2_ok, align 4
  %i.id = load i32, ptr %i.c, align 8
  %i.ie = zext i32 %i.id to i64
  %i.if = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.ie
  %i.ig = load i64, ptr %i.if, align 8
  %i.ih = add i64 %i.ig, ptrtoint (ptr @cpu_info to i64)
  %i.ii = inttoptr i64 %i.ih to ptr
  %i.ij = getelementptr i8, ptr %i.ii, i64 104
  %i.ik = load volatile i64, ptr %i.ij, align 8
  %i.il = and i64 %i.ik, 4
  %.not10.i.i.i = icmp eq i64 %i.il, 0
  br i1 %.not10.i.i.i, label %bb.as, label %lapic_timer_check_state.exit.i.i

bb.as:                                            ; preds = %acpi_processor_power_verify_c3.exit.thread.i.i
  %i.im = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 136), align 8
  %i.in = load i32, ptr %i.gn, align 8
  %i.io = sext i32 %i.in to i64
  %i.ip = icmp sgt i64 %indvars.iv.i.i, %i.io
  br i1 %i.ip, label %lapic_timer_check_state.exit.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.iq = and i64 %i.im, 16
  %.not11.i36.i.i = icmp eq i64 %i.iq, 0
  %.not.i37.i.i = icmp eq i32 %i.ic, 0
  %i.ir = select i1 %.not.i37.i.i, i32 2, i32 3
  %spec.select.i.i.i = select i1 %.not11.i36.i.i, i32 %i.ir, i32 1
  %.not9.i.i.i = icmp samesign ugt i32 %spec.select.i.i.i, %i.ia
  br i1 %.not9.i.i.i, label %lapic_timer_check_state.exit.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.is = trunc nuw nsw i64 %indvars.iv.i.i to i32
  store i32 %i.is, ptr %i.gn, align 8
  %.pre50.i.i = load i8, ptr %i.gr, align 1
  br label %lapic_timer_check_state.exit.i.i

lapic_timer_check_state.exit.i.i:                 ; preds = %bb.au, %bb.at, %bb.as, %acpi_processor_power_verify_c3.exit.thread.i.i
  %i.it = phi i8 [ %i.hz, %acpi_processor_power_verify_c3.exit.thread.i.i ], [ %i.hz, %bb.as ], [ %i.hz, %bb.at ], [ %.pre50.i.i, %bb.au ] ; 2 uses
  %i.iu = load i8, ptr getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 2), align 2
  switch i8 %i.iu, label %bb.aw [
    i8 9, label %bb.av
    i8 2, label %bb.av
    i8 0, label %bb.av
    i8 5, label %bb.av
    i8 10, label %bb.av
  ]

bb.av:                                            ; preds = %lapic_timer_check_state.exit.i.i, %lapic_timer_check_state.exit.i.i, %lapic_timer_check_state.exit.i.i, %lapic_timer_check_state.exit.i.i, %lapic_timer_check_state.exit.i.i
  %i.iv = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 56), align 8
  %i.iw = and i64 %i.iv, 72057594037927936
  %i.ix = icmp ne i64 %i.iw, 0
  %i.iy = icmp ult i8 %i.it, 2
  %or.cond.not.i.i.i = select i1 %i.ix, i1 true, i1 %i.iy
  br i1 %or.cond.not.i.i.i, label %tsc_check_state.exit.i.i, label %bb.ax

bb.aw:                                            ; preds = %lapic_timer_check_state.exit.i.i
  %.old1.i.i.i = icmp ugt i8 %i.it, 1
  br i1 %.old1.i.i.i, label %bb.ax, label %tsc_check_state.exit.i.i

bb.ax:                                            ; preds = %bb.aw, %bb.av
  tail call void @mark_tsc_unstable(ptr noundef nonnull @.str.12) #15
  br label %tsc_check_state.exit.i.i

tsc_check_state.exit.i.i:                         ; preds = %bb.ax, %bb.aw, %bb.av
  %i.iz = add i32 %.03241.i.i, 1
  br label %bb.ay

bb.ay:                                            ; preds = %tsc_check_state.exit.i.i, %acpi_processor_power_verify_c3.exit.i.i
  %.133.i.i = phi i32 [ %i.iz, %tsc_check_state.exit.i.i ], [ %.03241.i.i, %acpi_processor_power_verify_c3.exit.i.i ] ; 4 uses
  %.131.i.i = phi i32 [ %.pre49.i.i, %tsc_check_state.exit.i.i ], [ %.03042.i.i, %acpi_processor_power_verify_c3.exit.i.i ]
  %.129.i.i = phi i32 [ %i.ia, %tsc_check_state.exit.i.i ], [ %.02843.i.i, %acpi_processor_power_verify_c3.exit.i.i ]
  %.2.i.i16 = phi i1 [ %.1.i.i, %tsc_check_state.exit.i.i ], [ %.02744.i.i, %acpi_processor_power_verify_c3.exit.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %i.ja = icmp samesign ult i64 %indvars.iv.i.i, 7
  %i.jb = load i32, ptr @max_cstate, align 4
  %i.jc = zext i32 %i.jb to i64
  %i.jd = icmp samesign ult i64 %indvars.iv.i.i, %i.jc
  %i.je = select i1 %i.ja, i1 %i.jd, i1 false
  br i1 %i.je, label %bb.af, label %._crit_edge.i.i, !llvm.loop !27

._crit_edge.i.i:                                  ; preds = %bb.ay
  br i1 %.2.i.i16, label %bb.az, label %acpi_processor_power_verify.exit.i

bb.az:                                            ; preds = %._crit_edge.i.i
  %i.jf = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #18 ; 0 uses
  %i.jg = load i32, ptr @max_cstate, align 4      ; 2 uses
  %i.jh = zext i32 %i.jg to i64
  %i.ji = icmp ugt i32 %i.jg, 1
  br i1 %i.ji, label %.lr.ph35.i.i.i, label %acpi_processor_power_verify.exit.i

.lr.ph35.i.i.i:                                   ; preds = %bb.az, %.loopexit.i.i.i
  %indvars.iv.i.i.i = phi i32 [ %indvars.iv.next.i.i.i, %.loopexit.i.i.i ], [ 0, %bb.az ] ; 2 uses
  %i.jj = phi i64 [ %i.ka, %.loopexit.i.i.i ], [ 1, %bb.az ]
  %.033.i.i.i = phi i32 [ %i.jz, %.loopexit.i.i.i ], [ 1, %bb.az ] ; 3 uses
  %i.jk = getelementptr [52 x i8], ptr %i.gi, i64 %i.jj
  %i.jl = load i8, ptr %i.jk, align 4
  %.not.i38.i.i = icmp ne i8 %i.jl, 0
  %.02530.i.i.i = add i32 %.033.i.i.i, -1
  %i.jm = icmp sgt i32 %.02530.i.i.i, -1
  %or.cond.i39.i.i = and i1 %.not.i38.i.i, %i.jm
  br i1 %or.cond.i39.i.i, label %.lr.ph.preheader.i.i.i, label %.loopexit.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph35.i.i.i
  %i.jn = zext i32 %indvars.iv.i.i.i to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bc, %.lr.ph.preheader.i.i.i
  %indvars.iv36.i.i.i = phi i64 [ %i.jn, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next37.i.i.i, %bb.bc ] ; 4 uses
  %.02431.i.i.i = phi i32 [ %.033.i.i.i, %.lr.ph.preheader.i.i.i ], [ %.1.i.i.i, %bb.bc ] ; 2 uses
  %i.jo = getelementptr [52 x i8], ptr %i.gi, i64 %indvars.iv36.i.i.i ; 2 uses
  %i.jp = load i8, ptr %i.jo, align 4
  %.not29.i.i.i = icmp eq i8 %i.jp, 0
  br i1 %.not29.i.i.i, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i.i.i
  %i.jq = getelementptr i8, ptr %i.jo, i64 12     ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 4            ; 2 uses
  %i.js = sext i32 %.02431.i.i.i to i64
  %i.jt = getelementptr [52 x i8], ptr %i.gi, i64 %i.js
  %i.ju = getelementptr i8, ptr %i.jt, i64 12     ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 4            ; 2 uses
  %i.jw = icmp ugt i32 %i.jr, %i.jv
  %i.jx = trunc nuw nsw i64 %indvars.iv36.i.i.i to i32 ; 2 uses
  br i1 %i.jw, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 %i.jv, ptr %i.jq, align 4
  store i32 %i.jr, ptr %i.ju, align 4
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %.lr.ph.i.i.i
  %.1.i.i.i = phi i32 [ %.02431.i.i.i, %.lr.ph.i.i.i ], [ %i.jx, %bb.bb ], [ %i.jx, %bb.ba ]
  %indvars.iv.next37.i.i.i = add nsw i64 %indvars.iv36.i.i.i, -1
  %i.jy = icmp sgt i64 %indvars.iv36.i.i.i, 0
  br i1 %i.jy, label %.lr.ph.i.i.i, label %.loopexit.i.i.i, !llvm.loop !28

.loopexit.i.i.i:                                  ; preds = %bb.bc, %.lr.ph35.i.i.i
  %i.jz = add i32 %.033.i.i.i, 1                  ; 2 uses
  %i.ka = sext i32 %i.jz to i64                   ; 2 uses
  %i.kb = icmp ugt i64 %i.jh, %i.ka
  %indvars.iv.next.i.i.i = add i32 %indvars.iv.i.i.i, 1
  br i1 %i.kb, label %.lr.ph35.i.i.i, label %acpi_processor_power_verify.exit.i, !llvm.loop !29

acpi_processor_power_verify.exit.i:               ; preds = %.loopexit.i.i.i, %bb.az, %._crit_edge.i.i, %acpi_processor_get_power_info_default.exit.i
  %.032.lcssa56.i.i = phi i32 [ 0, %acpi_processor_get_power_info_default.exit.i ], [ %.133.i.i, %._crit_edge.i.i ], [ %.133.i.i, %bb.az ], [ %.133.i.i, %.loopexit.i.i.i ]
  %i.kc = load i32, ptr %i.c, align 8
  %i.kd = tail call i32 @smp_call_function_single(i32 noundef %i.kc, ptr noundef nonnull @__lapic_timer_propagate_broadcast, ptr noundef %0, i32 noundef 1) #15 ; 0 uses
  store i32 %.032.lcssa56.i.i, ptr %i.ex, align 8
  %i.ke = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.kf = load i16, ptr %i.ke, align 8
  %i.kg = or i16 %i.kf, 1
  store i16 %i.kg, ptr %i.ke, align 8
  br label %acpi_processor_get_cstate_info.exit
end_hunk_0
