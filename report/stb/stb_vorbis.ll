Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_vorbis?download=true
inline.NumInlined: 339
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 47
begin_hunk_0_@vorbis_decode_packet_rest:bb.a

bb.ec:                                            ; preds = %.thread.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.iz, i64 2096
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !59 ; 2 uses
  %.not61.i = icmp eq ptr %.pre.i, null
  br i1 %.not61.i, label %.lr.ph76.i, label %.thread96.i

.thread96.i:                                      ; preds = %bb.ec, %bb.eb
  %i.pk = phi ptr [ %.pre.i, %bb.ec ], [ %i.pf, %bb.eb ]
  %i.pl = load i32, ptr %i.aa, align 4, !tbaa !87 ; 2 uses
  %i.pm = tail call noundef i32 @llvm.bitreverse.i32(i32 %i.pl)
  %i.pn = getelementptr inbounds nuw i8, ptr %i.iz, i64 2112
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !60 ; 2 uses
  %i.pp = icmp sgt i32 %i.po, 1
  br i1 %i.pp, label %.lr.ph.i416, label %._crit_edge.i

.lr.ph.i416:                                      ; preds = %.thread96.i, %.lr.ph.i416
  %.072.i = phi i32 [ %.1.i, %.lr.ph.i416 ], [ %i.po, %.thread96.i ] ; 2 uses
  %.05471.i = phi i32 [ %.155.i, %.lr.ph.i416 ], [ 0, %.thread96.i ] ; 2 uses
  %i.pq = lshr i32 %.072.i, 1                     ; 3 uses
  %i.pr = add nsw i32 %i.pq, %.05471.i            ; 2 uses
  %i.ps = sext i32 %i.pr to i64
  %i.pt = getelementptr inbounds [4 x i8], ptr %i.pk, i64 %i.ps
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !46
  %.not65.i = icmp ugt i32 %i.pu, %i.pm           ; 2 uses
  %i.pv = sub nuw nsw i32 %.072.i, %i.pq
  %.155.i = select i1 %.not65.i, i32 %.05471.i, i32 %i.pr ; 2 uses
  %.1.i = select i1 %.not65.i, i32 %i.pq, i32 %i.pv ; 2 uses
  %i.pw = icmp samesign ugt i32 %.1.i, 1
  br i1 %i.pw, label %.lr.ph.i416, label %._crit_edge.i, !llvm.loop !9

._crit_edge.i:                                    ; preds = %.lr.ph.i416, %.thread96.i
  %.054.lcssa.i = phi i32 [ 0, %.thread96.i ], [ %.155.i, %.lr.ph.i416 ] ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.iz, i64 27
  %i.py = load i8, ptr %i.px, align 1, !tbaa !54
  %.not63.i = icmp eq i8 %i.py, 0
  br i1 %.not63.i, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %._crit_edge.i
  %i.pz = getelementptr inbounds nuw i8, ptr %i.iz, i64 2104
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !62
  %i.qb = sext i32 %.054.lcssa.i to i64
  %i.qc = getelementptr inbounds [4 x i8], ptr %i.qa, i64 %i.qb
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !46
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %._crit_edge.i
  %.2.i = phi i32 [ %.054.lcssa.i, %._crit_edge.i ], [ %i.qd, %bb.ed ] ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !56
  %i.qg = sext i32 %.2.i to i64
  %i.qh = getelementptr inbounds i8, ptr %i.qf, i64 %i.qg
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !49
  %i.qj = zext i8 %i.qi to i32                    ; 3 uses
  %i.qk = load i32, ptr %i.z, align 8, !tbaa !83  ; 2 uses
  %.not64.i = icmp slt i32 %i.qk, %i.qj
  br i1 %.not64.i, label %codebook_decode_scalar_raw.exit.sink.split, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.ql = lshr i32 %i.pl, %i.qj
  store i32 %i.ql, ptr %i.aa, align 4, !tbaa !87
  %i.qm = sub nuw nsw i32 %i.qk, %i.qj
  br label %codebook_decode_scalar_raw.exit.sink.split

.thread66.i:                                      ; preds = %.thread.i
  %i.qn = icmp sgt i32 %i.pi, 0
  br i1 %i.qn, label %.lr.ph76.i, label %._crit_edge77.i

.lr.ph76.i:                                       ; preds = %.thread66.i, %bb.ec
  %i.qo = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !56 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.pi to i64
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ek, %.lr.ph76.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph76.i ], [ %indvars.iv.next.i, %bb.ek ] ; 5 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 %indvars.iv.i
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !49  ; 2 uses
  %i.qs = icmp eq i8 %i.qr, -1
  br i1 %i.qs, label %bb.ek, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.qt = zext i8 %i.qr to i32                    ; 3 uses
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %indvars.iv.i
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !46
  %i.qw = load i32, ptr %i.aa, align 4, !tbaa !87 ; 2 uses
  %notmask.i = shl nsw i32 -1, %i.qt
  %i.qx = xor i32 %notmask.i, -1
  %i.qy = and i32 %i.qw, %i.qx
  %i.qz = icmp eq i32 %i.qv, %i.qy
  br i1 %i.qz, label %bb.ei, label %bb.ek

bb.ei:                                            ; preds = %bb.eh
  %i.ra = load i32, ptr %i.z, align 8, !tbaa !83  ; 2 uses
  %.not62.i = icmp slt i32 %i.ra, %i.qt
  br i1 %.not62.i, label %codebook_decode_scalar_raw.exit.sink.split, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qp, i64 %indvars.iv.i
  %i.rc = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.rd = lshr i32 %i.qw, %i.qt
  store i32 %i.rd, ptr %i.aa, align 4, !tbaa !87
  %i.re = load i8, ptr %i.rb, align 1, !tbaa !49
  %i.rf = zext i8 %i.re to i32
  %i.rg = sub nsw i32 %i.ra, %i.rf
  br label %codebook_decode_scalar_raw.exit.sink.split

bb.ek:                                            ; preds = %bb.eh, %bb.eg
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge77.i, label %bb.eg, !llvm.loop !10

._crit_edge77.i:                                  ; preds = %bb.ek, %.thread66.i
  store i32 21, ptr %i.ap, align 4
  br label %codebook_decode_scalar_raw.exit.sink.split

codebook_decode_scalar_raw.exit.sink.split:       ; preds = %bb.ee, %bb.ef, %bb.ei, %bb.ej, %._crit_edge77.i, %bb.cn
  %.sink.i.sink = phi i32 [ %spec.select408, %bb.cn ], [ 0, %._crit_edge77.i ], [ 0, %bb.ee ], [ %i.rg, %bb.ej ], [ %i.qm, %bb.ef ], [ 0, %bb.ei ]
  %.1338.ph = phi i32 [ %spec.select409, %bb.cn ], [ -1, %._crit_edge77.i ], [ -1, %bb.ee ], [ %i.rc, %bb.ej ], [ %.2.i, %bb.ef ], [ -1, %bb.ei ]
  store i32 %.sink.i.sink, ptr %i.z, align 8, !tbaa !83
  br label %codebook_decode_scalar_raw.exit

codebook_decode_scalar_raw.exit:                  ; preds = %codebook_decode_scalar_raw.exit.sink.split, %bb.eb
  %.1338 = phi i32 [ -1, %bb.eb ], [ %.1338.ph, %codebook_decode_scalar_raw.exit.sink.split ] ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.iz, i64 27
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !54
  %.not405 = icmp eq i8 %i.ri, 0
  br i1 %.not405, label %bb.em, label %bb.el

bb.el:                                            ; preds = %codebook_decode_scalar_raw.exit
  %i.rj = getelementptr inbounds nuw i8, ptr %i.iz, i64 2104
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !62
  %i.rl = sext i32 %.1338 to i64
  %i.rm = getelementptr inbounds [4 x i8], ptr %i.rk, i64 %i.rl
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !46
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %codebook_decode_scalar_raw.exit
  %.2 = phi i32 [ %i.rn, %bb.el ], [ %.1338, %codebook_decode_scalar_raw.exit ]
  %i.ro = trunc i32 %.2 to i16
  br label %bb.en

bb.en:                                            ; preds = %bb.az, %bb.em
  %.sink = phi i16 [ %i.ro, %bb.em ], [ 0, %bb.az ]
  %i.rp = getelementptr inbounds [2 x i8], ptr %i.ca, i64 %indvars.iv
  store i16 %.sink, ptr %i.rp, align 2, !tbaa !58
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.rq = add nuw nsw i32 %.0348540, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.rq, %i.fu
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.az, !llvm.loop !270

._crit_edge.loopexit:                             ; preds = %bb.en
  %i.rr = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ay
  %.1343.lcssa = phi i32 [ %.0342544, %bb.ay ], [ %i.rr, %._crit_edge.loopexit ]
  %indvars.iv.next592 = add nuw nsw i64 %indvars.iv591, 1 ; 2 uses
  %i.rs = load i8, ptr %i.bd, align 4, !tbaa !123
  %i.rt = zext i8 %i.rs to i64
  %i.ru = icmp samesign ult i64 %indvars.iv.next592, %i.rt
  br i1 %i.ru, label %bb.z, label %._crit_edge546, !llvm.loop !271

._crit_edge546:                                   ; preds = %._crit_edge, %ilog.exit411
  %i.rv = load i32, ptr %i.z, align 8, !tbaa !83
  %i.rw = icmp eq i32 %i.rv, -1
  br i1 %i.rw, label %bb.fa, label %bb.eo

bb.eo:                                            ; preds = %._crit_edge546
  store i8 1, ptr %i.aq, align 1, !tbaa !49
  store i8 1, ptr %i.c, align 16, !tbaa !49
  %i.rx = getelementptr inbounds nuw i8, ptr %i.bd, i64 1592
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !115 ; 6 uses
  %i.rz = icmp sgt i32 %i.ry, 2
  br i1 %i.rz, label %.lr.ph549, label %.preheader528

.lr.ph549:                                        ; preds = %bb.eo
  %i.sa = getelementptr inbounds nuw i8, ptr %i.bd, i64 1088
  %i.sb = getelementptr inbounds nuw i8, ptr %i.bd, i64 338 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.ry to i64
  br label %bb.ep

.preheader528:                                    ; preds = %bb.ex, %bb.eo
  %i.sc = icmp sgt i32 %i.ry, 0
  br i1 %i.sc, label %iter.check, label %.thread516

iter.check:                                       ; preds = %.preheader528
  %wide.trip.count601 = zext nneg i32 %i.ry to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.ry, 4
  br i1 %min.iters.check, label %.lr.ph552.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check742 = icmp ult i32 %i.ry, 16
  br i1 %min.iters.check742, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.sd = and i64 %wide.trip.count601, 12
  %n.vec = and i64 %wide.trip.count601, 2147483632 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %pred.store.continue773
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue773 ] ; 18 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.c, i64 %index ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 8
  %wide.load = load <8 x i8>, ptr %i.se, align 16, !tbaa !49
  %wide.load743 = load <8 x i8>, ptr %i.sf, align 8, !tbaa !49
  %i.sg = icmp eq <8 x i8> %wide.load, zeroinitializer ; 8 uses
  %i.sh = icmp eq <8 x i8> %wide.load743, zeroinitializer ; 8 uses
  %i.si = extractelement <8 x i1> %i.sg, i64 0
  br i1 %i.si, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.sj = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  store i16 -1, ptr %i.sj, align 2, !tbaa !58
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.sk = extractelement <8 x i1> %i.sg, i64 1
  br i1 %i.sk, label %pred.store.if744, label %pred.store.continue745

pred.store.if744:                                 ; preds = %pred.store.continue
  %i.sl = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 2
  store i16 -1, ptr %i.sm, align 2, !tbaa !58
  br label %pred.store.continue745

pred.store.continue745:                           ; preds = %pred.store.if744, %pred.store.continue
  %i.sn = extractelement <8 x i1> %i.sg, i64 2
  br i1 %i.sn, label %pred.store.if746, label %pred.store.continue747

pred.store.if746:                                 ; preds = %pred.store.continue745
  %i.so = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 4
  store i16 -1, ptr %i.sp, align 2, !tbaa !58
  br label %pred.store.continue747

pred.store.continue747:                           ; preds = %pred.store.if746, %pred.store.continue745
  %i.sq = extractelement <8 x i1> %i.sg, i64 3
  br i1 %i.sq, label %pred.store.if748, label %pred.store.continue749

pred.store.if748:                                 ; preds = %pred.store.continue747
  %i.sr = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 6
  store i16 -1, ptr %i.ss, align 2, !tbaa !58
  br label %pred.store.continue749

pred.store.continue749:                           ; preds = %pred.store.if748, %pred.store.continue747
  %i.st = extractelement <8 x i1> %i.sg, i64 4
  br i1 %i.st, label %pred.store.if750, label %pred.store.continue751

pred.store.if750:                                 ; preds = %pred.store.continue749
  %i.su = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  store i16 -1, ptr %i.sv, align 2, !tbaa !58
  br label %pred.store.continue751

pred.store.continue751:                           ; preds = %pred.store.if750, %pred.store.continue749
  %i.sw = extractelement <8 x i1> %i.sg, i64 5
  br i1 %i.sw, label %pred.store.if752, label %pred.store.continue753

pred.store.if752:                                 ; preds = %pred.store.continue751
  %i.sx = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 10
  store i16 -1, ptr %i.sy, align 2, !tbaa !58
  br label %pred.store.continue753

pred.store.continue753:                           ; preds = %pred.store.if752, %pred.store.continue751
  %i.sz = extractelement <8 x i1> %i.sg, i64 6
  br i1 %i.sz, label %pred.store.if754, label %pred.store.continue755

pred.store.if754:                                 ; preds = %pred.store.continue753
  %i.ta = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 12
  store i16 -1, ptr %i.tb, align 2, !tbaa !58
  br label %pred.store.continue755

pred.store.continue755:                           ; preds = %pred.store.if754, %pred.store.continue753
  %i.tc = extractelement <8 x i1> %i.sg, i64 7
  br i1 %i.tc, label %pred.store.if756, label %pred.store.continue757

pred.store.if756:                                 ; preds = %pred.store.continue755
  %i.td = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 14
  store i16 -1, ptr %i.te, align 2, !tbaa !58
  br label %pred.store.continue757

pred.store.continue757:                           ; preds = %pred.store.if756, %pred.store.continue755
  %i.tf = extractelement <8 x i1> %i.sh, i64 0
  br i1 %i.tf, label %pred.store.if758, label %pred.store.continue759

pred.store.if758:                                 ; preds = %pred.store.continue757
  %i.tg = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 16
  store i16 -1, ptr %i.th, align 2, !tbaa !58
  br label %pred.store.continue759

pred.store.continue759:                           ; preds = %pred.store.if758, %pred.store.continue757
  %i.ti = extractelement <8 x i1> %i.sh, i64 1
  br i1 %i.ti, label %pred.store.if760, label %pred.store.continue761

pred.store.if760:                                 ; preds = %pred.store.continue759
  %i.tj = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 18
  store i16 -1, ptr %i.tk, align 2, !tbaa !58
  br label %pred.store.continue761

pred.store.continue761:                           ; preds = %pred.store.if760, %pred.store.continue759
  %i.tl = extractelement <8 x i1> %i.sh, i64 2
  br i1 %i.tl, label %pred.store.if762, label %pred.store.continue763

pred.store.if762:                                 ; preds = %pred.store.continue761
  %i.tm = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 20
  store i16 -1, ptr %i.tn, align 2, !tbaa !58
  br label %pred.store.continue763

pred.store.continue763:                           ; preds = %pred.store.if762, %pred.store.continue761
  %i.to = extractelement <8 x i1> %i.sh, i64 3
  br i1 %i.to, label %pred.store.if764, label %pred.store.continue765

pred.store.if764:                                 ; preds = %pred.store.continue763
  %i.tp = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 22
  store i16 -1, ptr %i.tq, align 2, !tbaa !58
  br label %pred.store.continue765

pred.store.continue765:                           ; preds = %pred.store.if764, %pred.store.continue763
  %i.tr = extractelement <8 x i1> %i.sh, i64 4
  br i1 %i.tr, label %pred.store.if766, label %pred.store.continue767

pred.store.if766:                                 ; preds = %pred.store.continue765
  %i.ts = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 24
  store i16 -1, ptr %i.tt, align 2, !tbaa !58
  br label %pred.store.continue767

pred.store.continue767:                           ; preds = %pred.store.if766, %pred.store.continue765
  %i.tu = extractelement <8 x i1> %i.sh, i64 5
  br i1 %i.tu, label %pred.store.if768, label %pred.store.continue769

pred.store.if768:                                 ; preds = %pred.store.continue767
  %i.tv = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 26
  store i16 -1, ptr %i.tw, align 2, !tbaa !58
  br label %pred.store.continue769

pred.store.continue769:                           ; preds = %pred.store.if768, %pred.store.continue767
  %i.tx = extractelement <8 x i1> %i.sh, i64 6
  br i1 %i.tx, label %pred.store.if770, label %pred.store.continue771

pred.store.if770:                                 ; preds = %pred.store.continue769
  %i.ty = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 28
  store i16 -1, ptr %i.tz, align 2, !tbaa !58
  br label %pred.store.continue771

pred.store.continue771:                           ; preds = %pred.store.if770, %pred.store.continue769
  %i.ua = extractelement <8 x i1> %i.sh, i64 7
  br i1 %i.ua, label %pred.store.if772, label %pred.store.continue773

pred.store.if772:                                 ; preds = %pred.store.continue771
  %i.ub = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 30
  store i16 -1, ptr %i.uc, align 2, !tbaa !58
  br label %pred.store.continue773

pred.store.continue773:                           ; preds = %pred.store.if772, %pred.store.continue771
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ud = icmp eq i64 %index.next, %n.vec
  br i1 %i.ud, label %middle.block, label %vector.body, !llvm.loop !272

middle.block:                                     ; preds = %pred.store.continue773
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count601
  br i1 %cmp.n, label %.thread516, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.sd, 0
  br i1 %min.epilog.iters.check, label %.lr.ph552.preheader, label %vec.epilog.ph, !prof !288

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec774 = and i64 %wide.trip.count601, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue784, %vec.epilog.ph
  %index775 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next785, %pred.store.continue784 ] ; 6 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.c, i64 %index775
  %wide.load776 = load <4 x i8>, ptr %i.ue, align 4, !tbaa !49
  %i.uf = icmp eq <4 x i8> %wide.load776, zeroinitializer ; 4 uses
  %i.ug = extractelement <4 x i1> %i.uf, i64 0
  br i1 %i.ug, label %pred.store.if777, label %pred.store.continue778

pred.store.if777:                                 ; preds = %vec.epilog.vector.body
  %i.uh = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index775
  store i16 -1, ptr %i.uh, align 2, !tbaa !58
  br label %pred.store.continue778

pred.store.continue778:                           ; preds = %pred.store.if777, %vec.epilog.vector.body
  %i.ui = extractelement <4 x i1> %i.uf, i64 1
  br i1 %i.ui, label %pred.store.if779, label %pred.store.continue780

end_hunk_0
