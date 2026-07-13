inline.NumInlined: 337
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 19
begin_hunk_0_@ZSTDv06_decompressBlock_internal:bb.a
bb.bb:                                            ; preds = %bb.ba
  %i.lb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %.not.i.i.i = icmp ult ptr %i.km, %i.lc
  br i1 %.not.i.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ld = lshr i32 %i.kz, 3
  %i.le = zext nneg i32 %i.ld to i64
  %i.lf = sub nsw i64 0, %i.le
  %i.lg = getelementptr inbounds i8, ptr %i.km, i64 %i.lf ; 2 uses
  store ptr %i.lg, ptr %i.lb, align 8, !tbaa !51
  %i.lh = and i32 %i.kz, 7
  br label %BITv06_reloadDStream.exit.sink.split.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.li = icmp eq ptr %i.km, %i.hv
  br i1 %i.li, label %FSEv06_initDState.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.lj = lshr i32 %i.kz, 3                       ; 2 uses
  %i.lk = zext nneg i32 %i.lj to i64
  %i.ll = sub nsw i64 0, %i.lk
  %i.lm = getelementptr inbounds i8, ptr %i.km, i64 %i.ll
  %i.ln = icmp ult ptr %i.lm, %i.hv
  %i.lo = ptrtoint ptr %i.km to i64
  %i.lp = sub i64 %i.lo, %i.hw
  %i.lq = trunc i64 %i.lp to i32
  %.024.i.i.i = select i1 %i.ln, i32 %i.lq, i32 %i.lj ; 2 uses
  %i.lr = zext i32 %.024.i.i.i to i64
  %i.ls = sub nsw i64 0, %i.lr
  %i.lt = getelementptr inbounds i8, ptr %i.km, i64 %i.ls ; 2 uses
  store ptr %i.lt, ptr %i.lb, align 8, !tbaa !51
  %i.lu = shl i32 %.024.i.i.i, 3
  %i.lv = sub i32 %i.kz, %i.lu
  br label %BITv06_reloadDStream.exit.sink.split.i.i

BITv06_reloadDStream.exit.sink.split.i.i:         ; preds = %bb.be, %bb.bc
  %storemerge.i = phi i32 [ %i.lh, %bb.bc ], [ %i.lv, %bb.be ]
  %.val30.i.sink.in.i.i = phi ptr [ %i.lg, %bb.bc ], [ %i.lt, %bb.be ] ; 2 uses
  %.val30.i.sink.i.i = load i64, ptr %.val30.i.sink.in.i.i, align 1 ; 2 uses
  store i64 %.val30.i.sink.i.i, ptr %5, align 8, !tbaa !52
  br label %FSEv06_initDState.exit.i

FSEv06_initDState.exit.i:                         ; preds = %BITv06_reloadDStream.exit.sink.split.i.i, %bb.bd, %bb.ba
  %i.lw = phi ptr [ %i.km, %bb.ba ], [ %i.ia, %bb.bd ], [ %.val30.i.sink.in.i.i, %BITv06_reloadDStream.exit.sink.split.i.i ] ; 7 uses
  %.val4.i.i90.i = phi i32 [ %i.kz, %bb.ba ], [ %i.kz, %bb.bd ], [ %storemerge.i, %BITv06_reloadDStream.exit.sink.split.i.i ] ; 2 uses
  %.val.i.i89.i = phi i64 [ %.val.i.i.i, %bb.ba ], [ %.val.i.i.i, %bb.bd ], [ %.val30.i.sink.i.i, %BITv06_reloadDStream.exit.sink.split.i.i ] ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.lx, ptr %i.ly, align 8, !tbaa !111
  %i.lz = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.ma = load i16, ptr %i.fx, align 4, !tbaa !23
  %i.mb = zext i16 %i.ma to i32                   ; 2 uses
  %i.mc = and i32 %.val4.i.i90.i, 63
  %i.md = zext nneg i32 %i.mc to i64
  %i.me = shl i64 %.val.i.i89.i, %i.md
  %i.mf = lshr i64 %i.me, 1
  %i.mg = and i32 %i.mb, 63
  %i.mh = xor i32 %i.mg, 63
  %i.mi = zext nneg i32 %i.mh to i64
  %i.mj = lshr i64 %i.mf, %i.mi                   ; 2 uses
  %i.mk = add i32 %.val4.i.i90.i, %i.mb           ; 7 uses
  store i64 %i.mj, ptr %i.lz, align 8, !tbaa !109
  %i.ml = icmp ugt i32 %i.mk, 64
  br i1 %i.ml, label %FSEv06_initDState.exit96.i, label %bb.bf

bb.bf:                                            ; preds = %FSEv06_initDState.exit.i
  %i.mm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %.not.i.i91.i = icmp ult ptr %i.lw, %i.mn
  br i1 %.not.i.i91.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.mo = lshr i32 %i.mk, 3
  %i.mp = zext nneg i32 %i.mo to i64
  %i.mq = sub nsw i64 0, %i.mp
  %i.mr = getelementptr inbounds i8, ptr %i.lw, i64 %i.mq ; 2 uses
  store ptr %i.mr, ptr %i.mm, align 8, !tbaa !51
  %i.ms = and i32 %i.mk, 7
  br label %BITv06_reloadDStream.exit.sink.split.i92.i

bb.bh:                                            ; preds = %bb.bf
  %i.mt = icmp eq ptr %i.lw, %i.hv
  br i1 %i.mt, label %FSEv06_initDState.exit96.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mu = lshr i32 %i.mk, 3                       ; 2 uses
  %i.mv = zext nneg i32 %i.mu to i64
  %i.mw = sub nsw i64 0, %i.mv
  %i.mx = getelementptr inbounds i8, ptr %i.lw, i64 %i.mw
  %i.my = icmp ult ptr %i.mx, %i.hv
  %i.mz = ptrtoint ptr %i.lw to i64
  %i.na = sub i64 %i.mz, %i.hw
  %i.nb = trunc i64 %i.na to i32
  %.024.i.i95.i = select i1 %i.my, i32 %i.nb, i32 %i.mu ; 2 uses
  %i.nc = zext i32 %.024.i.i95.i to i64
  %i.nd = sub nsw i64 0, %i.nc
  %i.ne = getelementptr inbounds i8, ptr %i.lw, i64 %i.nd ; 2 uses
  store ptr %i.ne, ptr %i.mm, align 8, !tbaa !51
  %i.nf = shl i32 %.024.i.i95.i, 3
  %i.ng = sub i32 %i.mk, %i.nf
  br label %BITv06_reloadDStream.exit.sink.split.i92.i

BITv06_reloadDStream.exit.sink.split.i92.i:       ; preds = %bb.bi, %bb.bg
  %storemerge165.i = phi i32 [ %i.ms, %bb.bg ], [ %i.ng, %bb.bi ] ; 2 uses
  %.val30.i.sink.in.i93.i = phi ptr [ %i.mr, %bb.bg ], [ %i.ne, %bb.bi ] ; 2 uses
  store i32 %storemerge165.i, ptr %i.kq, align 8, !tbaa !53
  %.val30.i.sink.i94.i = load i64, ptr %.val30.i.sink.in.i93.i, align 1 ; 2 uses
  store i64 %.val30.i.sink.i94.i, ptr %5, align 8, !tbaa !52
  br label %FSEv06_initDState.exit96.i

FSEv06_initDState.exit96.i:                       ; preds = %BITv06_reloadDStream.exit.sink.split.i92.i, %bb.bh, %FSEv06_initDState.exit.i
  %i.nh = phi ptr [ %i.lw, %FSEv06_initDState.exit.i ], [ %i.ia, %bb.bh ], [ %.val30.i.sink.in.i93.i, %BITv06_reloadDStream.exit.sink.split.i92.i ] ; 7 uses
  %.val4.i.i98.i = phi i32 [ %i.mk, %FSEv06_initDState.exit.i ], [ %i.mk, %bb.bh ], [ %storemerge165.i, %BITv06_reloadDStream.exit.sink.split.i92.i ] ; 2 uses
  %.val.i.i97.i = phi i64 [ %.val.i.i89.i, %FSEv06_initDState.exit.i ], [ %.val.i.i89.i, %bb.bh ], [ %.val30.i.sink.i94.i, %BITv06_reloadDStream.exit.sink.split.i92.i ] ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 2056 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.ni, ptr %i.nj, align 8, !tbaa !111
  %i.nk = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.nl = load i16, ptr %i.fw, align 8, !tbaa !23
  %i.nm = zext i16 %i.nl to i32                   ; 2 uses
  %i.nn = and i32 %.val4.i.i98.i, 63
  %i.no = zext nneg i32 %i.nn to i64
  %i.np = shl i64 %.val.i.i97.i, %i.no
  %i.nq = lshr i64 %i.np, 1
  %i.nr = and i32 %i.nm, 63
  %i.ns = xor i32 %i.nr, 63
  %i.nt = zext nneg i32 %i.ns to i64
  %i.nu = lshr i64 %i.nq, %i.nt                   ; 2 uses
  %i.nv = add i32 %.val4.i.i98.i, %i.nm           ; 7 uses
  store i64 %i.nu, ptr %i.nk, align 8, !tbaa !109
  %i.nw = icmp ugt i32 %i.nv, 64
  br i1 %i.nw, label %FSEv06_initDState.exit104.i, label %bb.bj

bb.bj:                                            ; preds = %FSEv06_initDState.exit96.i
  %i.nx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %.not.i.i99.i = icmp ult ptr %i.nh, %i.ny
  br i1 %.not.i.i99.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.nz = lshr i32 %i.nv, 3
  %i.oa = zext nneg i32 %i.nz to i64
  %i.ob = sub nsw i64 0, %i.oa
  %i.oc = getelementptr inbounds i8, ptr %i.nh, i64 %i.ob ; 2 uses
  store ptr %i.oc, ptr %i.nx, align 8, !tbaa !51
  %i.od = and i32 %i.nv, 7
  br label %BITv06_reloadDStream.exit.sink.split.i100.i

bb.bl:                                            ; preds = %bb.bj
  %i.oe = icmp eq ptr %i.nh, %i.hv
  br i1 %i.oe, label %FSEv06_initDState.exit104.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.of = lshr i32 %i.nv, 3                       ; 2 uses
  %i.og = zext nneg i32 %i.of to i64
  %i.oh = sub nsw i64 0, %i.og
  %i.oi = getelementptr inbounds i8, ptr %i.nh, i64 %i.oh
  %i.oj = icmp ult ptr %i.oi, %i.hv
  %i.ok = ptrtoint ptr %i.nh to i64
  %i.ol = sub i64 %i.ok, %i.hw
  %i.om = trunc i64 %i.ol to i32
  %.024.i.i103.i = select i1 %i.oj, i32 %i.om, i32 %i.of ; 2 uses
  %i.on = zext i32 %.024.i.i103.i to i64
  %i.oo = sub nsw i64 0, %i.on
  %i.op = getelementptr inbounds i8, ptr %i.nh, i64 %i.oo ; 2 uses
  store ptr %i.op, ptr %i.nx, align 8, !tbaa !51
  %i.oq = shl i32 %.024.i.i103.i, 3
  %i.or = sub i32 %i.nv, %i.oq
  br label %BITv06_reloadDStream.exit.sink.split.i100.i

BITv06_reloadDStream.exit.sink.split.i100.i:      ; preds = %bb.bm, %bb.bk
  %storemerge166.i = phi i32 [ %i.od, %bb.bk ], [ %i.or, %bb.bm ] ; 2 uses
  %.val30.i.sink.in.i101.i = phi ptr [ %i.oc, %bb.bk ], [ %i.op, %bb.bm ] ; 2 uses
  store i32 %storemerge166.i, ptr %i.kq, align 8, !tbaa !53
  %.val30.i.sink.i102.i = load i64, ptr %.val30.i.sink.in.i101.i, align 1 ; 2 uses
  store i64 %.val30.i.sink.i102.i, ptr %5, align 8, !tbaa !52
  br label %FSEv06_initDState.exit104.i

FSEv06_initDState.exit104.i:                      ; preds = %BITv06_reloadDStream.exit.sink.split.i100.i, %bb.bl, %FSEv06_initDState.exit96.i
  %.promoted195.i = phi ptr [ %i.nh, %FSEv06_initDState.exit96.i ], [ %i.ia, %bb.bl ], [ %.val30.i.sink.in.i101.i, %BITv06_reloadDStream.exit.sink.split.i100.i ]
  %.promoted185.i = phi i64 [ %.val.i.i97.i, %FSEv06_initDState.exit96.i ], [ %.val.i.i97.i, %bb.bl ], [ %.val30.i.sink.i102.i, %BITv06_reloadDStream.exit.sink.split.i100.i ]
  %.promoted.i = phi i32 [ %i.nv, %FSEv06_initDState.exit96.i ], [ %i.nv, %bb.bl ], [ %storemerge166.i, %BITv06_reloadDStream.exit.sink.split.i100.i ]
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 3084 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %5, i64 72
  store ptr %i.os, ptr %i.ot, align 8, !tbaa !111
  %i.ou = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ia, i64 8 ; 2 uses
  %i.ow = getelementptr i8, ptr %i.fu, i64 -8     ; 6 uses
  %i.ox = ptrtoint ptr %i.fu to i64
  %i.oy = ptrtoint ptr %i.fv to i64
  %i.oz = ptrtoint ptr %i.fz to i64               ; 16 uses
  %i.pa = ptrtoint ptr %i.gb to i64
  %i.pb = getelementptr inbounds i8, ptr %i.fu, i64 -13
  %i.pc = ptrtoint ptr %i.ow to i64               ; 3 uses
  %i.pd = add i64 %2, %i.a
  %i.pe = add i64 %i.pd, -8
  %i.pf = add i64 %i.oz, 8
  %i.pg = add i64 %i.oz, 8
  %i.ph = add i64 %i.oz, 1
  %i.pi = add i64 %i.oz, 16
  %i.pj = add i64 %i.oz, 16
  br label %bb.bn

bb.bn:                                            ; preds = %ZSTDv06_execSequence.exit.i, %FSEv06_initDState.exit104.i
  %i.pk = phi i64 [ 1, %FSEv06_initDState.exit104.i ], [ %i.rq, %ZSTDv06_execSequence.exit.i ] ; 3 uses
  %i.pl = phi i64 [ 1, %FSEv06_initDState.exit104.i ], [ %i.rr, %ZSTDv06_execSequence.exit.i ] ; 2 uses
  %i.pm = phi ptr [ %.promoted195.i, %FSEv06_initDState.exit104.i ], [ %i.ts, %ZSTDv06_execSequence.exit.i ] ; 7 uses
  %.val.i107194.i = phi i64 [ %i.mj, %FSEv06_initDState.exit104.i ], [ %i.vc, %ZSTDv06_execSequence.exit.i ]
  %.val66.i192.i = phi i64 [ %i.nu, %FSEv06_initDState.exit104.i ], [ %i.uq, %ZSTDv06_execSequence.exit.i ]
  %.val68.i190.i = phi i64 [ %i.ky, %FSEv06_initDState.exit104.i ], [ %i.ue, %ZSTDv06_execSequence.exit.i ]
  %.val.i74.i186.i = phi i64 [ %.promoted185.i, %FSEv06_initDState.exit104.i ], [ %.val.i74.i187.i, %ZSTDv06_execSequence.exit.i ]
  %storemerge167179.i = phi i32 [ %.promoted.i, %FSEv06_initDState.exit104.i ], [ %i.va, %ZSTDv06_execSequence.exit.i ] ; 6 uses
  %.0124.i20 = phi ptr [ %i.fq, %FSEv06_initDState.exit104.i ], [ %i.vg, %ZSTDv06_execSequence.exit.i ] ; 6 uses
  %.0.i = phi i32 [ %.075.i.i, %FSEv06_initDState.exit104.i ], [ %i.qi, %ZSTDv06_execSequence.exit.i ] ; 3 uses
  %.068.i = phi ptr [ %1, %FSEv06_initDState.exit104.i ], [ %i.vf, %ZSTDv06_execSequence.exit.i ] ; 7 uses
  %i.pn = icmp ugt i32 %storemerge167179.i, 64
  br i1 %i.pn, label %.loopexit.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.not.i105.i = icmp ult ptr %i.pm, %i.ov
  br i1 %.not.i105.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.po = lshr i32 %storemerge167179.i, 3
  %i.pp = zext nneg i32 %i.po to i64
  %i.pq = sub nsw i64 0, %i.pp
  %i.pr = getelementptr inbounds i8, ptr %i.pm, i64 %i.pq ; 2 uses
  store ptr %i.pr, ptr %i.ou, align 8, !tbaa !51
  %i.ps = and i32 %storemerge167179.i, 7
  br label %BITv06_reloadDStream.exit.sink.split.i

bb.bq:                                            ; preds = %bb.bo
  %i.pt = icmp eq ptr %i.pm, %i.hv
  br i1 %i.pt, label %BITv06_reloadDStream.exit.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.pu = lshr i32 %storemerge167179.i, 3         ; 2 uses
  %i.pv = zext nneg i32 %i.pu to i64
  %i.pw = sub nsw i64 0, %i.pv
  %i.px = getelementptr inbounds i8, ptr %i.pm, i64 %i.pw
  %i.py = icmp ult ptr %i.px, %i.hv
  %i.pz = ptrtoint ptr %i.pm to i64
  %i.qa = sub i64 %i.pz, %i.hw
  %i.qb = trunc i64 %i.qa to i32
  %.024.i.i = select i1 %i.py, i32 %i.qb, i32 %i.pu ; 2 uses
  %i.qc = zext i32 %.024.i.i to i64
  %i.qd = sub nsw i64 0, %i.qc
  %i.qe = getelementptr inbounds i8, ptr %i.pm, i64 %i.qd ; 2 uses
  store ptr %i.qe, ptr %i.ou, align 8, !tbaa !51
  %i.qf = shl i32 %.024.i.i, 3
  %i.qg = sub i32 %storemerge167179.i, %i.qf
  br label %BITv06_reloadDStream.exit.sink.split.i

BITv06_reloadDStream.exit.sink.split.i:           ; preds = %bb.br, %bb.bp
  %.ph.i = phi ptr [ %i.pr, %bb.bp ], [ %i.qe, %bb.br ] ; 2 uses
  %storemerge167182.ph.i = phi i32 [ %i.ps, %bb.bp ], [ %i.qg, %bb.br ] ; 2 uses
  store i32 %storemerge167182.ph.i, ptr %i.kq, align 8, !tbaa !53
  %.val30.i.sink.i = load i64, ptr %.ph.i, align 1 ; 2 uses
  store i64 %.val30.i.sink.i, ptr %5, align 8, !tbaa !52
  br label %BITv06_reloadDStream.exit.i

BITv06_reloadDStream.exit.i:                      ; preds = %BITv06_reloadDStream.exit.sink.split.i, %bb.bq
  %i.qh = phi ptr [ %i.pm, %bb.bq ], [ %.ph.i, %BITv06_reloadDStream.exit.sink.split.i ] ; 8 uses
  %.val.i74.i188.i = phi i64 [ %.val.i74.i186.i, %bb.bq ], [ %.val30.i.sink.i, %BITv06_reloadDStream.exit.sink.split.i ] ; 5 uses
  %storemerge167182.i = phi i32 [ %storemerge167179.i, %bb.bq ], [ %storemerge167182.ph.i, %BITv06_reloadDStream.exit.sink.split.i ] ; 3 uses
  %.not.i21 = icmp eq i32 %.0.i, 0
  br i1 %.not.i21, label %.thread266.i, label %bb.bs

bb.bs:                                            ; preds = %BITv06_reloadDStream.exit.i
  %i.qi = add nsw i32 %.0.i, -1
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %.val68.i190.i ; 3 uses
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qj, i64 2
  %.sroa.3.0.copyload.i.i.i = load i8, ptr %.sroa.3.0..sroa_idx.i.i.i, align 2, !tbaa !27 ; 3 uses
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %.val66.i192.i ; 3 uses
  %.sroa.3.0..sroa_idx.i70.i.i = getelementptr inbounds nuw i8, ptr %i.qk, i64 2
  %.sroa.3.0.copyload.i71.i.i = load i8, ptr %.sroa.3.0..sroa_idx.i70.i.i, align 2, !tbaa !27 ; 2 uses
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %.val.i107194.i ; 3 uses
  %.sroa.3.0..sroa_idx.i72.i.i = getelementptr inbounds nuw i8, ptr %i.ql, i64 2
  %.sroa.3.0.copyload.i73.i.i = load i8, ptr %.sroa.3.0..sroa_idx.i72.i.i, align 2, !tbaa !27 ; 3 uses
  %i.qm = zext i8 %.sroa.3.0.copyload.i73.i.i to i32 ; 3 uses
  %i.qn = zext i8 %.sroa.3.0.copyload.i.i.i to i64 ; 2 uses
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr @LL_bits, i64 %i.qn
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !3  ; 3 uses
  %i.qq = zext i8 %.sroa.3.0.copyload.i71.i.i to i64 ; 2 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr @ML_bits, i64 %i.qq
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !3  ; 3 uses
  %i.qt = add i32 %i.qp, %i.qm
  %i.qu = add i32 %i.qt, %i.qs
  %.not.i108.i = icmp eq i8 %.sroa.3.0.copyload.i73.i.i, 0
  br i1 %.not.i108.i, label %.thread.i115.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.qv = zext i8 %.sroa.3.0.copyload.i73.i.i to i64
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv06_decodeSequence.OF_base, i64 %i.qv
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !3
  %i.qy = zext i32 %i.qx to i64
  %i.qz = and i32 %storemerge167182.i, 63
  %i.ra = zext nneg i32 %i.qz to i64
  %i.rb = shl i64 %.val.i74.i188.i, %i.ra
  %i.rc = lshr i64 %i.rb, 1
  %i.rd = and i32 %i.qm, 63
  %i.re = xor i32 %i.rd, 63
  %i.rf = zext nneg i32 %i.re to i64
  %i.rg = lshr i64 %i.rc, %i.rf
  %i.rh = add i32 %storemerge167182.i, %i.qm      ; 2 uses
  %i.ri = add nuw i64 %i.rg, %i.qy                ; 3 uses
  %i.rj = icmp ult i64 %i.ri, 3
  br i1 %i.rj, label %.thread.i115.i, label %bb.bv

.thread.i115.i:                                   ; preds = %bb.bt, %bb.bs
  %storemerge167181.i = phi i32 [ %i.rh, %bb.bt ], [ %storemerge167182.i, %bb.bs ] ; 3 uses
  %.090.i.i = phi i64 [ %i.ri, %bb.bt ], [ 0, %bb.bs ] ; 3 uses
  %i.rk = icmp eq i8 %.sroa.3.0.copyload.i.i.i, 0
  %i.rl = icmp ne i64 %.090.i.i, 2
  %or.cond.i.i = and i1 %i.rk, %i.rl
  %i.rm = sub nuw nsw i64 1, %.090.i.i
  %spec.select.i.i = select i1 %or.cond.i.i, i64 %i.rm, i64 %.090.i.i ; 3 uses
  %.not63.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not63.i.i, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %.thread.i115.i
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %spec.select.i.i
  %i.ro = load i64, ptr %i.rn, align 8, !tbaa !100 ; 2 uses
  %.not64.i.i = icmp eq i64 %spec.select.i.i, 1
  br i1 %.not64.i.i, label %.sink.split.i, label %.sink.split.sink.split.i

bb.bv:                                            ; preds = %bb.bt
  %i.rp = add i64 %i.ri, -2
  br label %.sink.split.sink.split.i

.sink.split.sink.split.i:                         ; preds = %bb.bv, %bb.bu
  %.sink.ph.i = phi i64 [ %i.rp, %bb.bv ], [ %i.ro, %bb.bu ]
  %storemerge167180.ph.ph.i = phi i32 [ %i.rh, %bb.bv ], [ %storemerge167181.i, %bb.bu ]
  store i64 %i.pl, ptr %i.id, align 8, !tbaa !100
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.sink.split.sink.split.i, %bb.bu
  %.sink.i = phi i64 [ %i.ro, %bb.bu ], [ %.sink.ph.i, %.sink.split.sink.split.i ] ; 2 uses
  %storemerge167180.ph.i = phi i32 [ %storemerge167181.i, %bb.bu ], [ %storemerge167180.ph.ph.i, %.sink.split.sink.split.i ]
  store i64 %i.pk, ptr %i.ic, align 8, !tbaa !100
  store i64 %.sink.i, ptr %i.ib, align 8, !tbaa !100
  br label %bb.bw

bb.bw:                                            ; preds = %.sink.split.i, %.thread.i115.i
  %i.rq = phi i64 [ %i.pk, %.thread.i115.i ], [ %.sink.i, %.sink.split.i ] ; 18 uses
  %i.rr = phi i64 [ %i.pl, %.thread.i115.i ], [ %i.pk, %.sink.split.i ]
  %storemerge167180.i = phi i32 [ %storemerge167181.i, %.thread.i115.i ], [ %storemerge167180.ph.i, %.sink.split.i ] ; 3 uses
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv06_decodeSequence.ML_base, i64 %i.qq
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !3
  %i.ru = add i32 %i.rt, 3
  %i.rv = zext i32 %i.ru to i64                   ; 4 uses
  %i.rw = icmp ugt i8 %.sroa.3.0.copyload.i71.i.i, 31
  br i1 %i.rw, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.rx = and i32 %storemerge167180.i, 63
  %i.ry = zext nneg i32 %i.rx to i64
  %i.rz = shl i64 %.val.i74.i188.i, %i.ry
  %i.sa = lshr i64 %i.rz, 1
  %i.sb = and i32 %i.qs, 63
  %i.sc = xor i32 %i.sb, 63
  %i.sd = zext nneg i32 %i.sc to i64
  %i.se = lshr i64 %i.sa, %i.sd
  %i.sf = add i32 %storemerge167180.i, %i.qs
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %storemerge167183.i = phi i32 [ %i.sf, %bb.bx ], [ %storemerge167180.i, %bb.bw ] ; 3 uses
  %i.sg = phi i64 [ %i.se, %bb.bx ], [ 0, %bb.bw ] ; 4 uses
  %i.sh = add nuw i64 %i.sg, %i.rv                ; 4 uses
  %i.si = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv06_decodeSequence.LL_base, i64 %i.qn
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !3
  %i.sk = zext i32 %i.sj to i64                   ; 7 uses
  %i.sl = icmp ugt i8 %.sroa.3.0.copyload.i.i.i, 15
  br i1 %i.sl, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.sm = and i32 %storemerge167183.i, 63
  %i.sn = zext nneg i32 %i.sm to i64
  %i.so = shl i64 %.val.i74.i188.i, %i.sn
  %i.sp = lshr i64 %i.so, 1
  %i.sq = and i32 %i.qp, 63
  %i.sr = xor i32 %i.sq, 63
  %i.ss = zext nneg i32 %i.sr to i64
  %i.st = lshr i64 %i.sp, %i.ss
  %i.su = add i32 %storemerge167183.i, %i.qp
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %storemerge167184.i = phi i32 [ %i.su, %bb.bz ], [ %storemerge167183.i, %bb.by ] ; 7 uses
  %i.sv = phi i64 [ %i.st, %bb.bz ], [ 0, %bb.by ] ; 7 uses
  %i.sw = add nuw i64 %i.sv, %i.sk                ; 5 uses
  %i.sx = icmp ult i32 %i.qu, 32
  %i.sy = icmp ugt i32 %storemerge167184.i, 64
  %or.cond97.i.i = select i1 %i.sx, i1 true, i1 %i.sy
  br i1 %or.cond97.i.i, label %ZSTDv06_decodeSequence.exit.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.not.i.i112.i = icmp ult ptr %i.qh, %i.ov
  br i1 %.not.i.i112.i, label %bb.cd, label %bb.cc

end_hunk_0
begin_hunk_1_@ZSTDv06_decompressBlock_internal:bb.a
  %i.ti = getelementptr inbounds i8, ptr %i.qh, i64 %i.th
  %i.tj = icmp ult ptr %i.ti, %i.hv
  %i.tk = ptrtoint ptr %i.qh to i64
  %i.tl = sub i64 %i.tk, %i.hw
  %i.tm = trunc i64 %i.tl to i32
  %.024.i.i114.i = select i1 %i.tj, i32 %i.tm, i32 %i.tf ; 2 uses
  %i.tn = zext i32 %.024.i.i114.i to i64
  %i.to = sub nsw i64 0, %i.tn
  %i.tp = getelementptr inbounds i8, ptr %i.qh, i64 %i.to ; 2 uses
  store ptr %i.tp, ptr %i.ou, align 8, !tbaa !51
  %i.tq = shl i32 %.024.i.i114.i, 3
  %i.tr = sub i32 %storemerge167184.i, %i.tq
  br label %BITv06_reloadDStream.exit.sink.split.i113.i

BITv06_reloadDStream.exit.sink.split.i113.i:      ; preds = %bb.ce, %bb.cc
  %storemerge167.i = phi i32 [ %i.td, %bb.cc ], [ %i.tr, %bb.ce ] ; 2 uses
  %.val.i78.sink.in.i.i = phi ptr [ %i.tc, %bb.cc ], [ %i.tp, %bb.ce ] ; 2 uses
  store i32 %storemerge167.i, ptr %i.kq, align 8, !tbaa !53
  %.val.i78.sink.i.i = load i64, ptr %.val.i78.sink.in.i.i, align 1 ; 2 uses
  store i64 %.val.i78.sink.i.i, ptr %5, align 8, !tbaa !52
  br label %ZSTDv06_decodeSequence.exit.i

ZSTDv06_decodeSequence.exit.i:                    ; preds = %BITv06_reloadDStream.exit.sink.split.i113.i, %bb.cd, %bb.ca
  %i.ts = phi ptr [ %i.qh, %bb.ca ], [ %i.qh, %bb.cd ], [ %.val.i78.sink.in.i.i, %BITv06_reloadDStream.exit.sink.split.i113.i ]
  %.val.i74.i187.i = phi i64 [ %.val.i74.i188.i, %bb.ca ], [ %.val.i74.i188.i, %bb.cd ], [ %.val.i78.sink.i.i, %BITv06_reloadDStream.exit.sink.split.i113.i ] ; 4 uses
  %.val4.i.i.i.i = phi i32 [ %storemerge167184.i, %bb.ca ], [ %storemerge167184.i, %bb.cd ], [ %storemerge167.i, %BITv06_reloadDStream.exit.sink.split.i113.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.qj, align 2, !tbaa !10
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qj, i64 3
  %.sroa.42.0.copyload.i.i.i = load i8, ptr %.sroa.42.0..sroa_idx.i.i.i, align 1, !tbaa !27
  %i.tt = zext i8 %.sroa.42.0.copyload.i.i.i to i32 ; 2 uses
  %i.tu = and i32 %.val4.i.i.i.i, 63
  %i.tv = zext nneg i32 %i.tu to i64
  %i.tw = shl i64 %.val.i74.i187.i, %i.tv
  %i.tx = lshr i64 %i.tw, 1
  %i.ty = and i32 %i.tt, 63
  %i.tz = xor i32 %i.ty, 63
  %i.ua = zext nneg i32 %i.tz to i64
  %i.ub = lshr i64 %i.tx, %i.ua
  %i.uc = add i32 %.val4.i.i.i.i, %i.tt           ; 2 uses
  %i.ud = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.ue = add nuw i64 %i.ub, %i.ud                ; 2 uses
  store i64 %i.ue, ptr %i.kn, align 8, !tbaa !109
  %.sroa.0.0.copyload.i79.i.i = load i16, ptr %i.qk, align 2, !tbaa !10
  %.sroa.42.0..sroa_idx.i80.i.i = getelementptr inbounds nuw i8, ptr %i.qk, i64 3
  %.sroa.42.0.copyload.i81.i.i = load i8, ptr %.sroa.42.0..sroa_idx.i80.i.i, align 1, !tbaa !27
  %i.uf = zext i8 %.sroa.42.0.copyload.i81.i.i to i32 ; 2 uses
  %i.ug = and i32 %i.uc, 63
  %i.uh = zext nneg i32 %i.ug to i64
  %i.ui = shl i64 %.val.i74.i187.i, %i.uh
  %i.uj = lshr i64 %i.ui, 1
  %i.uk = and i32 %i.uf, 63
  %i.ul = xor i32 %i.uk, 63
  %i.um = zext nneg i32 %i.ul to i64
  %i.un = lshr i64 %i.uj, %i.um
  %i.uo = add i32 %i.uc, %i.uf                    ; 2 uses
  %i.up = zext i16 %.sroa.0.0.copyload.i79.i.i to i64
  %i.uq = add nuw i64 %i.un, %i.up                ; 2 uses
  store i64 %i.uq, ptr %i.nk, align 8, !tbaa !109
  %.sroa.0.0.copyload.i84.i.i = load i16, ptr %i.ql, align 2, !tbaa !10
  %.sroa.42.0..sroa_idx.i85.i.i = getelementptr inbounds nuw i8, ptr %i.ql, i64 3
  %.sroa.42.0.copyload.i86.i.i = load i8, ptr %.sroa.42.0..sroa_idx.i85.i.i, align 1, !tbaa !27
  %i.ur = zext i8 %.sroa.42.0.copyload.i86.i.i to i32 ; 2 uses
  %i.us = and i32 %i.uo, 63
  %i.ut = zext nneg i32 %i.us to i64
  %i.uu = shl i64 %.val.i74.i187.i, %i.ut
  %i.uv = lshr i64 %i.uu, 1
  %i.uw = and i32 %i.ur, 63
  %i.ux = xor i32 %i.uw, 63
  %i.uy = zext nneg i32 %i.ux to i64
  %i.uz = lshr i64 %i.uv, %i.uy
  %i.va = add i32 %i.uo, %i.ur                    ; 2 uses
  store i32 %i.va, ptr %i.kq, align 8, !tbaa !53
  %i.vb = zext i16 %.sroa.0.0.copyload.i84.i.i to i64
  %i.vc = add nuw i64 %i.uz, %i.vb                ; 2 uses
  store i64 %i.vc, ptr %i.lz, align 8, !tbaa !109
  %i.vd = getelementptr inbounds i8, ptr %.068.i, i64 %i.sw ; 8 uses
  %i.ve = add i64 %i.sw, %i.sh                    ; 5 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %.068.i, i64 %i.ve ; 6 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %.0124.i20, i64 %i.sw ; 2 uses
  %i.vh = sub i64 0, %i.rq
  %i.vi = getelementptr inbounds i8, ptr %i.vd, i64 %i.vh ; 2 uses
  %i.vj = ptrtoint ptr %.068.i to i64             ; 10 uses
  %i.vk = sub i64 %i.ox, %i.vj
  %i.vl = icmp ugt i64 %i.ve, %i.vk
  br i1 %i.vl, label %.thread154.i, label %bb.cf

bb.cf:                                            ; preds = %ZSTDv06_decodeSequence.exit.i
  %i.vm = ptrtoint ptr %.0124.i20 to i64          ; 2 uses
  %i.vn = sub i64 %i.oy, %i.vm
  %i.vo = icmp ugt i64 %i.sw, %i.vn
  br i1 %i.vo, label %.thread154.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.vp = icmp ugt ptr %i.vd, %i.ow
  %i.vq = icmp ugt ptr %i.vf, %i.fu
  %or.cond.i116.i = select i1 %i.vp, i1 true, i1 %i.vq
  br i1 %or.cond.i116.i, label %.thread154.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.vr = icmp ugt ptr %i.vg, %i.fv
  br i1 %i.vr, label %.thread154.i, label %.preheader123.i.i.preheader

.preheader123.i.i.preheader:                      ; preds = %bb.ch
  %i.vs = add i64 %i.sv, %i.vj
  %i.vt = add i64 %i.vs, %i.sk
  %i.vu = add i64 %i.vj, 8
  %umax215 = tail call i64 @llvm.umax.i64(i64 %i.vt, i64 %i.vu)
  %i.vv = xor i64 %i.vj, -1
  %i.vw = add i64 %umax215, %i.vv                 ; 2 uses
  %i.vx = lshr i64 %i.vw, 3
  %i.vy = add nuw nsw i64 %i.vx, 1                ; 2 uses
  %min.iters.check217 = icmp ult i64 %i.vw, 24
  %i.vz = sub i64 %i.vm, %i.vj
  %diff.check214 = icmp ugt i64 %i.vz, -32
  %or.cond = or i1 %min.iters.check217, %diff.check214
  br i1 %or.cond, label %.preheader123.i.i.preheader236, label %vector.ph218

vector.ph218:                                     ; preds = %.preheader123.i.i.preheader
  %n.vec220 = and i64 %i.vy, 4611686018427387900  ; 3 uses
  %i.wa = shl i64 %n.vec220, 3                    ; 2 uses
  %i.wb = getelementptr i8, ptr %.068.i, i64 %i.wa
  %i.wc = getelementptr i8, ptr %.0124.i20, i64 %i.wa
  br label %vector.body221

vector.body221:                                   ; preds = %vector.body221, %vector.ph218
  %index222 = phi i64 [ 0, %vector.ph218 ], [ %index.next227, %vector.body221 ] ; 2 uses
  %i.wd = shl i64 %index222, 3                    ; 2 uses
  %next.gep223 = getelementptr i8, ptr %.068.i, i64 %i.wd ; 2 uses
  %next.gep224 = getelementptr i8, ptr %.0124.i20, i64 %i.wd ; 2 uses
  %i.we = getelementptr i8, ptr %next.gep224, i64 16
  %wide.load225 = load <2 x i64>, ptr %next.gep224, align 1
  %wide.load226 = load <2 x i64>, ptr %i.we, align 1
  %i.wf = getelementptr i8, ptr %next.gep223, i64 16
  store <2 x i64> %wide.load225, ptr %next.gep223, align 1
  store <2 x i64> %wide.load226, ptr %i.wf, align 1
  %index.next227 = add nuw i64 %index222, 4       ; 2 uses
  %i.wg = icmp eq i64 %index.next227, %n.vec220
  br i1 %i.wg, label %middle.block228, label %vector.body221, !llvm.loop !112

middle.block228:                                  ; preds = %vector.body221
  %cmp.n229 = icmp eq i64 %i.vy, %n.vec220
  br i1 %cmp.n229, label %ZSTDv06_wildcopy.exit.i.i, label %.preheader123.i.i.preheader236

.preheader123.i.i.preheader236:                   ; preds = %.preheader123.i.i.preheader, %middle.block228
  %.09.i.i.i.ph = phi ptr [ %.068.i, %.preheader123.i.i.preheader ], [ %i.wb, %middle.block228 ]
  %.0.i.i.i.ph = phi ptr [ %.0124.i20, %.preheader123.i.i.preheader ], [ %i.wc, %middle.block228 ]
  br label %.preheader123.i.i

.preheader123.i.i:                                ; preds = %.preheader123.i.i.preheader236, %.preheader123.i.i
  %.09.i.i.i = phi ptr [ %i.wh, %.preheader123.i.i ], [ %.09.i.i.i.ph, %.preheader123.i.i.preheader236 ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.wi, %.preheader123.i.i ], [ %.0.i.i.i.ph, %.preheader123.i.i.preheader236 ] ; 2 uses
  %.0.val.i.i.i = load i64, ptr %.0.i.i.i, align 1
  store i64 %.0.val.i.i.i, ptr %.09.i.i.i, align 1
  %i.wh = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8 ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.wj = icmp ult ptr %i.wh, %i.vd
  br i1 %i.wj, label %.preheader123.i.i, label %ZSTDv06_wildcopy.exit.i.i, !llvm.loop !113

ZSTDv06_wildcopy.exit.i.i:                        ; preds = %.preheader123.i.i, %middle.block228
  %i.wk = ptrtoint ptr %i.vd to i64               ; 2 uses
  %i.wl = sub i64 %i.wk, %i.oz                    ; 5 uses
  %i.wm = icmp ugt i64 %i.rq, %i.wl
  br i1 %i.wm, label %bb.ci, label %.thread.i117.i

bb.ci:                                            ; preds = %ZSTDv06_wildcopy.exit.i.i
  %i.wn = sub i64 %i.wk, %i.pa
  %i.wo = icmp ugt i64 %i.rq, %i.wn
  br i1 %i.wo, label %.thread154.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.wp = ptrtoint ptr %i.vi to i64
  %.neg.i.i = sub i64 %i.wp, %i.oz                ; 4 uses
  %i.wq = getelementptr inbounds i8, ptr %i.gd, i64 %.neg.i.i ; 2 uses
  %i.wr = add nsw i64 %.neg.i.i, %i.sh            ; 3 uses
  %.not.i120.i = icmp sgt i64 %i.wr, 0
  br i1 %.not.i120.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.vd, ptr readonly align 1 %i.wq, i64 %i.sh, i1 false)
  br label %ZSTDv06_execSequence.exit.i

bb.cl:                                            ; preds = %bb.cj
  %gepdiff.i.i = sub nsw i64 0, %.neg.i.i         ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.vd, ptr readonly align 1 %i.wq, i64 %gepdiff.i.i, i1 false)
  %i.ws = getelementptr inbounds nuw i8, ptr %i.vd, i64 %gepdiff.i.i ; 7 uses
  %i.wt = icmp ule ptr %i.ws, %i.ow
  %i.wu = icmp samesign ugt i64 %i.wr, 2
  %or.cond.not.i.i = select i1 %i.wt, i1 %i.wu, i1 false
  br i1 %or.cond.not.i.i, label %.thread.i117.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.cl
  %i.wv = sub nsw i64 %i.sw, %.neg.i.i
  %i.ww = icmp slt i64 %i.wv, %i.ve
  br i1 %i.ww, label %iter.check196, label %ZSTDv06_execSequence.exit.i

iter.check196:                                    ; preds = %.preheader.i.i
  %i.wx = add i64 %i.sg, %i.sv
  %i.wy = add i64 %i.wx, %i.vj
  %i.wz = add i64 %i.wy, %i.sk
  %i.xa = add i64 %i.wz, %i.rv
  %i.xb = add i64 %i.ph, %i.rq
  %umax176 = tail call i64 @llvm.umax.i64(i64 %i.xa, i64 %i.xb)
  %i.xc = add i64 %i.rq, %i.oz
  %i.xd = sub i64 %umax176, %i.xc                 ; 7 uses
  %min.iters.check178 = icmp ult i64 %i.xd, 4
  %diff.check175 = icmp ult i64 %i.rq, 32
  %or.cond232 = select i1 %min.iters.check178, i1 true, i1 %diff.check175
  br i1 %or.cond232, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check179

vector.main.loop.iter.check179:                   ; preds = %iter.check196
  %min.iters.check180 = icmp ult i64 %i.xd, 32
  br i1 %min.iters.check180, label %vec.epilog.ph200, label %vector.ph181

vector.ph181:                                     ; preds = %vector.main.loop.iter.check179
  %n.mod.vf182 = and i64 %i.xd, 28
  %n.vec183 = and i64 %i.xd, -32                  ; 5 uses
  %i.xe = getelementptr i8, ptr %i.ws, i64 %n.vec183
  %i.xf = getelementptr i8, ptr %i.fz, i64 %n.vec183
  br label %vector.body184

vector.body184:                                   ; preds = %vector.body184, %vector.ph181
  %index185 = phi i64 [ 0, %vector.ph181 ], [ %index.next190, %vector.body184 ] ; 3 uses
  %next.gep186 = getelementptr i8, ptr %i.ws, i64 %index185 ; 2 uses
  %next.gep187 = getelementptr i8, ptr %i.fz, i64 %index185 ; 2 uses
  %i.xg = getelementptr i8, ptr %next.gep187, i64 16
  %wide.load188 = load <16 x i8>, ptr %next.gep187, align 1, !tbaa !27
  %wide.load189 = load <16 x i8>, ptr %i.xg, align 1, !tbaa !27
  %i.xh = getelementptr i8, ptr %next.gep186, i64 16
  store <16 x i8> %wide.load188, ptr %next.gep186, align 1, !tbaa !27
  store <16 x i8> %wide.load189, ptr %i.xh, align 1, !tbaa !27
  %index.next190 = add nuw i64 %index185, 32      ; 2 uses
  %i.xi = icmp eq i64 %index.next190, %n.vec183
  br i1 %i.xi, label %middle.block191, label %vector.body184, !llvm.loop !114

middle.block191:                                  ; preds = %vector.body184
  %cmp.n192 = icmp eq i64 %i.xd, %n.vec183
  br i1 %cmp.n192, label %ZSTDv06_execSequence.exit.i, label %vec.epilog.iter.check198

vec.epilog.iter.check198:                         ; preds = %middle.block191
  %min.epilog.iters.check199 = icmp eq i64 %n.mod.vf182, 0
  br i1 %min.epilog.iters.check199, label %.lr.ph.i.i.preheader, label %vec.epilog.ph200, !prof !115

vec.epilog.ph200:                                 ; preds = %vector.main.loop.iter.check179, %vec.epilog.iter.check198
  %vec.epilog.resume.val193 = phi i64 [ %n.vec183, %vec.epilog.iter.check198 ], [ 0, %vector.main.loop.iter.check179 ]
  %n.vec202 = and i64 %i.xd, -4                   ; 4 uses
  %i.xj = getelementptr i8, ptr %i.ws, i64 %n.vec202
  %i.xk = getelementptr i8, ptr %i.fz, i64 %n.vec202
  br label %vec.epilog.vector.body203

vec.epilog.vector.body203:                        ; preds = %vec.epilog.vector.body203, %vec.epilog.ph200
  %index204 = phi i64 [ %vec.epilog.resume.val193, %vec.epilog.ph200 ], [ %index.next208, %vec.epilog.vector.body203 ] ; 3 uses
  %next.gep205 = getelementptr i8, ptr %i.ws, i64 %index204
  %next.gep206 = getelementptr i8, ptr %i.fz, i64 %index204
  %wide.load207 = load <4 x i8>, ptr %next.gep206, align 1, !tbaa !27
  store <4 x i8> %wide.load207, ptr %next.gep205, align 1, !tbaa !27
  %index.next208 = add nuw i64 %index204, 4       ; 2 uses
  %i.xl = icmp eq i64 %index.next208, %n.vec202
  br i1 %i.xl, label %vec.epilog.middle.block209, label %vec.epilog.vector.body203, !llvm.loop !116

vec.epilog.middle.block209:                       ; preds = %vec.epilog.vector.body203
  %cmp.n210 = icmp eq i64 %i.xd, %n.vec202
  br i1 %cmp.n210, label %ZSTDv06_execSequence.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check196, %vec.epilog.iter.check198, %vec.epilog.middle.block209
  %.089125.i.i.ph = phi ptr [ %i.ws, %iter.check196 ], [ %i.xe, %vec.epilog.iter.check198 ], [ %i.xj, %vec.epilog.middle.block209 ]
  %.092124.i.i.ph = phi ptr [ %i.fz, %iter.check196 ], [ %i.xf, %vec.epilog.iter.check198 ], [ %i.xk, %vec.epilog.middle.block209 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.089125.i.i = phi ptr [ %i.xo, %.lr.ph.i.i ], [ %.089125.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.092124.i.i = phi ptr [ %i.xm, %.lr.ph.i.i ], [ %.092124.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %.092124.i.i, i64 1
  %i.xn = load i8, ptr %.092124.i.i, align 1, !tbaa !27
  %i.xo = getelementptr inbounds nuw i8, ptr %.089125.i.i, i64 1 ; 2 uses
  store i8 %i.xn, ptr %.089125.i.i, align 1, !tbaa !27
  %i.xp = icmp ult ptr %i.xo, %i.vf
  br i1 %i.xp, label %.lr.ph.i.i, label %ZSTDv06_execSequence.exit.i, !llvm.loop !117

.thread.i117.i:                                   ; preds = %bb.cl, %ZSTDv06_wildcopy.exit.i.i
  %i.xq = phi i64 [ %i.wr, %bb.cl ], [ %i.sh, %ZSTDv06_wildcopy.exit.i.i ]
  %.294.i.i = phi ptr [ %i.fz, %bb.cl ], [ %i.vi, %ZSTDv06_wildcopy.exit.i.i ] ; 7 uses
  %.2.i118.i = phi ptr [ %i.ws, %bb.cl ], [ %i.vd, %ZSTDv06_wildcopy.exit.i.i ] ; 8 uses
  %i.xr = icmp ult i64 %i.rq, 8
  br i1 %i.xr, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %.thread.i117.i
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv06_execSequence.dec64table, i64 %i.rq
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !3
  %i.xu = load i8, ptr %.294.i.i, align 1, !tbaa !27
  store i8 %i.xu, ptr %.2.i118.i, align 1, !tbaa !27
  %i.xv = getelementptr inbounds nuw i8, ptr %.294.i.i, i64 1
  %i.xw = load i8, ptr %i.xv, align 1, !tbaa !27
  %i.xx = getelementptr inbounds nuw i8, ptr %.2.i118.i, i64 1
  store i8 %i.xw, ptr %i.xx, align 1, !tbaa !27
  %i.xy = getelementptr inbounds nuw i8, ptr %.294.i.i, i64 2
  %i.xz = load i8, ptr %i.xy, align 1, !tbaa !27
  %i.ya = getelementptr inbounds nuw i8, ptr %.2.i118.i, i64 2
  store i8 %i.xz, ptr %i.ya, align 1, !tbaa !27
  %i.yb = getelementptr inbounds nuw i8, ptr %.294.i.i, i64 3
  %i.yc = load i8, ptr %i.yb, align 1, !tbaa !27
  %i.yd = getelementptr inbounds nuw i8, ptr %.2.i118.i, i64 3
  store i8 %i.yc, ptr %i.yd, align 1, !tbaa !27
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv06_execSequence.dec32table, i64 %i.rq
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !3
  %i.yg = zext i32 %i.yf to i64
  %i.yh = getelementptr inbounds nuw i8, ptr %.294.i.i, i64 %i.yg ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %.2.i118.i, i64 4
  %.val.i119.i = load i32, ptr %i.yh, align 1
  store i32 %.val.i119.i, ptr %i.yi, align 1
  %i.yj = sext i32 %i.xt to i64
  %i.yk = sub nsw i64 0, %i.yj
  %i.yl = getelementptr inbounds i8, ptr %i.yh, i64 %i.yk
  br label %bb.co

bb.cn:                                            ; preds = %.thread.i117.i
  %.294.val.i.i = load i64, ptr %.294.i.i, align 1
  store i64 %.294.val.i.i, ptr %.2.i118.i, align 1
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.395.i.i = phi ptr [ %i.yl, %bb.cm ], [ %.294.i.i, %bb.cn ] ; 2 uses
  %.395.i.i135 = ptrtoaddr ptr %.395.i.i to i64   ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %.2.i118.i, i64 8 ; 11 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %.395.i.i, i64 8 ; 10 uses
  %i.yo = icmp ugt ptr %i.vf, %i.pb
  br i1 %i.yo, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %bb.co
  %i.yp = icmp ult ptr %i.ym, %i.ow
  br i1 %i.yp, label %.preheader.i.preheader, label %bb.cq

.preheader.i.preheader:                           ; preds = %bb.cp
  %umax137 = tail call i64 @llvm.umax.i64(i64 %i.rq, i64 %i.wl) ; 2 uses
  %i.yq = add i64 %umax137, %i.pj
  %umax138 = tail call i64 @llvm.umax.i64(i64 %i.pc, i64 %i.yq)
  %i.yr = add i64 %umax137, %i.oz
  %6 = sub i64 %umax138, %i.yr
  %7 = add i64 %6, -9                             ; 2 uses
  %i.ys = lshr i64 %7, 3
  %i.yt = add nuw nsw i64 %i.ys, 1                ; 2 uses
  %min.iters.check139 = icmp ult i64 %7, 104
  br i1 %min.iters.check139, label %.preheader.i.preheader233, label %vector.memcheck133

vector.memcheck133:                               ; preds = %.preheader.i.preheader
  %i.yu = sub i64 %i.sv, %i.oz
  %i.yv = add i64 %i.yu, %i.vj
  %i.yw = add i64 %i.yv, %i.sk
  %umax134 = tail call i64 @llvm.umax.i64(i64 %i.rq, i64 %i.yw)
  %i.yx = add i64 %umax134, %i.oz
  %i.yy = sub i64 %.395.i.i135, %i.yx
  %diff.check136 = icmp ugt i64 %i.yy, -32
  br i1 %diff.check136, label %.preheader.i.preheader233, label %vector.ph140

vector.ph140:                                     ; preds = %vector.memcheck133
  %n.vec142 = and i64 %i.yt, 4611686018427387900  ; 3 uses
  %i.yz = shl i64 %n.vec142, 3                    ; 2 uses
  %i.za = getelementptr i8, ptr %i.ym, i64 %i.yz
  %i.zb = getelementptr i8, ptr %i.yn, i64 %i.yz
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph140
  %index144 = phi i64 [ 0, %vector.ph140 ], [ %index.next149, %vector.body143 ] ; 2 uses
  %i.zc = shl i64 %index144, 3                    ; 2 uses
  %next.gep145 = getelementptr i8, ptr %i.ym, i64 %i.zc ; 2 uses
  %next.gep146 = getelementptr i8, ptr %i.yn, i64 %i.zc ; 2 uses
  %i.zd = getelementptr i8, ptr %next.gep146, i64 16
  %wide.load147 = load <2 x i64>, ptr %next.gep146, align 1
  %wide.load148 = load <2 x i64>, ptr %i.zd, align 1
  %i.ze = getelementptr i8, ptr %next.gep145, i64 16
  store <2 x i64> %wide.load147, ptr %next.gep145, align 1
  store <2 x i64> %wide.load148, ptr %i.ze, align 1
  %index.next149 = add nuw i64 %index144, 4       ; 2 uses
  %i.zf = icmp eq i64 %index.next149, %n.vec142
  br i1 %i.zf, label %middle.block150, label %vector.body143, !llvm.loop !118

middle.block150:                                  ; preds = %vector.body143
  %cmp.n151 = icmp eq i64 %i.yt, %n.vec142
  br i1 %cmp.n151, label %ZSTDv06_wildcopy.exit114.i.i, label %.preheader.i.preheader233

.preheader.i.preheader233:                        ; preds = %vector.memcheck133, %.preheader.i.preheader, %middle.block150
  %.09.i111.i.i.ph = phi ptr [ %i.ym, %vector.memcheck133 ], [ %i.ym, %.preheader.i.preheader ], [ %i.za, %middle.block150 ]
  %.0.i112.i.i.ph = phi ptr [ %i.yn, %vector.memcheck133 ], [ %i.yn, %.preheader.i.preheader ], [ %i.zb, %middle.block150 ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader233, %.preheader.i
  %.09.i111.i.i = phi ptr [ %i.zg, %.preheader.i ], [ %.09.i111.i.i.ph, %.preheader.i.preheader233 ] ; 2 uses
  %.0.i112.i.i = phi ptr [ %i.zh, %.preheader.i ], [ %.0.i112.i.i.ph, %.preheader.i.preheader233 ] ; 2 uses
  %.0.val.i113.i.i = load i64, ptr %.0.i112.i.i, align 1
  store i64 %.0.val.i113.i.i, ptr %.09.i111.i.i, align 1
  %i.zg = getelementptr inbounds nuw i8, ptr %.09.i111.i.i, i64 8 ; 2 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %.0.i112.i.i, i64 8
  %i.zi = icmp ult ptr %i.zg, %i.ow
  br i1 %i.zi, label %.preheader.i, label %ZSTDv06_wildcopy.exit114.i.i, !llvm.loop !119

ZSTDv06_wildcopy.exit114.i.i:                     ; preds = %.preheader.i, %middle.block150
  %i.zj = ptrtoint ptr %i.ym to i64
  %i.zk = sub i64 %i.pc, %i.zj
  %i.zl = getelementptr inbounds i8, ptr %i.yn, i64 %i.zk
  br label %bb.cq

bb.cq:                                            ; preds = %ZSTDv06_wildcopy.exit114.i.i, %bb.cp
  %.496.i.i = phi ptr [ %i.zl, %ZSTDv06_wildcopy.exit114.i.i ], [ %i.yn, %bb.cp ] ; 7 uses
  %.3.i.i = phi ptr [ %i.ow, %ZSTDv06_wildcopy.exit114.i.i ], [ %i.ym, %bb.cp ] ; 7 uses
  %.496.i.i116 = ptrtoaddr ptr %.496.i.i to i64
  %i.zm = icmp ult ptr %.3.i.i, %i.vf
  br i1 %i.zm, label %iter.check, label %ZSTDv06_execSequence.exit.i

iter.check:                                       ; preds = %bb.cq
  %i.zn = add i64 %i.sg, %i.sv
  %i.zo = add i64 %i.zn, %i.vj
  %i.zp = add i64 %i.zo, %i.sk
  %i.zq = add i64 %i.zp, %i.rv
  %umax117 = tail call i64 @llvm.umax.i64(i64 %i.rq, i64 %i.wl)
  %i.zr = add i64 %i.pg, %umax117
  %umax118 = tail call i64 @llvm.umax.i64(i64 %i.pc, i64 %i.zr)
  %i.zs = sub i64 %i.zq, %umax118                 ; 7 uses
  %min.iters.check = icmp ult i64 %i.zs, 4
  br i1 %min.iters.check, label %.lr.ph128.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.zt = sub i64 %i.sv, %i.oz
  %i.zu = add i64 %i.zt, %i.vj
  %i.zv = add i64 %i.zu, %i.sk
  %umax = tail call i64 @llvm.umax.i64(i64 %i.rq, i64 %i.zv)
  %i.zw = add i64 %i.pf, %umax
  %umax115 = tail call i64 @llvm.umax.i64(i64 %i.pe, i64 %i.zw)
  %i.zx = sub i64 %.496.i.i116, %umax115
  %diff.check = icmp ugt i64 %i.zx, -32
  br i1 %diff.check, label %.lr.ph128.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check119 = icmp ult i64 %i.zs, 32
  br i1 %min.iters.check119, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.zs, 28
  %n.vec = and i64 %i.zs, -32                     ; 5 uses
  %i.zy = getelementptr i8, ptr %.3.i.i, i64 %n.vec
  %i.zz = getelementptr i8, ptr %.496.i.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.3.i.i, i64 %index ; 2 uses
  %next.gep120 = getelementptr i8, ptr %.496.i.i, i64 %index ; 2 uses
  %i.aaa = getelementptr i8, ptr %next.gep120, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep120, align 1, !tbaa !27
  %wide.load121 = load <16 x i8>, ptr %i.aaa, align 1, !tbaa !27
  %i.aab = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !27
  store <16 x i8> %wide.load121, ptr %i.aab, align 1, !tbaa !27
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aac = icmp eq i64 %index.next, %n.vec
  br i1 %i.aac, label %middle.block, label %vector.body, !llvm.loop !120

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.zs, %n.vec
  br i1 %cmp.n, label %ZSTDv06_execSequence.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph128.i.i.preheader, label %vec.epilog.ph, !prof !115

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec124 = and i64 %i.zs, -4                   ; 4 uses
  %i.aad = getelementptr i8, ptr %.3.i.i, i64 %n.vec124
  %i.aae = getelementptr i8, ptr %.496.i.i, i64 %n.vec124
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index125 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next129, %vec.epilog.vector.body ] ; 3 uses
  %next.gep126 = getelementptr i8, ptr %.3.i.i, i64 %index125
  %next.gep127 = getelementptr i8, ptr %.496.i.i, i64 %index125
  %wide.load128 = load <4 x i8>, ptr %next.gep127, align 1, !tbaa !27
  store <4 x i8> %wide.load128, ptr %next.gep126, align 1, !tbaa !27
  %index.next129 = add nuw i64 %index125, 4       ; 2 uses
  %i.aaf = icmp eq i64 %index.next129, %n.vec124
  br i1 %i.aaf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !121

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n130 = icmp eq i64 %i.zs, %n.vec124
  br i1 %cmp.n130, label %ZSTDv06_execSequence.exit.i, label %.lr.ph128.i.i.preheader

.lr.ph128.i.i.preheader:                          ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.4127.i.i.ph = phi ptr [ %.3.i.i, %iter.check ], [ %.3.i.i, %vector.memcheck ], [ %i.zy, %vec.epilog.iter.check ], [ %i.aad, %vec.epilog.middle.block ]
  %.5126.i.i.ph = phi ptr [ %.496.i.i, %iter.check ], [ %.496.i.i, %vector.memcheck ], [ %i.zz, %vec.epilog.iter.check ], [ %i.aae, %vec.epilog.middle.block ]
  br label %.lr.ph128.i.i

.lr.ph128.i.i:                                    ; preds = %.lr.ph128.i.i.preheader, %.lr.ph128.i.i
  %.4127.i.i = phi ptr [ %i.aai, %.lr.ph128.i.i ], [ %.4127.i.i.ph, %.lr.ph128.i.i.preheader ] ; 2 uses
  %.5126.i.i = phi ptr [ %i.aag, %.lr.ph128.i.i ], [ %.5126.i.i.ph, %.lr.ph128.i.i.preheader ] ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %.5126.i.i, i64 1
  %i.aah = load i8, ptr %.5126.i.i, align 1, !tbaa !27
  %i.aai = getelementptr inbounds nuw i8, ptr %.4127.i.i, i64 1 ; 2 uses
  store i8 %i.aah, ptr %.4127.i.i, align 1, !tbaa !27
  %i.aaj = icmp ult ptr %i.aai, %i.vf
  br i1 %i.aaj, label %.lr.ph128.i.i, label %ZSTDv06_execSequence.exit.i, !llvm.loop !122

bb.cr:                                            ; preds = %bb.co
  %i.aak = getelementptr i8, ptr %.2.i118.i, i64 %i.xq
  %8 = tail call i64 @llvm.umin.i64(i64 %i.rq, i64 %i.wl)
  %umin = tail call i64 @llvm.umax.i64(i64 %i.rq, i64 %i.wl) ; 3 uses
  %i.aal = add i64 %i.sg, %i.oz
  %9 = add i64 %i.aal, %8
  %i.aam = add i64 %9, %umin
  %10 = sub i64 %i.aam, %i.rq
  %11 = add i64 %10, %i.rv
  %i.aan = add i64 %umin, %i.pi
  %umax157 = tail call i64 @llvm.umax.i64(i64 %11, i64 %i.aan)
  %i.aao = add i64 %umin, %i.oz
  %12 = sub i64 %umax157, %i.aao
  %13 = add i64 %12, -9                           ; 2 uses
  %i.aap = lshr i64 %13, 3
  %i.aaq = add nuw nsw i64 %i.aap, 1              ; 2 uses
  %min.iters.check159 = icmp ult i64 %13, 104
  br i1 %min.iters.check159, label %scalar.ph158.preheader, label %vector.memcheck153

vector.memcheck153:                               ; preds = %bb.cr
  %i.aar = sub i64 %i.sv, %i.oz
  %i.aas = add i64 %i.aar, %i.vj
  %i.aat = add i64 %i.aas, %i.sk
  %umax154 = tail call i64 @llvm.umax.i64(i64 %i.rq, i64 %i.aat)
  %i.aau = add i64 %umax154, %i.oz
  %i.aav = sub i64 %.395.i.i135, %i.aau
  %diff.check155 = icmp ugt i64 %i.aav, -32
  br i1 %diff.check155, label %scalar.ph158.preheader, label %vector.ph160

vector.ph160:                                     ; preds = %vector.memcheck153
  %n.vec162 = and i64 %i.aaq, 4611686018427387900 ; 3 uses
  %i.aaw = shl i64 %n.vec162, 3                   ; 2 uses
  %i.aax = getelementptr i8, ptr %i.ym, i64 %i.aaw
  %i.aay = getelementptr i8, ptr %i.yn, i64 %i.aaw
  br label %vector.body163

vector.body163:                                   ; preds = %vector.body163, %vector.ph160
  %index164 = phi i64 [ 0, %vector.ph160 ], [ %index.next169, %vector.body163 ] ; 2 uses
  %i.aaz = shl i64 %index164, 3                   ; 2 uses
  %next.gep165 = getelementptr i8, ptr %i.ym, i64 %i.aaz ; 2 uses
  %next.gep166 = getelementptr i8, ptr %i.yn, i64 %i.aaz ; 2 uses
  %i.aba = getelementptr i8, ptr %next.gep166, i64 16
  %wide.load167 = load <2 x i64>, ptr %next.gep166, align 1
  %wide.load168 = load <2 x i64>, ptr %i.aba, align 1
  %i.abb = getelementptr i8, ptr %next.gep165, i64 16
  store <2 x i64> %wide.load167, ptr %next.gep165, align 1
  store <2 x i64> %wide.load168, ptr %i.abb, align 1
  %index.next169 = add nuw i64 %index164, 4       ; 2 uses
  %i.abc = icmp eq i64 %index.next169, %n.vec162
  br i1 %i.abc, label %middle.block170, label %vector.body163, !llvm.loop !123

middle.block170:                                  ; preds = %vector.body163
  %cmp.n171 = icmp eq i64 %i.aaq, %n.vec162
  br i1 %cmp.n171, label %ZSTDv06_execSequence.exit.i, label %scalar.ph158.preheader

scalar.ph158.preheader:                           ; preds = %vector.memcheck153, %bb.cr, %middle.block170
  %.09.i115.i.i.ph = phi ptr [ %i.ym, %vector.memcheck153 ], [ %i.ym, %bb.cr ], [ %i.aax, %middle.block170 ]
  %.0.i116.i.i.ph = phi ptr [ %i.yn, %vector.memcheck153 ], [ %i.yn, %bb.cr ], [ %i.aay, %middle.block170 ]
  br label %scalar.ph158

scalar.ph158:                                     ; preds = %scalar.ph158.preheader, %scalar.ph158
  %.09.i115.i.i = phi ptr [ %i.abd, %scalar.ph158 ], [ %.09.i115.i.i.ph, %scalar.ph158.preheader ] ; 2 uses
  %.0.i116.i.i = phi ptr [ %i.abe, %scalar.ph158 ], [ %.0.i116.i.i.ph, %scalar.ph158.preheader ] ; 2 uses
  %.0.val.i117.i.i = load i64, ptr %.0.i116.i.i, align 1
  store i64 %.0.val.i117.i.i, ptr %.09.i115.i.i, align 1
  %i.abd = getelementptr inbounds nuw i8, ptr %.09.i115.i.i, i64 8 ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %.0.i116.i.i, i64 8
  %i.abf = icmp ult ptr %i.abd, %i.aak
  br i1 %i.abf, label %scalar.ph158, label %ZSTDv06_execSequence.exit.i, !llvm.loop !124

ZSTDv06_execSequence.exit.i:                      ; preds = %.lr.ph.i.i, %scalar.ph158, %.lr.ph128.i.i, %middle.block191, %vec.epilog.middle.block209, %middle.block170, %middle.block, %vec.epilog.middle.block, %bb.cq, %.preheader.i.i, %bb.ck
  %i.abg = icmp ult i64 %i.ve, -119
  br i1 %i.abg, label %bb.bn, label %.thread154.i, !llvm.loop !125

.thread154.i:                                     ; preds = %ZSTDv06_execSequence.exit.i, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %ZSTDv06_decodeSequence.exit.i, %BITv06_initDStream.exit.i, %bb.az, %bb.ar, %bb.ap
  %.4.ph.i = phi i64 [ -20, %bb.ar ], [ -20, %bb.az ], [ -20, %BITv06_initDStream.exit.i ], [ -20, %bb.ap ], [ %i.ve, %ZSTDv06_execSequence.exit.i ], [ -20, %bb.ci ], [ -20, %bb.ch ], [ -70, %bb.cg ], [ -20, %bb.cf ], [ -70, %ZSTDv06_decodeSequence.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %ZSTDv06_decompressSequences.exit

.loopexit.i:                                      ; preds = %bb.bn
  %.not278.i = icmp eq i32 %.0.i, 0
  br i1 %.not278.i, label %.thread266.i, label %bb.cs

.thread266.i:                                     ; preds = %BITv06_reloadDStream.exit.i, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.ct

bb.cs:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %ZSTDv06_decompressSequences.exit

bb.ct:                                            ; preds = %.thread266.i, %bb.ao, %.thread.i22
  %.2126.i = phi ptr [ %i.fq, %bb.ao ], [ %.0124.i20, %.thread266.i ], [ %i.fq, %.thread.i22 ] ; 4 uses
  %.371.i = phi ptr [ %1, %bb.ao ], [ %.068.i, %.thread266.i ], [ %1, %.thread.i22 ] ; 3 uses
  %i.abh = ptrtoint ptr %i.fv to i64
  %i.abi = ptrtoint ptr %.2126.i to i64
  %i.abj = sub i64 %i.abh, %i.abi                 ; 2 uses
  %i.abk = icmp ugt ptr %.2126.i, %i.fv
  br i1 %i.abk, label %ZSTDv06_decompressSequences.exit, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.abl = getelementptr inbounds nuw i8, ptr %.371.i, i64 %i.abj ; 2 uses
  %i.abm = icmp ugt ptr %i.abl, %i.fu
  br i1 %i.abm, label %ZSTDv06_decompressSequences.exit, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %.not86.i = icmp eq ptr %i.fv, %.2126.i
  br i1 %.not86.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.371.i, ptr align 1 %.2126.i, i64 %i.abj, i1 false)
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.573.ph.i = phi ptr [ %.371.i, %bb.cv ], [ %i.abl, %bb.cw ]
  %i.abn = ptrtoint ptr %.573.ph.i to i64
  %i.abo = ptrtoint ptr %1 to i64
  %i.abp = sub i64 %i.abn, %i.abo
  br label %ZSTDv06_decompressSequences.exit

ZSTDv06_decompressSequences.exit:                 ; preds = %.thread.i, %bb.ab, %bb.o, %bb.m, %bb.l, %bb.g, %bb.f, %bb.d, %bb.n, %bb.j, %bb.b, %bb.v, %bb.cx, %bb.cu, %bb.ct, %bb.cs, %.thread154.i, %ZSTDv06_decodeSeqHeaders.exit.i, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.ai, %bb.ag, %bb.ac, %bb.a
  %.1 = phi i64 [ -20, %bb.am ], [ -72, %bb.a ], [ %i.abp, %bb.cx ], [ %.4.ph.i, %.thread154.i ], [ -20, %bb.cs ], [ %i.hy, %ZSTDv06_decodeSeqHeaders.exit.i ], [ -20, %bb.ct ], [ -70, %bb.cu ], [ -20, %bb.al ], [ -72, %bb.ag ], [ -72, %bb.ai ], [ -72, %bb.ak ], [ -20, %bb.an ], [ -72, %bb.ac ], [ -20, %.thread.i ], [ -20, %bb.ab ], [ -20, %bb.o ], [ -30, %bb.m ], [ -20, %bb.l ], [ -20, %bb.g ], [ -20, %bb.f ], [ -20, %bb.d ], [ -20, %bb.n ], [ -20, %bb.j ], [ -20, %bb.b ], [ -20, %bb.v ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define i64 @ZSTDv06_decompress_usingPreparedDCtx(ptr noundef initializes((0, 21619)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(21619) %0, ptr noundef nonnull readonly align 8 dereferenceable(21619) %1, i64 21619, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 21520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 3 uses
  %.not.i = icmp eq ptr %2, %i.b
  br i1 %.not.i, label %ZSTDv06_checkContinuity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 21544
  store ptr %i.b, ptr %i.c, align 8, !tbaa !104
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 21528 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64
  %.neg.i = sub i64 %i.g, %i.f
  %i.h = getelementptr inbounds i8, ptr %2, i64 %.neg.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 21536
  store ptr %i.h, ptr %i.i, align 8, !tbaa !106
  store ptr %2, ptr %i.d, align 8, !tbaa !105
  store ptr %2, ptr %i.a, align 8, !tbaa !103
  br label %ZSTDv06_checkContinuity.exit

ZSTDv06_checkContinuity.exit:                     ; preds = %bb.a, %bb.b
  %i.j = tail call fastcc i64 @ZSTDv06_decompressFrame(ptr noundef nonnull %0, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5)
  ret i64 %i.j
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @ZSTDv06_decompressFrame(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.c = icmp ult i64 %4, 8
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !27
  %i.f = lshr i8 %i.e, 6
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @ZSTDv06_fcs_fieldSize, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !100  ; 2 uses
  %i.j = add i64 %i.i, 5                          ; 4 uses
  %i.k = icmp ult i64 %i.j, -119
  br i1 %i.k, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.l = add i64 %i.i, 8
  %i.m = icmp ult i64 %4, %i.l
  br i1 %i.m, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 21568 ; 2 uses
  %.val.i.i = load i32, ptr %3, align 1
  %.not.i.i = icmp eq i32 %.val.i.i, -47205082
  br i1 %.not.i.i, label %ZSTDv06_frameHeaderSize.exit.i.i, label %.thread

ZSTDv06_frameHeaderSize.exit.i.i:                 ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.o = load i8, ptr %i.d, align 1, !tbaa !27
  %i.p = zext i8 %i.o to i32                      ; 3 uses
  %i.q = and i32 %i.p, 15
  %i.r = add nuw nsw i32 %i.q, 12
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 21576
  store i32 %i.r, ptr %i.s, align 8, !tbaa !101
  %i.t = and i32 %i.p, 32
  %.not27.i.i = icmp eq i32 %i.t, 0
  br i1 %.not27.i.i, label %bb.e, label %.thread

bb.e:                                             ; preds = %ZSTDv06_frameHeaderSize.exit.i.i
  %i.u = lshr i32 %i.p, 6
  switch i32 %i.u, label %default.unreachable [
    i32 0, label %bb.i
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
  ]

default.unreachable:                              ; preds = %bb.m, %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.w = load i8, ptr %i.v, align 1, !tbaa !27
  %i.x = zext i8 %i.w to i64
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 5
  %.val29.i.i = load i16, ptr %i.y, align 1
end_hunk_1
