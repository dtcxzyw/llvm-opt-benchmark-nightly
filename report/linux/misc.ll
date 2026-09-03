Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/misc?download=true
inline.NumInlined: 40
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 23
begin_hunk_0_@inflate_fast:bb.a
  %i.hc = getelementptr inbounds nuw i8, ptr %.2303, i64 1
  store i8 %i.hb, ptr %.2303, align 1
  %i.hd = getelementptr inbounds nuw i8, ptr %.1268, i64 2
  %i.he = load i8, ptr %i.ha, align 1
  %i.hf = getelementptr inbounds nuw i8, ptr %.2303, i64 2
  store i8 %i.he, ptr %i.hc, align 1
  %i.hg = getelementptr inbounds nuw i8, ptr %.1268, i64 3
  %i.hh = load i8, ptr %i.hd, align 1
  %i.hi = getelementptr inbounds nuw i8, ptr %.2303, i64 3
  store i8 %i.hh, ptr %i.hf, align 1
  %i.hj = getelementptr inbounds nuw i8, ptr %.1268, i64 4
  %i.hk = load i8, ptr %i.hg, align 1
  %i.hl = getelementptr inbounds nuw i8, ptr %.2303, i64 4
  store i8 %i.hk, ptr %i.hi, align 1
  %i.hm = getelementptr inbounds nuw i8, ptr %.1268, i64 5
  %i.hn = load i8, ptr %i.hj, align 1
  %i.ho = getelementptr inbounds nuw i8, ptr %.2303, i64 5
  store i8 %i.hn, ptr %i.hl, align 1
  %i.hp = getelementptr inbounds nuw i8, ptr %.1268, i64 6
  %i.hq = load i8, ptr %i.hm, align 1
  %i.hr = getelementptr inbounds nuw i8, ptr %.2303, i64 6
  store i8 %i.hq, ptr %i.ho, align 1
  %i.hs = getelementptr inbounds nuw i8, ptr %.1268, i64 7
  %i.ht = load i8, ptr %i.hp, align 1
  %i.hu = getelementptr inbounds nuw i8, ptr %.2303, i64 7
  store i8 %i.ht, ptr %i.hr, align 1
  %i.hv = getelementptr inbounds nuw i8, ptr %.1268, i64 8
  %i.hw = load i8, ptr %i.hs, align 1
  %i.hx = getelementptr inbounds nuw i8, ptr %.2303, i64 8 ; 2 uses
  store i8 %i.hw, ptr %i.hu, align 1
  %i.hy = add i32 %.1280, -8                      ; 2 uses
  %.not350.7 = icmp eq i32 %i.hy, 0
  br i1 %.not350.7, label %.unr-lcssa631, label %.preheader527, !llvm.loop !22

.unr-lcssa631:                                    ; preds = %.preheader527, %.preheader527.prol.loopexit
  %.lcssa602 = phi ptr [ %.lcssa602.unr, %.preheader527.prol.loopexit ], [ %i.hx, %.preheader527 ] ; 3 uses
  %i.hz = sub nuw nsw i32 %.0275, %i.go           ; 3 uses
  %i.ia = icmp ult i32 %i.v, %i.hz
  br i1 %i.ia, label %.preheader526.preheader, label %bb.u

.preheader526.preheader:                          ; preds = %.unr-lcssa631
  br i1 %lcmp.mod633.not, label %.preheader526.prol.loopexit, label %.preheader526.prol

.preheader526.prol:                               ; preds = %.preheader526.preheader, %.preheader526.prol
  %.3304.prol = phi ptr [ %i.id, %.preheader526.prol ], [ %.lcssa602, %.preheader526.preheader ] ; 2 uses
  %.2281.prol = phi i32 [ %i.ie, %.preheader526.prol ], [ %i.v, %.preheader526.preheader ]
  %.2269.prol = phi ptr [ %i.ib, %.preheader526.prol ], [ %i.x, %.preheader526.preheader ] ; 2 uses
  %prol.iter634 = phi i32 [ %prol.iter634.next, %.preheader526.prol ], [ 0, %.preheader526.preheader ]
  %i.ib = getelementptr inbounds nuw i8, ptr %.2269.prol, i64 1 ; 2 uses
  %i.ic = load i8, ptr %.2269.prol, align 1
  %i.id = getelementptr inbounds nuw i8, ptr %.3304.prol, i64 1 ; 3 uses
  store i8 %i.ic, ptr %.3304.prol, align 1
  %i.ie = add i32 %.2281.prol, -1                 ; 2 uses
  %prol.iter634.next = add i32 %prol.iter634, 1   ; 2 uses
  %prol.iter634.cmp.not = icmp eq i32 %prol.iter634.next, %xtraiter632
  br i1 %prol.iter634.cmp.not, label %.preheader526.prol.loopexit, label %.preheader526.prol, !llvm.loop !23

.preheader526.prol.loopexit:                      ; preds = %.preheader526.prol, %.preheader526.preheader
  %.lcssa603.unr = phi ptr [ poison, %.preheader526.preheader ], [ %i.id, %.preheader526.prol ]
  %.3304.unr = phi ptr [ %.lcssa602, %.preheader526.preheader ], [ %i.id, %.preheader526.prol ]
  %.2281.unr = phi i32 [ %i.v, %.preheader526.preheader ], [ %i.ie, %.preheader526.prol ]
  %.2269.unr = phi ptr [ %i.x, %.preheader526.preheader ], [ %i.ib, %.preheader526.prol ]
  br i1 %i.ax, label %.unr-lcssa635, label %.preheader526

.preheader526:                                    ; preds = %.preheader526.prol.loopexit, %.preheader526
  %.3304 = phi ptr [ %i.jc, %.preheader526 ], [ %.3304.unr, %.preheader526.prol.loopexit ] ; 9 uses
  %.2281 = phi i32 [ %i.jd, %.preheader526 ], [ %.2281.unr, %.preheader526.prol.loopexit ]
  %.2269 = phi ptr [ %i.ja, %.preheader526 ], [ %.2269.unr, %.preheader526.prol.loopexit ] ; 9 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.2269, i64 1
  %i.ig = load i8, ptr %.2269, align 1
  %i.ih = getelementptr inbounds nuw i8, ptr %.3304, i64 1
  store i8 %i.ig, ptr %.3304, align 1
  %i.ii = getelementptr inbounds nuw i8, ptr %.2269, i64 2
  %i.ij = load i8, ptr %i.if, align 1
  %i.ik = getelementptr inbounds nuw i8, ptr %.3304, i64 2
  store i8 %i.ij, ptr %i.ih, align 1
  %i.il = getelementptr inbounds nuw i8, ptr %.2269, i64 3
  %i.im = load i8, ptr %i.ii, align 1
  %i.in = getelementptr inbounds nuw i8, ptr %.3304, i64 3
  store i8 %i.im, ptr %i.ik, align 1
  %i.io = getelementptr inbounds nuw i8, ptr %.2269, i64 4
  %i.ip = load i8, ptr %i.il, align 1
  %i.iq = getelementptr inbounds nuw i8, ptr %.3304, i64 4
  store i8 %i.ip, ptr %i.in, align 1
  %i.ir = getelementptr inbounds nuw i8, ptr %.2269, i64 5
  %i.is = load i8, ptr %i.io, align 1
  %i.it = getelementptr inbounds nuw i8, ptr %.3304, i64 5
  store i8 %i.is, ptr %i.iq, align 1
  %i.iu = getelementptr inbounds nuw i8, ptr %.2269, i64 6
  %i.iv = load i8, ptr %i.ir, align 1
  %i.iw = getelementptr inbounds nuw i8, ptr %.3304, i64 6
  store i8 %i.iv, ptr %i.it, align 1
  %i.ix = getelementptr inbounds nuw i8, ptr %.2269, i64 7
  %i.iy = load i8, ptr %i.iu, align 1
  %i.iz = getelementptr inbounds nuw i8, ptr %.3304, i64 7
  store i8 %i.iy, ptr %i.iw, align 1
  %i.ja = getelementptr inbounds nuw i8, ptr %.2269, i64 8
  %i.jb = load i8, ptr %i.ix, align 1
  %i.jc = getelementptr inbounds nuw i8, ptr %.3304, i64 8 ; 2 uses
  store i8 %i.jb, ptr %i.iz, align 1
  %i.jd = add i32 %.2281, -8                      ; 2 uses
  %.not351.7 = icmp eq i32 %i.jd, 0
  br i1 %.not351.7, label %.unr-lcssa635, label %.preheader526, !llvm.loop !24

.unr-lcssa635:                                    ; preds = %.preheader526, %.preheader526.prol.loopexit
  %.lcssa603 = phi ptr [ %.lcssa603.unr, %.preheader526.prol.loopexit ], [ %i.jc, %.preheader526 ] ; 2 uses
  %i.je = sub nuw nsw i32 %i.hz, %i.v
  %i.jf = zext nneg i32 %i.ej to i64
  %i.jg = sub nsw i64 0, %i.jf
  %i.jh = getelementptr inbounds i8, ptr %.lcssa603, i64 %i.jg
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ji = sub nuw i32 %i.v, %i.er
  %i.jj = zext i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.jj ; 3 uses
  %i.jl = icmp ult i32 %i.er, %.0275
  br i1 %i.jl, label %.preheader528.preheader, label %bb.u

.preheader528.preheader:                          ; preds = %bb.t
  %i.jm = trunc i64 %i.en to i32
  %xtraiter625 = and i32 %i.er, 7                 ; 2 uses
  %lcmp.mod626.not = icmp eq i32 %xtraiter625, 0
  br i1 %lcmp.mod626.not, label %.preheader528.prol.loopexit, label %.preheader528.prol

.preheader528.prol:                               ; preds = %.preheader528.preheader, %.preheader528.prol
  %.4305.prol = phi ptr [ %i.jp, %.preheader528.prol ], [ %.0301, %.preheader528.preheader ] ; 2 uses
  %.3282.prol = phi i32 [ %i.jq, %.preheader528.prol ], [ %i.er, %.preheader528.preheader ]
  %.3270.prol = phi ptr [ %i.jn, %.preheader528.prol ], [ %i.jk, %.preheader528.preheader ] ; 2 uses
  %prol.iter627 = phi i32 [ %prol.iter627.next, %.preheader528.prol ], [ 0, %.preheader528.preheader ]
  %i.jn = getelementptr inbounds nuw i8, ptr %.3270.prol, i64 1 ; 2 uses
  %i.jo = load i8, ptr %.3270.prol, align 1
  %i.jp = getelementptr inbounds nuw i8, ptr %.4305.prol, i64 1 ; 3 uses
  store i8 %i.jo, ptr %.4305.prol, align 1
  %i.jq = add i32 %.3282.prol, -1                 ; 2 uses
  %prol.iter627.next = add i32 %prol.iter627, 1   ; 2 uses
  %prol.iter627.cmp.not = icmp eq i32 %prol.iter627.next, %xtraiter625
  br i1 %prol.iter627.cmp.not, label %.preheader528.prol.loopexit, label %.preheader528.prol, !llvm.loop !25

.preheader528.prol.loopexit:                      ; preds = %.preheader528.prol, %.preheader528.preheader
  %.lcssa601.unr = phi ptr [ poison, %.preheader528.preheader ], [ %i.jp, %.preheader528.prol ]
  %.4305.unr = phi ptr [ %.0301, %.preheader528.preheader ], [ %i.jp, %.preheader528.prol ]
  %.3282.unr = phi i32 [ %i.er, %.preheader528.preheader ], [ %i.jq, %.preheader528.prol ]
  %.3270.unr = phi ptr [ %i.jk, %.preheader528.preheader ], [ %i.jn, %.preheader528.prol ]
  %i.jr = add i32 %i.at, %i.ei
  %i.js = add i32 %i.jr, %i.do
  %i.jt = sub i32 %1, %i.js
  %i.ju = add i32 %i.jt, %i.jm
  %i.jv = icmp ugt i32 %i.ju, -8
  br i1 %i.jv, label %.unr-lcssa, label %.preheader528

.preheader528:                                    ; preds = %.preheader528.prol.loopexit, %.preheader528
  %.4305 = phi ptr [ %i.kt, %.preheader528 ], [ %.4305.unr, %.preheader528.prol.loopexit ] ; 9 uses
  %.3282 = phi i32 [ %i.ku, %.preheader528 ], [ %.3282.unr, %.preheader528.prol.loopexit ]
  %.3270 = phi ptr [ %i.kr, %.preheader528 ], [ %.3270.unr, %.preheader528.prol.loopexit ] ; 9 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.3270, i64 1
  %i.jx = load i8, ptr %.3270, align 1
  %i.jy = getelementptr inbounds nuw i8, ptr %.4305, i64 1
  store i8 %i.jx, ptr %.4305, align 1
  %i.jz = getelementptr inbounds nuw i8, ptr %.3270, i64 2
  %i.ka = load i8, ptr %i.jw, align 1
  %i.kb = getelementptr inbounds nuw i8, ptr %.4305, i64 2
  store i8 %i.ka, ptr %i.jy, align 1
  %i.kc = getelementptr inbounds nuw i8, ptr %.3270, i64 3
  %i.kd = load i8, ptr %i.jz, align 1
  %i.ke = getelementptr inbounds nuw i8, ptr %.4305, i64 3
  store i8 %i.kd, ptr %i.kb, align 1
  %i.kf = getelementptr inbounds nuw i8, ptr %.3270, i64 4
  %i.kg = load i8, ptr %i.kc, align 1
  %i.kh = getelementptr inbounds nuw i8, ptr %.4305, i64 4
  store i8 %i.kg, ptr %i.ke, align 1
  %i.ki = getelementptr inbounds nuw i8, ptr %.3270, i64 5
  %i.kj = load i8, ptr %i.kf, align 1
  %i.kk = getelementptr inbounds nuw i8, ptr %.4305, i64 5
  store i8 %i.kj, ptr %i.kh, align 1
  %i.kl = getelementptr inbounds nuw i8, ptr %.3270, i64 6
  %i.km = load i8, ptr %i.ki, align 1
  %i.kn = getelementptr inbounds nuw i8, ptr %.4305, i64 6
  store i8 %i.km, ptr %i.kk, align 1
  %i.ko = getelementptr inbounds nuw i8, ptr %.3270, i64 7
  %i.kp = load i8, ptr %i.kl, align 1
  %i.kq = getelementptr inbounds nuw i8, ptr %.4305, i64 7
  store i8 %i.kp, ptr %i.kn, align 1
  %i.kr = getelementptr inbounds nuw i8, ptr %.3270, i64 8
  %i.ks = load i8, ptr %i.ko, align 1
  %i.kt = getelementptr inbounds nuw i8, ptr %.4305, i64 8 ; 2 uses
  store i8 %i.ks, ptr %i.kq, align 1
  %i.ku = add i32 %.3282, -8                      ; 2 uses
  %.not349.7 = icmp eq i32 %i.ku, 0
  br i1 %.not349.7, label %.unr-lcssa, label %.preheader528, !llvm.loop !26

.unr-lcssa:                                       ; preds = %.preheader528, %.preheader528.prol.loopexit
  %.lcssa601 = phi ptr [ %.lcssa601.unr, %.preheader528.prol.loopexit ], [ %i.kt, %.preheader528 ] ; 2 uses
  %i.kv = sub nuw nsw i32 %.0275, %i.er
  %i.kw = zext nneg i32 %i.ej to i64
  %i.kx = sub nsw i64 0, %i.kw
  %i.ky = getelementptr inbounds i8, ptr %.lcssa601, i64 %i.kx
  br label %bb.u

bb.u:                                             ; preds = %.unr-lcssa631, %.unr-lcssa635, %bb.s, %.unr-lcssa, %bb.t, %bb.q, %.unr-lcssa639
  %.5306 = phi ptr [ %.lcssa604, %.unr-lcssa639 ], [ %.0301, %bb.q ], [ %.lcssa603, %.unr-lcssa635 ], [ %.lcssa602, %.unr-lcssa631 ], [ %.0301, %bb.s ], [ %.lcssa601, %.unr-lcssa ], [ %.0301, %bb.t ] ; 2 uses
  %.1276 = phi i32 [ %i.gg, %.unr-lcssa639 ], [ %.0275, %bb.q ], [ %i.je, %.unr-lcssa635 ], [ %i.hz, %.unr-lcssa631 ], [ %.0275, %bb.s ], [ %i.kv, %.unr-lcssa ], [ %.0275, %bb.t ] ; 3 uses
  %.4271 = phi ptr [ %i.gj, %.unr-lcssa639 ], [ %i.ev, %bb.q ], [ %i.jh, %.unr-lcssa635 ], [ %i.x, %.unr-lcssa631 ], [ %i.gn, %bb.s ], [ %i.ky, %.unr-lcssa ], [ %i.jk, %bb.t ] ; 2 uses
  %i.kz = icmp ugt i32 %.1276, 2
  br i1 %i.kz, label %.lr.ph421, label %._crit_edge422

.lr.ph421:                                        ; preds = %bb.u, %.lr.ph421
  %.5272419 = phi ptr [ %i.lg, %.lr.ph421 ], [ %.4271, %bb.u ] ; 4 uses
  %.2277418 = phi i32 [ %i.lj, %.lr.ph421 ], [ %.1276, %bb.u ]
  %.6307417 = phi ptr [ %i.li, %.lr.ph421 ], [ %.5306, %bb.u ] ; 4 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.5272419, i64 1
  %i.lb = load i8, ptr %.5272419, align 1
  %i.lc = getelementptr inbounds nuw i8, ptr %.6307417, i64 1
  store i8 %i.lb, ptr %.6307417, align 1
  %i.ld = getelementptr inbounds nuw i8, ptr %.5272419, i64 2
  %i.le = load i8, ptr %i.la, align 1
  %i.lf = getelementptr inbounds nuw i8, ptr %.6307417, i64 2
  store i8 %i.le, ptr %i.lc, align 1
  %i.lg = getelementptr inbounds nuw i8, ptr %.5272419, i64 3 ; 2 uses
  %i.lh = load i8, ptr %i.ld, align 1
  %i.li = getelementptr inbounds nuw i8, ptr %.6307417, i64 3 ; 2 uses
  store i8 %i.lh, ptr %i.lf, align 1
  %i.lj = add i32 %.2277418, -3                   ; 3 uses
  %i.lk = icmp ugt i32 %i.lj, 2
  br i1 %i.lk, label %.lr.ph421, label %._crit_edge422, !llvm.loop !27

._crit_edge422:                                   ; preds = %.lr.ph421, %bb.u
  %.6307.lcssa = phi ptr [ %.5306, %bb.u ], [ %i.li, %.lr.ph421 ] ; 4 uses
  %.2277.lcssa = phi i32 [ %.1276, %bb.u ], [ %i.lj, %.lr.ph421 ] ; 2 uses
  %.5272.lcssa = phi ptr [ %.4271, %bb.u ], [ %i.lg, %.lr.ph421 ] ; 2 uses
  %.not353 = icmp eq i32 %.2277.lcssa, 0
  br i1 %.not353, label %bb.ah, label %bb.v

bb.v:                                             ; preds = %._crit_edge422
  %i.ll = load i8, ptr %.5272.lcssa, align 1
  %i.lm = getelementptr inbounds nuw i8, ptr %.6307.lcssa, i64 1 ; 2 uses
  store i8 %i.ll, ptr %.6307.lcssa, align 1
  %i.ln = icmp eq i32 %.2277.lcssa, 2
  br i1 %i.ln, label %bb.w, label %bb.ah

bb.w:                                             ; preds = %bb.v
  %i.lo = getelementptr inbounds nuw i8, ptr %.5272.lcssa, i64 1
  %i.lp = load i8, ptr %i.lo, align 1
  %i.lq = getelementptr inbounds nuw i8, ptr %.6307.lcssa, i64 2
  store i8 %i.lp, ptr %i.lm, align 1
  br label %bb.ah

bb.x:                                             ; preds = %bb.n
  %i.lr = zext nneg i32 %i.ej to i64
  %i.ls = sub nsw i64 0, %i.lr
  %i.lt = getelementptr inbounds i8, ptr %.0301, i64 %i.ls ; 3 uses
  %i.lu = getelementptr inbounds i8, ptr %.0301, i64 -1
  %i.lv = ptrtoint ptr %i.lu to i64
  %i.lw = and i64 %i.lv, 1
  %.not345 = icmp eq i64 %i.lw, 0
  br i1 %.not345, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lt, i64 1
  %i.ly = load i8, ptr %i.lt, align 1
  %i.lz = getelementptr inbounds nuw i8, ptr %.0301, i64 1
  store i8 %i.ly, ptr %.0301, align 1
  %i.ma = add nsw i32 %.0275, -1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.7308 = phi ptr [ %.0301, %bb.x ], [ %i.lz, %bb.y ] ; 5 uses
  %.3278 = phi i32 [ %.0275, %bb.x ], [ %i.ma, %bb.y ] ; 3 uses
  %.6273 = phi ptr [ %i.lt, %bb.x ], [ %i.lx, %bb.y ] ; 4 uses
  %i.mb = icmp samesign ugt i32 %i.ej, 2
  br i1 %i.mb, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.mc = lshr i32 %.3278, 1                      ; 2 uses
  %i.md = zext nneg i32 %i.mc to i64              ; 3 uses
  %xtraiter622 = and i64 %i.md, 7                 ; 2 uses
  %lcmp.mod623.not = icmp eq i64 %xtraiter622, 0
  br i1 %lcmp.mod623.not, label %.prol.loopexit620, label %.prol.preheader619

.prol.preheader619:                               ; preds = %bb.aa, %.prol.preheader619
  %.0265.prol = phi ptr [ %i.mg, %.prol.preheader619 ], [ %.7308, %bb.aa ] ; 2 uses
  %.0263.prol = phi i64 [ %i.mh, %.prol.preheader619 ], [ %i.md, %bb.aa ]
  %.0262.prol = phi ptr [ %i.me, %.prol.preheader619 ], [ %.6273, %bb.aa ] ; 2 uses
  %prol.iter624 = phi i64 [ %prol.iter624.next, %.prol.preheader619 ], [ 0, %bb.aa ]
  %i.me = getelementptr inbounds nuw i8, ptr %.0262.prol, i64 2 ; 3 uses
  %i.mf = load i16, ptr %.0262.prol, align 2
  %i.mg = getelementptr inbounds nuw i8, ptr %.0265.prol, i64 2 ; 3 uses
  store i16 %i.mf, ptr %.0265.prol, align 2
  %i.mh = add i64 %.0263.prol, -1                 ; 2 uses
  %prol.iter624.next = add i64 %prol.iter624, 1   ; 2 uses
  %prol.iter624.cmp.not = icmp eq i64 %prol.iter624.next, %xtraiter622
  br i1 %prol.iter624.cmp.not, label %.prol.loopexit620, label %.prol.preheader619, !llvm.loop !28

.prol.loopexit620:                                ; preds = %.prol.preheader619, %bb.aa
  %.lcssa600.unr = phi ptr [ poison, %bb.aa ], [ %i.me, %.prol.preheader619 ]
  %.lcssa599.unr = phi ptr [ poison, %bb.aa ], [ %i.mg, %.prol.preheader619 ]
  %.0265.unr = phi ptr [ %.7308, %bb.aa ], [ %i.mg, %.prol.preheader619 ]
  %.0263.unr = phi i64 [ %i.md, %bb.aa ], [ %i.mh, %.prol.preheader619 ]
  %.0262.unr = phi ptr [ %.6273, %bb.aa ], [ %i.me, %.prol.preheader619 ]
  %i.mi = add nsw i32 %i.mc, -1
  %i.mj = icmp ult i32 %i.mi, 7
  br i1 %i.mj, label %.loopexit, label %.new621

.new621:                                          ; preds = %.prol.loopexit620, %.new621
  %.0265 = phi ptr [ %i.nh, %.new621 ], [ %.0265.unr, %.prol.loopexit620 ] ; 9 uses
  %.0263 = phi i64 [ %i.ni, %.new621 ], [ %.0263.unr, %.prol.loopexit620 ]
  %.0262 = phi ptr [ %i.nf, %.new621 ], [ %.0262.unr, %.prol.loopexit620 ] ; 9 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.0262, i64 2
  %i.ml = load i16, ptr %.0262, align 2
  %i.mm = getelementptr inbounds nuw i8, ptr %.0265, i64 2
  store i16 %i.ml, ptr %.0265, align 2
  %i.mn = getelementptr inbounds nuw i8, ptr %.0262, i64 4
  %i.mo = load i16, ptr %i.mk, align 2
  %i.mp = getelementptr inbounds nuw i8, ptr %.0265, i64 4
  store i16 %i.mo, ptr %i.mm, align 2
  %i.mq = getelementptr inbounds nuw i8, ptr %.0262, i64 6
  %i.mr = load i16, ptr %i.mn, align 2
  %i.ms = getelementptr inbounds nuw i8, ptr %.0265, i64 6
  store i16 %i.mr, ptr %i.mp, align 2
  %i.mt = getelementptr inbounds nuw i8, ptr %.0262, i64 8
  %i.mu = load i16, ptr %i.mq, align 2
  %i.mv = getelementptr inbounds nuw i8, ptr %.0265, i64 8
  store i16 %i.mu, ptr %i.ms, align 2
  %i.mw = getelementptr inbounds nuw i8, ptr %.0262, i64 10
  %i.mx = load i16, ptr %i.mt, align 2
  %i.my = getelementptr inbounds nuw i8, ptr %.0265, i64 10
  store i16 %i.mx, ptr %i.mv, align 2
  %i.mz = getelementptr inbounds nuw i8, ptr %.0262, i64 12
  %i.na = load i16, ptr %i.mw, align 2
  %i.nb = getelementptr inbounds nuw i8, ptr %.0265, i64 12
  store i16 %i.na, ptr %i.my, align 2
  %i.nc = getelementptr inbounds nuw i8, ptr %.0262, i64 14
  %i.nd = load i16, ptr %i.mz, align 2
  %i.ne = getelementptr inbounds nuw i8, ptr %.0265, i64 14
  store i16 %i.nd, ptr %i.nb, align 2
  %i.nf = getelementptr inbounds nuw i8, ptr %.0262, i64 16 ; 2 uses
  %i.ng = load i16, ptr %i.nc, align 2
  %i.nh = getelementptr inbounds nuw i8, ptr %.0265, i64 16 ; 2 uses
  store i16 %i.ng, ptr %i.ne, align 2
  %i.ni = add i64 %.0263, -8                      ; 2 uses
  %.not347.7 = icmp eq i64 %i.ni, 0
  br i1 %.not347.7, label %.loopexit, label %.new621, !llvm.loop !29

bb.ab:                                            ; preds = %bb.z
  %i.nj = getelementptr inbounds i8, ptr %.7308, i64 -2
  %i.nk = load i16, ptr %i.nj, align 2            ; 3 uses
  %i.nl = icmp eq i32 %i.ej, 1
  %.sroa.5.0.extract.shift = lshr i16 %i.nk, 8
  %.sroa.5.0.insert.shift = and i16 %i.nk, -256
  %.sroa.0.0.insert.insert = or disjoint i16 %.sroa.5.0.insert.shift, %.sroa.5.0.extract.shift
  %.0261 = select i1 %i.nl, i16 %.sroa.0.0.insert.insert, i16 %i.nk ; 9 uses
  %i.nm = lshr i32 %.3278, 1                      ; 2 uses
  %i.nn = zext nneg i32 %i.nm to i64              ; 3 uses
  %xtraiter = and i64 %i.nn, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.ab, %.prol.preheader
  %.1266.prol = phi ptr [ %i.no, %.prol.preheader ], [ %.7308, %bb.ab ] ; 2 uses
  %.1264.prol = phi i64 [ %i.np, %.prol.preheader ], [ %i.nn, %bb.ab ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.ab ]
  %i.no = getelementptr inbounds nuw i8, ptr %.1266.prol, i64 2 ; 3 uses
  store i16 %.0261, ptr %.1266.prol, align 2
  %i.np = add i64 %.1264.prol, -1                 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !30

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.ab
  %.lcssa598.unr = phi ptr [ poison, %bb.ab ], [ %i.no, %.prol.preheader ]
  %.1266.unr = phi ptr [ %.7308, %bb.ab ], [ %i.no, %.prol.preheader ]
  %.1264.unr = phi i64 [ %i.nn, %bb.ab ], [ %i.np, %.prol.preheader ]
  %i.nq = add nsw i32 %i.nm, -1
  %i.nr = icmp ult i32 %i.nq, 7
  br i1 %i.nr, label %.loopexit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.1266 = phi ptr [ %i.nz, %.new ], [ %.1266.unr, %.prol.loopexit ] ; 9 uses
  %.1264 = phi i64 [ %i.oa, %.new ], [ %.1264.unr, %.prol.loopexit ]
  %i.ns = getelementptr inbounds nuw i8, ptr %.1266, i64 2
  store i16 %.0261, ptr %.1266, align 2
  %i.nt = getelementptr inbounds nuw i8, ptr %.1266, i64 4
  store i16 %.0261, ptr %i.ns, align 2
  %i.nu = getelementptr inbounds nuw i8, ptr %.1266, i64 6
  store i16 %.0261, ptr %i.nt, align 2
  %i.nv = getelementptr inbounds nuw i8, ptr %.1266, i64 8
  store i16 %.0261, ptr %i.nu, align 2
  %i.nw = getelementptr inbounds nuw i8, ptr %.1266, i64 10
  store i16 %.0261, ptr %i.nv, align 2
  %i.nx = getelementptr inbounds nuw i8, ptr %.1266, i64 12
  store i16 %.0261, ptr %i.nw, align 2
  %i.ny = getelementptr inbounds nuw i8, ptr %.1266, i64 14
  store i16 %.0261, ptr %i.nx, align 2
  %i.nz = getelementptr inbounds nuw i8, ptr %.1266, i64 16 ; 2 uses
  store i16 %.0261, ptr %i.ny, align 2
  %i.oa = add i64 %.1264, -8                      ; 2 uses
  %.not346.7 = icmp eq i64 %i.oa, 0
  br i1 %.not346.7, label %.loopexit, label %.new, !llvm.loop !31

.loopexit:                                        ; preds = %.prol.loopexit, %.new, %.prol.loopexit620, %.new621
  %.8309 = phi ptr [ %i.nh, %.new621 ], [ %.lcssa599.unr, %.prol.loopexit620 ], [ %.lcssa598.unr, %.prol.loopexit ], [ %i.nz, %.new ] ; 3 uses
  %.7274 = phi ptr [ %i.nf, %.new621 ], [ %.lcssa600.unr, %.prol.loopexit620 ], [ %.6273, %.new ], [ %.6273, %.prol.loopexit ]
  %i.ob = and i32 %.3278, 1
  %.not348 = icmp eq i32 %i.ob, 0
  br i1 %.not348, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %.loopexit
  %i.oc = load i8, ptr %.7274, align 1
  %i.od = getelementptr inbounds nuw i8, ptr %.8309, i64 1
  store i8 %i.oc, ptr %.8309, align 1
  br label %bb.ah

.lr.ph411:                                        ; preds = %bb.k, %bb.ad
  %i.oe = phi i32 [ %i.ot, %bb.ad ], [ %i.dm, %bb.k ] ; 2 uses
  %i.of = phi i32 [ %i.os, %bb.ad ], [ %i.dl, %bb.k ] ; 2 uses
  %i.og = phi i64 [ %i.or, %bb.ad ], [ %i.dk, %bb.k ] ; 3 uses
  %.sroa.10.1409 = phi i16 [ %.sroa.10.1, %bb.ad ], [ %.sroa.10.1407, %bb.k ]
  %i.oh = and i32 %i.oe, 64
  %i.oi = icmp eq i32 %i.oh, 0
  br i1 %i.oi, label %bb.ad, label %.loopexit362.sink.split.sink.split

bb.ad:                                            ; preds = %.lr.ph411
  %i.oj = zext i16 %.sroa.10.1409 to i64
  %notmask343 = shl nsw i32 -1, %i.oe
  %i.ok = xor i32 %notmask343, -1
  %i.ol = zext nneg i32 %i.ok to i64
  %i.om = and i64 %i.og, %i.ol
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.om
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %i.oj ; 3 uses
  %.sroa.096.1 = load i8, ptr %i.oo, align 2
end_hunk_0
