Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cecCorrIncrSim?download=true
inline.NumInlined: 422
inline.NumDeleted: 93
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@Cec_SeedSimTryBatch:bb.a
bb.cp:                                            ; preds = %Gia_WordFindFirstBit.exit204.i
  %i.pf = load i32, ptr %i.fh, align 4, !tbaa !204 ; 2 uses
  %i.pg = add nsw i32 %i.pf, 1
  store i32 %i.pg, ptr %i.fh, align 4, !tbaa !204
  %.not144.i = icmp slt i32 %i.pf, %i.p
  br i1 %.not144.i, label %bb.cq, label %.critedge2

bb.cq:                                            ; preds = %bb.cp
  %.val162.i = load i64, ptr %i.jr, align 4       ; 2 uses
  %i.ph = zext nneg i32 %i.pb to i64              ; 4 uses
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %i.ph
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !26
  %i.pk = shl i64 %.val162.i, 34
  %sext276.i = ashr i64 %i.pk, 63
  %i.pl = trunc nsw i64 %sext276.i to i32
  %i.pm = xor i32 %i.pj, %i.pl
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %i.ph
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !26
  %i.pp = shl i64 %.val162.i, 2
  %sext277.i = ashr i64 %i.pp, 63
  %i.pq = trunc nsw i64 %sext277.i to i32
  %i.pr = xor i32 %i.po, %i.pq
  %i.ps = and i32 %i.pr, %i.pm                    ; 2 uses
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %i.ph
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !26 ; 2 uses
  %i.pv = icmp eq i32 %i.pu, %i.ps
  br i1 %i.pv, label %.outer.i98, label %bb.cr, !llvm.loop !175

bb.cr:                                            ; preds = %bb.cq
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %i.ph
  tail call fastcc void @Cec_SeedSimEventRecordWord(ptr noundef nonnull %0, i32 noundef %i.ik, i32 noundef %i.pb, i32 noundef %i.pu)
  store i32 %i.ps, ptr %i.pw, align 4, !tbaa !26
  %i.px = tail call fastcc i32 @Cec_SeedSimEventQueueFanouts(ptr noundef nonnull %0, i32 noundef %i.jm, i32 noundef %i.jn, i32 noundef %i.pb, i32 noundef %i.s)
  %.not147.i = icmp eq i32 %i.px, 0
  br i1 %.not147.i, label %.critedge2, label %.outer.i98.outer

bb.cs:                                            ; preds = %bb.bj
  %indvars.iv.next252.i = add nuw nsw i64 %indvars.iv251.i, 1 ; 2 uses
  %i.py = load i32, ptr %i.ig, align 8, !tbaa !57
  %i.pz = sext i32 %i.py to i64
  %i.qa = icmp slt i64 %indvars.iv.next252.i, %i.pz
  br i1 %i.qa, label %.lr.ph241.i, label %.thread212.i, !llvm.loop !176

.thread212.i:                                     ; preds = %bb.bi, %bb.cs
  %.9.i = phi i32 [ %.6.ph.i.ph, %bb.cs ], [ %.1120.ph.i.ph, %bb.bi ]
  %.not154.i = icmp eq i32 %.9.i, 0
  br i1 %.not154.i, label %Cec_SeedSimEventUpdateNode.exit, label %bb.ct

bb.ct:                                            ; preds = %.thread212.i
  tail call fastcc void @Cec_SeedSimEventRecordChanged(ptr noundef nonnull %0, i32 noundef %i.ik)
  br label %Cec_SeedSimEventUpdateNode.exit

Cec_SeedSimEventUpdateNode.exit:                  ; preds = %bb.y, %Gia_ObjIsRo.exit.thread.i, %.thread212.i, %bb.ct
  %i.qb = load ptr, ptr %i.cz, align 8, !tbaa !84 ; 2 uses
  %i.qc = getelementptr i8, ptr %i.qb, i64 4      ; 2 uses
  %.val79 = load i32, ptr %i.qc, align 4, !tbaa !18 ; 2 uses
  %i.qd = icmp sgt i32 %.val79, 0
  br i1 %i.qd, label %bb.u, label %.critedge2, !llvm.loop !177

.critedge2:                                       ; preds = %bb.r, %Cec_SeedSimEventUpdateNode.exit, %bb.bf, %bb.bh, %bb.cp, %bb.cr, %.preheader
  %.not78 = phi i1 [ false, %bb.bf ], [ true, %Cec_SeedSimEventUpdateNode.exit ], [ false, %bb.cp ], [ true, %.preheader ], [ false, %bb.cr ], [ false, %bb.bh ], [ false, %bb.r ]
  %.1 = phi i32 [ -1, %bb.bf ], [ 1, %Cec_SeedSimEventUpdateNode.exit ], [ -1, %bb.cp ], [ 1, %.preheader ], [ -1, %bb.cr ], [ -1, %bb.bh ], [ -1, %bb.r ]
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.qf = load <2 x i32>, ptr %i.qe, align 8, !tbaa !26
  %i.qg = load <2 x i32>, ptr %i.fh, align 4, !tbaa !26
  %i.qh = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.qf, <2 x i32> %i.qg)
  store <2 x i32> %i.qh, ptr %i.qe, align 8, !tbaa !26
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 636 ; 2 uses
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !205
  %i.qk = load ptr, ptr %i.fd, align 8, !tbaa !97 ; 2 uses
  %i.ql = getelementptr i8, ptr %i.qk, i64 4      ; 2 uses
  %.val = load i32, ptr %i.ql, align 4, !tbaa !18
  %i.qm = tail call noundef i32 @llvm.smax.i32(i32 %i.qj, i32 %.val)
  store i32 %i.qm, ptr %i.qi, align 4, !tbaa !205
  br i1 %.not78, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %.critedge2
  %i.qn = load ptr, ptr %i.fa, align 8, !tbaa !96 ; 2 uses
  %i.qo = getelementptr i8, ptr %i.qn, i64 4      ; 2 uses
  %.val.i105 = load i32, ptr %i.qo, align 4, !tbaa !18 ; 2 uses
  %i.qp = icmp sgt i32 %.val.i105, 2
  br i1 %i.qp, label %.lr.ph.i107, label %Cec_SeedSimEventRollbackValues.exit

.lr.ph.i107:                                      ; preds = %bb.cu
  %i.qq = getelementptr i8, ptr %i.qn, i64 8
  %.val18.i = load ptr, ptr %i.qq, align 8, !tbaa !25 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !58
  %i.qt = zext nneg i32 %.val.i105 to i64
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cv, %.lr.ph.i107
  %indvars.iv.i108 = phi i64 [ %i.qt, %.lr.ph.i107 ], [ %indvars.iv.next.i109, %bb.cv ] ; 3 uses
  %indvars.iv.next.i109 = add nsw i64 %indvars.iv.i108, -3 ; 2 uses
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %.val18.i, i64 %indvars.iv.next.i109
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !26
  %.fr.i = freeze i32 %i.qv
  %i.qw = getelementptr [4 x i8], ptr %.val18.i, i64 %indvars.iv.i108 ; 2 uses
  %i.qx = getelementptr i8, ptr %i.qw, i64 -8
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !26
  %i.qz = getelementptr i8, ptr %i.qw, i64 -4
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !26
  %i.rb = sext i32 %.fr.i to i64
  %i.rc = load i32, ptr %i.h, align 4, !tbaa !55
  %i.rd = sext i32 %i.rc to i64
  %i.re = mul nsw i64 %i.rd, %i.rb
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.qs, i64 %i.re
  %i.rg = sext i32 %i.qy to i64
  %i.rh = getelementptr inbounds [4 x i8], ptr %i.rf, i64 %i.rg
  store i32 %i.ra, ptr %i.rh, align 4, !tbaa !26
  %i.ri = icmp samesign ugt i64 %indvars.iv.i108, 5
  br i1 %i.ri, label %bb.cv, label %Cec_SeedSimEventRollbackValues.exit, !llvm.loop !178

Cec_SeedSimEventRollbackValues.exit:              ; preds = %bb.cv, %bb.cu
  store i32 0, ptr %i.qo, align 4, !tbaa !18
  store i32 0, ptr %i.ql, align 4, !tbaa !18
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 644 ; 2 uses
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !206
  %i.rl = add nsw i32 %i.rk, 1
  store i32 %i.rl, ptr %i.rj, align 4, !tbaa !206
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.rn = load i32, ptr %i.rm, align 8, !tbaa !207
  %i.ro = add nsw i32 %i.rn, 1
  store i32 %i.ro, ptr %i.rm, align 8, !tbaa !207
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 596 ; 2 uses
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !208
  %i.rr = add nsw i32 %i.rq, 1
  store i32 %i.rr, ptr %i.rp, align 4, !tbaa !208
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.rt = load i32, ptr %i.rs, align 8, !tbaa !122
  %i.ru = add nsw i32 %i.rt, 1
  store i32 %i.ru, ptr %i.rs, align 8, !tbaa !122
  br label %bb.fo

bb.cw:                                            ; preds = %.critedge2
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !90
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 4
  store i32 0, ptr %i.rx, align 4, !tbaa !18
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !91
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 4
  store i32 0, ptr %i.sa, align 4, !tbaa !18
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !92
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 4
  store i32 0, ptr %i.sd, align 4, !tbaa !18
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.sf = load i32, ptr %i.se, align 8, !tbaa !126
  %i.sg = add nsw i32 %i.sf, 1                    ; 2 uses
  store i32 %i.sg, ptr %i.se, align 8, !tbaa !126
  %i.sh = icmp eq i32 %i.sg, 0
  br i1 %i.sh, label %bb.cx, label %Cec_SeedSimTxnBegin.exit

bb.cx:                                            ; preds = %bb.cw
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !73
  %i.sk = load i32, ptr %i.d, align 8, !tbaa !24
  %i.sl = sext i32 %i.sk to i64
  %i.sm = shl nsw i64 %i.sl, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.sj, i8 0, i64 %i.sm, i1 false)
  store i32 1, ptr %i.se, align 8, !tbaa !126
  %.pre = load ptr, ptr %i.fd, align 8, !tbaa !97
  br label %Cec_SeedSimTxnBegin.exit

Cec_SeedSimTxnBegin.exit:                         ; preds = %bb.cw, %bb.cx
  %i.sn = phi ptr [ %i.qk, %bb.cw ], [ %.pre, %bb.cx ] ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %0, i64 524 ; 2 uses
  store i32 1, ptr %i.so, align 4, !tbaa !127
  %i.sp = load ptr, ptr %i.de, align 8, !tbaa !60
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  store ptr %i.sp, ptr %i.sq, align 8, !tbaa !128
  %i.sr = getelementptr i8, ptr %i.sn, i64 4
  %.val42.i = load i32, ptr %i.sr, align 4, !tbaa !18
  %i.ss = getelementptr i8, ptr %i.sn, i64 8
  %.val43.i = load ptr, ptr %i.ss, align 8, !tbaa !25
  %i.st = sext i32 %.val42.i to i64
  tail call void @qsort(ptr noundef %.val43.i, i64 noundef %i.st, i64 noundef 4, ptr noundef nonnull @Vec_IntSortCompare1) #25
  %i.su = load ptr, ptr %i.fd, align 8, !tbaa !97 ; 3 uses
  %i.sv = getelementptr i8, ptr %i.su, i64 4
  %.val3763.i = load i32, ptr %i.sv, align 4, !tbaa !18 ; 2 uses
  %i.sw = icmp sgt i32 %.val3763.i, 0
  br i1 %i.sw, label %.lr.ph67.i, label %Cec_SeedSimEventRefine.exit

.lr.ph67.i:                                       ; preds = %Cec_SeedSimTxnBegin.exit
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 5 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 3 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 4 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 8 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 4 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.cy

bb.cy:                                            ; preds = %Cec_SeedSimRefineFrame.exit.i, %.lr.ph67.i
  %.val3765.i = phi i32 [ %.val3763.i, %.lr.ph67.i ], [ %.val37.i, %Cec_SeedSimRefineFrame.exit.i ] ; 2 uses
  %i.th = phi ptr [ %i.su, %.lr.ph67.i ], [ %i.aqa, %Cec_SeedSimRefineFrame.exit.i ]
  %.03564.i = phi i32 [ 0, %.lr.ph67.i ], [ %.034.lcssa.i, %Cec_SeedSimRefineFrame.exit.i ] ; 3 uses
  %i.ti = getelementptr i8, ptr %i.th, i64 8
  %.val40.i = load ptr, ptr %i.ti, align 8, !tbaa !25 ; 2 uses
  %i.tj = sext i32 %.03564.i to i64               ; 3 uses
  %i.tk = getelementptr inbounds [4 x i8], ptr %.val40.i, i64 %i.tj
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !26
  %i.tm = load i32, ptr %i.d, align 8, !tbaa !24  ; 3 uses
  %i.tn = sdiv i32 %i.tl, %i.tm                   ; 9 uses
  %i.to = sext i32 %.val3765.i to i64
  %6 = add nsw i32 %.03564.i, 1
  %smax.i = tail call i32 @llvm.smax.i32(i32 %.val3765.i, i32 %6)
  br label %bb.cz

bb.cz:                                            ; preds = %bb.da, %bb.cy
  %indvars.iv.i110 = phi i64 [ %i.tj, %bb.cy ], [ %indvars.iv.next.i117, %bb.da ] ; 3 uses
  %i.tp = getelementptr inbounds [4 x i8], ptr %.val40.i, i64 %indvars.iv.i110
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !26
  %i.tr = sdiv i32 %i.tq, %i.tm
  %i.ts = icmp eq i32 %i.tr, %i.tn
  br i1 %i.ts, label %bb.da, label %.critedge.split.loop.exit131.i

bb.da:                                            ; preds = %bb.cz
  %indvars.iv.next.i117 = add nsw i64 %indvars.iv.i110, 1 ; 2 uses
  %i.tt = icmp slt i64 %indvars.iv.next.i117, %i.to
  br i1 %i.tt, label %bb.cz, label %.critedge.i111, !llvm.loop !179

.critedge.split.loop.exit131.i:                   ; preds = %bb.cz
  %i.tu = trunc nsw i64 %indvars.iv.i110 to i32
  br label %.critedge.i111

.critedge.i111:                                   ; preds = %bb.da, %.critedge.split.loop.exit131.i
  %.034.lcssa.i = phi i32 [ %i.tu, %.critedge.split.loop.exit131.i ], [ %smax.i, %bb.da ] ; 4 uses
  %i.tv = load i32, ptr %i.sx, align 8, !tbaa !209
  %i.tw = add nsw i32 %i.tv, 1                    ; 2 uses
  store i32 %i.tw, ptr %i.sx, align 8, !tbaa !209
  %i.tx = icmp eq i32 %i.tw, 0
  br i1 %i.tx, label %bb.db, label %Cec_SeedSimStartRootSet.exit.i

bb.db:                                            ; preds = %.critedge.i111
  %i.ty = load ptr, ptr %i.sy, align 8, !tbaa !72
  %i.tz = sext i32 %i.tm to i64
  %i.ua = shl nsw i64 %i.tz, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ty, i8 0, i64 %i.ua, i1 false)
  store i32 1, ptr %i.sx, align 8, !tbaa !209
  br label %Cec_SeedSimStartRootSet.exit.i

Cec_SeedSimStartRootSet.exit.i:                   ; preds = %bb.db, %.critedge.i111
  %i.ub = load ptr, ptr %i.sz, align 8, !tbaa !85 ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 4
  store i32 0, ptr %i.uc, align 4, !tbaa !18
  %i.ud = load ptr, ptr %i.ta, align 8, !tbaa !86
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 4
  store i32 0, ptr %i.ue, align 4, !tbaa !18
  %i.uf = icmp slt i32 %.03564.i, %.034.lcssa.i
  br i1 %i.uf, label %.lr.ph.preheader.i, label %._crit_edge.i112

.lr.ph.preheader.i:                               ; preds = %Cec_SeedSimStartRootSet.exit.i
  %wide.trip.count.i = sext i32 %.034.lcssa.i to i64
  br label %.lr.ph.i114

.lr.ph.i114:                                      ; preds = %Cec_SeedSimAddRoot.exit.i, %.lr.ph.preheader.i
  %indvars.iv84.i = phi i64 [ %i.tj, %.lr.ph.preheader.i ], [ %indvars.iv.next85.i, %Cec_SeedSimAddRoot.exit.i ] ; 2 uses
  %i.ug = load ptr, ptr %i.fd, align 8, !tbaa !97
  %i.uh = getelementptr i8, ptr %i.ug, i64 8
  %.val38.i115 = load ptr, ptr %i.uh, align 8, !tbaa !25
  %i.ui = getelementptr inbounds [4 x i8], ptr %.val38.i115, i64 %indvars.iv84.i
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !26
  %i.uk = load i32, ptr %i.d, align 8, !tbaa !24
  %i.ul = srem i32 %i.uj, %i.uk                   ; 3 uses
  %i.um = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.un = getelementptr i8, ptr %i.um, i64 192
  %.val41.i = load ptr, ptr %i.un, align 8, !tbaa !46
  %i.uo = sext i32 %i.ul to i64                   ; 4 uses
  %i.up = getelementptr inbounds [4 x i8], ptr %.val41.i, i64 %i.uo
  %i.uq = load i32, ptr %i.up, align 4
  %i.ur = and i32 %i.uq, 268435455                ; 3 uses
  switch i32 %i.ur, label %Gia_ObjIsHead.exit.thread.i.i [
    i32 268435455, label %Gia_ObjIsClass.exit.i
    i32 0, label %bb.dc
  ]

Gia_ObjIsClass.exit.i:                            ; preds = %.lr.ph.i114
  %i.us = getelementptr i8, ptr %i.um, i64 200
  %.val7.i.i = load ptr, ptr %i.us, align 8, !tbaa !47
  %i.ut = getelementptr inbounds [4 x i8], ptr %.val7.i.i, i64 %i.uo
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !26
  %i.uv = icmp slt i32 %i.uu, 1
  br i1 %i.uv, label %Cec_SeedSimAddRoot.exit.i, label %Gia_ObjIsHead.exit.i.i

bb.dc:                                            ; preds = %.lr.ph.i114
  %i.uw = load ptr, ptr %i.sy, align 8, !tbaa !72
  %i.ux = getelementptr inbounds [4 x i8], ptr %i.uw, i64 %i.uo ; 2 uses
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !26
  %i.uz = load i32, ptr %i.sx, align 8, !tbaa !209 ; 2 uses
  %.not30.i.i = icmp eq i32 %i.uy, %i.uz
  br i1 %.not30.i.i, label %Cec_SeedSimAddRoot.exit.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  store i32 %i.uz, ptr %i.ux, align 4, !tbaa !26
  %i.va = load ptr, ptr %i.ta, align 8, !tbaa !86 ; 6 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 4 ; 3 uses
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !18 ; 7 uses
  %i.vd = load i32, ptr %i.va, align 8, !tbaa !48
  %i.ve = icmp eq i32 %i.vc, %i.vd
  br i1 %i.ve, label %bb.de, label %Vec_IntPush.exit.i.i

bb.de:                                            ; preds = %bb.dd
  %i.vf = icmp slt i32 %i.vc, 16
  br i1 %i.vf, label %bb.df, label %bb.di

bb.df:                                            ; preds = %bb.de
  %i.vg = getelementptr inbounds nuw i8, ptr %i.va, i64 8 ; 2 uses
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.vh, null
  br i1 %.not9.i.i.i.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.vi = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.vh, i64 noundef 64) #22
  br label %Vec_IntGrow.exit.i.i.i

bb.dh:                                            ; preds = %bb.df
  %i.vj = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %bb.dh, %bb.dg
  %i.vk = phi ptr [ %i.vi, %bb.dg ], [ %i.vj, %bb.dh ]
  store ptr %i.vk, ptr %i.vg, align 8, !tbaa !25
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

bb.di:                                            ; preds = %bb.de
  %i.vl = icmp samesign ult i32 %i.vc, 1073741823
  %i.vm = shl nuw nsw i32 %i.vc, 1
  %spec.select.i.i.i = select i1 %i.vl, i32 %i.vm, i32 2147483647 ; 3 uses
  %.not.i9.i.i.i = icmp samesign ult i32 %i.vc, %spec.select.i.i.i
  br i1 %.not.i9.i.i.i, label %bb.dj, label %Vec_IntPush.exit.i.i

bb.dj:                                            ; preds = %bb.di
  %i.vn = getelementptr inbounds nuw i8, ptr %i.va, i64 8 ; 2 uses
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !25 ; 2 uses
  %.not9.i10.i.i.i = icmp eq ptr %i.vo, null
  %i.vp = zext nneg i32 %spec.select.i.i.i to i64
  %i.vq = shl nuw nsw i64 %i.vp, 2                ; 2 uses
  br i1 %.not9.i10.i.i.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.vr = tail call ptr @realloc(ptr noundef nonnull %i.vo, i64 noundef %i.vq) #22
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dj
  %i.vs = tail call noalias ptr @malloc(i64 noundef %i.vq) #23
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.vt = phi ptr [ %i.vr, %bb.dk ], [ %i.vs, %bb.dl ]
  store ptr %i.vt, ptr %i.vn, align 8, !tbaa !25
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

Vec_IntGrow.exit11.sink.split.i.i.i:              ; preds = %bb.dm, %Vec_IntGrow.exit.i.i.i
  %spec.select.sink.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.dm ], [ 16, %Vec_IntGrow.exit.i.i.i ]
  store i32 %spec.select.sink.i.i.i, ptr %i.va, align 8, !tbaa !48
  %.pre.i.i = load i32, ptr %i.vb, align 4, !tbaa !18
  br label %Vec_IntPush.exit.i.i

Vec_IntPush.exit.i.i:                             ; preds = %Vec_IntGrow.exit11.sink.split.i.i.i, %bb.di, %bb.dd
  %i.vu = phi i32 [ %i.vc, %bb.dd ], [ %i.vc, %bb.di ], [ %.pre.i.i, %Vec_IntGrow.exit11.sink.split.i.i.i ] ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !25
  %i.vx = add nsw i32 %i.vu, 1
  store i32 %i.vx, ptr %i.vb, align 4, !tbaa !18
  br label %.sink.split.i.i

Gia_ObjIsHead.exit.thread.i.i:                    ; preds = %.lr.ph.i114
  %.pre42.i.i = zext nneg i32 %i.ur to i64
  br label %Gia_ObjIsHead.exit.i.i

Gia_ObjIsHead.exit.i.i:                           ; preds = %Gia_ObjIsHead.exit.thread.i.i, %Gia_ObjIsClass.exit.i
  %.pre-phi.i.i = phi i64 [ %.pre42.i.i, %Gia_ObjIsHead.exit.thread.i.i ], [ %i.uo, %Gia_ObjIsClass.exit.i ]
  %i.vy = phi i32 [ %i.ur, %Gia_ObjIsHead.exit.thread.i.i ], [ %i.ul, %Gia_ObjIsClass.exit.i ]
  %i.vz = load ptr, ptr %i.sy, align 8, !tbaa !72
  %i.wa = getelementptr inbounds [4 x i8], ptr %i.vz, i64 %.pre-phi.i.i ; 2 uses
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !26
  %i.wc = load i32, ptr %i.sx, align 8, !tbaa !209 ; 2 uses
  %.not29.i.i = icmp eq i32 %i.wb, %i.wc
  br i1 %.not29.i.i, label %Cec_SeedSimAddRoot.exit.i, label %bb.dn

bb.dn:                                            ; preds = %Gia_ObjIsHead.exit.i.i
  store i32 %i.wc, ptr %i.wa, align 4, !tbaa !26
  %i.wd = load ptr, ptr %i.sz, align 8, !tbaa !85 ; 6 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 4 ; 3 uses
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !18 ; 7 uses
  %i.wg = load i32, ptr %i.wd, align 8, !tbaa !48
  %i.wh = icmp eq i32 %i.wf, %i.wg
  br i1 %i.wh, label %bb.do, label %Vec_IntPush.exit39.i.i

bb.do:                                            ; preds = %bb.dn
  %i.wi = icmp slt i32 %i.wf, 16
  br i1 %i.wi, label %bb.dp, label %bb.ds

bb.dp:                                            ; preds = %bb.do
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wd, i64 8 ; 2 uses
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i37.i.i = icmp eq ptr %i.wk, null
  br i1 %.not9.i.i37.i.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.wl = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.wk, i64 noundef 64) #22
  br label %Vec_IntGrow.exit.i38.i.i

bb.dr:                                            ; preds = %bb.dp
  %i.wm = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i38.i.i

Vec_IntGrow.exit.i38.i.i:                         ; preds = %bb.dr, %bb.dq
  %i.wn = phi ptr [ %i.wl, %bb.dq ], [ %i.wm, %bb.dr ]
  store ptr %i.wn, ptr %i.wj, align 8, !tbaa !25
  br label %Vec_IntGrow.exit11.sink.split.i35.i.i

bb.ds:                                            ; preds = %bb.do
  %i.wo = icmp samesign ult i32 %i.wf, 1073741823
  %i.wp = shl nuw nsw i32 %i.wf, 1
  %spec.select.i32.i.i = select i1 %i.wo, i32 %i.wp, i32 2147483647 ; 3 uses
  %.not.i9.i33.i.i = icmp samesign ult i32 %i.wf, %spec.select.i32.i.i
  br i1 %.not.i9.i33.i.i, label %bb.dt, label %Vec_IntPush.exit39.i.i

bb.dt:                                            ; preds = %bb.ds
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wd, i64 8 ; 2 uses
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !25 ; 2 uses
  %.not9.i10.i34.i.i = icmp eq ptr %i.wr, null
  %i.ws = zext nneg i32 %spec.select.i32.i.i to i64
  %i.wt = shl nuw nsw i64 %i.ws, 2                ; 2 uses
  br i1 %.not9.i10.i34.i.i, label %bb.dv, label %bb.du

end_hunk_0
