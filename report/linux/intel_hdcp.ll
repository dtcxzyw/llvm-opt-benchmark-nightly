Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_hdcp?download=true
inline.NumInlined: 434
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@intel_hdcp1_enable:bb.a
  %i.ov = phi ptr [ %i.ou, %bb.ex ], [ null, %bb.ew ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.ov, ptr noundef nonnull @.str.87) #17
  br label %intel_hdcp_auth.exit.thread93

bb.ey:                                            ; preds = %bb.hn, %.preheader.i
  %.05094.i = phi i32 [ 0, %.preheader.i ], [ %i.acm, %bb.hn ]
  %i.ow = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i76.i = icmp eq ptr %i.ow, null
  br i1 %.not.i76.i, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.ox = call ptr @__drm_to_display(ptr noundef nonnull %i.ow) #13
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %i.oy = phi ptr [ %i.ox, %bb.ez ], [ null, %bb.ey ] ; 154 uses
  %.val.i.i64 = load ptr, ptr %i.br, align 8      ; 6 uses
  %i.oz = getelementptr i8, ptr %.val.i.i64, i64 152
  %.val.i.i.i.i = load i32, ptr %i.oz, align 8
  switch i32 %.val.i.i.i.i, label %intel_encoder_is_dig_port.exit.thread.fold.split.i.i.i.i [
    i32 10, label %intel_attached_dig_port.exit.i.i
    i32 7, label %intel_attached_dig_port.exit.i.i
    i32 8, label %intel_attached_dig_port.exit.i.i
    i32 6, label %intel_attached_dig_port.exit.i.i
    i32 11, label %bb.fb
  ]

bb.fb:                                            ; preds = %bb.fa
  %i.pa = getelementptr i8, ptr %.val.i.i64, i64 512
  %i.pb = load ptr, ptr %i.pa, align 8
  br label %intel_attached_dig_port.exit.i.i

intel_encoder_is_dig_port.exit.thread.fold.split.i.i.i.i: ; preds = %bb.fa
  br label %intel_attached_dig_port.exit.i.i

intel_attached_dig_port.exit.i.i:                 ; preds = %intel_encoder_is_dig_port.exit.thread.fold.split.i.i.i.i, %bb.fb, %bb.fa, %bb.fa, %bb.fa, %bb.fa
  %.0.i.i.i.i = phi ptr [ %.val.i.i64, %bb.fa ], [ %i.pb, %bb.fb ], [ %.val.i.i64, %bb.fa ], [ %.val.i.i64, %bb.fa ], [ %.val.i.i64, %bb.fa ], [ null, %intel_encoder_is_dig_port.exit.thread.fold.split.i.i.i.i ] ; 6 uses
  %i.pc = load i32, ptr %i.bt, align 8            ; 2 uses
  %i.pd = getelementptr i8, ptr %.0.i.i.i.i, i64 156
  %i.pe = load i32, ptr %i.pd, align 4            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4, !annotation !20
  %i.pf = load ptr, ptr %i.op, align 8
  %i.pg = call i32 %i.pf(ptr noundef %.0.i.i.i.i, i32 noundef 0, ptr noundef nonnull %i.a) #13, !inline_history !120 ; 2 uses
  %.not237.i.i = icmp eq i32 %i.pg, 0
  br i1 %.not237.i.i, label %bb.fc, label %bb.hn

bb.fc:                                            ; preds = %intel_attached_dig_port.exit.i.i
  %i.ph = load i32, ptr %i.a, align 4
  call void @intel_dmc_wl_get(ptr noundef %i.oy, i32 421124) #13
  %.val.i.i77.i = load ptr, ptr %i.oy, align 8
  %i.pi = call ptr @to_intel_uncore(ptr noundef %.val.i.i77.i) #13 ; 2 uses
  %i.pj = getelementptr i8, ptr %i.pi, i64 176
  %i.pk = load ptr, ptr %i.pj, align 8
  call void %i.pk(ptr noundef %i.pi, i32 421124, i32 noundef %i.ph, i1 noundef zeroext true) #13, !inline_history !121
  call void @intel_dmc_wl_put(ptr noundef %i.oy, i32 421124) #13
  %i.pl = load ptr, ptr %i.op, align 8
  %i.pm = call i32 %i.pl(ptr noundef %.0.i.i.i.i, i32 noundef 1, ptr noundef nonnull %i.a) #13, !inline_history !120 ; 2 uses
  %.not237.1.i.i = icmp eq i32 %i.pm, 0
  br i1 %.not237.1.i.i, label %bb.fd, label %bb.hn

bb.fd:                                            ; preds = %bb.fc
  %i.pn = load i32, ptr %i.a, align 4
  call void @intel_dmc_wl_get(ptr noundef %i.oy, i32 421128) #13
  %.val.i.1.i.i = load ptr, ptr %i.oy, align 8
  %i.po = call ptr @to_intel_uncore(ptr noundef %.val.i.1.i.i) #13 ; 2 uses
  %i.pp = getelementptr i8, ptr %i.po, i64 176
  %i.pq = load ptr, ptr %i.pp, align 8
  call void %i.pq(ptr noundef %i.po, i32 421128, i32 noundef %i.pn, i1 noundef zeroext true) #13, !inline_history !121
  call void @intel_dmc_wl_put(ptr noundef %i.oy, i32 421128) #13
  %i.pr = load ptr, ptr %i.op, align 8
  %i.ps = call i32 %i.pr(ptr noundef %.0.i.i.i.i, i32 noundef 2, ptr noundef nonnull %i.a) #13, !inline_history !120 ; 2 uses
  %.not237.2.i.i = icmp eq i32 %i.ps, 0
  br i1 %.not237.2.i.i, label %bb.fe, label %bb.hn

bb.fe:                                            ; preds = %bb.fd
  %i.pt = load i32, ptr %i.a, align 4
  call void @intel_dmc_wl_get(ptr noundef %i.oy, i32 421132) #13
  %.val.i.2.i.i = load ptr, ptr %i.oy, align 8
  %i.pu = call ptr @to_intel_uncore(ptr noundef %.val.i.2.i.i) #13 ; 2 uses
  %i.pv = getelementptr i8, ptr %i.pu, i64 176
  %i.pw = load ptr, ptr %i.pv, align 8
  call void %i.pw(ptr noundef %i.pu, i32 421132, i32 noundef %i.pt, i1 noundef zeroext true) #13, !inline_history !121
  call void @intel_dmc_wl_put(ptr noundef %i.oy, i32 421132) #13
  %i.px = load ptr, ptr %i.op, align 8
  %i.py = call i32 %i.px(ptr noundef %.0.i.i.i.i, i32 noundef 3, ptr noundef nonnull %i.a) #13, !inline_history !120 ; 2 uses
  %.not237.3.i.i = icmp eq i32 %i.py, 0
  br i1 %.not237.3.i.i, label %bb.ff, label %bb.hn

bb.ff:                                            ; preds = %bb.fe
  %i.pz = load i32, ptr %i.a, align 4
  call void @intel_dmc_wl_get(ptr noundef %i.oy, i32 421136) #13
  %.val.i.3.i.i = load ptr, ptr %i.oy, align 8
  %i.qa = call ptr @to_intel_uncore(ptr noundef %.val.i.3.i.i) #13 ; 2 uses
  %i.qb = getelementptr i8, ptr %i.qa, i64 176
  %i.qc = load ptr, ptr %i.qb, align 8
  call void %i.qc(ptr noundef %i.qa, i32 421136, i32 noundef %i.pz, i1 noundef zeroext true) #13, !inline_history !121
  call void @intel_dmc_wl_put(ptr noundef %i.oy, i32 421136) #13
  %i.qd = load ptr, ptr %i.op, align 8
  %i.qe = call i32 %i.qd(ptr noundef %.0.i.i.i.i, i32 noundef 4, ptr noundef nonnull %i.a) #13, !inline_history !120 ; 2 uses
  %.not237.4.i.i = icmp eq i32 %i.qe, 0
  br i1 %.not237.4.i.i, label %bb.fg, label %bb.hn

bb.fg:                                            ; preds = %bb.ff
  %i.qf = load i32, ptr %i.a, align 4
  call void @intel_dmc_wl_get(ptr noundef %i.oy, i32 421140) #13
  %.val.i.4.i.i = load ptr, ptr %i.oy, align 8
  %i.qg = call ptr @to_intel_uncore(ptr noundef %.val.i.4.i.i) #13 ; 2 uses
  %i.qh = getelementptr i8, ptr %i.qg, i64 176
  %i.qi = load ptr, ptr %i.qh, align 8
  call void %i.qi(ptr noundef %i.qg, i32 421140, i32 noundef %i.qf, i1 noundef zeroext true) #13, !inline_history !121
  call void @intel_dmc_wl_put(ptr noundef %i.oy, i32 421140) #13
  %i.qj = getelementptr i8, ptr %i.oy, i64 1168
  %i.qk = load i16, ptr %i.qj, align 8
  %i.ql = icmp ugt i16 %i.qk, 11
  br i1 %i.ql, label %bb.fh, label %bb.fn

bb.fh:                                            ; preds = %bb.fg
  switch i32 %i.pc, label %bb.fl [
    i32 0, label %.lr.ph396.preheader.i.i
    i32 1, label %bb.fi
    i32 2, label %bb.fj
    i32 3, label %bb.fk
  ]

bb.fi:                                            ; preds = %bb.fh
  br label %.lr.ph396.preheader.i.i

bb.fj:                                            ; preds = %bb.fh
  br label %.lr.ph396.preheader.i.i

bb.fk:                                            ; preds = %bb.fh
  br label %.lr.ph396.preheader.i.i

bb.fl:                                            ; preds = %bb.fh
  %i.qm = load ptr, ptr %i.oy, align 8            ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.qm, null
  br i1 %.not.i.i.i.i, label %__drm_to_dev.exit.i.i.i, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.qn = getelementptr i8, ptr %i.qm, i64 8
  %i.qo = load ptr, ptr %i.qn, align 8
  br label %__drm_to_dev.exit.i.i.i

__drm_to_dev.exit.i.i.i:                          ; preds = %bb.fm, %bb.fl
  %i.qp = phi ptr [ %i.qo, %bb.fm ], [ null, %bb.fl ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.qp, ptr noundef nonnull @.str.73, i32 noundef %i.pc) #17
  br label %.lr.ph396.preheader.i.i

bb.fn:                                            ; preds = %bb.fg
  switch i32 %i.pe, label %bb.fs [
    i32 0, label %.lr.ph396.preheader.i.i
    i32 1, label %bb.fo
    i32 2, label %bb.fp
    i32 3, label %bb.fq
    i32 4, label %bb.fr
  ]

bb.fo:                                            ; preds = %bb.fn
  br label %.lr.ph396.preheader.i.i

bb.fp:                                            ; preds = %bb.fn
  br label %.lr.ph396.preheader.i.i

bb.fq:                                            ; preds = %bb.fn
  br label %.lr.ph396.preheader.i.i

bb.fr:                                            ; preds = %bb.fn
  br label %.lr.ph396.preheader.i.i

bb.fs:                                            ; preds = %bb.fn
  %i.qq = load ptr, ptr %i.oy, align 8            ; 2 uses
  %.not.i7.i.i.i = icmp eq ptr %i.qq, null
  br i1 %.not.i7.i.i.i, label %__drm_to_dev.exit8.i.i.i, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.qr = getelementptr i8, ptr %i.qq, i64 8
  %i.qs = load ptr, ptr %i.qr, align 8
  br label %__drm_to_dev.exit8.i.i.i

__drm_to_dev.exit8.i.i.i:                         ; preds = %bb.ft, %bb.fs
  %i.qt = phi ptr [ %i.qs, %bb.ft ], [ null, %bb.fs ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.qt, ptr noundef nonnull @.str.74, i32 noundef %i.pe) #17
  br label %.lr.ph396.preheader.i.i

.lr.ph396.preheader.i.i:                          ; preds = %__drm_to_dev.exit8.i.i.i, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %__drm_to_dev.exit.i.i.i, %bb.fk, %bb.fj, %bb.fi, %bb.fh
  %.0.i.i78.i = phi i32 [ 0, %__drm_to_dev.exit.i.i.i ], [ 39845888, %bb.fr ], [ 1075838976, %bb.fi ], [ 540016640, %bb.fj ], [ 272629760, %bb.fk ], [ 0, %__drm_to_dev.exit8.i.i.i ], [ -2146435072, %bb.fh ], [ 1074790400, %bb.fo ], [ 271581184, %bb.fp ], [ 138412032, %bb.fq ], [ 538968064, %bb.fn ] ; 11 uses
  %i.qu = or disjoint i32 %.0.i.i78.i, 2          ; 6 uses
  call void @intel_dmc_wl_get(ptr noundef %i.oy, i32 421120) #13
  %.val.i238.i.i = load ptr, ptr %i.oy, align 8
  %i.qv = call ptr @to_intel_uncore(ptr noundef %.val.i238.i.i) #13 ; 2 uses
  %i.qw = getelementptr i8, ptr %i.qv, i64 176
  %i.qx = load ptr, ptr %i.qw, align 8
  call void %i.qx(ptr noundef %i.qv, i32 421120, i32 noundef %i.qu, i1 noundef zeroext true) #13, !inline_history !121
  call void @intel_dmc_wl_put(ptr noundef %i.oy, i32 421120) #13
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ga, %.lr.ph396.preheader.i.i
  %indvars.iv416.i.i = phi i64 [ 0, %.lr.ph396.preheader.i.i ], [ %indvars.iv.next417.i.i, %bb.ga ] ; 2 uses
  %.0197395.i.i = phi i32 [ 0, %.lr.ph396.preheader.i.i ], [ %.3.i.i, %bb.ga ] ; 2 uses
  %.0200394.i.i = phi i32 [ 0, %.lr.ph396.preheader.i.i ], [ %.1201.i.i, %bb.ga ] ; 9 uses
  %.0207392.i.i = phi i32 [ 0, %.lr.ph396.preheader.i.i ], [ %.1208.i.i, %bb.ga ] ; 2 uses
  %i.qy = mul nuw nsw i64 %indvars.iv416.i.i, 5
  %i.qz = getelementptr i8, ptr %i.oe, i64 %i.qy  ; 6 uses
  %i.ra = sub nuw nsw i32 4, %.0200394.i.i        ; 6 uses
  %xtraiter = and i32 %i.ra, 1
  %i.rb = icmp eq i32 %.0200394.i.i, 3
  br i1 %i.rb, label %.lr.ph.i79.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i32 %i.ra, 6
  br label %.lr.ph.i79.i

.lr.ph.i79.i:                                     ; preds = %.lr.ph.i79.i, %.lr.ph.preheader.i.i.new
  %.1198385.i.i = phi i32 [ %.0197395.i.i, %.lr.ph.preheader.i.i.new ], [ %i.ru, %.lr.ph.i79.i ]
  %.0205384.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.rv, %.lr.ph.i79.i ] ; 4 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %.lr.ph.i79.i ]
  %i.rc = sext i32 %.0205384.i.i to i64
  %.tr.i.i = add i32 %.0205384.i.i, %.0200394.i.i
  %i.rd = shl i32 %.tr.i.i, 3
  %i.re = sub i32 24, %i.rd
  %i.rf = getelementptr i8, ptr %i.qz, i64 %i.rc
  %i.rg = load i8, ptr %i.rf, align 1
  %i.rh = zext i8 %i.rg to i32
  %i.ri = and i32 %i.re, 248
  %i.rj = shl i32 %i.rh, %i.ri
  %i.rk = or i32 %i.rj, %.1198385.i.i
  %i.rl = or disjoint i32 %.0205384.i.i, 1        ; 2 uses
  %i.rm = sext i32 %i.rl to i64
  %.tr.i.i.1 = add i32 %i.rl, %.0200394.i.i
  %i.rn = shl i32 %.tr.i.i.1, 3
  %i.ro = sub i32 24, %i.rn
  %i.rp = getelementptr i8, ptr %i.qz, i64 %i.rm
  %i.rq = load i8, ptr %i.rp, align 1
  %i.rr = zext i8 %i.rq to i32
  %i.rs = and i32 %i.ro, 248
  %i.rt = shl i32 %i.rr, %i.rs
  %i.ru = or i32 %i.rt, %i.rk                     ; 3 uses
  %i.rv = add nuw i32 %.0205384.i.i, 2            ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph.i79.i, !llvm.loop !122

._crit_edge.i.i.unr-lcssa:                        ; preds = %.lr.ph.i79.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.lr.ph.i79.i.epil.preheader

.lr.ph.i79.i.epil.preheader:                      ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.preheader.i.i
  %.1198385.i.i.epil.init = phi i32 [ %.0197395.i.i, %.lr.ph.preheader.i.i ], [ %i.ru, %._crit_edge.i.i.unr-lcssa ]
  %.0205384.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %i.rv, %._crit_edge.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod254 = trunc i32 %i.ra to i1
  call void @llvm.assume(i1 %lcmp.mod254)
  %i.rw = sext i32 %.0205384.i.i.epil.init to i64
  %.tr.i.i.epil = add i32 %.0205384.i.i.epil.init, %.0200394.i.i
  %i.rx = shl i32 %.tr.i.i.epil, 3
  %i.ry = sub i32 24, %i.rx
  %i.rz = getelementptr i8, ptr %i.qz, i64 %i.rw
  %i.sa = load i8, ptr %i.rz, align 1
  %i.sb = zext i8 %i.sa to i32
  %i.sc = and i32 %i.ry, 248
  %i.sd = shl i32 %i.sb, %i.sc
  %i.se = or i32 %i.sd, %.1198385.i.i.epil.init
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i79.i.epil.preheader
  %.lcssa241 = phi i32 [ %i.ru, %._crit_edge.i.i.unr-lcssa ], [ %i.se, %.lr.ph.i79.i.epil.preheader ]
  call void @intel_dmc_wl_get(ptr noundef %i.oy, i32 421144) #13
  %.val.i.i239.i.i = load ptr, ptr %i.oy, align 8
  %i.sf = call ptr @to_intel_uncore(ptr noundef %.val.i.i239.i.i) #13 ; 2 uses
  %i.sg = getelementptr i8, ptr %i.sf, i64 176
  %i.sh = load ptr, ptr %i.sg, align 8
  call void %i.sh(ptr noundef %i.sf, i32 421144, i32 noundef %.lcssa241, i1 noundef zeroext true) #13, !inline_history !123
  call void @intel_dmc_wl_put(ptr noundef %i.oy, i32 421144) #13
  %i.si = call i32 @intel_de_wait_for_set_ms(ptr noundef %i.oy, i32 421120, i32 noundef 131072, i32 noundef 1) #13
  %.not.i.i.i = icmp eq i32 %i.si, 0
  br i1 %.not.i.i.i, label %intel_write_sha_text.exit.i.i, label %bb.fu

bb.fu:                                            ; preds = %._crit_edge.i.i
  %i.sj = load ptr, ptr %i.oy, align 8            ; 2 uses
  %.not.i.i240.i.i = icmp eq ptr %i.sj, null
  br i1 %.not.i.i240.i.i, label %intel_write_sha_text.exit.thread.i.i, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.sk = getelementptr i8, ptr %i.sj, i64 8
  %i.sl = load ptr, ptr %i.sk, align 8
  br label %intel_write_sha_text.exit.thread.i.i

intel_write_sha_text.exit.thread.i.i:             ; preds = %bb.fv, %bb.fu
  %i.sm = phi ptr [ %i.sl, %bb.fv ], [ null, %bb.fu ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.sm, ptr noundef nonnull @.str.93) #17
  br label %bb.hn

intel_write_sha_text.exit.i.i:                    ; preds = %._crit_edge.i.i
  %i.sn = add i32 %.0207392.i.i, 4                ; 2 uses
  %i.so = and i32 %i.sn, 63
  %.not236.i.i = icmp eq i32 %i.so, 0
  br i1 %.not236.i.i, label %bb.fw, label %.lr.ph389.preheader.i.i

bb.fw:                                            ; preds = %intel_write_sha_text.exit.i.i
  call void @intel_dmc_wl_get(ptr noundef %i.oy, i32 421120) #13
  %.val.i243.i.i = load ptr, ptr %i.oy, align 8
  %i.sp = call ptr @to_intel_uncore(ptr noundef %.val.i243.i.i) #13 ; 2 uses
  %i.sq = getelementptr i8, ptr %i.sp, i64 176
  %i.sr = load ptr, ptr %i.sq, align 8
  call void %i.sr(ptr noundef %i.sp, i32 421120, i32 noundef %i.qu, i1 noundef zeroext true) #13, !inline_history !121
  call void @intel_dmc_wl_put(ptr noundef %i.oy, i32 421120) #13
  br label %.lr.ph389.preheader.i.i

.lr.ph389.preheader.i.i:                          ; preds = %bb.fw, %intel_write_sha_text.exit.i.i
  %i.ss = add nuw nsw i32 %.0200394.i.i, 1        ; 3 uses
  %i.st = icmp eq i32 %.0200394.i.i, 0
  br i1 %i.st, label %.lr.ph389.i.i.epil.preheader, label %.lr.ph389.preheader.i.i.new

.lr.ph389.preheader.i.i.new:                      ; preds = %.lr.ph389.preheader.i.i
  %unroll_iter261 = and i32 %i.ss, -2
  br label %.lr.ph389.i.i

.lr.ph389.i.i:                                    ; preds = %.lr.ph389.i.i, %.lr.ph389.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph389.preheader.i.i.new ], [ %indvars.iv.next.i.i.1, %.lr.ph389.i.i ] ; 3 uses
  %.2199387.i.i = phi i32 [ 0, %.lr.ph389.preheader.i.i.new ], [ %i.to, %.lr.ph389.i.i ]
  %niter262 = phi i32 [ 0, %.lr.ph389.preheader.i.i.new ], [ %niter262.next.1, %.lr.ph389.i.i ]
  %i.su = trunc nuw i64 %indvars.iv.i.i to i32    ; 2 uses
  %i.sv = add i32 %i.ra, %i.su
  %i.sw = zext i32 %i.sv to i64
  %i.sx = getelementptr i8, ptr %i.qz, i64 %i.sw
  %i.sy = load i8, ptr %i.sx, align 1
  %i.sz = zext i8 %i.sy to i32
  %i.ta = shl nuw i32 %i.su, 3
  %i.tb = sub i32 24, %i.ta
  %i.tc = shl nuw i32 %i.sz, %i.tb
  %i.td = or i32 %i.tc, %.2199387.i.i
  %i.te = trunc i64 %indvars.iv.i.i to i32
  %i.tf = or disjoint i32 %i.te, 1                ; 2 uses
  %i.tg = add i32 %i.ra, %i.tf
  %i.th = zext i32 %i.tg to i64
  %i.ti = getelementptr i8, ptr %i.qz, i64 %i.th
  %i.tj = load i8, ptr %i.ti, align 1
  %i.tk = zext i8 %i.tj to i32
  %i.tl = shl nuw i32 %i.tf, 3
  %i.tm = sub i32 24, %i.tl
  %i.tn = shl nuw i32 %i.tk, %i.tm
  %i.to = or i32 %i.tn, %i.td                     ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter262.next.1 = add i32 %niter262, 2         ; 2 uses
  %niter260.ncmp.1 = icmp eq i32 %niter262.next.1, %unroll_iter261
  br i1 %niter260.ncmp.1, label %._crit_edge390.i.i.unr-lcssa, label %.lr.ph389.i.i, !llvm.loop !124

._crit_edge390.i.i.unr-lcssa:                     ; preds = %.lr.ph389.i.i
  %4 = and i32 %.0200394.i.i, 1
  %lcmp.mod256.not = icmp eq i32 %4, 0
  br i1 %lcmp.mod256.not, label %.lr.ph389.i.i.epil.preheader, label %._crit_edge390.i.i

.lr.ph389.i.i.epil.preheader:                     ; preds = %._crit_edge390.i.i.unr-lcssa, %.lr.ph389.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph389.preheader.i.i ], [ %indvars.iv.next.i.i.1, %._crit_edge390.i.i.unr-lcssa ]
  %.2199387.i.i.epil.init = phi i32 [ 0, %.lr.ph389.preheader.i.i ], [ %i.to, %._crit_edge390.i.i.unr-lcssa ]
  %lcmp.mod258 = trunc i32 %i.ss to i1
  call void @llvm.assume(i1 %lcmp.mod258)
  %i.tp = trunc nuw i64 %indvars.iv.i.i.epil.init to i32 ; 2 uses
  %i.tq = add i32 %i.ra, %i.tp
  %i.tr = zext i32 %i.tq to i64
  %i.ts = getelementptr i8, ptr %i.qz, i64 %i.tr
  %i.tt = load i8, ptr %i.ts, align 1
  %i.tu = zext i8 %i.tt to i32
  %i.tv = shl nuw i32 %i.tp, 3
  %i.tw = sub i32 24, %i.tv
  %i.tx = shl nuw i32 %i.tu, %i.tw
  %i.ty = or i32 %i.tx, %.2199387.i.i.epil.init
  br label %._crit_edge390.i.i

._crit_edge390.i.i:                               ; preds = %._crit_edge390.i.i.unr-lcssa, %.lr.ph389.i.i.epil.preheader
  %.lcssa242 = phi i32 [ %i.to, %._crit_edge390.i.i.unr-lcssa ], [ %i.ty, %.lr.ph389.i.i.epil.preheader ] ; 2 uses
  %i.tz = icmp samesign ult i32 %.0200394.i.i, 3
  br i1 %i.tz, label %bb.ga, label %bb.fx

bb.fx:                                            ; preds = %._crit_edge390.i.i
  call void @intel_dmc_wl_get(ptr noundef %i.oy, i32 421144) #13
  %.val.i.i244.i.i = load ptr, ptr %i.oy, align 8
  %i.ua = call ptr @to_intel_uncore(ptr noundef %.val.i.i244.i.i) #13 ; 2 uses
  %i.ub = getelementptr i8, ptr %i.ua, i64 176
  %i.uc = load ptr, ptr %i.ub, align 8
  call void %i.uc(ptr noundef %i.ua, i32 421144, i32 noundef %.lcssa242, i1 noundef zeroext true) #13, !inline_history !123
  call void @intel_dmc_wl_put(ptr noundef %i.oy, i32 421144) #13
  %i.ud = call i32 @intel_de_wait_for_set_ms(ptr noundef %i.oy, i32 421120, i32 noundef 131072, i32 noundef 1) #13
  %.not.i245.i.i = icmp eq i32 %i.ud, 0
  br i1 %.not.i245.i.i, label %intel_write_sha_text.exit249.i.i, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.ue = load ptr, ptr %i.oy, align 8            ; 2 uses
  %.not.i.i246.i.i = icmp eq ptr %i.ue, null
  br i1 %.not.i.i246.i.i, label %intel_write_sha_text.exit249.thread.i.i, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.uf = getelementptr i8, ptr %i.ue, i64 8
  %i.ug = load ptr, ptr %i.uf, align 8
  br label %intel_write_sha_text.exit249.thread.i.i

intel_write_sha_text.exit249.thread.i.i:          ; preds = %bb.fz, %bb.fy
  %i.uh = phi ptr [ %i.ug, %bb.fz ], [ null, %bb.fy ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.uh, ptr noundef nonnull @.str.93) #17
  br label %bb.hn

intel_write_sha_text.exit249.i.i:                 ; preds = %bb.fx
  %i.ui = add i32 %.0207392.i.i, 8
  br label %bb.ga

bb.ga:                                            ; preds = %intel_write_sha_text.exit249.i.i, %._crit_edge390.i.i
  %.1208.i.i = phi i32 [ %i.ui, %intel_write_sha_text.exit249.i.i ], [ %i.sn, %._crit_edge390.i.i ] ; 2 uses
  %.1201.i.i = phi i32 [ 0, %intel_write_sha_text.exit249.i.i ], [ %i.ss, %._crit_edge390.i.i ] ; 2 uses
  %.3.i.i = phi i32 [ 0, %intel_write_sha_text.exit249.i.i ], [ %.lcssa242, %._crit_edge390.i.i ] ; 4 uses
  %indvars.iv.next417.i.i = add nuw nsw i64 %indvars.iv416.i.i, 1 ; 2 uses
  %exitcond420.not.i.i = icmp eq i64 %indvars.iv.next417.i.i, %i.oc
  br i1 %exitcond420.not.i.i, label %._crit_edge397.i.i, label %.lr.ph.preheader.i.i, !llvm.loop !125

._crit_edge397.i.i:                               ; preds = %bb.ga
  switch i32 %.1201.i.i, label %default.unreachable.i.i [
    i32 0, label %._crit_edge397.thread.i.i
    i32 1, label %bb.gh
    i32 2, label %bb.go
    i32 3, label %bb.gw
  ]

._crit_edge397.thread.i.i:                        ; preds = %._crit_edge397.i.i
  %i.uj = or disjoint i32 %.0.i.i78.i, 10         ; 2 uses
  call void @intel_dmc_wl_get(ptr noundef %i.oy, i32 421120) #13
  %.val.i250.i.i = load ptr, ptr %i.oy, align 8
  %i.uk = call ptr @to_intel_uncore(ptr noundef %.val.i250.i.i) #13 ; 2 uses
  %i.ul = getelementptr i8, ptr %i.uk, i64 176
  %i.um = load ptr, ptr %i.ul, align 8
  call void %i.um(ptr noundef %i.uk, i32 421120, i32 noundef %i.uj, i1 noundef zeroext true) #13, !inline_history !121
  call void @intel_dmc_wl_put(ptr noundef %i.oy, i32 421120) #13
  %i.un = load i8, ptr %i.c, align 2
  %i.uo = zext i8 %i.un to i32
  %i.up = shl nuw nsw i32 %i.uo, 8
  %i.uq = load i8, ptr %i.bx, align 1
  %i.ur = zext i8 %i.uq to i32
  %i.us = or disjoint i32 %i.up, %i.ur
  call void @intel_dmc_wl_get(ptr noundef %i.oy, i32 421144) #13
  %.val.i.i251.i.i = load ptr, ptr %i.oy, align 8
  %i.ut = call ptr @to_intel_uncore(ptr noundef %.val.i.i251.i.i) #13 ; 2 uses
  %i.uu = getelementptr i8, ptr %i.ut, i64 176
  %i.uv = load ptr, ptr %i.uu, align 8
  call void %i.uv(ptr noundef %i.ut, i32 421144, i32 noundef %i.us, i1 noundef zeroext true) #13, !inline_history !123
  call void @intel_dmc_wl_put(ptr noundef %i.oy, i32 421144) #13
  %i.uw = call i32 @intel_de_wait_for_set_ms(ptr noundef %i.oy, i32 421120, i32 noundef 131072, i32 noundef 1) #13
  %.not.i252.i.i = icmp eq i32 %i.uw, 0
  br i1 %.not.i252.i.i, label %intel_write_sha_text.exit256.i.i, label %bb.gb

bb.gb:                                            ; preds = %._crit_edge397.thread.i.i
  %i.ux = load ptr, ptr %i.oy, align 8            ; 2 uses
  %.not.i.i253.i.i = icmp eq ptr %i.ux, null
  br i1 %.not.i.i253.i.i, label %intel_write_sha_text.exit256.thread.i.i, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.uy = getelementptr i8, ptr %i.ux, i64 8
  %i.uz = load ptr, ptr %i.uy, align 8
  br label %intel_write_sha_text.exit256.thread.i.i

intel_write_sha_text.exit256.thread.i.i:          ; preds = %bb.gc, %bb.gb
  %i.va = phi ptr [ %i.uz, %bb.gc ], [ null, %bb.gb ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.va, ptr noundef nonnull @.str.93) #17
  br label %bb.hn

intel_write_sha_text.exit256.i.i:                 ; preds = %._crit_edge397.thread.i.i
  %i.vb = or disjoint i32 %.0.i.i78.i, 14
  call void @intel_dmc_wl_get(ptr noundef %i.oy, i32 421120) #13
  %.val.i257.i.i = load ptr, ptr %i.oy, align 8
  %i.vc = call ptr @to_intel_uncore(ptr noundef %.val.i257.i.i) #13 ; 2 uses
  %i.vd = getelementptr i8, ptr %i.vc, i64 176
  %i.ve = load ptr, ptr %i.vd, align 8
  call void %i.ve(ptr noundef %i.vc, i32 421120, i32 noundef %i.vb, i1 noundef zeroext true) #13, !inline_history !121
  call void @intel_dmc_wl_put(ptr noundef %i.oy, i32 421120) #13
  call void @intel_dmc_wl_get(ptr noundef %i.oy, i32 421144) #13
  %.val.i.i258.i.i = load ptr, ptr %i.oy, align 8
  %i.vf = call ptr @to_intel_uncore(ptr noundef %.val.i.i258.i.i) #13 ; 2 uses
  %i.vg = getelementptr i8, ptr %i.vf, i64 176
  %i.vh = load ptr, ptr %i.vg, align 8
  call void %i.vh(ptr noundef %i.vf, i32 421144, i32 noundef 0, i1 noundef zeroext true) #13, !inline_history !123
  call void @intel_dmc_wl_put(ptr noundef %i.oy, i32 421144) #13
  %i.vi = call i32 @intel_de_wait_for_set_ms(ptr noundef %i.oy, i32 421120, i32 noundef 131072, i32 noundef 1) #13
  %.not.i259.i.i = icmp eq i32 %i.vi, 0
  br i1 %.not.i259.i.i, label %intel_write_sha_text.exit263.i.i, label %bb.gd

bb.gd:                                            ; preds = %intel_write_sha_text.exit256.i.i
  %i.vj = load ptr, ptr %i.oy, align 8            ; 2 uses
  %.not.i.i260.i.i = icmp eq ptr %i.vj, null
  br i1 %.not.i.i260.i.i, label %intel_write_sha_text.exit263.thread.i.i, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.vk = getelementptr i8, ptr %i.vj, i64 8
  %i.vl = load ptr, ptr %i.vk, align 8
  br label %intel_write_sha_text.exit263.thread.i.i

intel_write_sha_text.exit263.thread.i.i:          ; preds = %bb.ge, %bb.gd
  %i.vm = phi ptr [ %i.vl, %bb.ge ], [ null, %bb.gd ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.vm, ptr noundef nonnull @.str.93) #17
  br label %bb.hn

intel_write_sha_text.exit263.i.i:                 ; preds = %intel_write_sha_text.exit256.i.i
  call void @intel_dmc_wl_get(ptr noundef %i.oy, i32 421120) #13
  %.val.i264.i.i = load ptr, ptr %i.oy, align 8
  %i.vn = call ptr @to_intel_uncore(ptr noundef %.val.i264.i.i) #13 ; 2 uses
  %i.vo = getelementptr i8, ptr %i.vn, i64 176
  %i.vp = load ptr, ptr %i.vo, align 8
  call void %i.vp(ptr noundef %i.vn, i32 421120, i32 noundef %i.uj, i1 noundef zeroext true) #13, !inline_history !121
  call void @intel_dmc_wl_put(ptr noundef %i.oy, i32 421120) #13
  call void @intel_dmc_wl_get(ptr noundef %i.oy, i32 421144) #13
  %.val.i.i265.i.i = load ptr, ptr %i.oy, align 8
  %i.vq = call ptr @to_intel_uncore(ptr noundef %.val.i.i265.i.i) #13 ; 2 uses
  %i.vr = getelementptr i8, ptr %i.vq, i64 176
  %i.vs = load ptr, ptr %i.vr, align 8
  call void %i.vs(ptr noundef %i.vq, i32 421144, i32 noundef 0, i1 noundef zeroext true) #13, !inline_history !123
  call void @intel_dmc_wl_put(ptr noundef %i.oy, i32 421144) #13
  %i.vt = call i32 @intel_de_wait_for_set_ms(ptr noundef %i.oy, i32 421120, i32 noundef 131072, i32 noundef 1) #13
  %.not.i266.i.i = icmp eq i32 %i.vt, 0
  br i1 %.not.i266.i.i, label %intel_write_sha_text.exit270.i.i, label %bb.gf

bb.gf:                                            ; preds = %intel_write_sha_text.exit263.i.i
  %i.vu = load ptr, ptr %i.oy, align 8            ; 2 uses
  %.not.i.i267.i.i = icmp eq ptr %i.vu, null
  br i1 %.not.i.i267.i.i, label %intel_write_sha_text.exit270.thread.i.i, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.vv = getelementptr i8, ptr %i.vu, i64 8
  %i.vw = load ptr, ptr %i.vv, align 8
  br label %intel_write_sha_text.exit270.thread.i.i

intel_write_sha_text.exit270.thread.i.i:          ; preds = %bb.gg, %bb.gf
  %i.vx = phi ptr [ %i.vw, %bb.gg ], [ null, %bb.gf ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.vx, ptr noundef nonnull @.str.93) #17
  br label %bb.hn

bb.gh:                                            ; preds = %._crit_edge397.i.i
  %i.vy = or disjoint i32 %.0.i.i78.i, 8
  call void @intel_dmc_wl_get(ptr noundef %i.oy, i32 421120) #13
  %.val.i271.i.i = load ptr, ptr %i.oy, align 8
  %i.vz = call ptr @to_intel_uncore(ptr noundef %.val.i271.i.i) #13 ; 2 uses
  %i.wa = getelementptr i8, ptr %i.vz, i64 176
  %i.wb = load ptr, ptr %i.wa, align 8
  call void %i.wb(ptr noundef %i.vz, i32 421120, i32 noundef %i.vy, i1 noundef zeroext true) #13, !inline_history !121
  call void @intel_dmc_wl_put(ptr noundef %i.oy, i32 421120) #13
  %i.wc = load i8, ptr %i.c, align 2
  %i.wd = zext i8 %i.wc to i32
  %i.we = shl nuw nsw i32 %i.wd, 16
  %i.wf = load i8, ptr %i.bx, align 1
  %i.wg = zext i8 %i.wf to i32
  %i.wh = shl nuw nsw i32 %i.wg, 8
  %i.wi = or disjoint i32 %i.we, %i.wh
  %i.wj = or i32 %i.wi, %.3.i.i
  %i.wk = lshr i32 %i.wj, 8
  call void @intel_dmc_wl_get(ptr noundef %i.oy, i32 421144) #13
  %.val.i.i272.i.i = load ptr, ptr %i.oy, align 8
  %i.wl = call ptr @to_intel_uncore(ptr noundef %.val.i.i272.i.i) #13 ; 2 uses
  %i.wm = getelementptr i8, ptr %i.wl, i64 176
  %i.wn = load ptr, ptr %i.wm, align 8
  call void %i.wn(ptr noundef %i.wl, i32 421144, i32 noundef %i.wk, i1 noundef zeroext true) #13, !inline_history !123
  call void @intel_dmc_wl_put(ptr noundef %i.oy, i32 421144) #13
  %i.wo = call i32 @intel_de_wait_for_set_ms(ptr noundef %i.oy, i32 421120, i32 noundef 131072, i32 noundef 1) #13
  %.not.i273.i.i = icmp eq i32 %i.wo, 0
  br i1 %.not.i273.i.i, label %intel_write_sha_text.exit277.i.i, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.wp = load ptr, ptr %i.oy, align 8            ; 2 uses
  %.not.i.i274.i.i = icmp eq ptr %i.wp, null
  br i1 %.not.i.i274.i.i, label %intel_write_sha_text.exit277.thread.i.i, label %bb.gj

end_hunk_0
begin_hunk_1_@intel_hdcp_adjust_hdcp_line_rekeying:bb.a
  br label %bb.s

bb.s:                                             ; preds = %dev_name.exit119, %bb.m
  %i.bz = phi i32 [ %.pre144, %dev_name.exit119 ], [ %i.bg, %bb.m ]
  %i.ca = add i32 %i.bz, -5
  %or.cond88 = icmp ult i32 %i.ca, 37
  br i1 %or.cond88, label %bb.t, label %..critedge2_crit_edge

..critedge2_crit_edge:                            ; preds = %bb.s
  %.pre145 = load i16, ptr %i.i, align 8
  %.pre146 = load i16, ptr %i.z, align 2
  %.pre149 = zext i16 %.pre145 to i32
  %.pre151 = mul nuw nsw i32 %.pre149, 100
  %.pre153 = zext i16 %.pre146 to i32
  br label %.critedge2

bb.t:                                             ; preds = %bb.s, %bb.l
  %i.cb = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 80     ; 2 uses
  %i.cd = getelementptr i8, ptr %1, i64 208
  %i.ce = load i32, ptr %i.cd, align 8
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr [4 x i8], ptr %i.cc, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = load i32, ptr %i.cc, align 4
  %i.cj = getelementptr i8, ptr %i.cb, i64 48
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = add i32 %i.ch, 394240
  %i.cm = sub i32 %i.cl, %i.ci
  %i.cn = add i32 %i.cm, %i.ck
  br label %.critedge4

.critedge2:                                       ; preds = %..critedge2_crit_edge, %.critedge
  %.pre-phi154 = phi i32 [ %.pre153, %..critedge2_crit_edge ], [ %.pre-phi, %.critedge ]
  %.pre-phi152 = phi i32 [ %.pre151, %..critedge2_crit_edge ], [ %i.bc, %.critedge ]
  %i.co = add nuw nsw i32 %.pre-phi152, %.pre-phi154
  %i.cp = icmp eq i32 %i.co, 1400
  br i1 %i.cp, label %bb.u, label %.critedge91

bb.u:                                             ; preds = %.critedge2
  %i.cq = getelementptr i8, ptr %i.c, i64 1176    ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8            ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.v, label %bb.aa, !prof !17

bb.v:                                             ; preds = %bb.u
  %i.ct = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i120 = icmp eq ptr %i.ct, null
  br i1 %.not.i120, label %__drm_to_dev.exit121, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cu = getelementptr i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  br label %__drm_to_dev.exit121

__drm_to_dev.exit121:                             ; preds = %bb.v, %bb.w
  %i.cw = phi ptr [ %i.cv, %bb.w ], [ null, %bb.v ]
  %i.cx = tail call ptr @dev_driver_string(ptr noundef %i.cw) #13 ; 0 uses
  %i.cy = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.2, i32 63, i32 2321, i64 16) #14, !srcloc !144
  %i.cz = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i128 = icmp eq ptr %i.cz, null
  br i1 %.not.i128, label %__drm_to_dev.exit129, label %bb.x

bb.x:                                             ; preds = %__drm_to_dev.exit121
  %i.da = getelementptr i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8
  br label %__drm_to_dev.exit129

__drm_to_dev.exit129:                             ; preds = %__drm_to_dev.exit121, %bb.x
  %i.dc = phi ptr [ %i.db, %bb.x ], [ null, %__drm_to_dev.exit121 ]
  %i.dd = tail call ptr @dev_driver_string(ptr noundef %i.dc) #13
  %i.de = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i130 = icmp eq ptr %i.de, null
  br i1 %.not.i130, label %__drm_to_dev.exit131, label %bb.y

bb.y:                                             ; preds = %__drm_to_dev.exit129
  %i.df = getelementptr i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  br label %__drm_to_dev.exit131

__drm_to_dev.exit131:                             ; preds = %__drm_to_dev.exit129, %bb.y
  %i.dh = phi ptr [ %i.dg, %bb.y ], [ null, %__drm_to_dev.exit129 ] ; 2 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 80
  %i.dj = load ptr, ptr %i.di, align 8            ; 2 uses
  %.not.i132 = icmp eq ptr %i.dj, null
  br i1 %.not.i132, label %bb.z, label %dev_name.exit135

bb.z:                                             ; preds = %__drm_to_dev.exit131
  %.val.i134 = load ptr, ptr %i.dh, align 8
  br label %dev_name.exit135

dev_name.exit135:                                 ; preds = %__drm_to_dev.exit131, %bb.z
  %.0.i133 = phi ptr [ %.val.i134, %bb.z ], [ %i.dj, %__drm_to_dev.exit131 ]
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.cy, ptr noundef %i.dd, ptr noundef %.0.i133, ptr noundef nonnull @.str.49) #13
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !145
  %.pre147 = load i32, ptr %i.cq, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %dev_name.exit135, %bb.u
  %i.dk = phi i32 [ %.pre147, %dev_name.exit135 ], [ %i.cr, %bb.u ]
  %i.dl = add i32 %i.dk, -13
  %or.cond90 = icmp ult i32 %i.dl, 29
  br i1 %or.cond90, label %bb.ab, label %.critedge91

bb.ab:                                            ; preds = %bb.aa
  %i.dm = load i16, ptr %i.i, align 8
  %i.dn = icmp ugt i16 %i.dm, 13
  %i.do = getelementptr i8, ptr %1, i64 208
  %i.dp = load i32, ptr %i.do, align 8            ; 2 uses
  br i1 %i.dn, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dq = shl i32 %i.dp, 12
  %i.dr = add i32 %i.dq, 394464
  br label %.critedge4

bb.ad:                                            ; preds = %bb.ab
  %i.ds = sext i32 %i.dp to i64
  %i.dt = getelementptr [4 x i8], ptr @constinit.50, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4
  br label %.critedge4

.critedge4:                                       ; preds = %bb.d, %bb.t, %bb.ad, %bb.ac
  %.0 = phi i32 [ 32768, %bb.d ], [ 4096, %bb.t ], [ 1, %bb.ad ], [ 1, %bb.ac ] ; 2 uses
  %.sroa.027.1 = phi i32 [ %i.x, %bb.d ], [ %i.cn, %bb.t ], [ %i.du, %bb.ad ], [ %i.dr, %bb.ac ] ; 4 uses
  %i.dv = select i1 %2, i32 0, i32 %.0
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %.sroa.027.1) #13
  %.val.i136 = load ptr, ptr %i.c, align 8
  %i.dw = tail call ptr @to_intel_uncore(ptr noundef %.val.i136) #13 ; 4 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 144
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = tail call i32 %i.dy(ptr noundef %i.dw, i32 %.sroa.027.1, i1 noundef zeroext true) #13, !inline_history !2
  %i.ea = xor i32 %.0, -1
  %i.eb = and i32 %i.dz, %i.ea
  %i.ec = or i32 %i.eb, %i.dv
  %i.ed = getelementptr i8, ptr %i.dw, i64 176
  %i.ee = load ptr, ptr %i.ed, align 8
  tail call void %i.ee(ptr noundef %i.dw, i32 %.sroa.027.1, i32 noundef %i.ec, i1 noundef zeroext true) #13, !inline_history !3
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %.sroa.027.1) #13
  br label %.critedge91

.critedge91:                                      ; preds = %bb.c, %.critedge4, %.critedge2, %bb.aa, %intel_encoder_is_hdmi.exit
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_display_rpm_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_display_power_well_is_enabled(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_display_rpm_put(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_parent_pcode_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @intel_de_write(ptr noundef %0, i32 %1, i32 noundef %2) unnamed_addr #9 align 16 prefalign(16) {
bb.a:
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %1) #13
  %.val = load ptr, ptr %0, align 8
  %i.a = tail call ptr @to_intel_uncore(ptr noundef %.val) #13 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 176
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef %i.a, i32 %1, i32 noundef %2, i1 noundef zeroext true) #13, !inline_history !146
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %1) #13
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_de_wait_ms(ptr noundef, i32, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_de_wait_for_set_ms(ptr noundef, i32, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @intel_hdcp_read_valid_bksv(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  %i.d = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.e = getelementptr i8, ptr %2, i64 1          ; 2 uses
  %i.f = getelementptr i8, ptr %2, i64 2          ; 2 uses
  %i.g = getelementptr i8, ptr %2, i64 3          ; 2 uses
  %i.h = getelementptr i8, ptr %2, i64 4          ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8
  %i.j = tail call i32 %i.i(ptr noundef %0, ptr noundef %2) #13 ; 2 uses
  %.not17 = icmp eq i32 %i.j, 0
  br i1 %.not17, label %intel_hdcp_is_ksv_valid.exit.1, label %.thread

3:                                                ; preds = %intel_hdcp_is_ksv_valid.exit.1
  %4 = load ptr, ptr %i.d, align 8
  %5 = tail call i32 %4(ptr noundef %0, ptr noundef %2) #13 ; 2 uses
  %.not17.1 = icmp eq i32 %5, 0
  br i1 %.not17.1, label %intel_hdcp_is_ksv_valid.exit.a, label %.thread

intel_hdcp_is_ksv_valid.exit.a:                   ; preds = %3
  %i.k = load i8, ptr %2, align 1
  %i.l = zext i8 %i.k to i32
  %i.m = tail call i64 @llvm.read_register.i64(metadata !4)
  %i.n = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.l, i64 %i.m) #15, !srcloc !18 ; 2 uses
  %i.o = extractvalue { i32, i64 } %i.n, 0
  %i.p = extractvalue { i32, i64 } %i.n, 1
  tail call void @llvm.write_register.i64(metadata !4, i64 %i.p)
  %i.q = load i8, ptr %i.e, align 1
  %i.r = zext i8 %i.q to i32
  %i.s = tail call i64 @llvm.read_register.i64(metadata !4)
  %i.t = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.r, i64 %i.s) #15, !srcloc !18 ; 2 uses
  %i.u = extractvalue { i32, i64 } %i.t, 0
  %i.v = extractvalue { i32, i64 } %i.t, 1
  tail call void @llvm.write_register.i64(metadata !4, i64 %i.v)
  %i.w = load i8, ptr %i.f, align 1
  %i.x = zext i8 %i.w to i32
  %i.y = tail call i64 @llvm.read_register.i64(metadata !4)
  %i.z = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.x, i64 %i.y) #15, !srcloc !18 ; 2 uses
  %i.aa = extractvalue { i32, i64 } %i.z, 0
  %i.ab = extractvalue { i32, i64 } %i.z, 1
  tail call void @llvm.write_register.i64(metadata !4, i64 %i.ab)
  %i.ac = load i8, ptr %i.g, align 1
  %i.ad = zext i8 %i.ac to i32
  %i.ae = tail call i64 @llvm.read_register.i64(metadata !4)
  %i.af = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.ad, i64 %i.ae) #15, !srcloc !18 ; 2 uses
  %i.ag = extractvalue { i32, i64 } %i.af, 0
  %i.ah = extractvalue { i32, i64 } %i.af, 1
  tail call void @llvm.write_register.i64(metadata !4, i64 %i.ah)
  %i.ai = load i8, ptr %i.h, align 1
  %i.aj = zext i8 %i.ai to i32
  %i.ak = tail call i64 @llvm.read_register.i64(metadata !4)
  %i.al = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.aj, i64 %i.ak) #15, !srcloc !18 ; 2 uses
  %i.am = extractvalue { i32, i64 } %i.al, 1
  tail call void @llvm.write_register.i64(metadata !4, i64 %i.am)
  %i.an = extractvalue { i32, i64 } %i.al, 0
  %i.ao = add i32 %i.u, %i.o
  %i.ap = add i32 %i.ao, %i.aa
  %i.aq = add i32 %i.ap, %i.ag
  %i.ar = add i32 %i.aq, %i.an
  %.not.i.a = icmp eq i32 %i.ar, 20
  br i1 %.not.i.a, label %.thread, label %bb.d

bb.d:                                             ; preds = %intel_hdcp_is_ksv_valid.exit.a
  %i.as = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not17.1.a = icmp eq ptr %i.as, null
  br i1 %.not17.1.a, label %__drm_to_dev.exit, label %bb.e

intel_hdcp_is_ksv_valid.exit.1:                   ; preds = %bb.c
  %i.at = load i8, ptr %2, align 1
  %i.au = zext i8 %i.at to i32
  %i.av = tail call i64 @llvm.read_register.i64(metadata !4)
  %i.aw = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.au, i64 %i.av) #15, !srcloc !18 ; 2 uses
  %i.ax = extractvalue { i32, i64 } %i.aw, 0
  %i.ay = extractvalue { i32, i64 } %i.aw, 1
  tail call void @llvm.write_register.i64(metadata !4, i64 %i.ay)
  %i.az = load i8, ptr %i.e, align 1
  %i.ba = zext i8 %i.az to i32
  %i.bb = tail call i64 @llvm.read_register.i64(metadata !4)
  %i.bc = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.ba, i64 %i.bb) #15, !srcloc !18 ; 2 uses
  %i.bd = extractvalue { i32, i64 } %i.bc, 0
  %i.be = extractvalue { i32, i64 } %i.bc, 1
  tail call void @llvm.write_register.i64(metadata !4, i64 %i.be)
  %i.bf = load i8, ptr %i.f, align 1
  %i.bg = zext i8 %i.bf to i32
  %i.bh = tail call i64 @llvm.read_register.i64(metadata !4)
  %i.bi = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.bg, i64 %i.bh) #15, !srcloc !18 ; 2 uses
  %i.bj = extractvalue { i32, i64 } %i.bi, 0
  %i.bk = extractvalue { i32, i64 } %i.bi, 1
  tail call void @llvm.write_register.i64(metadata !4, i64 %i.bk)
  %i.bl = load i8, ptr %i.g, align 1
  %i.bm = zext i8 %i.bl to i32
  %i.bn = tail call i64 @llvm.read_register.i64(metadata !4)
  %i.bo = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.bm, i64 %i.bn) #15, !srcloc !18 ; 2 uses
  %i.bp = extractvalue { i32, i64 } %i.bo, 0
  %i.bq = extractvalue { i32, i64 } %i.bo, 1
  tail call void @llvm.write_register.i64(metadata !4, i64 %i.bq)
  %i.br = load i8, ptr %i.h, align 1
  %i.bs = zext i8 %i.br to i32
  %i.bt = tail call i64 @llvm.read_register.i64(metadata !4)
  %i.bu = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.bs, i64 %i.bt) #15, !srcloc !18 ; 2 uses
  %i.bv = extractvalue { i32, i64 } %i.bu, 1
  tail call void @llvm.write_register.i64(metadata !4, i64 %i.bv)
  %i.bw = extractvalue { i32, i64 } %i.bu, 0
  %i.bx = add i32 %i.bd, %i.ax
  %i.by = add i32 %i.bx, %i.bj
  %i.bz = add i32 %i.by, %i.bp
  %i.ca = add i32 %i.bz, %i.bw
  %.not.i.1 = icmp eq i32 %i.ca, 20
  br i1 %.not.i.1, label %.thread, label %3

bb.e:                                             ; preds = %bb.d
  %i.cb = getelementptr i8, ptr %i.as, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.d, %bb.e
  %i.cd = phi ptr [ %i.cc, %bb.e ], [ null, %bb.d ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.cd, i32 noundef 2, ptr noundef nonnull @.str.72) #13
  br label %.thread

.thread:                                          ; preds = %intel_hdcp_is_ksv_valid.exit.1, %bb.c, %3, %intel_hdcp_is_ksv_valid.exit.a, %__drm_to_dev.exit
  %.014 = phi i32 [ -19, %__drm_to_dev.exit ], [ 0, %intel_hdcp_is_ksv_valid.exit.1 ], [ %i.j, %bb.c ], [ %5, %3 ], [ 0, %intel_hdcp_is_ksv_valid.exit.a ]
  ret i32 %.014
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @usleep_range_state(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @schedule_timeout_uninterruptible(i64 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -110, 1) i32 @intel_write_sha_text(ptr noundef %0, i32 noundef %1) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 421144) #13
  %.val.i = load ptr, ptr %0, align 8
  %i.a = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #13 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 176
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef %i.a, i32 421144, i32 noundef %1, i1 noundef zeroext true) #13, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 421144) #13
  %i.d = tail call i32 @intel_de_wait_for_set_ms(ptr noundef %0, i32 421120, i32 noundef 131072, i32 noundef 1) #13
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.g, %bb.c ], [ null, %bb.b ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.h, ptr noundef nonnull @.str.93) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %__drm_to_dev.exit
  %.0 = phi i32 [ -110, %__drm_to_dev.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_hdcp_update_content_protection(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_modeset_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc zeroext i1 @intel_hdcp2_get_capability(ptr noundef %0) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i8 0, ptr %i.a, align 1
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 3009
  %i.f = load i8, ptr %i.e, align 1, !range !15, !noundef !16
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %intel_hdcp2_prerequisite.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.d, i64 1168
  %i.i = load i16, ptr %i.h, align 8
  %i.j = icmp ugt i16 %i.i, 13
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = tail call zeroext i1 @intel_parent_hdcp_gsc_check_status(ptr noundef %i.d) #13
  br i1 %i.k, label %bb.f, label %intel_hdcp2_prerequisite.exit.thread

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr i8, ptr %i.d, i64 1128     ; 3 uses
  tail call void @mutex_lock(ptr noundef %i.l) #13
  %i.m = getelementptr i8, ptr %i.d, i64 1112
  %i.n = load i8, ptr %i.m, align 8, !range !15, !noundef !16
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %intel_hdcp2_prerequisite.exit, label %intel_hdcp2_prerequisite.exit.thread6

intel_hdcp2_prerequisite.exit.thread6:            ; preds = %bb.f
  tail call void @mutex_unlock(ptr noundef %i.l) #13
  br label %intel_hdcp2_prerequisite.exit.thread

intel_hdcp2_prerequisite.exit:                    ; preds = %bb.f
  %i.p = getelementptr i8, ptr %i.d, i64 1104
  %i.q = load ptr, ptr %i.p, align 8
  %.not13.i.not = icmp eq ptr %i.q, null
  tail call void @mutex_unlock(ptr noundef %i.l) #13
  br i1 %.not13.i.not, label %intel_hdcp2_prerequisite.exit.thread, label %bb.g

bb.g:                                             ; preds = %intel_hdcp2_prerequisite.exit
  %i.r = getelementptr i8, ptr %0, i64 2848
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr i8, ptr %i.s, i64 104
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call i32 %i.u(ptr noundef %0, ptr noundef nonnull %i.a) #13 ; 0 uses
  %i.w = load i8, ptr %i.a, align 1, !range !15, !noundef !16
  %i.x = trunc nuw i8 %i.w to i1
  br label %intel_hdcp2_prerequisite.exit.thread

intel_hdcp2_prerequisite.exit.thread:             ; preds = %bb.e, %bb.c, %intel_hdcp2_prerequisite.exit.thread6, %intel_hdcp2_prerequisite.exit, %bb.g
  %.0 = phi i1 [ %i.x, %bb.g ], [ false, %intel_hdcp2_prerequisite.exit ], [ false, %intel_hdcp2_prerequisite.exit.thread6 ], [ false, %bb.c ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i1 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_parent_hdcp_gsc_check_status(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @hdcp2_store_pairing_info(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 2248
  %.val = load ptr, ptr %i.d, align 8             ; 6 uses
  %i.e = getelementptr i8, ptr %.val, i64 152
  %.val.i.i = load i32, ptr %i.e, align 8
  switch i32 %.val.i.i, label %intel_encoder_is_dig_port.exit.thread.fold.split.i.i [
    i32 10, label %intel_attached_dig_port.exit
    i32 7, label %intel_attached_dig_port.exit
    i32 8, label %intel_attached_dig_port.exit
    i32 6, label %intel_attached_dig_port.exit
    i32 11, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %.val, i64 512
  %i.g = load ptr, ptr %i.f, align 8
  br label %intel_attached_dig_port.exit

intel_encoder_is_dig_port.exit.thread.fold.split.i.i: ; preds = %bb.c
  br label %intel_attached_dig_port.exit

intel_attached_dig_port.exit:                     ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.d, %intel_encoder_is_dig_port.exit.thread.fold.split.i.i
  %.0.i.i = phi ptr [ %.val, %bb.c ], [ %i.g, %bb.d ], [ %.val, %bb.c ], [ %.val, %bb.c ], [ %.val, %bb.c ], [ null, %intel_encoder_is_dig_port.exit.thread.fold.split.i.i ]
  %i.h = getelementptr i8, ptr %.0.i.i, i64 4248
  %i.i = getelementptr i8, ptr %i.c, i64 1104
  %i.j = getelementptr i8, ptr %i.c, i64 1128     ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.j) #13
  %i.k = load ptr, ptr %i.i, align 8              ; 3 uses
  %.not22 = icmp eq ptr %i.k, null
  br i1 %.not22, label %bb.i, label %bb.e

bb.e:                                             ; preds = %intel_attached_dig_port.exit
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not23 = icmp eq ptr %i.m, null
  br i1 %.not23, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load ptr, ptr %i.k, align 8
  %i.q = tail call i32 %i.o(ptr noundef %i.p, ptr noundef %i.h, ptr noundef %1) #13 ; 4 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.g, %bb.h
  %i.v = phi ptr [ %i.u, %bb.h ], [ null, %bb.g ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.v, i32 noundef 2, ptr noundef nonnull @.str.114, i32 noundef %i.q) #13
end_hunk_1
