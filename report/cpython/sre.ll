inline.NumInlined: 358
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@sre_ucs1_match:bb.a
  %i.bbg = getelementptr i8, ptr %i.bbf, i64 %i.baq ; 5 uses
  %i.bbh = add i64 %i.bbe, 56
  store i64 %i.bbh, ptr %i.e, align 8, !tbaa !120
  %i.bbi = getelementptr i8, ptr %.9, i64 12      ; 2 uses
  %i.bbj = getelementptr i8, ptr %i.bbg, i64 24
  store ptr %i.bbi, ptr %i.bbj, align 8, !tbaa !133
  %i.bbk = getelementptr i8, ptr %i.bbg, i64 40
  store i32 0, ptr %i.bbk, align 8, !tbaa !125
  %i.bbl = getelementptr i8, ptr %i.bbg, i64 44
  store i32 15, ptr %i.bbl, align 4, !tbaa !124
  %i.bbm = getelementptr i8, ptr %i.bbg, i64 48
  store i64 %.81487, ptr %i.bbm, align 8, !tbaa !122
  br label %.backedge1905.backedge

bb.ov:                                            ; preds = %bb.sj
  br i1 %i.bqx, label %bb.ow, label %bb.ox

bb.ow:                                            ; preds = %bb.ov
  %i.bbn = add nuw i32 %i.bqw, 1
  %i.bbo = sext i32 %i.bbn to i64
  %i.bbp = shl nsw i64 %i.bbo, 3
  %i.bbq = sub i64 %i.boz, %i.bbp
  store i64 %i.bbq, ptr %i.e, align 8, !tbaa !120
  br label %bb.ox

bb.ox:                                            ; preds = %bb.ov, %bb.ow
  %i.bbr = load i64, ptr %i.bpc, align 8, !tbaa !137
  %i.bbs = add i64 %i.bbr, 1                      ; 2 uses
  store i64 %i.bbs, ptr %i.bpc, align 8, !tbaa !137
  br label %bb.oc, !llvm.loop !148

bb.oy:                                            ; preds = %bb.sj
  br i1 %i.bqx, label %bb.oz, label %bb.pa

bb.oz:                                            ; preds = %bb.oy
  %i.bbt = add nuw i32 %i.bqw, 1
  %i.bbu = sext i32 %i.bbt to i64
  %i.bbv = shl nsw i64 %i.bbu, 3                  ; 3 uses
  %i.bbw = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.bbx = getelementptr i8, ptr %i.bpb, i64 %i.boz
  %i.bby = sub nsw i64 0, %i.bbv
  %i.bbz = getelementptr i8, ptr %i.bbx, i64 %i.bby
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bbw, ptr noundef nonnull align 1 dereferenceable(1) %i.bbz, i64 %i.bbv, i1 false)
  %i.bca = load i64, ptr %i.e, align 8, !tbaa !120
  %i.bcb = sub i64 %i.bca, %i.bbv
  store i64 %i.bcb, ptr %i.e, align 8, !tbaa !120
  %.pre2439 = load i32, ptr %i.bqv, align 8, !tbaa !135
  br label %bb.pa

bb.pa:                                            ; preds = %bb.oz, %bb.oy
  %i.bcc = phi i32 [ %.pre2439, %bb.oz ], [ %i.bqw, %bb.oy ]
  store i32 %i.bcc, ptr %i.ae, align 4, !tbaa !85
  %i.bcd = getelementptr i8, ptr %i.bpc, i64 20
  %i.bce = load i32, ptr %i.bcd, align 4, !tbaa !145
  store i32 %i.bce, ptr %i.af, align 8, !tbaa !86
  store ptr %i.bqu, ptr %0, align 8, !tbaa !81
  br label %.critedge6

.critedge6:                                       ; preds = %bb.oc, %bb.pa, %bb.od
  %.35 = phi ptr [ %.32, %bb.od ], [ %.32, %bb.oc ], [ %i.bpc, %bb.pa ] ; 3 uses
  %.111503 = phi i32 [ %.101502, %bb.od ], [ %.101502, %bb.oc ], [ %.13, %bb.pa ]
  %.91488 = phi i64 [ %.81487, %bb.od ], [ %.81487, %bb.oc ], [ %i.bov, %bb.pa ] ; 2 uses
  %.10 = phi ptr [ %.9, %bb.od ], [ %.9, %bb.oc ], [ %i.bqs, %bb.pa ] ; 2 uses
  %i.bcf = getelementptr i8, ptr %.35, i64 8      ; 2 uses
  %i.bcg = load ptr, ptr %i.bcf, align 8, !tbaa !26
  %i.bch = getelementptr i8, ptr %i.bcg, i64 24
  %i.bci = load ptr, ptr %i.bch, align 8, !tbaa !143
  store ptr %i.bci, ptr %i.ac, align 8, !tbaa !87
  %i.bcj = load ptr, ptr %i.bcf, align 8, !tbaa !26 ; 3 uses
  %i.bck = getelementptr i8, ptr %i.bcj, i64 32
  %i.bcl = load ptr, ptr %i.bck, align 8, !tbaa !147 ; 3 uses
  %i.bcm = getelementptr i8, ptr %i.bcj, i64 40   ; 2 uses
  %i.bcn = load ptr, ptr %i.bcm, align 8, !tbaa !106 ; 4 uses
  %.not.i1847 = icmp eq ptr %i.bcl, null
  br i1 %.not.i1847, label %bb.pc, label %bb.pb

bb.pb:                                            ; preds = %.critedge6
  %i.bco = getelementptr i8, ptr %i.bcl, i64 40
  store ptr %i.bcn, ptr %i.bco, align 8, !tbaa !106
  br label %bb.pd

bb.pc:                                            ; preds = %.critedge6
  store ptr %i.bcn, ptr %i.ag, align 8, !tbaa !105
  br label %bb.pd

bb.pd:                                            ; preds = %bb.pc, %bb.pb
  %.not15.i1848 = icmp eq ptr %i.bcn, null
  br i1 %.not15.i1848, label %repeat_pool_free.exit1849, label %bb.pe

bb.pe:                                            ; preds = %bb.pd
  %i.bcp = getelementptr i8, ptr %i.bcn, i64 32
  store ptr %i.bcl, ptr %i.bcp, align 8, !tbaa !147
  br label %repeat_pool_free.exit1849

repeat_pool_free.exit1849:                        ; preds = %bb.pd, %bb.pe
  %i.bcq = load ptr, ptr %i.ah, align 8, !tbaa !110
  store ptr %i.bcq, ptr %i.bcm, align 8, !tbaa !106
  store ptr %i.bcj, ptr %i.ah, align 8, !tbaa !110
  %i.bcr = load i32, ptr %.10, align 4, !tbaa !7
  %i.bcs = add i32 %i.bcr, 1
  %i.bct = zext i32 %i.bcs to i64
  %i.bcu = getelementptr [4 x i8], ptr %.10, i64 %i.bct ; 2 uses
  %i.bcv = load ptr, ptr %0, align 8, !tbaa !81   ; 2 uses
  %i.bcw = add i32 %.111503, 1                    ; 3 uses
  %i.bcx = and i32 %i.bcw, 4095
  %i.bcy = icmp eq i32 %i.bcx, 0
  br i1 %i.bcy, label %bb.pf, label %.preheader1904

bb.pf:                                            ; preds = %repeat_pool_free.exit1849
  %i.bcz = tail call i32 @PyErr_CheckSignals() #13
  %.not1659 = icmp eq i32 %i.bcz, 0
  br i1 %.not1659, label %.preheader1904, label %.loopexit

bb.pg:                                            ; preds = %.backedge
  store ptr %.151535, ptr %0, align 8, !tbaa !81
  %i.bda = getelementptr i8, ptr %.40, i64 24
  store ptr %.12, ptr %i.bda, align 8, !tbaa !133
  %i.bdb = getelementptr i8, ptr %.40, i64 32
  store ptr %.151535, ptr %i.bdb, align 8, !tbaa !134
  %i.bdc = load i64, ptr %i.e, align 8, !tbaa !120 ; 4 uses
  %i.bdd = load i64, ptr %i.g, align 8, !tbaa !121
  %i.bde = sub i64 %i.bdd, %i.bdc
  %i.bdf = icmp ult i64 %i.bde, 56
  br i1 %i.bdf, label %bb.ph, label %bb.pj

bb.ph:                                            ; preds = %bb.pg
  %i.bdg = tail call fastcc i32 @data_stack_grow(ptr noundef nonnull %0, i64 noundef 56) ; 2 uses
  %i.bdh = icmp slt i32 %i.bdg, 0
  br i1 %i.bdh, label %bb.pi, label %._crit_edge2450

._crit_edge2450:                                  ; preds = %bb.ph
  %.pre2451 = load i64, ptr %i.e, align 8, !tbaa !120
  br label %bb.pj

bb.pi:                                            ; preds = %bb.ph
  %i.bdi = sext i32 %i.bdg to i64
  br label %.loopexit

bb.pj:                                            ; preds = %._crit_edge2450, %bb.pg
  %i.bdj = phi i64 [ %.pre2451, %._crit_edge2450 ], [ %i.bdc, %bb.pg ]
  %i.bdk = load ptr, ptr %i.u, align 8, !tbaa !88
  %i.bdl = getelementptr i8, ptr %i.bdk, i64 %i.bdc ; 5 uses
  %i.bdm = add i64 %i.bdj, 56
  store i64 %i.bdm, ptr %i.e, align 8, !tbaa !120
  %i.bdn = getelementptr i8, ptr %.12, i64 4      ; 2 uses
  %i.bdo = getelementptr i8, ptr %i.bdl, i64 24
  store ptr %i.bdn, ptr %i.bdo, align 8, !tbaa !133
  %i.bdp = getelementptr i8, ptr %i.bdl, i64 40
  store i32 0, ptr %i.bdp, align 8, !tbaa !125
  %i.bdq = getelementptr i8, ptr %i.bdl, i64 44
  store i32 16, ptr %i.bdq, align 4, !tbaa !124
  %i.bdr = getelementptr i8, ptr %i.bdl, i64 48
  store i64 %.111490.ph, ptr %i.bdr, align 8, !tbaa !122
  br label %.backedge1905.backedge

bb.pk:                                            ; preds = %bb.ss
  %i.bds = getelementptr i8, ptr %i.bpc, i64 32
  %i.bdt = load ptr, ptr %i.bds, align 8, !tbaa !134
  store ptr %i.bdt, ptr %0, align 8, !tbaa !81
  br label %.critedge1899

bb.pl:                                            ; preds = %bb.ss
  %i.bdu = getelementptr i8, ptr %i.bpc, i64 24
  %i.bdv = load ptr, ptr %i.bdu, align 8, !tbaa !133 ; 2 uses
  %i.bdw = load i32, ptr %i.bdv, align 4, !tbaa !7
  %i.bdx = zext i32 %i.bdw to i64
  %i.bdy = getelementptr [4 x i8], ptr %i.bdv, i64 %i.bdx ; 2 uses
  %i.bdz = load ptr, ptr %0, align 8, !tbaa !81   ; 2 uses
  %i.bea = add i32 %.13, 1                        ; 3 uses
  %i.beb = and i32 %i.bea, 4095
  %i.bec = icmp eq i32 %i.beb, 0
  br i1 %i.bec, label %bb.pm, label %.preheader1904

bb.pm:                                            ; preds = %bb.pl
  %i.bed = tail call i32 @PyErr_CheckSignals() #13
  %.not1645 = icmp eq i32 %i.bed, 0
  br i1 %.not1645, label %.preheader1904, label %.loopexit

.preheader1904:                                   ; preds = %bb.pm, %bb.pl, %bb.pf, %repeat_pool_free.exit1849, %bb.k, %bb.j, %bb.ry, %bb.rx, %bb.re, %bb.rd
  %.1.sink = phi ptr [ %i.boo, %bb.ry ], [ %.1, %bb.k ], [ %i.bcu, %bb.pf ], [ %i.blq, %bb.re ], [ %i.blq, %bb.rd ], [ %i.boo, %bb.rx ], [ %.1, %bb.j ], [ %i.bcu, %repeat_pool_free.exit1849 ], [ %i.bdy, %bb.pl ], [ %i.bdy, %bb.pm ] ; 2 uses
  %.151535.ph = phi ptr [ %.141534, %bb.ry ], [ %i.am, %bb.k ], [ %i.bcv, %bb.pf ], [ %i.bsa, %bb.re ], [ %i.bsa, %bb.rd ], [ %.141534, %bb.rx ], [ %i.am, %bb.j ], [ %i.bcv, %repeat_pool_free.exit1849 ], [ %i.bdz, %bb.pl ], [ %i.bdz, %bb.pm ]
  %.40.ph = phi ptr [ %.38, %bb.ry ], [ %.01505, %bb.k ], [ %.35, %bb.pf ], [ %i.bpc, %bb.re ], [ %i.bpc, %bb.rd ], [ %.38, %bb.rx ], [ %.01505, %bb.j ], [ %.35, %repeat_pool_free.exit1849 ], [ %i.bpc, %bb.pl ], [ %i.bpc, %bb.pm ]
  %.14.ph = phi i32 [ %i.bop, %bb.ry ], [ %i.ba, %bb.k ], [ %i.bcw, %bb.pf ], [ %i.blr, %bb.re ], [ %i.blr, %bb.rd ], [ %i.bop, %bb.rx ], [ %i.ba, %bb.j ], [ %i.bcw, %repeat_pool_free.exit1849 ], [ %i.bea, %bb.pl ], [ %i.bea, %bb.pm ]
  %.111490.ph = phi i64 [ %.101489, %bb.ry ], [ %.01479, %bb.k ], [ %.91488, %bb.pf ], [ %i.bov, %bb.re ], [ %i.bov, %bb.rd ], [ %.101489, %bb.rx ], [ %.01479, %bb.j ], [ %.91488, %repeat_pool_free.exit1849 ], [ %i.bov, %bb.pl ], [ %i.bov, %bb.pm ] ; 45 uses
  %i.bee = getelementptr i8, ptr %.1.sink, i64 4
  %.sink2932 = load i32, ptr %.1.sink, align 4, !tbaa !7
  br label %.backedge

bb.pn:                                            ; preds = %.backedge
  %i.bef = load i32, ptr %.12, align 4, !tbaa !7
  %i.beg = shl i32 %i.bef, 1                      ; 2 uses
  %i.beh = load i32, ptr %i.ae, align 4, !tbaa !85
  %.not1749 = icmp slt i32 %i.beg, %i.beh
  br i1 %.not1749, label %bb.po, label %.critedge1899

bb.po:                                            ; preds = %bb.pn
  %i.bei = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.bej = sext i32 %i.beg to i64
  %i.bek = getelementptr [8 x i8], ptr %i.bei, i64 %i.bej ; 2 uses
  %i.bel = load ptr, ptr %i.bek, align 8, !tbaa !95 ; 5 uses
  %3 = ptrtoint ptr %i.bel to i64
  %i.bem = getelementptr i8, ptr %i.bek, i64 8
  %i.ben = load ptr, ptr %i.bem, align 8, !tbaa !95 ; 5 uses
  %4 = ptrtoint ptr %i.ben to i64
  %i.beo = icmp eq ptr %i.bel, null
  %i.bep = icmp eq ptr %i.ben, null
  %i.beq = icmp ult ptr %i.ben, %i.bel
  %i.ber = or i1 %i.bep, %i.beq
  %or.cond1807 = select i1 %i.beo, i1 true, i1 %i.ber
  br i1 %or.cond1807, label %.critedge1899, label %.preheader

.preheader:                                       ; preds = %bb.po
  %i.bes = icmp ult ptr %i.bel, %i.ben
  br i1 %i.bes, label %.lr.ph2173.preheader, label %._crit_edge2174

.lr.ph2173.preheader:                             ; preds = %.preheader
  %i.bet = sub i64 %4, %3
  %scevgep2436 = getelementptr i8, ptr %.151535, i64 %i.bet
  br label %.lr.ph2173

.lr.ph2173:                                       ; preds = %.lr.ph2173.preheader, %bb.pq
  %.1015302172 = phi ptr [ %i.bex, %bb.pq ], [ %.151535, %.lr.ph2173.preheader ] ; 3 uses
  %.015382171 = phi ptr [ %i.bew, %bb.pq ], [ %i.bel, %.lr.ph2173.preheader ] ; 2 uses
  %.not1751 = icmp ult ptr %.1015302172, %i.b
  br i1 %.not1751, label %bb.pp, label %.critedge1899.loopexit

bb.pp:                                            ; preds = %.lr.ph2173
  %i.beu = load i8, ptr %.1015302172, align 1, !tbaa !26
  %i.bev = load i8, ptr %.015382171, align 1, !tbaa !26
  %.not1752 = icmp eq i8 %i.beu, %i.bev
  br i1 %.not1752, label %bb.pq, label %.critedge1899.loopexit

bb.pq:                                            ; preds = %bb.pp
  %i.bew = getelementptr i8, ptr %.015382171, i64 1 ; 2 uses
  %i.bex = getelementptr i8, ptr %.1015302172, i64 1
  %exitcond2438.not = icmp eq ptr %i.bew, %i.ben
  br i1 %exitcond2438.not, label %._crit_edge2174, label %.lr.ph2173, !llvm.loop !149

._crit_edge2174:                                  ; preds = %bb.pq, %.preheader
  %.101530.lcssa = phi ptr [ %.151535, %.preheader ], [ %scevgep2436, %bb.pq ]
  %i.bey = getelementptr i8, ptr %.12, i64 4
  %i.bez = add i32 %.14, 1                        ; 2 uses
  %i.bfa = and i32 %i.bez, 4095
  %i.bfb = icmp eq i32 %i.bfa, 0
  br i1 %i.bfb, label %bb.pr, label %bb.ps

bb.pr:                                            ; preds = %._crit_edge2174
  %i.bfc = tail call i32 @PyErr_CheckSignals() #13
  %.not1750 = icmp eq i32 %i.bfc, 0
  br i1 %.not1750, label %bb.ps, label %.loopexit

bb.ps:                                            ; preds = %._crit_edge2174, %bb.pr
  %i.bfd = getelementptr i8, ptr %.12, i64 8
  %i.bfe = load i32, ptr %i.bey, align 4, !tbaa !7
  br label %.backedge.backedge

bb.pt:                                            ; preds = %.backedge
  %i.bff = load i32, ptr %.12, align 4, !tbaa !7
  %i.bfg = shl i32 %i.bff, 1                      ; 2 uses
  %i.bfh = load i32, ptr %i.ae, align 4, !tbaa !85
  %.not1678 = icmp slt i32 %i.bfg, %i.bfh
  br i1 %.not1678, label %bb.pu, label %.critedge1899

bb.pu:                                            ; preds = %bb.pt
  %i.bfi = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.bfj = sext i32 %i.bfg to i64
  %i.bfk = getelementptr [8 x i8], ptr %i.bfi, i64 %i.bfj ; 2 uses
  %i.bfl = load ptr, ptr %i.bfk, align 8, !tbaa !95 ; 5 uses
  %5 = ptrtoint ptr %i.bfl to i64
  %i.bfm = getelementptr i8, ptr %i.bfk, i64 8
  %i.bfn = load ptr, ptr %i.bfm, align 8, !tbaa !95 ; 5 uses
  %6 = ptrtoint ptr %i.bfn to i64
  %i.bfo = icmp eq ptr %i.bfl, null
  %i.bfp = icmp eq ptr %i.bfn, null
  %i.bfq = icmp ult ptr %i.bfn, %i.bfl
  %i.bfr = or i1 %i.bfp, %i.bfq
  %or.cond1808 = select i1 %i.bfo, i1 true, i1 %i.bfr
  br i1 %or.cond1808, label %.critedge1899, label %.preheader1902

.preheader1902:                                   ; preds = %bb.pu
  %i.bfs = icmp ult ptr %i.bfl, %i.bfn
  br i1 %i.bfs, label %.lr.ph2159.preheader, label %._crit_edge2160

.lr.ph2159.preheader:                             ; preds = %.preheader1902
  %i.bft = sub i64 %6, %5
  %scevgep2429 = getelementptr i8, ptr %.151535, i64 %i.bft
  br label %.lr.ph2159

.lr.ph2159:                                       ; preds = %.lr.ph2159.preheader, %bb.py
  %.1115312158 = phi ptr [ %i.bgf, %bb.py ], [ %.151535, %.lr.ph2159.preheader ] ; 3 uses
  %.015392157 = phi ptr [ %i.bge, %bb.py ], [ %i.bfl, %.lr.ph2159.preheader ] ; 2 uses
  %.not1680 = icmp ult ptr %.1115312158, %i.b
  br i1 %.not1680, label %bb.pv, label %.critedge1899.loopexit3184

bb.pv:                                            ; preds = %.lr.ph2159
  %i.bfu = load i8, ptr %.1115312158, align 1, !tbaa !26 ; 3 uses
  %i.bfv = icmp sgt i8 %i.bfu, -1
  br i1 %i.bfv, label %bb.pw, label %sre_lower_ascii.exit1850

bb.pw:                                            ; preds = %bb.pv
  %i.bfw = zext nneg i8 %i.bfu to i64
  %i.bfx = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.bfw
  %i.bfy = load i8, ptr %i.bfx, align 1, !tbaa !26
  br label %sre_lower_ascii.exit1850

sre_lower_ascii.exit1850:                         ; preds = %bb.pv, %bb.pw
  %.in1887 = phi i8 [ %i.bfy, %bb.pw ], [ %i.bfu, %bb.pv ]
  %i.bfz = load i8, ptr %.015392157, align 1, !tbaa !26 ; 3 uses
  %i.bga = icmp sgt i8 %i.bfz, -1
  br i1 %i.bga, label %bb.px, label %sre_lower_ascii.exit1851

bb.px:                                            ; preds = %sre_lower_ascii.exit1850
  %i.bgb = zext nneg i8 %i.bfz to i64
  %i.bgc = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.bgb
  %i.bgd = load i8, ptr %i.bgc, align 1, !tbaa !26
  br label %sre_lower_ascii.exit1851

sre_lower_ascii.exit1851:                         ; preds = %sre_lower_ascii.exit1850, %bb.px
  %.in1888 = phi i8 [ %i.bgd, %bb.px ], [ %i.bfz, %sre_lower_ascii.exit1850 ]
  %.not1681 = icmp eq i8 %.in1887, %.in1888
  br i1 %.not1681, label %bb.py, label %.critedge1899.loopexit3184

bb.py:                                            ; preds = %sre_lower_ascii.exit1851
  %i.bge = getelementptr i8, ptr %.015392157, i64 1 ; 2 uses
  %i.bgf = getelementptr i8, ptr %.1115312158, i64 1
  %exitcond2431.not = icmp eq ptr %i.bge, %i.bfn
  br i1 %exitcond2431.not, label %._crit_edge2160, label %.lr.ph2159, !llvm.loop !150

._crit_edge2160:                                  ; preds = %bb.py, %.preheader1902
  %.111531.lcssa = phi ptr [ %.151535, %.preheader1902 ], [ %scevgep2429, %bb.py ]
  %i.bgg = getelementptr i8, ptr %.12, i64 4
  %i.bgh = add i32 %.14, 1                        ; 2 uses
  %i.bgi = and i32 %i.bgh, 4095
  %i.bgj = icmp eq i32 %i.bgi, 0
  br i1 %i.bgj, label %bb.pz, label %bb.qa

bb.pz:                                            ; preds = %._crit_edge2160
  %i.bgk = tail call i32 @PyErr_CheckSignals() #13
  %.not1679 = icmp eq i32 %i.bgk, 0
  br i1 %.not1679, label %bb.qa, label %.loopexit

bb.qa:                                            ; preds = %._crit_edge2160, %bb.pz
  %i.bgl = getelementptr i8, ptr %.12, i64 8
  %i.bgm = load i32, ptr %i.bgg, align 4, !tbaa !7
  br label %.backedge.backedge

bb.qb:                                            ; preds = %.backedge
  %i.bgn = load i32, ptr %.12, align 4, !tbaa !7
  %i.bgo = shl i32 %i.bgn, 1                      ; 2 uses
  %i.bgp = load i32, ptr %i.ae, align 4, !tbaa !85
  %.not1713 = icmp slt i32 %i.bgo, %i.bgp
  br i1 %.not1713, label %bb.qc, label %.critedge1899

bb.qc:                                            ; preds = %bb.qb
  %i.bgq = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.bgr = sext i32 %i.bgo to i64
  %i.bgs = getelementptr [8 x i8], ptr %i.bgq, i64 %i.bgr ; 2 uses
  %i.bgt = load ptr, ptr %i.bgs, align 8, !tbaa !95 ; 4 uses
  %i.bgu = getelementptr i8, ptr %i.bgs, i64 8
  %i.bgv = load ptr, ptr %i.bgu, align 8, !tbaa !95 ; 4 uses
  %i.bgw = icmp eq ptr %i.bgt, null
  %i.bgx = icmp eq ptr %i.bgv, null
  %i.bgy = icmp ult ptr %i.bgv, %i.bgt
  %i.bgz = or i1 %i.bgx, %i.bgy
  %or.cond1809 = select i1 %i.bgw, i1 true, i1 %i.bgz
  br i1 %or.cond1809, label %.critedge1899, label %.preheader1901

.preheader1901:                                   ; preds = %bb.qc
  %i.bha = icmp ult ptr %i.bgt, %i.bgv
  br i1 %i.bha, label %.lr.ph2164, label %._crit_edge2165

.lr.ph2164:                                       ; preds = %.preheader1901, %bb.qe
  %.1215322163 = phi ptr [ %i.bhi, %bb.qe ], [ %.151535, %.preheader1901 ] ; 3 uses
  %.015402162 = phi ptr [ %i.bhh, %bb.qe ], [ %i.bgt, %.preheader1901 ] ; 2 uses
  %.not1715 = icmp ult ptr %.1215322163, %i.b
  br i1 %.not1715, label %bb.qd, label %.critedge1899.loopexit3183

bb.qd:                                            ; preds = %.lr.ph2164
  %i.bhb = load i8, ptr %.1215322163, align 1, !tbaa !26
  %i.bhc = zext i8 %i.bhb to i32
  %i.bhd = tail call i32 @_PyUnicode_ToLowercase(i32 noundef %i.bhc) #13
  %i.bhe = load i8, ptr %.015402162, align 1, !tbaa !26
  %i.bhf = zext i8 %i.bhe to i32
  %i.bhg = tail call i32 @_PyUnicode_ToLowercase(i32 noundef %i.bhf) #13
  %.not1716 = icmp eq i32 %i.bhd, %i.bhg
  br i1 %.not1716, label %bb.qe, label %.critedge1899.loopexit3183

bb.qe:                                            ; preds = %bb.qd
  %i.bhh = getelementptr i8, ptr %.015402162, i64 1 ; 2 uses
  %i.bhi = getelementptr i8, ptr %.1215322163, i64 1 ; 2 uses
  %exitcond2433.not = icmp eq ptr %i.bhh, %i.bgv
  br i1 %exitcond2433.not, label %._crit_edge2165, label %.lr.ph2164, !llvm.loop !151

._crit_edge2165:                                  ; preds = %bb.qe, %.preheader1901
  %.121532.lcssa = phi ptr [ %.151535, %.preheader1901 ], [ %i.bhi, %bb.qe ]
  %i.bhj = getelementptr i8, ptr %.12, i64 4
  %i.bhk = add i32 %.14, 1                        ; 2 uses
  %i.bhl = and i32 %i.bhk, 4095
  %i.bhm = icmp eq i32 %i.bhl, 0
  br i1 %i.bhm, label %bb.qf, label %bb.qg

bb.qf:                                            ; preds = %._crit_edge2165
  %i.bhn = tail call i32 @PyErr_CheckSignals() #13
  %.not1714 = icmp eq i32 %i.bhn, 0
  br i1 %.not1714, label %bb.qg, label %.loopexit

bb.qg:                                            ; preds = %._crit_edge2165, %bb.qf
  %i.bho = getelementptr i8, ptr %.12, i64 8
  %i.bhp = load i32, ptr %i.bhj, align 4, !tbaa !7
  br label %.backedge.backedge

bb.qh:                                            ; preds = %.backedge
  %i.bhq = load i32, ptr %.12, align 4, !tbaa !7
  %i.bhr = shl i32 %i.bhq, 1                      ; 2 uses
  %i.bhs = load i32, ptr %i.ae, align 4, !tbaa !85
  %.not1666 = icmp slt i32 %i.bhr, %i.bhs
  br i1 %.not1666, label %bb.qi, label %.critedge1899

bb.qi:                                            ; preds = %bb.qh
  %i.bht = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.bhu = sext i32 %i.bhr to i64
  %i.bhv = getelementptr [8 x i8], ptr %i.bht, i64 %i.bhu ; 2 uses
  %i.bhw = load ptr, ptr %i.bhv, align 8, !tbaa !95 ; 5 uses
  %7 = ptrtoint ptr %i.bhw to i64
  %i.bhx = getelementptr i8, ptr %i.bhv, i64 8
  %i.bhy = load ptr, ptr %i.bhx, align 8, !tbaa !95 ; 5 uses
  %8 = ptrtoint ptr %i.bhy to i64
  %i.bhz = icmp eq ptr %i.bhw, null
  %i.bia = icmp eq ptr %i.bhy, null
  %i.bib = icmp ult ptr %i.bhy, %i.bhw
  %i.bic = or i1 %i.bia, %i.bib
  %or.cond1810 = select i1 %i.bhz, i1 true, i1 %i.bic
  br i1 %or.cond1810, label %.critedge1899, label %.preheader1903

.preheader1903:                                   ; preds = %bb.qi
  %i.bid = icmp ult ptr %i.bhw, %i.bhy
  br i1 %i.bid, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader1903
  %i.bie = sub i64 %8, %7
  %scevgep = getelementptr i8, ptr %.151535, i64 %i.bie
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.qk
  %.1315332156 = phi ptr [ %i.bio, %bb.qk ], [ %.151535, %.lr.ph.preheader ] ; 3 uses
  %.015372155 = phi ptr [ %i.bin, %bb.qk ], [ %i.bhw, %.lr.ph.preheader ] ; 2 uses
  %.not1668 = icmp ult ptr %.1315332156, %i.b
  br i1 %.not1668, label %bb.qj, label %.critedge1899.loopexit3185

bb.qj:                                            ; preds = %.lr.ph
  %i.bif = load i8, ptr %.1315332156, align 1, !tbaa !26
  %i.big = tail call ptr @__ctype_tolower_loc() #14
  %i.bih = load ptr, ptr %i.big, align 8, !tbaa !132 ; 2 uses
  %i.bii = zext i8 %i.bif to i64
  %i.bij = getelementptr [4 x i8], ptr %i.bih, i64 %i.bii
  %.0.i.i = load i32, ptr %i.bij, align 4, !tbaa !7
  %i.bik = load i8, ptr %.015372155, align 1, !tbaa !26
  %i.bil = zext i8 %i.bik to i64
  %i.bim = getelementptr [4 x i8], ptr %i.bih, i64 %i.bil
  %.0.i.i1852 = load i32, ptr %i.bim, align 4, !tbaa !7
  %.not1669 = icmp eq i32 %.0.i.i, %.0.i.i1852
  br i1 %.not1669, label %bb.qk, label %.critedge1899.loopexit3185

bb.qk:                                            ; preds = %bb.qj
  %i.bin = getelementptr i8, ptr %.015372155, i64 1 ; 2 uses
  %i.bio = getelementptr i8, ptr %.1315332156, i64 1
  %exitcond.not = icmp eq ptr %i.bin, %i.bhy
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !152

._crit_edge:                                      ; preds = %bb.qk, %.preheader1903
  %.131533.lcssa = phi ptr [ %.151535, %.preheader1903 ], [ %scevgep, %bb.qk ]
  %i.bip = getelementptr i8, ptr %.12, i64 4
  %i.biq = add i32 %.14, 1                        ; 2 uses
  %i.bir = and i32 %i.biq, 4095
  %i.bis = icmp eq i32 %i.bir, 0
  br i1 %i.bis, label %bb.ql, label %bb.qm

bb.ql:                                            ; preds = %._crit_edge
  %i.bit = tail call i32 @PyErr_CheckSignals() #13
  %.not1667 = icmp eq i32 %i.bit, 0
  br i1 %.not1667, label %bb.qm, label %.loopexit

bb.qm:                                            ; preds = %._crit_edge, %bb.ql
  %i.biu = getelementptr i8, ptr %.12, i64 8
  %i.biv = load i32, ptr %i.bip, align 4, !tbaa !7
  br label %.backedge.backedge

bb.qn:                                            ; preds = %.backedge
  %i.biw = load i32, ptr %.12, align 4, !tbaa !7
  %i.bix = shl i32 %i.biw, 1                      ; 2 uses
  %i.biy = load i32, ptr %i.ae, align 4, !tbaa !85
  %.not1745 = icmp slt i32 %i.bix, %i.biy
  br i1 %.not1745, label %bb.qr, label %bb.qo

bb.qo:                                            ; preds = %bb.qn
  %i.biz = getelementptr i8, ptr %.12, i64 4
  %i.bja = load i32, ptr %i.biz, align 4, !tbaa !7
  %i.bjb = zext i32 %i.bja to i64
  %i.bjc = getelementptr [4 x i8], ptr %.12, i64 %i.bjb ; 2 uses
  %i.bjd = add i32 %.14, 1                        ; 2 uses
  %i.bje = and i32 %i.bjd, 4095
  %i.bjf = icmp eq i32 %i.bje, 0
  br i1 %i.bjf, label %bb.qp, label %bb.qq

bb.qp:                                            ; preds = %bb.qo
  %i.bjg = tail call i32 @PyErr_CheckSignals() #13
  %.not1748 = icmp eq i32 %i.bjg, 0
  br i1 %.not1748, label %bb.qq, label %.loopexit

bb.qq:                                            ; preds = %bb.qo, %bb.qp
  %i.bjh = getelementptr i8, ptr %i.bjc, i64 4
  %i.bji = load i32, ptr %i.bjc, align 4, !tbaa !7
  br label %.backedge.backedge

bb.qr:                                            ; preds = %bb.qn
  %i.bjj = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.bjk = sext i32 %i.bix to i64
  %i.bjl = getelementptr [8 x i8], ptr %i.bjj, i64 %i.bjk ; 2 uses
  %i.bjm = load ptr, ptr %i.bjl, align 8, !tbaa !95 ; 2 uses
  %i.bjn = getelementptr i8, ptr %i.bjl, i64 8
  %i.bjo = load ptr, ptr %i.bjn, align 8, !tbaa !95 ; 2 uses
  %i.bjp = icmp eq ptr %i.bjm, null
  %i.bjq = icmp eq ptr %i.bjo, null
  %i.bjr = icmp ult ptr %i.bjo, %i.bjm
  %i.bjs = or i1 %i.bjq, %i.bjr
  %or.cond1811 = select i1 %i.bjp, i1 true, i1 %i.bjs
  br i1 %or.cond1811, label %bb.qs, label %bb.qv

bb.qs:                                            ; preds = %bb.qr
  %i.bjt = getelementptr i8, ptr %.12, i64 4
  %i.bju = load i32, ptr %i.bjt, align 4, !tbaa !7
  %i.bjv = zext i32 %i.bju to i64
  %i.bjw = getelementptr [4 x i8], ptr %.12, i64 %i.bjv ; 2 uses
  %i.bjx = add i32 %.14, 1                        ; 2 uses
  %i.bjy = and i32 %i.bjx, 4095
  %i.bjz = icmp eq i32 %i.bjy, 0
  br i1 %i.bjz, label %bb.qt, label %bb.qu

bb.qt:                                            ; preds = %bb.qs
  %i.bka = tail call i32 @PyErr_CheckSignals() #13
  %.not1747 = icmp eq i32 %i.bka, 0
  br i1 %.not1747, label %bb.qu, label %.loopexit

bb.qu:                                            ; preds = %bb.qs, %bb.qt
  %i.bkb = getelementptr i8, ptr %i.bjw, i64 4
  %i.bkc = load i32, ptr %i.bjw, align 4, !tbaa !7
  br label %.backedge.backedge

bb.qv:                                            ; preds = %bb.qr
  %i.bkd = getelementptr i8, ptr %.12, i64 8
  %i.bke = add i32 %.14, 1                        ; 2 uses
  %i.bkf = and i32 %i.bke, 4095
  %i.bkg = icmp eq i32 %i.bkf, 0
  br i1 %i.bkg, label %bb.qw, label %bb.qx

bb.qw:                                            ; preds = %bb.qv
  %i.bkh = tail call i32 @PyErr_CheckSignals() #13
  %.not1746 = icmp eq i32 %i.bkh, 0
  br i1 %.not1746, label %bb.qx, label %.loopexit

bb.qx:                                            ; preds = %bb.qv, %bb.qw
  %i.bki = getelementptr i8, ptr %.12, i64 12
  %i.bkj = load i32, ptr %i.bkd, align 4, !tbaa !7
  br label %.backedge.backedge

bb.qy:                                            ; preds = %.backedge
  %i.bkk = load ptr, ptr %i.ak, align 8, !tbaa !89
  %i.bkl = ptrtoint ptr %.151535 to i64
  %i.bkm = ptrtoint ptr %i.bkk to i64
  %i.bkn = sub i64 %i.bkl, %i.bkm
  %i.bko = getelementptr i8, ptr %.12, i64 4
  %i.bkp = load i32, ptr %i.bko, align 4, !tbaa !7
  %i.bkq = zext i32 %i.bkp to i64                 ; 2 uses
  %i.bkr = icmp ult i64 %i.bkn, %i.bkq
  br i1 %i.bkr, label %.critedge1899, label %bb.qz

bb.qz:                                            ; preds = %bb.qy
  %i.bks = sub nsw i64 0, %i.bkq
  %i.bkt = getelementptr i8, ptr %.151535, i64 %i.bks
  store ptr %i.bkt, ptr %0, align 8, !tbaa !81
  %i.bku = getelementptr i8, ptr %.40, i64 24
  store ptr %.12, ptr %i.bku, align 8, !tbaa !133
  %i.bkv = getelementptr i8, ptr %.40, i64 32
  store ptr %.151535, ptr %i.bkv, align 8, !tbaa !134
  %i.bkw = load i64, ptr %i.e, align 8, !tbaa !120 ; 4 uses
  %i.bkx = load i64, ptr %i.g, align 8, !tbaa !121
  %i.bky = sub i64 %i.bkx, %i.bkw
  %i.bkz = icmp ult i64 %i.bky, 56
  br i1 %i.bkz, label %bb.ra, label %bb.rc

bb.ra:                                            ; preds = %bb.qz
  %i.bla = tail call fastcc i32 @data_stack_grow(ptr noundef nonnull %0, i64 noundef 56) ; 2 uses
  %i.blb = icmp slt i32 %i.bla, 0
  br i1 %i.blb, label %bb.rb, label %._crit_edge2501

._crit_edge2501:                                  ; preds = %bb.ra
  %.pre2502 = load i64, ptr %i.e, align 8, !tbaa !120
  br label %bb.rc

bb.rb:                                            ; preds = %bb.ra
  %i.blc = sext i32 %i.bla to i64
  br label %.loopexit

bb.rc:                                            ; preds = %._crit_edge2501, %bb.qz
  %i.bld = phi i64 [ %.pre2502, %._crit_edge2501 ], [ %i.bkw, %bb.qz ]
  %i.ble = load ptr, ptr %i.u, align 8, !tbaa !88
  %i.blf = getelementptr i8, ptr %i.ble, i64 %i.bkw ; 5 uses
  %i.blg = add i64 %i.bld, 56
  store i64 %i.blg, ptr %i.e, align 8, !tbaa !120
  %i.blh = getelementptr i8, ptr %.12, i64 8      ; 2 uses
  %i.bli = getelementptr i8, ptr %i.blf, i64 24
  store ptr %i.blh, ptr %i.bli, align 8, !tbaa !133
  %i.blj = getelementptr i8, ptr %i.blf, i64 40
  store i32 0, ptr %i.blj, align 8, !tbaa !125
  %i.blk = getelementptr i8, ptr %i.blf, i64 44
  store i32 12, ptr %i.blk, align 4, !tbaa !124
  %i.bll = getelementptr i8, ptr %i.blf, i64 48
  store i64 %.111490.ph, ptr %i.bll, align 8, !tbaa !122
  br label %.backedge1905.backedge

bb.rd:                                            ; preds = %bb.st
  %i.blm = getelementptr i8, ptr %i.bpc, i64 24
  %i.bln = load ptr, ptr %i.blm, align 8, !tbaa !133 ; 2 uses
  %i.blo = load i32, ptr %i.bln, align 4, !tbaa !7
  %i.blp = zext i32 %i.blo to i64
  %i.blq = getelementptr [4 x i8], ptr %i.bln, i64 %i.blp ; 2 uses
  %i.blr = add i32 %.13, 1                        ; 3 uses
end_hunk_0
begin_hunk_1_@sre_ucs1_charset:bb.a
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
  %i.ae = tail call i32 @_PyUnicode_ToUppercase(i32 noundef %1) #13 ; 2 uses
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
  %i.bo = tail call i32 @_PyUnicode_ToUppercase(i32 noundef %1) #13 ; 2 uses
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
  %i.au = tail call i32 @_PyUnicode_ToLowercase(i32 noundef %i.at) #13
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
  %i.be = tail call ptr @__ctype_tolower_loc() #14
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !132
  %i.bg = zext i8 %i.bb to i64                    ; 2 uses
  %i.bh = getelementptr [4 x i8], ptr %i.bf, i64 %i.bg
  %.0.i.i.i = load i32, ptr %i.bh, align 4, !tbaa !7
  %i.bi = icmp eq i32 %.0.i.i.i, %i.ay
  br i1 %i.bi, label %char_loc_ignore.exit.thread, label %char_loc_ignore.exit

char_loc_ignore.exit:                             ; preds = %bb.m
  %i.bj = tail call ptr @__ctype_toupper_loc() #14
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
  %i.cl = tail call i32 @_PyUnicode_ToLowercase(i32 noundef %i.ck) #13
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
  %i.cu = tail call ptr @__ctype_tolower_loc() #14
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !132
  %i.cw = zext i8 %i.cr to i64                    ; 2 uses
  %i.cx = getelementptr [4 x i8], ptr %i.cv, i64 %i.cw
  %.0.i.i.i120 = load i32, ptr %i.cx, align 4, !tbaa !7
  %i.cy = icmp eq i32 %.0.i.i.i120, %i.co
  br i1 %i.cy, label %.critedge, label %char_loc_ignore.exit122

char_loc_ignore.exit122:                          ; preds = %bb.w
  %i.cz = tail call ptr @__ctype_toupper_loc() #14
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
  %i.e = tail call ptr @PyMem_Malloc(i64 noundef 48) #13 ; 2 uses
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
  store ptr %.016, ptr %i.h, align 8, !tbaa !147
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = getelementptr i8, ptr %.016, i64 32
  store ptr null, ptr %i.i, align 8, !tbaa !147
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
declare ptr @__ctype_b_loc() local_unnamed_addr #8

declare i32 @_PyUnicode_IsAlpha(i32 noundef) local_unnamed_addr #1

declare i32 @_PyUnicode_IsDecimalDigit(i32 noundef) local_unnamed_addr #1

declare i32 @_PyUnicode_IsDigit(i32 noundef) local_unnamed_addr #1

declare i32 @_PyUnicode_IsNumeric(i32 noundef) local_unnamed_addr #1

declare i32 @_PyUnicode_IsLinebreak(i32 noundef) local_unnamed_addr #1

declare i32 @_PyUnicode_IsWhitespace(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #8

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
  %i.ae = tail call i32 @_PyUnicode_ToUppercase(i32 noundef %1) #13 ; 2 uses
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
