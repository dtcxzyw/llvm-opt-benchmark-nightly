Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_vorbis?download=true
inline.NumInlined: 339
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 46
begin_hunk_0_@vorbis_decode_packet_rest:bb.a
  store i32 %i.oz, ptr %i.z, align 8, !tbaa !83
  %i.pa = icmp slt i32 %i.ov, 17
  br i1 %i.pa, label %bb.cr, label %prep_huffman.exit.i, !llvm.loop !8

prep_huffman.exit.i:                              ; preds = %next_segment.exit.i448, %get8_packet_raw.exit457.thread514, %bb.cs, %.loopexit525, %bb.dq, %bb.co
  %i.pb = getelementptr inbounds nuw i8, ptr %i.iz, i64 40
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !55 ; 2 uses
  %i.pd = icmp eq ptr %i.pc, null
  br i1 %i.pd, label %bb.eb, label %.thread.i

bb.eb:                                            ; preds = %prep_huffman.exit.i
  %i.pe = getelementptr inbounds nuw i8, ptr %i.iz, i64 2096
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !59 ; 2 uses
  %i.pg = icmp eq ptr %i.pf, null
  br i1 %i.pg, label %codebook_decode_scalar_raw.exit, label %.thread96.i

.thread.i:                                        ; preds = %prep_huffman.exit.i
  %i.ph = getelementptr inbounds nuw i8, ptr %i.iz, i64 4
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !61 ; 3 uses
  %i.pj = icmp sgt i32 %i.pi, 8
  br i1 %i.pj, label %bb.ec, label %.thread66.i

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

vector.body:                                      ; preds = %pred.store.continue773, %vector.ph
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
  br i1 %i.sk, label %pred.store.if744.a, label %pred.store.continue745.a

pred.store.if744.a:                               ; preds = %pred.store.continue
  %i.sl = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 2
  store i16 -1, ptr %i.sm, align 2, !tbaa !58
  br label %pred.store.continue745.a

pred.store.continue745.a:                         ; preds = %pred.store.if744.a, %pred.store.continue
  %i.sn = extractelement <8 x i1> %i.sg, i64 2
  br i1 %i.sn, label %pred.store.if746.a, label %pred.store.continue747.a

pred.store.if746.a:                               ; preds = %pred.store.continue745.a
  %i.so = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 4
  store i16 -1, ptr %i.sp, align 2, !tbaa !58
  br label %pred.store.continue747.a

pred.store.continue747.a:                         ; preds = %pred.store.if746.a, %pred.store.continue745.a
  %i.sq = extractelement <8 x i1> %i.sg, i64 3
  br i1 %i.sq, label %pred.store.if748.a, label %pred.store.continue749.a

pred.store.if748.a:                               ; preds = %pred.store.continue747.a
  %i.sr = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 6
  store i16 -1, ptr %i.ss, align 2, !tbaa !58
  br label %pred.store.continue749.a

pred.store.continue749.a:                         ; preds = %pred.store.if748.a, %pred.store.continue747.a
  %i.st = extractelement <8 x i1> %i.sg, i64 4
  br i1 %i.st, label %pred.store.if750.a, label %pred.store.continue751.a

pred.store.if750.a:                               ; preds = %pred.store.continue749.a
  %i.su = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  store i16 -1, ptr %i.sv, align 2, !tbaa !58
  br label %pred.store.continue751.a

pred.store.continue751.a:                         ; preds = %pred.store.if750.a, %pred.store.continue749.a
  %i.sw = extractelement <8 x i1> %i.sg, i64 5
  br i1 %i.sw, label %pred.store.if752.a, label %pred.store.continue753.a

pred.store.if752.a:                               ; preds = %pred.store.continue751.a
  %i.sx = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 10
  store i16 -1, ptr %i.sy, align 2, !tbaa !58
  br label %pred.store.continue753.a

pred.store.continue753.a:                         ; preds = %pred.store.if752.a, %pred.store.continue751.a
  %i.sz = extractelement <8 x i1> %i.sg, i64 6
  br i1 %i.sz, label %pred.store.if754.a, label %pred.store.continue755.a

pred.store.if754.a:                               ; preds = %pred.store.continue753.a
  %i.ta = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 12
  store i16 -1, ptr %i.tb, align 2, !tbaa !58
  br label %pred.store.continue755.a

pred.store.continue755.a:                         ; preds = %pred.store.if754.a, %pred.store.continue753.a
  %i.tc = extractelement <8 x i1> %i.sg, i64 7
  br i1 %i.tc, label %pred.store.if756.a, label %pred.store.continue757.a

pred.store.if756.a:                               ; preds = %pred.store.continue755.a
  %i.td = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 14
  store i16 -1, ptr %i.te, align 2, !tbaa !58
  br label %pred.store.continue757.a

pred.store.continue757.a:                         ; preds = %pred.store.if756.a, %pred.store.continue755.a
  %i.tf = extractelement <8 x i1> %i.sh, i64 0
  br i1 %i.tf, label %pred.store.if758.a, label %pred.store.continue759.a

pred.store.if758.a:                               ; preds = %pred.store.continue757.a
  %i.tg = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 16
  store i16 -1, ptr %i.th, align 2, !tbaa !58
  br label %pred.store.continue759.a

pred.store.continue759.a:                         ; preds = %pred.store.if758.a, %pred.store.continue757.a
  %i.ti = extractelement <8 x i1> %i.sh, i64 1
  br i1 %i.ti, label %pred.store.if760.a, label %pred.store.continue761.a

pred.store.if760.a:                               ; preds = %pred.store.continue759.a
  %i.tj = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 18
  store i16 -1, ptr %i.tk, align 2, !tbaa !58
  br label %pred.store.continue761.a

pred.store.continue761.a:                         ; preds = %pred.store.if760.a, %pred.store.continue759.a
  %i.tl = extractelement <8 x i1> %i.sh, i64 2
  br i1 %i.tl, label %pred.store.if762.a, label %pred.store.continue763.a

pred.store.if762.a:                               ; preds = %pred.store.continue761.a
  %i.tm = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 20
  store i16 -1, ptr %i.tn, align 2, !tbaa !58
  br label %pred.store.continue763.a

pred.store.continue763.a:                         ; preds = %pred.store.if762.a, %pred.store.continue761.a
  %i.to = extractelement <8 x i1> %i.sh, i64 3
  br i1 %i.to, label %pred.store.if764.a, label %pred.store.continue765.a

pred.store.if764.a:                               ; preds = %pred.store.continue763.a
  %i.tp = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 22
  store i16 -1, ptr %i.tq, align 2, !tbaa !58
  br label %pred.store.continue765.a

pred.store.continue765.a:                         ; preds = %pred.store.if764.a, %pred.store.continue763.a
  %i.tr = extractelement <8 x i1> %i.sh, i64 4
  br i1 %i.tr, label %pred.store.if766.a, label %pred.store.continue767.a

pred.store.if766.a:                               ; preds = %pred.store.continue765.a
  %i.ts = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 24
  store i16 -1, ptr %i.tt, align 2, !tbaa !58
  br label %pred.store.continue767.a

pred.store.continue767.a:                         ; preds = %pred.store.if766.a, %pred.store.continue765.a
  %i.tu = extractelement <8 x i1> %i.sh, i64 5
  br i1 %i.tu, label %pred.store.if768.a, label %pred.store.continue769.a

pred.store.if768.a:                               ; preds = %pred.store.continue767.a
  %i.tv = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 26
  store i16 -1, ptr %i.tw, align 2, !tbaa !58
  br label %pred.store.continue769.a

pred.store.continue769.a:                         ; preds = %pred.store.if768.a, %pred.store.continue767.a
  %i.tx = extractelement <8 x i1> %i.sh, i64 6
  br i1 %i.tx, label %pred.store.if770.a, label %pred.store.continue771.a

pred.store.if770.a:                               ; preds = %pred.store.continue769.a
  %i.ty = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 28
  store i16 -1, ptr %i.tz, align 2, !tbaa !58
  br label %pred.store.continue771.a

pred.store.continue771.a:                         ; preds = %pred.store.if770.a, %pred.store.continue769.a
  %i.ua = extractelement <8 x i1> %i.sh, i64 7
  br i1 %i.ua, label %pred.store.if772, label %pred.store.continue773

pred.store.if772:                                 ; preds = %pred.store.continue771.a
  %i.ub = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 30
  store i16 -1, ptr %i.uc, align 2, !tbaa !58
  br label %pred.store.continue773

pred.store.continue773:                           ; preds = %pred.store.if772, %pred.store.continue771.a
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
  br i1 %i.ug, label %pred.store.if777.a, label %pred.store.continue778.a

pred.store.if777.a:                               ; preds = %vec.epilog.vector.body
  %i.uh = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index775
  store i16 -1, ptr %i.uh, align 2, !tbaa !58
  br label %pred.store.continue778.a

pred.store.continue778.a:                         ; preds = %pred.store.if777.a, %vec.epilog.vector.body
  %i.ui = extractelement <4 x i1> %i.uf, i64 1
  br i1 %i.ui, label %pred.store.if779.a, label %pred.store.continue780.a

pred.store.if779.a:                               ; preds = %pred.store.continue778.a
  %i.uj = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index775
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 2
  store i16 -1, ptr %i.uk, align 2, !tbaa !58
  br label %pred.store.continue780.a

pred.store.continue780.a:                         ; preds = %pred.store.if779.a, %pred.store.continue778.a
  %i.ul = extractelement <4 x i1> %i.uf, i64 2
  br i1 %i.ul, label %pred.store.if781.a, label %pred.store.continue782.a

pred.store.if781.a:                               ; preds = %pred.store.continue780.a
  %i.um = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index775
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 4
  store i16 -1, ptr %i.un, align 2, !tbaa !58
  br label %pred.store.continue782.a

pred.store.continue782.a:                         ; preds = %pred.store.if781.a, %pred.store.continue780.a
  %i.uo = extractelement <4 x i1> %i.uf, i64 3
  br i1 %i.uo, label %pred.store.if783, label %pred.store.continue784

pred.store.if783:                                 ; preds = %pred.store.continue782.a
  %i.up = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %index775
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 6
  store i16 -1, ptr %i.uq, align 2, !tbaa !58
  br label %pred.store.continue784

pred.store.continue784:                           ; preds = %pred.store.if783, %pred.store.continue782.a
  %index.next785 = add nuw i64 %index775, 4       ; 2 uses
  %i.ur = icmp eq i64 %index.next785, %n.vec774
  br i1 %i.ur, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !273

vec.epilog.middle.block:                          ; preds = %pred.store.continue784
  %cmp.n786 = icmp eq i64 %n.vec774, %wide.trip.count601
  br i1 %cmp.n786, label %.thread516, label %.lr.ph552.preheader

.lr.ph552.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv598.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec774, %vec.epilog.middle.block ]
  br label %.lr.ph552

bb.ep:                                            ; preds = %.lr.ph549, %bb.ex
  %indvars.iv594 = phi i64 [ 2, %.lr.ph549 ], [ %indvars.iv.next595, %bb.ex ] ; 6 uses
  %i.us = getelementptr inbounds nuw [2 x i8], ptr %i.sa, i64 %indvars.iv594 ; 2 uses
  %i.ut = load i8, ptr %i.us, align 2, !tbaa !49
  %i.uu = getelementptr inbounds nuw i8, ptr %i.us, i64 1
  %i.uv = load i8, ptr %i.uu, align 1, !tbaa !49
  %i.uw = getelementptr inbounds nuw [2 x i8], ptr %i.sb, i64 %indvars.iv594
  %i.ux = load i16, ptr %i.uw, align 2, !tbaa !58
  %i.uy = zext i16 %i.ux to i32
  %i.uz = zext i8 %i.ut to i64                    ; 3 uses
  %i.va = getelementptr inbounds nuw [2 x i8], ptr %i.sb, i64 %i.uz
  %i.vb = load i16, ptr %i.va, align 2, !tbaa !58
  %i.vc = zext i16 %i.vb to i32                   ; 2 uses
  %i.vd = zext i8 %i.uv to i64                    ; 3 uses
  %i.ve = getelementptr inbounds nuw [2 x i8], ptr %i.sb, i64 %i.vd
  %i.vf = load i16, ptr %i.ve, align 2, !tbaa !58
  %i.vg = zext i16 %i.vf to i32
  %i.vh = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %i.uz
  %i.vi = load i16, ptr %i.vh, align 2, !tbaa !58
  %i.vj = sext i16 %i.vi to i32                   ; 2 uses
  %i.vk = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %i.vd
  %i.vl = load i16, ptr %i.vk, align 2, !tbaa !58
  %i.vm = sext i16 %i.vl to i32
  %i.vn = sub nsw i32 %i.vm, %i.vj                ; 2 uses
  %i.vo = sub nsw i32 %i.vg, %i.vc
  %i.vp = tail call i32 @llvm.abs.i32(i32 %i.vn, i1 true)
  %i.vq = sub nsw i32 %i.uy, %i.vc
  %i.vr = mul nsw i32 %i.vp, %i.vq
  %i.vs = sdiv i32 %i.vr, %i.vo                   ; 2 uses
  %i.vt = icmp slt i32 %i.vn, 0
  %i.vu = sub i32 0, %i.vs
  %.p.i = select i1 %i.vt, i32 %i.vu, i32 %i.vs
  %i.vv = add i32 %.p.i, %i.vj                    ; 6 uses
  %i.vw = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %indvars.iv594 ; 2 uses
  %i.vx = load i16, ptr %i.vw, align 2, !tbaa !58 ; 3 uses
  %i.vy = sext i16 %i.vx to i32                   ; 4 uses
  %i.vz = sub nsw i32 %i.by, %i.vv                ; 2 uses
  %.not398 = icmp eq i16 %i.vx, 0
  br i1 %.not398, label %bb.ew, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %. = tail call i32 @llvm.smin.i32(i32 %i.vz, i32 %i.vv)
  %.0336 = shl nsw i32 %., 1
  %i.wa = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.vd
  store i8 1, ptr %i.wa, align 1, !tbaa !49
  %i.wb = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.uz
  store i8 1, ptr %i.wb, align 1, !tbaa !49
  %i.wc = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv594
  store i8 1, ptr %i.wc, align 1, !tbaa !49
  %.not399 = icmp sgt i32 %.0336, %i.vy
  br i1 %.not399, label %bb.et, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.wd = icmp sgt i32 %i.vz, %i.vv
  br i1 %i.wd, label %bb.ex, label %bb.es

bb.es:                                            ; preds = %bb.er
  %8 = xor i32 %i.vy, -1
  %9 = add i32 %i.by, %8
  br label %.sink.split

bb.et:                                            ; preds = %bb.eq
  %i.we = and i16 %i.vx, 1
  %.not400 = icmp eq i16 %i.we, 0
  br i1 %.not400, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.wf = add nsw i32 %i.vy, 1
  %i.wg = lshr exact i32 %i.wf, 1
  %i.wh = sub i32 %i.vv, %i.wg
  br label %.sink.split

bb.ev:                                            ; preds = %bb.et
  %i.wi = lshr exact i32 %i.vy, 1
  %i.wj = add i32 %i.vv, %i.wi
  br label %.sink.split

bb.ew:                                            ; preds = %bb.ep
  %i.wk = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv594
  store i8 0, ptr %i.wk, align 1, !tbaa !49
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ew, %bb.eu, %bb.ev, %bb.es
  %.sink731 = phi i32 [ %9, %bb.es ], [ %i.wj, %bb.ev ], [ %i.wh, %bb.eu ], [ %i.vv, %bb.ew ]
  %10 = trunc i32 %.sink731 to i16
  store i16 %10, ptr %i.vw, align 2, !tbaa !58
  br label %bb.ex

bb.ex:                                            ; preds = %.sink.split, %bb.er
  %indvars.iv.next595 = add nuw nsw i64 %indvars.iv594, 1 ; 2 uses
  %exitcond597.not = icmp eq i64 %indvars.iv.next595, %wide.trip.count
  br i1 %exitcond597.not, label %.preheader528, label %bb.ep, !llvm.loop !274

.thread516:                                       ; preds = %bb.ez, %middle.block, %vec.epilog.middle.block, %.preheader528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %bb.fb

.lr.ph552:                                        ; preds = %.lr.ph552.preheader, %bb.ez
  %indvars.iv598 = phi i64 [ %indvars.iv.next599, %bb.ez ], [ %indvars.iv598.ph, %.lr.ph552.preheader ] ; 3 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv598
  %i.wm = load i8, ptr %i.wl, align 1, !tbaa !49
  %.not397 = icmp eq i8 %i.wm, 0
  br i1 %.not397, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %.lr.ph552
  %i.wn = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %indvars.iv598
  store i16 -1, ptr %i.wn, align 2, !tbaa !58
  br label %bb.ez

bb.ez:                                            ; preds = %.lr.ph552, %bb.ey
  %indvars.iv.next599 = add nuw nsw i64 %indvars.iv598, 1 ; 2 uses
  %exitcond602.not = icmp eq i64 %indvars.iv.next599, %wide.trip.count601
  br i1 %exitcond602.not, label %.thread516, label %.lr.ph552, !llvm.loop !275

bb.fa:                                            ; preds = %._crit_edge546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %get_bits.exit.thread

get_bits.exit.thread:                             ; preds = %bb.c, %.critedge.i, %bb.fa, %get_bits.exit
  store i32 1, ptr %i.av, align 4, !tbaa !46
  br label %bb.fb

bb.fb:                                            ; preds = %get_bits.exit.thread, %.thread516
  %indvars.iv.next604 = add nuw nsw i64 %indvars.iv603, 1 ; 2 uses
  %i.wo = load i32, ptr %i.s, align 4, !tbaa !101
  %i.wp = sext i32 %i.wo to i64                   ; 2 uses
  %i.wq = icmp slt i64 %indvars.iv.next604, %i.wp
  br i1 %i.wq, label %bb.b, label %._crit_edge556, !llvm.loop !276

._crit_edge556:                                   ; preds = %bb.fb, %.._crit_edge556_crit_edge
  %.pre-phi641 = phi i64 [ %.pre640, %.._crit_edge556_crit_edge ], [ %i.wp, %bb.fb ]
  %i.wr = shl nsw i64 %.pre-phi641, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 16 %i.a, i64 %i.wr, i1 false)
  %i.ws = load i16, ptr %i.p, align 8, !tbaa !124 ; 3 uses
  %.not583 = icmp eq i16 %i.ws, 0
  br i1 %.not583, label %.preheader524, label %.lr.ph560

.lr.ph560:                                        ; preds = %._crit_edge556
  %i.wt = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !109
  %wide.trip.count609 = zext i16 %i.ws to i64
  br label %bb.fc

.preheader524:                                    ; preds = %bb.fe, %._crit_edge556
  %i.wv = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.ww = load i8, ptr %i.wv, align 8, !tbaa !125
  %.not584 = icmp eq i8 %i.ww, 0
  br i1 %.not584, label %._crit_edge569, label %.lr.ph568

.lr.ph568:                                        ; preds = %.preheader524
  %i.wx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.wy = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.wz = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  br label %bb.ff

bb.fc:                                            ; preds = %.lr.ph560, %bb.fe
  %indvars.iv606 = phi i64 [ 0, %.lr.ph560 ], [ %indvars.iv.next607, %bb.fe ] ; 2 uses
  %i.xa = getelementptr inbounds nuw [3 x i8], ptr %i.wu, i64 %indvars.iv606 ; 2 uses
  %i.xb = load i8, ptr %i.xa, align 1, !tbaa !126
  %i.xc = zext i8 %i.xb to i64
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.xc ; 2 uses
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !46
  %.not394 = icmp eq i32 %i.xe, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.xa, i64 1
  %.pre634 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !127
  %.pre639 = zext i8 %.pre634 to i64              ; 2 uses
  br i1 %.not394, label %._crit_edge633, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.pre639
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !46
  %.not395 = icmp eq i32 %i.xg, 0
  br i1 %.not395, label %._crit_edge633, label %bb.fe

._crit_edge633:                                   ; preds = %bb.fc, %bb.fd
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.pre639
  store i32 0, ptr %i.xh, align 4, !tbaa !46
  store i32 0, ptr %i.xd, align 4, !tbaa !46
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %._crit_edge633
  %indvars.iv.next607 = add nuw nsw i64 %indvars.iv606, 1 ; 2 uses
  %exitcond610.not = icmp eq i64 %indvars.iv.next607, %wide.trip.count609
  br i1 %exitcond610.not, label %.preheader524, label %bb.fc, !llvm.loop !277

bb.ff:                                            ; preds = %.lr.ph568, %._crit_edge565
  %indvars.iv616 = phi i64 [ 0, %.lr.ph568 ], [ %indvars.iv.next617, %._crit_edge565 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  %i.xi = load i32, ptr %i.s, align 4, !tbaa !101 ; 2 uses
  %i.xj = icmp sgt i32 %i.xi, 0
  br i1 %i.xj, label %.lr.ph564, label %._crit_edge565

.lr.ph564:                                        ; preds = %bb.ff
  %i.xk = load ptr, ptr %i.wx, align 8, !tbaa !109
  %wide.trip.count614 = zext nneg i32 %i.xi to i64
  br label %bb.fg

bb.fg:                                            ; preds = %.lr.ph564, %bb.fl
  %indvars.iv611 = phi i64 [ 0, %.lr.ph564 ], [ %indvars.iv.next612, %bb.fl ] ; 4 uses
  %.0335562 = phi i32 [ 0, %.lr.ph564 ], [ %.1, %bb.fl ] ; 3 uses
  %i.xl = getelementptr inbounds nuw [3 x i8], ptr %i.xk, i64 %indvars.iv611
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 2
  %i.xn = load i8, ptr %i.xm, align 1, !tbaa !111
  %i.xo = zext i8 %i.xn to i64
  %i.xp = icmp eq i64 %indvars.iv616, %i.xo
  br i1 %i.xp, label %bb.fh, label %bb.fl

bb.fh:                                            ; preds = %bb.fg
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv611
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !46
  %.not393 = icmp eq i32 %i.xr, 0
  %i.xs = sext i32 %.0335562 to i64               ; 2 uses
  %i.xt = getelementptr inbounds i8, ptr %i.e, i64 %i.xs ; 2 uses
  br i1 %.not393, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  store i8 1, ptr %i.xt, align 1, !tbaa !49
  br label %bb.fk

bb.fj:                                            ; preds = %bb.fh
  store i8 0, ptr %i.xt, align 1, !tbaa !49
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %i.wy, i64 %indvars.iv611
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !64
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %.sink732 = phi ptr [ %i.xv, %bb.fj ], [ null, %bb.fi ]
  %i.xw = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.xs
  store ptr %.sink732, ptr %i.xw, align 8, !tbaa !64
  %i.xx = add nsw i32 %.0335562, 1
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fg, %bb.fk
  %.1 = phi i32 [ %i.xx, %bb.fk ], [ %.0335562, %bb.fg ] ; 2 uses
  %indvars.iv.next612 = add nuw nsw i64 %indvars.iv611, 1 ; 2 uses
  %exitcond615.not = icmp eq i64 %indvars.iv.next612, %wide.trip.count614
  br i1 %exitcond615.not, label %._crit_edge565, label %bb.fg, !llvm.loop !278

._crit_edge565:                                   ; preds = %bb.fl, %bb.ff
  %.0335.lcssa = phi i32 [ 0, %bb.ff ], [ %.1, %bb.fl ]
  %i.xy = getelementptr inbounds nuw i8, ptr %i.wz, i64 %indvars.iv616
  %i.xz = load i8, ptr %i.xy, align 1, !tbaa !49
  %i.ya = zext i8 %i.xz to i32
  call void @decode_residue(ptr noundef nonnull %0, ptr noundef nonnull %i.d, i32 noundef %.0335.lcssa, i32 noundef %i.q, i32 noundef %i.ya, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  %indvars.iv.next617 = add nuw nsw i64 %indvars.iv616, 1 ; 2 uses
  %i.yb = load i8, ptr %i.wv, align 8, !tbaa !125
  %i.yc = zext i8 %i.yb to i64
  %i.yd = icmp samesign ult i64 %indvars.iv.next617, %i.yc
  br i1 %i.yd, label %bb.ff, label %._crit_edge569.loopexit, !llvm.loop !279

._crit_edge569.loopexit:                          ; preds = %._crit_edge565
  %.pre635 = load i16, ptr %i.p, align 8, !tbaa !124
  br label %._crit_edge569

._crit_edge569:                                   ; preds = %._crit_edge569.loopexit, %.preheader524
  %i.ye = phi i16 [ %.pre635, %._crit_edge569.loopexit ], [ %i.ws, %.preheader524 ] ; 2 uses
  %.not585 = icmp eq i16 %i.ye, 0
  br i1 %.not585, label %.preheader523, label %.lr.ph576

.lr.ph576:                                        ; preds = %._crit_edge569
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !109
  %i.yi = icmp sgt i32 %i.q, 0
  br i1 %i.yi, label %.lr.ph572.preheader, label %.preheader523

.lr.ph572.preheader:                              ; preds = %.lr.ph576
  %i.yj = zext i16 %i.ye to i64
  %wide.trip.count622 = zext nneg i32 %i.q to i64 ; 4 uses
  %i.yk = shl nuw nsw i64 %wide.trip.count622, 2  ; 2 uses
  %min.iters.check788 = icmp ult i32 %i.q, 4
  %n.vec790 = and i64 %wide.trip.count622, 2147483644 ; 3 uses
  %cmp.n800 = icmp eq i64 %n.vec790, %wide.trip.count622
  br label %.lr.ph572

..loopexit_crit_edge:                             ; preds = %bb.fs, %middle.block799
  %i.yl = icmp sgt i64 %indvars.iv624, 1
  br i1 %i.yl, label %.lr.ph572, label %.preheader523, !llvm.loop !280

.preheader523:                                    ; preds = %..loopexit_crit_edge, %.lr.ph576, %._crit_edge569
  %i.ym = load i32, ptr %i.s, align 4, !tbaa !101
  %i.yn = icmp sgt i32 %i.ym, 0
  br i1 %i.yn, label %.lr.ph578, label %.preheader.preheader
end_hunk_0
