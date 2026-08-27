Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_hdcp?download=true
inline.NumInlined: 434
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@intel_hdcp1_enable:bb.a

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
  call void %i.qx(ptr noundef %i.qv, i32 421120, i32 noundef %i.qu, i1 noundef zeroext true) #13, !inline_history !127
  call void @intel_dmc_wl_put(ptr noundef %i.oy, i32 421120) #13
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ga, %.lr.ph396.preheader.i.i
  %indvars.iv416.i.i = phi i64 [ 0, %.lr.ph396.preheader.i.i ], [ %indvars.iv.next417.i.i, %bb.ga ] ; 2 uses
  %.0197395.i.i = phi i32 [ 0, %.lr.ph396.preheader.i.i ], [ %.3.i.i, %bb.ga ] ; 2 uses
  %.0200394.i.i = phi i32 [ 0, %.lr.ph396.preheader.i.i ], [ %.1201.i.i, %bb.ga ] ; 8 uses
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
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph.i79.i, !llvm.loop !128

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
  call void %i.sh(ptr noundef %i.sf, i32 421144, i32 noundef %.lcssa241, i1 noundef zeroext true) #13, !inline_history !129
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
  call void %i.sr(ptr noundef %i.sp, i32 421120, i32 noundef %i.qu, i1 noundef zeroext true) #13, !inline_history !127
  call void @intel_dmc_wl_put(ptr noundef %i.oy, i32 421120) #13
  br label %.lr.ph389.preheader.i.i

.lr.ph389.preheader.i.i:                          ; preds = %bb.fw, %intel_write_sha_text.exit.i.i
  %i.ss = add nuw nsw i32 %.0200394.i.i, 1        ; 3 uses
  %wide.trip.count.i.i = zext i32 %i.ss to i64    ; 2 uses
  %xtraiter255 = and i64 %wide.trip.count.i.i, 1
  %i.st = icmp eq i32 %.0200394.i.i, 0
  br i1 %i.st, label %.lr.ph389.i.i.epil.preheader, label %.lr.ph389.preheader.i.i.new

.lr.ph389.preheader.i.i.new:                      ; preds = %.lr.ph389.preheader.i.i
  %unroll_iter259 = and i64 %wide.trip.count.i.i, 4294967294
  br label %.lr.ph389.i.i

.lr.ph389.i.i:                                    ; preds = %.lr.ph389.i.i, %.lr.ph389.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph389.preheader.i.i.new ], [ %indvars.iv.next.i.i.1, %.lr.ph389.i.i ] ; 3 uses
  %.2199387.i.i = phi i32 [ 0, %.lr.ph389.preheader.i.i.new ], [ %i.to, %.lr.ph389.i.i ]
  %niter260 = phi i64 [ 0, %.lr.ph389.preheader.i.i.new ], [ %niter260.next.1, %.lr.ph389.i.i ]
  %i.su = trunc nuw i64 %indvars.iv.i.i to i32    ; 2 uses
  %i.sv = add nsw i32 %i.ra, %i.su
  %i.sw = zext i32 %i.sv to i64
  %i.sx = getelementptr i8, ptr %i.qz, i64 %i.sw
  %i.sy = load i8, ptr %i.sx, align 1
  %i.sz = zext i8 %i.sy to i32
  %i.ta = shl nsw i32 %i.su, 3
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
  %i.tl = shl nsw i32 %i.tf, 3
  %i.tm = sub i32 24, %i.tl
  %i.tn = shl nuw i32 %i.tk, %i.tm
  %i.to = or i32 %i.tn, %i.td                     ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter260.next.1 = add i64 %niter260, 2         ; 2 uses
  %niter260.ncmp.1 = icmp eq i64 %niter260.next.1, %unroll_iter259
  br i1 %niter260.ncmp.1, label %._crit_edge390.i.i.unr-lcssa, label %.lr.ph389.i.i, !llvm.loop !130

._crit_edge390.i.i.unr-lcssa:                     ; preds = %.lr.ph389.i.i
  %lcmp.mod256.not = icmp eq i64 %xtraiter255, 0
  br i1 %lcmp.mod256.not, label %._crit_edge390.i.i, label %.lr.ph389.i.i.epil.preheader

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
  %i.tv = shl i32 %i.tp, 3
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
  call void %i.uc(ptr noundef %i.ua, i32 421144, i32 noundef %.lcssa242, i1 noundef zeroext true) #13, !inline_history !129
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
  br i1 %exitcond420.not.i.i, label %._crit_edge397.i.i, label %.lr.ph.preheader.i.i, !llvm.loop !131

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
  call void %i.um(ptr noundef %i.uk, i32 421120, i32 noundef %i.uj, i1 noundef zeroext true) #13, !inline_history !127
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
  call void %i.uv(ptr noundef %i.ut, i32 421144, i32 noundef %i.us, i1 noundef zeroext true) #13, !inline_history !129
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
  call void %i.ve(ptr noundef %i.vc, i32 421120, i32 noundef %i.vb, i1 noundef zeroext true) #13, !inline_history !127
  call void @intel_dmc_wl_put(ptr noundef %i.oy, i32 421120) #13
  call void @intel_dmc_wl_get(ptr noundef %i.oy, i32 421144) #13
  %.val.i.i258.i.i = load ptr, ptr %i.oy, align 8
  %i.vf = call ptr @to_intel_uncore(ptr noundef %.val.i.i258.i.i) #13 ; 2 uses
  %i.vg = getelementptr i8, ptr %i.vf, i64 176
  %i.vh = load ptr, ptr %i.vg, align 8
  call void %i.vh(ptr noundef %i.vf, i32 421144, i32 noundef 0, i1 noundef zeroext true) #13, !inline_history !129
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
  call void %i.vp(ptr noundef %i.vn, i32 421120, i32 noundef %i.uj, i1 noundef zeroext true) #13, !inline_history !127
  call void @intel_dmc_wl_put(ptr noundef %i.oy, i32 421120) #13
  call void @intel_dmc_wl_get(ptr noundef %i.oy, i32 421144) #13
  %.val.i.i265.i.i = load ptr, ptr %i.oy, align 8
  %i.vq = call ptr @to_intel_uncore(ptr noundef %.val.i.i265.i.i) #13 ; 2 uses
  %i.vr = getelementptr i8, ptr %i.vq, i64 176
  %i.vs = load ptr, ptr %i.vr, align 8
  call void %i.vs(ptr noundef %i.vq, i32 421144, i32 noundef 0, i1 noundef zeroext true) #13, !inline_history !129
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
  call void %i.wb(ptr noundef %i.vz, i32 421120, i32 noundef %i.vy, i1 noundef zeroext true) #13, !inline_history !127
  call void @intel_dmc_wl_put(ptr noundef %i.oy, i32 421120) #13
end_hunk_0
