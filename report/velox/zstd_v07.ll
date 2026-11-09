Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/zstd_v07?download=true
inline.NumInlined: 402
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 18
begin_hunk_0_@ZSTDv07_decompressBlock_internal:bb.a
  store i64 %i.lj, ptr %i.ky, align 8, !tbaa !209
  %i.ll = icmp samesign ugt i32 %i.lk, 64
  br i1 %i.ll, label %FSEv07_initDState.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.lm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %.not.i.i.i = icmp slt i64 %.idx.i, 8
  br i1 %.not.i.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ln = lshr i32 %i.lk, 3
  %i.lo = zext nneg i32 %i.ln to i64
  %.ptr.add279.i = sub nuw nsw i64 %.idx.i, %i.lo ; 2 uses
  %.ptr282.i = getelementptr inbounds nuw i8, ptr %i.if, i64 %.ptr.add279.i
  store ptr %.ptr282.i, ptr %i.lm, align 8, !tbaa !49
  %i.lp = and i32 %i.lk, 7
  br label %BITv07_reloadDStream.exit.sink.split.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.lq = icmp eq ptr %.ptr.ptr.i, %i.ia
  br i1 %i.lq, label %FSEv07_initDState.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.lr = lshr i32 %i.lk, 3                       ; 2 uses
  %i.ls = zext nneg i32 %i.lr to i64
  %i.lt = sub nsw i64 0, %i.ls
  %i.lu = getelementptr inbounds i8, ptr %.ptr.ptr.i, i64 %i.lt
  %i.lv = icmp ult ptr %i.lu, %i.ia
  %i.lw = ptrtoint ptr %.ptr.ptr.i to i64
  %i.lx = sub i64 %i.lw, %i.ib
  %i.ly = trunc i64 %i.lx to i32
  %.024.i.i.i = select i1 %i.lv, i32 %i.ly, i32 %i.lr ; 2 uses
  %i.lz = zext i32 %.024.i.i.i to i64
  %.ptr.add.i = sub nsw i64 %.idx.i, %i.lz        ; 2 uses
  %.ptr281.i = getelementptr inbounds i8, ptr %i.if, i64 %.ptr.add.i
  store ptr %.ptr281.i, ptr %i.lm, align 8, !tbaa !49
  %i.ma = shl i32 %.024.i.i.i, 3
  %i.mb = sub i32 %i.lk, %i.ma
  br label %BITv07_reloadDStream.exit.sink.split.i.i

BITv07_reloadDStream.exit.sink.split.i.i:         ; preds = %bb.be, %bb.bc
  %storemerge.i = phi i32 [ %i.lp, %bb.bc ], [ %i.mb, %bb.be ] ; 2 uses
  %.val30.i.sink.in.i.idx.i = phi i64 [ %.ptr.add279.i, %bb.bc ], [ %.ptr.add.i, %bb.be ] ; 2 uses
  %.val30.i.sink.in.i.ptr.i = getelementptr inbounds i8, ptr %i.if, i64 %.val30.i.sink.in.i.idx.i
  store i32 %storemerge.i, ptr %i.lb, align 8, !tbaa !51
  %.val30.i.sink.i.i = load i64, ptr %.val30.i.sink.in.i.ptr.i, align 1 ; 2 uses
  store i64 %.val30.i.sink.i.i, ptr %5, align 8, !tbaa !50
  br label %FSEv07_initDState.exit.i

FSEv07_initDState.exit.i:                         ; preds = %BITv07_reloadDStream.exit.sink.split.i.i, %bb.bd, %bb.ba
  %.idx278.i = phi i64 [ %.idx.i, %bb.ba ], [ 0, %bb.bd ], [ %.val30.i.sink.in.i.idx.i, %BITv07_reloadDStream.exit.sink.split.i.i ] ; 5 uses
  %.val4.i.i97.i = phi i32 [ %i.lk, %bb.ba ], [ %i.lk, %bb.bd ], [ %storemerge.i, %BITv07_reloadDStream.exit.sink.split.i.i ] ; 2 uses
  %.val.i.i96.i = phi i64 [ %.val.i.i.i, %bb.ba ], [ %.val.i.i.i, %bb.bd ], [ %.val30.i.sink.i.i, %BITv07_reloadDStream.exit.sink.split.i.i ] ; 3 uses
  %.ptr280.ptr.i = getelementptr inbounds i8, ptr %i.if, i64 %.idx278.i ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.mc, ptr %i.md, align 8, !tbaa !210
  %i.me = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.mf = load i16, ptr %i.gc, align 4, !tbaa !42
  %i.mg = zext i16 %i.mf to i32                   ; 2 uses
  %i.mh = and i32 %.val4.i.i97.i, 63
  %i.mi = zext nneg i32 %i.mh to i64
  %i.mj = shl i64 %.val.i.i96.i, %i.mi
  %i.mk = lshr i64 %i.mj, 1
  %i.ml = and i32 %i.mg, 63
  %i.mm = xor i32 %i.ml, 63
  %i.mn = zext nneg i32 %i.mm to i64
  %i.mo = lshr i64 %i.mk, %i.mn                   ; 2 uses
  %i.mp = add i32 %.val4.i.i97.i, %i.mg           ; 7 uses
  store i64 %i.mo, ptr %i.me, align 8, !tbaa !209
  %i.mq = icmp ugt i32 %i.mp, 64
  br i1 %i.mq, label %FSEv07_initDState.exit103.i, label %bb.bf

bb.bf:                                            ; preds = %FSEv07_initDState.exit.i
  %i.mr = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %.not.i.i98.i = icmp slt i64 %.idx278.i, 8
  br i1 %.not.i.i98.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ms = lshr i32 %i.mp, 3
  %i.mt = zext nneg i32 %i.ms to i64
  %.ptr280.add284.i = sub nuw nsw i64 %.idx278.i, %i.mt ; 2 uses
  %.ptr286.i = getelementptr inbounds nuw i8, ptr %i.if, i64 %.ptr280.add284.i
  store ptr %.ptr286.i, ptr %i.mr, align 8, !tbaa !49
  %i.mu = and i32 %i.mp, 7
  br label %BITv07_reloadDStream.exit.sink.split.i99.i

bb.bh:                                            ; preds = %bb.bf
  %i.mv = icmp eq ptr %.ptr280.ptr.i, %i.ia
  br i1 %i.mv, label %FSEv07_initDState.exit103.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mw = lshr i32 %i.mp, 3                       ; 2 uses
  %i.mx = zext nneg i32 %i.mw to i64
  %i.my = sub nsw i64 0, %i.mx
  %i.mz = getelementptr inbounds i8, ptr %.ptr280.ptr.i, i64 %i.my
  %i.na = icmp ult ptr %i.mz, %i.ia
  %i.nb = ptrtoint ptr %.ptr280.ptr.i to i64
  %i.nc = sub i64 %i.nb, %i.ib
  %i.nd = trunc i64 %i.nc to i32
  %.024.i.i102.i = select i1 %i.na, i32 %i.nd, i32 %i.mw ; 2 uses
  %i.ne = zext i32 %.024.i.i102.i to i64
  %.ptr280.add.i = sub nsw i64 %.idx278.i, %i.ne  ; 2 uses
  %.ptr285.i = getelementptr inbounds i8, ptr %i.if, i64 %.ptr280.add.i
  store ptr %.ptr285.i, ptr %i.mr, align 8, !tbaa !49
  %i.nf = shl i32 %.024.i.i102.i, 3
  %i.ng = sub i32 %i.mp, %i.nf
  br label %BITv07_reloadDStream.exit.sink.split.i99.i

BITv07_reloadDStream.exit.sink.split.i99.i:       ; preds = %bb.bi, %bb.bg
  %storemerge176.i = phi i32 [ %i.mu, %bb.bg ], [ %i.ng, %bb.bi ]
  %.val30.i.sink.in.i100.idx.i = phi i64 [ %.ptr280.add284.i, %bb.bg ], [ %.ptr280.add.i, %bb.bi ] ; 2 uses
  %.val30.i.sink.in.i100.ptr.i = getelementptr inbounds i8, ptr %i.if, i64 %.val30.i.sink.in.i100.idx.i
  %.val30.i.sink.i101.i = load i64, ptr %.val30.i.sink.in.i100.ptr.i, align 1 ; 2 uses
  store i64 %.val30.i.sink.i101.i, ptr %5, align 8, !tbaa !50
  br label %FSEv07_initDState.exit103.i

FSEv07_initDState.exit103.i:                      ; preds = %BITv07_reloadDStream.exit.sink.split.i99.i, %bb.bh, %FSEv07_initDState.exit.i
  %.idx283.i = phi i64 [ %.idx278.i, %FSEv07_initDState.exit.i ], [ 0, %bb.bh ], [ %.val30.i.sink.in.i100.idx.i, %BITv07_reloadDStream.exit.sink.split.i99.i ] ; 5 uses
  %.val4.i.i105.i = phi i32 [ %i.mp, %FSEv07_initDState.exit.i ], [ %i.mp, %bb.bh ], [ %storemerge176.i, %BITv07_reloadDStream.exit.sink.split.i99.i ] ; 2 uses
  %.val.i.i104.i = phi i64 [ %.val.i.i96.i, %FSEv07_initDState.exit.i ], [ %.val.i.i96.i, %bb.bh ], [ %.val30.i.sink.i101.i, %BITv07_reloadDStream.exit.sink.split.i99.i ] ; 3 uses
  %.ptr.ptr298.i = getelementptr inbounds i8, ptr %i.if, i64 %.idx283.i ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 2056 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %i.nh, ptr %i.ni, align 8, !tbaa !210
  %i.nj = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.nk = load i16, ptr %i.gb, align 8, !tbaa !42
  %i.nl = zext i16 %i.nk to i32                   ; 2 uses
  %i.nm = and i32 %.val4.i.i105.i, 63
  %i.nn = zext nneg i32 %i.nm to i64
  %i.no = shl i64 %.val.i.i104.i, %i.nn
  %i.np = lshr i64 %i.no, 1
  %i.nq = and i32 %i.nl, 63
  %i.nr = xor i32 %i.nq, 63
  %i.ns = zext nneg i32 %i.nr to i64
  %i.nt = lshr i64 %i.np, %i.ns                   ; 2 uses
  %i.nu = add i32 %.val4.i.i105.i, %i.nl          ; 7 uses
  store i64 %i.nt, ptr %i.nj, align 8, !tbaa !209
  %i.nv = icmp ugt i32 %i.nu, 64
  br i1 %i.nv, label %FSEv07_initDState.exit111.i, label %bb.bj

bb.bj:                                            ; preds = %FSEv07_initDState.exit103.i
  %i.nw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %.not.i.i106.i = icmp slt i64 %.idx283.i, 8
  br i1 %.not.i.i106.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.nx = lshr i32 %i.nu, 3
  %i.ny = zext nneg i32 %i.nx to i64
  %.ptr.add295.i = sub nuw nsw i64 %.idx283.i, %i.ny ; 2 uses
  %.ptr305.i = getelementptr inbounds nuw i8, ptr %i.if, i64 %.ptr.add295.i
  store ptr %.ptr305.i, ptr %i.nw, align 8, !tbaa !49
  %i.nz = and i32 %i.nu, 7
  br label %BITv07_reloadDStream.exit.sink.split.i107.i

bb.bl:                                            ; preds = %bb.bj
  %i.oa = icmp eq ptr %.ptr.ptr298.i, %i.ia
  br i1 %i.oa, label %FSEv07_initDState.exit111.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ob = lshr i32 %i.nu, 3                       ; 2 uses
  %i.oc = zext nneg i32 %i.ob to i64
  %i.od = sub nsw i64 0, %i.oc
  %i.oe = getelementptr inbounds i8, ptr %.ptr.ptr298.i, i64 %i.od
  %i.of = icmp ult ptr %i.oe, %i.ia
  %i.og = ptrtoint ptr %.ptr.ptr298.i to i64
  %i.oh = sub i64 %i.og, %i.ib
  %i.oi = trunc i64 %i.oh to i32
  %.024.i.i110.i = select i1 %i.of, i32 %i.oi, i32 %i.ob ; 2 uses
  %i.oj = zext i32 %.024.i.i110.i to i64
  %.ptr.add294.i = sub nsw i64 %.idx283.i, %i.oj  ; 2 uses
  %.ptr304.i = getelementptr inbounds i8, ptr %i.if, i64 %.ptr.add294.i
  store ptr %.ptr304.i, ptr %i.nw, align 8, !tbaa !49
  %i.ok = shl i32 %.024.i.i110.i, 3
  %i.ol = sub i32 %i.nu, %i.ok
  br label %BITv07_reloadDStream.exit.sink.split.i107.i

BITv07_reloadDStream.exit.sink.split.i107.i:      ; preds = %bb.bm, %bb.bk
  %storemerge177.i = phi i32 [ %i.nz, %bb.bk ], [ %i.ol, %bb.bm ]
  %.val30.i.sink.in.i108.idx.i = phi i64 [ %.ptr.add295.i, %bb.bk ], [ %.ptr.add294.i, %bb.bm ] ; 2 uses
  %.val30.i.sink.in.i108.ptr.i = getelementptr inbounds i8, ptr %i.if, i64 %.val30.i.sink.in.i108.idx.i
  %.val30.i.sink.i109.i = load i64, ptr %.val30.i.sink.in.i108.ptr.i, align 1 ; 2 uses
  store i64 %.val30.i.sink.i109.i, ptr %5, align 8, !tbaa !50
  br label %FSEv07_initDState.exit111.i

FSEv07_initDState.exit111.i:                      ; preds = %BITv07_reloadDStream.exit.sink.split.i107.i, %bb.bl, %FSEv07_initDState.exit103.i
  %.promoted208.idx.i = phi i64 [ %.idx283.i, %FSEv07_initDState.exit103.i ], [ 0, %bb.bl ], [ %.val30.i.sink.in.i108.idx.i, %BITv07_reloadDStream.exit.sink.split.i107.i ]
  %.promoted198.i = phi i64 [ %.val.i.i104.i, %FSEv07_initDState.exit103.i ], [ %.val.i.i104.i, %bb.bl ], [ %.val30.i.sink.i109.i, %BITv07_reloadDStream.exit.sink.split.i107.i ]
  %.promoted.i = phi i32 [ %i.nu, %FSEv07_initDState.exit103.i ], [ %i.nu, %bb.bl ], [ %storemerge177.i, %BITv07_reloadDStream.exit.sink.split.i107.i ]
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 3084 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %5, i64 72
  store ptr %i.om, ptr %i.on, align 8, !tbaa !210
  %i.oo = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.op = getelementptr inbounds i8, ptr %i.fz, i64 -8 ; 5 uses
  %i.oq = ptrtoint ptr %i.fz to i64
  %i.or = ptrtoint ptr %i.ga to i64
  %i.os = ptrtoint ptr %i.ge to i64               ; 12 uses
  %i.ot = ptrtoint ptr %i.gg to i64
  %i.ou = getelementptr inbounds i8, ptr %i.fz, i64 -13
  %i.ov = ptrtoint ptr %i.op to i64
  %i.ow = add i64 %2, %i.a
  %i.ox = add i64 %i.ow, -8                       ; 2 uses
  %i.oy = add i64 %i.os, 8
  %i.oz = add i64 %i.os, 1
  %invariant.op.a = add i64 %i.os, 16
  %i.pa = add i64 %2, %i.a
  %i.pb = add i64 %i.pa, -17
  %invariant.op285 = add i64 %i.os, 8
  br label %bb.bn

bb.bn:                                            ; preds = %ZSTDv07_execSequence.exit.i, %FSEv07_initDState.exit111.i
  %i.pc = phi i64 [ %i.iq, %FSEv07_initDState.exit111.i ], [ %i.ri, %ZSTDv07_execSequence.exit.i ] ; 3 uses
  %i.pd = phi i64 [ %i.im, %FSEv07_initDState.exit111.i ], [ %i.rj, %ZSTDv07_execSequence.exit.i ] ; 2 uses
  %i.pe = phi i64 [ %i.ij, %FSEv07_initDState.exit111.i ], [ %i.rk, %ZSTDv07_execSequence.exit.i ] ; 2 uses
  %i.pf = phi i64 [ %i.ij, %FSEv07_initDState.exit111.i ], [ %i.rl, %ZSTDv07_execSequence.exit.i ] ; 4 uses
  %i.pg = phi i64 [ %i.im, %FSEv07_initDState.exit111.i ], [ %i.rm, %ZSTDv07_execSequence.exit.i ] ; 3 uses
  %.idx287.i = phi i64 [ %.promoted208.idx.i, %FSEv07_initDState.exit111.i ], [ %.idx288.i, %ZSTDv07_execSequence.exit.i ] ; 5 uses
  %.val.i115207.i = phi i64 [ %i.mo, %FSEv07_initDState.exit111.i ], [ %i.ur, %ZSTDv07_execSequence.exit.i ]
  %.val60.i205.i = phi i64 [ %i.nt, %FSEv07_initDState.exit111.i ], [ %i.uf, %ZSTDv07_execSequence.exit.i ]
  %.val62.i203.i = phi i64 [ %i.lj, %FSEv07_initDState.exit111.i ], [ %i.tt, %ZSTDv07_execSequence.exit.i ]
  %.val.i68.i199.i = phi i64 [ %.promoted198.i, %FSEv07_initDState.exit111.i ], [ %.val.i68.i200.i, %ZSTDv07_execSequence.exit.i ]
  %storemerge178192.i = phi i32 [ %.promoted.i, %FSEv07_initDState.exit111.i ], [ %i.up, %ZSTDv07_execSequence.exit.i ] ; 6 uses
  %.0134.i = phi ptr [ %i.fv, %FSEv07_initDState.exit111.i ], [ %i.uv, %ZSTDv07_execSequence.exit.i ] ; 6 uses
  %.0133.i = phi i32 [ %.0.i.i, %FSEv07_initDState.exit111.i ], [ %i.qa, %ZSTDv07_execSequence.exit.i ] ; 3 uses
  %.075.i = phi ptr [ %1, %FSEv07_initDState.exit111.i ], [ %i.uu, %ZSTDv07_execSequence.exit.i ] ; 7 uses
  %.ptr296.i = getelementptr inbounds i8, ptr %i.if, i64 %.idx287.i ; 3 uses
  %i.ph = icmp ugt i32 %storemerge178192.i, 64
  br i1 %i.ph, label %BITv07_reloadDStream.exit.thread.i, label %bb.bo

BITv07_reloadDStream.exit.thread.i:               ; preds = %bb.bn
  %.not179.i = icmp eq i32 %.0133.i, 0
  br i1 %.not179.i, label %.preheader.i, label %.thread166.i

bb.bo:                                            ; preds = %bb.bn
  %.not.i112.i = icmp slt i64 %.idx287.i, 8
  br i1 %.not.i112.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.pi = lshr i32 %storemerge178192.i, 3
  %i.pj = zext nneg i32 %i.pi to i64
  %.add291.i = sub nuw nsw i64 %.idx287.i, %i.pj  ; 2 uses
  %.ptr301.i = getelementptr inbounds nuw i8, ptr %i.if, i64 %.add291.i ; 2 uses
  store ptr %.ptr301.i, ptr %i.oo, align 8, !tbaa !49
  %i.pk = and i32 %storemerge178192.i, 7
  br label %BITv07_reloadDStream.exit.sink.split.i

bb.bq:                                            ; preds = %bb.bo
  %i.pl = icmp eq ptr %.ptr296.i, %i.ia
  br i1 %i.pl, label %BITv07_reloadDStream.exit.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.pm = lshr i32 %storemerge178192.i, 3         ; 2 uses
  %i.pn = zext nneg i32 %i.pm to i64
  %i.po = sub nsw i64 0, %i.pn
  %i.pp = getelementptr inbounds i8, ptr %.ptr296.i, i64 %i.po
  %i.pq = icmp ult ptr %i.pp, %i.ia
  %i.pr = ptrtoint ptr %.ptr296.i to i64
  %i.ps = sub i64 %i.pr, %i.ib
  %i.pt = trunc i64 %i.ps to i32
  %.024.i.i = select i1 %i.pq, i32 %i.pt, i32 %i.pm ; 2 uses
  %i.pu = zext i32 %.024.i.i to i64
  %.add290.i = sub nsw i64 %.idx287.i, %i.pu      ; 2 uses
  %.ptr300.i = getelementptr inbounds i8, ptr %i.if, i64 %.add290.i ; 2 uses
  store ptr %.ptr300.i, ptr %i.oo, align 8, !tbaa !49
  %i.pv = shl i32 %.024.i.i, 3
  %i.pw = sub i32 %storemerge178192.i, %i.pv
  br label %BITv07_reloadDStream.exit.sink.split.i

BITv07_reloadDStream.exit.sink.split.i:           ; preds = %bb.br, %bb.bp
  %.val30.i.sink.in.i = phi ptr [ %.ptr301.i, %bb.bp ], [ %.ptr300.i, %bb.br ]
  %.idx289.ph.i = phi i64 [ %.add291.i, %bb.bp ], [ %.add290.i, %bb.br ]
  %storemerge178195.ph.i = phi i32 [ %i.pk, %bb.bp ], [ %i.pw, %bb.br ]
  %.val30.i.sink.i = load i64, ptr %.val30.i.sink.in.i, align 1 ; 2 uses
  store i64 %.val30.i.sink.i, ptr %5, align 8, !tbaa !50
  br label %BITv07_reloadDStream.exit.i

BITv07_reloadDStream.exit.i:                      ; preds = %BITv07_reloadDStream.exit.sink.split.i, %bb.bq
  %.idx289.i = phi i64 [ %.idx287.i, %bb.bq ], [ %.idx289.ph.i, %BITv07_reloadDStream.exit.sink.split.i ] ; 6 uses
  %.val.i68.i201.i = phi i64 [ %.val.i68.i199.i, %bb.bq ], [ %.val30.i.sink.i, %BITv07_reloadDStream.exit.sink.split.i ] ; 5 uses
  %storemerge178195.i = phi i32 [ %storemerge178192.i, %bb.bq ], [ %storemerge178195.ph.i, %BITv07_reloadDStream.exit.sink.split.i ] ; 3 uses
  %.ptr299.i = getelementptr inbounds i8, ptr %i.if, i64 %.idx289.i ; 3 uses
  %.not.i22 = icmp eq i32 %.0133.i, 0
  br i1 %.not.i22, label %.preheader.i, label %bb.bs

.preheader.i:                                     ; preds = %BITv07_reloadDStream.exit.i, %BITv07_reloadDStream.exit.thread.i
  %i.px = trunc i64 %i.pe to i32
  store i32 %i.px, ptr %i.ig, align 8, !tbaa !29
  %i.py = trunc i64 %i.pd to i32
  store i32 %i.py, ptr %i.ik, align 4, !tbaa !29
  %i.pz = trunc i64 %i.pc to i32
  store i32 %i.pz, ptr %i.io, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %.thread.i23

bb.bs:                                            ; preds = %BITv07_reloadDStream.exit.i
  %i.qa = add nsw i32 %.0133.i, -1
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %.val62.i203.i ; 3 uses
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qb, i64 2
  %.sroa.3.0.copyload.i.i.i = load i8, ptr %.sroa.3.0..sroa_idx.i.i.i, align 2, !tbaa !33, !noalias !211 ; 3 uses
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.om, i64 %.val60.i205.i ; 3 uses
  %.sroa.3.0..sroa_idx.i64.i.i = getelementptr inbounds nuw i8, ptr %i.qc, i64 2
  %.sroa.3.0.copyload.i65.i.i = load i8, ptr %.sroa.3.0..sroa_idx.i64.i.i, align 2, !tbaa !33, !noalias !211 ; 2 uses
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %.val.i115207.i ; 3 uses
  %.sroa.3.0..sroa_idx.i66.i.i = getelementptr inbounds nuw i8, ptr %i.qd, i64 2
  %.sroa.3.0.copyload.i67.i.i = load i8, ptr %.sroa.3.0..sroa_idx.i66.i.i, align 2, !tbaa !33, !noalias !211 ; 4 uses
  %i.qe = zext i8 %.sroa.3.0.copyload.i67.i.i to i32 ; 3 uses
  %i.qf = zext i8 %.sroa.3.0.copyload.i.i.i to i64 ; 2 uses
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr @LL_bits, i64 %i.qf
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !29, !noalias !211 ; 3 uses
  %i.qi = zext i8 %.sroa.3.0.copyload.i65.i.i to i64 ; 2 uses
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr @ML_bits, i64 %i.qi
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !29, !noalias !211 ; 3 uses
  %i.ql = add i32 %i.qh, %i.qe
  %i.qm = add i32 %i.ql, %i.qk
  %.not.i116.i = icmp eq i8 %.sroa.3.0.copyload.i67.i.i, 0
  br i1 %.not.i116.i, label %.thread.i123.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.qn = zext i8 %.sroa.3.0.copyload.i67.i.i to i64
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv07_decodeSequence.OF_base, i64 %i.qn
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !29, !noalias !211
  %i.qq = zext i32 %i.qp to i64
  %i.qr = and i32 %storemerge178195.i, 63
  %i.qs = zext nneg i32 %i.qr to i64
  %i.qt = shl i64 %.val.i68.i201.i, %i.qs
  %i.qu = lshr i64 %i.qt, 1
  %i.qv = and i32 %i.qe, 63
  %i.qw = xor i32 %i.qv, 63
  %i.qx = zext nneg i32 %i.qw to i64
  %i.qy = lshr i64 %i.qu, %i.qx
  %i.qz = add i32 %storemerge178195.i, %i.qe      ; 2 uses
  %i.ra = add nuw i64 %i.qy, %i.qq                ; 2 uses
  %i.rb = icmp eq i8 %.sroa.3.0.copyload.i67.i.i, 1
  br i1 %i.rb, label %.thread.i123.i, label %.sink.split.sink.split.i

.thread.i123.i:                                   ; preds = %bb.bt, %bb.bs
  %storemerge178194.i = phi i32 [ %i.qz, %bb.bt ], [ %storemerge178195.i, %bb.bs ] ; 3 uses
  %.084.i.i = phi i64 [ %i.ra, %bb.bt ], [ 0, %bb.bs ] ; 3 uses
  %i.rc = icmp eq i8 %.sroa.3.0.copyload.i.i.i, 0
  %i.rd = icmp ult i64 %.084.i.i, 2
  %i.re = and i1 %i.rc, %i.rd
  %i.rf = sub nuw nsw i64 1, %.084.i.i
  %spec.select.i.i = select i1 %i.re, i64 %i.rf, i64 %.084.i.i ; 3 uses
  %.not57.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not57.i.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %.thread.i123.i
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %spec.select.i.i
  %i.rh = load i64, ptr %i.rg, align 8, !tbaa !75, !noalias !211 ; 2 uses
  %.not58.i.i = icmp eq i64 %spec.select.i.i, 1
  br i1 %.not58.i.i, label %.sink.split.i, label %.sink.split.sink.split.i

.sink.split.sink.split.i:                         ; preds = %bb.bu, %bb.bt
  %.sink.ph.i = phi i64 [ %i.rh, %bb.bu ], [ %i.ra, %bb.bt ]
  %storemerge178193.ph.ph.i = phi i32 [ %storemerge178194.i, %bb.bu ], [ %i.qz, %bb.bt ]
  store i64 %i.pg, ptr %i.ir, align 8, !tbaa !75, !noalias !211
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.sink.split.sink.split.i, %bb.bu
  %.sink.i = phi i64 [ %i.rh, %bb.bu ], [ %.sink.ph.i, %.sink.split.sink.split.i ] ; 3 uses
  %.ph.i = phi i64 [ %i.pc, %bb.bu ], [ %i.pg, %.sink.split.sink.split.i ]
  %storemerge178193.ph.i = phi i32 [ %storemerge178194.i, %bb.bu ], [ %storemerge178193.ph.ph.i, %.sink.split.sink.split.i ]
  store i64 %i.pf, ptr %i.in, align 8, !tbaa !75, !noalias !211
  store i64 %.sink.i, ptr %i.ih, align 8, !tbaa !75, !noalias !211
  br label %bb.bv

bb.bv:                                            ; preds = %.sink.split.i, %.thread.i123.i
  %i.ri = phi i64 [ %i.pc, %.thread.i123.i ], [ %.ph.i, %.sink.split.i ]
  %i.rj = phi i64 [ %i.pd, %.thread.i123.i ], [ %i.pf, %.sink.split.i ]
  %i.rk = phi i64 [ %i.pe, %.thread.i123.i ], [ %.sink.i, %.sink.split.i ]
  %i.rl = phi i64 [ %i.pf, %.thread.i123.i ], [ %.sink.i, %.sink.split.i ] ; 16 uses
  %i.rm = phi i64 [ %i.pg, %.thread.i123.i ], [ %i.pf, %.sink.split.i ]
  %storemerge178193.i = phi i32 [ %storemerge178194.i, %.thread.i123.i ], [ %storemerge178193.ph.i, %.sink.split.i ] ; 3 uses
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv07_decodeSequence.ML_base, i64 %i.qi
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !29, !noalias !211
  %i.rp = zext i32 %i.ro to i64                   ; 4 uses
  %i.rq = icmp ugt i8 %.sroa.3.0.copyload.i65.i.i, 31
  br i1 %i.rq, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.rr = and i32 %storemerge178193.i, 63
  %i.rs = zext nneg i32 %i.rr to i64
  %i.rt = shl i64 %.val.i68.i201.i, %i.rs
  %i.ru = lshr i64 %i.rt, 1
  %i.rv = and i32 %i.qk, 63
  %i.rw = xor i32 %i.rv, 63
  %i.rx = zext nneg i32 %i.rw to i64
  %i.ry = lshr i64 %i.ru, %i.rx
  %i.rz = add i32 %storemerge178193.i, %i.qk
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %storemerge178196.i = phi i32 [ %i.rz, %bb.bw ], [ %storemerge178193.i, %bb.bv ] ; 3 uses
  %i.sa = phi i64 [ %i.ry, %bb.bw ], [ 0, %bb.bv ] ; 4 uses
  %i.sb = add nuw i64 %i.sa, %i.rp                ; 4 uses
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv07_decodeSequence.LL_base, i64 %i.qf
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !29, !noalias !211
  %i.se = zext i32 %i.sd to i64                   ; 4 uses
  %i.sf = icmp ugt i8 %.sroa.3.0.copyload.i.i.i, 15
  br i1 %i.sf, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.sg = and i32 %storemerge178196.i, 63
  %i.sh = zext nneg i32 %i.sg to i64
  %i.si = shl i64 %.val.i68.i201.i, %i.sh
  %i.sj = lshr i64 %i.si, 1
  %i.sk = and i32 %i.qh, 63
  %i.sl = xor i32 %i.sk, 63
end_hunk_0
begin_hunk_1_@ZSTDv07_decompressBlock_internal:bb.a
  %i.sw = icmp eq ptr %.ptr299.i, %i.ia
  br i1 %i.sw, label %ZSTDv07_decodeSequence.exit.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.sx = lshr i32 %storemerge178197.i, 3         ; 2 uses
  %i.sy = zext nneg i32 %i.sx to i64
  %i.sz = sub nsw i64 0, %i.sy
  %i.ta = getelementptr inbounds i8, ptr %.ptr299.i, i64 %i.sz
  %i.tb = icmp ult ptr %i.ta, %i.ia
  %i.tc = ptrtoint ptr %.ptr299.i to i64
  %i.td = sub i64 %i.tc, %i.ib
  %i.te = trunc i64 %i.td to i32
  %.024.i.i122.i = select i1 %i.tb, i32 %i.te, i32 %i.sx ; 2 uses
  %i.tf = zext i32 %.024.i.i122.i to i64
  %.add292.i = sub nsw i64 %.idx289.i, %i.tf      ; 2 uses
  %.ptr302.i = getelementptr inbounds i8, ptr %i.if, i64 %.add292.i
  store ptr %.ptr302.i, ptr %i.oo, align 8, !tbaa !49, !noalias !211
  %i.tg = shl i32 %.024.i.i122.i, 3
  %i.th = sub i32 %storemerge178197.i, %i.tg
  br label %BITv07_reloadDStream.exit.sink.split.i121.i

BITv07_reloadDStream.exit.sink.split.i121.i:      ; preds = %bb.cd, %bb.cb
  %storemerge178.i = phi i32 [ %i.sv, %bb.cb ], [ %i.th, %bb.cd ]
  %.val.i72.sink.in.i.idx.i = phi i64 [ %.add293.i, %bb.cb ], [ %.add292.i, %bb.cd ] ; 2 uses
  %.val.i72.sink.in.i.ptr.i = getelementptr inbounds i8, ptr %i.if, i64 %.val.i72.sink.in.i.idx.i
  %.val.i72.sink.i.i = load i64, ptr %.val.i72.sink.in.i.ptr.i, align 1, !noalias !211 ; 2 uses
  store i64 %.val.i72.sink.i.i, ptr %5, align 8, !tbaa !50, !noalias !211
  br label %ZSTDv07_decodeSequence.exit.i

ZSTDv07_decodeSequence.exit.i:                    ; preds = %BITv07_reloadDStream.exit.sink.split.i121.i, %bb.cc, %bb.bz
  %.idx288.i = phi i64 [ %.idx289.i, %bb.bz ], [ %.idx289.i, %bb.cc ], [ %.val.i72.sink.in.i.idx.i, %BITv07_reloadDStream.exit.sink.split.i121.i ]
  %.val.i68.i200.i = phi i64 [ %.val.i68.i201.i, %bb.bz ], [ %.val.i68.i201.i, %bb.cc ], [ %.val.i72.sink.i.i, %BITv07_reloadDStream.exit.sink.split.i121.i ] ; 4 uses
  %.val4.i.i.i.i = phi i32 [ %storemerge178197.i, %bb.bz ], [ %storemerge178197.i, %bb.cc ], [ %storemerge178.i, %BITv07_reloadDStream.exit.sink.split.i121.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.qb, align 2, !tbaa !32, !noalias !211
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.qb, i64 3
  %.sroa.42.0.copyload.i.i.i = load i8, ptr %.sroa.42.0..sroa_idx.i.i.i, align 1, !tbaa !33, !noalias !211
  %i.ti = zext i8 %.sroa.42.0.copyload.i.i.i to i32 ; 2 uses
  %i.tj = and i32 %.val4.i.i.i.i, 63
  %i.tk = zext nneg i32 %i.tj to i64
  %i.tl = shl i64 %.val.i68.i200.i, %i.tk
  %i.tm = lshr i64 %i.tl, 1
  %i.tn = and i32 %i.ti, 63
  %i.to = xor i32 %i.tn, 63
  %i.tp = zext nneg i32 %i.to to i64
  %i.tq = lshr i64 %i.tm, %i.tp
  %i.tr = add i32 %.val4.i.i.i.i, %i.ti           ; 2 uses
  %i.ts = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.tt = add nuw i64 %i.tq, %i.ts                ; 2 uses
  store i64 %i.tt, ptr %i.ky, align 8, !tbaa !209, !noalias !211
  %.sroa.0.0.copyload.i73.i.i = load i16, ptr %i.qc, align 2, !tbaa !32, !noalias !211
  %.sroa.42.0..sroa_idx.i74.i.i = getelementptr inbounds nuw i8, ptr %i.qc, i64 3
  %.sroa.42.0.copyload.i75.i.i = load i8, ptr %.sroa.42.0..sroa_idx.i74.i.i, align 1, !tbaa !33, !noalias !211
  %i.tu = zext i8 %.sroa.42.0.copyload.i75.i.i to i32 ; 2 uses
  %i.tv = and i32 %i.tr, 63
  %i.tw = zext nneg i32 %i.tv to i64
  %i.tx = shl i64 %.val.i68.i200.i, %i.tw
  %i.ty = lshr i64 %i.tx, 1
  %i.tz = and i32 %i.tu, 63
  %i.ua = xor i32 %i.tz, 63
  %i.ub = zext nneg i32 %i.ua to i64
  %i.uc = lshr i64 %i.ty, %i.ub
  %i.ud = add i32 %i.tr, %i.tu                    ; 2 uses
  %i.ue = zext i16 %.sroa.0.0.copyload.i73.i.i to i64
  %i.uf = add nuw i64 %i.uc, %i.ue                ; 2 uses
  store i64 %i.uf, ptr %i.nj, align 8, !tbaa !209, !noalias !211
  %.sroa.0.0.copyload.i78.i.i = load i16, ptr %i.qd, align 2, !tbaa !32, !noalias !211
  %.sroa.42.0..sroa_idx.i79.i.i = getelementptr inbounds nuw i8, ptr %i.qd, i64 3
  %.sroa.42.0.copyload.i80.i.i = load i8, ptr %.sroa.42.0..sroa_idx.i79.i.i, align 1, !tbaa !33, !noalias !211
  %i.ug = zext i8 %.sroa.42.0.copyload.i80.i.i to i32 ; 2 uses
  %i.uh = and i32 %i.ud, 63
  %i.ui = zext nneg i32 %i.uh to i64
  %i.uj = shl i64 %.val.i68.i200.i, %i.ui
  %i.uk = lshr i64 %i.uj, 1
  %i.ul = and i32 %i.ug, 63
  %i.um = xor i32 %i.ul, 63
  %i.un = zext nneg i32 %i.um to i64
  %i.uo = lshr i64 %i.uk, %i.un
  %i.up = add i32 %i.ud, %i.ug                    ; 2 uses
  store i32 %i.up, ptr %i.lb, align 8, !tbaa !51, !noalias !211
  %i.uq = zext i16 %.sroa.0.0.copyload.i78.i.i to i64
  %i.ur = add nuw i64 %i.uo, %i.uq                ; 2 uses
  store i64 %i.ur, ptr %i.me, align 8, !tbaa !209, !noalias !211
  %i.us = getelementptr inbounds i8, ptr %.075.i, i64 %i.sq ; 7 uses
  %i.ut = add i64 %i.sq, %i.sb                    ; 5 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %.075.i, i64 %i.ut ; 5 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %.0134.i, i64 %i.sq
  %i.uw = sub i64 0, %i.rl
  %i.ux = getelementptr inbounds i8, ptr %i.us, i64 %i.uw ; 2 uses
  %i.uy = add nuw i64 %i.sq, 8
  %i.uz = ptrtoint ptr %.075.i to i64             ; 7 uses
  %i.va = sub i64 %i.oq, %i.uz                    ; 2 uses
  %i.vb = icmp ugt i64 %i.uy, %i.va
  %i.vc = icmp ugt i64 %i.ut, %i.va
  %or.cond.i124.i = select i1 %i.vb, i1 true, i1 %i.vc
  br i1 %or.cond.i124.i, label %.thread166.i, label %bb.ce

bb.ce:                                            ; preds = %ZSTDv07_decodeSequence.exit.i
  %i.vd = ptrtoint ptr %.0134.i to i64            ; 2 uses
  %i.ve = sub i64 %i.or, %i.vd
  %i.vf = icmp ugt i64 %i.sq, %i.ve
  br i1 %i.vf, label %.thread166.i, label %.preheader117.i.i.preheader

.preheader117.i.i.preheader:                      ; preds = %bb.ce
  %i.vg = add i64 %i.sp, %i.uz
  %i.vh = add i64 %i.vg, %i.se
  %i.vi = add i64 %i.uz, 8
  %i.vj = tail call i64 @llvm.umax.i64(i64 %i.vh, i64 %i.vi)
  %i.vk = xor i64 %i.uz, -1
  %i.vl = add i64 %i.vj, %i.vk                    ; 2 uses
  %i.vm = lshr i64 %i.vl, 3
  %i.vn = add nuw nsw i64 %i.vm, 1                ; 2 uses
  %min.iters.check232 = icmp ult i64 %i.vl, 24
  %i.vo = sub i64 %i.vd, %i.uz
  %diff.check234 = icmp ugt i64 %i.vo, -32
  %or.cond = or i1 %min.iters.check232, %diff.check234
  br i1 %or.cond, label %.preheader117.i.i.preheader252, label %vector.ph235

vector.ph235:                                     ; preds = %.preheader117.i.i.preheader
  %n.vec236 = and i64 %i.vn, 4611686018427387900  ; 3 uses
  %i.vp = shl i64 %n.vec236, 3                    ; 2 uses
  %i.vq = getelementptr i8, ptr %.0134.i, i64 %i.vp
  %i.vr = getelementptr i8, ptr %.075.i, i64 %i.vp
  br label %vector.body237

vector.body237:                                   ; preds = %vector.body237, %vector.ph235
  %index238 = phi i64 [ 0, %vector.ph235 ], [ %index.next243, %vector.body237 ] ; 2 uses
  %i.vs = shl i64 %index238, 3                    ; 2 uses
  %next.gep239 = getelementptr i8, ptr %.0134.i, i64 %i.vs ; 2 uses
  %next.gep240 = getelementptr i8, ptr %.075.i, i64 %i.vs ; 2 uses
  %i.vt = getelementptr i8, ptr %next.gep239, i64 16
  %wide.load241 = load <2 x i64>, ptr %next.gep239, align 1
  %wide.load242 = load <2 x i64>, ptr %i.vt, align 1
  %i.vu = getelementptr i8, ptr %next.gep240, i64 16
  store <2 x i64> %wide.load241, ptr %next.gep240, align 1
  store <2 x i64> %wide.load242, ptr %i.vu, align 1
  %index.next243 = add nuw i64 %index238, 4       ; 2 uses
  %i.vv = icmp eq i64 %index.next243, %n.vec236
  br i1 %i.vv, label %middle.block244, label %vector.body237, !llvm.loop !192

middle.block244:                                  ; preds = %vector.body237
  %cmp.n245 = icmp eq i64 %i.vn, %n.vec236
  br i1 %cmp.n245, label %ZSTDv07_wildcopy.exit.i.i, label %.preheader117.i.i.preheader252

.preheader117.i.i.preheader252:                   ; preds = %.preheader117.i.i.preheader, %middle.block244
  %.09.i.i.i.ph = phi ptr [ %.0134.i, %.preheader117.i.i.preheader ], [ %i.vq, %middle.block244 ]
  %.0.i.i.i.ph = phi ptr [ %.075.i, %.preheader117.i.i.preheader ], [ %i.vr, %middle.block244 ]
  br label %.preheader117.i.i

.preheader117.i.i:                                ; preds = %.preheader117.i.i.preheader252, %.preheader117.i.i
  %.09.i.i.i = phi ptr [ %i.vx, %.preheader117.i.i ], [ %.09.i.i.i.ph, %.preheader117.i.i.preheader252 ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.vw, %.preheader117.i.i ], [ %.0.i.i.i.ph, %.preheader117.i.i.preheader252 ] ; 2 uses
  %.09.val.i.i.i = load i64, ptr %.09.i.i.i, align 1
  store i64 %.09.val.i.i.i, ptr %.0.i.i.i, align 1
  %i.vw = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8 ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8
  %i.vy = icmp ult ptr %i.vw, %i.us
  br i1 %i.vy, label %.preheader117.i.i, label %ZSTDv07_wildcopy.exit.i.i, !llvm.loop !193

ZSTDv07_wildcopy.exit.i.i:                        ; preds = %.preheader117.i.i, %middle.block244
  %i.vz = ptrtoint ptr %i.us to i64               ; 2 uses
  %i.wa = sub i64 %i.vz, %i.os                    ; 6 uses
  %i.wb = icmp ugt i64 %i.rl, %i.wa
  br i1 %i.wb, label %bb.cf, label %.thread.i125.i

bb.cf:                                            ; preds = %ZSTDv07_wildcopy.exit.i.i
  %i.wc = sub i64 %i.vz, %i.ot
  %i.wd = icmp ugt i64 %i.rl, %i.wc
  br i1 %i.wd, label %.thread166.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.we = ptrtoint ptr %i.ux to i64
  %.neg.i.i = sub i64 %i.we, %i.os                ; 4 uses
  %i.wf = getelementptr inbounds i8, ptr %i.gi, i64 %.neg.i.i ; 2 uses
  %i.wg = add nsw i64 %.neg.i.i, %i.sb            ; 3 uses
  %.not.i128.i = icmp sgt i64 %i.wg, 0
  br i1 %.not.i128.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.us, ptr readonly align 1 %i.wf, i64 %i.sb, i1 false)
  br label %ZSTDv07_execSequence.exit.i

bb.ci:                                            ; preds = %bb.cg
  %gepdiff.i.i = sub nsw i64 0, %.neg.i.i         ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.us, ptr readonly align 1 %i.wf, i64 %gepdiff.i.i, i1 false)
  %i.wh = getelementptr inbounds nuw i8, ptr %i.us, i64 %gepdiff.i.i ; 7 uses
  %i.wi = icmp ule ptr %i.wh, %i.op
  %i.wj = icmp samesign ugt i64 %i.wg, 2
  %or.cond.not.i.i = select i1 %i.wi, i1 %i.wj, i1 false
  br i1 %or.cond.not.i.i, label %.thread.i125.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ci
  %i.wk = sub nsw i64 %i.sq, %.neg.i.i
  %i.wl = icmp slt i64 %i.wk, %i.ut
  br i1 %i.wl, label %iter.check212, label %ZSTDv07_execSequence.exit.i

iter.check212:                                    ; preds = %.preheader.i.i
  %i.wm = add i64 %i.sa, %i.sp
  %i.wn = add i64 %i.wm, %i.uz
  %i.wo = add i64 %i.wn, %i.rp
  %i.wp = add i64 %i.wo, %i.se
  %i.wq = add i64 %i.oz, %i.rl
  %umax194 = tail call i64 @llvm.umax.i64(i64 %i.wp, i64 %i.wq)
  %i.wr = add i64 %i.rl, %i.os
  %i.ws = sub i64 %umax194, %i.wr                 ; 7 uses
  %min.iters.check196 = icmp ult i64 %i.ws, 8
  %diff.check198 = icmp ult i64 %i.rl, 32
  %or.cond248 = select i1 %min.iters.check196, i1 true, i1 %diff.check198
  br i1 %or.cond248, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check199

vector.main.loop.iter.check199:                   ; preds = %iter.check212
  %min.iters.check200 = icmp ult i64 %i.ws, 32
  br i1 %min.iters.check200, label %vec.epilog.ph216, label %vector.ph201

vector.ph201:                                     ; preds = %vector.main.loop.iter.check199
  %i.wt = and i64 %i.ws, 24
  %n.vec202 = and i64 %i.ws, -32                  ; 5 uses
  %i.wu = getelementptr i8, ptr %i.ge, i64 %n.vec202
  %i.wv = getelementptr i8, ptr %i.wh, i64 %n.vec202
  br label %vector.body203

vector.body203:                                   ; preds = %vector.ph201, %vector.body203
  %index204 = phi i64 [ 0, %vector.ph201 ], [ %index.next209, %vector.body203 ] ; 3 uses
  %next.gep205 = getelementptr i8, ptr %i.ge, i64 %index204 ; 2 uses
  %next.gep206 = getelementptr i8, ptr %i.wh, i64 %index204 ; 2 uses
  %i.ww = getelementptr i8, ptr %next.gep205, i64 16
  %wide.load207 = load <16 x i8>, ptr %next.gep205, align 1, !tbaa !33
  %wide.load208 = load <16 x i8>, ptr %i.ww, align 1, !tbaa !33
  %i.wx = getelementptr i8, ptr %next.gep206, i64 16
  store <16 x i8> %wide.load207, ptr %next.gep206, align 1, !tbaa !33
  store <16 x i8> %wide.load208, ptr %i.wx, align 1, !tbaa !33
  %index.next209 = add nuw i64 %index204, 32      ; 2 uses
  %i.wy = icmp eq i64 %index.next209, %n.vec202
  br i1 %i.wy, label %middle.block210, label %vector.body203, !llvm.loop !194

middle.block210:                                  ; preds = %vector.body203
  %cmp.n211 = icmp eq i64 %i.ws, %n.vec202
  br i1 %cmp.n211, label %ZSTDv07_execSequence.exit.i, label %vec.epilog.iter.check213

vec.epilog.iter.check213:                         ; preds = %middle.block210
  %min.epilog.iters.check215 = icmp eq i64 %i.wt, 0
  br i1 %min.epilog.iters.check215, label %.lr.ph.i.i.preheader, label %vec.epilog.ph216, !prof !212

vec.epilog.ph216:                                 ; preds = %vector.main.loop.iter.check199, %vec.epilog.iter.check213
  %vec.epilog.resume.val217 = phi i64 [ %n.vec202, %vec.epilog.iter.check213 ], [ 0, %vector.main.loop.iter.check199 ]
  %n.vec218 = and i64 %i.ws, -8                   ; 4 uses
  %i.wz = getelementptr i8, ptr %i.ge, i64 %n.vec218
  %i.xa = getelementptr i8, ptr %i.wh, i64 %n.vec218
  br label %vec.epilog.vector.body219

vec.epilog.vector.body219:                        ; preds = %vec.epilog.vector.body219, %vec.epilog.ph216
  %index220 = phi i64 [ %vec.epilog.resume.val217, %vec.epilog.ph216 ], [ %index.next224, %vec.epilog.vector.body219 ] ; 3 uses
  %next.gep221 = getelementptr i8, ptr %i.ge, i64 %index220
  %next.gep222 = getelementptr i8, ptr %i.wh, i64 %index220
  %wide.load223 = load <8 x i8>, ptr %next.gep221, align 1, !tbaa !33
  store <8 x i8> %wide.load223, ptr %next.gep222, align 1, !tbaa !33
  %index.next224 = add nuw i64 %index220, 8       ; 2 uses
  %i.xb = icmp eq i64 %index.next224, %n.vec218
  br i1 %i.xb, label %vec.epilog.middle.block225, label %vec.epilog.vector.body219, !llvm.loop !195

vec.epilog.middle.block225:                       ; preds = %vec.epilog.vector.body219
  %cmp.n226 = icmp eq i64 %i.ws, %n.vec218
  br i1 %cmp.n226, label %ZSTDv07_execSequence.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check212, %vec.epilog.iter.check213, %vec.epilog.middle.block225
  %.086119.i.i.ph = phi ptr [ %i.ge, %iter.check212 ], [ %i.wu, %vec.epilog.iter.check213 ], [ %i.wz, %vec.epilog.middle.block225 ]
  %.088118.i.i.ph = phi ptr [ %i.wh, %iter.check212 ], [ %i.wv, %vec.epilog.iter.check213 ], [ %i.xa, %vec.epilog.middle.block225 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.086119.i.i = phi ptr [ %i.xc, %.lr.ph.i.i ], [ %.086119.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.088118.i.i = phi ptr [ %i.xe, %.lr.ph.i.i ], [ %.088118.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %.086119.i.i, i64 1
  %i.xd = load i8, ptr %.086119.i.i, align 1, !tbaa !33
  %i.xe = getelementptr inbounds nuw i8, ptr %.088118.i.i, i64 1 ; 2 uses
  store i8 %i.xd, ptr %.088118.i.i, align 1, !tbaa !33
  %i.xf = icmp ult ptr %i.xe, %i.uu
  br i1 %i.xf, label %.lr.ph.i.i, label %ZSTDv07_execSequence.exit.i, !llvm.loop !196

.thread.i125.i:                                   ; preds = %bb.ci, %ZSTDv07_wildcopy.exit.i.i
  %i.xg = phi i64 [ %i.wg, %bb.ci ], [ %i.sb, %ZSTDv07_wildcopy.exit.i.i ]
  %.290.i.i = phi ptr [ %i.wh, %bb.ci ], [ %i.us, %ZSTDv07_wildcopy.exit.i.i ] ; 8 uses
  %.2.i126.i = phi ptr [ %i.ge, %bb.ci ], [ %i.ux, %ZSTDv07_wildcopy.exit.i.i ] ; 7 uses
  %i.xh = icmp ult i64 %i.rl, 8
  br i1 %i.xh, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %.thread.i125.i
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv07_execSequence.dec64table, i64 %i.rl
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !29
  %i.xk = load i8, ptr %.2.i126.i, align 1, !tbaa !33
  store i8 %i.xk, ptr %.290.i.i, align 1, !tbaa !33
  %i.xl = getelementptr inbounds nuw i8, ptr %.2.i126.i, i64 1
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !33
  %i.xn = getelementptr inbounds nuw i8, ptr %.290.i.i, i64 1
  store i8 %i.xm, ptr %i.xn, align 1, !tbaa !33
  %i.xo = getelementptr inbounds nuw i8, ptr %.2.i126.i, i64 2
  %i.xp = load i8, ptr %i.xo, align 1, !tbaa !33
  %i.xq = getelementptr inbounds nuw i8, ptr %.290.i.i, i64 2
  store i8 %i.xp, ptr %i.xq, align 1, !tbaa !33
  %i.xr = getelementptr inbounds nuw i8, ptr %.2.i126.i, i64 3
  %i.xs = load i8, ptr %i.xr, align 1, !tbaa !33
  %i.xt = getelementptr inbounds nuw i8, ptr %.290.i.i, i64 3
  store i8 %i.xs, ptr %i.xt, align 1, !tbaa !33
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr @ZSTDv07_execSequence.dec32table, i64 %i.rl
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !29
  %i.xw = zext i32 %i.xv to i64
  %i.xx = getelementptr inbounds nuw i8, ptr %.2.i126.i, i64 %i.xw ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %.290.i.i, i64 4
  %.val.i127.i = load i32, ptr %i.xx, align 1
  store i32 %.val.i127.i, ptr %i.xy, align 1
  %i.xz = sext i32 %i.xj to i64
  %i.ya = sub nsw i64 0, %i.xz
  %i.yb = getelementptr inbounds i8, ptr %i.xx, i64 %i.ya
  br label %bb.cl

bb.ck:                                            ; preds = %.thread.i125.i
  %.2.val.i.i = load i64, ptr %.2.i126.i, align 1
  store i64 %.2.val.i.i, ptr %.290.i.i, align 1
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.3.i.i = phi ptr [ %i.yb, %bb.cj ], [ %.2.i126.i, %bb.ck ] ; 2 uses
  %.3.i.i155 = ptrtoaddr ptr %.3.i.i to i64       ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %.290.i.i, i64 8 ; 11 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 8 ; 10 uses
  %i.ye = icmp ugt ptr %i.uu, %i.ou
  br i1 %i.ye, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %i.yf = icmp ult ptr %i.yc, %i.op
  br i1 %i.yf, label %.preheader180.i.preheader, label %bb.cn

.preheader180.i.preheader:                        ; preds = %bb.cm
  %i.yg = tail call i64 @llvm.umax.i64(i64 %i.rl, i64 %i.wa) ; 2 uses
  %i.yh = add i64 %i.yg, %i.os
  %i.yi = sub i64 %i.pb, %i.yh                    ; 2 uses
  %i.yj = lshr i64 %i.yi, 3
  %i.yk = add nuw nsw i64 %i.yj, 1                ; 2 uses
  %min.iters.check156 = icmp ult i64 %i.yi, 56
  br i1 %min.iters.check156, label %.preheader180.i.preheader249, label %vector.memcheck157

vector.memcheck157:                               ; preds = %.preheader180.i.preheader
  %i.yl = add i64 %i.yg, %i.os
  %i.ym = sub i64 %.3.i.i155, %i.yl
  %diff.check158 = icmp ugt i64 %i.ym, -32
  br i1 %diff.check158, label %.preheader180.i.preheader249, label %vector.ph159

vector.ph159:                                     ; preds = %vector.memcheck157
  %n.vec160 = and i64 %i.yk, 4611686018427387900  ; 3 uses
  %i.yn = shl i64 %n.vec160, 3                    ; 2 uses
  %i.yo = getelementptr i8, ptr %i.yd, i64 %i.yn
  %i.yp = getelementptr i8, ptr %i.yc, i64 %i.yn
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph159
  %index162 = phi i64 [ 0, %vector.ph159 ], [ %index.next167, %vector.body161 ] ; 2 uses
  %i.yq = shl i64 %index162, 3                    ; 2 uses
  %next.gep163 = getelementptr i8, ptr %i.yd, i64 %i.yq ; 2 uses
  %next.gep164 = getelementptr i8, ptr %i.yc, i64 %i.yq ; 2 uses
  %i.yr = getelementptr i8, ptr %next.gep163, i64 16
  %wide.load165 = load <2 x i64>, ptr %next.gep163, align 1
  %wide.load166 = load <2 x i64>, ptr %i.yr, align 1
  %i.ys = getelementptr i8, ptr %next.gep164, i64 16
  store <2 x i64> %wide.load165, ptr %next.gep164, align 1
  store <2 x i64> %wide.load166, ptr %i.ys, align 1
  %index.next167 = add nuw i64 %index162, 4       ; 2 uses
  %i.yt = icmp eq i64 %index.next167, %n.vec160
  br i1 %i.yt, label %middle.block168, label %vector.body161, !llvm.loop !197

middle.block168:                                  ; preds = %vector.body161
  %cmp.n169 = icmp eq i64 %i.yk, %n.vec160
  br i1 %cmp.n169, label %ZSTDv07_wildcopy.exit108.i.i, label %.preheader180.i.preheader249

.preheader180.i.preheader249:                     ; preds = %vector.memcheck157, %.preheader180.i.preheader, %middle.block168
  %.09.i105.i.i.ph = phi ptr [ %i.yd, %vector.memcheck157 ], [ %i.yd, %.preheader180.i.preheader ], [ %i.yo, %middle.block168 ]
  %.0.i106.i.i.ph = phi ptr [ %i.yc, %vector.memcheck157 ], [ %i.yc, %.preheader180.i.preheader ], [ %i.yp, %middle.block168 ]
  br label %.preheader180.i

.preheader180.i:                                  ; preds = %.preheader180.i.preheader249, %.preheader180.i
  %.09.i105.i.i = phi ptr [ %i.yv, %.preheader180.i ], [ %.09.i105.i.i.ph, %.preheader180.i.preheader249 ] ; 2 uses
  %.0.i106.i.i = phi ptr [ %i.yu, %.preheader180.i ], [ %.0.i106.i.i.ph, %.preheader180.i.preheader249 ] ; 2 uses
  %.09.val.i107.i.i = load i64, ptr %.09.i105.i.i, align 1
  store i64 %.09.val.i107.i.i, ptr %.0.i106.i.i, align 1
  %i.yu = getelementptr inbounds nuw i8, ptr %.0.i106.i.i, i64 8 ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %.09.i105.i.i, i64 8
  %i.yw = icmp ult ptr %i.yu, %i.op
  br i1 %i.yw, label %.preheader180.i, label %ZSTDv07_wildcopy.exit108.i.i, !llvm.loop !198

ZSTDv07_wildcopy.exit108.i.i:                     ; preds = %.preheader180.i, %middle.block168
  %i.yx = ptrtoint ptr %i.yc to i64
  %i.yy = sub i64 %i.ov, %i.yx
  %i.yz = getelementptr inbounds i8, ptr %i.yd, i64 %i.yy
  br label %bb.cn

bb.cn:                                            ; preds = %ZSTDv07_wildcopy.exit108.i.i, %bb.cm
  %.391.i.i = phi ptr [ %i.op, %ZSTDv07_wildcopy.exit108.i.i ], [ %i.yc, %bb.cm ] ; 7 uses
  %.4.i.i = phi ptr [ %i.yz, %ZSTDv07_wildcopy.exit108.i.i ], [ %i.yd, %bb.cm ] ; 7 uses
  %.4.i.i138 = ptrtoaddr ptr %.4.i.i to i64
  %i.za = icmp ult ptr %.391.i.i, %i.uu
  br i1 %i.za, label %iter.check, label %ZSTDv07_execSequence.exit.i

iter.check:                                       ; preds = %bb.cn
  %i.zb = add i64 %i.sa, %i.sp
  %i.zc = add i64 %i.zb, %i.uz
  %i.zd = add i64 %i.zc, %i.rp
  %i.ze = add i64 %i.zd, %i.se
  %umax = tail call i64 @llvm.umax.i64(i64 %i.rl, i64 %i.wa)
  %i.zf = add i64 %i.oy, %umax
  %umax139 = tail call i64 @llvm.umax.i64(i64 %i.ox, i64 %i.zf)
  %i.zg = sub i64 %i.ze, %umax139                 ; 7 uses
  %min.iters.check = icmp ult i64 %i.zg, 8
  br i1 %min.iters.check, label %.lr.ph122.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.zh = tail call i64 @llvm.umax.i64(i64 %i.rl, i64 %i.wa)
  %.reass286 = add i64 %i.zh, %invariant.op285
  %i.zi = tail call i64 @llvm.umax.i64(i64 %i.ox, i64 %.reass286)
  %i.zj = sub i64 %.4.i.i138, %i.zi
  %diff.check = icmp ugt i64 %i.zj, -32
  br i1 %diff.check, label %.lr.ph122.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check140 = icmp ult i64 %i.zg, 32
  br i1 %min.iters.check140, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.zk = and i64 %i.zg, 24
  %n.vec = and i64 %i.zg, -32                     ; 5 uses
  %i.zl = getelementptr i8, ptr %.4.i.i, i64 %n.vec
  %i.zm = getelementptr i8, ptr %.391.i.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.4.i.i, i64 %index ; 2 uses
  %next.gep141 = getelementptr i8, ptr %.391.i.i, i64 %index ; 2 uses
  %i.zn = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !33
  %wide.load142 = load <16 x i8>, ptr %i.zn, align 1, !tbaa !33
  %i.zo = getelementptr i8, ptr %next.gep141, i64 16
  store <16 x i8> %wide.load, ptr %next.gep141, align 1, !tbaa !33
  store <16 x i8> %wide.load142, ptr %i.zo, align 1, !tbaa !33
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.zp = icmp eq i64 %index.next, %n.vec
  br i1 %i.zp, label %middle.block, label %vector.body, !llvm.loop !199

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.zg, %n.vec
  br i1 %cmp.n, label %ZSTDv07_execSequence.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.zk, 0
  br i1 %min.epilog.iters.check, label %.lr.ph122.i.i.preheader, label %vec.epilog.ph, !prof !212

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec143 = and i64 %i.zg, -8                   ; 4 uses
  %i.zq = getelementptr i8, ptr %.4.i.i, i64 %n.vec143
  %i.zr = getelementptr i8, ptr %.391.i.i, i64 %n.vec143
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index144 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next148, %vec.epilog.vector.body ] ; 3 uses
  %next.gep145 = getelementptr i8, ptr %.4.i.i, i64 %index144
  %next.gep146 = getelementptr i8, ptr %.391.i.i, i64 %index144
  %wide.load147 = load <8 x i8>, ptr %next.gep145, align 1, !tbaa !33
  store <8 x i8> %wide.load147, ptr %next.gep146, align 1, !tbaa !33
  %index.next148 = add nuw i64 %index144, 8       ; 2 uses
  %i.zs = icmp eq i64 %index.next148, %n.vec143
  br i1 %i.zs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !200

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n149 = icmp eq i64 %i.zg, %n.vec143
  br i1 %cmp.n149, label %ZSTDv07_execSequence.exit.i, label %.lr.ph122.i.i.preheader

.lr.ph122.i.i.preheader:                          ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.5121.i.i.ph = phi ptr [ %.4.i.i, %iter.check ], [ %.4.i.i, %vector.memcheck ], [ %i.zl, %vec.epilog.iter.check ], [ %i.zq, %vec.epilog.middle.block ]
  %.492120.i.i.ph = phi ptr [ %.391.i.i, %iter.check ], [ %.391.i.i, %vector.memcheck ], [ %i.zm, %vec.epilog.iter.check ], [ %i.zr, %vec.epilog.middle.block ]
  br label %.lr.ph122.i.i

.lr.ph122.i.i:                                    ; preds = %.lr.ph122.i.i.preheader, %.lr.ph122.i.i
  %.5121.i.i = phi ptr [ %i.zt, %.lr.ph122.i.i ], [ %.5121.i.i.ph, %.lr.ph122.i.i.preheader ] ; 2 uses
  %.492120.i.i = phi ptr [ %i.zv, %.lr.ph122.i.i ], [ %.492120.i.i.ph, %.lr.ph122.i.i.preheader ] ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %.5121.i.i, i64 1
  %i.zu = load i8, ptr %.5121.i.i, align 1, !tbaa !33
  %i.zv = getelementptr inbounds nuw i8, ptr %.492120.i.i, i64 1 ; 2 uses
  store i8 %i.zu, ptr %.492120.i.i, align 1, !tbaa !33
  %i.zw = icmp ult ptr %i.zv, %i.uu
  br i1 %i.zw, label %.lr.ph122.i.i, label %ZSTDv07_execSequence.exit.i, !llvm.loop !201

bb.co:                                            ; preds = %bb.cl
  %i.zx = getelementptr i8, ptr %.290.i.i, i64 %i.xg
  %i.zy = tail call i64 @llvm.umax.i64(i64 %i.rl, i64 %i.wa) ; 3 uses
  %i.zz = add i64 %i.sa, %i.os
  %i.aaa = add i64 %i.rl, %i.wa
  %i.aab = add i64 %i.zz, %i.aaa
  %i.aac = add i64 %i.aab, %i.rp
  %i.aad = sub i64 %i.aac, %i.rl
  %.reass = add i64 %i.zy, %invariant.op.a
  %i.aae = tail call i64 @llvm.umax.i64(i64 %i.aad, i64 %.reass)
  %i.aaf = add i64 %i.aae, -9
  %i.aag = add i64 %i.zy, %i.os
  %i.aah = sub i64 %i.aaf, %i.aag                 ; 2 uses
  %i.aai = lshr i64 %i.aah, 3
  %i.aaj = add nuw nsw i64 %i.aai, 1              ; 2 uses
  %min.iters.check176 = icmp ult i64 %i.aah, 56
  br i1 %min.iters.check176, label %scalar.ph175.preheader, label %vector.memcheck177

vector.memcheck177:                               ; preds = %bb.co
  %i.aak = add i64 %i.zy, %i.os
  %i.aal = sub i64 %.3.i.i155, %i.aak
  %diff.check178 = icmp ugt i64 %i.aal, -32
  br i1 %diff.check178, label %scalar.ph175.preheader, label %vector.ph179

vector.ph179:                                     ; preds = %vector.memcheck177
  %n.vec180 = and i64 %i.aaj, 4611686018427387900 ; 3 uses
  %i.aam = shl i64 %n.vec180, 3                   ; 2 uses
  %i.aan = getelementptr i8, ptr %i.yd, i64 %i.aam
  %i.aao = getelementptr i8, ptr %i.yc, i64 %i.aam
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph179
  %index182 = phi i64 [ 0, %vector.ph179 ], [ %index.next187, %vector.body181 ] ; 2 uses
  %i.aap = shl i64 %index182, 3                   ; 2 uses
  %next.gep183 = getelementptr i8, ptr %i.yd, i64 %i.aap ; 2 uses
  %next.gep184 = getelementptr i8, ptr %i.yc, i64 %i.aap ; 2 uses
  %i.aaq = getelementptr i8, ptr %next.gep183, i64 16
  %wide.load185 = load <2 x i64>, ptr %next.gep183, align 1
  %wide.load186 = load <2 x i64>, ptr %i.aaq, align 1
  %i.aar = getelementptr i8, ptr %next.gep184, i64 16
  store <2 x i64> %wide.load185, ptr %next.gep184, align 1
  store <2 x i64> %wide.load186, ptr %i.aar, align 1
  %index.next187 = add nuw i64 %index182, 4       ; 2 uses
  %i.aas = icmp eq i64 %index.next187, %n.vec180
  br i1 %i.aas, label %middle.block188, label %vector.body181, !llvm.loop !202

middle.block188:                                  ; preds = %vector.body181
  %cmp.n189 = icmp eq i64 %i.aaj, %n.vec180
  br i1 %cmp.n189, label %ZSTDv07_execSequence.exit.i, label %scalar.ph175.preheader

scalar.ph175.preheader:                           ; preds = %vector.memcheck177, %bb.co, %middle.block188
  %.09.i109.i.i.ph = phi ptr [ %i.yd, %vector.memcheck177 ], [ %i.yd, %bb.co ], [ %i.aan, %middle.block188 ]
  %.0.i110.i.i.ph = phi ptr [ %i.yc, %vector.memcheck177 ], [ %i.yc, %bb.co ], [ %i.aao, %middle.block188 ]
  br label %scalar.ph175

scalar.ph175:                                     ; preds = %scalar.ph175.preheader, %scalar.ph175
  %.09.i109.i.i = phi ptr [ %i.aau, %scalar.ph175 ], [ %.09.i109.i.i.ph, %scalar.ph175.preheader ] ; 2 uses
  %.0.i110.i.i = phi ptr [ %i.aat, %scalar.ph175 ], [ %.0.i110.i.i.ph, %scalar.ph175.preheader ] ; 2 uses
  %.09.val.i111.i.i = load i64, ptr %.09.i109.i.i, align 1
  store i64 %.09.val.i111.i.i, ptr %.0.i110.i.i, align 1
  %i.aat = getelementptr inbounds nuw i8, ptr %.0.i110.i.i, i64 8 ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %.09.i109.i.i, i64 8
  %i.aav = icmp ult ptr %i.aat, %i.zx
  br i1 %i.aav, label %scalar.ph175, label %ZSTDv07_execSequence.exit.i, !llvm.loop !203

ZSTDv07_execSequence.exit.i:                      ; preds = %.lr.ph.i.i, %scalar.ph175, %.lr.ph122.i.i, %middle.block210, %vec.epilog.middle.block225, %middle.block188, %middle.block, %vec.epilog.middle.block, %bb.cn, %.preheader.i.i, %bb.ch
  %i.aaw = icmp ult i64 %i.ut, -119
  br i1 %i.aaw, label %bb.bn, label %.thread166.i, !llvm.loop !204

.thread166.i:                                     ; preds = %ZSTDv07_execSequence.exit.i, %bb.cf, %bb.ce, %ZSTDv07_decodeSequence.exit.i, %BITv07_reloadDStream.exit.thread.i, %BITv07_initDStream.exit.i, %bb.az, %bb.ar, %bb.ap
  %.485.ph.i = phi i64 [ -20, %BITv07_reloadDStream.exit.thread.i ], [ -20, %bb.ap ], [ -20, %bb.az ], [ -20, %bb.ar ], [ -20, %BITv07_initDStream.exit.i ], [ %i.ut, %ZSTDv07_execSequence.exit.i ], [ -70, %ZSTDv07_decodeSequence.exit.i ], [ -20, %bb.cf ], [ -20, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %ZSTDv07_decompressSequences.exit

.thread.i23:                                      ; preds = %.preheader.i, %bb.ao, %bb.ad
  %.2.i = phi ptr [ %i.fv, %bb.ao ], [ %.0134.i, %.preheader.i ], [ %i.fv, %bb.ad ] ; 3 uses
  %.378.i = phi ptr [ %1, %bb.ao ], [ %.075.i, %.preheader.i ], [ %1, %bb.ad ] ; 3 uses
  %i.aax = ptrtoint ptr %i.ga to i64
  %i.aay = ptrtoint ptr %.2.i to i64
  %i.aaz = sub i64 %i.aax, %i.aay                 ; 3 uses
  %i.aba = ptrtoint ptr %i.fz to i64
  %i.abb = ptrtoint ptr %.378.i to i64            ; 2 uses
  %i.abc = sub i64 %i.aba, %i.abb
  %.not93.i = icmp ugt i64 %i.aaz, %i.abc
  br i1 %.not93.i, label %ZSTDv07_decompressSequences.exit, label %bb.cp

bb.cp:                                            ; preds = %.thread.i23
  %.not92.i = icmp eq ptr %i.ga, %.2.i
  br i1 %.not92.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.378.i, ptr align 1 %.2.i, i64 %i.aaz, i1 false)
  %i.abd = getelementptr inbounds nuw i8, ptr %.378.i, i64 %i.aaz
  %.pre.i = ptrtoint ptr %i.abd to i64
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.pre-phi.i = phi i64 [ %i.abb, %bb.cp ], [ %.pre.i, %bb.cq ]
  %i.abe = ptrtoint ptr %1 to i64
  %i.abf = sub i64 %.pre-phi.i, %i.abe
  br label %ZSTDv07_decompressSequences.exit

ZSTDv07_decompressSequences.exit:                 ; preds = %.thread.i, %bb.o, %bb.ab, %bb.m, %bb.l, %HUFv07_decompress1X4_usingDTable.exit.i, %bb.g, %bb.f, %bb.d, %bb.n, %bb.j, %bb.b, %bb.v, %bb.cr, %.thread.i23, %.thread166.i, %ZSTDv07_decodeSeqHeaders.exit.i, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.ai, %bb.ag, %bb.ac, %bb.a
  %.1 = phi i64 [ -20, %bb.am ], [ -72, %bb.a ], [ %i.abf, %bb.cr ], [ -70, %.thread.i23 ], [ %.485.ph.i, %.thread166.i ], [ %i.id, %ZSTDv07_decodeSeqHeaders.exit.i ], [ -20, %bb.al ], [ -72, %bb.ag ], [ -72, %bb.ai ], [ -72, %bb.ak ], [ -20, %bb.an ], [ -72, %bb.ac ], [ -20, %.thread.i ], [ -20, %bb.o ], [ -20, %bb.ab ], [ -30, %bb.m ], [ -20, %bb.l ], [ -20, %HUFv07_decompress1X4_usingDTable.exit.i ], [ -20, %bb.g ], [ -20, %bb.f ], [ -20, %bb.d ], [ -20, %bb.n ], [ -20, %bb.j ], [ -20, %bb.b ], [ -20, %bb.v ]
  ret i64 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i64 @ZSTDv07_insertBlock(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef returned %2) local_unnamed_addr #12 !guid !213 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 21520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 3 uses
  %.not.i = icmp eq ptr %1, %i.b
  br i1 %.not.i, label %ZSTDv07_checkContinuity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 21544
  store ptr %i.b, ptr %i.c, align 8, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 21528 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !78
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64
  %.neg.i = sub i64 %i.g, %i.f
  %i.h = getelementptr inbounds i8, ptr %1, i64 %.neg.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 21536
  store ptr %i.h, ptr %i.i, align 8, !tbaa !79
  store ptr %1, ptr %i.d, align 8, !tbaa !78
  br label %ZSTDv07_checkContinuity.exit

ZSTDv07_checkContinuity.exit:                     ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store ptr %i.j, ptr %i.a, align 8, !tbaa !76
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define i64 @ZSTDv07_decompress_usingDict(ptr noundef initializes((5132, 5136), (21520, 21572), (21604, 21616), (21712, 21716)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #1 !guid !214 {
bb.a:
  %i.a = tail call i64 @ZSTDv07_decompressBegin_usingDict(ptr noundef %0, ptr noundef %5, i64 noundef %6) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 21520 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76   ; 3 uses
  %.not.i = icmp eq ptr %1, %i.c
  br i1 %.not.i, label %ZSTDv07_checkContinuity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 21544
  store ptr %i.c, ptr %i.d, align 8, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 21528 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !78
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.f to i64
  %.neg.i = sub i64 %i.h, %i.g
  %i.i = getelementptr inbounds i8, ptr %1, i64 %.neg.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 21536
  store ptr %i.i, ptr %i.j, align 8, !tbaa !79
  store ptr %1, ptr %i.e, align 8, !tbaa !78
  store ptr %1, ptr %i.b, align 8, !tbaa !76
  br label %ZSTDv07_checkContinuity.exit

ZSTDv07_checkContinuity.exit:                     ; preds = %bb.a, %bb.b
  %i.k = tail call fastcc i64 @ZSTDv07_decompressFrame(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  ret i64 %i.k
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i64 -30, 1) i64 @ZSTDv07_decompressBegin_usingDict(ptr nofree noundef captures(none) initializes((5132, 5136), (21520, 21572), (21604, 21616), (21712, 21716)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 !guid !215 {
bb.a:
  %i.a = alloca [256 x i16], align 16             ; 7 uses
  %i.b = alloca [29 x i16], align 16              ; 8 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca [53 x i16], align 16              ; 5 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca [36 x i16], align 16              ; 5 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 21552
  store i64 5, ptr %i.k, align 8, !tbaa !64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 21604
  store i32 0, ptr %i.l, align 4, !tbaa !65
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 21520 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5132 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  store i32 201326604, ptr %i.n, align 4, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 21612 ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !66
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 21608 ; 2 uses
  store i32 0, ptr %i.p, align 8, !tbaa !67
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 21712 ; 2 uses
  store i32 0, ptr %i.q, align 8, !tbaa !68
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 21560 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.r, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false), !tbaa !29
  %i.s = icmp ne ptr %1, null
  %i.t = icmp ne i64 %2, 0
  %or.cond = and i1 %i.s, %i.t
  br i1 %or.cond, label %bb.b, label %ZSTDv07_decompress_insertDictionary.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.u = icmp ult i64 %2, 8
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 21528
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 21536
  store ptr %1, ptr %i.w, align 8, !tbaa !79
  store ptr %1, ptr %i.v, align 8, !tbaa !78
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store ptr %i.x, ptr %i.m, align 8, !tbaa !76
end_hunk_1
