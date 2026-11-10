Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SLPVectorizer?download=true
inline.NumInlined: 69834
inline.NumDeleted: 26527
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 296
loop-unroll.NumUnrolled: 332
begin_hunk_0_@_ZN4llvm13slpvectorizer7BoUpSLP12getEntryCostEPKNS1_9TreeEntryENS_8ArrayRefIPNS_5ValueEEERNS_15SmallPtrSetImplIS7_EE:bb.a
  %i.oa = icmp ugt i32 %i.nu, 447
  br i1 %i.oa, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i.loopexit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i

_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i.loopexit: ; preds = %bb.aq
  store i32 0, ptr %i.ny, align 8, !tbaa !371
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.nt, ptr noundef nonnull %i.nx, i64 noundef %i.nw, i64 noundef 8) #31
  %i.ob = load ptr, ptr %i.nt, align 8, !tbaa !359
  br label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i.sink.split

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i:      ; preds = %bb.aq
  %.not.i.i.i455 = icmp eq i32 %i.nv, 0
  br i1 %.not.i.i.i455, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i.sink.split

_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i.sink.split: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i, %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i.loopexit
  %.sink1165 = phi ptr [ %i.ob, %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i.loopexit ], [ %i.nx, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.nw, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.sink1165, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !581
  br label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i

_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i:     ; preds = %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i.sink.split, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i.i
  store i32 %i.nv, ptr %i.ny, align 8, !tbaa !371
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nt, i64 64
  store i32 %.pre1067, ptr %i.oc, align 8, !tbaa !631
  %i.od = ptrtoint ptr %i.nt to i64
  br label %_ZN4llvm14SmallBitVectorC2Ejb.exit

_ZN4llvm14SmallBitVectorC2Ejb.exit:               ; preds = %._crit_edge.thread, %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i
  %i.oe = phi i32 [ %.pre1067, %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i ], [ %i.np, %._crit_edge.thread ] ; 3 uses
  %storemerge.i = phi i64 [ %i.od, %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.i ], [ %i.ns, %._crit_edge.thread ] ; 2 uses
  %.not1029 = icmp eq i32 %i.oe, 0
  br i1 %.not1029, label %._crit_edge978, label %.lr.ph977

.lr.ph977:                                        ; preds = %_ZN4llvm14SmallBitVectorC2Ejb.exit
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 376
  %wide.trip.count = zext i32 %i.oe to i64
  br label %bb.aw

.lr.ph:                                           ; preds = %bb.ap, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit
  %.sroa.7847.0974 = phi i32 [ %i.os, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit ], [ 0, %bb.ap ] ; 3 uses
  %.sroa.0844.0973 = phi ptr [ %i.ot, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit ], [ %i.nl, %bb.ap ] ; 2 uses
  %i.ok = call noundef zeroext i1 @_ZN4llvm9SetVectorIPNS_5ValueENS_11SmallVectorIS2_Lj16EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj16EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(168) %14, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0844.0973)
  br i1 %i.ok, label %bb.ar, label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit

bb.ar:                                            ; preds = %.lr.ph
  %i.ol = load i32, ptr %i.nj, align 8, !tbaa !371 ; 2 uses
  %i.om = load i32, ptr %i.nk, align 4, !tbaa !372
  %.not.i456 = icmp ult i32 %i.ol, %i.om
  br i1 %.not.i456, label %bb.at, label %bb.as, !prof !548

bb.as:                                            ; preds = %bb.ar
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %15, i32 noundef %.sroa.7847.0974)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit

bb.at:                                            ; preds = %bb.ar
  %i.on = zext i32 %i.ol to i64
  %i.oo = load ptr, ptr %15, align 8, !tbaa !359
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %i.on
  store i32 %.sroa.7847.0974, ptr %i.op, align 1
  %i.oq = load i32, ptr %i.nj, align 8, !tbaa !371
  %i.or = add i32 %i.oq, 1
  store i32 %i.or, ptr %i.nj, align 8, !tbaa !371
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit: ; preds = %bb.at, %bb.as, %.lr.ph
  %i.os = add i32 %.sroa.7847.0974, 1
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.0844.0973, i64 8 ; 2 uses
  %.not944 = icmp eq ptr %i.ot, %i.nn
  br i1 %.not944, label %._crit_edge, label %.lr.ph

._crit_edge978:                                   ; preds = %_ZN4llvm14SmallBitVector3setEj.exit, %_ZN4llvm14SmallBitVectorC2Ejb.exit
  %.sroa.0836.0.lcssa = phi i64 [ %storemerge.i, %_ZN4llvm14SmallBitVectorC2Ejb.exit ], [ %.sroa.0836.1, %_ZN4llvm14SmallBitVector3setEj.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  %i.ou = load ptr, ptr %i.h, align 8, !tbaa !383
  store ptr %i.ou, ptr %16, align 8, !tbaa !1362
  %i.ov = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %i.oe, ptr %i.ov, align 8, !tbaa !1363
  %i.ow = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ox = trunc i64 %.sroa.0836.0.lcssa to i1     ; 2 uses
  br i1 %i.ox, label %_ZN4llvm14SmallBitVectorC2ERKS0_.exit, label %bb.au

bb.au:                                            ; preds = %._crit_edge978
  %i.oy = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #33 ; 9 uses
  %i.oz = inttoptr i64 %.sroa.0836.0.lcssa to ptr ; 4 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oy, i64 16 ; 3 uses
  store ptr %i.pa, ptr %i.oy, align 8, !tbaa !359
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oy, i64 8 ; 2 uses
  store i32 0, ptr %i.pb, align 8, !tbaa !371
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oy, i64 12
  store i32 6, ptr %i.pc, align 4, !tbaa !372
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oz, i64 8 ; 2 uses
  %i.pe = load i32, ptr %i.pd, align 8, !tbaa !371 ; 5 uses
  %.not.i.i.i.i457 = icmp eq i32 %i.pe, 0
  %i.pf = icmp eq ptr %i.oy, %i.oz
  %or.cond.i.i.i = or i1 %i.pf, %.not.i.i.i.i457
  br i1 %or.cond.i.i.i, label %_ZN4llvm9BitVectorC2ERKS0_.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.pg = icmp ugt i32 %i.pe, 6
  br i1 %i.pg, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i:       ; preds = %bb.av
  %i.ph = zext i32 %i.pe to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %i.oy, ptr noundef nonnull %i.pa, i64 noundef %i.ph, i64 noundef 8) #31
  %.pre.i.i.i = load i32, ptr %i.pd, align 8, !tbaa !371 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.pre.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.sink.split.i.i.i.i, label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.oy, align 8, !tbaa !359
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i

_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i: ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i, %bb.av
  %i.pi = phi ptr [ %.pre.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i ], [ %i.pa, %bb.av ]
  %i.pj = phi i32 [ %.pre.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i ], [ %i.pe, %bb.av ]
  %i.pk = zext i32 %i.pj to i64
  %i.pl = load ptr, ptr %i.oz, align 8, !tbaa !359
  %gepdiff.i.i.i.i = shl nuw nsw i64 %i.pk, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pi, ptr align 8 %i.pl, i64 %gepdiff.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.thread.i.i.i, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit30.i.i.i.i
  store i32 %i.pe, ptr %i.pb, align 8, !tbaa !371
  br label %_ZN4llvm9BitVectorC2ERKS0_.exit.i

_ZN4llvm9BitVectorC2ERKS0_.exit.i:                ; preds = %.sink.split.i.i.i.i, %bb.au
  %i.pm = getelementptr inbounds nuw i8, ptr %i.oy, i64 64
  %i.pn = getelementptr inbounds nuw i8, ptr %i.oz, i64 64
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !631
  store i32 %i.po, ptr %i.pm, align 8, !tbaa !631
  %i.pp = ptrtoint ptr %i.oy to i64
  br label %_ZN4llvm14SmallBitVectorC2ERKS0_.exit

_ZN4llvm14SmallBitVectorC2ERKS0_.exit:            ; preds = %._crit_edge978, %_ZN4llvm9BitVectorC2ERKS0_.exit.i
  %storemerge.i458 = phi i64 [ %i.pp, %_ZN4llvm9BitVectorC2ERKS0_.exit.i ], [ %.sroa.0836.0.lcssa, %._crit_edge978 ] ; 4 uses
  store i64 %storemerge.i458, ptr %i.ow, align 8, !tbaa !624
  %i.pq = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i64 %.sroa.0863.0, ptr %i.pq, align 8, !tbaa !581
  %.sroa.9.0..sroa_idx868 = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i32 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx868, align 8, !tbaa !844
  %i.pr = getelementptr inbounds nuw i8, ptr %16, i64 40
  store ptr %.lcssa.sink.i.i, ptr %i.pr, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 48
  store ptr %.sink.i.i, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 56
  store ptr %i.bl, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13915.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 64
  store ptr %i.bn, ptr %.sroa.13915.0..sroa_idx, align 8
  %i.ps = getelementptr inbounds nuw i8, ptr %16, i64 72
  store ptr %0, ptr %i.ps, align 8, !tbaa !1364
  %i.pt = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.pu = load ptr, ptr %i.a, align 8, !tbaa !575 ; 12 uses
  store ptr %i.pu, ptr %i.pt, align 8, !tbaa !1365
  %i.pv = getelementptr inbounds nuw i8, ptr %16, i64 88
  %i.pw = load ptr, ptr %i.b, align 8, !tbaa !653
  store ptr %i.pw, ptr %i.pv, align 8, !tbaa !1366
  %i.px = getelementptr inbounds nuw i8, ptr %16, i64 96
  store ptr %0, ptr %i.px, align 8, !tbaa !1060
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 104
  store ptr %i.a, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !1219
  %i.py = getelementptr inbounds nuw i8, ptr %16, i64 112
  %i.pz = load ptr, ptr %i.e, align 8, !tbaa !653 ; 4 uses
  store ptr %i.pz, ptr %i.py, align 8, !tbaa !1367
  %i.qa = getelementptr inbounds nuw i8, ptr %16, i64 120
  %i.qb = load i32, ptr %i.c, align 4, !tbaa !1358 ; 4 uses
  store i32 %i.qb, ptr %i.qa, align 8, !tbaa !1368
  %i.qc = getelementptr inbounds nuw i8, ptr %16, i64 128
  store i64 %.fca.0.extract365, ptr %i.qc, align 8, !tbaa !581
  %.sroa.9889.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 136
  store i32 %.fca.1.extract366, ptr %.sroa.9889.0..sroa_idx, align 8, !tbaa !844
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  store ptr %0, ptr %17, align 8, !tbaa !1370
  %i.qd = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.pu, ptr %i.qd, align 8, !tbaa !1371
  %i.qe = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i32 %i.qb, ptr %i.qe, align 8, !tbaa !1372
  %i.qf = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.qg = load ptr, ptr %i.d, align 8, !tbaa !653 ; 2 uses
  store ptr %i.qg, ptr %i.qf, align 8, !tbaa !1373
  %i.qh = getelementptr inbounds nuw i8, ptr %17, i64 32
  store ptr %i.pz, ptr %i.qh, align 8, !tbaa !1374
  %i.qi = getelementptr inbounds nuw i8, ptr %17, i64 40
  store i64 %.fca.0.extract365, ptr %i.qi, align 8, !tbaa !581
  %.sroa.9889.0..sroa_idx890 = getelementptr inbounds nuw i8, ptr %17, i64 48
  store i32 %.fca.1.extract366, ptr %.sroa.9889.0..sroa_idx890, align 8, !tbaa !844
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31
  store ptr %8, ptr %18, align 8, !tbaa !799
  %i.qj = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %0, ptr %i.qj, align 8, !tbaa !1376
  %i.qk = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.c, ptr %i.qk, align 8, !tbaa !874
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #31
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 4832 ; 8 uses
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !584 ; 10 uses
  store ptr %i.qm, ptr %19, align 8, !tbaa !793
  %i.qn = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %0, ptr %i.qn, align 8, !tbaa !1378
  %i.qo = load i32, ptr %i.i, align 4, !tbaa !380 ; 2 uses
  switch i32 %i.qo, label %bb.fr [
    i32 57, label %bb.be
    i32 69, label %bb.fs
    i32 65, label %bb.fm
    i32 67, label %bb.bu
    i32 64, label %bb.bu
    i32 40, label %bb.do
    i32 41, label %bb.do
    i32 42, label %bb.do
    i32 43, label %bb.do
    i32 47, label %bb.do
    i32 48, label %bb.do
    i32 50, label %bb.do
    i32 45, label %bb.do
    i32 44, label %bb.do
    i32 39, label %bb.do
    i32 46, label %bb.do
    i32 51, label %bb.do
    i32 56, label %bb.ei
    i32 55, label %bb.ei
    i32 59, label %bb.ej
    i32 71, label %bb.en
    i32 72, label %bb.eo
    i32 73, label %bb.ep
    i32 74, label %bb.ep
    i32 75, label %bb.eq
    i32 76, label %bb.eq
    i32 77, label %bb.er
    i32 13, label %bb.es
    i32 14, label %bb.es
    i32 15, label %bb.es
    i32 16, label %bb.es
    i32 17, label %bb.es
    i32 18, label %bb.es
    i32 19, label %bb.es
    i32 20, label %bb.es
    i32 21, label %bb.es
    i32 22, label %bb.es
    i32 23, label %bb.es
    i32 24, label %bb.es
    i32 25, label %bb.es
    i32 26, label %bb.es
    i32 27, label %bb.es
    i32 28, label %bb.es
    i32 29, label %bb.es
    i32 30, label %bb.es
    i32 31, label %bb.es
    i32 35, label %bb.et
    i32 33, label %bb.eu
    i32 34, label %bb.ey
    i32 58, label %bb.fl
    i32 66, label %bb.bq
    i32 63, label %bb.br
  ]

bb.aw:                                            ; preds = %.lr.ph977, %_ZN4llvm14SmallBitVector3setEj.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph977 ], [ %indvars.iv.next, %_ZN4llvm14SmallBitVector3setEj.exit ] ; 6 uses
  %.sroa.0836.0975 = phi i64 [ %storemerge.i, %.lr.ph977 ], [ %.sroa.0836.1, %_ZN4llvm14SmallBitVector3setEj.exit ] ; 7 uses
  %i.qp = load ptr, ptr %i.ne, align 8, !tbaa !359
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.qp, i64 %indvars.iv
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !579 ; 5 uses
  %i.qs = load i8, ptr %i.qr, align 8, !tbaa !391
  %i.qt = icmp ugt i8 %i.qs, 29
  br i1 %i.qt, label %bb.ax, label %.critedge2

bb.ax:                                            ; preds = %bb.aw
  %i.qu = load ptr, ptr %i.a, align 8, !tbaa !575 ; 3 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 440 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qu, i64 456
  %i.qx = load i8, ptr %i.qw, align 8, !tbaa !367, !range !368, !noundef !369
  %i.qy = trunc nuw i8 %i.qx to i1
  br i1 %i.qy, label %bb.ay, label %_ZNK4llvm13slpvectorizer7BoUpSLP9TreeEntry17isCopyableElementEPNS_5ValueE.exit

bb.ay:                                            ; preds = %bb.ax
  %i.qz = load ptr, ptr %i.qv, align 8, !tbaa !370 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qu, i64 452
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !879 ; 2 uses
  %i.rc = zext i32 %i.rb to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.rc, 3
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qz, i64 %.idx.i.i.i
  %.not17.i.i.i = icmp eq i32 %i.rb, 0
  br i1 %.not17.i.i.i, label %_ZNK4llvm13slpvectorizer7BoUpSLP9TreeEntry17isCopyableElementEPNS_5ValueE.exit.thread, label %.lr.ph.i.i.i

bb.az:                                            ; preds = %.lr.ph.i.i.i
  %i.re = getelementptr inbounds nuw i8, ptr %.01218.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i459 = icmp eq ptr %i.re, %i.rd
  br i1 %.not.i.i.i459, label %_ZNK4llvm13slpvectorizer7BoUpSLP9TreeEntry17isCopyableElementEPNS_5ValueE.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ay, %bb.az
  %.01218.i.i.i = phi ptr [ %i.re, %bb.az ], [ %i.qz, %bb.ay ] ; 2 uses
  %i.rf = load ptr, ptr %.01218.i.i.i, align 8, !tbaa !874
  %.not15.i.i.i = icmp eq ptr %i.rf, %i.qr
  br i1 %.not15.i.i.i, label %.critedge2, label %bb.az

_ZNK4llvm13slpvectorizer7BoUpSLP9TreeEntry17isCopyableElementEPNS_5ValueE.exit: ; preds = %bb.ax
  %i.rg = call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.qv, ptr noundef nonnull %i.qr) #31
  %.not961 = icmp eq ptr %i.rg, null
  br i1 %.not961, label %_ZNK4llvm13slpvectorizer7BoUpSLP9TreeEntry17isCopyableElementEPNS_5ValueE.exit._ZNK4llvm13slpvectorizer7BoUpSLP9TreeEntry17isCopyableElementEPNS_5ValueE.exit.thread_crit_edge, label %.critedge2

_ZNK4llvm13slpvectorizer7BoUpSLP9TreeEntry17isCopyableElementEPNS_5ValueE.exit._ZNK4llvm13slpvectorizer7BoUpSLP9TreeEntry17isCopyableElementEPNS_5ValueE.exit.thread_crit_edge: ; preds = %_ZNK4llvm13slpvectorizer7BoUpSLP9TreeEntry17isCopyableElementEPNS_5ValueE.exit
  %.pre1068 = load ptr, ptr %i.ne, align 8, !tbaa !359
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre1068, i64 %indvars.iv
  %.pre1069 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !579
  br label %_ZNK4llvm13slpvectorizer7BoUpSLP9TreeEntry17isCopyableElementEPNS_5ValueE.exit.thread

_ZNK4llvm13slpvectorizer7BoUpSLP9TreeEntry17isCopyableElementEPNS_5ValueE.exit.thread: ; preds = %bb.az, %_ZNK4llvm13slpvectorizer7BoUpSLP9TreeEntry17isCopyableElementEPNS_5ValueE.exit._ZNK4llvm13slpvectorizer7BoUpSLP9TreeEntry17isCopyableElementEPNS_5ValueE.exit.thread_crit_edge, %bb.ay
  %i.rh = phi ptr [ %.pre1069, %_ZNK4llvm13slpvectorizer7BoUpSLP9TreeEntry17isCopyableElementEPNS_5ValueE.exit._ZNK4llvm13slpvectorizer7BoUpSLP9TreeEntry17isCopyableElementEPNS_5ValueE.exit.thread_crit_edge ], [ %i.qr, %bb.ay ], [ %i.qr, %bb.az ] ; 2 uses
  %i.ri = load i32, ptr %i.of, align 8, !noalias !5409
  %i.rj = and i32 %i.ri, 1
  %.not.i.i.i.i.i.i = icmp eq i32 %i.rj, 0        ; 3 uses
  %i.rk = load ptr, ptr %i.og, align 8, !noalias !5409
  %i.rl = load ptr, ptr %i.oh, align 8, !noalias !5409
  %i.rm = load i32, ptr %i.oi, align 8, !noalias !5409
  %.sink2.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr %i.rk, ptr %i.og ; 3 uses
  %.sink1.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr %i.rl, ptr %i.oj ; 2 uses
  %.sink.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i32 %i.rm, i32 4 ; 4 uses
  %i.rn = icmp eq i32 %.sink.i.i.i.i.i.i, 0
  br i1 %i.rn, label %.loopexit.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %_ZNK4llvm13slpvectorizer7BoUpSLP9TreeEntry17isCopyableElementEPNS_5ValueE.exit.thread
  %i.ro = add i32 %.sink.i.i.i.i.i.i, -1          ; 2 uses
  %i.rp = ptrtoint ptr %i.rh to i64
  %i.rq = mul i64 %i.rp, -4658895280553007687     ; 2 uses
  %i.rr = lshr i64 %i.rq, 31
  %i.rs = xor i64 %i.rr, %i.rq
  %i.rt = trunc i64 %i.rs to i32
  %i.ru = and i32 %i.ro, %i.rt                    ; 3 uses
  %i.rv = zext i32 %i.ru to i64                   ; 2 uses
  %i.rw = lshr i64 %i.rv, 5
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i, i64 %i.rw
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !380, !noalias !5410
  %i.rz = and i32 %i.ru, 31
  %i.sa = lshr i32 %i.ry, %i.rz
  %i.sb = trunc i32 %i.sa to i1
  br i1 %i.sb, label %.lr.ph.i.i.i.i462, label %.loopexit.i.i.i, !prof !547

.lr.ph.i.i.i.i462:                                ; preds = %bb.ba, %bb.bb
  %i.sc = phi i64 [ %i.si, %bb.bb ], [ %i.rv, %bb.ba ]
  %.017.i.i.i.i463 = phi i32 [ %i.sh, %bb.bb ], [ %i.ru, %bb.ba ]
  %i.sd = getelementptr inbounds nuw [72 x i8], ptr %.sink2.i.i.i.i.i.i, i64 %i.sc ; 2 uses
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !579, !noalias !5410
  %i.sf = icmp eq ptr %i.rh, %i.se
  br i1 %i.sf, label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryELj6EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E4findEPKS2_.exit.loopexit.i, label %bb.bb, !prof !548

bb.bb:                                            ; preds = %.lr.ph.i.i.i.i462
  %i.sg = add nuw i32 %.017.i.i.i.i463, 1
  %i.sh = and i32 %i.sg, %i.ro                    ; 3 uses
  %i.si = zext i32 %i.sh to i64                   ; 2 uses
  %i.sj = lshr i64 %i.si, 5
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i.i.i.i, i64 %i.sj
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !380, !noalias !5410
  %i.sm = and i32 %i.sh, 31
  %i.sn = lshr i32 %i.sl, %i.sm
  %i.so = trunc i32 %i.sn to i1
  br i1 %i.so, label %.lr.ph.i.i.i.i462, label %.loopexit.i.i.i, !prof !549

.loopexit.i.i.i:                                  ; preds = %bb.bb, %bb.ba, %_ZNK4llvm13slpvectorizer7BoUpSLP9TreeEntry17isCopyableElementEPNS_5ValueE.exit.thread
  %i.sp = zext i32 %.sink.i.i.i.i.i.i to i64      ; 2 uses
  %i.sq = getelementptr inbounds nuw [72 x i8], ptr %.sink2.i.i.i.i.i.i, i64 %i.sp
  br label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryELj6EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E4findEPKS2_.exit.i

_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryELj6EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E4findEPKS2_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i462
  %.pre.i = zext i32 %.sink.i.i.i.i.i.i to i64
  br label %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryELj6EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E4findEPKS2_.exit.i

_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryELj6EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E4findEPKS2_.exit.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryELj6EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E4findEPKS2_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryELj6EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E4findEPKS2_.exit.loopexit.i ], [ %i.sp, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.sd, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryELj6EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E4findEPKS2_.exit.loopexit.i ], [ %i.sq, %.loopexit.i.i.i ] ; 2 uses
  %i.sr = getelementptr inbounds nuw [72 x i8], ptr %.sink2.i.i.i.i.i.i, i64 %.pre-phi.i
  %i.ss = icmp ne ptr %.lcssa.sink.i.i.i, %i.sr
  call void @llvm.assume(i1 %i.ss)
  %i.st = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !359
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !575
  %i.sw = load ptr, ptr %i.a, align 8, !tbaa !575
  %i.sx = icmp eq ptr %i.sv, %i.sw
  br i1 %i.sx, label %_ZN4llvm14SmallBitVector3setEj.exit, label %.critedge2

.critedge2:                                       ; preds = %.lr.ph.i.i.i, %_ZNK4llvm13slpvectorizer7BoUpSLP9TreeEntry17isCopyableElementEPNS_5ValueE.exit, %bb.aw, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryELj6EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E4findEPKS2_.exit.i
  %i.sy = trunc i64 %.sroa.0836.0975 to i1
  br i1 %i.sy, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.critedge2
  %i.sz = lshr i64 %.sroa.0836.0975, 1
  %i.ta = lshr i64 %.sroa.0836.0975, 58
  %i.tb = shl nsw i64 -1, %i.ta
  %i.tc = xor i64 %i.tb, -1
  %i.td = shl nuw i64 1, %indvars.iv
  %i.te = or i64 %i.td, %i.sz
  %i.tf = and i64 %i.te, %i.tc
  %i.tg = shl nuw i64 %i.tf, 1
  %i.th = and i64 %.sroa.0836.0975, -288230376151711743
  %i.ti = or i64 %i.tg, %i.th
  br label %_ZN4llvm14SmallBitVector3setEj.exit

bb.bd:                                            ; preds = %.critedge2
  %i.tj = inttoptr i64 %.sroa.0836.0975 to ptr
  %i.tk = and i64 %indvars.iv, 63
  %i.tl = shl nuw i64 1, %i.tk
  %i.tm = lshr i64 %indvars.iv, 6
  %i.tn = and i64 %i.tm, 67108863
  %i.to = load ptr, ptr %i.tj, align 8, !tbaa !359
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %i.to, i64 %i.tn ; 2 uses
  %i.tq = load i64, ptr %i.tp, align 8, !tbaa !581
  %i.tr = or i64 %i.tq, %i.tl
  store i64 %i.tr, ptr %i.tp, align 8, !tbaa !581
  br label %_ZN4llvm14SmallBitVector3setEj.exit

_ZN4llvm14SmallBitVector3setEj.exit:              ; preds = %bb.bd, %bb.bc, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryELj6EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E4findEPKS2_.exit.i
  %.sroa.0836.1 = phi i64 [ %.sroa.0836.0975, %_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryELj6EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E4findEPKS2_.exit.i ], [ %i.ti, %bb.bc ], [ %.sroa.0836.0975, %bb.bd ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge978, label %bb.aw, !llvm.loop !5361

bb.be:                                            ; preds = %_ZN4llvm14SmallBitVectorC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #31
  %i.ts = getelementptr inbounds nuw i8, ptr %20, i64 24
  store ptr %i.ts, ptr %20, align 8, !tbaa !370
  %i.tt = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i32 4, ptr %i.tt, align 8, !tbaa !917
  %i.tu = getelementptr inbounds nuw i8, ptr %20, i64 12
  store i32 0, ptr %i.tu, align 4, !tbaa !879
  %i.tv = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  store i8 1, ptr %i.tv, align 8, !tbaa !367
  %i.tw = load ptr, ptr %i.ne, align 8, !tbaa !359 ; 2 uses
  %i.tx = load i32, ptr %i.ng, align 8, !tbaa !371 ; 2 uses
  %i.ty = zext i32 %i.tx to i64
  %.idx1035 = shl nuw nsw i64 %i.ty, 3
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tw, i64 %.idx1035
  %.not4221022 = icmp eq i32 %i.tx, 0
  br i1 %.not4221022, label %._crit_edge1027.thread, label %.lr.ph1026

._crit_edge1027.thread:                           ; preds = %bb.be
  %i.ua = icmp eq i32 %.fca.1.extract366, 1
  %spec.select.i4741149 = select i1 %i.ua, i32 1, i32 %.sroa.9.0
  %.0.i.i4751150 = call i64 @llvm.sadd.sat.i64(i64 %.sroa.0863.0, i64 %.fca.0.extract365)
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit

.lr.ph1026:                                       ; preds = %bb.be
  %i.ub = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %21, i64 12
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.uf = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ug = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.uh = getelementptr inbounds nuw i8, ptr %22, i64 16
  br label %bb.bg

._crit_edge1027:                                  ; preds = %bb.bp
  %.pre1075 = load i8, ptr %i.tv, align 8, !tbaa !367, !range !368
  %i.ui = call i64 @llvm.ssub.sat.i64(i64 %.sroa.0863.0, i64 %.sroa.0830.2)
  %i.uj = trunc nuw i8 %.pre1075 to i1
  %i.uk = icmp eq i32 %.fca.1.extract366, 1
end_hunk_0
begin_hunk_1_@_ZN4llvm13slpvectorizer7BoUpSLP12getEntryCostEPKNS1_9TreeEntryENS_8ArrayRefIPNS_5ValueEEERNS_15SmallPtrSetImplIS7_EE:bb.a

_ZN4llvm11SmallVectorIPNS_5ValueELj8EEC2EmRKS2_.exit: ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj8EEC2EmRKS2_.exit.sink.split, %_ZSt6fill_nIPPN4llvm5ValueEmS2_ET_S4_T0_RKT1_.exit.i.i
  %i.uu = phi ptr [ %i.ub, %_ZSt6fill_nIPPN4llvm5ValueEmS2_ET_S4_T0_RKT1_.exit.i.i ], [ %.sink1167, %_ZN4llvm11SmallVectorIPNS_5ValueELj8EEC2EmRKS2_.exit.sink.split ] ; 10 uses
  store i32 %i.uq, ptr %i.uc, align 8, !tbaa !371
  %i.uv = load i32, ptr %i.uo, align 4
  %i.uw = and i32 %i.uv, 268435455                ; 3 uses
  %.not1036 = icmp eq i32 %i.uw, 0
  br i1 %.not1036, label %._crit_edge1021, label %.lr.ph1020

.lr.ph1020:                                       ; preds = %_ZN4llvm11SmallVectorIPNS_5ValueELj8EEC2EmRKS2_.exit
  %i.ux = getelementptr inbounds i8, ptr %i.um, i64 -8
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !539 ; 11 uses
  %wide.trip.count1062 = zext nneg i32 %i.uw to i64 ; 7 uses
  %min.iters.check1222 = icmp samesign ult i32 %i.uw, 7
  br i1 %min.iters.check1222, label %scalar.ph1221.preheader, label %vector.memcheck1223

scalar.ph1221.preheader:                          ; preds = %vector.body1226, %vector.memcheck1223, %.lr.ph1020
  %indvars.iv1059.ph = phi i64 [ 0, %vector.memcheck1223 ], [ 0, %.lr.ph1020 ], [ %n.vec1225, %vector.body1226 ] ; 4 uses
  %i.uz = sub nsw i64 %wide.trip.count1062, %indvars.iv1059.ph
  %xtraiter1250 = and i64 %i.uz, 3                ; 2 uses
  %lcmp.mod1251.not = icmp eq i64 %xtraiter1250, 0
  br i1 %lcmp.mod1251.not, label %scalar.ph1221.prol.loopexit, label %scalar.ph1221.prol

scalar.ph1221.prol:                               ; preds = %scalar.ph1221.preheader, %scalar.ph1221.prol
  %indvars.iv1059.prol = phi i64 [ %indvars.iv.next1060.prol, %scalar.ph1221.prol ], [ %indvars.iv1059.ph, %scalar.ph1221.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph1221.prol ], [ 0, %scalar.ph1221.preheader ]
  %i.va = getelementptr inbounds nuw [32 x i8], ptr %i.uy, i64 %indvars.iv1059.prol
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !546
  %i.vc = getelementptr inbounds nuw [8 x i8], ptr %i.uu, i64 %indvars.iv1059.prol
  store ptr %i.vb, ptr %i.vc, align 8, !tbaa !579
  %indvars.iv.next1060.prol = add nuw nsw i64 %indvars.iv1059.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1250
  br i1 %prol.iter.cmp.not, label %scalar.ph1221.prol.loopexit, label %scalar.ph1221.prol, !llvm.loop !5362

scalar.ph1221.prol.loopexit:                      ; preds = %scalar.ph1221.prol, %scalar.ph1221.preheader
  %indvars.iv1059.unr = phi i64 [ %indvars.iv1059.ph, %scalar.ph1221.preheader ], [ %indvars.iv.next1060.prol, %scalar.ph1221.prol ]
  %i.vd = sub nsw i64 %indvars.iv1059.ph, %wide.trip.count1062
  %i.ve = icmp ugt i64 %i.vd, -4
  br i1 %i.ve, label %._crit_edge1021, label %scalar.ph1221

vector.memcheck1223:                              ; preds = %.lr.ph1020
  %i.vf = shl nuw nsw i64 %wide.trip.count1062, 3
  %i.vg = getelementptr i8, ptr %i.uu, i64 %i.vf
  %i.vh = shl nuw nsw i64 %wide.trip.count1062, 5
  %i.vi = getelementptr i8, ptr %i.uy, i64 %i.vh
  %i.vj = getelementptr i8, ptr %i.vi, i64 -24
  %bound0 = icmp ult ptr %i.uu, %i.vj
  %bound1 = icmp ult ptr %i.uy, %i.vg
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph1221.preheader, label %vector.ph1224

vector.ph1224:                                    ; preds = %vector.memcheck1223
  %i.vk = and i64 %wide.trip.count1062, 3         ; 2 uses
  %i.vl = icmp eq i64 %i.vk, 0
  %i.vm = select i1 %i.vl, i64 4, i64 %i.vk
  %n.vec1225 = sub nsw i64 %wide.trip.count1062, %i.vm ; 2 uses
  br label %vector.body1226

vector.body1226:                                  ; preds = %vector.body1226, %vector.ph1224
  %index1227 = phi i64 [ 0, %vector.ph1224 ], [ %index.next1228, %vector.body1226 ] ; 6 uses
  %i.vn = getelementptr inbounds nuw [32 x i8], ptr %i.uy, i64 %index1227
  %i.vo = getelementptr inbounds nuw [32 x i8], ptr %i.uy, i64 %index1227
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 32
  %i.vq = getelementptr inbounds nuw [32 x i8], ptr %i.uy, i64 %index1227
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 64
  %i.vs = getelementptr inbounds nuw [32 x i8], ptr %i.uy, i64 %index1227
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 96
  %i.vu = load ptr, ptr %i.vn, align 8, !tbaa !546, !alias.scope !5411
  %i.vv = load ptr, ptr %i.vp, align 8, !tbaa !546, !alias.scope !5411
  %i.vw = insertelement <2 x ptr> poison, ptr %i.vu, i64 0
  %i.vx = insertelement <2 x ptr> %i.vw, ptr %i.vv, i64 1
  %i.vy = load ptr, ptr %i.vr, align 8, !tbaa !546, !alias.scope !5411
  %i.vz = load ptr, ptr %i.vt, align 8, !tbaa !546, !alias.scope !5411
  %i.wa = insertelement <2 x ptr> poison, ptr %i.vy, i64 0
  %i.wb = insertelement <2 x ptr> %i.wa, ptr %i.vz, i64 1
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %i.uu, i64 %index1227 ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 16
  store <2 x ptr> %i.vx, ptr %i.wc, align 8, !tbaa !579, !alias.scope !5412, !noalias !5411
  store <2 x ptr> %i.wb, ptr %i.wd, align 8, !tbaa !579, !alias.scope !5412, !noalias !5411
  %index.next1228 = add nuw i64 %index1227, 4     ; 2 uses
  %i.we = icmp eq i64 %index.next1228, %n.vec1225
  br i1 %i.we, label %scalar.ph1221.preheader, label %vector.body1226, !llvm.loop !5366

._crit_edge1021:                                  ; preds = %scalar.ph1221.prol.loopexit, %scalar.ph1221, %_ZN4llvm11SmallVectorIPNS_5ValueELj8EEC2EmRKS2_.exit
  %i.wf = load ptr, ptr %i.uu, align 8, !tbaa !579
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @_ZNK4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_5ValueENS_11SmallVectorIPNS_13slpvectorizer7BoUpSLP9TreeEntryELj6EEELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EEEES3_S9_SB_SE_E6lookupEPKS2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.600") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %i.ue, ptr noundef %i.wf)
  %i.wg = load ptr, ptr %5, align 8, !tbaa !359   ; 3 uses
  %i.wh = load i32, ptr %i.uf, align 8, !tbaa !371 ; 2 uses
  %i.wi = zext i32 %i.wh to i64
  %.idx.i = shl nuw nsw i64 %i.wi, 3
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wg, i64 %.idx.i
  %.not21.i = icmp eq i32 %i.wh, 0
  br i1 %.not21.i, label %._crit_edge.i, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %._crit_edge1021, %bb.bi
  %.01622.i = phi ptr [ %i.wm, %bb.bi ], [ %i.wg, %._crit_edge1021 ] ; 2 uses
  %i.wk = load ptr, ptr %.01622.i, align 8, !tbaa !575 ; 2 uses
  %i.wl = call noundef zeroext i1 @_ZNK4llvm13slpvectorizer7BoUpSLP9TreeEntry6isSameENS_8ArrayRefIPNS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(608) %i.wk, ptr nonnull %i.uu, i64 %i.ur)
  br i1 %i.wl, label %._crit_edge.i.loopexit, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.split.i
  %i.wm = getelementptr inbounds nuw i8, ptr %.01622.i, i64 8 ; 2 uses
  %.not.i481 = icmp eq ptr %i.wm, %i.wj
  br i1 %.not.i481, label %._crit_edge.i.loopexit, label %.lr.ph.split.i

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.split.i, %bb.bi
  %spec.select.i482.ph = phi ptr [ %i.wk, %.lr.ph.split.i ], [ null, %bb.bi ]
  %.pre1074 = load ptr, ptr %5, align 8, !tbaa !359
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %._crit_edge1021
  %i.wn = phi ptr [ %i.wg, %._crit_edge1021 ], [ %.pre1074, %._crit_edge.i.loopexit ] ; 2 uses
  %spec.select.i482 = phi ptr [ null, %._crit_edge1021 ], [ %spec.select.i482.ph, %._crit_edge.i.loopexit ] ; 4 uses
  %i.wo = icmp eq ptr %i.wn, %i.ug
  br i1 %i.wo, label %_ZNK4llvm13slpvectorizer7BoUpSLP22getSameValuesTreeEntryEPNS_5ValueENS_8ArrayRefIS3_EEb.exit, label %bb.bj

bb.bj:                                            ; preds = %._crit_edge.i
  call void @free(ptr noundef %i.wn) #31
  br label %_ZNK4llvm13slpvectorizer7BoUpSLP22getSameValuesTreeEntryEPNS_5ValueENS_8ArrayRefIS3_EEb.exit

_ZNK4llvm13slpvectorizer7BoUpSLP22getSameValuesTreeEntryEPNS_5ValueENS_8ArrayRefIS3_EEb.exit: ; preds = %._crit_edge.i, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %.not424 = icmp eq ptr %spec.select.i482, null
  br i1 %.not424, label %bb.bn, label %bb.bk

scalar.ph1221:                                    ; preds = %scalar.ph1221.prol.loopexit, %scalar.ph1221
  %indvars.iv1059 = phi i64 [ %indvars.iv.next1060.3, %scalar.ph1221 ], [ %indvars.iv1059.unr, %scalar.ph1221.prol.loopexit ] ; 6 uses
  %i.wp = getelementptr inbounds nuw [32 x i8], ptr %i.uy, i64 %indvars.iv1059
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !546
  %i.wr = getelementptr inbounds nuw [8 x i8], ptr %i.uu, i64 %indvars.iv1059
  store ptr %i.wq, ptr %i.wr, align 8, !tbaa !579
  %indvars.iv.next1060 = add nuw nsw i64 %indvars.iv1059, 1 ; 2 uses
  %i.ws = getelementptr inbounds nuw [32 x i8], ptr %i.uy, i64 %indvars.iv.next1060
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !546
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %i.uu, i64 %indvars.iv.next1060
  store ptr %i.wt, ptr %i.wu, align 8, !tbaa !579
  %indvars.iv.next1060.1 = add nuw nsw i64 %indvars.iv1059, 2 ; 2 uses
  %i.wv = getelementptr inbounds nuw [32 x i8], ptr %i.uy, i64 %indvars.iv.next1060.1
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !546
  %i.wx = getelementptr inbounds nuw [8 x i8], ptr %i.uu, i64 %indvars.iv.next1060.1
  store ptr %i.ww, ptr %i.wx, align 8, !tbaa !579
  %indvars.iv.next1060.2 = add nuw nsw i64 %indvars.iv1059, 3 ; 2 uses
  %i.wy = getelementptr inbounds nuw [32 x i8], ptr %i.uy, i64 %indvars.iv.next1060.2
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !546
  %i.xa = getelementptr inbounds nuw [8 x i8], ptr %i.uu, i64 %indvars.iv.next1060.2
  store ptr %i.wz, ptr %i.xa, align 8, !tbaa !579
  %indvars.iv.next1060.3 = add nuw nsw i64 %indvars.iv1059, 4 ; 2 uses
  %exitcond1063.not.3 = icmp eq i64 %indvars.iv.next1060.3, %wide.trip.count1062
  br i1 %exitcond1063.not.3, label %._crit_edge1021, label %scalar.ph1221, !llvm.loop !5367

bb.bk:                                            ; preds = %_ZNK4llvm13slpvectorizer7BoUpSLP22getSameValuesTreeEntryEPNS_5ValueENS_8ArrayRefIS3_EEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  call void @_ZN4llvm15SmallPtrSetImplIPKNS_13slpvectorizer7BoUpSLP9TreeEntryEE6insertES5_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.603") align 8 %22, ptr noundef nonnull align 8 dereferenceable(17) %20, ptr noundef nonnull %spec.select.i482)
  %i.xb = load i8, ptr %i.uh, align 8, !tbaa !943, !range !368, !noundef !369
  %i.xc = trunc nuw i8 %i.xb to i1
  br i1 %i.xc, label %bb.bl, label %.critedge4

bb.bl:                                            ; preds = %bb.bk
  %i.xd = getelementptr inbounds nuw i8, ptr %spec.select.i482, i64 120
  %i.xe = load i32, ptr %i.xd, align 8, !tbaa !371 ; 2 uses
  %.not.i483 = icmp eq i32 %i.xe, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  br i1 %.not.i483, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.xf = zext i32 %i.xe to i64
  %i.xg = getelementptr inbounds nuw i8, ptr %spec.select.i482, i64 8
  %i.xh = load i32, ptr %i.xg, align 8, !tbaa !371
  %i.xi = zext i32 %i.xh to i64
  %i.xj = sub nsw i64 %i.xf, %i.xi
  %i.xk = shl nsw i64 %i.xj, 2
  %.0.i1.i = call i64 @llvm.sadd.sat.i64(i64 %.sroa.0830.01023, i64 %i.xk)
  br label %bb.bn

.critedge4:                                       ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bl, %bb.bm, %.critedge4, %_ZNK4llvm13slpvectorizer7BoUpSLP22getSameValuesTreeEntryEPNS_5ValueENS_8ArrayRefIS3_EEb.exit
  %.sroa.0830.1 = phi i64 [ %.sroa.0830.01023, %_ZNK4llvm13slpvectorizer7BoUpSLP22getSameValuesTreeEntryEPNS_5ValueENS_8ArrayRefIS3_EEb.exit ], [ %.sroa.0830.01023, %bb.bl ], [ %.0.i1.i, %bb.bm ], [ %.sroa.0830.01023, %.critedge4 ]
  %i.xl = load ptr, ptr %21, align 8, !tbaa !359  ; 2 uses
  %i.xm = icmp eq ptr %i.xl, %i.ub
  br i1 %i.xm, label %_ZN4llvm11SmallVectorIPNS_5ValueELj8EED2Ev.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @free(ptr noundef %i.xl) #31
  br label %_ZN4llvm11SmallVectorIPNS_5ValueELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_5ValueELj8EED2Ev.exit:  ; preds = %bb.bn, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bg, %_ZN4llvm11SmallVectorIPNS_5ValueELj8EED2Ev.exit
  %.sroa.0830.2 = phi i64 [ %.sroa.0830.01023, %bb.bg ], [ %.sroa.0830.1, %_ZN4llvm11SmallVectorIPNS_5ValueELj8EED2Ev.exit ] ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %.03801024, i64 8 ; 2 uses
  %.not422 = icmp eq ptr %i.xn, %i.tz
  br i1 %.not422, label %._crit_edge1027, label %bb.bg

bb.bq:                                            ; preds = %_ZN4llvm14SmallBitVectorC2ERKS0_.exit
  %i.xo = getelementptr inbounds nuw i8, ptr %i.pu, i64 248
  %i.xp = load i32, ptr %i.xo, align 8, !tbaa !371
  %.not.i485 = icmp eq i32 %i.xp, 0
  br i1 %.not.i485, label %bb.br, label %bb.fs

bb.br:                                            ; preds = %_ZN4llvm14SmallBitVectorC2ERKS0_.exit, %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #31
  %i.xq = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  store i32 1, ptr %i.xq, align 8, !tbaa !765
  store i64 0, ptr %23, align 8, !tbaa !571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  store ptr null, ptr %i.j, align 8, !tbaa !786
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #31
  store ptr %14, ptr %24, align 8, !tbaa !5413
  %i.xr = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %i.j, ptr %i.xr, align 8, !tbaa !797
  %i.xs = getelementptr inbounds nuw i8, ptr %24, i64 16
  store ptr %i.i, ptr %i.xs, align 8, !tbaa !638
  %i.xt = getelementptr inbounds nuw i8, ptr %24, i64 24
  store ptr %i.d, ptr %i.xt, align 8, !tbaa !795
  %i.xu = getelementptr inbounds nuw i8, ptr %24, i64 32
  store ptr %0, ptr %i.xu, align 8, !tbaa !1382
  %i.xv = getelementptr inbounds nuw i8, ptr %24, i64 40
  store ptr %i.c, ptr %i.xv, align 8, !tbaa !874
  %i.xw = getelementptr inbounds nuw i8, ptr %24, i64 48
  store ptr %23, ptr %i.xw, align 8, !tbaa !5414
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #31
  store ptr %i.qm, ptr %25, align 8, !tbaa !793
  %i.xx = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %23, ptr %i.xx, align 8, !tbaa !5414
  %i.xy = getelementptr inbounds nuw i8, ptr %25, i64 16
  store ptr %i.j, ptr %i.xy, align 8, !tbaa !797
  %i.xz = getelementptr inbounds nuw i8, ptr %25, i64 24
  store ptr %i.c, ptr %i.xz, align 8, !tbaa !874
  %i.ya = ptrtoint ptr %24 to i64
  %i.yb = ptrtoint ptr %25 to i64
  %i.yc = call fastcc { i64, i32 } @"_ZZN4llvm13slpvectorizer7BoUpSLP12getEntryCostEPKNS1_9TreeEntryENS_8ArrayRefIPNS_5ValueEEERNS_15SmallPtrSetImplIS7_EEENK3$_2clENS_12function_refIFNS_15InstructionCostEjEEENSD_IFSE_SE_EEE"(ptr noundef nonnull align 8 dereferenceable(144) %16, ptr nonnull @"_ZN4llvm12function_refIFNS_15InstructionCostEjEE11callback_fnIZNS_13slpvectorizer7BoUpSLP12getEntryCostEPKNS6_9TreeEntryENS_8ArrayRefIPNS_5ValueEEERNS_15SmallPtrSetImplISC_EEE3$_6EES1_lj", i64 %i.ya, ptr nonnull @"_ZN4llvm12function_refIFNS_15InstructionCostES1_EE11callback_fnIZNS_13slpvectorizer7BoUpSLP12getEntryCostEPKNS6_9TreeEntryENS_8ArrayRefIPNS_5ValueEEERNS_15SmallPtrSetImplISC_EEE3$_7EES1_lS1_", i64 %i.yb) ; 2 uses
  %.fca.0.extract279 = extractvalue { i64, i32 } %i.yc, 0
  %.fca.1.extract280 = extractvalue { i64, i32 } %i.yc, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #31
  %i.yd = load i32, ptr %i.xq, align 8, !tbaa !765
  %i.ye = icmp ugt i32 %i.yd, 64
  br i1 %i.ye, label %bb.bs, label %_ZN4llvm5APIntD2Ev.exit

bb.bs:                                            ; preds = %bb.br
  %i.yf = load ptr, ptr %23, align 8, !tbaa !571  ; 2 uses
  %i.yg = icmp eq ptr %i.yf, null
  br i1 %i.yg, label %_ZN4llvm5APIntD2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @_ZdaPv(ptr noundef nonnull %i.yf) #32
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.br, %bb.bs, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31
  br label %bb.fs

bb.bu:                                            ; preds = %_ZN4llvm14SmallBitVectorC2ERKS0_.exit, %_ZN4llvm14SmallBitVectorC2ERKS0_.exit
  %i.yh = call noundef ptr @_ZNK4llvm13slpvectorizer7BoUpSLP25getInsertBuildVectorSrcTyEPKNS1_9TreeEntryE(ptr nonnull align 8 poison, ptr noundef %i.pu) ; 5 uses
  %i.yi = call noundef i32 @_ZN4llvm13slpvectorizer14getNumElementsEPNS_4TypeE(ptr noundef %i.yh) #31 ; 8 uses
  %i.yj = load i64, ptr %i.p, align 8, !tbaa !828 ; 2 uses
  %i.yk = trunc i64 %i.yj to i32                  ; 2 uses
  %i.yl = load ptr, ptr %i.ql, align 8, !tbaa !584
  %i.ym = load ptr, ptr %i.h, align 8, !tbaa !383 ; 3 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 4
  %i.yo = load i32, ptr %i.yn, align 4            ; 2 uses
  %i.yp = and i32 %i.yo, 1073741824
  %.not.i.i486 = icmp eq i32 %i.yp, 0
  br i1 %.not.i.i486, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.yq = getelementptr inbounds i8, ptr %i.ym, i64 -8
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !539
  br label %_ZNK4llvm4User10getOperandEj.exit

bb.bw:                                            ; preds = %bb.bu
  %i.ys = and i32 %i.yo, 268435455
  %i.yt = zext nneg i32 %i.ys to i64
  %i.yu = sub nsw i64 0, %i.yt
  %i.yv = getelementptr inbounds [32 x i8], ptr %i.ym, i64 %i.yu
  br label %_ZNK4llvm4User10getOperandEj.exit

_ZNK4llvm4User10getOperandEj.exit:                ; preds = %bb.bv, %bb.bw
  %i.yw = phi ptr [ %i.yr, %bb.bv ], [ %i.yv, %bb.bw ]
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 32
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !546
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 8
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !580
  %i.zb = call fastcc noundef i32 @_ZL16getNumberOfPartsRKN4llvm19TargetTransformInfoEPNS_4TypeES4_j(ptr noundef nonnull align 8 dereferenceable(8) %i.yl, ptr noundef %i.yh, ptr noundef %i.za, i32 noundef -1) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #31
  %i.zc = zext i32 %i.yi to i64                   ; 3 uses
  call void @_ZN4llvm11SmallVectorIiLj12EEC2EmRKi(ptr noundef nonnull align 8 dereferenceable(64) %26, i64 noundef %i.zc, ptr noundef nonnull align 4 dereferenceable(4) @_ZN4llvmL14PoisonMaskElemE)
  %i.zd = load ptr, ptr %8, align 8, !tbaa !827
  %i.ze = load ptr, ptr %i.zd, align 8, !tbaa !579
  %i.zf = call fastcc i64 @_ZL15getElementIndexPKN4llvm5ValueEj(ptr noundef %i.ze, i32 noundef 0) ; 2 uses
  %.sroa.0819.0.extract.trunc = trunc i64 %i.zf to i32 ; 4 uses
  %i.zg = and i64 %i.zf, 4294967295
  %i.zh = load ptr, ptr %26, align 8, !tbaa !359
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %i.zh, i64 %i.zg
  store i32 0, ptr %i.zi, align 4, !tbaa !380
  %i.zj = load i64, ptr %i.p, align 8, !tbaa !828
  %i.zk = load ptr, ptr %8, align 8, !tbaa !827   ; 2 uses
  %.idx1032 = shl i64 %i.zj, 3                    ; 2 uses
  %i.zl = getelementptr i8, ptr %i.zk, i64 %.idx1032
  %.not957992 = icmp eq i64 %.idx1032, 8
  br i1 %.not957992, label %._crit_edge998, label %.lr.ph997.preheader

.lr.ph997.preheader:                              ; preds = %_ZNK4llvm4User10getOperandEj.exit
  %.sroa.0809.0991 = getelementptr inbounds nuw i8, ptr %i.zk, i64 8
  br label %.lr.ph997

._crit_edge998:                                   ; preds = %_ZL15getElementIndexPKN4llvm5ValueEj.exit, %_ZNK4llvm4User10getOperandEj.exit
  %.0383.lcssa = phi i32 [ %.sroa.0819.0.extract.trunc, %_ZNK4llvm4User10getOperandEj.exit ], [ %.1384, %_ZL15getElementIndexPKN4llvm5ValueEj.exit ] ; 6 uses
  %.0382.lcssa = phi i32 [ %.sroa.0819.0.extract.trunc, %_ZNK4llvm4User10getOperandEj.exit ], [ %.1, %_ZL15getElementIndexPKN4llvm5ValueEj.exit ] ; 7 uses
  %or.cond.i = icmp eq i32 %i.yi, 0
  br i1 %or.cond.i, label %_ZN4llvm12PowerOf2CeilEm.exit, label %bb.bx

bb.bx:                                            ; preds = %._crit_edge998
  %i.zm = add nsw i64 %i.zc, -1
  %i.zn = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.zm, i1 false)
  %i.zo = sub nuw nsw i64 64, %i.zn
  %i.zp = shl nuw nsw i64 1, %i.zo
  br label %_ZN4llvm12PowerOf2CeilEm.exit

_ZN4llvm12PowerOf2CeilEm.exit:                    ; preds = %._crit_edge998, %bb.bx
  %.0.i487 = phi i64 [ %i.zp, %bb.bx ], [ 0, %._crit_edge998 ]
  %i.zq = icmp ult i32 %i.zb, %i.yi
  br i1 %i.zq, label %bb.cd, label %_ZN4llvm12PowerOf2CeilEm.exit494

.lr.ph997:                                        ; preds = %.lr.ph997.preheader, %_ZL15getElementIndexPKN4llvm5ValueEj.exit
  %.sroa.0809.0996 = phi ptr [ %.sroa.0809.0, %_ZL15getElementIndexPKN4llvm5ValueEj.exit ], [ %.sroa.0809.0991, %.lr.ph997.preheader ] ; 2 uses
  %.0382995 = phi i32 [ %.1, %_ZL15getElementIndexPKN4llvm5ValueEj.exit ], [ %.sroa.0819.0.extract.trunc, %.lr.ph997.preheader ] ; 2 uses
  %.0383994 = phi i32 [ %.1384, %_ZL15getElementIndexPKN4llvm5ValueEj.exit ], [ %.sroa.0819.0.extract.trunc, %.lr.ph997.preheader ] ; 2 uses
  %.sroa.7812.0993 = phi i32 [ %i.aax, %_ZL15getElementIndexPKN4llvm5ValueEj.exit ], [ 0, %.lr.ph997.preheader ]
  %i.zr = load ptr, ptr %.sroa.0809.0996, align 8, !tbaa !579 ; 6 uses
  %i.zs = call i64 @_ZN4llvm13slpvectorizer21getInsertExtractIndexINS_17InsertElementInstEEESt8optionalIjEPKNS_5ValueEj(ptr noundef %i.zr, i32 noundef 0) #31 ; 2 uses
  %.sroa.048.0.extract.trunc.i = trunc i64 %i.zs to i32
  %i.zt = and i64 %i.zs, 4294967296
  %.not70.i = icmp eq i64 %i.zt, 0
  br i1 %.not70.i, label %bb.by, label %_ZL15getElementIndexPKN4llvm5ValueEj.exit

bb.by:                                            ; preds = %.lr.ph997
  %i.zu = call i64 @_ZN4llvm13slpvectorizer21getInsertExtractIndexINS_18ExtractElementInstEEESt8optionalIjEPKNS_5ValueEj(ptr noundef %i.zr, i32 noundef 0) #31 ; 2 uses
  %.sroa.048.0.extract.trunc49.i = trunc i64 %i.zu to i32 ; 3 uses
  %i.zv = and i64 %i.zu, 4294967296
  %.not71.i = icmp eq i64 %i.zv, 0
  br i1 %.not71.i, label %bb.bz, label %_ZL15getElementIndexPKN4llvm5ValueEj.exit

bb.bz:                                            ; preds = %bb.by
  %i.zw = load i8, ptr %i.zr, align 8, !tbaa !391
  %.not.i488 = icmp eq i8 %i.zw, 97
  br i1 %.not.i488, label %bb.ca, label %_ZL15getElementIndexPKN4llvm5ValueEj.exit

bb.ca:                                            ; preds = %bb.bz
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zr, i64 72
  %i.zy = load ptr, ptr %i.zx, align 8, !tbaa !359 ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zr, i64 80
  %i.aaa = load i32, ptr %i.zz, align 8, !tbaa !371 ; 2 uses
  %i.aab = zext i32 %i.aaa to i64
  %.idx.i489 = shl nuw nsw i64 %i.aab, 2
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zy, i64 %.idx.i489
  %.not3976.i = icmp eq i32 %i.aaa, 0
  br i1 %.not3976.i, label %_ZL15getElementIndexPKN4llvm5ValueEj.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.ca
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zr, i64 8
  br label %.lr.ph.i490

.lr.ph.i490:                                      ; preds = %bb.cc, %.lr.ph.preheader.i
  %.03179.in.i = phi ptr [ %.364.in.i, %bb.cc ], [ %i.aad, %.lr.ph.preheader.i ]
  %.078.i = phi ptr [ %i.aav, %bb.cc ], [ %i.zy, %.lr.ph.preheader.i ] ; 2 uses
  %.05577.i = phi i32 [ %i.aau, %bb.cc ], [ 0, %.lr.ph.preheader.i ]
  %.03179.i = load ptr, ptr %.03179.in.i, align 8, !tbaa !653 ; 6 uses
  %i.aae = load i32, ptr %.078.i, align 4, !tbaa !380 ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %.03179.i, i64 8
  %i.aag = load i32, ptr %i.aaf, align 8
  %i.aah = and i32 %i.aag, 255                    ; 2 uses
  %i.aai = icmp ne i32 %i.aah, 16
  %.not4073.i = icmp eq ptr %.03179.i, null       ; 2 uses
  %.not40.i = or i1 %.not4073.i, %i.aai
  br i1 %.not40.i, label %bb.cb, label %.thread.i491

.thread.i491:                                     ; preds = %.lr.ph.i490
  %i.aaj = getelementptr inbounds nuw i8, ptr %.03179.i, i64 12
  %i.aak = load i32, ptr %i.aaj, align 4, !tbaa !656
  %i.aal = getelementptr inbounds nuw i8, ptr %.03179.i, i64 16
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !652
  %i.aan = zext i32 %i.aae to i64
  %i.aao = getelementptr inbounds nuw [8 x i8], ptr %i.aam, i64 %i.aan
  br label %bb.cc

bb.cb:                                            ; preds = %.lr.ph.i490
  %i.aap = icmp ne i32 %i.aah, 17
  %.not41.not.i = or i1 %.not4073.i, %i.aap
  br i1 %.not41.not.i, label %_ZL15getElementIndexPKN4llvm5ValueEj.exit, label %.thread65.i

.thread65.i:                                      ; preds = %bb.cb
  %i.aaq = getelementptr inbounds nuw i8, ptr %.03179.i, i64 32
  %i.aar = load i64, ptr %i.aaq, align 8, !tbaa !748
  %i.aas = trunc i64 %i.aar to i32
  %i.aat = getelementptr inbounds nuw i8, ptr %.03179.i, i64 24
  br label %bb.cc

bb.cc:                                            ; preds = %.thread65.i, %.thread.i491
end_hunk_1
begin_hunk_2_@_ZN4llvm13slpvectorizer7BoUpSLP12getEntryCostEPKNS1_9TreeEntryENS_8ArrayRefIPNS_5ValueEEERNS_15SmallPtrSetImplIS7_EE:bb.a

bb.dw:                                            ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit584
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.107) #34
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit584
  %.fca.0.extract107 = extractvalue { i64, i8 } %i.aqd, 0
  %i.aqf = trunc i64 %.fca.0.extract107 to i32
  %i.aqg = load ptr, ptr %i.bk, align 8, !tbaa !560, !noalias !5417
  %i.aqh = load i32, ptr %i.bo, align 4, !tbaa !559, !noalias !5417
  %i.aqi = zext i32 %i.aqh to i64
  %i.aqj = getelementptr inbounds nuw [24 x i8], ptr %i.aqg, i64 %i.aqi
  %i.aqk = load ptr, ptr %37, align 8, !tbaa !1383 ; 2 uses
  %.not952.a = icmp eq ptr %i.aqk, %i.aqj
  br i1 %.not952.a, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqk, i64 8
  %i.aqm = load i64, ptr %i.aql, align 8, !tbaa !1328
  %i.aqn = trunc i64 %i.aqm to i32                ; 2 uses
  %i.aqo = call noundef i32 @_ZN4llvm13slpvectorizer14getNumElementsEPNS_4TypeE(ptr noundef nonnull %i.aox) #31
  %i.aqp = getelementptr inbounds nuw i8, ptr %0, i64 4816
  %i.aqq = load ptr, ptr %i.aqp, align 8, !tbaa !532
  %i.aqr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.aqq) #31
  %i.aqs = call noundef ptr @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.aqr, i32 noundef %i.aqn) #31
  %i.aqt = load i64, ptr %i.p, align 8, !tbaa !828
  %i.aqu = trunc i64 %i.aqt to i32
  %i.aqv = mul i32 %i.aqo, %i.aqu
  %i.aqw = call fastcc noundef ptr @_ZL14getWidenedTypePN4llvm4TypeEj(ptr noundef %i.aqs, i32 noundef %i.aqv)
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %_ZNK4llvm8TypeSizecvmEv.exit
  %.0396 = phi i32 [ %i.aqn, %bb.dx ], [ %i.aqf, %_ZNK4llvm8TypeSizecvmEv.exit ] ; 2 uses
  %.0392 = phi ptr [ %i.aqw, %bb.dx ], [ %i.apa, %_ZNK4llvm8TypeSizecvmEv.exit ] ; 5 uses
  %i.aqx = load ptr, ptr %i.apy, align 8, !tbaa !670
  %i.aqy = load ptr, ptr %i.b, align 8, !tbaa !653 ; 3 uses
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqy, i64 8
  %i.ara = load i32, ptr %i.aqz, align 8
  %i.arb = and i32 %i.ara, 254
  %spec.select.i.i585 = icmp eq i32 %i.arb, 18
  br i1 %spec.select.i.i585, label %bb.dz, label %_ZNK4llvm4Type13getScalarTypeEv.exit587

bb.dz:                                            ; preds = %bb.dy
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aqy, i64 16
  %i.ard = load ptr, ptr %i.arc, align 8, !tbaa !652
  %i.are = load ptr, ptr %i.ard, align 8, !tbaa !653
  br label %_ZNK4llvm4Type13getScalarTypeEv.exit587

_ZNK4llvm4Type13getScalarTypeEv.exit587:          ; preds = %bb.dy, %bb.dz
  %.0.i586 = phi ptr [ %i.are, %bb.dz ], [ %i.aqy, %bb.dy ]
  %i.arf = call { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.aqx, ptr noundef %.0.i586) ; 2 uses
  %.fca.1.extract101 = extractvalue { i64, i8 } %i.arf, 1
  %i.arg = trunc nuw i8 %.fca.1.extract101 to i1
  br i1 %i.arg, label %bb.ea, label %_ZNK4llvm8TypeSizecvmEv.exit588

bb.ea:                                            ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit587
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.107) #34
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit588:                  ; preds = %_ZNK4llvm4Type13getScalarTypeEv.exit587
  %.fca.0.extract100 = extractvalue { i64, i8 } %i.arf, 0
  %i.arh = trunc i64 %.fca.0.extract100 to i32    ; 2 uses
  %i.ari = icmp eq i32 %.0396, %i.arh
  br i1 %i.ari, label %.critedge11, label %bb.eb

bb.eb:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit588
  %i.arj = icmp ugt i32 %.0396, %i.arh
  br i1 %i.arj, label %.critedge11, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.ark = load ptr, ptr %i.bk, align 8, !tbaa !560, !noalias !5418
  %i.arl = load i32, ptr %i.bo, align 4, !tbaa !559, !noalias !5418
  %i.arm = zext i32 %i.arl to i64
  %i.arn = getelementptr inbounds nuw [24 x i8], ptr %i.ark, i64 %i.arm
  %.not953.a = icmp eq ptr %.lcssa.sink.i.i, %i.arn
  br i1 %.not953.a, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.aro = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 16
  %i.arp = load i8, ptr %i.aro, align 8, !tbaa !1384, !range !368, !noundef !369
  %i.arq = trunc nuw i8 %i.arp to i1
  %i.arr = select i1 %i.arq, i32 41, i32 40
  br label %.critedge11

bb.ee:                                            ; preds = %bb.ec
  %i.ars = load ptr, ptr %37, align 8, !tbaa !1383 ; 2 uses
  %.not954 = icmp eq ptr %i.ars, %.lcssa.sink.i.i
  br i1 %.not954, label %.critedge11, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.art = getelementptr inbounds nuw i8, ptr %i.ars, i64 16
  %i.aru = load i8, ptr %i.art, align 8, !tbaa !1384, !range !368, !noundef !369
  %i.arv = trunc nuw i8 %i.aru to i1
  %i.arw = select i1 %i.arv, i32 41, i32 40
  br label %.critedge11

.critedge7:                                       ; preds = %bb.du, %_ZNK4llvm4Type13getScalarTypeEv.exit.i575, %_ZNK4llvm4Type13getScalarTypeEv.exit.i575, %_ZNK4llvm4Type13getScalarTypeEv.exit.i575, %_ZNK4llvm4Type13getScalarTypeEv.exit.i575, %_ZNK4llvm4Type13getScalarTypeEv.exit.i575, %_ZNK4llvm4Type13getScalarTypeEv.exit.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i, %_ZNK4llvm4Type13getScalarTypeEv.exit.i, %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit581, %_ZNK4llvm4Type16isFPOrFPVectorTyEv.exit
  %i.arx = icmp eq i32 %i.apb, 45
  br i1 %i.arx, label %bb.eg, label %.critedge11

bb.eg:                                            ; preds = %.critedge7
  %i.ary = load ptr, ptr %i.bk, align 8, !tbaa !560, !noalias !5419
  %i.arz = load i32, ptr %i.bo, align 4, !tbaa !559, !noalias !5419
  %i.asa = zext i32 %i.arz to i64
  %i.asb = getelementptr inbounds nuw [24 x i8], ptr %i.ary, i64 %i.asa
  %i.asc = load ptr, ptr %37, align 8, !tbaa !1383 ; 2 uses
  %.not955 = icmp eq ptr %i.asc, %i.asb
  br i1 %.not955, label %.critedge11, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.asd = getelementptr inbounds nuw i8, ptr %i.asc, i64 16
  %i.ase = load i8, ptr %i.asd, align 8, !tbaa !1384, !range !368, !noundef !369
  %i.asf = trunc nuw i8 %i.ase to i1
  %spec.select427 = select i1 %i.asf, i32 45, i32 44
  br label %.critedge11

.critedge11:                                      ; preds = %bb.eg, %.critedge7, %bb.eh, %bb.ed, %bb.ef, %bb.ee, %_ZNK4llvm8TypeSizecvmEv.exit588, %bb.eb
  %.1395 = phi i32 [ 39, %bb.eb ], [ %spec.select427, %bb.eh ], [ %i.arw, %bb.ef ], [ %i.apb, %bb.ee ], [ 51, %_ZNK4llvm8TypeSizecvmEv.exit588 ], [ %i.arr, %bb.ed ], [ %i.apb, %.critedge7 ], [ 45, %bb.eg ]
  %.1393 = phi ptr [ %.0392, %bb.eb ], [ %i.apa, %bb.eh ], [ %.0392, %bb.ef ], [ %.0392, %bb.ee ], [ %.0392, %_ZNK4llvm8TypeSizecvmEv.exit588 ], [ %.0392, %bb.ed ], [ %i.apa, %.critedge7 ], [ %i.apa, %bb.eg ]
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #31
  store ptr %0, ptr %38, align 8, !tbaa !1386
  %i.asg = getelementptr inbounds nuw i8, ptr %38, i64 8
  store ptr %i.l, ptr %i.asg, align 8, !tbaa !638
  %i.ash = getelementptr inbounds nuw i8, ptr %38, i64 16
  store ptr %i.h, ptr %i.ash, align 8, !tbaa !1387
  %i.asi = getelementptr inbounds nuw i8, ptr %38, i64 24
  store ptr %i.c, ptr %i.asi, align 8, !tbaa !874
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #31
  store i32 %.1395, ptr %39, align 8, !tbaa !1389
  %i.asj = getelementptr inbounds nuw i8, ptr %39, i64 4
  store i32 %i.apb, ptr %i.asj, align 4, !tbaa !1390
  %i.ask = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.asl = load ptr, ptr %i.h, align 8, !tbaa !383
  store ptr %i.asl, ptr %i.ask, align 8, !tbaa !1391
  %i.asm = getelementptr inbounds nuw i8, ptr %39, i64 16
  store ptr %0, ptr %i.asm, align 8, !tbaa !1060
  %.sroa.5.0..sroa_idx315 = getelementptr inbounds nuw i8, ptr %39, i64 24
  store ptr %i.a, ptr %.sroa.5.0..sroa_idx315, align 8, !tbaa !1219
  %i.asn = getelementptr inbounds nuw i8, ptr %39, i64 32
  %i.aso = load ptr, ptr %i.a, align 8, !tbaa !575
  store ptr %i.aso, ptr %i.asn, align 8, !tbaa !1392
  %i.asp = getelementptr inbounds nuw i8, ptr %39, i64 40
  store ptr %0, ptr %i.asp, align 8, !tbaa !1393
  %i.asq = getelementptr inbounds nuw i8, ptr %39, i64 48
  %i.asr = load ptr, ptr %i.e, align 8, !tbaa !653
  store ptr %i.asr, ptr %i.asq, align 8, !tbaa !1394
  %i.ass = getelementptr inbounds nuw i8, ptr %39, i64 56
  store ptr %.1393, ptr %i.ass, align 8, !tbaa !1395
  %i.ast = getelementptr inbounds nuw i8, ptr %39, i64 64
  %i.asu = load i32, ptr %i.c, align 4, !tbaa !1358
  store i32 %i.asu, ptr %i.ast, align 8, !tbaa !1396
  %i.asv = ptrtoint ptr %38 to i64
  %i.asw = ptrtoint ptr %39 to i64
  %i.asx = call fastcc { i64, i32 } @"_ZZN4llvm13slpvectorizer7BoUpSLP12getEntryCostEPKNS1_9TreeEntryENS_8ArrayRefIPNS_5ValueEEERNS_15SmallPtrSetImplIS7_EEENK3$_2clENS_12function_refIFNS_15InstructionCostEjEEENSD_IFSE_SE_EEE"(ptr noundef nonnull align 8 dereferenceable(144) %16, ptr nonnull @"_ZN4llvm12function_refIFNS_15InstructionCostEjEE11callback_fnIZNS_13slpvectorizer7BoUpSLP12getEntryCostEPKNS6_9TreeEntryENS_8ArrayRefIPNS_5ValueEEERNS_15SmallPtrSetImplISC_EEE3$_8EES1_lj", i64 %i.asv, ptr nonnull @"_ZN4llvm12function_refIFNS_15InstructionCostES1_EE11callback_fnIZNS_13slpvectorizer7BoUpSLP12getEntryCostEPKNS6_9TreeEntryENS_8ArrayRefIPNS_5ValueEEERNS_15SmallPtrSetImplISC_EEE3$_9EES1_lS1_", i64 %i.asw) ; 2 uses
  %.fca.0.extract96 = extractvalue { i64, i32 } %i.asx, 0
  %.fca.1.extract97 = extractvalue { i64, i32 } %i.asx, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #31
  br label %bb.fs

bb.ei:                                            ; preds = %_ZN4llvm14SmallBitVectorC2ERKS0_.exit, %_ZN4llvm14SmallBitVectorC2ERKS0_.exit
  %i.asy = load ptr, ptr %i.h, align 8, !tbaa !383 ; 3 uses
  %i.asz = load i8, ptr %i.asy, align 8, !tbaa !391 ; 3 uses
  switch i8 %i.asz, label %.thread34.i [
    i8 86, label %.sink.split.i591
    i8 85, label %.sink.split.i591
    i8 64, label %.sink.split.i591
  ]

.thread34.i:                                      ; preds = %bb.ei
  %i.ata = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL8SLPReVec, i64 120), align 8, !tbaa !648, !range !368, !noundef !369
  %i.atb = trunc nuw i8 %i.ata to i1
  %i.atc = icmp ne i8 %i.asz, 94
  %or.cond41.not.i590 = or i1 %i.atc, %i.atb
  br i1 %or.cond41.not.i590, label %.thread36.i595, label %.sink.split.i591

.thread36.i595:                                   ; preds = %.thread34.i
  %i.atd = icmp eq i8 %i.asz, 97
  br i1 %i.atd, label %.sink.split.i591, label %_ZL12getValueTypePN4llvm5ValueEb.exit596

.sink.split.i591:                                 ; preds = %bb.ei, %bb.ei, %bb.ei, %.thread36.i595, %.thread34.i
  %.sink44.i592 = phi i64 [ -64, %.thread34.i ], [ -32, %.thread36.i595 ], [ -64, %bb.ei ], [ -64, %bb.ei ], [ -64, %bb.ei ]
  %i.ate = getelementptr inbounds i8, ptr %i.asy, i64 %.sink44.i592
  %i.atf = load ptr, ptr %i.ate, align 8, !tbaa !546
  br label %_ZL12getValueTypePN4llvm5ValueEb.exit596

_ZL12getValueTypePN4llvm5ValueEb.exit596:         ; preds = %.thread36.i595, %.sink.split.i591
  %.sink.i593 = phi ptr [ %i.asy, %.thread36.i595 ], [ %i.atf, %.sink.split.i591 ]
  %i.atg = getelementptr inbounds nuw i8, ptr %.sink.i593, i64 8
  %.6.i594 = load ptr, ptr %i.atg, align 8, !tbaa !580 ; 3 uses
  store ptr %.6.i594, ptr %i.b, align 8, !tbaa !653
  store ptr %.6.i594, ptr %i.d, align 8, !tbaa !653
  %i.ath = load i64, ptr %i.p, align 8, !tbaa !828
  %i.ati = trunc i64 %i.ath to i32
  %i.atj = call fastcc noundef ptr @_ZL14getWidenedTypePN4llvm4TypeEj(ptr noundef %.6.i594, i32 noundef %i.ati)
  store ptr %i.atj, ptr %i.e, align 8, !tbaa !653
  br label %bb.ej

bb.ej:                                            ; preds = %_ZN4llvm14SmallBitVectorC2ERKS0_.exit, %_ZL12getValueTypePN4llvm5ValueEb.exit596
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #31
  store i32 42, ptr %40, align 8, !tbaa !1399
  %i.atk = getelementptr inbounds nuw i8, ptr %40, i64 4 ; 2 uses
  store i8 0, ptr %i.atk, align 4, !tbaa !1400
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #31
  %i.atl = getelementptr inbounds nuw i8, ptr %41, i64 4
  %i.atm = load ptr, ptr %i.h, align 8, !tbaa !383
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #31
  store ptr %40, ptr %42, align 8, !tbaa !5420
  %i.atn = call noundef zeroext i1 @_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_14ThreeOps_matchINS0_14CmpClass_matchINS_19PatternMatchHelpers9match_isaIJNS_5ValueEEEES8_NS_7CmpInstELb0EEES8_S8_Lj59ELb0EEEEEbPT_RKT0_(ptr noundef %i.atm, ptr noundef nonnull align 8 dereferenceable(18) %42)
  br i1 %i.atn, label %.critedge13, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.ato = load ptr, ptr %i.h, align 8, !tbaa !383 ; 2 uses
  %i.atp = load i8, ptr %i.ato, align 8, !tbaa !391
  %i.atq = add i8 %i.atp, -85
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.atq, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_14CmpClass_matchINS_19PatternMatchHelpers9match_isaIJNS_5ValueEEEES7_NS_7CmpInstELb0EEEEEbPT_RKT0_.exit.thread, label %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread

_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_14CmpClass_matchINS_19PatternMatchHelpers9match_isaIJNS_5ValueEEEES7_NS_7CmpInstELb0EEEEEbPT_RKT0_.exit.thread: ; preds = %bb.ek
  %i.atr = call i64 @_ZN4llvm12CmpPredicate3getEPKNS_7CmpInstE(ptr noundef nonnull %i.ato) #31 ; 2 uses
  %i.ats = trunc i64 %i.atr to i40
  store i40 %i.ats, ptr %40, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #31
  %i.att = trunc i64 %i.atr to i32
  br label %bb.el

.critedge13:                                      ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #31
  %.pre1071 = load i32, ptr %40, align 8, !tbaa !1399
  br label %bb.el

bb.el:                                            ; preds = %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_14CmpClass_matchINS_19PatternMatchHelpers9match_isaIJNS_5ValueEEEES7_NS_7CmpInstELb0EEEEEbPT_RKT0_.exit.thread, %.critedge13
  %i.atu = phi i32 [ %i.att, %_ZN4llvm12PatternMatch5matchINS_11InstructionENS0_14CmpClass_matchINS_19PatternMatchHelpers9match_isaIJNS_5ValueEEEES7_NS_7CmpInstELb0EEEEEbPT_RKT0_.exit.thread ], [ %.pre1071, %.critedge13 ]
  %i.atv = call noundef i32 @_ZN4llvm7CmpInst19getSwappedPredicateENS0_9PredicateE(i32 noundef %i.atu) #31
  store i32 %i.atv, ptr %41, align 4, !tbaa !1402
  store i8 0, ptr %i.atl, align 4, !tbaa !783
  br label %bb.em

_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread:  ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #31
  %i.atw = load ptr, ptr %i.b, align 8, !tbaa !653
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atw, i64 8
  %i.aty = load i32, ptr %i.atx, align 8
  %.fr949 = freeze i32 %i.aty                     ; 2 uses
  %trunc.i.i = trunc i32 %.fr949 to i8            ; 2 uses
  %i.atz = icmp ult i8 %trunc.i.i, 6
  %switch.shifted = lshr i8 47, %trunc.i.i
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond1235 = select i1 %i.atz, i1 %switch.lobit, i1 false
  %i.aua = and i32 %.fr949, 253
  %spec.select.i597 = icmp eq i32 %i.aua, 4
  %i.aub = or i1 %or.cond1235, %spec.select.i597
  %i.auc = select i1 %i.aub, i32 16, i32 42
  store i32 %i.auc, ptr %40, align 8, !tbaa !1402
  store i8 0, ptr %i.atk, align 4, !tbaa !783
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %41, ptr noundef nonnull align 8 dereferenceable(5) %40, i64 5, i1 false), !tbaa.struct !1403
  br label %bb.em

bb.em:                                            ; preds = %_ZNK4llvm4Type17isFloatingPointTyEv.exit.thread, %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #31
  store ptr %14, ptr %43, align 8, !tbaa !5413
  %i.aud = getelementptr inbounds nuw i8, ptr %43, i64 8
  store ptr %0, ptr %i.aud, align 8, !tbaa !1405
  %i.aue = getelementptr inbounds nuw i8, ptr %43, i64 16
  store ptr %i.c, ptr %i.aue, align 8, !tbaa !874
  %i.auf = getelementptr inbounds nuw i8, ptr %43, i64 24
  store ptr %i.b, ptr %i.auf, align 8, !tbaa !795
  %i.aug = getelementptr inbounds nuw i8, ptr %43, i64 32
  store ptr %i.i, ptr %i.aug, align 8, !tbaa !638
  %i.auh = getelementptr inbounds nuw i8, ptr %43, i64 40
  store ptr %40, ptr %i.auh, align 8, !tbaa !5420
  %i.aui = getelementptr inbounds nuw i8, ptr %43, i64 48
  store ptr %41, ptr %i.aui, align 8, !tbaa !5420
  %i.auj = getelementptr inbounds nuw i8, ptr %43, i64 56
  store ptr %i.a, ptr %i.auj, align 8, !tbaa !1219
  %i.auk = getelementptr inbounds nuw i8, ptr %43, i64 64
  store ptr %i.d, ptr %i.auk, align 8, !tbaa !795
  %i.aul = getelementptr inbounds nuw i8, ptr %43, i64 72
  store ptr %i.h, ptr %i.aul, align 8, !tbaa !1387
  %i.aum = getelementptr inbounds nuw i8, ptr %43, i64 80
  store ptr %18, ptr %i.aum, align 8, !tbaa !874
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #31
  store ptr %i.i, ptr %44, align 8, !tbaa !638
  %i.aun = getelementptr inbounds nuw i8, ptr %44, i64 8
  store ptr %i.h, ptr %i.aun, align 8, !tbaa !1387
  %i.auo = getelementptr inbounds nuw i8, ptr %44, i64 16
  store ptr %8, ptr %i.auo, align 8, !tbaa !799
  %i.aup = getelementptr inbounds nuw i8, ptr %44, i64 24
  store ptr %i.a, ptr %i.aup, align 8, !tbaa !1219
  %i.auq = getelementptr inbounds nuw i8, ptr %44, i64 32
  store ptr %0, ptr %i.auq, align 8, !tbaa !1407
  %i.aur = getelementptr inbounds nuw i8, ptr %44, i64 40
  store ptr %i.e, ptr %i.aur, align 8, !tbaa !795
  %i.aus = getelementptr inbounds nuw i8, ptr %44, i64 48
  store ptr %i.c, ptr %i.aus, align 8, !tbaa !874
  %i.aut = getelementptr inbounds nuw i8, ptr %44, i64 56
  store ptr %40, ptr %i.aut, align 8, !tbaa !5420
  %i.auu = ptrtoint ptr %43 to i64
  %i.auv = ptrtoint ptr %44 to i64
  %i.auw = call fastcc { i64, i32 } @"_ZZN4llvm13slpvectorizer7BoUpSLP12getEntryCostEPKNS1_9TreeEntryENS_8ArrayRefIPNS_5ValueEEERNS_15SmallPtrSetImplIS7_EEENK3$_2clENS_12function_refIFNS_15InstructionCostEjEEENSD_IFSE_SE_EEE"(ptr noundef nonnull align 8 dereferenceable(144) %16, ptr nonnull @"_ZN4llvm12function_refIFNS_15InstructionCostEjEE11callback_fnIZNS_13slpvectorizer7BoUpSLP12getEntryCostEPKNS6_9TreeEntryENS_8ArrayRefIPNS_5ValueEEERNS_15SmallPtrSetImplISC_EEE4$_10EES1_lj", i64 %i.auu, ptr nonnull @"_ZN4llvm12function_refIFNS_15InstructionCostES1_EE11callback_fnIZNS_13slpvectorizer7BoUpSLP12getEntryCostEPKNS6_9TreeEntryENS_8ArrayRefIPNS_5ValueEEERNS_15SmallPtrSetImplISC_EEE4$_11EES1_lS1_", i64 %i.auv) ; 2 uses
  %.fca.0.extract92 = extractvalue { i64, i32 } %i.auw, 0
  %.fca.1.extract93 = extractvalue { i64, i32 } %i.auw, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #31
  br label %bb.fs

bb.en:                                            ; preds = %_ZN4llvm14SmallBitVectorC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #31
  store ptr %18, ptr %45, align 8, !tbaa !874
  %i.aux = getelementptr inbounds nuw i8, ptr %45, i64 8
  store ptr %i.d, ptr %i.aux, align 8, !tbaa !795
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #31
  store ptr %18, ptr %46, align 8, !tbaa !874
  %i.auy = getelementptr inbounds nuw i8, ptr %46, i64 8
  store ptr %i.e, ptr %i.auy, align 8, !tbaa !795
  %i.auz = ptrtoint ptr %45 to i64
  %i.ava = ptrtoint ptr %46 to i64
  %i.avb = call fastcc { i64, i32 } @"_ZZN4llvm13slpvectorizer7BoUpSLP12getEntryCostEPKNS1_9TreeEntryENS_8ArrayRefIPNS_5ValueEEERNS_15SmallPtrSetImplIS7_EEENK3$_2clENS_12function_refIFNS_15InstructionCostEjEEENSD_IFSE_SE_EEE"(ptr noundef nonnull align 8 dereferenceable(144) %16, ptr nonnull @"_ZN4llvm12function_refIFNS_15InstructionCostEjEE11callback_fnIZNS_13slpvectorizer7BoUpSLP12getEntryCostEPKNS6_9TreeEntryENS_8ArrayRefIPNS_5ValueEEERNS_15SmallPtrSetImplISC_EEE4$_12EES1_lj", i64 %i.auz, ptr nonnull @"_ZN4llvm12function_refIFNS_15InstructionCostES1_EE11callback_fnIZNS_13slpvectorizer7BoUpSLP12getEntryCostEPKNS6_9TreeEntryENS_8ArrayRefIPNS_5ValueEEERNS_15SmallPtrSetImplISC_EEE4$_13EES1_lS1_", i64 %i.ava) ; 2 uses
  %.fca.0.extract88 = extractvalue { i64, i32 } %i.avb, 0
  %.fca.1.extract89 = extractvalue { i64, i32 } %i.avb, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #31
  br label %bb.fs

bb.eo:                                            ; preds = %_ZN4llvm14SmallBitVectorC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #31
  store ptr %14, ptr %47, align 8, !tbaa !5413
  %i.avc = getelementptr inbounds nuw i8, ptr %47, i64 8
  store ptr %19, ptr %i.avc, align 8, !tbaa !874
  %i.avd = getelementptr inbounds nuw i8, ptr %47, i64 16
  store ptr %i.a, ptr %i.avd, align 8, !tbaa !1219
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #31
  store ptr %i.qm, ptr %48, align 8, !tbaa !793
  %i.ave = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr %i.a, ptr %i.ave, align 8, !tbaa !1219
  %i.avf = getelementptr inbounds nuw i8, ptr %48, i64 16
  store ptr %i.e, ptr %i.avf, align 8, !tbaa !795
  %i.avg = getelementptr inbounds nuw i8, ptr %48, i64 24
  store ptr %i.c, ptr %i.avg, align 8, !tbaa !874
  %i.avh = ptrtoint ptr %47 to i64
  %i.avi = ptrtoint ptr %48 to i64
  %i.avj = call fastcc { i64, i32 } @"_ZZN4llvm13slpvectorizer7BoUpSLP12getEntryCostEPKNS1_9TreeEntryENS_8ArrayRefIPNS_5ValueEEERNS_15SmallPtrSetImplIS7_EEENK3$_2clENS_12function_refIFNS_15InstructionCostEjEEENSD_IFSE_SE_EEE"(ptr noundef nonnull align 8 dereferenceable(144) %16, ptr nonnull @"_ZN4llvm12function_refIFNS_15InstructionCostEjEE11callback_fnIZNS_13slpvectorizer7BoUpSLP12getEntryCostEPKNS6_9TreeEntryENS_8ArrayRefIPNS_5ValueEEERNS_15SmallPtrSetImplISC_EEE4$_14EES1_lj", i64 %i.avh, ptr nonnull @"_ZN4llvm12function_refIFNS_15InstructionCostES1_EE11callback_fnIZNS_13slpvectorizer7BoUpSLP12getEntryCostEPKNS6_9TreeEntryENS_8ArrayRefIPNS_5ValueEEERNS_15SmallPtrSetImplISC_EEE4$_15EES1_lS1_", i64 %i.avi) ; 2 uses
  %.fca.0.extract84 = extractvalue { i64, i32 } %i.avj, 0
  %.fca.1.extract85 = extractvalue { i64, i32 } %i.avj, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #31
  br label %bb.fs

bb.ep:                                            ; preds = %_ZN4llvm14SmallBitVectorC2ERKS0_.exit, %_ZN4llvm14SmallBitVectorC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #31
  store ptr %i.qm, ptr %49, align 8, !tbaa !793
  %i.avk = getelementptr inbounds nuw i8, ptr %49, i64 8
  store ptr %14, ptr %i.avk, align 8, !tbaa !5413
  %i.avl = getelementptr inbounds nuw i8, ptr %49, i64 16
  store ptr %i.c, ptr %i.avl, align 8, !tbaa !874
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #31
  store ptr %i.qm, ptr %50, align 8, !tbaa !793
  %i.avm = getelementptr inbounds nuw i8, ptr %50, i64 8
  store ptr %0, ptr %i.avm, align 8, !tbaa !1409
  %i.avn = getelementptr inbounds nuw i8, ptr %50, i64 16
  store ptr %i.a, ptr %i.avn, align 8, !tbaa !1219
  %i.avo = getelementptr inbounds nuw i8, ptr %50, i64 24
  store ptr %i.b, ptr %i.avo, align 8, !tbaa !795
  %i.avp = getelementptr inbounds nuw i8, ptr %50, i64 32
  store ptr %i.c, ptr %i.avp, align 8, !tbaa !874
  %i.avq = getelementptr inbounds nuw i8, ptr %50, i64 40
  store ptr %i.i, ptr %i.avq, align 8, !tbaa !638
  %i.avr = getelementptr inbounds nuw i8, ptr %50, i64 48
  store ptr %i.f, ptr %i.avr, align 8, !tbaa !638
  %i.avs = ptrtoint ptr %49 to i64
  %i.avt = ptrtoint ptr %50 to i64
  %i.avu = call fastcc { i64, i32 } @"_ZZN4llvm13slpvectorizer7BoUpSLP12getEntryCostEPKNS1_9TreeEntryENS_8ArrayRefIPNS_5ValueEEERNS_15SmallPtrSetImplIS7_EEENK3$_2clENS_12function_refIFNS_15InstructionCostEjEEENSD_IFSE_SE_EEE"(ptr noundef nonnull align 8 dereferenceable(144) %16, ptr nonnull @"_ZN4llvm12function_refIFNS_15InstructionCostEjEE11callback_fnIZNS_13slpvectorizer7BoUpSLP12getEntryCostEPKNS6_9TreeEntryENS_8ArrayRefIPNS_5ValueEEERNS_15SmallPtrSetImplISC_EEE4$_16EES1_lj", i64 %i.avs, ptr nonnull @"_ZN4llvm12function_refIFNS_15InstructionCostES1_EE11callback_fnIZNS_13slpvectorizer7BoUpSLP12getEntryCostEPKNS6_9TreeEntryENS_8ArrayRefIPNS_5ValueEEERNS_15SmallPtrSetImplISC_EEE4$_17EES1_lS1_", i64 %i.avt) ; 2 uses
  %.fca.0.extract80 = extractvalue { i64, i32 } %i.avu, 0
  %.fca.1.extract81 = extractvalue { i64, i32 } %i.avu, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #31
  br label %bb.fs

bb.eq:                                            ; preds = %_ZN4llvm14SmallBitVectorC2ERKS0_.exit, %_ZN4llvm14SmallBitVectorC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #31
  store ptr %i.qm, ptr %51, align 8, !tbaa !793
  %i.avv = getelementptr inbounds nuw i8, ptr %51, i64 8
  store ptr %14, ptr %i.avv, align 8, !tbaa !5413
  %i.avw = getelementptr inbounds nuw i8, ptr %51, i64 16
  store ptr %i.c, ptr %i.avw, align 8, !tbaa !874
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #31
  store ptr %i.qm, ptr %52, align 8, !tbaa !793
  %i.avx = getelementptr inbounds nuw i8, ptr %52, i64 8
  store ptr %0, ptr %i.avx, align 8, !tbaa !1411
  %i.avy = getelementptr inbounds nuw i8, ptr %52, i64 16
  store ptr %i.a, ptr %i.avy, align 8, !tbaa !1219
  %i.avz = getelementptr inbounds nuw i8, ptr %52, i64 24
  store ptr %i.b, ptr %i.avz, align 8, !tbaa !795
  %i.awa = getelementptr inbounds nuw i8, ptr %52, i64 32
  store ptr %i.f, ptr %i.awa, align 8, !tbaa !638
  %i.awb = getelementptr inbounds nuw i8, ptr %52, i64 40
  store ptr %i.c, ptr %i.awb, align 8, !tbaa !874
end_hunk_2
