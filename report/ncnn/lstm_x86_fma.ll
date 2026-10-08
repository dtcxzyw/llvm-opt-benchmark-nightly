Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/lstm_x86_fma?download=true
inline.NumInlined: 28
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4ncnn12LSTM_x86_fma15create_pipelineERKNS_6OptionE.omp_outlined:bb.a
  %i.fh = add nsw i64 %i.ei, %i.cb
  %i.fi = or i64 %i.fh, 1
  %i.fj = mul i64 %i.fi, %i.al
  %i.fk = add i64 %i.ep, %i.fj
  %i.fl = mul i64 %i.ak, %i.fk
  %i.fm = add nuw nsw i64 %i.ca, 1
  %i.fn = mul i64 %i.fm, %i.al
  %i.fo = add i64 %i.ep, %i.fn
  %i.fp = mul i64 %i.ak, %i.fo
  %i.fq = add nsw i64 %i.ev, %i.ca
  %i.fr = add nsw i64 %i.fq, 1
  %i.fs = mul i64 %i.fr, %i.al
  %i.ft = add i64 %i.ep, %i.fs
  %i.fu = mul i64 %i.ak, %i.ft
  %i.fv = add i64 %i.ep, %i.al
  %i.fw = mul i64 %i.ak, %i.fv
  %i.fx = or i64 %i.ei, 1
  %i.fy = mul i64 %i.fx, %i.al
  %i.fz = add i64 %i.ep, %i.fy
  %i.ga = mul i64 %i.ak, %i.fz
  %i.gb = mul nsw i64 %i.al, %i.cc
  %i.gc = add i64 %i.ep, %i.gb
  %i.gd = mul i64 %i.ak, %i.gc
  %i.ge = add nsw i64 %i.ev, %i.cc
  %i.gf = mul i64 %i.ge, %i.al
  %i.gg = add i64 %i.ep, %i.gf
  %i.gh = mul i64 %i.ak, %i.gg
  %i.gi = mul nsw i64 %i.al, %i.cb
  %i.gj = add i64 %i.ep, %i.gi
  %i.gk = mul i64 %i.ak, %i.gj
  %i.gl = add nsw i64 %i.ev, %i.cb
  %i.gm = mul i64 %i.gl, %i.al
  %i.gn = add i64 %i.ep, %i.gm
  %i.go = mul i64 %i.ak, %i.gn
  %i.gp = mul nsw i64 %i.al, %i.ca
  %i.gq = add i64 %i.ep, %i.gp
  %i.gr = mul i64 %i.ak, %i.gq
  %i.gs = add nsw i64 %i.ev, %i.ca
  %i.gt = mul i64 %i.gs, %i.al
  %i.gu = add i64 %i.ep, %i.gt
  %i.gv = mul i64 %i.ak, %i.gu
  %i.gw = mul i64 %i.ej, %i.al
  %i.gx = shl i64 %i.gw, 1
  %i.gy = add i64 %i.gx, %i.ep
  %i.gz = mul i64 %i.ak, %i.gy
  %i.ha = mul i64 %i.ar, %i.cd
  %i.hb = add nsw i64 %i.bx, -2                   ; 4 uses
  %i.hc = lshr i64 %i.hb, 1                       ; 2 uses
  %i.hd = mul i64 %i.hc, %i.au
  %i.he = add i64 %i.ha, %i.hd
  %i.hf = mul i64 %i.at, %i.he
  %i.hg = mul i64 %i.ar, %i.at
  %i.hh = mul i64 %i.at, %i.au
  %i.hi = mul i64 %i.q, %i.cd                     ; 15 uses
  %i.hj = add nuw nsw i64 %i.cc, 1
  %i.hk = mul i64 %i.hj, %i.t
  %i.hl = add i64 %i.hi, %i.hk
  %i.hm = mul i64 %i.s, %i.hl
  %i.hn = mul i64 %i.q, %i.s
  %i.ho = and i64 %i.hb, -2                       ; 5 uses
  %i.hp = add nsw i64 %i.ho, %i.cc
  %i.hq = add nsw i64 %i.hp, 1
  %i.hr = mul i64 %i.hq, %i.t
  %i.hs = add i64 %i.hi, %i.hr
  %i.ht = mul i64 %i.s, %i.hs
  %i.hu = mul i64 %i.s, %i.t
  %i.hv = shl i64 %i.hu, 1
  %i.hw = or disjoint i64 %i.cb, 1
  %i.hx = mul nsw i64 %i.hw, %i.t
  %i.hy = add i64 %i.hi, %i.hx
  %i.hz = mul i64 %i.s, %i.hy
  %i.ia = add nsw i64 %i.hb, %i.cb
  %i.ib = or i64 %i.ia, 1
  %i.ic = mul i64 %i.ib, %i.t
  %i.id = add i64 %i.hi, %i.ic
  %i.ie = mul i64 %i.s, %i.id
  %i.if = add nuw nsw i64 %i.ca, 1
  %i.ig = mul i64 %i.if, %i.t
  %i.ih = add i64 %i.hi, %i.ig
  %i.ii = mul i64 %i.s, %i.ih
  %i.ij = add nsw i64 %i.ho, %i.ca
  %i.ik = add nsw i64 %i.ij, 1
  %i.il = mul i64 %i.ik, %i.t
  %i.im = add i64 %i.hi, %i.il
  %i.in = mul i64 %i.s, %i.im
  %i.io = add i64 %i.hi, %i.t
  %i.ip = mul i64 %i.s, %i.io
  %i.iq = or i64 %i.hb, 1
  %i.ir = mul i64 %i.iq, %i.t
  %i.is = add i64 %i.hi, %i.ir
  %i.it = mul i64 %i.s, %i.is
  %i.iu = mul nsw i64 %i.t, %i.cc
  %i.iv = add i64 %i.hi, %i.iu
  %i.iw = mul i64 %i.s, %i.iv
  %i.ix = add nsw i64 %i.ho, %i.cc
  %i.iy = mul i64 %i.ix, %i.t
  %i.iz = add i64 %i.hi, %i.iy
  %i.ja = mul i64 %i.s, %i.iz
  %i.jb = mul nsw i64 %i.t, %i.cb
  %i.jc = add i64 %i.hi, %i.jb
  %i.jd = mul i64 %i.s, %i.jc
  %i.je = add nsw i64 %i.ho, %i.cb
  %i.jf = mul i64 %i.je, %i.t
  %i.jg = add i64 %i.hi, %i.jf
  %i.jh = mul i64 %i.s, %i.jg
  %i.ji = mul nsw i64 %i.t, %i.ca
  %i.jj = add i64 %i.hi, %i.ji
  %i.jk = mul i64 %i.s, %i.jj
  %i.jl = add nsw i64 %i.ho, %i.ca
  %i.jm = mul i64 %i.jl, %i.t
  %i.jn = add i64 %i.hi, %i.jm
  %i.jo = mul i64 %i.s, %i.jn
  %i.jp = mul i64 %i.hc, %i.t
  %i.jq = shl i64 %i.jp, 1
  %i.jr = add i64 %i.jq, %i.hi
  %i.js = mul i64 %i.s, %i.jr
  %i.jt = getelementptr i8, ptr %i.o, i64 %i.hm
  %i.ju = getelementptr i8, ptr %i.o, i64 %i.hz
  %i.jv = getelementptr i8, ptr %i.o, i64 %i.ii
  %i.jw = getelementptr i8, ptr %i.o, i64 %i.ip
  %i.jx = getelementptr i8, ptr %i.o, i64 %i.iw
  %i.jy = getelementptr i8, ptr %i.o, i64 %i.jd
  %i.jz = getelementptr i8, ptr %i.o, i64 %i.jk
  %i.ka = getelementptr i8, ptr %i.ag, i64 %i.et
  %i.kb = getelementptr i8, ptr %i.ag, i64 %i.fg
  %i.kc = getelementptr i8, ptr %i.ag, i64 %i.fp
  %i.kd = getelementptr i8, ptr %i.ag, i64 %i.fw
  %i.ke = getelementptr i8, ptr %i.ag, i64 %i.gd
  %i.kf = getelementptr i8, ptr %i.ag, i64 %i.gk
  %i.kg = getelementptr i8, ptr %i.ag, i64 %i.gr
  %i.kh = getelementptr i8, ptr %i.o, i64 %i.dn
  %i.ki = getelementptr i8, ptr %i.o, i64 %i.dv
  %i.kj = getelementptr i8, ptr %i.o, i64 %i.eb
  %i.kk = getelementptr i8, ptr %i.o, i64 %i.eg
  %i.kl = getelementptr i8, ptr %i.ag, i64 %i.cm
  %i.km = getelementptr i8, ptr %i.ag, i64 %i.cu
  %i.kn = getelementptr i8, ptr %i.ag, i64 %i.da
  %i.ko = getelementptr i8, ptr %i.ag, i64 %i.df
  %i.kp = getelementptr i8, ptr %i.ag, i64 %i.gz
  %i.kq = getelementptr i8, ptr %i.ag, i64 %i.gv
  %i.kr = getelementptr i8, ptr %i.ag, i64 %i.go
  %i.ks = getelementptr i8, ptr %i.ag, i64 %i.gh
  %i.kt = getelementptr i8, ptr %i.ag, i64 %i.ga
  %i.ku = getelementptr i8, ptr %i.ag, i64 %i.fu
  %i.kv = getelementptr i8, ptr %i.ag, i64 %i.fl
  %i.kw = getelementptr i8, ptr %i.ag, i64 %i.fa
  %i.kx = getelementptr i8, ptr %i.be, i64 %i.em
  %i.ky = getelementptr i8, ptr %i.o, i64 %i.js
  %i.kz = getelementptr i8, ptr %i.o, i64 %i.jo
  %i.la = getelementptr i8, ptr %i.o, i64 %i.jh
  %i.lb = getelementptr i8, ptr %i.o, i64 %i.ja
  %i.lc = getelementptr i8, ptr %i.o, i64 %i.it
  %i.ld = getelementptr i8, ptr %i.o, i64 %i.in
  %i.le = getelementptr i8, ptr %i.o, i64 %i.ie
  %i.lf = getelementptr i8, ptr %i.o, i64 %i.ht
  %i.lg = getelementptr i8, ptr %i.ap, i64 %i.hf
  %i.lh = or i64 %i.hv, %i.hh
  %i.li = icmp slt i64 %i.lh, 0
  %i.lj = or i64 %i.fc, %i.eo
  %i.lk = icmp slt i64 %i.lj, 0
  %stride.check515 = icmp slt i64 %i.dp, 0
  %stride.check477 = icmp slt i64 %i.co, 0
  br label %.noexc231

.noexc231:                                        ; preds = %.noexc231.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvar461 = phi i64 [ 0, %.noexc231.lr.ph ], [ %indvar.next462, %_ZN4ncnn3MatD2Ev.exit ] ; 7 uses
  %indvars.iv448 = phi i64 [ %i.cd, %.noexc231.lr.ph ], [ %indvars.iv.next449, %_ZN4ncnn3MatD2Ev.exit ] ; 7 uses
  %i.ll = mul i64 %i.hn, %indvar461               ; 15 uses
  %scevgep641.a = getelementptr i8, ptr %i.jt, i64 %i.ll
  %scevgep644.a = getelementptr i8, ptr %i.ju, i64 %i.ll
  %scevgep647.a = getelementptr i8, ptr %i.jv, i64 %i.ll
  %scevgep650.a = getelementptr i8, ptr %i.jw, i64 %i.ll
  %scevgep653.a = getelementptr i8, ptr %i.jx, i64 %i.ll
  %scevgep656.a = getelementptr i8, ptr %i.jy, i64 %i.ll
  %scevgep659.a = getelementptr i8, ptr %i.jz, i64 %i.ll
  %i.lm = mul i64 %i.eu, %indvar461               ; 15 uses
  %scevgep547.a = getelementptr i8, ptr %i.ka, i64 %i.lm
  %scevgep550.a = getelementptr i8, ptr %i.kb, i64 %i.lm
  %scevgep553.a = getelementptr i8, ptr %i.kc, i64 %i.lm
  %scevgep556.a = getelementptr i8, ptr %i.kd, i64 %i.lm
  %scevgep559.a = getelementptr i8, ptr %i.ke, i64 %i.lm
  %scevgep562.a = getelementptr i8, ptr %i.kf, i64 %i.lm
  %scevgep565.a = getelementptr i8, ptr %i.kg, i64 %i.lm
  %i.ln = mul i64 %i.do, %indvar461               ; 4 uses
  %scevgep497.a = getelementptr i8, ptr %i.kh, i64 %i.ln
  %scevgep500.a = getelementptr i8, ptr %i.ki, i64 %i.ln
  %scevgep503.a = getelementptr i8, ptr %i.kj, i64 %i.ln
  %scevgep506 = getelementptr i8, ptr %i.kk, i64 %i.ln
  %i.lo = mul i64 %i.cn, %indvar461               ; 4 uses
  %scevgep463.a = getelementptr i8, ptr %i.kl, i64 %i.lo
  %scevgep466.a = getelementptr i8, ptr %i.km, i64 %i.lo
  %scevgep469.a = getelementptr i8, ptr %i.kn, i64 %i.lo
  %scevgep472.a = getelementptr i8, ptr %i.ko, i64 %i.lo
  %.reass = mul i64 %factor.op.mul, %indvars.iv448
  %i.lp = getelementptr i8, ptr %i.o, i64 %.reass ; 17 uses
  %.reass414 = mul i64 %factor.op.mul413, %indvars.iv448
  %i.lq = getelementptr inbounds nuw i8, ptr %i.x, i64 %.reass414 ; 6 uses
  %.reass416 = mul i64 %factor.op.mul415, %indvars.iv448
  %i.lr = getelementptr i8, ptr %i.ag, i64 %.reass416 ; 17 uses
  %.reass418 = mul i64 %factor.op.mul417, %indvars.iv448
  %i.ls = getelementptr i8, ptr %i.ap, i64 %.reass418 ; 12 uses
  %.reass420 = mul i64 %factor.op.mul419, %indvars.iv448
  %i.lt = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.reass420 ; 2 uses
  %.reass422 = mul i64 %factor.op.mul421, %indvars.iv448
  %i.lu = getelementptr i8, ptr %i.be, i64 %.reass422 ; 12 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.bk ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.bl ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.bm ; 3 uses
  br i1 %i.bp, label %.lr.ph396, label %.preheader388

.lr.ph396:                                        ; preds = %.noexc231
  %scevgep568 = getelementptr i8, ptr %i.kp, i64 %i.lm
  %scevgep566 = getelementptr i8, ptr %i.kq, i64 %i.lm
  %scevgep563 = getelementptr i8, ptr %i.kr, i64 %i.lm
  %scevgep560 = getelementptr i8, ptr %i.ks, i64 %i.lm
  %scevgep557 = getelementptr i8, ptr %i.kt, i64 %i.lm
  %scevgep554 = getelementptr i8, ptr %i.ku, i64 %i.lm
  %scevgep551 = getelementptr i8, ptr %i.kv, i64 %i.lm
  %scevgep548 = getelementptr i8, ptr %i.kw, i64 %i.lm
  %i.ly = mul i64 %i.en, %indvar461
  %scevgep545 = getelementptr i8, ptr %i.kx, i64 %i.ly
  %scevgep662 = getelementptr i8, ptr %i.ky, i64 %i.ll
  %scevgep660 = getelementptr i8, ptr %i.kz, i64 %i.ll
  %scevgep657 = getelementptr i8, ptr %i.la, i64 %i.ll
  %scevgep654 = getelementptr i8, ptr %i.lb, i64 %i.ll
  %scevgep651 = getelementptr i8, ptr %i.lc, i64 %i.ll
  %scevgep648 = getelementptr i8, ptr %i.ld, i64 %i.ll
  %scevgep645 = getelementptr i8, ptr %i.le, i64 %i.ll
  %scevgep642 = getelementptr i8, ptr %i.lf, i64 %i.ll
  %i.lz = mul i64 %i.hg, %indvar461
  %scevgep639 = getelementptr i8, ptr %i.lg, i64 %i.lz
  %i.ma = load i32, ptr %4, align 4, !tbaa !43    ; 3 uses
  %i.mb = icmp sgt i32 %i.ma, 0
  %i.mc = load i32, ptr %i.bw, align 8, !tbaa !46 ; 3 uses
  %i.md = icmp sgt i32 %i.mc, 0
  %wide.trip.count = zext i32 %i.ma to i64        ; 5 uses
  %wide.trip.count428 = zext i32 %i.mc to i64     ; 5 uses
  %i.me = shl nuw nsw i64 %wide.trip.count428, 5
  %scevgep546 = getelementptr i8, ptr %scevgep545, i64 %i.me ; 8 uses
  %i.mf = shl nuw nsw i64 %wide.trip.count428, 2  ; 8 uses
  %scevgep549 = getelementptr i8, ptr %scevgep548, i64 %i.mf
  %scevgep552 = getelementptr i8, ptr %scevgep551, i64 %i.mf
  %scevgep555 = getelementptr i8, ptr %scevgep554, i64 %i.mf
  %scevgep558 = getelementptr i8, ptr %scevgep557, i64 %i.mf
  %scevgep561 = getelementptr i8, ptr %scevgep560, i64 %i.mf
  %scevgep564 = getelementptr i8, ptr %scevgep563, i64 %i.mf
  %scevgep567.a = getelementptr i8, ptr %scevgep566, i64 %i.mf
  %scevgep569 = getelementptr i8, ptr %scevgep568, i64 %i.mf
  %i.mg = shl nuw nsw i64 %wide.trip.count, 5
  %scevgep640 = getelementptr i8, ptr %scevgep639, i64 %i.mg ; 8 uses
  %i.mh = shl nuw nsw i64 %wide.trip.count, 2     ; 8 uses
  %scevgep643 = getelementptr i8, ptr %scevgep642, i64 %i.mh
  %scevgep646 = getelementptr i8, ptr %scevgep645, i64 %i.mh
  %scevgep649 = getelementptr i8, ptr %scevgep648, i64 %i.mh
  %scevgep652 = getelementptr i8, ptr %scevgep651, i64 %i.mh
  %scevgep655 = getelementptr i8, ptr %scevgep654, i64 %i.mh
  %scevgep658 = getelementptr i8, ptr %scevgep657, i64 %i.mh
  %scevgep661.a = getelementptr i8, ptr %scevgep660, i64 %i.mh
  %scevgep663 = getelementptr i8, ptr %scevgep662, i64 %i.mh
  %min.iters.check712 = icmp ult i32 %i.ma, 24
  %bound0664 = icmp ult ptr %i.ls, %scevgep643
  %bound1665 = icmp ult ptr %scevgep641.a, %scevgep640
  %found.conflict666 = and i1 %bound0664, %bound1665
  %bound0669 = icmp ult ptr %i.ls, %scevgep646
  %bound1670 = icmp ult ptr %scevgep644.a, %scevgep640
  %found.conflict671 = and i1 %bound0669, %bound1670
  %bound0675 = icmp ult ptr %i.ls, %scevgep649
  %bound1676 = icmp ult ptr %scevgep647.a, %scevgep640
  %found.conflict677 = and i1 %bound0675, %bound1676
  %bound0681 = icmp ult ptr %i.ls, %scevgep652
  %bound1682 = icmp ult ptr %scevgep650.a, %scevgep640
  %found.conflict683 = and i1 %bound0681, %bound1682
  %bound0687 = icmp ult ptr %i.ls, %scevgep655
  %bound1688 = icmp ult ptr %scevgep653.a, %scevgep640
  %found.conflict689 = and i1 %bound0687, %bound1688
  %bound0693 = icmp ult ptr %i.ls, %scevgep658
  %bound1694 = icmp ult ptr %scevgep656.a, %scevgep640
  %found.conflict695 = and i1 %bound0693, %bound1694
  %bound0699 = icmp ult ptr %i.ls, %scevgep661.a
  %bound1700 = icmp ult ptr %scevgep659.a, %scevgep640
  %found.conflict701 = and i1 %bound0699, %bound1700
  %bound0705 = icmp ult ptr %i.ls, %scevgep663
  %bound1706 = icmp ult ptr %i.lp, %scevgep640
  %found.conflict707 = and i1 %bound0705, %bound1706
  %op.rdx739.a = or i1 %i.li, %found.conflict666
  %op.rdx740.a = or i1 %found.conflict671, %found.conflict677
  %op.rdx741.a = or i1 %found.conflict683, %found.conflict689
  %op.rdx742.a = or i1 %found.conflict695, %found.conflict701
  %op.rdx743.a = or i1 %op.rdx739.a, %op.rdx740.a
  %op.rdx744.a = or i1 %op.rdx741.a, %op.rdx742.a
  %op.rdx745 = or i1 %op.rdx743.a, %op.rdx744.a
  %op.rdx746 = or i1 %op.rdx745, %found.conflict707
  %n.vec714 = and i64 %wide.trip.count, 2147483640 ; 4 uses
  %i.mi = shl nuw nsw i64 %n.vec714, 5
  %cmp.n729 = icmp eq i64 %n.vec714, %wide.trip.count
  %min.iters.check618 = icmp ult i32 %i.mc, 24
  %bound0570 = icmp ult ptr %i.lu, %scevgep549
  %bound1571 = icmp ult ptr %scevgep547.a, %scevgep546
  %found.conflict572 = and i1 %bound0570, %bound1571
  %bound0575 = icmp ult ptr %i.lu, %scevgep552
  %bound1576 = icmp ult ptr %scevgep550.a, %scevgep546
  %found.conflict577 = and i1 %bound0575, %bound1576
  %bound0581 = icmp ult ptr %i.lu, %scevgep555
  %bound1582 = icmp ult ptr %scevgep553.a, %scevgep546
  %found.conflict583 = and i1 %bound0581, %bound1582
  %bound0587 = icmp ult ptr %i.lu, %scevgep558
  %bound1588 = icmp ult ptr %scevgep556.a, %scevgep546
  %found.conflict589 = and i1 %bound0587, %bound1588
  %bound0593 = icmp ult ptr %i.lu, %scevgep561
  %bound1594 = icmp ult ptr %scevgep559.a, %scevgep546
  %found.conflict595 = and i1 %bound0593, %bound1594
  %bound0599 = icmp ult ptr %i.lu, %scevgep564
  %bound1600 = icmp ult ptr %scevgep562.a, %scevgep546
  %found.conflict601 = and i1 %bound0599, %bound1600
  %bound0605 = icmp ult ptr %i.lu, %scevgep567.a
  %bound1606 = icmp ult ptr %scevgep565.a, %scevgep546
  %found.conflict607 = and i1 %bound0605, %bound1606
  %bound0611 = icmp ult ptr %i.lu, %scevgep569
  %bound1612 = icmp ult ptr %i.lr, %scevgep546
  %found.conflict613 = and i1 %bound0611, %bound1612
  %op.rdx = or i1 %i.lk, %found.conflict572
  %op.rdx732.a = or i1 %found.conflict577, %found.conflict583
  %op.rdx733.a = or i1 %found.conflict589, %found.conflict595
  %op.rdx734.a = or i1 %found.conflict601, %found.conflict607
  %op.rdx735.a = or i1 %op.rdx, %op.rdx732.a
  %op.rdx736.a = or i1 %op.rdx733.a, %op.rdx734.a
  %op.rdx737 = or i1 %op.rdx735.a, %op.rdx736.a
  %op.rdx738 = or i1 %op.rdx737, %found.conflict613
  %n.vec620 = and i64 %wide.trip.count428, 2147483640 ; 4 uses
  %i.mj = shl nuw nsw i64 %n.vec620, 5
  %cmp.n635 = icmp eq i64 %n.vec620, %wide.trip.count428
  br label %bb.c

.preheader388.loopexit:                           ; preds = %._crit_edge
  %i.mk = trunc nuw nsw i64 %indvars.iv.next431 to i32
  br label %.preheader388

.preheader388:                                    ; preds = %.preheader388.loopexit, %.noexc231
  %.0182.lcssa = phi ptr [ %i.lt, %.noexc231 ], [ %i.ol, %.preheader388.loopexit ]
  %.0181.lcssa = phi i32 [ 0, %.noexc231 ], [ %i.mk, %.preheader388.loopexit ] ; 6 uses
  %i.ml = icmp slt i32 %.0181.lcssa, %i.bo
  br i1 %i.ml, label %.lr.ph409, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph409:                                        ; preds = %.preheader388
  %i.mm = load i32, ptr %4, align 4, !tbaa !43    ; 3 uses
  %i.mn = icmp sgt i32 %i.mm, 0
  %i.mo = load i32, ptr %i.bw, align 8, !tbaa !46 ; 3 uses
  %i.mp = icmp sgt i32 %i.mo, 0
  %i.mq = zext i32 %.0181.lcssa to i64            ; 9 uses
  %wide.trip.count436 = zext i32 %i.mm to i64     ; 7 uses
  %wide.trip.count441 = zext i32 %i.mo to i64     ; 7 uses
  %i.mr = shl nuw nsw i64 %wide.trip.count441, 4
  %scevgep458.a = getelementptr i8, ptr %i.lu, i64 %i.mr
  %i.ms = add nuw nsw i64 %i.cc, %i.mq
  %i.mt = mul i64 %i.cg, %i.ms
  %scevgep460 = getelementptr i8, ptr %i.lr, i64 %i.mt
  %i.mu = shl nuw nsw i64 %wide.trip.count441, 2  ; 4 uses
  %scevgep464.a = getelementptr i8, ptr %scevgep463.a, i64 %i.mu
  %i.mv = add nuw nsw i64 %i.cb, %i.mq
  %i.mw = mul i64 %i.cp, %i.mv
  %scevgep465 = getelementptr i8, ptr %i.lr, i64 %i.mw
  %scevgep467.a = getelementptr i8, ptr %scevgep466.a, i64 %i.mu
  %i.mx = add nsw i64 %i.bx, %i.mq
  %i.my = mul i64 %i.cv, %i.mx
  %scevgep468 = getelementptr i8, ptr %i.lr, i64 %i.my
  %scevgep470.a = getelementptr i8, ptr %scevgep469.a, i64 %i.mu
  %i.mz = mul i64 %i.db, %i.mq
  %scevgep471 = getelementptr i8, ptr %i.lr, i64 %i.mz
  %scevgep473 = getelementptr i8, ptr %scevgep472.a, i64 %i.mu
  %i.na = shl nuw nsw i64 %wide.trip.count436, 4
  %scevgep494.a = getelementptr i8, ptr %i.ls, i64 %i.na
  %i.nb = add nuw nsw i64 %i.cc, %i.mq
  %i.nc = mul i64 %i.dh, %i.nb
  %scevgep496.a = getelementptr i8, ptr %i.lp, i64 %i.nc
  %i.nd = shl nuw nsw i64 %wide.trip.count436, 2  ; 4 uses
  %scevgep498 = getelementptr i8, ptr %scevgep497.a, i64 %i.nd
  %i.ne = add nuw nsw i64 %i.cb, %i.mq
  %i.nf = mul i64 %i.dq, %i.ne
  %scevgep499.a = getelementptr i8, ptr %i.lp, i64 %i.nf
  %scevgep501 = getelementptr i8, ptr %scevgep500.a, i64 %i.nd
  %i.ng = add nsw i64 %i.bx, %i.mq
  %i.nh = mul i64 %i.dw, %i.ng
  %scevgep502.a = getelementptr i8, ptr %i.lp, i64 %i.nh
  %scevgep504 = getelementptr i8, ptr %scevgep503.a, i64 %i.nd
  %i.ni = mul i64 %i.ec, %i.mq
  %scevgep505.a = getelementptr i8, ptr %i.lp, i64 %i.ni
  %scevgep507 = getelementptr i8, ptr %scevgep506, i64 %i.nd
  %min.iters.check528 = icmp ult i32 %i.mm, 16
  %n.vec530 = and i64 %wide.trip.count436, 2147483640 ; 4 uses
  %i.nj = shl nuw nsw i64 %n.vec530, 4
  %cmp.n541 = icmp eq i64 %n.vec530, %wide.trip.count436
  %xtraiter = and i64 %wide.trip.count436, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.nk = add nsw i64 %wide.trip.count436, -1
  %min.iters.check = icmp ult i32 %i.mo, 16
  %n.vec = and i64 %wide.trip.count441, 2147483640 ; 4 uses
  %i.nl = shl nuw nsw i64 %n.vec, 4
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count441
  %xtraiter751 = and i64 %wide.trip.count441, 1
  %lcmp.mod752.not = icmp eq i64 %xtraiter751, 0
  %i.nm = add nsw i64 %wide.trip.count441, -1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph396, %._crit_edge
  %indvars.iv430 = phi i64 [ 0, %.lr.ph396 ], [ %indvars.iv.next431, %._crit_edge ] ; 12 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnn12LSTM_x86_fma15create_pipelineERKNS_6OptionE.omp_outlined:bb.a
  %i.px = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.pw ; 2 uses
  %i.py = lshr exact i64 %indvars.iv430, 1        ; 2 uses
  %i.pz = mul i64 %i.bv, %i.py
  %i.qa = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.pz ; 3 uses
  br i1 %i.mb, label %.lr.ph.preheader, label %.preheader387

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.qb = mul i64 %i.bu, %i.py
  %i.qc = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.qb ; 3 uses
  %brmerge = select i1 %min.iters.check712, i1 true, i1 %op.rdx746
  br i1 %brmerge, label %.lr.ph.preheader750, label %vector.ph713

vector.ph713:                                     ; preds = %.lr.ph.preheader
  %i.qd = getelementptr i8, ptr %i.qc, i64 %i.mi
  br label %vector.body715

vector.body715:                                   ; preds = %vector.body715, %vector.ph713
  %index716 = phi i64 [ 0, %vector.ph713 ], [ %index.next727, %vector.body715 ] ; 10 uses
  %i.qe = shl i64 %index716, 5
  %next.gep717 = getelementptr i8, ptr %i.qc, i64 %i.qe
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %index716
  %wide.load718.a = load <8 x float>, ptr %i.qf, align 4, !tbaa !61, !alias.scope !227
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %index716
  %wide.load719.a = load <8 x float>, ptr %i.qg, align 4, !tbaa !61, !alias.scope !228
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %index716
  %wide.load720.a = load <8 x float>, ptr %i.qh, align 4, !tbaa !61, !alias.scope !229
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.ow, i64 %index716
  %wide.load721.a = load <8 x float>, ptr %i.qi, align 4, !tbaa !61, !alias.scope !230
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %index716
  %wide.load722.a = load <8 x float>, ptr %i.qj, align 4, !tbaa !61, !alias.scope !231
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %index716
  %wide.load723.a = load <8 x float>, ptr %i.qk, align 4, !tbaa !61, !alias.scope !232
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.pe, i64 %index716
  %wide.load724 = load <8 x float>, ptr %i.ql, align 4, !tbaa !61, !alias.scope !233
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.ph, i64 %index716
  %wide.load725 = load <8 x float>, ptr %i.qm, align 4, !tbaa !61, !alias.scope !234
  %i.qn = shufflevector <8 x float> %wide.load718.a, <8 x float> %wide.load719.a, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qo = shufflevector <8 x float> %wide.load720.a, <8 x float> %wide.load721.a, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qp = shufflevector <8 x float> %wide.load722.a, <8 x float> %wide.load723.a, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qq = shufflevector <8 x float> %wide.load724, <8 x float> %wide.load725, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qr = shufflevector <16 x float> %i.qn, <16 x float> %i.qo, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.qs = shufflevector <16 x float> %i.qp, <16 x float> %i.qq, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec726 = shufflevector <32 x float> %i.qr, <32 x float> %i.qs, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x float> %interleaved.vec726, ptr %next.gep717, align 4, !tbaa !61, !alias.scope !235, !noalias !236
  %index.next727 = add nuw i64 %index716, 8       ; 2 uses
  %i.qt = icmp eq i64 %index.next727, %n.vec714
  br i1 %i.qt, label %middle.block728, label %vector.body715, !llvm.loop !189

middle.block728:                                  ; preds = %vector.body715
  br i1 %cmp.n729, label %.preheader387, label %.lr.ph.preheader750

.lr.ph.preheader750:                              ; preds = %.lr.ph.preheader, %middle.block728
  %indvars.iv.ph = phi i64 [ %n.vec714, %middle.block728 ], [ 0, %.lr.ph.preheader ]
  %.0180389.ph = phi ptr [ %i.qd, %middle.block728 ], [ %i.qc, %.lr.ph.preheader ]
  br label %.lr.ph

.preheader387:                                    ; preds = %.lr.ph, %middle.block728, %bb.c
  br i1 %i.md, label %.lr.ph393.preheader, label %._crit_edge

.lr.ph393.preheader:                              ; preds = %.preheader387
  %brmerge753 = select i1 %min.iters.check618, i1 true, i1 %op.rdx738
  br i1 %brmerge753, label %.lr.ph393.preheader749, label %vector.ph619

vector.ph619:                                     ; preds = %.lr.ph393.preheader
  %i.qu = getelementptr i8, ptr %i.qa, i64 %i.mj
  br label %vector.body621

vector.body621:                                   ; preds = %vector.body621, %vector.ph619
  %index622 = phi i64 [ 0, %vector.ph619 ], [ %index.next633, %vector.body621 ] ; 10 uses
  %i.qv = shl i64 %index622, 5
  %next.gep623 = getelementptr i8, ptr %i.qa, i64 %i.qv
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.pj, i64 %index622
  %wide.load624.a = load <8 x float>, ptr %i.qw, align 4, !tbaa !61, !alias.scope !237
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %index622
  %wide.load625.a = load <8 x float>, ptr %i.qx, align 4, !tbaa !61, !alias.scope !238
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %index622
  %wide.load626.a = load <8 x float>, ptr %i.qy, align 4, !tbaa !61, !alias.scope !239
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %index622
  %wide.load627.a = load <8 x float>, ptr %i.qz, align 4, !tbaa !61, !alias.scope !240
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %index622
  %wide.load628.a = load <8 x float>, ptr %i.ra, align 4, !tbaa !61, !alias.scope !241
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %index622
  %wide.load629.a = load <8 x float>, ptr %i.rb, align 4, !tbaa !61, !alias.scope !242
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.pv, i64 %index622
  %wide.load630 = load <8 x float>, ptr %i.rc, align 4, !tbaa !61, !alias.scope !243
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.px, i64 %index622
  %wide.load631 = load <8 x float>, ptr %i.rd, align 4, !tbaa !61, !alias.scope !244
  %i.re = shufflevector <8 x float> %wide.load624.a, <8 x float> %wide.load625.a, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rf = shufflevector <8 x float> %wide.load626.a, <8 x float> %wide.load627.a, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rg = shufflevector <8 x float> %wide.load628.a, <8 x float> %wide.load629.a, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rh = shufflevector <8 x float> %wide.load630, <8 x float> %wide.load631, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ri = shufflevector <16 x float> %i.re, <16 x float> %i.rf, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.rj = shufflevector <16 x float> %i.rg, <16 x float> %i.rh, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec632 = shufflevector <32 x float> %i.ri, <32 x float> %i.rj, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x float> %interleaved.vec632, ptr %next.gep623, align 4, !tbaa !61, !alias.scope !245, !noalias !246
  %index.next633 = add nuw i64 %index622, 8       ; 2 uses
  %i.rk = icmp eq i64 %index.next633, %n.vec620
  br i1 %i.rk, label %middle.block634, label %vector.body621, !llvm.loop !200

middle.block634:                                  ; preds = %vector.body621
  br i1 %cmp.n635, label %._crit_edge, label %.lr.ph393.preheader749

.lr.ph393.preheader749:                           ; preds = %.lr.ph393.preheader, %middle.block634
  %indvars.iv425.ph = phi i64 [ %n.vec620, %middle.block634 ], [ 0, %.lr.ph393.preheader ]
  %.0179391.ph = phi ptr [ %i.qu, %middle.block634 ], [ %i.qa, %.lr.ph393.preheader ]
  br label %.lr.ph393

.lr.ph:                                           ; preds = %.lr.ph.preheader750, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader750 ] ; 9 uses
  %.0180389 = phi ptr [ %i.si, %.lr.ph ], [ %.0180389.ph, %.lr.ph.preheader750 ] ; 9 uses
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %indvars.iv
  %i.rm = load float, ptr %i.rl, align 4, !tbaa !61
  store float %i.rm, ptr %.0180389, align 4, !tbaa !61
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %indvars.iv
  %i.ro = load float, ptr %i.rn, align 4, !tbaa !61
  %i.rp = getelementptr inbounds nuw i8, ptr %.0180389, i64 4
  store float %i.ro, ptr %i.rp, align 4, !tbaa !61
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %indvars.iv
  %i.rr = load float, ptr %i.rq, align 4, !tbaa !61
  %i.rs = getelementptr inbounds nuw i8, ptr %.0180389, i64 8
  store float %i.rr, ptr %i.rs, align 4, !tbaa !61
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.ow, i64 %indvars.iv
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !61
  %i.rv = getelementptr inbounds nuw i8, ptr %.0180389, i64 12
  store float %i.ru, ptr %i.rv, align 4, !tbaa !61
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %indvars.iv
  %i.rx = load float, ptr %i.rw, align 4, !tbaa !61
  %i.ry = getelementptr inbounds nuw i8, ptr %.0180389, i64 16
  store float %i.rx, ptr %i.ry, align 4, !tbaa !61
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %indvars.iv
  %i.sa = load float, ptr %i.rz, align 4, !tbaa !61
  %i.sb = getelementptr inbounds nuw i8, ptr %.0180389, i64 20
  store float %i.sa, ptr %i.sb, align 4, !tbaa !61
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.pe, i64 %indvars.iv
  %i.sd = load float, ptr %i.sc, align 4, !tbaa !61
  %i.se = getelementptr inbounds nuw i8, ptr %.0180389, i64 24
  store float %i.sd, ptr %i.se, align 4, !tbaa !61
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.ph, i64 %indvars.iv
  %i.sg = load float, ptr %i.sf, align 4, !tbaa !61
  %i.sh = getelementptr inbounds nuw i8, ptr %.0180389, i64 28
  store float %i.sg, ptr %i.sh, align 4, !tbaa !61
  %i.si = getelementptr inbounds nuw i8, ptr %.0180389, i64 32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader387, label %.lr.ph, !llvm.loop !201

._crit_edge:                                      ; preds = %.lr.ph393, %middle.block634, %.preheader387
  %indvars.iv.next431 = add nuw nsw i64 %indvars.iv430, 2 ; 3 uses
  %i.sj = icmp slt i64 %indvars.iv.next431, %invariant.op
  br i1 %i.sj, label %bb.c, label %.preheader388.loopexit, !llvm.loop !202

.lr.ph393:                                        ; preds = %.lr.ph393.preheader749, %.lr.ph393
  %indvars.iv425 = phi i64 [ %indvars.iv.next426, %.lr.ph393 ], [ %indvars.iv425.ph, %.lr.ph393.preheader749 ] ; 9 uses
  %.0179391 = phi ptr [ %i.th, %.lr.ph393 ], [ %.0179391.ph, %.lr.ph393.preheader749 ] ; 9 uses
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.pj, i64 %indvars.iv425
  %i.sl = load float, ptr %i.sk, align 4, !tbaa !61
  store float %i.sl, ptr %.0179391, align 4, !tbaa !61
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %indvars.iv425
  %i.sn = load float, ptr %i.sm, align 4, !tbaa !61
  %i.so = getelementptr inbounds nuw i8, ptr %.0179391, i64 4
  store float %i.sn, ptr %i.so, align 4, !tbaa !61
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %indvars.iv425
  %i.sq = load float, ptr %i.sp, align 4, !tbaa !61
  %i.sr = getelementptr inbounds nuw i8, ptr %.0179391, i64 8
  store float %i.sq, ptr %i.sr, align 4, !tbaa !61
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %indvars.iv425
  %i.st = load float, ptr %i.ss, align 4, !tbaa !61
  %i.su = getelementptr inbounds nuw i8, ptr %.0179391, i64 12
  store float %i.st, ptr %i.su, align 4, !tbaa !61
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %indvars.iv425
  %i.sw = load float, ptr %i.sv, align 4, !tbaa !61
  %i.sx = getelementptr inbounds nuw i8, ptr %.0179391, i64 16
  store float %i.sw, ptr %i.sx, align 4, !tbaa !61
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %indvars.iv425
  %i.sz = load float, ptr %i.sy, align 4, !tbaa !61
  %i.ta = getelementptr inbounds nuw i8, ptr %.0179391, i64 20
  store float %i.sz, ptr %i.ta, align 4, !tbaa !61
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.pv, i64 %indvars.iv425
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !61
  %i.td = getelementptr inbounds nuw i8, ptr %.0179391, i64 24
  store float %i.tc, ptr %i.td, align 4, !tbaa !61
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.px, i64 %indvars.iv425
  %i.tf = load float, ptr %i.te, align 4, !tbaa !61
  %i.tg = getelementptr inbounds nuw i8, ptr %.0179391, i64 28
  store float %i.tf, ptr %i.tg, align 4, !tbaa !61
  %i.th = getelementptr inbounds nuw i8, ptr %.0179391, i64 32
  %indvars.iv.next426 = add nuw nsw i64 %indvars.iv425, 1 ; 2 uses
  %exitcond429.not = icmp eq i64 %indvars.iv.next426, %wide.trip.count428
  br i1 %exitcond429.not, label %._crit_edge, label %.lr.ph393, !llvm.loop !203

bb.d:                                             ; preds = %.lr.ph409, %._crit_edge406
  %indvar = phi i32 [ 0, %.lr.ph409 ], [ %indvar.next, %._crit_edge406 ] ; 5 uses
  %indvars.iv443 = phi i64 [ %i.mq, %.lr.ph409 ], [ %indvars.iv.next444, %._crit_edge406 ] ; 11 uses
  %.1183407 = phi ptr [ %.0182.lcssa, %.lr.ph409 ], [ %i.uh, %._crit_edge406 ] ; 5 uses
  %i.ti = add i32 %.0181.lcssa, %indvar
  %i.tj = lshr i32 %i.ti, 1
  %i.tk = sub i32 %.0181.lcssa, %indvar
  %i.tl = and i32 %i.tk, 1
  %i.tm = add nuw i32 %i.tj, %i.tl
  %i.tn = zext i32 %i.tm to i64
  %i.to = mul i64 %i.dg, %i.tn                    ; 2 uses
  %scevgep493 = getelementptr i8, ptr %i.ls, i64 %i.to ; 4 uses
  %scevgep495 = getelementptr i8, ptr %scevgep494.a, i64 %i.to ; 4 uses
  %i.tp = add i32 %.0181.lcssa, %indvar
  %i.tq = lshr i32 %i.tp, 1
  %i.tr = sub i32 %.0181.lcssa, %indvar
  %i.ts = and i32 %i.tr, 1
  %i.tt = add nuw i32 %i.tq, %i.ts
  %i.tu = zext i32 %i.tt to i64
  %i.tv = mul i64 %i.cf, %i.tu                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.lu, i64 %i.tv ; 4 uses
  %scevgep459 = getelementptr i8, ptr %scevgep458.a, i64 %i.tv ; 4 uses
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %indvars.iv443
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !61
  store float %i.tx, ptr %.1183407, align 4, !tbaa !61
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %indvars.iv443
  %i.tz = load float, ptr %i.ty, align 4, !tbaa !61
  %i.ua = getelementptr inbounds nuw i8, ptr %.1183407, i64 4
  store float %i.tz, ptr %i.ua, align 4, !tbaa !61
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %indvars.iv443
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !61
  %i.ud = getelementptr inbounds nuw i8, ptr %.1183407, i64 8
  store float %i.uc, ptr %i.ud, align 4, !tbaa !61
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %indvars.iv443
  %i.uf = load float, ptr %i.ue, align 4, !tbaa !61
  %i.ug = getelementptr inbounds nuw i8, ptr %.1183407, i64 12
  store float %i.uf, ptr %i.ug, align 4, !tbaa !61
  %i.uh = getelementptr inbounds nuw i8, ptr %.1183407, i64 16
  %i.ui = mul i64 %i.bq, %indvars.iv443
  %i.uj = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.ui ; 4 uses
  %i.uk = add nuw nsw i64 %indvars.iv443, %i.bx   ; 2 uses
  %i.ul = mul i64 %i.bq, %i.uk
  %i.um = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.ul ; 4 uses
  %i.un = add nuw nsw i64 %indvars.iv443, %i.cb   ; 2 uses
  %i.uo = mul i64 %i.bq, %i.un
  %i.up = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.uo ; 4 uses
  %i.uq = add nuw nsw i64 %indvars.iv443, %i.cc   ; 2 uses
  %i.ur = mul i64 %i.bq, %i.uq
  %i.us = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.ur ; 4 uses
  %i.ut = mul i64 %i.bt, %indvars.iv443
  %i.uu = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.ut ; 4 uses
  %i.uv = mul i64 %i.bt, %i.uk
  %i.uw = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.uv ; 4 uses
  %i.ux = mul i64 %i.bt, %i.un
  %i.uy = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.ux ; 4 uses
  %i.uz = mul i64 %i.bt, %i.uq
  %i.va = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.uz ; 4 uses
  %i.vb = trunc nuw nsw i64 %indvars.iv443 to i32 ; 2 uses
  %i.vc = lshr i32 %i.vb, 1
  %i.vd = and i32 %i.vb, 1
  %i.ve = add nuw nsw i32 %i.vc, %i.vd
  %i.vf = zext nneg i32 %i.ve to i64              ; 2 uses
  %i.vg = mul i64 %i.bv, %i.vf
  %i.vh = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.vg ; 4 uses
  br i1 %i.mn, label %.lr.ph402.preheader, label %.preheader

.lr.ph402.preheader:                              ; preds = %bb.d
  %i.vi = mul i64 %i.bu, %i.vf
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.vi ; 4 uses
  br i1 %min.iters.check528, label %.lr.ph402.preheader748, label %vector.memcheck492

vector.memcheck492:                               ; preds = %.lr.ph402.preheader
  %bound0508 = icmp ult ptr %scevgep493, %scevgep498
  %bound1509 = icmp ult ptr %scevgep496.a, %scevgep495
  %found.conflict510 = and i1 %bound0508, %bound1509
  %bound0512 = icmp ult ptr %scevgep493, %scevgep501
  %bound1513 = icmp ult ptr %scevgep499.a, %scevgep495
  %found.conflict514 = and i1 %bound0512, %bound1513
  %i.vk = or i1 %found.conflict514, %stride.check515
  %conflict.rdx516 = or i1 %found.conflict510, %i.vk
  %bound0517 = icmp ult ptr %scevgep493, %scevgep504
  %bound1518 = icmp ult ptr %scevgep502.a, %scevgep495
  %found.conflict519 = and i1 %bound0517, %bound1518
  %conflict.rdx521 = or i1 %found.conflict519, %conflict.rdx516
  %bound0522 = icmp ult ptr %scevgep493, %scevgep507
  %bound1523 = icmp ult ptr %scevgep505.a, %scevgep495
  %found.conflict524 = and i1 %bound0522, %bound1523
  %conflict.rdx526 = or i1 %found.conflict524, %conflict.rdx521
  br i1 %conflict.rdx526, label %.lr.ph402.preheader748, label %vector.ph529

vector.ph529:                                     ; preds = %vector.memcheck492
  %i.vl = getelementptr i8, ptr %i.vj, i64 %i.nj
  br label %vector.body531

vector.body531:                                   ; preds = %vector.body531, %vector.ph529
  %index532 = phi i64 [ 0, %vector.ph529 ], [ %index.next539, %vector.body531 ] ; 6 uses
  %i.vm = shl i64 %index532, 4
  %next.gep533 = getelementptr i8, ptr %i.vj, i64 %i.vm
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.uj, i64 %index532
  %wide.load534.a = load <8 x float>, ptr %i.vn, align 4, !tbaa !61, !alias.scope !247
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.um, i64 %index532
  %wide.load535.a = load <8 x float>, ptr %i.vo, align 4, !tbaa !61, !alias.scope !248
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.up, i64 %index532
  %wide.load536 = load <8 x float>, ptr %i.vp, align 4, !tbaa !61, !alias.scope !249
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.us, i64 %index532
  %wide.load537 = load <8 x float>, ptr %i.vq, align 4, !tbaa !61, !alias.scope !250
  %i.vr = shufflevector <8 x float> %wide.load534.a, <8 x float> %wide.load535.a, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.vs = shufflevector <8 x float> %wide.load536, <8 x float> %wide.load537, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec538 = shufflevector <16 x float> %i.vr, <16 x float> %i.vs, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec538, ptr %next.gep533, align 4, !tbaa !61, !alias.scope !251, !noalias !252
  %index.next539 = add nuw i64 %index532, 8       ; 2 uses
  %i.vt = icmp eq i64 %index.next539, %n.vec530
  br i1 %i.vt, label %middle.block540, label %vector.body531, !llvm.loop !210

middle.block540:                                  ; preds = %vector.body531
  br i1 %cmp.n541, label %.preheader, label %.lr.ph402.preheader748

.lr.ph402.preheader748:                           ; preds = %vector.memcheck492, %.lr.ph402.preheader, %middle.block540
  %indvars.iv433.ph = phi i64 [ 0, %vector.memcheck492 ], [ 0, %.lr.ph402.preheader ], [ %n.vec530, %middle.block540 ] ; 7 uses
  %.0176399.ph = phi ptr [ %i.vj, %vector.memcheck492 ], [ %i.vj, %.lr.ph402.preheader ], [ %i.vl, %middle.block540 ] ; 6 uses
  br i1 %lcmp.mod.not, label %.lr.ph402.prol.loopexit, label %.lr.ph402.prol

.lr.ph402.prol:                                   ; preds = %.lr.ph402.preheader748
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.uj, i64 %indvars.iv433.ph
  %i.vv = load float, ptr %i.vu, align 4, !tbaa !61
  store float %i.vv, ptr %.0176399.ph, align 4, !tbaa !61
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.um, i64 %indvars.iv433.ph
  %i.vx = load float, ptr %i.vw, align 4, !tbaa !61
  %i.vy = getelementptr inbounds nuw i8, ptr %.0176399.ph, i64 4
  store float %i.vx, ptr %i.vy, align 4, !tbaa !61
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.up, i64 %indvars.iv433.ph
  %i.wa = load float, ptr %i.vz, align 4, !tbaa !61
  %i.wb = getelementptr inbounds nuw i8, ptr %.0176399.ph, i64 8
  store float %i.wa, ptr %i.wb, align 4, !tbaa !61
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.us, i64 %indvars.iv433.ph
  %i.wd = load float, ptr %i.wc, align 4, !tbaa !61
  %i.we = getelementptr inbounds nuw i8, ptr %.0176399.ph, i64 12
  store float %i.wd, ptr %i.we, align 4, !tbaa !61
  %i.wf = getelementptr inbounds nuw i8, ptr %.0176399.ph, i64 16
  %indvars.iv.next434.prol = or disjoint i64 %indvars.iv433.ph, 1
  br label %.lr.ph402.prol.loopexit

.lr.ph402.prol.loopexit:                          ; preds = %.lr.ph402.prol, %.lr.ph402.preheader748
  %indvars.iv433.unr = phi i64 [ %indvars.iv433.ph, %.lr.ph402.preheader748 ], [ %indvars.iv.next434.prol, %.lr.ph402.prol ]
  %.0176399.unr = phi ptr [ %.0176399.ph, %.lr.ph402.preheader748 ], [ %i.wf, %.lr.ph402.prol ]
  %i.wg = icmp eq i64 %indvars.iv433.ph, %i.nk
  br i1 %i.wg, label %.preheader, label %.lr.ph402

.preheader:                                       ; preds = %.lr.ph402.prol.loopexit, %.lr.ph402, %middle.block540, %bb.d
  br i1 %i.mp, label %.lr.ph405.preheader, label %._crit_edge406

.lr.ph405.preheader:                              ; preds = %.preheader
  br i1 %min.iters.check, label %.lr.ph405.preheader747, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph405.preheader
  %bound0 = icmp ult ptr %scevgep, %scevgep464.a
  %bound1 = icmp ult ptr %scevgep460, %scevgep459
  %found.conflict = and i1 %bound0, %bound1
  %bound0474 = icmp ult ptr %scevgep, %scevgep467.a
  %bound1475 = icmp ult ptr %scevgep465, %scevgep459
  %found.conflict476 = and i1 %bound0474, %bound1475
  %i.wh = or i1 %found.conflict476, %stride.check477
  %conflict.rdx = or i1 %found.conflict, %i.wh
  %bound0478 = icmp ult ptr %scevgep, %scevgep470.a
  %bound1479 = icmp ult ptr %scevgep468, %scevgep459
  %found.conflict480 = and i1 %bound0478, %bound1479
  %conflict.rdx482 = or i1 %found.conflict480, %conflict.rdx
  %bound0483 = icmp ult ptr %scevgep, %scevgep473
  %bound1484 = icmp ult ptr %scevgep471, %scevgep459
  %found.conflict485 = and i1 %bound0483, %bound1484
  %conflict.rdx487 = or i1 %found.conflict485, %conflict.rdx482
  br i1 %conflict.rdx487, label %.lr.ph405.preheader747, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.wi = getelementptr i8, ptr %i.vh, i64 %i.nl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.wj = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.vh, i64 %i.wj
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.uu, i64 %index
  %wide.load = load <8 x float>, ptr %i.wk, align 4, !tbaa !61, !alias.scope !253
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %index
  %wide.load488.a = load <8 x float>, ptr %i.wl, align 4, !tbaa !61, !alias.scope !254
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %index
  %wide.load489.a = load <8 x float>, ptr %i.wm, align 4, !tbaa !61, !alias.scope !255
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.va, i64 %index
  %wide.load490 = load <8 x float>, ptr %i.wn, align 4, !tbaa !61, !alias.scope !256
  %i.wo = shufflevector <8 x float> %wide.load, <8 x float> %wide.load488.a, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.wp = shufflevector <8 x float> %wide.load489.a, <8 x float> %wide.load490, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.wo, <16 x float> %i.wp, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !61, !alias.scope !257, !noalias !258
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.wq = icmp eq i64 %index.next, %n.vec
  br i1 %i.wq, label %middle.block, label %vector.body, !llvm.loop !217

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge406, label %.lr.ph405.preheader747

.lr.ph405.preheader747:                           ; preds = %vector.memcheck, %.lr.ph405.preheader, %middle.block
  %indvars.iv438.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph405.preheader ], [ %n.vec, %middle.block ] ; 7 uses
  %.0175403.ph = phi ptr [ %i.vh, %vector.memcheck ], [ %i.vh, %.lr.ph405.preheader ], [ %i.wi, %middle.block ] ; 6 uses
  br i1 %lcmp.mod752.not, label %.lr.ph405.prol.loopexit, label %.lr.ph405.prol

.lr.ph405.prol:                                   ; preds = %.lr.ph405.preheader747
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %i.uu, i64 %indvars.iv438.ph
  %i.ws = load float, ptr %i.wr, align 4, !tbaa !61
  store float %i.ws, ptr %.0175403.ph, align 4, !tbaa !61
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %indvars.iv438.ph
  %i.wu = load float, ptr %i.wt, align 4, !tbaa !61
  %i.wv = getelementptr inbounds nuw i8, ptr %.0175403.ph, i64 4
  store float %i.wu, ptr %i.wv, align 4, !tbaa !61
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %indvars.iv438.ph
  %i.wx = load float, ptr %i.ww, align 4, !tbaa !61
  %i.wy = getelementptr inbounds nuw i8, ptr %.0175403.ph, i64 8
  store float %i.wx, ptr %i.wy, align 4, !tbaa !61
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.va, i64 %indvars.iv438.ph
  %i.xa = load float, ptr %i.wz, align 4, !tbaa !61
  %i.xb = getelementptr inbounds nuw i8, ptr %.0175403.ph, i64 12
  store float %i.xa, ptr %i.xb, align 4, !tbaa !61
  %i.xc = getelementptr inbounds nuw i8, ptr %.0175403.ph, i64 16
  %indvars.iv.next439.prol = or disjoint i64 %indvars.iv438.ph, 1
  br label %.lr.ph405.prol.loopexit

.lr.ph405.prol.loopexit:                          ; preds = %.lr.ph405.prol, %.lr.ph405.preheader747
  %indvars.iv438.unr = phi i64 [ %indvars.iv438.ph, %.lr.ph405.preheader747 ], [ %indvars.iv.next439.prol, %.lr.ph405.prol ]
  %.0175403.unr = phi ptr [ %.0175403.ph, %.lr.ph405.preheader747 ], [ %i.xc, %.lr.ph405.prol ]
  %i.xd = icmp eq i64 %indvars.iv438.ph, %i.nm
  br i1 %i.xd, label %._crit_edge406, label %.lr.ph405

.lr.ph402:                                        ; preds = %.lr.ph402.prol.loopexit, %.lr.ph402
  %indvars.iv433 = phi i64 [ %indvars.iv.next434.1, %.lr.ph402 ], [ %indvars.iv433.unr, %.lr.ph402.prol.loopexit ] ; 6 uses
  %.0176399 = phi ptr [ %i.yb, %.lr.ph402 ], [ %.0176399.unr, %.lr.ph402.prol.loopexit ] ; 9 uses
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.uj, i64 %indvars.iv433
  %i.xf = load float, ptr %i.xe, align 4, !tbaa !61
  store float %i.xf, ptr %.0176399, align 4, !tbaa !61
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.um, i64 %indvars.iv433
  %i.xh = load float, ptr %i.xg, align 4, !tbaa !61
  %i.xi = getelementptr inbounds nuw i8, ptr %.0176399, i64 4
  store float %i.xh, ptr %i.xi, align 4, !tbaa !61
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.up, i64 %indvars.iv433
  %i.xk = load float, ptr %i.xj, align 4, !tbaa !61
  %i.xl = getelementptr inbounds nuw i8, ptr %.0176399, i64 8
  store float %i.xk, ptr %i.xl, align 4, !tbaa !61
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.us, i64 %indvars.iv433
  %i.xn = load float, ptr %i.xm, align 4, !tbaa !61
  %i.xo = getelementptr inbounds nuw i8, ptr %.0176399, i64 12
  store float %i.xn, ptr %i.xo, align 4, !tbaa !61
  %i.xp = getelementptr inbounds nuw i8, ptr %.0176399, i64 16
  %indvars.iv.next434 = add nuw nsw i64 %indvars.iv433, 1 ; 4 uses
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.uj, i64 %indvars.iv.next434
  %i.xr = load float, ptr %i.xq, align 4, !tbaa !61
  store float %i.xr, ptr %i.xp, align 4, !tbaa !61
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %i.um, i64 %indvars.iv.next434
  %i.xt = load float, ptr %i.xs, align 4, !tbaa !61
  %i.xu = getelementptr inbounds nuw i8, ptr %.0176399, i64 20
  store float %i.xt, ptr %i.xu, align 4, !tbaa !61
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.up, i64 %indvars.iv.next434
  %i.xw = load float, ptr %i.xv, align 4, !tbaa !61
  %i.xx = getelementptr inbounds nuw i8, ptr %.0176399, i64 24
  store float %i.xw, ptr %i.xx, align 4, !tbaa !61
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.us, i64 %indvars.iv.next434
  %i.xz = load float, ptr %i.xy, align 4, !tbaa !61
  %i.ya = getelementptr inbounds nuw i8, ptr %.0176399, i64 28
  store float %i.xz, ptr %i.ya, align 4, !tbaa !61
  %i.yb = getelementptr inbounds nuw i8, ptr %.0176399, i64 32
  %indvars.iv.next434.1 = add nuw nsw i64 %indvars.iv433, 2 ; 2 uses
  %exitcond437.not.1 = icmp eq i64 %indvars.iv.next434.1, %wide.trip.count436
  br i1 %exitcond437.not.1, label %.preheader, label %.lr.ph402, !llvm.loop !218

._crit_edge406:                                   ; preds = %.lr.ph405.prol.loopexit, %.lr.ph405, %middle.block, %.preheader
  %indvars.iv.next444 = add nuw nsw i64 %indvars.iv443, 1 ; 2 uses
  %exitcond447.not = icmp eq i64 %indvars.iv.next444, %i.ca
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond447.not, label %_ZN4ncnn3MatD2Ev.exit, label %bb.d, !llvm.loop !219

.lr.ph405:                                        ; preds = %.lr.ph405.prol.loopexit, %.lr.ph405
  %indvars.iv438 = phi i64 [ %indvars.iv.next439.1, %.lr.ph405 ], [ %indvars.iv438.unr, %.lr.ph405.prol.loopexit ] ; 6 uses
  %.0175403 = phi ptr [ %i.yz, %.lr.ph405 ], [ %.0175403.unr, %.lr.ph405.prol.loopexit ] ; 9 uses
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.uu, i64 %indvars.iv438
  %i.yd = load float, ptr %i.yc, align 4, !tbaa !61
  store float %i.yd, ptr %.0175403, align 4, !tbaa !61
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %indvars.iv438
  %i.yf = load float, ptr %i.ye, align 4, !tbaa !61
  %i.yg = getelementptr inbounds nuw i8, ptr %.0175403, i64 4
  store float %i.yf, ptr %i.yg, align 4, !tbaa !61
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %indvars.iv438
  %i.yi = load float, ptr %i.yh, align 4, !tbaa !61
  %i.yj = getelementptr inbounds nuw i8, ptr %.0175403, i64 8
  store float %i.yi, ptr %i.yj, align 4, !tbaa !61
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.va, i64 %indvars.iv438
  %i.yl = load float, ptr %i.yk, align 4, !tbaa !61
  %i.ym = getelementptr inbounds nuw i8, ptr %.0175403, i64 12
  store float %i.yl, ptr %i.ym, align 4, !tbaa !61
  %i.yn = getelementptr inbounds nuw i8, ptr %.0175403, i64 16
  %indvars.iv.next439 = add nuw nsw i64 %indvars.iv438, 1 ; 4 uses
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %i.uu, i64 %indvars.iv.next439
  %i.yp = load float, ptr %i.yo, align 4, !tbaa !61
  store float %i.yp, ptr %i.yn, align 4, !tbaa !61
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %indvars.iv.next439
  %i.yr = load float, ptr %i.yq, align 4, !tbaa !61
  %i.ys = getelementptr inbounds nuw i8, ptr %.0175403, i64 20
  store float %i.yr, ptr %i.ys, align 4, !tbaa !61
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %indvars.iv.next439
  %i.yu = load float, ptr %i.yt, align 4, !tbaa !61
  %i.yv = getelementptr inbounds nuw i8, ptr %.0175403, i64 24
  store float %i.yu, ptr %i.yv, align 4, !tbaa !61
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.va, i64 %indvars.iv.next439
  %i.yx = load float, ptr %i.yw, align 4, !tbaa !61
  %i.yy = getelementptr inbounds nuw i8, ptr %.0175403, i64 28
  store float %i.yx, ptr %i.yy, align 4, !tbaa !61
  %i.yz = getelementptr inbounds nuw i8, ptr %.0175403, i64 32
  %indvars.iv.next439.1 = add nuw nsw i64 %indvars.iv438, 2 ; 2 uses
  %exitcond442.not.1 = icmp eq i64 %indvars.iv.next439.1, %wide.trip.count441
  br i1 %exitcond442.not.1, label %._crit_edge406, label %.lr.ph405, !llvm.loop !220

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge406, %.preheader388
  %indvars.iv.next449 = add nsw i64 %indvars.iv448, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next449 to i32
  %exitcond451.not = icmp eq i32 %i.ce, %lftr.wideiv
  %indvar.next462 = add i64 %indvar461, 1
  br i1 %exitcond451.not, label %._crit_edge412, label %.noexc231

._crit_edge412:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge412, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare !callback !71 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn12LSTM_x86_fma12forward_int8ERKNS_3MatERS1_RKNS_6OptionE(ptr nofree noundef nonnull readonly align 8 dereferenceable(1024) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.ncnn::Mat", align 8         ; 16 uses
  %5 = alloca %"class.ncnn::Mat", align 8         ; 16 uses
  %6 = alloca %"class.ncnn::Mat", align 8         ; 13 uses
  %7 = alloca %"class.ncnn::Mat", align 8         ; 13 uses
  %8 = alloca %"class.ncnn::Mat", align 8         ; 17 uses
  %9 = alloca %"class.ncnn::Mat", align 8         ; 17 uses
  %10 = alloca %"class.ncnn::Mat", align 8        ; 17 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 24 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 18 uses
  %13 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 17 uses
end_hunk_1
