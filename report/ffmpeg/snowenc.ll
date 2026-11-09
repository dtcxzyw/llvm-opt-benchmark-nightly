Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/snowenc?download=true
inline.NumInlined: 82
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 28
begin_hunk_0_@encode_blocks:bb.a
  %i.ny = sext i32 %i.ls to i64                   ; 2 uses
  %i.nz = getelementptr inbounds i8, ptr %i.lm, i64 %i.ny
  %i.oa = getelementptr inbounds i8, ptr %i.lk, i64 %i.ny
  %i.ob = sub nsw i32 0, %i.ls
  %i.oc = zext nneg i32 %i.ob to i64
  %i.od = sext i32 %i.lt to i64
  %i.oe = sub nsw i32 0, %i.lr
  %i.of = sext i32 %i.oe to i64
  %i.og = add nsw i64 %i.od, %i.of
  %i.oh = sext i32 %i.lo to i64
  %i.oi = sext i32 %i.mu to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph676.us.us.us.i
  %indvars.iv888.i = phi i64 [ %indvars.iv.next889.i, %bb.n ], [ %i.og, %.lr.ph676.us.us.us.i ] ; 2 uses
  %i.oj = mul nsw i64 %indvars.iv888.i, %i.oh     ; 2 uses
  %i.ok = getelementptr inbounds i8, ptr %i.nz, i64 %i.oj
  %i.ol = getelementptr inbounds i8, ptr %i.oa, i64 %i.oj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ok, ptr nonnull align 1 %i.ol, i64 %i.oc, i1 false)
  %indvars.iv.next889.i = add nsw i64 %indvars.iv888.i, 1 ; 2 uses
  %i.om = icmp slt i64 %indvars.iv.next889.i, %i.oi
  br i1 %i.om, label %bb.n, label %.loopexit625.us.us.us.i, !llvm.loop !477

.loopexit625.us.us.us.i:                          ; preds = %bb.n, %._crit_edge673.us.us.us.i
  %i.on = add nsw i32 %i.ls, %i.cz                ; 2 uses
  %i.oo = icmp sgt i32 %i.on, %i.lv
  %or.cond812.i = and i1 %.not.i, %i.oo
  br i1 %or.cond812.i, label %.lr.ph678.us.us.us.i, label %.loopexit.us.us.us.i

.lr.ph678.us.us.us.i:                             ; preds = %.loopexit625.us.us.us.i
  %i.op = sext i32 %i.lv to i64                   ; 2 uses
  %i.oq = getelementptr inbounds i8, ptr %i.lm, i64 %i.op
  %i.or = getelementptr inbounds i8, ptr %i.lk, i64 %i.op
  %i.os = sub nsw i32 %i.on, %i.lv
  %i.ot = zext nneg i32 %i.os to i64
  %i.ou = sext i32 %i.lt to i64
  %i.ov = sub nsw i32 0, %i.lr
  %i.ow = sext i32 %i.ov to i64
  %i.ox = add nsw i64 %i.ou, %i.ow
  %i.oy = sext i32 %i.lo to i64
  %i.oz = sext i32 %i.mu to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph678.us.us.us.i
  %indvars.iv891.i = phi i64 [ %indvars.iv.next892.i, %bb.o ], [ %i.ox, %.lr.ph678.us.us.us.i ] ; 2 uses
  %i.pa = mul nsw i64 %indvars.iv891.i, %i.oy     ; 2 uses
  %i.pb = getelementptr inbounds i8, ptr %i.oq, i64 %i.pa
  %i.pc = getelementptr inbounds i8, ptr %i.or, i64 %i.pa
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pb, ptr align 1 %i.pc, i64 %i.ot, i1 false)
  %indvars.iv.next892.i = add nsw i64 %indvars.iv891.i, 1 ; 2 uses
  %i.pd = icmp slt i64 %indvars.iv.next892.i, %i.oz
  br i1 %i.pd, label %bb.o, label %.loopexit.us.us.us.i, !llvm.loop !478

.loopexit.us.us.us.i:                             ; preds = %bb.o, %.loopexit625.us.us.us.i, %.loopexit628.us.us.us.i
  %i.pe = load i32, ptr %i.au, align 16, !tbaa !96
  %i.pf = icmp sgt i32 %i.pe, 0
  br i1 %i.pf, label %.lr.ph687.us.us.us.i, label %._crit_edge688.us.us.us.i

.lr.ph687.us.us.us.i:                             ; preds = %.loopexit.us.us.us.i
  %i.pg = trunc i64 %indvars.iv920.i to i32       ; 6 uses
  %i.ph = add i32 %i.pg, -1
  br label %bb.p

bb.p:                                             ; preds = %get_dc.exit.us.us.us.i, %.lr.ph687.us.us.us.i
  %indvars.iv909.i = phi i64 [ %indvars.iv.next910.i, %get_dc.exit.us.us.us.i ], [ 0, %.lr.ph687.us.us.us.i ] ; 8 uses
  %i.pi = getelementptr inbounds nuw [37160 x i8], ptr %i.as, i64 %indvars.iv909.i ; 2 uses
  %i.pj = load i32, ptr %i.p, align 8, !tbaa !83  ; 4 uses
  %i.pk = lshr i32 16, %i.pj                      ; 8 uses
  %.not.i562.us.us.us.i = icmp eq i64 %indvars.iv909.i, 0
  br i1 %.not.i562.us.us.us.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.pl = load i32, ptr %i.av, align 4, !tbaa !101 ; 3 uses
  %i.pm = lshr i32 %i.pk, %i.pl
  %i.pn = load i32, ptr %i.aw, align 16, !tbaa !102
  %i.po = lshr i32 %i.pk, %i.pn
  %i.pp = add nsw i32 %i.pl, %i.pj
  %i.pq = shl nuw nsw i32 %i.pk, 1
  %i.pr = lshr i32 %i.pq, %i.pl
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ps = shl nuw nsw i32 %i.pk, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn.pn.in.i.us.us.us.i = phi i32 [ %i.pp, %bb.q ], [ %i.pj, %bb.r ]
  %i.pt = phi i32 [ %i.pm, %bb.q ], [ %i.pk, %bb.r ] ; 38 uses
  %i.pu = phi i32 [ %i.po, %bb.q ], [ %i.pk, %bb.r ] ; 21 uses
  %i.pv = phi i32 [ %i.pr, %bb.q ], [ %i.ps, %bb.r ] ; 15 uses
  %.pn.pn.i.us.us.us.i = sext i32 %.pn.pn.in.i.us.us.us.i to i64
  %.in191.i.us.us.us.i = getelementptr inbounds [8 x i8], ptr @ff_obmc_tab, i64 %.pn.pn.i.us.us.us.i
  %i.pw = load ptr, ptr %.in191.i.us.us.us.i, align 8, !tbaa !100 ; 34 uses
  %i.px = load ptr, ptr %i.ar, align 16, !tbaa !113
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 64
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %indvars.iv909.i
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !87 ; 5 uses
  %i.qb = load ptr, ptr %i.aq, align 8, !tbaa !98
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.qb, i64 %indvars.iv909.i
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !100 ; 6 uses
  %i.qe = trunc i64 %indvars.iv909.i to i32       ; 5 uses
  %i.qf = shl i32 %i.qe, 2
  %i.qg = mul i32 %i.qf, %i.pk
  %i.qh = mul i32 %i.qg, %i.pk
  %i.qi = sext i32 %i.qh to i64                   ; 3 uses
  %i.qj = getelementptr inbounds [2 x i8], ptr %i.ax, i64 %i.qi ; 12 uses
  %i.qk = load i32, ptr %i.e, align 16, !tbaa !107
  %i.ql = shl i32 %i.qk, %i.pj
  %i.qm = load i32, ptr %i.pi, align 8, !tbaa !120 ; 12 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.pi, i64 4
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !121 ; 11 uses
  %i.qp = sext i32 %i.ql to i64
  %i.qq = mul nsw i64 %indvars.iv925.i, %i.qp
  %i.qr = load ptr, ptr %i.ak, align 8, !tbaa !133
  %i.qs = getelementptr [10 x i8], ptr %i.qr, i64 %i.qq
  %i.qt = getelementptr [10 x i8], ptr %i.qs, i64 %indvars.iv920.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %2, ptr noundef nonnull align 2 dereferenceable(10) %i.qt, i64 10, i1 false), !tbaa.struct !519
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 8 ; 2 uses
  %i.qv = load i8, ptr %i.qu, align 2, !tbaa !136
  %i.qw = or i8 %i.qv, 1
  store i8 %i.qw, ptr %i.qu, align 2, !tbaa !136
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qt, i64 5
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 %indvars.iv909.i
  store i8 0, ptr %i.qy, align 1, !tbaa !86
  %i.qz = shl nuw nsw i32 %i.pv, 1
  %i.ra = mul nuw nsw i32 %i.qz, %i.pv
  %i.rb = zext nneg i32 %i.ra to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.qj, i8 0, i64 %i.rb, i1 false)
  %i.rc = lshr i32 %i.pt, 1                       ; 12 uses
  %i.rd = lshr i32 %i.pu, 1                       ; 11 uses
  %i.re = mul nuw nsw i32 %i.pv, %i.pu            ; 9 uses
  %i.rf = icmp sgt i32 %i.qa, 111
  %i.rg = shl nsw i32 %i.qa, 4
  %i.rh = select i1 %i.rf, i32 16, i32 %i.rg      ; 2 uses
  %i.ri = mul i32 %i.rh, 3
  %i.rj = sext i32 %i.ri to i64                   ; 2 uses
  %i.rk = sext i32 %i.rh to i64                   ; 3 uses
  %i.rl = sext i32 %i.qa to i64                   ; 12 uses
  %i.rm = lshr i32 %i.pv, 1                       ; 2 uses
  %i.rn = zext nneg i32 %i.rm to i64              ; 4 uses
  %i.ro = mul i32 %i.rm, %i.pv
  %i.rp = zext i32 %i.ro to i64                   ; 3 uses
  %i.rq = mul nsw i32 %i.pt, %i.pg
  %.neg.i.us.us.us.i = sub i32 %i.rc, %i.rq       ; 9 uses
  %i.rr = mul nsw i32 %i.pu, %i.bv
  %.neg175.i.us.us.us.i = sub i32 %i.rd, %i.rr    ; 4 uses
  %i.rs = zext i32 %i.pv to i64                   ; 3 uses
  %i.rt = mul i32 %i.pt, %i.by
  %i.ru = sub i32 %i.rc, %i.rt
  %i.rv = mul i32 %i.pu, %i.bq
  %i.rw = sub i32 %i.rd, %i.rv
  %i.rx = mul i32 %i.pt, %i.bx
  %i.ry = sub i32 %i.rc, %i.rx
  %i.rz = mul i32 %i.pu, %i.bp
  %i.sa = sub i32 %i.rd, %i.rz
  %i.sb = shl nuw nsw i64 %i.rs, 1
  %stride.check356 = icmp slt i32 %i.qa, 0
  %stride.check = icmp slt i32 %i.qa, 0
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge208.i.us.us.us.i, %bb.s
  %.0162234.i.us.us.us.i = phi i32 [ 0, %bb.s ], [ %.1163.lcssa.i.us.us.us.i, %._crit_edge208.i.us.us.us.i ] ; 6 uses
  %.0165233.i.us.us.us.i = phi i32 [ 0, %bb.s ], [ %.1166.lcssa.i.us.us.us.i, %._crit_edge208.i.us.us.us.i ] ; 6 uses
  %.0170232.i.us.us.us.i = phi i32 [ 0, %bb.s ], [ %i.bbo, %._crit_edge208.i.us.us.us.i ] ; 9 uses
  %i.sc = and i32 %.0170232.i.us.us.us.i, 1       ; 2 uses
  %i.sd = add i32 %i.sc, %i.pg
  %i.se = mul i32 %i.pt, %i.sd
  %i.sf = add i32 %i.rc, %i.se
  %smin317 = call i32 @llvm.smin.i32(i32 %i.qm, i32 %i.sf)
  %i.sg = add i32 %indvars.iv894.i, %i.sc
  %i.sh = mul i32 %i.pt, %i.sg
  %i.si = add i32 %i.rc, %i.sh
  %smax318 = call i32 @llvm.smax.i32(i32 %i.si, i32 0)
  %i.sj = sub i32 %smin317, %smax318
  %i.sk = call i32 @llvm.umax.i32(i32 %i.sj, i32 1)
  %umax319 = zext i32 %i.sk to i64                ; 3 uses
  %i.sl = lshr i32 %.0170232.i.us.us.us.i, 1      ; 2 uses
  %i.sm = add i32 %i.sl, %i.bv
  %i.sn = mul i32 %i.pu, %i.sm
  %i.so = add i32 %i.rd, %i.sn
  %smin320 = call i32 @llvm.smin.i32(i32 %i.qo, i32 %i.so)
  %i.sp = add i32 %indvars.iv901.i, %i.sl
  %i.sq = mul i32 %i.pu, %i.sp
  %i.sr = add i32 %i.rd, %i.sq
  %smax321 = call i32 @llvm.smax.i32(i32 %i.sr, i32 0)
  %i.ss = sub i32 %smin320, %smax321
  %i.st = zext i32 %i.ss to i64
  %i.su = call i64 @llvm.usub.sat.i64(i64 %i.st, i64 1) ; 3 uses
  %i.sv = mul nsw i64 %i.su, %i.rl
  %i.sw = add i64 %i.sv, %umax319                 ; 4 uses
  %i.sx = mul nuw i64 %i.su, %i.rs
  %i.sy = add i64 %i.sx, %umax319                 ; 4 uses
  %i.sz = mul i64 %i.sb, %i.su
  %i.ta = shl nuw nsw i64 %umax319, 1
  %i.tb = and i32 %.0170232.i.us.us.us.i, 1       ; 2 uses
  %i.tc = add i32 %indvars.iv894.i, %i.tb
  %i.td = mul i32 %i.pt, %i.tc
  %i.te = add i32 %i.rc, %i.td
  %smax246 = call i32 @llvm.smax.i32(i32 %i.te, i32 0) ; 2 uses
  %i.tf = zext nneg i32 %smax246 to i64           ; 4 uses
  %i.tg = add nuw nsw i64 %i.tf, 1
  %i.th = add i32 %i.tb, %i.pg
  %i.ti = mul i32 %i.pt, %i.th
  %i.tj = add i32 %i.rc, %i.ti
  %smin247 = call i32 @llvm.smin.i32(i32 %i.qm, i32 %i.tj)
  %i.tk = zext i32 %smin247 to i64
  %umax248 = call i64 @llvm.umax.i64(i64 %i.tg, i64 %i.tk) ; 3 uses
  %20 = sub nsw i64 %umax248, %i.tf
  %21 = add nsw i64 %umax248, %i.qi
  %i.tl = add i32 %i.ry, %smax246
  %i.tm = lshr i32 %.0170232.i.us.us.us.i, 1      ; 2 uses
  %i.tn = add i32 %indvars.iv901.i, %i.tm
  %i.to = mul i32 %i.pu, %i.tn
  %i.tp = add i32 %i.rd, %i.to
  %smax249 = call i32 @llvm.smax.i32(i32 %i.tp, i32 0) ; 2 uses
  %i.tq = add i32 %i.sa, %smax249
  %i.tr = mul i32 %i.pv, %i.tq
  %i.ts = add i32 %i.tl, %i.tr
  %i.tt = zext nneg i32 %smax249 to i64           ; 2 uses
  %i.tu = add nuw nsw i64 %i.tt, 1
  %i.tv = add i32 %i.tm, %i.bv
  %i.tw = mul i32 %i.pu, %i.tv
  %i.tx = add i32 %i.rd, %i.tw
  %smin250 = call i32 @llvm.smin.i32(i32 %i.qo, i32 %i.tx)
  %i.ty = zext i32 %smin250 to i64
  %umax251 = call i64 @llvm.umax.i64(i64 %i.tu, i64 %i.ty)
  %i.tz = add nsw i64 %umax251, -1
  %i.ua = mul i64 %i.tz, %i.rl
  %i.ub = getelementptr i8, ptr %i.qd, i64 %umax248
  %scevgep = getelementptr i8, ptr %i.ub, i64 %i.ua
  %i.uc = mul nsw i64 %i.rl, %i.tt
  %i.ud = getelementptr i8, ptr %i.qd, i64 %i.uc
  %scevgep252 = getelementptr i8, ptr %i.ud, i64 %i.tf
  %i.ue = and i32 %.0170232.i.us.us.us.i, 1       ; 2 uses
  %i.uf = add i32 %indvars.iv894.i, %i.ue
  %i.ug = mul i32 %i.pt, %i.uf
  %i.uh = add i32 %i.rc, %i.ug
  %smax = call i32 @llvm.smax.i32(i32 %i.uh, i32 0) ; 2 uses
  %i.ui = zext nneg i32 %smax to i64              ; 2 uses
  %i.uj = add nuw nsw i64 %i.ui, 1
  %i.uk = add i32 %i.ue, %i.pg
  %i.ul = mul i32 %i.pt, %i.uk
  %i.um = add i32 %i.rc, %i.ul
  %smin = call i32 @llvm.smin.i32(i32 %i.qm, i32 %i.um)
  %i.un = zext i32 %smin to i64
  %umax = call i64 @llvm.umax.i64(i64 %i.uj, i64 %i.un)
  %i.uo = xor i64 %i.ui, -1
  %i.up = add nsw i64 %umax, %i.uo                ; 2 uses
  %i.uq = add i32 %i.ru, %smax
  %i.ur = lshr i32 %.0170232.i.us.us.us.i, 1
  %i.us = add i32 %indvars.iv901.i, %i.ur
  %i.ut = mul i32 %i.pu, %i.us
  %i.uu = add i32 %i.rd, %i.ut
  %smax226 = call i32 @llvm.smax.i32(i32 %i.uu, i32 0)
  %i.uv = add i32 %i.rw, %smax226
  %i.uw = mul i32 %i.pv, %i.uv
  %i.ux = add i32 %i.uq, %i.uw
  %i.uy = lshr i32 %.0170232.i.us.us.us.i, 1      ; 4 uses
  %i.uz = add i32 %i.uy, %indvars.iv901.i
  %i.va = mul i32 %i.uz, %i.pu
  %i.vb = add i32 %i.va, %i.rd                    ; 2 uses
  %smax904.i = tail call i32 @llvm.smax.i32(i32 %i.vb, i32 0)
  %i.vc = add i32 %i.vb, %i.pu
  %smin905.i = tail call i32 @llvm.smin.i32(i32 %i.qo, i32 %i.vc)
  %i.vd = sub i32 %smin905.i, %smax904.i
  %i.ve = tail call i32 @llvm.umax.i32(i32 %i.vd, i32 1)
  %umax906.i = zext i32 %i.ve to i64
  %i.vf = and i32 %.0170232.i.us.us.us.i, 1       ; 4 uses
  %i.vg = add i32 %i.vf, %indvars.iv894.i
  %i.vh = mul i32 %i.vg, %i.pt
  %i.vi = add i32 %i.vh, %i.rc                    ; 2 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.vi, i32 0)
  %i.vj = add i32 %i.vi, %i.pt
  %smin898.i = tail call i32 @llvm.smin.i32(i32 %i.qm, i32 %i.vj)
  %i.vk = sub i32 %smin898.i, %smax.i             ; 2 uses
  %i.vl = tail call i32 @llvm.umax.i32(i32 %i.vk, i32 1)
  %umax899.i = zext i32 %i.vl to i64              ; 3 uses
  %i.vm = add i32 %i.bw, %i.uy
  %i.vn = mul i32 %i.vm, %i.pu
  %i.vo = add i32 %i.vn, %i.rd
  %smax275.i.us.us.us.i = tail call i32 @llvm.smax.i32(i32 %i.vo, i32 0)
  %i.vp = zext nneg i32 %smax275.i.us.us.us.i to i64 ; 4 uses
  %i.vq = add i32 %i.ph, %i.vf
  %i.vr = mul i32 %i.vq, %i.pt
  %i.vs = add i32 %i.vr, %i.rc
  %smax271.i.us.us.us.i = tail call i32 @llvm.smax.i32(i32 %i.vs, i32 0)
  %i.vt = zext nneg i32 %smax271.i.us.us.us.i to i64 ; 15 uses
  %i.vu = add nuw nsw i32 %i.vf, %i.pg            ; 3 uses
  %i.vv = add nsw i32 %i.vu, -1                   ; 2 uses
  %i.vw = add nuw nsw i32 %i.uy, %i.bv            ; 3 uses
  %i.vx = add nsw i32 %i.vw, -1                   ; 2 uses
  %i.vy = mul nsw i32 %i.vv, %i.pt
  %i.vz = add nsw i32 %i.vy, %i.rc                ; 6 uses
  %i.wa = mul nsw i32 %i.vx, %i.pu
  %i.wb = add nsw i32 %i.wa, %i.rd                ; 6 uses
  %i.wc = mul nuw nsw i32 %i.vf, %i.pt
  %i.wd = zext nneg i32 %i.wc to i64
  %i.we = getelementptr inbounds nuw [2 x i8], ptr %i.qj, i64 %i.wd
  %i.wf = mul i32 %i.uy, %i.re
  %i.wg = sext i32 %i.wf to i64
  %i.wh = getelementptr inbounds [2 x i8], ptr %i.we, i64 %i.wg ; 2 uses
  %i.wi = load i32, ptr %i.e, align 16, !tbaa !107
  %i.wj = load i32, ptr %i.p, align 8, !tbaa !83  ; 2 uses
  %i.wk = shl i32 %i.wi, %i.wj                    ; 3 uses
  %i.wl = load i32, ptr %i.g, align 4, !tbaa !106
  %i.wm = shl i32 %i.wl, %i.wj
  %i.wn = load ptr, ptr %i.ak, align 8, !tbaa !133
  %i.wo = mul nsw i32 %i.wk, %i.vx
  %i.wp = add nsw i32 %i.wo, %i.vv
  %i.wq = sext i32 %i.wp to i64
  %i.wr = getelementptr inbounds [10 x i8], ptr %i.wn, i64 %i.wq ; 4 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 10 ; 3 uses
  %i.wt = sext i32 %i.wk to i64
  %i.wu = getelementptr inbounds [10 x i8], ptr %i.wr, i64 %i.wt ; 3 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 10 ; 3 uses
  %i.ww = load ptr, ptr %i.ay, align 8, !tbaa !134 ; 6 uses
  %i.wx = icmp eq i32 %i.vu, 0
  br i1 %i.wx, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not.i.i.us.us.us.i = icmp slt i32 %i.vu, %i.wk ; 2 uses
  %spec.select.i.i.us.us.us.i = select i1 %.not.i.i.us.us.us.i, ptr %i.ws, ptr %i.wr
  %spec.select260.i.i.us.us.us.i = select i1 %.not.i.i.us.us.us.i, ptr %i.wv, ptr %i.wu
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0228.i.i.us.us.us.i = phi ptr [ %i.wr, %bb.u ], [ %i.ws, %bb.t ] ; 2 uses
  %.0226.i.i.us.us.us.i = phi ptr [ %spec.select.i.i.us.us.us.i, %bb.u ], [ %i.ws, %bb.t ] ; 2 uses
  %.0224.i.i.us.us.us.i = phi ptr [ %i.wu, %bb.u ], [ %i.wv, %bb.t ] ; 3 uses
  %.0222.i.i.us.us.us.i = phi ptr [ %spec.select260.i.i.us.us.us.i, %bb.u ], [ %i.wv, %bb.t ] ; 3 uses
  %i.wy = icmp eq i32 %i.vw, 0
  br i1 %i.wy, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not249.i.i.us.us.us.i = icmp slt i32 %i.vw, %i.wm ; 2 uses
  %spec.select261.i.i.us.us.us.i = select i1 %.not249.i.i.us.us.us.i, ptr %.0224.i.i.us.us.us.i, ptr %.0228.i.i.us.us.us.i
  %spec.select262.i.i.us.us.us.i = select i1 %.not249.i.i.us.us.us.i, ptr %.0222.i.i.us.us.us.i, ptr %.0226.i.i.us.us.us.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.1229.i.i.us.us.us.i = phi ptr [ %.0228.i.i.us.us.us.i, %bb.w ], [ %.0224.i.i.us.us.us.i, %bb.v ] ; 20 uses
  %.1227.i.i.us.us.us.i = phi ptr [ %.0226.i.i.us.us.us.i, %bb.w ], [ %.0222.i.i.us.us.us.i, %bb.v ] ; 20 uses
  %.1225.i.i.us.us.us.i = phi ptr [ %spec.select261.i.i.us.us.us.i, %bb.w ], [ %.0224.i.i.us.us.us.i, %bb.v ] ; 20 uses
  %.1223.i.i.us.us.us.i = phi ptr [ %spec.select262.i.i.us.us.us.i, %bb.w ], [ %.0222.i.i.us.us.us.i, %bb.v ] ; 20 uses
  %i.wz = icmp slt i32 %i.vz, 0                   ; 3 uses
  br i1 %i.wz, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.xa = sext i32 %i.vz to i64
  %i.xb = sub nsw i64 0, %i.xa                    ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.pw, i64 %i.xb
  %i.xd = add nsw i32 %i.vz, %i.pt
  %i.xe = getelementptr inbounds nuw [2 x i8], ptr %i.wh, i64 %i.xb
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0237.i.i.us.us.us.i = phi i32 [ %i.xd, %bb.y ], [ %i.pt, %bb.x ] ; 2 uses
  %.0235.i.i.us.us.us.i = phi i32 [ 0, %bb.y ], [ %i.vz, %bb.x ] ; 6 uses
  %.0233.i.i.us.us.us.i = phi ptr [ %i.xc, %bb.y ], [ %i.pw, %bb.x ] ; 3 uses
  %.1231.i.i.us.us.us.i = phi ptr [ %i.xe, %bb.y ], [ %i.wh, %bb.x ] ; 3 uses
  %i.xf = add nsw i32 %.0235.i.i.us.us.us.i, %.0237.i.i.us.us.us.i
  %i.xg = icmp sgt i32 %i.xf, %i.qm
  %i.xh = sub nsw i32 %i.qm, %.0235.i.i.us.us.us.i
  %spec.select264.i.i.us.us.us.i = select i1 %i.xg, i32 %i.xh, i32 %.0237.i.i.us.us.us.i ; 5 uses
  %i.xi = icmp slt i32 %i.wb, 0                   ; 2 uses
  %i.xj = insertelement <2 x ptr> poison, ptr %.1231.i.i.us.us.us.i, i64 0
  %i.xk = insertelement <2 x ptr> %i.xj, ptr %.0233.i.i.us.us.us.i, i64 1
  br i1 %i.xi, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.xl = mul nsw i32 %i.wb, %i.pv
  %i.xm = sext i32 %i.xl to i64
  %i.xn = sub nsw i64 0, %i.xm                    ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %.0233.i.i.us.us.us.i, i64 %i.xn ; 2 uses
  %i.xp = add nsw i32 %i.wb, %i.pu
  %i.xq = getelementptr inbounds nuw [2 x i8], ptr %.1231.i.i.us.us.us.i, i64 %i.xn ; 2 uses
  %i.xr = insertelement <2 x ptr> poison, ptr %i.xq, i64 0
  %i.xs = insertelement <2 x ptr> %i.xr, ptr %i.xo, i64 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0239.i.i.us.us.us.i = phi i32 [ %i.xp, %bb.aa ], [ %i.pu, %bb.z ] ; 2 uses
  %.0236.i.i.us.us.us.i = phi i32 [ 0, %bb.aa ], [ %i.wb, %bb.z ] ; 6 uses
  %.1234.i.i.us.us.us.i = phi ptr [ %i.xo, %bb.aa ], [ %.0233.i.i.us.us.us.i, %bb.z ] ; 5 uses
  %.3.i.i.us.us.us.i = phi ptr [ %i.xq, %bb.aa ], [ %.1231.i.i.us.us.us.i, %bb.z ] ; 2 uses
  %i.xt = phi <2 x ptr> [ %i.xs, %bb.aa ], [ %i.xk, %bb.z ] ; 2 uses
  %i.xu = add nsw i32 %.0236.i.i.us.us.us.i, %.0239.i.i.us.us.us.i
  %i.xv = icmp sgt i32 %i.xu, %i.qo
  %i.xw = sub nsw i32 %i.qo, %.0236.i.i.us.us.us.i
  %spec.select265.i.i.us.us.us.i = select i1 %i.xv, i32 %i.xw, i32 %.0239.i.i.us.us.us.i ; 5 uses
  %i.xx = icmp slt i32 %spec.select264.i.i.us.us.us.i, 1
  %i.xy = icmp slt i32 %spec.select265.i.i.us.us.us.i, 1
  %or.cond5.i.i.us.us.us.i = select i1 %i.xx, i1 true, i1 %i.xy
  br i1 %or.cond5.i.i.us.us.us.i, label %add_yblock.exit.i.us.us.us.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.xz = getelementptr inbounds i8, ptr %i.ww, i64 %i.rj ; 11 uses
  %i.ya = getelementptr inbounds i8, ptr %i.xz, i64 %i.rk ; 5 uses
  tail call void @ff_snow_pred_block(ptr noundef nonnull %0, ptr noundef %i.xz, ptr noundef %i.ww, i64 noundef %i.rl, i32 noundef %.0235.i.i.us.us.us.i, i32 noundef %.0236.i.i.us.us.us.i, i32 noundef %spec.select264.i.i.us.us.us.i, i32 noundef %spec.select265.i.i.us.us.us.i, ptr noundef %.1229.i.i.us.us.us.i, i32 noundef %i.qe, i32 noundef %i.qm, i32 noundef %i.qo) #12
  %i.yb = getelementptr inbounds nuw i8, ptr %.1229.i.i.us.us.us.i, i64 8 ; 3 uses
  %i.yc = load i8, ptr %i.yb, align 2, !tbaa !136 ; 4 uses
  %i.yd = and i8 %i.yc, 1                         ; 2 uses
  %.not.i294.i.i.us.us.us.i = icmp eq i8 %i.yd, 0
  %.phi.trans.insert.i.us.us.us.i = getelementptr inbounds nuw i8, ptr %.1227.i.i.us.us.us.i, i64 8 ; 3 uses
  %.pre.i.us.us.us.i = load i8, ptr %.phi.trans.insert.i.us.us.us.i, align 2, !tbaa !136 ; 2 uses
  %i.ye = and i8 %.pre.i.us.us.us.i, 1
  %.not16.i295.i.i.us.us.us.i = icmp eq i8 %i.ye, 0
  %or.cond.i.us.us.us.i = select i1 %.not.i294.i.i.us.us.us.i, i1 true, i1 %.not16.i295.i.i.us.us.us.i
  br i1 %or.cond.i.us.us.us.i, label %same_block.exit300.i.i.us.us.us.i, label %.split.i.us.us.us.i

.split.i.us.us.us.i:                              ; preds = %bb.ac
  %i.yf = getelementptr inbounds nuw i8, ptr %.1229.i.i.us.us.us.i, i64 5
  %i.yg = load i8, ptr %i.yf, align 1, !tbaa !86
  %i.yh = getelementptr inbounds nuw i8, ptr %.1227.i.i.us.us.us.i, i64 5
  %i.yi = load i8, ptr %i.yh, align 1, !tbaa !86
  %i.yj = getelementptr inbounds nuw i8, ptr %.1229.i.i.us.us.us.i, i64 6
  %i.yk = load i8, ptr %i.yj, align 2, !tbaa !86
  %i.yl = getelementptr inbounds nuw i8, ptr %.1227.i.i.us.us.us.i, i64 6
  %i.ym = load i8, ptr %i.yl, align 2, !tbaa !86
  %i.yn = getelementptr inbounds nuw i8, ptr %.1229.i.i.us.us.us.i, i64 7
  %i.yo = load i8, ptr %i.yn, align 1, !tbaa !86
  %i.yp = getelementptr inbounds nuw i8, ptr %.1227.i.i.us.us.us.i, i64 7
  %i.yq = load i8, ptr %i.yp, align 1, !tbaa !86
  %i.yr = icmp eq i8 %i.yg, %i.yi
  %i.ys = icmp eq i8 %i.yk, %i.ym
  %i.yt = and i1 %i.yr, %i.ys
  %i.yu = icmp eq i8 %i.yo, %i.yq
  %.not18.i296.i.i.us.us.us.i = and i1 %i.yt, %i.yu
  br i1 %.not18.i296.i.i.us.us.us.i, label %bb.ae, label %bb.ad

same_block.exit300.i.i.us.us.us.i:                ; preds = %bb.ac
  %i.yv = load i16, ptr %.1229.i.i.us.us.us.i, align 2, !tbaa !137
  %i.yw = sext i16 %i.yv to i32
  %i.yx = load i16, ptr %.1227.i.i.us.us.us.i, align 2, !tbaa !137
  %i.yy = sext i16 %i.yx to i32
  %i.yz = sub nsw i32 %i.yw, %i.yy
  %i.za = getelementptr inbounds nuw i8, ptr %.1229.i.i.us.us.us.i, i64 2
  %i.zb = load i16, ptr %i.za, align 2, !tbaa !138
  %i.zc = sext i16 %i.zb to i32
  %i.zd = getelementptr inbounds nuw i8, ptr %.1227.i.i.us.us.us.i, i64 2
  %i.ze = load i16, ptr %i.zd, align 2, !tbaa !138
  %i.zf = sext i16 %i.ze to i32
  %i.zg = sub nsw i32 %i.zc, %i.zf
  %i.zh = getelementptr inbounds nuw i8, ptr %.1229.i.i.us.us.us.i, i64 4
  %i.zi = load i8, ptr %i.zh, align 2, !tbaa !139
  %i.zj = zext i8 %i.zi to i32
  %i.zk = getelementptr inbounds nuw i8, ptr %.1227.i.i.us.us.us.i, i64 4
  %i.zl = load i8, ptr %i.zk, align 2, !tbaa !139
  %i.zm = zext i8 %i.zl to i32
  %i.zn = sub nsw i32 %i.zj, %i.zm
  %i.zo = xor i8 %.pre.i.us.us.us.i, %i.yc
  %i.zp = and i8 %i.zo, 1
  %i.zq = zext nneg i8 %i.zp to i32
  %i.zr = or i32 %i.yz, %i.zq
  %i.zs = or i32 %i.zr, %i.zg
  %i.zt = or i32 %i.zs, %i.zn
  %.not17.i299.i.i.us.us.us.i = icmp eq i32 %i.zt, 0
  br i1 %.not17.i299.i.i.us.us.us.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %same_block.exit300.i.i.us.us.us.i, %.split.i.us.us.us.i
  %i.zu = getelementptr inbounds i8, ptr %i.ya, i64 %i.rk
  tail call void @ff_snow_pred_block(ptr noundef nonnull %0, ptr noundef %i.ya, ptr noundef %i.ww, i64 noundef %i.rl, i32 noundef %.0235.i.i.us.us.us.i, i32 noundef %.0236.i.i.us.us.us.i, i32 noundef %spec.select264.i.i.us.us.us.i, i32 noundef %spec.select265.i.i.us.us.us.i, ptr noundef nonnull %.1227.i.i.us.us.us.i, i32 noundef %i.qe, i32 noundef %i.qm, i32 noundef %i.qo) #12
  %.pre281.i.us.us.us.i = load i8, ptr %i.yb, align 2, !tbaa !136 ; 2 uses
  %.pre978.i = and i8 %.pre281.i.us.us.us.i, 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %same_block.exit300.i.i.us.us.us.i, %.split.i.us.us.us.i
  %.pre-phi979.i = phi i8 [ %.pre978.i, %bb.ad ], [ %i.yd, %same_block.exit300.i.i.us.us.us.i ], [ 1, %.split.i.us.us.us.i ] ; 4 uses
  %i.zv = phi i8 [ %.pre281.i.us.us.us.i, %bb.ad ], [ %i.yc, %same_block.exit300.i.i.us.us.us.i ], [ %i.yc, %.split.i.us.us.us.i ] ; 5 uses
  %.sroa.7.0.i.us.us.us.i = phi ptr [ %i.ya, %bb.ad ], [ %i.xz, %same_block.exit300.i.i.us.us.us.i ], [ %i.xz, %.split.i.us.us.us.i ] ; 8 uses
  %.0221.i.i.us.us.us.i = phi ptr [ %i.zu, %bb.ad ], [ %i.ya, %same_block.exit300.i.i.us.us.us.i ], [ %i.ya, %.split.i.us.us.us.i ] ; 7 uses
  %.not.i287.i.i.us.us.us.i = icmp eq i8 %.pre-phi979.i, 0
  %.phi.trans.insert283.i.us.us.us.i = getelementptr inbounds nuw i8, ptr %.1225.i.i.us.us.us.i, i64 8 ; 2 uses
  %.pre284.i.us.us.us.i = load i8, ptr %.phi.trans.insert283.i.us.us.us.i, align 2, !tbaa !136 ; 3 uses
  %i.zw = and i8 %.pre284.i.us.us.us.i, 1
  %.not16.i288.i.i.us.us.us.i = icmp eq i8 %i.zw, 0 ; 2 uses
  %or.cond321.i.us.us.us.i = select i1 %.not.i287.i.i.us.us.us.i, i1 true, i1 %.not16.i288.i.i.us.us.us.i
  br i1 %or.cond321.i.us.us.us.i, label %same_block.exit293.i.i.us.us.us.i, label %.split298.i.us.us.us.i

.split298.i.us.us.us.i:                           ; preds = %bb.ae
  %i.zx = getelementptr inbounds nuw i8, ptr %.1229.i.i.us.us.us.i, i64 5
  %i.zy = load i8, ptr %i.zx, align 1, !tbaa !86
  %i.zz = getelementptr inbounds nuw i8, ptr %.1225.i.i.us.us.us.i, i64 5
  %i.aaa = load i8, ptr %i.zz, align 1, !tbaa !86
  %i.aab = getelementptr inbounds nuw i8, ptr %.1229.i.i.us.us.us.i, i64 6
  %i.aac = load i8, ptr %i.aab, align 2, !tbaa !86
  %i.aad = getelementptr inbounds nuw i8, ptr %.1225.i.i.us.us.us.i, i64 6
end_hunk_0
begin_hunk_1_@encode_blocks:bb.a

.lr.ph.preheader.i.us.us.us.i:                    ; preds = %bb.ak, %same_block.exit.i.i.us.us.us.i, %.split302.i.us.us.us.i, %same_block.exit272.i.i.us.us.us.i, %.split301.i.us.us.us.i, %same_block.exit279.i.i.us.us.us.i, %.split300.i.us.us.us.i
  %.sroa.17.0.i.us.us.us.i = phi ptr [ %.1.i.i.us.us.us.i, %bb.ak ], [ %.sroa.7.0.i.us.us.us.i, %same_block.exit272.i.i.us.us.us.i ], [ %i.xz, %same_block.exit279.i.i.us.us.us.i ], [ %.sroa.12.0.i.us.us.us.i, %same_block.exit.i.i.us.us.us.i ], [ %i.xz, %.split300.i.us.us.us.i ], [ %.sroa.7.0.i.us.us.us.i, %.split301.i.us.us.us.i ], [ %.sroa.12.0.i.us.us.us.i, %.split302.i.us.us.us.i ] ; 4 uses
  %scevgep322 = getelementptr i8, ptr %.sroa.17.0.i.us.us.us.i, i64 %i.sw
  %scevgep323 = getelementptr i8, ptr %.sroa.12.0.i.us.us.us.i, i64 %i.sw
  %scevgep324 = getelementptr i8, ptr %.sroa.7.0.i.us.us.us.i, i64 %i.sw
  %scevgep325 = getelementptr i8, ptr %i.ww, i64 %i.rj
  %scevgep326 = getelementptr i8, ptr %scevgep325, i64 %i.sw
  %scevgep327 = getelementptr i8, ptr %.1234.i.i.us.us.us.i, i64 %i.sy
  %scevgep328 = getelementptr i8, ptr %.1234.i.i.us.us.us.i, i64 %i.rn ; 2 uses
  %scevgep329 = getelementptr i8, ptr %scevgep328, i64 %i.sy
  %scevgep330 = getelementptr i8, ptr %.1234.i.i.us.us.us.i, i64 %i.rp ; 2 uses
  %scevgep331 = getelementptr i8, ptr %scevgep330, i64 %i.sy
  %i.aid = getelementptr i8, ptr %.1234.i.i.us.us.us.i, i64 %i.rn
  %scevgep332 = getelementptr i8, ptr %i.aid, i64 %i.rp ; 2 uses
  %scevgep333 = getelementptr i8, ptr %scevgep332, i64 %i.sy
  %i.aie = getelementptr i8, ptr %.3.i.i.us.us.us.i, i64 %i.sz
  %scevgep334 = getelementptr i8, ptr %i.aie, i64 %i.ta ; 3 uses
  %i.aif = insertelement <8 x ptr> poison, ptr %scevgep333, i64 0
  %i.aig = insertelement <8 x ptr> %i.aif, ptr %scevgep331, i64 1
  %i.aih = insertelement <8 x ptr> %i.aig, ptr %scevgep329, i64 2
  %i.aii = insertelement <8 x ptr> %i.aih, ptr %scevgep334, i64 3
  %i.aij = insertelement <8 x ptr> %i.aii, ptr %scevgep326, i64 4
  %i.aik = insertelement <8 x ptr> %i.aij, ptr %scevgep324, i64 5
  %i.ail = insertelement <8 x ptr> %i.aik, ptr %scevgep323, i64 6
  %i.aim = insertelement <8 x ptr> %i.ail, ptr %scevgep322, i64 7
  %i.ain = insertelement <4 x ptr> poison, ptr %i.xz, i64 0
  %i.aio = insertelement <4 x ptr> %i.ain, ptr %.sroa.7.0.i.us.us.us.i, i64 1
  %i.aip = insertelement <4 x ptr> %i.aio, ptr %.sroa.12.0.i.us.us.us.i, i64 2
  %i.aiq = insertelement <4 x ptr> %i.aip, ptr %.sroa.17.0.i.us.us.us.i, i64 3
  %i.air = insertelement <4 x ptr> poison, ptr %scevgep334, i64 0
  %i.ais = shufflevector <4 x ptr> %i.air, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ait = insertelement <2 x ptr> poison, ptr %scevgep332, i64 0
  %i.aiu = insertelement <2 x ptr> %i.ait, ptr %scevgep330, i64 1
  %i.aiv = insertelement <2 x ptr> poison, ptr %scevgep334, i64 0 ; 2 uses
  %i.aiw = shufflevector <2 x ptr> %i.aiv, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.aix = insertelement <2 x ptr> poison, ptr %scevgep328, i64 0
  %i.aiy = insertelement <2 x ptr> %i.aiv, ptr %scevgep327, i64 1
  %i.aiz = shufflevector <2 x ptr> %i.aix, <2 x ptr> %i.xt, <2 x i32> <i32 0, i32 2>
  %min.iters.check336 = icmp ult i32 %i.vk, 8
  %i.aja = shufflevector <2 x ptr> %i.xt, <2 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0>
  %i.ajb = icmp ult <8 x ptr> %i.aja, %i.aim
  %i.ajc = icmp ult <2 x ptr> %i.aiu, %i.aiw
  %i.ajd = icmp ult <2 x ptr> %i.aiz, %i.aiy
  %i.aje = icmp ult <4 x ptr> %i.aiq, %i.ais
  %i.ajf = shufflevector <2 x i1> %i.ajc, <2 x i1> %i.ajd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ajg = shufflevector <4 x i1> %i.aje, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ajh = shufflevector <8 x i1> %i.ajf, <8 x i1> %i.ajg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.aji = and <8 x i1> %i.ajb, %i.ajh
  %i.ajj = bitcast <8 x i1> %i.aji to i8
  %i.ajk = icmp ne i8 %i.ajj, 0
  %op.rdx = or i1 %i.ajk, %stride.check356
  %n.vec371 = and i64 %umax899.i, 4294967288      ; 3 uses
  %cmp.n385 = icmp eq i64 %n.vec371, %umax899.i
  br label %.lr.ph.i.us.us.us.i

.lr.ph.i.us.us.us.i:                              ; preds = %._crit_edge.i.us.us.us.i, %.lr.ph.preheader.i.us.us.us.i
  %indvars.iv247.i.us.us.us.i = phi i64 [ 0, %.lr.ph.preheader.i.us.us.us.i ], [ %indvars.iv.next248.i.us.us.us.i, %._crit_edge.i.us.us.us.i ] ; 3 uses
  %i.ajl = mul nuw nsw i64 %indvars.iv247.i.us.us.us.i, %i.rs ; 2 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %.1234.i.i.us.us.us.i, i64 %i.ajl ; 4 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 %i.rn ; 2 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajm, i64 %i.rp ; 3 uses
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajo, i64 %i.rn ; 2 uses
  %i.ajq = mul nsw i64 %indvars.iv247.i.us.us.us.i, %i.rl ; 2 uses
  %invariant.gep.i.us.us.us.i = getelementptr inbounds nuw [2 x i8], ptr %.3.i.i.us.us.us.i, i64 %i.ajl ; 2 uses
  %brmerge = select i1 %min.iters.check336, i1 true, i1 %op.rdx
  br i1 %brmerge, label %scalar.ph335.preheader, label %vector.body372

vector.body372:                                   ; preds = %.lr.ph.i.us.us.us.i, %vector.body372
  %index373 = phi i64 [ %index.next383, %vector.body372 ], [ 0, %.lr.ph.i.us.us.us.i ] ; 7 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajm, i64 %index373
  %wide.load374 = load <8 x i8>, ptr %i.ajr, align 1, !tbaa !86, !alias.scope !520
  %i.ajs = zext <8 x i8> %wide.load374 to <8 x i32>
  %i.ajt = add nsw i64 %index373, %i.ajq          ; 4 uses
  %i.aju = getelementptr inbounds i8, ptr %.sroa.17.0.i.us.us.us.i, i64 %i.ajt
  %wide.load375 = load <8 x i8>, ptr %i.aju, align 1, !tbaa !86, !alias.scope !521
  %i.ajv = zext <8 x i8> %wide.load375 to <8 x i32>
  %i.ajw = mul nuw nsw <8 x i32> %i.ajv, %i.ajs
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajn, i64 %index373
  %wide.load376 = load <8 x i8>, ptr %i.ajx, align 1, !tbaa !86, !alias.scope !522
  %i.ajy = zext <8 x i8> %wide.load376 to <8 x i32>
  %i.ajz = getelementptr inbounds i8, ptr %.sroa.12.0.i.us.us.us.i, i64 %i.ajt
  %wide.load377 = load <8 x i8>, ptr %i.ajz, align 1, !tbaa !86, !alias.scope !523
  %i.aka = zext <8 x i8> %wide.load377 to <8 x i32>
  %i.akb = mul nuw nsw <8 x i32> %i.aka, %i.ajy
  %i.akc = add nuw nsw <8 x i32> %i.akb, %i.ajw
  %i.akd = getelementptr inbounds nuw i8, ptr %i.ajo, i64 %index373
  %wide.load378 = load <8 x i8>, ptr %i.akd, align 1, !tbaa !86, !alias.scope !524
  %i.ake = zext <8 x i8> %wide.load378 to <8 x i32>
  %i.akf = getelementptr inbounds i8, ptr %.sroa.7.0.i.us.us.us.i, i64 %i.ajt
  %wide.load379 = load <8 x i8>, ptr %i.akf, align 1, !tbaa !86, !alias.scope !525
  %i.akg = zext <8 x i8> %wide.load379 to <8 x i32>
  %i.akh = mul nuw nsw <8 x i32> %i.akg, %i.ake
  %i.aki = add nuw nsw <8 x i32> %i.akc, %i.akh
  %i.akj = getelementptr inbounds nuw i8, ptr %i.ajp, i64 %index373
  %wide.load380 = load <8 x i8>, ptr %i.akj, align 1, !tbaa !86, !alias.scope !526
  %i.akk = zext <8 x i8> %wide.load380 to <8 x i32>
  %i.akl = getelementptr inbounds i8, ptr %i.xz, i64 %i.ajt
  %wide.load381 = load <8 x i8>, ptr %i.akl, align 1, !tbaa !86, !alias.scope !527
  %i.akm = zext <8 x i8> %wide.load381 to <8 x i32>
  %i.akn = mul nuw nsw <8 x i32> %i.akm, %i.akk
  %i.ako = add nuw nsw <8 x i32> %i.aki, %i.akn
  %i.akp = lshr <8 x i32> %i.ako, splat (i32 2)
  %i.akq = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.us.us.us.i, i64 %index373 ; 2 uses
  %wide.load382 = load <8 x i16>, ptr %i.akq, align 2, !tbaa !125, !alias.scope !528, !noalias !529
  %i.akr = trunc nuw <8 x i32> %i.akp to <8 x i16>
  %i.aks = sub <8 x i16> %wide.load382, %i.akr
  store <8 x i16> %i.aks, ptr %i.akq, align 2, !tbaa !125, !alias.scope !528, !noalias !529
  %index.next383 = add nuw i64 %index373, 8       ; 2 uses
  %i.akt = icmp eq i64 %index.next383, %n.vec371
  br i1 %i.akt, label %middle.block384, label %vector.body372, !llvm.loop !489

middle.block384:                                  ; preds = %vector.body372
  br i1 %cmp.n385, label %._crit_edge.i.us.us.us.i, label %scalar.ph335.preheader

scalar.ph335.preheader:                           ; preds = %.lr.ph.i.us.us.us.i, %middle.block384
  %indvars.iv.i.us.us.us.i.ph = phi i64 [ %n.vec371, %middle.block384 ], [ 0, %.lr.ph.i.us.us.us.i ]
  br label %scalar.ph335

scalar.ph335:                                     ; preds = %scalar.ph335.preheader, %scalar.ph335
  %indvars.iv.i.us.us.us.i = phi i64 [ %indvars.iv.next.i.us.us.us.i, %scalar.ph335 ], [ %indvars.iv.i.us.us.us.i.ph, %scalar.ph335.preheader ] ; 7 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %i.ajm, i64 %indvars.iv.i.us.us.us.i
  %i.akv = load i8, ptr %i.aku, align 1, !tbaa !86
  %i.akw = zext i8 %i.akv to i32
  %i.akx = add nsw i64 %indvars.iv.i.us.us.us.i, %i.ajq ; 4 uses
  %i.aky = getelementptr inbounds i8, ptr %.sroa.17.0.i.us.us.us.i, i64 %i.akx
  %i.akz = load i8, ptr %i.aky, align 1, !tbaa !86
  %i.ala = zext i8 %i.akz to i32
  %i.alb = mul nuw nsw i32 %i.ala, %i.akw
  %i.alc = getelementptr inbounds nuw i8, ptr %i.ajn, i64 %indvars.iv.i.us.us.us.i
  %i.ald = load i8, ptr %i.alc, align 1, !tbaa !86
  %i.ale = zext i8 %i.ald to i32
  %i.alf = getelementptr inbounds i8, ptr %.sroa.12.0.i.us.us.us.i, i64 %i.akx
  %i.alg = load i8, ptr %i.alf, align 1, !tbaa !86
  %i.alh = zext i8 %i.alg to i32
  %i.ali = mul nuw nsw i32 %i.alh, %i.ale
  %i.alj = add nuw nsw i32 %i.ali, %i.alb
  %i.alk = getelementptr inbounds nuw i8, ptr %i.ajo, i64 %indvars.iv.i.us.us.us.i
  %i.all = load i8, ptr %i.alk, align 1, !tbaa !86
  %i.alm = zext i8 %i.all to i32
  %i.aln = getelementptr inbounds i8, ptr %.sroa.7.0.i.us.us.us.i, i64 %i.akx
  %i.alo = load i8, ptr %i.aln, align 1, !tbaa !86
  %i.alp = zext i8 %i.alo to i32
  %i.alq = mul nuw nsw i32 %i.alp, %i.alm
  %i.alr = add nuw nsw i32 %i.alj, %i.alq
  %i.als = getelementptr inbounds nuw i8, ptr %i.ajp, i64 %indvars.iv.i.us.us.us.i
  %i.alt = load i8, ptr %i.als, align 1, !tbaa !86
  %i.alu = zext i8 %i.alt to i32
  %i.alv = getelementptr inbounds i8, ptr %i.xz, i64 %i.akx
  %i.alw = load i8, ptr %i.alv, align 1, !tbaa !86
  %i.alx = zext i8 %i.alw to i32
  %i.aly = mul nuw nsw i32 %i.alx, %i.alu
  %i.alz = add nuw nsw i32 %i.alr, %i.aly
  %i.ama = lshr i32 %i.alz, 2
  %gep.i.us.us.us.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.us.us.us.i, i64 %indvars.iv.i.us.us.us.i ; 2 uses
  %i.amb = load i16, ptr %gep.i.us.us.us.i, align 2, !tbaa !125
  %i.amc = trunc nuw i32 %i.ama to i16
  %i.amd = sub i16 %i.amb, %i.amc
  store i16 %i.amd, ptr %gep.i.us.us.us.i, align 2, !tbaa !125
  %indvars.iv.next.i.us.us.us.i = add nuw nsw i64 %indvars.iv.i.us.us.us.i, 1 ; 2 uses
  %exitcond900.not.i = icmp eq i64 %indvars.iv.next.i.us.us.us.i, %umax899.i
  br i1 %exitcond900.not.i, label %._crit_edge.i.us.us.us.i, label %scalar.ph335, !llvm.loop !490

._crit_edge.i.us.us.us.i:                         ; preds = %scalar.ph335, %middle.block384
  %indvars.iv.next248.i.us.us.us.i = add nuw nsw i64 %indvars.iv247.i.us.us.us.i, 1 ; 2 uses
  %exitcond907.not.i = icmp eq i64 %indvars.iv.next248.i.us.us.us.i, %umax906.i
  br i1 %exitcond907.not.i, label %add_yblock.exit.i.us.us.us.i, label %.lr.ph.i.us.us.us.i, !llvm.loop !1

add_yblock.exit.i.us.us.us.i:                     ; preds = %._crit_edge.i.us.us.us.i, %bb.ab
  %i.ame = tail call i32 @llvm.smax.i32(i32 %i.wb, i32 0)
  %i.amf = add nsw i32 %i.wb, %i.pu               ; 2 uses
  %i.amg = tail call i32 @llvm.smin.i32(i32 %i.qo, i32 %i.amf) ; 2 uses
  %i.amh = icmp slt i32 %i.ame, %i.amg
  br i1 %i.amh, label %.lr.ph207.i.us.us.us.i, label %._crit_edge208.i.us.us.us.i

.lr.ph207.i.us.us.us.i:                           ; preds = %add_yblock.exit.i.us.us.us.i
  %i.ami = tail call i32 @llvm.smax.i32(i32 %i.vz, i32 0)
  %i.amj = add nsw i32 %i.vz, %i.pt               ; 2 uses
  %i.amk = tail call i32 @llvm.smin.i32(i32 %i.qm, i32 %i.amj) ; 2 uses
  %i.aml = icmp slt i32 %i.ami, %i.amk
  %i.amm = icmp sle i32 %i.amf, %i.qo             ; 4 uses
  %i.amn = icmp sle i32 %i.amj, %i.qm
  %.fr.us.us.i = freeze i1 %i.amn                 ; 8 uses
  br i1 %i.aml, label %.lr.ph207.split.us.i.us.us.us.i, label %._crit_edge208.i.us.us.us.i

.lr.ph207.split.us.i.us.us.us.i:                  ; preds = %.lr.ph207.i.us.us.us.i
  %i.amo = zext nneg i32 %i.amk to i64            ; 10 uses
  %i.amp = zext nneg i32 %i.amg to i64            ; 4 uses
  br i1 %i.xi, label %.lr.ph207.split.us.split.us.i.us.us.us.i, label %.lr.ph200.us.i.preheader.us.us.us.i

.lr.ph200.us.i.preheader.us.us.us.i:              ; preds = %.lr.ph207.split.us.i.us.us.us.i
  br i1 %i.wz, label %.lr.ph200.us.i.us.us.us.us.i, label %.lr.ph200.us.i.us725.us.us.i.preheader

.lr.ph200.us.i.us725.us.us.i.preheader:           ; preds = %.lr.ph200.us.i.preheader.us.us.us.i
  %i.amq = add nuw nsw i64 %i.vt, 1
  %i.amr = call i64 @llvm.umax.i64(i64 %i.amq, i64 %i.amo)
  %i.ams = sub nsw i64 %i.amr, %i.vt              ; 3 uses
  %min.iters.check = icmp ult i64 %i.ams, 8
  %i.amt = trunc i64 %i.up to i32
  %i.amu = icmp ugt i64 %i.up, 4294967295
  %invariant.op = sub i64 %21, %i.tf
  %22 = getelementptr i8, ptr %i.pw, i64 %20
  %n.vec = and i64 %i.ams, -8                     ; 3 uses
  %i.amv = add nsw i64 %n.vec, %i.vt
  %cmp.n = icmp eq i64 %i.ams, %n.vec
  br label %.lr.ph200.us.i.us725.us.us.i

.lr.ph200.us.i.us725.us.us.i:                     ; preds = %.lr.ph200.us.i.us725.us.us.i.preheader, %._crit_edge201.split.us220.i.split.us.us.us.i
  %indvar = phi i32 [ %indvar.next, %._crit_edge201.split.us220.i.split.us.us.us.i ], [ 0, %.lr.ph200.us.i.us725.us.us.i.preheader ] ; 3 uses
  %indvars.iv256.i.us726.us.us.i = phi i64 [ %indvars.iv.next257.i.us732.us.us.i, %._crit_edge201.split.us220.i.split.us.us.us.i ], [ %i.vp, %.lr.ph200.us.i.us725.us.us.i.preheader ] ; 3 uses
  %.1163206.us.i.us727.us.us.i = phi i32 [ %.us-phi761.us.us.i, %._crit_edge201.split.us220.i.split.us.us.us.i ], [ %.0162234.i.us.us.us.i, %.lr.ph200.us.i.us725.us.us.i.preheader ] ; 6 uses
  %.1166205.us.i.us728.us.us.i = phi i32 [ %.us-phi.us796.us.i, %._crit_edge201.split.us220.i.split.us.us.us.i ], [ %.0165233.i.us.us.us.i, %.lr.ph200.us.i.us725.us.us.i.preheader ] ; 6 uses
  %i.amw = mul i32 %i.pv, %indvar
  %i.amx = add i32 %i.ux, %i.amw                  ; 2 uses
  %i.amy = trunc nuw nsw i64 %indvars.iv256.i.us726.us.us.i to i32
  %i.amz = add i32 %.neg175.i.us.us.us.i, %i.amy  ; 2 uses
  %i.ana = mul nsw i32 %i.amz, %i.pv              ; 3 uses
  %.not176.us.i.us729.us.us.i = icmp slt i32 %i.amz, %i.pu
  %or.cond.us.i.us730.us.us.i = or i1 %i.amm, %.not176.us.i.us729.us.us.i
  %i.anb = mul nsw i64 %indvars.iv256.i.us726.us.us.i, %i.rl
  %invariant.gep313.i.us731.us.us.i = getelementptr i8, ptr %i.qd, i64 %i.anb ; 4 uses
  br i1 %or.cond.us.i.us730.us.us.i, label %.lr.ph200.us.i.us725.split.us.us.us.i, label %.lr.ph200.us.i.us725.split.us769.us.i

.lr.ph200.us.i.us725.split.us769.us.i:            ; preds = %.lr.ph200.us.i.us725.us.us.i, %bb.am
  %indvars.iv252.i.us.us770.us.i = phi i64 [ %indvars.iv.next253.i.us.us776.us.i, %bb.am ], [ %i.vt, %.lr.ph200.us.i.us725.us.us.i ] ; 3 uses
  %.2164198.us212.i.us.us771.us.i = phi i32 [ %i.aoh, %bb.am ], [ %.1163206.us.i.us727.us.us.i, %.lr.ph200.us.i.us725.us.us.i ]
  %.2167197.us213.i.us.us772.us.i = phi i32 [ %i.aof, %bb.am ], [ %.1166205.us.i.us728.us.us.i, %.lr.ph200.us.i.us725.us.us.i ]
  %i.anc = trunc nuw nsw i64 %indvars.iv252.i.us.us770.us.i to i32
  %i.and = add i32 %.neg.i.us.us.us.i, %i.anc     ; 2 uses
  %i.ane = add nsw i32 %i.and, %i.ana             ; 3 uses
  %i.anf = sext i32 %i.ane to i64                 ; 2 uses
  %i.ang = getelementptr inbounds i8, ptr %i.pw, i64 %i.anf
  %i.anh = load i8, ptr %i.ang, align 1, !tbaa !86
  %i.ani = zext i8 %i.anh to i32
  %i.anj = sub nsw i32 %i.ane, %i.re
  %i.ank = sext i32 %i.anj to i64
  %i.anl = getelementptr inbounds i8, ptr %i.pw, i64 %i.ank
  %i.anm = load i8, ptr %i.anl, align 1, !tbaa !86
  %i.ann = zext i8 %i.anm to i32
  %i.ano = add nuw nsw i32 %i.ann, %i.ani         ; 2 uses
  %.not177.us217.i.us.us773.us.i = icmp slt i32 %i.and, %i.pt
  %or.cond178.us218.i.us.us.us.i = or i1 %.fr.us.us.i, %.not177.us217.i.us.us773.us.i
  br i1 %or.cond178.us218.i.us.us.us.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph200.us.i.us725.split.us769.us.i
  %i.anp = sub nsw i32 %i.ane, %i.pt
  %i.anq = sext i32 %i.anp to i64
  %i.anr = getelementptr inbounds i8, ptr %i.pw, i64 %i.anq
  %i.ans = load i8, ptr %i.anr, align 1, !tbaa !86
  %i.ant = zext i8 %i.ans to i32
  %i.anu = add nuw nsw i32 %i.ano, %i.ant
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph200.us.i.us725.split.us769.us.i
  %.3.us219.i.us.us774.us.i = phi i32 [ %i.anu, %bb.al ], [ %i.ano, %.lr.ph200.us.i.us725.split.us769.us.i ] ; 3 uses
  %i.anv = getelementptr inbounds [2 x i8], ptr %i.qj, i64 %i.anf ; 2 uses
  %i.anw = load i16, ptr %i.anv, align 2, !tbaa !125
  %i.anx = sext i16 %i.anw to i32
  %i.any = sub nsw i32 8, %i.anx                  ; 2 uses
  %i.anz = trunc i32 %i.any to i16
  store i16 %i.anz, ptr %i.anv, align 2, !tbaa !125
  %gep314.i.us.us775.us.i = getelementptr i8, ptr %invariant.gep313.i.us731.us.us.i, i64 %indvars.iv252.i.us.us770.us.i
  %i.aoa = load i8, ptr %gep314.i.us.us775.us.i, align 1, !tbaa !86
  %i.aob = zext i8 %i.aoa to i32
  %i.aoc = ashr i32 %i.any, 4
  %i.aod = sub nsw i32 %i.aob, %i.aoc
  %i.aoe = mul nsw i32 %i.aod, %.3.us219.i.us.us774.us.i
  %i.aof = add nsw i32 %i.aoe, %.2167197.us213.i.us.us772.us.i ; 2 uses
  %i.aog = mul nuw nsw i32 %.3.us219.i.us.us774.us.i, %.3.us219.i.us.us774.us.i
  %i.aoh = add nsw i32 %i.aog, %.2164198.us212.i.us.us771.us.i ; 2 uses
  %indvars.iv.next253.i.us.us776.us.i = add nuw nsw i64 %indvars.iv252.i.us.us770.us.i, 1 ; 2 uses
  %i.aoi = icmp samesign ult i64 %indvars.iv.next253.i.us.us776.us.i, %i.amo
  br i1 %i.aoi, label %.lr.ph200.us.i.us725.split.us769.us.i, label %._crit_edge201.split.us220.i.split.us.us.us.i, !llvm.loop !491

.lr.ph200.us.i.us725.split.us.us.us.i:            ; preds = %.lr.ph200.us.i.us725.us.us.i
  br i1 %.fr.us.us.i, label %.lr.ph200.us.i.us725.split.us.split.us.us.us.i, label %.lr.ph200.us.i.us725.split.us.split.us780.us.i

.lr.ph200.us.i.us725.split.us.split.us780.us.i:   ; preds = %.lr.ph200.us.i.us725.split.us.us.us.i, %bb.ao
  %indvars.iv252.i.us.us.us781.us.i = phi i64 [ %indvars.iv.next253.i.us.us.us785.us.i, %bb.ao ], [ %i.vt, %.lr.ph200.us.i.us725.split.us.us.us.i ] ; 3 uses
  %.2164198.us212.i.us.us.us782.us.i = phi i32 [ %i.api, %bb.ao ], [ %.1163206.us.i.us727.us.us.i, %.lr.ph200.us.i.us725.split.us.us.us.i ]
  %.2167197.us213.i.us.us.us783.us.i = phi i32 [ %i.apg, %bb.ao ], [ %.1166205.us.i.us728.us.us.i, %.lr.ph200.us.i.us725.split.us.us.us.i ]
  %i.aoj = trunc nuw nsw i64 %indvars.iv252.i.us.us.us781.us.i to i32
  %i.aok = add i32 %.neg.i.us.us.us.i, %i.aoj     ; 2 uses
  %i.aol = add nsw i32 %i.aok, %i.ana             ; 2 uses
  %i.aom = sext i32 %i.aol to i64                 ; 2 uses
  %i.aon = getelementptr inbounds i8, ptr %i.pw, i64 %i.aom
  %i.aoo = load i8, ptr %i.aon, align 1, !tbaa !86
  %i.aop = zext i8 %i.aoo to i32                  ; 2 uses
  %.not177.us217.i.us.us.us.us.i = icmp slt i32 %i.aok, %i.pt
  br i1 %.not177.us217.i.us.us.us.us.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.lr.ph200.us.i.us725.split.us.split.us780.us.i
  %i.aoq = sub nsw i32 %i.aol, %i.pt
  %i.aor = sext i32 %i.aoq to i64
  %i.aos = getelementptr inbounds i8, ptr %i.pw, i64 %i.aor
  %i.aot = load i8, ptr %i.aos, align 1, !tbaa !86
  %i.aou = zext i8 %i.aot to i32
  %i.aov = add nuw nsw i32 %i.aou, %i.aop
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.lr.ph200.us.i.us725.split.us.split.us780.us.i
  %.3.us219.i.us.us.us.us.i = phi i32 [ %i.aov, %bb.an ], [ %i.aop, %.lr.ph200.us.i.us725.split.us.split.us780.us.i ] ; 3 uses
  %i.aow = getelementptr inbounds [2 x i8], ptr %i.qj, i64 %i.aom ; 2 uses
  %i.aox = load i16, ptr %i.aow, align 2, !tbaa !125
  %i.aoy = sext i16 %i.aox to i32
  %i.aoz = sub nsw i32 8, %i.aoy                  ; 2 uses
  %i.apa = trunc i32 %i.aoz to i16
  store i16 %i.apa, ptr %i.aow, align 2, !tbaa !125
  %gep314.i.us.us.us784.us.i = getelementptr i8, ptr %invariant.gep313.i.us731.us.us.i, i64 %indvars.iv252.i.us.us.us781.us.i
  %i.apb = load i8, ptr %gep314.i.us.us.us784.us.i, align 1, !tbaa !86
  %i.apc = zext i8 %i.apb to i32
  %i.apd = ashr i32 %i.aoz, 4
  %i.ape = sub nsw i32 %i.apc, %i.apd
  %i.apf = mul nsw i32 %i.ape, %.3.us219.i.us.us.us.us.i
  %i.apg = add nsw i32 %i.apf, %.2167197.us213.i.us.us.us783.us.i ; 2 uses
  %i.aph = mul nuw nsw i32 %.3.us219.i.us.us.us.us.i, %.3.us219.i.us.us.us.us.i
  %i.api = add nsw i32 %i.aph, %.2164198.us212.i.us.us.us782.us.i ; 2 uses
  %indvars.iv.next253.i.us.us.us785.us.i = add nuw nsw i64 %indvars.iv252.i.us.us.us781.us.i, 1 ; 2 uses
  %i.apj = icmp samesign ult i64 %indvars.iv.next253.i.us.us.us785.us.i, %i.amo
  br i1 %i.apj, label %.lr.ph200.us.i.us725.split.us.split.us780.us.i, label %._crit_edge201.split.us220.i.split.us.us.us.i, !llvm.loop !491

.lr.ph200.us.i.us725.split.us.split.us.us.us.i:   ; preds = %.lr.ph200.us.i.us725.split.us.us.us.i
  %invariant.op.us.us.i = add i32 %i.ana, %.neg.i.us.us.us.i ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph200.us.i.us725.split.us.split.us.us.us.i
  %i.apk = add i32 %i.amx, %i.amt
  %i.apl = icmp slt i32 %i.apk, %i.amx
  %i.apm = or i1 %i.apl, %i.amu
  br i1 %i.apm, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.apn = mul i32 %indvar, %i.pv
  %i.apo = add i32 %i.ts, %i.apn
  %i.app = sext i32 %i.apo to i64                 ; 4 uses
  %i.apq = add nsw i64 %i.qi, %i.app
  %i.apr = shl nsw i64 %i.apq, 1
  %i.aps = getelementptr i8, ptr %0, i64 %i.apr
  %i.apt = getelementptr i8, ptr %i.aps, i64 172400 ; 2 uses
  %i.apu = add i64 %i.app, %invariant.op
  %i.apv = shl nsw i64 %i.apu, 1
  %i.apw = getelementptr i8, ptr %0, i64 %i.apv
  %i.apx = getelementptr i8, ptr %i.apw, i64 172400 ; 2 uses
  %23 = getelementptr i8, ptr %i.pw, i64 %i.app
  %i.apy = getelementptr i8, ptr %22, i64 %i.app
  %bound0 = icmp ult ptr %scevgep252, %i.apx
  %bound1 = icmp ult ptr %i.apt, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.apz = or i1 %found.conflict, %stride.check
  %bound0253 = icmp ult ptr %i.apt, %i.apy
  %bound1254 = icmp ult ptr %23, %i.apx
  %found.conflict255 = and i1 %bound0253, %bound1254
  %conflict.rdx = or i1 %i.apz, %found.conflict255
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.aqa = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1163206.us.i.us727.us.us.i, i64 0
  %i.aqb = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1166205.us.i.us728.us.us.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.aqa, %vector.ph ], [ %i.arg, %vector.body ]
  %vec.phi256 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.arh, %vector.body ]
  %vec.phi257 = phi <4 x i32> [ %i.aqb, %vector.ph ], [ %i.arc, %vector.body ]
  %vec.phi258 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ard, %vector.body ]
  %i.aqc = add nuw i64 %index, %i.vt              ; 2 uses
  %i.aqd = trunc nuw nsw i64 %i.aqc to i32
  %i.aqe = add i32 %invariant.op.us.us.i, %i.aqd
  %i.aqf = sext i32 %i.aqe to i64                 ; 2 uses
  %i.aqg = getelementptr inbounds i8, ptr %i.pw, i64 %i.aqf ; 2 uses
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqg, i64 4
  %wide.load = load <4 x i8>, ptr %i.aqg, align 1, !tbaa !86, !alias.scope !530
  %wide.load259 = load <4 x i8>, ptr %i.aqh, align 1, !tbaa !86, !alias.scope !530
  %i.aqi = zext <4 x i8> %wide.load to <4 x i32>  ; 3 uses
  %i.aqj = zext <4 x i8> %wide.load259 to <4 x i32> ; 3 uses
  %i.aqk = getelementptr inbounds [2 x i8], ptr %i.qj, i64 %i.aqf ; 3 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqk, i64 8 ; 2 uses
  %wide.load260 = load <4 x i16>, ptr %i.aqk, align 2, !tbaa !125, !alias.scope !531, !noalias !530
  %wide.load261 = load <4 x i16>, ptr %i.aql, align 2, !tbaa !125, !alias.scope !531, !noalias !530
  %i.aqm = sext <4 x i16> %wide.load260 to <4 x i32>
  %i.aqn = sext <4 x i16> %wide.load261 to <4 x i32>
  %i.aqo = sub nsw <4 x i32> splat (i32 8), %i.aqm ; 2 uses
  %i.aqp = sub nsw <4 x i32> splat (i32 8), %i.aqn ; 2 uses
  %i.aqq = trunc <4 x i32> %i.aqo to <4 x i16>
  %i.aqr = trunc <4 x i32> %i.aqp to <4 x i16>
  store <4 x i16> %i.aqq, ptr %i.aqk, align 2, !tbaa !125, !alias.scope !531, !noalias !530
  store <4 x i16> %i.aqr, ptr %i.aql, align 2, !tbaa !125, !alias.scope !531, !noalias !530
  %i.aqs = getelementptr i8, ptr %invariant.gep313.i.us731.us.us.i, i64 %i.aqc ; 2 uses
  %i.aqt = getelementptr i8, ptr %i.aqs, i64 4
  %wide.load262 = load <4 x i8>, ptr %i.aqs, align 1, !tbaa !86, !alias.scope !532, !noalias !531
  %wide.load263 = load <4 x i8>, ptr %i.aqt, align 1, !tbaa !86, !alias.scope !532, !noalias !531
  %i.aqu = zext <4 x i8> %wide.load262 to <4 x i32>
  %i.aqv = zext <4 x i8> %wide.load263 to <4 x i32>
  %i.aqw = ashr <4 x i32> %i.aqo, splat (i32 4)
  %i.aqx = ashr <4 x i32> %i.aqp, splat (i32 4)
  %i.aqy = sub nsw <4 x i32> %i.aqu, %i.aqw
  %i.aqz = sub nsw <4 x i32> %i.aqv, %i.aqx
  %i.ara = mul nsw <4 x i32> %i.aqy, %i.aqi
  %i.arb = mul nsw <4 x i32> %i.aqz, %i.aqj
  %i.arc = add <4 x i32> %i.ara, %vec.phi257      ; 2 uses
  %i.ard = add <4 x i32> %i.arb, %vec.phi258      ; 2 uses
  %i.are = mul nuw nsw <4 x i32> %i.aqi, %i.aqi
  %i.arf = mul nuw nsw <4 x i32> %i.aqj, %i.aqj
  %i.arg = add <4 x i32> %i.are, %vec.phi         ; 2 uses
  %i.arh = add <4 x i32> %i.arf, %vec.phi256      ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ari = icmp eq i64 %index.next, %n.vec
  br i1 %i.ari, label %middle.block, label %vector.body, !llvm.loop !496

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.arh, %i.arg
  %i.arj = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %bin.rdx264 = add <4 x i32> %i.ard, %i.arc
  %i.ark = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx264) ; 2 uses
  br i1 %cmp.n, label %._crit_edge201.split.us220.i.split.us.us.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph200.us.i.us725.split.us.split.us.us.us.i, %middle.block
  %indvars.iv252.i.us.us.us.us789.us.i.ph = phi i64 [ %i.vt, %vector.memcheck ], [ %i.vt, %vector.scevcheck ], [ %i.vt, %.lr.ph200.us.i.us725.split.us.split.us.us.us.i ], [ %i.amv, %middle.block ]
  %.2164198.us212.i.us.us.us.us790.us.i.ph = phi i32 [ %.1163206.us.i.us727.us.us.i, %vector.memcheck ], [ %.1163206.us.i.us727.us.us.i, %vector.scevcheck ], [ %.1163206.us.i.us727.us.us.i, %.lr.ph200.us.i.us725.split.us.split.us.us.us.i ], [ %i.arj, %middle.block ]
  %.2167197.us213.i.us.us.us.us791.us.i.ph = phi i32 [ %.1166205.us.i.us728.us.us.i, %vector.memcheck ], [ %.1166205.us.i.us728.us.us.i, %vector.scevcheck ], [ %.1166205.us.i.us728.us.us.i, %.lr.ph200.us.i.us725.split.us.split.us.us.us.i ], [ %i.ark, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv252.i.us.us.us.us789.us.i = phi i64 [ %indvars.iv.next253.i.us.us.us.us793.us.i, %scalar.ph ], [ %indvars.iv252.i.us.us.us.us789.us.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.2164198.us212.i.us.us.us.us790.us.i = phi i32 [ %i.asc, %scalar.ph ], [ %.2164198.us212.i.us.us.us.us790.us.i.ph, %scalar.ph.preheader ]
  %.2167197.us213.i.us.us.us.us791.us.i = phi i32 [ %i.asa, %scalar.ph ], [ %.2167197.us213.i.us.us.us.us791.us.i.ph, %scalar.ph.preheader ]
  %i.arl = trunc nuw nsw i64 %indvars.iv252.i.us.us.us.us789.us.i to i32
  %.reass.us.us.i = add i32 %invariant.op.us.us.i, %i.arl
  %i.arm = sext i32 %.reass.us.us.i to i64        ; 2 uses
  %i.arn = getelementptr inbounds i8, ptr %i.pw, i64 %i.arm
  %i.aro = load i8, ptr %i.arn, align 1, !tbaa !86
  %i.arp = zext i8 %i.aro to i32                  ; 3 uses
  %i.arq = getelementptr inbounds [2 x i8], ptr %i.qj, i64 %i.arm ; 2 uses
  %i.arr = load i16, ptr %i.arq, align 2, !tbaa !125
  %i.ars = sext i16 %i.arr to i32
  %i.art = sub nsw i32 8, %i.ars                  ; 2 uses
  %i.aru = trunc i32 %i.art to i16
  store i16 %i.aru, ptr %i.arq, align 2, !tbaa !125
  %gep314.i.us.us.us.us792.us.i = getelementptr i8, ptr %invariant.gep313.i.us731.us.us.i, i64 %indvars.iv252.i.us.us.us.us789.us.i
  %i.arv = load i8, ptr %gep314.i.us.us.us.us792.us.i, align 1, !tbaa !86
  %i.arw = zext i8 %i.arv to i32
  %i.arx = ashr i32 %i.art, 4
  %i.ary = sub nsw i32 %i.arw, %i.arx
  %i.arz = mul nsw i32 %i.ary, %i.arp
  %i.asa = add nsw i32 %i.arz, %.2167197.us213.i.us.us.us.us791.us.i ; 2 uses
  %i.asb = mul nuw nsw i32 %i.arp, %i.arp
  %i.asc = add nsw i32 %i.asb, %.2164198.us212.i.us.us.us.us790.us.i ; 2 uses
  %indvars.iv.next253.i.us.us.us.us793.us.i = add nuw nsw i64 %indvars.iv252.i.us.us.us.us789.us.i, 1 ; 2 uses
  %i.asd = icmp samesign ult i64 %indvars.iv.next253.i.us.us.us.us793.us.i, %i.amo
  br i1 %i.asd, label %scalar.ph, label %._crit_edge201.split.us220.i.split.us.us.us.i, !llvm.loop !497

._crit_edge201.split.us220.i.split.us.us.us.i:    ; preds = %bb.am, %bb.ao, %scalar.ph, %middle.block
  %.us-phi.us796.us.i = phi i32 [ %i.asa, %scalar.ph ], [ %i.apg, %bb.ao ], [ %i.ark, %middle.block ], [ %i.aof, %bb.am ] ; 2 uses
  %.us-phi761.us.us.i = phi i32 [ %i.asc, %scalar.ph ], [ %i.api, %bb.ao ], [ %i.arj, %middle.block ], [ %i.aoh, %bb.am ] ; 2 uses
  %indvars.iv.next257.i.us732.us.us.i = add nuw nsw i64 %indvars.iv256.i.us726.us.us.i, 1 ; 2 uses
  %i.ase = icmp samesign ult i64 %indvars.iv.next257.i.us732.us.us.i, %i.amp
  %indvar.next = add i32 %indvar, 1
  br i1 %i.ase, label %.lr.ph200.us.i.us725.us.us.i, label %._crit_edge208.i.us.us.us.i, !llvm.loop !498

.lr.ph200.us.i.us.us.us.us.i:                     ; preds = %.lr.ph200.us.i.preheader.us.us.us.i, %._crit_edge201.split.us220.i.split.us.us.us.us.us.i
  %indvars.iv256.i.us.us.us.us.i = phi i64 [ %indvars.iv.next257.i.us.us.us.us.i, %._crit_edge201.split.us220.i.split.us.us.us.us.us.i ], [ %i.vp, %.lr.ph200.us.i.preheader.us.us.us.i ] ; 3 uses
  %.1163206.us.i.us.us.us.us.i = phi i32 [ %.us-phi682.us.us.us.i, %._crit_edge201.split.us220.i.split.us.us.us.us.us.i ], [ %.0162234.i.us.us.us.i, %.lr.ph200.us.i.preheader.us.us.us.i ] ; 2 uses
  %.1166205.us.i.us.us.us.us.i = phi i32 [ %.us-phi.us.us.us.i, %._crit_edge201.split.us220.i.split.us.us.us.us.us.i ], [ %.0165233.i.us.us.us.i, %.lr.ph200.us.i.preheader.us.us.us.i ] ; 2 uses
  %i.asf = trunc nuw nsw i64 %indvars.iv256.i.us.us.us.us.i to i32
  %i.asg = add i32 %.neg175.i.us.us.us.i, %i.asf  ; 2 uses
  %i.ash = mul nsw i32 %i.asg, %i.pv              ; 2 uses
  %.not176.us.i.us.us.us.us.i = icmp slt i32 %i.asg, %i.pu
  %or.cond.us.i.us.us.us.us.i = or i1 %i.amm, %.not176.us.i.us.us.us.us.i
  %i.asi = mul nsw i64 %indvars.iv256.i.us.us.us.us.i, %i.rl
  %invariant.gep313.i.us.us.us.us.i = getelementptr i8, ptr %i.qd, i64 %i.asi ; 2 uses
  br i1 %or.cond.us.i.us.us.us.us.i, label %.lr.ph200.us.i.split.us.us.split.us.us.us.us.i, label %.lr.ph200.us.i.split.us.us.split.us736.us.us.i

.lr.ph200.us.i.split.us.us.split.us736.us.us.i:   ; preds = %.lr.ph200.us.i.us.us.us.us.i, %bb.aq
  %indvars.iv252.i.us.us.us737.us.us.i = phi i64 [ %indvars.iv.next253.i.us.us.us744.us.us.i, %bb.aq ], [ %i.vt, %.lr.ph200.us.i.us.us.us.us.i ] ; 3 uses
  %.2164198.us212.i.us.us.us738.us.us.i = phi i32 [ %i.atu, %bb.aq ], [ %.1163206.us.i.us.us.us.us.i, %.lr.ph200.us.i.us.us.us.us.i ]
  %.2167197.us213.i.us.us.us739.us.us.i = phi i32 [ %i.ats, %bb.aq ], [ %.1166205.us.i.us.us.us.us.i, %.lr.ph200.us.i.us.us.us.us.i ]
  %i.asj = trunc nuw nsw i64 %indvars.iv252.i.us.us.us737.us.us.i to i32
  %i.ask = add i32 %.neg.i.us.us.us.i, %i.asj     ; 2 uses
  %i.asl = add nsw i32 %i.ask, %i.ash             ; 4 uses
  %i.asm = sext i32 %i.asl to i64                 ; 2 uses
  %i.asn = getelementptr inbounds i8, ptr %i.pw, i64 %i.asm
  %i.aso = load i8, ptr %i.asn, align 1, !tbaa !86
  %i.asp = zext i8 %i.aso to i32
  %i.asq = add nsw i32 %i.asl, %i.pt
  %i.asr = sext i32 %i.asq to i64
  %i.ass = getelementptr inbounds i8, ptr %i.pw, i64 %i.asr
  %i.ast = load i8, ptr %i.ass, align 1, !tbaa !86
  %i.asu = zext i8 %i.ast to i32
  %i.asv = add nuw nsw i32 %i.asu, %i.asp
  %i.asw = sub nsw i32 %i.asl, %i.re
  %i.asx = sext i32 %i.asw to i64
  %i.asy = getelementptr inbounds i8, ptr %i.pw, i64 %i.asx
  %i.asz = load i8, ptr %i.asy, align 1, !tbaa !86
  %i.ata = zext i8 %i.asz to i32
  %i.atb = add nuw nsw i32 %i.asv, %i.ata         ; 2 uses
  %.not177.us217.i.us.us.us740.us.us.i = icmp slt i32 %i.ask, %i.pt
  %or.cond178.us218.i.us.us.us741.us.us.i = or i1 %.fr.us.us.i, %.not177.us217.i.us.us.us740.us.us.i
  br i1 %or.cond178.us218.i.us.us.us741.us.us.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph200.us.i.split.us.us.split.us736.us.us.i
  %i.atc = sub nsw i32 %i.asl, %i.pt
  %i.atd = sext i32 %i.atc to i64
  %i.ate = getelementptr inbounds i8, ptr %i.pw, i64 %i.atd
  %i.atf = load i8, ptr %i.ate, align 1, !tbaa !86
  %i.atg = zext i8 %i.atf to i32
  %i.ath = add nuw nsw i32 %i.atb, %i.atg
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.lr.ph200.us.i.split.us.us.split.us736.us.us.i
  %.3.us219.i.us.us.us742.us.us.i = phi i32 [ %i.ath, %bb.ap ], [ %i.atb, %.lr.ph200.us.i.split.us.us.split.us736.us.us.i ] ; 3 uses
  %i.ati = getelementptr inbounds [2 x i8], ptr %i.qj, i64 %i.asm ; 2 uses
  %i.atj = load i16, ptr %i.ati, align 2, !tbaa !125
  %i.atk = sext i16 %i.atj to i32
  %i.atl = sub nsw i32 8, %i.atk                  ; 2 uses
  %i.atm = trunc i32 %i.atl to i16
  store i16 %i.atm, ptr %i.ati, align 2, !tbaa !125
  %gep314.i.us.us.us743.us.us.i = getelementptr i8, ptr %invariant.gep313.i.us.us.us.us.i, i64 %indvars.iv252.i.us.us.us737.us.us.i
  %i.atn = load i8, ptr %gep314.i.us.us.us743.us.us.i, align 1, !tbaa !86
  %i.ato = zext i8 %i.atn to i32
  %i.atp = ashr i32 %i.atl, 4
  %i.atq = sub nsw i32 %i.ato, %i.atp
  %i.atr = mul nsw i32 %i.atq, %.3.us219.i.us.us.us742.us.us.i
  %i.ats = add nsw i32 %i.atr, %.2167197.us213.i.us.us.us739.us.us.i ; 2 uses
  %i.att = mul nuw nsw i32 %.3.us219.i.us.us.us742.us.us.i, %.3.us219.i.us.us.us742.us.us.i
  %i.atu = add nsw i32 %i.att, %.2164198.us212.i.us.us.us738.us.us.i ; 2 uses
  %indvars.iv.next253.i.us.us.us744.us.us.i = add nuw nsw i64 %indvars.iv252.i.us.us.us737.us.us.i, 1 ; 2 uses
  %i.atv = icmp samesign ult i64 %indvars.iv.next253.i.us.us.us744.us.us.i, %i.amo
  br i1 %i.atv, label %.lr.ph200.us.i.split.us.us.split.us736.us.us.i, label %._crit_edge201.split.us220.i.split.us.us.us.us.us.i, !llvm.loop !491

.lr.ph200.us.i.split.us.us.split.us.us.us.us.i:   ; preds = %.lr.ph200.us.i.us.us.us.us.i, %bb.as
  %indvars.iv252.i.us.us.us.us.us.us.i = phi i64 [ %indvars.iv.next253.i.us.us.us.us.us.us.i, %bb.as ], [ %i.vt, %.lr.ph200.us.i.us.us.us.us.i ] ; 3 uses
  %.2164198.us212.i.us.us.us.us.us.us.i = phi i32 [ %i.avb, %bb.as ], [ %.1163206.us.i.us.us.us.us.i, %.lr.ph200.us.i.us.us.us.us.i ]
  %.2167197.us213.i.us.us.us.us.us.us.i = phi i32 [ %i.auz, %bb.as ], [ %.1166205.us.i.us.us.us.us.i, %.lr.ph200.us.i.us.us.us.us.i ]
  %i.atw = trunc nuw nsw i64 %indvars.iv252.i.us.us.us.us.us.us.i to i32
  %i.atx = add i32 %.neg.i.us.us.us.i, %i.atw     ; 2 uses
  %i.aty = add nsw i32 %i.atx, %i.ash             ; 3 uses
  %i.atz = sext i32 %i.aty to i64                 ; 2 uses
  %i.aua = getelementptr inbounds i8, ptr %i.pw, i64 %i.atz
  %i.aub = load i8, ptr %i.aua, align 1, !tbaa !86
  %i.auc = zext i8 %i.aub to i32
  %i.aud = add nsw i32 %i.aty, %i.pt
  %i.aue = sext i32 %i.aud to i64
  %i.auf = getelementptr inbounds i8, ptr %i.pw, i64 %i.aue
  %i.aug = load i8, ptr %i.auf, align 1, !tbaa !86
  %i.auh = zext i8 %i.aug to i32
  %i.aui = add nuw nsw i32 %i.auh, %i.auc         ; 2 uses
  %.not177.us217.i.us.us.us.us.us.us.i = icmp slt i32 %i.atx, %i.pt
  %or.cond178.us218.i.us.us.us.us.us.us.i = or i1 %.fr.us.us.i, %.not177.us217.i.us.us.us.us.us.us.i
  br i1 %or.cond178.us218.i.us.us.us.us.us.us.i, label %bb.as, label %bb.ar

end_hunk_1
begin_hunk_2_@get_4block_rd:bb.a
  %.pre-phi294 = phi i32 [ %.pre-phi288, %.same_block.exit_crit_edge281 ], [ %.pre293, %.same_block.exit_crit_edge ]
  %.pre-phi292 = phi i32 [ %.pre-phi286, %.same_block.exit_crit_edge281 ], [ %.pre291, %.same_block.exit_crit_edge ]
  %.pre-phi290 = phi i32 [ %.pre-phi, %.same_block.exit_crit_edge281 ], [ %.pre289, %.same_block.exit_crit_edge ]
  %i.acj = phi i8 [ %.pre283, %.same_block.exit_crit_edge281 ], [ %i.abr, %.same_block.exit_crit_edge ]
  %i.ack = phi ptr [ %i.abo, %.same_block.exit_crit_edge281 ], [ %i.abp, %.same_block.exit_crit_edge ] ; 3 uses
  %i.acl = load i16, ptr %i.ack, align 2, !tbaa !137
  %i.acm = sext i16 %i.acl to i32
  %i.acn = sub nsw i32 %.pre-phi290, %i.acm
  %i.aco = getelementptr inbounds nuw i8, ptr %i.ack, i64 2
  %i.acp = load i16, ptr %i.aco, align 2, !tbaa !138
  %i.acq = sext i16 %i.acp to i32
  %i.acr = sub nsw i32 %.pre-phi292, %i.acq
  %i.acs = or i32 %i.acr, %i.acn
  %i.act = getelementptr inbounds nuw i8, ptr %i.ack, i64 4
  %i.acu = load i8, ptr %i.act, align 2, !tbaa !139
  %i.acv = zext i8 %i.acu to i32
  %i.acw = sub nsw i32 %.pre-phi294, %i.acv
  %i.acx = or i32 %i.acs, %i.acw
  %i.acy = xor i8 %i.acj, %i.yf
  %i.acz = and i8 %i.acy, 1
  %i.ada = zext nneg i8 %i.acz to i32
  %i.adb = or i32 %i.acx, %i.ada
  %.not17.i = icmp eq i32 %i.adb, 0
  br i1 %.not17.i, label %bb.ac, label %.critedge.preheader

bb.ac:                                            ; preds = %.split, %same_block.exit
  %i.adc = tail call fastcc i32 @get_block_bits(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef 2)
  br label %.critedge.preheader

.critedge.preheader:                              ; preds = %.split, %same_block.exit178.thread, %same_block.exit185.thread, %same_block.exit178, %same_block.exit185, %bb.ac, %same_block.exit
  %indvars.iv253.ph = phi i64 [ 0, %.split ], [ 0, %same_block.exit178.thread ], [ 0, %same_block.exit185.thread ], [ 0, %same_block.exit178 ], [ 0, %same_block.exit185 ], [ 0, %same_block.exit ], [ 4, %bb.ac ]
  %.1233.ph = phi i32 [ 0, %.split ], [ 0, %same_block.exit178.thread ], [ 0, %same_block.exit185.thread ], [ 0, %same_block.exit178 ], [ 0, %same_block.exit185 ], [ 0, %same_block.exit ], [ %i.adc, %bb.ac ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.preheader, %.critedge
  %indvars.iv253 = phi i64 [ %indvars.iv.next254, %.critedge ], [ %indvars.iv253.ph, %.critedge.preheader ] ; 2 uses
  %.1233 = phi i32 [ %i.adk, %.critedge ], [ %.1233.ph, %.critedge.preheader ]
  %i.add = getelementptr inbounds nuw [8 x i8], ptr @get_4block_rd.dxy, i64 %indvars.iv253 ; 2 uses
  %i.ade = load i32, ptr %i.add, align 8, !tbaa !87
  %i.adf = add nsw i32 %i.ade, %1
  %i.adg = getelementptr inbounds nuw i8, ptr %i.add, i64 4
  %i.adh = load i32, ptr %i.adg, align 4, !tbaa !87
  %i.adi = add nsw i32 %i.adh, %2
  %i.adj = tail call fastcc i32 @get_block_bits(ptr noundef nonnull %0, i32 noundef %i.adf, i32 noundef %i.adi, i32 noundef 1)
  %i.adk = add nuw nsw i32 %i.adj, %.1233         ; 2 uses
  %indvars.iv.next254 = add nuw nsw i64 %indvars.iv253, 1 ; 2 uses
  %exitcond256.not = icmp eq i64 %indvars.iv.next254, 9
  br i1 %exitcond256.not, label %bb.ad, label %.critedge, !llvm.loop !597

bb.ad:                                            ; preds = %.critedge
  %i.adl = mul nsw i32 %i.adk, %.0.i188
  %i.adm = add nsw i32 %i.adl, %i.xx
  ret i32 %i.adm
}

declare void @ff_snow_pred_block(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @get_block_rd(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6392
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 6376
  %i.c = load i32, ptr %i.b, align 8, !tbaa !83   ; 5 uses
  %i.d = lshr i32 16, %i.c                        ; 8 uses
  %i.e = shl nuw nsw i32 %i.d, 1                  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !113  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load i32, ptr %i.h, align 4, !tbaa !87   ; 11 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !100  ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1768
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !98
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !100  ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 172400
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 155080
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !134  ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 172392
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !104
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 6368
  %i.t = load i32, ptr %i.s, align 8, !tbaa !107
  %i.u = shl i32 %i.t, %i.c                       ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 6372
  %i.w = load i32, ptr %i.v, align 4, !tbaa !106
  %i.x = shl i32 %i.w, %i.c
  %i.y = load i32, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 6396
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !121 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 155952
  %i.ac = load i32, ptr %i.ab, align 16, !tbaa !112 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !99
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 244
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !157
  %trunc.i = trunc i32 %i.ag to i8
  switch i8 %trunc.i, label %bb.b [
    i8 5, label %get_penalty_factor.exit
    i8 3, label %bb.c
    i8 11, label %bb.d
    i8 12, label %bb.e
    i8 2, label %bb.f
    i8 14, label %bb.f
    i8 6, label %bb.g
    i8 4, label %bb.g
    i8 1, label %bb.g
    i8 10, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.ah = ashr i32 %i.ac, 7
  br label %get_penalty_factor.exit

bb.c:                                             ; preds = %bb.a
  %i.ai = mul nsw i32 %i.ac, 3
  %i.aj = ashr i32 %i.ai, 8
  br label %get_penalty_factor.exit

bb.d:                                             ; preds = %bb.a
  %i.ak = ashr i32 %i.ac, 5
  br label %get_penalty_factor.exit

bb.e:                                             ; preds = %bb.a
  %i.al = ashr i32 %i.ac, 6
  br label %get_penalty_factor.exit

bb.f:                                             ; preds = %bb.a, %bb.a
  %i.am = ashr i32 %i.ac, 6
  br label %get_penalty_factor.exit

bb.g:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 155956
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !116
  %i.ap = ashr i32 %i.ao, 7
  br label %get_penalty_factor.exit

get_penalty_factor.exit:                          ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i32 [ %i.ah, %bb.b ], [ %i.ap, %bb.g ], [ %i.aj, %bb.c ], [ %i.ak, %bb.d ], [ %i.al, %bb.e ], [ %i.am, %bb.f ], [ 1, %bb.a ]
  %i.aq = mul nsw i32 %i.d, %1                    ; 2 uses
  %i.ar = lshr i32 8, %i.c                        ; 3 uses
  %i.as = sub nsw i32 %i.aq, %i.ar                ; 11 uses
  %i.at = mul nsw i32 %i.d, %2
  %i.au = sub nsw i32 %i.at, %i.ar                ; 12 uses
  %i.av = sub i32 0, %i.as
  %i.aw = tail call i32 @llvm.smax.i32(i32 %i.av, i32 0) ; 4 uses
  %i.ax = sub i32 0, %i.au
  %i.ay = tail call i32 @llvm.smax.i32(i32 %i.ax, i32 0) ; 4 uses
  %i.az = sub i32 %i.y, %i.as
  %i.ba = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %i.az) ; 4 uses
  %i.bb = sub i32 %i.aa, %i.au
  %i.bc = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %i.bb) ; 4 uses
  %i.bd = sext i32 %i.i to i64                    ; 14 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 155032
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !133
  %i.bg = mul nsw i32 %i.u, %2
  %i.bh = add nsw i32 %i.bg, %1
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [10 x i8], ptr %i.bf, i64 %i.bi
  tail call void @ff_snow_pred_block(ptr noundef nonnull %0, ptr noundef %i.p, ptr noundef %i.r, i64 noundef %i.bd, i32 noundef %i.as, i32 noundef %i.au, i32 noundef %i.e, i32 noundef %i.e, ptr noundef %i.bj, i32 noundef 0, i32 noundef %i.y, i32 noundef %i.aa) #12
  %i.bk = icmp slt i32 %i.ay, %i.bc
  br i1 %i.bk, label %.lr.ph246, label %._crit_edge247.split

.lr.ph246:                                        ; preds = %get_penalty_factor.exit
  %i.bl = sext i32 %i.as to i64
  %i.bm = getelementptr inbounds i8, ptr %i.j, i64 %i.bl
  %i.bn = icmp slt i32 %i.aw, %i.ba
  br i1 %i.bn, label %.lr.ph.preheader, label %._crit_edge247.split

.lr.ph.preheader:                                 ; preds = %.lr.ph246
  %i.bo = zext nneg i32 %i.aw to i64              ; 9 uses
  %i.bp = zext nneg i32 %i.ay to i64              ; 4 uses
  %i.bq = zext nneg i32 %i.e to i64
  %wide.trip.count260 = zext i32 %i.bc to i64     ; 4 uses
  %wide.trip.count = zext nneg i32 %i.ba to i64   ; 6 uses
  %i.br = shl nuw nsw i64 %wide.trip.count260, 2
  %i.bs = add nsw i64 %i.br, -4
  %i.bt = zext nneg i32 %i.d to i64               ; 2 uses
  %i.bu = mul nsw i64 %i.bs, %i.bt
  %i.bv = shl nuw nsw i64 %wide.trip.count, 1
  %i.bw = getelementptr i8, ptr %0, i64 %i.bu
  %i.bx = getelementptr i8, ptr %i.bw, i64 %i.bv
  %scevgep = getelementptr i8, ptr %i.bx, i64 172400
  %i.by = mul nuw nsw i64 %i.bt, %i.bp
  %i.bz = shl nuw nsw i64 %i.by, 2
  %i.ca = shl nuw nsw i64 %i.bo, 1
  %i.cb = getelementptr i8, ptr %0, i64 %i.bz
  %i.cc = getelementptr i8, ptr %i.cb, i64 %i.ca
  %scevgep17 = getelementptr i8, ptr %i.cc, i64 172400
  %i.cd = shl nuw nsw i64 %wide.trip.count260, 5
  %i.ce = getelementptr i8, ptr %3, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 %wide.trip.count
  %scevgep18 = getelementptr i8, ptr %i.cf, i64 -32
  %i.cg = shl nuw nsw i64 %i.bp, 5
  %i.ch = getelementptr i8, ptr %3, i64 %i.cg
  %scevgep19 = getelementptr i8, ptr %i.ch, i64 %i.bo
  %i.ci = add nsw i64 %wide.trip.count260, -1
  %i.cj = mul i64 %i.ci, %i.bd
  %i.ck = getelementptr i8, ptr %i.p, i64 %i.cj
  %scevgep20 = getelementptr i8, ptr %i.ck, i64 %wide.trip.count
  %i.cl = mul nsw i64 %i.bd, %i.bp
  %i.cm = getelementptr i8, ptr %i.p, i64 %i.cl
  %scevgep21 = getelementptr i8, ptr %i.cm, i64 %i.bo
  %4 = sext i32 %i.aq to i64                      ; 2 uses
  %5 = add nsw i64 %4, %wide.trip.count
  %i.cn = zext nneg i32 %i.ar to i64              ; 2 uses
  %6 = sub nsw i64 %5, %i.cn
  %7 = add nsw i64 %4, %i.bo
  %8 = sub nsw i64 %7, %i.cn
  %i.co = sub nsw i64 %wide.trip.count, %i.bo     ; 3 uses
  %min.iters.check = icmp ult i64 %i.co, 8
  %9 = getelementptr i8, ptr %i.j, i64 %8
  %10 = getelementptr i8, ptr %i.j, i64 %6
  %stride.check = icmp slt i32 %i.i, 0
  %n.vec = and i64 %i.co, -8                      ; 3 uses
  %i.cp = add nsw i64 %n.vec, %i.bo
  %cmp.n = icmp eq i64 %i.co, %n.vec
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv257 = phi i64 [ %i.bp, %.lr.ph.preheader ], [ %indvars.iv.next258, %._crit_edge ] ; 5 uses
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %3, i64 %indvars.iv257 ; 2 uses
  %i.cr = mul nuw nsw i64 %indvars.iv257, %i.bq
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.cr ; 2 uses
  %i.ct = mul nsw i64 %indvars.iv257, %i.bd
  %i.cu = getelementptr inbounds i8, ptr %i.p, i64 %i.ct ; 2 uses
  %i.cv = trunc nuw nsw i64 %indvars.iv257 to i32
  %i.cw = add nsw i32 %i.au, %i.cv
  %i.cx = mul nsw i32 %i.cw, %i.i
  %i.cy = sext i32 %i.cx to i64                   ; 3 uses
  %i.cz = getelementptr inbounds i8, ptr %i.bm, i64 %i.cy ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.da = getelementptr i8, ptr %9, i64 %i.cy     ; 3 uses
  %i.db = getelementptr i8, ptr %10, i64 %i.cy    ; 3 uses
  %bound0 = icmp ult ptr %i.da, %scevgep20
  %bound1 = icmp ult ptr %scevgep21, %i.db
  %found.conflict = and i1 %bound0, %bound1
  %i.dc = or i1 %found.conflict, %stride.check
  %bound022 = icmp ult ptr %i.da, %scevgep18
  %bound123 = icmp ult ptr %scevgep19, %i.db
  %found.conflict24 = and i1 %bound022, %bound123
  %conflict.rdx = or i1 %i.dc, %found.conflict24
  %bound025 = icmp ult ptr %i.da, %scevgep
  %bound126 = icmp ult ptr %scevgep17, %i.db
  %found.conflict27 = and i1 %bound025, %bound126
  %conflict.rdx28 = or i1 %conflict.rdx, %found.conflict27
  br i1 %conflict.rdx28, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.dd = add nuw i64 %index, %i.bo               ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.dd
  %wide.load = load <8 x i8>, ptr %i.de, align 1, !tbaa !86, !alias.scope !617
  %i.df = zext <8 x i8> %wide.load to <8 x i32>
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.dd
  %wide.load29 = load <8 x i8>, ptr %i.dg, align 1, !tbaa !86, !alias.scope !618
  %i.dh = zext <8 x i8> %wide.load29 to <8 x i32>
  %i.di = mul nuw nsw <8 x i32> %i.dh, %i.df
  %i.dj = add nuw nsw <8 x i32> %i.di, splat (i32 2)
  %i.dk = lshr <8 x i32> %i.dj, splat (i32 2)
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.dd
  %wide.load30 = load <8 x i16>, ptr %i.dl, align 2, !tbaa !125, !alias.scope !619
  %i.dm = sext <8 x i16> %wide.load30 to <8 x i32>
  %i.dn = add nsw <8 x i32> %i.dk, %i.dm          ; 2 uses
  %i.do = ashr <8 x i32> %i.dn, splat (i32 4)     ; 2 uses
  %i.dp = icmp ugt <8 x i32> %i.do, splat (i32 255)
  %i.dq = icmp sgt <8 x i32> %i.dn, splat (i32 -1)
  %i.dr = sext <8 x i1> %i.dq to <8 x i32>
  %i.ds = select <8 x i1> %i.dp, <8 x i32> %i.dr, <8 x i32> %i.do
  %i.dt = trunc <8 x i32> %i.ds to <8 x i8>
  %i.du = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.dd
  store <8 x i8> %i.dt, ptr %i.du, align 1, !tbaa !86, !alias.scope !620, !noalias !621
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dv = icmp eq i64 %index.next, %n.vec
  br i1 %i.dv, label %middle.block, label %vector.body, !llvm.loop !613

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.bo, %vector.memcheck ], [ %i.bo, %.lr.ph ], [ %i.cp, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cu, i64 %indvars.iv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !86
  %i.dy = zext i8 %i.dx to i32
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !86
  %i.eb = zext i8 %i.ea to i32
  %i.ec = mul nuw nsw i32 %i.eb, %i.dy
  %i.ed = add nuw nsw i32 %i.ec, 2
  %i.ee = lshr i32 %i.ed, 2
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %indvars.iv
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !125
  %i.eh = sext i16 %i.eg to i32
  %i.ei = add nsw i32 %i.ee, %i.eh                ; 2 uses
  %i.ej = ashr i32 %i.ei, 4                       ; 2 uses
  %i.ek = icmp ugt i32 %i.ej, 255
  %isnotneg = icmp sgt i32 %i.ei, -1
  %i.el = sext i1 %isnotneg to i32
  %.0 = select i1 %i.ek, i32 %i.el, i32 %i.ej
  %i.em = trunc i32 %.0 to i8
  %i.en = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv
  store i8 %i.em, ptr %i.en, align 1, !tbaa !86
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !614

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1 ; 2 uses
  %exitcond261.not = icmp eq i64 %indvars.iv.next258, %wide.trip.count260
  br i1 %exitcond261.not, label %._crit_edge247.split, label %.lr.ph, !llvm.loop !615

._crit_edge247.split:                             ; preds = %._crit_edge, %.lr.ph246, %get_penalty_factor.exit
  %i.eo = icmp eq i32 %1, 0                       ; 2 uses
  %i.ep = add nsw i32 %i.u, -1
  %i.eq = icmp eq i32 %1, %i.ep
  %or.cond = select i1 %i.eo, i1 true, i1 %i.eq
  br i1 %or.cond, label %bb.h, label %.loopexit243

bb.h:                                             ; preds = %._crit_edge247.split
  %i.er = icmp eq i32 %2, 0                       ; 2 uses
  %i.es = add nsw i32 %i.x, -1
  %i.et = icmp eq i32 %2, %i.es
  %or.cond242 = select i1 %i.er, i1 true, i1 %i.et
  br i1 %or.cond242, label %bb.i, label %.loopexit243

bb.i:                                             ; preds = %bb.h
  br i1 %i.eo, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.eu = tail call i32 @llvm.smin.i32(i32 %i.ba, i32 %i.d)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ev = tail call i32 @llvm.umax.i32(i32 %i.aw, i32 %i.d)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0226 = phi i32 [ %i.aw, %bb.j ], [ %i.ev, %bb.k ]
  %.0224 = phi i32 [ %i.eu, %bb.j ], [ %i.ba, %bb.k ] ; 2 uses
  br i1 %i.er, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ew = tail call i32 @llvm.smin.i32(i32 %i.bc, i32 %i.d)
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ex = tail call i32 @llvm.umax.i32(i32 %i.ay, i32 %i.d)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0225 = phi i32 [ %i.ay, %bb.m ], [ %i.ex, %bb.n ] ; 3 uses
  %.0223 = phi i32 [ %i.ew, %bb.m ], [ %i.bc, %bb.n ] ; 2 uses
  %i.ey = icmp slt i32 %.0225, %.0223
  br i1 %i.ey, label %.lr.ph250, label %.loopexit243

.lr.ph250:                                        ; preds = %bb.o
  %i.ez = tail call i32 @llvm.smin.i32(i32 %.0226, i32 %.0224) ; 2 uses
  %i.fa = sext i32 %i.as to i64
  %i.fb = getelementptr inbounds i8, ptr %i.j, i64 %i.fa
  %i.fc = sext i32 %i.ez to i64                   ; 2 uses
  %i.fd = getelementptr inbounds i8, ptr %i.fb, i64 %i.fc ; 3 uses
  %i.fe = getelementptr inbounds i8, ptr %i.p, i64 %i.fc ; 3 uses
  %i.ff = sub nsw i32 %.0224, %i.ez
  %i.fg = zext nneg i32 %i.ff to i64              ; 3 uses
  %i.fh = zext i32 %.0225 to i64                  ; 5 uses
  %wide.trip.count265 = zext nneg i32 %.0223 to i64 ; 3 uses
  %i.fi = sub nsw i64 %wide.trip.count265, %i.fh
  %xtraiter = and i64 %i.fi, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph250
  %i.fj = add nsw i32 %i.au, %.0225
  %i.fk = mul nsw i32 %i.fj, %i.i
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds i8, ptr %i.fd, i64 %i.fl
  %i.fn = mul nsw i64 %i.fh, %i.bd
  %i.fo = getelementptr inbounds i8, ptr %i.fe, i64 %i.fn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fm, ptr align 1 %i.fo, i64 %i.fg, i1 false)
  %indvars.iv.next263.prol = add nuw nsw i64 %i.fh, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph250
  %indvars.iv262.unr = phi i64 [ %i.fh, %.lr.ph250 ], [ %indvars.iv.next263.prol, %.prol.loopexit.unr-lcssa ]
  %i.fp = add nsw i64 %wide.trip.count265, -1
  %i.fq = icmp eq i64 %i.fp, %i.fh
  br i1 %i.fq, label %.loopexit243, label %.lr.ph250.new

.lr.ph250.new:                                    ; preds = %.prol.loopexit, %.lr.ph250.new
  %indvars.iv262 = phi i64 [ %indvars.iv.next263.1, %.lr.ph250.new ], [ %indvars.iv262.unr, %.prol.loopexit ] ; 4 uses
  %i.fr = trunc nuw nsw i64 %indvars.iv262 to i32
  %i.fs = add nsw i32 %i.au, %i.fr
  %i.ft = mul nsw i32 %i.fs, %i.i
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds i8, ptr %i.fd, i64 %i.fu
  %i.fw = mul nsw i64 %indvars.iv262, %i.bd
  %i.fx = getelementptr inbounds i8, ptr %i.fe, i64 %i.fw
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fv, ptr align 1 %i.fx, i64 %i.fg, i1 false)
  %indvars.iv.next263 = add nuw nsw i64 %indvars.iv262, 1 ; 2 uses
  %i.fy = trunc nuw nsw i64 %indvars.iv.next263 to i32
  %i.fz = add nsw i32 %i.au, %i.fy
  %i.ga = mul nsw i32 %i.fz, %i.i
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds i8, ptr %i.fd, i64 %i.gb
  %i.gd = mul nsw i64 %indvars.iv.next263, %i.bd
  %i.ge = getelementptr inbounds i8, ptr %i.fe, i64 %i.gd
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gc, ptr align 1 %i.ge, i64 %i.fg, i1 false)
  %indvars.iv.next263.1 = add nuw nsw i64 %indvars.iv262, 2 ; 2 uses
  %exitcond266.not.1 = icmp eq i64 %indvars.iv.next263.1, %wide.trip.count265
  br i1 %exitcond266.not.1, label %.loopexit243, label %.lr.ph250.new, !llvm.loop !616

.loopexit243:                                     ; preds = %.prol.loopexit, %.lr.ph250.new, %bb.o, %bb.h, %._crit_edge247.split
  %i.gf = icmp eq i32 %i.c, 0
  br i1 %i.gf, label %bb.p, label %bb.s

bb.p:                                             ; preds = %.loopexit243
  %i.gg = load ptr, ptr %i.ad, align 8, !tbaa !99
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 244
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !157
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 156784 ; 6 uses
  switch i32 %i.gi, label %.preheader [
    i32 12, label %bb.q
    i32 11, label %bb.r
  ]

.preheader:                                       ; preds = %bb.p
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 161896 ; 4 uses
  %i.gl = mul nsw i32 %i.au, %i.i                 ; 2 uses
  %i.gm = add nsw i32 %i.as, %i.gl
  %i.gn = load ptr, ptr %i.gk, align 8, !tbaa !89
end_hunk_2
