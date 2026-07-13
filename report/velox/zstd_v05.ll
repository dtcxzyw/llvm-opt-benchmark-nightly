inline.NumInlined: 338
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@ZSTDv05_decompressBlock_internal:bb.a
BITv05_initDStream.exit.thread167.i:              ; preds = %bb.bv
  %i.rf = zext i8 %i.rd to i32
  %i.rg = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.rf, i1 true)
  %i.rh = trunc nuw nsw i64 %gepdiff.i to i32
  %i.ri = shl nuw nsw i32 %i.rh, 3
  %reass.sub = sub nsw i32 %i.rg, %i.ri
  %i.rj = add nsw i32 %reass.sub, 41
  br label %bb.bw

BITv05_initDStream.exit.i:                        ; preds = %bb.bn
  %i.rk = getelementptr inbounds i8, ptr %i.gm, i64 -8 ; 2 uses
  %.val.i.i = load i64, ptr %i.rk, align 1, !tbaa !28
  %i.rl = zext i8 %i.pp to i32
  %i.rm = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.rl, i1 true)
  %i.rn = xor i32 %i.rm, 31
  %i.ro = sub nuw nsw i32 8, %i.rn
  %i.rp = icmp ult i64 %gepdiff.i, -119
  br i1 %i.rp, label %bb.bw, label %ZSTDv05_decompressSequences.exit

bb.bw:                                            ; preds = %BITv05_initDStream.exit.i, %BITv05_initDStream.exit.thread167.i
  %.sroa.42111.1176.i = phi ptr [ %i.pl, %BITv05_initDStream.exit.thread167.i ], [ %i.rk, %BITv05_initDStream.exit.i ] ; 6 uses
  %.sroa.20.1175.i = phi i32 [ %i.rj, %BITv05_initDStream.exit.thread167.i ], [ %i.ro, %BITv05_initDStream.exit.i ] ; 2 uses
  %.sroa.0.2174.i = phi i64 [ %.sroa.0.1.i, %BITv05_initDStream.exit.thread167.i ], [ %.val.i.i, %BITv05_initDStream.exit.i ] ; 3 uses
  %i.rq = load i16, ptr %0, align 8, !tbaa !23
  %i.rr = zext i16 %i.rq to i32                   ; 2 uses
  %i.rs = and i32 %.sroa.20.1175.i, 63
  %i.rt = zext nneg i32 %i.rs to i64
  %i.ru = shl i64 %.sroa.0.2174.i, %i.rt
  %i.rv = lshr i64 %i.ru, 1
  %i.rw = and i32 %i.rr, 63
  %i.rx = xor i32 %i.rw, 63
  %i.ry = zext nneg i32 %i.rx to i64
  %i.rz = lshr i64 %i.rv, %i.ry
  %i.sa = add nuw nsw i32 %.sroa.20.1175.i, %i.rr ; 7 uses
  %i.sb = icmp samesign ugt i32 %i.sa, 64
  br i1 %i.sb, label %FSEv05_initDState.exit.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.sc = getelementptr inbounds nuw i8, ptr %i.pl, i64 8
  %.not.i.i.i = icmp ult ptr %.sroa.42111.1176.i, %i.sc
  br i1 %.not.i.i.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.sd = lshr i32 %i.sa, 3
  %i.se = and i32 %i.sa, 7
  br label %BITv05_reloadDStream.exit.sink.split.i.i

bb.bz:                                            ; preds = %bb.bx
  %i.sf = icmp eq ptr %.sroa.42111.1176.i, %.8.i.i
  br i1 %i.sf, label %FSEv05_initDState.exit.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.sg = lshr i32 %i.sa, 3                       ; 2 uses
  %i.sh = zext nneg i32 %i.sg to i64
  %i.si = sub nsw i64 0, %i.sh
  %i.sj = getelementptr inbounds i8, ptr %.sroa.42111.1176.i, i64 %i.si
  %i.sk = icmp ult ptr %i.sj, %.8.i.i
  %i.sl = ptrtoint ptr %.sroa.42111.1176.i to i64
  %i.sm = sub i64 %i.sl, %i.ph
  %i.sn = trunc i64 %i.sm to i32
  %.024.i.i.i = select i1 %i.sk, i32 %i.sn, i32 %i.sg ; 2 uses
  %i.so = shl i32 %.024.i.i.i, 3
  %i.sp = sub i32 %i.sa, %i.so
  br label %BITv05_reloadDStream.exit.sink.split.i.i

BITv05_reloadDStream.exit.sink.split.i.i:         ; preds = %bb.ca, %bb.by
  %.sroa.20.2.i = phi i32 [ %i.sp, %bb.ca ], [ %i.se, %bb.by ]
  %.pn198.in.i = phi i32 [ %.024.i.i.i, %bb.ca ], [ %i.sd, %bb.by ]
  %.pn198.i = zext i32 %.pn198.in.i to i64
  %.pn.i = sub nsw i64 0, %.pn198.i
  %.sroa.42111.2.i = getelementptr inbounds i8, ptr %.sroa.42111.1176.i, i64 %.pn.i ; 2 uses
  %.val30.i.sink.i.i = load i64, ptr %.sroa.42111.2.i, align 1, !tbaa !28
  br label %FSEv05_initDState.exit.i

FSEv05_initDState.exit.i:                         ; preds = %BITv05_reloadDStream.exit.sink.split.i.i, %bb.bz, %bb.bw
  %.sroa.0.3.i = phi i64 [ %.sroa.0.2174.i, %bb.bw ], [ %.sroa.0.2174.i, %bb.bz ], [ %.val30.i.sink.i.i, %BITv05_reloadDStream.exit.sink.split.i.i ] ; 3 uses
  %.sroa.20.3.i = phi i32 [ %i.sa, %bb.bw ], [ %i.sa, %bb.bz ], [ %.sroa.20.2.i, %BITv05_reloadDStream.exit.sink.split.i.i ] ; 2 uses
  %.sroa.42111.3.i = phi ptr [ %.sroa.42111.1176.i, %bb.bw ], [ %.8.i.i, %bb.bz ], [ %.sroa.42111.2.i, %BITv05_reloadDStream.exit.sink.split.i.i ] ; 7 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.sr = load i16, ptr %i.gd, align 4, !tbaa !23
  %i.ss = zext i16 %i.sr to i32                   ; 2 uses
  %i.st = and i32 %.sroa.20.3.i, 63
  %i.su = zext nneg i32 %i.st to i64
  %i.sv = shl i64 %.sroa.0.3.i, %i.su
  %i.sw = lshr i64 %i.sv, 1
  %i.sx = and i32 %i.ss, 63
  %i.sy = xor i32 %i.sx, 63
  %i.sz = zext nneg i32 %i.sy to i64
  %i.ta = lshr i64 %i.sw, %i.sz
  %i.tb = add i32 %.sroa.20.3.i, %i.ss            ; 7 uses
  %i.tc = icmp ugt i32 %i.tb, 64
  br i1 %i.tc, label %FSEv05_initDState.exit84.i, label %bb.cb

bb.cb:                                            ; preds = %FSEv05_initDState.exit.i
  %i.td = getelementptr inbounds nuw i8, ptr %i.pl, i64 8
  %.not.i.i79.i = icmp ult ptr %.sroa.42111.3.i, %i.td
  br i1 %.not.i.i79.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.te = lshr i32 %i.tb, 3
  %i.tf = and i32 %i.tb, 7
  br label %BITv05_reloadDStream.exit.sink.split.i80.i

bb.cd:                                            ; preds = %bb.cb
  %i.tg = icmp eq ptr %.sroa.42111.3.i, %.8.i.i
  br i1 %i.tg, label %FSEv05_initDState.exit84.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.th = lshr i32 %i.tb, 3                       ; 2 uses
  %i.ti = zext nneg i32 %i.th to i64
  %i.tj = sub nsw i64 0, %i.ti
  %i.tk = getelementptr inbounds i8, ptr %.sroa.42111.3.i, i64 %i.tj
  %i.tl = icmp ult ptr %i.tk, %.8.i.i
  %i.tm = ptrtoint ptr %.sroa.42111.3.i to i64
  %i.tn = sub i64 %i.tm, %i.ph
  %i.to = trunc i64 %i.tn to i32
  %.024.i.i83.i = select i1 %i.tl, i32 %i.to, i32 %i.th ; 2 uses
  %i.tp = shl i32 %.024.i.i83.i, 3
  %i.tq = sub i32 %i.tb, %i.tp
  br label %BITv05_reloadDStream.exit.sink.split.i80.i

BITv05_reloadDStream.exit.sink.split.i80.i:       ; preds = %bb.ce, %bb.cc
  %.sroa.20.4.i = phi i32 [ %i.tq, %bb.ce ], [ %i.tf, %bb.cc ]
  %.pn200.in.i = phi i32 [ %.024.i.i83.i, %bb.ce ], [ %i.te, %bb.cc ]
  %.pn200.i = zext i32 %.pn200.in.i to i64
  %.pn199.i = sub nsw i64 0, %.pn200.i
  %.sroa.42111.4.i = getelementptr inbounds i8, ptr %.sroa.42111.3.i, i64 %.pn199.i ; 2 uses
  %.val30.i.sink.i82.i = load i64, ptr %.sroa.42111.4.i, align 1, !tbaa !28
  br label %FSEv05_initDState.exit84.i

FSEv05_initDState.exit84.i:                       ; preds = %BITv05_reloadDStream.exit.sink.split.i80.i, %bb.cd, %FSEv05_initDState.exit.i
  %.sroa.0.4.i = phi i64 [ %.sroa.0.3.i, %FSEv05_initDState.exit.i ], [ %.sroa.0.3.i, %bb.cd ], [ %.val30.i.sink.i82.i, %BITv05_reloadDStream.exit.sink.split.i80.i ] ; 2 uses
  %.sroa.20.5.i = phi i32 [ %i.tb, %FSEv05_initDState.exit.i ], [ %i.tb, %bb.cd ], [ %.sroa.20.4.i, %BITv05_reloadDStream.exit.sink.split.i80.i ] ; 2 uses
  %.sroa.42111.5.i = phi ptr [ %.sroa.42111.3.i, %FSEv05_initDState.exit.i ], [ %.sroa.42111.3.i, %bb.cd ], [ %.sroa.42111.4.i, %BITv05_reloadDStream.exit.sink.split.i80.i ] ; 7 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 4104
  %i.ts = load i16, ptr %i.gc, align 8, !tbaa !23
  %i.tt = zext i16 %i.ts to i32                   ; 2 uses
  %i.tu = and i32 %.sroa.20.5.i, 63
  %i.tv = zext nneg i32 %i.tu to i64
  %i.tw = shl i64 %.sroa.0.4.i, %i.tv
  %i.tx = lshr i64 %i.tw, 1
  %i.ty = and i32 %i.tt, 63
  %i.tz = xor i32 %i.ty, 63
  %i.ua = zext nneg i32 %i.tz to i64
  %i.ub = lshr i64 %i.tx, %i.ua
  %i.uc = add i32 %.sroa.20.5.i, %i.tt            ; 6 uses
  %i.ud = icmp ugt i32 %i.uc, 64
  br i1 %i.ud, label %ZSTDv05_decompressSequences.exit, label %bb.cf

bb.cf:                                            ; preds = %FSEv05_initDState.exit84.i
  %i.ue = getelementptr inbounds nuw i8, ptr %i.pl, i64 8 ; 2 uses
  %.not.i.i87.i = icmp ult ptr %.sroa.42111.5.i, %i.ue
  br i1 %.not.i.i87.i, label %bb.cg, label %FSEv05_initDState.exit92.thread280.i

FSEv05_initDState.exit92.thread280.i:             ; preds = %bb.cf
  %i.uf = lshr i32 %i.uc, 3
  %i.ug = and i32 %i.uc, 7
  %.pn202283.i = zext nneg i32 %i.uf to i64
  %.pn201284.i = sub nsw i64 0, %.pn202283.i
  %.sroa.42111.6285.i = getelementptr inbounds i8, ptr %.sroa.42111.5.i, i64 %.pn201284.i ; 2 uses
  %.val30.i.sink.i90286.i = load i64, ptr %.sroa.42111.6285.i, align 1, !tbaa !28
  br label %.lr.ph.i

bb.cg:                                            ; preds = %bb.cf
  %i.uh = icmp eq ptr %.sroa.42111.5.i, %.8.i.i
  br i1 %i.uh, label %.lr.ph.i, label %FSEv05_initDState.exit92.i

FSEv05_initDState.exit92.i:                       ; preds = %bb.cg
  %i.ui = lshr i32 %i.uc, 3                       ; 2 uses
  %i.uj = zext nneg i32 %i.ui to i64
  %i.uk = sub nsw i64 0, %i.uj
  %i.ul = getelementptr inbounds i8, ptr %.sroa.42111.5.i, i64 %i.uk
  %i.um = icmp ult ptr %i.ul, %.8.i.i
  %i.un = ptrtoint ptr %.sroa.42111.5.i to i64
  %i.uo = sub i64 %i.un, %i.ph
  %i.up = trunc i64 %i.uo to i32
  %.024.i.i91.i = select i1 %i.um, i32 %i.up, i32 %i.ui ; 2 uses
  %i.uq = shl i32 %.024.i.i91.i, 3
  %i.ur = sub i32 %i.uc, %i.uq                    ; 2 uses
  %.pn202.i = zext i32 %.024.i.i91.i to i64
  %.pn201.i = sub nsw i64 0, %.pn202.i
  %.sroa.42111.6.i = getelementptr inbounds i8, ptr %.sroa.42111.5.i, i64 %.pn201.i ; 2 uses
  %.val30.i.sink.i90.i = load i64, ptr %.sroa.42111.6.i, align 1, !tbaa !28
  %i.us = icmp ugt i32 %i.ur, 64
  br i1 %i.us, label %ZSTDv05_decompressSequences.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cg, %FSEv05_initDState.exit92.i, %FSEv05_initDState.exit92.thread280.i
  %.sroa.42111.7279.i = phi ptr [ %.sroa.42111.6285.i, %FSEv05_initDState.exit92.thread280.i ], [ %.sroa.42111.6.i, %FSEv05_initDState.exit92.i ], [ %.sroa.42111.5.i, %bb.cg ]
  %.sroa.20.7278.i = phi i32 [ %i.ug, %FSEv05_initDState.exit92.thread280.i ], [ %i.ur, %FSEv05_initDState.exit92.i ], [ %i.uc, %bb.cg ]
  %.sroa.0.5277.i = phi i64 [ %.val30.i.sink.i90286.i, %FSEv05_initDState.exit92.thread280.i ], [ %.val30.i.sink.i90.i, %FSEv05_initDState.exit92.i ], [ %.sroa.0.4.i, %bb.cg ]
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 6156
  %i.uu = getelementptr inbounds i8, ptr %i.ia, i64 -1 ; 2 uses
  %i.uv = getelementptr i8, ptr %i.ga, i64 -8     ; 6 uses
  %i.uw = ptrtoint ptr %i.ga to i64
  %i.ux = ptrtoint ptr %i.gb to i64
  %i.uy = ptrtoint ptr %i.gf to i64               ; 16 uses
  %i.uz = ptrtoint ptr %i.gh to i64
  %i.va = getelementptr inbounds i8, ptr %i.ga, i64 -12
  %i.vb = ptrtoint ptr %i.uv to i64               ; 3 uses
  %i.vc = add i64 %2, %i.a
  %i.vd = add i64 %i.vc, -8
  %i.ve = add i64 %i.uy, 8
  %i.vf = add i64 %i.uy, 8
  %i.vg = add i64 %i.uy, 1
  %i.vh = add i64 %i.uy, 16
  %i.vi = add i64 %i.uy, 16
  br label %bb.ch

BITv05_reloadDStream.exit.thread.i:               ; preds = %ZSTDv05_execSequence.exit.i
  %i.vj = icmp eq i32 %i.wd, 0
  br i1 %i.vj, label %.critedge.i, label %ZSTDv05_decompressSequences.exit

bb.ch:                                            ; preds = %ZSTDv05_execSequence.exit.i, %.lr.ph.i
  %.062222.i = phi ptr [ %1, %.lr.ph.i ], [ %i.zs, %ZSTDv05_execSequence.exit.i ] ; 7 uses
  %.sroa.61.0221.i = phi i64 [ %i.rz, %.lr.ph.i ], [ %i.yb, %ZSTDv05_execSequence.exit.i ]
  %.sroa.66.0220.i = phi i64 [ %i.ta, %.lr.ph.i ], [ %i.xp, %ZSTDv05_execSequence.exit.i ]
  %.sroa.71.0219.i = phi i64 [ %i.ub, %.lr.ph.i ], [ %i.yo, %ZSTDv05_execSequence.exit.i ]
  %.0133218.i = phi ptr [ %i.fx, %.lr.ph.i ], [ %i.zt, %ZSTDv05_execSequence.exit.i ] ; 6 uses
  %.sroa.79.0217.i = phi ptr [ %.195.i.i, %.lr.ph.i ], [ %.8.i99.i, %ZSTDv05_execSequence.exit.i ] ; 5 uses
  %.0137216.i = phi i32 [ %.1138.i, %.lr.ph.i ], [ %i.wd, %ZSTDv05_execSequence.exit.i ] ; 2 uses
  %.sroa.76.0215.i = phi i64 [ 1, %.lr.ph.i ], [ %spec.select.i, %ZSTDv05_execSequence.exit.i ] ; 2 uses
  %.sroa.42111.0214.i = phi ptr [ %.sroa.42111.7279.i, %.lr.ph.i ], [ %.sroa.42111.8.i, %ZSTDv05_execSequence.exit.i ] ; 7 uses
  %.sroa.20.0213.i = phi i32 [ %.sroa.20.7278.i, %.lr.ph.i ], [ %i.ym, %ZSTDv05_execSequence.exit.i ] ; 5 uses
  %.sroa.0.0212.i = phi i64 [ %.sroa.0.5277.i, %.lr.ph.i ], [ %.sroa.0.6.i, %ZSTDv05_execSequence.exit.i ]
  %.sroa.6.0211.i = phi i64 [ 1, %.lr.ph.i ], [ %.074.i.i, %ZSTDv05_execSequence.exit.i ] ; 2 uses
  %.not.i93.i = icmp ult ptr %.sroa.42111.0214.i, %i.ue
  br i1 %.not.i93.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.vk = lshr i32 %.sroa.20.0213.i, 3
  %i.vl = zext nneg i32 %i.vk to i64
  %i.vm = sub nsw i64 0, %i.vl
  %i.vn = getelementptr inbounds i8, ptr %.sroa.42111.0214.i, i64 %i.vm ; 2 uses
  %i.vo = and i32 %.sroa.20.0213.i, 7
  %.val30.i.i = load i64, ptr %i.vn, align 1, !tbaa !28
  br label %BITv05_reloadDStream.exit.i

bb.cj:                                            ; preds = %bb.ch
  %i.vp = icmp eq ptr %.sroa.42111.0214.i, %.8.i.i
  br i1 %i.vp, label %BITv05_reloadDStream.exit.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.vq = lshr i32 %.sroa.20.0213.i, 3            ; 2 uses
  %i.vr = zext nneg i32 %i.vq to i64
  %i.vs = sub nsw i64 0, %i.vr
  %i.vt = getelementptr inbounds i8, ptr %.sroa.42111.0214.i, i64 %i.vs
  %i.vu = icmp ult ptr %i.vt, %.8.i.i
  %i.vv = ptrtoint ptr %.sroa.42111.0214.i to i64
  %i.vw = sub i64 %i.vv, %i.ph
  %i.vx = trunc i64 %i.vw to i32
  %.024.i.i = select i1 %i.vu, i32 %i.vx, i32 %i.vq ; 2 uses
  %i.vy = zext i32 %.024.i.i to i64
  %i.vz = sub nsw i64 0, %i.vy
  %i.wa = getelementptr inbounds i8, ptr %.sroa.42111.0214.i, i64 %i.vz ; 2 uses
  %i.wb = shl i32 %.024.i.i, 3
  %i.wc = sub i32 %.sroa.20.0213.i, %i.wb
  %.val.i94.i = load i64, ptr %i.wa, align 1, !tbaa !28
  br label %BITv05_reloadDStream.exit.i

BITv05_reloadDStream.exit.i:                      ; preds = %bb.ck, %bb.cj, %bb.ci
  %.sroa.0.6.i = phi i64 [ %.val30.i.i, %bb.ci ], [ %.val.i94.i, %bb.ck ], [ %.sroa.0.0212.i, %bb.cj ] ; 5 uses
  %.sroa.20.8.i = phi i32 [ %i.vo, %bb.ci ], [ %i.wc, %bb.ck ], [ %.sroa.20.0213.i, %bb.cj ] ; 2 uses
  %.sroa.42111.8.i = phi ptr [ %i.vn, %bb.ci ], [ %i.wa, %bb.ck ], [ %.sroa.42111.0214.i, %bb.cj ]
  %.not.i17 = icmp eq i32 %.0137216.i, 0
  br i1 %.not.i17, label %.critedge.i, label %bb.cl

bb.cl:                                            ; preds = %BITv05_reloadDStream.exit.i
  %i.wd = add nsw i32 %.0137216.i, -1             ; 2 uses
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.sq, i64 %.sroa.61.0221.i ; 3 uses
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.we, i64 2
  %.sroa.3.0.copyload.i.i.i = load i8, ptr %.sroa.3.0..sroa_idx.i.i.i, align 2, !tbaa !27 ; 3 uses
  %i.wf = zext i8 %.sroa.3.0.copyload.i.i.i to i64
  %.not.i95.i = icmp eq i8 %.sroa.3.0.copyload.i.i.i, 0
  %.sroa.speculated.i = select i1 %.not.i95.i, i64 %.sroa.76.0215.i, i64 %.sroa.6.0211.i
  %i.wg = icmp eq i8 %.sroa.3.0.copyload.i.i.i, 63
  br i1 %i.wg, label %bb.cm, label %bb.ct

bb.cm:                                            ; preds = %bb.cl
  %i.wh = getelementptr inbounds nuw i8, ptr %.sroa.79.0217.i, i64 1 ; 3 uses
  %i.wi = load i8, ptr %.sroa.79.0217.i, align 1, !tbaa !27 ; 2 uses
  %.not93.i.i = icmp eq i8 %i.wi, -1
  br i1 %.not93.i.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.wj = zext i8 %i.wi to i64
  %i.wk = add nuw nsw i64 %i.wj, 63
  br label %bb.cs

bb.co:                                            ; preds = %bb.cm
  %i.wl = getelementptr inbounds nuw i8, ptr %.sroa.79.0217.i, i64 3 ; 4 uses
  %.not94.i.i = icmp ugt ptr %i.wl, %i.ia
  br i1 %.not94.i.i, label %bb.cs, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %.val.i101.i = load i16, ptr %i.wh, align 1, !tbaa !7 ; 2 uses
  %i.wm = zext i16 %.val.i101.i to i64            ; 2 uses
  %.not95.i.i = trunc i16 %.val.i101.i to i1
  %i.wn = icmp ult ptr %i.wl, %i.ia
  %or.cond.i.i = and i1 %i.wn, %.not95.i.i
  br i1 %or.cond.i.i, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.wo = load i8, ptr %i.wl, align 1, !tbaa !27
  %i.wp = zext i8 %i.wo to i64
  %i.wq = shl nuw nsw i64 %i.wp, 16
  %i.wr = or disjoint i64 %i.wq, %i.wm
  %i.ws = getelementptr inbounds nuw i8, ptr %.sroa.79.0217.i, i64 4
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.078.i.i = phi ptr [ %i.ws, %bb.cq ], [ %i.wl, %bb.cp ]
  %.0.i102.i = phi i64 [ %i.wr, %bb.cq ], [ %i.wm, %bb.cp ]
  %i.wt = lshr i64 %.0.i102.i, 1
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.co, %bb.cn
  %.179.i.i = phi ptr [ %i.wh, %bb.cn ], [ %.078.i.i, %bb.cr ], [ %i.wh, %bb.co ] ; 2 uses
  %.1.i.i = phi i64 [ %i.wk, %bb.cn ], [ %i.wt, %bb.cr ], [ 63, %bb.co ]
  %.not96.i.i = icmp ult ptr %.179.i.i, %i.ia
  %spec.select.i.i = select i1 %.not96.i.i, ptr %.179.i.i, ptr %i.uu
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cl
  %.3.i.i = phi ptr [ %spec.select.i.i, %bb.cs ], [ %.sroa.79.0217.i, %bb.cl ] ; 7 uses
  %.2.i96.i = phi i64 [ %.1.i.i, %bb.cs ], [ %i.wf, %bb.cl ] ; 11 uses
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %.sroa.66.0220.i ; 3 uses
  %.sroa.3.0..sroa_idx.i109.i.i = getelementptr inbounds nuw i8, ptr %i.wu, i64 2
  %.sroa.3.0.copyload.i110.i.i = load i8, ptr %.sroa.3.0..sroa_idx.i109.i.i, align 2, !tbaa !27 ; 3 uses
  %i.wv = zext i8 %.sroa.3.0.copyload.i110.i.i to i32 ; 2 uses
  %i.ww = add nsw i32 %i.wv, -1
  %i.wx = icmp eq i8 %.sroa.3.0.copyload.i110.i.i, 0 ; 2 uses
  %spec.store.select.i.i = select i1 %i.wx, i32 0, i32 %i.ww ; 2 uses
  %i.wy = zext i8 %.sroa.3.0.copyload.i110.i.i to i64
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv05_decodeSequence.offsetPrefix, i64 %i.wy
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !3
  %i.xb = add i32 %spec.store.select.i.i, %.sroa.20.8.i ; 2 uses
  %.not97.i.i = icmp eq i64 %.2.i96.i, 0
  %i.xc = zext i1 %.not97.i.i to i32
  %i.xd = or i32 %i.wv, %i.xc
  %.not98.i.i = icmp eq i32 %i.xd, 0
  %spec.select.i = select i1 %.not98.i.i, i64 %.sroa.76.0215.i, i64 %.sroa.6.0211.i
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.wu, align 2, !tbaa !7
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.wu, i64 3
  %.sroa.5.0.copyload.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i.i, align 1, !tbaa !27
  %i.xe = zext i8 %.sroa.5.0.copyload.i.i.i to i32 ; 2 uses
  %i.xf = and i32 %i.xb, 63
  %i.xg = zext nneg i32 %i.xf to i64
  %i.xh = shl i64 %.sroa.0.6.i, %i.xg
  %i.xi = lshr i64 %i.xh, 1
  %i.xj = and i32 %i.xe, 63
  %i.xk = xor i32 %i.xj, 63
  %i.xl = zext nneg i32 %i.xk to i64
  %i.xm = lshr i64 %i.xi, %i.xl
  %i.xn = add i32 %i.xb, %i.xe                    ; 2 uses
  %i.xo = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.xp = add nuw i64 %i.xm, %i.xo
  %.sroa.0.0.copyload.i111.i.i = load i16, ptr %i.we, align 2, !tbaa !7
  %.sroa.5.0..sroa_idx.i114.i.i = getelementptr inbounds nuw i8, ptr %i.we, i64 3
  %.sroa.5.0.copyload.i115.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i114.i.i, align 1, !tbaa !27
  %i.xq = zext i8 %.sroa.5.0.copyload.i115.i.i to i32 ; 2 uses
  %i.xr = and i32 %i.xn, 63
  %i.xs = zext nneg i32 %i.xr to i64
  %i.xt = shl i64 %.sroa.0.6.i, %i.xs
  %i.xu = lshr i64 %i.xt, 1
  %i.xv = and i32 %i.xq, 63
  %i.xw = xor i32 %i.xv, 63
  %i.xx = zext nneg i32 %i.xw to i64
  %i.xy = lshr i64 %i.xu, %i.xx
  %i.xz = add i32 %i.xn, %i.xq                    ; 2 uses
  %i.ya = zext i16 %.sroa.0.0.copyload.i111.i.i to i64
  %i.yb = add nuw i64 %i.xy, %i.ya
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.ut, i64 %.sroa.71.0219.i ; 3 uses
  %.sroa.0.0.copyload.i118.i.i = load i16, ptr %i.yc, align 2, !tbaa !7
  %.sroa.4.0..sroa_idx.i119.i.i = getelementptr inbounds nuw i8, ptr %i.yc, i64 2
  %.sroa.4.0.copyload.i120.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i119.i.i, align 2, !tbaa !27 ; 2 uses
  %.sroa.5.0..sroa_idx.i121.i.i = getelementptr inbounds nuw i8, ptr %i.yc, i64 3
  %.sroa.5.0.copyload.i122.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i121.i.i, align 1, !tbaa !27
  %i.yd = zext i8 %.sroa.5.0.copyload.i122.i.i to i32 ; 2 uses
  %i.ye = and i32 %i.xz, 63
  %i.yf = zext nneg i32 %i.ye to i64
  %i.yg = shl i64 %.sroa.0.6.i, %i.yf
  %i.yh = lshr i64 %i.yg, 1
  %i.yi = and i32 %i.yd, 63
  %i.yj = xor i32 %i.yi, 63
  %i.yk = zext nneg i32 %i.yj to i64
  %i.yl = lshr i64 %i.yh, %i.yk
  %i.ym = add i32 %i.xz, %i.yd                    ; 2 uses
  %i.yn = zext i16 %.sroa.0.0.copyload.i118.i.i to i64
  %i.yo = add nuw i64 %i.yl, %i.yn
  %i.yp = zext i8 %.sroa.4.0.copyload.i120.i.i to i64
  %i.yq = icmp eq i8 %.sroa.4.0.copyload.i120.i.i, 127
  br i1 %i.yq, label %bb.cu, label %ZSTDv05_decodeSequence.exit.i

bb.cu:                                            ; preds = %bb.ct
  %i.yr = icmp ult ptr %.3.i.i, %i.ia
  br i1 %i.yr, label %bb.cv, label %.thread.i100.i

bb.cv:                                            ; preds = %bb.cu
  %i.ys = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 1 ; 3 uses
  %i.yt = load i8, ptr %.3.i.i, align 1, !tbaa !27 ; 2 uses
  %i.yu = zext i8 %i.yt to i64
  %.not99.i.i = icmp eq i8 %i.yt, -1
  br i1 %.not99.i.i, label %bb.cw, label %.thread.i100.i

.thread.i100.i:                                   ; preds = %bb.cv, %bb.cu
  %i.yv = phi i64 [ %i.yu, %bb.cv ], [ 0, %bb.cu ]
  %.4127.i.i = phi ptr [ %i.ys, %bb.cv ], [ %.3.i.i, %bb.cu ]
  %narrow.i.i = add nuw nsw i64 %i.yv, 127
  br label %bb.da

bb.cw:                                            ; preds = %bb.cv
  %i.yw = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 3 ; 4 uses
  %.not100.i.i = icmp ugt ptr %i.yw, %i.ia
  br i1 %.not100.i.i, label %bb.da, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %.4.val.i.i = load i16, ptr %i.ys, align 1, !tbaa !7 ; 2 uses
  %i.yx = zext i16 %.4.val.i.i to i64             ; 2 uses
  %.not101.i.i = trunc i16 %.4.val.i.i to i1
  %i.yy = icmp ult ptr %i.yw, %i.ia
  %or.cond103.i.i = and i1 %i.yy, %.not101.i.i
  br i1 %or.cond103.i.i, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.yz = load i8, ptr %i.yw, align 1, !tbaa !27
  %i.za = zext i8 %i.yz to i64
  %i.zb = shl nuw nsw i64 %i.za, 16
  %i.zc = or disjoint i64 %i.zb, %i.yx
  %i.zd = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 4
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.5.i.i = phi ptr [ %i.zd, %bb.cy ], [ %i.yw, %bb.cx ]
  %.075.i.i = phi i64 [ %i.zc, %bb.cy ], [ %i.yx, %bb.cx ]
  %i.ze = lshr i64 %.075.i.i, 1
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cw, %.thread.i100.i
  %.6.i.i = phi ptr [ %.4127.i.i, %.thread.i100.i ], [ %.5.i.i, %bb.cz ], [ %i.ys, %bb.cw ] ; 2 uses
  %.176.i.i = phi i64 [ %narrow.i.i, %.thread.i100.i ], [ %i.ze, %bb.cz ], [ 127, %bb.cw ]
  %.not102.i.i = icmp ult ptr %.6.i.i, %i.ia
  %spec.select104.i.i = select i1 %.not102.i.i, ptr %.6.i.i, ptr %i.uu
  br label %ZSTDv05_decodeSequence.exit.i

ZSTDv05_decodeSequence.exit.i:                    ; preds = %bb.da, %bb.ct
  %.8.i99.i = phi ptr [ %spec.select104.i.i, %bb.da ], [ %.3.i.i, %bb.ct ]
  %.277.i.i = phi i64 [ %.176.i.i, %bb.da ], [ %i.yp, %bb.ct ] ; 4 uses
  %i.zf = and i32 %.sroa.20.8.i, 63
  %i.zg = zext nneg i32 %i.zf to i64
  %i.zh = shl i64 %.sroa.0.6.i, %i.zg
  %i.zi = lshr i64 %i.zh, 1
  %i.zj = and i32 %spec.store.select.i.i, 63
  %i.zk = xor i32 %i.zj, 63
  %i.zl = zext nneg i32 %i.zk to i64
  %i.zm = lshr i64 %i.zi, %i.zl
  %i.zn = zext i32 %i.xa to i64
  %i.zo = add nuw i64 %i.zm, %i.zn
  %.074.i.i = select i1 %i.wx, i64 %.sroa.speculated.i, i64 %i.zo ; 18 uses
  %i.zp = add nuw nsw i64 %.277.i.i, 4            ; 4 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %.062222.i, i64 %.2.i96.i ; 8 uses
  %i.zr = add nuw nsw i64 %i.zp, %.2.i96.i        ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %.062222.i, i64 %i.zr ; 7 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %.0133218.i, i64 %.2.i96.i ; 3 uses
  %i.zu = sub i64 0, %.074.i.i
  %i.zv = getelementptr inbounds i8, ptr %i.zq, i64 %i.zu ; 2 uses
  %i.zw = ptrtoint ptr %.062222.i to i64          ; 10 uses
  %i.zx = sub i64 %i.uw, %i.zw
  %i.zy = icmp ugt i64 %i.zr, %i.zx
  br i1 %i.zy, label %ZSTDv05_decompressSequences.exit, label %bb.db

bb.db:                                            ; preds = %ZSTDv05_decodeSequence.exit.i
  %i.zz = ptrtoint ptr %.0133218.i to i64         ; 2 uses
  %i.aaa = sub i64 %i.ux, %i.zz
  %i.aab = icmp ugt i64 %.2.i96.i, %i.aaa
  br i1 %i.aab, label %ZSTDv05_decompressSequences.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.aac = icmp ugt ptr %i.zq, %i.uv
  %i.aad = icmp ugt ptr %i.zs, %i.ga
  %or.cond.i103.i = select i1 %i.aac, i1 true, i1 %i.aad
  br i1 %or.cond.i103.i, label %ZSTDv05_decompressSequences.exit, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.aae = icmp ugt ptr %i.zt, %i.gb
  br i1 %i.aae, label %ZSTDv05_decompressSequences.exit, label %.preheader123.i.i.preheader

.preheader123.i.i.preheader:                      ; preds = %bb.dd
  %i.aaf = add i64 %.2.i96.i, %i.zw
  %i.aag = add i64 %i.zw, 8
  %umax207 = tail call i64 @llvm.umax.i64(i64 %i.aaf, i64 %i.aag)
  %i.aah = xor i64 %i.zw, -1
  %i.aai = add i64 %umax207, %i.aah               ; 2 uses
  %i.aaj = lshr i64 %i.aai, 3
  %i.aak = add nuw nsw i64 %i.aaj, 1              ; 2 uses
  %min.iters.check209 = icmp ult i64 %i.aai, 24
  %i.aal = sub i64 %i.zz, %i.zw
  %diff.check206 = icmp ugt i64 %i.aal, -32
  %or.cond = or i1 %min.iters.check209, %diff.check206
  br i1 %or.cond, label %.preheader123.i.i.preheader230, label %vector.ph210

vector.ph210:                                     ; preds = %.preheader123.i.i.preheader
  %n.vec212 = and i64 %i.aak, 4611686018427387900 ; 3 uses
  %i.aam = shl i64 %n.vec212, 3                   ; 2 uses
  %i.aan = getelementptr i8, ptr %.062222.i, i64 %i.aam
  %i.aao = getelementptr i8, ptr %.0133218.i, i64 %i.aam
  br label %vector.body213

vector.body213:                                   ; preds = %vector.body213, %vector.ph210
  %index214 = phi i64 [ 0, %vector.ph210 ], [ %index.next219, %vector.body213 ] ; 2 uses
  %i.aap = shl i64 %index214, 3                   ; 2 uses
  %next.gep215 = getelementptr i8, ptr %.062222.i, i64 %i.aap ; 2 uses
  %next.gep216 = getelementptr i8, ptr %.0133218.i, i64 %i.aap ; 2 uses
  %i.aaq = getelementptr i8, ptr %next.gep216, i64 16
  %wide.load217 = load <2 x i64>, ptr %next.gep216, align 1
  %wide.load218 = load <2 x i64>, ptr %i.aaq, align 1
  %i.aar = getelementptr i8, ptr %next.gep215, i64 16
  store <2 x i64> %wide.load217, ptr %next.gep215, align 1
  store <2 x i64> %wide.load218, ptr %i.aar, align 1
  %index.next219 = add nuw i64 %index214, 4       ; 2 uses
  %i.aas = icmp eq i64 %index.next219, %n.vec212
  br i1 %i.aas, label %middle.block220, label %vector.body213, !llvm.loop !107

middle.block220:                                  ; preds = %vector.body213
  %cmp.n221 = icmp eq i64 %i.aak, %n.vec212
  br i1 %cmp.n221, label %ZSTDv05_wildcopy.exit.i.i, label %.preheader123.i.i.preheader230

.preheader123.i.i.preheader230:                   ; preds = %.preheader123.i.i.preheader, %middle.block220
  %.09.i.i.i.ph = phi ptr [ %.062222.i, %.preheader123.i.i.preheader ], [ %i.aan, %middle.block220 ]
  %.0.i.i.i.ph = phi ptr [ %.0133218.i, %.preheader123.i.i.preheader ], [ %i.aao, %middle.block220 ]
  br label %.preheader123.i.i

.preheader123.i.i:                                ; preds = %.preheader123.i.i.preheader230, %.preheader123.i.i
  %.09.i.i.i = phi ptr [ %i.aat, %.preheader123.i.i ], [ %.09.i.i.i.ph, %.preheader123.i.i.preheader230 ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.aau, %.preheader123.i.i ], [ %.0.i.i.i.ph, %.preheader123.i.i.preheader230 ] ; 2 uses
  %.0.val.i.i.i = load i64, ptr %.0.i.i.i, align 1
  store i64 %.0.val.i.i.i, ptr %.09.i.i.i, align 1
  %i.aat = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8 ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.aav = icmp ult ptr %i.aat, %i.zq
  br i1 %i.aav, label %.preheader123.i.i, label %ZSTDv05_wildcopy.exit.i.i, !llvm.loop !108

ZSTDv05_wildcopy.exit.i.i:                        ; preds = %.preheader123.i.i, %middle.block220
  %i.aaw = ptrtoint ptr %i.zq to i64              ; 2 uses
  %i.aax = sub i64 %i.aaw, %i.uy                  ; 5 uses
  %i.aay = icmp ugt i64 %.074.i.i, %i.aax
  br i1 %i.aay, label %bb.de, label %.thread.i104.i

bb.de:                                            ; preds = %ZSTDv05_wildcopy.exit.i.i
  %i.aaz = sub i64 %i.aaw, %i.uz
  %i.aba = icmp ugt i64 %.074.i.i, %i.aaz
  br i1 %i.aba, label %ZSTDv05_decompressSequences.exit, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.abb = ptrtoint ptr %i.zv to i64
  %.neg.i.i = sub i64 %i.abb, %i.uy               ; 3 uses
  %i.abc = getelementptr inbounds i8, ptr %i.gj, i64 %.neg.i.i ; 2 uses
  %i.abd = add nsw i64 %i.zp, %.neg.i.i           ; 3 uses
  %.not.i110.i = icmp sgt i64 %i.abd, 0
  br i1 %.not.i110.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.zq, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.abc, i64 %i.zp, i1 false)
  br label %ZSTDv05_execSequence.exit.i

bb.dh:                                            ; preds = %bb.df
  %gepdiff.i.i = sub nsw i64 0, %.neg.i.i         ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.zq, ptr readonly align 1 %i.abc, i64 %gepdiff.i.i, i1 false)
  %i.abe = getelementptr inbounds nuw i8, ptr %i.zq, i64 %gepdiff.i.i ; 7 uses
  %i.abf = icmp ule ptr %i.abe, %i.uv
  %i.abg = icmp samesign ugt i64 %i.abd, 3
  %or.cond.not.i.i = select i1 %i.abf, i1 %i.abg, i1 false
  br i1 %or.cond.not.i.i, label %.thread.i104.i, label %iter.check188

iter.check188:                                    ; preds = %bb.dh
  %i.abh = add i64 %.277.i.i, 4
  %i.abi = add i64 %i.abh, %.2.i96.i
  %i.abj = add i64 %i.abi, %i.zw
  %i.abk = add i64 %i.vg, %.074.i.i
  %umax168 = tail call i64 @llvm.umax.i64(i64 %i.abj, i64 %i.abk)
  %i.abl = add i64 %.074.i.i, %i.uy
  %i.abm = sub i64 %umax168, %i.abl               ; 7 uses
  %min.iters.check170 = icmp ult i64 %i.abm, 4
  %diff.check167 = icmp ult i64 %.074.i.i, 32
  %or.cond226 = select i1 %min.iters.check170, i1 true, i1 %diff.check167
  br i1 %or.cond226, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check171

vector.main.loop.iter.check171:                   ; preds = %iter.check188
  %min.iters.check172 = icmp ult i64 %i.abm, 32
  br i1 %min.iters.check172, label %vec.epilog.ph192, label %vector.ph173

vector.ph173:                                     ; preds = %vector.main.loop.iter.check171
  %n.mod.vf174 = and i64 %i.abm, 28
  %n.vec175 = and i64 %i.abm, -32                 ; 5 uses
  %i.abn = getelementptr i8, ptr %i.abe, i64 %n.vec175
  %i.abo = getelementptr i8, ptr %i.gf, i64 %n.vec175
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph173
  %index177 = phi i64 [ 0, %vector.ph173 ], [ %index.next182, %vector.body176 ] ; 3 uses
  %next.gep178 = getelementptr i8, ptr %i.abe, i64 %index177 ; 2 uses
  %next.gep179 = getelementptr i8, ptr %i.gf, i64 %index177 ; 2 uses
  %i.abp = getelementptr i8, ptr %next.gep179, i64 16
  %wide.load180 = load <16 x i8>, ptr %next.gep179, align 1, !tbaa !27
  %wide.load181 = load <16 x i8>, ptr %i.abp, align 1, !tbaa !27
  %i.abq = getelementptr i8, ptr %next.gep178, i64 16
  store <16 x i8> %wide.load180, ptr %next.gep178, align 1, !tbaa !27
  store <16 x i8> %wide.load181, ptr %i.abq, align 1, !tbaa !27
  %index.next182 = add nuw i64 %index177, 32      ; 2 uses
  %i.abr = icmp eq i64 %index.next182, %n.vec175
  br i1 %i.abr, label %middle.block183, label %vector.body176, !llvm.loop !109

middle.block183:                                  ; preds = %vector.body176
  %cmp.n184 = icmp eq i64 %i.abm, %n.vec175
  br i1 %cmp.n184, label %ZSTDv05_execSequence.exit.i, label %vec.epilog.iter.check190

vec.epilog.iter.check190:                         ; preds = %middle.block183
  %min.epilog.iters.check191 = icmp eq i64 %n.mod.vf174, 0
  br i1 %min.epilog.iters.check191, label %.lr.ph.i.i.preheader, label %vec.epilog.ph192, !prof !110

vec.epilog.ph192:                                 ; preds = %vector.main.loop.iter.check171, %vec.epilog.iter.check190
  %vec.epilog.resume.val185 = phi i64 [ %n.vec175, %vec.epilog.iter.check190 ], [ 0, %vector.main.loop.iter.check171 ]
  %n.vec194 = and i64 %i.abm, -4                  ; 4 uses
  %i.abs = getelementptr i8, ptr %i.abe, i64 %n.vec194
  %i.abt = getelementptr i8, ptr %i.gf, i64 %n.vec194
  br label %vec.epilog.vector.body195

vec.epilog.vector.body195:                        ; preds = %vec.epilog.vector.body195, %vec.epilog.ph192
  %index196 = phi i64 [ %vec.epilog.resume.val185, %vec.epilog.ph192 ], [ %index.next200, %vec.epilog.vector.body195 ] ; 3 uses
  %next.gep197 = getelementptr i8, ptr %i.abe, i64 %index196
  %next.gep198 = getelementptr i8, ptr %i.gf, i64 %index196
  %wide.load199 = load <4 x i8>, ptr %next.gep198, align 1, !tbaa !27
  store <4 x i8> %wide.load199, ptr %next.gep197, align 1, !tbaa !27
  %index.next200 = add nuw i64 %index196, 4       ; 2 uses
  %i.abu = icmp eq i64 %index.next200, %n.vec194
  br i1 %i.abu, label %vec.epilog.middle.block201, label %vec.epilog.vector.body195, !llvm.loop !111

vec.epilog.middle.block201:                       ; preds = %vec.epilog.vector.body195
  %cmp.n202 = icmp eq i64 %i.abm, %n.vec194
  br i1 %cmp.n202, label %ZSTDv05_execSequence.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check188, %vec.epilog.iter.check190, %vec.epilog.middle.block201
  %.089125.i.i.ph = phi ptr [ %i.abe, %iter.check188 ], [ %i.abn, %vec.epilog.iter.check190 ], [ %i.abs, %vec.epilog.middle.block201 ]
  %.092124.i.i.ph = phi ptr [ %i.gf, %iter.check188 ], [ %i.abo, %vec.epilog.iter.check190 ], [ %i.abt, %vec.epilog.middle.block201 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.089125.i.i = phi ptr [ %i.abx, %.lr.ph.i.i ], [ %.089125.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.092124.i.i = phi ptr [ %i.abv, %.lr.ph.i.i ], [ %.092124.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %.092124.i.i, i64 1
  %i.abw = load i8, ptr %.092124.i.i, align 1, !tbaa !27
  %i.abx = getelementptr inbounds nuw i8, ptr %.089125.i.i, i64 1 ; 2 uses
  store i8 %i.abw, ptr %.089125.i.i, align 1, !tbaa !27
  %i.aby = icmp ult ptr %i.abx, %i.zs
  br i1 %i.aby, label %.lr.ph.i.i, label %ZSTDv05_execSequence.exit.i, !llvm.loop !112

.thread.i104.i:                                   ; preds = %bb.dh, %ZSTDv05_wildcopy.exit.i.i
  %i.abz = phi i64 [ %i.abd, %bb.dh ], [ %i.zp, %ZSTDv05_wildcopy.exit.i.i ]
  %.294.i.i = phi ptr [ %i.gf, %bb.dh ], [ %i.zv, %ZSTDv05_wildcopy.exit.i.i ] ; 7 uses
  %.2.i105.i = phi ptr [ %i.abe, %bb.dh ], [ %i.zq, %ZSTDv05_wildcopy.exit.i.i ] ; 8 uses
  %i.aca = icmp ult i64 %.074.i.i, 8
  br i1 %i.aca, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %.thread.i104.i
  %i.acb = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv05_execSequence.dec64table, i64 %.074.i.i
  %i.acc = load i32, ptr %i.acb, align 4, !tbaa !3
  %i.acd = load i8, ptr %.294.i.i, align 1, !tbaa !27
  store i8 %i.acd, ptr %.2.i105.i, align 1, !tbaa !27
  %i.ace = getelementptr inbounds nuw i8, ptr %.294.i.i, i64 1
  %i.acf = load i8, ptr %i.ace, align 1, !tbaa !27
  %i.acg = getelementptr inbounds nuw i8, ptr %.2.i105.i, i64 1
  store i8 %i.acf, ptr %i.acg, align 1, !tbaa !27
  %i.ach = getelementptr inbounds nuw i8, ptr %.294.i.i, i64 2
  %i.aci = load i8, ptr %i.ach, align 1, !tbaa !27
  %i.acj = getelementptr inbounds nuw i8, ptr %.2.i105.i, i64 2
  store i8 %i.aci, ptr %i.acj, align 1, !tbaa !27
  %i.ack = getelementptr inbounds nuw i8, ptr %.294.i.i, i64 3
  %i.acl = load i8, ptr %i.ack, align 1, !tbaa !27
  %i.acm = getelementptr inbounds nuw i8, ptr %.2.i105.i, i64 3
  store i8 %i.acl, ptr %i.acm, align 1, !tbaa !27
  %i.acn = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv05_execSequence.dec32table, i64 %.074.i.i
  %i.aco = load i32, ptr %i.acn, align 4, !tbaa !3
  %i.acp = sext i32 %i.aco to i64
  %i.acq = getelementptr inbounds i8, ptr %.294.i.i, i64 %i.acp ; 2 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %.2.i105.i, i64 4
  %.val.i109.i = load i32, ptr %i.acq, align 1
  store i32 %.val.i109.i, ptr %i.acr, align 1
  %i.acs = sext i32 %i.acc to i64
  %i.act = sub nsw i64 0, %i.acs
  %i.acu = getelementptr inbounds i8, ptr %i.acq, i64 %i.act
  br label %bb.dk

bb.dj:                                            ; preds = %.thread.i104.i
  %.294.val.i.i = load i64, ptr %.294.i.i, align 1
  store i64 %.294.val.i.i, ptr %.2.i105.i, align 1
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.395.i.i = phi ptr [ %i.acu, %bb.di ], [ %.294.i.i, %bb.dj ] ; 2 uses
  %.395.i.i127 = ptrtoaddr ptr %.395.i.i to i64   ; 2 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %.2.i105.i, i64 8 ; 11 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %.395.i.i, i64 8 ; 10 uses
  %i.acx = icmp ugt ptr %i.zs, %i.va
  br i1 %i.acx, label %bb.dl, label %bb.dn

bb.dl:                                            ; preds = %bb.dk
  %i.acy = icmp ult ptr %i.acv, %i.uv
  br i1 %i.acy, label %.preheader.i.preheader, label %bb.dm

.preheader.i.preheader:                           ; preds = %bb.dl
  %umax129 = tail call i64 @llvm.umax.i64(i64 %.074.i.i, i64 %i.aax) ; 2 uses
  %i.acz = add i64 %umax129, %i.vi
  %umax130 = tail call i64 @llvm.umax.i64(i64 %i.vb, i64 %i.acz)
  %i.ada = add i64 %umax129, %i.uy
  %5 = sub i64 %umax130, %i.ada
  %6 = add i64 %5, -9                             ; 2 uses
  %i.adb = lshr i64 %6, 3
  %i.adc = add nuw nsw i64 %i.adb, 1              ; 2 uses
  %min.iters.check131 = icmp ult i64 %6, 72
  br i1 %min.iters.check131, label %.preheader.i.preheader227, label %vector.memcheck125

vector.memcheck125:                               ; preds = %.preheader.i.preheader
  %i.add = sub i64 %.2.i96.i, %i.uy
  %i.ade = add i64 %i.add, %i.zw
  %umax126 = tail call i64 @llvm.umax.i64(i64 %.074.i.i, i64 %i.ade)
  %i.adf = add i64 %umax126, %i.uy
  %i.adg = sub i64 %.395.i.i127, %i.adf
  %diff.check128 = icmp ugt i64 %i.adg, -32
  br i1 %diff.check128, label %.preheader.i.preheader227, label %vector.ph132

vector.ph132:                                     ; preds = %vector.memcheck125
  %n.vec134 = and i64 %i.adc, 4611686018427387900 ; 3 uses
  %i.adh = shl i64 %n.vec134, 3                   ; 2 uses
  %i.adi = getelementptr i8, ptr %i.acv, i64 %i.adh
  %i.adj = getelementptr i8, ptr %i.acw, i64 %i.adh
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph132
  %index136 = phi i64 [ 0, %vector.ph132 ], [ %index.next141, %vector.body135 ] ; 2 uses
  %i.adk = shl i64 %index136, 3                   ; 2 uses
  %next.gep137 = getelementptr i8, ptr %i.acv, i64 %i.adk ; 2 uses
  %next.gep138 = getelementptr i8, ptr %i.acw, i64 %i.adk ; 2 uses
  %i.adl = getelementptr i8, ptr %next.gep138, i64 16
  %wide.load139 = load <2 x i64>, ptr %next.gep138, align 1
  %wide.load140 = load <2 x i64>, ptr %i.adl, align 1
  %i.adm = getelementptr i8, ptr %next.gep137, i64 16
  store <2 x i64> %wide.load139, ptr %next.gep137, align 1
  store <2 x i64> %wide.load140, ptr %i.adm, align 1
  %index.next141 = add nuw i64 %index136, 4       ; 2 uses
  %i.adn = icmp eq i64 %index.next141, %n.vec134
  br i1 %i.adn, label %middle.block142, label %vector.body135, !llvm.loop !113

middle.block142:                                  ; preds = %vector.body135
  %cmp.n143 = icmp eq i64 %i.adc, %n.vec134
  br i1 %cmp.n143, label %ZSTDv05_wildcopy.exit114.i.i, label %.preheader.i.preheader227

.preheader.i.preheader227:                        ; preds = %vector.memcheck125, %.preheader.i.preheader, %middle.block142
  %.09.i111.i.i.ph = phi ptr [ %i.acv, %vector.memcheck125 ], [ %i.acv, %.preheader.i.preheader ], [ %i.adi, %middle.block142 ]
  %.0.i112.i.i.ph = phi ptr [ %i.acw, %vector.memcheck125 ], [ %i.acw, %.preheader.i.preheader ], [ %i.adj, %middle.block142 ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader227, %.preheader.i
  %.09.i111.i.i = phi ptr [ %i.ado, %.preheader.i ], [ %.09.i111.i.i.ph, %.preheader.i.preheader227 ] ; 2 uses
  %.0.i112.i.i = phi ptr [ %i.adp, %.preheader.i ], [ %.0.i112.i.i.ph, %.preheader.i.preheader227 ] ; 2 uses
  %.0.val.i113.i.i = load i64, ptr %.0.i112.i.i, align 1
  store i64 %.0.val.i113.i.i, ptr %.09.i111.i.i, align 1
  %i.ado = getelementptr inbounds nuw i8, ptr %.09.i111.i.i, i64 8 ; 2 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %.0.i112.i.i, i64 8
  %i.adq = icmp ult ptr %i.ado, %i.uv
  br i1 %i.adq, label %.preheader.i, label %ZSTDv05_wildcopy.exit114.i.i, !llvm.loop !114

ZSTDv05_wildcopy.exit114.i.i:                     ; preds = %.preheader.i, %middle.block142
  %i.adr = ptrtoint ptr %i.acv to i64
  %i.ads = sub i64 %i.vb, %i.adr
  %i.adt = getelementptr inbounds i8, ptr %i.acw, i64 %i.ads
  br label %bb.dm

bb.dm:                                            ; preds = %ZSTDv05_wildcopy.exit114.i.i, %bb.dl
  %.496.i.i = phi ptr [ %i.adt, %ZSTDv05_wildcopy.exit114.i.i ], [ %i.acw, %bb.dl ] ; 7 uses
  %.3.i107.i = phi ptr [ %i.uv, %ZSTDv05_wildcopy.exit114.i.i ], [ %i.acv, %bb.dl ] ; 7 uses
  %.496.i.i108 = ptrtoaddr ptr %.496.i.i to i64
  %i.adu = icmp ult ptr %.3.i107.i, %i.zs
  br i1 %i.adu, label %iter.check, label %ZSTDv05_execSequence.exit.i

iter.check:                                       ; preds = %bb.dm
  %i.adv = add i64 %.277.i.i, 4
  %i.adw = add i64 %i.adv, %.2.i96.i
  %i.adx = add i64 %i.adw, %i.zw
  %umax109 = tail call i64 @llvm.umax.i64(i64 %.074.i.i, i64 %i.aax)
  %i.ady = add i64 %i.vf, %umax109
  %umax110 = tail call i64 @llvm.umax.i64(i64 %i.vb, i64 %i.ady)
  %i.adz = sub i64 %i.adx, %umax110               ; 7 uses
  %min.iters.check = icmp ult i64 %i.adz, 4
  br i1 %min.iters.check, label %.lr.ph128.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aea = sub i64 %.2.i96.i, %i.uy
  %i.aeb = add i64 %i.aea, %i.zw
  %umax = tail call i64 @llvm.umax.i64(i64 %.074.i.i, i64 %i.aeb)
  %i.aec = add i64 %i.ve, %umax
  %umax107 = tail call i64 @llvm.umax.i64(i64 %i.vd, i64 %i.aec)
  %i.aed = sub i64 %.496.i.i108, %umax107
  %diff.check = icmp ugt i64 %i.aed, -32
  br i1 %diff.check, label %.lr.ph128.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check111 = icmp ult i64 %i.adz, 32
  br i1 %min.iters.check111, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.adz, 28
  %n.vec = and i64 %i.adz, -32                    ; 5 uses
  %i.aee = getelementptr i8, ptr %.3.i107.i, i64 %n.vec
  %i.aef = getelementptr i8, ptr %.496.i.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.3.i107.i, i64 %index ; 2 uses
  %next.gep112 = getelementptr i8, ptr %.496.i.i, i64 %index ; 2 uses
  %i.aeg = getelementptr i8, ptr %next.gep112, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep112, align 1, !tbaa !27
  %wide.load113 = load <16 x i8>, ptr %i.aeg, align 1, !tbaa !27
  %i.aeh = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !27
  store <16 x i8> %wide.load113, ptr %i.aeh, align 1, !tbaa !27
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aei = icmp eq i64 %index.next, %n.vec
  br i1 %i.aei, label %middle.block, label %vector.body, !llvm.loop !115

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.adz, %n.vec
  br i1 %cmp.n, label %ZSTDv05_execSequence.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph128.i.i.preheader, label %vec.epilog.ph, !prof !110

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec116 = and i64 %i.adz, -4                  ; 4 uses
  %i.aej = getelementptr i8, ptr %.3.i107.i, i64 %n.vec116
  %i.aek = getelementptr i8, ptr %.496.i.i, i64 %n.vec116
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index117 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next121, %vec.epilog.vector.body ] ; 3 uses
  %next.gep118 = getelementptr i8, ptr %.3.i107.i, i64 %index117
  %next.gep119 = getelementptr i8, ptr %.496.i.i, i64 %index117
  %wide.load120 = load <4 x i8>, ptr %next.gep119, align 1, !tbaa !27
  store <4 x i8> %wide.load120, ptr %next.gep118, align 1, !tbaa !27
  %index.next121 = add nuw i64 %index117, 4       ; 2 uses
  %i.ael = icmp eq i64 %index.next121, %n.vec116
  br i1 %i.ael, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !116

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n122 = icmp eq i64 %i.adz, %n.vec116
  br i1 %cmp.n122, label %ZSTDv05_execSequence.exit.i, label %.lr.ph128.i.i.preheader

.lr.ph128.i.i.preheader:                          ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.4127.i108.i.ph = phi ptr [ %.3.i107.i, %iter.check ], [ %.3.i107.i, %vector.memcheck ], [ %i.aee, %vec.epilog.iter.check ], [ %i.aej, %vec.epilog.middle.block ]
  %.5126.i.i.ph = phi ptr [ %.496.i.i, %iter.check ], [ %.496.i.i, %vector.memcheck ], [ %i.aef, %vec.epilog.iter.check ], [ %i.aek, %vec.epilog.middle.block ]
  br label %.lr.ph128.i.i

.lr.ph128.i.i:                                    ; preds = %.lr.ph128.i.i.preheader, %.lr.ph128.i.i
  %.4127.i108.i = phi ptr [ %i.aeo, %.lr.ph128.i.i ], [ %.4127.i108.i.ph, %.lr.ph128.i.i.preheader ] ; 2 uses
  %.5126.i.i = phi ptr [ %i.aem, %.lr.ph128.i.i ], [ %.5126.i.i.ph, %.lr.ph128.i.i.preheader ] ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %.5126.i.i, i64 1
  %i.aen = load i8, ptr %.5126.i.i, align 1, !tbaa !27
  %i.aeo = getelementptr inbounds nuw i8, ptr %.4127.i108.i, i64 1 ; 2 uses
  store i8 %i.aen, ptr %.4127.i108.i, align 1, !tbaa !27
  %i.aep = icmp ult ptr %i.aeo, %i.zs
  br i1 %i.aep, label %.lr.ph128.i.i, label %ZSTDv05_execSequence.exit.i, !llvm.loop !117

bb.dn:                                            ; preds = %bb.dk
  %i.aeq = getelementptr i8, ptr %.2.i105.i, i64 %i.abz
  %7 = tail call i64 @llvm.umin.i64(i64 %.074.i.i, i64 %i.aax)
  %umin = tail call i64 @llvm.umax.i64(i64 %.074.i.i, i64 %i.aax) ; 3 uses
  %i.aer = add i64 %.277.i.i, %i.uy
  %8 = add i64 %i.aer, %7
  %i.aes = add i64 %8, %umin
  %i.aet = sub i64 %i.aes, %.074.i.i
  %9 = add i64 %i.aet, 4
  %i.aeu = add i64 %umin, %i.vh
  %umax149 = tail call i64 @llvm.umax.i64(i64 %9, i64 %i.aeu)
  %i.aev = add i64 %umin, %i.uy
  %10 = sub i64 %umax149, %i.aev
  %11 = add i64 %10, -9                           ; 2 uses
  %i.aew = lshr i64 %11, 3
  %i.aex = add nuw nsw i64 %i.aew, 1              ; 2 uses
  %min.iters.check151 = icmp ult i64 %11, 72
  br i1 %min.iters.check151, label %scalar.ph150.preheader, label %vector.memcheck145

vector.memcheck145:                               ; preds = %bb.dn
  %i.aey = sub i64 %.2.i96.i, %i.uy
  %i.aez = add i64 %i.aey, %i.zw
  %umax146 = tail call i64 @llvm.umax.i64(i64 %.074.i.i, i64 %i.aez)
  %i.afa = add i64 %umax146, %i.uy
  %i.afb = sub i64 %.395.i.i127, %i.afa
  %diff.check147 = icmp ugt i64 %i.afb, -32
  br i1 %diff.check147, label %scalar.ph150.preheader, label %vector.ph152

vector.ph152:                                     ; preds = %vector.memcheck145
  %n.vec154 = and i64 %i.aex, 4611686018427387900 ; 3 uses
  %i.afc = shl i64 %n.vec154, 3                   ; 2 uses
  %i.afd = getelementptr i8, ptr %i.acv, i64 %i.afc
  %i.afe = getelementptr i8, ptr %i.acw, i64 %i.afc
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph152
  %index156 = phi i64 [ 0, %vector.ph152 ], [ %index.next161, %vector.body155 ] ; 2 uses
  %i.aff = shl i64 %index156, 3                   ; 2 uses
  %next.gep157 = getelementptr i8, ptr %i.acv, i64 %i.aff ; 2 uses
  %next.gep158 = getelementptr i8, ptr %i.acw, i64 %i.aff ; 2 uses
  %i.afg = getelementptr i8, ptr %next.gep158, i64 16
  %wide.load159 = load <2 x i64>, ptr %next.gep158, align 1
  %wide.load160 = load <2 x i64>, ptr %i.afg, align 1
  %i.afh = getelementptr i8, ptr %next.gep157, i64 16
  store <2 x i64> %wide.load159, ptr %next.gep157, align 1
  store <2 x i64> %wide.load160, ptr %i.afh, align 1
  %index.next161 = add nuw i64 %index156, 4       ; 2 uses
  %i.afi = icmp eq i64 %index.next161, %n.vec154
  br i1 %i.afi, label %middle.block162, label %vector.body155, !llvm.loop !118

middle.block162:                                  ; preds = %vector.body155
  %cmp.n163 = icmp eq i64 %i.aex, %n.vec154
  br i1 %cmp.n163, label %ZSTDv05_execSequence.exit.i, label %scalar.ph150.preheader

scalar.ph150.preheader:                           ; preds = %vector.memcheck145, %bb.dn, %middle.block162
  %.09.i115.i.i.ph = phi ptr [ %i.acv, %vector.memcheck145 ], [ %i.acv, %bb.dn ], [ %i.afd, %middle.block162 ]
  %.0.i116.i.i.ph = phi ptr [ %i.acw, %vector.memcheck145 ], [ %i.acw, %bb.dn ], [ %i.afe, %middle.block162 ]
  br label %scalar.ph150

scalar.ph150:                                     ; preds = %scalar.ph150.preheader, %scalar.ph150
  %.09.i115.i.i = phi ptr [ %i.afj, %scalar.ph150 ], [ %.09.i115.i.i.ph, %scalar.ph150.preheader ] ; 2 uses
  %.0.i116.i.i = phi ptr [ %i.afk, %scalar.ph150 ], [ %.0.i116.i.i.ph, %scalar.ph150.preheader ] ; 2 uses
  %.0.val.i117.i.i = load i64, ptr %.0.i116.i.i, align 1
  store i64 %.0.val.i117.i.i, ptr %.09.i115.i.i, align 1
  %i.afj = getelementptr inbounds nuw i8, ptr %.09.i115.i.i, i64 8 ; 2 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %.0.i116.i.i, i64 8
  %i.afl = icmp ult ptr %i.afj, %i.aeq
  br i1 %i.afl, label %scalar.ph150, label %ZSTDv05_execSequence.exit.i, !llvm.loop !119

ZSTDv05_execSequence.exit.i:                      ; preds = %.lr.ph.i.i, %scalar.ph150, %.lr.ph128.i.i, %middle.block183, %vec.epilog.middle.block201, %middle.block162, %middle.block, %vec.epilog.middle.block, %bb.dm, %bb.dg
  %i.afm = icmp ugt i32 %i.ym, 64
  br i1 %i.afm, label %BITv05_reloadDStream.exit.thread.i, label %bb.ch

.critedge.i:                                      ; preds = %BITv05_reloadDStream.exit.i, %BITv05_reloadDStream.exit.thread.i, %bb.bk, %.thread.i18
  %.2135.i = phi ptr [ %i.fx, %bb.bk ], [ %i.zt, %BITv05_reloadDStream.exit.thread.i ], [ %i.fx, %.thread.i18 ], [ %.0133218.i, %BITv05_reloadDStream.exit.i ] ; 4 uses
  %.365.i = phi ptr [ %1, %bb.bk ], [ %i.zs, %BITv05_reloadDStream.exit.thread.i ], [ %1, %.thread.i18 ], [ %.062222.i, %BITv05_reloadDStream.exit.i ] ; 3 uses
  %i.afn = ptrtoint ptr %i.gb to i64
  %i.afo = ptrtoint ptr %.2135.i to i64
  %i.afp = sub i64 %i.afn, %i.afo                 ; 2 uses
  %i.afq = icmp ugt ptr %.2135.i, %i.gb
  br i1 %i.afq, label %ZSTDv05_decompressSequences.exit, label %bb.do

bb.do:                                            ; preds = %.critedge.i
  %i.afr = getelementptr inbounds nuw i8, ptr %.365.i, i64 %i.afp ; 2 uses
  %i.afs = icmp ugt ptr %i.afr, %i.ga
  br i1 %i.afs, label %ZSTDv05_decompressSequences.exit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %.not75.i = icmp eq ptr %i.gb, %.2135.i
  br i1 %.not75.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.365.i, ptr align 1 %.2135.i, i64 %i.afp, i1 false)
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.567.ph.i = phi ptr [ %.365.i, %bb.dp ], [ %i.afr, %bb.dq ]
  %i.aft = ptrtoint ptr %.567.ph.i to i64
  %i.afu = ptrtoint ptr %1 to i64
  %i.afv = sub i64 %i.aft, %i.afu
  br label %ZSTDv05_decompressSequences.exit

ZSTDv05_decompressSequences.exit:                 ; preds = %bb.de, %bb.dd, %bb.dc, %bb.db, %ZSTDv05_decodeSequence.exit.i, %.thread.i, %bb.ab, %bb.n, %bb.m, %bb.l, %bb.g, %bb.f, %bb.d, %bb.o, %bb.j, %bb.b, %bb.v, %bb.dr, %bb.do, %.critedge.i, %BITv05_reloadDStream.exit.thread.i, %FSEv05_initDState.exit92.i, %FSEv05_initDState.exit84.i, %BITv05_initDStream.exit.i, %bb.bv, %bb.bn, %bb.bl, %ZSTDv05_decodeSeqHeaders.exit.i, %ZSTDv05_decodeSeqHeaders.exit.thread.i, %bb.a
  %.0 = phi i64 [ -20, %bb.d ], [ -72, %bb.a ], [ -20, %BITv05_reloadDStream.exit.thread.i ], [ %i.afv, %bb.dr ], [ -20, %.critedge.i ], [ %i.pj, %ZSTDv05_decodeSeqHeaders.exit.i ], [ %.7.i.ph.i, %ZSTDv05_decodeSeqHeaders.exit.thread.i ], [ -70, %bb.do ], [ -20, %BITv05_initDStream.exit.i ], [ -20, %bb.bl ], [ -20, %bb.bv ], [ -20, %bb.bn ], [ -20, %FSEv05_initDState.exit84.i ], [ -20, %FSEv05_initDState.exit92.i ], [ -20, %bb.o ], [ -20, %bb.j ], [ -20, %bb.b ], [ -20, %bb.v ], [ -20, %.thread.i ], [ -20, %bb.ab ], [ -20, %bb.n ], [ -30, %bb.m ], [ -20, %bb.l ], [ -20, %bb.g ], [ -20, %bb.f ], [ -20, %bb.de ], [ -20, %bb.dd ], [ -70, %bb.dc ], [ -20, %bb.db ], [ -70, %ZSTDv05_decodeSequence.exit.i ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define i64 @ZSTDv05_decompress_usingPreparedDCtx(ptr noundef initializes((0, 26763)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #8 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(26763) %0, ptr noundef nonnull readonly align 8 dereferenceable(26763) %1, i64 26763, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 26640 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 3 uses
  %.not.i = icmp eq ptr %2, %i.b
  br i1 %.not.i, label %ZSTDv05_checkContinuity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 26664
  store ptr %i.b, ptr %i.c, align 8, !tbaa !102
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 26648 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !103
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64
  %.neg.i = sub i64 %i.g, %i.f
  %i.h = getelementptr inbounds i8, ptr %2, i64 %.neg.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 26656
  store ptr %i.h, ptr %i.i, align 8, !tbaa !104
  store ptr %2, ptr %i.d, align 8, !tbaa !103
  store ptr %2, ptr %i.a, align 8, !tbaa !101
  br label %ZSTDv05_checkContinuity.exit

ZSTDv05_checkContinuity.exit:                     ; preds = %bb.a, %bb.b
  %i.j = tail call fastcc i64 @ZSTDv05_decompress_continueDCtx(ptr noundef nonnull %0, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5)
  ret i64 %i.j
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTDv05_decompress_continueDCtx(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.c = icmp ult i64 %4, 8
  br i1 %i.c, label %.thread90, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i32, ptr %3, align 1, !tbaa !3
  %.not.i = icmp eq i32 %.val, -47205083
  br i1 %.not.i, label %bb.c, label %.thread90

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 26680
  store i64 5, ptr %i.d, align 8, !tbaa !120
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 26688
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, i8 0, i64 40, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !27
  %i.h = and i8 %i.g, 15
  %narrow.i.i = add nuw nsw i8 %i.h, 11
  %i.i = zext nneg i8 %narrow.i.i to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 26696
  store i32 %i.i, ptr %i.j, align 8, !tbaa !100
  %i.k = load i8, ptr %i.f, align 1, !tbaa !27
  %.not7.i.i = icmp ult i8 %i.k, 16
  br i1 %.not7.i.i, label %.lr.ph, label %.thread90

.lr.ph:                                           ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.m = add i64 %4, -5
  %i.n = ptrtoint ptr %i.a to i64
  %i.o = ptrtoint ptr %i.b to i64                 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.l
  %.162125 = phi i64 [ %i.m, %.lr.ph ], [ %i.au, %bb.l ] ; 2 uses
  %.165124 = phi ptr [ %i.l, %.lr.ph ], [ %i.at, %bb.l ] ; 5 uses
  %.067123 = phi ptr [ %1, %.lr.ph ], [ %i.as, %bb.l ] ; 7 uses
  %i.p = load i8, ptr %.165124, align 1, !tbaa !27
  %i.q = zext i8 %i.p to i32                      ; 2 uses
  %i.r = lshr i32 %i.q, 6                         ; 2 uses
  switch i32 %i.r, label %bb.e [
    i32 3, label %.thread104
    i32 2, label %bb.f
  ]

.thread104:                                       ; preds = %bb.d
  %.not76 = icmp eq i64 %.162125, 3
  br i1 %.not76, label %ZSTDv05_copyRawBlock.exit.thread, label %.thread90

bb.e:                                             ; preds = %bb.d
  %i.s = shl nuw nsw i32 %i.q, 16
  %i.t = and i32 %i.s, 458752
  %i.u = getelementptr inbounds nuw i8, ptr %.165124, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !27
  %i.w = zext i8 %i.v to i32
  %i.x = or disjoint i32 %i.t, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %.165124, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !27
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 8
  %i.ac = or disjoint i32 %i.ab, %i.x
  %i.ad = zext nneg i32 %i.ac to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0.i81.ph = phi i64 [ %i.ad, %bb.e ], [ 1, %bb.d ] ; 9 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.165124, i64 3 ; 2 uses
  %i.af = add i64 %.162125, -3                    ; 2 uses
  %i.ag = icmp ugt i64 %.0.i81.ph, %i.af
  br i1 %i.ag, label %.thread90, label %bb.g

bb.g:                                             ; preds = %bb.f
  switch i32 %i.r, label %.thread90 [
    i32 0, label %bb.h
    i32 1, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
end_hunk_0
