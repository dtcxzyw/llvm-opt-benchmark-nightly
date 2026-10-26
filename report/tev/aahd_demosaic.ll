Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/aahd_demosaic?download=true
inline.NumInlined: 46
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN4AAHD12evaluate_ahdEv:.preheader326

bb.m:                                             ; preds = %bb.l
  %i.pm = load ptr, ptr %i.ku, align 8, !tbaa !86
  %i.pn = getelementptr i8, ptr %i.pm, i64 %indvars.iv384
  %i.po = getelementptr i8, ptr %i.pn, i64 %i.ai  ; 2 uses
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !99
  %i.pq = add i8 %i.pp, 1
  store i8 %i.pq, ptr %i.po, align 1, !tbaa !99
  br i1 %i.kq, label %.preheader324.preheader.2, label %.loopexit.2

.preheader324.preheader.2:                        ; preds = %bb.m
  %i.pr = load i32, ptr %i.kt, align 4, !tbaa !93
  %i.ps = getelementptr inbounds [12 x i8], ptr %i.kt, i64 %i.as ; 3 uses
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !93
  %i.pu = sub nsw i32 %i.pr, %i.pt
  %i.pv = tail call i32 @llvm.abs.i32(i32 %i.pu, i1 true)
  %i.pw = uitofp nneg i32 %i.pv to float
  %i.px = fcmp ogt float %., %i.pw
  br i1 %i.px, label %bb.n, label %.loopexit.2

bb.n:                                             ; preds = %.preheader324.preheader.2
  %i.py = load i32, ptr %i.kv, align 4, !tbaa !93
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ps, i64 4
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !93
  %i.qb = sub nsw i32 %i.py, %i.qa                ; 2 uses
  %i.qc = mul nsw i32 %i.qb, %i.qb
  %i.qd = load i32, ptr %i.kw, align 4, !tbaa !93
  %i.qe = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !93
  %i.qg = sub nsw i32 %i.qd, %i.qf                ; 2 uses
  %i.qh = mul nsw i32 %i.qg, %i.qg
  %i.qi = add nuw nsw i32 %i.qh, %i.qc
  %i.qj = icmp samesign ult i32 %i.qi, %i.ki
  br i1 %i.qj, label %.critedge.2, label %.loopexit.2

.critedge.2:                                      ; preds = %bb.n
  %i.qk = load ptr, ptr %i.ku, align 8, !tbaa !86
  %i.ql = getelementptr i8, ptr %i.qk, i64 %i.as
  %i.qm = getelementptr i8, ptr %i.ql, i64 %indvars.iv384 ; 2 uses
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !99
  %i.qo = add i8 %i.qn, 1
  store i8 %i.qo, ptr %i.qm, align 1, !tbaa !99
  %i.qp = load i32, ptr %i.kt, align 4, !tbaa !93
  %i.qq = getelementptr inbounds [12 x i8], ptr %i.kt, i64 %i.at ; 3 uses
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !93
  %i.qs = sub nsw i32 %i.qp, %i.qr
  %i.qt = tail call i32 @llvm.abs.i32(i32 %i.qs, i1 true)
  %i.qu = uitofp nneg i32 %i.qt to float
  %i.qv = fcmp ogt float %., %i.qu
  br i1 %i.qv, label %bb.o, label %.loopexit.2

bb.o:                                             ; preds = %.critedge.2
  %i.qw = load i32, ptr %i.kv, align 4, !tbaa !93
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qq, i64 4
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !93
  %i.qz = sub nsw i32 %i.qw, %i.qy                ; 2 uses
  %i.ra = mul nsw i32 %i.qz, %i.qz
  %i.rb = load i32, ptr %i.kw, align 4, !tbaa !93
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !93
  %i.re = sub nsw i32 %i.rb, %i.rd                ; 2 uses
  %i.rf = mul nsw i32 %i.re, %i.re
  %i.rg = add nuw nsw i32 %i.rf, %i.ra
  %i.rh = icmp samesign ult i32 %i.rg, %i.ki
  br i1 %i.rh, label %.critedge.1.2, label %.loopexit.2

.critedge.1.2:                                    ; preds = %bb.o
  %i.ri = load ptr, ptr %i.ku, align 8, !tbaa !86
  %i.rj = getelementptr i8, ptr %i.ri, i64 %i.at
  %i.rk = getelementptr i8, ptr %i.rj, i64 %indvars.iv384 ; 2 uses
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !99
  %i.rm = add i8 %i.rl, 1
  store i8 %i.rm, ptr %i.rk, align 1, !tbaa !99
  br label %.loopexit.2

.loopexit.2:                                      ; preds = %.preheader324.preheader.2, %bb.n, %.critedge.2, %bb.o, %.critedge.1.2, %bb.m, %bb.l, %.loopexit.1
  %i.rn = getelementptr inbounds nuw i8, ptr %indvars.iv379.sroa.phi460, i64 12
  %i.ro = load float, ptr %i.rn, align 4, !tbaa !89
  %i.rp = fcmp ugt float %i.ro, %.
  br i1 %i.rp, label %.loopexit.3, label %bb.p

bb.p:                                             ; preds = %.loopexit.2
  %i.rq = getelementptr inbounds nuw i8, ptr %indvars.iv379.sroa.phi, i64 12
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !93
  %.not270.3 = icmp sgt i32 %i.rr, %i.ki
  br i1 %.not270.3, label %.loopexit.3, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.rs = load ptr, ptr %i.ku, align 8, !tbaa !86
  %i.rt = getelementptr i8, ptr %i.rs, i64 %indvars.iv384
  %i.ru = getelementptr i8, ptr %i.rt, i64 %i.ak  ; 2 uses
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !99
  %i.rw = add i8 %i.rv, 1
  store i8 %i.rw, ptr %i.ru, align 1, !tbaa !99
  br i1 %i.kq, label %.preheader324.preheader.3, label %.backedge.backedge

.preheader324.preheader.3:                        ; preds = %bb.q
  %i.rx = load i32, ptr %i.kt, align 4, !tbaa !93
  %i.ry = getelementptr inbounds [12 x i8], ptr %i.kt, i64 %i.au ; 3 uses
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !93
  %i.sa = sub nsw i32 %i.rx, %i.rz
  %i.sb = tail call i32 @llvm.abs.i32(i32 %i.sa, i1 true)
  %i.sc = uitofp nneg i32 %i.sb to float
  %i.sd = fcmp ogt float %., %i.sc
  br i1 %i.sd, label %bb.r, label %.loopexit.3.thread

bb.r:                                             ; preds = %.preheader324.preheader.3
  %i.se = load i32, ptr %i.kv, align 4, !tbaa !93
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ry, i64 4
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !93
  %i.sh = sub nsw i32 %i.se, %i.sg                ; 2 uses
  %i.si = mul nsw i32 %i.sh, %i.sh
  %i.sj = load i32, ptr %i.kw, align 4, !tbaa !93
  %i.sk = getelementptr inbounds nuw i8, ptr %i.ry, i64 8
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !93
  %i.sm = sub nsw i32 %i.sj, %i.sl                ; 2 uses
  %i.sn = mul nsw i32 %i.sm, %i.sm
  %i.so = add nuw nsw i32 %i.sn, %i.si
  %i.sp = icmp samesign ult i32 %i.so, %i.ki
  br i1 %i.sp, label %.critedge.3, label %.loopexit.3.thread

.critedge.3:                                      ; preds = %bb.r
  %i.sq = load ptr, ptr %i.ku, align 8, !tbaa !86
  %i.sr = getelementptr i8, ptr %i.sq, i64 %i.au
  %i.ss = getelementptr i8, ptr %i.sr, i64 %indvars.iv384 ; 2 uses
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !99
  %i.su = add i8 %i.st, 1
  store i8 %i.su, ptr %i.ss, align 1, !tbaa !99
  %i.sv = load i32, ptr %i.kt, align 4, !tbaa !93
  %i.sw = getelementptr inbounds [12 x i8], ptr %i.kt, i64 %i.av ; 3 uses
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !93
  %i.sy = sub nsw i32 %i.sv, %i.sx
  %i.sz = tail call i32 @llvm.abs.i32(i32 %i.sy, i1 true)
  %i.ta = uitofp nneg i32 %i.sz to float
  %i.tb = fcmp ogt float %., %i.ta
  br i1 %i.tb, label %bb.s, label %.loopexit.3.thread

bb.s:                                             ; preds = %.critedge.3
  %i.tc = load i32, ptr %i.kv, align 4, !tbaa !93
  %i.td = getelementptr inbounds nuw i8, ptr %i.sw, i64 4
  %i.te = load i32, ptr %i.td, align 4, !tbaa !93
  %i.tf = sub nsw i32 %i.tc, %i.te                ; 2 uses
  %i.tg = mul nsw i32 %i.tf, %i.tf
  %i.th = load i32, ptr %i.kw, align 4, !tbaa !93
  %i.ti = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !93
  %i.tk = sub nsw i32 %i.th, %i.tj                ; 2 uses
  %i.tl = mul nsw i32 %i.tk, %i.tk
  %i.tm = add nuw nsw i32 %i.tl, %i.tg
  %i.tn = icmp samesign ult i32 %i.tm, %i.ki
  br i1 %i.tn, label %.critedge.1.3, label %.loopexit.3.thread

.critedge.1.3:                                    ; preds = %bb.s
  %i.to = load ptr, ptr %i.ku, align 8, !tbaa !86
  %i.tp = getelementptr i8, ptr %i.to, i64 %i.av
  %i.tq = getelementptr i8, ptr %i.tp, i64 %indvars.iv384 ; 2 uses
  %i.tr = load i8, ptr %i.tq, align 1, !tbaa !99
  %i.ts = add i8 %i.tr, 1
  store i8 %i.ts, ptr %i.tq, align 1, !tbaa !99
  br label %.loopexit.3.thread

.loopexit.3:                                      ; preds = %bb.p, %.loopexit.2
  br i1 %i.kp, label %.backedge.backedge, label %.loopexit.3.thread

.backedge.backedge:                               ; preds = %.loopexit.3, %bb.q
  br label %.backedge, !llvm.loop !114

._crit_edge356:                                   ; preds = %._crit_edge353, %._crit_edge.1, %.preheader323
  ret void

bb.t:                                             ; preds = %.lr.ph355, %._crit_edge353
  %i.tt = phi ptr [ %i.fb, %.lr.ph355 ], [ %i.ua, %._crit_edge353 ] ; 2 uses
  %indvars.iv395 = phi i32 [ 4, %.lr.ph355 ], [ %indvars.iv.next396, %._crit_edge353 ] ; 2 uses
  %.0249354 = phi i32 [ 0, %.lr.ph355 ], [ %i.ub, %._crit_edge353 ]
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 30
  %i.tv = load i16, ptr %i.tu, align 2, !tbaa !81
  %.not360 = icmp eq i16 %i.tv, 0
  br i1 %.not360, label %._crit_edge353, label %.lr.ph352.preheader

.lr.ph352.preheader:                              ; preds = %bb.t
  %i.tw = load i32, ptr %i.c, align 4, !tbaa !82
  %i.tx = mul i32 %i.tw, %indvars.iv395
  %i.ty = add i32 %i.tx, 4
  %i.tz = sext i32 %i.ty to i64
  br label %.lr.ph352

._crit_edge353:                                   ; preds = %bb.w, %bb.t
  %i.ua = phi ptr [ %i.tt, %bb.t ], [ %i.ads, %bb.w ] ; 2 uses
  %i.ub = add nuw nsw i32 %.0249354, 1            ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ua, i64 28
  %i.ud = load i16, ptr %i.uc, align 4, !tbaa !78
  %i.ue = zext i16 %i.ud to i32
  %i.uf = icmp samesign ult i32 %i.ub, %i.ue
  %indvars.iv.next396 = add nuw nsw i32 %indvars.iv395, 1
  br i1 %i.uf, label %bb.t, label %._crit_edge356, !llvm.loop !115

.lr.ph352:                                        ; preds = %.lr.ph352.preheader, %bb.w
  %indvars.iv397 = phi i64 [ %i.tz, %.lr.ph352.preheader ], [ %indvars.iv.next398, %bb.w ] ; 9 uses
  %.0247350 = phi i32 [ 0, %.lr.ph352.preheader ], [ %i.adr, %bb.w ]
  %i.ug = load i32, ptr %i.c, align 4, !tbaa !82  ; 2 uses
  %i.uh = sext i32 %i.ug to i64                   ; 11 uses
  %1 = sub nsw i64 0, %i.uh                       ; 2 uses
  %2 = sub nsw i64 1, %i.uh                       ; 2 uses
  %i.ui = load ptr, ptr %i.eq, align 8, !tbaa !86
  %i.uj = getelementptr inbounds i8, ptr %i.ui, i64 %indvars.iv397 ; 9 uses
  %i.uk = xor i64 %i.uh, -1                       ; 2 uses
  %i.ul = getelementptr inbounds i8, ptr %i.uj, i64 %i.uk
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !99
  %i.un = getelementptr inbounds i8, ptr %i.uj, i64 -1
  %i.uo = load i8, ptr %i.un, align 1, !tbaa !99
  %i.up = add i8 %i.um, %i.uo
  %3 = add nsw i64 %i.uh, -1                      ; 2 uses
  %i.uq = getelementptr inbounds i8, ptr %i.uj, i64 %3
  %i.ur = load i8, ptr %i.uq, align 1, !tbaa !99
  %i.us = add i8 %i.up, %i.ur
  %i.ut = getelementptr inbounds i8, ptr %i.uj, i64 %1
  %i.uu = load i8, ptr %i.ut, align 1, !tbaa !99
  %i.uv = add i8 %i.us, %i.uu
  %i.uw = load i8, ptr %i.uj, align 1, !tbaa !99
  %i.ux = add i8 %i.uv, %i.uw
  %i.uy = getelementptr inbounds i8, ptr %i.uj, i64 %i.uh
  %i.uz = load i8, ptr %i.uy, align 1, !tbaa !99
  %i.va = add i8 %i.ux, %i.uz
  %i.vb = getelementptr inbounds i8, ptr %i.uj, i64 %2
  %i.vc = load i8, ptr %i.vb, align 1, !tbaa !99
  %i.vd = add i8 %i.va, %i.vc
  %i.ve = getelementptr inbounds nuw i8, ptr %i.uj, i64 1
  %i.vf = load i8, ptr %i.ve, align 1, !tbaa !99
  %i.vg = add i8 %i.vd, %i.vf
  %4 = add nsw i64 %i.uh, 1                       ; 2 uses
  %i.vh = getelementptr inbounds i8, ptr %i.uj, i64 %4
  %i.vi = load i8, ptr %i.vh, align 1, !tbaa !99
  %i.vj = add i8 %i.vg, %i.vi                     ; 2 uses
  %i.vk = load ptr, ptr %i.et, align 8, !tbaa !86
  %i.vl = getelementptr inbounds i8, ptr %i.vk, i64 %indvars.iv397 ; 9 uses
  %i.vm = getelementptr inbounds i8, ptr %i.vl, i64 %i.uk
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !99
  %i.vo = getelementptr inbounds i8, ptr %i.vl, i64 -1
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !99
  %i.vq = add i8 %i.vn, %i.vp
  %i.vr = getelementptr inbounds i8, ptr %i.vl, i64 %3
  %i.vs = load i8, ptr %i.vr, align 1, !tbaa !99
  %i.vt = add i8 %i.vq, %i.vs
  %i.vu = getelementptr inbounds i8, ptr %i.vl, i64 %1
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !99
  %i.vw = add i8 %i.vt, %i.vv
  %i.vx = load i8, ptr %i.vl, align 1, !tbaa !99
  %i.vy = add i8 %i.vw, %i.vx
  %i.vz = getelementptr inbounds i8, ptr %i.vl, i64 %i.uh
  %i.wa = load i8, ptr %i.vz, align 1, !tbaa !99
  %i.wb = add i8 %i.vy, %i.wa
  %i.wc = getelementptr inbounds i8, ptr %i.vl, i64 %2
  %i.wd = load i8, ptr %i.wc, align 1, !tbaa !99
  %i.we = add i8 %i.wb, %i.wd
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vl, i64 1
  %i.wg = load i8, ptr %i.wf, align 1, !tbaa !99
  %i.wh = add i8 %i.we, %i.wg
  %i.wi = getelementptr inbounds i8, ptr %i.vl, i64 %4
  %i.wj = load i8, ptr %i.wi, align 1, !tbaa !99
  %i.wk = add i8 %i.wh, %i.wj                     ; 2 uses
  %.not = icmp eq i8 %i.vj, %i.wk
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph352
  %i.wl = icmp sgt i8 %i.wk, %i.vj
  %.271 = select i1 %i.wl, i8 5, i8 3
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph352
  %i.wm = load ptr, ptr %i.er, align 8, !tbaa !84 ; 4 uses
  %i.wn = getelementptr inbounds [12 x i8], ptr %i.wm, i64 %indvars.iv397 ; 5 uses
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !93
  %i.wp = shl nsw i32 %i.wo, 1
  %i.wq = sub nsw i32 0, %i.ug
  %i.wr = sext i32 %i.wq to i64                   ; 3 uses
  %i.ws = getelementptr inbounds [12 x i8], ptr %i.wn, i64 %i.wr ; 3 uses
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !93
  %i.wu = getelementptr inbounds [12 x i8], ptr %i.wn, i64 %i.uh ; 3 uses
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !93
  %i.ww = add i32 %i.wt, %i.wv
  %i.wx = sub i32 %i.wp, %i.ww                    ; 2 uses
  %i.wy = mul nsw i32 %i.wx, %i.wx
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wn, i64 4
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !93
  %i.xb = shl nsw i32 %i.xa, 1
  %i.xc = getelementptr inbounds nuw i8, ptr %i.ws, i64 4
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !93
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wu, i64 4
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !93
  %i.xg = add i32 %i.xd, %i.xf
  %i.xh = sub i32 %i.xb, %i.xg                    ; 2 uses
  %i.xi = mul nsw i32 %i.xh, %i.xh
  %i.xj = getelementptr inbounds nuw i8, ptr %i.wn, i64 8
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !93
  %i.xl = shl nsw i32 %i.xk, 1
  %i.xm = getelementptr inbounds nuw i8, ptr %i.ws, i64 8
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !93
  %i.xo = getelementptr inbounds nuw i8, ptr %i.wu, i64 8
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !93
  %i.xq = add i32 %i.xn, %i.xp
  %i.xr = sub i32 %i.xl, %i.xq                    ; 2 uses
  %i.xs = mul nsw i32 %i.xr, %i.xr
  %i.xt = sub nsw i64 %indvars.iv397, %i.uh
  %i.xu = getelementptr inbounds [12 x i8], ptr %i.wm, i64 %i.xt ; 4 uses
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !93
  %i.xw = shl nsw i32 %i.xv, 1
  %i.xx = getelementptr inbounds [12 x i8], ptr %i.xu, i64 %i.wr ; 3 uses
  %i.xy = load i32, ptr %i.xx, align 4, !tbaa !93
  %i.xz = getelementptr inbounds [12 x i8], ptr %i.wm, i64 %indvars.iv397 ; 3 uses
  %i.ya = load i32, ptr %i.xz, align 4, !tbaa !93
  %i.yb = add i32 %i.xy, %i.ya
  %i.yc = sub i32 %i.xw, %i.yb                    ; 2 uses
  %i.yd = mul nsw i32 %i.yc, %i.yc
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xu, i64 4
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !93
  %i.yg = shl nsw i32 %i.yf, 1
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xx, i64 4
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !93
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xz, i64 4
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !93
  %i.yl = add i32 %i.yi, %i.yk
  %i.ym = sub i32 %i.yg, %i.yl                    ; 2 uses
  %i.yn = mul nsw i32 %i.ym, %i.ym
  %i.yo = add nuw nsw i32 %i.yn, %i.yd
  %i.yp = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !93
  %i.yr = shl nsw i32 %i.yq, 1
  %i.ys = getelementptr inbounds nuw i8, ptr %i.xx, i64 8
  %i.yt = load i32, ptr %i.ys, align 4, !tbaa !93
  %i.yu = getelementptr inbounds nuw i8, ptr %i.xz, i64 8
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !93
  %i.yw = add i32 %i.yt, %i.yv
  %i.yx = sub i32 %i.yr, %i.yw                    ; 2 uses
  %i.yy = mul nsw i32 %i.yx, %i.yx
  %i.yz = add nuw nsw i32 %i.yo, %i.yy
  %i.za = lshr i32 %i.yz, 1
  %i.zb = getelementptr [12 x i8], ptr %i.wm, i64 %indvars.iv397
  %i.zc = getelementptr [12 x i8], ptr %i.zb, i64 %i.uh ; 5 uses
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !93
  %i.ze = shl nsw i32 %i.zd, 1
  %i.zf = getelementptr inbounds [12 x i8], ptr %i.zc, i64 %i.wr ; 3 uses
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !93
  %i.zh = getelementptr inbounds [12 x i8], ptr %i.zc, i64 %i.uh ; 3 uses
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !93
  %i.zj = add i32 %i.zg, %i.zi
  %i.zk = sub i32 %i.ze, %i.zj                    ; 2 uses
  %i.zl = mul nsw i32 %i.zk, %i.zk
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zc, i64 4
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !93
  %i.zo = shl nsw i32 %i.zn, 1
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zf, i64 4
  %i.zq = load i32, ptr %i.zp, align 4, !tbaa !93
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zh, i64 4
  %i.zs = load i32, ptr %i.zr, align 4, !tbaa !93
  %i.zt = add i32 %i.zq, %i.zs
  %i.zu = sub i32 %i.zo, %i.zt                    ; 2 uses
  %i.zv = mul nsw i32 %i.zu, %i.zu
  %i.zw = add nuw nsw i32 %i.zv, %i.zl
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zc, i64 8
  %i.zy = load i32, ptr %i.zx, align 4, !tbaa !93
  %i.zz = shl nsw i32 %i.zy, 1
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zf, i64 8
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !93
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zh, i64 8
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !93
  %i.aae = add i32 %i.aab, %i.aad
  %i.aaf = sub i32 %i.zz, %i.aae                  ; 2 uses
  %i.aag = mul nsw i32 %i.aaf, %i.aaf
  %i.aah = add nuw nsw i32 %i.zw, %i.aag
  %i.aai = lshr i32 %i.aah, 1
  %i.aaj = add nuw nsw i32 %i.xi, %i.wy
  %i.aak = add nuw nsw i32 %i.aaj, %i.xs
  %i.aal = add nuw nsw i32 %i.aak, %i.za
  %i.aam = add nuw nsw i32 %i.aal, %i.aai
  %i.aan = load ptr, ptr %i.h, align 8, !tbaa !84
  %i.aao = getelementptr inbounds [12 x i8], ptr %i.aan, i64 %indvars.iv397 ; 15 uses
  %i.aap = load i32, ptr %i.aao, align 4, !tbaa !93 ; 3 uses
  %i.aaq = shl nsw i32 %i.aap, 1
  %i.aar = getelementptr inbounds i8, ptr %i.aao, i64 -12
  %i.aas = load i32, ptr %i.aar, align 4, !tbaa !93 ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aao, i64 12
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !93 ; 2 uses
  %i.aav = add i32 %i.aas, %i.aau
  %i.aaw = sub i32 %i.aaq, %i.aav                 ; 2 uses
  %i.aax = mul nsw i32 %i.aaw, %i.aaw
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aao, i64 4
  %i.aaz = load i32, ptr %i.aay, align 4, !tbaa !93 ; 3 uses
  %i.aba = shl nsw i32 %i.aaz, 1
  %i.abb = getelementptr inbounds i8, ptr %i.aao, i64 -8
  %i.abc = load i32, ptr %i.abb, align 4, !tbaa !93 ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aao, i64 16
  %i.abe = load i32, ptr %i.abd, align 4, !tbaa !93 ; 2 uses
  %i.abf = add i32 %i.abc, %i.abe
  %i.abg = sub i32 %i.aba, %i.abf                 ; 2 uses
  %i.abh = mul nsw i32 %i.abg, %i.abg
  %i.abi = getelementptr inbounds nuw i8, ptr %i.aao, i64 8
  %i.abj = load i32, ptr %i.abi, align 4, !tbaa !93 ; 3 uses
  %i.abk = shl nsw i32 %i.abj, 1
  %i.abl = getelementptr inbounds i8, ptr %i.aao, i64 -4
  %i.abm = load i32, ptr %i.abl, align 4, !tbaa !93 ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.aao, i64 20
  %i.abo = load i32, ptr %i.abn, align 4, !tbaa !93 ; 2 uses
  %i.abp = add i32 %i.abm, %i.abo
  %i.abq = sub i32 %i.abk, %i.abp                 ; 2 uses
  %i.abr = mul nsw i32 %i.abq, %i.abq
  %i.abs = shl nsw i32 %i.aas, 1
  %i.abt = getelementptr i8, ptr %i.aao, i64 -24
  %i.abu = load i32, ptr %i.abt, align 4, !tbaa !93
  %i.abv = add i32 %i.aap, %i.abu
  %i.abw = sub i32 %i.abs, %i.abv                 ; 2 uses
  %i.abx = mul nsw i32 %i.abw, %i.abw
  %i.aby = shl nsw i32 %i.abc, 1
  %i.abz = getelementptr i8, ptr %i.aao, i64 -20
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !93
  %i.acb = add i32 %i.aaz, %i.aca
  %i.acc = sub i32 %i.aby, %i.acb                 ; 2 uses
  %i.acd = mul nsw i32 %i.acc, %i.acc
  %i.ace = add nuw nsw i32 %i.acd, %i.abx
  %i.acf = shl nsw i32 %i.abm, 1
  %i.acg = getelementptr i8, ptr %i.aao, i64 -16
  %i.ach = load i32, ptr %i.acg, align 4, !tbaa !93
  %i.aci = add i32 %i.abj, %i.ach
  %i.acj = sub i32 %i.acf, %i.aci                 ; 2 uses
  %i.ack = mul nsw i32 %i.acj, %i.acj
  %i.acl = add nuw nsw i32 %i.ace, %i.ack
  %i.acm = lshr i32 %i.acl, 1
  %i.acn = shl nsw i32 %i.aau, 1
  %i.aco = getelementptr i8, ptr %i.aao, i64 24
  %i.acp = load i32, ptr %i.aco, align 4, !tbaa !93
  %i.acq = add i32 %i.aap, %i.acp
  %i.acr = sub i32 %i.acn, %i.acq                 ; 2 uses
  %i.acs = mul nsw i32 %i.acr, %i.acr
  %i.act = shl nsw i32 %i.abe, 1
  %i.acu = getelementptr i8, ptr %i.aao, i64 28
  %i.acv = load i32, ptr %i.acu, align 4, !tbaa !93
  %i.acw = add i32 %i.aaz, %i.acv
  %i.acx = sub i32 %i.act, %i.acw                 ; 2 uses
  %i.acy = mul nsw i32 %i.acx, %i.acx
  %i.acz = add nuw nsw i32 %i.acy, %i.acs
  %i.ada = shl nsw i32 %i.abo, 1
  %i.adb = getelementptr i8, ptr %i.aao, i64 32
  %i.adc = load i32, ptr %i.adb, align 4, !tbaa !93
  %i.add = add i32 %i.abj, %i.adc
  %i.ade = sub i32 %i.ada, %i.add                 ; 2 uses
  %i.adf = mul nsw i32 %i.ade, %i.ade
  %i.adg = add nuw nsw i32 %i.acz, %i.adf
  %i.adh = lshr i32 %i.adg, 1
  %i.adi = add nuw nsw i32 %i.abh, %i.aax
  %i.adj = add nuw nsw i32 %i.adi, %i.abr
  %i.adk = add nuw nsw i32 %i.adj, %i.acm
  %i.adl = add nuw nsw i32 %i.adk, %i.adh
  %i.adm = icmp samesign ugt i32 %i.aam, %i.adl
  %.272 = select i1 %i.adm, i8 2, i8 4
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.1 = phi i8 [ %.271, %bb.u ], [ %.272, %bb.v ]
  %i.adn = load ptr, ptr %i.es, align 8, !tbaa !85
  %i.ado = getelementptr inbounds i8, ptr %i.adn, i64 %indvars.iv397 ; 2 uses
  %i.adp = load i8, ptr %i.ado, align 1, !tbaa !99
end_hunk_0
