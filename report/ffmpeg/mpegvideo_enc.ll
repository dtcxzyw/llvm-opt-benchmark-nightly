Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpegvideo_enc?download=true
inline.NumInlined: 128
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 126
begin_hunk_0_@ff_mpv_encode_picture:bb.a
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !54
  %i.mt = sext i32 %i.ms to i64                   ; 2 uses
  br label %.preheader.2.i.i.i

.preheader.2.i.i.i:                               ; preds = %._crit_edge.2.i.i.i, %.preheader.lr.ph.2.i.i.i
  %i.mu = phi i32 [ %i.mn, %.preheader.lr.ph.2.i.i.i ], [ %i.oh, %._crit_edge.2.i.i.i ]
  %i.mv = phi i32 [ %.pre112.i.i.i, %.preheader.lr.ph.2.i.i.i ], [ %i.oi, %._crit_edge.2.i.i.i ] ; 2 uses
  %indvars.iv101.2.i.i.i = phi i64 [ 0, %.preheader.lr.ph.2.i.i.i ], [ %indvars.iv.next102.2.i.i.i, %._crit_edge.2.i.i.i ] ; 2 uses
  %.192.2.i.i.i = phi i64 [ %.2.lcssa.1.i.i.i, %.preheader.lr.ph.2.i.i.i ], [ %.2.lcssa.2.i.i.i, %._crit_edge.2.i.i.i ] ; 2 uses
  %.17691.2.i.i.i = phi i32 [ %.277.lcssa.1.i.i.i, %.preheader.lr.ph.2.i.i.i ], [ %.277.lcssa.2.i.i.i, %._crit_edge.2.i.i.i ] ; 2 uses
  %i.mw = icmp sgt i32 %i.mv, 0
  br i1 %i.mw, label %.lr.ph.2.i.i.i, label %._crit_edge.2.i.i.i

.lr.ph.2.i.i.i:                                   ; preds = %.preheader.2.i.i.i
  %i.mx = mul nsw i64 %indvars.iv101.2.i.i.i, %i.mt
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bo, %.lr.ph.2.i.i.i
  %indvars.iv.2.i.i.i = phi i64 [ 0, %.lr.ph.2.i.i.i ], [ %indvars.iv.next.2.i.i.i, %bb.bo ] ; 2 uses
  %.288.2.i.i.i = phi i64 [ %.192.2.i.i.i, %.lr.ph.2.i.i.i ], [ %.3.2.i.i.i, %bb.bo ] ; 6 uses
  %.27787.2.i.i.i = phi i32 [ %.17691.2.i.i.i, %.lr.ph.2.i.i.i ], [ %.378.2.i.i.i, %bb.bo ] ; 6 uses
  %i.my = load i32, ptr %i.kf, align 4, !tbaa !192
  %.not86.2.i.i.i = icmp eq i32 %i.my, 0
  %i.mz = select i1 %.not86.2.i.i.i, i64 16, i64 0
  %i.na = load ptr, ptr %i.js, align 8, !tbaa !191
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !91
  %i.nd = add nsw i64 %indvars.iv.2.i.i.i, %i.mx
  %i.ne = shl nsw i64 %i.nd, 3                    ; 2 uses
  %i.nf = getelementptr inbounds i8, ptr %i.nc, i64 %i.ne
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 %i.mz
  %i.nh = load ptr, ptr %i.kc, align 8, !tbaa !191
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 16
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !91
  %i.nk = getelementptr inbounds i8, ptr %i.nj, i64 %i.ne
  %i.nl = load ptr, ptr %i.kg, align 16, !tbaa !158
  %i.nm = tail call i32 %i.nl(ptr noundef nonnull %i.f, ptr noundef %i.ng, ptr noundef %i.nk, i64 noundef %i.mt, i32 noundef 8) #14, !inline_history !354 ; 5 uses
  %i.nn = load i32, ptr %i.kh, align 8, !tbaa !396
  %i.no = tail call i32 @llvm.abs.i32(i32 %i.nn, i1 true)
  switch i32 %i.no, label %bb.bo [
    i32 0, label %bb.bn
    i32 1, label %bb.bm
    i32 2, label %bb.bl
    i32 3, label %bb.bk
    i32 4, label %bb.bj
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.np = sext i32 %i.nm to i64                   ; 2 uses
  %i.nq = mul nsw i64 %i.np, %i.np                ; 2 uses
  %i.nr = mul nuw nsw i64 %i.nq, %i.nq
  %i.ns = add nsw i64 %i.nr, %.288.2.i.i.i
  br label %bb.bo

bb.bk:                                            ; preds = %bb.bi
  %i.nt = sext i32 %i.nm to i64                   ; 3 uses
  %i.nu = mul nsw i64 %i.nt, %i.nt
  %i.nv = mul nsw i64 %i.nu, %i.nt
  %i.nw = tail call i64 @llvm.abs.i64(i64 %i.nv, i1 true)
  %i.nx = add nsw i64 %i.nw, %.288.2.i.i.i
  br label %bb.bo

bb.bl:                                            ; preds = %bb.bi
  %i.ny = sext i32 %i.nm to i64                   ; 2 uses
  %i.nz = mul nsw i64 %i.ny, %i.ny
  %i.oa = add nsw i64 %i.nz, %.288.2.i.i.i
  br label %bb.bo

bb.bm:                                            ; preds = %bb.bi
  %i.ob = tail call i32 @llvm.abs.i32(i32 %i.nm, i1 true)
  %i.oc = add nuw nsw i32 %i.ob, %.27787.2.i.i.i
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bi
  %i.od = tail call i32 @llvm.smax.i32(i32 %.27787.2.i.i.i, i32 %i.nm)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi
  %.378.2.i.i.i = phi i32 [ %.27787.2.i.i.i, %bb.bi ], [ %i.od, %bb.bn ], [ %i.oc, %bb.bm ], [ %.27787.2.i.i.i, %bb.bl ], [ %.27787.2.i.i.i, %bb.bk ], [ %.27787.2.i.i.i, %bb.bj ] ; 2 uses
  %.3.2.i.i.i = phi i64 [ %.288.2.i.i.i, %bb.bi ], [ %.288.2.i.i.i, %bb.bn ], [ %.288.2.i.i.i, %bb.bm ], [ %i.oa, %bb.bl ], [ %i.nx, %bb.bk ], [ %i.ns, %bb.bj ] ; 2 uses
  %indvars.iv.next.2.i.i.i = add nuw nsw i64 %indvars.iv.2.i.i.i, 1 ; 2 uses
  %i.oe = load i32, ptr %i.ke, align 4, !tbaa !197 ; 2 uses
  %i.of = sext i32 %i.oe to i64
  %i.og = icmp slt i64 %indvars.iv.next.2.i.i.i, %i.of
  br i1 %i.og, label %bb.bi, label %._crit_edge.loopexit.2.i.i.i, !llvm.loop !355

._crit_edge.loopexit.2.i.i.i:                     ; preds = %bb.bo
  %.pre113.i.i.i = load i32, ptr %i.kd, align 8, !tbaa !168
  br label %._crit_edge.2.i.i.i

._crit_edge.2.i.i.i:                              ; preds = %._crit_edge.loopexit.2.i.i.i, %.preheader.2.i.i.i
  %i.oh = phi i32 [ %i.mu, %.preheader.2.i.i.i ], [ %.pre113.i.i.i, %._crit_edge.loopexit.2.i.i.i ] ; 3 uses
  %i.oi = phi i32 [ %i.mv, %.preheader.2.i.i.i ], [ %i.oe, %._crit_edge.loopexit.2.i.i.i ]
  %.277.lcssa.2.i.i.i = phi i32 [ %.17691.2.i.i.i, %.preheader.2.i.i.i ], [ %.378.2.i.i.i, %._crit_edge.loopexit.2.i.i.i ] ; 2 uses
  %.2.lcssa.2.i.i.i = phi i64 [ %.192.2.i.i.i, %.preheader.2.i.i.i ], [ %.3.2.i.i.i, %._crit_edge.loopexit.2.i.i.i ] ; 2 uses
  %indvars.iv.next102.2.i.i.i = add nuw nsw i64 %indvars.iv101.2.i.i.i, 1 ; 2 uses
  %i.oj = sext i32 %i.oh to i64
  %i.ok = icmp slt i64 %indvars.iv.next102.2.i.i.i, %i.oj
  br i1 %i.ok, label %.preheader.2.i.i.i, label %._crit_edge94.2.i.i.i, !llvm.loop !356

._crit_edge94.2.i.i.i:                            ; preds = %._crit_edge.2.i.i.i, %._crit_edge94.1.i.i.i, %._crit_edge94.i.i.i
  %i.ol = phi i32 [ %i.mn, %._crit_edge94.1.i.i.i ], [ %i.ku, %._crit_edge94.i.i.i ], [ %i.oh, %._crit_edge.2.i.i.i ]
  %.176.lcssa.2.i.i.i = phi i32 [ %.277.lcssa.1.i.i.i, %._crit_edge94.1.i.i.i ], [ %.176.lcssa.i.i.i, %._crit_edge94.i.i.i ], [ %.277.lcssa.2.i.i.i, %._crit_edge.2.i.i.i ] ; 2 uses
  %.1.lcssa.2.i.i.i = phi i64 [ %.2.lcssa.1.i.i.i, %._crit_edge94.1.i.i.i ], [ %.1.lcssa.i.i.i, %._crit_edge94.i.i.i ], [ %.2.lcssa.2.i.i.i, %._crit_edge.2.i.i.i ]
  %.not.i.i.i = icmp eq i32 %.176.lcssa.2.i.i.i, 0
  %i.om = zext nneg i32 %.176.lcssa.2.i.i.i to i64
  %spec.select.i.i.i = select i1 %.not.i.i.i, i64 %.1.lcssa.2.i.i.i, i64 %i.om ; 2 uses
  %i.on = load i32, ptr %i.kh, align 8, !tbaa !396 ; 2 uses
  %i.oo = icmp slt i32 %i.on, 0
  br i1 %i.oo, label %bb.bw, label %bb.bx

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.bv
  %.pre107.i.i.i = load i32, ptr %i.kd, align 8, !tbaa !168
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %.preheader.i.i.i
  %i.op = phi i32 [ %i.kp, %.preheader.i.i.i ], [ %.pre107.i.i.i, %._crit_edge.loopexit.i.i.i ] ; 3 uses
  %i.oq = phi i32 [ %i.kq, %.preheader.i.i.i ], [ %i.py, %._crit_edge.loopexit.i.i.i ]
  %.277.lcssa.i.i.i = phi i32 [ %.17691.i.i.i, %.preheader.i.i.i ], [ %.378.i.i.i, %._crit_edge.loopexit.i.i.i ] ; 2 uses
  %.2.lcssa.i.i.i = phi i64 [ %.192.i.i.i, %.preheader.i.i.i ], [ %.3.i.i.i, %._crit_edge.loopexit.i.i.i ] ; 2 uses
  %indvars.iv.next102.i.i.i = add nuw nsw i64 %indvars.iv101.i.i.i, 1 ; 2 uses
  %i.or = shl i32 %i.op, 1
  %i.os = sext i32 %i.or to i64
  %i.ot = icmp slt i64 %indvars.iv.next102.i.i.i, %i.os
  br i1 %i.ot, label %.preheader.i.i.i, label %._crit_edge94.loopexit.i.i.i, !llvm.loop !356

bb.bp:                                            ; preds = %bb.bv, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.bv ] ; 2 uses
  %.288.i.i.i = phi i64 [ %.192.i.i.i, %.lr.ph.i.i.i ], [ %.3.i.i.i, %bb.bv ] ; 6 uses
  %.27787.i.i.i = phi i32 [ %.17691.i.i.i, %.lr.ph.i.i.i ], [ %.378.i.i.i, %bb.bv ] ; 6 uses
  %i.ou = load i32, ptr %i.kf, align 4, !tbaa !192
  %.not86.i.i.i = icmp eq i32 %i.ou, 0
  %i.ov = select i1 %.not86.i.i.i, i64 16, i64 0
  %i.ow = load ptr, ptr %i.js, align 8, !tbaa !191
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !91
  %i.oy = add nsw i64 %indvars.iv.i.i.i, %i.kt
  %i.oz = shl nsw i64 %i.oy, 3                    ; 2 uses
  %i.pa = getelementptr inbounds i8, ptr %i.ox, i64 %i.oz
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 %i.ov
  %i.pc = load ptr, ptr %i.kc, align 8, !tbaa !191
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !91
  %i.pe = getelementptr inbounds i8, ptr %i.pd, i64 %i.oz
  %i.pf = load ptr, ptr %i.kg, align 16, !tbaa !158
  %i.pg = tail call i32 %i.pf(ptr noundef nonnull %i.f, ptr noundef %i.pb, ptr noundef %i.pe, i64 noundef %i.ko, i32 noundef 8) #14, !inline_history !354 ; 5 uses
  %i.ph = load i32, ptr %i.kh, align 8, !tbaa !396
  %i.pi = tail call i32 @llvm.abs.i32(i32 %i.ph, i1 true)
  switch i32 %i.pi, label %bb.bv [
    i32 0, label %bb.bq
    i32 1, label %bb.br
    i32 2, label %bb.bs
    i32 3, label %bb.bt
    i32 4, label %bb.bu
  ]

bb.bq:                                            ; preds = %bb.bp
  %i.pj = tail call i32 @llvm.smax.i32(i32 %.27787.i.i.i, i32 %i.pg)
  br label %bb.bv

bb.br:                                            ; preds = %bb.bp
  %i.pk = tail call i32 @llvm.abs.i32(i32 %i.pg, i1 true)
  %i.pl = add nuw nsw i32 %i.pk, %.27787.i.i.i
  br label %bb.bv

bb.bs:                                            ; preds = %bb.bp
  %i.pm = sext i32 %i.pg to i64                   ; 2 uses
  %i.pn = mul nsw i64 %i.pm, %i.pm
  %i.po = add nsw i64 %i.pn, %.288.i.i.i
  br label %bb.bv

bb.bt:                                            ; preds = %bb.bp
  %i.pp = sext i32 %i.pg to i64                   ; 3 uses
  %i.pq = mul nsw i64 %i.pp, %i.pp
  %i.pr = mul nsw i64 %i.pq, %i.pp
  %i.ps = tail call i64 @llvm.abs.i64(i64 %i.pr, i1 true)
  %i.pt = add nsw i64 %i.ps, %.288.i.i.i
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bp
  %i.pu = sext i32 %i.pg to i64                   ; 2 uses
  %i.pv = mul nsw i64 %i.pu, %i.pu                ; 2 uses
  %i.pw = mul nuw nsw i64 %i.pv, %i.pv
  %i.px = add nsw i64 %i.pw, %.288.i.i.i
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp
  %.378.i.i.i = phi i32 [ %.27787.i.i.i, %bb.bp ], [ %i.pj, %bb.bq ], [ %i.pl, %bb.br ], [ %.27787.i.i.i, %bb.bs ], [ %.27787.i.i.i, %bb.bt ], [ %.27787.i.i.i, %bb.bu ] ; 2 uses
  %.3.i.i.i = phi i64 [ %.288.i.i.i, %bb.bp ], [ %.288.i.i.i, %bb.bq ], [ %.288.i.i.i, %bb.br ], [ %i.po, %bb.bs ], [ %i.pt, %bb.bt ], [ %i.px, %bb.bu ] ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.py = load i32, ptr %i.ke, align 4, !tbaa !197 ; 2 uses
  %i.pz = shl i32 %i.py, 1
  %i.qa = sext i32 %i.pz to i64
  %i.qb = icmp slt i64 %indvars.iv.next.i.i.i, %i.qa
  br i1 %i.qb, label %bb.bp, label %._crit_edge.loopexit.i.i.i, !llvm.loop !355

bb.bw:                                            ; preds = %._crit_edge94.2.i.i.i
  %i.qc = sitofp nsz i64 %spec.select.i.i.i to double
  %i.qd = load i32, ptr %i.ke, align 4, !tbaa !197
  %i.qe = mul nsw i32 %i.qd, %i.ol
  %i.qf = insertelement <2 x i32> poison, i32 %i.qe, i64 0
  %i.qg = insertelement <2 x i32> %i.qf, i32 %i.on, i64 1
  %i.qh = sitofp <2 x i32> %i.qg to <2 x double>
  %i.qi = insertelement <2 x double> <double poison, double -1.000000e+00>, double %i.qc, i64 0
  %i.qj = fdiv nsz <2 x double> %i.qi, %i.qh      ; 2 uses
  %i.qk = extractelement <2 x double> %i.qj, i64 0
  %i.ql = extractelement <2 x double> %i.qj, i64 1
  %i.qm = tail call nsz double @llvm.pow.f64(double %i.qk, double %i.ql)
  %i.qn = fptosi double %i.qm to i64
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %._crit_edge94.2.i.i.i
  %.5.i.i.i = phi i64 [ %i.qn, %bb.bw ], [ %spec.select.i.i.i, %._crit_edge94.2.i.i.i ] ; 2 uses
  %i.qo = load i32, ptr %i.jt, align 16, !tbaa !141
  %i.qp = sext i32 %i.qo to i64
  %i.qq = icmp slt i64 %.5.i.i.i, %i.qp
  br i1 %i.qq, label %skip_check.exit.thread.i.i, label %skip_check.exit.i.i

skip_check.exit.i.i:                              ; preds = %bb.bx
  %i.qr = getelementptr inbounds nuw i8, ptr %i.f, i64 10372
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !142
  %i.qt = sext i32 %i.qs to i64
  %i.qu = getelementptr inbounds nuw i8, ptr %i.f, i64 4416
  %i.qv = load i32, ptr %i.qu, align 16, !tbaa !198
  %i.qw = zext i32 %i.qv to i64
  %i.qx = mul nsw i64 %i.qw, %i.qt
  %i.qy = ashr i64 %i.qx, 8
  %.not189.i.i = icmp slt i64 %.5.i.i.i, %i.qy
  br i1 %.not189.i.i, label %skip_check.exit.thread.i.i, label %bb.by

skip_check.exit.thread.i.i:                       ; preds = %skip_check.exit.i.i, %bb.bx
  tail call void @av_refstruct_unref(ptr noundef nonnull %i.jm) #14
  %i.qz = tail call i32 @ff_vbv_update(ptr noundef nonnull %i.f, i32 noundef 0) #14 ; 0 uses
  br label %bb.dm

bb.by:                                            ; preds = %skip_check.exit.i.i, %bb.az, %bb.ay, %bb.ax
  %i.ra = getelementptr inbounds nuw i8, ptr %i.f, i64 936
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !395
  %.not163.i.i = icmp eq ptr %i.rb, null
  br i1 %.not163.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.rc = getelementptr inbounds nuw i8, ptr %i.f, i64 9856
  %i.rd = load i32, ptr %i.rc, align 16, !tbaa !113
  %.not164.i.i = icmp eq i32 %i.rd, 0
  br i1 %.not164.i.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.re = load ptr, ptr %i.jm, align 8, !tbaa !188 ; 3 uses
  store ptr %i.re, ptr %i.jp, align 16, !tbaa !188
  store ptr null, ptr %i.jm, align 8, !tbaa !188
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !191
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 120
  store i32 1, ptr %i.rg, align 8, !tbaa !199
  %i.rh = getelementptr inbounds nuw i8, ptr %i.f, i64 9876 ; 2 uses
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !397 ; 2 uses
  %i.rj = add nsw i32 %i.ri, 1
  store i32 %i.rj, ptr %i.rh, align 4, !tbaa !397
  %i.rk = getelementptr inbounds nuw i8, ptr %i.re, i64 140
  store i32 %i.ri, ptr %i.rk, align 4, !tbaa !398
  br label %bb.dm

bb.cb:                                            ; preds = %bb.bz
  %i.rl = getelementptr inbounds nuw i8, ptr %i.f, i64 344 ; 4 uses
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !56
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 64
  %i.ro = load i32, ptr %i.rn, align 8, !tbaa !109
  %i.rp = and i32 %i.ro, 1024
  %.not165.i.i = icmp eq i32 %i.rp, 0
  br i1 %.not165.i.i, label %.critedge180.i.i, label %.preheader192.i.i

.preheader192.i.i:                                ; preds = %bb.cb
  %i.rq = load i32, ptr %i.n, align 8, !tbaa !103 ; 2 uses
  %.not166202.i.i = icmp slt i32 %i.rq, 0
  br i1 %.not166202.i.i, label %.critedge180.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader192.i.i
  %i.rr = load ptr, ptr %i.jm, align 8, !tbaa !188
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 136
  %i.rt = load i32, ptr %i.rs, align 8, !tbaa !394 ; 3 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.f, i64 10464
  %i.rv = load i32, ptr %i.ru, align 16, !tbaa !399
  %i.rw = getelementptr inbounds nuw i8, ptr %i.f, i64 10472
  %i.rx = sext i32 %i.rt to i64
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %i.rt, i32 %i.rv)
  %i.ry = sub i32 %smax.i.i, %i.rt
  %wide.trip.count.i.i = zext i32 %i.ry to i64
  %i.rz = add nuw i32 %i.rq, 1
  %wide.trip.count247.i.i = zext i32 %i.rz to i64
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cf, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.cf ] ; 4 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.critedge180.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %indvars.iv.i.i
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !188 ; 2 uses
  %.not168.i.i = icmp eq ptr %i.sb, null
  %i.sc = load ptr, ptr %i.rw, align 8, !tbaa !400
  %i.sd = getelementptr [72 x i8], ptr %i.sc, i64 %indvars.iv.i.i
  %i.se = getelementptr [72 x i8], ptr %i.sd, i64 %i.rx ; 2 uses
  br i1 %.not168.i.i, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.sf = getelementptr i8, ptr %i.se, i64 -24
  store i32 2, ptr %i.sf, align 8, !tbaa !402
  br label %.critedge180.i.i

bb.cf:                                            ; preds = %bb.cd
  %i.sg = getelementptr inbounds nuw i8, ptr %i.se, i64 48
  %i.sh = load i32, ptr %i.sg, align 8, !tbaa !402
  %i.si = load ptr, ptr %i.sb, align 8, !tbaa !191
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 120
  store i32 %i.sh, ptr %i.sj, align 8, !tbaa !199
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond248.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count247.i.i
  br i1 %exitcond248.not.i.i, label %.critedge180.i.i, label %bb.cc, !llvm.loop !357

.critedge180.i.i:                                 ; preds = %bb.cf, %bb.cc, %bb.ce, %.preheader192.i.i, %bb.cb
  %i.sk = getelementptr inbounds nuw i8, ptr %i.f, i64 10320
  %i.sl = load i32, ptr %i.sk, align 16, !tbaa !127
  switch i32 %i.sl, label %._crit_edge228.i.i [
    i32 0, label %bb.cg
    i32 1, label %.preheader191.i.i
    i32 2, label %bb.cr
  ]

.preheader191.i.i:                                ; preds = %.critedge180.i.i
  %i.sm = load i32, ptr %i.n, align 8, !tbaa !103 ; 4 uses
  %.not169205.i.i = icmp slt i32 %i.sm, 1
  br i1 %.not169205.i.i, label %.preheader.i.i, label %.lr.ph207.i.i

.lr.ph207.i.i:                                    ; preds = %.preheader191.i.i
  %i.sn = getelementptr inbounds nuw i8, ptr %i.f, i64 352
  %i.so = getelementptr inbounds nuw i8, ptr %i.f, i64 356
  %i.sp = getelementptr inbounds nuw i8, ptr %i.f, i64 416
  %i.sq = getelementptr inbounds nuw i8, ptr %i.f, i64 6600
  %i.sr = getelementptr inbounds nuw i8, ptr %i.f, i64 4520
  br label %bb.ci

bb.cg:                                            ; preds = %.critedge180.i.i
  %i.ss = load i32, ptr %i.n, align 8, !tbaa !103 ; 2 uses
  %.not173217.i.i = icmp eq i32 %i.ss, 0
  br i1 %.not173217.i.i, label %._crit_edge228.i.i, label %.lr.ph220.preheader.i.i

.lr.ph220.preheader.i.i:                          ; preds = %bb.cg
  %i.st = sext i32 %i.ss to i64
  br label %.lr.ph220.i.i

.lr.ph220.i.i:                                    ; preds = %bb.ch, %.lr.ph220.preheader.i.i
  %indvars.iv263.i.i = phi i64 [ %i.st, %.lr.ph220.preheader.i.i ], [ %indvars.iv.next264.i.i, %bb.ch ] ; 3 uses
  %i.su = getelementptr inbounds [8 x i8], ptr %i.jm, i64 %indvars.iv263.i.i
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !188
  %.not174.i.i = icmp eq ptr %i.sv, null
  br i1 %.not174.i.i, label %bb.ch, label %.critedge.loopexit.i.i

bb.ch:                                            ; preds = %.lr.ph220.i.i
  %indvars.iv.next264.i.i = add nsw i64 %indvars.iv263.i.i, -1 ; 2 uses
  %.not173.i.i = icmp eq i64 %indvars.iv.next264.i.i, 0
  br i1 %.not173.i.i, label %._crit_edge228.i.i, label %.lr.ph220.i.i, !llvm.loop !358

.preheader.i.i:                                   ; preds = %bb.cm, %.preheader191.i.i
  %.lcssa194.i.i = phi i32 [ %i.sm, %.preheader191.i.i ], [ %i.uy, %bb.cm ] ; 2 uses
  %.not170.not208.i.i = icmp slt i32 %.lcssa194.i.i, 0
  br i1 %.not170.not208.i.i, label %._crit_edge.i.i, label %.lr.ph210.i.i

.lr.ph210.i.i:                                    ; preds = %.preheader.i.i
  %i.sw = getelementptr inbounds nuw i8, ptr %i.f, i64 412
  %i.sx = getelementptr inbounds nuw i8, ptr %i.f, i64 10324
  %i.sy = add nuw i32 %.lcssa194.i.i, 1           ; 2 uses
  %wide.trip.count255.i.i = zext i32 %i.sy to i64
  br label %bb.cn

bb.ci:                                            ; preds = %bb.cm, %.lr.ph207.i.i
  %.pre274275.i.i = phi i32 [ %i.sm, %.lr.ph207.i.i ], [ %.pre274276.i.i, %bb.cm ] ; 4 uses
  %i.sz = phi i32 [ %i.sm, %.lr.ph207.i.i ], [ %i.uy, %bb.cm ] ; 2 uses
  %indvars.iv249.i.i = phi i64 [ 1, %.lr.ph207.i.i ], [ %indvars.iv.next250.i.i, %bb.cm ] ; 3 uses
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %indvars.iv249.i.i ; 3 uses
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !188 ; 5 uses
  %.not172.i.i = icmp eq ptr %i.tb, null
  br i1 %.not172.i.i, label %bb.cm, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 124
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !403
  %i.te = icmp eq i32 %i.td, 0
  br i1 %i.te, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %bb.cj
  %i.tf = load ptr, ptr %i.tb, align 8, !tbaa !191
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !91
  %i.th = getelementptr i8, ptr %i.ta, i64 -8
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !188
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !191
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !91
  %i.tl = load i32, ptr %i.sn, align 16, !tbaa !131 ; 2 uses
  %i.tm = and i32 %i.tl, -16
  %i.tn = load i32, ptr %i.so, align 4, !tbaa !132 ; 2 uses
  %i.to = and i32 %i.tn, -16
  %i.tp = icmp sgt i32 %i.tn, 15
  br i1 %i.tp, label %.preheader.lr.ph.i182.i.i, label %get_intra_count.exit.i.i
end_hunk_0
begin_hunk_1_@get_visual_weight:bb.a
  br i1 %i.t, label %bb.h, label %._crit_edge.us

bb.h:                                             ; preds = %bb.g
  %gep.6 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next.5
  %i.bh = load i8, ptr %gep.6, align 1, !tbaa !52
  %i.bi = zext i8 %i.bh to i32                    ; 3 uses
  %i.bj = add nsw i32 %i.bd, %i.bi                ; 2 uses
  %i.bk = mul nuw nsw i32 %i.bi, %i.bi
  %i.bl = add nsw i32 %i.bk, %i.bf                ; 2 uses
  %i.bm = add nsw i32 %.03350.us, 7
  br i1 %i.u, label %bb.i, label %._crit_edge.us

bb.i:                                             ; preds = %bb.h
  %gep.7 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next.6
  %i.bn = load i8, ptr %gep.7, align 1, !tbaa !52
  %i.bo = zext i8 %i.bn to i32                    ; 3 uses
  %i.bp = add nsw i32 %i.bj, %i.bo
  %i.bq = mul nuw nsw i32 %i.bo, %i.bo
  %i.br = add nsw i32 %i.bq, %i.bl
  %i.bs = add nsw i32 %.03350.us, 8
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %.lr.ph.us
  %.lcssa84 = phi i32 [ %i.z, %.lr.ph.us ], [ %i.af, %bb.c ], [ %i.al, %bb.d ], [ %i.ar, %bb.e ], [ %i.ax, %bb.f ], [ %i.bd, %bb.g ], [ %i.bj, %bb.h ], [ %i.bp, %bb.i ] ; 3 uses
  %.lcssa83 = phi i32 [ %i.ab, %.lr.ph.us ], [ %i.ah, %bb.c ], [ %i.an, %bb.d ], [ %i.at, %bb.e ], [ %i.az, %bb.f ], [ %i.bf, %bb.g ], [ %i.bl, %bb.h ], [ %i.br, %bb.i ] ; 2 uses
  %.lcssa = phi i32 [ %i.ac, %.lr.ph.us ], [ %i.ai, %bb.c ], [ %i.ao, %bb.d ], [ %i.au, %bb.e ], [ %i.ba, %bb.f ], [ %i.bg, %bb.g ], [ %i.bm, %bb.h ], [ %i.bs, %bb.i ] ; 3 uses
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %i.bt = icmp samesign ult i64 %indvars.iv.next68, %i.h
  br i1 %i.bt, label %.lr.ph.us, label %._crit_edge53.loopexit62, !llvm.loop !527

._crit_edge53.loopexit62:                         ; preds = %._crit_edge.us
  %i.bu = mul nsw i32 %.lcssa, %.lcssa83
  %i.bv = mul nsw i32 %.lcssa84, %.lcssa84
  br label %._crit_edge53

._crit_edge53:                                    ; preds = %.lr.ph52, %._crit_edge53.loopexit62, %bb.b
  %.036.lcssa = phi i32 [ 0, %bb.b ], [ %i.bv, %._crit_edge53.loopexit62 ], [ 0, %.lr.ph52 ]
  %.034.lcssa = phi i32 [ 0, %bb.b ], [ %i.bu, %._crit_edge53.loopexit62 ], [ 0, %.lr.ph52 ]
  %.033.lcssa = phi i32 [ 0, %bb.b ], [ %.lcssa, %._crit_edge53.loopexit62 ], [ 0, %.lr.ph52 ]
  %i.bw = sub nsw i32 %.034.lcssa, %.036.lcssa    ; 12 uses
  %i.bx = icmp ult i32 %i.bw, 255
  br i1 %i.bx, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge53
  %i.by = zext nneg i32 %i.bw to i64
  %i.bz = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !52
  %i.cc = zext i8 %i.cb to i32
  %i.cd = add nsw i32 %i.cc, -1
  %i.ce = ashr i32 %i.cd, 4
  br label %ff_sqrt.exit

bb.k:                                             ; preds = %._crit_edge53
  %i.cf = icmp ult i32 %i.bw, 4096
  br i1 %i.cf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cg = lshr i32 %i.bw, 4
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !52
  %i.ck = lshr i8 %i.cj, 2
  %i.cl = zext nneg i8 %i.ck to i32
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.cm = icmp ult i32 %i.bw, 16384
  br i1 %i.cm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cn = lshr i32 %i.bw, 6
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !52
  %i.cr = lshr i8 %i.cq, 1
  %i.cs = zext nneg i8 %i.cr to i32
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.ct = icmp ult i32 %i.bw, 65536
  br i1 %i.ct, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cu = lshr i32 %i.bw, 8
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !52
  %i.cy = zext i8 %i.cx to i32
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %.not.i.i = icmp ult i32 %i.bw, 16777216        ; 2 uses
  %spec.select.i.v.i = select i1 %.not.i.i, i32 16, i32 24
  %spec.select.i.i = lshr i32 %i.bw, %spec.select.i.v.i
  %spec.select7.i.i = select i1 %.not.i.i, i32 0, i32 8
  %i.cz = zext nneg i32 %spec.select.i.i to i64
  %i.da = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !52
  %i.dc = zext i8 %i.db to i32
  %i.dd = add nuw nsw i32 %spec.select7.i.i, %i.dc
  %i.de = lshr i32 %i.dd, 1                       ; 3 uses
  %i.df = add nuw nsw i32 %i.de, 2
  %i.dg = lshr i32 %i.bw, %i.df                   ; 2 uses
  %i.dh = add nuw nsw i32 %i.de, 8
  %i.di = lshr i32 %i.dg, %i.dh
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !52  ; 2 uses
  %i.dm = zext i8 %i.dl to i32
  %i.dn = zext i8 %i.dl to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr @ff_inverse, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !54
  %i.dq = tail call i32 @llvm.umulh.i32(i32 %i.dg, i32 %i.dp)
  %i.dr = shl i32 %i.dm, %i.de
  %i.ds = add i32 %i.dq, %i.dr
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n, %bb.l
  %.022.i = phi i32 [ %i.cl, %bb.l ], [ %i.cs, %bb.n ], [ %i.cy, %bb.p ], [ %i.ds, %bb.q ] ; 3 uses
  %i.dt = mul i32 %.022.i, %.022.i
  %i.du = icmp ult i32 %i.bw, %i.dt
  %.neg.i = sext i1 %i.du to i32
  %i.dv = add i32 %.022.i, %.neg.i
  br label %ff_sqrt.exit

ff_sqrt.exit:                                     ; preds = %bb.j, %bb.r
  %.0.i = phi i32 [ %i.ce, %bb.j ], [ %i.dv, %bb.r ]
  %i.dw = mul i32 %.0.i, 36
  %i.dx = udiv i32 %i.dw, %.033.lcssa
  %i.dy = trunc i32 %i.dx to i16
  %gep80 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep79, i64 %indvars.iv70
  store i16 %i.dy, ptr %gep80, align 2, !tbaa !53
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next71, 8
  br i1 %exitcond.not, label %bb.s, label %bb.b, !llvm.loop !528

bb.s:                                             ; preds = %ff_sqrt.exit
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next74, 8
  br i1 %exitcond76.not, label %bb.t, label %.preheader, !llvm.loop !529

bb.t:                                             ; preds = %bb.s
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @dct_quantize_refine(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef nonnull %2, ptr nofree noundef nonnull readonly captures(none) %3, i32 noundef range(i32 -2147483648, 12) %4, i32 noundef %5) unnamed_addr #1 {
bb.a:
  %i.a = alloca [64 x i16], align 16              ; 25 uses
  %i.b = alloca [64 x i16], align 16              ; 13 uses
  %i.c = alloca [65 x i32], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.d = load i16, ptr @basis, align 16, !tbaa !53
  %i.e = icmp eq i16 %i.d, 0
  br i1 %i.e, label %bb.b, label %build_basis.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1816
  br label %.preheader28.i

.preheader28.i:                                   ; preds = %bb.c, %bb.b
  %indvars.iv36.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next37.i, %bb.c ] ; 4 uses
  %i.g = shl nuw nsw i64 %indvars.iv36.i, 3
  %i.h = icmp eq i64 %indvars.iv36.i, 0
  %.0.i = select nsz i1 %i.h, double f0x40C6A09E667F3BCD, double 1.638400e+04 ; 2 uses
  %i.i = fmul nnan nsz double %.0.i, f0x3FE6A09E667F3BCD
  %i.j = trunc nuw nsw i64 %indvars.iv36.i to i32
  %i.k = uitofp nsz nneg i32 %i.j to double
  %i.l = fmul nnan nsz double %i.k, f0x3FD921FB54442D18
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  %i.m = insertelement <4 x double> poison, double %i.l, i64 0
  %i.n = shufflevector <4 x double> %i.m, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.o = fmul nnan nsz <4 x double> %i.n, <double 5.000000e-01, double 1.500000e+00, double 2.500000e+00, double 3.500000e+00>
  %i.p = tail call nsz <4 x double> @llvm.cos.v4f64(<4 x double> %i.o)
  %i.q = fmul nnan nsz <4 x double> %i.n, <double 4.500000e+00, double 5.500000e+00, double 6.500000e+00, double 7.500000e+00>
  %i.r = tail call nsz <4 x double> @llvm.cos.v4f64(<4 x double> %i.q)
  br label %.preheader27.i

.preheader27.i:                                   ; preds = %.preheader27.i, %.preheader28.i
  %indvars.iv.i = phi i64 [ 0, %.preheader28.i ], [ %indvars.iv.next.i, %.preheader27.i ] ; 4 uses
  %gep.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.i ; 64 uses
  %i.s = icmp eq i64 %indvars.iv.i, 0
  %.1.i = select nsz i1 %i.s, double %i.i, double %.0.i
  %i.t = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.u = uitofp nsz nneg i32 %i.t to double
  %i.v = fmul nnan nsz double %i.u, f0x3FD921FB54442D18 ; 8 uses
  %i.w = fmul nnan nsz double %i.v, 5.000000e-01
  %i.x = tail call nsz double @llvm.cos.f64(double %i.w)
  %i.y = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.z
  %i.ab = insertelement <4 x double> poison, double %.1.i, i64 0
  %i.ac = shufflevector <4 x double> %i.ab, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ad = fmul nsz <4 x double> %i.p, %i.ac       ; 8 uses
  %i.ae = insertelement <4 x double> poison, double %i.x, i64 0
  %i.af = shufflevector <4 x double> %i.ae, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ag = fmul nsz <4 x double> %i.ad, %i.af
  %i.ah = fptrunc <4 x double> %i.ag to <4 x float> ; 4 uses
  %i.ai = extractelement <4 x float> %i.ah, i64 0
  %i.aj = tail call i64 @llvm.lrint.i64.f32(float %i.ai)
  %i.ak = trunc i64 %i.aj to i16
  store i16 %i.ak, ptr %i.aa, align 16, !tbaa !53
  %i.al = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.am = extractelement <4 x float> %i.ah, i64 1
  %i.an = tail call i64 @llvm.lrint.i64.f32(float %i.am)
  %i.ao = trunc i64 %i.an to i16
  %i.ap = zext i8 %i.al to i64
  %i.aq = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i16 %i.ao, ptr %i.ar, align 16, !tbaa !53
  %i.as = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.at = extractelement <4 x float> %i.ah, i64 2
  %i.au = tail call i64 @llvm.lrint.i64.f32(float %i.at)
  %i.av = trunc i64 %i.au to i16
  %i.aw = zext i8 %i.as to i64
  %i.ax = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store i16 %i.av, ptr %i.ay, align 16, !tbaa !53
  %i.az = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.ba = extractelement <4 x float> %i.ah, i64 3
  %i.bb = tail call i64 @llvm.lrint.i64.f32(float %i.ba)
  %i.bc = trunc i64 %i.bb to i16
  %i.bd = zext i8 %i.az to i64
  %i.be = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  store i16 %i.bc, ptr %i.bf, align 16, !tbaa !53
  %i.bg = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.bk = fmul nsz <4 x double> %i.r, %i.ac       ; 8 uses
  %i.bl = fmul nsz <4 x double> %i.bk, %i.af
  %i.bm = fptrunc <4 x double> %i.bl to <4 x float> ; 4 uses
  %i.bn = extractelement <4 x float> %i.bm, i64 0
  %i.bo = tail call i64 @llvm.lrint.i64.f32(float %i.bn)
  %i.bp = trunc i64 %i.bo to i16
  store i16 %i.bp, ptr %i.bj, align 16, !tbaa !53
  %i.bq = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.br = extractelement <4 x float> %i.bm, i64 1
  %i.bs = tail call i64 @llvm.lrint.i64.f32(float %i.br)
  %i.bt = trunc i64 %i.bs to i16
  %i.bu = zext i8 %i.bq to i64
  %i.bv = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 80
  store i16 %i.bt, ptr %i.bw, align 16, !tbaa !53
  %i.bx = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.by = extractelement <4 x float> %i.bm, i64 2
  %i.bz = tail call i64 @llvm.lrint.i64.f32(float %i.by)
  %i.ca = trunc i64 %i.bz to i16
  %i.cb = zext i8 %i.bx to i64
  %i.cc = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 96
  store i16 %i.ca, ptr %i.cd, align 16, !tbaa !53
  %i.ce = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.cf = extractelement <4 x float> %i.bm, i64 3
  %i.cg = tail call i64 @llvm.lrint.i64.f32(float %i.cf)
  %i.ch = trunc i64 %i.cg to i16
  %i.ci = zext i8 %i.ce to i64
  %i.cj = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 112
  store i16 %i.ch, ptr %i.ck, align 16, !tbaa !53
  %i.cl = fmul nnan nsz double %i.v, 1.500000e+00
  %i.cm = tail call nsz double @llvm.cos.f64(double %i.cl)
  %i.cn = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.co = zext i8 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 2
  %i.cr = insertelement <4 x double> poison, double %i.cm, i64 0
  %i.cs = shufflevector <4 x double> %i.cr, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ct = fmul nsz <4 x double> %i.ad, %i.cs
  %i.cu = fptrunc <4 x double> %i.ct to <4 x float> ; 4 uses
  %i.cv = extractelement <4 x float> %i.cu, i64 0
  %i.cw = tail call i64 @llvm.lrint.i64.f32(float %i.cv)
  %i.cx = trunc i64 %i.cw to i16
  store i16 %i.cx, ptr %i.cq, align 2, !tbaa !53
  %i.cy = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.cz = extractelement <4 x float> %i.cu, i64 1
  %i.da = tail call i64 @llvm.lrint.i64.f32(float %i.cz)
  %i.db = trunc i64 %i.da to i16
  %i.dc = zext i8 %i.cy to i64
  %i.dd = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 18
  store i16 %i.db, ptr %i.de, align 2, !tbaa !53
  %i.df = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.dg = extractelement <4 x float> %i.cu, i64 2
  %i.dh = tail call i64 @llvm.lrint.i64.f32(float %i.dg)
  %i.di = trunc i64 %i.dh to i16
  %i.dj = zext i8 %i.df to i64
  %i.dk = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 34
  store i16 %i.di, ptr %i.dl, align 2, !tbaa !53
  %i.dm = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.dn = extractelement <4 x float> %i.cu, i64 3
  %i.do = tail call i64 @llvm.lrint.i64.f32(float %i.dn)
  %i.dp = trunc i64 %i.do to i16
  %i.dq = zext i8 %i.dm to i64
  %i.dr = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 50
  store i16 %i.dp, ptr %i.ds, align 2, !tbaa !53
  %i.dt = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.du = zext i8 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 66
  %i.dx = fmul nsz <4 x double> %i.bk, %i.cs
  %i.dy = fptrunc <4 x double> %i.dx to <4 x float> ; 4 uses
  %i.dz = extractelement <4 x float> %i.dy, i64 0
  %i.ea = tail call i64 @llvm.lrint.i64.f32(float %i.dz)
  %i.eb = trunc i64 %i.ea to i16
  store i16 %i.eb, ptr %i.dw, align 2, !tbaa !53
  %i.ec = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.ed = extractelement <4 x float> %i.dy, i64 1
  %i.ee = tail call i64 @llvm.lrint.i64.f32(float %i.ed)
  %i.ef = trunc i64 %i.ee to i16
  %i.eg = zext i8 %i.ec to i64
  %i.eh = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 82
  store i16 %i.ef, ptr %i.ei, align 2, !tbaa !53
  %i.ej = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.ek = extractelement <4 x float> %i.dy, i64 2
  %i.el = tail call i64 @llvm.lrint.i64.f32(float %i.ek)
  %i.em = trunc i64 %i.el to i16
  %i.en = zext i8 %i.ej to i64
  %i.eo = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 98
  store i16 %i.em, ptr %i.ep, align 2, !tbaa !53
  %i.eq = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.er = extractelement <4 x float> %i.dy, i64 3
  %i.es = tail call i64 @llvm.lrint.i64.f32(float %i.er)
  %i.et = trunc i64 %i.es to i16
  %i.eu = zext i8 %i.eq to i64
  %i.ev = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 114
  store i16 %i.et, ptr %i.ew, align 2, !tbaa !53
  %i.ex = fmul nnan nsz double %i.v, 2.500000e+00
  %i.ey = tail call nsz double @llvm.cos.f64(double %i.ex)
  %i.ez = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.fa = zext i8 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fd = insertelement <4 x double> poison, double %i.ey, i64 0
  %i.fe = shufflevector <4 x double> %i.fd, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ff = fmul nsz <4 x double> %i.ad, %i.fe
  %i.fg = fptrunc <4 x double> %i.ff to <4 x float> ; 4 uses
  %i.fh = extractelement <4 x float> %i.fg, i64 0
  %i.fi = tail call i64 @llvm.lrint.i64.f32(float %i.fh)
  %i.fj = trunc i64 %i.fi to i16
  store i16 %i.fj, ptr %i.fc, align 4, !tbaa !53
  %i.fk = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.fl = extractelement <4 x float> %i.fg, i64 1
  %i.fm = tail call i64 @llvm.lrint.i64.f32(float %i.fl)
  %i.fn = trunc i64 %i.fm to i16
  %i.fo = zext i8 %i.fk to i64
  %i.fp = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 20
  store i16 %i.fn, ptr %i.fq, align 4, !tbaa !53
  %i.fr = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.fs = extractelement <4 x float> %i.fg, i64 2
  %i.ft = tail call i64 @llvm.lrint.i64.f32(float %i.fs)
  %i.fu = trunc i64 %i.ft to i16
  %i.fv = zext i8 %i.fr to i64
  %i.fw = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 36
  store i16 %i.fu, ptr %i.fx, align 4, !tbaa !53
  %i.fy = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.fz = extractelement <4 x float> %i.fg, i64 3
  %i.ga = tail call i64 @llvm.lrint.i64.f32(float %i.fz)
  %i.gb = trunc i64 %i.ga to i16
  %i.gc = zext i8 %i.fy to i64
  %i.gd = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 52
  store i16 %i.gb, ptr %i.ge, align 4, !tbaa !53
  %i.gf = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.gg = zext i8 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 68
  %i.gj = fmul nsz <4 x double> %i.bk, %i.fe
  %i.gk = fptrunc <4 x double> %i.gj to <4 x float> ; 4 uses
  %i.gl = extractelement <4 x float> %i.gk, i64 0
  %i.gm = tail call i64 @llvm.lrint.i64.f32(float %i.gl)
  %i.gn = trunc i64 %i.gm to i16
  store i16 %i.gn, ptr %i.gi, align 4, !tbaa !53
  %i.go = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.gp = extractelement <4 x float> %i.gk, i64 1
  %i.gq = tail call i64 @llvm.lrint.i64.f32(float %i.gp)
  %i.gr = trunc i64 %i.gq to i16
  %i.gs = zext i8 %i.go to i64
  %i.gt = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 84
  store i16 %i.gr, ptr %i.gu, align 4, !tbaa !53
  %i.gv = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.gw = extractelement <4 x float> %i.gk, i64 2
  %i.gx = tail call i64 @llvm.lrint.i64.f32(float %i.gw)
  %i.gy = trunc i64 %i.gx to i16
  %i.gz = zext i8 %i.gv to i64
  %i.ha = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 100
  store i16 %i.gy, ptr %i.hb, align 4, !tbaa !53
  %i.hc = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.hd = extractelement <4 x float> %i.gk, i64 3
  %i.he = tail call i64 @llvm.lrint.i64.f32(float %i.hd)
  %i.hf = trunc i64 %i.he to i16
  %i.hg = zext i8 %i.hc to i64
  %i.hh = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 116
  store i16 %i.hf, ptr %i.hi, align 4, !tbaa !53
  %i.hj = fmul nnan nsz double %i.v, 3.500000e+00
  %i.hk = tail call nsz double @llvm.cos.f64(double %i.hj)
  %i.hl = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.hm = zext i8 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.hm
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 6
  %i.hp = insertelement <4 x double> poison, double %i.hk, i64 0
  %i.hq = shufflevector <4 x double> %i.hp, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hr = fmul nsz <4 x double> %i.ad, %i.hq
  %i.hs = fptrunc <4 x double> %i.hr to <4 x float> ; 4 uses
  %i.ht = extractelement <4 x float> %i.hs, i64 0
  %i.hu = tail call i64 @llvm.lrint.i64.f32(float %i.ht)
  %i.hv = trunc i64 %i.hu to i16
  store i16 %i.hv, ptr %i.ho, align 2, !tbaa !53
  %i.hw = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.hx = extractelement <4 x float> %i.hs, i64 1
  %i.hy = tail call i64 @llvm.lrint.i64.f32(float %i.hx)
  %i.hz = trunc i64 %i.hy to i16
  %i.ia = zext i8 %i.hw to i64
  %i.ib = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 22
  store i16 %i.hz, ptr %i.ic, align 2, !tbaa !53
  %i.id = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.ie = extractelement <4 x float> %i.hs, i64 2
  %i.if = tail call i64 @llvm.lrint.i64.f32(float %i.ie)
  %i.ig = trunc i64 %i.if to i16
  %i.ih = zext i8 %i.id to i64
  %i.ii = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 38
  store i16 %i.ig, ptr %i.ij, align 2, !tbaa !53
  %i.ik = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.il = extractelement <4 x float> %i.hs, i64 3
  %i.im = tail call i64 @llvm.lrint.i64.f32(float %i.il)
  %i.in = trunc i64 %i.im to i16
  %i.io = zext i8 %i.ik to i64
  %i.ip = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 54
  store i16 %i.in, ptr %i.iq, align 2, !tbaa !53
  %i.ir = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.is = zext i8 %i.ir to i64
  %i.it = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.is
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 70
  %i.iv = fmul nsz <4 x double> %i.bk, %i.hq
  %i.iw = fptrunc <4 x double> %i.iv to <4 x float> ; 4 uses
  %i.ix = extractelement <4 x float> %i.iw, i64 0
  %i.iy = tail call i64 @llvm.lrint.i64.f32(float %i.ix)
  %i.iz = trunc i64 %i.iy to i16
  store i16 %i.iz, ptr %i.iu, align 2, !tbaa !53
  %i.ja = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.jb = extractelement <4 x float> %i.iw, i64 1
  %i.jc = tail call i64 @llvm.lrint.i64.f32(float %i.jb)
  %i.jd = trunc i64 %i.jc to i16
  %i.je = zext i8 %i.ja to i64
  %i.jf = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 86
  store i16 %i.jd, ptr %i.jg, align 2, !tbaa !53
  %i.jh = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.ji = extractelement <4 x float> %i.iw, i64 2
  %i.jj = tail call i64 @llvm.lrint.i64.f32(float %i.ji)
  %i.jk = trunc i64 %i.jj to i16
  %i.jl = zext i8 %i.jh to i64
  %i.jm = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 102
  store i16 %i.jk, ptr %i.jn, align 2, !tbaa !53
  %i.jo = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.jp = extractelement <4 x float> %i.iw, i64 3
  %i.jq = tail call i64 @llvm.lrint.i64.f32(float %i.jp)
  %i.jr = trunc i64 %i.jq to i16
  %i.js = zext i8 %i.jo to i64
  %i.jt = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.js
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 118
  store i16 %i.jr, ptr %i.ju, align 2, !tbaa !53
  %i.jv = fmul nnan nsz double %i.v, 4.500000e+00
  %i.jw = tail call nsz double @llvm.cos.f64(double %i.jv)
  %i.jx = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.jy = zext i8 %i.jx to i64
  %i.jz = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.jy
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kb = insertelement <4 x double> poison, double %i.jw, i64 0
  %i.kc = shufflevector <4 x double> %i.kb, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.kd = fmul nsz <4 x double> %i.ad, %i.kc
  %i.ke = fptrunc <4 x double> %i.kd to <4 x float> ; 4 uses
  %i.kf = extractelement <4 x float> %i.ke, i64 0
  %i.kg = tail call i64 @llvm.lrint.i64.f32(float %i.kf)
  %i.kh = trunc i64 %i.kg to i16
  store i16 %i.kh, ptr %i.ka, align 8, !tbaa !53
  %i.ki = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.kj = extractelement <4 x float> %i.ke, i64 1
  %i.kk = tail call i64 @llvm.lrint.i64.f32(float %i.kj)
  %i.kl = trunc i64 %i.kk to i16
  %i.km = zext i8 %i.ki to i64
  %i.kn = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.km
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  store i16 %i.kl, ptr %i.ko, align 8, !tbaa !53
  %i.kp = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.kq = extractelement <4 x float> %i.ke, i64 2
  %i.kr = tail call i64 @llvm.lrint.i64.f32(float %i.kq)
  %i.ks = trunc i64 %i.kr to i16
  %i.kt = zext i8 %i.kp to i64
  %i.ku = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.kt
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 40
  store i16 %i.ks, ptr %i.kv, align 8, !tbaa !53
  %i.kw = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.kx = extractelement <4 x float> %i.ke, i64 3
  %i.ky = tail call i64 @llvm.lrint.i64.f32(float %i.kx)
  %i.kz = trunc i64 %i.ky to i16
  %i.la = zext i8 %i.kw to i64
  %i.lb = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.la
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 56
  store i16 %i.kz, ptr %i.lc, align 8, !tbaa !53
  %i.ld = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.le = zext i8 %i.ld to i64
  %i.lf = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.le
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 72
  %i.lh = fmul nsz <4 x double> %i.bk, %i.kc
  %i.li = fptrunc <4 x double> %i.lh to <4 x float> ; 4 uses
  %i.lj = extractelement <4 x float> %i.li, i64 0
  %i.lk = tail call i64 @llvm.lrint.i64.f32(float %i.lj)
  %i.ll = trunc i64 %i.lk to i16
  store i16 %i.ll, ptr %i.lg, align 8, !tbaa !53
  %i.lm = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.ln = extractelement <4 x float> %i.li, i64 1
  %i.lo = tail call i64 @llvm.lrint.i64.f32(float %i.ln)
  %i.lp = trunc i64 %i.lo to i16
  %i.lq = zext i8 %i.lm to i64
  %i.lr = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.lq
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 88
  store i16 %i.lp, ptr %i.ls, align 8, !tbaa !53
  %i.lt = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.lu = extractelement <4 x float> %i.li, i64 2
  %i.lv = tail call i64 @llvm.lrint.i64.f32(float %i.lu)
  %i.lw = trunc i64 %i.lv to i16
  %i.lx = zext i8 %i.lt to i64
  %i.ly = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.lx
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 104
  store i16 %i.lw, ptr %i.lz, align 8, !tbaa !53
  %i.ma = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.mb = extractelement <4 x float> %i.li, i64 3
  %i.mc = tail call i64 @llvm.lrint.i64.f32(float %i.mb)
  %i.md = trunc i64 %i.mc to i16
  %i.me = zext i8 %i.ma to i64
  %i.mf = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.me
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 120
  store i16 %i.md, ptr %i.mg, align 8, !tbaa !53
  %i.mh = fmul nnan nsz double %i.v, 5.500000e+00
  %i.mi = tail call nsz double @llvm.cos.f64(double %i.mh)
  %i.mj = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.mk = zext i8 %i.mj to i64
  %i.ml = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.mk
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 10
  %i.mn = insertelement <4 x double> poison, double %i.mi, i64 0
  %i.mo = shufflevector <4 x double> %i.mn, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.mp = fmul nsz <4 x double> %i.ad, %i.mo
  %i.mq = fptrunc <4 x double> %i.mp to <4 x float> ; 4 uses
  %i.mr = extractelement <4 x float> %i.mq, i64 0
  %i.ms = tail call i64 @llvm.lrint.i64.f32(float %i.mr)
  %i.mt = trunc i64 %i.ms to i16
  store i16 %i.mt, ptr %i.mm, align 2, !tbaa !53
  %i.mu = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.mv = extractelement <4 x float> %i.mq, i64 1
  %i.mw = tail call i64 @llvm.lrint.i64.f32(float %i.mv)
  %i.mx = trunc i64 %i.mw to i16
  %i.my = zext i8 %i.mu to i64
  %i.mz = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.my
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 26
  store i16 %i.mx, ptr %i.na, align 2, !tbaa !53
  %i.nb = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.nc = extractelement <4 x float> %i.mq, i64 2
  %i.nd = tail call i64 @llvm.lrint.i64.f32(float %i.nc)
  %i.ne = trunc i64 %i.nd to i16
  %i.nf = zext i8 %i.nb to i64
  %i.ng = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.nf
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 42
  store i16 %i.ne, ptr %i.nh, align 2, !tbaa !53
  %i.ni = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.nj = extractelement <4 x float> %i.mq, i64 3
  %i.nk = tail call i64 @llvm.lrint.i64.f32(float %i.nj)
  %i.nl = trunc i64 %i.nk to i16
  %i.nm = zext i8 %i.ni to i64
  %i.nn = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.nm
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 58
  store i16 %i.nl, ptr %i.no, align 2, !tbaa !53
  %i.np = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.nq = zext i8 %i.np to i64
  %i.nr = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.nq
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 74
  %i.nt = fmul nsz <4 x double> %i.bk, %i.mo
  %i.nu = fptrunc <4 x double> %i.nt to <4 x float> ; 4 uses
  %i.nv = extractelement <4 x float> %i.nu, i64 0
  %i.nw = tail call i64 @llvm.lrint.i64.f32(float %i.nv)
  %i.nx = trunc i64 %i.nw to i16
  store i16 %i.nx, ptr %i.ns, align 2, !tbaa !53
  %i.ny = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.nz = extractelement <4 x float> %i.nu, i64 1
  %i.oa = tail call i64 @llvm.lrint.i64.f32(float %i.nz)
  %i.ob = trunc i64 %i.oa to i16
  %i.oc = zext i8 %i.ny to i64
  %i.od = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.oc
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 90
  store i16 %i.ob, ptr %i.oe, align 2, !tbaa !53
  %i.of = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.og = extractelement <4 x float> %i.nu, i64 2
  %i.oh = tail call i64 @llvm.lrint.i64.f32(float %i.og)
  %i.oi = trunc i64 %i.oh to i16
  %i.oj = zext i8 %i.of to i64
  %i.ok = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.oj
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 106
  store i16 %i.oi, ptr %i.ol, align 2, !tbaa !53
  %i.om = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.on = extractelement <4 x float> %i.nu, i64 3
  %i.oo = tail call i64 @llvm.lrint.i64.f32(float %i.on)
  %i.op = trunc i64 %i.oo to i16
  %i.oq = zext i8 %i.om to i64
  %i.or = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.oq
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 122
  store i16 %i.op, ptr %i.os, align 2, !tbaa !53
  %i.ot = fmul nnan nsz double %i.v, 6.500000e+00
  %i.ou = tail call nsz double @llvm.cos.f64(double %i.ot)
  %i.ov = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.ow = zext i8 %i.ov to i64
  %i.ox = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.ow
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 12
  %i.oz = insertelement <4 x double> poison, double %i.ou, i64 0
  %i.pa = shufflevector <4 x double> %i.oz, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.pb = fmul nsz <4 x double> %i.ad, %i.pa
  %i.pc = fptrunc <4 x double> %i.pb to <4 x float> ; 4 uses
  %i.pd = extractelement <4 x float> %i.pc, i64 0
  %i.pe = tail call i64 @llvm.lrint.i64.f32(float %i.pd)
  %i.pf = trunc i64 %i.pe to i16
  store i16 %i.pf, ptr %i.oy, align 4, !tbaa !53
  %i.pg = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.ph = extractelement <4 x float> %i.pc, i64 1
  %i.pi = tail call i64 @llvm.lrint.i64.f32(float %i.ph)
  %i.pj = trunc i64 %i.pi to i16
  %i.pk = zext i8 %i.pg to i64
  %i.pl = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.pk
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 28
  store i16 %i.pj, ptr %i.pm, align 4, !tbaa !53
  %i.pn = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.po = extractelement <4 x float> %i.pc, i64 2
  %i.pp = tail call i64 @llvm.lrint.i64.f32(float %i.po)
  %i.pq = trunc i64 %i.pp to i16
  %i.pr = zext i8 %i.pn to i64
  %i.ps = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.pr
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 44
  store i16 %i.pq, ptr %i.pt, align 4, !tbaa !53
  %i.pu = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.pv = extractelement <4 x float> %i.pc, i64 3
  %i.pw = tail call i64 @llvm.lrint.i64.f32(float %i.pv)
  %i.px = trunc i64 %i.pw to i16
  %i.py = zext i8 %i.pu to i64
  %i.pz = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.py
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 60
  store i16 %i.px, ptr %i.qa, align 4, !tbaa !53
  %i.qb = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.qc = zext i8 %i.qb to i64
  %i.qd = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.qc
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 76
  %i.qf = fmul nsz <4 x double> %i.bk, %i.pa
  %i.qg = fptrunc <4 x double> %i.qf to <4 x float> ; 4 uses
  %i.qh = extractelement <4 x float> %i.qg, i64 0
  %i.qi = tail call i64 @llvm.lrint.i64.f32(float %i.qh)
  %i.qj = trunc i64 %i.qi to i16
  store i16 %i.qj, ptr %i.qe, align 4, !tbaa !53
  %i.qk = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.ql = extractelement <4 x float> %i.qg, i64 1
  %i.qm = tail call i64 @llvm.lrint.i64.f32(float %i.ql)
  %i.qn = trunc i64 %i.qm to i16
  %i.qo = zext i8 %i.qk to i64
  %i.qp = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.qo
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 92
  store i16 %i.qn, ptr %i.qq, align 4, !tbaa !53
  %i.qr = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.qs = extractelement <4 x float> %i.qg, i64 2
  %i.qt = tail call i64 @llvm.lrint.i64.f32(float %i.qs)
  %i.qu = trunc i64 %i.qt to i16
  %i.qv = zext i8 %i.qr to i64
  %i.qw = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.qv
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 108
  store i16 %i.qu, ptr %i.qx, align 4, !tbaa !53
  %i.qy = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.qz = extractelement <4 x float> %i.qg, i64 3
  %i.ra = tail call i64 @llvm.lrint.i64.f32(float %i.qz)
  %i.rb = trunc i64 %i.ra to i16
  %i.rc = zext i8 %i.qy to i64
  %i.rd = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.rc
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 124
  store i16 %i.rb, ptr %i.re, align 4, !tbaa !53
  %i.rf = fmul nnan nsz double %i.v, 7.500000e+00
  %i.rg = tail call nsz double @llvm.cos.f64(double %i.rf)
  %i.rh = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.ri = zext i8 %i.rh to i64
  %i.rj = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.ri
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 14
  %i.rl = insertelement <4 x double> poison, double %i.rg, i64 0
  %i.rm = shufflevector <4 x double> %i.rl, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.rn = fmul nsz <4 x double> %i.ad, %i.rm
  %i.ro = fptrunc <4 x double> %i.rn to <4 x float> ; 4 uses
  %i.rp = extractelement <4 x float> %i.ro, i64 0
  %i.rq = tail call i64 @llvm.lrint.i64.f32(float %i.rp)
  %i.rr = trunc i64 %i.rq to i16
  store i16 %i.rr, ptr %i.rk, align 2, !tbaa !53
  %i.rs = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.rt = extractelement <4 x float> %i.ro, i64 1
  %i.ru = tail call i64 @llvm.lrint.i64.f32(float %i.rt)
  %i.rv = trunc i64 %i.ru to i16
  %i.rw = zext i8 %i.rs to i64
  %i.rx = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.rw
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 30
  store i16 %i.rv, ptr %i.ry, align 2, !tbaa !53
  %i.rz = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.sa = extractelement <4 x float> %i.ro, i64 2
  %i.sb = tail call i64 @llvm.lrint.i64.f32(float %i.sa)
  %i.sc = trunc i64 %i.sb to i16
  %i.sd = zext i8 %i.rz to i64
  %i.se = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.sd
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 46
  store i16 %i.sc, ptr %i.sf, align 2, !tbaa !53
  %i.sg = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.sh = extractelement <4 x float> %i.ro, i64 3
  %i.si = tail call i64 @llvm.lrint.i64.f32(float %i.sh)
  %i.sj = trunc i64 %i.si to i16
  %i.sk = zext i8 %i.sg to i64
  %i.sl = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.sk
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 62
  store i16 %i.sj, ptr %i.sm, align 2, !tbaa !53
  %i.sn = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.so = zext i8 %i.sn to i64
  %i.sp = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.so
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 78
  %i.sr = fmul nsz <4 x double> %i.bk, %i.rm
  %i.ss = fptrunc <4 x double> %i.sr to <4 x float> ; 4 uses
  %i.st = extractelement <4 x float> %i.ss, i64 0
  %i.su = tail call i64 @llvm.lrint.i64.f32(float %i.st)
  %i.sv = trunc i64 %i.su to i16
  store i16 %i.sv, ptr %i.sq, align 2, !tbaa !53
  %i.sw = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.sx = extractelement <4 x float> %i.ss, i64 1
  %i.sy = tail call i64 @llvm.lrint.i64.f32(float %i.sx)
  %i.sz = trunc i64 %i.sy to i16
  %i.ta = zext i8 %i.sw to i64
  %i.tb = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.ta
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 94
  store i16 %i.sz, ptr %i.tc, align 2, !tbaa !53
  %i.td = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.te = extractelement <4 x float> %i.ss, i64 2
  %i.tf = tail call i64 @llvm.lrint.i64.f32(float %i.te)
  %i.tg = trunc i64 %i.tf to i16
  %i.th = zext i8 %i.td to i64
  %i.ti = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.th
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 110
  store i16 %i.tg, ptr %i.tj, align 2, !tbaa !53
  %i.tk = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.tl = extractelement <4 x float> %i.ss, i64 3
  %i.tm = tail call i64 @llvm.lrint.i64.f32(float %i.tl)
  %i.tn = trunc i64 %i.tm to i16
  %i.to = zext i8 %i.tk to i64
  %i.tp = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.to
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 126
  store i16 %i.tn, ptr %i.tq, align 2, !tbaa !53
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 8
  br i1 %exitcond.not.i, label %bb.c, label %.preheader27.i, !llvm.loop !530

bb.c:                                             ; preds = %.preheader27.i
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %exitcond39.not.i = icmp eq i64 %indvars.iv.next37.i, 8
  br i1 %exitcond39.not.i, label %build_basis.exit, label %.preheader28.i, !llvm.loop !531

build_basis.exit:                                 ; preds = %bb.c, %bb.a
  %i.tr = shl nsw i32 %5, 1                       ; 4 uses
  %i.ts = add nsw i32 %5, -1
  %i.tt = or i32 %i.ts, 1                         ; 3 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 3116
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !77
  %.not = icmp eq i32 %i.tv, 0                    ; 2 uses
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %build_basis.exit
  %i.tw = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.tx = load ptr, ptr %i.tw, align 16, !tbaa !80 ; 4 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !81
  %.not422 = icmp eq i32 %i.ua, 0
  br i1 %.not422, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ub = icmp slt i32 %4, 4
  %i.uc = load i16, ptr %1, align 2, !tbaa !53
  %i.ud = zext i16 %i.uc to i32                   ; 2 uses
  br i1 %i.ub, label %.thread446, label %.thread

.thread446:                                       ; preds = %bb.e
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.uf = load i32, ptr %i.ue, align 8, !tbaa !537
  %i.ug = shl i32 %i.uf, 3                        ; 2 uses
  %i.uh = mul i32 %i.ug, %i.ud
  br label %.sink.split

.thread:                                          ; preds = %bb.e
  %i.ui = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !261
  %i.uk = shl i32 %i.uj, 3                        ; 2 uses
  %i.ul = mul i32 %i.uk, %i.ud
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.um = load i16, ptr %1, align 2, !tbaa !53
  %i.un = sext i16 %i.um to i32
  %i.uo = shl nsw i32 %i.un, 3                    ; 2 uses
  %i.up = icmp sgt i32 %4, 3
  br i1 %i.up, label %bb.g, label %.sink.split

bb.g:                                             ; preds = %.thread, %bb.f
  %i.uq = phi i32 [ %i.ul, %.thread ], [ %i.uo, %bb.f ] ; 2 uses
  %i.ur = phi i32 [ %i.uk, %.thread ], [ 8, %bb.f ] ; 2 uses
  %.0399444 = phi i32 [ %i.tt, %.thread ], [ 0, %bb.f ] ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %0, i64 6160
  %i.ut = load ptr, ptr %i.us, align 16, !tbaa !90 ; 2 uses
  %.not423 = icmp eq ptr %i.ut, null
  br i1 %.not423, label %.sink.split, label %vector.ph

bb.h:                                             ; preds = %build_basis.exit
  %i.uu = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !83
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.g, %.thread446, %bb.h
  %.sink567 = phi i64 [ 6176, %bb.h ], [ 6144, %.thread446 ], [ 6144, %bb.g ], [ 6144, %bb.f ]
  %.sink.ph = phi i64 [ 6184, %bb.h ], [ 6152, %.thread446 ], [ 6152, %bb.g ], [ 6152, %bb.f ]
  %.0408.ph = phi ptr [ %i.uv, %bb.h ], [ %i.tx, %.thread446 ], [ %i.tx, %bb.g ], [ %i.tx, %bb.f ]
  %.0407.ph = phi ptr [ %i.uw, %bb.h ], [ %i.ty, %.thread446 ], [ %i.ty, %bb.g ], [ %i.ty, %bb.f ]
  %.1400.ph = phi i32 [ %i.tt, %bb.h ], [ %i.tt, %.thread446 ], [ %.0399444, %bb.g ], [ 0, %bb.f ]
  %.0398.ph = phi i32 [ 0, %bb.h ], [ 1, %.thread446 ], [ 1, %bb.g ], [ 1, %bb.f ]
  %.0387.ph = phi i32 [ 0, %bb.h ], [ %i.uh, %.thread446 ], [ %i.uq, %bb.g ], [ %i.uo, %bb.f ]
  %.1370.ph = phi i32 [ 1, %bb.h ], [ %i.ug, %.thread446 ], [ %i.ur, %bb.g ], [ 8, %bb.f ]
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 %.sink567
  %i.uy = load ptr, ptr %i.ux, align 16, !tbaa !91
  br label %vector.ph

vector.ph:                                        ; preds = %.sink.split, %bb.g
  %.sink = phi i64 [ 6168, %bb.g ], [ %.sink.ph, %.sink.split ]
  %.0408 = phi ptr [ %i.tx, %bb.g ], [ %.0408.ph, %.sink.split ]
  %.0407 = phi ptr [ %i.ty, %bb.g ], [ %.0407.ph, %.sink.split ] ; 8 uses
  %.1400 = phi i32 [ %.0399444, %bb.g ], [ %.1400.ph, %.sink.split ] ; 5 uses
  %.0398 = phi i32 [ 1, %bb.g ], [ %.0398.ph, %.sink.split ] ; 7 uses
  %.0387 = phi i32 [ %i.uq, %bb.g ], [ %.0387.ph, %.sink.split ]
  %.0386 = phi ptr [ %i.ut, %bb.g ], [ %i.uy, %.sink.split ] ; 13 uses
  %.1370 = phi i32 [ %i.ur, %bb.g ], [ %.1370.ph, %.sink.split ] ; 5 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %.0385 = load ptr, ptr %i.uz, align 8, !tbaa !91 ; 13 uses
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.vb = sext i32 %4 to i64
  %i.vc = getelementptr inbounds [4 x i8], ptr %i.va, i64 %i.vb
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !54 ; 3 uses
  %i.ve = add i32 %.0387, 32
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ve, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 8 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.load = load <8 x i16>, ptr %3, align 2, !tbaa !53
  %wide.load568 = load <8 x i16>, ptr %i.vf, align 2, !tbaa !53
  %i.vg = sext <8 x i16> %wide.load to <8 x i32>
  %i.vh = sext <8 x i16> %wide.load568 to <8 x i32>
  %i.vi = shl nsw <8 x i32> %i.vg, splat (i32 6)
  %i.vj = shl nsw <8 x i32> %i.vh, splat (i32 6)
  %i.vk = sub <8 x i32> %broadcast.splat, %i.vi
  %i.vl = sub <8 x i32> %broadcast.splat, %i.vj
  %i.vm = trunc <8 x i32> %i.vk to <8 x i16>
  %i.vn = trunc <8 x i32> %i.vl to <8 x i16>
  %i.vo = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <8 x i16> %i.vm, ptr %i.a, align 16, !tbaa !53
  store <8 x i16> %i.vn, ptr %i.vo, align 16, !tbaa !53
  %i.vp = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.vq = getelementptr inbounds nuw i8, ptr %3, i64 48
  %wide.load.1 = load <8 x i16>, ptr %i.vp, align 2, !tbaa !53
  %wide.load568.1 = load <8 x i16>, ptr %i.vq, align 2, !tbaa !53
  %i.vr = sext <8 x i16> %wide.load.1 to <8 x i32>
  %i.vs = sext <8 x i16> %wide.load568.1 to <8 x i32>
  %i.vt = shl nsw <8 x i32> %i.vr, splat (i32 6)
  %i.vu = shl nsw <8 x i32> %i.vs, splat (i32 6)
  %i.vv = sub <8 x i32> %broadcast.splat, %i.vt
  %i.vw = sub <8 x i32> %broadcast.splat, %i.vu
  %i.vx = trunc <8 x i32> %i.vv to <8 x i16>
  %i.vy = trunc <8 x i32> %i.vw to <8 x i16>
  %i.vz = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.wa = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <8 x i16> %i.vx, ptr %i.vz, align 16, !tbaa !53
  store <8 x i16> %i.vy, ptr %i.wa, align 16, !tbaa !53
  %i.wb = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.wc = getelementptr inbounds nuw i8, ptr %3, i64 80
  %wide.load.2 = load <8 x i16>, ptr %i.wb, align 2, !tbaa !53
  %wide.load568.2 = load <8 x i16>, ptr %i.wc, align 2, !tbaa !53
  %i.wd = sext <8 x i16> %wide.load.2 to <8 x i32>
  %i.we = sext <8 x i16> %wide.load568.2 to <8 x i32>
  %i.wf = shl nsw <8 x i32> %i.wd, splat (i32 6)
  %i.wg = shl nsw <8 x i32> %i.we, splat (i32 6)
  %i.wh = sub <8 x i32> %broadcast.splat, %i.wf
  %i.wi = sub <8 x i32> %broadcast.splat, %i.wg
  %i.wj = trunc <8 x i32> %i.wh to <8 x i16>
  %i.wk = trunc <8 x i32> %i.wi to <8 x i16>
  %i.wl = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.wm = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <8 x i16> %i.wj, ptr %i.wl, align 16, !tbaa !53
  store <8 x i16> %i.wk, ptr %i.wm, align 16, !tbaa !53
  %i.wn = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.wo = getelementptr inbounds nuw i8, ptr %3, i64 112
  %wide.load.3 = load <8 x i16>, ptr %i.wn, align 2, !tbaa !53
  %wide.load568.3 = load <8 x i16>, ptr %i.wo, align 2, !tbaa !53
  %i.wp = sext <8 x i16> %wide.load.3 to <8 x i32>
  %i.wq = sext <8 x i16> %wide.load568.3 to <8 x i32>
  %i.wr = shl nsw <8 x i32> %i.wp, splat (i32 6)
  %i.ws = shl nsw <8 x i32> %i.wq, splat (i32 6)
  %i.wt = sub <8 x i32> %broadcast.splat, %i.wr
  %i.wu = sub <8 x i32> %broadcast.splat, %i.ws
  %i.wv = trunc <8 x i32> %i.wt to <8 x i16>
  %i.ww = trunc <8 x i32> %i.wu to <8 x i16>
  %i.wx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.wy = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <8 x i16> %i.wv, ptr %i.wx, align 16, !tbaa !53
  store <8 x i16> %i.ww, ptr %i.wy, align 16, !tbaa !53
  br label %vector.body570

vector.body570:                                   ; preds = %vector.ph, %vector.body570
  %index571 = phi i64 [ %index.next575, %vector.body570 ], [ 0, %vector.ph ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.xr, %vector.body570 ], [ zeroinitializer, %vector.ph ]
  %vec.phi572 = phi <4 x i32> [ %i.xs, %vector.body570 ], [ zeroinitializer, %vector.ph ]
  %i.wz = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index571 ; 3 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 8 ; 2 uses
  %wide.load573 = load <4 x i16>, ptr %i.wz, align 2, !tbaa !53
  %wide.load574 = load <4 x i16>, ptr %i.xa, align 2, !tbaa !53
end_hunk_1
