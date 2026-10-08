Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/snowenc?download=true
inline.NumInlined: 82
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 29
begin_hunk_0_@encode_blocks:bb.a
  %i.pl = lshr i32 %i.pk, %i.pf
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.pm = shl nuw nsw i32 %i.pe, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn.pn.in.i.us.us.us.i = phi i32 [ %i.pj, %bb.q ], [ %i.pd, %bb.r ]
  %i.pn = phi i32 [ %i.pg, %bb.q ], [ %i.pe, %bb.r ] ; 39 uses
  %i.po = phi i32 [ %i.pi, %bb.q ], [ %i.pe, %bb.r ] ; 21 uses
  %i.pp = phi i32 [ %i.pl, %bb.q ], [ %i.pm, %bb.r ] ; 15 uses
  %.pn.pn.i.us.us.us.i = sext i32 %.pn.pn.in.i.us.us.us.i to i64
  %.in191.i.us.us.us.i = getelementptr inbounds [8 x i8], ptr @ff_obmc_tab, i64 %.pn.pn.i.us.us.us.i
  %i.pq = load ptr, ptr %.in191.i.us.us.us.i, align 8, !tbaa !100 ; 34 uses
  %i.pr = load ptr, ptr %i.ar, align 16, !tbaa !113
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 64
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.ps, i64 %indvars.iv909.i
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !87 ; 5 uses
  %i.pv = load ptr, ptr %i.aq, align 8, !tbaa !98
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.pv, i64 %indvars.iv909.i
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !100 ; 6 uses
  %i.py = trunc i64 %indvars.iv909.i to i32       ; 5 uses
  %i.pz = shl i32 %i.py, 2
  %i.qa = mul i32 %i.pz, %i.pe
  %i.qb = mul i32 %i.qa, %i.pe
  %i.qc = sext i32 %i.qb to i64                   ; 3 uses
  %i.qd = getelementptr inbounds [2 x i8], ptr %i.ax, i64 %i.qc ; 12 uses
  %i.qe = load i32, ptr %i.e, align 16, !tbaa !107
  %i.qf = shl i32 %i.qe, %i.pd
  %i.qg = load i32, ptr %i.pc, align 8, !tbaa !120 ; 13 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pc, i64 4
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !121 ; 11 uses
  %i.qj = sext i32 %i.qf to i64
  %i.qk = mul nsw i64 %indvars.iv925.i, %i.qj
  %i.ql = load ptr, ptr %i.ak, align 8, !tbaa !133
  %i.qm = getelementptr [10 x i8], ptr %i.ql, i64 %i.qk
  %i.qn = getelementptr [10 x i8], ptr %i.qm, i64 %indvars.iv920.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %2, ptr noundef nonnull align 2 dereferenceable(10) %i.qn, i64 10, i1 false), !tbaa.struct !518
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 8 ; 2 uses
  %i.qp = load i8, ptr %i.qo, align 2, !tbaa !136
  %i.qq = or i8 %i.qp, 1
  store i8 %i.qq, ptr %i.qo, align 2, !tbaa !136
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qn, i64 5
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 %indvars.iv909.i
  store i8 0, ptr %i.qs, align 1, !tbaa !86
  %i.qt = shl nuw nsw i32 %i.pp, 1
  %i.qu = mul nuw nsw i32 %i.qt, %i.pp
  %i.qv = zext nneg i32 %i.qu to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.qd, i8 0, i64 %i.qv, i1 false)
  %i.qw = lshr i32 %i.pn, 1                       ; 11 uses
  %i.qx = lshr i32 %i.po, 1                       ; 10 uses
  %i.qy = mul nuw nsw i32 %i.pp, %i.po            ; 9 uses
  %i.qz = icmp sgt i32 %i.pu, 111
  %i.ra = shl nsw i32 %i.pu, 4
  %i.rb = select i1 %i.qz, i32 16, i32 %i.ra      ; 2 uses
  %i.rc = mul i32 %i.rb, 3
  %i.rd = sext i32 %i.rc to i64                   ; 2 uses
  %i.re = sext i32 %i.rb to i64                   ; 3 uses
  %i.rf = sext i32 %i.pu to i64                   ; 12 uses
  %i.rg = lshr i32 %i.pp, 1                       ; 2 uses
  %i.rh = zext nneg i32 %i.rg to i64              ; 4 uses
  %i.ri = mul i32 %i.rg, %i.pp
  %i.rj = zext i32 %i.ri to i64                   ; 3 uses
  %i.rk = mul nsw i32 %i.pn, %i.pa
  %.neg.i.us.us.us.i = sub i32 %i.qw, %i.rk       ; 9 uses
  %i.rl = mul nsw i32 %i.po, %i.bv
  %.neg175.i.us.us.us.i = sub i32 %i.qx, %i.rl    ; 4 uses
  %i.rm = zext i32 %i.pp to i64                   ; 3 uses
  %i.rn = mul i32 %i.pn, %i.by
  %i.ro = sub i32 %i.qw, %i.rn
  %i.rp = mul i32 %i.po, %i.bq
  %i.rq = sub i32 %i.qx, %i.rp
  %i.rr = shl nsw i64 %i.qc, 1
  %scevgep235 = getelementptr i8, ptr %scevgep234, i64 %i.rr
  %i.rs = mul i32 %i.pn, %i.bx
  %i.rt = sub i32 %i.qw, %i.rs
  %i.ru = mul i32 %i.po, %i.bp
  %i.rv = sub i32 %i.qx, %i.ru
  %i.rw = shl nuw nsw i64 %i.rm, 1
  %stride.check295 = icmp slt i32 %i.pu, 0
  %stride.check = icmp slt i32 %i.pu, 0
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge208.i.us.us.us.i, %bb.s
  %.0162234.i.us.us.us.i = phi i32 [ 0, %bb.s ], [ %.1163.lcssa.i.us.us.us.i, %._crit_edge208.i.us.us.us.i ] ; 6 uses
  %.0165233.i.us.us.us.i = phi i32 [ 0, %bb.s ], [ %.1166.lcssa.i.us.us.us.i, %._crit_edge208.i.us.us.us.i ] ; 6 uses
  %.0170232.i.us.us.us.i = phi i32 [ 0, %bb.s ], [ %i.bbm, %._crit_edge208.i.us.us.us.i ] ; 9 uses
  %i.rx = lshr i32 %.0170232.i.us.us.us.i, 1
  %i.ry = add i32 %indvars.iv901.i, %i.rx
  %i.rz = mul i32 %i.po, %i.ry
  %i.sa = add i32 %i.qx, %i.rz                    ; 2 uses
  %smin257 = call i32 @llvm.smin.i32(i32 %i.sa, i32 0)
  %i.sb = add i32 %i.po, %smin257
  %smax258 = call i32 @llvm.smax.i32(i32 %i.sa, i32 0) ; 2 uses
  %i.sc = add i32 %i.sb, %smax258
  %smin259 = call i32 @llvm.smin.i32(i32 %i.qi, i32 %i.sc)
  %i.sd = sub i32 %smin259, %smax258
  %i.se = zext i32 %i.sd to i64
  %i.sf = call i64 @llvm.usub.sat.i64(i64 %i.se, i64 1) ; 3 uses
  %i.sg = mul i64 %i.rw, %i.sf
  %i.sh = and i32 %.0170232.i.us.us.us.i, 1
  %i.si = add i32 %indvars.iv894.i, %i.sh
  %i.sj = mul i32 %i.pn, %i.si
  %i.sk = add i32 %i.qw, %i.sj                    ; 2 uses
  %smin260 = call i32 @llvm.smin.i32(i32 %i.sk, i32 0)
  %i.sl = add i32 %i.pn, %smin260
  %smax261 = call i32 @llvm.smax.i32(i32 %i.sk, i32 0) ; 2 uses
  %i.sm = add i32 %i.sl, %smax261
  %smin262 = call i32 @llvm.smin.i32(i32 %i.qg, i32 %i.sm)
  %i.sn = sub i32 %smin262, %smax261
  %i.so = call i32 @llvm.umax.i32(i32 %i.sn, i32 1)
  %umax263 = zext i32 %i.so to i64                ; 3 uses
  %i.sp = shl nuw nsw i64 %umax263, 1
  %i.sq = mul nuw i64 %i.sf, %i.rm
  %i.sr = add i64 %i.sq, %umax263                 ; 4 uses
  %i.ss = mul nsw i64 %i.sf, %i.rf
  %i.st = add i64 %i.ss, %umax263                 ; 4 uses
  %i.su = lshr i32 %.0170232.i.us.us.us.i, 1      ; 2 uses
  %i.sv = add i32 %indvars.iv901.i, %i.su
  %i.sw = mul i32 %i.po, %i.sv
  %i.sx = add i32 %i.qx, %i.sw
  %smax227 = call i32 @llvm.smax.i32(i32 %i.sx, i32 0) ; 2 uses
  %i.sy = zext nneg i32 %smax227 to i64           ; 2 uses
  %i.sz = mul nsw i64 %i.rf, %i.sy
  %i.ta = and i32 %.0170232.i.us.us.us.i, 1       ; 2 uses
  %i.tb = add i32 %indvars.iv894.i, %i.ta
  %i.tc = mul i32 %i.pn, %i.tb
  %i.td = add i32 %i.qw, %i.tc
  %smax228 = call i32 @llvm.smax.i32(i32 %i.td, i32 0) ; 2 uses
  %i.te = zext nneg i32 %smax228 to i64           ; 4 uses
  %i.tf = getelementptr i8, ptr %i.px, i64 %i.sz
  %scevgep = getelementptr i8, ptr %i.tf, i64 %i.te
  %i.tg = add nuw nsw i64 %i.te, 1
  %i.th = add i32 %i.ta, %i.pa
  %i.ti = mul i32 %i.pn, %i.th
  %i.tj = add i32 %i.qw, %i.ti
  %smin229 = call i32 @llvm.smin.i32(i32 %i.qg, i32 %i.tj)
  %i.tk = zext i32 %smin229 to i64
  %umax230 = call i64 @llvm.umax.i64(i64 %i.tg, i64 %i.tk) ; 3 uses
  %i.tl = add nuw nsw i64 %i.sy, 1
  %i.tm = add i32 %i.su, %i.bv
  %i.tn = mul i32 %i.po, %i.tm
  %i.to = add i32 %i.qx, %i.tn
  %smin231 = call i32 @llvm.smin.i32(i32 %i.qi, i32 %i.to)
  %i.tp = zext i32 %smin231 to i64
  %umax232 = call i64 @llvm.umax.i64(i64 %i.tl, i64 %i.tp)
  %i.tq = add nsw i64 %umax232, -1
  %i.tr = mul i64 %i.tq, %i.rf
  %i.ts = getelementptr i8, ptr %i.px, i64 %umax230
  %scevgep233 = getelementptr i8, ptr %i.ts, i64 %i.tr
  %i.tt = add i32 %i.rt, %smax228
  %i.tu = add i32 %i.rv, %smax227
  %i.tv = mul i32 %i.pp, %i.tu
  %i.tw = add i32 %i.tt, %i.tv
  %i.tx = mul nsw i64 %i.te, -2
  %i.ty = sub nsw i64 %umax230, %i.te
  %i.tz = and i32 %.0170232.i.us.us.us.i, 1       ; 2 uses
  %i.ua = add i32 %indvars.iv894.i, %i.tz
  %i.ub = mul i32 %i.pn, %i.ua
  %i.uc = add i32 %i.qw, %i.ub
  %smax = call i32 @llvm.smax.i32(i32 %i.uc, i32 0) ; 2 uses
  %i.ud = zext nneg i32 %smax to i64              ; 2 uses
  %i.ue = add nuw nsw i64 %i.ud, 1
  %i.uf = add i32 %i.tz, %i.pa
  %i.ug = mul i32 %i.pn, %i.uf
  %i.uh = add i32 %i.qw, %i.ug
  %smin = call i32 @llvm.smin.i32(i32 %i.qg, i32 %i.uh)
  %i.ui = zext i32 %smin to i64
  %umax = call i64 @llvm.umax.i64(i64 %i.ue, i64 %i.ui)
  %i.uj = xor i64 %i.ud, -1
  %i.uk = add nsw i64 %umax, %i.uj                ; 2 uses
  %i.ul = add i32 %i.ro, %smax
  %i.um = lshr i32 %.0170232.i.us.us.us.i, 1
  %i.un = add i32 %indvars.iv901.i, %i.um
  %i.uo = mul i32 %i.po, %i.un
  %i.up = add i32 %i.qx, %i.uo
  %smax226 = call i32 @llvm.smax.i32(i32 %i.up, i32 0)
  %i.uq = add i32 %i.rq, %smax226
  %i.ur = mul i32 %i.pp, %i.uq
  %i.us = add i32 %i.ul, %i.ur
  %i.ut = lshr i32 %.0170232.i.us.us.us.i, 1      ; 4 uses
  %i.uu = add i32 %i.ut, %indvars.iv901.i
  %i.uv = mul i32 %i.uu, %i.po
  %i.uw = add i32 %i.uv, %i.qx                    ; 2 uses
  %smin903.i = tail call i32 @llvm.smin.i32(i32 %i.uw, i32 0)
  %i.ux = add nsw i32 %smin903.i, %i.po
  %smax904.i = tail call i32 @llvm.smax.i32(i32 %i.uw, i32 0) ; 2 uses
  %i.uy = add i32 %i.ux, %smax904.i
  %smin905.i = tail call i32 @llvm.smin.i32(i32 %i.qi, i32 %i.uy)
  %i.uz = sub i32 %smin905.i, %smax904.i
  %i.va = tail call i32 @llvm.umax.i32(i32 %i.uz, i32 1)
  %umax906.i = zext i32 %i.va to i64
  %i.vb = and i32 %.0170232.i.us.us.us.i, 1       ; 4 uses
  %i.vc = add i32 %i.vb, %indvars.iv894.i
  %i.vd = mul i32 %i.vc, %i.pn
  %i.ve = add i32 %i.vd, %i.qw                    ; 2 uses
  %smin.i = tail call i32 @llvm.smin.i32(i32 %i.ve, i32 0) ; 2 uses
  %i.vf = add nsw i32 %smin.i, %i.pn
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.ve, i32 0) ; 4 uses
  %i.vg = add i32 %i.vf, %smax.i
  %smin898.i = tail call i32 @llvm.smin.i32(i32 %i.qg, i32 %i.vg)
  %i.vh = sub i32 %smin898.i, %smax.i
  %i.vi = tail call i32 @llvm.umax.i32(i32 %i.vh, i32 1)
  %umax899.i = zext i32 %i.vi to i64
  %i.vj = add i32 %i.bw, %i.ut
  %i.vk = mul i32 %i.vj, %i.po
  %i.vl = add i32 %i.vk, %i.qx
  %smax275.i.us.us.us.i = tail call i32 @llvm.smax.i32(i32 %i.vl, i32 0)
  %i.vm = zext nneg i32 %smax275.i.us.us.us.i to i64 ; 4 uses
  %i.vn = add i32 %i.pb, %i.vb
  %i.vo = mul i32 %i.vn, %i.pn
  %i.vp = add i32 %i.vo, %i.qw
  %smax271.i.us.us.us.i = tail call i32 @llvm.smax.i32(i32 %i.vp, i32 0)
  %i.vq = zext nneg i32 %smax271.i.us.us.us.i to i64 ; 15 uses
  %i.vr = add nuw nsw i32 %i.vb, %i.pa            ; 3 uses
  %i.vs = add nsw i32 %i.vr, -1                   ; 2 uses
  %i.vt = add nuw nsw i32 %i.ut, %i.bv            ; 3 uses
  %i.vu = add nsw i32 %i.vt, -1                   ; 2 uses
  %i.vv = mul nsw i32 %i.vs, %i.pn
  %i.vw = add nsw i32 %i.vv, %i.qw                ; 6 uses
  %i.vx = mul nsw i32 %i.vu, %i.po
  %i.vy = add nsw i32 %i.vx, %i.qx                ; 6 uses
  %i.vz = mul nuw nsw i32 %i.vb, %i.pn
  %i.wa = zext nneg i32 %i.vz to i64
  %i.wb = getelementptr inbounds nuw [2 x i8], ptr %i.qd, i64 %i.wa
  %i.wc = mul i32 %i.ut, %i.qy
  %i.wd = sext i32 %i.wc to i64
  %i.we = getelementptr inbounds [2 x i8], ptr %i.wb, i64 %i.wd ; 2 uses
  %i.wf = load i32, ptr %i.e, align 16, !tbaa !107
  %i.wg = load i32, ptr %i.p, align 8, !tbaa !83  ; 2 uses
  %i.wh = shl i32 %i.wf, %i.wg                    ; 3 uses
  %i.wi = load i32, ptr %i.g, align 4, !tbaa !106
  %i.wj = shl i32 %i.wi, %i.wg
  %i.wk = load ptr, ptr %i.ak, align 8, !tbaa !133
  %i.wl = mul nsw i32 %i.wh, %i.vu
  %i.wm = add nsw i32 %i.wl, %i.vs
  %i.wn = sext i32 %i.wm to i64
  %i.wo = getelementptr inbounds [10 x i8], ptr %i.wk, i64 %i.wn ; 4 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 10 ; 3 uses
  %i.wq = sext i32 %i.wh to i64
  %i.wr = getelementptr inbounds [10 x i8], ptr %i.wo, i64 %i.wq ; 3 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 10 ; 3 uses
  %i.wt = load ptr, ptr %i.ay, align 8, !tbaa !134 ; 6 uses
  %i.wu = icmp eq i32 %i.vr, 0
  br i1 %i.wu, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not.i.i.us.us.us.i = icmp slt i32 %i.vr, %i.wh ; 2 uses
  %spec.select.i.i.us.us.us.i = select i1 %.not.i.i.us.us.us.i, ptr %i.wp, ptr %i.wo
  %spec.select260.i.i.us.us.us.i = select i1 %.not.i.i.us.us.us.i, ptr %i.ws, ptr %i.wr
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0228.i.i.us.us.us.i = phi ptr [ %i.wo, %bb.u ], [ %i.wp, %bb.t ] ; 2 uses
  %.0226.i.i.us.us.us.i = phi ptr [ %spec.select.i.i.us.us.us.i, %bb.u ], [ %i.wp, %bb.t ] ; 2 uses
  %.0224.i.i.us.us.us.i = phi ptr [ %i.wr, %bb.u ], [ %i.ws, %bb.t ] ; 3 uses
  %.0222.i.i.us.us.us.i = phi ptr [ %spec.select260.i.i.us.us.us.i, %bb.u ], [ %i.ws, %bb.t ] ; 3 uses
  %i.wv = icmp eq i32 %i.vt, 0
  br i1 %i.wv, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not249.i.i.us.us.us.i = icmp slt i32 %i.vt, %i.wj ; 2 uses
  %spec.select261.i.i.us.us.us.i = select i1 %.not249.i.i.us.us.us.i, ptr %.0224.i.i.us.us.us.i, ptr %.0228.i.i.us.us.us.i
  %spec.select262.i.i.us.us.us.i = select i1 %.not249.i.i.us.us.us.i, ptr %.0222.i.i.us.us.us.i, ptr %.0226.i.i.us.us.us.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.1229.i.i.us.us.us.i = phi ptr [ %.0228.i.i.us.us.us.i, %bb.w ], [ %.0224.i.i.us.us.us.i, %bb.v ] ; 20 uses
  %.1227.i.i.us.us.us.i = phi ptr [ %.0226.i.i.us.us.us.i, %bb.w ], [ %.0222.i.i.us.us.us.i, %bb.v ] ; 20 uses
  %.1225.i.i.us.us.us.i = phi ptr [ %spec.select261.i.i.us.us.us.i, %bb.w ], [ %.0224.i.i.us.us.us.i, %bb.v ] ; 20 uses
  %.1223.i.i.us.us.us.i = phi ptr [ %spec.select262.i.i.us.us.us.i, %bb.w ], [ %.0222.i.i.us.us.us.i, %bb.v ] ; 20 uses
  %i.ww = icmp slt i32 %i.vw, 0                   ; 3 uses
  br i1 %i.ww, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.wx = sext i32 %i.vw to i64
  %i.wy = sub nsw i64 0, %i.wx                    ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.wy
  %i.xa = add nsw i32 %i.vw, %i.pn
  %i.xb = getelementptr inbounds nuw [2 x i8], ptr %i.we, i64 %i.wy
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0237.i.i.us.us.us.i = phi i32 [ %i.xa, %bb.y ], [ %i.pn, %bb.x ] ; 2 uses
  %.0235.i.i.us.us.us.i = phi i32 [ 0, %bb.y ], [ %i.vw, %bb.x ] ; 6 uses
  %.0233.i.i.us.us.us.i = phi ptr [ %i.wz, %bb.y ], [ %i.pq, %bb.x ] ; 3 uses
  %.1231.i.i.us.us.us.i = phi ptr [ %i.xb, %bb.y ], [ %i.we, %bb.x ] ; 3 uses
  %i.xc = add nsw i32 %.0235.i.i.us.us.us.i, %.0237.i.i.us.us.us.i
  %i.xd = icmp sgt i32 %i.xc, %i.qg
  %i.xe = sub nsw i32 %i.qg, %.0235.i.i.us.us.us.i
  %spec.select264.i.i.us.us.us.i = select i1 %i.xd, i32 %i.xe, i32 %.0237.i.i.us.us.us.i ; 5 uses
  %i.xf = icmp slt i32 %i.vy, 0                   ; 2 uses
  %i.xg = insertelement <2 x ptr> poison, ptr %.1231.i.i.us.us.us.i, i64 0
  %i.xh = insertelement <2 x ptr> %i.xg, ptr %.0233.i.i.us.us.us.i, i64 1
  br i1 %i.xf, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.xi = mul nsw i32 %i.vy, %i.pp
  %i.xj = sext i32 %i.xi to i64
  %i.xk = sub nsw i64 0, %i.xj                    ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %.0233.i.i.us.us.us.i, i64 %i.xk ; 2 uses
  %i.xm = add nsw i32 %i.vy, %i.po
  %i.xn = getelementptr inbounds nuw [2 x i8], ptr %.1231.i.i.us.us.us.i, i64 %i.xk ; 2 uses
  %i.xo = insertelement <2 x ptr> poison, ptr %i.xn, i64 0
  %i.xp = insertelement <2 x ptr> %i.xo, ptr %i.xl, i64 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0239.i.i.us.us.us.i = phi i32 [ %i.xm, %bb.aa ], [ %i.po, %bb.z ] ; 2 uses
  %.0236.i.i.us.us.us.i = phi i32 [ 0, %bb.aa ], [ %i.vy, %bb.z ] ; 6 uses
  %.1234.i.i.us.us.us.i = phi ptr [ %i.xl, %bb.aa ], [ %.0233.i.i.us.us.us.i, %bb.z ] ; 5 uses
  %.3.i.i.us.us.us.i = phi ptr [ %i.xn, %bb.aa ], [ %.1231.i.i.us.us.us.i, %bb.z ] ; 2 uses
  %i.xq = phi <2 x ptr> [ %i.xp, %bb.aa ], [ %i.xh, %bb.z ] ; 2 uses
  %i.xr = add nsw i32 %.0236.i.i.us.us.us.i, %.0239.i.i.us.us.us.i
  %i.xs = icmp sgt i32 %i.xr, %i.qi
  %i.xt = sub nsw i32 %i.qi, %.0236.i.i.us.us.us.i
  %spec.select265.i.i.us.us.us.i = select i1 %i.xs, i32 %i.xt, i32 %.0239.i.i.us.us.us.i ; 5 uses
  %i.xu = icmp slt i32 %spec.select264.i.i.us.us.us.i, 1
  %i.xv = icmp slt i32 %spec.select265.i.i.us.us.us.i, 1
  %or.cond5.i.i.us.us.us.i = select i1 %i.xu, i1 true, i1 %i.xv
  br i1 %or.cond5.i.i.us.us.us.i, label %add_yblock.exit.i.us.us.us.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.xw = getelementptr inbounds i8, ptr %i.wt, i64 %i.rd ; 11 uses
  %i.xx = getelementptr inbounds i8, ptr %i.xw, i64 %i.re ; 5 uses
  tail call void @ff_snow_pred_block(ptr noundef nonnull %0, ptr noundef %i.xw, ptr noundef %i.wt, i64 noundef %i.rf, i32 noundef %.0235.i.i.us.us.us.i, i32 noundef %.0236.i.i.us.us.us.i, i32 noundef %spec.select264.i.i.us.us.us.i, i32 noundef %spec.select265.i.i.us.us.us.i, ptr noundef %.1229.i.i.us.us.us.i, i32 noundef %i.py, i32 noundef %i.qg, i32 noundef %i.qi) #12
  %i.xy = getelementptr inbounds nuw i8, ptr %.1229.i.i.us.us.us.i, i64 8 ; 3 uses
  %i.xz = load i8, ptr %i.xy, align 2, !tbaa !136 ; 4 uses
  %i.ya = and i8 %i.xz, 1                         ; 2 uses
  %.not.i294.i.i.us.us.us.i = icmp eq i8 %i.ya, 0
  %.phi.trans.insert.i.us.us.us.i = getelementptr inbounds nuw i8, ptr %.1227.i.i.us.us.us.i, i64 8 ; 3 uses
  %.pre.i.us.us.us.i = load i8, ptr %.phi.trans.insert.i.us.us.us.i, align 2, !tbaa !136 ; 2 uses
  %i.yb = and i8 %.pre.i.us.us.us.i, 1
  %.not16.i295.i.i.us.us.us.i = icmp eq i8 %i.yb, 0
  %or.cond.i.us.us.us.i = select i1 %.not.i294.i.i.us.us.us.i, i1 true, i1 %.not16.i295.i.i.us.us.us.i
  br i1 %or.cond.i.us.us.us.i, label %same_block.exit300.i.i.us.us.us.i, label %.split.i.us.us.us.i

.split.i.us.us.us.i:                              ; preds = %bb.ac
  %i.yc = getelementptr inbounds nuw i8, ptr %.1229.i.i.us.us.us.i, i64 5
  %i.yd = load i8, ptr %i.yc, align 1, !tbaa !86
  %i.ye = getelementptr inbounds nuw i8, ptr %.1227.i.i.us.us.us.i, i64 5
  %i.yf = load i8, ptr %i.ye, align 1, !tbaa !86
  %i.yg = getelementptr inbounds nuw i8, ptr %.1229.i.i.us.us.us.i, i64 6
  %i.yh = load i8, ptr %i.yg, align 2, !tbaa !86
  %i.yi = getelementptr inbounds nuw i8, ptr %.1227.i.i.us.us.us.i, i64 6
  %i.yj = load i8, ptr %i.yi, align 2, !tbaa !86
  %i.yk = getelementptr inbounds nuw i8, ptr %.1229.i.i.us.us.us.i, i64 7
  %i.yl = load i8, ptr %i.yk, align 1, !tbaa !86
  %i.ym = getelementptr inbounds nuw i8, ptr %.1227.i.i.us.us.us.i, i64 7
  %i.yn = load i8, ptr %i.ym, align 1, !tbaa !86
  %i.yo = icmp eq i8 %i.yd, %i.yf
  %i.yp = icmp eq i8 %i.yh, %i.yj
  %i.yq = and i1 %i.yo, %i.yp
  %i.yr = icmp eq i8 %i.yl, %i.yn
  %.not18.i296.i.i.us.us.us.i = and i1 %i.yq, %i.yr
  br i1 %.not18.i296.i.i.us.us.us.i, label %bb.ae, label %bb.ad

same_block.exit300.i.i.us.us.us.i:                ; preds = %bb.ac
  %i.ys = load i16, ptr %.1229.i.i.us.us.us.i, align 2, !tbaa !137
  %i.yt = sext i16 %i.ys to i32
  %i.yu = load i16, ptr %.1227.i.i.us.us.us.i, align 2, !tbaa !137
  %i.yv = sext i16 %i.yu to i32
  %i.yw = sub nsw i32 %i.yt, %i.yv
  %i.yx = getelementptr inbounds nuw i8, ptr %.1229.i.i.us.us.us.i, i64 2
  %i.yy = load i16, ptr %i.yx, align 2, !tbaa !138
  %i.yz = sext i16 %i.yy to i32
  %i.za = getelementptr inbounds nuw i8, ptr %.1227.i.i.us.us.us.i, i64 2
  %i.zb = load i16, ptr %i.za, align 2, !tbaa !138
  %i.zc = sext i16 %i.zb to i32
  %i.zd = sub nsw i32 %i.yz, %i.zc
  %i.ze = getelementptr inbounds nuw i8, ptr %.1229.i.i.us.us.us.i, i64 4
  %i.zf = load i8, ptr %i.ze, align 2, !tbaa !139
  %i.zg = zext i8 %i.zf to i32
  %i.zh = getelementptr inbounds nuw i8, ptr %.1227.i.i.us.us.us.i, i64 4
  %i.zi = load i8, ptr %i.zh, align 2, !tbaa !139
  %i.zj = zext i8 %i.zi to i32
  %i.zk = sub nsw i32 %i.zg, %i.zj
  %i.zl = xor i8 %.pre.i.us.us.us.i, %i.xz
  %i.zm = and i8 %i.zl, 1
  %i.zn = zext nneg i8 %i.zm to i32
  %i.zo = or i32 %i.yw, %i.zn
  %i.zp = or i32 %i.zo, %i.zd
  %i.zq = or i32 %i.zp, %i.zk
  %.not17.i299.i.i.us.us.us.i = icmp eq i32 %i.zq, 0
  br i1 %.not17.i299.i.i.us.us.us.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %same_block.exit300.i.i.us.us.us.i, %.split.i.us.us.us.i
  %i.zr = getelementptr inbounds i8, ptr %i.xx, i64 %i.re
  tail call void @ff_snow_pred_block(ptr noundef nonnull %0, ptr noundef %i.xx, ptr noundef %i.wt, i64 noundef %i.rf, i32 noundef %.0235.i.i.us.us.us.i, i32 noundef %.0236.i.i.us.us.us.i, i32 noundef %spec.select264.i.i.us.us.us.i, i32 noundef %spec.select265.i.i.us.us.us.i, ptr noundef nonnull %.1227.i.i.us.us.us.i, i32 noundef %i.py, i32 noundef %i.qg, i32 noundef %i.qi) #12
  %.pre281.i.us.us.us.i = load i8, ptr %i.xy, align 2, !tbaa !136 ; 2 uses
  %.pre978.i = and i8 %.pre281.i.us.us.us.i, 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %same_block.exit300.i.i.us.us.us.i, %.split.i.us.us.us.i
  %.pre-phi979.i = phi i8 [ %.pre978.i, %bb.ad ], [ %i.ya, %same_block.exit300.i.i.us.us.us.i ], [ 1, %.split.i.us.us.us.i ] ; 4 uses
  %i.zs = phi i8 [ %.pre281.i.us.us.us.i, %bb.ad ], [ %i.xz, %same_block.exit300.i.i.us.us.us.i ], [ %i.xz, %.split.i.us.us.us.i ] ; 5 uses
  %.sroa.7.0.i.us.us.us.i = phi ptr [ %i.xx, %bb.ad ], [ %i.xw, %same_block.exit300.i.i.us.us.us.i ], [ %i.xw, %.split.i.us.us.us.i ] ; 8 uses
  %.0221.i.i.us.us.us.i = phi ptr [ %i.zr, %bb.ad ], [ %i.xx, %same_block.exit300.i.i.us.us.us.i ], [ %i.xx, %.split.i.us.us.us.i ] ; 7 uses
  %.not.i287.i.i.us.us.us.i = icmp eq i8 %.pre-phi979.i, 0
  %.phi.trans.insert283.i.us.us.us.i = getelementptr inbounds nuw i8, ptr %.1225.i.i.us.us.us.i, i64 8 ; 2 uses
  %.pre284.i.us.us.us.i = load i8, ptr %.phi.trans.insert283.i.us.us.us.i, align 2, !tbaa !136 ; 3 uses
  %i.zt = and i8 %.pre284.i.us.us.us.i, 1
  %.not16.i288.i.i.us.us.us.i = icmp eq i8 %i.zt, 0 ; 2 uses
  %or.cond321.i.us.us.us.i = select i1 %.not.i287.i.i.us.us.us.i, i1 true, i1 %.not16.i288.i.i.us.us.us.i
  br i1 %or.cond321.i.us.us.us.i, label %same_block.exit293.i.i.us.us.us.i, label %.split298.i.us.us.us.i

.split298.i.us.us.us.i:                           ; preds = %bb.ae
  %i.zu = getelementptr inbounds nuw i8, ptr %.1229.i.i.us.us.us.i, i64 5
  %i.zv = load i8, ptr %i.zu, align 1, !tbaa !86
  %i.zw = getelementptr inbounds nuw i8, ptr %.1225.i.i.us.us.us.i, i64 5
  %i.zx = load i8, ptr %i.zw, align 1, !tbaa !86
  %i.zy = getelementptr inbounds nuw i8, ptr %.1229.i.i.us.us.us.i, i64 6
  %i.zz = load i8, ptr %i.zy, align 2, !tbaa !86
  %i.aaa = getelementptr inbounds nuw i8, ptr %.1225.i.i.us.us.us.i, i64 6
end_hunk_0
begin_hunk_1_@encode_blocks:bb.a
  %i.aia = getelementptr i8, ptr %.3.i.i.us.us.us.i, i64 %i.sg
  %scevgep264 = getelementptr i8, ptr %i.aia, i64 %i.sp ; 3 uses
  %i.aib = getelementptr i8, ptr %.1234.i.i.us.us.us.i, i64 %i.rh
  %scevgep265 = getelementptr i8, ptr %i.aib, i64 %i.rj ; 2 uses
  %scevgep266 = getelementptr i8, ptr %scevgep265, i64 %i.sr
  %scevgep267 = getelementptr i8, ptr %.1234.i.i.us.us.us.i, i64 %i.rj ; 2 uses
  %scevgep268 = getelementptr i8, ptr %scevgep267, i64 %i.sr
  %scevgep269 = getelementptr i8, ptr %.1234.i.i.us.us.us.i, i64 %i.rh ; 2 uses
  %scevgep270 = getelementptr i8, ptr %scevgep269, i64 %i.sr
  %scevgep271 = getelementptr i8, ptr %.1234.i.i.us.us.us.i, i64 %i.sr
  %scevgep272 = getelementptr i8, ptr %i.wt, i64 %i.rd
  %scevgep273 = getelementptr i8, ptr %scevgep272, i64 %i.st
  %scevgep274 = getelementptr i8, ptr %.sroa.7.0.i.us.us.us.i, i64 %i.st
  %scevgep275 = getelementptr i8, ptr %.sroa.12.0.i.us.us.us.i, i64 %i.st
  %scevgep276 = getelementptr i8, ptr %.sroa.17.0.i.us.us.us.i, i64 %i.st
  %i.aic = insertelement <8 x ptr> poison, ptr %scevgep266, i64 0
  %i.aid = insertelement <8 x ptr> %i.aic, ptr %scevgep268, i64 1
  %i.aie = insertelement <8 x ptr> %i.aid, ptr %scevgep270, i64 2
  %i.aif = insertelement <8 x ptr> %i.aie, ptr %scevgep264, i64 3
  %i.aig = insertelement <8 x ptr> %i.aif, ptr %scevgep273, i64 4
  %i.aih = insertelement <8 x ptr> %i.aig, ptr %scevgep274, i64 5
  %i.aii = insertelement <8 x ptr> %i.aih, ptr %scevgep275, i64 6
  %i.aij = insertelement <8 x ptr> %i.aii, ptr %scevgep276, i64 7
  %i.aik = insertelement <4 x ptr> poison, ptr %i.xw, i64 0
  %i.ail = insertelement <4 x ptr> %i.aik, ptr %.sroa.7.0.i.us.us.us.i, i64 1
  %i.aim = insertelement <4 x ptr> %i.ail, ptr %.sroa.12.0.i.us.us.us.i, i64 2
  %i.ain = insertelement <4 x ptr> %i.aim, ptr %.sroa.17.0.i.us.us.us.i, i64 3
  %i.aio = insertelement <4 x ptr> poison, ptr %scevgep264, i64 0
  %i.aip = shufflevector <4 x ptr> %i.aio, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.aiq = insertelement <2 x ptr> poison, ptr %scevgep265, i64 0
  %i.air = insertelement <2 x ptr> %i.aiq, ptr %scevgep267, i64 1
  %i.ais = insertelement <2 x ptr> poison, ptr %scevgep264, i64 0 ; 2 uses
  %i.ait = shufflevector <2 x ptr> %i.ais, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.aiu = insertelement <2 x ptr> poison, ptr %scevgep269, i64 0
  %i.aiv = insertelement <2 x ptr> %i.ais, ptr %scevgep271, i64 1
  %i.aiw = shufflevector <2 x ptr> %i.aiu, <2 x ptr> %i.xq, <2 x i32> <i32 0, i32 2>
  %i.aix = add i32 %i.pn, %smin.i
  %i.aiy = add i32 %i.aix, %smax.i
  %i.aiz = call i32 @llvm.smin.i32(i32 %i.qg, i32 %i.aiy)
  %i.aja = sub i32 %i.aiz, %smax.i                ; 2 uses
  %i.ajb = call i32 @llvm.umax.i32(i32 %i.aja, i32 1)
  %i.ajc = zext i32 %i.ajb to i64                 ; 2 uses
  %min.iters.check313 = icmp ult i32 %i.aja, 16
  %i.ajd = shufflevector <2 x ptr> %i.xq, <2 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0>
  %i.aje = icmp ult <8 x ptr> %i.ajd, %i.aij
  %i.ajf = icmp ult <2 x ptr> %i.air, %i.ait
  %i.ajg = icmp ult <2 x ptr> %i.aiw, %i.aiv
  %i.ajh = icmp ult <4 x ptr> %i.ain, %i.aip
  %i.aji = shufflevector <2 x i1> %i.ajf, <2 x i1> %i.ajg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ajj = shufflevector <4 x i1> %i.ajh, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ajk = shufflevector <8 x i1> %i.aji, <8 x i1> %i.ajj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ajl = and <8 x i1> %i.aje, %i.ajk
  %i.ajm = bitcast <8 x i1> %i.ajl to i8
  %i.ajn = icmp ne i8 %i.ajm, 0
  %op.rdx = or i1 %i.ajn, %stride.check295
  %n.vec315 = and i64 %i.ajc, 4294967288          ; 3 uses
  %cmp.n329 = icmp eq i64 %n.vec315, %i.ajc
  br label %.lr.ph.i.us.us.us.i

.lr.ph.i.us.us.us.i:                              ; preds = %._crit_edge.i.us.us.us.i, %.lr.ph.preheader.i.us.us.us.i
  %indvars.iv247.i.us.us.us.i = phi i64 [ 0, %.lr.ph.preheader.i.us.us.us.i ], [ %indvars.iv.next248.i.us.us.us.i, %._crit_edge.i.us.us.us.i ] ; 3 uses
  %i.ajo = mul nuw nsw i64 %indvars.iv247.i.us.us.us.i, %i.rm ; 2 uses
  %i.ajp = getelementptr inbounds nuw i8, ptr %.1234.i.i.us.us.us.i, i64 %i.ajo ; 4 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajp, i64 %i.rh ; 2 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajp, i64 %i.rj ; 3 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajr, i64 %i.rh ; 2 uses
  %i.ajt = mul nsw i64 %indvars.iv247.i.us.us.us.i, %i.rf ; 2 uses
  %invariant.gep.i.us.us.us.i = getelementptr inbounds nuw [2 x i8], ptr %.3.i.i.us.us.us.i, i64 %i.ajo ; 2 uses
  %brmerge = select i1 %min.iters.check313, i1 true, i1 %op.rdx
  br i1 %brmerge, label %scalar.ph312.preheader, label %vector.body316

vector.body316:                                   ; preds = %.lr.ph.i.us.us.us.i, %vector.body316
  %index317 = phi i64 [ %index.next327, %vector.body316 ], [ 0, %.lr.ph.i.us.us.us.i ] ; 7 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajp, i64 %index317
  %wide.load318 = load <8 x i8>, ptr %i.aju, align 1, !tbaa !86, !alias.scope !519
  %i.ajv = zext <8 x i8> %wide.load318 to <8 x i32>
  %i.ajw = add nsw i64 %index317, %i.ajt          ; 4 uses
  %i.ajx = getelementptr inbounds i8, ptr %.sroa.17.0.i.us.us.us.i, i64 %i.ajw
  %wide.load319 = load <8 x i8>, ptr %i.ajx, align 1, !tbaa !86, !alias.scope !520
  %i.ajy = zext <8 x i8> %wide.load319 to <8 x i32>
  %i.ajz = mul nuw nsw <8 x i32> %i.ajy, %i.ajv
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajq, i64 %index317
  %wide.load320 = load <8 x i8>, ptr %i.aka, align 1, !tbaa !86, !alias.scope !521
  %i.akb = zext <8 x i8> %wide.load320 to <8 x i32>
  %i.akc = getelementptr inbounds i8, ptr %.sroa.12.0.i.us.us.us.i, i64 %i.ajw
  %wide.load321 = load <8 x i8>, ptr %i.akc, align 1, !tbaa !86, !alias.scope !522
  %i.akd = zext <8 x i8> %wide.load321 to <8 x i32>
  %i.ake = mul nuw nsw <8 x i32> %i.akd, %i.akb
  %i.akf = add nuw nsw <8 x i32> %i.ake, %i.ajz
  %i.akg = getelementptr inbounds nuw i8, ptr %i.ajr, i64 %index317
  %wide.load322 = load <8 x i8>, ptr %i.akg, align 1, !tbaa !86, !alias.scope !523
  %i.akh = zext <8 x i8> %wide.load322 to <8 x i32>
  %i.aki = getelementptr inbounds i8, ptr %.sroa.7.0.i.us.us.us.i, i64 %i.ajw
  %wide.load323 = load <8 x i8>, ptr %i.aki, align 1, !tbaa !86, !alias.scope !524
  %i.akj = zext <8 x i8> %wide.load323 to <8 x i32>
  %i.akk = mul nuw nsw <8 x i32> %i.akj, %i.akh
  %i.akl = add nuw nsw <8 x i32> %i.akf, %i.akk
  %i.akm = getelementptr inbounds nuw i8, ptr %i.ajs, i64 %index317
  %wide.load324 = load <8 x i8>, ptr %i.akm, align 1, !tbaa !86, !alias.scope !525
  %i.akn = zext <8 x i8> %wide.load324 to <8 x i32>
  %i.ako = getelementptr inbounds i8, ptr %i.xw, i64 %i.ajw
  %wide.load325 = load <8 x i8>, ptr %i.ako, align 1, !tbaa !86, !alias.scope !526
  %i.akp = zext <8 x i8> %wide.load325 to <8 x i32>
  %i.akq = mul nuw nsw <8 x i32> %i.akp, %i.akn
  %i.akr = add nuw nsw <8 x i32> %i.akl, %i.akq
  %i.aks = lshr <8 x i32> %i.akr, splat (i32 2)
  %i.akt = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.us.us.us.i, i64 %index317 ; 2 uses
  %wide.load326 = load <8 x i16>, ptr %i.akt, align 2, !tbaa !125, !alias.scope !527, !noalias !528
  %i.aku = trunc nuw <8 x i32> %i.aks to <8 x i16>
  %i.akv = sub <8 x i16> %wide.load326, %i.aku
  store <8 x i16> %i.akv, ptr %i.akt, align 2, !tbaa !125, !alias.scope !527, !noalias !528
  %index.next327 = add nuw i64 %index317, 8       ; 2 uses
  %i.akw = icmp eq i64 %index.next327, %n.vec315
  br i1 %i.akw, label %middle.block328, label %vector.body316, !llvm.loop !488

middle.block328:                                  ; preds = %vector.body316
  br i1 %cmp.n329, label %._crit_edge.i.us.us.us.i, label %scalar.ph312.preheader

scalar.ph312.preheader:                           ; preds = %.lr.ph.i.us.us.us.i, %middle.block328
  %indvars.iv.i.us.us.us.i.ph = phi i64 [ %n.vec315, %middle.block328 ], [ 0, %.lr.ph.i.us.us.us.i ]
  br label %scalar.ph312

scalar.ph312:                                     ; preds = %scalar.ph312.preheader, %scalar.ph312
  %indvars.iv.i.us.us.us.i = phi i64 [ %indvars.iv.next.i.us.us.us.i, %scalar.ph312 ], [ %indvars.iv.i.us.us.us.i.ph, %scalar.ph312.preheader ] ; 7 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %i.ajp, i64 %indvars.iv.i.us.us.us.i
  %i.aky = load i8, ptr %i.akx, align 1, !tbaa !86
  %i.akz = zext i8 %i.aky to i32
  %i.ala = add nsw i64 %indvars.iv.i.us.us.us.i, %i.ajt ; 4 uses
  %i.alb = getelementptr inbounds i8, ptr %.sroa.17.0.i.us.us.us.i, i64 %i.ala
  %i.alc = load i8, ptr %i.alb, align 1, !tbaa !86
  %i.ald = zext i8 %i.alc to i32
  %i.ale = mul nuw nsw i32 %i.ald, %i.akz
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ajq, i64 %indvars.iv.i.us.us.us.i
  %i.alg = load i8, ptr %i.alf, align 1, !tbaa !86
  %i.alh = zext i8 %i.alg to i32
  %i.ali = getelementptr inbounds i8, ptr %.sroa.12.0.i.us.us.us.i, i64 %i.ala
  %i.alj = load i8, ptr %i.ali, align 1, !tbaa !86
  %i.alk = zext i8 %i.alj to i32
  %i.all = mul nuw nsw i32 %i.alk, %i.alh
  %i.alm = add nuw nsw i32 %i.all, %i.ale
  %i.aln = getelementptr inbounds nuw i8, ptr %i.ajr, i64 %indvars.iv.i.us.us.us.i
  %i.alo = load i8, ptr %i.aln, align 1, !tbaa !86
  %i.alp = zext i8 %i.alo to i32
  %i.alq = getelementptr inbounds i8, ptr %.sroa.7.0.i.us.us.us.i, i64 %i.ala
  %i.alr = load i8, ptr %i.alq, align 1, !tbaa !86
  %i.als = zext i8 %i.alr to i32
  %i.alt = mul nuw nsw i32 %i.als, %i.alp
  %i.alu = add nuw nsw i32 %i.alm, %i.alt
  %i.alv = getelementptr inbounds nuw i8, ptr %i.ajs, i64 %indvars.iv.i.us.us.us.i
  %i.alw = load i8, ptr %i.alv, align 1, !tbaa !86
  %i.alx = zext i8 %i.alw to i32
  %i.aly = getelementptr inbounds i8, ptr %i.xw, i64 %i.ala
  %i.alz = load i8, ptr %i.aly, align 1, !tbaa !86
  %i.ama = zext i8 %i.alz to i32
  %i.amb = mul nuw nsw i32 %i.ama, %i.alx
  %i.amc = add nuw nsw i32 %i.alu, %i.amb
  %i.amd = lshr i32 %i.amc, 2
  %gep.i.us.us.us.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.us.us.us.i, i64 %indvars.iv.i.us.us.us.i ; 2 uses
  %i.ame = load i16, ptr %gep.i.us.us.us.i, align 2, !tbaa !125
  %i.amf = trunc nuw i32 %i.amd to i16
  %i.amg = sub i16 %i.ame, %i.amf
  store i16 %i.amg, ptr %gep.i.us.us.us.i, align 2, !tbaa !125
  %indvars.iv.next.i.us.us.us.i = add nuw nsw i64 %indvars.iv.i.us.us.us.i, 1 ; 2 uses
  %exitcond900.not.i = icmp eq i64 %indvars.iv.next.i.us.us.us.i, %umax899.i
  br i1 %exitcond900.not.i, label %._crit_edge.i.us.us.us.i, label %scalar.ph312, !llvm.loop !489

._crit_edge.i.us.us.us.i:                         ; preds = %scalar.ph312, %middle.block328
  %indvars.iv.next248.i.us.us.us.i = add nuw nsw i64 %indvars.iv247.i.us.us.us.i, 1 ; 2 uses
  %exitcond907.not.i = icmp eq i64 %indvars.iv.next248.i.us.us.us.i, %umax906.i
  br i1 %exitcond907.not.i, label %add_yblock.exit.i.us.us.us.i, label %.lr.ph.i.us.us.us.i, !llvm.loop !1

add_yblock.exit.i.us.us.us.i:                     ; preds = %._crit_edge.i.us.us.us.i, %bb.ab
  %i.amh = tail call i32 @llvm.smax.i32(i32 %i.vy, i32 0)
  %i.ami = add nsw i32 %i.vy, %i.po               ; 2 uses
  %i.amj = tail call i32 @llvm.smin.i32(i32 %i.qi, i32 %i.ami) ; 2 uses
  %i.amk = icmp slt i32 %i.amh, %i.amj
  br i1 %i.amk, label %.lr.ph207.i.us.us.us.i, label %._crit_edge208.i.us.us.us.i

.lr.ph207.i.us.us.us.i:                           ; preds = %add_yblock.exit.i.us.us.us.i
  %i.aml = tail call i32 @llvm.smax.i32(i32 %i.vw, i32 0)
  %i.amm = add nsw i32 %i.vw, %i.pn               ; 2 uses
  %i.amn = tail call i32 @llvm.smin.i32(i32 %i.qg, i32 %i.amm) ; 2 uses
  %i.amo = icmp slt i32 %i.aml, %i.amn
  %i.amp = icmp sle i32 %i.ami, %i.qi             ; 4 uses
  %i.amq = icmp sle i32 %i.amm, %i.qg
  %.fr.us.us.i = freeze i1 %i.amq                 ; 8 uses
  br i1 %i.amo, label %.lr.ph207.split.us.i.us.us.us.i, label %._crit_edge208.i.us.us.us.i

.lr.ph207.split.us.i.us.us.us.i:                  ; preds = %.lr.ph207.i.us.us.us.i
  %i.amr = zext nneg i32 %i.amn to i64            ; 10 uses
  %i.ams = zext nneg i32 %i.amj to i64            ; 4 uses
  br i1 %i.xf, label %.lr.ph207.split.us.split.us.i.us.us.us.i, label %.lr.ph200.us.i.preheader.us.us.us.i

.lr.ph200.us.i.preheader.us.us.us.i:              ; preds = %.lr.ph207.split.us.i.us.us.us.i
  br i1 %i.ww, label %.lr.ph200.us.i.us.us.us.us.i, label %.lr.ph200.us.i.us725.us.us.i.preheader

.lr.ph200.us.i.us725.us.us.i.preheader:           ; preds = %.lr.ph200.us.i.preheader.us.us.us.i
  %scevgep238 = getelementptr i8, ptr %scevgep237, i64 %i.tx
  %i.amt = add nsw i64 %umax230, %i.qc
  %scevgep241 = getelementptr i8, ptr %i.pq, i64 %i.ty
  %i.amu = add nuw nsw i64 %i.vq, 1
  %i.amv = call i64 @llvm.umax.i64(i64 %i.amu, i64 %i.amr)
  %i.amw = sub nsw i64 %i.amv, %i.vq              ; 3 uses
  %min.iters.check = icmp ult i64 %i.amw, 8
  %i.amx = trunc i64 %i.uk to i32
  %i.amy = icmp ugt i64 %i.uk, 4294967295
  %n.vec = and i64 %i.amw, -8                     ; 3 uses
  %i.amz = add nsw i64 %n.vec, %i.vq
  %cmp.n = icmp eq i64 %i.amw, %n.vec
  br label %.lr.ph200.us.i.us725.us.us.i

.lr.ph200.us.i.us725.us.us.i:                     ; preds = %.lr.ph200.us.i.us725.us.us.i.preheader, %._crit_edge201.split.us220.i.split.us.us.us.i
  %indvar = phi i32 [ 0, %.lr.ph200.us.i.us725.us.us.i.preheader ], [ %indvar.next, %._crit_edge201.split.us220.i.split.us.us.us.i ] ; 3 uses
  %indvars.iv256.i.us726.us.us.i = phi i64 [ %i.vm, %.lr.ph200.us.i.us725.us.us.i.preheader ], [ %indvars.iv.next257.i.us732.us.us.i, %._crit_edge201.split.us220.i.split.us.us.us.i ] ; 3 uses
  %.1163206.us.i.us727.us.us.i = phi i32 [ %.0162234.i.us.us.us.i, %.lr.ph200.us.i.us725.us.us.i.preheader ], [ %.us-phi761.us.us.i, %._crit_edge201.split.us220.i.split.us.us.us.i ] ; 6 uses
  %.1166205.us.i.us728.us.us.i = phi i32 [ %.0165233.i.us.us.us.i, %.lr.ph200.us.i.us725.us.us.i.preheader ], [ %.us-phi.us796.us.i, %._crit_edge201.split.us220.i.split.us.us.us.i ] ; 6 uses
  %i.ana = mul i32 %i.pp, %indvar
  %i.anb = add i32 %i.tw, %i.ana
  %i.anc = sext i32 %i.anb to i64                 ; 4 uses
  %i.and = shl nsw i64 %i.anc, 1
  %scevgep236 = getelementptr i8, ptr %scevgep235, i64 %i.and ; 2 uses
  %i.ane = add nsw i64 %i.amt, %i.anc
  %i.anf = shl nsw i64 %i.ane, 1
  %scevgep239 = getelementptr i8, ptr %scevgep238, i64 %i.anf ; 2 uses
  %scevgep240 = getelementptr i8, ptr %i.pq, i64 %i.anc
  %scevgep242 = getelementptr i8, ptr %scevgep241, i64 %i.anc
  %i.ang = mul i32 %i.pp, %indvar
  %i.anh = add i32 %i.us, %i.ang                  ; 2 uses
  %i.ani = trunc nuw nsw i64 %indvars.iv256.i.us726.us.us.i to i32
  %i.anj = add i32 %.neg175.i.us.us.us.i, %i.ani  ; 2 uses
  %i.ank = mul nsw i32 %i.anj, %i.pp              ; 3 uses
  %.not176.us.i.us729.us.us.i = icmp slt i32 %i.anj, %i.po
  %or.cond.us.i.us730.us.us.i = or i1 %i.amp, %.not176.us.i.us729.us.us.i
  %i.anl = mul nsw i64 %indvars.iv256.i.us726.us.us.i, %i.rf
  %invariant.gep313.i.us731.us.us.i = getelementptr i8, ptr %i.px, i64 %i.anl ; 4 uses
  br i1 %or.cond.us.i.us730.us.us.i, label %.lr.ph200.us.i.us725.split.us.us.us.i, label %.lr.ph200.us.i.us725.split.us769.us.i

.lr.ph200.us.i.us725.split.us769.us.i:            ; preds = %.lr.ph200.us.i.us725.us.us.i, %bb.am
  %indvars.iv252.i.us.us770.us.i = phi i64 [ %indvars.iv.next253.i.us.us776.us.i, %bb.am ], [ %i.vq, %.lr.ph200.us.i.us725.us.us.i ] ; 3 uses
  %.2164198.us212.i.us.us771.us.i = phi i32 [ %i.aor, %bb.am ], [ %.1163206.us.i.us727.us.us.i, %.lr.ph200.us.i.us725.us.us.i ]
  %.2167197.us213.i.us.us772.us.i = phi i32 [ %i.aop, %bb.am ], [ %.1166205.us.i.us728.us.us.i, %.lr.ph200.us.i.us725.us.us.i ]
  %i.anm = trunc nuw nsw i64 %indvars.iv252.i.us.us770.us.i to i32
  %i.ann = add i32 %.neg.i.us.us.us.i, %i.anm     ; 2 uses
  %i.ano = add nsw i32 %i.ann, %i.ank             ; 3 uses
  %i.anp = sext i32 %i.ano to i64                 ; 2 uses
  %i.anq = getelementptr inbounds i8, ptr %i.pq, i64 %i.anp
  %i.anr = load i8, ptr %i.anq, align 1, !tbaa !86
  %i.ans = zext i8 %i.anr to i32
  %i.ant = sub nsw i32 %i.ano, %i.qy
  %i.anu = sext i32 %i.ant to i64
  %i.anv = getelementptr inbounds i8, ptr %i.pq, i64 %i.anu
  %i.anw = load i8, ptr %i.anv, align 1, !tbaa !86
  %i.anx = zext i8 %i.anw to i32
  %i.any = add nuw nsw i32 %i.anx, %i.ans         ; 2 uses
  %.not177.us217.i.us.us773.us.i = icmp slt i32 %i.ann, %i.pn
  %or.cond178.us218.i.us.us.us.i = or i1 %.fr.us.us.i, %.not177.us217.i.us.us773.us.i
  br i1 %or.cond178.us218.i.us.us.us.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph200.us.i.us725.split.us769.us.i
  %i.anz = sub nsw i32 %i.ano, %i.pn
  %i.aoa = sext i32 %i.anz to i64
  %i.aob = getelementptr inbounds i8, ptr %i.pq, i64 %i.aoa
  %i.aoc = load i8, ptr %i.aob, align 1, !tbaa !86
  %i.aod = zext i8 %i.aoc to i32
  %i.aoe = add nuw nsw i32 %i.any, %i.aod
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph200.us.i.us725.split.us769.us.i
  %.3.us219.i.us.us774.us.i = phi i32 [ %i.aoe, %bb.al ], [ %i.any, %.lr.ph200.us.i.us725.split.us769.us.i ] ; 3 uses
  %i.aof = getelementptr inbounds [2 x i8], ptr %i.qd, i64 %i.anp ; 2 uses
  %i.aog = load i16, ptr %i.aof, align 2, !tbaa !125
  %i.aoh = sext i16 %i.aog to i32
  %i.aoi = sub nsw i32 8, %i.aoh                  ; 2 uses
  %i.aoj = trunc i32 %i.aoi to i16
  store i16 %i.aoj, ptr %i.aof, align 2, !tbaa !125
  %gep314.i.us.us775.us.i = getelementptr i8, ptr %invariant.gep313.i.us731.us.us.i, i64 %indvars.iv252.i.us.us770.us.i
  %i.aok = load i8, ptr %gep314.i.us.us775.us.i, align 1, !tbaa !86
  %i.aol = zext i8 %i.aok to i32
  %i.aom = ashr i32 %i.aoi, 4
  %i.aon = sub nsw i32 %i.aol, %i.aom
  %i.aoo = mul nsw i32 %i.aon, %.3.us219.i.us.us774.us.i
  %i.aop = add nsw i32 %i.aoo, %.2167197.us213.i.us.us772.us.i ; 2 uses
  %i.aoq = mul nuw nsw i32 %.3.us219.i.us.us774.us.i, %.3.us219.i.us.us774.us.i
  %i.aor = add nsw i32 %i.aoq, %.2164198.us212.i.us.us771.us.i ; 2 uses
  %indvars.iv.next253.i.us.us776.us.i = add nuw nsw i64 %indvars.iv252.i.us.us770.us.i, 1 ; 2 uses
  %i.aos = icmp samesign ult i64 %indvars.iv.next253.i.us.us776.us.i, %i.amr
  br i1 %i.aos, label %.lr.ph200.us.i.us725.split.us769.us.i, label %._crit_edge201.split.us220.i.split.us.us.us.i, !llvm.loop !490

.lr.ph200.us.i.us725.split.us.us.us.i:            ; preds = %.lr.ph200.us.i.us725.us.us.i
  br i1 %.fr.us.us.i, label %.lr.ph200.us.i.us725.split.us.split.us.us.us.i, label %.lr.ph200.us.i.us725.split.us.split.us780.us.i

.lr.ph200.us.i.us725.split.us.split.us780.us.i:   ; preds = %.lr.ph200.us.i.us725.split.us.us.us.i, %bb.ao
  %indvars.iv252.i.us.us.us781.us.i = phi i64 [ %indvars.iv.next253.i.us.us.us785.us.i, %bb.ao ], [ %i.vq, %.lr.ph200.us.i.us725.split.us.us.us.i ] ; 3 uses
  %.2164198.us212.i.us.us.us782.us.i = phi i32 [ %i.aps, %bb.ao ], [ %.1163206.us.i.us727.us.us.i, %.lr.ph200.us.i.us725.split.us.us.us.i ]
  %.2167197.us213.i.us.us.us783.us.i = phi i32 [ %i.apq, %bb.ao ], [ %.1166205.us.i.us728.us.us.i, %.lr.ph200.us.i.us725.split.us.us.us.i ]
  %i.aot = trunc nuw nsw i64 %indvars.iv252.i.us.us.us781.us.i to i32
  %i.aou = add i32 %.neg.i.us.us.us.i, %i.aot     ; 2 uses
  %i.aov = add nsw i32 %i.aou, %i.ank             ; 2 uses
  %i.aow = sext i32 %i.aov to i64                 ; 2 uses
  %i.aox = getelementptr inbounds i8, ptr %i.pq, i64 %i.aow
  %i.aoy = load i8, ptr %i.aox, align 1, !tbaa !86
  %i.aoz = zext i8 %i.aoy to i32                  ; 2 uses
  %.not177.us217.i.us.us.us.us.i = icmp slt i32 %i.aou, %i.pn
  br i1 %.not177.us217.i.us.us.us.us.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.lr.ph200.us.i.us725.split.us.split.us780.us.i
  %i.apa = sub nsw i32 %i.aov, %i.pn
  %i.apb = sext i32 %i.apa to i64
  %i.apc = getelementptr inbounds i8, ptr %i.pq, i64 %i.apb
  %i.apd = load i8, ptr %i.apc, align 1, !tbaa !86
  %i.ape = zext i8 %i.apd to i32
  %i.apf = add nuw nsw i32 %i.ape, %i.aoz
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.lr.ph200.us.i.us725.split.us.split.us780.us.i
  %.3.us219.i.us.us.us.us.i = phi i32 [ %i.apf, %bb.an ], [ %i.aoz, %.lr.ph200.us.i.us725.split.us.split.us780.us.i ] ; 3 uses
  %i.apg = getelementptr inbounds [2 x i8], ptr %i.qd, i64 %i.aow ; 2 uses
  %i.aph = load i16, ptr %i.apg, align 2, !tbaa !125
  %i.api = sext i16 %i.aph to i32
  %i.apj = sub nsw i32 8, %i.api                  ; 2 uses
  %i.apk = trunc i32 %i.apj to i16
  store i16 %i.apk, ptr %i.apg, align 2, !tbaa !125
  %gep314.i.us.us.us784.us.i = getelementptr i8, ptr %invariant.gep313.i.us731.us.us.i, i64 %indvars.iv252.i.us.us.us781.us.i
  %i.apl = load i8, ptr %gep314.i.us.us.us784.us.i, align 1, !tbaa !86
  %i.apm = zext i8 %i.apl to i32
  %i.apn = ashr i32 %i.apj, 4
  %i.apo = sub nsw i32 %i.apm, %i.apn
  %i.app = mul nsw i32 %i.apo, %.3.us219.i.us.us.us.us.i
  %i.apq = add nsw i32 %i.app, %.2167197.us213.i.us.us.us783.us.i ; 2 uses
  %i.apr = mul nuw nsw i32 %.3.us219.i.us.us.us.us.i, %.3.us219.i.us.us.us.us.i
  %i.aps = add nsw i32 %i.apr, %.2164198.us212.i.us.us.us782.us.i ; 2 uses
  %indvars.iv.next253.i.us.us.us785.us.i = add nuw nsw i64 %indvars.iv252.i.us.us.us781.us.i, 1 ; 2 uses
  %i.apt = icmp samesign ult i64 %indvars.iv.next253.i.us.us.us785.us.i, %i.amr
  br i1 %i.apt, label %.lr.ph200.us.i.us725.split.us.split.us780.us.i, label %._crit_edge201.split.us220.i.split.us.us.us.i, !llvm.loop !490

.lr.ph200.us.i.us725.split.us.split.us.us.us.i:   ; preds = %.lr.ph200.us.i.us725.split.us.us.us.i
  %invariant.op.us.us.i = add i32 %i.ank, %.neg.i.us.us.us.i ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph200.us.i.us725.split.us.split.us.us.us.i
  %i.apu = add i32 %i.anh, %i.amx
  %i.apv = icmp slt i32 %i.apu, %i.anh
  %i.apw = or i1 %i.apv, %i.amy
  br i1 %i.apw, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %scevgep, %scevgep239
  %bound1 = icmp ult ptr %scevgep236, %scevgep233
  %found.conflict = and i1 %bound0, %bound1
  %i.apx = or i1 %found.conflict, %stride.check
  %bound0243 = icmp ult ptr %scevgep236, %scevgep242
  %bound1244 = icmp ult ptr %scevgep240, %scevgep239
  %found.conflict245 = and i1 %bound0243, %bound1244
  %conflict.rdx = or i1 %i.apx, %found.conflict245
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.apy = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1163206.us.i.us727.us.us.i, i64 0
  %i.apz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1166205.us.i.us728.us.us.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.apy, %vector.ph ], [ %i.are, %vector.body ]
  %vec.phi246 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.arf, %vector.body ]
  %vec.phi247 = phi <4 x i32> [ %i.apz, %vector.ph ], [ %i.ara, %vector.body ]
  %vec.phi248 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.arb, %vector.body ]
  %i.aqa = add nuw i64 %index, %i.vq              ; 2 uses
  %i.aqb = trunc nuw nsw i64 %i.aqa to i32
  %i.aqc = add i32 %invariant.op.us.us.i, %i.aqb
  %i.aqd = sext i32 %i.aqc to i64                 ; 2 uses
  %i.aqe = getelementptr inbounds i8, ptr %i.pq, i64 %i.aqd ; 2 uses
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqe, i64 4
  %wide.load = load <4 x i8>, ptr %i.aqe, align 1, !tbaa !86, !alias.scope !529
  %wide.load249 = load <4 x i8>, ptr %i.aqf, align 1, !tbaa !86, !alias.scope !529
  %i.aqg = zext <4 x i8> %wide.load to <4 x i32>  ; 3 uses
  %i.aqh = zext <4 x i8> %wide.load249 to <4 x i32> ; 3 uses
  %i.aqi = getelementptr inbounds [2 x i8], ptr %i.qd, i64 %i.aqd ; 3 uses
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqi, i64 8 ; 2 uses
  %wide.load250 = load <4 x i16>, ptr %i.aqi, align 2, !tbaa !125, !alias.scope !530, !noalias !529
  %wide.load251 = load <4 x i16>, ptr %i.aqj, align 2, !tbaa !125, !alias.scope !530, !noalias !529
  %i.aqk = sext <4 x i16> %wide.load250 to <4 x i32>
  %i.aql = sext <4 x i16> %wide.load251 to <4 x i32>
  %i.aqm = sub nsw <4 x i32> splat (i32 8), %i.aqk ; 2 uses
  %i.aqn = sub nsw <4 x i32> splat (i32 8), %i.aql ; 2 uses
  %i.aqo = trunc <4 x i32> %i.aqm to <4 x i16>
  %i.aqp = trunc <4 x i32> %i.aqn to <4 x i16>
  store <4 x i16> %i.aqo, ptr %i.aqi, align 2, !tbaa !125, !alias.scope !530, !noalias !529
  store <4 x i16> %i.aqp, ptr %i.aqj, align 2, !tbaa !125, !alias.scope !530, !noalias !529
  %i.aqq = getelementptr i8, ptr %invariant.gep313.i.us731.us.us.i, i64 %i.aqa ; 2 uses
  %i.aqr = getelementptr i8, ptr %i.aqq, i64 4
  %wide.load252 = load <4 x i8>, ptr %i.aqq, align 1, !tbaa !86, !alias.scope !531, !noalias !530
  %wide.load253 = load <4 x i8>, ptr %i.aqr, align 1, !tbaa !86, !alias.scope !531, !noalias !530
  %i.aqs = zext <4 x i8> %wide.load252 to <4 x i32>
  %i.aqt = zext <4 x i8> %wide.load253 to <4 x i32>
  %i.aqu = ashr <4 x i32> %i.aqm, splat (i32 4)
  %i.aqv = ashr <4 x i32> %i.aqn, splat (i32 4)
  %i.aqw = sub nsw <4 x i32> %i.aqs, %i.aqu
  %i.aqx = sub nsw <4 x i32> %i.aqt, %i.aqv
  %i.aqy = mul nsw <4 x i32> %i.aqw, %i.aqg
  %i.aqz = mul nsw <4 x i32> %i.aqx, %i.aqh
  %i.ara = add <4 x i32> %i.aqy, %vec.phi247      ; 2 uses
  %i.arb = add <4 x i32> %i.aqz, %vec.phi248      ; 2 uses
end_hunk_1
