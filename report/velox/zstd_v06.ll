Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/zstd_v06?download=true
inline.NumInlined: 337
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 20
begin_hunk_0_@ZSTDv06_decompressBlock_internal:bb.a
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
  store ptr %i.lt, ptr %i.lb, align 8, !tbaa !35
  %i.lu = shl i32 %.024.i.i.i, 3
  %i.lv = sub i32 %i.kz, %i.lu
  br label %BITv06_reloadDStream.exit.sink.split.i.i

BITv06_reloadDStream.exit.sink.split.i.i:         ; preds = %bb.be, %bb.bc
  %storemerge.i = phi i32 [ %i.lh, %bb.bc ], [ %i.lv, %bb.be ]
  %.val30.i.sink.in.i.i = phi ptr [ %i.lg, %bb.bc ], [ %i.lt, %bb.be ] ; 2 uses
  %.val30.i.sink.i.i = load i64, ptr %.val30.i.sink.in.i.i, align 1 ; 2 uses
  store i64 %.val30.i.sink.i.i, ptr %5, align 8, !tbaa !36
  br label %FSEv06_initDState.exit.i

FSEv06_initDState.exit.i:                         ; preds = %BITv06_reloadDStream.exit.sink.split.i.i, %bb.bd, %bb.ba
  %i.lw = phi ptr [ %i.km, %bb.ba ], [ %i.ia, %bb.bd ], [ %.val30.i.sink.in.i.i, %BITv06_reloadDStream.exit.sink.split.i.i ] ; 7 uses
  %.val4.i.i91.i = phi i32 [ %i.kz, %bb.ba ], [ %i.kz, %bb.bd ], [ %storemerge.i, %BITv06_reloadDStream.exit.sink.split.i.i ] ; 2 uses
  %.val.i.i90.i = phi i64 [ %.val.i.i.i, %bb.ba ], [ %.val.i.i.i, %bb.bd ], [ %.val30.i.sink.i.i, %BITv06_reloadDStream.exit.sink.split.i.i ] ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.lx, ptr %i.ly, align 8, !tbaa !128
  %i.lz = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.ma = load i16, ptr %i.fx, align 4, !tbaa !24
  %i.mb = zext i16 %i.ma to i32                   ; 2 uses
  %i.mc = and i32 %.val4.i.i91.i, 63
  %i.md = zext nneg i32 %i.mc to i64
  %i.me = shl i64 %.val.i.i90.i, %i.md
  %i.mf = lshr i64 %i.me, 1
  %i.mg = and i32 %i.mb, 63
  %i.mh = xor i32 %i.mg, 63
  %i.mi = zext nneg i32 %i.mh to i64
  %i.mj = lshr i64 %i.mf, %i.mi                   ; 2 uses
  %i.mk = add i32 %.val4.i.i91.i, %i.mb           ; 7 uses
  store i64 %i.mj, ptr %i.lz, align 8, !tbaa !127
  %i.ml = icmp ugt i32 %i.mk, 64
  br i1 %i.ml, label %FSEv06_initDState.exit97.i, label %bb.bf

bb.bf:                                            ; preds = %FSEv06_initDState.exit.i
  %i.mm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %.not.i.i92.i = icmp ult ptr %i.lw, %i.mn
  br i1 %.not.i.i92.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.mo = lshr i32 %i.mk, 3
  %i.mp = zext nneg i32 %i.mo to i64
  %i.mq = sub nsw i64 0, %i.mp
  %i.mr = getelementptr inbounds i8, ptr %i.lw, i64 %i.mq ; 2 uses
  store ptr %i.mr, ptr %i.mm, align 8, !tbaa !35
  %i.ms = and i32 %i.mk, 7
  br label %BITv06_reloadDStream.exit.sink.split.i93.i

bb.bh:                                            ; preds = %bb.bf
  %i.mt = icmp eq ptr %i.lw, %i.hv
  br i1 %i.mt, label %FSEv06_initDState.exit97.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mu = lshr i32 %i.mk, 3                       ; 2 uses
  %i.mv = zext nneg i32 %i.mu to i64
  %i.mw = sub nsw i64 0, %i.mv
  %i.mx = getelementptr inbounds i8, ptr %i.lw, i64 %i.mw
  %i.my = icmp ult ptr %i.mx, %i.hv
  %i.mz = ptrtoint ptr %i.lw to i64
  %i.na = sub i64 %i.mz, %i.hw
  %i.nb = trunc i64 %i.na to i32
  %.024.i.i96.i = select i1 %i.my, i32 %i.nb, i32 %i.mu ; 2 uses
  %i.nc = zext i32 %.024.i.i96.i to i64
  %i.nd = sub nsw i64 0, %i.nc
  %i.ne = getelementptr inbounds i8, ptr %i.lw, i64 %i.nd ; 2 uses
  store ptr %i.ne, ptr %i.mm, align 8, !tbaa !35
  %i.nf = shl i32 %.024.i.i96.i, 3
  %i.ng = sub i32 %i.mk, %i.nf
  br label %BITv06_reloadDStream.exit.sink.split.i93.i

BITv06_reloadDStream.exit.sink.split.i93.i:       ; preds = %bb.bi, %bb.bg
  %storemerge166.i = phi i32 [ %i.ms, %bb.bg ], [ %i.ng, %bb.bi ] ; 2 uses
  %.val30.i.sink.in.i94.i = phi ptr [ %i.mr, %bb.bg ], [ %i.ne, %bb.bi ] ; 2 uses
  store i32 %storemerge166.i, ptr %i.kq, align 8, !tbaa !37
  %.val30.i.sink.i95.i = load i64, ptr %.val30.i.sink.in.i94.i, align 1 ; 2 uses
  store i64 %.val30.i.sink.i95.i, ptr %5, align 8, !tbaa !36
  br label %FSEv06_initDState.exit97.i

FSEv06_initDState.exit97.i:                       ; preds = %BITv06_reloadDStream.exit.sink.split.i93.i, %bb.bh, %FSEv06_initDState.exit.i
  %i.nh = phi ptr [ %i.lw, %FSEv06_initDState.exit.i ], [ %i.ia, %bb.bh ], [ %.val30.i.sink.in.i94.i, %BITv06_reloadDStream.exit.sink.split.i93.i ] ; 7 uses
  %.val4.i.i99.i = phi i32 [ %i.mk, %FSEv06_initDState.exit.i ], [ %i.mk, %bb.bh ], [ %storemerge166.i, %BITv06_reloadDStream.exit.sink.split.i93.i ] ; 2 uses
  %.val.i.i98.i = phi i64 [ %.val.i.i90.i, %FSEv06_initDState.exit.i ], [ %.val.i.i90.i, %bb.bh ], [ %.val30.i.sink.i95.i, %BITv06_reloadDStream.exit.sink.split.i93.i ] ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 2056 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.ni, ptr %i.nj, align 8, !tbaa !128
  %i.nk = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.nl = load i16, ptr %i.fw, align 8, !tbaa !24
  %i.nm = zext i16 %i.nl to i32                   ; 2 uses
  %i.nn = and i32 %.val4.i.i99.i, 63
  %i.no = zext nneg i32 %i.nn to i64
  %i.np = shl i64 %.val.i.i98.i, %i.no
  %i.nq = lshr i64 %i.np, 1
  %i.nr = and i32 %i.nm, 63
  %i.ns = xor i32 %i.nr, 63
  %i.nt = zext nneg i32 %i.ns to i64
  %i.nu = lshr i64 %i.nq, %i.nt                   ; 2 uses
  %i.nv = add i32 %.val4.i.i99.i, %i.nm           ; 7 uses
  store i64 %i.nu, ptr %i.nk, align 8, !tbaa !127
  %i.nw = icmp ugt i32 %i.nv, 64
  br i1 %i.nw, label %FSEv06_initDState.exit105.i, label %bb.bj

bb.bj:                                            ; preds = %FSEv06_initDState.exit97.i
  %i.nx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %.not.i.i100.i = icmp ult ptr %i.nh, %i.ny
  br i1 %.not.i.i100.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.nz = lshr i32 %i.nv, 3
  %i.oa = zext nneg i32 %i.nz to i64
  %i.ob = sub nsw i64 0, %i.oa
  %i.oc = getelementptr inbounds i8, ptr %i.nh, i64 %i.ob ; 2 uses
  store ptr %i.oc, ptr %i.nx, align 8, !tbaa !35
  %i.od = and i32 %i.nv, 7
  br label %BITv06_reloadDStream.exit.sink.split.i101.i

bb.bl:                                            ; preds = %bb.bj
  %i.oe = icmp eq ptr %i.nh, %i.hv
  br i1 %i.oe, label %FSEv06_initDState.exit105.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.of = lshr i32 %i.nv, 3                       ; 2 uses
  %i.og = zext nneg i32 %i.of to i64
  %i.oh = sub nsw i64 0, %i.og
  %i.oi = getelementptr inbounds i8, ptr %i.nh, i64 %i.oh
  %i.oj = icmp ult ptr %i.oi, %i.hv
  %i.ok = ptrtoint ptr %i.nh to i64
  %i.ol = sub i64 %i.ok, %i.hw
  %i.om = trunc i64 %i.ol to i32
  %.024.i.i104.i = select i1 %i.oj, i32 %i.om, i32 %i.of ; 2 uses
  %i.on = zext i32 %.024.i.i104.i to i64
  %i.oo = sub nsw i64 0, %i.on
  %i.op = getelementptr inbounds i8, ptr %i.nh, i64 %i.oo ; 2 uses
  store ptr %i.op, ptr %i.nx, align 8, !tbaa !35
  %i.oq = shl i32 %.024.i.i104.i, 3
  %i.or = sub i32 %i.nv, %i.oq
  br label %BITv06_reloadDStream.exit.sink.split.i101.i

BITv06_reloadDStream.exit.sink.split.i101.i:      ; preds = %bb.bm, %bb.bk
  %storemerge167.i = phi i32 [ %i.od, %bb.bk ], [ %i.or, %bb.bm ] ; 2 uses
  %.val30.i.sink.in.i102.i = phi ptr [ %i.oc, %bb.bk ], [ %i.op, %bb.bm ] ; 2 uses
  store i32 %storemerge167.i, ptr %i.kq, align 8, !tbaa !37
  %.val30.i.sink.i103.i = load i64, ptr %.val30.i.sink.in.i102.i, align 1 ; 2 uses
  store i64 %.val30.i.sink.i103.i, ptr %5, align 8, !tbaa !36
  br label %FSEv06_initDState.exit105.i

FSEv06_initDState.exit105.i:                      ; preds = %BITv06_reloadDStream.exit.sink.split.i101.i, %bb.bl, %FSEv06_initDState.exit97.i
  %.promoted196.i = phi ptr [ %i.nh, %FSEv06_initDState.exit97.i ], [ %i.ia, %bb.bl ], [ %.val30.i.sink.in.i102.i, %BITv06_reloadDStream.exit.sink.split.i101.i ]
  %.promoted186.i = phi i64 [ %.val.i.i98.i, %FSEv06_initDState.exit97.i ], [ %.val.i.i98.i, %bb.bl ], [ %.val30.i.sink.i103.i, %BITv06_reloadDStream.exit.sink.split.i101.i ]
  %.promoted.i = phi i32 [ %i.nv, %FSEv06_initDState.exit97.i ], [ %i.nv, %bb.bl ], [ %storemerge167.i, %BITv06_reloadDStream.exit.sink.split.i101.i ]
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 3084 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %5, i64 72
  store ptr %i.os, ptr %i.ot, align 8, !tbaa !128
  %i.ou = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ia, i64 8 ; 2 uses
  %i.ow = getelementptr inbounds i8, ptr %i.fu, i64 -8 ; 6 uses
  %i.ox = ptrtoint ptr %i.fu to i64
  %i.oy = ptrtoint ptr %i.fv to i64
  %i.oz = ptrtoint ptr %i.fz to i64               ; 6 uses
  %i.pa = ptrtoint ptr %i.gb to i64
  %i.pb = getelementptr inbounds i8, ptr %i.fu, i64 -13
  %i.pc = ptrtoint ptr %i.ow to i64
  %i.pd = add i64 %2, %i.a
  %i.pe = add i64 %i.pd, -8                       ; 2 uses
  %i.pf = add i64 %i.oz, 8
  %i.pg = add i64 %i.oz, 8
  %i.ph = add i64 %i.oz, 1
  br label %bb.bn

bb.bn:                                            ; preds = %ZSTDv06_execSequence.exit.i, %FSEv06_initDState.exit105.i
  %i.pi = phi i64 [ 1, %FSEv06_initDState.exit105.i ], [ %i.ro, %ZSTDv06_execSequence.exit.i ] ; 3 uses
  %i.pj = phi i64 [ 1, %FSEv06_initDState.exit105.i ], [ %i.rp, %ZSTDv06_execSequence.exit.i ] ; 2 uses
  %i.pk = phi ptr [ %.promoted196.i, %FSEv06_initDState.exit105.i ], [ %i.tq, %ZSTDv06_execSequence.exit.i ] ; 7 uses
  %.val.i109195.i = phi i64 [ %i.mj, %FSEv06_initDState.exit105.i ], [ %i.va, %ZSTDv06_execSequence.exit.i ]
  %.val66.i193.i = phi i64 [ %i.nu, %FSEv06_initDState.exit105.i ], [ %i.uo, %ZSTDv06_execSequence.exit.i ]
  %.val68.i191.i = phi i64 [ %i.ky, %FSEv06_initDState.exit105.i ], [ %i.uc, %ZSTDv06_execSequence.exit.i ]
  %.val.i74.i187.i = phi i64 [ %.promoted186.i, %FSEv06_initDState.exit105.i ], [ %.val.i74.i188.i, %ZSTDv06_execSequence.exit.i ]
  %storemerge168180.i = phi i32 [ %.promoted.i, %FSEv06_initDState.exit105.i ], [ %i.uy, %ZSTDv06_execSequence.exit.i ] ; 6 uses
  %.0127.i = phi ptr [ %i.fq, %FSEv06_initDState.exit105.i ], [ %i.ve, %ZSTDv06_execSequence.exit.i ] ; 5 uses
  %.0126.i = phi i32 [ %.0.i.i, %FSEv06_initDState.exit105.i ], [ %i.qg, %ZSTDv06_execSequence.exit.i ] ; 3 uses
  %.068.i = phi ptr [ %1, %FSEv06_initDState.exit105.i ], [ %i.vd, %ZSTDv06_execSequence.exit.i ] ; 6 uses
  %i.pl = icmp ugt i32 %storemerge168180.i, 64
  br i1 %i.pl, label %.loopexit.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.not.i106.i = icmp ult ptr %i.pk, %i.ov
  br i1 %.not.i106.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.pm = lshr i32 %storemerge168180.i, 3
  %i.pn = zext nneg i32 %i.pm to i64
  %i.po = sub nsw i64 0, %i.pn
  %i.pp = getelementptr inbounds i8, ptr %i.pk, i64 %i.po ; 2 uses
  store ptr %i.pp, ptr %i.ou, align 8, !tbaa !35
  %i.pq = and i32 %storemerge168180.i, 7
  br label %BITv06_reloadDStream.exit.sink.split.i

bb.bq:                                            ; preds = %bb.bo
  %i.pr = icmp eq ptr %i.pk, %i.hv
  br i1 %i.pr, label %BITv06_reloadDStream.exit.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ps = lshr i32 %storemerge168180.i, 3         ; 2 uses
  %i.pt = zext nneg i32 %i.ps to i64
  %i.pu = sub nsw i64 0, %i.pt
  %i.pv = getelementptr inbounds i8, ptr %i.pk, i64 %i.pu
  %i.pw = icmp ult ptr %i.pv, %i.hv
  %i.px = ptrtoint ptr %i.pk to i64
  %i.py = sub i64 %i.px, %i.hw
  %i.pz = trunc i64 %i.py to i32
  %.024.i.i = select i1 %i.pw, i32 %i.pz, i32 %i.ps ; 2 uses
  %i.qa = zext i32 %.024.i.i to i64
  %i.qb = sub nsw i64 0, %i.qa
  %i.qc = getelementptr inbounds i8, ptr %i.pk, i64 %i.qb ; 2 uses
  store ptr %i.qc, ptr %i.ou, align 8, !tbaa !35
  %i.qd = shl i32 %.024.i.i, 3
  %i.qe = sub i32 %storemerge168180.i, %i.qd
  br label %BITv06_reloadDStream.exit.sink.split.i

BITv06_reloadDStream.exit.sink.split.i:           ; preds = %bb.br, %bb.bp
  %.ph.i = phi ptr [ %i.pp, %bb.bp ], [ %i.qc, %bb.br ] ; 2 uses
  %storemerge168183.ph.i = phi i32 [ %i.pq, %bb.bp ], [ %i.qe, %bb.br ] ; 2 uses
  store i32 %storemerge168183.ph.i, ptr %i.kq, align 8, !tbaa !37
  %.val30.i.sink.i = load i64, ptr %.ph.i, align 1 ; 2 uses
  store i64 %.val30.i.sink.i, ptr %5, align 8, !tbaa !36
  br label %BITv06_reloadDStream.exit.i

BITv06_reloadDStream.exit.i:                      ; preds = %BITv06_reloadDStream.exit.sink.split.i, %bb.bq
  %i.qf = phi ptr [ %i.pk, %bb.bq ], [ %.ph.i, %BITv06_reloadDStream.exit.sink.split.i ] ; 8 uses
  %.val.i74.i189.i = phi i64 [ %.val.i74.i187.i, %bb.bq ], [ %.val30.i.sink.i, %BITv06_reloadDStream.exit.sink.split.i ] ; 5 uses
  %storemerge168183.i = phi i32 [ %storemerge168180.i, %bb.bq ], [ %storemerge168183.ph.i, %BITv06_reloadDStream.exit.sink.split.i ] ; 3 uses
  %.not.i21 = icmp eq i32 %.0126.i, 0
  br i1 %.not.i21, label %.loopexit.thread.i, label %bb.bs

.loopexit.thread.i:                               ; preds = %BITv06_reloadDStream.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.ct

bb.bs:                                            ; preds = %BITv06_reloadDStream.exit.i
  %i.qg = add nsw i32 %.0126.i, -1
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %.val68.i191.i ; 3 uses
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qh, i64 2
  %.sroa.3.0.copyload.i.i.i = load i8, ptr %.sroa.3.0..sroa_idx.i.i.i, align 2, !tbaa !26 ; 3 uses
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %.val66.i193.i ; 3 uses
  %.sroa.3.0..sroa_idx.i70.i.i = getelementptr inbounds nuw i8, ptr %i.qi, i64 2
  %.sroa.3.0.copyload.i71.i.i = load i8, ptr %.sroa.3.0..sroa_idx.i70.i.i, align 2, !tbaa !26 ; 2 uses
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %.val.i109195.i ; 3 uses
  %.sroa.3.0..sroa_idx.i72.i.i = getelementptr inbounds nuw i8, ptr %i.qj, i64 2
  %.sroa.3.0.copyload.i73.i.i = load i8, ptr %.sroa.3.0..sroa_idx.i72.i.i, align 2, !tbaa !26 ; 3 uses
  %i.qk = zext i8 %.sroa.3.0.copyload.i73.i.i to i32 ; 3 uses
  %i.ql = zext i8 %.sroa.3.0.copyload.i.i.i to i64 ; 2 uses
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr @LL_bits, i64 %i.ql
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !15 ; 3 uses
  %i.qo = zext i8 %.sroa.3.0.copyload.i71.i.i to i64 ; 2 uses
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr @ML_bits, i64 %i.qo
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !15 ; 3 uses
  %i.qr = add i32 %i.qn, %i.qk
  %i.qs = add i32 %i.qr, %i.qq
  %.not.i110.i = icmp eq i8 %.sroa.3.0.copyload.i73.i.i, 0
  br i1 %.not.i110.i, label %.thread.i117.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.qt = zext i8 %.sroa.3.0.copyload.i73.i.i to i64
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv06_decodeSequence.OF_base, i64 %i.qt
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !15
  %i.qw = zext i32 %i.qv to i64
  %i.qx = and i32 %storemerge168183.i, 63
  %i.qy = zext nneg i32 %i.qx to i64
  %i.qz = shl i64 %.val.i74.i189.i, %i.qy
  %i.ra = lshr i64 %i.qz, 1
  %i.rb = and i32 %i.qk, 63
  %i.rc = xor i32 %i.rb, 63
  %i.rd = zext nneg i32 %i.rc to i64
  %i.re = lshr i64 %i.ra, %i.rd
  %i.rf = add i32 %storemerge168183.i, %i.qk      ; 2 uses
  %i.rg = add nuw i64 %i.re, %i.qw                ; 3 uses
  %i.rh = icmp ult i64 %i.rg, 3
  br i1 %i.rh, label %.thread.i117.i, label %bb.bv

.thread.i117.i:                                   ; preds = %bb.bt, %bb.bs
  %storemerge168182.i = phi i32 [ %i.rf, %bb.bt ], [ %storemerge168183.i, %bb.bs ] ; 3 uses
  %.090.i.i = phi i64 [ %i.rg, %bb.bt ], [ 0, %bb.bs ] ; 3 uses
  %i.ri = icmp eq i8 %.sroa.3.0.copyload.i.i.i, 0
  %i.rj = icmp ne i64 %.090.i.i, 2
  %or.cond.i.i = and i1 %i.ri, %i.rj
  %i.rk = sub nuw nsw i64 1, %.090.i.i
  %spec.select.i.i = select i1 %or.cond.i.i, i64 %i.rk, i64 %.090.i.i ; 3 uses
  %.not63.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not63.i.i, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %.thread.i117.i
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %spec.select.i.i
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !48 ; 2 uses
  %.not64.i.i = icmp eq i64 %spec.select.i.i, 1
  br i1 %.not64.i.i, label %.sink.split.i, label %.sink.split.sink.split.i

bb.bv:                                            ; preds = %bb.bt
  %i.rn = add i64 %i.rg, -2
  br label %.sink.split.sink.split.i

.sink.split.sink.split.i:                         ; preds = %bb.bv, %bb.bu
  %.sink.ph.i = phi i64 [ %i.rn, %bb.bv ], [ %i.rm, %bb.bu ]
  %storemerge168181.ph.ph.i = phi i32 [ %i.rf, %bb.bv ], [ %storemerge168182.i, %bb.bu ]
  store i64 %i.pj, ptr %i.id, align 8, !tbaa !48
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.sink.split.sink.split.i, %bb.bu
  %.sink.i = phi i64 [ %i.rm, %bb.bu ], [ %.sink.ph.i, %.sink.split.sink.split.i ] ; 2 uses
  %storemerge168181.ph.i = phi i32 [ %storemerge168182.i, %bb.bu ], [ %storemerge168181.ph.ph.i, %.sink.split.sink.split.i ]
  store i64 %i.pi, ptr %i.ic, align 8, !tbaa !48
  store i64 %.sink.i, ptr %i.ib, align 8, !tbaa !48
  br label %bb.bw

bb.bw:                                            ; preds = %.sink.split.i, %.thread.i117.i
  %i.ro = phi i64 [ %i.pi, %.thread.i117.i ], [ %.sink.i, %.sink.split.i ] ; 12 uses
  %i.rp = phi i64 [ %i.pj, %.thread.i117.i ], [ %i.pi, %.sink.split.i ]
  %storemerge168181.i = phi i32 [ %storemerge168182.i, %.thread.i117.i ], [ %storemerge168181.ph.i, %.sink.split.i ] ; 3 uses
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv06_decodeSequence.ML_base, i64 %i.qo
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !15
  %i.rs = add i32 %i.rr, 3
  %i.rt = zext i32 %i.rs to i64                   ; 3 uses
  %i.ru = icmp ugt i8 %.sroa.3.0.copyload.i71.i.i, 31
  br i1 %i.ru, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.rv = and i32 %storemerge168181.i, 63
  %i.rw = zext nneg i32 %i.rv to i64
  %i.rx = shl i64 %.val.i74.i189.i, %i.rw
  %i.ry = lshr i64 %i.rx, 1
  %i.rz = and i32 %i.qq, 63
  %i.sa = xor i32 %i.rz, 63
  %i.sb = zext nneg i32 %i.sa to i64
  %i.sc = lshr i64 %i.ry, %i.sb
  %i.sd = add i32 %storemerge168181.i, %i.qq
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %storemerge168184.i = phi i32 [ %i.sd, %bb.bx ], [ %storemerge168181.i, %bb.bw ] ; 3 uses
  %i.se = phi i64 [ %i.sc, %bb.bx ], [ 0, %bb.bw ] ; 3 uses
  %i.sf = add nuw i64 %i.se, %i.rt                ; 4 uses
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv06_decodeSequence.LL_base, i64 %i.ql
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !15
  %i.si = zext i32 %i.sh to i64                   ; 3 uses
  %i.sj = icmp ugt i8 %.sroa.3.0.copyload.i.i.i, 15
  br i1 %i.sj, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.sk = and i32 %storemerge168184.i, 63
  %i.sl = zext nneg i32 %i.sk to i64
  %i.sm = shl i64 %.val.i74.i189.i, %i.sl
  %i.sn = lshr i64 %i.sm, 1
  %i.so = and i32 %i.qn, 63
  %i.sp = xor i32 %i.so, 63
  %i.sq = zext nneg i32 %i.sp to i64
  %i.sr = lshr i64 %i.sn, %i.sq
  %i.ss = add i32 %storemerge168184.i, %i.qn
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %storemerge168185.i = phi i32 [ %i.ss, %bb.bz ], [ %storemerge168184.i, %bb.by ] ; 7 uses
  %i.st = phi i64 [ %i.sr, %bb.bz ], [ 0, %bb.by ] ; 3 uses
  %i.su = add nuw i64 %i.st, %i.si                ; 5 uses
  %i.sv = icmp ult i32 %i.qs, 32
  %i.sw = icmp ugt i32 %storemerge168185.i, 64
  %or.cond97.i.i = select i1 %i.sv, i1 true, i1 %i.sw
  br i1 %or.cond97.i.i, label %ZSTDv06_decodeSequence.exit.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.not.i.i114.i = icmp ult ptr %i.qf, %i.ov
  br i1 %.not.i.i114.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.sx = lshr i32 %storemerge168185.i, 3
  %i.sy = zext nneg i32 %i.sx to i64
  %i.sz = sub nsw i64 0, %i.sy
  %i.ta = getelementptr inbounds i8, ptr %i.qf, i64 %i.sz ; 2 uses
  store ptr %i.ta, ptr %i.ou, align 8, !tbaa !35
  %i.tb = and i32 %storemerge168185.i, 7
  br label %BITv06_reloadDStream.exit.sink.split.i115.i

bb.cd:                                            ; preds = %bb.cb
  %i.tc = icmp eq ptr %i.qf, %i.hv
  br i1 %i.tc, label %ZSTDv06_decodeSequence.exit.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.td = lshr i32 %storemerge168185.i, 3         ; 2 uses
  %i.te = zext nneg i32 %i.td to i64
  %i.tf = sub nsw i64 0, %i.te
  %i.tg = getelementptr inbounds i8, ptr %i.qf, i64 %i.tf
  %i.th = icmp ult ptr %i.tg, %i.hv
  %i.ti = ptrtoint ptr %i.qf to i64
  %i.tj = sub i64 %i.ti, %i.hw
  %i.tk = trunc i64 %i.tj to i32
  %.024.i.i116.i = select i1 %i.th, i32 %i.tk, i32 %i.td ; 2 uses
  %i.tl = zext i32 %.024.i.i116.i to i64
  %i.tm = sub nsw i64 0, %i.tl
  %i.tn = getelementptr inbounds i8, ptr %i.qf, i64 %i.tm ; 2 uses
  store ptr %i.tn, ptr %i.ou, align 8, !tbaa !35
  %i.to = shl i32 %.024.i.i116.i, 3
  %i.tp = sub i32 %storemerge168185.i, %i.to
  br label %BITv06_reloadDStream.exit.sink.split.i115.i

BITv06_reloadDStream.exit.sink.split.i115.i:      ; preds = %bb.ce, %bb.cc
  %storemerge168.i = phi i32 [ %i.tb, %bb.cc ], [ %i.tp, %bb.ce ] ; 2 uses
  %.val.i78.sink.in.i.i = phi ptr [ %i.ta, %bb.cc ], [ %i.tn, %bb.ce ] ; 2 uses
  store i32 %storemerge168.i, ptr %i.kq, align 8, !tbaa !37
  %.val.i78.sink.i.i = load i64, ptr %.val.i78.sink.in.i.i, align 1 ; 2 uses
  store i64 %.val.i78.sink.i.i, ptr %5, align 8, !tbaa !36
  br label %ZSTDv06_decodeSequence.exit.i

ZSTDv06_decodeSequence.exit.i:                    ; preds = %BITv06_reloadDStream.exit.sink.split.i115.i, %bb.cd, %bb.ca
  %i.tq = phi ptr [ %i.qf, %bb.ca ], [ %i.qf, %bb.cd ], [ %.val.i78.sink.in.i.i, %BITv06_reloadDStream.exit.sink.split.i115.i ]
  %.val.i74.i188.i = phi i64 [ %.val.i74.i189.i, %bb.ca ], [ %.val.i74.i189.i, %bb.cd ], [ %.val.i78.sink.i.i, %BITv06_reloadDStream.exit.sink.split.i115.i ] ; 4 uses
  %.val4.i.i.i.i = phi i32 [ %storemerge168185.i, %bb.ca ], [ %storemerge168185.i, %bb.cd ], [ %storemerge168.i, %BITv06_reloadDStream.exit.sink.split.i115.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.qh, align 2, !tbaa !18
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qh, i64 3
  %.sroa.42.0.copyload.i.i.i = load i8, ptr %.sroa.42.0..sroa_idx.i.i.i, align 1, !tbaa !26
  %i.tr = zext i8 %.sroa.42.0.copyload.i.i.i to i32 ; 2 uses
  %i.ts = and i32 %.val4.i.i.i.i, 63
  %i.tt = zext nneg i32 %i.ts to i64
  %i.tu = shl i64 %.val.i74.i188.i, %i.tt
  %i.tv = lshr i64 %i.tu, 1
  %i.tw = and i32 %i.tr, 63
  %i.tx = xor i32 %i.tw, 63
  %i.ty = zext nneg i32 %i.tx to i64
  %i.tz = lshr i64 %i.tv, %i.ty
  %i.ua = add i32 %.val4.i.i.i.i, %i.tr           ; 2 uses
  %i.ub = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.uc = add nuw i64 %i.tz, %i.ub                ; 2 uses
  store i64 %i.uc, ptr %i.kn, align 8, !tbaa !127
  %.sroa.0.0.copyload.i79.i.i = load i16, ptr %i.qi, align 2, !tbaa !18
  %.sroa.42.0..sroa_idx.i80.i.i = getelementptr inbounds nuw i8, ptr %i.qi, i64 3
  %.sroa.42.0.copyload.i81.i.i = load i8, ptr %.sroa.42.0..sroa_idx.i80.i.i, align 1, !tbaa !26
  %i.ud = zext i8 %.sroa.42.0.copyload.i81.i.i to i32 ; 2 uses
  %i.ue = and i32 %i.ua, 63
  %i.uf = zext nneg i32 %i.ue to i64
  %i.ug = shl i64 %.val.i74.i188.i, %i.uf
end_hunk_0
begin_hunk_1_@ZSTDv06_decompressBlock_internal:bb.a

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.090125.i.i = phi ptr [ %i.ww, %.lr.ph.i.i ], [ %.090125.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.092124.i.i = phi ptr [ %i.wy, %.lr.ph.i.i ], [ %.092124.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %.090125.i.i, i64 1
  %i.wx = load i8, ptr %.090125.i.i, align 1, !tbaa !26
  %i.wy = getelementptr inbounds nuw i8, ptr %.092124.i.i, i64 1 ; 2 uses
  store i8 %i.wx, ptr %.092124.i.i, align 1, !tbaa !26
  %i.wz = icmp ult ptr %i.wy, %i.vd
  br i1 %i.wz, label %.lr.ph.i.i, label %ZSTDv06_execSequence.exit.i, !llvm.loop !119

.thread.i119.i:                                   ; preds = %bb.cl, %ZSTDv06_wildcopy.exit.i.i
  %i.xa = phi i64 [ %i.wa, %bb.cl ], [ %i.sf, %ZSTDv06_wildcopy.exit.i.i ]
  %.294.i.i = phi ptr [ %i.wb, %bb.cl ], [ %i.vb, %ZSTDv06_wildcopy.exit.i.i ] ; 8 uses
  %.2.i120.i = phi ptr [ %i.fz, %bb.cl ], [ %i.vg, %ZSTDv06_wildcopy.exit.i.i ] ; 7 uses
  %i.xb = icmp ult i64 %i.ro, 8
  br i1 %i.xb, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %.thread.i119.i
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv06_execSequence.dec64table, i64 %i.ro
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !15
  %i.xe = load i8, ptr %.2.i120.i, align 1, !tbaa !26
  store i8 %i.xe, ptr %.294.i.i, align 1, !tbaa !26
  %i.xf = getelementptr inbounds nuw i8, ptr %.2.i120.i, i64 1
  %i.xg = load i8, ptr %i.xf, align 1, !tbaa !26
  %i.xh = getelementptr inbounds nuw i8, ptr %.294.i.i, i64 1
  store i8 %i.xg, ptr %i.xh, align 1, !tbaa !26
  %i.xi = getelementptr inbounds nuw i8, ptr %.2.i120.i, i64 2
  %i.xj = load i8, ptr %i.xi, align 1, !tbaa !26
  %i.xk = getelementptr inbounds nuw i8, ptr %.294.i.i, i64 2
  store i8 %i.xj, ptr %i.xk, align 1, !tbaa !26
  %i.xl = getelementptr inbounds nuw i8, ptr %.2.i120.i, i64 3
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !26
  %i.xn = getelementptr inbounds nuw i8, ptr %.294.i.i, i64 3
  store i8 %i.xm, ptr %i.xn, align 1, !tbaa !26
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv06_execSequence.dec32table, i64 %i.ro
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !15
  %i.xq = zext i32 %i.xp to i64
  %i.xr = getelementptr inbounds nuw i8, ptr %.2.i120.i, i64 %i.xq ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %.294.i.i, i64 4
  %.val.i121.i = load i32, ptr %i.xr, align 1
  store i32 %.val.i121.i, ptr %i.xs, align 1
  %i.xt = sext i32 %i.xd to i64
  %i.xu = sub nsw i64 0, %i.xt
  %i.xv = getelementptr inbounds i8, ptr %i.xr, i64 %i.xu
  br label %bb.co

bb.cn:                                            ; preds = %.thread.i119.i
  %.2.val.i.i = load i64, ptr %.2.i120.i, align 1
  store i64 %.2.val.i.i, ptr %.294.i.i, align 1
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.3.i.i = phi ptr [ %i.xv, %bb.cm ], [ %.2.i120.i, %bb.cn ]
  %i.xw = getelementptr inbounds nuw i8, ptr %.294.i.i, i64 8 ; 5 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 8 ; 4 uses
  %i.xy = icmp ugt ptr %i.vd, %i.pb
  br i1 %i.xy, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %bb.co
  %i.xz = icmp ult ptr %i.xw, %i.ow
  br i1 %i.xz, label %.preheader.i, label %bb.cq

.preheader.i:                                     ; preds = %bb.cp, %.preheader.i
  %.09.i111.i.i = phi ptr [ %i.yb, %.preheader.i ], [ %i.xx, %bb.cp ] ; 2 uses
  %.0.i112.i.i = phi ptr [ %i.ya, %.preheader.i ], [ %i.xw, %bb.cp ] ; 2 uses
  %.09.val.i113.i.i = load i64, ptr %.09.i111.i.i, align 1
  store i64 %.09.val.i113.i.i, ptr %.0.i112.i.i, align 1
  %i.ya = getelementptr inbounds nuw i8, ptr %.0.i112.i.i, i64 8 ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %.09.i111.i.i, i64 8
  %i.yc = icmp ult ptr %i.ya, %i.ow
  br i1 %i.yc, label %.preheader.i, label %ZSTDv06_wildcopy.exit114.i.i, !llvm.loop !116

ZSTDv06_wildcopy.exit114.i.i:                     ; preds = %.preheader.i
  %i.yd = ptrtoint ptr %i.xw to i64
  %i.ye = sub i64 %i.pc, %i.yd
  %i.yf = getelementptr inbounds i8, ptr %i.xx, i64 %i.ye
  br label %bb.cq

bb.cq:                                            ; preds = %ZSTDv06_wildcopy.exit114.i.i, %bb.cp
  %.395.i.i = phi ptr [ %i.ow, %ZSTDv06_wildcopy.exit114.i.i ], [ %i.xw, %bb.cp ] ; 7 uses
  %.4.i.i = phi ptr [ %i.yf, %ZSTDv06_wildcopy.exit114.i.i ], [ %i.xx, %bb.cp ] ; 7 uses
  %.4.i.i116 = ptrtoaddr ptr %.4.i.i to i64
  %i.yg = icmp ult ptr %.395.i.i, %i.vd
  br i1 %i.yg, label %iter.check, label %ZSTDv06_execSequence.exit.i

iter.check:                                       ; preds = %bb.cq
  %i.yh = add i64 %i.se, %i.st
  %i.yi = add i64 %i.yh, %i.vh
  %i.yj = add i64 %i.yi, %i.si
  %i.yk = add i64 %i.yj, %i.rt
  %umax117 = tail call i64 @llvm.umax.i64(i64 %i.ro, i64 %i.vu)
  %i.yl = add i64 %i.pg, %umax117
  %umax118 = tail call i64 @llvm.umax.i64(i64 %i.pe, i64 %i.yl)
  %i.ym = sub i64 %i.yk, %umax118                 ; 7 uses
  %min.iters.check = icmp ult i64 %i.ym, 8
  br i1 %min.iters.check, label %.lr.ph128.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ro, i64 %i.vu)
  %i.yn = add i64 %i.pf, %umax
  %umax115 = tail call i64 @llvm.umax.i64(i64 %i.pe, i64 %i.yn)
  %i.yo = sub i64 %.4.i.i116, %umax115
  %diff.check = icmp ugt i64 %i.yo, -32
  br i1 %diff.check, label %.lr.ph128.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check119 = icmp ult i64 %i.ym, 32
  br i1 %min.iters.check119, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.yp = and i64 %i.ym, 24
  %n.vec = and i64 %i.ym, -32                     ; 5 uses
  %i.yq = getelementptr i8, ptr %.4.i.i, i64 %n.vec
  %i.yr = getelementptr i8, ptr %.395.i.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.4.i.i, i64 %index ; 2 uses
  %next.gep120 = getelementptr i8, ptr %.395.i.i, i64 %index ; 2 uses
  %i.ys = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !26
  %wide.load121 = load <16 x i8>, ptr %i.ys, align 1, !tbaa !26
  %i.yt = getelementptr i8, ptr %next.gep120, i64 16
  store <16 x i8> %wide.load, ptr %next.gep120, align 1, !tbaa !26
  store <16 x i8> %wide.load121, ptr %i.yt, align 1, !tbaa !26
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.yu = icmp eq i64 %index.next, %n.vec
  br i1 %i.yu, label %middle.block, label %vector.body, !llvm.loop !120

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ym, %n.vec
  br i1 %cmp.n, label %ZSTDv06_execSequence.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.yp, 0
  br i1 %min.epilog.iters.check, label %.lr.ph128.i.i.preheader, label %vec.epilog.ph, !prof !129

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec123 = and i64 %i.ym, -8                   ; 4 uses
  %i.yv = getelementptr i8, ptr %.4.i.i, i64 %n.vec123
  %i.yw = getelementptr i8, ptr %.395.i.i, i64 %n.vec123
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index124 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next128, %vec.epilog.vector.body ] ; 3 uses
  %next.gep125 = getelementptr i8, ptr %.4.i.i, i64 %index124
  %next.gep126 = getelementptr i8, ptr %.395.i.i, i64 %index124
  %wide.load127 = load <8 x i8>, ptr %next.gep125, align 1, !tbaa !26
  store <8 x i8> %wide.load127, ptr %next.gep126, align 1, !tbaa !26
  %index.next128 = add nuw i64 %index124, 8       ; 2 uses
  %i.yx = icmp eq i64 %index.next128, %n.vec123
  br i1 %i.yx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !121

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n129 = icmp eq i64 %i.ym, %n.vec123
  br i1 %cmp.n129, label %ZSTDv06_execSequence.exit.i, label %.lr.ph128.i.i.preheader

.lr.ph128.i.i.preheader:                          ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.5127.i.i.ph = phi ptr [ %.4.i.i, %iter.check ], [ %.4.i.i, %vector.memcheck ], [ %i.yq, %vec.epilog.iter.check ], [ %i.yv, %vec.epilog.middle.block ]
  %.496126.i.i.ph = phi ptr [ %.395.i.i, %iter.check ], [ %.395.i.i, %vector.memcheck ], [ %i.yr, %vec.epilog.iter.check ], [ %i.yw, %vec.epilog.middle.block ]
  br label %.lr.ph128.i.i

.lr.ph128.i.i:                                    ; preds = %.lr.ph128.i.i.preheader, %.lr.ph128.i.i
  %.5127.i.i = phi ptr [ %i.yy, %.lr.ph128.i.i ], [ %.5127.i.i.ph, %.lr.ph128.i.i.preheader ] ; 2 uses
  %.496126.i.i = phi ptr [ %i.za, %.lr.ph128.i.i ], [ %.496126.i.i.ph, %.lr.ph128.i.i.preheader ] ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %.5127.i.i, i64 1
  %i.yz = load i8, ptr %.5127.i.i, align 1, !tbaa !26
  %i.za = getelementptr inbounds nuw i8, ptr %.496126.i.i, i64 1 ; 2 uses
  store i8 %i.yz, ptr %.496126.i.i, align 1, !tbaa !26
  %i.zb = icmp ult ptr %i.za, %i.vd
  br i1 %i.zb, label %.lr.ph128.i.i, label %ZSTDv06_execSequence.exit.i, !llvm.loop !122

bb.cr:                                            ; preds = %bb.co
  %i.zc = getelementptr i8, ptr %.294.i.i, i64 %i.xa
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cs, %bb.cr
  %.09.i115.i.i = phi ptr [ %i.xx, %bb.cr ], [ %i.ze, %bb.cs ] ; 2 uses
  %.0.i116.i.i = phi ptr [ %i.xw, %bb.cr ], [ %i.zd, %bb.cs ] ; 2 uses
  %.09.val.i117.i.i = load i64, ptr %.09.i115.i.i, align 1
  store i64 %.09.val.i117.i.i, ptr %.0.i116.i.i, align 1
  %i.zd = getelementptr inbounds nuw i8, ptr %.0.i116.i.i, i64 8 ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %.09.i115.i.i, i64 8
  %i.zf = icmp ult ptr %i.zd, %i.zc
  br i1 %i.zf, label %bb.cs, label %ZSTDv06_execSequence.exit.i, !llvm.loop !116

ZSTDv06_execSequence.exit.i:                      ; preds = %.lr.ph.i.i, %bb.cs, %.lr.ph128.i.i, %middle.block147, %vec.epilog.middle.block163, %middle.block, %vec.epilog.middle.block, %bb.cq, %.preheader.i.i, %bb.ck
  %i.zg = icmp ult i64 %i.vc, -119
  br i1 %i.zg, label %bb.bn, label %.thread155.i, !llvm.loop !123

.thread155.i:                                     ; preds = %ZSTDv06_execSequence.exit.i, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %ZSTDv06_decodeSequence.exit.i, %BITv06_initDStream.exit.i, %bb.az, %bb.ar, %bb.ap
  %.478.ph.i = phi i64 [ -20, %bb.ar ], [ -20, %bb.az ], [ -20, %BITv06_initDStream.exit.i ], [ -20, %bb.ap ], [ %i.vc, %ZSTDv06_execSequence.exit.i ], [ -20, %bb.ci ], [ -20, %bb.ch ], [ -70, %bb.cg ], [ -20, %bb.cf ], [ -70, %ZSTDv06_decodeSequence.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %ZSTDv06_decompressSequences.exit

.loopexit.i:                                      ; preds = %bb.bn
  %.not279.i = icmp eq i32 %.0126.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br i1 %.not279.i, label %bb.ct, label %ZSTDv06_decompressSequences.exit

bb.ct:                                            ; preds = %.loopexit.i, %.loopexit.thread.i, %bb.ao, %.thread.i22
  %.2.i = phi ptr [ %i.fq, %bb.ao ], [ %.0127.i, %.loopexit.i ], [ %i.fq, %.thread.i22 ], [ %.0127.i, %.loopexit.thread.i ] ; 4 uses
  %.371.i = phi ptr [ %1, %bb.ao ], [ %.068.i, %.loopexit.i ], [ %1, %.thread.i22 ], [ %.068.i, %.loopexit.thread.i ] ; 3 uses
  %i.zh = ptrtoint ptr %i.fv to i64
  %i.zi = ptrtoint ptr %.2.i to i64
  %i.zj = sub i64 %i.zh, %i.zi                    ; 2 uses
  %i.zk = icmp ugt ptr %.2.i, %i.fv
  br i1 %i.zk, label %ZSTDv06_decompressSequences.exit, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.zl = getelementptr inbounds nuw i8, ptr %.371.i, i64 %i.zj ; 2 uses
  %i.zm = icmp ugt ptr %i.zl, %i.fu
  br i1 %i.zm, label %ZSTDv06_decompressSequences.exit, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %.not87.i = icmp eq ptr %i.fv, %.2.i
  br i1 %.not87.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.371.i, ptr align 1 %.2.i, i64 %i.zj, i1 false)
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.5.ph.i = phi ptr [ %.371.i, %bb.cv ], [ %i.zl, %bb.cw ]
  %i.zn = ptrtoint ptr %.5.ph.i to i64
  %i.zo = ptrtoint ptr %1 to i64
  %i.zp = sub i64 %i.zn, %i.zo
  br label %ZSTDv06_decompressSequences.exit

ZSTDv06_decompressSequences.exit:                 ; preds = %.thread.i, %bb.ab, %bb.o, %bb.m, %bb.l, %bb.g, %bb.f, %bb.d, %bb.n, %bb.j, %bb.b, %bb.v, %bb.cx, %bb.cu, %bb.ct, %.loopexit.i, %.thread155.i, %ZSTDv06_decodeSeqHeaders.exit.i, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.ai, %bb.ag, %bb.ac, %bb.a
  %.1 = phi i64 [ -20, %bb.am ], [ -72, %bb.a ], [ %i.zp, %bb.cx ], [ %.478.ph.i, %.thread155.i ], [ -20, %.loopexit.i ], [ %i.hy, %ZSTDv06_decodeSeqHeaders.exit.i ], [ -20, %bb.ct ], [ -70, %bb.cu ], [ -20, %bb.al ], [ -72, %bb.ag ], [ -72, %bb.ai ], [ -72, %bb.ak ], [ -20, %bb.an ], [ -72, %bb.ac ], [ -20, %.thread.i ], [ -20, %bb.ab ], [ -20, %bb.o ], [ -30, %bb.m ], [ -20, %bb.l ], [ -20, %bb.g ], [ -20, %bb.f ], [ -20, %bb.d ], [ -20, %bb.n ], [ -20, %bb.j ], [ -20, %bb.b ], [ -20, %bb.v ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define i64 @ZSTDv06_decompress_usingPreparedDCtx(ptr noundef initializes((0, 21619)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(21619) %0, ptr noundef nonnull readonly align 8 dereferenceable(21619) %1, i64 21619, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 21520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 3 uses
  %.not.i = icmp eq ptr %2, %i.b
  br i1 %.not.i, label %ZSTDv06_checkContinuity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 21544
  store ptr %i.b, ptr %i.c, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 21528 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64
  %.neg.i = sub i64 %i.g, %i.f
  %i.h = getelementptr inbounds i8, ptr %2, i64 %.neg.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 21536
  store ptr %i.h, ptr %i.i, align 8, !tbaa !54
  store ptr %2, ptr %i.d, align 8, !tbaa !53
  store ptr %2, ptr %i.a, align 8, !tbaa !51
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
  %i.e = load i8, ptr %i.d, align 1, !tbaa !26
  %i.f = lshr i8 %i.e, 6
  %i.g = zext nneg i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @ZSTDv06_fcs_fieldSize, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !48   ; 2 uses
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
  %i.o = load i8, ptr %i.d, align 1, !tbaa !26
  %i.p = zext i8 %i.o to i32                      ; 3 uses
  %i.q = and i32 %i.p, 15
  %i.r = add nuw nsw i32 %i.q, 12
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 21576
  store i32 %i.r, ptr %i.s, align 8, !tbaa !49
  %i.t = and i32 %i.p, 32
  %.not28.i.i = icmp eq i32 %i.t, 0
  br i1 %.not28.i.i, label %bb.e, label %.thread

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
  %i.w = load i8, ptr %i.v, align 1, !tbaa !26
  %i.x = zext i8 %i.w to i64
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 5
  %.val30.i.i = load i16, ptr %i.y, align 1
  %i.z = zext i16 %.val30.i.i to i64
  %i.aa = add nuw nsw i64 %i.z, 256
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 5
  %.val29.i.i = load i64, ptr %i.ab, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %.val29.sink.i.i = phi i64 [ %.val29.i.i, %bb.h ], [ %i.aa, %bb.g ], [ %i.x, %bb.f ], [ 0, %bb.e ]
  store i64 %.val29.sink.i.i, ptr %i.n, align 8, !tbaa !50
  %i.ac = ptrtoint ptr %i.a to i64
  %gepdiff = sub i64 %4, %i.j                     ; 2 uses
  %i.ad = icmp ult i64 %gepdiff, 3
  br i1 %i.ad, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 %i.j
  %i.af = ptrtoint ptr %i.b to i64                ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.r
  %.157113 = phi i64 [ %gepdiff, %.lr.ph ], [ %i.bl, %bb.r ] ; 2 uses
  %.058112 = phi ptr [ %1, %.lr.ph ], [ %i.bj, %bb.r ] ; 7 uses
  %.161111 = phi ptr [ %i.ae, %.lr.ph ], [ %i.bk, %bb.r ] ; 5 uses
  %i.ag = load i8, ptr %.161111, align 1, !tbaa !26 ; 2 uses
  %i.ah = lshr i8 %i.ag, 6                        ; 2 uses
  switch i8 %i.ah, label %bb.k [
    i8 3, label %.thread91
    i8 2, label %bb.l
  ]

.thread91:                                        ; preds = %bb.j
  %.not72 = icmp eq i64 %.157113, 3
  br i1 %.not72, label %ZSTDv06_copyRawBlock.exit, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ai = and i8 %i.ag, 7
  %i.aj = zext nneg i8 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 16
  %i.al = getelementptr inbounds nuw i8, ptr %.161111, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !26
  %i.an = zext i8 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.161111, i64 2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !26
  %i.ar = zext i8 %i.aq to i64
  %i.as = or disjoint i64 %i.ao, %i.ar
  %i.at = or disjoint i64 %i.as, %i.ak
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.0.i.ph = phi i64 [ %i.at, %bb.k ], [ 1, %bb.j ] ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.161111, i64 3 ; 2 uses
  %i.av = add i64 %.157113, -3                    ; 3 uses
  %i.aw = icmp ugt i64 %.0.i.ph, %i.av
  br i1 %i.aw, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  switch i8 %i.ah, label %default.unreachable [
    i8 0, label %bb.n
    i8 1, label %bb.o
    i8 2, label %.thread
  ]

bb.n:                                             ; preds = %bb.m
  %i.ax = ptrtoint ptr %.058112 to i64
  %i.ay = sub i64 %i.af, %i.ax
  %i.az = tail call fastcc i64 @ZSTDv06_decompressBlock_internal(ptr noundef %0, ptr noundef %.058112, i64 noundef %i.ay, ptr noundef nonnull %i.au, i64 noundef %.0.i.ph)
  br label %ZSTDv06_copyRawBlock.exit

bb.o:                                             ; preds = %bb.m
  %i.ba = ptrtoint ptr %.058112 to i64
  %i.bb = sub i64 %i.af, %i.ba
  %i.bc = icmp eq ptr %.058112, null
  %i.bd = icmp ugt i64 %.0.i.ph, %i.bb
  %or.cond.i = or i1 %i.bc, %i.bd
  br i1 %or.cond.i, label %ZSTDv06_copyRawBlock.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.058112, ptr nonnull readonly align 1 %i.au, i64 %.0.i.ph, i1 false)
  br label %ZSTDv06_copyRawBlock.exit

ZSTDv06_copyRawBlock.exit:                        ; preds = %bb.p, %.thread91, %bb.n
  %i.be = phi i64 [ %i.av, %bb.n ], [ 0, %.thread91 ], [ %i.av, %bb.p ]
  %.0.i.ph90 = phi i64 [ %.0.i.ph, %bb.n ], [ 0, %.thread91 ], [ %.0.i.ph, %bb.p ] ; 3 uses
  %.0 = phi i64 [ %i.az, %bb.n ], [ 0, %.thread91 ], [ %.0.i.ph, %bb.p ] ; 3 uses
  %i.bf = icmp eq i64 %.0.i.ph90, 0
  br i1 %i.bf, label %.loopexit, label %bb.q

ZSTDv06_copyRawBlock.exit.thread:                 ; preds = %bb.o
  %i.bg = icmp eq i64 %.0.i.ph, 0
  br i1 %i.bg, label %.loopexit, label %.thread

bb.q:                                             ; preds = %ZSTDv06_copyRawBlock.exit
  %i.bh = icmp ult i64 %.0, -119
  br i1 %i.bh, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %.161111, i64 3
  %i.bj = getelementptr inbounds nuw i8, ptr %.058112, i64 %.0
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.0.i.ph90 ; 2 uses
  %i.bl = sub i64 %i.be, %.0.i.ph90
  %i.bm = ptrtoint ptr %i.bk to i64
end_hunk_1
