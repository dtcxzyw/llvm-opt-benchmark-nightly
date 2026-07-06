inline.NumInlined: 1887
inline.NumDeleted: 837
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_ZN9Stockfish10Tablebases9probe_dtzERNS_8PositionEPNS0_10ProbeStateE:bb.a
  %narrow.i.i = mul nuw nsw i8 %i.it, 6
  %i.bce = zext nneg i8 %narrow.i.i to i64        ; 2 uses
  %i.bcf = mul i64 %i.bcc, %i.bce
  %i.bcg = getelementptr i8, ptr %.us-phi44.i238.i.i.i, i64 %i.bcf
  %scevgep.i.i.i = getelementptr i8, ptr %i.bcg, i64 %i.bca
  %i.bch = add nuw nsw i64 %i.bce, 6
  %i.bci = mul i64 %i.bcc, %i.bch
  %i.bcj = getelementptr i8, ptr %.us-phi44.i238.i.i.i, i64 %i.bci
  %scevgep188.i.i.i = getelementptr i8, ptr %i.bcj, i64 %i.bca ; 2 uses
  store ptr %scevgep.i.i.i, ptr %i.bcd, align 8, !tbaa !310
  %i.bck = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 104
  %i.bcl = load i32, ptr %i.bck, align 8, !tbaa !311
  %i.bcm = zext i32 %i.bcl to i64                 ; 2 uses
  %i.bcn = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 96
  %i.bco = shl nuw nsw i8 %i.it, 1
  %i.bcp = zext nneg i8 %i.bco to i64             ; 2 uses
  %i.bcq = mul nuw nsw i64 %i.bcm, %i.bcp
  %scevgep.i.i = getelementptr i8, ptr %scevgep188.i.i.i, i64 %i.bcq
  %i.bcr = add nuw nsw i64 %i.bcp, 2
  %i.bcs = mul nuw nsw i64 %i.bcr, %i.bcm
  %scevgep98.i.i = getelementptr i8, ptr %scevgep188.i.i.i, i64 %i.bcs
  store ptr %scevgep.i.i, ptr %i.bcn, align 8, !tbaa !312
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader122.i.split.i.i, %.preheader121.i.us.i.i.3, %.preheader121.i.us.i.i.2, %.preheader121.i.us.i.i.1
  %.8166.i.i.i.ph = phi ptr [ %scevgep98.i.i, %.preheader122.i.split.i.i ], [ %i.bbz, %.preheader121.i.us.i.i.3 ], [ %i.bbn, %.preheader121.i.us.i.i.1 ], [ %i.bbt, %.preheader121.i.us.i.i.2 ]
  %i.bct = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 128
  %i.bcu = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 60
  %i.bcv = load i32, ptr %i.bcu, align 4, !tbaa !313
  %i.bcw = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 64
  %i.bcx = load i64, ptr %i.bcw, align 8, !tbaa !314
  %i.bcy = ptrtoint ptr %.8166.i.i.i.ph to i64
  %i.bcz = add i64 %i.bcy, 63
  %i.bda = and i64 %i.bcz, -64
  %i.bdb = inttoptr i64 %i.bda to ptr             ; 2 uses
  store ptr %i.bdb, ptr %i.bct, align 8, !tbaa !315
  br i1 %i.is, label %.preheader.i.i.i.1, label %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i

.preheader.i.i.i.1:                               ; preds = %.preheader.i.i.i
  %i.bdc = zext i32 %i.bcv to i64
  %i.bdd = mul i64 %i.bcx, %i.bdc
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bdb, i64 %i.bdd
  %i.bdf = zext nneg i8 %i.qs to i64
  %i.bdg = getelementptr inbounds nuw [240 x i8], ptr %i.iy, i64 %i.bdf ; 3 uses
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.bdg, i64 72
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bdg, i64 4
  %i.bdj = load i32, ptr %i.bdi, align 4, !tbaa !313
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.bdg, i64 8
  %i.bdl = load i64, ptr %i.bdk, align 8, !tbaa !314
  %i.bdm = ptrtoint ptr %i.bde to i64
  %i.bdn = add i64 %i.bdm, 63
  %i.bdo = and i64 %i.bdn, -64
  %i.bdp = inttoptr i64 %i.bdo to ptr             ; 2 uses
  store ptr %i.bdp, ptr %i.bdh, align 8, !tbaa !315
  %exitcond203.i.i.i.1 = icmp eq i8 %i.jb, 2
  br i1 %exitcond203.i.i.i.1, label %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i, label %.preheader.i.i.i.2

.preheader.i.i.i.2:                               ; preds = %.preheader.i.i.i.1
  %i.bdq = zext i32 %i.bdj to i64
  %i.bdr = mul i64 %i.bdl, %i.bdq
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdp, i64 %i.bdr
  %i.bdt = select i1 %i.qt, i64 2, i64 0
  %i.bdu = getelementptr inbounds nuw [240 x i8], ptr %i.iy, i64 %i.bdt ; 3 uses
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.bdu, i64 72
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.bdu, i64 4
  %i.bdx = load i32, ptr %i.bdw, align 4, !tbaa !313
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.bdu, i64 8
  %i.bdz = load i64, ptr %i.bdy, align 8, !tbaa !314
  %i.bea = ptrtoint ptr %i.bds to i64
  %i.beb = add i64 %i.bea, 63
  %i.bec = and i64 %i.beb, -64
  %i.bed = inttoptr i64 %i.bec to ptr             ; 2 uses
  store ptr %i.bed, ptr %i.bdv, align 8, !tbaa !315
  %exitcond203.i.i.i.2 = icmp eq i8 %i.jb, 3
  br i1 %exitcond203.i.i.i.2, label %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i, label %.preheader.i.i.i.3

.preheader.i.i.i.3:                               ; preds = %.preheader.i.i.i.2
  %i.bee = zext i32 %i.bdx to i64
  %i.bef = mul i64 %i.bdz, %i.bee
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bed, i64 %i.bef
  %i.beh = select i1 %i.qt, i64 3, i64 0
  %i.bei = getelementptr inbounds nuw [240 x i8], ptr %i.iy, i64 %i.beh
  %i.bej = getelementptr inbounds nuw i8, ptr %i.bei, i64 72
  %i.bek = ptrtoint ptr %i.beg to i64
  %i.bel = add i64 %i.bek, 63
  %i.bem = and i64 %i.bel, -64
  %i.ben = inttoptr i64 %i.bem to ptr
  store ptr %i.ben, ptr %i.bej, align 8, !tbaa !315
  br label %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i

_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i.loopexit.critedge: ; preds = %.preheader121.i.us.i.i
  %i.beo = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 128
  %i.bep = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 60
  %i.beq = load i32, ptr %i.bep, align 4, !tbaa !313 ; 0 uses
  %i.ber = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 64
  %i.bes = load i64, ptr %i.ber, align 8, !tbaa !314 ; 0 uses
  %i.bet = ptrtoint ptr %i.bbh to i64
  %i.beu = add i64 %i.bet, 63
  %i.bev = and i64 %i.beu, -64
  %i.bew = inttoptr i64 %i.bev to ptr
  store ptr %i.bew, ptr %i.beo, align 8, !tbaa !315
  br label %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i

_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i: ; preds = %.preheader.i.i.i, %.preheader.i.i.i.1, %.preheader.i.i.i.2, %.preheader.i.i.i.3, %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i.loopexit.critedge, %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit.i.i
  store atomic i8 1, ptr %.0.val.i.i release, align 8
  %i.bex = load ptr, ptr %i.ia, align 8, !tbaa !199
  %i.bey = load ptr, ptr %4, align 8, !tbaa !175  ; 2 uses
  %i.bez = icmp eq ptr %i.bey, %i.cc
  br i1 %i.bez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i
  %i.bfa = load i64, ptr %i.cc, align 8, !tbaa !156
  %i.bfb = add i64 %i.bfa, 1
  call void @_ZdlPvm(ptr noundef %i.bey, i64 noundef %i.bfb) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE1EEEEEvRT_Ph.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.bfc = load ptr, ptr %3, align 8, !tbaa !175  ; 2 uses
  %i.bfd = icmp eq ptr %i.bfc, %i.ca
  br i1 %i.bfd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i
  %i.bfe = load i64, ptr %i.ca, align 8, !tbaa !156
  %i.bff = add i64 %i.bfe, 1
  call void @_ZdlPvm(ptr noundef %i.bfc, i64 noundef %i.bff) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.bfg = load ptr, ptr %2, align 8, !tbaa !175  ; 2 uses
  %i.bfh = icmp eq ptr %i.bfg, %i.by
  br i1 %i.bfh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i.i
  %i.bfi = load i64, ptr %i.by, align 8, !tbaa !156
  %i.bfj = add i64 %i.bfi, 1
  call void @_ZdlPvm(ptr noundef %i.bfg, i64 noundef %i.bfj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.bs

bb.bs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i.i, %bb.r
  %.0.i.i = phi ptr [ %i.bx, %bb.r ], [ %i.bex, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i.i ]
  %i.bfk = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN9Stockfish12_GLOBAL__N_16mappedILNS0_6TBTypeE1EEEPvRNS0_7TBTableIXT_EEERKNS_8PositionEE5mutex) #26 ; 0 uses
  br label %_ZN9Stockfish12_GLOBAL__N_16mappedILNS0_6TBTypeE1EEEPvRNS0_7TBTableIXT_EEERKNS_8PositionE.exit.i

_ZN9Stockfish12_GLOBAL__N_16mappedILNS0_6TBTypeE1EEEPvRNS0_7TBTableIXT_EEERKNS_8PositionE.exit.i: ; preds = %bb.bs, %bb.o
  %.1.i.i = phi ptr [ %i.bs, %bb.o ], [ %.0.i.i, %bb.bs ]
  %.not11.i = icmp eq ptr %.1.i.i, null
  br i1 %.not11.i, label %_ZN9Stockfish12_GLOBAL__N_111probe_tableILNS0_6TBTypeE1EiEET0_RKNS_8PositionEPNS_10Tablebases10ProbeStateENS7_8WDLScoreE.exit.thread, label %bb.bt

_ZN9Stockfish12_GLOBAL__N_111probe_tableILNS0_6TBTypeE1EiEET0_RKNS_8PositionEPNS_10Tablebases10ProbeStateENS7_8WDLScoreE.exit.thread: ; preds = %_ZN9Stockfish12_GLOBAL__N_18TBTables3getILNS0_6TBTypeE1EEEPNS0_7TBTableIXT_EEEm.exit.i, %_ZN9Stockfish12_GLOBAL__N_16mappedILNS0_6TBTypeE1EEEPvRNS0_7TBTableIXT_EEERKNS_8PositionE.exit.i
  store i32 0, ptr %1, align 4, !tbaa !234
  br label %_ZN9Stockfish12_GLOBAL__N_118dtz_before_zeroingENS_10Tablebases8WDLScoreE.exit

bb.bt:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_16mappedILNS0_6TBTypeE1EEEPvRNS0_7TBTableIXT_EEERKNS_8PositionE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.bfl = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 32
  %i.bfm = load i64, ptr %i.bfl, align 8, !tbaa !258 ; 2 uses
  %i.bfn = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 40
  %i.bfo = load i64, ptr %i.bfn, align 8, !tbaa !316
  %i.bfp = icmp eq i64 %i.bfm, %i.bfo             ; 2 uses
  %i.bfq = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.bfr = load i8, ptr %i.bfq, align 4           ; 2 uses
  %i.bfs = icmp ne i8 %i.bfr, 0
  %i.bft = select i1 %i.bfp, i1 %i.bfs, i1 false
  %i.bfu = load ptr, ptr %i.bd, align 8, !tbaa !245
  %i.bfv = load i64, ptr %i.bfu, align 8, !tbaa !254
  %i.bfw = icmp ne i64 %i.bfv, %i.bfm
  %i.bfx = select i1 %i.bft, i1 true, i1 %i.bfw   ; 3 uses
  %i.bfy = select i1 %i.bfx, i32 8, i32 0         ; 2 uses
  %i.bfz = select i1 %i.bfx, i32 56, i32 0        ; 2 uses
  %i.bga = zext i1 %i.bfx to i8
  %i.bgb = xor i8 %i.bfr, %i.bga
  %i.bgc = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 52 ; 3 uses
  %i.bgd = load i8, ptr %i.bgc, align 4, !tbaa !208, !range !206, !noundef !207
  %i.bge = trunc nuw i8 %i.bgd to i1              ; 3 uses
  br i1 %i.bge, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.bgf = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 184
  %i.bgg = load i8, ptr %i.bgf, align 8, !tbaa !241
  %i.bgh = trunc nuw nsw i32 %i.bfy to i8
  %i.bgi = xor i8 %i.bgg, %i.bgh
  %i.bgj = lshr i8 %i.bgi, 3
  %i.bgk = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bgl = zext nneg i8 %i.bgj to i64
  %i.bgm = getelementptr inbounds nuw [8 x i8], ptr %i.bgk, i64 %i.bgl
  %i.bgn = load i64, ptr %i.bgm, align 8, !tbaa !17
  %i.bgo = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bgp = load i64, ptr %i.bgo, align 8, !tbaa !17
  %i.bgq = and i64 %i.bgp, %i.bgn                 ; 2 uses
  %i.bgr = trunc nuw nsw i32 %i.bfz to i8
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %bb.bu
  %indvars.iv.i18.i = phi i64 [ %indvars.iv.next.i19.i, %bb.bv ], [ 0, %bb.bu ] ; 5 uses
  %.0157.i.i = phi i64 [ %i.bgv, %bb.bv ], [ %i.bgq, %bb.bu ] ; 3 uses
  %i.bgs = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0157.i.i, i1 true)
  %i.bgt = trunc nuw nsw i64 %i.bgs to i8
  %i.bgu = add i64 %.0157.i.i, -1
  %i.bgv = and i64 %i.bgu, %.0157.i.i             ; 2 uses
  %i.bgw = xor i8 %i.bgt, %i.bgr
  %indvars.iv.next.i19.i = add nuw nsw i64 %indvars.iv.i18.i, 1 ; 3 uses
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i18.i
  store i8 %i.bgw, ptr %i.bgx, align 1, !tbaa !95
  %.not.i20.i = icmp eq i64 %i.bgv, 0
  br i1 %.not.i20.i, label %bb.bw, label %bb.bv, !llvm.loop !317

bb.bw:                                            ; preds = %bb.bv
  %i.bgy = trunc nuw i64 %indvars.iv.next.i19.i to i32
  %i.bgz = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i19.i
  %.not17.i.i.i.i = icmp eq i64 %indvars.iv.i18.i, 0
  %.pre297.i.i = load i8, ptr %i.a, align 1, !tbaa !95 ; 3 uses
  br i1 %.not17.i.i.i.i, label %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.bw
  %i.bha = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %.phi.trans.insert.i.i = zext i8 %.pre297.i.i to i64
  %.phi.trans.insert295.i.i = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %.phi.trans.insert.i.i
  %.pre296.i.i = load i32, ptr %.phi.trans.insert295.i.i, align 4, !tbaa !89 ; 2 uses
  %xtraiter510 = and i64 %indvars.iv.i18.i, 3     ; 2 uses
  %lcmp.mod511.not = icmp eq i64 %xtraiter510, 0
  br i1 %lcmp.mod511.not, label %.lr.ph.i.i.i21.i.prol.loopexit, label %.lr.ph.i.i.i21.i.prol

.lr.ph.i.i.i21.i.prol:                            ; preds = %.lr.ph.i.i.preheader.i.i, %.lr.ph.i.i.i21.i.prol
  %i.bhb = phi i32 [ %i.bhj, %.lr.ph.i.i.i21.i.prol ], [ %.pre296.i.i, %.lr.ph.i.i.preheader.i.i ] ; 2 uses
  %i.bhc = phi ptr [ %i.bhi, %.lr.ph.i.i.i21.i.prol ], [ %i.bha, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %.018.i.i.i.i.prol = phi ptr [ %spec.select.i.i.i.i.prol, %.lr.ph.i.i.i21.i.prol ], [ %i.a, %.lr.ph.i.i.preheader.i.i ]
  %prol.iter512 = phi i64 [ %prol.iter512.next, %.lr.ph.i.i.i21.i.prol ], [ 0, %.lr.ph.i.i.preheader.i.i ]
  %i.bhd = load i8, ptr %i.bhc, align 1, !tbaa !95
  %i.bhe = zext i8 %i.bhd to i64
  %i.bhf = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.bhe
  %i.bhg = load i32, ptr %i.bhf, align 4, !tbaa !89 ; 2 uses
  %i.bhh = icmp slt i32 %i.bhb, %i.bhg
  %spec.select.i.i.i.i.prol = select i1 %i.bhh, ptr %i.bhc, ptr %.018.i.i.i.i.prol ; 3 uses
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bhc, i64 1 ; 2 uses
  %i.bhj = call i32 @llvm.smax.i32(i32 %i.bhb, i32 %i.bhg) ; 2 uses
  %prol.iter512.next = add i64 %prol.iter512, 1   ; 2 uses
  %prol.iter512.cmp.not = icmp eq i64 %prol.iter512.next, %xtraiter510
  br i1 %prol.iter512.cmp.not, label %.lr.ph.i.i.i21.i.prol.loopexit, label %.lr.ph.i.i.i21.i.prol, !llvm.loop !318

.lr.ph.i.i.i21.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i21.i.prol, %.lr.ph.i.i.preheader.i.i
  %spec.select.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader.i.i ], [ %spec.select.i.i.i.i.prol, %.lr.ph.i.i.i21.i.prol ]
  %.unr = phi i32 [ %.pre296.i.i, %.lr.ph.i.i.preheader.i.i ], [ %i.bhj, %.lr.ph.i.i.i21.i.prol ]
  %.unr513 = phi ptr [ %i.bha, %.lr.ph.i.i.preheader.i.i ], [ %i.bhi, %.lr.ph.i.i.i21.i.prol ]
  %.018.i.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i.preheader.i.i ], [ %spec.select.i.i.i.i.prol, %.lr.ph.i.i.i21.i.prol ]
  %i.bhk = icmp samesign ult i64 %indvars.iv.i18.i, 4
  br i1 %i.bhk, label %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i21.i

.lr.ph.i.i.i21.i:                                 ; preds = %.lr.ph.i.i.i21.i.prol.loopexit, %.lr.ph.i.i.i21.i
  %i.bhl = phi i32 [ %i.bio, %.lr.ph.i.i.i21.i ], [ %.unr, %.lr.ph.i.i.i21.i.prol.loopexit ] ; 2 uses
  %i.bhm = phi ptr [ %i.bin, %.lr.ph.i.i.i21.i ], [ %.unr513, %.lr.ph.i.i.i21.i.prol.loopexit ] ; 6 uses
  %.018.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.3, %.lr.ph.i.i.i21.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i21.i.prol.loopexit ]
  %i.bhn = load i8, ptr %i.bhm, align 1, !tbaa !95
  %i.bho = zext i8 %i.bhn to i64
  %i.bhp = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.bho
  %i.bhq = load i32, ptr %i.bhp, align 4, !tbaa !89 ; 2 uses
  %i.bhr = icmp slt i32 %i.bhl, %i.bhq
  %spec.select.i.i.i.i = select i1 %i.bhr, ptr %i.bhm, ptr %.018.i.i.i.i
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bhm, i64 1 ; 2 uses
  %i.bht = call i32 @llvm.smax.i32(i32 %i.bhl, i32 %i.bhq) ; 2 uses
  %i.bhu = load i8, ptr %i.bhs, align 1, !tbaa !95
  %i.bhv = zext i8 %i.bhu to i64
  %i.bhw = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.bhv
  %i.bhx = load i32, ptr %i.bhw, align 4, !tbaa !89 ; 2 uses
  %i.bhy = icmp slt i32 %i.bht, %i.bhx
  %spec.select.i.i.i.i.1 = select i1 %i.bhy, ptr %i.bhs, ptr %spec.select.i.i.i.i
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.bhm, i64 2 ; 2 uses
  %i.bia = call i32 @llvm.smax.i32(i32 %i.bht, i32 %i.bhx) ; 2 uses
  %i.bib = load i8, ptr %i.bhz, align 1, !tbaa !95
  %i.bic = zext i8 %i.bib to i64
  %i.bid = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.bic
  %i.bie = load i32, ptr %i.bid, align 4, !tbaa !89 ; 2 uses
  %i.bif = icmp slt i32 %i.bia, %i.bie
  %spec.select.i.i.i.i.2 = select i1 %i.bif, ptr %i.bhz, ptr %spec.select.i.i.i.i.1
  %i.big = getelementptr inbounds nuw i8, ptr %i.bhm, i64 3 ; 2 uses
  %i.bih = call i32 @llvm.smax.i32(i32 %i.bia, i32 %i.bie) ; 2 uses
  %i.bii = load i8, ptr %i.big, align 1, !tbaa !95
  %i.bij = zext i8 %i.bii to i64
  %i.bik = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.bij
  %i.bil = load i32, ptr %i.bik, align 4, !tbaa !89 ; 2 uses
  %i.bim = icmp slt i32 %i.bih, %i.bil
  %spec.select.i.i.i.i.3 = select i1 %i.bim, ptr %i.big, ptr %spec.select.i.i.i.i.2 ; 2 uses
  %i.bin = getelementptr inbounds nuw i8, ptr %i.bhm, i64 4 ; 2 uses
  %.not.i.i.i22.i.3 = icmp eq ptr %i.bin, %i.bgz
  %i.bio = call i32 @llvm.smax.i32(i32 %i.bih, i32 %i.bil)
  br i1 %.not.i.i.i22.i.3, label %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i21.i, !llvm.loop !319

_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i21.i, %.lr.ph.i.i.i21.i.prol.loopexit
  %spec.select.i.i.i.i.lcssa = phi ptr [ %spec.select.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i21.i.prol.loopexit ], [ %spec.select.i.i.i.i.3, %.lr.ph.i.i.i21.i ] ; 2 uses
  %.pre.i23.i = load i8, ptr %spec.select.i.i.i.i.lcssa, align 1, !tbaa !95
  br label %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.i.i

_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.i.i: ; preds = %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.loopexit.i.i, %bb.bw
  %i.bip = phi i8 [ %.pre297.i.i, %bb.bw ], [ %.pre.i23.i, %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.loopexit.i.i ]
  %.011.i.i.i.i = phi ptr [ %i.a, %bb.bw ], [ %spec.select.i.i.i.i.lcssa, %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.loopexit.i.i ]
  store i8 %i.bip, ptr %i.a, align 1, !tbaa !95
  store i8 %.pre297.i.i, ptr %.011.i.i.i.i, align 1, !tbaa !95
  %i.biq = load i8, ptr %i.a, align 1, !tbaa !95
  %i.bir = and i8 %i.biq, 7                       ; 2 uses
  %i.bis = xor i8 %i.bir, 7
  %.sroa.speculated.i.i.i = call i8 @llvm.umin.i8(i8 %i.bis, i8 %i.bir)
  %i.bit = zext nneg i8 %.sroa.speculated.i.i.i to i64
  br label %bb.bx

bb.bx:                                            ; preds = %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.i.i, %bb.bt
  %.0125.i.i = phi i64 [ %i.bit, %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.i.i ], [ 0, %bb.bt ] ; 2 uses
  %.0124.i.i = phi i64 [ %i.bgq, %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.i.i ], [ 0, %bb.bt ]
  %.1119.i.i = phi i32 [ %i.bgy, %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.i.i ], [ 0, %bb.bt ] ; 8 uses
  %i.biu = getelementptr inbounds nuw i8, ptr %.0.val.i.i, i64 56 ; 2 uses
  %i.biv = getelementptr inbounds nuw [240 x i8], ptr %i.biu, i64 %.0125.i.i ; 7 uses
  %i.biw = load i8, ptr %i.biv, align 8, !tbaa !299
  %i.bix = and i8 %i.biw, 1
  %i.biy = icmp eq i8 %i.bgb, %i.bix
  %i.biz = xor i1 %i.bge, true
  %spec.select.i.i.i = and i1 %i.bfp, %i.biz
  %or.cond.i.i = select i1 %i.biy, i1 true, i1 %spec.select.i.i.i
  br i1 %or.cond.i.i, label %_ZN9Stockfish12_GLOBAL__N_113check_dtz_stmEPNS0_7TBTableILNS0_6TBTypeE1EEEiNS_4FileE.exit.thread.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  store i32 -1, ptr %1, align 4, !tbaa !234
  br label %_ZN9Stockfish12_GLOBAL__N_114do_probe_tableINS0_7TBTableILNS0_6TBTypeE1EEEiEET0_RKNS_8PositionEPT_NS_10Tablebases8WDLScoreEPNSB_10ProbeStateE.exit.i

_ZN9Stockfish12_GLOBAL__N_113check_dtz_stmEPNS0_7TBTableILNS0_6TBTypeE1EEEiNS_4FileE.exit.thread.i.i: ; preds = %bb.bx
  %i.bja = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bjb = load i64, ptr %i.bja, align 8, !tbaa !17
  %i.bjc = xor i64 %i.bjb, %.0124.i.i
  %i.bjd = trunc nuw nsw i32 %i.bfz to i8
  %i.bje = trunc nuw nsw i32 %i.bfy to i8
  %i.bjf = sext i32 %.1119.i.i to i64             ; 4 uses
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bz, %_ZN9Stockfish12_GLOBAL__N_113check_dtz_stmEPNS0_7TBTableILNS0_6TBTypeE1EEEiNS_4FileE.exit.thread.i.i
  %indvars.iv237.i.i = phi i64 [ %indvars.iv.next238.i.i, %bb.bz ], [ %i.bjf, %_ZN9Stockfish12_GLOBAL__N_113check_dtz_stmEPNS0_7TBTableILNS0_6TBTypeE1EEEiNS_4FileE.exit.thread.i.i ] ; 7 uses
  %.1.i14.i = phi i64 [ %i.bjj, %bb.bz ], [ %i.bjc, %_ZN9Stockfish12_GLOBAL__N_113check_dtz_stmEPNS0_7TBTableILNS0_6TBTypeE1EEEiNS_4FileE.exit.thread.i.i ] ; 3 uses
  %indvars.iv.next238.i.i = add i64 %indvars.iv237.i.i, 1 ; 10 uses
  %i.bjg = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.1.i14.i, i1 true) ; 2 uses
  %i.bjh = trunc nuw nsw i64 %i.bjg to i8
  %i.bji = add i64 %.1.i14.i, -1
  %i.bjj = and i64 %i.bji, %.1.i14.i              ; 2 uses
  %i.bjk = xor i8 %i.bjh, %i.bjd
  %i.bjl = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv237.i.i
  store i8 %i.bjk, ptr %i.bjl, align 1, !tbaa !95
  %i.bjm = getelementptr inbounds nuw i8, ptr %0, i64 %i.bjg
  %i.bjn = load i8, ptr %i.bjm, align 1, !tbaa !241
  %i.bjo = xor i8 %i.bjn, %i.bje
  %i.bjp = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv237.i.i
  store i8 %i.bjo, ptr %i.bjp, align 1, !tbaa !241
  %.not134.i.i = icmp eq i64 %i.bjj, 0
  br i1 %.not134.i.i, label %bb.ca, label %bb.bz, !llvm.loop !320

bb.ca:                                            ; preds = %bb.bz
  %indvars68.le.i = trunc i64 %indvars.iv.next238.i.i to i32
  %indvars67.i = trunc i64 %indvars.iv237.i.i to i32
  %i.bjq = icmp slt i32 %.1119.i.i, %indvars67.i
  br i1 %i.bjq, label %.lr.ph181.i.i, label %._crit_edge.i.i

.lr.ph181.i.i:                                    ; preds = %bb.ca
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.biv, i64 128
  %sext.i = shl i64 %indvars.iv237.i.i, 32
  %wide.trip.count.i.i = ashr exact i64 %sext.i, 32
  br label %.lr.ph.i17.i

._crit_edge.i.i:                                  ; preds = %.loopexit168.i.i, %bb.ca
  %i.bjs = load i8, ptr %i.a, align 1, !tbaa !95
  %i.bjt = and i8 %i.bjs, 4
  %.not159.i.i = icmp eq i8 %i.bjt, 0
  %.not135182.i.i = icmp slt i64 %indvars.iv237.i.i, 0 ; 2 uses
  %or.cond214.i.i = or i1 %.not135182.i.i, %.not159.i.i
  br i1 %or.cond214.i.i, label %.loopexit167.i.i, label %.lr.ph184.preheader.i.i

.lr.ph184.preheader.i.i:                          ; preds = %._crit_edge.i.i
  %wide.trip.count257.i.i = and i64 %indvars.iv.next238.i.i, 4294967295
  %i.bju = add nsw i64 %wide.trip.count257.i.i, -1
  %xtraiter514 = and i64 %indvars.iv.next238.i.i, 3 ; 3 uses
  %i.bjv = icmp ult i64 %i.bju, 3
  br i1 %i.bjv, label %.lr.ph184.i.i.epil.preheader, label %.lr.ph184.preheader.i.i.new

.lr.ph184.preheader.i.i.new:                      ; preds = %.lr.ph184.preheader.i.i
  %unroll_iter = and i64 %indvars.iv.next238.i.i, 4294967292
  br label %.lr.ph184.i.i

.lr.ph.i17.i:                                     ; preds = %.loopexit168.i.i, %.lr.ph181.i.i
  %indvars.iv247.i.i = phi i64 [ %i.bjf, %.lr.ph181.i.i ], [ %indvars.iv.next248.i.i, %.loopexit168.i.i ] ; 4 uses
  %indvars.iv.next248.i.i = add nsw i64 %indvars.iv247.i.i, 1 ; 3 uses
  %i.bjw = getelementptr inbounds i8, ptr %i.bjr, i64 %indvars.iv247.i.i
  %i.bjx = load i8, ptr %i.bjw, align 1, !tbaa !241 ; 2 uses
  br label %bb.cc

bb.cb:                                            ; preds = %bb.cc
  %indvars.iv.next243.i.i = add nsw i64 %indvars.iv242.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next243.i.i to i32
  %exitcond.not.i.i = icmp eq i32 %indvars68.le.i, %lftr.wideiv.i.i
  br i1 %exitcond.not.i.i, label %.loopexit168.i.i, label %bb.cc, !llvm.loop !321

bb.cc:                                            ; preds = %bb.cb, %.lr.ph.i17.i
  %indvars.iv242.i.i = phi i64 [ %indvars.iv.next248.i.i, %.lr.ph.i17.i ], [ %indvars.iv.next243.i.i, %bb.cb ] ; 4 uses
  %i.bjy = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv242.i.i
  %i.bjz = load i8, ptr %i.bjy, align 1, !tbaa !241
  %i.bka = icmp eq i8 %i.bjx, %i.bjz
  br i1 %i.bka, label %bb.cd, label %bb.cb

bb.cd:                                            ; preds = %bb.cc
  %i.bkb = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv242.i.i
  %i.bkc = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv247.i.i ; 2 uses
  %i.bkd = load i8, ptr %i.bkc, align 1, !tbaa !241
  store i8 %i.bjx, ptr %i.bkc, align 1, !tbaa !241
  store i8 %i.bkd, ptr %i.bkb, align 1, !tbaa !241
  %i.bke = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv247.i.i ; 2 uses
  %i.bkf = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv242.i.i ; 2 uses
  %i.bkg = load i8, ptr %i.bke, align 1, !tbaa !95
  %i.bkh = load i8, ptr %i.bkf, align 1, !tbaa !95
  store i8 %i.bkh, ptr %i.bke, align 1, !tbaa !95
  store i8 %i.bkg, ptr %i.bkf, align 1, !tbaa !95
  br label %.loopexit168.i.i

.loopexit168.i.i:                                 ; preds = %bb.cb, %bb.cd
  %exitcond252.not.i.i = icmp eq i64 %indvars.iv.next248.i.i, %wide.trip.count.i.i
  br i1 %exitcond252.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i17.i, !llvm.loop !322

.lr.ph184.i.i:                                    ; preds = %.lr.ph184.i.i, %.lr.ph184.preheader.i.i.new
  %indvars.iv253.i.i = phi i64 [ 0, %.lr.ph184.preheader.i.i.new ], [ %indvars.iv.next254.i.i.3, %.lr.ph184.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph184.preheader.i.i.new ], [ %niter.next.3, %.lr.ph184.i.i ]
  %i.bki = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv253.i.i ; 2 uses
  %i.bkj = load i8, ptr %i.bki, align 1, !tbaa !95
  %i.bkk = xor i8 %i.bkj, 7
  store i8 %i.bkk, ptr %i.bki, align 1, !tbaa !95
  %i.bkl = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv253.i.i
  %i.bkm = getelementptr inbounds nuw i8, ptr %i.bkl, i64 1 ; 2 uses
  %i.bkn = load i8, ptr %i.bkm, align 1, !tbaa !95
  %i.bko = xor i8 %i.bkn, 7
  store i8 %i.bko, ptr %i.bkm, align 1, !tbaa !95
  %i.bkp = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv253.i.i
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.bkp, i64 2 ; 2 uses
  %i.bkr = load i8, ptr %i.bkq, align 1, !tbaa !95
  %i.bks = xor i8 %i.bkr, 7
  store i8 %i.bks, ptr %i.bkq, align 1, !tbaa !95
  %i.bkt = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv253.i.i
  %i.bku = getelementptr inbounds nuw i8, ptr %i.bkt, i64 3 ; 2 uses
  %i.bkv = load i8, ptr %i.bku, align 1, !tbaa !95
  %i.bkw = xor i8 %i.bkv, 7
  store i8 %i.bkw, ptr %i.bku, align 1, !tbaa !95
  %indvars.iv.next254.i.i.3 = add nuw nsw i64 %indvars.iv253.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit167.i.i.loopexit.unr-lcssa, label %.lr.ph184.i.i, !llvm.loop !323

end_hunk_0
begin_hunk_1_@_ZN9Stockfish12_GLOBAL__N_111probe_tableILNS0_6TBTypeE0ENS_10Tablebases8WDLScoreEEET0_RKNS_8PositionEPNS3_10ProbeStateES4_:bb.a
bb.bn:                                            ; preds = %bb.bn, %.preheader126.i.i
  %.080157.i.i.epil = phi i32 [ 0, %.preheader126.i.i ], [ %i.sb, %bb.bn ] ; 2 uses
  %.7156.i.i.epil = phi ptr [ %.6159.i.i, %.preheader126.i.i ], [ %i.sa, %bb.bn ] ; 2 uses
  %epil.iter311 = phi i32 [ 0, %.preheader126.i.i ], [ %epil.iter311.next, %bb.bn ]
  %i.rt = and i32 %.080157.i.i.epil, 1
  %i.ru = zext nneg i32 %i.rt to i64
  %gep155.i.i.epil = getelementptr inbounds nuw [960 x i8], ptr %i.hk, i64 %i.ru ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %gep155.i.i.epil, i64 40
  store ptr %.7156.i.i.epil, ptr %i.rv, align 8, !tbaa !312
  %i.rw = getelementptr inbounds nuw i8, ptr %gep155.i.i.epil, i64 48
  %i.rx = load i32, ptr %i.rw, align 8, !tbaa !311
  %i.ry = zext i32 %i.rx to i64
  %i.rz = shl nuw nsw i64 %i.ry, 1
  %i.sa = getelementptr inbounds nuw i8, ptr %.7156.i.i.epil, i64 %i.rz ; 3 uses
  %i.sb = add nuw nsw i32 %.080157.i.i.epil, 1
  %epil.iter311.next = add i32 %epil.iter311, 1   ; 2 uses
  %epil.iter311.cmp.not = icmp eq i32 %epil.iter311.next, %i.hc
  br i1 %epil.iter311.cmp.not, label %.epilog-lcssa313, label %bb.bn, !llvm.loop !449

.epilog-lcssa313:                                 ; preds = %bb.bn
  %i.sc = add nuw nsw i8 %.0121158.i.i, 1         ; 2 uses
  %exitcond207.i.i = icmp eq i8 %i.sc, %i.hq
  br i1 %exitcond207.i.i, label %.preheader.i.i.preheader, label %.preheader126.i.i, !llvm.loop !447

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %bb.bo
  %indvars.iv215.i.i = phi i64 [ %indvars.iv.next216.i.i, %bb.bo ], [ 0, %.preheader.i.i.preheader ] ; 2 uses
  %.8168.i.i = phi ptr [ %.lcssa280, %bb.bo ], [ %.8168.i.i.ph, %.preheader.i.i.preheader ] ; 2 uses
  %i.sd = select i1 %i.qj, i64 %indvars.iv215.i.i, i64 0
  %invariant.gep163.i.i = getelementptr inbounds nuw [240 x i8], ptr %i.hk, i64 %i.sd ; 7 uses
  br i1 %.not.i59.i, label %.epil.preheader329, label %.preheader.i.i.new

.preheader.i.i.new:                               ; preds = %.preheader.i.i
  %i.se = getelementptr inbounds nuw i8, ptr %invariant.gep163.i.i, i64 72
  %i.sf = getelementptr inbounds nuw i8, ptr %invariant.gep163.i.i, i64 4
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !313
  %i.sh = zext i32 %i.sg to i64
  %i.si = getelementptr inbounds nuw i8, ptr %invariant.gep163.i.i, i64 8
  %i.sj = load i64, ptr %i.si, align 8, !tbaa !314
  %i.sk = mul i64 %i.sj, %i.sh
  %i.sl = getelementptr inbounds nuw i8, ptr %invariant.gep163.i.i, i64 1032
  %i.sm = getelementptr inbounds nuw i8, ptr %invariant.gep163.i.i, i64 964
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !313
  %i.so = zext i32 %i.sn to i64
  %i.sp = getelementptr inbounds nuw i8, ptr %invariant.gep163.i.i, i64 968
  %i.sq = load i64, ptr %i.sp, align 8, !tbaa !314
  %i.sr = mul i64 %i.sq, %i.so
  br label %bb.bp

.unr-lcssa328:                                    ; preds = %bb.bp
  store ptr %i.tj, ptr %i.se, align 8, !tbaa !315
  store ptr %i.to, ptr %i.sl, align 8, !tbaa !315
  br i1 %lcmp.mod332.not, label %bb.bo, label %.epil.preheader329

.epil.preheader329:                               ; preds = %.unr-lcssa328, %.preheader.i.i
  %.0166.i.i.epil.init = phi i32 [ 0, %.preheader.i.i ], [ %i.tq, %.unr-lcssa328 ]
  %.9165.i.i.epil.init = phi ptr [ %.8168.i.i, %.preheader.i.i ], [ %i.tp, %.unr-lcssa328 ]
  call void @llvm.assume(i1 %lcmp.mod335)
  %i.ss = ptrtoint ptr %.9165.i.i.epil.init to i64
  %i.st = add i64 %i.ss, 63
  %i.su = and i64 %i.st, -64
  %i.sv = inttoptr i64 %i.su to ptr               ; 2 uses
  %i.sw = and i32 %.0166.i.i.epil.init, 1
  %i.sx = zext nneg i32 %i.sw to i64
  %gep164.i.i.epil = getelementptr inbounds nuw [960 x i8], ptr %invariant.gep163.i.i, i64 %i.sx ; 3 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %gep164.i.i.epil, i64 72
  store ptr %i.sv, ptr %i.sy, align 8, !tbaa !315
  %i.sz = getelementptr inbounds nuw i8, ptr %gep164.i.i.epil, i64 4
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !313
  %i.tb = zext i32 %i.ta to i64
  %i.tc = getelementptr inbounds nuw i8, ptr %gep164.i.i.epil, i64 8
  %i.td = load i64, ptr %i.tc, align 8, !tbaa !314
  %i.te = mul i64 %i.td, %i.tb
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.te
  br label %bb.bo

bb.bo:                                            ; preds = %.unr-lcssa328, %.epil.preheader329
  %.lcssa280 = phi ptr [ %i.tp, %.unr-lcssa328 ], [ %i.tf, %.epil.preheader329 ]
  %indvars.iv.next216.i.i = add nuw nsw i64 %indvars.iv215.i.i, 1 ; 2 uses
  %exitcond219.i.i = icmp eq i64 %indvars.iv.next216.i.i, %wide.trip.count190.i.i
  br i1 %exitcond219.i.i, label %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE0EEEEEvRT_Ph.exit.i, label %.preheader.i.i, !llvm.loop !450

bb.bp:                                            ; preds = %bb.bp, %.preheader.i.i.new
  %.0166.i.i = phi i32 [ 0, %.preheader.i.i.new ], [ %i.tq, %bb.bp ]
  %.9165.i.i = phi ptr [ %.8168.i.i, %.preheader.i.i.new ], [ %i.tp, %bb.bp ]
  %niter337 = phi i32 [ 0, %.preheader.i.i.new ], [ %niter337.next.1, %bb.bp ]
  %i.tg = ptrtoint ptr %.9165.i.i to i64
  %i.th = add i64 %i.tg, 63
  %i.ti = and i64 %i.th, -64
  %i.tj = inttoptr i64 %i.ti to ptr               ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 %i.sk
  %i.tl = ptrtoint ptr %i.tk to i64
  %i.tm = add i64 %i.tl, 63
  %i.tn = and i64 %i.tm, -64
  %i.to = inttoptr i64 %i.tn to ptr               ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 %i.sr ; 3 uses
  %i.tq = add nuw nsw i32 %.0166.i.i, 2           ; 2 uses
  %niter337.next.1 = add i32 %niter337, 2         ; 2 uses
  %niter337.ncmp.1 = icmp eq i32 %niter337.next.1, %unroll_iter336
  br i1 %niter337.ncmp.1, label %.unr-lcssa328, label %bb.bp, !llvm.loop !451

_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE0EEEEEvRT_Ph.exit.i: ; preds = %bb.bo, %_ZN9Stockfish12_GLOBAL__N_16TBFileD1Ev.exit.i
  store atomic i8 1, ptr %.0.val.i release, align 8
  %i.tr = load ptr, ptr %i.gj, align 8, !tbaa !381
  %i.ts = load ptr, ptr %4, align 8, !tbaa !175   ; 2 uses
  %i.tt = icmp eq ptr %i.ts, %i.al
  br i1 %i.tt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE0EEEEEvRT_Ph.exit.i
  %i.tu = load i64, ptr %i.al, align 8, !tbaa !156
  %i.tv = add i64 %i.tu, 1
  call void @_ZdlPvm(ptr noundef %i.ts, i64 noundef %i.tv) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i: ; preds = %_ZN9Stockfish12_GLOBAL__N_13setINS0_7TBTableILNS0_6TBTypeE0EEEEEvRT_Ph.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.tw = load ptr, ptr %3, align 8, !tbaa !175   ; 2 uses
  %i.tx = icmp eq ptr %i.tw, %i.aj
  br i1 %i.tx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i
  %i.ty = load i64, ptr %i.aj, align 8, !tbaa !156
  %i.tz = add i64 %i.ty, 1
  call void @_ZdlPvm(ptr noundef %i.tw, i64 noundef %i.tz) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.ua = load ptr, ptr %2, align 8, !tbaa !175   ; 2 uses
  %i.ub = icmp eq ptr %i.ua, %i.ah
  br i1 %i.ub, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i
  %i.uc = load i64, ptr %i.ah, align 8, !tbaa !156
  %i.ud = add i64 %i.uc, 1
  call void @_ZdlPvm(ptr noundef %i.ua, i64 noundef %i.ud) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i, %bb.h
  %.0.i = phi ptr [ %i.ag, %bb.h ], [ %i.tr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i ]
  %i.ue = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN9Stockfish12_GLOBAL__N_16mappedILNS0_6TBTypeE0EEEPvRNS0_7TBTableIXT_EEERKNS_8PositionEE5mutex) #26 ; 0 uses
  br label %_ZN9Stockfish12_GLOBAL__N_16mappedILNS0_6TBTypeE0EEEPvRNS0_7TBTableIXT_EEERKNS_8PositionE.exit

_ZN9Stockfish12_GLOBAL__N_16mappedILNS0_6TBTypeE0EEEPvRNS0_7TBTableIXT_EEERKNS_8PositionE.exit: ; preds = %bb.e, %bb.bq
  %.1.i = phi ptr [ %i.ab, %bb.e ], [ %.0.i, %bb.bq ]
  %.not11 = icmp eq ptr %.1.i, null
  br i1 %.not11, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_16mappedILNS0_6TBTypeE0EEEPvRNS0_7TBTableIXT_EEERKNS_8PositionE.exit, %_ZN9Stockfish12_GLOBAL__N_18TBTables3getILNS0_6TBTypeE0EEEPNS0_7TBTableIXT_EEEm.exit
  store i32 0, ptr %1, align 4, !tbaa !234
  br label %bb.cw

bb.bs:                                            ; preds = %_ZN9Stockfish12_GLOBAL__N_16mappedILNS0_6TBTypeE0EEEPvRNS0_7TBTableIXT_EEERKNS_8PositionE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.uf = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 32
  %i.ug = load i64, ptr %i.uf, align 8, !tbaa !214 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 40
  %i.ui = load i64, ptr %i.uh, align 8, !tbaa !226
  %i.uj = icmp eq i64 %i.ug, %i.ui
  %i.uk = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.ul = load i8, ptr %i.uk, align 4             ; 2 uses
  %i.um = icmp ne i8 %i.ul, 0
  %i.un = select i1 %i.uj, i1 %i.um, i1 false
  %i.uo = load ptr, ptr %i.m, align 8, !tbaa !245
  %i.up = load i64, ptr %i.uo, align 8, !tbaa !254
  %i.uq = icmp ne i64 %i.up, %i.ug
  %i.ur = select i1 %i.un, i1 true, i1 %i.uq      ; 3 uses
  %i.us = select i1 %i.ur, i32 8, i32 0           ; 2 uses
  %i.ut = select i1 %i.ur, i32 56, i32 0          ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 52 ; 2 uses
  %i.uv = load i8, ptr %i.uu, align 4, !tbaa !205, !range !206, !noundef !207
  %i.uw = trunc nuw i8 %i.uv to i1                ; 2 uses
  br i1 %i.uw, label %bb.bt, label %._crit_edge148.i

._crit_edge148.i:                                 ; preds = %bb.bs
  %.pre149.i = trunc nuw nsw i32 %i.ut to i8
  %.pre150.i = trunc nuw nsw i32 %i.us to i8
  br label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.ux = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 184
  %i.uy = load i8, ptr %i.ux, align 8, !tbaa !241
  %i.uz = trunc nuw nsw i32 %i.us to i8           ; 2 uses
  %i.va = xor i8 %i.uy, %i.uz
  %i.vb = lshr i8 %i.va, 3
  %i.vc = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.vd = zext nneg i8 %i.vb to i64
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %i.vd
  %i.vf = load i64, ptr %i.ve, align 8, !tbaa !17
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.vh = load i64, ptr %i.vg, align 8, !tbaa !17
  %i.vi = and i64 %i.vh, %i.vf                    ; 2 uses
  %i.vj = trunc nuw nsw i32 %i.ut to i8           ; 2 uses
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bu, %bb.bt
  %indvars.iv.i15 = phi i64 [ %indvars.iv.next.i17, %bb.bu ], [ 0, %bb.bt ] ; 5 uses
  %.0.i16 = phi i64 [ %i.vn, %bb.bu ], [ %i.vi, %bb.bt ] ; 3 uses
  %i.vk = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.i16, i1 true)
  %i.vl = trunc nuw nsw i64 %i.vk to i8
  %i.vm = add i64 %.0.i16, -1
  %i.vn = and i64 %i.vm, %.0.i16                  ; 2 uses
  %i.vo = xor i8 %i.vl, %i.vj
  %indvars.iv.next.i17 = add nuw nsw i64 %indvars.iv.i15, 1 ; 3 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i15
  store i8 %i.vo, ptr %i.vp, align 1, !tbaa !95
  %.not.i18 = icmp eq i64 %i.vn, 0
  br i1 %.not.i18, label %bb.bv, label %bb.bu, !llvm.loop !452

bb.bv:                                            ; preds = %bb.bu
  %i.vq = trunc nuw i64 %indvars.iv.next.i17 to i32
  %i.vr = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i17
  %.not17.i.i.i = icmp eq i64 %indvars.iv.i15, 0
  %.pre147.i = load i8, ptr %i.a, align 1, !tbaa !95 ; 3 uses
  br i1 %.not17.i.i.i, label %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.bv
  %i.vs = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %.phi.trans.insert.i = zext i8 %.pre147.i to i64
  %.phi.trans.insert145.i = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %.phi.trans.insert.i
  %.pre146.i = load i32, ptr %.phi.trans.insert145.i, align 4, !tbaa !89 ; 2 uses
  %xtraiter338 = and i64 %indvars.iv.i15, 3       ; 2 uses
  %lcmp.mod339.not = icmp eq i64 %xtraiter338, 0
  br i1 %lcmp.mod339.not, label %.lr.ph.i.i.i19.prol.loopexit, label %.lr.ph.i.i.i19.prol

.lr.ph.i.i.i19.prol:                              ; preds = %.lr.ph.i.i.preheader.i, %.lr.ph.i.i.i19.prol
  %i.vt = phi i32 [ %i.wb, %.lr.ph.i.i.i19.prol ], [ %.pre146.i, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %i.vu = phi ptr [ %i.wa, %.lr.ph.i.i.i19.prol ], [ %i.vs, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %.018.i.i.i.prol = phi ptr [ %spec.select.i.i.i.prol, %.lr.ph.i.i.i19.prol ], [ %i.a, %.lr.ph.i.i.preheader.i ]
  %prol.iter340 = phi i64 [ %prol.iter340.next, %.lr.ph.i.i.i19.prol ], [ 0, %.lr.ph.i.i.preheader.i ]
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !95
  %i.vw = zext i8 %i.vv to i64
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.vw
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !89 ; 2 uses
  %i.vz = icmp slt i32 %i.vt, %i.vy
  %spec.select.i.i.i.prol = select i1 %i.vz, ptr %i.vu, ptr %.018.i.i.i.prol ; 3 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vu, i64 1 ; 2 uses
  %i.wb = call i32 @llvm.smax.i32(i32 %i.vt, i32 %i.vy) ; 2 uses
  %prol.iter340.next = add i64 %prol.iter340, 1   ; 2 uses
  %prol.iter340.cmp.not = icmp eq i64 %prol.iter340.next, %xtraiter338
  br i1 %prol.iter340.cmp.not, label %.lr.ph.i.i.i19.prol.loopexit, label %.lr.ph.i.i.i19.prol, !llvm.loop !453

.lr.ph.i.i.i19.prol.loopexit:                     ; preds = %.lr.ph.i.i.i19.prol, %.lr.ph.i.i.preheader.i
  %spec.select.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader.i ], [ %spec.select.i.i.i.prol, %.lr.ph.i.i.i19.prol ]
  %.unr = phi i32 [ %.pre146.i, %.lr.ph.i.i.preheader.i ], [ %i.wb, %.lr.ph.i.i.i19.prol ]
  %.unr341 = phi ptr [ %i.vs, %.lr.ph.i.i.preheader.i ], [ %i.wa, %.lr.ph.i.i.i19.prol ]
  %.018.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i.preheader.i ], [ %spec.select.i.i.i.prol, %.lr.ph.i.i.i19.prol ]
  %i.wc = icmp samesign ult i64 %indvars.iv.i15, 4
  br i1 %i.wc, label %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.loopexit.i, label %.lr.ph.i.i.i19

.lr.ph.i.i.i19:                                   ; preds = %.lr.ph.i.i.i19.prol.loopexit, %.lr.ph.i.i.i19
  %i.wd = phi i32 [ %i.xg, %.lr.ph.i.i.i19 ], [ %.unr, %.lr.ph.i.i.i19.prol.loopexit ] ; 2 uses
  %i.we = phi ptr [ %i.xf, %.lr.ph.i.i.i19 ], [ %.unr341, %.lr.ph.i.i.i19.prol.loopexit ] ; 6 uses
  %.018.i.i.i = phi ptr [ %spec.select.i.i.i.3, %.lr.ph.i.i.i19 ], [ %.018.i.i.i.unr, %.lr.ph.i.i.i19.prol.loopexit ]
  %i.wf = load i8, ptr %i.we, align 1, !tbaa !95
  %i.wg = zext i8 %i.wf to i64
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.wg
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !89 ; 2 uses
  %i.wj = icmp slt i32 %i.wd, %i.wi
  %spec.select.i.i.i = select i1 %i.wj, ptr %i.we, ptr %.018.i.i.i
  %i.wk = getelementptr inbounds nuw i8, ptr %i.we, i64 1 ; 2 uses
  %i.wl = call i32 @llvm.smax.i32(i32 %i.wd, i32 %i.wi) ; 2 uses
  %i.wm = load i8, ptr %i.wk, align 1, !tbaa !95
  %i.wn = zext i8 %i.wm to i64
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.wn
  %i.wp = load i32, ptr %i.wo, align 4, !tbaa !89 ; 2 uses
  %i.wq = icmp slt i32 %i.wl, %i.wp
  %spec.select.i.i.i.1 = select i1 %i.wq, ptr %i.wk, ptr %spec.select.i.i.i
  %i.wr = getelementptr inbounds nuw i8, ptr %i.we, i64 2 ; 2 uses
  %i.ws = call i32 @llvm.smax.i32(i32 %i.wl, i32 %i.wp) ; 2 uses
  %i.wt = load i8, ptr %i.wr, align 1, !tbaa !95
  %i.wu = zext i8 %i.wt to i64
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.wu
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !89 ; 2 uses
  %i.wx = icmp slt i32 %i.ws, %i.ww
  %spec.select.i.i.i.2 = select i1 %i.wx, ptr %i.wr, ptr %spec.select.i.i.i.1
  %i.wy = getelementptr inbounds nuw i8, ptr %i.we, i64 3 ; 2 uses
  %i.wz = call i32 @llvm.smax.i32(i32 %i.ws, i32 %i.ww) ; 2 uses
  %i.xa = load i8, ptr %i.wy, align 1, !tbaa !95
  %i.xb = zext i8 %i.xa to i64
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.xb
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !89 ; 2 uses
  %i.xe = icmp slt i32 %i.wz, %i.xd
  %spec.select.i.i.i.3 = select i1 %i.xe, ptr %i.wy, ptr %spec.select.i.i.i.2 ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.we, i64 4 ; 2 uses
  %.not.i.i.i20.3 = icmp eq ptr %i.xf, %i.vr
  %i.xg = call i32 @llvm.smax.i32(i32 %i.wz, i32 %i.xd)
  br i1 %.not.i.i.i20.3, label %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.loopexit.i, label %.lr.ph.i.i.i19, !llvm.loop !319

_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i19, %.lr.ph.i.i.i19.prol.loopexit
  %spec.select.i.i.i.lcssa = phi ptr [ %spec.select.i.i.i.lcssa.unr, %.lr.ph.i.i.i19.prol.loopexit ], [ %spec.select.i.i.i.3, %.lr.ph.i.i.i19 ] ; 2 uses
  %.pre.i = load i8, ptr %spec.select.i.i.i.lcssa, align 1, !tbaa !95
  br label %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.i

_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.i: ; preds = %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.loopexit.i, %bb.bv
  %i.xh = phi i8 [ %.pre147.i, %bb.bv ], [ %.pre.i, %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.loopexit.i ]
  %.011.i.i.i = phi ptr [ %i.a, %bb.bv ], [ %spec.select.i.i.i.lcssa, %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.loopexit.i ]
  store i8 %i.xh, ptr %i.a, align 1, !tbaa !95
  store i8 %.pre147.i, ptr %.011.i.i.i, align 1, !tbaa !95
  %i.xi = load i8, ptr %i.a, align 1, !tbaa !95
  %i.xj = and i8 %i.xi, 7                         ; 2 uses
  %i.xk = xor i8 %i.xj, 7
  %.sroa.speculated.i.i = call i8 @llvm.umin.i8(i8 %i.xk, i8 %i.xj)
  %i.xl = zext nneg i8 %.sroa.speculated.i.i to i64
  br label %bb.bw

bb.bw:                                            ; preds = %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.i, %._crit_edge148.i
  %.pre-phi151.i = phi i8 [ %.pre150.i, %._crit_edge148.i ], [ %i.uz, %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.i ]
  %.pre-phi.i = phi i8 [ %.pre149.i, %._crit_edge148.i ], [ %i.vj, %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.i ]
  %i.xm = phi i64 [ 0, %._crit_edge148.i ], [ %i.xl, %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.i ]
  %.0124.i = phi i64 [ 0, %._crit_edge148.i ], [ %i.vi, %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.i ]
  %.1119.i = phi i32 [ 0, %._crit_edge148.i ], [ %i.vq, %_ZSt11max_elementIPN9Stockfish6SquareEPFbS1_S1_EET_S5_S5_T0_.exit.i ] ; 8 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.xo = load i64, ptr %i.xn, align 8, !tbaa !17
  %i.xp = xor i64 %i.xo, %.0124.i
  %i.xq = sext i32 %.1119.i to i64                ; 4 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bx, %bb.bw
  %indvars.iv87.i = phi i64 [ %indvars.iv.next88.i, %bb.bx ], [ %i.xq, %bb.bw ] ; 7 uses
  %.1.i13 = phi i64 [ %i.xu, %bb.bx ], [ %i.xp, %bb.bw ] ; 3 uses
  %indvars.iv.next88.i = add i64 %indvars.iv87.i, 1 ; 10 uses
  %i.xr = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.1.i13, i1 true) ; 2 uses
  %i.xs = trunc nuw nsw i64 %i.xr to i8
  %i.xt = add i64 %.1.i13, -1
  %i.xu = and i64 %i.xt, %.1.i13                  ; 2 uses
  %i.xv = xor i8 %.pre-phi.i, %i.xs
  %i.xw = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv87.i
  store i8 %i.xv, ptr %i.xw, align 1, !tbaa !95
  %i.xx = getelementptr inbounds nuw i8, ptr %0, i64 %i.xr
  %i.xy = load i8, ptr %i.xx, align 1, !tbaa !241
  %i.xz = xor i8 %i.xy, %.pre-phi151.i
  %i.ya = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv87.i
  store i8 %i.xz, ptr %i.ya, align 1, !tbaa !241
  %.not134.i = icmp eq i64 %i.xu, 0
  br i1 %.not134.i, label %bb.by, label %bb.bx, !llvm.loop !454

bb.by:                                            ; preds = %bb.bx
  %indvars71.le = trunc i64 %indvars.iv.next88.i to i32
  %indvars70 = trunc i64 %indvars.iv87.i to i32
  %i.yb = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 56
  %.tr.i = trunc i8 %i.ul to i1
  %.narrow.i = xor i1 %i.ur, %.tr.i
  %i.yc = zext i1 %.narrow.i to i64
  %i.yd = getelementptr inbounds nuw [960 x i8], ptr %i.yb, i64 %i.yc
  %i.ye = getelementptr inbounds nuw [240 x i8], ptr %i.yd, i64 %i.xm ; 6 uses
  %i.yf = icmp slt i32 %.1119.i, %indvars70
  br i1 %i.yf, label %.lr.ph32.i, label %._crit_edge.i

.lr.ph32.i:                                       ; preds = %bb.by
  %i.yg = getelementptr inbounds nuw i8, ptr %i.ye, i64 128
  %sext = shl i64 %indvars.iv87.i, 32
  %wide.trip.count.i = ashr exact i64 %sext, 32
  br label %.lr.ph.i14

._crit_edge.i:                                    ; preds = %.loopexit19.i, %bb.by
  %i.yh = load i8, ptr %i.a, align 1, !tbaa !95
  %i.yi = and i8 %i.yh, 4
  %.not10.i = icmp eq i8 %i.yi, 0
  %.not13533.i = icmp slt i64 %indvars.iv87.i, 0  ; 2 uses
  %or.cond.i = or i1 %.not13533.i, %.not10.i
  br i1 %or.cond.i, label %.loopexit18.i, label %.lr.ph35.preheader.i

.lr.ph35.preheader.i:                             ; preds = %._crit_edge.i
  %wide.trip.count107.i = and i64 %indvars.iv.next88.i, 4294967295
  %i.yj = add nsw i64 %wide.trip.count107.i, -1
  %xtraiter342 = and i64 %indvars.iv.next88.i, 3  ; 3 uses
  %i.yk = icmp ult i64 %i.yj, 3
  br i1 %i.yk, label %.lr.ph35.i.epil.preheader, label %.lr.ph35.preheader.i.new

.lr.ph35.preheader.i.new:                         ; preds = %.lr.ph35.preheader.i
  %unroll_iter346 = and i64 %indvars.iv.next88.i, 4294967292
  br label %.lr.ph35.i

.lr.ph.i14:                                       ; preds = %.loopexit19.i, %.lr.ph32.i
  %indvars.iv97.i = phi i64 [ %i.xq, %.lr.ph32.i ], [ %indvars.iv.next98.i, %.loopexit19.i ] ; 4 uses
  %indvars.iv.next98.i = add nsw i64 %indvars.iv97.i, 1 ; 3 uses
  %i.yl = getelementptr inbounds i8, ptr %i.yg, i64 %indvars.iv97.i
  %i.ym = load i8, ptr %i.yl, align 1, !tbaa !241 ; 2 uses
  br label %bb.ca

bb.bz:                                            ; preds = %bb.ca
  %indvars.iv.next93.i = add nsw i64 %indvars.iv92.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next93.i to i32
  %exitcond.not.i = icmp eq i32 %indvars71.le, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %.loopexit19.i, label %bb.ca, !llvm.loop !455

bb.ca:                                            ; preds = %bb.bz, %.lr.ph.i14
  %indvars.iv92.i = phi i64 [ %indvars.iv.next98.i, %.lr.ph.i14 ], [ %indvars.iv.next93.i, %bb.bz ] ; 4 uses
  %i.yn = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv92.i
  %i.yo = load i8, ptr %i.yn, align 1, !tbaa !241
  %i.yp = icmp eq i8 %i.ym, %i.yo
  br i1 %i.yp, label %bb.cb, label %bb.bz

bb.cb:                                            ; preds = %bb.ca
  %i.yq = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv92.i
  %i.yr = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv97.i ; 2 uses
  %i.ys = load i8, ptr %i.yr, align 1, !tbaa !241
  store i8 %i.ym, ptr %i.yr, align 1, !tbaa !241
  store i8 %i.ys, ptr %i.yq, align 1, !tbaa !241
  %i.yt = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv97.i ; 2 uses
  %i.yu = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv92.i ; 2 uses
  %i.yv = load i8, ptr %i.yt, align 1, !tbaa !95
  %i.yw = load i8, ptr %i.yu, align 1, !tbaa !95
  store i8 %i.yw, ptr %i.yt, align 1, !tbaa !95
  store i8 %i.yv, ptr %i.yu, align 1, !tbaa !95
  br label %.loopexit19.i

.loopexit19.i:                                    ; preds = %bb.bz, %bb.cb
  %exitcond102.not.i = icmp eq i64 %indvars.iv.next98.i, %wide.trip.count.i
  br i1 %exitcond102.not.i, label %._crit_edge.i, label %.lr.ph.i14, !llvm.loop !456

.lr.ph35.i:                                       ; preds = %.lr.ph35.i, %.lr.ph35.preheader.i.new
  %indvars.iv103.i = phi i64 [ 0, %.lr.ph35.preheader.i.new ], [ %indvars.iv.next104.i.3, %.lr.ph35.i ] ; 5 uses
  %niter347 = phi i64 [ 0, %.lr.ph35.preheader.i.new ], [ %niter347.next.3, %.lr.ph35.i ]
  %i.yx = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv103.i ; 2 uses
  %i.yy = load i8, ptr %i.yx, align 1, !tbaa !95
  %i.yz = xor i8 %i.yy, 7
  store i8 %i.yz, ptr %i.yx, align 1, !tbaa !95
  %i.za = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv103.i
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 1 ; 2 uses
  %i.zc = load i8, ptr %i.zb, align 1, !tbaa !95
  %i.zd = xor i8 %i.zc, 7
  store i8 %i.zd, ptr %i.zb, align 1, !tbaa !95
  %i.ze = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv103.i
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 2 ; 2 uses
  %i.zg = load i8, ptr %i.zf, align 1, !tbaa !95
  %i.zh = xor i8 %i.zg, 7
  store i8 %i.zh, ptr %i.zf, align 1, !tbaa !95
  %i.zi = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv103.i
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 3 ; 2 uses
  %i.zk = load i8, ptr %i.zj, align 1, !tbaa !95
  %i.zl = xor i8 %i.zk, 7
  store i8 %i.zl, ptr %i.zj, align 1, !tbaa !95
  %indvars.iv.next104.i.3 = add nuw nsw i64 %indvars.iv103.i, 4 ; 2 uses
  %niter347.next.3 = add i64 %niter347, 4         ; 2 uses
  %niter347.ncmp.3 = icmp eq i64 %niter347.next.3, %unroll_iter346
  br i1 %niter347.ncmp.3, label %.loopexit18.i.loopexit.unr-lcssa, label %.lr.ph35.i, !llvm.loop !457

.loopexit18.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph35.i
  %lcmp.mod344.not = icmp eq i64 %xtraiter342, 0
  br i1 %lcmp.mod344.not, label %.loopexit18.i, label %.lr.ph35.i.epil.preheader

.lr.ph35.i.epil.preheader:                        ; preds = %.loopexit18.i.loopexit.unr-lcssa, %.lr.ph35.preheader.i
  %indvars.iv103.i.epil.init = phi i64 [ 0, %.lr.ph35.preheader.i ], [ %indvars.iv.next104.i.3, %.loopexit18.i.loopexit.unr-lcssa ]
  %lcmp.mod345 = icmp ne i64 %xtraiter342, 0
  call void @llvm.assume(i1 %lcmp.mod345)
  br label %.lr.ph35.i.epil
end_hunk_1
