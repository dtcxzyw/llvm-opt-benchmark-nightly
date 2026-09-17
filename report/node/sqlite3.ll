Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/sqlite3?download=true
inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 125
loop-unroll.NumUnrolled: 423
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_str_vappendf:bb.a
  %.not.i.i1020 = icmp eq i32 %i.pu, 0
  br i1 %.not.i.i1020, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.pv = load double, ptr %i.pq, align 8, !tbaa !741
  br label %getDoubleArg.exit

bb.el:                                            ; preds = %bb.ej
  %i.pw = and i32 %i.pt, 36
  %.not7.i.i = icmp eq i32 %i.pw, 0
  br i1 %.not7.i.i, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.px = load i64, ptr %i.pq, align 8, !tbaa !741
  %i.py = sitofp i64 %i.px to double
  br label %getDoubleArg.exit

bb.en:                                            ; preds = %bb.el
  %i.pz = and i32 %i.pt, 18
  %.not8.i.i = icmp eq i32 %i.pz, 0
  br i1 %.not8.i.i, label %getDoubleArg.exit, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.qa = call fastcc double @sqlite3MemRealValueRC(ptr noundef nonnull %i.pq, ptr noundef null), !inline_history !3739
  br label %getDoubleArg.exit

bb.ep:                                            ; preds = %bb.eh
  %i.qb = load i32, ptr %i.ac, align 4            ; 3 uses
  %i.qc = icmp ult i32 %i.qb, 161
  br i1 %i.qc, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.qd = load ptr, ptr %i.w, align 8
  %i.qe = zext nneg i32 %i.qb to i64
  %i.qf = getelementptr i8, ptr %i.qd, i64 %i.qe
  %i.qg = add nuw nsw i32 %i.qb, 16
  store i32 %i.qg, ptr %i.ac, align 4
  br label %bb.es

bb.er:                                            ; preds = %bb.ep
  %i.qh = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.qi = getelementptr i8, ptr %i.qh, i64 8
  store ptr %i.qi, ptr %i.v, align 8
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %i.qj = phi ptr [ %i.qf, %bb.eq ], [ %i.qh, %bb.er ]
  %i.qk = load double, ptr %i.qj, align 8, !tbaa !788
  br label %getDoubleArg.exit

getDoubleArg.exit:                                ; preds = %bb.ei, %bb.ek, %bb.em, %bb.en, %bb.eo, %bb.es
  %.0664 = phi double [ %i.qk, %bb.es ], [ 0.000000e+00, %bb.ei ], [ %i.pv, %bb.ek ], [ %i.py, %bb.em ], [ %i.qa, %bb.eo ], [ 0.000000e+00, %bb.en ] ; 4 uses
  %i.ql = icmp slt i32 %.47321099, 0
  %i.qm = call i32 @llvm.smin.i32(i32 %.47321099, i32 100000000)
  %spec.store.select44 = select i1 %i.ql, i32 6, i32 %i.qm ; 5 uses
  %i.qn = icmp ne i32 %.0714, 10                  ; 2 uses
  br i1 %i.qn, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %getDoubleArg.exit
  %i.qo = sub nsw i32 0, %spec.store.select44
  br label %bb.ex

bb.eu:                                            ; preds = %getDoubleArg.exit
  %i.qp = and i32 %.0714, -9
  %i.qq = icmp eq i32 %i.qp, 3
  br i1 %i.qq, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %spec.store.select8 = call i32 @llvm.umax.i32(i32 %spec.store.select44, i32 1) ; 2 uses
  br label %bb.ex

bb.ew:                                            ; preds = %bb.eu
  %i.qr = add nsw i32 %spec.store.select44, 1
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ev, %bb.ew, %bb.et
  %.6734 = phi i32 [ %spec.store.select44, %bb.et ], [ %spec.store.select8, %bb.ev ], [ %spec.store.select44, %bb.ew ] ; 3 uses
  %.0626 = phi i32 [ %i.qo, %bb.et ], [ %spec.store.select8, %bb.ev ], [ %i.qr, %bb.ew ] ; 6 uses
  %.not870 = icmp eq i8 %.16901109, 0             ; 2 uses
  %i.qs = select i1 %.not870, i32 16, i32 20      ; 2 uses
  store i8 0, ptr %i.ad, align 1, !tbaa !3776
  %i.qt = fcmp olt double %.0664, 0.000000e+00
  br i1 %i.qt, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  store i8 45, ptr %i.ae, align 4, !tbaa !3777
  %i.qu = fneg double %.0664
  br label %bb.fa

bb.ez:                                            ; preds = %bb.ex
  %i.qv = fcmp oeq double %.0664, 0.000000e+00
  store i8 43, ptr %i.ae, align 4, !tbaa !3777
  br i1 %i.qv, label %sqlite3FpDecode.exit._crit_edge.thread, label %bb.fa

sqlite3FpDecode.exit._crit_edge.thread:           ; preds = %bb.ez
  store i32 1, ptr %3, align 8, !tbaa !3778
  store i32 1, ptr %i.af, align 4, !tbaa !3779
  store ptr @.str.58, ptr %i.ah, align 8, !tbaa !3780
  br label %bb.gp

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %.0124.i = phi double [ %i.qu, %bb.ey ], [ %.0664, %bb.ez ] ; 2 uses
  %.cast.i = bitcast double %.0124.i to i64       ; 3 uses
  %i.qw = lshr i64 %.cast.i, 52
  %i.qx = trunc nuw nsw i64 %i.qw to i32
  %i.qy = and i32 %i.qx, 2047                     ; 3 uses
  %i.qz = icmp eq i32 %i.qy, 2047
  br i1 %i.qz, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %.not148.i = icmp eq i64 %.cast.i, 9218868437227405312
  %i.ra = select i1 %.not148.i, i8 1, i8 2        ; 2 uses
  store i8 %i.ra, ptr %i.ad, align 1, !tbaa !3776
  store i32 0, ptr %3, align 8, !tbaa !3778
  store i32 0, ptr %i.af, align 4, !tbaa !3779
  br label %sqlite3FpDecode.exit

bb.fc:                                            ; preds = %bb.fa
  %i.rb = and i64 %.cast.i, 4503599627370495      ; 3 uses
  %i.rc = icmp eq i32 %i.qy, 0
  br i1 %i.rc, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.rd = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.rb, i1 true) ; 2 uses
  %i.re = trunc nuw nsw i64 %i.rd to i32
  %i.rf = shl i64 %i.rb, %i.rd
  %i.rg = sub nuw nsw i32 -1074, %i.re
  br label %bb.ff

bb.fe:                                            ; preds = %bb.fc
  %i.rh = shl nuw nsw i64 %i.rb, 11
  %i.ri = or disjoint i64 %i.rh, -9223372036854775808
  %i.rj = add nsw i32 %i.qy, -1086
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %.0158.i = phi i64 [ %i.rf, %bb.fd ], [ %i.ri, %bb.fe ]
  %.0129.i = phi i32 [ %i.rg, %bb.fd ], [ %i.rj, %bb.fe ] ; 2 uses
  %i.rk = icmp slt i32 %.0626, 1
  %i.rl = add i32 %.0626, -18
  %or.cond.i = icmp ult i32 %i.rl, -17
  %i.rm = add nuw nsw i32 %.0626, 1
  %i.rn = select i1 %or.cond.i, i32 18, i32 %i.rm ; 2 uses
  %.neg.i.i = mul nsw i32 %.0129.i, -78913
  %i.ro = add nsw i32 %.neg.i.i, -4971520
  %i.rp = ashr i32 %i.ro, 18
  %i.rq = add i32 %i.rp, %i.rn                    ; 9 uses
  %i.rr = icmp slt i32 %i.rq, 0
  br i1 %i.rr, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %.nonneg.i.i.i = sub i32 0, %i.rq               ; 2 uses
  %i.rs = udiv i32 %.nonneg.i.i.i, 27             ; 2 uses
  %i.rt = urem i32 %.nonneg.i.i.i, 27             ; 2 uses
  %.not.i.i.i954 = icmp eq i32 %i.rt, 0
  br i1 %.not.i.i.i954, label %.thread.i.i.i, label %.thread27.i.i.i

.thread.i.i.i:                                    ; preds = %bb.fg
  %.neg.i.i.i = sub nsw i32 0, %i.rs
  %i.ru = sext i32 %.neg.i.i.i to i64
  %i.rv = getelementptr [8 x i8], ptr @powerOfTen.aScale, i64 %i.ru
  %i.rw = getelementptr i8, ptr %i.rv, i64 104
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !571
  br label %powerOfTen.exit.i.i

.thread27.i.i.i:                                  ; preds = %bb.fg
  %i.ry = xor i32 %i.rs, -1
  %i.rz = sub nuw nsw i32 27, %i.rt
  %i.sa = sext i32 %i.ry to i64
  %i.sb = getelementptr [8 x i8], ptr @powerOfTen.aScale, i64 %i.sa
  %i.sc = getelementptr i8, ptr %i.sb, i64 104
  %i.sd = load i64, ptr %i.sc, align 8, !tbaa !571
  br label %bb.fk

bb.fh:                                            ; preds = %bb.ff
  %i.se = icmp samesign ult i32 %i.rq, 27
  br i1 %i.se, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %i.sf = zext nneg i32 %i.rq to i64
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr @powerOfTen.aBase, i64 %i.sf
  %i.sh = load i64, ptr %i.sg, align 8, !tbaa !571
  br label %powerOfTen.exit.i.i

bb.fj:                                            ; preds = %bb.fh
  %i.si = udiv i32 %i.rq, 27
  %i.sj = urem i32 %i.rq, 27                      ; 2 uses
  %i.sk = zext nneg i32 %i.si to i64
  %i.sl = getelementptr [8 x i8], ptr @powerOfTen.aScale, i64 %i.sk
  %i.sm = getelementptr i8, ptr %i.sl, i64 104
  %i.sn = load i64, ptr %i.sm, align 8, !tbaa !571 ; 2 uses
  %i.so = icmp eq i32 %i.sj, 0
  br i1 %i.so, label %powerOfTen.exit.i.i, label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %.thread27.i.i.i
  %i.sp = phi i64 [ %i.sd, %.thread27.i.i.i ], [ %i.sn, %bb.fj ]
  %.01930.i.i.i = phi i32 [ %i.rz, %.thread27.i.i.i ], [ %i.sj, %bb.fj ]
  %i.sq = zext nneg i32 %.01930.i.i.i to i64
  %i.sr = getelementptr inbounds nuw [8 x i8], ptr @powerOfTen.aBase, i64 %i.sq
  %i.ss = load i64, ptr %i.sr, align 8, !tbaa !571
  %4 = zext i64 %i.ss to i128
  %5 = zext i64 %i.sp to i128
  %6 = mul nuw i128 %4, %5                        ; 2 uses
  %7 = lshr i128 %6, 64
  %8 = trunc nuw i128 %7 to i64                   ; 2 uses
  %i.st = shl nuw i64 %8, 1
  %i.su = or disjoint i64 %i.st, 1
  %i.sv = icmp slt i128 %6, 0
  %.0.i.i.i = select i1 %i.sv, i64 %8, i64 %i.su
  br label %powerOfTen.exit.i.i

powerOfTen.exit.i.i:                              ; preds = %bb.fk, %bb.fj, %bb.fi, %.thread.i.i.i
  %.021.i.i.i = phi i64 [ %i.sh, %bb.fi ], [ %.0.i.i.i, %bb.fk ], [ %i.sn, %bb.fj ], [ %i.rx, %.thread.i.i.i ]
  %9 = zext i64 %.0158.i to i128
  %10 = zext i64 %.021.i.i.i to i128
  %11 = mul nuw i128 %10, %9
  %12 = lshr i128 %11, 64
  %13 = trunc nuw i128 %12 to i64                 ; 2 uses
  %i.sw = icmp eq i32 %i.rn, 18
  %i.sx = mul nsw i32 %i.rq, 108853
  %i.sy = ashr i32 %i.sx, 15
  %i.sz = add nsw i32 %i.sy, %.0129.i             ; 2 uses
  br i1 %i.sw, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %powerOfTen.exit.i.i
  %i.ta = sub nsw i32 -2, %i.sz
  %i.tb = zext nneg i32 %i.ta to i64
  %i.tc = lshr i64 %13, %i.tb                     ; 2 uses
  %i.td = shl i64 %i.tc, 1
  %i.te = and i64 %i.td, 2
  %i.tf = add i64 %i.te, %i.tc
  %i.tg = lshr i64 %i.tf, 1
  br label %sqlite3Fp2Convert10.exit.i

bb.fm:                                            ; preds = %powerOfTen.exit.i.i
  %i.th = xor i32 %i.sz, -1
  %i.ti = zext nneg i32 %i.th to i64
  %i.tj = lshr i64 %13, %i.ti
  br label %sqlite3Fp2Convert10.exit.i

sqlite3Fp2Convert10.exit.i:                       ; preds = %bb.fm, %bb.fl
  %storemerge.i.i = phi i64 [ %i.tj, %bb.fm ], [ %i.tg, %bb.fl ] ; 3 uses
  %i.tk = icmp ugt i64 %storemerge.i.i, 9
  br i1 %i.tk, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %sqlite3Fp2Convert10.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 19, %sqlite3Fp2Convert10.exit.i ] ; 2 uses
  %.1159177.i = phi i64 [ %i.tr, %.lr.ph.i ], [ %storemerge.i.i, %sqlite3Fp2Convert10.exit.i ] ; 3 uses
  %i.tl = urem i64 %.1159177.i, 100
  %i.tm = shl nuw nsw i64 %i.tl, 1
  %i.tn = getelementptr inbounds nuw i8, ptr @sqlite3DigitPairs, i64 %i.tm
  %i.to = load i16, ptr %i.tn, align 2, !tbaa !741
  %i.tp = getelementptr i8, ptr %i.ag, i64 %indvars.iv.i
  %i.tq = getelementptr i8, ptr %i.tp, i64 -1
  store i16 %i.to, ptr %i.tq, align 2, !tbaa !789
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.tr = udiv i64 %.1159177.i, 100               ; 2 uses
  %i.ts = icmp ugt i64 %.1159177.i, 999
  br i1 %i.ts, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !3740

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.tt = trunc nsw i64 %indvars.iv.next.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %sqlite3Fp2Convert10.exit.i
  %.1159.lcssa.i = phi i64 [ %storemerge.i.i, %sqlite3Fp2Convert10.exit.i ], [ %i.tr, %._crit_edge.loopexit.i ] ; 2 uses
  %.0134.lcssa.i = phi i32 [ 19, %sqlite3Fp2Convert10.exit.i ], [ %i.tt, %._crit_edge.loopexit.i ] ; 3 uses
  %.not.i953 = icmp eq i64 %.1159.lcssa.i, 0
  br i1 %.not.i953, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %._crit_edge.i
  %i.tu = trunc nuw nsw i64 %.1159.lcssa.i to i8
  %i.tv = or disjoint i8 %i.tu, 48
  %i.tw = add nsw i32 %.0134.lcssa.i, -1
  %i.tx = sext i32 %.0134.lcssa.i to i64
  %i.ty = getelementptr inbounds i8, ptr %i.ag, i64 %i.tx
  store i8 %i.tv, ptr %i.ty, align 1, !tbaa !741
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %._crit_edge.i
  %.1135.i = phi i32 [ %i.tw, %bb.fn ], [ %.0134.lcssa.i, %._crit_edge.i ] ; 4 uses
  %i.tz = sext i32 %.1135.i to i64                ; 2 uses
  %i.ua = sub i32 19, %.1135.i                    ; 5 uses
  %i.ub = sub nsw i32 %i.ua, %i.rq                ; 4 uses
  store i32 %i.ub, ptr %i.af, align 4, !tbaa !3779
  br i1 %i.rk, label %bb.fp, label %.thread.i

bb.fp:                                            ; preds = %bb.fo
  %i.uc = sub nsw i32 %i.ub, %.0626               ; 3 uses
  %i.ud = icmp eq i32 %i.uc, 0
  %i.ue = getelementptr i8, ptr %i.ag, i64 %i.tz  ; 3 uses
  %i.uf = getelementptr i8, ptr %i.ue, i64 1      ; 4 uses
  br i1 %i.ud, label %bb.fq, label %bb.fs

bb.fq:                                            ; preds = %bb.fp
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !741
  %i.uh = icmp sgt i8 %i.ug, 52
  br i1 %i.uh, label %bb.fr, label %.loopexit.i

bb.fr:                                            ; preds = %bb.fq
  %i.ui = add nsw i32 %.1135.i, -1
  store i8 48, ptr %i.ue, align 1, !tbaa !741
  %i.uj = sub i32 20, %.1135.i
  %i.uk = load i32, ptr %i.af, align 4, !tbaa !3779
  %i.ul = add nsw i32 %i.uk, 1                    ; 2 uses
  store i32 %i.ul, ptr %i.af, align 4, !tbaa !3779
  %.pre218.i = sext i32 %i.ui to i64
  br label %.thread.i

.thread.i:                                        ; preds = %bb.fr, %bb.fo
  %.pre-phi.i = phi i64 [ %.pre218.i, %bb.fr ], [ %i.tz, %bb.fo ]
  %i.um = phi i32 [ %i.ul, %bb.fr ], [ %i.ub, %bb.fo ]
  %.0130.ph.i = phi i32 [ %i.uj, %bb.fr ], [ %i.ua, %bb.fo ]
  %.0125.ph.i = phi i32 [ 1, %bb.fr ], [ %.0626, %bb.fo ]
  %i.un = getelementptr i8, ptr %i.ag, i64 %.pre-phi.i ; 2 uses
  %i.uo = getelementptr i8, ptr %i.un, i64 1
  br label %bb.ft

bb.fs:                                            ; preds = %bb.fp
  %i.up = icmp sgt i32 %i.uc, 0
  br i1 %i.up, label %bb.ft, label %.loopexit.i

bb.ft:                                            ; preds = %bb.fs, %.thread.i
  %i.uq = phi i32 [ %i.um, %.thread.i ], [ %i.ub, %bb.fs ] ; 2 uses
  %i.ur = phi ptr [ %i.uo, %.thread.i ], [ %i.uf, %bb.fs ] ; 32 uses
  %i.us = phi ptr [ %i.un, %.thread.i ], [ %i.ue, %bb.fs ] ; 6 uses
  %.0125164.i = phi i32 [ %.0125.ph.i, %.thread.i ], [ %i.uc, %bb.fs ] ; 2 uses
  %.0130163.i = phi i32 [ %.0130.ph.i, %.thread.i ], [ %i.ua, %bb.fs ] ; 6 uses
  %i.ut = icmp slt i32 %.0125164.i, %.0130163.i
  %i.uu = icmp sgt i32 %.0130163.i, %i.qs
  %or.cond149.i = or i1 %i.ut, %i.uu
  br i1 %or.cond149.i, label %bb.fu, label %.loopexit.i

bb.fu:                                            ; preds = %bb.ft
  %i.uv = call i32 @llvm.umin.i32(i32 %.0125164.i, i32 range(i32 16, 21) %i.qs) ; 2 uses
  %i.uw = icmp eq i32 %i.uv, 17
  br i1 %i.uw, label %bb.fv, label %.thread171.i

bb.fv:                                            ; preds = %bb.fu
  %i.ux = getelementptr i8, ptr %i.us, i64 16
  %i.uy = load i8, ptr %i.ux, align 1, !tbaa !741 ; 2 uses
  %i.uz = icmp eq i8 %i.uy, 57
  br i1 %i.uz, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.va = getelementptr i8, ptr %i.us, i64 15
  %i.vb = load i8, ptr %i.va, align 1, !tbaa !741
  %i.vc = icmp eq i8 %i.vb, 57
  br i1 %i.vc, label %.preheader173.preheader.i, label %.thread169.i

.preheader173.preheader.i:                        ; preds = %bb.fw
  %i.vd = getelementptr i8, ptr %i.ur, i64 13
  %i.ve = load i8, ptr %i.vd, align 1, !tbaa !741
  %i.vf = icmp eq i8 %i.ve, 57
  br i1 %i.vf, label %.preheader173.1.i, label %.lr.ph190.preheader.i

.preheader173.1.i:                                ; preds = %.preheader173.preheader.i
  %i.vg = getelementptr i8, ptr %i.ur, i64 12
  %i.vh = load i8, ptr %i.vg, align 1, !tbaa !741
  %i.vi = icmp eq i8 %i.vh, 57
  br i1 %i.vi, label %.preheader173.2.i, label %.lr.ph190.preheader.i

.preheader173.2.i:                                ; preds = %.preheader173.1.i
  %i.vj = getelementptr i8, ptr %i.ur, i64 11
  %i.vk = load i8, ptr %i.vj, align 1, !tbaa !741
  %i.vl = icmp eq i8 %i.vk, 57
  br i1 %i.vl, label %.preheader173.3.i, label %.lr.ph190.preheader.i

.preheader173.3.i:                                ; preds = %.preheader173.2.i
  %i.vm = getelementptr i8, ptr %i.ur, i64 10
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !741
  %i.vo = icmp eq i8 %i.vn, 57
  br i1 %i.vo, label %.preheader173.4.i, label %.lr.ph190.preheader.i

.preheader173.4.i:                                ; preds = %.preheader173.3.i
  %i.vp = getelementptr i8, ptr %i.ur, i64 9
  %i.vq = load i8, ptr %i.vp, align 1, !tbaa !741
  %i.vr = icmp eq i8 %i.vq, 57
  br i1 %i.vr, label %.preheader173.5.i, label %.lr.ph190.preheader.i

.preheader173.5.i:                                ; preds = %.preheader173.4.i
  %i.vs = getelementptr i8, ptr %i.ur, i64 8
  %i.vt = load i8, ptr %i.vs, align 1, !tbaa !741
  %i.vu = icmp eq i8 %i.vt, 57
  br i1 %i.vu, label %.preheader173.6.i, label %.lr.ph190.preheader.i

.preheader173.6.i:                                ; preds = %.preheader173.5.i
  %i.vv = getelementptr i8, ptr %i.ur, i64 7
  %i.vw = load i8, ptr %i.vv, align 1, !tbaa !741
  %i.vx = icmp eq i8 %i.vw, 57
  br i1 %i.vx, label %.preheader173.7.i, label %.lr.ph190.preheader.i

.preheader173.7.i:                                ; preds = %.preheader173.6.i
  %i.vy = getelementptr i8, ptr %i.ur, i64 6
  %i.vz = load i8, ptr %i.vy, align 1, !tbaa !741
  %i.wa = icmp eq i8 %i.vz, 57
  br i1 %i.wa, label %.preheader173.8.i, label %.lr.ph190.preheader.i

.preheader173.8.i:                                ; preds = %.preheader173.7.i
  %i.wb = getelementptr i8, ptr %i.ur, i64 5
  %i.wc = load i8, ptr %i.wb, align 1, !tbaa !741
  %i.wd = icmp eq i8 %i.wc, 57
  br i1 %i.wd, label %.preheader173.9.i, label %.lr.ph190.preheader.i

.preheader173.9.i:                                ; preds = %.preheader173.8.i
  %i.we = getelementptr i8, ptr %i.ur, i64 4
  %i.wf = load i8, ptr %i.we, align 1, !tbaa !741
  %i.wg = icmp eq i8 %i.wf, 57
  br i1 %i.wg, label %.preheader173.10.i, label %.lr.ph190.preheader.i

.preheader173.10.i:                               ; preds = %.preheader173.9.i
  %i.wh = getelementptr i8, ptr %i.ur, i64 3
  %i.wi = load i8, ptr %i.wh, align 1, !tbaa !741
  %i.wj = icmp eq i8 %i.wi, 57
  br i1 %i.wj, label %.preheader173.11.i, label %.lr.ph190.preheader.i

.preheader173.11.i:                               ; preds = %.preheader173.10.i
  %i.wk = getelementptr i8, ptr %i.ur, i64 2
  %i.wl = load i8, ptr %i.wk, align 1, !tbaa !741
  %i.wm = icmp eq i8 %i.wl, 57
  br i1 %i.wm, label %.preheader173.12.i, label %.lr.ph190.preheader.i

.preheader173.12.i:                               ; preds = %.preheader173.11.i
  %i.wn = getelementptr i8, ptr %i.ur, i64 1
  %i.wo = load i8, ptr %i.wn, align 1, !tbaa !741
  %i.wp = icmp eq i8 %i.wo, 57
  br i1 %i.wp, label %.preheader173.13.i, label %.lr.ph190.preheader.i

.preheader173.13.i:                               ; preds = %.preheader173.12.i
  %i.wq = load i8, ptr %i.ur, align 1, !tbaa !741 ; 2 uses
  %i.wr = icmp eq i8 %i.wq, 57
  br i1 %i.wr, label %.thread171.sink.split.i, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.preheader173.13.i
  %i.ws = sext i8 %i.wq to i64
  br label %._crit_edge191.i

.lr.ph190.preheader.i:                            ; preds = %.preheader173.12.i, %.preheader173.11.i, %.preheader173.10.i, %.preheader173.9.i, %.preheader173.8.i, %.preheader173.7.i, %.preheader173.6.i, %.preheader173.5.i, %.preheader173.4.i, %.preheader173.3.i, %.preheader173.2.i, %.preheader173.1.i, %.preheader173.preheader.i
end_hunk_0
begin_hunk_1_@dbMallocRawFinish:bb.a
  store i32 %i.n, ptr %i.l, align 8, !tbaa !931
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 436
  store i16 0, ptr %i.o, align 4, !tbaa !932
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !774  ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %sqlite3OomFault.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.q, ptr noundef nonnull @.str.133), !inline_history !35
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !774  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i32 7, ptr %i.s, align 8, !tbaa !785
  %.0.in.i3 = getelementptr inbounds nuw i8, ptr %i.r, i64 216
  %.0.i4 = load ptr, ptr %.0.in.i3, align 8, !tbaa !933 ; 2 uses
  %.not16.i5 = icmp eq ptr %.0.i4, null
  br i1 %.not16.i5, label %sqlite3OomFault.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %.0.i6 = phi ptr [ %.0.i, %.lr.ph ], [ %.0.i4, %bb.g ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i6, i64 52 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !786
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !786
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i6, i64 24
  store i32 7, ptr %i.w, align 8, !tbaa !785
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.0.i6, i64 216
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !933 ; 2 uses
  %.not16.i = icmp eq ptr %.0.i, null
  br i1 %.not16.i, label %sqlite3OomFault.exit, label %.lr.ph, !llvm.loop !36

sqlite3OomFault.exit:                             ; preds = %.lr.ph, %bb.g, %bb.f, %bb.c, %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc ptr @strAccumFinishRealloc(ptr nofree noundef captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !773    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !759
  %i.d = zext i32 %i.c to i64
  %i.e = add nuw nsw i64 %i.d, 1                  ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.a, i64 noundef %i.e), !inline_history !37
  br label %sqlite3DbMallocRaw.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.e), !inline_history !37
  br label %sqlite3DbMallocRaw.exit

sqlite3DbMallocRaw.exit:                          ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ] ; 4 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %sqlite3DbMallocRaw.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !762
  %i.j = load i32, ptr %i.b, align 8, !tbaa !759
  %i.k = add i32 %i.j, 1
  %i.l = zext i32 %i.k to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i, ptr align 1 %i.i, i64 %i.l, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 29 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !758
  %i.o = or i8 %i.n, 4
  store i8 %i.o, ptr %i.m, align 1, !tbaa !758
  br label %sqlite3StrAccumSetError.exit

bb.e:                                             ; preds = %sqlite3DbMallocRaw.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 7, ptr %i.p, align 4, !tbaa !771
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !772
  %.not.i11 = icmp eq i32 %i.r, 0
  br i1 %.not.i11, label %sqlite3StrAccumSetError.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 29 ; 3 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !758   ; 2 uses
  %i.u = and i8 %i.t, 4
  %.not.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i, label %sqlite3_str_reset.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !762  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %sqlite3DbFree.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %0, align 8, !tbaa !773
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.x, ptr noundef nonnull %i.w)
  %.pre.i.i = load i8, ptr %i.s, align 1, !tbaa !758
  br label %sqlite3DbFree.exit.i.i

sqlite3DbFree.exit.i.i:                           ; preds = %bb.h, %bb.g
  %i.y = phi i8 [ %i.t, %bb.g ], [ %.pre.i.i, %bb.h ]
  %i.z = and i8 %i.y, -5
  store i8 %i.z, ptr %i.s, align 1, !tbaa !758
  br label %sqlite3_str_reset.exit.i

sqlite3_str_reset.exit.i:                         ; preds = %sqlite3DbFree.exit.i.i, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.aa, align 8, !tbaa !760
  store i32 0, ptr %i.b, align 8, !tbaa !759
  br label %sqlite3StrAccumSetError.exit

sqlite3StrAccumSetError.exit:                     ; preds = %sqlite3_str_reset.exit.i, %bb.e, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i, ptr %i.ab, align 8, !tbaa !762
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc double @sqlite3Fp10Convert2(i64 noundef %0, i32 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = icmp slt i32 %1, -348
  br i1 %i.a, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 347
  br i1 %i.b, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %0, i1 true) ; 2 uses
  %i.d = trunc nuw nsw i64 %i.c to i32            ; 2 uses
  %i.e = mul nsw i32 %1, 108853
  %i.f = ashr i32 %i.e, 15                        ; 2 uses
  %.neg39 = add nsw i32 %i.d, -11
  %i.g = sub nsw i32 %.neg39, %i.f                ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1074
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = icmp samesign ugt i32 %i.g, 1129
  br i1 %i.i, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %i.g, %bb.c ], [ 1074, %bb.d ]  ; 2 uses
  %i.j = shl i64 %0, %i.c
  %i.k = icmp slt i32 %1, 0
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = trunc nsw i32 %1 to i16
  %.lhs.trunc = sub nsw i16 0, %i.l               ; 2 uses
  %i.m = udiv i16 %.lhs.trunc, 27
  %.zext = zext nneg i16 %i.m to i32              ; 2 uses
  %i.n = urem i16 %.lhs.trunc, 27                 ; 2 uses
  %.not.i = icmp eq i16 %i.n, 0
  br i1 %.not.i, label %.thread.i, label %.thread27.i

.thread.i:                                        ; preds = %bb.f
  %.neg.i = sub nsw i32 0, %.zext
  %i.o = sext i32 %.neg.i to i64
  %i.p = getelementptr [8 x i8], ptr @powerOfTen.aScale, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 104
  %i.r = load i64, ptr %i.q, align 8, !tbaa !571
  br label %powerOfTen.exit

.thread27.i:                                      ; preds = %bb.f
  %i.s = xor i32 %.zext, -1
  %narrow = sub nuw nsw i16 27, %i.n
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr [8 x i8], ptr @powerOfTen.aScale, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 104
  %i.w = load i64, ptr %i.v, align 8, !tbaa !571
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.x = icmp samesign ult i32 %1, 27
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = zext nneg i32 %1 to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @powerOfTen.aBase, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !571
  br label %powerOfTen.exit

bb.i:                                             ; preds = %bb.g
  %.lhs.trunc35 = trunc nuw nsw i32 %1 to i16     ; 2 uses
  %i.ab = udiv i16 %.lhs.trunc35, 27
  %i.ac = urem i16 %.lhs.trunc35, 27              ; 2 uses
  %i.ad = zext nneg i16 %i.ab to i64
  %i.ae = getelementptr [8 x i8], ptr @powerOfTen.aScale, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 104
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !571 ; 2 uses
  %i.ah = icmp eq i16 %i.ac, 0
  br i1 %i.ah, label %powerOfTen.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread27.i
  %i.ai = phi i64 [ %i.w, %.thread27.i ], [ %i.ag, %bb.i ]
  %.01930.i.in = phi i16 [ %narrow, %.thread27.i ], [ %i.ac, %bb.i ]
  %i.aj = zext nneg i16 %.01930.i.in to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @powerOfTen.aBase, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !571
  %2 = zext i64 %i.al to i128
  %3 = zext i64 %i.ai to i128
  %4 = mul nuw i128 %2, %3                        ; 2 uses
  %5 = lshr i128 %4, 64
  %6 = trunc nuw i128 %5 to i64                   ; 2 uses
  %i.am = shl nuw i64 %6, 1
  %i.an = or disjoint i64 %i.am, 1
  %i.ao = icmp slt i128 %4, 0
  %.0.i = select i1 %i.ao, i64 %6, i64 %i.an
  br label %powerOfTen.exit

powerOfTen.exit:                                  ; preds = %.thread.i, %bb.h, %bb.i, %bb.j
  %.021.i = phi i64 [ %i.aa, %bb.h ], [ %.0.i, %bb.j ], [ %i.ag, %bb.i ], [ %i.r, %.thread.i ]
  %7 = zext i64 %i.j to i128
  %8 = zext i64 %.021.i to i128
  %9 = mul nuw i128 %8, %7
  %10 = lshr i128 %9, 64
  %11 = trunc nuw i128 %10 to i64
  %.neg40 = add nsw i32 %i.d, -3
  %i.ap = add nsw i32 %i.f, %.0
  %i.aq = sub nsw i32 %.neg40, %i.ap
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = lshr i64 %11, %i.ar                     ; 2 uses
  %i.at = icmp ugt i64 %i.as, 36028797018963965   ; 2 uses
  %i.au = sext i1 %i.at to i32
  %.1 = add nsw i32 %.0, %i.au                    ; 2 uses
  %i.av = icmp slt i32 %.1, -971
  br i1 %i.av, label %bb.l, label %bb.k

bb.k:                                             ; preds = %powerOfTen.exit
  %i.aw = zext i1 %i.at to i64
  %.025 = lshr i64 %i.as, %i.aw
  %i.ax = add nuw i64 %.025, 2                    ; 2 uses
  %i.ay = lshr i64 %i.ax, 2                       ; 2 uses
  %i.az = and i64 %i.ax, 18014398509481984
  %.not = icmp eq i64 %i.az, 0
  %i.ba = and i64 %i.ay, 4607182418800017407
  %i.bb = sub nsw i32 1075, %.1
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 52
  %i.be = or i64 %i.ba, %i.bd
  %.126 = select i1 %.not, i64 %i.ay, i64 %i.be
  %i.bf = bitcast i64 %.126 to double
  br label %bb.l

bb.l:                                             ; preds = %powerOfTen.exit, %bb.d, %bb.b, %bb.a, %bb.k
  %.027 = phi double [ %i.bf, %bb.k ], [ 0.000000e+00, %bb.a ], [ +inf, %bb.b ], [ 0.000000e+00, %bb.d ], [ +inf, %powerOfTen.exit ]
  ret double %.027
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #27

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @posixIoFinderImpl(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #3 {
bb.a:
  ret ptr @posixIoMethods
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @unixClose(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1631 ; 2 uses
  tail call fastcc void @verifyDbFile(ptr noundef %0)
  %i.c = tail call i32 @unixUnlock(ptr noundef %0, i32 noundef 0) ; 0 uses
  %i.d = load ptr, ptr @unixBigLock, align 8, !tbaa !746 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %unixEnterMutex.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.e(ptr noundef nonnull %i.d) #59, !inline_history !26
  br label %unixEnterMutex.exit

unixEnterMutex.exit:                              ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !864  ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %sqlite3_mutex_enter.exit, label %bb.c

bb.c:                                             ; preds = %unixEnterMutex.exit
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.h(ptr noundef nonnull %i.g) #59, !inline_history !570
  br label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit:                         ; preds = %unixEnterMutex.exit, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1632
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %sqlite3_mutex_enter.exit
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !1631
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !841  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1633
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.o, ptr %i.p, align 8, !tbaa !1634
  store ptr %i.m, ptr %i.n, align 8, !tbaa !1633
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 -1, ptr %i.q, align 8, !tbaa !851
  store ptr null, ptr %i.l, align 8, !tbaa !841
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %sqlite3_mutex_enter.exit
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !864  ; 2 uses
  %.not.i10 = icmp eq ptr %i.r, null
  br i1 %.not.i10, label %sqlite3_mutex_leave.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.s(ptr noundef nonnull %i.r) #59, !inline_history !573
  br label %sqlite3_mutex_leave.exit

sqlite3_mutex_leave.exit:                         ; preds = %bb.e, %bb.f
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !1631 ; 8 uses
  %.not.i11 = icmp eq ptr %i.t, null
  br i1 %.not.i11, label %releaseInodeInfo.exit, label %bb.g

bb.g:                                             ; preds = %sqlite3_mutex_leave.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !865
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.u, align 8, !tbaa !865
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %releaseInodeInfo.exit

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !864  ; 2 uses
  %.not.i.i12 = icmp eq ptr %i.z, null
  br i1 %.not.i.i12, label %sqlite3_mutex_enter.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.aa(ptr noundef nonnull %i.z) #59, !inline_history !4253
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.i, %bb.h
  tail call fastcc void @closePendingFds(ptr noundef nonnull readonly %0)
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !864 ; 2 uses
  %.not.i20.i = icmp eq ptr %i.ab, null
  br i1 %.not.i20.i, label %sqlite3_mutex_leave.exit.i, label %bb.j

bb.j:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.ac(ptr noundef nonnull %i.ab) #59, !inline_history !4254
  br label %sqlite3_mutex_leave.exit.i

sqlite3_mutex_leave.exit.i:                       ; preds = %bb.j, %sqlite3_mutex_enter.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !867 ; 3 uses
  %.not18.i = icmp eq ptr %i.ae, null
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !866 ; 4 uses
  br i1 %.not18.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %sqlite3_mutex_leave.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !866
  br label %bb.m

bb.l:                                             ; preds = %sqlite3_mutex_leave.exit.i
  store ptr %i.ag, ptr @inodeList, align 8, !tbaa !860
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.not19.i = icmp eq ptr %i.ag, null
  br i1 %.not19.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  store ptr %i.ae, ptr %i.ai, align 8, !tbaa !867
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.aj = load ptr, ptr %i.y, align 8, !tbaa !864 ; 2 uses
  %.not.i21.i = icmp eq ptr %i.aj, null
  br i1 %.not.i21.i, label %sqlite3_mutex_free.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 120), align 8, !tbaa !749
  tail call void %i.ak(ptr noundef nonnull %i.aj) #59, !inline_history !4255
  br label %sqlite3_mutex_free.exit.i

sqlite3_mutex_free.exit.i:                        ; preds = %bb.p, %bb.o
  %i.al = load i32, ptr @sqlite3Config, align 8, !tbaa !705
  %.not.i22.i = icmp eq i32 %i.al, 0
  br i1 %.not.i22.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %sqlite3_mutex_free.exit.i
  %i.am = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %sqlite3_mutex_enter.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !569
  tail call void %i.an(ptr noundef nonnull %i.am) #59, !inline_history !4256
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.r, %bb.q
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !644
  %i.ap = tail call i32 %i.ao(ptr noundef nonnull %i.t) #59, !inline_history !4257
  %i.aq = sext i32 %i.ap to i64
  %i.ar = load i64, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.as = sub nsw i64 %i.ar, %i.aq
  store i64 %i.as, ptr @sqlite3Stat, align 8, !tbaa !571
  %i.at = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.au = add nsw i64 %i.at, -1
  store i64 %i.au, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !571
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !708
  tail call void %i.av(ptr noundef nonnull %i.t) #59, !inline_history !4258
  %i.aw = load ptr, ptr @mem0, align 8, !tbaa !707 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i4.i.i, label %releaseInodeInfo.exit, label %bb.s

bb.s:                                             ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !572
  tail call void %i.ax(ptr noundef nonnull %i.aw) #59, !inline_history !4259
  br label %releaseInodeInfo.exit

end_hunk_1
begin_hunk_2_@sessionAppendRecordMerge:bb.a
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.an = and i8 %i.ag, 127
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = shl nuw nsw i32 %i.ao, 7
  %i.aq = or disjoint i32 %i.ap, %i.al
  br label %sqlite3GetVarint32.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %.03148, i64 3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !741 ; 2 uses
  %i.at = icmp sgt i8 %i.as, -1
  br i1 %i.at, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.au = zext nneg i8 %i.as to i32
  %i.av = and i8 %i.ag, 127
  %i.aw = zext nneg i8 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 14
  %i.ay = shl nuw nsw i32 %i.al, 7
  %i.az = and i32 %i.ay, 16256
  %i.ba = or disjoint i32 %i.az, %i.ax
  %i.bb = or disjoint i32 %i.ba, %i.au
  br label %sqlite3GetVarint32.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.bc = call fastcc zeroext i8 @sqlite3GetVarint(ptr noundef nonnull readonly %i.af, ptr noundef nonnull %i.b)
  %i.bd = load i64, ptr %i.b, align 8, !tbaa !571 ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.bd, 4294967296
  %i.be = trunc nuw i64 %i.bd to i32
  %storemerge.i.i.i = select i1 %.not.i.i.i, i32 %i.be, i32 -1
  %narrow.i = add nuw nsw i8 %i.bc, 1
  %i.bf = zext nneg i8 %narrow.i to i32
  br label %sqlite3GetVarint32.exit.i.i

sqlite3GetVarint32.exit.i.i:                      ; preds = %bb.o, %bb.n, %bb.l
  %storemerge.sink.i.i.i = phi i32 [ %storemerge.i.i.i, %bb.o ], [ %i.bb, %bb.n ], [ %i.aq, %bb.l ]
  %.0.i.i.i = phi i32 [ %i.bf, %bb.o ], [ 4, %bb.n ], [ 3, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  br label %sessionVarintGet.exit.i

sessionVarintGet.exit.i:                          ; preds = %sqlite3GetVarint32.exit.i.i, %bb.j
  %.012.i = phi i32 [ %i.ai, %bb.j ], [ %storemerge.sink.i.i.i, %sqlite3GetVarint32.exit.i.i ]
  %i.bg = phi i32 [ 2, %bb.j ], [ %.0.i.i.i, %sqlite3GetVarint32.exit.i.i ]
  %i.bh = add nsw i32 %i.bg, %.012.i
  %i.bi = sext i32 %i.bh to i64
  br label %sessionSerialLen.exit

sessionSerialLen.exit:                            ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %bb.h, %sessionVarintGet.exit.i
  %.0.i = phi i64 [ %i.bi, %sessionVarintGet.exit.i ], [ 1, %.lr.ph ], [ 9, %bb.h ], [ 1, %.lr.ph ], [ 1, %.lr.ph ] ; 3 uses
  %i.bj = load i8, ptr %.03245, align 1, !tbaa !741 ; 2 uses
  switch i8 %i.bj, label %bb.p [
    i8 -1, label %sessionSerialLen.exit44
    i8 5, label %sessionSerialLen.exit44
    i8 0, label %sessionSerialLen.exit44
  ]

bb.p:                                             ; preds = %sessionSerialLen.exit
  %i.bk = add i8 %i.bj, -1
  %or.cond3.i35 = icmp ult i8 %i.bk, 2
  br i1 %or.cond3.i35, label %sessionSerialLen.exit44, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %.03245, i64 1 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !741 ; 4 uses
  %i.bn = icmp sgt i8 %i.bm, -1
  br i1 %i.bn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bo = zext nneg i8 %i.bm to i32
  br label %sessionVarintGet.exit.i42

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %i.bp = getelementptr inbounds nuw i8, ptr %.03245, i64 2
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !741 ; 2 uses
  %i.br = zext i8 %i.bq to i32                    ; 2 uses
  %i.bs = icmp sgt i8 %i.bq, -1
  br i1 %i.bs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bt = and i8 %i.bm, 127
  %i.bu = zext nneg i8 %i.bt to i32
  %i.bv = shl nuw nsw i32 %i.bu, 7
  %i.bw = or disjoint i32 %i.bv, %i.br
  br label %sqlite3GetVarint32.exit.i.i39

bb.u:                                             ; preds = %bb.s
  %i.bx = getelementptr inbounds nuw i8, ptr %.03245, i64 3
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !741 ; 2 uses
  %i.bz = icmp sgt i8 %i.by, -1
  br i1 %i.bz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ca = zext nneg i8 %i.by to i32
  %i.cb = and i8 %i.bm, 127
  %i.cc = zext nneg i8 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 14
  %i.ce = shl nuw nsw i32 %i.br, 7
  %i.cf = and i32 %i.ce, 16256
  %i.cg = or disjoint i32 %i.cf, %i.cd
  %i.ch = or disjoint i32 %i.cg, %i.ca
  br label %sqlite3GetVarint32.exit.i.i39

bb.w:                                             ; preds = %bb.u
  %i.ci = call fastcc zeroext i8 @sqlite3GetVarint(ptr noundef nonnull readonly %i.bl, ptr noundef nonnull %i.a)
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !571 ; 2 uses
  %.not.i.i.i36 = icmp ult i64 %i.cj, 4294967296
  %i.ck = trunc nuw i64 %i.cj to i32
  %storemerge.i.i.i37 = select i1 %.not.i.i.i36, i32 %i.ck, i32 -1
  %narrow.i38 = add nuw nsw i8 %i.ci, 1
  %i.cl = zext nneg i8 %narrow.i38 to i32
  br label %sqlite3GetVarint32.exit.i.i39

sqlite3GetVarint32.exit.i.i39:                    ; preds = %bb.w, %bb.v, %bb.t
  %storemerge.sink.i.i.i40 = phi i32 [ %storemerge.i.i.i37, %bb.w ], [ %i.ch, %bb.v ], [ %i.bw, %bb.t ]
  %.0.i.i.i41 = phi i32 [ %i.cl, %bb.w ], [ 4, %bb.v ], [ 3, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %sessionVarintGet.exit.i42

sessionVarintGet.exit.i42:                        ; preds = %sqlite3GetVarint32.exit.i.i39, %bb.r
  %.012.i43 = phi i32 [ %i.bo, %bb.r ], [ %storemerge.sink.i.i.i40, %sqlite3GetVarint32.exit.i.i39 ]
  %i.cm = phi i32 [ 2, %bb.r ], [ %.0.i.i.i41, %sqlite3GetVarint32.exit.i.i39 ]
  %i.cn = add nsw i32 %i.cm, %.012.i43
  %i.co = sext i32 %i.cn to i64
  br label %sessionSerialLen.exit44

sessionSerialLen.exit44:                          ; preds = %sessionSerialLen.exit, %sessionSerialLen.exit, %sessionSerialLen.exit, %bb.p, %sessionVarintGet.exit.i42
  %.0.i34 = phi i64 [ %i.co, %sessionVarintGet.exit.i42 ], [ 1, %sessionSerialLen.exit ], [ 9, %bb.p ], [ 1, %sessionSerialLen.exit ], [ 1, %sessionSerialLen.exit ] ; 3 uses
  %.off = add i8 %i.ad, -1
  %switch = icmp ult i8 %.off, -2
  br i1 %switch, label %bb.y, label %bb.x

bb.x:                                             ; preds = %sessionSerialLen.exit44
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.052, ptr nonnull align 1 %.03245, i64 %.0.i34, i1 false)
  br label %bb.z

bb.y:                                             ; preds = %sessionSerialLen.exit44
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.052, ptr nonnull align 1 %.03148, i64 %.0.i, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn = phi i64 [ %.0.i34, %bb.x ], [ %.0.i, %bb.y ]
  %.1 = getelementptr inbounds i8, ptr %.052, i64 %.pn ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %.03148, i64 %.0.i
  %i.cq = getelementptr inbounds i8, ptr %.03245, i64 %.0.i34
  %i.cr = add nuw nsw i32 %.03051, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.cr, %1
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !8343

._crit_edge.loopexit:                             ; preds = %bb.z
  %.pre53 = load ptr, ptr %0, align 8, !tbaa !1574
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %sessionBufferGrow.exit.thread65
  %i.cs = phi ptr [ %i.y, %sessionBufferGrow.exit.thread65 ], [ %.pre53, %._crit_edge.loopexit ]
  %.0.lcssa = phi ptr [ %i.ab, %sessionBufferGrow.exit.thread65 ], [ %.1, %._crit_edge.loopexit ]
  %i.ct = ptrtoint ptr %.0.lcssa to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = trunc i64 %i.cv to i32
  store i32 %i.cw, ptr %i.e, align 8, !tbaa !1570
  br label %sessionBufferGrow.exit.thread

sessionBufferGrow.exit.thread:                    ; preds = %sqlite3_realloc64.exit.thread.i, %.critedge.i, %bb.a, %._crit_edge, %sessionBufferGrow.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #47

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #47

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #57

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #47

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smax.i8(i8, i8) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log2.f64(double) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log10.f64(double) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64, i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #47

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.cttz.i8(i8, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ssub.sat.i32(i32, i32) #47

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #58

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.sadd.sat.i16(i16, i16) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v8i16(<8 x i16>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v4i16(<4 x i16>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v2i16(<2 x i16>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.smin.v2i16(<2 x i16>, <2 x i16>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #47

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { norecurse nounwind memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { norecurse nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree norecurse nosync nounwind memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nofree nounwind memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nofree noinline norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { nofree noinline nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #45 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #46 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #47 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #48 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #49 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #50 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #51 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #52 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #53 = { nofree nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #54 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #55 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #56 = { nofree nosync nounwind memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #57 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #58 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #59 = { nounwind }
attributes #60 = { nounwind willreturn memory(read) }
attributes #61 = { nounwind willreturn memory(none) }
attributes #62 = { "function-inline-cost-multiplier"="2" }
attributes #63 = { nounwind allocsize(0) }
attributes #64 = { nounwind allocsize(1) }

!llvm.module.flags = !{!552, !553, !554, !555}
!llvm.ident = !{!556}
!llvm.errno.tbaa = !{!561}

!0 = distinct !{!0, !605}
!1 = distinct !{null}
!2 = distinct !{null}
!3 = distinct !{!3, !605}
!4 = distinct !{!4, !605}
!5 = distinct !{ptr @sqlite3DbNNFreeNN, ptr @sqlite3_free, null}
!6 = distinct !{null}
!7 = distinct !{!7, !605}
!8 = distinct !{null}
!9 = distinct !{null}
!10 = distinct !{!10, !605}
!11 = distinct !{!11, !605}
!12 = distinct !{null}
!13 = distinct !{ptr @sqlite3_free, null}
!14 = distinct !{!14, !605}
!15 = distinct !{null}
!16 = distinct !{!16, !605}
!17 = distinct !{null}
!18 = distinct !{null}
!19 = distinct !{ptr @sqlite3_vmprintf, null}
!20 = distinct !{ptr @sqlite3_vfs_find, null}
!21 = distinct !{!21, !605}
!22 = distinct !{ptr @sqlite3_vfs_register, null}
end_hunk_2
