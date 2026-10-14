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
  %i.rn = getelementptr inbounds nuw i8, ptr %indvars.iv379.sroa.phi461, i64 12
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
  %i.ua = phi ptr [ %i.tt, %bb.t ], [ %i.acq, %bb.w ] ; 2 uses
  %i.ub = add nuw nsw i32 %.0249354, 1            ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ua, i64 28
  %i.ud = load i16, ptr %i.uc, align 4, !tbaa !78
  %i.ue = zext i16 %i.ud to i32
  %i.uf = icmp samesign ult i32 %i.ub, %i.ue
  %indvars.iv.next396 = add nuw nsw i32 %indvars.iv395, 1
  br i1 %i.uf, label %bb.t, label %._crit_edge356, !llvm.loop !115

.lr.ph352:                                        ; preds = %.lr.ph352.preheader, %bb.w
  %indvars.iv397 = phi i64 [ %i.tz, %.lr.ph352.preheader ], [ %indvars.iv.next398, %bb.w ] ; 9 uses
  %.0247350 = phi i32 [ 0, %.lr.ph352.preheader ], [ %i.acp, %bb.w ]
  %i.ug = load i32, ptr %i.c, align 4, !tbaa !82  ; 2 uses
  %i.uh = sext i32 %i.ug to i64                   ; 9 uses
  %1 = sub nsw i64 0, %i.uh                       ; 2 uses
  %i.ui = load ptr, ptr %i.eq, align 8, !tbaa !86
  %i.uj = getelementptr inbounds i8, ptr %i.ui, i64 %indvars.iv397 ; 6 uses
  %i.uk = xor i64 %i.uh, -1                       ; 2 uses
  %i.ul = getelementptr inbounds i8, ptr %i.uj, i64 %i.uk
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !99
  %i.un = getelementptr inbounds i8, ptr %i.uj, i64 -1
  %2 = add nsw i64 %i.uh, -1                      ; 2 uses
  %i.uo = getelementptr inbounds i8, ptr %i.uj, i64 %2
  %3 = load i8, ptr %i.uo, align 1, !tbaa !99
  %i.up = getelementptr inbounds i8, ptr %i.uj, i64 %1
  %4 = load <2 x i8>, ptr %i.un, align 1, !tbaa !99
  %5 = getelementptr inbounds i8, ptr %i.uj, i64 %i.uh
  %i.uq = load <2 x i8>, ptr %i.up, align 1, !tbaa !99
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uj, i64 1
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !99
  %6 = load <2 x i8>, ptr %5, align 1, !tbaa !99
  %7 = insertelement <8 x i8> poison, i8 %i.um, i64 0
  %i.ut = shufflevector <2 x i8> %i.uq, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %8 = shufflevector <8 x i8> %7, <8 x i8> %i.ut, <8 x i32> <i32 0, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.uu = insertelement <8 x i8> %8, i8 %3, i64 3
  %9 = shufflevector <2 x i8> %6, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %10 = shufflevector <8 x i8> %i.uu, <8 x i8> %9, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %11 = shufflevector <2 x i8> %4, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %12 = shufflevector <8 x i8> %10, <8 x i8> %11, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.uv = tail call i8 @llvm.vector.reduce.add.v8i8(<8 x i8> %12)
  %op.rdx = add i8 %i.uv, %i.us                   ; 2 uses
  %i.uw = load ptr, ptr %i.et, align 8, !tbaa !86
  %i.ux = getelementptr inbounds i8, ptr %i.uw, i64 %indvars.iv397 ; 6 uses
  %i.uy = getelementptr inbounds i8, ptr %i.ux, i64 %i.uk
  %i.uz = load i8, ptr %i.uy, align 1, !tbaa !99
  %i.va = getelementptr inbounds i8, ptr %i.ux, i64 -1
  %i.vb = getelementptr inbounds i8, ptr %i.ux, i64 %2
  %13 = load i8, ptr %i.vb, align 1, !tbaa !99
  %i.vc = getelementptr inbounds i8, ptr %i.ux, i64 %1
  %14 = load <2 x i8>, ptr %i.va, align 1, !tbaa !99
  %15 = getelementptr inbounds i8, ptr %i.ux, i64 %i.uh
  %i.vd = load <2 x i8>, ptr %i.vc, align 1, !tbaa !99
  %i.ve = getelementptr inbounds nuw i8, ptr %i.ux, i64 1
  %i.vf = load i8, ptr %i.ve, align 1, !tbaa !99
  %16 = load <2 x i8>, ptr %15, align 1, !tbaa !99
  %17 = insertelement <8 x i8> poison, i8 %i.uz, i64 0
  %i.vg = shufflevector <2 x i8> %i.vd, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %18 = shufflevector <8 x i8> %17, <8 x i8> %i.vg, <8 x i32> <i32 0, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.vh = insertelement <8 x i8> %18, i8 %13, i64 3
  %19 = shufflevector <2 x i8> %16, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %20 = shufflevector <8 x i8> %i.vh, <8 x i8> %19, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %21 = shufflevector <2 x i8> %14, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %22 = shufflevector <8 x i8> %20, <8 x i8> %21, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.vi = tail call i8 @llvm.vector.reduce.add.v8i8(<8 x i8> %22)
  %op.rdx447 = add i8 %i.vi, %i.vf                ; 2 uses
  %.not = icmp eq i8 %op.rdx, %op.rdx447
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph352
  %i.vj = icmp sgt i8 %op.rdx447, %op.rdx
  %.271 = select i1 %i.vj, i8 5, i8 3
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph352
  %i.vk = load ptr, ptr %i.er, align 8, !tbaa !84 ; 4 uses
  %i.vl = getelementptr inbounds [12 x i8], ptr %i.vk, i64 %indvars.iv397 ; 5 uses
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !93
  %i.vn = shl nsw i32 %i.vm, 1
  %i.vo = sub nsw i32 0, %i.ug
  %i.vp = sext i32 %i.vo to i64                   ; 3 uses
  %i.vq = getelementptr inbounds [12 x i8], ptr %i.vl, i64 %i.vp ; 3 uses
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !93
  %i.vs = getelementptr inbounds [12 x i8], ptr %i.vl, i64 %i.uh ; 3 uses
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !93
  %i.vu = add i32 %i.vr, %i.vt
  %i.vv = sub i32 %i.vn, %i.vu                    ; 2 uses
  %i.vw = mul nsw i32 %i.vv, %i.vv
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vl, i64 4
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !93
  %i.vz = shl nsw i32 %i.vy, 1
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vq, i64 4
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !93
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vs, i64 4
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !93
  %i.we = add i32 %i.wb, %i.wd
  %i.wf = sub i32 %i.vz, %i.we                    ; 2 uses
  %i.wg = mul nsw i32 %i.wf, %i.wf
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vl, i64 8
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !93
  %i.wj = shl nsw i32 %i.wi, 1
  %i.wk = getelementptr inbounds nuw i8, ptr %i.vq, i64 8
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !93
  %i.wm = getelementptr inbounds nuw i8, ptr %i.vs, i64 8
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !93
  %i.wo = add i32 %i.wl, %i.wn
  %i.wp = sub i32 %i.wj, %i.wo                    ; 2 uses
  %i.wq = mul nsw i32 %i.wp, %i.wp
  %i.wr = sub nsw i64 %indvars.iv397, %i.uh
  %i.ws = getelementptr inbounds [12 x i8], ptr %i.vk, i64 %i.wr ; 4 uses
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !93
  %i.wu = shl nsw i32 %i.wt, 1
  %i.wv = getelementptr inbounds [12 x i8], ptr %i.ws, i64 %i.vp ; 3 uses
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !93
  %i.wx = getelementptr inbounds [12 x i8], ptr %i.vk, i64 %indvars.iv397 ; 3 uses
  %i.wy = load i32, ptr %i.wx, align 4, !tbaa !93
  %i.wz = add i32 %i.ww, %i.wy
  %i.xa = sub i32 %i.wu, %i.wz                    ; 2 uses
  %i.xb = mul nsw i32 %i.xa, %i.xa
  %i.xc = getelementptr inbounds nuw i8, ptr %i.ws, i64 4
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !93
  %i.xe = shl nsw i32 %i.xd, 1
  %i.xf = getelementptr inbounds nuw i8, ptr %i.wv, i64 4
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !93
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wx, i64 4
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !93
  %i.xj = add i32 %i.xg, %i.xi
  %i.xk = sub i32 %i.xe, %i.xj                    ; 2 uses
  %i.xl = mul nsw i32 %i.xk, %i.xk
  %i.xm = add nuw nsw i32 %i.xl, %i.xb
  %i.xn = getelementptr inbounds nuw i8, ptr %i.ws, i64 8
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !93
  %i.xp = shl nsw i32 %i.xo, 1
  %i.xq = getelementptr inbounds nuw i8, ptr %i.wv, i64 8
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !93
  %i.xs = getelementptr inbounds nuw i8, ptr %i.wx, i64 8
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !93
  %i.xu = add i32 %i.xr, %i.xt
  %i.xv = sub i32 %i.xp, %i.xu                    ; 2 uses
  %i.xw = mul nsw i32 %i.xv, %i.xv
  %i.xx = add nuw nsw i32 %i.xm, %i.xw
  %i.xy = lshr i32 %i.xx, 1
  %i.xz = getelementptr [12 x i8], ptr %i.vk, i64 %indvars.iv397
  %i.ya = getelementptr [12 x i8], ptr %i.xz, i64 %i.uh ; 5 uses
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !93
  %i.yc = shl nsw i32 %i.yb, 1
  %i.yd = getelementptr inbounds [12 x i8], ptr %i.ya, i64 %i.vp ; 3 uses
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !93
  %i.yf = getelementptr inbounds [12 x i8], ptr %i.ya, i64 %i.uh ; 3 uses
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !93
  %i.yh = add i32 %i.ye, %i.yg
  %i.yi = sub i32 %i.yc, %i.yh                    ; 2 uses
  %i.yj = mul nsw i32 %i.yi, %i.yi
  %i.yk = getelementptr inbounds nuw i8, ptr %i.ya, i64 4
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !93
  %i.ym = shl nsw i32 %i.yl, 1
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yd, i64 4
  %i.yo = load i32, ptr %i.yn, align 4, !tbaa !93
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yf, i64 4
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !93
  %i.yr = add i32 %i.yo, %i.yq
  %i.ys = sub i32 %i.ym, %i.yr                    ; 2 uses
  %i.yt = mul nsw i32 %i.ys, %i.ys
  %i.yu = add nuw nsw i32 %i.yt, %i.yj
  %i.yv = getelementptr inbounds nuw i8, ptr %i.ya, i64 8
  %i.yw = load i32, ptr %i.yv, align 4, !tbaa !93
  %i.yx = shl nsw i32 %i.yw, 1
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yd, i64 8
  %i.yz = load i32, ptr %i.yy, align 4, !tbaa !93
  %i.za = getelementptr inbounds nuw i8, ptr %i.yf, i64 8
  %i.zb = load i32, ptr %i.za, align 4, !tbaa !93
  %i.zc = add i32 %i.yz, %i.zb
  %i.zd = sub i32 %i.yx, %i.zc                    ; 2 uses
  %i.ze = mul nsw i32 %i.zd, %i.zd
  %i.zf = add nuw nsw i32 %i.yu, %i.ze
  %i.zg = lshr i32 %i.zf, 1
  %i.zh = add nuw nsw i32 %i.wg, %i.vw
  %i.zi = add nuw nsw i32 %i.zh, %i.wq
  %i.zj = add nuw nsw i32 %i.zi, %i.xy
  %i.zk = add nuw nsw i32 %i.zj, %i.zg
  %i.zl = load ptr, ptr %i.h, align 8, !tbaa !84
  %i.zm = getelementptr inbounds [12 x i8], ptr %i.zl, i64 %indvars.iv397 ; 15 uses
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !93 ; 3 uses
  %i.zo = shl nsw i32 %i.zn, 1
  %i.zp = getelementptr inbounds i8, ptr %i.zm, i64 -12
  %i.zq = load i32, ptr %i.zp, align 4, !tbaa !93 ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zm, i64 12
  %i.zs = load i32, ptr %i.zr, align 4, !tbaa !93 ; 2 uses
  %i.zt = add i32 %i.zq, %i.zs
  %i.zu = sub i32 %i.zo, %i.zt                    ; 2 uses
  %i.zv = mul nsw i32 %i.zu, %i.zu
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zm, i64 4
  %i.zx = load i32, ptr %i.zw, align 4, !tbaa !93 ; 3 uses
  %i.zy = shl nsw i32 %i.zx, 1
  %i.zz = getelementptr inbounds i8, ptr %i.zm, i64 -8
  %i.aaa = load i32, ptr %i.zz, align 4, !tbaa !93 ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zm, i64 16
  %i.aac = load i32, ptr %i.aab, align 4, !tbaa !93 ; 2 uses
  %i.aad = add i32 %i.aaa, %i.aac
  %i.aae = sub i32 %i.zy, %i.aad                  ; 2 uses
  %i.aaf = mul nsw i32 %i.aae, %i.aae
  %i.aag = getelementptr inbounds nuw i8, ptr %i.zm, i64 8
  %i.aah = load i32, ptr %i.aag, align 4, !tbaa !93 ; 3 uses
  %i.aai = shl nsw i32 %i.aah, 1
  %i.aaj = getelementptr inbounds i8, ptr %i.zm, i64 -4
  %i.aak = load i32, ptr %i.aaj, align 4, !tbaa !93 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.zm, i64 20
  %i.aam = load i32, ptr %i.aal, align 4, !tbaa !93 ; 2 uses
  %i.aan = add i32 %i.aak, %i.aam
  %i.aao = sub i32 %i.aai, %i.aan                 ; 2 uses
  %i.aap = mul nsw i32 %i.aao, %i.aao
  %i.aaq = shl nsw i32 %i.zq, 1
  %i.aar = getelementptr i8, ptr %i.zm, i64 -24
  %i.aas = load i32, ptr %i.aar, align 4, !tbaa !93
  %i.aat = add i32 %i.zn, %i.aas
  %i.aau = sub i32 %i.aaq, %i.aat                 ; 2 uses
  %i.aav = mul nsw i32 %i.aau, %i.aau
  %i.aaw = shl nsw i32 %i.aaa, 1
  %i.aax = getelementptr i8, ptr %i.zm, i64 -20
  %i.aay = load i32, ptr %i.aax, align 4, !tbaa !93
  %i.aaz = add i32 %i.zx, %i.aay
  %i.aba = sub i32 %i.aaw, %i.aaz                 ; 2 uses
  %i.abb = mul nsw i32 %i.aba, %i.aba
  %i.abc = add nuw nsw i32 %i.abb, %i.aav
  %i.abd = shl nsw i32 %i.aak, 1
  %i.abe = getelementptr i8, ptr %i.zm, i64 -16
  %i.abf = load i32, ptr %i.abe, align 4, !tbaa !93
  %i.abg = add i32 %i.aah, %i.abf
  %i.abh = sub i32 %i.abd, %i.abg                 ; 2 uses
  %i.abi = mul nsw i32 %i.abh, %i.abh
  %i.abj = add nuw nsw i32 %i.abc, %i.abi
  %i.abk = lshr i32 %i.abj, 1
  %i.abl = shl nsw i32 %i.zs, 1
  %i.abm = getelementptr i8, ptr %i.zm, i64 24
  %i.abn = load i32, ptr %i.abm, align 4, !tbaa !93
  %i.abo = add i32 %i.zn, %i.abn
  %i.abp = sub i32 %i.abl, %i.abo                 ; 2 uses
  %i.abq = mul nsw i32 %i.abp, %i.abp
  %i.abr = shl nsw i32 %i.aac, 1
  %i.abs = getelementptr i8, ptr %i.zm, i64 28
  %i.abt = load i32, ptr %i.abs, align 4, !tbaa !93
  %i.abu = add i32 %i.zx, %i.abt
  %i.abv = sub i32 %i.abr, %i.abu                 ; 2 uses
  %i.abw = mul nsw i32 %i.abv, %i.abv
  %i.abx = add nuw nsw i32 %i.abw, %i.abq
  %i.aby = shl nsw i32 %i.aam, 1
  %i.abz = getelementptr i8, ptr %i.zm, i64 32
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !93
  %i.acb = add i32 %i.aah, %i.aca
  %i.acc = sub i32 %i.aby, %i.acb                 ; 2 uses
  %i.acd = mul nsw i32 %i.acc, %i.acc
  %i.ace = add nuw nsw i32 %i.abx, %i.acd
  %i.acf = lshr i32 %i.ace, 1
  %i.acg = add nuw nsw i32 %i.aaf, %i.zv
  %i.ach = add nuw nsw i32 %i.acg, %i.aap
  %i.aci = add nuw nsw i32 %i.ach, %i.abk
  %i.acj = add nuw nsw i32 %i.aci, %i.acf
  %i.ack = icmp samesign ugt i32 %i.zk, %i.acj
  %.272 = select i1 %i.ack, i8 2, i8 4
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.1 = phi i8 [ %.271, %bb.u ], [ %.272, %bb.v ]
  %i.acl = load ptr, ptr %i.es, align 8, !tbaa !85
  %i.acm = getelementptr inbounds i8, ptr %i.acl, i64 %indvars.iv397 ; 2 uses
  %i.acn = load i8, ptr %i.acm, align 1, !tbaa !99
end_hunk_0
