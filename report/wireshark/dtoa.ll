Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/dtoa?download=true
inline.NumInlined: 43
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@dtoa_r:bb.a
bb.eq:                                            ; preds = %bb.en
  %i.pu = icmp ult i64 %.1690, %i.pp
  br i1 %i.pu, label %bb.er, label %.loopexit1220

bb.er:                                            ; preds = %bb.eq
  %i.pv = sub nsw i64 %i.pi, %.1720
  %i.pw = add nuw nsw i64 %.1690, %.1720
  %i.px = icmp ugt i64 %i.pv, %i.pw
  br i1 %i.px, label %.loopexit1222, label %.loopexit1220

bb.es:                                            ; preds = %bb.em
  %i.py = add nsw i32 %.2686, 60
  %i.pz = zext nneg i32 %i.py to i64
  %.neg940 = shl nsw i64 -1, %i.pz                ; 2 uses
  %i.qa = add nuw nsw i64 %i.pi, %.1720           ; 2 uses
  %i.qb = and i64 %.neg940, %i.qa
  %.not941 = icmp eq i64 %i.qb, 0
  br i1 %.not941, label %bb.et, label %bb.fd

bb.et:                                            ; preds = %bb.es
  %i.qc = sub nsw i64 %i.pi, %.1720               ; 2 uses
  %i.qd = sub i32 1, %.2686
  %i.qe = zext i32 %i.qd to i64                   ; 3 uses
  %i.qf = shl i64 %i.qc, %i.qe                    ; 2 uses
  %i.qg = icmp ult i64 %i.qf, %.9
  br i1 %i.qg, label %bb.eu, label %bb.fd

bb.eu:                                            ; preds = %bb.et
  %i.qh = shl i64 %i.qf, 1
  %i.qi = icmp ult i64 %i.qh, %.9
  %or.cond990 = select i1 %.not901, i1 true, i1 %i.qi
  br i1 %or.cond990, label %bb.ev, label %bb.fd

bb.ev:                                            ; preds = %bb.eu
  %i.qj = shl i64 %i.pi, %i.qe
  %i.qk = icmp sgt i32 %.2686, -31
  br i1 %i.qk, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.ql = add nsw i32 %.2686, 31
  %i.qm = add nuw nsw i64 %.1707, %.0718
  %i.qn = zext nneg i32 %i.ql to i64
  %i.qo = lshr i64 %i.qm, %i.qn
  br label %bb.ey

bb.ex:                                            ; preds = %bb.ev
  %i.qp = add nuw nsw i64 %.1707, %.0718
  %i.qq = sub nuw nsw i32 -31, %.2686
  %i.qr = zext nneg i32 %i.qq to i64
  %i.qs = shl i64 %i.qp, %i.qr
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %.pn = phi i64 [ %i.qo, %bb.ew ], [ %i.qs, %bb.ex ]
  %.0704 = add i64 %.pn, %i.qj                    ; 2 uses
  %i.qt = shl i64 %.1720, %i.qe
  %i.qu = add i64 %.0704, %i.qt
  %.not943 = icmp ult i64 %i.qu, %.9
  br i1 %.not943, label %bb.ez, label %.loopexit1220

bb.ez:                                            ; preds = %bb.ey
  %.not944 = icmp ult i64 %.0704, %.9
  br i1 %.not944, label %bb.fa, label %bb.fk

bb.fa:                                            ; preds = %bb.ez
  %i.qv = sub nuw nsw i64 4294967296, %.1707
  %i.qw = icmp samesign uge i64 %i.qv, %.1707
  %i.qx = icmp samesign uge i64 %.1690, %i.pi
  %i.qy = icmp ne i64 %.1690, %i.pi
  %brmerge = select i1 %i.qy, i1 true, i1 %i.qw
  %or.cond1214 = select i1 %i.qx, i1 %brmerge, i1 false
  br i1 %or.cond1214, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.qz = add nuw nsw i64 %.1690, %.1720
  %.not946 = icmp ult i64 %i.qz, %i.qc
  br i1 %.not946, label %.loopexit1222, label %.loopexit1220

bb.fc:                                            ; preds = %bb.fa
  %i.ra = sub nsw i64 %.1690, %.1720
  %.not945 = icmp ugt i64 %i.ra, %i.qa
  br i1 %.not945, label %Bfree.exit1116, label %.loopexit1220

bb.fd:                                            ; preds = %bb.eu, %bb.et, %bb.es
  %i.rb = and i64 %.neg940, %.1690
  %.not947 = icmp eq i64 %i.rb, 0
  br i1 %.not947, label %bb.fe, label %bb.fk

bb.fe:                                            ; preds = %bb.fd
  %i.rc = sub i64 %.1690, %.1720
  %i.rd = sub i32 1, %.2686
  %i.re = zext nneg i32 %i.rd to i64
  %i.rf = shl i64 %i.rc, %i.re
  %i.rg = icmp ult i64 %i.rf, %.9
  br i1 %i.rg, label %bb.ff, label %bb.fk

bb.ff:                                            ; preds = %bb.fe
  %i.rh = add i64 %.1690, %.1720
  %i.ri = sub i32 2, %.2686
  %i.rj = zext nneg i32 %i.ri to i64
  %i.rk = shl i64 %i.rh, %i.rj
  %i.rl = icmp ult i64 %i.rk, %.9
  br i1 %i.rl, label %.loopexit1222, label %.loopexit1220

bb.fg:                                            ; preds = %bb.el
  %i.rm = icmp eq i32 %.6805, %.0798
  br i1 %i.rm, label %bb.fh, label %bb.fk

bb.fh:                                            ; preds = %bb.fg
  %i.rn = sub nuw nsw i64 1152921504606846976, %i.pi
  %.not933 = icmp eq i64 %.1707, 0                ; 2 uses
  %i.ro = xor i64 %i.pi, 1152921504606846975
  %i.rp = add nuw nsw i64 %.1707, %.0718
  %i.rq = lshr i64 %i.rp, 31
  %.1705 = select i1 %.not933, i64 0, i64 %i.rq
  %.2691 = select i1 %.not933, i64 %i.rn, i64 %i.ro ; 4 uses
  %i.rr = shl nuw nsw i64 %.1720, 1
  %i.rs = add nuw nsw i64 %.1705, %i.rr           ; 4 uses
  %.not934 = icmp samesign ugt i64 %.2691, %i.pi
  br i1 %.not934, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %.not937 = icmp samesign ugt i64 %.2691, %i.rs
  %i.rt = sub nuw nsw i64 %i.pi, %.2691
  %.not938 = icmp samesign ugt i64 %i.rt, %i.rs
  %or.cond992 = select i1 %.not937, i1 %.not938, i1 false
  br i1 %or.cond992, label %.loopexit1222, label %.loopexit1220

bb.fj:                                            ; preds = %bb.fh
  %.not935 = icmp samesign ugt i64 %i.pi, %i.rs
  %i.ru = sub nuw nsw i64 %.2691, %i.pi
  %.not936 = icmp samesign ugt i64 %i.ru, %i.rs
  %or.cond993 = select i1 %.not935, i1 %.not936, i1 false
  br i1 %or.cond993, label %Bfree.exit1116, label %.loopexit1220

bb.fk:                                            ; preds = %bb.fd, %bb.fe, %bb.fg, %bb.ez
  %i.rv = mul nuw nsw i64 %.0718, 10              ; 2 uses
  %i.rw = mul i64 %.1720, 10
  %i.rx = lshr i64 %i.rv, 32
  %i.ry = add i64 %i.rx, %i.rw                    ; 2 uses
  %i.rz = icmp ugt i64 %i.ry, 1152921504606846975
  br i1 %i.rz, label %.loopexit1220, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.sa = and i64 %i.rv, 4294967288
  %i.sb = mul nuw nsw i64 %.1707, 10              ; 2 uses
  %i.sc = mul nuw i64 %i.pi, 10
  %i.sd = lshr i64 %i.sb, 32
  %i.se = add nuw i64 %i.sd, %i.sc
  %i.sf = and i64 %i.sb, 4294967294
  %i.sg = mul i64 %.9, 5                          ; 2 uses
  %.not948 = icmp sgt i64 %i.sg, -1               ; 2 uses
  %.10.v = select i1 %.not948, i64 2, i64 3
  %.10 = lshr i64 %i.sg, %.10.v
  %.3687.v = select i1 %.not948, i32 3, i32 4
  %.3687 = add i32 %.3687.v, %.2686
  %i.sh = add i32 %.6805, 1
  br label %bb.el

.loopexit1220:                                    ; preds = %bb.fk, %bb.ey, %bb.df, %bb.fj, %bb.fi, %bb.ff, %bb.fc, %bb.fb, %bb.ep, %bb.eo, %bb.er, %bb.eq, %bb.da
  %i.si = load ptr, ptr getelementptr inbounds nuw (i8, ptr @TI0, i64 8), align 8 ; 3 uses
  %.not.i.i1033 = icmp eq ptr %i.si, null
  br i1 %.not.i.i1033, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %.loopexit1220
  %i.sj = load ptr, ptr %i.si, align 8
  store ptr %i.sj, ptr getelementptr inbounds nuw (i8, ptr @TI0, i64 8), align 8
  br label %Balloc.exit.i

bb.fn:                                            ; preds = %.loopexit1220
  %i.sk = load ptr, ptr @pmem_next, align 8       ; 3 uses
  %i.sl = ptrtoint ptr %i.sk to i64
  %i.sm = sub i64 %i.sl, ptrtoint (ptr @private_mem to i64)
  %i.sn = icmp slt i64 %i.sm, 2272
  br i1 %i.sn, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.so = getelementptr i8, ptr %i.sk, i64 40
  store ptr %i.so, ptr @pmem_next, align 8
  br label %bb.fq

bb.fp:                                            ; preds = %bb.fn
  %i.sp = tail call noalias dereferenceable_or_null(40) ptr @g_malloc(i64 noundef 40) #9
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %.0.i.i1037 = phi ptr [ %i.sk, %bb.fo ], [ %i.sp, %bb.fp ] ; 3 uses
  %i.sq = getelementptr i8, ptr %.0.i.i1037, i64 8
  store i32 1, ptr %i.sq, align 8
  %i.sr = getelementptr i8, ptr %.0.i.i1037, i64 12
  store i32 2, ptr %i.sr, align 4
  br label %Balloc.exit.i

Balloc.exit.i:                                    ; preds = %bb.fq, %bb.fm
  %.1.i.i1034 = phi ptr [ %i.si, %bb.fm ], [ %.0.i.i1037, %bb.fq ] ; 12 uses
  %i.ss = getelementptr i8, ptr %.1.i.i1034, i64 20 ; 2 uses
  %i.st = getelementptr i8, ptr %.1.i.i1034, i64 16
  store i32 0, ptr %i.st, align 8
  %i.su = getelementptr i8, ptr %.1.i.i1034, i64 24 ; 4 uses
  %i.sv = and i32 %.sroa.0.4.extract.trunc1133, 1048575 ; 2 uses
  %i.sw = lshr i32 %.sroa.0.4.extract.trunc1133, 20 ; 2 uses
  %.not.i1035 = icmp eq i32 %i.sw, 0              ; 2 uses
  %i.sx = or disjoint i32 %i.sv, 1048576
  %spec.select.i = select i1 %.not.i1035, i32 %i.sv, i32 %i.sx ; 13 uses
  %.sroa.0.0.extract.trunc1126 = trunc i64 %.pre-phi to i32 ; 12 uses
  %.not30.i = icmp eq i32 %.sroa.0.0.extract.trunc1126, 0
  br i1 %.not30.i, label %bb.fz, label %bb.fr

bb.fr:                                            ; preds = %Balloc.exit.i
  %i.sy = and i32 %.sroa.0.0.extract.trunc1126, 7
  %.not.i33.i = icmp eq i32 %i.sy, 0
  br i1 %.not.i33.i, label %bb.fw, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.sz = and i32 %.sroa.0.0.extract.trunc1126, 1
  %.not39.i.i = icmp eq i32 %i.sz, 0
  br i1 %.not39.i.i, label %bb.ft, label %lo0bits.exit.thread78.i

bb.ft:                                            ; preds = %bb.fs
  %i.ta = and i32 %.sroa.0.0.extract.trunc1126, 2
  %.not40.i.i = icmp eq i32 %i.ta, 0
  br i1 %.not40.i.i, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.tb = lshr exact i32 %.sroa.0.0.extract.trunc1126, 1
  br label %lo0bits.exit.thread.i

bb.fv:                                            ; preds = %bb.ft
  %i.tc = lshr exact i32 %.sroa.0.0.extract.trunc1126, 2
  br label %lo0bits.exit.thread.i

bb.fw:                                            ; preds = %bb.fr
  %i.td = and i32 %.sroa.0.0.extract.trunc1126, 65528
  %.not33.i.i = icmp eq i32 %i.td, 0              ; 2 uses
  %i.te = lshr exact i32 %.sroa.0.0.extract.trunc1126, 16
  %spec.select.i.i = select i1 %.not33.i.i, i32 16, i32 0 ; 2 uses
  %spec.select41.i.i = select i1 %.not33.i.i, i32 %i.te, i32 %.sroa.0.0.extract.trunc1126 ; 3 uses
  %i.tf = and i32 %spec.select41.i.i, 255
  %.not34.i.i = icmp eq i32 %i.tf, 0              ; 2 uses
  %i.tg = or disjoint i32 %spec.select.i.i, 8
  %i.th = lshr exact i32 %spec.select41.i.i, 8
  %.127.i.i = select i1 %.not34.i.i, i32 %i.tg, i32 %spec.select.i.i ; 2 uses
  %.1.i34.i = select i1 %.not34.i.i, i32 %i.th, i32 %spec.select41.i.i ; 3 uses
  %i.ti = and i32 %.1.i34.i, 15
  %.not35.i.i = icmp eq i32 %i.ti, 0              ; 2 uses
  %i.tj = or disjoint i32 %.127.i.i, 4
  %i.tk = lshr exact i32 %.1.i34.i, 4
  %.228.i.i = select i1 %.not35.i.i, i32 %i.tj, i32 %.127.i.i ; 2 uses
  %.2.i.i = select i1 %.not35.i.i, i32 %i.tk, i32 %.1.i34.i ; 3 uses
  %i.tl = and i32 %.2.i.i, 3
  %.not36.i.i = icmp eq i32 %i.tl, 0              ; 2 uses
  %i.tm = or disjoint i32 %.228.i.i, 2
  %i.tn = lshr exact i32 %.2.i.i, 2
  %.329.i.i = select i1 %.not36.i.i, i32 %i.tm, i32 %.228.i.i ; 3 uses
  %.3.i.i = select i1 %.not36.i.i, i32 %i.tn, i32 %.2.i.i ; 5 uses
  %i.to = and i32 %.3.i.i, 1
  %.not37.i.i = icmp eq i32 %i.to, 0
  br i1 %.not37.i.i, label %bb.fx, label %lo0bits.exit.i

bb.fx:                                            ; preds = %bb.fw
  %i.tp = add nuw nsw i32 %.329.i.i, 1
  %i.tq = lshr exact i32 %.3.i.i, 1
  %.not38.i.i = icmp eq i32 %.3.i.i, 0            ; 2 uses
  %spec.select84.i = select i1 %.not38.i.i, i32 32, i32 %i.tp
  %spec.select85.i = select i1 %.not38.i.i, i32 %.sroa.0.0.extract.trunc1126, i32 %i.tq
  br label %lo0bits.exit.thread.i

lo0bits.exit.i:                                   ; preds = %bb.fw
  %.not31.i = icmp eq i32 %.329.i.i, 0
  br i1 %.not31.i, label %lo0bits.exit.thread78.i, label %lo0bits.exit.thread.i

lo0bits.exit.thread.i:                            ; preds = %lo0bits.exit.i, %bb.fx, %bb.fv, %bb.fu
  %.031.i76.i = phi i32 [ %.329.i.i, %lo0bits.exit.i ], [ %spec.select84.i, %bb.fx ], [ 2, %bb.fv ], [ 1, %bb.fu ] ; 3 uses
  %.07175.i = phi i32 [ %.3.i.i, %lo0bits.exit.i ], [ %spec.select85.i, %bb.fx ], [ %i.tc, %bb.fv ], [ %i.tb, %bb.fu ]
  %i.tr = sub nuw nsw i32 32, %.031.i76.i
  %i.ts = shl i32 %spec.select.i, %i.tr
  %i.tt = or i32 %i.ts, %.07175.i
  store i32 %i.tt, ptr %i.su, align 8
  %i.tu = lshr i32 %spec.select.i, %.031.i76.i
  br label %bb.fy

lo0bits.exit.thread78.i:                          ; preds = %lo0bits.exit.i, %bb.fs
  %.07182.i = phi i32 [ %.3.i.i, %lo0bits.exit.i ], [ %.sroa.0.0.extract.trunc1126, %bb.fs ]
  store i32 %.07182.i, ptr %i.su, align 8
  br label %bb.fy

bb.fy:                                            ; preds = %lo0bits.exit.thread78.i, %lo0bits.exit.thread.i
  %.031.i77.i = phi i32 [ 0, %lo0bits.exit.thread78.i ], [ %.031.i76.i, %lo0bits.exit.thread.i ]
  %.1.i1036 = phi i32 [ %spec.select.i, %lo0bits.exit.thread78.i ], [ %i.tu, %lo0bits.exit.thread.i ] ; 2 uses
  %i.tv = getelementptr i8, ptr %.1.i.i1034, i64 28
  store i32 %.1.i1036, ptr %i.tv, align 4
  %.not32.i = icmp eq i32 %.1.i1036, 0
  %i.tw = select i1 %.not32.i, i32 1, i32 2       ; 2 uses
  store i32 %i.tw, ptr %i.ss, align 4
  br label %bb.gg

bb.fz:                                            ; preds = %Balloc.exit.i
  %i.tx = and i32 %spec.select.i, 7
  %.not.i35.i = icmp eq i32 %i.tx, 0
  br i1 %.not.i35.i, label %bb.ge, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.ty = and i32 %spec.select.i, 1
  %.not39.i36.i = icmp eq i32 %i.ty, 0
  br i1 %.not39.i36.i, label %bb.gb, label %lo0bits.exit56.i

bb.gb:                                            ; preds = %bb.ga
  %i.tz = and i32 %spec.select.i, 2
  %.not40.i38.i = icmp eq i32 %i.tz, 0
  br i1 %.not40.i38.i, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.ua = lshr exact i32 %spec.select.i, 1
  br label %lo0bits.exit56.i

bb.gd:                                            ; preds = %bb.gb
  %i.ub = lshr exact i32 %spec.select.i, 2
  br label %lo0bits.exit56.i

bb.ge:                                            ; preds = %bb.fz
  %i.uc = and i32 %spec.select.i, 65528
  %.not33.i42.i = icmp eq i32 %i.uc, 0            ; 2 uses
  %i.ud = lshr exact i32 %spec.select.i, 16
  %spec.select.i43.i = select i1 %.not33.i42.i, i32 16, i32 0 ; 2 uses
  %spec.select41.i44.i = select i1 %.not33.i42.i, i32 %i.ud, i32 %spec.select.i ; 3 uses
  %i.ue = and i32 %spec.select41.i44.i, 255
  %.not34.i45.i = icmp eq i32 %i.ue, 0            ; 2 uses
  %i.uf = or disjoint i32 %spec.select.i43.i, 8
  %i.ug = lshr exact i32 %spec.select41.i44.i, 8
  %.127.i46.i = select i1 %.not34.i45.i, i32 %i.uf, i32 %spec.select.i43.i ; 2 uses
  %.1.i47.i = select i1 %.not34.i45.i, i32 %i.ug, i32 %spec.select41.i44.i ; 3 uses
  %i.uh = and i32 %.1.i47.i, 15
  %.not35.i48.i = icmp eq i32 %i.uh, 0            ; 2 uses
  %i.ui = or disjoint i32 %.127.i46.i, 4
  %i.uj = lshr exact i32 %.1.i47.i, 4
  %.228.i49.i = select i1 %.not35.i48.i, i32 %i.ui, i32 %.127.i46.i ; 2 uses
  %.2.i50.i = select i1 %.not35.i48.i, i32 %i.uj, i32 %.1.i47.i ; 3 uses
  %i.uk = and i32 %.2.i50.i, 3
  %.not36.i51.i = icmp eq i32 %i.uk, 0            ; 2 uses
  %i.ul = or disjoint i32 %.228.i49.i, 2
  %i.um = lshr exact i32 %.2.i50.i, 2
  %.329.i52.i = select i1 %.not36.i51.i, i32 %i.ul, i32 %.228.i49.i ; 2 uses
  %.3.i53.i = select i1 %.not36.i51.i, i32 %i.um, i32 %.2.i50.i ; 4 uses
  %i.un = and i32 %.3.i53.i, 1
  %.not37.i54.i = icmp eq i32 %i.un, 0
  br i1 %.not37.i54.i, label %bb.gf, label %lo0bits.exit56.i

bb.gf:                                            ; preds = %bb.ge
  %i.uo = add nuw nsw i32 %.329.i52.i, 1
  %i.up = lshr exact i32 %.3.i53.i, 1
  %.not38.i55.i = icmp eq i32 %.3.i53.i, 0        ; 2 uses
  %spec.select86.i = select i1 %.not38.i55.i, i32 %spec.select.i, i32 %i.up
  %spec.select87.i = select i1 %.not38.i55.i, i32 32, i32 %i.uo
  br label %lo0bits.exit56.i

lo0bits.exit56.i:                                 ; preds = %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.ga
  %.2.i = phi i32 [ %spec.select86.i, %bb.gf ], [ %spec.select.i, %bb.ga ], [ %i.ua, %bb.gc ], [ %i.ub, %bb.gd ], [ %.3.i53.i, %bb.ge ]
  %.031.i37.i = phi i32 [ %spec.select87.i, %bb.gf ], [ 0, %bb.ga ], [ 1, %bb.gc ], [ 2, %bb.gd ], [ %.329.i52.i, %bb.ge ]
  store i32 %.2.i, ptr %i.su, align 8
  store i32 1, ptr %i.ss, align 4
  %i.uq = add nuw nsw i32 %.031.i37.i, 32
  br label %bb.gg

bb.gg:                                            ; preds = %lo0bits.exit56.i, %bb.fy
  %.027.i = phi i32 [ %.031.i77.i, %bb.fy ], [ %i.uq, %lo0bits.exit56.i ] ; 3 uses
  %.0.i = phi i32 [ %i.tw, %bb.fy ], [ 1, %lo0bits.exit56.i ] ; 2 uses
  br i1 %.not.i1035, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.ur = add nsw i32 %i.sw, -1075
  %i.us = add nsw i32 %i.ur, %.027.i
  %i.ut = sub nsw i32 53, %.027.i
  br label %d2b.exit

bb.gi:                                            ; preds = %bb.gg
  %i.uu = add nuw nsw i32 %.027.i, -1074
  %i.uv = shl nuw nsw i32 %.0.i, 5
  %i.uw = zext nneg i32 %.0.i to i64
  %i.ux = getelementptr [4 x i8], ptr %i.su, i64 %i.uw
  %i.uy = getelementptr i8, ptr %i.ux, i64 -4
  %i.uz = load i32, ptr %i.uy, align 4            ; 3 uses
  %.not.i57.i = icmp ult i32 %i.uz, 65536         ; 2 uses
  %i.va = shl nuw i32 %i.uz, 16
  %spec.select.i58.i = select i1 %.not.i57.i, i32 %i.va, i32 %i.uz ; 3 uses
  %spec.select26.i.i = select i1 %.not.i57.i, i32 16, i32 0 ; 2 uses
  %.not21.i.i = icmp ult i32 %spec.select.i58.i, 16777216 ; 2 uses
  %i.vb = or disjoint i32 %spec.select26.i.i, 8
  %i.vc = shl nuw i32 %spec.select.i58.i, 8
  %.117.i.i = select i1 %.not21.i.i, i32 %i.vc, i32 %spec.select.i58.i ; 3 uses
  %.1.i59.i = select i1 %.not21.i.i, i32 %i.vb, i32 %spec.select26.i.i ; 2 uses
  %.not22.i.i = icmp ult i32 %.117.i.i, 268435456 ; 2 uses
  %i.vd = or disjoint i32 %.1.i59.i, 4
  %i.ve = shl nuw i32 %.117.i.i, 4
  %.218.i.i = select i1 %.not22.i.i, i32 %i.ve, i32 %.117.i.i ; 3 uses
  %.2.i60.i = select i1 %.not22.i.i, i32 %i.vd, i32 %.1.i59.i ; 2 uses
  %.not23.i.i = icmp ult i32 %.218.i.i, 1073741824 ; 2 uses
  %i.vf = or disjoint i32 %.2.i60.i, 2
  %i.vg = shl nuw i32 %.218.i.i, 2
  %.319.i.i = select i1 %.not23.i.i, i32 %i.vg, i32 %.218.i.i ; 2 uses
  %.3.i61.i = select i1 %.not23.i.i, i32 %i.vf, i32 %.2.i60.i ; 2 uses
  %i.vh = add nuw nsw i32 %.3.i61.i, 1
  %.not25.i.i = icmp ult i32 %.319.i.i, 1073741824
  %spec.select27.i.i = select i1 %.not25.i.i, i32 32, i32 %i.vh
  %.not2428.i.i = icmp slt i32 %.319.i.i, 0
  %.020.i.i = select i1 %.not2428.i.i, i32 %.3.i61.i, i32 %spec.select27.i.i
  %i.vi = sub nuw nsw i32 %i.uv, %.020.i.i
  br label %d2b.exit

d2b.exit:                                         ; preds = %bb.gh, %bb.gi
  %.81172 = phi i32 [ %i.uu, %bb.gi ], [ %i.us, %bb.gh ]
  %storemerge.i = phi i32 [ %i.vi, %bb.gi ], [ %i.ut, %bb.gh ] ; 2 uses
  %i.vj = trunc nuw nsw i64 %i.ax to i32
  %i.vk = tail call i32 @llvm.usub.sat.i32(i32 %.0683, i32 1)
  %reass.sub1445 = sub nsw i32 %i.vk, %i.vj
  %i.vl = add nsw i32 %reass.sub1445, 1022
  %i.vm = add nsw i32 %i.vl, %storemerge.i        ; 3 uses
  %i.vn = icmp sgt i32 %i.vm, -1                  ; 2 uses
  %i.vo = sub nsw i32 0, %i.vm
  %.0814 = select i1 %i.vn, i32 0, i32 %i.vo      ; 2 uses
  %.0782 = select i1 %i.vn, i32 %i.vm, i32 0      ; 2 uses
  %i.vp = icmp sgt i32 %.0794, 341
  br i1 %i.vp, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %d2b.exit
  %i.vq = add nuw nsw i32 %.0782, %i.cp
  br label %bb.gl

bb.gk:                                            ; preds = %d2b.exit
  %i.vr = sub nsw i32 %.0814, %i.cp
  %i.vs = sub nsw i32 342, %.0794
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gj
  %.1815 = phi i32 [ %.0814, %bb.gj ], [ %i.vr, %bb.gk ] ; 6 uses
  %.0813 = phi i32 [ 0, %bb.gj ], [ %i.vs, %bb.gk ] ; 3 uses
  %.1783 = phi i32 [ %i.vq, %bb.gj ], [ %.0782, %bb.gk ] ; 2 uses
  %.0781 = phi i32 [ %i.cp, %bb.gj ], [ 0, %bb.gk ] ; 2 uses
  br i1 %i.ei, label %bb.gs, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.vt = add nsw i32 %.81172, 1075
  %i.vu = sub nsw i32 54, %storemerge.i
  %i.vv = select i1 %.not884.not, i32 %i.vt, i32 %i.vu ; 2 uses
  %i.vw = add nsw i32 %.1815, %i.vv
  %i.vx = add nsw i32 %.1783, %i.vv
  %i.vy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @TI0, i64 8), align 8 ; 3 uses
  %.not.i.i1038 = icmp eq ptr %i.vy, null
  br i1 %.not.i.i1038, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.vz = load ptr, ptr %i.vy, align 8
  store ptr %i.vz, ptr getelementptr inbounds nuw (i8, ptr @TI0, i64 8), align 8
  br label %i2b.exit

bb.go:                                            ; preds = %bb.gm
  %i.wa = load ptr, ptr @pmem_next, align 8       ; 3 uses
  %i.wb = ptrtoint ptr %i.wa to i64
  %i.wc = sub i64 %i.wb, ptrtoint (ptr @private_mem to i64)
  %i.wd = icmp slt i64 %i.wc, 2272
  br i1 %i.wd, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.we = getelementptr i8, ptr %i.wa, i64 40
  store ptr %i.we, ptr @pmem_next, align 8
  br label %bb.gr

bb.gq:                                            ; preds = %bb.go
  %i.wf = tail call noalias dereferenceable_or_null(40) ptr @g_malloc(i64 noundef 40) #9
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gp
  %.0.i.i1041 = phi ptr [ %i.wa, %bb.gp ], [ %i.wf, %bb.gq ] ; 3 uses
  %i.wg = getelementptr i8, ptr %.0.i.i1041, i64 8
  store i32 1, ptr %i.wg, align 8
  %i.wh = getelementptr i8, ptr %.0.i.i1041, i64 12
  store i32 2, ptr %i.wh, align 4
  br label %i2b.exit

i2b.exit:                                         ; preds = %bb.gn, %bb.gr
  %.1.i.i1040 = phi ptr [ %i.vy, %bb.gn ], [ %.0.i.i1041, %bb.gr ] ; 4 uses
  %i.wi = getelementptr i8, ptr %.1.i.i1040, i64 20
  %i.wj = getelementptr i8, ptr %.1.i.i1040, i64 16
  store i32 0, ptr %i.wj, align 8
  %i.wk = getelementptr i8, ptr %.1.i.i1040, i64 24
  store i32 1, ptr %i.wk, align 8
  store i32 1, ptr %i.wi, align 4
  br label %bb.gs

bb.gs:                                            ; preds = %i2b.exit, %bb.gl
  %.2816 = phi i32 [ %i.vw, %i2b.exit ], [ %.1815, %bb.gl ] ; 2 uses
  %.2784 = phi i32 [ %i.vx, %i2b.exit ], [ %.1783, %bb.gl ] ; 4 uses
  %.0746 = phi ptr [ %.1.i.i1040, %i2b.exit ], [ null, %bb.gl ] ; 3 uses
  %i.wl = icmp sgt i32 %.1815, 0
  %i.wm = icmp sgt i32 %.2784, 0
  %or.cond16 = select i1 %i.wl, i1 %i.wm, i1 false
  br i1 %or.cond16, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %bb.gs
  %i.wn = tail call i32 @llvm.umin.i32(i32 %.1815, i32 %.2784) ; 3 uses
  %i.wo = sub i32 %.2816, %i.wn
  %i.wp = sub nsw i32 %.1815, %i.wn
  %i.wq = sub nsw i32 %.2784, %i.wn
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gs
  %.3817 = phi i32 [ %i.wo, %bb.gt ], [ %.2816, %bb.gs ]
  %.0787 = phi i32 [ %i.wp, %bb.gt ], [ %.1815, %bb.gs ]
  %.3785 = phi i32 [ %i.wq, %bb.gt ], [ %.2784, %bb.gs ]
  %.not954 = icmp eq i32 %.0813, 0
  br i1 %.not954, label %Bfree.exit, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  br i1 %i.ei, label %bb.ha, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.wr = tail call fastcc ptr @pow5mult(ptr noundef %.0746, i32 noundef %.0813) ; 4 uses
  %i.ws = tail call fastcc ptr @mult(ptr noundef %i.wr, ptr noundef %.1.i.i1034) ; 3 uses
  %.not.i1042 = icmp eq ptr %.1.i.i1034, null
  br i1 %.not.i1042, label %Bfree.exit, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.wt = getelementptr i8, ptr %.1.i.i1034, i64 8
  %i.wu = load i32, ptr %i.wt, align 8            ; 2 uses
  %i.wv = icmp sgt i32 %i.wu, 7
  br i1 %i.wv, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %bb.gx
  tail call void @g_free(ptr noundef nonnull %.1.i.i1034)
  br label %Bfree.exit

bb.gz:                                            ; preds = %bb.gx
  %i.ww = sext i32 %i.wu to i64
  %i.wx = getelementptr [8 x i8], ptr @TI0, i64 %i.ww ; 2 uses
  %i.wy = load ptr, ptr %i.wx, align 8
  store ptr %i.wy, ptr %.1.i.i1034, align 8
  store ptr %.1.i.i1034, ptr %i.wx, align 8
  br label %Bfree.exit

bb.ha:                                            ; preds = %bb.gv
  %i.wz = tail call fastcc ptr @pow5mult(ptr noundef %.1.i.i1034, i32 noundef %.0813)
  br label %Bfree.exit

Bfree.exit:                                       ; preds = %bb.gz, %bb.gy, %bb.gw, %bb.ha, %bb.gu
  %.1766 = phi ptr [ %.1.i.i1034, %bb.gu ], [ %i.wz, %bb.ha ], [ %i.ws, %bb.gw ], [ %i.ws, %bb.gy ], [ %i.ws, %bb.gz ] ; 2 uses
  %.2748 = phi ptr [ %.0746, %bb.gu ], [ %.0746, %bb.ha ], [ %i.wr, %bb.gw ], [ %i.wr, %bb.gy ], [ %i.wr, %bb.gz ] ; 10 uses
  %i.xa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @TI0, i64 8), align 8 ; 3 uses
  %.not.i.i1043 = icmp eq ptr %i.xa, null
  br i1 %.not.i.i1043, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %Bfree.exit
  %i.xb = load ptr, ptr %i.xa, align 8
  store ptr %i.xb, ptr getelementptr inbounds nuw (i8, ptr @TI0, i64 8), align 8
  br label %i2b.exit1047

bb.hc:                                            ; preds = %Bfree.exit
  %i.xc = load ptr, ptr @pmem_next, align 8       ; 3 uses
  %i.xd = ptrtoint ptr %i.xc to i64
  %i.xe = sub i64 %i.xd, ptrtoint (ptr @private_mem to i64)
  %i.xf = icmp slt i64 %i.xe, 2272
  br i1 %i.xf, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.xg = getelementptr i8, ptr %i.xc, i64 40
  store ptr %i.xg, ptr @pmem_next, align 8
  br label %bb.hf

bb.he:                                            ; preds = %bb.hc
  %i.xh = tail call noalias dereferenceable_or_null(40) ptr @g_malloc(i64 noundef 40) #9
  br label %bb.hf

end_hunk_0
