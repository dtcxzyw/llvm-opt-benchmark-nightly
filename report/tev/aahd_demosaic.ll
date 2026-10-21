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
  %i.ua = phi ptr [ %i.tt, %bb.t ], [ %i.ack, %bb.w ] ; 2 uses
  %i.ub = add nuw nsw i32 %.0249354, 1            ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ua, i64 28
  %i.ud = load i16, ptr %i.uc, align 4, !tbaa !78
  %i.ue = zext i16 %i.ud to i32
  %i.uf = icmp samesign ult i32 %i.ub, %i.ue
  %indvars.iv.next396 = add nuw nsw i32 %indvars.iv395, 1
  br i1 %i.uf, label %bb.t, label %._crit_edge356, !llvm.loop !115

.lr.ph352:                                        ; preds = %.lr.ph352.preheader, %bb.w
  %indvars.iv397 = phi i64 [ %i.tz, %.lr.ph352.preheader ], [ %indvars.iv.next398, %bb.w ] ; 9 uses
  %.0247350 = phi i32 [ 0, %.lr.ph352.preheader ], [ %i.acj, %bb.w ]
  %i.ug = load i32, ptr %i.c, align 4, !tbaa !82  ; 2 uses
  %i.uh = sext i32 %i.ug to i64                   ; 9 uses
  %i.ui = sub nsw i64 0, %i.uh                    ; 2 uses
  %i.uj = load ptr, ptr %i.eq, align 8, !tbaa !86
  %i.uk = getelementptr inbounds i8, ptr %i.uj, i64 %indvars.iv397 ; 6 uses
  %i.ul = xor i64 %i.uh, -1                       ; 2 uses
  %i.um = getelementptr inbounds i8, ptr %i.uk, i64 %i.ul
  %i.un = load i8, ptr %i.um, align 1, !tbaa !99
  %i.uo = getelementptr inbounds i8, ptr %i.uk, i64 -1
  %i.up = add nsw i64 %i.uh, -1                   ; 2 uses
  %i.uq = getelementptr inbounds i8, ptr %i.uk, i64 %i.up
  %i.ur = load i8, ptr %i.uq, align 1, !tbaa !99
  %i.us = getelementptr inbounds i8, ptr %i.uk, i64 %i.ui
  %1 = load <2 x i8>, ptr %i.uo, align 1, !tbaa !99
  %2 = getelementptr inbounds i8, ptr %i.uk, i64 %i.uh
  %3 = load <2 x i8>, ptr %i.us, align 1, !tbaa !99
  %i.ut = getelementptr inbounds nuw i8, ptr %i.uk, i64 1
  %i.uu = load i8, ptr %i.ut, align 1, !tbaa !99
  %4 = load <2 x i8>, ptr %2, align 1, !tbaa !99
  %5 = insertelement <8 x i8> poison, i8 %i.un, i64 0
  %6 = shufflevector <2 x i8> %3, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %7 = shufflevector <8 x i8> %5, <8 x i8> %6, <8 x i32> <i32 0, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %8 = insertelement <8 x i8> %7, i8 %i.ur, i64 3
  %9 = shufflevector <2 x i8> %4, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %10 = shufflevector <8 x i8> %8, <8 x i8> %9, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %11 = shufflevector <2 x i8> %1, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %12 = shufflevector <8 x i8> %10, <8 x i8> %11, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %13 = tail call i8 @llvm.vector.reduce.add.v8i8(<8 x i8> %12)
  %op.rdx = add i8 %13, %i.uu                     ; 2 uses
  %i.uv = load ptr, ptr %i.et, align 8, !tbaa !86
  %i.uw = getelementptr inbounds i8, ptr %i.uv, i64 %indvars.iv397 ; 6 uses
  %i.ux = getelementptr inbounds i8, ptr %i.uw, i64 %i.ul
  %i.uy = load i8, ptr %i.ux, align 1, !tbaa !99
  %i.uz = getelementptr inbounds i8, ptr %i.uw, i64 -1
  %i.va = getelementptr inbounds i8, ptr %i.uw, i64 %i.up
  %i.vb = load i8, ptr %i.va, align 1, !tbaa !99
  %i.vc = getelementptr inbounds i8, ptr %i.uw, i64 %i.ui
  %14 = load <2 x i8>, ptr %i.uz, align 1, !tbaa !99
  %15 = getelementptr inbounds i8, ptr %i.uw, i64 %i.uh
  %16 = load <2 x i8>, ptr %i.vc, align 1, !tbaa !99
  %17 = getelementptr inbounds nuw i8, ptr %i.uw, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !99
  %19 = load <2 x i8>, ptr %15, align 1, !tbaa !99
  %20 = insertelement <8 x i8> poison, i8 %i.uy, i64 0
  %21 = shufflevector <2 x i8> %16, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %22 = shufflevector <8 x i8> %20, <8 x i8> %21, <8 x i32> <i32 0, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %23 = insertelement <8 x i8> %22, i8 %i.vb, i64 3
  %24 = shufflevector <2 x i8> %19, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %25 = shufflevector <8 x i8> %23, <8 x i8> %24, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %26 = shufflevector <2 x i8> %14, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %27 = shufflevector <8 x i8> %25, <8 x i8> %26, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %28 = tail call i8 @llvm.vector.reduce.add.v8i8(<8 x i8> %27)
  %op.rdx447 = add i8 %28, %18                    ; 2 uses
  %.not = icmp eq i8 %op.rdx, %op.rdx447
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph352
  %i.vd = icmp sgt i8 %op.rdx447, %op.rdx
  %.271 = select i1 %i.vd, i8 5, i8 3
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph352
  %i.ve = load ptr, ptr %i.er, align 8, !tbaa !84 ; 4 uses
  %i.vf = getelementptr inbounds [12 x i8], ptr %i.ve, i64 %indvars.iv397 ; 5 uses
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !93
  %i.vh = shl nsw i32 %i.vg, 1
  %i.vi = sub nsw i32 0, %i.ug
  %i.vj = sext i32 %i.vi to i64                   ; 3 uses
  %i.vk = getelementptr inbounds [12 x i8], ptr %i.vf, i64 %i.vj ; 3 uses
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !93
  %i.vm = getelementptr inbounds [12 x i8], ptr %i.vf, i64 %i.uh ; 3 uses
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !93
  %i.vo = add i32 %i.vl, %i.vn
  %i.vp = sub i32 %i.vh, %i.vo                    ; 2 uses
  %i.vq = mul nsw i32 %i.vp, %i.vp
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vf, i64 4
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !93
  %i.vt = shl nsw i32 %i.vs, 1
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vk, i64 4
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !93
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vm, i64 4
  %i.vx = load i32, ptr %i.vw, align 4, !tbaa !93
  %i.vy = add i32 %i.vv, %i.vx
  %i.vz = sub i32 %i.vt, %i.vy                    ; 2 uses
  %i.wa = mul nsw i32 %i.vz, %i.vz
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vf, i64 8
  %i.wc = load i32, ptr %i.wb, align 4, !tbaa !93
  %i.wd = shl nsw i32 %i.wc, 1
  %i.we = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !93
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vm, i64 8
  %i.wh = load i32, ptr %i.wg, align 4, !tbaa !93
  %i.wi = add i32 %i.wf, %i.wh
  %i.wj = sub i32 %i.wd, %i.wi                    ; 2 uses
  %i.wk = mul nsw i32 %i.wj, %i.wj
  %i.wl = sub nsw i64 %indvars.iv397, %i.uh
  %i.wm = getelementptr inbounds [12 x i8], ptr %i.ve, i64 %i.wl ; 4 uses
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !93
  %i.wo = shl nsw i32 %i.wn, 1
  %i.wp = getelementptr inbounds [12 x i8], ptr %i.wm, i64 %i.vj ; 3 uses
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !93
  %i.wr = getelementptr inbounds [12 x i8], ptr %i.ve, i64 %indvars.iv397 ; 3 uses
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !93
  %i.wt = add i32 %i.wq, %i.ws
  %i.wu = sub i32 %i.wo, %i.wt                    ; 2 uses
  %i.wv = mul nsw i32 %i.wu, %i.wu
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wm, i64 4
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !93
  %i.wy = shl nsw i32 %i.wx, 1
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wp, i64 4
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !93
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wr, i64 4
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !93
  %i.xd = add i32 %i.xa, %i.xc
  %i.xe = sub i32 %i.wy, %i.xd                    ; 2 uses
  %i.xf = mul nsw i32 %i.xe, %i.xe
  %i.xg = add nuw nsw i32 %i.xf, %i.wv
  %i.xh = getelementptr inbounds nuw i8, ptr %i.wm, i64 8
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !93
  %i.xj = shl nsw i32 %i.xi, 1
  %i.xk = getelementptr inbounds nuw i8, ptr %i.wp, i64 8
  %i.xl = load i32, ptr %i.xk, align 4, !tbaa !93
  %i.xm = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !93
  %i.xo = add i32 %i.xl, %i.xn
  %i.xp = sub i32 %i.xj, %i.xo                    ; 2 uses
  %i.xq = mul nsw i32 %i.xp, %i.xp
  %i.xr = add nuw nsw i32 %i.xg, %i.xq
  %i.xs = lshr i32 %i.xr, 1
  %i.xt = getelementptr [12 x i8], ptr %i.ve, i64 %indvars.iv397
  %i.xu = getelementptr [12 x i8], ptr %i.xt, i64 %i.uh ; 5 uses
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !93
  %i.xw = shl nsw i32 %i.xv, 1
  %i.xx = getelementptr inbounds [12 x i8], ptr %i.xu, i64 %i.vj ; 3 uses
  %i.xy = load i32, ptr %i.xx, align 4, !tbaa !93
  %i.xz = getelementptr inbounds [12 x i8], ptr %i.xu, i64 %i.uh ; 3 uses
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
  %i.zb = add nuw nsw i32 %i.wa, %i.vq
  %i.zc = add nuw nsw i32 %i.zb, %i.wk
  %i.zd = add nuw nsw i32 %i.zc, %i.xs
  %i.ze = add nuw nsw i32 %i.zd, %i.za
  %i.zf = load ptr, ptr %i.h, align 8, !tbaa !84
  %i.zg = getelementptr inbounds [12 x i8], ptr %i.zf, i64 %indvars.iv397 ; 15 uses
  %i.zh = load i32, ptr %i.zg, align 4, !tbaa !93 ; 3 uses
  %i.zi = shl nsw i32 %i.zh, 1
  %i.zj = getelementptr inbounds i8, ptr %i.zg, i64 -12
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !93 ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zg, i64 12
  %i.zm = load i32, ptr %i.zl, align 4, !tbaa !93 ; 2 uses
  %i.zn = add i32 %i.zk, %i.zm
  %i.zo = sub i32 %i.zi, %i.zn                    ; 2 uses
  %i.zp = mul nsw i32 %i.zo, %i.zo
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zg, i64 4
  %i.zr = load i32, ptr %i.zq, align 4, !tbaa !93 ; 3 uses
  %i.zs = shl nsw i32 %i.zr, 1
  %i.zt = getelementptr inbounds i8, ptr %i.zg, i64 -8
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !93 ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zg, i64 16
  %i.zw = load i32, ptr %i.zv, align 4, !tbaa !93 ; 2 uses
  %i.zx = add i32 %i.zu, %i.zw
  %i.zy = sub i32 %i.zs, %i.zx                    ; 2 uses
  %i.zz = mul nsw i32 %i.zy, %i.zy
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zg, i64 8
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !93 ; 3 uses
  %i.aac = shl nsw i32 %i.aab, 1
  %i.aad = getelementptr inbounds i8, ptr %i.zg, i64 -4
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !93 ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.zg, i64 20
  %i.aag = load i32, ptr %i.aaf, align 4, !tbaa !93 ; 2 uses
  %i.aah = add i32 %i.aae, %i.aag
  %i.aai = sub i32 %i.aac, %i.aah                 ; 2 uses
  %i.aaj = mul nsw i32 %i.aai, %i.aai
  %i.aak = shl nsw i32 %i.zk, 1
  %i.aal = getelementptr i8, ptr %i.zg, i64 -24
  %i.aam = load i32, ptr %i.aal, align 4, !tbaa !93
  %i.aan = add i32 %i.zh, %i.aam
  %i.aao = sub i32 %i.aak, %i.aan                 ; 2 uses
  %i.aap = mul nsw i32 %i.aao, %i.aao
  %i.aaq = shl nsw i32 %i.zu, 1
  %i.aar = getelementptr i8, ptr %i.zg, i64 -20
  %i.aas = load i32, ptr %i.aar, align 4, !tbaa !93
  %i.aat = add i32 %i.zr, %i.aas
  %i.aau = sub i32 %i.aaq, %i.aat                 ; 2 uses
  %i.aav = mul nsw i32 %i.aau, %i.aau
  %i.aaw = add nuw nsw i32 %i.aav, %i.aap
  %i.aax = shl nsw i32 %i.aae, 1
  %i.aay = getelementptr i8, ptr %i.zg, i64 -16
  %i.aaz = load i32, ptr %i.aay, align 4, !tbaa !93
  %i.aba = add i32 %i.aab, %i.aaz
  %i.abb = sub i32 %i.aax, %i.aba                 ; 2 uses
  %i.abc = mul nsw i32 %i.abb, %i.abb
  %i.abd = add nuw nsw i32 %i.aaw, %i.abc
  %i.abe = lshr i32 %i.abd, 1
  %i.abf = shl nsw i32 %i.zm, 1
  %i.abg = getelementptr i8, ptr %i.zg, i64 24
  %i.abh = load i32, ptr %i.abg, align 4, !tbaa !93
  %i.abi = add i32 %i.zh, %i.abh
  %i.abj = sub i32 %i.abf, %i.abi                 ; 2 uses
  %i.abk = mul nsw i32 %i.abj, %i.abj
  %i.abl = shl nsw i32 %i.zw, 1
  %i.abm = getelementptr i8, ptr %i.zg, i64 28
  %i.abn = load i32, ptr %i.abm, align 4, !tbaa !93
  %i.abo = add i32 %i.zr, %i.abn
  %i.abp = sub i32 %i.abl, %i.abo                 ; 2 uses
  %i.abq = mul nsw i32 %i.abp, %i.abp
  %i.abr = add nuw nsw i32 %i.abq, %i.abk
  %i.abs = shl nsw i32 %i.aag, 1
  %i.abt = getelementptr i8, ptr %i.zg, i64 32
  %i.abu = load i32, ptr %i.abt, align 4, !tbaa !93
  %i.abv = add i32 %i.aab, %i.abu
  %i.abw = sub i32 %i.abs, %i.abv                 ; 2 uses
  %i.abx = mul nsw i32 %i.abw, %i.abw
  %i.aby = add nuw nsw i32 %i.abr, %i.abx
  %i.abz = lshr i32 %i.aby, 1
  %i.aca = add nuw nsw i32 %i.zz, %i.zp
  %i.acb = add nuw nsw i32 %i.aca, %i.aaj
  %i.acc = add nuw nsw i32 %i.acb, %i.abe
  %i.acd = add nuw nsw i32 %i.acc, %i.abz
  %i.ace = icmp samesign ugt i32 %i.ze, %i.acd
  %.272 = select i1 %i.ace, i8 2, i8 4
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.1 = phi i8 [ %.271, %bb.u ], [ %.272, %bb.v ]
  %i.acf = load ptr, ptr %i.es, align 8, !tbaa !85
  %i.acg = getelementptr inbounds i8, ptr %i.acf, i64 %indvars.iv397 ; 2 uses
  %i.ach = load i8, ptr %i.acg, align 1, !tbaa !99
end_hunk_0
begin_hunk_1_@_ZN6LibRaw16aahd_interpolateEv:bb.a
  br i1 %.not.i6, label %_ZN4AAHD14refine_hv_dirsEv.exit, label %.lr.ph.i7

.preheader13.i:                                   ; preds = %.lr.ph.i7
  %i.ab = icmp eq i16 %i.ag, 0
  br i1 %i.ab, label %_ZN4AAHD14refine_hv_dirsEv.exit, label %.lr.ph16.i

.lr.ph.i7:                                        ; preds = %_ZN4AAHD11make_ahd_rbEv.exit, %.lr.ph.i7
  %.01214.i = phi i32 [ %i.ad, %.lr.ph.i7 ], [ 0, %_ZN4AAHD11make_ahd_rbEv.exit ] ; 3 uses
  %i.ac = and i32 %.01214.i, 1
  call void @_ZN4AAHD14refine_hv_dirsEii(ptr noundef nonnull readonly align 8 dereferenceable(128) %1, i32 noundef %.01214.i, i32 noundef %i.ac)
  %i.ad = add nuw nsw i32 %.01214.i, 1            ; 2 uses
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !91, !nonnull !97, !align !98
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.ag = load i16, ptr %i.af, align 4, !tbaa !78 ; 2 uses
  %i.ah = zext i16 %i.ag to i32
  %i.ai = icmp samesign ult i32 %i.ad, %i.ah
  br i1 %i.ai, label %.lr.ph.i7, label %.preheader13.i, !llvm.loop !0

.preheader.i8:                                    ; preds = %.lr.ph16.i
  %i.aj = icmp eq i16 %i.au, 0
  br i1 %i.aj, label %_ZN4AAHD14refine_hv_dirsEv.exit, label %.lr.ph18.i.preheader

.lr.ph18.i.preheader:                             ; preds = %.preheader.i8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.as, i64 30
  %i.an = load i16, ptr %i.am, align 2, !tbaa !81
  %i.ao = icmp eq i16 %i.an, 0
  br i1 %i.ao, label %_ZN4AAHD14refine_hv_dirsEv.exit, label %.lr.ph18.i

.lr.ph16.i:                                       ; preds = %.preheader13.i, %.lr.ph16.i
  %.01115.i = phi i32 [ %i.ar, %.lr.ph16.i ], [ 0, %.preheader13.i ] ; 3 uses
  %i.ap = and i32 %.01115.i, 1
  %i.aq = xor i32 %i.ap, 1
  call void @_ZN4AAHD14refine_hv_dirsEii(ptr noundef nonnull readonly align 8 dereferenceable(128) %1, i32 noundef %.01115.i, i32 noundef %i.aq)
  %i.ar = add nuw nsw i32 %.01115.i, 1            ; 2 uses
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !91, !nonnull !97, !align !98 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 28
  %i.au = load i16, ptr %i.at, align 4, !tbaa !78 ; 2 uses
  %i.av = zext i16 %i.au to i32
  %i.aw = icmp samesign ult i32 %i.ar, %i.av
  br i1 %i.aw, label %.lr.ph16.i, label %.preheader.i8, !llvm.loop !1

.lr.ph18.i:                                       ; preds = %.lr.ph18.i.preheader, %_ZN4AAHD15refine_ihv_dirsEi.exit
  %i.ax = phi ptr [ %i.dh, %_ZN4AAHD15refine_ihv_dirsEi.exit ], [ %i.as, %.lr.ph18.i.preheader ] ; 2 uses
  %.017.i = phi i32 [ %i.di, %_ZN4AAHD15refine_ihv_dirsEi.exit ], [ 0, %.lr.ph18.i.preheader ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 30
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !81 ; 2 uses
  %i.ba = zext i16 %i.az to i32
  %.not30.i = icmp eq i16 %i.az, 0
  br i1 %.not30.i, label %_ZN4AAHD15refine_ihv_dirsEi.exit, label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %.lr.ph18.i
  %i.bb = load i32, ptr %i.ak, align 4, !tbaa !82
  %i.bc = add nuw nsw i32 %.017.i, 4
  %i.bd = mul i32 %i.bb, %i.bc
  %i.be = add i32 %i.bd, 4
  %i.bf = sext i32 %i.be to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %.lr.ph.i9
  %indvars.iv.i = phi i64 [ %i.bf, %.lr.ph.i9 ], [ %indvars.iv.next.i, %bb.h ] ; 7 uses
  %.029.i = phi i32 [ 0, %.lr.ph.i9 ], [ %i.dg, %bb.h ]
  %i.bg = load ptr, ptr %i.al, align 8, !tbaa !85 ; 3 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %indvars.iv.i ; 5 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !99  ; 4 uses
  %i.bj = and i8 %i.bi, 1
  %.not.i10 = icmp eq i8 %i.bj, 0
  br i1 %.not.i10, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.bk = load i32, ptr %i.ak, align 4, !tbaa !82
  %i.bl = sext i32 %i.bk to i64                   ; 2 uses
  %i.bm = sub nsw i64 %indvars.iv.i, %i.bl
  %i.bn = getelementptr inbounds i8, ptr %i.bg, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !99
  %i.bp = zext i8 %i.bo to i32                    ; 2 uses
  %i.bq = and i32 %i.bp, 4
  %i.br = getelementptr i8, ptr %i.bh, i64 %i.bl
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !99
  %i.bt = zext i8 %i.bs to i32                    ; 2 uses
  %i.bu = and i32 %i.bt, 4
  %i.bv = add nuw nsw i32 %i.bu, %i.bq
  %i.bw = getelementptr i8, ptr %i.bh, i64 -1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !99
  %i.by = zext i8 %i.bx to i32                    ; 2 uses
  %i.bz = and i32 %i.by, 4
  %i.ca = add nuw nsw i32 %i.bv, %i.bz
  %i.cb = getelementptr i8, ptr %i.bh, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !99
  %i.cd = zext i8 %i.cc to i32                    ; 2 uses
  %i.ce = and i32 %i.cd, 4
  %i.cf = add nuw nsw i32 %i.ca, %i.ce
  %i.cg = and i32 %i.bp, 2
  %i.ch = and i32 %i.bt, 2
  %i.ci = add nuw nsw i32 %i.ch, %i.cg
  %i.cj = and i32 %i.by, 2
  %i.ck = add nuw nsw i32 %i.ci, %i.cj
  %i.cl = and i32 %i.cd, 2
  %i.cm = add nuw nsw i32 %i.ck, %i.cl
  %i.cn = and i8 %i.bi, 4
  %i.co = icmp ne i8 %i.cn, 0
  %i.cp = icmp samesign ugt i32 %i.cm, 6
  %or.cond.i = select i1 %i.co, i1 %i.cp, i1 false
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cq = and i8 %i.bi, -6
  store i8 %i.cq, ptr %i.bh, align 1, !tbaa !99
  %i.cr = load ptr, ptr %i.al, align 8, !tbaa !85
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 %indvars.iv.i ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !99
  %i.cu = or i8 %i.ct, 2
  store i8 %i.cu, ptr %i.cs, align 1, !tbaa !99
  %.pre.i = load ptr, ptr %i.al, align 8, !tbaa !85 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 %indvars.iv.i
  %.pre32.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !99
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cv = phi i8 [ %.pre32.i, %bb.e ], [ %i.bi, %bb.d ] ; 2 uses
  %i.cw = phi ptr [ %.pre.i, %bb.e ], [ %i.bg, %bb.d ]
  %i.cx = and i8 %i.cv, 2
  %i.cy = icmp ne i8 %i.cx, 0
  %i.cz = icmp samesign ugt i32 %i.cf, 12
  %or.cond3.i = select i1 %i.cy, i1 %i.cz, i1 false
  br i1 %or.cond3.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.da = getelementptr inbounds i8, ptr %i.cw, i64 %indvars.iv.i
  %i.db = and i8 %i.cv, -3
  store i8 %i.db, ptr %i.da, align 1, !tbaa !99
  %i.dc = load ptr, ptr %i.al, align 8, !tbaa !85
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 %indvars.iv.i ; 2 uses
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !99
  %i.df = or i8 %i.de, 4
  store i8 %i.df, ptr %i.dd, align 1, !tbaa !99
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.c
  %i.dg = add nuw nsw i32 %.029.i, 1              ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %i.dg, %i.ba
  br i1 %exitcond.not.i, label %_ZN4AAHD15refine_ihv_dirsEi.exit.loopexit, label %bb.c, !llvm.loop !2

_ZN4AAHD15refine_ihv_dirsEi.exit.loopexit:        ; preds = %bb.h
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !91
  br label %_ZN4AAHD15refine_ihv_dirsEi.exit

_ZN4AAHD15refine_ihv_dirsEi.exit:                 ; preds = %_ZN4AAHD15refine_ihv_dirsEi.exit.loopexit, %.lr.ph18.i
  %i.dh = phi ptr [ %.pre, %_ZN4AAHD15refine_ihv_dirsEi.exit.loopexit ], [ %i.ax, %.lr.ph18.i ] ; 2 uses
  %i.di = add nuw nsw i32 %.017.i, 1              ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 28
  %i.dk = load i16, ptr %i.dj, align 4, !tbaa !78
  %i.dl = zext i16 %i.dk to i32
  %i.dm = icmp samesign ult i32 %i.di, %i.dl
  br i1 %i.dm, label %.lr.ph18.i, label %_ZN4AAHD14refine_hv_dirsEv.exit, !llvm.loop !126

_ZN4AAHD14refine_hv_dirsEv.exit:                  ; preds = %_ZN4AAHD15refine_ihv_dirsEi.exit, %.lr.ph18.i.preheader, %.preheader.i8, %.preheader13.i, %_ZN4AAHD11make_ahd_rbEv.exit
  invoke void @_ZN4AAHD13combine_imageEv(ptr noundef nonnull align 8 dereferenceable(128) %1)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %_ZN4AAHD14refine_hv_dirsEv.exit
  call void @_ZN4AAHDD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i3, %.lr.ph9.i, %.lr.ph.i, %_ZN4AAHD14refine_hv_dirsEv.exit, %bb.a
  %lpad.loopexit.split-lp55 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4AAHDD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  resume { ptr, i32 } %lpad.loopexit.split-lp55
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #8

declare noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.add.v8i8(<8 x i8>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind allocsize(0,1) }
attributes #12 = { nounwind }
attributes #13 = { noreturn }

!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !90}
!1 = distinct !{!1, !90}
!2 = distinct !{!2, !90}
!3 = distinct !{!3, !90}
!4 = distinct !{!4, !90}
!5 = distinct !{!5, !90}
!6 = distinct !{!6, !90}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"any pointer", !11, i64 0}
!16 = !{!"p1 _ZTS6LibRaw", !15, i64 0}
!17 = !{!"p1 short", !15, i64 0}
!18 = !{!"short", !11, i64 0}
!19 = !{!"double", !11, i64 0}
!20 = !{!"_ZTS20libraw_image_sizes_t", !18, i64 0, !18, i64 2, !18, i64 4, !18, i64 6, !18, i64 8, !18, i64 10, !18, i64 12, !18, i64 14, !12, i64 16, !19, i64 24, !12, i64 32, !11, i64 36, !18, i64 164, !11, i64 166}
!21 = !{!"p1 omnipotent char", !15, i64 0}
!22 = !{!"_ZTS16libraw_iparams_t", !11, i64 0, !11, i64 4, !11, i64 68, !11, i64 132, !11, i64 196, !11, i64 260, !12, i64 324, !12, i64 328, !12, i64 332, !12, i64 336, !12, i64 340, !12, i64 344, !11, i64 348, !11, i64 384, !11, i64 420, !12, i64 428, !21, i64 432}
!23 = !{!"float", !11, i64 0}
!24 = !{!"_ZTS18libraw_nikonlens_t", !23, i64 0, !11, i64 4, !11, i64 5, !11, i64 6, !11, i64 7}
!25 = !{!"_ZTS16libraw_dnglens_t", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12}
!26 = !{!"long long", !11, i64 0}
!27 = !{!"_ZTS24libraw_makernotes_lens_t", !26, i64 0, !11, i64 8, !18, i64 136, !18, i64 138, !26, i64 144, !18, i64 152, !18, i64 154, !11, i64 156, !18, i64 220, !11, i64 222, !11, i64 238, !23, i64 256, !23, i64 260, !23, i64 264, !23, i64 268, !23, i64 272, !23, i64 276, !23, i64 280, !23, i64 284, !23, i64 288, !23, i64 292, !23, i64 296, !23, i64 300, !23, i64 304, !23, i64 308, !23, i64 312, !26, i64 320, !11, i64 328, !26, i64 456, !11, i64 464, !26, i64 592, !11, i64 600, !18, i64 728, !23, i64 732}
!28 = !{!"_ZTS17libraw_lensinfo_t", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !11, i64 20, !11, i64 148, !11, i64 276, !11, i64 404, !18, i64 532, !24, i64 536, !25, i64 544, !27, i64 560}
!29 = !{!"_ZTS13libraw_area_t", !18, i64 0, !18, i64 2, !18, i64 4, !18, i64 6}
!30 = !{!"_ZTS25libraw_canon_makernotes_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !11, i64 16, !12, i64 32, !11, i64 36, !18, i64 52, !18, i64 54, !11, i64 56, !18, i64 58, !18, i64 60, !18, i64 62, !18, i64 64, !18, i64 66, !18, i64 68, !18, i64 70, !18, i64 72, !18, i64 74, !18, i64 76, !18, i64 78, !18, i64 80, !18, i64 82, !12, i64 84, !23, i64 88, !18, i64 92, !18, i64 94, !18, i64 96, !18, i64 98, !12, i64 100, !18, i64 104, !12, i64 108, !12, i64 112, !18, i64 116, !12, i64 120, !29, i64 124, !29, i64 132, !29, i64 140, !29, i64 148, !29, i64 156, !11, i64 164}
!31 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !18, i64 0, !18, i64 2, !18, i64 4, !18, i64 6}
!32 = !{!"_ZTS25libraw_nikon_makernotes_t", !19, i64 0, !18, i64 8, !18, i64 10, !11, i64 12, !11, i64 19, !11, i64 20, !11, i64 21, !11, i64 34, !11, i64 54, !11, i64 58, !11, i64 62, !11, i64 66, !11, i64 67, !11, i64 68, !11, i64 69, !11, i64 70, !11, i64 71, !11, i64 73, !11, i64 74, !11, i64 75, !11, i64 76, !11, i64 77, !11, i64 78, !11, i64 82, !11, i64 86, !18, i64 88, !12, i64 92, !12, i64 96, !12, i64 100, !12, i64 104, !11, i64 112, !11, i64 144, !11, i64 145, !11, i64 146, !12, i64 148, !12, i64 152, !12, i64 156, !11, i64 160, !11, i64 162, !18, i64 170, !31, i64 172, !18, i64 180, !18, i64 182, !18, i64 184, !12, i64 188, !11, i64 192, !11, i64 212, !12, i64 232, !11, i64 236, !12, i64 248, !21, i64 256, !18, i64 264, !18, i64 266, !11, i64 268, !18, i64 270, !19, i64 272, !19, i64 280, !19, i64 288}
!33 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !12, i64 0, !19, i64 8, !11, i64 16, !11, i64 24, !11, i64 88, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !11, i64 168, !11, i64 200, !12, i64 264, !11, i64 268, !11, i64 276, !11, i64 288}
!34 = !{!"_ZTS18libraw_fuji_info_t", !23, i64 0, !18, i64 4, !18, i64 6, !18, i64 8, !18, i64 10, !18, i64 12, !18, i64 14, !18, i64 16, !18, i64 18, !11, i64 20, !11, i64 53, !23, i64 88, !18, i64 92, !18, i64 94, !11, i64 96, !18, i64 100, !12, i64 104, !12, i64 108, !18, i64 112, !11, i64 114, !18, i64 120, !18, i64 122, !18, i64 124, !18, i64 126, !18, i64 128, !12, i64 132, !18, i64 136, !11, i64 138, !11, i64 151, !11, i64 156, !12, i64 164, !18, i64 168, !12, i64 172, !18, i64 176, !11, i64 178, !11, i64 196, !12, i64 324, !12, i64 328, !12, i64 332, !11, i64 336, !12, i64 344}
!35 = !{!"_ZTS27libraw_olympus_makernotes_t", !11, i64 0, !18, i64 6, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !11, i64 64, !11, i64 72, !18, i64 82, !11, i64 84, !18, i64 88, !18, i64 90, !11, i64 92, !11, i64 352, !18, i64 392, !11, i64 394, !11, i64 396, !11, i64 404, !18, i64 416, !18, i64 418, !18, i64 420, !18, i64 422, !19, i64 424, !11, i64 432, !11, i64 440, !11, i64 448, !12, i64 452, !18, i64 456, !18, i64 458}
!36 = !{!"_ZTS18libraw_sony_info_t", !18, i64 0, !11, i64 2, !11, i64 3, !12, i64 4, !11, i64 8, !12, i64 12, !11, i64 16, !11, i64 17, !18, i64 18, !11, i64 20, !11, i64 24, !11, i64 25, !18, i64 26, !11, i64 28, !11, i64 38, !11, i64 39, !11, i64 40, !18, i64 48, !11, i64 50, !11, i64 51, !11, i64 52, !18, i64 54, !12, i64 56, !18, i64 60, !11, i64 62, !18, i64 66, !18, i64 68, !18, i64 70, !18, i64 72, !18, i64 74, !18, i64 76, !18, i64 78, !12, i64 80, !23, i64 84, !18, i64 88, !12, i64 92, !12, i64 96, !18, i64 100, !11, i64 102, !12, i64 124, !18, i64 128, !12, i64 132, !11, i64 136, !11, i64 137, !18, i64 138, !18, i64 140, !18, i64 142, !18, i64 144, !18, i64 146, !18, i64 148, !18, i64 150, !18, i64 152, !18, i64 154, !12, i64 156, !18, i64 160, !11, i64 162, !23, i64 180}
!37 = !{!"_ZTS25libraw_kodak_makernotes_t", !18, i64 0, !18, i64 2, !18, i64 4, !18, i64 6, !18, i64 8, !18, i64 10, !11, i64 12, !11, i64 48, !11, i64 84, !11, i64 120, !11, i64 156, !11, i64 192, !18, i64 228, !18, i64 230, !18, i64 232, !18, i64 234, !23, i64 236, !23, i64 240}
!38 = !{!"_ZTS29libraw_panasonic_makernotes_t", !18, i64 0, !18, i64 2, !11, i64 4, !12, i64 36, !23, i64 40, !11, i64 44, !18, i64 56, !18, i64 58, !12, i64 60, !12, i64 64}
!39 = !{!"_ZTS26libraw_pentax_makernotes_t", !11, i64 0, !11, i64 4, !11, i64 8, !18, i64 12, !12, i64 16, !12, i64 20, !18, i64 24, !11, i64 26, !18, i64 30, !11, i64 32, !11, i64 33, !18, i64 34}
!40 = !{!"_ZTS22libraw_p1_makernotes_t", !11, i64 0, !11, i64 64, !11, i64 128, !11, i64 384}
!41 = !{!"_ZTS25libraw_ricoh_makernotes_t", !18, i64 0, !11, i64 4, !11, i64 12, !18, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !18, i64 40, !18, i64 42, !18, i64 44, !18, i64 46, !18, i64 48, !18, i64 50, !19, i64 56, !19, i64 64}
!42 = !{!"_ZTS27libraw_samsung_makernotes_t", !11, i64 0, !11, i64 16, !11, i64 32, !11, i64 40, !19, i64 88, !12, i64 96, !11, i64 100}
!43 = !{!"_ZTS24libraw_metadata_common_t", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20, !23, i64 24, !23, i64 28, !23, i64 32, !23, i64 36, !23, i64 40, !23, i64 44, !23, i64 48, !23, i64 52, !23, i64 56, !23, i64 60, !18, i64 64, !11, i64 66, !23, i64 196, !11, i64 200, !12, i64 296}
!44 = !{!"_ZTS19libraw_makernotes_t", !30, i64 0, !32, i64 168, !33, i64 464, !34, i64 848, !35, i64 1200, !36, i64 1664, !37, i64 1848, !38, i64 2092, !39, i64 2160, !40, i64 2196, !41, i64 2648, !42, i64 2720, !43, i64 2856}
!45 = !{!"_ZTS21libraw_shootinginfo_t", !18, i64 0, !18, i64 2, !18, i64 4, !18, i64 6, !18, i64 8, !18, i64 10, !18, i64 12, !11, i64 14, !11, i64 78}
!46 = !{!"_ZTS22libraw_output_params_t", !11, i64 0, !11, i64 16, !11, i64 32, !11, i64 64, !11, i64 112, !23, i64 128, !23, i64 132, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !21, i64 168, !21, i64 176, !21, i64 184, !21, i64 192, !12, i64 200, !12, i64 204, !12, i64 208, !12, i64 212, !12, i64 216, !12, i64 220, !11, i64 224, !12, i64 240, !12, i64 244, !23, i64 248, !23, i64 252, !12, i64 256, !12, i64 260, !12, i64 264, !12, i64 268, !12, i64 272, !12, i64 276, !12, i64 280, !12, i64 284, !23, i64 288, !23, i64 292, !12, i64 296, !12, i64 300}
!47 = !{!"any p2 pointer", !15, i64 0}
!48 = !{!"p2 omnipotent char", !47, i64 0}
!49 = !{!"_ZTS26libraw_raw_unpack_params_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !23, i64 28, !11, i64 32, !48, i64 40}
!50 = !{!"_ZTS5ph1_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !23, i64 32}
!51 = !{!"_ZTS19libraw_dng_levels_t", !12, i64 0, !11, i64 4, !12, i64 16420, !11, i64 16424, !23, i64 32840, !11, i64 32844, !11, i64 32860, !11, i64 32868, !12, i64 32884, !11, i64 32888, !11, i64 32904, !23, i64 32920, !23, i64 32924, !11, i64 32928}
!52 = !{!"_ZTS18libraw_colordata_t", !11, i64 0, !11, i64 131072, !12, i64 147488, !12, i64 147492, !12, i64 147496, !11, i64 147500, !23, i64 147516, !23, i64 147520, !11, i64 147524, !11, i64 147652, !11, i64 147668, !11, i64 147684, !11, i64 147732, !11, i64 147780, !11, i64 147828, !50, i64 147876, !23, i64 147912, !23, i64 147916, !11, i64 147920, !11, i64 147984, !11, i64 148048, !11, i64 148112, !11, i64 148176, !11, i64 148193, !15, i64 148264, !12, i64 148272, !11, i64 148276, !11, i64 148308, !51, i64 148648, !11, i64 181624, !11, i64 185720, !12, i64 187000, !11, i64 187004, !12, i64 187076, !12, i64 187080}
!53 = !{!"long", !11, i64 0}
!54 = !{!"_ZTS17libraw_gps_info_t", !11, i64 0, !11, i64 12, !11, i64 24, !23, i64 36, !11, i64 40, !11, i64 41, !11, i64 42, !11, i64 43, !11, i64 44}
!55 = !{!"_ZTS17libraw_imgother_t", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !53, i64 16, !12, i64 24, !11, i64 28, !54, i64 156, !11, i64 204, !11, i64 716, !11, i64 780}
!56 = !{!"_ZTS24LibRaw_thumbnail_formats", !11, i64 0}
!57 = !{!"_ZTS18libraw_thumbnail_t", !56, i64 0, !18, i64 4, !18, i64 6, !12, i64 8, !12, i64 12, !21, i64 16}
!58 = !{!"_ZTS23libraw_thumbnail_list_t", !12, i64 0, !11, i64 8}
!59 = !{!"p1 float", !15, i64 0}
!60 = !{!"_ZTS31libraw_internal_output_params_t", !12, i64 0, !12, i64 4, !12, i64 8, !18, i64 12, !18, i64 14}
!61 = !{!"_ZTS16libraw_rawdata_t", !15, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !59, i64 32, !59, i64 40, !59, i64 48, !17, i64 56, !17, i64 64, !22, i64 72, !20, i64 512, !60, i64 696, !52, i64 712}
!62 = !{!"_ZTS13libraw_data_t", !17, i64 0, !20, i64 8, !22, i64 192, !28, i64 632, !44, i64 1928, !45, i64 5088, !46, i64 5232, !49, i64 5536, !12, i64 5584, !12, i64 5588, !52, i64 5592, !55, i64 192680, !57, i64 193480, !58, i64 193504, !61, i64 193768, !15, i64 381568}
!63 = !{!"p1 _ZTS10LibRaw_TLS", !15, i64 0}
!64 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !15, i64 0}
!65 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!66 = !{!"_ZTS15internal_data_t", !64, i64 0, !65, i64 8, !12, i64 16, !21, i64 24, !26, i64 32, !26, i64 40, !11, i64 48}
!67 = !{!"p1 int", !15, i64 0}
!68 = !{!"_ZTS13output_data_t", !67, i64 0, !67, i64 8}
!69 = !{!"_ZTS15identify_data_t", !12, i64 0, !26, i64 8, !26, i64 16, !12, i64 24, !12, i64 28, !12, i64 32}
!70 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !11, i64 0}
!71 = !{!"_ZTS12pana8_tags_t", !11, i64 0, !11, i64 24, !18, i64 36, !11, i64 38, !11, i64 46, !11, i64 80, !11, i64 114, !18, i64 148, !18, i64 150, !11, i64 152, !11, i64 192, !11, i64 204, !11, i64 224, !11, i64 234}
!72 = !{!"_ZTS15unpacker_data_t", !18, i64 0, !11, i64 2, !11, i64 10, !12, i64 16, !26, i64 24, !26, i64 32, !26, i64 40, !26, i64 48, !26, i64 56, !26, i64 64, !26, i64 72, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !70, i64 96, !12, i64 100, !12, i64 104, !12, i64 108, !12, i64 112, !12, i64 116, !12, i64 120, !12, i64 124, !12, i64 128, !12, i64 132, !12, i64 136, !12, i64 140, !26, i64 144, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180, !12, i64 184, !71, i64 192, !11, i64 440, !12, i64 2488, !12, i64 2492, !18, i64 2496, !18, i64 2498, !12, i64 2500, !12, i64 2504, !12, i64 2508, !12, i64 2512, !12, i64 2516, !12, i64 2520, !12, i64 2524, !11, i64 2528, !18, i64 2608}
!73 = !{!"_ZTS22libraw_internal_data_t", !66, i64 0, !60, i64 64, !68, i64 80, !69, i64 96, !72, i64 136}
!74 = !{!"p1 _ZTS6decode", !15, i64 0}
!75 = !{!"_ZTS13libraw_memmgr", !47, i64 0, !12, i64 8}
!76 = !{!"_ZTS18libraw_callbacks_t", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144}
!77 = !{!"_ZTS6LibRaw", !62, i64 8, !63, i64 381584, !73, i64 381592, !11, i64 384344, !74, i64 433496, !74, i64 433504, !11, i64 433512, !75, i64 768232, !76, i64 768248, !11, i64 768400, !11, i64 768416, !11, i64 768432, !15, i64 768448, !15, i64 768456, !15, i64 768464, !53, i64 768472, !15, i64 768480, !15, i64 768488, !15, i64 768496, !15, i64 768504}
!78 = !{!77, !18, i64 28}
!79 = !{!"_ZTS4AAHD", !12, i64 0, !12, i64 4, !11, i64 8, !11, i64 24, !21, i64 40, !11, i64 48, !11, i64 64, !18, i64 70, !11, i64 72, !11, i64 80, !16, i64 120}
!80 = !{!79, !12, i64 0}
!81 = !{!77, !18, i64 30}
!82 = !{!79, !12, i64 4}
!83 = !{!17, !17, i64 0}
!84 = !{!67, !67, i64 0}
!85 = !{!79, !21, i64 40}
!86 = !{!21, !21, i64 0}
!87 = !{!18, !18, i64 0}
!88 = !{!77, !17, i64 8}
!89 = !{!23, !23, i64 0}
!90 = !{!"llvm.loop.mustprogress"}
!91 = !{!79, !16, i64 120}
!92 = !{!77, !12, i64 544}
!93 = !{!12, !12, i64 0}
!94 = !{!77, !18, i64 381670}
!95 = !{!77, !12, i64 381828}
!96 = !{!"llvm.loop.unswitch.partial.disable"}
!97 = !{}
!98 = !{i64 8}
!99 = !{!11, !11, i64 0}
!100 = distinct !{!100, !90}
!101 = distinct !{!101, !90, !96}
!102 = distinct !{!102, !90}
!103 = distinct !{!103, !90}
!104 = !{!16, !16, i64 0}
!105 = !{!"_ZTS17LibRaw_exceptions", !11, i64 0}
!106 = !{!105, !105, i64 0}
!107 = !{!79, !18, i64 70}
!108 = distinct !{!108, !90}
!109 = distinct !{!109, !90}
!110 = distinct !{!110, !90}
!111 = distinct !{!111, !90}
!112 = distinct !{!112, !90}
!113 = distinct !{!113, !90}
!114 = distinct !{!114, !90}
!115 = distinct !{!115, !90}
!116 = distinct !{!116, !90}
!117 = distinct !{!117, !90}
!118 = distinct !{!118, !90}
!119 = distinct !{!119, !90}
!120 = distinct !{!120, !90}
!121 = distinct !{!121, !90}
!122 = distinct !{!122, !90, !96}
!123 = distinct !{!123, !90}
!124 = distinct !{!124, !90}
!125 = distinct !{!125, !90}
!126 = distinct !{!126, !90, !96}
end_hunk_1
