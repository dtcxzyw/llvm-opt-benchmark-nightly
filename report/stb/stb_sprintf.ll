Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_sprintf?download=true
inline.NumInlined: 8
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@stbsp_vsprintfcb:bb.a
.loopexit1459:                                    ; preds = %.loopexit1459.backedge, %bb.fs
  %.lcssa15841595 = phi i32 [ 0, %bb.fs ], [ %.lcssa15841595.be, %.loopexit1459.backedge ] ; 3 uses
  %.41267 = phi i64 [ %.31266, %bb.fs ], [ %storemerge, %.loopexit1459.backedge ] ; 4 uses
  %.25.idx = phi i64 [ 512, %bb.fs ], [ %.25.idx.be, %.loopexit1459.backedge ] ; 4 uses
  %.25.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.25.idx
  %i.adw = getelementptr inbounds i8, ptr %.25.ptr, i64 -8 ; 3 uses
  %i.adx = icmp ugt i64 %.41267, 99999999
  br i1 %i.adx, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %.loopexit1459
  %i.ady = urem i64 %.41267, 100000000
  %i.adz = udiv i64 %.41267, 100000000
  br label %bb.fu

bb.fu:                                            ; preds = %.loopexit1459, %bb.ft
  %storemerge = phi i64 [ %i.adz, %bb.ft ], [ 0, %.loopexit1459 ] ; 2 uses
  %.15735.in = phi i64 [ %i.ady, %bb.ft ], [ %.41267, %.loopexit1459 ] ; 2 uses
  %.15735 = trunc nuw nsw i64 %.15735.in to i32   ; 2 uses
  br i1 %i.adu, label %.preheader1460, label %.loopexit1461

.preheader1460:                                   ; preds = %bb.fu, %.preheader1460
  %.26.idx = phi i64 [ %.26.add, %.preheader1460 ], [ %.25.idx, %bb.fu ]
  %.16 = phi i32 [ %i.aef, %.preheader1460 ], [ %.15735, %bb.fu ] ; 3 uses
  %.26.add = add nsw i64 %.26.idx, -2             ; 3 uses
  %.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.26.add
  %i.aea = urem i32 %.16, 100
  %i.aeb = shl nuw nsw i32 %i.aea, 1
  %i.aec = zext nneg i32 %i.aeb to i64
  %i.aed = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @stbsp__digitpair, i64 2), i64 %i.aec
  %i.aee = load i16, ptr %i.aed, align 2, !tbaa !22
  store i16 %i.aee, ptr %.ptr, align 2, !tbaa !22
  %i.aef = udiv i32 %.16, 100
  %.not1084 = icmp samesign ult i32 %.16, 100
  br i1 %.not1084, label %._crit_edge, label %.preheader1460, !llvm.loop !44

.loopexit1461:                                    ; preds = %bb.fu
  %.not10851574 = icmp eq i64 %.15735.in, 0
  br i1 %.not10851574, label %._crit_edge, label %.lr.ph1578

.lr.ph1578:                                       ; preds = %.loopexit1461, %bb.fx
  %.06941577 = phi ptr [ %.1695, %bb.fx ], [ %i.adw, %.loopexit1461 ] ; 2 uses
  %.181576 = phi i32 [ %.19, %bb.fx ], [ %.15735, %.loopexit1461 ] ; 3 uses
  %.28.idx1575 = phi i64 [ %.29.idx, %bb.fx ], [ %.25.idx, %.loopexit1461 ] ; 2 uses
  %i.aeg = phi i32 [ %i.aeo, %bb.fx ], [ %.lcssa15841595, %.loopexit1461 ] ; 2 uses
  %i.aeh = icmp eq i32 %i.aeg, 3
  br i1 %i.aeh, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %.lr.ph1578
  %.28.add1088 = add nsw i64 %.28.idx1575, -1     ; 2 uses
  %.ptr1092 = getelementptr inbounds i8, ptr %i.a, i64 %.28.add1088
  store i8 %i.adv, ptr %.ptr1092, align 1, !tbaa !9
  %i.aei = getelementptr inbounds i8, ptr %.06941577, i64 -1
  br label %bb.fx

bb.fw:                                            ; preds = %.lr.ph1578
  %i.aej = add i32 %i.aeg, 1
  %i.aek = urem i32 %.181576, 10
  %i.ael = trunc nuw nsw i32 %i.aek to i8
  %i.aem = or disjoint i8 %i.ael, 48
  %.28.add = add nsw i64 %.28.idx1575, -1         ; 2 uses
  %.ptr1091 = getelementptr inbounds i8, ptr %i.a, i64 %.28.add
  store i8 %i.aem, ptr %.ptr1091, align 1, !tbaa !9
  %i.aen = udiv i32 %.181576, 10
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %i.aeo = phi i32 [ 0, %bb.fv ], [ %i.aej, %bb.fw ] ; 2 uses
  %.29.idx = phi i64 [ %.28.add1088, %bb.fv ], [ %.28.add, %bb.fw ] ; 2 uses
  %.19 = phi i32 [ %.181576, %bb.fv ], [ %i.aen, %bb.fw ] ; 2 uses
  %.1695 = phi ptr [ %i.aei, %bb.fv ], [ %.06941577, %bb.fw ] ; 2 uses
  %.not1085 = icmp eq i32 %.19, 0
  br i1 %.not1085, label %._crit_edge, label %.lr.ph1578, !llvm.loop !45

._crit_edge:                                      ; preds = %bb.fx, %.preheader1460, %.loopexit1461
  %.lcssa1573 = phi i32 [ %.lcssa15841595, %.loopexit1461 ], [ %.lcssa15841595, %.preheader1460 ], [ %i.aeo, %bb.fx ] ; 3 uses
  %.28.idx.lcssa1572 = phi i64 [ %.25.idx, %.loopexit1461 ], [ %.26.add, %.preheader1460 ], [ %.29.idx, %bb.fx ] ; 6 uses
  %.0694.lcssa = phi ptr [ %i.adw, %.loopexit1461 ], [ %i.adw, %.preheader1460 ], [ %.1695, %bb.fx ] ; 3 uses
  %.0694.lcssa1982 = ptrtoaddr ptr %.0694.lcssa to i64 ; 3 uses
  %i.aep = icmp eq i64 %storemerge, 0
  %.28.ptr.le.le = getelementptr inbounds i8, ptr %i.a, i64 %.28.idx.lcssa1572 ; 2 uses
  br i1 %i.aep, label %bb.gb, label %.preheader1458.a

.preheader1458.a:                                 ; preds = %._crit_edge
  %.not10861586 = icmp eq ptr %.28.ptr.le.le, %.0694.lcssa
  br i1 %.not10861586, label %.loopexit1459.backedge, label %.lr.ph1589

.lr.ph1589:                                       ; preds = %.preheader1458.a
  br i1 %i.adu, label %.lr.ph1589.split.us.preheader, label %.lr.ph1589.split

.lr.ph1589.split.us.preheader:                    ; preds = %.lr.ph1589
  %scevgep1983 = getelementptr i8, ptr %scevgep, i64 %.0694.lcssa1982
  %i.aeq = add i64 %.28.idx.lcssa1572, %i.b
  %i.aer = sub i64 %i.aeq, %.0694.lcssa1982
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep1983, i8 48, i64 %i.aer, i1 false), !tbaa !9
  %i.aes = sub i64 %.0694.lcssa1982, %i.b
  br label %.loopexit1459.backedge

.loopexit1459.backedge:                           ; preds = %bb.ga, %.lr.ph1589.split.us.preheader, %.preheader1458.a
  %.lcssa15841595.be = phi i32 [ %.lcssa1573, %.preheader1458.a ], [ %.lcssa1573, %.lr.ph1589.split.us.preheader ], [ %i.aex, %bb.ga ]
  %.25.idx.be = phi i64 [ %.28.idx.lcssa1572, %.preheader1458.a ], [ %i.aes, %.lr.ph1589.split.us.preheader ], [ %.32.idx, %bb.ga ]
  br label %.loopexit1459

.lr.ph1589.split:                                 ; preds = %.lr.ph1589, %bb.ga
  %.26961588 = phi ptr [ %.3697, %bb.ga ], [ %.0694.lcssa, %.lr.ph1589 ] ; 2 uses
  %.31.idx1587 = phi i64 [ %.32.idx, %bb.ga ], [ %.28.idx.lcssa1572, %.lr.ph1589 ] ; 2 uses
  %i.aet = phi i32 [ %i.aex, %bb.ga ], [ %.lcssa1573, %.lr.ph1589 ] ; 2 uses
  %i.aeu = icmp eq i32 %i.aet, 3
  br i1 %i.aeu, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %.lr.ph1589.split
  %.31.add1090 = add nsw i64 %.31.idx1587, -1     ; 2 uses
  %.ptr1096 = getelementptr inbounds i8, ptr %i.a, i64 %.31.add1090
  store i8 %i.adv, ptr %.ptr1096, align 1, !tbaa !9
  %i.aev = getelementptr inbounds i8, ptr %.26961588, i64 -1
  br label %bb.ga

bb.fz:                                            ; preds = %.lr.ph1589.split
  %i.aew = add i32 %i.aet, 1
  %.31.add = add nsw i64 %.31.idx1587, -1         ; 2 uses
  %.ptr1095 = getelementptr inbounds i8, ptr %i.a, i64 %.31.add
  store i8 48, ptr %.ptr1095, align 1, !tbaa !9
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %i.aex = phi i32 [ 0, %bb.fy ], [ %i.aew, %bb.fz ] ; 2 uses
  %.32.idx = phi i64 [ %.31.add1090, %bb.fy ], [ %.31.add, %bb.fz ] ; 3 uses
  %.3697 = phi ptr [ %i.aev, %bb.fy ], [ %.26961588, %bb.fz ] ; 2 uses
  %.31.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.32.idx
  %.not1086 = icmp eq ptr %.31.ptr, %.3697
  br i1 %.not1086, label %.loopexit1459.backedge, label %.lr.ph1589.split, !llvm.loop !46

bb.gb:                                            ; preds = %._crit_edge
  %i.aey = load i8, ptr %.28.ptr.le.le, align 1, !tbaa !9
  %i.aez = icmp eq i8 %i.aey, 48
  %i.afa = icmp ne i64 %.28.idx.lcssa1572, 512
  %or.cond35 = and i1 %i.afa, %i.aez
  %.28.add1089 = zext i1 %or.cond35 to i64
  %spec.select1203 = add nsw i64 %.28.idx.lcssa1572, %.28.add1089 ; 2 uses
  %.33.ptr1295 = getelementptr inbounds i8, ptr %i.a, i64 %spec.select1203 ; 2 uses
  store i8 0, ptr %i.d, align 1, !tbaa !9
  store i8 0, ptr %i.c, align 1, !tbaa !9
  %i.afb = and i32 %.16794, 128
  %.not.i1248 = icmp eq i32 %i.afb, 0
  br i1 %.not.i1248, label %bb.gc, label %.sink.split.i1249

bb.gc:                                            ; preds = %bb.gb
  %i.afc = and i32 %.16794, 4
  %.not9.i1251 = icmp eq i32 %i.afc, 0
  br i1 %.not9.i1251, label %bb.gd, label %.sink.split.i1249

bb.gd:                                            ; preds = %bb.gc
  %i.afd = and i32 %.16794, 2
  %.not10.i1252 = icmp eq i32 %i.afd, 0
  br i1 %.not10.i1252, label %stbsp__lead_sign.exit1253, label %.sink.split.i1249

.sink.split.i1249:                                ; preds = %bb.gd, %bb.gc, %bb.gb
  %.sink.i1250 = phi i8 [ 45, %bb.gb ], [ 32, %bb.gc ], [ 43, %bb.gd ]
  store i8 1, ptr %i.c, align 1, !tbaa !9
  store i8 %.sink.i1250, ptr %i.j, align 1, !tbaa !9
  br label %stbsp__lead_sign.exit1253

stbsp__lead_sign.exit1253:                        ; preds = %bb.gd, %.sink.split.i1249
  %i.afe = trunc i64 %spec.select1203 to i32      ; 2 uses
  %i.aff = sub i32 512, %i.afe                    ; 2 uses
  store i32 %i.aff, ptr %i.e, align 4, !tbaa !10
  %i.afg = icmp eq i32 %i.afe, 512
  br i1 %i.afg, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %stbsp__lead_sign.exit1253
  %i.afh = getelementptr inbounds i8, ptr %.33.ptr1295, i64 -1 ; 2 uses
  store i8 48, ptr %i.afh, align 1, !tbaa !9
  store i32 1, ptr %i.e, align 4, !tbaa !10
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %stbsp__lead_sign.exit1253
  %i.afi = phi i32 [ 1, %bb.ge ], [ %i.aff, %stbsp__lead_sign.exit1253 ]
  %.34 = phi ptr [ %i.afh, %bb.ge ], [ %.33.ptr1295, %stbsp__lead_sign.exit1253 ]
  %i.afj = add i32 %i.afi, 50331648
  %spec.store.select36 = call i32 @llvm.smax.i32(i32 %.1803, i32 0)
  br label %bb.gg

bb.gg:                                            ; preds = %stbsp__lead_sign.exit1241, %bb.hi, %bb.gf, %._crit_edge2349, %bb.fb, %bb.eg, %bb.da, %._crit_edge1691, %bb.as, %stbsp__strlen_limited.exit
  %.2819 = phi i32 [ 0, %bb.hi ], [ %.1818, %stbsp__strlen_limited.exit ], [ %.1818, %bb.as ], [ %.1818, %._crit_edge1691 ], [ %.1818, %bb.gf ], [ %.1818, %bb.eg ], [ %.1818, %bb.da ], [ %.1818, %bb.fb ], [ %.1818, %._crit_edge2349 ], [ %.1818, %stbsp__lead_sign.exit1241 ]
  %.11813 = phi i32 [ 0, %bb.hi ], [ 0, %stbsp__strlen_limited.exit ], [ 0, %bb.as ], [ 0, %._crit_edge1691 ], [ %spec.store.select36, %bb.gf ], [ 0, %bb.eg ], [ 0, %bb.da ], [ 0, %bb.fb ], [ %.9811, %._crit_edge2349 ], [ 0, %stbsp__lead_sign.exit1241 ]
  %.3800 = phi i32 [ 0, %bb.hi ], [ 0, %stbsp__strlen_limited.exit ], [ 0, %bb.as ], [ %spec.select11882129, %._crit_edge1691 ], [ 0, %bb.gf ], [ %.2799, %bb.eg ], [ 0, %bb.da ], [ 0, %bb.fb ], [ 0, %._crit_edge2349 ], [ 0, %stbsp__lead_sign.exit1241 ] ; 3 uses
  %.17795 = phi i32 [ 0, %bb.hi ], [ %.3781, %stbsp__strlen_limited.exit ], [ %.3781, %bb.as ], [ %spec.select1187, %._crit_edge1691 ], [ %.16794, %bb.gf ], [ %.11789, %bb.eg ], [ %.10788, %bb.da ], [ %.13791, %bb.fb ], [ %.13791, %._crit_edge2349 ], [ %.6784, %stbsp__lead_sign.exit1241 ] ; 4 uses
  %.35 = phi ptr [ %i.u, %bb.hi ], [ %spec.store.select, %stbsp__strlen_limited.exit ], [ %i.u, %bb.as ], [ %i.o, %._crit_edge1691 ], [ %.34, %bb.gf ], [ %i.o, %bb.eg ], [ %i.tr, %bb.da ], [ %i.l, %bb.fb ], [ %.lcssa2289.a, %._crit_edge2349 ], [ %i.oq, %stbsp__lead_sign.exit1241 ]
  %.11717 = phi i32 [ 0, %bb.hi ], [ 0, %stbsp__strlen_limited.exit ], [ 0, %bb.as ], [ 50331649, %._crit_edge1691 ], [ %i.afj, %bb.gf ], [ %.10716, %bb.eg ], [ 0, %bb.da ], [ 0, %bb.fb ], [ %i.acj, %._crit_edge2349 ], [ 0, %stbsp__lead_sign.exit1241 ] ; 2 uses
  %i.afk = load i32, ptr %i.e, align 4, !tbaa !10 ; 2 uses
  %spec.select1204 = call i32 @llvm.smax.i32(i32 %.11813, i32 %i.afk) ; 2 uses
  %i.afl = load i8, ptr %i.c, align 1, !tbaa !9   ; 3 uses
  %i.afm = sext i8 %i.afl to i32
  %i.afn = load i8, ptr %i.d, align 1, !tbaa !9
  %i.afo = sext i8 %i.afn to i32
  %i.afp = add i32 %spec.select1204, %.3800
  %i.afq = add i32 %i.afp, %i.afm
  %i.afr = add i32 %i.afq, %i.afo                 ; 2 uses
  %.3820 = call i32 @llvm.smax.i32(i32 %.2819, i32 %i.afr)
  %i.afs = sub i32 %.3820, %i.afr                 ; 3 uses
  %i.aft = sub i32 %spec.select1204, %i.afk       ; 3 uses
  %5 = and i32 %.17795, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %bb.gh, label %bb.gj

bb.gh:                                            ; preds = %bb.gg
  %i.afu = and i32 %.17795, 16
  %.not1138 = icmp eq i32 %i.afu, 0
  br i1 %.not1138, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.afv = call i32 @llvm.smax.i32(i32 %i.afs, i32 %i.aft)
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gh, %bb.gi, %bb.gg
  %.4821 = phi i32 [ 0, %bb.gi ], [ %i.afs, %bb.gg ], [ %i.afs, %bb.gh ] ; 5 uses
  %.13815 = phi i32 [ %i.afv, %bb.gi ], [ %i.aft, %bb.gg ], [ %i.aft, %bb.gh ] ; 4 uses
  %.18796 = phi i32 [ %.17795, %bb.gi ], [ %.17795, %bb.gg ], [ 0, %bb.gh ] ; 3 uses
  %i.afw = sub i32 0, %.13815
  %.not1139 = icmp eq i32 %.4821, %i.afw
  br i1 %.not1139, label %.loopexit1470, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %7 = and i32 %.18796, 1
  %8 = icmp eq i32 %7, 0
  %9 = icmp sgt i32 %.4821, 0
  %or.cond38 = and i1 %9, %8
  br i1 %or.cond38, label %.preheader1473, label %.loopexit1475

.preheader1473:                                   ; preds = %bb.gk, %.thread1299
  %.5936 = phi ptr [ %.8939, %.thread1299 ], [ %.1932, %bb.gk ] ; 4 uses
  %.9889 = phi ptr [ %.15895, %.thread1299 ], [ %.2882, %bb.gk ] ; 3 uses
  %.5832 = phi i32 [ %.8835, %.thread1299 ], [ %.1828, %bb.gk ] ; 3 uses
  %.5822 = phi i32 [ %i.aga, %.thread1299 ], [ %.4821, %bb.gk ] ; 3 uses
  %i.afx = ptrtoint ptr %.9889 to i64             ; 2 uses
  %i.afy = ptrtoint ptr %.5936 to i64             ; 2 uses
  %.neg1141 = sub i64 %i.afy, %i.afx
  %.neg1142 = trunc i64 %.neg1141 to i32
  %i.afz = add i32 %.neg1142, 512
  %spec.select1205 = call i32 @llvm.smin.i32(i32 %.5822, i32 %i.afz)
  %.1690 = select i1 %.not1077, i32 %.5822, i32 %spec.select1205 ; 4 uses
  %i.aga = sub nsw i32 %.5822, %.1690             ; 3 uses
  %.not11431699 = icmp eq i32 %.1690, 0
  %i.agb = and i64 %i.afx, 3
  %i.agc = icmp eq i64 %i.agb, 0
  %or.cond12081700 = select i1 %.not11431699, i1 true, i1 %i.agc
  br i1 %or.cond12081700, label %.preheader1457.a, label %.lr.ph1704

.preheader1457.a:                                 ; preds = %.lr.ph1704, %.preheader1473
  %.10890.lcssa = phi ptr [ %.9889, %.preheader1473 ], [ %i.agm, %.lr.ph1704 ] ; 3 uses
  %.2691.lcssa = phi i32 [ %.1690, %.preheader1473 ], [ %i.agn, %.lr.ph1704 ] ; 4 uses
  %i.agd = icmp sgt i32 %.2691.lcssa, 3
  br i1 %i.agd, label %.lr.ph1709.preheader, label %.preheader1456.a

.lr.ph1709.preheader:                             ; preds = %.preheader1457.a
  %i.age = call i32 @llvm.usub.sat.i32(i32 %.2691.lcssa, i32 7)
  %i.agf = add nuw i32 %i.age, 3                  ; 2 uses
  %i.agg = and i32 %i.agf, 2147483644
  %i.agh = zext nneg i32 %i.agg to i64            ; 2 uses
  %i.agi = add nuw nsw i64 %i.agh, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.10890.lcssa, i8 32, i64 %i.agi, i1 false), !tbaa !10
  %scevgep2007 = getelementptr i8, ptr %.10890.lcssa, i64 4
  %scevgep2009 = getelementptr i8, ptr %scevgep2007, i64 %i.agh
  %i.agj = add nsw i32 %.2691.lcssa, -4
  %i.agk = and i32 %i.agf, -4
  %i.agl = sub nsw i32 %i.agj, %i.agk
  br label %.preheader1456.a

.lr.ph1704:                                       ; preds = %.preheader1473, %.lr.ph1704
  %.26911702 = phi i32 [ %i.agn, %.lr.ph1704 ], [ %.1690, %.preheader1473 ]
  %.108901701 = phi ptr [ %i.agm, %.lr.ph1704 ], [ %.9889, %.preheader1473 ] ; 2 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %.108901701, i64 1 ; 3 uses
  store i8 32, ptr %.108901701, align 1, !tbaa !9
  %i.agn = add nsw i32 %.26911702, -1             ; 3 uses
  %.not1143 = icmp eq i32 %i.agn, 0
  %i.ago = ptrtoint ptr %i.agm to i64
  %i.agp = and i64 %i.ago, 3
  %i.agq = icmp eq i64 %i.agp, 0
  %or.cond1208 = select i1 %.not1143, i1 true, i1 %i.agq
  br i1 %or.cond1208, label %.preheader1457.a, label %.lr.ph1704, !llvm.loop !47

.preheader1456.a:                                 ; preds = %.lr.ph1709.preheader, %.preheader1457.a
  %.11891.lcssa = phi ptr [ %.10890.lcssa, %.preheader1457.a ], [ %scevgep2009, %.lr.ph1709.preheader ] ; 3 uses
  %.3692.lcssa = phi i32 [ %.2691.lcssa, %.preheader1457.a ], [ %i.agl, %.lr.ph1709.preheader ] ; 3 uses
  %.not11441712 = icmp eq i32 %.3692.lcssa, 0
  br i1 %.not11441712, label %._crit_edge1716, label %.lr.ph1715.preheader

.lr.ph1715.preheader:                             ; preds = %.preheader1456.a
  %i.agr = zext i32 %.3692.lcssa to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.11891.lcssa, i8 32, i64 %i.agr, i1 false), !tbaa !9
  %scevgep2010 = getelementptr i8, ptr %.11891.lcssa, i64 1
  %i.ags = add i32 %.3692.lcssa, -1
  %i.agt = zext i32 %i.ags to i64
  %scevgep2011 = getelementptr i8, ptr %scevgep2010, i64 %i.agt
  br label %._crit_edge1716

._crit_edge1716:                                  ; preds = %.lr.ph1715.preheader, %.preheader1456.a
  %.12892.lcssa = phi ptr [ %.11891.lcssa, %.preheader1456.a ], [ %scevgep2011, %.lr.ph1715.preheader ] ; 3 uses
  br i1 %.not1077, label %.thread1299, label %bb.gl

bb.gl:                                            ; preds = %._crit_edge1716
  %i.agu = ptrtoint ptr %.12892.lcssa to i64
  %i.agv = sub i64 %i.agu, %i.afy
  %i.agw = trunc i64 %i.agv to i32                ; 3 uses
  %i.agx = icmp sgt i32 %i.agw, 510
  br i1 %i.agx, label %bb.gm, label %.thread1299

bb.gm:                                            ; preds = %bb.gl
  %i.agy = add nuw nsw i32 %.5832, %i.agw         ; 2 uses
  %i.agz = call ptr %0(ptr noundef %.5936, ptr noundef %1, i32 noundef %i.agw) #13 ; 3 uses
  %i.aha = icmp eq ptr %i.agz, null
  br i1 %i.aha, label %.thread1427, label %.thread1299

.thread1299:                                      ; preds = %bb.gm, %bb.gl, %._crit_edge1716
  %.8939 = phi ptr [ %.5936, %._crit_edge1716 ], [ %.5936, %bb.gl ], [ %i.agz, %bb.gm ] ; 2 uses
  %.15895 = phi ptr [ %.12892.lcssa, %._crit_edge1716 ], [ %.12892.lcssa, %bb.gl ], [ %i.agz, %bb.gm ] ; 2 uses
  %.8835 = phi i32 [ %.5832, %._crit_edge1716 ], [ %.5832, %bb.gl ], [ %i.agy, %bb.gm ] ; 2 uses
  %.old37 = icmp sgt i32 %i.aga, 0
  br i1 %.old37, label %.preheader1473, label %.loopexit1475.loopexit

.loopexit1475.loopexit:                           ; preds = %.thread1299
  %.pre2039 = load i8, ptr %i.c, align 1, !tbaa !9
  br label %.loopexit1475

.loopexit1475:                                    ; preds = %.loopexit1475.loopexit, %bb.gk
  %i.ahb = phi i8 [ %i.afl, %bb.gk ], [ %.pre2039, %.loopexit1475.loopexit ] ; 2 uses
  %.9940 = phi ptr [ %.1932, %bb.gk ], [ %.8939, %.loopexit1475.loopexit ] ; 2 uses
  %.16896 = phi ptr [ %.2882, %bb.gk ], [ %.15895, %.loopexit1475.loopexit ] ; 2 uses
  %.9836 = phi i32 [ %.1828, %bb.gk ], [ %.8835, %.loopexit1475.loopexit ] ; 2 uses
  %.6823 = phi i32 [ %.4821, %bb.gk ], [ %i.aga, %.loopexit1475.loopexit ] ; 2 uses
  store ptr %i.j, ptr %i.g, align 8, !tbaa !14
  %.not11451725 = icmp eq i8 %i.ahb, 0
  br i1 %.not11451725, label %._crit_edge1731, label %.lr.ph1730

.lr.ph1730:                                       ; preds = %.loopexit1475, %.thread1306
  %i.ahc = phi i8 [ %i.ain, %.thread1306 ], [ %i.ahb, %.loopexit1475 ] ; 2 uses
  %.108371728 = phi i32 [ %.13840, %.thread1306 ], [ %.9836, %.loopexit1475 ] ; 3 uses
  %.178971727 = phi ptr [ %.21901, %.thread1306 ], [ %.16896, %.loopexit1475 ] ; 4 uses
  %.109411726 = phi ptr [ %.13944, %.thread1306 ], [ %.9940, %.loopexit1475 ] ; 4 uses
  %i.ahd = sext i8 %i.ahc to i32                  ; 2 uses
  %i.ahe = ptrtoint ptr %.178971727 to i64
  %i.ahf = ptrtoint ptr %.109411726 to i64        ; 2 uses
  %.neg1154 = sub i64 %i.ahf, %i.ahe
  %.neg1155 = trunc i64 %.neg1154 to i32
  %i.ahg = add i32 %.neg1155, 512
  %spec.select1209 = call i32 @llvm.smin.i32(i32 %i.ahg, i32 %i.ahd)
  %.6 = select i1 %.not1077, i32 %i.ahd, i32 %spec.select1209 ; 6 uses
  %i.ahh = trunc i32 %.6 to i8
  %i.ahi = sub i8 %i.ahc, %i.ahh
  store i8 %i.ahi, ptr %i.c, align 1, !tbaa !9
  %.not11561718 = icmp eq i32 %.6, 0
  br i1 %.not11561718, label %._crit_edge1723, label %.lr.ph1722.preheader

.lr.ph1722.preheader:                             ; preds = %.lr.ph1730
  %xtraiter2534 = and i32 %.6, 3                  ; 2 uses
  %lcmp.mod2535.not = icmp eq i32 %xtraiter2534, 0
  br i1 %lcmp.mod2535.not, label %.lr.ph1722.prol.loopexit, label %.lr.ph1722.prol

.lr.ph1722.prol:                                  ; preds = %.lr.ph1722.preheader, %.lr.ph1722.prol
  %.71720.prol = phi i32 [ %i.ahn, %.lr.ph1722.prol ], [ %.6, %.lr.ph1722.preheader ]
  %.188981719.prol = phi ptr [ %i.ahm, %.lr.ph1722.prol ], [ %.178971727, %.lr.ph1722.preheader ] ; 2 uses
  %prol.iter2536 = phi i32 [ %prol.iter2536.next, %.lr.ph1722.prol ], [ 0, %.lr.ph1722.preheader ]
  %i.ahj = load ptr, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 1
  store ptr %i.ahk, ptr %i.g, align 8, !tbaa !14
  %i.ahl = load i8, ptr %i.ahj, align 1, !tbaa !9
  %i.ahm = getelementptr inbounds nuw i8, ptr %.188981719.prol, i64 1 ; 3 uses
  store i8 %i.ahl, ptr %.188981719.prol, align 1, !tbaa !9
  %i.ahn = add nsw i32 %.71720.prol, -1           ; 2 uses
  %prol.iter2536.next = add i32 %prol.iter2536, 1 ; 2 uses
  %prol.iter2536.cmp.not = icmp eq i32 %prol.iter2536.next, %xtraiter2534
  br i1 %prol.iter2536.cmp.not, label %.lr.ph1722.prol.loopexit, label %.lr.ph1722.prol, !llvm.loop !48

.lr.ph1722.prol.loopexit:                         ; preds = %.lr.ph1722.prol, %.lr.ph1722.preheader
  %.lcssa2483.unr = phi ptr [ poison, %.lr.ph1722.preheader ], [ %i.ahm, %.lr.ph1722.prol ]
  %.71720.unr = phi i32 [ %.6, %.lr.ph1722.preheader ], [ %i.ahn, %.lr.ph1722.prol ]
  %.188981719.unr = phi ptr [ %.178971727, %.lr.ph1722.preheader ], [ %i.ahm, %.lr.ph1722.prol ]
  %i.aho = icmp ult i32 %.6, 4
  br i1 %i.aho, label %._crit_edge1723, label %.lr.ph1722

.lr.ph1722:                                       ; preds = %.lr.ph1722.prol.loopexit, %.lr.ph1722
  %.71720 = phi i32 [ %i.aif, %.lr.ph1722 ], [ %.71720.unr, %.lr.ph1722.prol.loopexit ]
  %.188981719 = phi ptr [ %i.aie, %.lr.ph1722 ], [ %.188981719.unr, %.lr.ph1722.prol.loopexit ] ; 5 uses
  %i.ahp = load ptr, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahp, i64 1
  store ptr %i.ahq, ptr %i.g, align 8, !tbaa !14
  %i.ahr = load i8, ptr %i.ahp, align 1, !tbaa !9
  %i.ahs = getelementptr inbounds nuw i8, ptr %.188981719, i64 1
  store i8 %i.ahr, ptr %.188981719, align 1, !tbaa !9
  %i.aht = load ptr, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 1
  store ptr %i.ahu, ptr %i.g, align 8, !tbaa !14
  %i.ahv = load i8, ptr %i.aht, align 1, !tbaa !9
  %i.ahw = getelementptr inbounds nuw i8, ptr %.188981719, i64 2
  store i8 %i.ahv, ptr %i.ahs, align 1, !tbaa !9
  %i.ahx = load ptr, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 1
  store ptr %i.ahy, ptr %i.g, align 8, !tbaa !14
  %i.ahz = load i8, ptr %i.ahx, align 1, !tbaa !9
  %i.aia = getelementptr inbounds nuw i8, ptr %.188981719, i64 3
  store i8 %i.ahz, ptr %i.ahw, align 1, !tbaa !9
  %i.aib = load ptr, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 1
  store ptr %i.aic, ptr %i.g, align 8, !tbaa !14
  %i.aid = load i8, ptr %i.aib, align 1, !tbaa !9
  %i.aie = getelementptr inbounds nuw i8, ptr %.188981719, i64 4 ; 2 uses
  store i8 %i.aid, ptr %i.aia, align 1, !tbaa !9
  %i.aif = add nsw i32 %.71720, -4                ; 2 uses
  %.not1156.3 = icmp eq i32 %i.aif, 0
  br i1 %.not1156.3, label %._crit_edge1723, label %.lr.ph1722, !llvm.loop !49

._crit_edge1723:                                  ; preds = %.lr.ph1722.prol.loopexit, %.lr.ph1722, %.lr.ph1730
  %.18898.lcssa = phi ptr [ %.178971727, %.lr.ph1730 ], [ %.lcssa2483.unr, %.lr.ph1722.prol.loopexit ], [ %i.aie, %.lr.ph1722 ] ; 3 uses
  br i1 %.not1077, label %.thread1306, label %bb.gn

bb.gn:                                            ; preds = %._crit_edge1723
  %i.aig = ptrtoint ptr %.18898.lcssa to i64
  %i.aih = sub i64 %i.aig, %i.ahf
  %i.aii = trunc i64 %i.aih to i32                ; 3 uses
  %i.aij = icmp sgt i32 %i.aii, 510
  br i1 %i.aij, label %bb.go, label %.thread1306

bb.go:                                            ; preds = %bb.gn
  %i.aik = add nuw nsw i32 %.108371728, %i.aii    ; 2 uses
  %i.ail = call ptr %0(ptr noundef %.109411726, ptr noundef %1, i32 noundef %i.aii) #13 ; 3 uses
  %i.aim = icmp eq ptr %i.ail, null
  br i1 %i.aim, label %.thread1427, label %.thread1306

.thread1306:                                      ; preds = %bb.go, %bb.gn, %._crit_edge1723
  %.13944 = phi ptr [ %.109411726, %._crit_edge1723 ], [ %.109411726, %bb.gn ], [ %i.ail, %bb.go ] ; 2 uses
  %.21901 = phi ptr [ %.18898.lcssa, %._crit_edge1723 ], [ %.18898.lcssa, %bb.gn ], [ %i.ail, %bb.go ] ; 2 uses
  %.13840 = phi i32 [ %.108371728, %._crit_edge1723 ], [ %.108371728, %bb.gn ], [ %i.aik, %bb.go ] ; 2 uses
  %i.ain = load i8, ptr %i.c, align 1, !tbaa !9   ; 2 uses
  %.not1145 = icmp eq i8 %i.ain, 0
  br i1 %.not1145, label %._crit_edge1731, label %.lr.ph1730, !llvm.loop !50

._crit_edge1731:                                  ; preds = %.thread1306, %.loopexit1475
  %.10941.lcssa = phi ptr [ %.9940, %.loopexit1475 ], [ %.13944, %.thread1306 ] ; 2 uses
  %.17897.lcssa = phi ptr [ %.16896, %.loopexit1475 ], [ %.21901, %.thread1306 ] ; 2 uses
  %.10837.lcssa = phi i32 [ %.9836, %.loopexit1475 ], [ %.13840, %.thread1306 ] ; 2 uses
  %i.aio = lshr i32 %.11717, 24                   ; 5 uses
  %i.aip = and i32 %.18796, 64
  %.not1146 = icmp eq i32 %i.aip, 0               ; 2 uses
  br i1 %.not1146, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %._crit_edge1731
  %i.aiq = and i32 %.11717, 16777215
  %i.air = add i32 %.13815, %i.aiq
  %i.ais = add nuw nsw i32 %i.aio, 1
  %i.ait = urem i32 %i.air, %i.ais
  %i.aiu = sub nsw i32 %i.aio, %i.ait
  br label %bb.gq

bb.gq:                                            ; preds = %._crit_edge1731, %bb.gp
  %i.aiv = phi i32 [ %i.aiu, %bb.gp ], [ 0, %._crit_edge1731 ]
  %i.aiw = icmp sgt i32 %.13815, 0
  br i1 %i.aiw, label %.lr.ph1764, label %.loopexit1470.thread

.loopexit1470.thread:                             ; preds = %bb.gq
  store ptr %i.j, ptr %i.g, align 8, !tbaa !14
  br label %._crit_edge1781

.lr.ph1764:                                       ; preds = %bb.gq, %.thread1313
  %.127181762 = phi i32 [ %.13719.lcssa, %.thread1313 ], [ %i.aiv, %bb.gq ] ; 6 uses
  %.148161761 = phi i32 [ %i.aja, %.thread1313 ], [ %.13815, %bb.gq ] ; 3 uses
  %.148411760 = phi i32 [ %.17844, %.thread1313 ], [ %.10837.lcssa, %bb.gq ] ; 3 uses
  %.229021759 = phi ptr [ %.30910, %.thread1313 ], [ %.17897.lcssa, %bb.gq ] ; 7 uses
  %.149451758 = phi ptr [ %.17948, %.thread1313 ], [ %.10941.lcssa, %bb.gq ] ; 4 uses
  %i.aix = ptrtoint ptr %.229021759 to i64        ; 2 uses
  %i.aiy = ptrtoint ptr %.149451758 to i64        ; 2 uses
  %.neg1148 = sub i64 %i.aiy, %i.aix
  %.neg1149 = trunc i64 %.neg1148 to i32
  %i.aiz = add i32 %.neg1149, 512
  %spec.select1210 = call i32 @llvm.smin.i32(i32 %.148161761, i32 %i.aiz)
  %.9 = select i1 %.not1077, i32 %.148161761, i32 %spec.select1210 ; 8 uses
  %i.aja = sub nsw i32 %.148161761, %.9           ; 2 uses
  %.not11501735 = icmp eq i32 %.9, 0              ; 2 uses
  br i1 %.not1146, label %.preheader1455.a, label %.loopexit.thread

.preheader1455.a:                                 ; preds = %.lr.ph1764
  %i.ajb = and i64 %i.aix, 3
  %i.ajc = icmp eq i64 %i.ajb, 0
  %or.cond12131736 = select i1 %.not11501735, i1 true, i1 %i.ajc
  br i1 %or.cond12131736, label %.preheader1454.a, label %.lr.ph1739

.preheader1454.a:                                 ; preds = %.lr.ph1739, %.preheader1455.a
  %.23903.lcssa = phi ptr [ %.229021759, %.preheader1455.a ], [ %i.ajm, %.lr.ph1739 ] ; 3 uses
  %.10.lcssa = phi i32 [ %.9, %.preheader1455.a ], [ %i.ajn, %.lr.ph1739 ] ; 4 uses
  %i.ajd = icmp sgt i32 %.10.lcssa, 3
  br i1 %i.ajd, label %.lr.ph1744.preheader, label %.loopexit

.lr.ph1744.preheader:                             ; preds = %.preheader1454.a
  %i.aje = call i32 @llvm.usub.sat.i32(i32 %.10.lcssa, i32 7)
  %i.ajf = add nuw i32 %i.aje, 3                  ; 2 uses
  %i.ajg = and i32 %i.ajf, 2147483644
  %i.ajh = zext nneg i32 %i.ajg to i64            ; 2 uses
  %i.aji = add nuw nsw i64 %i.ajh, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.23903.lcssa, i8 48, i64 %i.aji, i1 false), !tbaa !10
  %scevgep2013 = getelementptr i8, ptr %.23903.lcssa, i64 4
  %scevgep2015 = getelementptr i8, ptr %scevgep2013, i64 %i.ajh
  %i.ajj = add nsw i32 %.10.lcssa, -4
  %i.ajk = and i32 %i.ajf, -4
  %i.ajl = sub nsw i32 %i.ajj, %i.ajk
  br label %.loopexit

.lr.ph1739:                                       ; preds = %.preheader1455.a, %.lr.ph1739
  %.101738 = phi i32 [ %i.ajn, %.lr.ph1739 ], [ %.9, %.preheader1455.a ]
  %.239031737 = phi ptr [ %i.ajm, %.lr.ph1739 ], [ %.229021759, %.preheader1455.a ] ; 2 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %.239031737, i64 1 ; 3 uses
  store i8 48, ptr %.239031737, align 1, !tbaa !9
  %i.ajn = add nsw i32 %.101738, -1               ; 3 uses
  %.not1150 = icmp eq i32 %i.ajn, 0
  %i.ajo = ptrtoint ptr %i.ajm to i64
  %i.ajp = and i64 %i.ajo, 3
  %i.ajq = icmp eq i64 %i.ajp, 0
  %or.cond1213 = select i1 %.not1150, i1 true, i1 %i.ajq
  br i1 %or.cond1213, label %.preheader1454.a, label %.lr.ph1739, !llvm.loop !51

.loopexit:                                        ; preds = %.lr.ph1744.preheader, %.preheader1454.a
  %.25905 = phi ptr [ %scevgep2015, %.lr.ph1744.preheader ], [ %.23903.lcssa, %.preheader1454.a ] ; 3 uses
  %.12 = phi i32 [ %i.ajl, %.lr.ph1744.preheader ], [ %.10.lcssa, %.preheader1454.a ] ; 3 uses
  %.not11511747 = icmp eq i32 %.12, 0
  br i1 %.not11511747, label %._crit_edge1753, label %.lr.ph1752.split.us.preheader

.loopexit.thread:                                 ; preds = %.lr.ph1764
  br i1 %.not11501735, label %._crit_edge1753, label %.lr.ph1752.split.preheader

.lr.ph1752.split.preheader:                       ; preds = %.loopexit.thread
  %xtraiter2537 = and i32 %.9, 1
  %lcmp.mod2538.not = icmp eq i32 %xtraiter2537, 0
  br i1 %lcmp.mod2538.not, label %.lr.ph1752.split.prol.loopexit, label %.lr.ph1752.split.prol

.lr.ph1752.split.prol:                            ; preds = %.lr.ph1752.split.preheader
  %i.ajr = add i32 %.127181762, 1
  %i.ajs = icmp eq i32 %.127181762, %i.aio        ; 2 uses
  %i.ajt = load i8, ptr @stbsp__comma, align 1
  %spec.select1226.prol = select i1 %i.ajs, i8 %i.ajt, i8 48
  %spec.select1227.prol = select i1 %i.ajs, i32 0, i32 %i.ajr ; 2 uses
  %.27907.prol = getelementptr inbounds nuw i8, ptr %.229021759, i64 1 ; 2 uses
  store i8 %spec.select1226.prol, ptr %.229021759, align 1, !tbaa !9
  %i.aju = add nsw i32 %.9, -1
  br label %.lr.ph1752.split.prol.loopexit

.lr.ph1752.split.prol.loopexit:                   ; preds = %.lr.ph1752.split.prol, %.lr.ph1752.split.preheader
  %spec.select1227.lcssa.unr = phi i32 [ poison, %.lr.ph1752.split.preheader ], [ %spec.select1227.prol, %.lr.ph1752.split.prol ]
  %.27907.lcssa.unr = phi ptr [ poison, %.lr.ph1752.split.preheader ], [ %.27907.prol, %.lr.ph1752.split.prol ]
  %.131750.unr = phi i32 [ %.9, %.lr.ph1752.split.preheader ], [ %i.aju, %.lr.ph1752.split.prol ]
  %.137191749.unr = phi i32 [ %.127181762, %.lr.ph1752.split.preheader ], [ %spec.select1227.prol, %.lr.ph1752.split.prol ]
  %.269061748.unr = phi ptr [ %.229021759, %.lr.ph1752.split.preheader ], [ %.27907.prol, %.lr.ph1752.split.prol ]
  %i.ajv = icmp eq i32 %.9, 1
  br i1 %i.ajv, label %._crit_edge1753, label %.lr.ph1752.split

.lr.ph1752.split.us.preheader:                    ; preds = %.loopexit
  %i.ajw = zext i32 %.12 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %.25905, i8 48, i64 %i.ajw, i1 false), !tbaa !9
  %scevgep2016 = getelementptr i8, ptr %.25905, i64 1
  %i.ajx = add i32 %.12, -1
  %i.ajy = zext i32 %i.ajx to i64
  %scevgep2017 = getelementptr i8, ptr %scevgep2016, i64 %i.ajy
  br label %._crit_edge1753

.lr.ph1752.split:                                 ; preds = %.lr.ph1752.split.prol.loopexit, %.lr.ph1752.split
  %.131750 = phi i32 [ %i.akf, %.lr.ph1752.split ], [ %.131750.unr, %.lr.ph1752.split.prol.loopexit ]
  %.137191749 = phi i32 [ %spec.select1227.1, %.lr.ph1752.split ], [ %.137191749.unr, %.lr.ph1752.split.prol.loopexit ] ; 2 uses
  %.269061748 = phi ptr [ %.27907.1, %.lr.ph1752.split ], [ %.269061748.unr, %.lr.ph1752.split.prol.loopexit ] ; 3 uses
  %i.ajz = add i32 %.137191749, 1
  %i.aka = icmp eq i32 %.137191749, %i.aio        ; 2 uses
  %i.akb = load i8, ptr @stbsp__comma, align 1
  %spec.select1226 = select i1 %i.aka, i8 %i.akb, i8 48
  %spec.select1227 = select i1 %i.aka, i32 0, i32 %i.ajz ; 2 uses
  %.27907 = getelementptr inbounds nuw i8, ptr %.269061748, i64 1
  store i8 %spec.select1226, ptr %.269061748, align 1, !tbaa !9
  %i.akc = add i32 %spec.select1227, 1
  %i.akd = icmp eq i32 %spec.select1227, %i.aio   ; 2 uses
  %i.ake = load i8, ptr @stbsp__comma, align 1
  %spec.select1226.1 = select i1 %i.akd, i8 %i.ake, i8 48
  %spec.select1227.1 = select i1 %i.akd, i32 0, i32 %i.akc ; 2 uses
  %.27907.1 = getelementptr inbounds nuw i8, ptr %.269061748, i64 2 ; 2 uses
  store i8 %spec.select1226.1, ptr %.27907, align 1, !tbaa !9
  %i.akf = add nsw i32 %.131750, -2               ; 2 uses
  %.not1151.1 = icmp eq i32 %i.akf, 0
  br i1 %.not1151.1, label %._crit_edge1753, label %.lr.ph1752.split, !llvm.loop !52

._crit_edge1753:                                  ; preds = %.lr.ph1752.split.prol.loopexit, %.lr.ph1752.split, %.loopexit.thread, %.lr.ph1752.split.us.preheader, %.loopexit
  %.26906.lcssa = phi ptr [ %.25905, %.loopexit ], [ %scevgep2017, %.lr.ph1752.split.us.preheader ], [ %.229021759, %.loopexit.thread ], [ %.27907.lcssa.unr, %.lr.ph1752.split.prol.loopexit ], [ %.27907.1, %.lr.ph1752.split ] ; 3 uses
  %.13719.lcssa = phi i32 [ %.127181762, %.loopexit ], [ %.127181762, %.lr.ph1752.split.us.preheader ], [ %.127181762, %.loopexit.thread ], [ %spec.select1227.lcssa.unr, %.lr.ph1752.split.prol.loopexit ], [ %spec.select1227.1, %.lr.ph1752.split ]
  br i1 %.not1077, label %.thread1313, label %bb.gr

bb.gr:                                            ; preds = %._crit_edge1753
  %i.akg = ptrtoint ptr %.26906.lcssa to i64
  %i.akh = sub i64 %i.akg, %i.aiy
  %i.aki = trunc i64 %i.akh to i32                ; 3 uses
  %i.akj = icmp sgt i32 %i.aki, 510
  br i1 %i.akj, label %bb.gs, label %.thread1313

bb.gs:                                            ; preds = %bb.gr
  %i.akk = add nuw nsw i32 %.148411760, %i.aki    ; 2 uses
  %i.akl = call ptr %0(ptr noundef %.149451758, ptr noundef %1, i32 noundef %i.aki) #13 ; 3 uses
  %i.akm = icmp eq ptr %i.akl, null
  br i1 %i.akm, label %.thread1427, label %.thread1313

.thread1313:                                      ; preds = %bb.gs, %bb.gr, %._crit_edge1753
  %.17948 = phi ptr [ %.149451758, %._crit_edge1753 ], [ %.149451758, %bb.gr ], [ %i.akl, %bb.gs ] ; 2 uses
  %.30910 = phi ptr [ %.26906.lcssa, %._crit_edge1753 ], [ %.26906.lcssa, %bb.gr ], [ %i.akl, %bb.gs ] ; 2 uses
  %.17844 = phi i32 [ %.148411760, %._crit_edge1753 ], [ %.148411760, %bb.gr ], [ %i.akk, %bb.gs ] ; 2 uses
  %i.akn = icmp sgt i32 %i.aja, 0
  br i1 %i.akn, label %.lr.ph1764, label %.loopexit1470.loopexit, !llvm.loop !53

.loopexit1470.loopexit:                           ; preds = %.thread1313
  %.pre2040 = load i8, ptr %i.c, align 1, !tbaa !9
  br label %.loopexit1470

.loopexit1470:                                    ; preds = %.loopexit1470.loopexit, %bb.gj
  %i.ako = phi i8 [ %i.afl, %bb.gj ], [ %.pre2040, %.loopexit1470.loopexit ] ; 2 uses
  %.19950 = phi ptr [ %.1932, %bb.gj ], [ %.17948, %.loopexit1470.loopexit ] ; 2 uses
  %.32912 = phi ptr [ %.2882, %bb.gj ], [ %.30910, %.loopexit1470.loopexit ] ; 2 uses
  %.19846 = phi i32 [ %.1828, %bb.gj ], [ %.17844, %.loopexit1470.loopexit ] ; 2 uses
  %.8825 = phi i32 [ %.4821, %bb.gj ], [ %.6823, %.loopexit1470.loopexit ] ; 2 uses
  store ptr %i.j, ptr %i.g, align 8, !tbaa !14
  %.not11571775 = icmp eq i8 %i.ako, 0
  br i1 %.not11571775, label %._crit_edge1781, label %.lr.ph1780

.lr.ph1780:                                       ; preds = %.loopexit1470, %bb.gv
  %i.akp = phi i8 [ %i.ama, %bb.gv ], [ %i.ako, %.loopexit1470 ] ; 2 uses
  %.208471778 = phi i32 [ %.24851, %bb.gv ], [ %.19846, %.loopexit1470 ] ; 3 uses
  %.339131777 = phi ptr [ %.38918, %bb.gv ], [ %.32912, %.loopexit1470 ] ; 4 uses
  %.209511776 = phi ptr [ %.24955, %bb.gv ], [ %.19950, %.loopexit1470 ] ; 4 uses
  %i.akq = sext i8 %i.akp to i32                  ; 2 uses
  %i.akr = ptrtoint ptr %.339131777 to i64
  %i.aks = ptrtoint ptr %.209511776 to i64        ; 2 uses
  %.neg1180 = sub i64 %i.aks, %i.akr
  %.neg1181 = trunc i64 %.neg1180 to i32
  %i.akt = add i32 %.neg1181, 512
  %spec.select1214 = call i32 @llvm.smin.i32(i32 %i.akt, i32 %i.akq)
  %.1687 = select i1 %.not1077, i32 %i.akq, i32 %spec.select1214 ; 6 uses
  %i.aku = trunc i32 %.1687 to i8
  %i.akv = sub i8 %i.akp, %i.aku
  store i8 %i.akv, ptr %i.c, align 1, !tbaa !9
  %.not11821768 = icmp eq i32 %.1687, 0
  br i1 %.not11821768, label %._crit_edge1773, label %.lr.ph1772.preheader

.lr.ph1772.preheader:                             ; preds = %.lr.ph1780
  %xtraiter2540 = and i32 %.1687, 3               ; 2 uses
  %lcmp.mod2541.not = icmp eq i32 %xtraiter2540, 0
  br i1 %lcmp.mod2541.not, label %.lr.ph1772.prol.loopexit, label %.lr.ph1772.prol

.lr.ph1772.prol:                                  ; preds = %.lr.ph1772.preheader, %.lr.ph1772.prol
  %.26881770.prol = phi i32 [ %i.ala, %.lr.ph1772.prol ], [ %.1687, %.lr.ph1772.preheader ]
  %.349141769.prol = phi ptr [ %i.akz, %.lr.ph1772.prol ], [ %.339131777, %.lr.ph1772.preheader ] ; 2 uses
  %prol.iter2542 = phi i32 [ %prol.iter2542.next, %.lr.ph1772.prol ], [ 0, %.lr.ph1772.preheader ]
  %i.akw = load ptr, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akw, i64 1
  store ptr %i.akx, ptr %i.g, align 8, !tbaa !14
  %i.aky = load i8, ptr %i.akw, align 1, !tbaa !9
  %i.akz = getelementptr inbounds nuw i8, ptr %.349141769.prol, i64 1 ; 3 uses
  store i8 %i.aky, ptr %.349141769.prol, align 1, !tbaa !9
  %i.ala = add nsw i32 %.26881770.prol, -1        ; 2 uses
  %prol.iter2542.next = add i32 %prol.iter2542, 1 ; 2 uses
  %prol.iter2542.cmp.not = icmp eq i32 %prol.iter2542.next, %xtraiter2540
  br i1 %prol.iter2542.cmp.not, label %.lr.ph1772.prol.loopexit, label %.lr.ph1772.prol, !llvm.loop !54

.lr.ph1772.prol.loopexit:                         ; preds = %.lr.ph1772.prol, %.lr.ph1772.preheader
  %.lcssa2488.unr = phi ptr [ poison, %.lr.ph1772.preheader ], [ %i.akz, %.lr.ph1772.prol ]
  %.26881770.unr = phi i32 [ %.1687, %.lr.ph1772.preheader ], [ %i.ala, %.lr.ph1772.prol ]
  %.349141769.unr = phi ptr [ %.339131777, %.lr.ph1772.preheader ], [ %i.akz, %.lr.ph1772.prol ]
  %i.alb = icmp ult i32 %.1687, 4
  br i1 %i.alb, label %._crit_edge1773, label %.lr.ph1772

.lr.ph1772:                                       ; preds = %.lr.ph1772.prol.loopexit, %.lr.ph1772
  %.26881770 = phi i32 [ %i.als, %.lr.ph1772 ], [ %.26881770.unr, %.lr.ph1772.prol.loopexit ]
  %.349141769 = phi ptr [ %i.alr, %.lr.ph1772 ], [ %.349141769.unr, %.lr.ph1772.prol.loopexit ] ; 5 uses
  %i.alc = load ptr, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 1
  store ptr %i.ald, ptr %i.g, align 8, !tbaa !14
  %i.ale = load i8, ptr %i.alc, align 1, !tbaa !9
  %i.alf = getelementptr inbounds nuw i8, ptr %.349141769, i64 1
  store i8 %i.ale, ptr %.349141769, align 1, !tbaa !9
  %i.alg = load ptr, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alg, i64 1
  store ptr %i.alh, ptr %i.g, align 8, !tbaa !14
  %i.ali = load i8, ptr %i.alg, align 1, !tbaa !9
  %i.alj = getelementptr inbounds nuw i8, ptr %.349141769, i64 2
  store i8 %i.ali, ptr %i.alf, align 1, !tbaa !9
  %i.alk = load ptr, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.all = getelementptr inbounds nuw i8, ptr %i.alk, i64 1
  store ptr %i.all, ptr %i.g, align 8, !tbaa !14
  %i.alm = load i8, ptr %i.alk, align 1, !tbaa !9
  %i.aln = getelementptr inbounds nuw i8, ptr %.349141769, i64 3
  store i8 %i.alm, ptr %i.alj, align 1, !tbaa !9
  %i.alo = load ptr, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 1
  store ptr %i.alp, ptr %i.g, align 8, !tbaa !14
  %i.alq = load i8, ptr %i.alo, align 1, !tbaa !9
  %i.alr = getelementptr inbounds nuw i8, ptr %.349141769, i64 4 ; 2 uses
  store i8 %i.alq, ptr %i.aln, align 1, !tbaa !9
  %i.als = add nsw i32 %.26881770, -4             ; 2 uses
  %.not1182.3 = icmp eq i32 %i.als, 0
  br i1 %.not1182.3, label %._crit_edge1773, label %.lr.ph1772, !llvm.loop !55

._crit_edge1773:                                  ; preds = %.lr.ph1772.prol.loopexit, %.lr.ph1772, %.lr.ph1780
  %.34914.lcssa = phi ptr [ %.339131777, %.lr.ph1780 ], [ %.lcssa2488.unr, %.lr.ph1772.prol.loopexit ], [ %i.alr, %.lr.ph1772 ] ; 3 uses
  br i1 %.not1077, label %bb.gv, label %bb.gt

bb.gt:                                            ; preds = %._crit_edge1773
  %i.alt = ptrtoint ptr %.34914.lcssa to i64
  %i.alu = sub i64 %i.alt, %i.aks
  %i.alv = trunc i64 %i.alu to i32                ; 3 uses
  %i.alw = icmp sgt i32 %i.alv, 510
  br i1 %i.alw, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  %i.alx = add nuw nsw i32 %.208471778, %i.alv    ; 2 uses
  %i.aly = call ptr %0(ptr noundef %.209511776, ptr noundef %1, i32 noundef %i.alv) #13 ; 3 uses
  %i.alz = icmp eq ptr %i.aly, null
  br i1 %i.alz, label %.thread1427, label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gt, %._crit_edge1773
  %.24955 = phi ptr [ %.209511776, %._crit_edge1773 ], [ %.209511776, %bb.gt ], [ %i.aly, %bb.gu ] ; 2 uses
  %.38918 = phi ptr [ %.34914.lcssa, %._crit_edge1773 ], [ %.34914.lcssa, %bb.gt ], [ %i.aly, %bb.gu ] ; 2 uses
  %.24851 = phi i32 [ %.208471778, %._crit_edge1773 ], [ %.208471778, %bb.gt ], [ %i.alx, %bb.gu ] ; 2 uses
  %i.ama = load i8, ptr %i.c, align 1, !tbaa !9   ; 2 uses
  %.not1157 = icmp eq i8 %i.ama, 0
  br i1 %.not1157, label %._crit_edge1781, label %.lr.ph1780, !llvm.loop !56

._crit_edge1781:                                  ; preds = %bb.gv, %.loopexit1470.thread, %.loopexit1470
  %.88252156 = phi i32 [ %.8825, %.loopexit1470 ], [ %.6823, %.loopexit1470.thread ], [ %.8825, %bb.gv ] ; 2 uses
  %.20951.lcssa = phi ptr [ %.19950, %.loopexit1470 ], [ %.10941.lcssa, %.loopexit1470.thread ], [ %.24955, %bb.gv ] ; 2 uses
  %.33913.lcssa = phi ptr [ %.32912, %.loopexit1470 ], [ %.17897.lcssa, %.loopexit1470.thread ], [ %.38918, %bb.gv ] ; 2 uses
  %.20847.lcssa = phi i32 [ %.19846, %.loopexit1470 ], [ %.10837.lcssa, %.loopexit1470.thread ], [ %.24851, %bb.gv ] ; 2 uses
  %i.amb = load i32, ptr %i.e, align 4, !tbaa !10 ; 2 uses
  %.not11581801 = icmp eq i32 %i.amb, 0
end_hunk_0
