inline.NumInlined: 729
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN14unsafe_libyaml7scanner29yaml_parser_fetch_flow_scalar17h27a076f4a9d487c3E:bb.a
  %i.qc = icmp ult i64 %i.qb, %i.pl
  br i1 %i.qc, label %bb.dy, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i205.i.3", !prof !3

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i205.i.3": ; preds = %bb.eo
  store i64 %i.qb, ptr %i.cl, align 8
  %i.qd = load i64, ptr %i.cv, align 8, !noundef !5 ; 2 uses
  %i.qe = icmp eq i64 %i.qd, -1
  br i1 %i.qe, label %bb.dz, label %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit206.i.3, !prof !3

_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit206.i.3: ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i205.i.3"
  %i.qf = add nuw i64 %i.qd, 1
  store i64 %i.qf, ptr %i.cv, align 8
  %i.qg = load i64, ptr %i.dd, align 8, !noundef !5
  %i.qh = add i64 %i.qg, -1
  store i64 %i.qh, ptr %i.dd, align 8
  %i.qi = getelementptr i8, ptr %i.ps, i64 %.sroa.0.0.i204.i.3 ; 3 uses
  store ptr %i.qi, ptr %i.cm, align 8
  br i1 %exitcond.not.i.3, label %.loopexit.i, label %bb.ep

bb.ep:                                            ; preds = %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit206.i.3
  %i.qj = load i8, ptr %i.qi, align 1, !noundef !5 ; 4 uses
  %i.qk = icmp sgt i8 %i.qj, -1
  br i1 %i.qk, label %bb.et, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.ql = and i8 %i.qj, -32
  %i.qm = icmp eq i8 %i.ql, -64
  br i1 %i.qm, label %bb.et, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.qn = and i8 %i.qj, -16
  %i.qo = icmp eq i8 %i.qn, -32
  br i1 %i.qo, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.qp = and i8 %i.qj, -8
  %i.qq = icmp eq i8 %i.qp, -16
  %..i203.i.4 = select i1 %i.qq, i64 4, i64 0
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er, %bb.eq, %bb.ep
  %.sroa.0.0.i204.i.4 = phi i64 [ 3, %bb.er ], [ 1, %bb.ep ], [ 2, %bb.eq ], [ %..i203.i.4, %bb.es ] ; 2 uses
  %i.qr = add i64 %.sroa.0.0.i204.i.4, %i.qb      ; 4 uses
  %i.qs = icmp ult i64 %i.qr, %i.qb
  br i1 %i.qs, label %bb.dy, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i205.i.4", !prof !3

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i205.i.4": ; preds = %bb.et
  store i64 %i.qr, ptr %i.cl, align 8
  %i.qt = load i64, ptr %i.cv, align 8, !noundef !5 ; 2 uses
  %i.qu = icmp eq i64 %i.qt, -1
  br i1 %i.qu, label %bb.dz, label %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit206.i.4, !prof !3

_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit206.i.4: ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i205.i.4"
  %i.qv = add nuw i64 %i.qt, 1
  store i64 %i.qv, ptr %i.cv, align 8
  %i.qw = load i64, ptr %i.dd, align 8, !noundef !5
  %i.qx = add i64 %i.qw, -1
  store i64 %i.qx, ptr %i.dd, align 8
  %i.qy = getelementptr i8, ptr %i.qi, i64 %.sroa.0.0.i204.i.4 ; 3 uses
  store ptr %i.qy, ptr %i.cm, align 8
  %i.qz = load i8, ptr %i.qy, align 1, !noundef !5 ; 4 uses
  %i.ra = icmp sgt i8 %i.qz, -1
  br i1 %i.ra, label %bb.ex, label %bb.eu

bb.eu:                                            ; preds = %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit206.i.4
  %i.rb = and i8 %i.qz, -32
  %i.rc = icmp eq i8 %i.rb, -64
  br i1 %i.rc, label %bb.ex, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.rd = and i8 %i.qz, -16
  %i.re = icmp eq i8 %i.rd, -32
  br i1 %i.re, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.rf = and i8 %i.qz, -8
  %i.rg = icmp eq i8 %i.rf, -16
  %..i203.i.5 = select i1 %i.rg, i64 4, i64 0
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev, %bb.eu, %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit206.i.4
  %.sroa.0.0.i204.i.5 = phi i64 [ 3, %bb.ev ], [ 1, %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit206.i.4 ], [ 2, %bb.eu ], [ %..i203.i.5, %bb.ew ] ; 2 uses
  %i.rh = add i64 %.sroa.0.0.i204.i.5, %i.qr      ; 4 uses
  %i.ri = icmp ult i64 %i.rh, %i.qr
  br i1 %i.ri, label %bb.dy, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i205.i.5", !prof !3

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i205.i.5": ; preds = %bb.ex
  store i64 %i.rh, ptr %i.cl, align 8
  %i.rj = load i64, ptr %i.cv, align 8, !noundef !5 ; 2 uses
  %i.rk = icmp eq i64 %i.rj, -1
  br i1 %i.rk, label %bb.dz, label %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit206.i.5, !prof !3

_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit206.i.5: ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i205.i.5"
  %i.rl = add nuw i64 %i.rj, 1
  store i64 %i.rl, ptr %i.cv, align 8
  %i.rm = load i64, ptr %i.dd, align 8, !noundef !5
  %i.rn = add i64 %i.rm, -1
  store i64 %i.rn, ptr %i.dd, align 8
  %i.ro = getelementptr i8, ptr %i.qy, i64 %.sroa.0.0.i204.i.5 ; 3 uses
  store ptr %i.ro, ptr %i.cm, align 8
  %i.rp = load i8, ptr %i.ro, align 1, !noundef !5 ; 4 uses
  %i.rq = icmp sgt i8 %i.rp, -1
  br i1 %i.rq, label %bb.fb, label %bb.ey

bb.ey:                                            ; preds = %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit206.i.5
  %i.rr = and i8 %i.rp, -32
  %i.rs = icmp eq i8 %i.rr, -64
  br i1 %i.rs, label %bb.fb, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.rt = and i8 %i.rp, -16
  %i.ru = icmp eq i8 %i.rt, -32
  br i1 %i.ru, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.rv = and i8 %i.rp, -8
  %i.rw = icmp eq i8 %i.rv, -16
  %..i203.i.6 = select i1 %i.rw, i64 4, i64 0
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez, %bb.ey, %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit206.i.5
  %.sroa.0.0.i204.i.6 = phi i64 [ 3, %bb.ez ], [ 1, %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit206.i.5 ], [ 2, %bb.ey ], [ %..i203.i.6, %bb.fa ] ; 2 uses
  %i.rx = add i64 %.sroa.0.0.i204.i.6, %i.rh      ; 4 uses
  %i.ry = icmp ult i64 %i.rx, %i.rh
  br i1 %i.ry, label %bb.dy, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i205.i.6", !prof !3

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i205.i.6": ; preds = %bb.fb
  store i64 %i.rx, ptr %i.cl, align 8
  %i.rz = load i64, ptr %i.cv, align 8, !noundef !5 ; 2 uses
  %i.sa = icmp eq i64 %i.rz, -1
  br i1 %i.sa, label %bb.dz, label %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit206.i.6, !prof !3

_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit206.i.6: ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i205.i.6"
  %i.sb = add nuw i64 %i.rz, 1
  store i64 %i.sb, ptr %i.cv, align 8
  %i.sc = load i64, ptr %i.dd, align 8, !noundef !5
  %i.sd = add i64 %i.sc, -1
  store i64 %i.sd, ptr %i.dd, align 8
  %i.se = getelementptr i8, ptr %i.ro, i64 %.sroa.0.0.i204.i.6 ; 3 uses
  store ptr %i.se, ptr %i.cm, align 8
  %i.sf = load i8, ptr %i.se, align 1, !noundef !5 ; 4 uses
  %i.sg = icmp sgt i8 %i.sf, -1
  br i1 %i.sg, label %bb.ff, label %bb.fc

bb.fc:                                            ; preds = %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit206.i.6
  %i.sh = and i8 %i.sf, -32
  %i.si = icmp eq i8 %i.sh, -64
  br i1 %i.si, label %bb.ff, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.sj = and i8 %i.sf, -16
  %i.sk = icmp eq i8 %i.sj, -32
  br i1 %i.sk, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.sl = and i8 %i.sf, -8
  %i.sm = icmp eq i8 %i.sl, -16
  %..i203.i.7 = select i1 %i.sm, i64 4, i64 0
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd, %bb.fc, %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit206.i.6
  %.sroa.0.0.i204.i.7 = phi i64 [ 3, %bb.fd ], [ 1, %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit206.i.6 ], [ 2, %bb.fc ], [ %..i203.i.7, %bb.fe ] ; 2 uses
  %i.sn = add i64 %.sroa.0.0.i204.i.7, %i.rx      ; 2 uses
  %i.so = icmp ult i64 %i.sn, %i.rx
  br i1 %i.so, label %bb.dy, label %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i205.i.7", !prof !3

"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i205.i.7": ; preds = %bb.ff
  store i64 %i.sn, ptr %i.cl, align 8
  %i.sp = load i64, ptr %i.cv, align 8, !noundef !5 ; 2 uses
  %i.sq = icmp eq i64 %i.sp, -1
  br i1 %i.sq, label %bb.dz, label %_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit206.i.7, !prof !3

_ZN14unsafe_libyaml7scanner4SKIP17hd4c15babb41ede52E.exit206.i.7: ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit.i205.i.7"
  %i.sr = add nuw i64 %i.sp, 1
  store i64 %i.sr, ptr %i.cv, align 8
  %i.ss = load i64, ptr %i.dd, align 8, !noundef !5
  %i.st = add i64 %i.ss, -1
  store i64 %i.st, ptr %i.dd, align 8
  %i.su = getelementptr i8, ptr %i.se, i64 %.sroa.0.0.i204.i.7
  store ptr %i.su, ptr %i.cm, align 8
  br label %.loopexit.i

bb.fg:                                            ; preds = %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit208.preheader.i"
  %i.sv = add i8 %i.mf, -65
  %or.cond144.i = icmp ult i8 %i.sv, 6
  br i1 %or.cond144.i, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.sw = add i8 %i.mf, -97
  %or.cond145.i = icmp ult i8 %i.sw, 6
  br i1 %or.cond145.i, label %bb.fj, label %.loopexit296.i.sink.split

bb.fi:                                            ; preds = %bb.fg
  %i.sx = add nsw i8 %i.mf, -55
  br label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i"

bb.fj:                                            ; preds = %bb.fh
  %i.sy = add nsw i8 %i.mf, -87
  br label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i"

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i": ; preds = %bb.fj, %bb.fi, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit208.preheader.i"
  %.sroa.056.0.i = phi i8 [ %i.sx, %bb.fi ], [ %i.sy, %bb.fj ], [ %i.mg, %"_ZN53_$LT$u64$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h91c4fbb6759473dcE.exit208.preheader.i" ]
  %i.sz = zext nneg i8 %.sroa.056.0.i to i32
  %i.ta = getelementptr i8, ptr %i.me, i64 1
  %i.tb = load i8, ptr %i.ta, align 1, !noundef !5 ; 5 uses
  %i.tc = add i8 %i.tb, -48                       ; 2 uses
  %or.cond143.i.1 = icmp ult i8 %i.tc, 10
  br i1 %or.cond143.i.1, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.1", label %bb.fk

bb.fk:                                            ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i"
  %i.td = add i8 %i.tb, -65
  %or.cond144.i.1 = icmp ult i8 %i.td, 6
  br i1 %or.cond144.i.1, label %bb.fn, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.te = add i8 %i.tb, -97
  %or.cond145.i.1 = icmp ult i8 %i.te, 6
  br i1 %or.cond145.i.1, label %bb.fm, label %.loopexit296.i.sink.split

bb.fm:                                            ; preds = %bb.fl
  %i.tf = add nsw i8 %i.tb, -87
  br label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.1"

bb.fn:                                            ; preds = %bb.fk
  %i.tg = add nsw i8 %i.tb, -55
  br label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.1"

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.1": ; preds = %bb.fn, %bb.fm, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i"
  %.sroa.056.0.i.1 = phi i8 [ %i.tg, %bb.fn ], [ %i.tf, %bb.fm ], [ %i.tc, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i" ]
  %i.th = shl nuw nsw i32 %i.sz, 4
  %i.ti = zext nneg i8 %.sroa.056.0.i.1 to i32
  %i.tj = add nuw nsw i32 %i.th, %i.ti            ; 2 uses
  br i1 %exitcond.not.i.1, label %bb.dq, label %bb.fo

bb.fo:                                            ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.1"
  %i.tk = getelementptr i8, ptr %i.me, i64 2
  %i.tl = load i8, ptr %i.tk, align 1, !noundef !5 ; 5 uses
  %i.tm = add i8 %i.tl, -48                       ; 2 uses
  %or.cond143.i.2 = icmp ult i8 %i.tm, 10
  br i1 %or.cond143.i.2, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.2", label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.tn = add i8 %i.tl, -65
  %or.cond144.i.2 = icmp ult i8 %i.tn, 6
  br i1 %or.cond144.i.2, label %bb.fs, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.to = add i8 %i.tl, -97
  %or.cond145.i.2 = icmp ult i8 %i.to, 6
  br i1 %or.cond145.i.2, label %bb.fr, label %.loopexit296.i.sink.split

bb.fr:                                            ; preds = %bb.fq
  %i.tp = add nsw i8 %i.tl, -87
  br label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.2"

bb.fs:                                            ; preds = %bb.fp
  %i.tq = add nsw i8 %i.tl, -55
  br label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.2"

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.2": ; preds = %bb.fs, %bb.fr, %bb.fo
  %.sroa.056.0.i.2 = phi i8 [ %i.tq, %bb.fs ], [ %i.tp, %bb.fr ], [ %i.tm, %bb.fo ]
  %i.tr = zext nneg i8 %.sroa.056.0.i.2 to i32
  %i.ts = getelementptr i8, ptr %i.me, i64 3
  %i.tt = load i8, ptr %i.ts, align 1, !noundef !5 ; 5 uses
  %i.tu = add i8 %i.tt, -48                       ; 2 uses
  %or.cond143.i.3 = icmp ult i8 %i.tu, 10
  br i1 %or.cond143.i.3, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.3", label %bb.ft

bb.ft:                                            ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.2"
  %i.tv = add i8 %i.tt, -65
  %or.cond144.i.3 = icmp ult i8 %i.tv, 6
  br i1 %or.cond144.i.3, label %bb.fw, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.tw = add i8 %i.tt, -97
  %or.cond145.i.3 = icmp ult i8 %i.tw, 6
  br i1 %or.cond145.i.3, label %bb.fv, label %.loopexit296.i.sink.split

bb.fv:                                            ; preds = %bb.fu
  %i.tx = add nsw i8 %i.tt, -87
  br label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.3"

bb.fw:                                            ; preds = %bb.ft
  %i.ty = add nsw i8 %i.tt, -55
  br label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.3"

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.3": ; preds = %bb.fw, %bb.fv, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.2"
  %.sroa.056.0.i.3 = phi i8 [ %i.ty, %bb.fw ], [ %i.tx, %bb.fv ], [ %i.tu, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.2" ]
  %i.tz = shl nuw nsw i32 %i.tj, 8
  %i.ua = shl nuw nsw i32 %i.tr, 4
  %i.ub = add nuw nsw i32 %i.tz, %i.ua
  %i.uc = zext nneg i8 %.sroa.056.0.i.3 to i32
  %i.ud = add nuw nsw i32 %i.ub, %i.uc            ; 2 uses
  br i1 %exitcond.not.i.3, label %bb.dq, label %bb.fx

bb.fx:                                            ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.3"
  %i.ue = getelementptr i8, ptr %i.me, i64 4
  %i.uf = load i8, ptr %i.ue, align 1, !noundef !5 ; 5 uses
  %i.ug = add i8 %i.uf, -48                       ; 2 uses
  %or.cond143.i.4 = icmp ult i8 %i.ug, 10
  br i1 %or.cond143.i.4, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.4", label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.uh = add i8 %i.uf, -65
  %or.cond144.i.4 = icmp ult i8 %i.uh, 6
  br i1 %or.cond144.i.4, label %bb.gb, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.ui = add i8 %i.uf, -97
  %or.cond145.i.4 = icmp ult i8 %i.ui, 6
  br i1 %or.cond145.i.4, label %bb.ga, label %.loopexit296.i.sink.split

bb.ga:                                            ; preds = %bb.fz
  %i.uj = add nsw i8 %i.uf, -87
  br label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.4"

bb.gb:                                            ; preds = %bb.fy
  %i.uk = add nsw i8 %i.uf, -55
  br label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.4"

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.4": ; preds = %bb.gb, %bb.ga, %bb.fx
  %.sroa.056.0.i.4 = phi i8 [ %i.uk, %bb.gb ], [ %i.uj, %bb.ga ], [ %i.ug, %bb.fx ]
  %i.ul = zext nneg i8 %.sroa.056.0.i.4 to i32
  %i.um = getelementptr i8, ptr %i.me, i64 5
  %i.un = load i8, ptr %i.um, align 1, !noundef !5 ; 5 uses
  %i.uo = add i8 %i.un, -48                       ; 2 uses
  %or.cond143.i.5 = icmp ult i8 %i.uo, 10
  br i1 %or.cond143.i.5, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.5", label %bb.gc

bb.gc:                                            ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.4"
  %i.up = add i8 %i.un, -65
  %or.cond144.i.5 = icmp ult i8 %i.up, 6
  br i1 %or.cond144.i.5, label %bb.gf, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.uq = add i8 %i.un, -97
  %or.cond145.i.5 = icmp ult i8 %i.uq, 6
  br i1 %or.cond145.i.5, label %bb.ge, label %.loopexit296.i.sink.split

bb.ge:                                            ; preds = %bb.gd
  %i.ur = add nsw i8 %i.un, -87
  br label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.5"

bb.gf:                                            ; preds = %bb.gc
  %i.us = add nsw i8 %i.un, -55
  br label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.5"

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.5": ; preds = %bb.gf, %bb.ge, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.4"
  %.sroa.056.0.i.5 = phi i8 [ %i.us, %bb.gf ], [ %i.ur, %bb.ge ], [ %i.uo, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.4" ]
  %i.ut = shl nuw nsw i32 %i.ud, 8
  %i.uu = shl nuw nsw i32 %i.ul, 4
  %i.uv = add nuw i32 %i.ut, %i.uu
  %i.uw = zext nneg i8 %.sroa.056.0.i.5 to i32
  %i.ux = add nuw i32 %i.uv, %i.uw
  %i.uy = getelementptr i8, ptr %i.me, i64 6
  %i.uz = load i8, ptr %i.uy, align 1, !noundef !5 ; 5 uses
  %i.va = add i8 %i.uz, -48                       ; 2 uses
  %or.cond143.i.6 = icmp ult i8 %i.va, 10
  br i1 %or.cond143.i.6, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.6", label %bb.gg

bb.gg:                                            ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.5"
  %i.vb = add i8 %i.uz, -65
  %or.cond144.i.6 = icmp ult i8 %i.vb, 6
  br i1 %or.cond144.i.6, label %bb.gj, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.vc = add i8 %i.uz, -97
  %or.cond145.i.6 = icmp ult i8 %i.vc, 6
  br i1 %or.cond145.i.6, label %bb.gi, label %.loopexit296.i.sink.split

bb.gi:                                            ; preds = %bb.gh
  %i.vd = add nsw i8 %i.uz, -87
  br label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.6"

bb.gj:                                            ; preds = %bb.gg
  %i.ve = add nsw i8 %i.uz, -55
  br label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.6"

"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.6": ; preds = %bb.gj, %bb.gi, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.5"
  %.sroa.056.0.i.6 = phi i8 [ %i.ve, %bb.gj ], [ %i.vd, %bb.gi ], [ %i.va, %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.5" ]
  %i.vf = zext nneg i8 %.sroa.056.0.i.6 to i32
  %i.vg = getelementptr i8, ptr %i.me, i64 7
  %i.vh = load i8, ptr %i.vg, align 1, !noundef !5 ; 5 uses
  %i.vi = add i8 %i.vh, -48                       ; 2 uses
  %or.cond143.i.7 = icmp ult i8 %i.vi, 10
  br i1 %or.cond143.i.7, label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.7", label %bb.gk

bb.gk:                                            ; preds = %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.6"
  %i.vj = add i8 %i.vh, -65
  %or.cond144.i.7 = icmp ult i8 %i.vj, 6
  br i1 %or.cond144.i.7, label %bb.gn, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.vk = add i8 %i.vh, -97
  %or.cond145.i.7 = icmp ult i8 %i.vk, 6
  br i1 %or.cond145.i.7, label %bb.gm, label %.loopexit296.i.sink.split

bb.gm:                                            ; preds = %bb.gl
  %i.vl = add nsw i8 %i.vh, -87
  br label %"_ZN53_$LT$u32$u20$as$u20$unsafe_libyaml..ops..ForceAdd$GT$9force_add17h5a09d476b58d2854E.exit207.i.7"

end_hunk_0
