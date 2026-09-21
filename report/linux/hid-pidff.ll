Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/hid-pidff?download=true
inline.NumInlined: 154
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 16
begin_hunk_0_@hid_pidff_init_with_quirks:bb.a
  %exitcond.not.i.i145.9.i.i = icmp eq i32 %i.nm, %i.ng
  br i1 %exitcond.not.i.i145.9.i.i, label %pidff_find_usage.exit.loopexit.i146.9.i.i, label %bb.cs, !llvm.loop !0

pidff_find_usage.exit.loopexit.i146.9.i.i:        ; preds = %bb.ct, %bb.cs
  %.ph.i147.9.i.i = phi i32 [ -1, %bb.ct ], [ %.0811.i.i144.9.i.i, %bb.cs ]
  %i.nn = add i32 %.ph.i147.9.i.i, 1
  br label %pidff_find_usage.exit.i148.9.i.i

pidff_find_usage.exit.i148.9.i.i:                 ; preds = %pidff_find_usage.exit.loopexit.i146.9.i.i, %pidff_find_usage.exit.i148.8.i.i
  %i.no = phi i32 [ 0, %pidff_find_usage.exit.i148.8.i.i ], [ %i.nn, %pidff_find_usage.exit.loopexit.i146.9.i.i ] ; 2 uses
  %i.np = getelementptr i8, ptr %i.h, i64 1620    ; 3 uses
  store i32 %i.no, ptr %i.np, align 4
  %.not17.i149.9.i.i = icmp ne i32 %i.no, 0
  %i.nq = zext i1 %.not17.i149.9.i.i to i32
  %spec.select.i150.9.i.i = add nuw nsw i32 %spec.select.i150.8.i.i, %i.nq
  %i.nr = load i32, ptr %i.jk, align 8            ; 2 uses
  %.not.i.i142.10.i.i = icmp eq i32 %i.nr, 0
  br i1 %.not.i.i142.10.i.i, label %pidff_find_usage.exit.i148.10.i.i, label %.lr.ph.i.i143.10.i.i

.lr.ph.i.i143.10.i.i:                             ; preds = %pidff_find_usage.exit.i148.9.i.i
  %i.ns = load ptr, ptr %i.jl, align 8
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cv, %.lr.ph.i.i143.10.i.i
  %.0811.i.i144.10.i.i = phi i32 [ 0, %.lr.ph.i.i143.10.i.i ], [ %i.nx, %bb.cv ] ; 3 uses
  %i.nt = sext i32 %.0811.i.i144.10.i.i to i64
  %i.nu = getelementptr [28 x i8], ptr %i.ns, i64 %i.nt
  %i.nv = load i32, ptr %i.nu, align 4
  %i.nw = icmp eq i32 %i.nv, 983107
  br i1 %i.nw, label %pidff_find_usage.exit.loopexit.i146.10.i.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.nx = add nuw i32 %.0811.i.i144.10.i.i, 1     ; 2 uses
  %exitcond.not.i.i145.10.i.i = icmp eq i32 %i.nx, %i.nr
  br i1 %exitcond.not.i.i145.10.i.i, label %pidff_find_usage.exit.loopexit.i146.10.i.i, label %bb.cu, !llvm.loop !0

pidff_find_usage.exit.loopexit.i146.10.i.i:       ; preds = %bb.cv, %bb.cu
  %.ph.i147.10.i.i = phi i32 [ -1, %bb.cv ], [ %.0811.i.i144.10.i.i, %bb.cu ]
  %i.ny = add i32 %.ph.i147.10.i.i, 1
  br label %pidff_find_usage.exit.i148.10.i.i

pidff_find_usage.exit.i148.10.i.i:                ; preds = %pidff_find_usage.exit.loopexit.i146.10.i.i, %pidff_find_usage.exit.i148.9.i.i
  %i.nz = phi i32 [ 0, %pidff_find_usage.exit.i148.9.i.i ], [ %i.ny, %pidff_find_usage.exit.loopexit.i146.10.i.i ] ; 2 uses
  %i.oa = getelementptr i8, ptr %i.h, i64 1624    ; 3 uses
  store i32 %i.nz, ptr %i.oa, align 8
  %.not17.i149.10.i.i = icmp ne i32 %i.nz, 0
  %i.ob = zext i1 %.not17.i149.10.i.i to i32
  %i.oc = or i32 %spec.select.i150.9.i.i, %i.ob
  %.not66.i.i = icmp eq i32 %i.oc, 0
  br i1 %.not66.i.i, label %pidff_find_special_keys.exit154.thread.i.i, label %.preheader.i156.i.i

pidff_find_special_keys.exit154.thread.i.i:       ; preds = %pidff_find_usage.exit.i148.10.i.i
  %i.od = load ptr, ptr %i.h, align 8
  %i.oe = getelementptr i8, ptr %i.od, i64 6344
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.oe, ptr noundef nonnull @.str.21) #9
  br label %pidff_reports_ok.exit.thread

.preheader.i156.i.i:                              ; preds = %pidff_find_usage.exit.i148.10.i.i
  %i.of = getelementptr i8, ptr %i.h, i64 1628
  %i.og = getelementptr i8, ptr %i.gu, i64 24     ; 3 uses
  %i.oh = getelementptr i8, ptr %i.gu, i64 16     ; 3 uses
  %i.oi = load i32, ptr %i.og, align 8            ; 2 uses
  %.not.i.i159.i.i = icmp eq i32 %i.oi, 0
  br i1 %.not.i.i159.i.i, label %pidff_find_usage.exit.i165.i.i, label %.lr.ph.i.i160.i.i

.lr.ph.i.i160.i.i:                                ; preds = %.preheader.i156.i.i
  %i.oj = load ptr, ptr %i.oh, align 8
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cx, %.lr.ph.i.i160.i.i
  %.0811.i.i161.i.i = phi i32 [ 0, %.lr.ph.i.i160.i.i ], [ %i.oo, %bb.cx ] ; 3 uses
  %i.ok = sext i32 %.0811.i.i161.i.i to i64
  %i.ol = getelementptr [28 x i8], ptr %i.oj, i64 %i.ok
  %i.om = load i32, ptr %i.ol, align 4
  %i.on = icmp eq i32 %i.om, 983180
  br i1 %i.on, label %pidff_find_usage.exit.loopexit.i163.i.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.oo = add nuw i32 %.0811.i.i161.i.i, 1        ; 2 uses
  %exitcond.not.i.i162.i.i = icmp eq i32 %i.oo, %i.oi
  br i1 %exitcond.not.i.i162.i.i, label %pidff_find_usage.exit.loopexit.i163.i.i, label %bb.cw, !llvm.loop !0

pidff_find_usage.exit.loopexit.i163.i.i:          ; preds = %bb.cx, %bb.cw
  %.ph.i164.i.i = phi i32 [ -1, %bb.cx ], [ %.0811.i.i161.i.i, %bb.cw ]
  %i.op = add i32 %.ph.i164.i.i, 1
  br label %pidff_find_usage.exit.i165.i.i

pidff_find_usage.exit.i165.i.i:                   ; preds = %pidff_find_usage.exit.loopexit.i163.i.i, %.preheader.i156.i.i
  %i.oq = phi i32 [ 0, %.preheader.i156.i.i ], [ %i.op, %pidff_find_usage.exit.loopexit.i163.i.i ] ; 2 uses
  store i32 %i.oq, ptr %i.of, align 4
  %.not17.i166.i.i = icmp ne i32 %i.oq, 0
  %i.or = zext i1 %.not17.i166.i.i to i32
  %i.os = load i32, ptr %i.og, align 8            ; 2 uses
  %.not.i.i159.1.i.i = icmp eq i32 %i.os, 0
  br i1 %.not.i.i159.1.i.i, label %pidff_find_usage.exit.i165.1.i.i, label %.lr.ph.i.i160.1.i.i

.lr.ph.i.i160.1.i.i:                              ; preds = %pidff_find_usage.exit.i165.i.i
  %i.ot = load ptr, ptr %i.oh, align 8
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cz, %.lr.ph.i.i160.1.i.i
  %.0811.i.i161.1.i.i = phi i32 [ 0, %.lr.ph.i.i160.1.i.i ], [ %i.oy, %bb.cz ] ; 3 uses
  %i.ou = sext i32 %.0811.i.i161.1.i.i to i64
  %i.ov = getelementptr [28 x i8], ptr %i.ot, i64 %i.ou
  %i.ow = load i32, ptr %i.ov, align 4
  %i.ox = icmp eq i32 %i.ow, 983181
  br i1 %i.ox, label %pidff_find_usage.exit.loopexit.i163.1.i.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.oy = add nuw i32 %.0811.i.i161.1.i.i, 1      ; 2 uses
  %exitcond.not.i.i162.1.i.i = icmp eq i32 %i.oy, %i.os
  br i1 %exitcond.not.i.i162.1.i.i, label %pidff_find_usage.exit.loopexit.i163.1.i.i, label %bb.cy, !llvm.loop !0

pidff_find_usage.exit.loopexit.i163.1.i.i:        ; preds = %bb.cz, %bb.cy
  %.ph.i164.1.i.i = phi i32 [ -1, %bb.cz ], [ %.0811.i.i161.1.i.i, %bb.cy ]
  %i.oz = add i32 %.ph.i164.1.i.i, 1
  br label %pidff_find_usage.exit.i165.1.i.i

pidff_find_usage.exit.i165.1.i.i:                 ; preds = %pidff_find_usage.exit.loopexit.i163.1.i.i, %pidff_find_usage.exit.i165.i.i
  %i.pa = phi i32 [ 0, %pidff_find_usage.exit.i165.i.i ], [ %i.oz, %pidff_find_usage.exit.loopexit.i163.1.i.i ] ; 2 uses
  %i.pb = getelementptr i8, ptr %i.h, i64 1632
  store i32 %i.pa, ptr %i.pb, align 8
  %.not17.i166.1.i.i = icmp ne i32 %i.pa, 0
  %i.pc = zext i1 %.not17.i166.1.i.i to i32
  %spec.select.i167.1.i.i = add nuw nsw i32 %i.pc, %i.or
  %i.pd = load i32, ptr %i.og, align 8            ; 2 uses
  %.not.i.i159.2.i.i = icmp eq i32 %i.pd, 0
  br i1 %.not.i.i159.2.i.i, label %pidff_find_usage.exit.i165.2.i.i, label %.lr.ph.i.i160.2.i.i

.lr.ph.i.i160.2.i.i:                              ; preds = %pidff_find_usage.exit.i165.1.i.i
  %i.pe = load ptr, ptr %i.oh, align 8
  br label %bb.da

bb.da:                                            ; preds = %bb.db, %.lr.ph.i.i160.2.i.i
  %.0811.i.i161.2.i.i = phi i32 [ 0, %.lr.ph.i.i160.2.i.i ], [ %i.pj, %bb.db ] ; 3 uses
  %i.pf = sext i32 %.0811.i.i161.2.i.i to i64
  %i.pg = getelementptr [28 x i8], ptr %i.pe, i64 %i.pf
  %i.ph = load i32, ptr %i.pg, align 4
  %i.pi = icmp eq i32 %i.ph, 983182
  br i1 %i.pi, label %pidff_find_usage.exit.loopexit.i163.2.i.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.pj = add nuw i32 %.0811.i.i161.2.i.i, 1      ; 2 uses
  %exitcond.not.i.i162.2.i.i = icmp eq i32 %i.pj, %i.pd
  br i1 %exitcond.not.i.i162.2.i.i, label %pidff_find_usage.exit.loopexit.i163.2.i.i, label %bb.da, !llvm.loop !0

pidff_find_usage.exit.loopexit.i163.2.i.i:        ; preds = %bb.db, %bb.da
  %.ph.i164.2.i.i = phi i32 [ -1, %bb.db ], [ %.0811.i.i161.2.i.i, %bb.da ]
  %i.pk = add i32 %.ph.i164.2.i.i, 1
  br label %pidff_find_usage.exit.i165.2.i.i

pidff_find_usage.exit.i165.2.i.i:                 ; preds = %pidff_find_usage.exit.loopexit.i163.2.i.i, %pidff_find_usage.exit.i165.1.i.i
  %i.pl = phi i32 [ 0, %pidff_find_usage.exit.i165.1.i.i ], [ %i.pk, %pidff_find_usage.exit.loopexit.i163.2.i.i ] ; 2 uses
  %i.pm = getelementptr i8, ptr %i.h, i64 1636
  store i32 %i.pl, ptr %i.pm, align 4
  %.not17.i166.2.i.i = icmp ne i32 %i.pl, 0
  %i.pn = zext i1 %.not17.i166.2.i.i to i32
  %spec.select.i167.2.i.i = add nuw nsw i32 %spec.select.i167.1.i.i, %i.pn
  %.not67.i.i = icmp eq i32 %spec.select.i167.2.i.i, 3
  br i1 %.not67.i.i, label %.preheader.i173.i.i, label %pidff_find_special_keys.exit171.thread.i.i

pidff_find_special_keys.exit171.thread.i.i:       ; preds = %pidff_find_usage.exit.i165.2.i.i
  %i.po = load ptr, ptr %i.h, align 8
  %i.pp = getelementptr i8, ptr %i.po, i64 6344
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.pp, ptr noundef nonnull @.str.22) #9
  br label %pidff_reports_ok.exit.thread

.preheader.i173.i.i:                              ; preds = %pidff_find_usage.exit.i165.2.i.i
  %i.pq = getelementptr i8, ptr %i.h, i64 1640
  %i.pr = getelementptr i8, ptr %i.gi, i64 24     ; 2 uses
  %i.ps = getelementptr i8, ptr %i.gi, i64 16     ; 2 uses
  %i.pt = load i32, ptr %i.pr, align 8            ; 2 uses
  %.not.i.i176.i.i = icmp eq i32 %i.pt, 0
  br i1 %.not.i.i176.i.i, label %pidff_find_usage.exit.i182.i.i, label %.lr.ph.i.i177.i.i

.lr.ph.i.i177.i.i:                                ; preds = %.preheader.i173.i.i
  %i.pu = load ptr, ptr %i.ps, align 8
  br label %bb.dc

bb.dc:                                            ; preds = %bb.dd, %.lr.ph.i.i177.i.i
  %.0811.i.i178.i.i = phi i32 [ 0, %.lr.ph.i.i177.i.i ], [ %i.pz, %bb.dd ] ; 3 uses
  %i.pv = sext i32 %.0811.i.i178.i.i to i64
  %i.pw = getelementptr [28 x i8], ptr %i.pu, i64 %i.pv
  %i.px = load i32, ptr %i.pw, align 4
  %i.py = icmp eq i32 %i.px, 983161
  br i1 %i.py, label %pidff_find_usage.exit.loopexit.i180.i.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.pz = add nuw i32 %.0811.i.i178.i.i, 1        ; 2 uses
  %exitcond.not.i.i179.i.i = icmp eq i32 %i.pz, %i.pt
  br i1 %exitcond.not.i.i179.i.i, label %pidff_find_usage.exit.loopexit.i180.i.i, label %bb.dc, !llvm.loop !0

pidff_find_usage.exit.loopexit.i180.i.i:          ; preds = %bb.dd, %bb.dc
  %.ph.i181.i.i = phi i32 [ -1, %bb.dd ], [ %.0811.i.i178.i.i, %bb.dc ]
  %i.qa = add i32 %.ph.i181.i.i, 1
  br label %pidff_find_usage.exit.i182.i.i

pidff_find_usage.exit.i182.i.i:                   ; preds = %pidff_find_usage.exit.loopexit.i180.i.i, %.preheader.i173.i.i
  %i.qb = phi i32 [ 0, %.preheader.i173.i.i ], [ %i.qa, %pidff_find_usage.exit.loopexit.i180.i.i ] ; 2 uses
  store i32 %i.qb, ptr %i.pq, align 8
  %.not17.i183.i.i = icmp ne i32 %i.qb, 0
  %i.qc = load i32, ptr %i.pr, align 8            ; 2 uses
  %.not.i.i176.1.i.i = icmp eq i32 %i.qc, 0
  br i1 %.not.i.i176.1.i.i, label %pidff_find_special_keys.exit188.thread.sink.split.i.i, label %.lr.ph.i.i177.1.i.i

.lr.ph.i.i177.1.i.i:                              ; preds = %pidff_find_usage.exit.i182.i.i
  %i.qd = load ptr, ptr %i.ps, align 8
  br label %bb.de

bb.de:                                            ; preds = %bb.df, %.lr.ph.i.i177.1.i.i
  %.0811.i.i178.1.i.i = phi i32 [ 0, %.lr.ph.i.i177.1.i.i ], [ %i.qi, %bb.df ] ; 2 uses
  %i.qe = sext i32 %.0811.i.i178.1.i.i to i64
  %i.qf = getelementptr [28 x i8], ptr %i.qd, i64 %i.qe
  %i.qg = load i32, ptr %i.qf, align 4
  %i.qh = icmp eq i32 %i.qg, 983163
  %i.qi = add i32 %.0811.i.i178.1.i.i, 1          ; 4 uses
  br i1 %i.qh, label %pidff_find_usage.exit.i182.1.i.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %exitcond.not.i.i179.1.i.i = icmp eq i32 %i.qi, %i.qc
  br i1 %exitcond.not.i.i179.1.i.i, label %pidff_find_special_keys.exit188.thread.sink.split.i.i, label %bb.de, !llvm.loop !0

pidff_find_usage.exit.i182.1.i.i:                 ; preds = %bb.de
  %i.qj = getelementptr i8, ptr %i.h, i64 1644
  store i32 %i.qi, ptr %i.qj, align 4
  %.not17.i183.1.i.i = icmp ne i32 %i.qi, 0
  %.not68.i.i = and i1 %.not17.i183.i.i, %.not17.i183.1.i.i
  br i1 %.not68.i.i, label %bb.dg, label %pidff_find_special_keys.exit188.thread.i.i

pidff_find_special_keys.exit188.thread.sink.split.i.i: ; preds = %bb.df, %pidff_find_usage.exit.i182.i.i
  %i.qk = getelementptr i8, ptr %i.h, i64 1644
  store i32 0, ptr %i.qk, align 4
  br label %pidff_find_special_keys.exit188.thread.i.i

pidff_find_special_keys.exit188.thread.i.i:       ; preds = %pidff_find_special_keys.exit188.thread.sink.split.i.i, %pidff_find_usage.exit.i182.1.i.i
  %i.ql = load ptr, ptr %i.h, align 8
  %i.qm = getelementptr i8, ptr %i.ql, i64 6344
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.qm, ptr noundef nonnull @.str.23) #9
  br label %pidff_reports_ok.exit.thread

bb.dg:                                            ; preds = %pidff_find_usage.exit.i182.1.i.i
  %i.qn = load ptr, ptr %i.dm, align 8            ; 4 uses
  %.not69.i.i = icmp eq ptr %i.qn, null
  br i1 %.not69.i.i, label %bb.dh, label %.preheader.i190.i.i

bb.dh:                                            ; preds = %bb.dg
  %i.qo = load ptr, ptr %i.h, align 8
  %i.qp = getelementptr i8, ptr %i.qo, i64 6344
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.qp, ptr noundef nonnull @.str.24) #9
  br label %pidff_find_special_fields.exit.i

.preheader.i190.i.i:                              ; preds = %bb.dg
  %i.qq = getelementptr i8, ptr %i.h, i64 1648
  %i.qr = getelementptr i8, ptr %i.qn, i64 24     ; 9 uses
  %i.qs = getelementptr i8, ptr %i.qn, i64 16     ; 9 uses
  %i.qt = load i32, ptr %i.qr, align 8            ; 2 uses
  %.not.i.i193.i.i = icmp eq i32 %i.qt, 0
  br i1 %.not.i.i193.i.i, label %pidff_find_usage.exit.i199.i.i, label %.lr.ph.i.i194.i.i

.lr.ph.i.i194.i.i:                                ; preds = %.preheader.i190.i.i
  %i.qu = load ptr, ptr %i.qs, align 8
  br label %bb.di

bb.di:                                            ; preds = %bb.dj, %.lr.ph.i.i194.i.i
  %.0811.i.i195.i.i = phi i32 [ 0, %.lr.ph.i.i194.i.i ], [ %i.qz, %bb.dj ] ; 3 uses
  %i.qv = sext i32 %.0811.i.i195.i.i to i64
  %i.qw = getelementptr [28 x i8], ptr %i.qu, i64 %i.qv
  %i.qx = load i32, ptr %i.qw, align 4
  %i.qy = icmp eq i32 %i.qx, 65584
  br i1 %i.qy, label %pidff_find_usage.exit.loopexit.i197.i.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.qz = add nuw i32 %.0811.i.i195.i.i, 1        ; 2 uses
  %exitcond.not.i.i196.i.i = icmp eq i32 %i.qz, %i.qt
  br i1 %exitcond.not.i.i196.i.i, label %pidff_find_usage.exit.loopexit.i197.i.i, label %bb.di, !llvm.loop !0

pidff_find_usage.exit.loopexit.i197.i.i:          ; preds = %bb.dj, %bb.di
  %.ph.i198.i.i = phi i32 [ -1, %bb.dj ], [ %.0811.i.i195.i.i, %bb.di ]
  %i.ra = add i32 %.ph.i198.i.i, 1
  br label %pidff_find_usage.exit.i199.i.i

pidff_find_usage.exit.i199.i.i:                   ; preds = %pidff_find_usage.exit.loopexit.i197.i.i, %.preheader.i190.i.i
  %i.rb = phi i32 [ 0, %.preheader.i190.i.i ], [ %i.ra, %pidff_find_usage.exit.loopexit.i197.i.i ] ; 2 uses
  store i32 %i.rb, ptr %i.qq, align 8
  %.not17.i200.i.i = icmp ne i32 %i.rb, 0
  %i.rc = zext i1 %.not17.i200.i.i to i32
  %i.rd = load i32, ptr %i.qr, align 8            ; 2 uses
  %.not.i.i193.1.i.i = icmp eq i32 %i.rd, 0
  br i1 %.not.i.i193.1.i.i, label %pidff_find_usage.exit.i199.1.i.i, label %.lr.ph.i.i194.1.i.i

.lr.ph.i.i194.1.i.i:                              ; preds = %pidff_find_usage.exit.i199.i.i
  %i.re = load ptr, ptr %i.qs, align 8
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dl, %.lr.ph.i.i194.1.i.i
  %.0811.i.i195.1.i.i = phi i32 [ 0, %.lr.ph.i.i194.1.i.i ], [ %i.rj, %bb.dl ] ; 3 uses
  %i.rf = sext i32 %.0811.i.i195.1.i.i to i64
  %i.rg = getelementptr [28 x i8], ptr %i.re, i64 %i.rf
  %i.rh = load i32, ptr %i.rg, align 4
  %i.ri = icmp eq i32 %i.rh, 65585
  br i1 %i.ri, label %pidff_find_usage.exit.loopexit.i197.1.i.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.rj = add nuw i32 %.0811.i.i195.1.i.i, 1      ; 2 uses
  %exitcond.not.i.i196.1.i.i = icmp eq i32 %i.rj, %i.rd
  br i1 %exitcond.not.i.i196.1.i.i, label %pidff_find_usage.exit.loopexit.i197.1.i.i, label %bb.dk, !llvm.loop !0

pidff_find_usage.exit.loopexit.i197.1.i.i:        ; preds = %bb.dl, %bb.dk
  %.ph.i198.1.i.i = phi i32 [ -1, %bb.dl ], [ %.0811.i.i195.1.i.i, %bb.dk ]
  %i.rk = add i32 %.ph.i198.1.i.i, 1
  br label %pidff_find_usage.exit.i199.1.i.i

pidff_find_usage.exit.i199.1.i.i:                 ; preds = %pidff_find_usage.exit.loopexit.i197.1.i.i, %pidff_find_usage.exit.i199.i.i
  %i.rl = phi i32 [ 0, %pidff_find_usage.exit.i199.i.i ], [ %i.rk, %pidff_find_usage.exit.loopexit.i197.1.i.i ] ; 2 uses
  %i.rm = getelementptr i8, ptr %i.h, i64 1652
  store i32 %i.rl, ptr %i.rm, align 4
  %.not17.i200.1.i.i = icmp ne i32 %i.rl, 0
  %i.rn = zext i1 %.not17.i200.1.i.i to i32
  %spec.select.i201.1.i.i = add nuw nsw i32 %i.rn, %i.rc
  %i.ro = load i32, ptr %i.qr, align 8            ; 2 uses
  %.not.i.i193.2.i.i = icmp eq i32 %i.ro, 0
  br i1 %.not.i.i193.2.i.i, label %pidff_find_usage.exit.i199.2.i.i, label %.lr.ph.i.i194.2.i.i

.lr.ph.i.i194.2.i.i:                              ; preds = %pidff_find_usage.exit.i199.1.i.i
  %i.rp = load ptr, ptr %i.qs, align 8
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dn, %.lr.ph.i.i194.2.i.i
  %.0811.i.i195.2.i.i = phi i32 [ 0, %.lr.ph.i.i194.2.i.i ], [ %i.ru, %bb.dn ] ; 3 uses
  %i.rq = sext i32 %.0811.i.i195.2.i.i to i64
  %i.rr = getelementptr [28 x i8], ptr %i.rp, i64 %i.rq
  %i.rs = load i32, ptr %i.rr, align 4
  %i.rt = icmp eq i32 %i.rs, 65586
  br i1 %i.rt, label %pidff_find_usage.exit.loopexit.i197.2.i.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ru = add nuw i32 %.0811.i.i195.2.i.i, 1      ; 2 uses
  %exitcond.not.i.i196.2.i.i = icmp eq i32 %i.ru, %i.ro
  br i1 %exitcond.not.i.i196.2.i.i, label %pidff_find_usage.exit.loopexit.i197.2.i.i, label %bb.dm, !llvm.loop !0

pidff_find_usage.exit.loopexit.i197.2.i.i:        ; preds = %bb.dn, %bb.dm
  %.ph.i198.2.i.i = phi i32 [ -1, %bb.dn ], [ %.0811.i.i195.2.i.i, %bb.dm ]
  %i.rv = add i32 %.ph.i198.2.i.i, 1
  br label %pidff_find_usage.exit.i199.2.i.i

pidff_find_usage.exit.i199.2.i.i:                 ; preds = %pidff_find_usage.exit.loopexit.i197.2.i.i, %pidff_find_usage.exit.i199.1.i.i
  %i.rw = phi i32 [ 0, %pidff_find_usage.exit.i199.1.i.i ], [ %i.rv, %pidff_find_usage.exit.loopexit.i197.2.i.i ] ; 2 uses
  %i.rx = getelementptr i8, ptr %i.h, i64 1656
  store i32 %i.rw, ptr %i.rx, align 8
  %.not17.i200.2.i.i = icmp ne i32 %i.rw, 0
  %i.ry = zext i1 %.not17.i200.2.i.i to i32
  %spec.select.i201.2.i.i = add nuw nsw i32 %spec.select.i201.1.i.i, %i.ry
  %i.rz = load i32, ptr %i.qr, align 8            ; 2 uses
  %.not.i.i193.3.i.i = icmp eq i32 %i.rz, 0
  br i1 %.not.i.i193.3.i.i, label %pidff_find_usage.exit.i199.3.i.i, label %.lr.ph.i.i194.3.i.i

.lr.ph.i.i194.3.i.i:                              ; preds = %pidff_find_usage.exit.i199.2.i.i
  %i.sa = load ptr, ptr %i.qs, align 8
  br label %bb.do

bb.do:                                            ; preds = %bb.dp, %.lr.ph.i.i194.3.i.i
  %.0811.i.i195.3.i.i = phi i32 [ 0, %.lr.ph.i.i194.3.i.i ], [ %i.sf, %bb.dp ] ; 3 uses
  %i.sb = sext i32 %.0811.i.i195.3.i.i to i64
  %i.sc = getelementptr [28 x i8], ptr %i.sa, i64 %i.sb
  %i.sd = load i32, ptr %i.sc, align 4
  %i.se = icmp eq i32 %i.sd, 65587
  br i1 %i.se, label %pidff_find_usage.exit.loopexit.i197.3.i.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.sf = add nuw i32 %.0811.i.i195.3.i.i, 1      ; 2 uses
  %exitcond.not.i.i196.3.i.i = icmp eq i32 %i.sf, %i.rz
  br i1 %exitcond.not.i.i196.3.i.i, label %pidff_find_usage.exit.loopexit.i197.3.i.i, label %bb.do, !llvm.loop !0

pidff_find_usage.exit.loopexit.i197.3.i.i:        ; preds = %bb.dp, %bb.do
  %.ph.i198.3.i.i = phi i32 [ -1, %bb.dp ], [ %.0811.i.i195.3.i.i, %bb.do ]
  %i.sg = add i32 %.ph.i198.3.i.i, 1
  br label %pidff_find_usage.exit.i199.3.i.i

pidff_find_usage.exit.i199.3.i.i:                 ; preds = %pidff_find_usage.exit.loopexit.i197.3.i.i, %pidff_find_usage.exit.i199.2.i.i
  %i.sh = phi i32 [ 0, %pidff_find_usage.exit.i199.2.i.i ], [ %i.sg, %pidff_find_usage.exit.loopexit.i197.3.i.i ] ; 2 uses
  %i.si = getelementptr i8, ptr %i.h, i64 1660
  store i32 %i.sh, ptr %i.si, align 4
  %.not17.i200.3.i.i = icmp ne i32 %i.sh, 0
  %i.sj = zext i1 %.not17.i200.3.i.i to i32
  %spec.select.i201.3.i.i = add nuw nsw i32 %spec.select.i201.2.i.i, %i.sj
  %i.sk = load i32, ptr %i.qr, align 8            ; 2 uses
  %.not.i.i193.4.i.i = icmp eq i32 %i.sk, 0
  br i1 %.not.i.i193.4.i.i, label %pidff_find_usage.exit.i199.4.i.i, label %.lr.ph.i.i194.4.i.i

.lr.ph.i.i194.4.i.i:                              ; preds = %pidff_find_usage.exit.i199.3.i.i
  %i.sl = load ptr, ptr %i.qs, align 8
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dr, %.lr.ph.i.i194.4.i.i
  %.0811.i.i195.4.i.i = phi i32 [ 0, %.lr.ph.i.i194.4.i.i ], [ %i.sq, %bb.dr ] ; 3 uses
  %i.sm = sext i32 %.0811.i.i195.4.i.i to i64
  %i.sn = getelementptr [28 x i8], ptr %i.sl, i64 %i.sm
  %i.so = load i32, ptr %i.sn, align 4
  %i.sp = icmp eq i32 %i.so, 65588
  br i1 %i.sp, label %pidff_find_usage.exit.loopexit.i197.4.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.sq = add nuw i32 %.0811.i.i195.4.i.i, 1      ; 2 uses
  %exitcond.not.i.i196.4.i.i = icmp eq i32 %i.sq, %i.sk
  br i1 %exitcond.not.i.i196.4.i.i, label %pidff_find_usage.exit.loopexit.i197.4.i.i, label %bb.dq, !llvm.loop !0

pidff_find_usage.exit.loopexit.i197.4.i.i:        ; preds = %bb.dr, %bb.dq
  %.ph.i198.4.i.i = phi i32 [ -1, %bb.dr ], [ %.0811.i.i195.4.i.i, %bb.dq ]
  %i.sr = add i32 %.ph.i198.4.i.i, 1
  br label %pidff_find_usage.exit.i199.4.i.i

pidff_find_usage.exit.i199.4.i.i:                 ; preds = %pidff_find_usage.exit.loopexit.i197.4.i.i, %pidff_find_usage.exit.i199.3.i.i
  %i.ss = phi i32 [ 0, %pidff_find_usage.exit.i199.3.i.i ], [ %i.sr, %pidff_find_usage.exit.loopexit.i197.4.i.i ] ; 2 uses
  %i.st = getelementptr i8, ptr %i.h, i64 1664
  store i32 %i.ss, ptr %i.st, align 8
  %.not17.i200.4.i.i = icmp ne i32 %i.ss, 0
  %i.su = zext i1 %.not17.i200.4.i.i to i32
  %spec.select.i201.4.i.i = add nuw nsw i32 %spec.select.i201.3.i.i, %i.su
  %i.sv = load i32, ptr %i.qr, align 8            ; 2 uses
  %.not.i.i193.5.i.i = icmp eq i32 %i.sv, 0
  br i1 %.not.i.i193.5.i.i, label %pidff_find_usage.exit.i199.5.i.i, label %.lr.ph.i.i194.5.i.i

.lr.ph.i.i194.5.i.i:                              ; preds = %pidff_find_usage.exit.i199.4.i.i
  %i.sw = load ptr, ptr %i.qs, align 8
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dt, %.lr.ph.i.i194.5.i.i
  %.0811.i.i195.5.i.i = phi i32 [ 0, %.lr.ph.i.i194.5.i.i ], [ %i.tb, %bb.dt ] ; 3 uses
end_hunk_0
