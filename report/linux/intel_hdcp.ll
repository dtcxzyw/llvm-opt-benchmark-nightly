Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_hdcp?download=true
inline.NumInlined: 434
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@intel_hdcp1_enable:bb.a
bb.ey:                                            ; preds = %bb.hq, %.preheader.i
  %.05094.i = phi i32 [ 0, %.preheader.i ], [ %i.aci, %bb.hq ]
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
  br i1 %.not237.i.i, label %bb.fc, label %bb.hq

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
  br i1 %.not237.1.i.i, label %bb.fd, label %bb.hq

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
  br i1 %.not237.2.i.i, label %bb.fe, label %bb.hq

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
  br i1 %.not237.3.i.i, label %bb.ff, label %bb.hq

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
  br i1 %.not237.4.i.i, label %bb.fg, label %bb.hq

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
    i32 0, label %.lr.ph392.preheader.i.i
    i32 1, label %bb.fi
    i32 2, label %bb.fj
    i32 3, label %bb.fk
  ]

bb.fi:                                            ; preds = %bb.fh
  br label %.lr.ph392.preheader.i.i

bb.fj:                                            ; preds = %bb.fh
  br label %.lr.ph392.preheader.i.i

bb.fk:                                            ; preds = %bb.fh
  br label %.lr.ph392.preheader.i.i

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
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.qp, ptr noundef @.str.73, i32 noundef %i.pc) #17
  br label %.lr.ph392.preheader.i.i

bb.fn:                                            ; preds = %bb.fg
  switch i32 %i.pe, label %bb.fs [
    i32 0, label %.lr.ph392.preheader.i.i
    i32 1, label %bb.fo
    i32 2, label %bb.fp
    i32 3, label %bb.fq
    i32 4, label %bb.fr
  ]

bb.fo:                                            ; preds = %bb.fn
  br label %.lr.ph392.preheader.i.i

bb.fp:                                            ; preds = %bb.fn
  br label %.lr.ph392.preheader.i.i

bb.fq:                                            ; preds = %bb.fn
  br label %.lr.ph392.preheader.i.i

bb.fr:                                            ; preds = %bb.fn
  br label %.lr.ph392.preheader.i.i

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
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.qt, ptr noundef @.str.74, i32 noundef %i.pe) #17
  br label %.lr.ph392.preheader.i.i

.lr.ph392.preheader.i.i:                          ; preds = %__drm_to_dev.exit8.i.i.i, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %__drm_to_dev.exit.i.i.i, %bb.fk, %bb.fj, %bb.fi, %bb.fh
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

.lr.ph.preheader.i.i:                             ; preds = %bb.gd, %.lr.ph392.preheader.i.i
  %indvars.iv411.i.i = phi i64 [ 0, %.lr.ph392.preheader.i.i ], [ %indvars.iv.next412.i.i, %bb.gd ] ; 2 uses
  %.0197391.i.i = phi i32 [ 0, %.lr.ph392.preheader.i.i ], [ %.3.i.i, %bb.gd ] ; 2 uses
  %.0200390.i.i = phi i32 [ 0, %.lr.ph392.preheader.i.i ], [ %.1201.i.i, %bb.gd ] ; 9 uses
  %.0207388.i.i = phi i32 [ 0, %.lr.ph392.preheader.i.i ], [ %.1208.i.i, %bb.gd ] ; 2 uses
  %i.qy = mul nuw nsw i64 %indvars.iv411.i.i, 5
  %i.qz = getelementptr i8, ptr %i.oe, i64 %i.qy  ; 6 uses
  %i.ra = sub nuw nsw i32 4, %.0200390.i.i        ; 5 uses
  %wide.trip.count.i.i = zext nneg i32 %i.ra to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.rb = icmp eq i32 %.0200390.i.i, 3
  br i1 %i.rb, label %.lr.ph.i79.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 6
  br label %.lr.ph.i79.i

.lr.ph.i79.i:                                     ; preds = %.lr.ph.i79.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.1, %.lr.ph.i79.i ] ; 4 uses
  %.0205384.i.i = phi i32 [ %.0197391.i.i, %.lr.ph.preheader.i.i.new ], [ %i.rr, %.lr.ph.i79.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %.lr.ph.i79.i ]
  %4 = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %.tr.i.i = add i32 %.0200390.i.i, %4
  %i.rc = shl i32 %.tr.i.i, 3
  %i.rd = sub i32 24, %i.rc
  %i.re = getelementptr i8, ptr %i.qz, i64 %indvars.iv.i.i
  %i.rf = load i8, ptr %i.re, align 1
  %i.rg = zext i8 %i.rf to i32
  %i.rh = and i32 %i.rd, 248
  %i.ri = shl i32 %i.rg, %i.rh
  %i.rj = or i32 %i.ri, %.0205384.i.i
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %5 = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  %.tr.i.i.1 = add i32 %.0200390.i.i, %5
  %i.rk = shl i32 %.tr.i.i.1, 3
  %i.rl = sub i32 24, %i.rk
  %i.rm = getelementptr i8, ptr %i.qz, i64 %indvars.iv.next.i.i
  %i.rn = load i8, ptr %i.rm, align 1
  %i.ro = zext i8 %i.rn to i32
  %i.rp = and i32 %i.rl, 248
  %i.rq = shl i32 %i.ro, %i.rp
  %i.rr = or i32 %i.rq, %i.rj                     ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph.i79.i, !llvm.loop !122

._crit_edge.i.i.unr-lcssa:                        ; preds = %.lr.ph.i79.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.lr.ph.i79.i.epil.preheader

.lr.ph.i79.i.epil.preheader:                      ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.1, %._crit_edge.i.i.unr-lcssa ] ; 2 uses
  %.0205384.i.i.epil.init = phi i32 [ %.0197391.i.i, %.lr.ph.preheader.i.i ], [ %i.rr, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod256 = trunc i32 %i.ra to i1
  call void @llvm.assume(i1 %lcmp.mod256)
  %6 = trunc nuw nsw i64 %indvars.iv.i.i.epil.init to i32
  %.tr.i.i.epil = add i32 %.0200390.i.i, %6
  %i.rs = shl i32 %.tr.i.i.epil, 3
  %i.rt = sub i32 24, %i.rs
  %i.ru = getelementptr i8, ptr %i.qz, i64 %indvars.iv.i.i.epil.init
  %i.rv = load i8, ptr %i.ru, align 1
  %i.rw = zext i8 %i.rv to i32
  %i.rx = and i32 %i.rt, 248
  %i.ry = shl i32 %i.rw, %i.rx
  %i.rz = or i32 %i.ry, %.0205384.i.i.epil.init
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i79.i.epil.preheader
  %.lcssa243.a = phi i32 [ %i.rr, %._crit_edge.i.i.unr-lcssa ], [ %i.rz, %.lr.ph.i79.i.epil.preheader ]
  call void @intel_dmc_wl_get(ptr noundef %i.oy, i32 421144) #13
  %.val.i.i239.i.i = load ptr, ptr %i.oy, align 8
  %i.sa = call ptr @to_intel_uncore(ptr noundef %.val.i.i239.i.i) #13 ; 2 uses
  %i.sb = getelementptr i8, ptr %i.sa, i64 176
  %i.sc = load ptr, ptr %i.sb, align 8
  call void %i.sc(ptr noundef %i.sa, i32 421144, i32 noundef %.lcssa243.a, i1 noundef zeroext true) #13, !inline_history !123
  call void @intel_dmc_wl_put(ptr noundef %i.oy, i32 421144) #13
  %i.sd = call i32 @intel_de_wait_for_set_ms(ptr noundef %i.oy, i32 421120, i32 noundef 131072, i32 noundef 1) #13
  %.not.i.i.i = icmp eq i32 %i.sd, 0
  br i1 %.not.i.i.i, label %intel_write_sha_text.exit.i.i, label %bb.fu

bb.fu:                                            ; preds = %._crit_edge.i.i
  %i.se = load ptr, ptr %i.oy, align 8            ; 2 uses
  %.not.i.i240.i.i = icmp eq ptr %i.se, null
  br i1 %.not.i.i240.i.i, label %intel_write_sha_text.exit.thread.i.i, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.sf = getelementptr i8, ptr %i.se, i64 8
  %i.sg = load ptr, ptr %i.sf, align 8
  br label %intel_write_sha_text.exit.thread.i.i

intel_write_sha_text.exit.thread.i.i:             ; preds = %bb.fv, %bb.fu
  %i.sh = phi ptr [ %i.sg, %bb.fv ], [ null, %bb.fu ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.sh, ptr noundef @.str.93) #17
  br label %bb.hq

intel_write_sha_text.exit.i.i:                    ; preds = %._crit_edge.i.i
  %i.si = add i32 %.0207388.i.i, 4                ; 2 uses
  %i.sj = and i32 %i.si, 63
  %.not236.i.i = icmp eq i32 %i.sj, 0
  br i1 %.not236.i.i, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %intel_write_sha_text.exit.i.i
  call void @intel_dmc_wl_get(ptr noundef %i.oy, i32 421120) #13
  %.val.i243.i.i = load ptr, ptr %i.oy, align 8
  %i.sk = call ptr @to_intel_uncore(ptr noundef %.val.i243.i.i) #13 ; 2 uses
  %i.sl = getelementptr i8, ptr %i.sk, i64 176
  %i.sm = load ptr, ptr %i.sl, align 8
  call void %i.sm(ptr noundef %i.sk, i32 421120, i32 noundef %i.qu, i1 noundef zeroext true) #13, !inline_history !121
  call void @intel_dmc_wl_put(ptr noundef %i.oy, i32 421120) #13
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %intel_write_sha_text.exit.i.i
  %i.sn = add nuw nsw i32 %.0200390.i.i, 1        ; 3 uses
  %i.so = icmp eq i32 %.0200390.i.i, 0
  br i1 %i.so, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.fx
  %unroll_iter261 = and i32 %i.sn, -2
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fy, %.new
  %indvars.iv.i.i.a = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.i.1.a, %bb.fy ] ; 3 uses
  %.2199387.i.i = phi i32 [ 0, %.new ], [ %i.tj, %bb.fy ]
  %niter262 = phi i32 [ 0, %.new ], [ %niter262.next.1, %bb.fy ]
  %i.sp = trunc nuw i64 %indvars.iv.i.i.a to i32  ; 2 uses
  %i.sq = add i32 %i.ra, %i.sp
  %i.sr = zext i32 %i.sq to i64
  %i.ss = getelementptr i8, ptr %i.qz, i64 %i.sr
  %i.st = load i8, ptr %i.ss, align 1
  %i.su = zext i8 %i.st to i32
  %i.sv = shl nuw i32 %i.sp, 3
  %i.sw = sub i32 24, %i.sv
  %i.sx = shl nuw i32 %i.su, %i.sw
  %i.sy = or i32 %i.sx, %.2199387.i.i
  %i.sz = trunc i64 %indvars.iv.i.i.a to i32
  %i.ta = or disjoint i32 %i.sz, 1                ; 2 uses
  %i.tb = add i32 %i.ra, %i.ta
  %i.tc = zext i32 %i.tb to i64
  %i.td = getelementptr i8, ptr %i.qz, i64 %i.tc
  %i.te = load i8, ptr %i.td, align 1
  %i.tf = zext i8 %i.te to i32
  %i.tg = shl nuw i32 %i.ta, 3
  %i.th = sub i32 24, %i.tg
  %i.ti = shl nuw i32 %i.tf, %i.th
  %i.tj = or i32 %i.ti, %i.sy                     ; 3 uses
  %indvars.iv.next.i.i.1.a = add nuw nsw i64 %indvars.iv.i.i.a, 2 ; 2 uses
  %niter262.next.1 = add i32 %niter262, 2         ; 2 uses
  %niter262.ncmp.1 = icmp eq i32 %niter262.next.1, %unroll_iter261
  br i1 %niter262.ncmp.1, label %.unr-lcssa, label %bb.fy, !llvm.loop !124

.unr-lcssa:                                       ; preds = %bb.fy
  %i.tk = and i32 %.0200390.i.i, 1
  %lcmp.mod258.not.not = icmp eq i32 %i.tk, 0
  br i1 %lcmp.mod258.not.not, label %.epil.preheader, label %bb.fz

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.fx
  %indvars.iv.i.i.epil.init.a = phi i64 [ 0, %bb.fx ], [ %indvars.iv.next.i.i.1.a, %.unr-lcssa ]
  %.2199387.i.i.epil.init = phi i32 [ 0, %bb.fx ], [ %i.tj, %.unr-lcssa ]
  %lcmp.mod260 = trunc i32 %i.sn to i1
  call void @llvm.assume(i1 %lcmp.mod260)
  %i.tl = trunc nuw i64 %indvars.iv.i.i.epil.init.a to i32 ; 2 uses
  %i.tm = add i32 %i.ra, %i.tl
  %i.tn = zext i32 %i.tm to i64
  %i.to = getelementptr i8, ptr %i.qz, i64 %i.tn
  %i.tp = load i8, ptr %i.to, align 1
  %i.tq = zext i8 %i.tp to i32
  %i.tr = shl nuw i32 %i.tl, 3
  %i.ts = sub i32 24, %i.tr
  %i.tt = shl nuw i32 %i.tq, %i.ts
  %i.tu = or i32 %i.tt, %.2199387.i.i.epil.init
  br label %bb.fz

bb.fz:                                            ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa244 = phi i32 [ %i.tj, %.unr-lcssa ], [ %i.tu, %.epil.preheader ] ; 2 uses
  %i.tv = icmp samesign ult i32 %.0200390.i.i, 3
  br i1 %i.tv, label %bb.gd, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  call void @intel_dmc_wl_get(ptr noundef %i.oy, i32 421144) #13
  %.val.i.i244.i.i = load ptr, ptr %i.oy, align 8
  %i.tw = call ptr @to_intel_uncore(ptr noundef %.val.i.i244.i.i) #13 ; 2 uses
  %i.tx = getelementptr i8, ptr %i.tw, i64 176
  %i.ty = load ptr, ptr %i.tx, align 8
  call void %i.ty(ptr noundef %i.tw, i32 421144, i32 noundef %.lcssa244, i1 noundef zeroext true) #13, !inline_history !123
  call void @intel_dmc_wl_put(ptr noundef %i.oy, i32 421144) #13
  %i.tz = call i32 @intel_de_wait_for_set_ms(ptr noundef %i.oy, i32 421120, i32 noundef 131072, i32 noundef 1) #13
  %.not.i245.i.i = icmp eq i32 %i.tz, 0
  br i1 %.not.i245.i.i, label %intel_write_sha_text.exit249.i.i, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.ua = load ptr, ptr %i.oy, align 8            ; 2 uses
  %.not.i.i246.i.i = icmp eq ptr %i.ua, null
  br i1 %.not.i.i246.i.i, label %intel_write_sha_text.exit249.thread.i.i, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.ub = getelementptr i8, ptr %i.ua, i64 8
  %i.uc = load ptr, ptr %i.ub, align 8
  br label %intel_write_sha_text.exit249.thread.i.i

intel_write_sha_text.exit249.thread.i.i:          ; preds = %bb.gc, %bb.gb
  %i.ud = phi ptr [ %i.uc, %bb.gc ], [ null, %bb.gb ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.ud, ptr noundef @.str.93) #17
  br label %bb.hq

intel_write_sha_text.exit249.i.i:                 ; preds = %bb.ga
  %i.ue = add i32 %.0207388.i.i, 8
  br label %bb.gd

bb.gd:                                            ; preds = %intel_write_sha_text.exit249.i.i, %bb.fz
  %.1208.i.i = phi i32 [ %i.ue, %intel_write_sha_text.exit249.i.i ], [ %i.si, %bb.fz ] ; 2 uses
  %.1201.i.i = phi i32 [ 0, %intel_write_sha_text.exit249.i.i ], [ %i.sn, %bb.fz ] ; 2 uses
  %.3.i.i = phi i32 [ 0, %intel_write_sha_text.exit249.i.i ], [ %.lcssa244, %bb.fz ] ; 4 uses
  %indvars.iv.next412.i.i = add nuw nsw i64 %indvars.iv411.i.i, 1 ; 2 uses
  %exitcond414.not.i.i = icmp eq i64 %indvars.iv.next412.i.i, %i.oc
  br i1 %exitcond414.not.i.i, label %._crit_edge393.i.i, label %.lr.ph.preheader.i.i, !llvm.loop !125

._crit_edge393.i.i:                               ; preds = %bb.gd
  switch i32 %.1201.i.i, label %default.unreachable.i.i [
    i32 0, label %._crit_edge393.thread.i.i
    i32 1, label %bb.gk
    i32 2, label %bb.gr
    i32 3, label %bb.gz
  ]

._crit_edge393.thread.i.i:                        ; preds = %._crit_edge393.i.i
  %i.uf = or disjoint i32 %.0.i.i78.i, 10         ; 2 uses
  call void @intel_dmc_wl_get(ptr noundef %i.oy, i32 421120) #13
  %.val.i250.i.i = load ptr, ptr %i.oy, align 8
  %i.ug = call ptr @to_intel_uncore(ptr noundef %.val.i250.i.i) #13 ; 2 uses
  %i.uh = getelementptr i8, ptr %i.ug, i64 176
  %i.ui = load ptr, ptr %i.uh, align 8
  call void %i.ui(ptr noundef %i.ug, i32 421120, i32 noundef %i.uf, i1 noundef zeroext true) #13, !inline_history !121
  call void @intel_dmc_wl_put(ptr noundef %i.oy, i32 421120) #13
  %i.uj = load i8, ptr %i.c, align 2
  %i.uk = zext i8 %i.uj to i32
  %i.ul = shl nuw nsw i32 %i.uk, 8
  %i.um = load i8, ptr %i.bx, align 1
  %i.un = zext i8 %i.um to i32
  %i.uo = or disjoint i32 %i.ul, %i.un
  call void @intel_dmc_wl_get(ptr noundef %i.oy, i32 421144) #13
  %.val.i.i251.i.i = load ptr, ptr %i.oy, align 8
  %i.up = call ptr @to_intel_uncore(ptr noundef %.val.i.i251.i.i) #13 ; 2 uses
  %i.uq = getelementptr i8, ptr %i.up, i64 176
  %i.ur = load ptr, ptr %i.uq, align 8
  call void %i.ur(ptr noundef %i.up, i32 421144, i32 noundef %i.uo, i1 noundef zeroext true) #13, !inline_history !123
  call void @intel_dmc_wl_put(ptr noundef %i.oy, i32 421144) #13
  %i.us = call i32 @intel_de_wait_for_set_ms(ptr noundef %i.oy, i32 421120, i32 noundef 131072, i32 noundef 1) #13
  %.not.i252.i.i = icmp eq i32 %i.us, 0
  br i1 %.not.i252.i.i, label %intel_write_sha_text.exit256.i.i, label %bb.ge

bb.ge:                                            ; preds = %._crit_edge393.thread.i.i
  %i.ut = load ptr, ptr %i.oy, align 8            ; 2 uses
  %.not.i.i253.i.i = icmp eq ptr %i.ut, null
  br i1 %.not.i.i253.i.i, label %intel_write_sha_text.exit256.thread.i.i, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.uu = getelementptr i8, ptr %i.ut, i64 8
  %i.uv = load ptr, ptr %i.uu, align 8
  br label %intel_write_sha_text.exit256.thread.i.i

intel_write_sha_text.exit256.thread.i.i:          ; preds = %bb.gf, %bb.ge
  %i.uw = phi ptr [ %i.uv, %bb.gf ], [ null, %bb.ge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.uw, ptr noundef @.str.93) #17
  br label %bb.hq

end_hunk_0
