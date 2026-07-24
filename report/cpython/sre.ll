inline.NumInlined: 357
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@sre_ucs1_match:bb.a
  %i.bbo = getelementptr i8, ptr %i.bbn, i64 %i.bay ; 5 uses
  %i.bbp = add i64 %i.bbm, 56
  store i64 %i.bbp, ptr %i.e, align 8, !tbaa !120
  %i.bbq = getelementptr i8, ptr %.9, i64 12      ; 2 uses
  %i.bbr = getelementptr i8, ptr %i.bbo, i64 24
  store ptr %i.bbq, ptr %i.bbr, align 8, !tbaa !133
  %i.bbs = getelementptr i8, ptr %i.bbo, i64 40
  store i32 0, ptr %i.bbs, align 8, !tbaa !125
  %i.bbt = getelementptr i8, ptr %i.bbo, i64 44
  store i32 15, ptr %i.bbt, align 4, !tbaa !124
  %i.bbu = getelementptr i8, ptr %i.bbo, i64 48
  store i64 %.81487, ptr %i.bbu, align 8, !tbaa !122
  br label %.backedge1909.backedge

bb.oz:                                            ; preds = %bb.sn
  br i1 %i.brf, label %bb.pa, label %bb.pb

bb.pa:                                            ; preds = %bb.oz
  %i.bbv = add nuw i32 %i.bre, 1
  %i.bbw = sext i32 %i.bbv to i64
  %i.bbx = shl nsw i64 %i.bbw, 3
  %i.bby = sub i64 %i.bph, %i.bbx
  store i64 %i.bby, ptr %i.e, align 8, !tbaa !120
  br label %bb.pb

bb.pb:                                            ; preds = %bb.oz, %bb.pa
  %i.bbz = load i64, ptr %i.bpk, align 8, !tbaa !137
  %i.bca = add i64 %i.bbz, 1                      ; 2 uses
  store i64 %i.bca, ptr %i.bpk, align 8, !tbaa !137
  br label %bb.ok, !llvm.loop !148

bb.pc:                                            ; preds = %bb.sn
  br i1 %i.brf, label %bb.pd, label %bb.pe

bb.pd:                                            ; preds = %bb.pc
  %i.bcb = add nuw i32 %i.bre, 1
  %i.bcc = sext i32 %i.bcb to i64
  %i.bcd = shl nsw i64 %i.bcc, 3                  ; 3 uses
  %i.bce = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.bcf = getelementptr i8, ptr %i.bpj, i64 %i.bph
  %i.bcg = sub nsw i64 0, %i.bcd
  %i.bch = getelementptr i8, ptr %i.bcf, i64 %i.bcg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bce, ptr noundef nonnull align 1 dereferenceable(1) %i.bch, i64 %i.bcd, i1 false)
  %i.bci = load i64, ptr %i.e, align 8, !tbaa !120
  %i.bcj = sub i64 %i.bci, %i.bcd
  store i64 %i.bcj, ptr %i.e, align 8, !tbaa !120
  %.pre2443 = load i32, ptr %i.brd, align 8, !tbaa !135
  br label %bb.pe

bb.pe:                                            ; preds = %bb.pd, %bb.pc
  %i.bck = phi i32 [ %.pre2443, %bb.pd ], [ %i.bre, %bb.pc ]
  store i32 %i.bck, ptr %i.ae, align 4, !tbaa !85
  %i.bcl = getelementptr i8, ptr %i.bpk, i64 20
  %i.bcm = load i32, ptr %i.bcl, align 4, !tbaa !145
  store i32 %i.bcm, ptr %i.af, align 8, !tbaa !86
  store ptr %i.brc, ptr %0, align 8, !tbaa !81
  br label %.critedge6

.critedge6:                                       ; preds = %bb.ok, %bb.pe, %bb.ol
  %.35 = phi ptr [ %.32, %bb.ol ], [ %.32, %bb.ok ], [ %i.bpk, %bb.pe ] ; 3 uses
  %.111503 = phi i32 [ %.101502, %bb.ol ], [ %.101502, %bb.ok ], [ %.13, %bb.pe ]
  %.91488 = phi i64 [ %.81487, %bb.ol ], [ %.81487, %bb.ok ], [ %i.bpd, %bb.pe ] ; 2 uses
  %.10 = phi ptr [ %.9, %bb.ol ], [ %.9, %bb.ok ], [ %i.bra, %bb.pe ] ; 2 uses
  %i.bcn = getelementptr i8, ptr %.35, i64 8      ; 2 uses
  %i.bco = load ptr, ptr %i.bcn, align 8, !tbaa !26
  %i.bcp = getelementptr i8, ptr %i.bco, i64 24
  %i.bcq = load ptr, ptr %i.bcp, align 8, !tbaa !143
  store ptr %i.bcq, ptr %i.ac, align 8, !tbaa !87
  %i.bcr = load ptr, ptr %i.bcn, align 8, !tbaa !26 ; 3 uses
  %i.bcs = getelementptr i8, ptr %i.bcr, i64 32
  %i.bct = load ptr, ptr %i.bcs, align 8, !tbaa !146 ; 3 uses
  %i.bcu = getelementptr i8, ptr %i.bcr, i64 40   ; 2 uses
  %i.bcv = load ptr, ptr %i.bcu, align 8, !tbaa !106 ; 4 uses
  %.not.i1849 = icmp eq ptr %i.bct, null
  br i1 %.not.i1849, label %bb.pg, label %bb.pf

bb.pf:                                            ; preds = %.critedge6
  %i.bcw = getelementptr i8, ptr %i.bct, i64 40
  store ptr %i.bcv, ptr %i.bcw, align 8, !tbaa !106
  br label %bb.ph

bb.pg:                                            ; preds = %.critedge6
  store ptr %i.bcv, ptr %i.ag, align 8, !tbaa !105
  br label %bb.ph

bb.ph:                                            ; preds = %bb.pg, %bb.pf
  %.not15.i1850 = icmp eq ptr %i.bcv, null
  br i1 %.not15.i1850, label %repeat_pool_free.exit1851, label %bb.pi

bb.pi:                                            ; preds = %bb.ph
  %i.bcx = getelementptr i8, ptr %i.bcv, i64 32
  store ptr %i.bct, ptr %i.bcx, align 8, !tbaa !146
  br label %repeat_pool_free.exit1851

repeat_pool_free.exit1851:                        ; preds = %bb.ph, %bb.pi
  %i.bcy = load ptr, ptr %i.ah, align 8, !tbaa !110
  store ptr %i.bcy, ptr %i.bcu, align 8, !tbaa !106
  store ptr %i.bcr, ptr %i.ah, align 8, !tbaa !110
  %i.bcz = load i32, ptr %.10, align 4, !tbaa !7
  %i.bda = add i32 %i.bcz, 1
  %i.bdb = zext i32 %i.bda to i64
  %i.bdc = getelementptr [4 x i8], ptr %.10, i64 %i.bdb ; 2 uses
  %i.bdd = load ptr, ptr %0, align 8, !tbaa !81   ; 2 uses
  %i.bde = add i32 %.111503, 1                    ; 3 uses
  %i.bdf = and i32 %i.bde, 4095
  %i.bdg = icmp eq i32 %i.bdf, 0
  br i1 %i.bdg, label %bb.pj, label %.preheader1908

bb.pj:                                            ; preds = %repeat_pool_free.exit1851
  %i.bdh = tail call i32 @PyErr_CheckSignals() #14
  %.not1659 = icmp eq i32 %i.bdh, 0
  br i1 %.not1659, label %.preheader1908, label %.loopexit

bb.pk:                                            ; preds = %.backedge
  store ptr %.151535, ptr %0, align 8, !tbaa !81
  %i.bdi = getelementptr i8, ptr %.40, i64 24
  store ptr %.12, ptr %i.bdi, align 8, !tbaa !133
  %i.bdj = getelementptr i8, ptr %.40, i64 32
  store ptr %.151535, ptr %i.bdj, align 8, !tbaa !134
  %i.bdk = load i64, ptr %i.e, align 8, !tbaa !120 ; 4 uses
  %i.bdl = load i64, ptr %i.g, align 8, !tbaa !121
  %i.bdm = sub i64 %i.bdl, %i.bdk
  %i.bdn = icmp ult i64 %i.bdm, 56
  br i1 %i.bdn, label %bb.pl, label %bb.pn

bb.pl:                                            ; preds = %bb.pk
  %i.bdo = tail call fastcc i32 @data_stack_grow(ptr noundef nonnull %0, i64 noundef 56) ; 2 uses
  %i.bdp = icmp slt i32 %i.bdo, 0
  br i1 %i.bdp, label %bb.pm, label %._crit_edge2454

._crit_edge2454:                                  ; preds = %bb.pl
  %.pre2455 = load i64, ptr %i.e, align 8, !tbaa !120
  br label %bb.pn

bb.pm:                                            ; preds = %bb.pl
  %i.bdq = sext i32 %i.bdo to i64
  br label %.loopexit

bb.pn:                                            ; preds = %._crit_edge2454, %bb.pk
  %i.bdr = phi i64 [ %.pre2455, %._crit_edge2454 ], [ %i.bdk, %bb.pk ]
  %i.bds = load ptr, ptr %i.u, align 8, !tbaa !88
  %i.bdt = getelementptr i8, ptr %i.bds, i64 %i.bdk ; 5 uses
  %i.bdu = add i64 %i.bdr, 56
  store i64 %i.bdu, ptr %i.e, align 8, !tbaa !120
  %i.bdv = getelementptr i8, ptr %.12, i64 4      ; 2 uses
  %i.bdw = getelementptr i8, ptr %i.bdt, i64 24
  store ptr %i.bdv, ptr %i.bdw, align 8, !tbaa !133
  %i.bdx = getelementptr i8, ptr %i.bdt, i64 40
  store i32 0, ptr %i.bdx, align 8, !tbaa !125
  %i.bdy = getelementptr i8, ptr %i.bdt, i64 44
  store i32 16, ptr %i.bdy, align 4, !tbaa !124
  %i.bdz = getelementptr i8, ptr %i.bdt, i64 48
  store i64 %.111490.ph, ptr %i.bdz, align 8, !tbaa !122
  br label %.backedge1909.backedge

bb.po:                                            ; preds = %bb.sw
  %i.bea = getelementptr i8, ptr %i.bpk, i64 32
  %i.beb = load ptr, ptr %i.bea, align 8, !tbaa !134
  store ptr %i.beb, ptr %0, align 8, !tbaa !81
  br label %.critedge1903

bb.pp:                                            ; preds = %bb.sw
  %i.bec = getelementptr i8, ptr %i.bpk, i64 24
  %i.bed = load ptr, ptr %i.bec, align 8, !tbaa !133 ; 2 uses
  %i.bee = load i32, ptr %i.bed, align 4, !tbaa !7
  %i.bef = zext i32 %i.bee to i64
  %i.beg = getelementptr [4 x i8], ptr %i.bed, i64 %i.bef ; 2 uses
  %i.beh = load ptr, ptr %0, align 8, !tbaa !81   ; 2 uses
  %i.bei = add i32 %.13, 1                        ; 3 uses
  %i.bej = and i32 %i.bei, 4095
  %i.bek = icmp eq i32 %i.bej, 0
  br i1 %i.bek, label %bb.pq, label %.preheader1908

bb.pq:                                            ; preds = %bb.pp
  %i.bel = tail call i32 @PyErr_CheckSignals() #14
  %.not1645 = icmp eq i32 %i.bel, 0
  br i1 %.not1645, label %.preheader1908, label %.loopexit

.preheader1908:                                   ; preds = %bb.pq, %bb.pp, %bb.pj, %repeat_pool_free.exit1851, %bb.k, %bb.j, %bb.sc, %bb.sb, %bb.ri, %bb.rh
  %.1.sink = phi ptr [ %i.bow, %bb.sc ], [ %.1, %bb.k ], [ %i.bdc, %bb.pj ], [ %i.bly, %bb.ri ], [ %i.bly, %bb.rh ], [ %i.bow, %bb.sb ], [ %.1, %bb.j ], [ %i.bdc, %repeat_pool_free.exit1851 ], [ %i.beg, %bb.pp ], [ %i.beg, %bb.pq ] ; 2 uses
  %.151535.ph = phi ptr [ %.141534, %bb.sc ], [ %i.am, %bb.k ], [ %i.bdd, %bb.pj ], [ %i.bsi, %bb.ri ], [ %i.bsi, %bb.rh ], [ %.141534, %bb.sb ], [ %i.am, %bb.j ], [ %i.bdd, %repeat_pool_free.exit1851 ], [ %i.beh, %bb.pp ], [ %i.beh, %bb.pq ]
  %.40.ph = phi ptr [ %.38, %bb.sc ], [ %.01505, %bb.k ], [ %.35, %bb.pj ], [ %i.bpk, %bb.ri ], [ %i.bpk, %bb.rh ], [ %.38, %bb.sb ], [ %.01505, %bb.j ], [ %.35, %repeat_pool_free.exit1851 ], [ %i.bpk, %bb.pp ], [ %i.bpk, %bb.pq ]
  %.14.ph = phi i32 [ %i.box, %bb.sc ], [ %i.ba, %bb.k ], [ %i.bde, %bb.pj ], [ %i.blz, %bb.ri ], [ %i.blz, %bb.rh ], [ %i.box, %bb.sb ], [ %i.ba, %bb.j ], [ %i.bde, %repeat_pool_free.exit1851 ], [ %i.bei, %bb.pp ], [ %i.bei, %bb.pq ]
  %.111490.ph = phi i64 [ %.101489, %bb.sc ], [ %.01479, %bb.k ], [ %.91488, %bb.pj ], [ %i.bpd, %bb.ri ], [ %i.bpd, %bb.rh ], [ %.101489, %bb.sb ], [ %.01479, %bb.j ], [ %.91488, %repeat_pool_free.exit1851 ], [ %i.bpd, %bb.pp ], [ %i.bpd, %bb.pq ] ; 45 uses
  %i.bem = getelementptr i8, ptr %.1.sink, i64 4
  %.sink2938 = load i32, ptr %.1.sink, align 4, !tbaa !7
  br label %.backedge

bb.pr:                                            ; preds = %.backedge
  %i.ben = load i32, ptr %.12, align 4, !tbaa !7
  %i.beo = shl i32 %i.ben, 1                      ; 2 uses
  %i.bep = load i32, ptr %i.ae, align 4, !tbaa !85
  %.not1749 = icmp slt i32 %i.beo, %i.bep
  br i1 %.not1749, label %bb.ps, label %.critedge1903

bb.ps:                                            ; preds = %bb.pr
  %i.beq = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.ber = sext i32 %i.beo to i64
  %i.bes = getelementptr [8 x i8], ptr %i.beq, i64 %i.ber ; 2 uses
  %i.bet = load ptr, ptr %i.bes, align 8, !tbaa !95 ; 5 uses
  %3 = ptrtoint ptr %i.bet to i64
  %i.beu = getelementptr i8, ptr %i.bes, i64 8
  %i.bev = load ptr, ptr %i.beu, align 8, !tbaa !95 ; 5 uses
  %4 = ptrtoint ptr %i.bev to i64
  %i.bew = icmp eq ptr %i.bet, null
  %i.bex = icmp eq ptr %i.bev, null
  %i.bey = icmp ult ptr %i.bev, %i.bet
  %i.bez = or i1 %i.bex, %i.bey
  %or.cond1807 = select i1 %i.bew, i1 true, i1 %i.bez
  br i1 %or.cond1807, label %.critedge1903, label %.preheader

.preheader:                                       ; preds = %bb.ps
  %i.bfa = icmp ult ptr %i.bet, %i.bev
  br i1 %i.bfa, label %.lr.ph2177.preheader, label %._crit_edge2178

.lr.ph2177.preheader:                             ; preds = %.preheader
  %i.bfb = sub i64 %4, %3
  %scevgep2440 = getelementptr i8, ptr %.151535, i64 %i.bfb
  br label %.lr.ph2177

.lr.ph2177:                                       ; preds = %.lr.ph2177.preheader, %bb.pu
  %.1015302176 = phi ptr [ %i.bff, %bb.pu ], [ %.151535, %.lr.ph2177.preheader ] ; 3 uses
  %.015382175 = phi ptr [ %i.bfe, %bb.pu ], [ %i.bet, %.lr.ph2177.preheader ] ; 2 uses
  %.not1751 = icmp ult ptr %.1015302176, %i.b
  br i1 %.not1751, label %bb.pt, label %.critedge1903.loopexit

bb.pt:                                            ; preds = %.lr.ph2177
  %i.bfc = load i8, ptr %.1015302176, align 1, !tbaa !26
  %i.bfd = load i8, ptr %.015382175, align 1, !tbaa !26
  %.not1752 = icmp eq i8 %i.bfc, %i.bfd
  br i1 %.not1752, label %bb.pu, label %.critedge1903.loopexit

bb.pu:                                            ; preds = %bb.pt
  %i.bfe = getelementptr i8, ptr %.015382175, i64 1 ; 2 uses
  %i.bff = getelementptr i8, ptr %.1015302176, i64 1
  %exitcond2442.not = icmp eq ptr %i.bfe, %i.bev
  br i1 %exitcond2442.not, label %._crit_edge2178, label %.lr.ph2177, !llvm.loop !149

._crit_edge2178:                                  ; preds = %bb.pu, %.preheader
  %.101530.lcssa = phi ptr [ %.151535, %.preheader ], [ %scevgep2440, %bb.pu ]
  %i.bfg = getelementptr i8, ptr %.12, i64 4
  %i.bfh = add i32 %.14, 1                        ; 2 uses
  %i.bfi = and i32 %i.bfh, 4095
  %i.bfj = icmp eq i32 %i.bfi, 0
  br i1 %i.bfj, label %bb.pv, label %bb.pw

bb.pv:                                            ; preds = %._crit_edge2178
  %i.bfk = tail call i32 @PyErr_CheckSignals() #14
  %.not1750 = icmp eq i32 %i.bfk, 0
  br i1 %.not1750, label %bb.pw, label %.loopexit

bb.pw:                                            ; preds = %._crit_edge2178, %bb.pv
  %i.bfl = getelementptr i8, ptr %.12, i64 8
  %i.bfm = load i32, ptr %i.bfg, align 4, !tbaa !7
  br label %.backedge.backedge

bb.px:                                            ; preds = %.backedge
  %i.bfn = load i32, ptr %.12, align 4, !tbaa !7
  %i.bfo = shl i32 %i.bfn, 1                      ; 2 uses
  %i.bfp = load i32, ptr %i.ae, align 4, !tbaa !85
  %.not1678 = icmp slt i32 %i.bfo, %i.bfp
  br i1 %.not1678, label %bb.py, label %.critedge1903

bb.py:                                            ; preds = %bb.px
  %i.bfq = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.bfr = sext i32 %i.bfo to i64
  %i.bfs = getelementptr [8 x i8], ptr %i.bfq, i64 %i.bfr ; 2 uses
  %i.bft = load ptr, ptr %i.bfs, align 8, !tbaa !95 ; 5 uses
  %5 = ptrtoint ptr %i.bft to i64
  %i.bfu = getelementptr i8, ptr %i.bfs, i64 8
  %i.bfv = load ptr, ptr %i.bfu, align 8, !tbaa !95 ; 5 uses
  %6 = ptrtoint ptr %i.bfv to i64
  %i.bfw = icmp eq ptr %i.bft, null
  %i.bfx = icmp eq ptr %i.bfv, null
  %i.bfy = icmp ult ptr %i.bfv, %i.bft
  %i.bfz = or i1 %i.bfx, %i.bfy
  %or.cond1808 = select i1 %i.bfw, i1 true, i1 %i.bfz
  br i1 %or.cond1808, label %.critedge1903, label %.preheader1906

.preheader1906:                                   ; preds = %bb.py
  %i.bga = icmp ult ptr %i.bft, %i.bfv
  br i1 %i.bga, label %.lr.ph2163.preheader, label %._crit_edge2164

.lr.ph2163.preheader:                             ; preds = %.preheader1906
  %i.bgb = sub i64 %6, %5
  %scevgep2433 = getelementptr i8, ptr %.151535, i64 %i.bgb
  br label %.lr.ph2163

.lr.ph2163:                                       ; preds = %.lr.ph2163.preheader, %bb.qc
  %.1115312162 = phi ptr [ %i.bgn, %bb.qc ], [ %.151535, %.lr.ph2163.preheader ] ; 3 uses
  %.015392161 = phi ptr [ %i.bgm, %bb.qc ], [ %i.bft, %.lr.ph2163.preheader ] ; 2 uses
  %.not1680 = icmp ult ptr %.1115312162, %i.b
  br i1 %.not1680, label %bb.pz, label %.critedge1903.loopexit3190

bb.pz:                                            ; preds = %.lr.ph2163
  %i.bgc = load i8, ptr %.1115312162, align 1, !tbaa !26 ; 3 uses
  %i.bgd = icmp sgt i8 %i.bgc, -1
  br i1 %i.bgd, label %bb.qa, label %sre_lower_ascii.exit1852

bb.qa:                                            ; preds = %bb.pz
  %i.bge = zext nneg i8 %i.bgc to i64
  %i.bgf = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.bge
  %i.bgg = load i8, ptr %i.bgf, align 1, !tbaa !26
  br label %sre_lower_ascii.exit1852

sre_lower_ascii.exit1852:                         ; preds = %bb.pz, %bb.qa
  %.in1891 = phi i8 [ %i.bgg, %bb.qa ], [ %i.bgc, %bb.pz ]
  %i.bgh = load i8, ptr %.015392161, align 1, !tbaa !26 ; 3 uses
  %i.bgi = icmp sgt i8 %i.bgh, -1
  br i1 %i.bgi, label %bb.qb, label %sre_lower_ascii.exit1853

bb.qb:                                            ; preds = %sre_lower_ascii.exit1852
  %i.bgj = zext nneg i8 %i.bgh to i64
  %i.bgk = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.bgj
  %i.bgl = load i8, ptr %i.bgk, align 1, !tbaa !26
  br label %sre_lower_ascii.exit1853

sre_lower_ascii.exit1853:                         ; preds = %sre_lower_ascii.exit1852, %bb.qb
  %.in1892 = phi i8 [ %i.bgl, %bb.qb ], [ %i.bgh, %sre_lower_ascii.exit1852 ]
  %.not1681 = icmp eq i8 %.in1891, %.in1892
  br i1 %.not1681, label %bb.qc, label %.critedge1903.loopexit3190

bb.qc:                                            ; preds = %sre_lower_ascii.exit1853
  %i.bgm = getelementptr i8, ptr %.015392161, i64 1 ; 2 uses
  %i.bgn = getelementptr i8, ptr %.1115312162, i64 1
  %exitcond2435.not = icmp eq ptr %i.bgm, %i.bfv
  br i1 %exitcond2435.not, label %._crit_edge2164, label %.lr.ph2163, !llvm.loop !150

._crit_edge2164:                                  ; preds = %bb.qc, %.preheader1906
  %.111531.lcssa = phi ptr [ %.151535, %.preheader1906 ], [ %scevgep2433, %bb.qc ]
  %i.bgo = getelementptr i8, ptr %.12, i64 4
  %i.bgp = add i32 %.14, 1                        ; 2 uses
  %i.bgq = and i32 %i.bgp, 4095
  %i.bgr = icmp eq i32 %i.bgq, 0
  br i1 %i.bgr, label %bb.qd, label %bb.qe

bb.qd:                                            ; preds = %._crit_edge2164
  %i.bgs = tail call i32 @PyErr_CheckSignals() #14
  %.not1679 = icmp eq i32 %i.bgs, 0
  br i1 %.not1679, label %bb.qe, label %.loopexit

bb.qe:                                            ; preds = %._crit_edge2164, %bb.qd
  %i.bgt = getelementptr i8, ptr %.12, i64 8
  %i.bgu = load i32, ptr %i.bgo, align 4, !tbaa !7
  br label %.backedge.backedge

bb.qf:                                            ; preds = %.backedge
  %i.bgv = load i32, ptr %.12, align 4, !tbaa !7
  %i.bgw = shl i32 %i.bgv, 1                      ; 2 uses
  %i.bgx = load i32, ptr %i.ae, align 4, !tbaa !85
  %.not1713 = icmp slt i32 %i.bgw, %i.bgx
  br i1 %.not1713, label %bb.qg, label %.critedge1903

bb.qg:                                            ; preds = %bb.qf
  %i.bgy = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.bgz = sext i32 %i.bgw to i64
  %i.bha = getelementptr [8 x i8], ptr %i.bgy, i64 %i.bgz ; 2 uses
  %i.bhb = load ptr, ptr %i.bha, align 8, !tbaa !95 ; 4 uses
  %i.bhc = getelementptr i8, ptr %i.bha, i64 8
  %i.bhd = load ptr, ptr %i.bhc, align 8, !tbaa !95 ; 4 uses
  %i.bhe = icmp eq ptr %i.bhb, null
  %i.bhf = icmp eq ptr %i.bhd, null
  %i.bhg = icmp ult ptr %i.bhd, %i.bhb
  %i.bhh = or i1 %i.bhf, %i.bhg
  %or.cond1809 = select i1 %i.bhe, i1 true, i1 %i.bhh
  br i1 %or.cond1809, label %.critedge1903, label %.preheader1905

.preheader1905:                                   ; preds = %bb.qg
  %i.bhi = icmp ult ptr %i.bhb, %i.bhd
  br i1 %i.bhi, label %.lr.ph2168, label %._crit_edge2169

.lr.ph2168:                                       ; preds = %.preheader1905, %bb.qi
  %.1215322167 = phi ptr [ %i.bhq, %bb.qi ], [ %.151535, %.preheader1905 ] ; 3 uses
  %.015402166 = phi ptr [ %i.bhp, %bb.qi ], [ %i.bhb, %.preheader1905 ] ; 2 uses
  %.not1715 = icmp ult ptr %.1215322167, %i.b
  br i1 %.not1715, label %bb.qh, label %.critedge1903.loopexit3189

bb.qh:                                            ; preds = %.lr.ph2168
  %i.bhj = load i8, ptr %.1215322167, align 1, !tbaa !26
  %i.bhk = zext i8 %i.bhj to i32
  %i.bhl = tail call i32 @_PyUnicode_ToLowercase(i32 noundef %i.bhk) #14
  %i.bhm = load i8, ptr %.015402166, align 1, !tbaa !26
  %i.bhn = zext i8 %i.bhm to i32
  %i.bho = tail call i32 @_PyUnicode_ToLowercase(i32 noundef %i.bhn) #14
  %.not1716 = icmp eq i32 %i.bhl, %i.bho
  br i1 %.not1716, label %bb.qi, label %.critedge1903.loopexit3189

bb.qi:                                            ; preds = %bb.qh
  %i.bhp = getelementptr i8, ptr %.015402166, i64 1 ; 2 uses
  %i.bhq = getelementptr i8, ptr %.1215322167, i64 1 ; 2 uses
  %exitcond2437.not = icmp eq ptr %i.bhp, %i.bhd
  br i1 %exitcond2437.not, label %._crit_edge2169, label %.lr.ph2168, !llvm.loop !151

._crit_edge2169:                                  ; preds = %bb.qi, %.preheader1905
  %.121532.lcssa = phi ptr [ %.151535, %.preheader1905 ], [ %i.bhq, %bb.qi ]
  %i.bhr = getelementptr i8, ptr %.12, i64 4
  %i.bhs = add i32 %.14, 1                        ; 2 uses
  %i.bht = and i32 %i.bhs, 4095
  %i.bhu = icmp eq i32 %i.bht, 0
  br i1 %i.bhu, label %bb.qj, label %bb.qk

bb.qj:                                            ; preds = %._crit_edge2169
  %i.bhv = tail call i32 @PyErr_CheckSignals() #14
  %.not1714 = icmp eq i32 %i.bhv, 0
  br i1 %.not1714, label %bb.qk, label %.loopexit

bb.qk:                                            ; preds = %._crit_edge2169, %bb.qj
  %i.bhw = getelementptr i8, ptr %.12, i64 8
  %i.bhx = load i32, ptr %i.bhr, align 4, !tbaa !7
  br label %.backedge.backedge

bb.ql:                                            ; preds = %.backedge
  %i.bhy = load i32, ptr %.12, align 4, !tbaa !7
  %i.bhz = shl i32 %i.bhy, 1                      ; 2 uses
  %i.bia = load i32, ptr %i.ae, align 4, !tbaa !85
  %.not1666 = icmp slt i32 %i.bhz, %i.bia
  br i1 %.not1666, label %bb.qm, label %.critedge1903

bb.qm:                                            ; preds = %bb.ql
  %i.bib = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.bic = sext i32 %i.bhz to i64
  %i.bid = getelementptr [8 x i8], ptr %i.bib, i64 %i.bic ; 2 uses
  %i.bie = load ptr, ptr %i.bid, align 8, !tbaa !95 ; 5 uses
  %7 = ptrtoint ptr %i.bie to i64
  %i.bif = getelementptr i8, ptr %i.bid, i64 8
  %i.big = load ptr, ptr %i.bif, align 8, !tbaa !95 ; 5 uses
  %8 = ptrtoint ptr %i.big to i64
  %i.bih = icmp eq ptr %i.bie, null
  %i.bii = icmp eq ptr %i.big, null
  %i.bij = icmp ult ptr %i.big, %i.bie
  %i.bik = or i1 %i.bii, %i.bij
  %or.cond1810 = select i1 %i.bih, i1 true, i1 %i.bik
  br i1 %or.cond1810, label %.critedge1903, label %.preheader1907

.preheader1907:                                   ; preds = %bb.qm
  %i.bil = icmp ult ptr %i.bie, %i.big
  br i1 %i.bil, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader1907
  %i.bim = sub i64 %8, %7
  %scevgep = getelementptr i8, ptr %.151535, i64 %i.bim
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.qo
  %.1315332160 = phi ptr [ %i.biw, %bb.qo ], [ %.151535, %.lr.ph.preheader ] ; 3 uses
  %.015372159 = phi ptr [ %i.biv, %bb.qo ], [ %i.bie, %.lr.ph.preheader ] ; 2 uses
  %.not1668 = icmp ult ptr %.1315332160, %i.b
  br i1 %.not1668, label %bb.qn, label %.critedge1903.loopexit3191

bb.qn:                                            ; preds = %.lr.ph
  %i.bin = load i8, ptr %.1315332160, align 1, !tbaa !26
  %i.bio = tail call ptr @__ctype_tolower_loc() #15
  %i.bip = load ptr, ptr %i.bio, align 8, !tbaa !132 ; 2 uses
  %i.biq = zext i8 %i.bin to i64
  %i.bir = getelementptr [4 x i8], ptr %i.bip, i64 %i.biq
  %.0.i.i = load i32, ptr %i.bir, align 4, !tbaa !7
  %i.bis = load i8, ptr %.015372159, align 1, !tbaa !26
  %i.bit = zext i8 %i.bis to i64
  %i.biu = getelementptr [4 x i8], ptr %i.bip, i64 %i.bit
  %.0.i.i1854 = load i32, ptr %i.biu, align 4, !tbaa !7
  %.not1669 = icmp eq i32 %.0.i.i, %.0.i.i1854
  br i1 %.not1669, label %bb.qo, label %.critedge1903.loopexit3191

bb.qo:                                            ; preds = %bb.qn
  %i.biv = getelementptr i8, ptr %.015372159, i64 1 ; 2 uses
  %i.biw = getelementptr i8, ptr %.1315332160, i64 1
  %exitcond.not = icmp eq ptr %i.biv, %i.big
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !152

._crit_edge:                                      ; preds = %bb.qo, %.preheader1907
  %.131533.lcssa = phi ptr [ %.151535, %.preheader1907 ], [ %scevgep, %bb.qo ]
  %i.bix = getelementptr i8, ptr %.12, i64 4
  %i.biy = add i32 %.14, 1                        ; 2 uses
  %i.biz = and i32 %i.biy, 4095
  %i.bja = icmp eq i32 %i.biz, 0
  br i1 %i.bja, label %bb.qp, label %bb.qq

bb.qp:                                            ; preds = %._crit_edge
  %i.bjb = tail call i32 @PyErr_CheckSignals() #14
  %.not1667 = icmp eq i32 %i.bjb, 0
  br i1 %.not1667, label %bb.qq, label %.loopexit

bb.qq:                                            ; preds = %._crit_edge, %bb.qp
  %i.bjc = getelementptr i8, ptr %.12, i64 8
  %i.bjd = load i32, ptr %i.bix, align 4, !tbaa !7
  br label %.backedge.backedge

bb.qr:                                            ; preds = %.backedge
  %i.bje = load i32, ptr %.12, align 4, !tbaa !7
  %i.bjf = shl i32 %i.bje, 1                      ; 2 uses
  %i.bjg = load i32, ptr %i.ae, align 4, !tbaa !85
  %.not1745 = icmp slt i32 %i.bjf, %i.bjg
  br i1 %.not1745, label %bb.qv, label %bb.qs

bb.qs:                                            ; preds = %bb.qr
  %i.bjh = getelementptr i8, ptr %.12, i64 4
  %i.bji = load i32, ptr %i.bjh, align 4, !tbaa !7
  %i.bjj = zext i32 %i.bji to i64
  %i.bjk = getelementptr [4 x i8], ptr %.12, i64 %i.bjj ; 2 uses
  %i.bjl = add i32 %.14, 1                        ; 2 uses
  %i.bjm = and i32 %i.bjl, 4095
  %i.bjn = icmp eq i32 %i.bjm, 0
  br i1 %i.bjn, label %bb.qt, label %bb.qu

bb.qt:                                            ; preds = %bb.qs
  %i.bjo = tail call i32 @PyErr_CheckSignals() #14
  %.not1748 = icmp eq i32 %i.bjo, 0
  br i1 %.not1748, label %bb.qu, label %.loopexit

bb.qu:                                            ; preds = %bb.qs, %bb.qt
  %i.bjp = getelementptr i8, ptr %i.bjk, i64 4
  %i.bjq = load i32, ptr %i.bjk, align 4, !tbaa !7
  br label %.backedge.backedge

bb.qv:                                            ; preds = %bb.qr
  %i.bjr = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.bjs = sext i32 %i.bjf to i64
  %i.bjt = getelementptr [8 x i8], ptr %i.bjr, i64 %i.bjs ; 2 uses
  %i.bju = load ptr, ptr %i.bjt, align 8, !tbaa !95 ; 2 uses
  %i.bjv = getelementptr i8, ptr %i.bjt, i64 8
  %i.bjw = load ptr, ptr %i.bjv, align 8, !tbaa !95 ; 2 uses
  %i.bjx = icmp eq ptr %i.bju, null
  %i.bjy = icmp eq ptr %i.bjw, null
  %i.bjz = icmp ult ptr %i.bjw, %i.bju
  %i.bka = or i1 %i.bjy, %i.bjz
  %or.cond1811 = select i1 %i.bjx, i1 true, i1 %i.bka
  br i1 %or.cond1811, label %bb.qw, label %bb.qz

bb.qw:                                            ; preds = %bb.qv
  %i.bkb = getelementptr i8, ptr %.12, i64 4
  %i.bkc = load i32, ptr %i.bkb, align 4, !tbaa !7
  %i.bkd = zext i32 %i.bkc to i64
  %i.bke = getelementptr [4 x i8], ptr %.12, i64 %i.bkd ; 2 uses
  %i.bkf = add i32 %.14, 1                        ; 2 uses
  %i.bkg = and i32 %i.bkf, 4095
  %i.bkh = icmp eq i32 %i.bkg, 0
  br i1 %i.bkh, label %bb.qx, label %bb.qy

bb.qx:                                            ; preds = %bb.qw
  %i.bki = tail call i32 @PyErr_CheckSignals() #14
  %.not1747 = icmp eq i32 %i.bki, 0
  br i1 %.not1747, label %bb.qy, label %.loopexit

bb.qy:                                            ; preds = %bb.qw, %bb.qx
  %i.bkj = getelementptr i8, ptr %i.bke, i64 4
  %i.bkk = load i32, ptr %i.bke, align 4, !tbaa !7
  br label %.backedge.backedge

bb.qz:                                            ; preds = %bb.qv
  %i.bkl = getelementptr i8, ptr %.12, i64 8
  %i.bkm = add i32 %.14, 1                        ; 2 uses
  %i.bkn = and i32 %i.bkm, 4095
  %i.bko = icmp eq i32 %i.bkn, 0
  br i1 %i.bko, label %bb.ra, label %bb.rb

bb.ra:                                            ; preds = %bb.qz
  %i.bkp = tail call i32 @PyErr_CheckSignals() #14
  %.not1746 = icmp eq i32 %i.bkp, 0
  br i1 %.not1746, label %bb.rb, label %.loopexit

bb.rb:                                            ; preds = %bb.qz, %bb.ra
  %i.bkq = getelementptr i8, ptr %.12, i64 12
  %i.bkr = load i32, ptr %i.bkl, align 4, !tbaa !7
  br label %.backedge.backedge

bb.rc:                                            ; preds = %.backedge
  %i.bks = load ptr, ptr %i.ak, align 8, !tbaa !89
  %i.bkt = ptrtoint ptr %.151535 to i64
  %i.bku = ptrtoint ptr %i.bks to i64
  %i.bkv = sub i64 %i.bkt, %i.bku
  %i.bkw = getelementptr i8, ptr %.12, i64 4
  %i.bkx = load i32, ptr %i.bkw, align 4, !tbaa !7
  %i.bky = zext i32 %i.bkx to i64                 ; 2 uses
  %i.bkz = icmp ult i64 %i.bkv, %i.bky
  br i1 %i.bkz, label %.critedge1903, label %bb.rd

bb.rd:                                            ; preds = %bb.rc
  %i.bla = sub nsw i64 0, %i.bky
  %i.blb = getelementptr i8, ptr %.151535, i64 %i.bla
  store ptr %i.blb, ptr %0, align 8, !tbaa !81
  %i.blc = getelementptr i8, ptr %.40, i64 24
  store ptr %.12, ptr %i.blc, align 8, !tbaa !133
  %i.bld = getelementptr i8, ptr %.40, i64 32
  store ptr %.151535, ptr %i.bld, align 8, !tbaa !134
  %i.ble = load i64, ptr %i.e, align 8, !tbaa !120 ; 4 uses
  %i.blf = load i64, ptr %i.g, align 8, !tbaa !121
  %i.blg = sub i64 %i.blf, %i.ble
  %i.blh = icmp ult i64 %i.blg, 56
  br i1 %i.blh, label %bb.re, label %bb.rg

bb.re:                                            ; preds = %bb.rd
  %i.bli = tail call fastcc i32 @data_stack_grow(ptr noundef nonnull %0, i64 noundef 56) ; 2 uses
  %i.blj = icmp slt i32 %i.bli, 0
  br i1 %i.blj, label %bb.rf, label %._crit_edge2505

._crit_edge2505:                                  ; preds = %bb.re
  %.pre2506 = load i64, ptr %i.e, align 8, !tbaa !120
  br label %bb.rg

bb.rf:                                            ; preds = %bb.re
  %i.blk = sext i32 %i.bli to i64
  br label %.loopexit

bb.rg:                                            ; preds = %._crit_edge2505, %bb.rd
  %i.bll = phi i64 [ %.pre2506, %._crit_edge2505 ], [ %i.ble, %bb.rd ]
  %i.blm = load ptr, ptr %i.u, align 8, !tbaa !88
  %i.bln = getelementptr i8, ptr %i.blm, i64 %i.ble ; 5 uses
  %i.blo = add i64 %i.bll, 56
  store i64 %i.blo, ptr %i.e, align 8, !tbaa !120
  %i.blp = getelementptr i8, ptr %.12, i64 8      ; 2 uses
  %i.blq = getelementptr i8, ptr %i.bln, i64 24
  store ptr %i.blp, ptr %i.blq, align 8, !tbaa !133
  %i.blr = getelementptr i8, ptr %i.bln, i64 40
  store i32 0, ptr %i.blr, align 8, !tbaa !125
  %i.bls = getelementptr i8, ptr %i.bln, i64 44
  store i32 12, ptr %i.bls, align 4, !tbaa !124
  %i.blt = getelementptr i8, ptr %i.bln, i64 48
  store i64 %.111490.ph, ptr %i.blt, align 8, !tbaa !122
  br label %.backedge1909.backedge

bb.rh:                                            ; preds = %bb.sx
  %i.blu = getelementptr i8, ptr %i.bpk, i64 24
  %i.blv = load ptr, ptr %i.blu, align 8, !tbaa !133 ; 2 uses
  %i.blw = load i32, ptr %i.blv, align 4, !tbaa !7
  %i.blx = zext i32 %i.blw to i64
  %i.bly = getelementptr [4 x i8], ptr %i.blv, i64 %i.blx ; 2 uses
  %i.blz = add i32 %.13, 1                        ; 3 uses
end_hunk_0
begin_hunk_1_@sre_ucs1_charset:bb.a

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr i8, ptr %.052.us, i64 8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !7
  %.not71.us = icmp ugt i32 %1, %i.al
  br i1 %.not71.us, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = getelementptr i8, ptr %.052.us, i64 12
  br label %.split.us.backedge

bb.l:                                             ; preds = %.split.us
  br i1 %i.h, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr [4 x i8], ptr %i.k, i64 %i.j
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !7
  %i.ap = and i32 %i.ao, %i.g
  %.not72.us = icmp eq i32 %i.ap, 0
  br i1 %.not72.us, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aq = getelementptr i8, ptr %.052.us, i64 36
  br label %.split.us.backedge

bb.o:                                             ; preds = %.split.us
  %i.ar = load i32, ptr %i.k, align 4, !tbaa !7
  %i.as = tail call fastcc i32 @sre_category(i32 noundef %i.ar, i32 noundef %1)
  %.not73.us = icmp eq i32 %i.as, 0
  br i1 %.not73.us, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr i8, ptr %.052.us, i64 8
  br label %.split.us.backedge

bb.q:                                             ; preds = %.split.us
  %i.au = load i32, ptr %i.k, align 4, !tbaa !7
  %i.av = icmp eq i32 %1, %i.au
  br i1 %i.av, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = getelementptr i8, ptr %.052.us, i64 8
  br label %.split.us.backedge

.split.us.backedge:                               ; preds = %bb.r, %bb.p, %bb.n, %bb.k, %bb.h, %.thread7.us
  %.052.us.be = phi ptr [ %i.z, %.thread7.us ], [ %i.aw, %bb.r ], [ %i.at, %bb.p ], [ %i.aq, %bb.n ], [ %i.am, %bb.k ], [ %i.ai, %bb.h ]
  br label %.split.us

.split.split:                                     ; preds = %.split.split.backedge, %.split.split.outer
  %.052 = phi ptr [ %.052.ph, %.split.split.outer ], [ %.052.be, %.split.split.backedge ] ; 11 uses
  %i.ax = getelementptr i8, ptr %.052, i64 4      ; 7 uses
  %i.ay = load i32, ptr %.052, align 4, !tbaa !7
  switch i32 %i.ay, label %.thread [
    i32 0, label %.split13.us
    i32 16, label %bb.s
    i32 8, label %bb.u
    i32 9, label %bb.w
    i32 22, label %bb.x
    i32 42, label %bb.aa
    i32 21, label %bb.af
    i32 10, label %.thread7
  ]

.split13.us:                                      ; preds = %.split.split, %.split.us
  %.us-phi14 = phi i32 [ %.058.us.ph, %.split.us ], [ %.058.ph, %.split.split ]
  %.not74 = icmp eq i32 %.us-phi14, 0
  %i.az = zext i1 %.not74 to i32
  br label %.thread

bb.s:                                             ; preds = %.split.split
  %i.ba = load i32, ptr %i.ax, align 4, !tbaa !7
  %i.bb = icmp eq i32 %1, %i.ba
  br i1 %i.bb, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bc = getelementptr i8, ptr %.052, i64 8
  br label %.split.split.backedge

bb.u:                                             ; preds = %.split.split
  %i.bd = load i32, ptr %i.ax, align 4, !tbaa !7
  %i.be = tail call fastcc i32 @sre_category(i32 noundef %i.bd, i32 noundef %1)
  %.not73 = icmp eq i32 %i.be, 0
  br i1 %.not73, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.bf = getelementptr i8, ptr %.052, i64 8
  br label %.split.split.backedge

bb.w:                                             ; preds = %.split.split
  %i.bg = getelementptr i8, ptr %.052, i64 36
  br label %.split.split.backedge

bb.x:                                             ; preds = %.split.split
  %i.bh = load i32, ptr %i.ax, align 4, !tbaa !7
  %.not70 = icmp ugt i32 %i.bh, %1
  br i1 %.not70, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bi = getelementptr i8, ptr %.052, i64 8
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !7
  %.not71 = icmp ugt i32 %1, %i.bj
  br i1 %.not71, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bk = getelementptr i8, ptr %.052, i64 12
  br label %.split.split.backedge

bb.aa:                                            ; preds = %.split.split
  %i.bl = load i32, ptr %i.ax, align 4, !tbaa !7
  %.not66 = icmp ugt i32 %i.bl, %1
  br i1 %.not66, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bm = getelementptr i8, ptr %.052, i64 8
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !7
  %.not67 = icmp ugt i32 %1, %i.bn
  br i1 %.not67, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bo = tail call i32 @_PyUnicode_ToUppercase(i32 noundef %1) #14 ; 2 uses
  %i.bp = load i32, ptr %i.ax, align 4, !tbaa !7
  %.not68 = icmp ugt i32 %i.bp, %i.bo
  br i1 %.not68, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bq = getelementptr i8, ptr %.052, i64 8
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !7
  %.not69 = icmp ugt i32 %i.bo, %i.br
  br i1 %.not69, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.bs = getelementptr i8, ptr %.052, i64 12
  br label %.split.split.backedge

bb.af:                                            ; preds = %.split.split
  %i.bt = xor i32 %.058.ph, 1
  br label %.split.split.outer

.split.split.outer:                               ; preds = %bb.a, %bb.af
  %.058.ph = phi i32 [ %i.bt, %bb.af ], [ 1, %bb.a ] ; 7 uses
  %.052.ph = phi ptr [ %i.ax, %bb.af ], [ %0, %bb.a ]
  br label %.split.split

.thread7:                                         ; preds = %.split.split
  %i.bu = load i32, ptr %i.ax, align 4, !tbaa !7
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr i8, ptr %.052, i64 264
  %.idx = shl nuw nsw i64 %i.bv, 5
  %i.bx = getelementptr i8, ptr %i.bw, i64 %.idx
  br label %.split.split.backedge

.split.split.backedge:                            ; preds = %.thread7, %bb.ae, %bb.z, %bb.w, %bb.v, %bb.t
  %.052.be = phi ptr [ %i.bx, %.thread7 ], [ %i.bc, %bb.t ], [ %i.bf, %bb.v ], [ %i.bg, %bb.w ], [ %i.bk, %bb.z ], [ %i.bs, %bb.ae ]
  br label %.split.split

.thread:                                          ; preds = %bb.ad, %bb.ab, %.split.split, %bb.y, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.j, %bb.g, %bb.e, %bb.b, %.split.us, %.split13.us
  %.4 = phi i32 [ %i.az, %.split13.us ], [ %.058.us.ph, %bb.j ], [ %.058.us.ph, %bb.g ], [ %.058.us.ph, %bb.e ], [ %.058.us.ph, %bb.b ], [ %.058.us.ph, %bb.m ], [ %.058.us.ph, %bb.o ], [ %.058.us.ph, %bb.q ], [ 0, %.split.us ], [ %.058.ph, %bb.ad ], [ %.058.ph, %bb.u ], [ %.058.ph, %bb.s ], [ 0, %.split.split ], [ %.058.ph, %bb.y ], [ %.058.ph, %bb.ab ]
  ret i32 %.4
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @char_loc_ignore(i32 noundef %0, i32 noundef %1) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i32 %1, %0
  br i1 %i.a, label %sre_upper_locale.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %1, 256
  br i1 %i.b, label %sre_lower_locale.exit, label %sre_upper_locale.exit

sre_lower_locale.exit:                            ; preds = %bb.b
  %i.c = tail call ptr @__ctype_tolower_loc() #15
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !132
  %i.e = zext nneg i32 %1 to i64                  ; 2 uses
  %i.f = getelementptr [4 x i8], ptr %i.d, i64 %i.e
  %.0.i.i = load i32, ptr %i.f, align 4, !tbaa !7
  %i.g = icmp eq i32 %.0.i.i, %0
  br i1 %i.g, label %sre_upper_locale.exit, label %bb.c

bb.c:                                             ; preds = %sre_lower_locale.exit
  %i.h = tail call ptr @__ctype_toupper_loc() #15
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !132
  %i.j = getelementptr [4 x i8], ptr %i.i, i64 %i.e
  %.0.i.i7 = load i32, ptr %i.j, align 4, !tbaa !7
  %i.k = icmp eq i32 %.0.i.i7, %0
  %i.l = zext i1 %i.k to i32
  br label %sre_upper_locale.exit

sre_upper_locale.exit:                            ; preds = %bb.c, %bb.b, %sre_lower_locale.exit, %bb.a
  %i.m = phi i32 [ 1, %sre_lower_locale.exit ], [ 1, %bb.a ], [ %i.l, %bb.c ], [ 0, %bb.b ]
  ret i32 %i.m
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @sre_ucs1_count(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 0, 4294967296) %2) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !81     ; 42 uses
  %3 = ptrtoint ptr %i.a to i64                   ; 12 uses
  %i.b = getelementptr i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !84   ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = sub i64 %i.d, %3
  %i.f = icmp slt i64 %2, %i.e
  %i.g = icmp ne i64 %2, 4294967295
  %or.cond = and i1 %i.g, %i.f
  %i.h = getelementptr i8, ptr %i.a, i64 %2
  %spec.select = select i1 %or.cond, ptr %i.h, ptr %i.c ; 24 uses
  %spec.select207 = ptrtoint ptr %spec.select to i64 ; 10 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !7
  switch i32 %i.i, label %.preheader [
    i32 13, label %.preheader127
    i32 2, label %.preheader128
    i32 3, label %.critedge
    i32 16, label %bb.d
    i32 32, label %bb.g
    i32 40, label %bb.j
    i32 36, label %bb.l
    i32 20, label %bb.n
    i32 33, label %bb.q
    i32 41, label %bb.t
    i32 37, label %bb.v
  ]

.preheader128:                                    ; preds = %bb.a
  %i.j = icmp ult ptr %i.a, %spec.select
  br i1 %i.j, label %.lr.ph179.preheader, label %.critedge

.lr.ph179.preheader:                              ; preds = %.preheader128
  %i.k = sub i64 %spec.select207, %3
  %scevgep222 = getelementptr i8, ptr %i.a, i64 %i.k
  br label %.lr.ph179

.preheader127:                                    ; preds = %bb.a
  %i.l = getelementptr i8, ptr %1, i64 8
  %i.m = icmp ult ptr %i.a, %spec.select
  br i1 %i.m, label %.lr.ph184.preheader, label %.critedge

.lr.ph184.preheader:                              ; preds = %.preheader127
  %i.n = sub i64 %spec.select207, %3
  %scevgep224 = getelementptr i8, ptr %i.a, i64 %i.n
  br label %.lr.ph184

.lr.ph184:                                        ; preds = %.lr.ph184.preheader, %bb.b
  %.0106183 = phi ptr [ %i.r, %bb.b ], [ %i.a, %.lr.ph184.preheader ] ; 3 uses
  %i.o = load i8, ptr %.0106183, align 1, !tbaa !26
  %i.p = zext i8 %i.o to i32
  %i.q = tail call fastcc i32 @sre_ucs1_charset(ptr noundef %i.l, i32 noundef %i.p)
  %.not117 = icmp eq i32 %i.q, 0
  br i1 %.not117, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph184
  %i.r = getelementptr i8, ptr %.0106183, i64 1   ; 2 uses
  %exitcond225.not = icmp eq ptr %i.r, %spec.select
  br i1 %exitcond225.not, label %.critedge, label %.lr.ph184, !llvm.loop !195

.lr.ph179:                                        ; preds = %.lr.ph179.preheader, %bb.c
  %.1178 = phi ptr [ %i.t, %bb.c ], [ %i.a, %.lr.ph179.preheader ] ; 3 uses
  %i.s = load i8, ptr %.1178, align 1, !tbaa !26
  %.not116 = icmp eq i8 %i.s, 10
  br i1 %.not116, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph179
  %i.t = getelementptr i8, ptr %.1178, i64 1      ; 2 uses
  %exitcond223.not = icmp eq ptr %i.t, %spec.select
  br i1 %exitcond223.not, label %.critedge, label %.lr.ph179, !llvm.loop !196

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr i8, ptr %1, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !7    ; 2 uses
  %.not115 = icmp ult i32 %i.v, 256
  %i.w = icmp ult ptr %i.a, %spec.select
  %or.cond188 = select i1 %.not115, i1 %i.w, i1 false
  br i1 %or.cond188, label %.lr.ph174, label %.critedge

.lr.ph174:                                        ; preds = %bb.d
  %i.x = trunc nuw i32 %i.v to i8
  %i.y = sub i64 %spec.select207, %3
  %scevgep220 = getelementptr i8, ptr %i.a, i64 %i.y
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph174, %bb.f
  %.2173 = phi ptr [ %i.a, %.lr.ph174 ], [ %i.ab, %bb.f ] ; 3 uses
  %i.z = load i8, ptr %.2173, align 1, !tbaa !26
  %i.aa = icmp eq i8 %i.z, %i.x
  br i1 %i.aa, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr i8, ptr %.2173, i64 1     ; 2 uses
  %exitcond221.not = icmp eq ptr %i.ab, %spec.select
  br i1 %exitcond221.not, label %.critedge, label %bb.e, !llvm.loop !197

bb.g:                                             ; preds = %bb.a
  %i.ac = getelementptr i8, ptr %1, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !7
  %i.ae = icmp ult ptr %i.a, %spec.select
  br i1 %i.ae, label %.lr.ph170.preheader, label %.critedge

.lr.ph170.preheader:                              ; preds = %bb.g
  %i.af = sub i64 %spec.select207, %3
  %scevgep218 = getelementptr i8, ptr %i.a, i64 %i.af
  br label %.lr.ph170

.lr.ph170:                                        ; preds = %.lr.ph170.preheader, %bb.i
  %.3169 = phi ptr [ %i.an, %bb.i ], [ %i.a, %.lr.ph170.preheader ] ; 3 uses
  %i.ag = load i8, ptr %.3169, align 1, !tbaa !26 ; 3 uses
  %i.ah = icmp sgt i8 %i.ag, -1
  br i1 %i.ah, label %bb.h, label %sre_lower_ascii.exit

bb.h:                                             ; preds = %.lr.ph170
  %i.ai = zext nneg i8 %i.ag to i64
  %i.aj = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !26
  br label %sre_lower_ascii.exit

sre_lower_ascii.exit:                             ; preds = %.lr.ph170, %bb.h
  %.in126 = phi i8 [ %i.ak, %bb.h ], [ %i.ag, %.lr.ph170 ]
  %i.al = zext i8 %.in126 to i32
  %i.am = icmp eq i32 %i.ad, %i.al
  br i1 %i.am, label %bb.i, label %.critedge

bb.i:                                             ; preds = %sre_lower_ascii.exit
  %i.an = getelementptr i8, ptr %.3169, i64 1     ; 2 uses
  %exitcond219.not = icmp eq ptr %i.an, %spec.select
  br i1 %exitcond219.not, label %.critedge, label %.lr.ph170, !llvm.loop !198

bb.j:                                             ; preds = %bb.a
  %i.ao = getelementptr i8, ptr %1, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !7
  %i.aq = icmp ult ptr %i.a, %spec.select
  br i1 %i.aq, label %.lr.ph165.preheader, label %.critedge

.lr.ph165.preheader:                              ; preds = %bb.j
  %i.ar = sub i64 %spec.select207, %3
  %scevgep216 = getelementptr i8, ptr %i.a, i64 %i.ar
  br label %.lr.ph165

.lr.ph165:                                        ; preds = %.lr.ph165.preheader, %bb.k
  %.4164 = phi ptr [ %i.aw, %bb.k ], [ %i.a, %.lr.ph165.preheader ] ; 3 uses
  %i.as = load i8, ptr %.4164, align 1, !tbaa !26
  %i.at = zext i8 %i.as to i32
  %i.au = tail call i32 @_PyUnicode_ToLowercase(i32 noundef %i.at) #14
  %i.av = icmp eq i32 %i.au, %i.ap
  br i1 %i.av, label %bb.k, label %.critedge

bb.k:                                             ; preds = %.lr.ph165
  %i.aw = getelementptr i8, ptr %.4164, i64 1     ; 2 uses
  %exitcond217.not = icmp eq ptr %i.aw, %spec.select
  br i1 %exitcond217.not, label %.critedge, label %.lr.ph165, !llvm.loop !199

bb.l:                                             ; preds = %bb.a
  %i.ax = getelementptr i8, ptr %1, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !7  ; 3 uses
  %i.az = icmp ult ptr %i.a, %spec.select
  br i1 %i.az, label %.lr.ph161.preheader, label %.critedge

.lr.ph161.preheader:                              ; preds = %bb.l
  %i.ba = sub i64 %spec.select207, %3
  %scevgep214 = getelementptr i8, ptr %i.a, i64 %i.ba
  br label %.lr.ph161

.lr.ph161:                                        ; preds = %.lr.ph161.preheader, %char_loc_ignore.exit.thread
  %.5160 = phi ptr [ %i.bm, %char_loc_ignore.exit.thread ], [ %i.a, %.lr.ph161.preheader ] ; 3 uses
  %i.bb = load i8, ptr %.5160, align 1, !tbaa !26 ; 2 uses
  %i.bc = zext i8 %i.bb to i32
  %i.bd = icmp eq i32 %i.ay, %i.bc
  br i1 %i.bd, label %char_loc_ignore.exit.thread, label %bb.m

bb.m:                                             ; preds = %.lr.ph161
  %i.be = tail call ptr @__ctype_tolower_loc() #15
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !132
  %i.bg = zext i8 %i.bb to i64                    ; 2 uses
  %i.bh = getelementptr [4 x i8], ptr %i.bf, i64 %i.bg
  %.0.i.i.i = load i32, ptr %i.bh, align 4, !tbaa !7
  %i.bi = icmp eq i32 %.0.i.i.i, %i.ay
  br i1 %i.bi, label %char_loc_ignore.exit.thread, label %char_loc_ignore.exit

char_loc_ignore.exit:                             ; preds = %bb.m
  %i.bj = tail call ptr @__ctype_toupper_loc() #15
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !132
  %i.bl = getelementptr [4 x i8], ptr %i.bk, i64 %i.bg
  %.0.i.i7.i = load i32, ptr %i.bl, align 4, !tbaa !7
  %.not125 = icmp eq i32 %.0.i.i7.i, %i.ay
  br i1 %.not125, label %char_loc_ignore.exit.thread, label %.critedge

char_loc_ignore.exit.thread:                      ; preds = %.lr.ph161, %bb.m, %char_loc_ignore.exit
  %i.bm = getelementptr i8, ptr %.5160, i64 1     ; 2 uses
  %exitcond215.not = icmp eq ptr %i.bm, %spec.select
  br i1 %exitcond215.not, label %.critedge, label %.lr.ph161, !llvm.loop !200

bb.n:                                             ; preds = %bb.a
  %i.bn = getelementptr i8, ptr %1, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !7  ; 2 uses
  %.not112 = icmp ult i32 %i.bo, 256
  br i1 %.not112, label %.preheader135, label %.critedge

.preheader135:                                    ; preds = %bb.n
  %i.bp = icmp ult ptr %i.a, %spec.select
  br i1 %i.bp, label %.lr.ph156, label %.critedge

.lr.ph156:                                        ; preds = %.preheader135
  %i.bq = trunc nuw i32 %i.bo to i8
  %i.br = sub i64 %spec.select207, %3
  %scevgep212 = getelementptr i8, ptr %i.a, i64 %i.br
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph156, %bb.p
  %.6155 = phi ptr [ %i.a, %.lr.ph156 ], [ %i.bt, %bb.p ] ; 3 uses
  %i.bs = load i8, ptr %.6155, align 1, !tbaa !26
  %.not113 = icmp eq i8 %i.bs, %i.bq
  br i1 %.not113, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr i8, ptr %.6155, i64 1     ; 2 uses
  %exitcond213.not = icmp eq ptr %i.bt, %spec.select
  br i1 %exitcond213.not, label %.critedge, label %bb.o, !llvm.loop !201

bb.q:                                             ; preds = %bb.a
  %i.bu = getelementptr i8, ptr %1, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !7
  %i.bw = icmp ult ptr %i.a, %spec.select
  br i1 %i.bw, label %.lr.ph152.preheader, label %.critedge

.lr.ph152.preheader:                              ; preds = %bb.q
  %i.bx = sub i64 %spec.select207, %3
  %scevgep210 = getelementptr i8, ptr %i.a, i64 %i.bx
  br label %.lr.ph152

.lr.ph152:                                        ; preds = %.lr.ph152.preheader, %bb.s
  %.7151 = phi ptr [ %i.ce, %bb.s ], [ %i.a, %.lr.ph152.preheader ] ; 3 uses
  %i.by = load i8, ptr %.7151, align 1, !tbaa !26 ; 3 uses
  %i.bz = icmp sgt i8 %i.by, -1
  br i1 %i.bz, label %bb.r, label %sre_lower_ascii.exit119

bb.r:                                             ; preds = %.lr.ph152
  %i.ca = zext nneg i8 %i.by to i64
  %i.cb = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !26
  br label %sre_lower_ascii.exit119

sre_lower_ascii.exit119:                          ; preds = %.lr.ph152, %bb.r
  %.in = phi i8 [ %i.cc, %bb.r ], [ %i.by, %.lr.ph152 ]
  %i.cd = zext i8 %.in to i32
  %.not111 = icmp eq i32 %i.bv, %i.cd
  br i1 %.not111, label %.critedge, label %bb.s

bb.s:                                             ; preds = %sre_lower_ascii.exit119
  %i.ce = getelementptr i8, ptr %.7151, i64 1     ; 2 uses
  %exitcond211.not = icmp eq ptr %i.ce, %spec.select
  br i1 %exitcond211.not, label %.critedge, label %.lr.ph152, !llvm.loop !202

bb.t:                                             ; preds = %bb.a
  %i.cf = getelementptr i8, ptr %1, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !7
  %i.ch = icmp ult ptr %i.a, %spec.select
  br i1 %i.ch, label %.lr.ph147.preheader, label %.critedge

.lr.ph147.preheader:                              ; preds = %bb.t
  %i.ci = sub i64 %spec.select207, %3
  %scevgep208 = getelementptr i8, ptr %i.a, i64 %i.ci
  br label %.lr.ph147

.lr.ph147:                                        ; preds = %.lr.ph147.preheader, %bb.u
  %.8146 = phi ptr [ %i.cm, %bb.u ], [ %i.a, %.lr.ph147.preheader ] ; 3 uses
  %i.cj = load i8, ptr %.8146, align 1, !tbaa !26
  %i.ck = zext i8 %i.cj to i32
  %i.cl = tail call i32 @_PyUnicode_ToLowercase(i32 noundef %i.ck) #14
  %.not110 = icmp eq i32 %i.cl, %i.cg
  br i1 %.not110, label %.critedge, label %bb.u

bb.u:                                             ; preds = %.lr.ph147
  %i.cm = getelementptr i8, ptr %.8146, i64 1     ; 2 uses
  %exitcond209.not = icmp eq ptr %i.cm, %spec.select
  br i1 %exitcond209.not, label %.critedge, label %.lr.ph147, !llvm.loop !203

bb.v:                                             ; preds = %bb.a
  %i.cn = getelementptr i8, ptr %1, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !7  ; 3 uses
  %i.cp = icmp ult ptr %i.a, %spec.select
  br i1 %i.cp, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.v
  %i.cq = sub i64 %spec.select207, %3
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.cq
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.x
  %.9140 = phi ptr [ %i.dc, %bb.x ], [ %i.a, %.lr.ph.preheader ] ; 5 uses
  %i.cr = load i8, ptr %.9140, align 1, !tbaa !26 ; 2 uses
  %i.cs = zext i8 %i.cr to i32
  %i.ct = icmp eq i32 %i.co, %i.cs
  br i1 %i.ct, label %.critedge, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  %i.cu = tail call ptr @__ctype_tolower_loc() #15
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !132
  %i.cw = zext i8 %i.cr to i64                    ; 2 uses
  %i.cx = getelementptr [4 x i8], ptr %i.cv, i64 %i.cw
  %.0.i.i.i120 = load i32, ptr %i.cx, align 4, !tbaa !7
  %i.cy = icmp eq i32 %.0.i.i.i120, %i.co
  br i1 %i.cy, label %.critedge, label %char_loc_ignore.exit122

char_loc_ignore.exit122:                          ; preds = %bb.w
  %i.cz = tail call ptr @__ctype_toupper_loc() #15
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !132
  %i.db = getelementptr [4 x i8], ptr %i.da, i64 %i.cw
  %.0.i.i7.i121 = load i32, ptr %i.db, align 4, !tbaa !7
  %.not = icmp eq i32 %.0.i.i7.i121, %i.co
  br i1 %.not, label %.critedge, label %bb.x

bb.x:                                             ; preds = %char_loc_ignore.exit122
  %i.dc = getelementptr i8, ptr %.9140, i64 1     ; 2 uses
  %exitcond.not = icmp eq ptr %i.dc, %spec.select
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !204

.preheader:                                       ; preds = %bb.a, %bb.z
  %i.dd = load ptr, ptr %0, align 8, !tbaa !81    ; 2 uses
  %i.de = icmp ult ptr %i.dd, %spec.select
  br i1 %i.de, label %bb.y, label %split

bb.y:                                             ; preds = %.preheader
  %i.df = tail call fastcc i64 @sre_ucs1_match(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0) ; 3 uses
  %i.dg = icmp slt i64 %i.df, 0
  br i1 %i.dg, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not118 = icmp eq i64 %i.df, 0
  br i1 %.not118, label %._crit_edge, label %.preheader, !llvm.loop !205

._crit_edge:                                      ; preds = %bb.z
  %.pre = load ptr, ptr %0, align 8, !tbaa !81
  br label %split, !llvm.loop !205

split:                                            ; preds = %.preheader, %._crit_edge
  %i.dh = phi ptr [ %.pre, %._crit_edge ], [ %i.dd, %.preheader ]
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = sub i64 %i.di, %3
  br label %.loopexit

.critedge:                                        ; preds = %bb.x, %char_loc_ignore.exit122, %bb.w, %.lr.ph, %bb.u, %.lr.ph147, %bb.s, %sre_lower_ascii.exit119, %bb.o, %bb.p, %char_loc_ignore.exit.thread, %char_loc_ignore.exit, %bb.k, %.lr.ph165, %bb.i, %sre_lower_ascii.exit, %bb.e, %bb.f, %bb.c, %.lr.ph179, %bb.b, %.lr.ph184, %bb.v, %bb.t, %bb.q, %.preheader135, %bb.l, %bb.j, %bb.g, %.preheader128, %.preheader127, %bb.n, %bb.a, %bb.d
  %.10 = phi ptr [ %i.a, %bb.t ], [ %i.a, %.preheader135 ], [ %spec.select, %bb.n ], [ %scevgep210, %bb.s ], [ %spec.select, %bb.a ], [ %i.a, %bb.d ], [ %scevgep220, %bb.f ], [ %scevgep208, %bb.u ], [ %.3169, %sre_lower_ascii.exit ], [ %i.a, %bb.l ], [ %i.a, %bb.q ], [ %i.a, %bb.v ], [ %i.a, %.preheader127 ], [ %.1178, %.lr.ph179 ], [ %i.a, %.preheader128 ], [ %.6155, %bb.o ], [ %.5160, %char_loc_ignore.exit ], [ %.4164, %.lr.ph165 ], [ %i.a, %bb.g ], [ %.0106183, %.lr.ph184 ], [ %i.a, %bb.j ], [ %scevgep224, %bb.b ], [ %scevgep222, %bb.c ], [ %.2173, %bb.e ], [ %scevgep218, %bb.i ], [ %scevgep216, %bb.k ], [ %scevgep214, %char_loc_ignore.exit.thread ], [ %scevgep212, %bb.p ], [ %.7151, %sre_lower_ascii.exit119 ], [ %.8146, %.lr.ph147 ], [ %.9140, %char_loc_ignore.exit122 ], [ %.9140, %bb.w ], [ %.9140, %.lr.ph ], [ %scevgep, %bb.x ]
  %i.dk = load ptr, ptr %0, align 8, !tbaa !81
  %i.dl = ptrtoint ptr %.10 to i64
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = sub i64 %i.dl, %i.dm
  br label %.loopexit

.loopexit:                                        ; preds = %bb.y, %.critedge, %split
  %.0 = phi i64 [ %i.dn, %.critedge ], [ %i.dj, %split ], [ %i.df, %bb.y ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @repeat_pool_malloc(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 216        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !106
  store ptr %i.d, ptr %i.a, align 8, !tbaa !110
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyMem_Malloc(i64 noundef 48) #14 ; 2 uses
  %.not20 = icmp eq ptr %i.e, null
  br i1 %.not20, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.016 = phi ptr [ %i.b, %bb.b ], [ %i.e, %bb.c ] ; 5 uses
  %i.f = getelementptr i8, ptr %0, i64 208        ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !105  ; 3 uses
  %.not21 = icmp eq ptr %i.g, null
  br i1 %.not21, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr i8, ptr %i.g, i64 32
  store ptr %.016, ptr %i.h, align 8, !tbaa !146
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = getelementptr i8, ptr %.016, i64 32
  store ptr null, ptr %i.i, align 8, !tbaa !146
  %i.j = getelementptr i8, ptr %.016, i64 40
  store ptr %i.g, ptr %i.j, align 8, !tbaa !106
  store ptr %.016, ptr %i.f, align 8, !tbaa !105
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  %.0 = phi ptr [ %.016, %bb.f ], [ null, %bb.c ]
  ret ptr %.0
}

declare ptr @PyMem_Realloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #9

declare i32 @_PyUnicode_IsAlpha(i32 noundef) local_unnamed_addr #1

declare i32 @_PyUnicode_IsDecimalDigit(i32 noundef) local_unnamed_addr #1

declare i32 @_PyUnicode_IsDigit(i32 noundef) local_unnamed_addr #1

declare i32 @_PyUnicode_IsNumeric(i32 noundef) local_unnamed_addr #1

declare i32 @_PyUnicode_IsLinebreak(i32 noundef) local_unnamed_addr #1

declare i32 @_PyUnicode_IsWhitespace(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #9

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @sre_ucs2_charset(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = icmp ult i32 %1, 65536
  %i.b = lshr i32 %1, 8
  %i.c = zext nneg i32 %i.b to i64
  %i.d = and i32 %1, 224
  %i.e = zext nneg i32 %i.d to i64
  %i.f = and i32 %1, 31
  %i.g = shl nuw i32 1, %i.f                      ; 2 uses
  %i.h = icmp ult i32 %1, 256
  %i.i = lshr i32 %1, 5
  %i.j = zext nneg i32 %i.i to i64
  br i1 %i.a, label %.split.us.outer, label %.split.split.outer

.split.us.outer:                                  ; preds = %bb.a, %bb.c
  %.058.us.ph = phi i32 [ %i.aa, %bb.c ], [ 1, %bb.a ] ; 9 uses
  %.052.us.ph = phi ptr [ %i.k, %bb.c ], [ %0, %bb.a ]
  br label %.split.us

.split.us:                                        ; preds = %.split.us.backedge, %.split.us.outer
  %.052.us = phi ptr [ %.052.us.ph, %.split.us.outer ], [ %.052.us.be, %.split.us.backedge ] ; 12 uses
  %i.k = getelementptr i8, ptr %.052.us, i64 4    ; 8 uses
  %i.l = load i32, ptr %.052.us, align 4, !tbaa !7
  switch i32 %i.l, label %.thread [
    i32 0, label %.split13.us
    i32 16, label %bb.q
    i32 8, label %bb.o
    i32 9, label %bb.l
    i32 22, label %bb.i
    i32 42, label %bb.d
    i32 21, label %bb.c
    i32 10, label %bb.b
  ]

bb.b:                                             ; preds = %.split.us
  %i.m = getelementptr i8, ptr %.052.us, i64 8
  %i.n = getelementptr i8, ptr %i.m, i64 %i.c
  %i.o = load i8, ptr %i.n, align 1, !tbaa !26
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr i8, ptr %.052.us, i64 264  ; 2 uses
  %i.r = shl nuw nsw i64 %i.p, 8
  %i.s = or disjoint i64 %i.r, %i.e
  %i.t = lshr exact i64 %i.s, 3
  %i.u = getelementptr i8, ptr %i.q, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !7
  %i.w = and i32 %i.v, %i.g
  %.not.us = icmp eq i32 %i.w, 0
  br i1 %.not.us, label %.thread7.us, label %.thread

.thread7.us:                                      ; preds = %bb.b
  %i.x = load i32, ptr %i.k, align 4, !tbaa !7
  %i.y = zext i32 %i.x to i64
  %.idx.us = shl nuw nsw i64 %i.y, 5
  %i.z = getelementptr i8, ptr %i.q, i64 %.idx.us
  br label %.split.us.backedge

bb.c:                                             ; preds = %.split.us
  %i.aa = xor i32 %.058.us.ph, 1
  br label %.split.us.outer

bb.d:                                             ; preds = %.split.us
  %i.ab = load i32, ptr %i.k, align 4, !tbaa !7
  %.not66.us = icmp ugt i32 %i.ab, %1
  br i1 %.not66.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr i8, ptr %.052.us, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !7
  %.not67.us = icmp ugt i32 %1, %i.ad
  br i1 %.not67.us, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ae = tail call i32 @_PyUnicode_ToUppercase(i32 noundef %1) #14 ; 2 uses
  %i.af = load i32, ptr %i.k, align 4, !tbaa !7
  %.not68.us = icmp ugt i32 %i.af, %i.ae
  br i1 %.not68.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr i8, ptr %.052.us, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !7
  %.not69.us = icmp ugt i32 %i.ae, %i.ah
  br i1 %.not69.us, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = getelementptr i8, ptr %.052.us, i64 12
  br label %.split.us.backedge

bb.i:                                             ; preds = %.split.us
  %i.aj = load i32, ptr %i.k, align 4, !tbaa !7
  %.not70.us = icmp ugt i32 %i.aj, %1
  br i1 %.not70.us, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr i8, ptr %.052.us, i64 8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !7
  %.not71.us = icmp ugt i32 %1, %i.al
  br i1 %.not71.us, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = getelementptr i8, ptr %.052.us, i64 12
  br label %.split.us.backedge

bb.l:                                             ; preds = %.split.us
  br i1 %i.h, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr [4 x i8], ptr %i.k, i64 %i.j
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !7
  %i.ap = and i32 %i.ao, %i.g
  %.not72.us = icmp eq i32 %i.ap, 0
  br i1 %.not72.us, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aq = getelementptr i8, ptr %.052.us, i64 36
  br label %.split.us.backedge

bb.o:                                             ; preds = %.split.us
end_hunk_1
