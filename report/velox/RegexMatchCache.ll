inline.NumInlined: 9148
inline.NumDeleted: 3321
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZNK5folly15RegexMatchCache11consistencyERNS0_24ConsistencyReportMatcherERKNS0_6KeyMapENS_11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE:bb.a
  %i.afv = load i64, ptr %i.ej, align 8, !tbaa !19747
  %i.afw = add i64 %i.afv, 1
  call void @_ZdlPvm(ptr noundef %i.aft, i64 noundef %i.afw) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit612

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit612: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit609, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i610
  %i.afx = load ptr, ptr %87, align 8, !tbaa !19733 ; 2 uses
  %i.afy = icmp eq ptr %i.afx, %i.ek
  br i1 %i.afy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit615, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i613

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i613: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit612
  %i.afz = load i64, ptr %i.ek, align 8, !tbaa !19747
  %i.aga = add i64 %i.afz, 1
  call void @_ZdlPvm(ptr noundef %i.afx, i64 noundef %i.aga) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit615

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit615: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit612, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i613
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #41
  %i.agb = load ptr, ptr %86, align 8, !tbaa !19733 ; 2 uses
  %i.agc = icmp eq ptr %i.agb, %i.el
  br i1 %i.agc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit618, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i616

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i616: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit615
  %i.agd = load i64, ptr %i.el, align 8, !tbaa !19747
  %i.age = add i64 %i.agd, 1
  call void @_ZdlPvm(ptr noundef %i.agb, i64 noundef %i.age) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit618

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit618: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit615, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i616
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #41
  br label %bb.dc

bb.da:                                            ; preds = %.noexc317
  %i.agf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit621

bb.db:                                            ; preds = %bb.cz
  %i.agg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.agh = load ptr, ptr %85, align 8, !tbaa !19733 ; 2 uses
  %i.agi = icmp eq ptr %i.agh, %i.ej
  br i1 %i.agi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit621, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i619

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i619: ; preds = %bb.db
  %i.agj = load i64, ptr %i.ej, align 8, !tbaa !19747
  %i.agk = add i64 %i.agj, 1
  call void @_ZdlPvm(ptr noundef %i.agh, i64 noundef %i.agk) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit621

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit621: ; preds = %bb.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i619, %bb.da
  %.pn287 = phi { ptr, i32 } [ %i.agf, %bb.da ], [ %i.agg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i619 ], [ %i.agg, %bb.db ] ; 2 uses
  %i.agl = load ptr, ptr %87, align 8, !tbaa !19733 ; 2 uses
  %i.agm = icmp eq ptr %i.agl, %i.ek
  br i1 %i.agm, label %.body1025, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i622

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i622: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit621
  %i.agn = load i64, ptr %i.ek, align 8, !tbaa !19747
  %i.ago = add i64 %i.agn, 1
  call void @_ZdlPvm(ptr noundef %i.agl, i64 noundef %i.ago) #42
  br label %.body1025

.body1025:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit621, %bb.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i622, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1021, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1015
  %.pn287.pn = phi { ptr, i32 } [ %i.aez, %bb.cw ], [ %.pn287, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i622 ], [ %i.afk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i1021 ], [ %i.aez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1015 ], [ %.pn287, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit621 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #41
  %i.agp = load ptr, ptr %86, align 8, !tbaa !19733 ; 2 uses
  %i.agq = icmp eq ptr %i.agp, %i.el
  br i1 %i.agq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit627, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i625

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i625: ; preds = %.body1025
  %i.agr = load i64, ptr %i.el, align 8, !tbaa !19747
  %i.ags = add i64 %i.agr, 1
  call void @_ZdlPvm(ptr noundef %i.agp, i64 noundef %i.ags) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit627

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit627: ; preds = %.body1025, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i625
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #41
  br label %common.resume

bb.dc:                                            ; preds = %bb.cr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit618
  %i.agt = getelementptr inbounds i8, ptr %.sroa.01191.01743, i64 -16
  %.neg.i.i.i628 = mul nsw i64 %.sroa.91194.01742, -16
  %i.agu = getelementptr inbounds i8, ptr %i.agt, i64 %.neg.i.i.i628 ; 2 uses
  %.not19.i6.i629 = icmp eq i64 %.sroa.91194.01742, 0
  br i1 %.not19.i6.i629, label %.critedge.i.i634.preheader, label %thread-pre-split.i630

.critedge.i.i634.preheader:                       ; preds = %bb.dd, %bb.dc
  br label %.critedge.i.i634

bb.dd:                                            ; preds = %thread-pre-split.i630
  %.not19.i.i632 = icmp eq i64 %i.agx, 0
  br i1 %.not19.i.i632, label %.critedge.i.i634.preheader, label %thread-pre-split.i630

thread-pre-split.i630:                            ; preds = %bb.dc, %bb.dd
  %i.agv = phi i64 [ %i.agx, %bb.dd ], [ %.sroa.91194.01742, %bb.dc ]
  %i.agw = phi ptr [ %i.agy, %bb.dd ], [ %.sroa.01191.01743, %bb.dc ]
  %i.agx = add nsw i64 %i.agv, -1                 ; 4 uses
  %i.agy = getelementptr inbounds i8, ptr %i.agw, i64 -16 ; 2 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agu, i64 %i.agx
  %i.aha = load i8, ptr %i.agz, align 1, !tbaa !19747
  %.not.i631 = icmp eq i8 %i.aha, 0
  br i1 %.not.i631, label %bb.dd, label %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit.backedge, !prof !19748, !llvm.loop !19749

.critedge.i.i634:                                 ; preds = %.critedge.i.i634.preheader, %bb.de
  %.017.i.i635 = phi ptr [ %i.ahe, %bb.de ], [ %i.agu, %.critedge.i.i634.preheader ] ; 4 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %.017.i.i635, i64 14
  %i.ahc = load i8, ptr %i.ahb, align 1, !tbaa !19747
  %i.ahd = and i8 %i.ahc, 15
  %.not2.i636 = icmp eq i8 %i.ahd, 0
  br i1 %.not2.i636, label %bb.de, label %._crit_edge, !prof !19751

bb.de:                                            ; preds = %.critedge.i.i634
  %i.ahe = getelementptr inbounds i8, ptr %.017.i.i635, i64 -256 ; 3 uses
  %i.ahf = load <16 x i8>, ptr %i.ahe, align 16, !tbaa !19747
  %i.ahg = icmp slt <16 x i8> %i.ahf, zeroinitializer
  %i.ahh = bitcast <16 x i1> %i.ahg to i16
  %i.ahi = and i16 %i.ahh, 16383                  ; 2 uses
  %i.ahj = getelementptr inbounds i8, ptr %.017.i.i635, i64 -512
  call void @llvm.prefetch.p0(ptr nonnull %i.ahj, i32 0, i32 3, i32 1)
  %.not3.i638 = icmp eq i16 %i.ahi, 0
  br i1 %.not3.i638, label %.critedge.i.i634, label %bb.df, !prof !19748, !llvm.loop !19752

bb.df:                                            ; preds = %bb.de
  %i.ahk = zext nneg i16 %i.ahi to i32
  %i.ahl = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ahk, i1 true)
  %i.ahm = xor i32 %i.ahl, 31
  %i.ahn = zext nneg i32 %i.ahm to i64            ; 2 uses
  %i.aho = icmp ne ptr %i.ahe, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.aho)
  %i.ahp = getelementptr inbounds i8, ptr %.017.i.i635, i64 -240
  %i.ahq = getelementptr inbounds nuw [16 x i8], ptr %i.ahp, i64 %i.ahn
  br label %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit.backedge

_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit.backedge: ; preds = %thread-pre-split.i630, %bb.df
  %.sroa.01191.01743.be = phi ptr [ %i.ahq, %bb.df ], [ %i.agy, %thread-pre-split.i630 ]
  %.sroa.91194.01742.be = phi i64 [ %i.ahn, %bb.df ], [ %i.agx, %thread-pre-split.i630 ]
  br label %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryEEEppEv.exit

._crit_edge1762:                                  ; preds = %.critedge.i.i680, %._crit_edge1748
  %i.ahr = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ahs = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aht = load i64, ptr %i.ahs, align 8, !tbaa !19762
  %i.ahu = lshr i64 %i.aht, 8                     ; 2 uses
  %.not.i.i.i.not = icmp eq i64 %i.ahu, 0
  %i.ahv = load ptr, ptr %i.ahr, align 8          ; 2 uses
  br i1 %.not.i.i.i.not, label %._crit_edge1771, label %.lr.ph1770

.lr.ph1770:                                       ; preds = %._crit_edge1762
  %i.ahw = getelementptr inbounds nuw [32 x i8], ptr %i.ahv, i64 %i.ahu
  %i.ahx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ahy = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ahz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aia = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aib = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 8 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.aie = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 8 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aih = getelementptr inbounds nuw i8, ptr %101, i64 8
  %i.aii = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.aij = getelementptr inbounds nuw i8, ptr %63, i64 16
  %i.aik = getelementptr inbounds nuw i8, ptr %102, i64 8
  %i.ail = getelementptr inbounds nuw i8, ptr %63, i64 24
  %i.aim = getelementptr inbounds nuw i8, ptr %100, i64 16 ; 4 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %102, i64 16 ; 4 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %101, i64 16 ; 4 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 8 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.air = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ais = getelementptr inbounds nuw i8, ptr %99, i64 8
  %i.ait = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.aiu = getelementptr inbounds nuw i8, ptr %98, i64 16 ; 4 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %99, i64 16 ; 4 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aix = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aiy = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aiz = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ajc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ajf = getelementptr inbounds nuw i8, ptr %104, i64 8
  %i.ajg = getelementptr inbounds nuw i8, ptr %64, i64 8
  %i.ajh = getelementptr inbounds nuw i8, ptr %64, i64 16
  %i.aji = getelementptr inbounds nuw i8, ptr %105, i64 8
  %i.ajj = getelementptr inbounds nuw i8, ptr %64, i64 24
  %i.ajk = getelementptr inbounds nuw i8, ptr %103, i64 16 ; 4 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %105, i64 16 ; 4 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %104, i64 16 ; 4 uses
  br label %.backedge1441

_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEEppEv.exit: ; preds = %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEEppEv.exit.backedge, %.lr.ph1761
  %.sroa.01185.01759 = phi ptr [ %i.eq, %.lr.ph1761 ], [ %.sroa.01185.01759.be, %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEEppEv.exit.backedge ] ; 10 uses
  %.sroa.9.01758 = phi i64 [ %i.er, %.lr.ph1761 ], [ %.sroa.9.01758.be, %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEEppEv.exit.backedge ] ; 3 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %.sroa.01185.01759, i64 8 ; 2 uses
  %i.ajo = load i64, ptr %i.es, align 8, !tbaa !19762 ; 2 uses
  %i.ajp = lshr i64 %i.ajo, 8
  switch i64 %i.ajp, label %bb.dh [
    i64 0, label %.noexc298
    i64 1, label %bb.dg
  ]

bb.dg:                                            ; preds = %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEEppEv.exit
  %i.ajq = load i64, ptr %i.et, align 8, !tbaa !19739
  %i.ajr = and i64 %i.ajq, -16
  %i.ajs = inttoptr i64 %i.ajr to ptr             ; 2 uses
  %i.ajt = load ptr, ptr %.sroa.01185.01759, align 8, !tbaa !19858
  %i.aju = load ptr, ptr %i.ajs, align 16, !tbaa !19858
  %i.ajv = icmp eq ptr %i.ajt, %i.aju
  br i1 %i.ajv, label %_ZN5folly7get_ptrINS_10F14FastMapIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryENS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaISt4pairIKS9_SB_EEEES9_EEDaRKT_RKT0_.exit, label %.noexc298

bb.dh:                                            ; preds = %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEEppEv.exit
  %i.ajw = load ptr, ptr %.sroa.01185.01759, align 8, !tbaa !19858 ; 2 uses
  %i.ajx = ptrtoint ptr %i.ajw to i64             ; 2 uses
  %i.ajy = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.ajx) ; 2 uses
  %i.ajz = lshr i64 %i.ajy, 24
  %i.aka = or i64 %i.ajz, 128                     ; 2 uses
  %i.akb = add i64 %i.ajy, %i.ajx
  %i.akc = shl nuw nsw i64 %i.aka, 1
  %i.akd = or disjoint i64 %i.akc, 1
  %i.ake = trunc nuw i64 %i.aka to i8
  %i.akf = insertelement <16 x i8> poison, i8 %i.ake, i64 0
  %i.akg = shufflevector <16 x i8> %i.akf, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.akh = and i64 %i.ajo, 255                    ; 2 uses
  %i.aki = shl nuw i64 1, %i.akh
  %i.akj = load ptr, ptr %i.eu, align 8, !tbaa !21220
  br label %bb.di

bb.di:                                            ; preds = %bb.dl, %bb.dh
  %.0.i58.i642 = phi i64 [ %i.akb, %bb.dh ], [ %i.ale, %bb.dl ] ; 2 uses
  %.023.i57.i643 = phi i64 [ %i.aki, %bb.dh ], [ %i.ald, %bb.dl ]
  %i.akk = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i58.i642, i64 range(i64 0, 256) %i.akh)
  %i.akl = getelementptr inbounds nuw [256 x i8], ptr %i.akj, i64 %i.akk ; 4 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akl, i64 16
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akl, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.akn, i32 0, i32 3, i32 1)
  %i.ako = load <16 x i8>, ptr %i.akl, align 16   ; 2 uses
  %i.akp = icmp eq <16 x i8> %i.ako, %i.akg
  %i.akq = bitcast <16 x i1> %i.akp to i16
  %i.akr = and i16 %i.akq, 16383
  %i.aks = zext nneg i16 %i.akr to i32
  %i.akt = icmp ne ptr %i.akl, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.aku = extractelement <16 x i8> %i.ako, i64 15
  br label %.critedge.i.i644

.critedge.i.i644:                                 ; preds = %bb.dj, %bb.di
  %.sroa.019.0.i645 = phi i32 [ %i.aks, %bb.di ], [ %i.akx, %bb.dj ] ; 4 uses
  %.not.i646 = icmp eq i32 %.sroa.019.0.i645, 0
  br i1 %.not.i646, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %.critedge.i.i644
  %i.akv = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.019.0.i645, i1 true)
  %i.akw = add nsw i32 %.sroa.019.0.i645, -1
  %i.akx = and i32 %i.akw, %.sroa.019.0.i645
  %i.aky = zext nneg i32 %i.akv to i64
  call void @llvm.assume(i1 %i.akt)
  %i.akz = getelementptr inbounds nuw [16 x i8], ptr %i.akm, i64 %i.aky ; 2 uses
  %i.ala = load ptr, ptr %i.akz, align 8, !tbaa !19858
  %i.alb = icmp eq ptr %i.ajw, %i.ala
  br i1 %i.alb, label %_ZN5folly7get_ptrINS_10F14FastMapIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryENS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaISt4pairIKS9_SB_EEEES9_EEDaRKT_RKT0_.exit, label %.critedge.i.i644, !prof !19751, !llvm.loop !21384

bb.dk:                                            ; preds = %.critedge.i.i644
  %i.alc = icmp eq i8 %i.aku, 0
  br i1 %i.alc, label %.noexc298, label %bb.dl, !prof !19751

bb.dl:                                            ; preds = %bb.dk
  %i.ald = add i64 %.023.i57.i643, -1             ; 2 uses
  %i.ale = add i64 %i.akd, %.0.i58.i642
  %.not.i.i647 = icmp eq i64 %i.ald, 0
  br i1 %.not.i.i647, label %.noexc298, label %bb.di, !llvm.loop !21385

_ZN5folly7get_ptrINS_10F14FastMapIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryENS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaISt4pairIKS9_SB_EEEES9_EEDaRKT_RKT0_.exit: ; preds = %bb.dj, %bb.dg
  %.sroa.018.148.i641 = phi ptr [ %i.ajs, %bb.dg ], [ %i.akz, %bb.dj ]
  %i.alf = getelementptr inbounds nuw i8, ptr %.sroa.018.148.i641, i64 8
  br label %bb.dp

.noexc298:                                        ; preds = %bb.dk, %bb.dl, %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEEppEv.exit, %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #41
  %106 = load ptr, ptr %.sroa.01185.01759, align 8, !tbaa !19858 ; 2 uses
  %i.alg = load ptr, ptr %106, align 8, !tbaa !19733
  %i.alh = getelementptr inbounds nuw i8, ptr %106, i64 8
  %i.ali = load i64, ptr %i.alh, align 8, !tbaa !19738
  call fastcc void @_ZN5follyL5quoteB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias nonnull writable align 8 %89, i64 %i.ali, ptr %i.alg)
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #41, !noalias !21386
  %i.alj = load ptr, ptr %89, align 8, !tbaa !19733
  %i.alk = load i64, ptr %i.ev, align 8, !tbaa !19738
  store ptr %i.alj, ptr %65, align 16, !tbaa !19747
  store i64 %i.alk, ptr %i.ew, align 8, !tbaa !19747
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %88, ptr nonnull @.str.281, i64 35, i64 13, ptr nonnull %65)
          to label %bb.dm unwind label %bb.dn

bb.dm:                                            ; preds = %.noexc298
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #41, !noalias !21386
  invoke void %4(ptr noundef nonnull align 8 dereferenceable(32) %88, ptr noundef %3)
          to label %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit651 unwind label %bb.do, !inline_history !21246

_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit651: ; preds = %bb.dm
  %i.all = load ptr, ptr %88, align 8, !tbaa !19733 ; 2 uses
  %i.alm = icmp eq ptr %i.all, %i.ex
  br i1 %i.alm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit651
  %i.aln = load i64, ptr %i.ex, align 8, !tbaa !19747
  %i.alo = add i64 %i.aln, 1
  call void @_ZdlPvm(ptr noundef %i.all, i64 noundef %i.alo) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654: ; preds = %_ZNK5folly11FunctionRefIFvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES6_.exit651, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652
  %i.alp = load ptr, ptr %89, align 8, !tbaa !19733 ; 2 uses
  %i.alq = icmp eq ptr %i.alp, %i.ey
  br i1 %i.alq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit657, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i655

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i655: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654
  %i.alr = load i64, ptr %i.ey, align 8, !tbaa !19747
  %i.als = add i64 %i.alr, 1
  call void @_ZdlPvm(ptr noundef %i.alp, i64 noundef %i.als) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit657

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit657: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i655
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #41
  br label %bb.dp

bb.dn:                                            ; preds = %.noexc298
  %i.alt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit660

bb.do:                                            ; preds = %bb.dm
  %i.alu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.alv = load ptr, ptr %88, align 8, !tbaa !19733 ; 2 uses
  %i.alw = icmp eq ptr %i.alv, %i.ex
  br i1 %i.alw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit660, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i658

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i658: ; preds = %bb.do
  %i.alx = load i64, ptr %i.ex, align 8, !tbaa !19747
  %i.aly = add i64 %i.alx, 1
  call void @_ZdlPvm(ptr noundef %i.alv, i64 noundef %i.aly) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit660

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit660: ; preds = %bb.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i658, %bb.dn
  %.pn256 = phi { ptr, i32 } [ %i.alt, %bb.dn ], [ %i.alu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i658 ], [ %i.alu, %bb.do ]
  %i.alz = load ptr, ptr %89, align 8, !tbaa !19733 ; 2 uses
  %i.ama = icmp eq ptr %i.alz, %i.ey
  br i1 %i.ama, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit663, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i661

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i661: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit660
  %i.amb = load i64, ptr %i.ey, align 8, !tbaa !19747
  %i.amc = add i64 %i.amb, 1
  call void @_ZdlPvm(ptr noundef %i.alz, i64 noundef %i.amc) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit663

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit663: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit660, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i661
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #41
  br label %common.resume

bb.dp:                                            ; preds = %_ZN5folly7get_ptrINS_10F14FastMapIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryENS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaISt4pairIKS9_SB_EEEES9_EEDaRKT_RKT0_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit657
  %.not2551340 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit657 ], [ false, %_ZN5folly7get_ptrINS_10F14FastMapIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryENS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaISt4pairIKS9_SB_EEEES9_EEDaRKT_RKT0_.exit ]
  %i.amd = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit657 ], [ %i.alf, %_ZN5folly7get_ptrINS_10F14FastMapIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache17MatchToRegexEntryENS_23HeterogeneousAccessHashIS9_vEENS_26HeterogeneousAccessEqualToIS9_vEESaISt4pairIKS9_SB_EEEES9_EEDaRKT_RKT0_.exit ] ; 2 uses
  %i.ame = load i64, ptr %i.ajn, align 8, !tbaa !19741 ; 2 uses
  %i.amf = icmp slt i64 %i.ame, 0
  br i1 %i.amf, label %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit, label %.lr.ph.i.i.i.preheader

_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit: ; preds = %bb.dp
  %i.amg = shl i64 %i.ame, 1
  %i.amh = inttoptr i64 %i.amg to ptr             ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.amh, align 8, !tbaa !19871 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.amh, i64 8
  %.sroa.3.0.copyload.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !tbaa !19741 ; 2 uses
  %.not.i668 = icmp eq i64 %.sroa.3.0.copyload.i.i.i, 0
  br i1 %.not.i668, label %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.dp, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit
  %.sroa.0.0.i.i.i6652162.a = phi ptr [ %.sroa.0.0.copyload.i.i.i, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit ], [ %i.ajn, %bb.dp ] ; 3 uses
  %.sroa.3.0.i.i.i6642160.a = phi i64 [ %.sroa.3.0.copyload.i.i.i, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit ], [ 64, %bb.dp ] ; 3 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.dq
  %.01622.i.i.i = phi i64 [ %i.amq, %bb.dq ], [ 0, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %i.ami = lshr i64 %.01622.i.i.i, 6
  %i.amj = and i64 %.01622.i.i.i, 63
  %i.amk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i.i6652162.a, i64 %i.ami
  %i.aml = load i64, ptr %i.amk, align 8, !tbaa !19741, !noalias !21389
  %i.amm = lshr i64 %i.aml, %i.amj                ; 2 uses
  %.not.i.i.i669 = icmp eq i64 %i.amm, 0
  br i1 %.not.i.i.i669, label %bb.dq, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %.lr.ph.i.i.i
  %i.amn = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.amm, i1 true)
  %i.amo = add i64 %i.amn, %.01622.i.i.i
  br label %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit

bb.dq:                                            ; preds = %.lr.ph.i.i.i
  %i.amp = and i64 %.01622.i.i.i, -64
  %i.amq = add i64 %i.amp, 64                     ; 3 uses
  %i.amr = icmp ult i64 %i.amq, %.sroa.3.0.i.i.i6642160.a
  br i1 %i.amr, label %.lr.ph.i.i.i, label %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit, !llvm.loop !19875

_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit: ; preds = %bb.dq, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit, %.thread.i.i.i
  %.sroa.0.0.i.i.i6652163 = phi ptr [ %.sroa.0.0.i.i.i6652162.a, %.thread.i.i.i ], [ %.sroa.0.0.copyload.i.i.i, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit ], [ %.sroa.0.0.i.i.i6652162.a, %bb.dq ]
  %.sroa.3.0.i.i.i6642161 = phi i64 [ %.sroa.3.0.i.i.i6642160.a, %.thread.i.i.i ], [ 0, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit ], [ %.sroa.3.0.i.i.i6642160.a, %bb.dq ] ; 4 uses
  %.2.i.i.i = phi i64 [ %i.amo, %.thread.i.i.i ], [ 0, %_ZNK5folly28RegexMatchCacheDynamicBitset17as_index_set_viewEv.exit ], [ %i.amq, %bb.dq ] ; 2 uses
  %.not14311753 = icmp eq i64 %.2.i.i.i, %.sroa.3.0.i.i.i6642161
  br i1 %.not14311753, label %._crit_edge1756, label %.lr.ph1755

._crit_edge1756:                                  ; preds = %_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit, %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit
  %i.ams = getelementptr inbounds i8, ptr %.sroa.01185.01759, i64 -16
  %.neg.i.i.i674 = mul nsw i64 %.sroa.9.01758, -16
  %i.amt = getelementptr inbounds i8, ptr %i.ams, i64 %.neg.i.i.i674 ; 2 uses
  %.not19.i6.i675 = icmp eq i64 %.sroa.9.01758, 0
  br i1 %.not19.i6.i675, label %.critedge.i.i680.preheader, label %thread-pre-split.i676

.critedge.i.i680.preheader:                       ; preds = %bb.dr, %._crit_edge1756
  br label %.critedge.i.i680

bb.dr:                                            ; preds = %thread-pre-split.i676
  %.not19.i.i678 = icmp eq i64 %i.amw, 0
  br i1 %.not19.i.i678, label %.critedge.i.i680.preheader, label %thread-pre-split.i676

thread-pre-split.i676:                            ; preds = %._crit_edge1756, %bb.dr
  %i.amu = phi i64 [ %i.amw, %bb.dr ], [ %.sroa.9.01758, %._crit_edge1756 ]
  %i.amv = phi ptr [ %i.amx, %bb.dr ], [ %.sroa.01185.01759, %._crit_edge1756 ]
  %i.amw = add nsw i64 %i.amu, -1                 ; 4 uses
  %i.amx = getelementptr inbounds i8, ptr %i.amv, i64 -16 ; 2 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.amw
  %i.amz = load i8, ptr %i.amy, align 1, !tbaa !19747
  %.not.i677 = icmp eq i8 %i.amz, 0
  br i1 %.not.i677, label %bb.dr, label %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEEppEv.exit.backedge, !prof !19748, !llvm.loop !19896

.critedge.i.i680:                                 ; preds = %.critedge.i.i680.preheader, %bb.ds
  %.017.i.i681 = phi ptr [ %i.and, %bb.ds ], [ %i.amt, %.critedge.i.i680.preheader ] ; 4 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %.017.i.i681, i64 14
  %i.anb = load i8, ptr %i.ana, align 1, !tbaa !19747
  %i.anc = and i8 %i.anb, 15
  %.not2.i682 = icmp eq i8 %i.anc, 0
  br i1 %.not2.i682, label %bb.ds, label %._crit_edge1762, !prof !19751

bb.ds:                                            ; preds = %.critedge.i.i680
  %i.and = getelementptr inbounds i8, ptr %.017.i.i681, i64 -256 ; 3 uses
  %i.ane = load <16 x i8>, ptr %i.and, align 16, !tbaa !19747
  %i.anf = icmp slt <16 x i8> %i.ane, zeroinitializer
  %i.ang = bitcast <16 x i1> %i.anf to i16
  %i.anh = and i16 %i.ang, 16383                  ; 2 uses
  %i.ani = getelementptr inbounds i8, ptr %.017.i.i681, i64 -512
  call void @llvm.prefetch.p0(ptr nonnull %i.ani, i32 0, i32 3, i32 1)
  %.not3.i684 = icmp eq i16 %i.anh, 0
  br i1 %.not3.i684, label %.critedge.i.i680, label %bb.dt, !prof !19748, !llvm.loop !19897

bb.dt:                                            ; preds = %bb.ds
  %i.anj = zext nneg i16 %i.anh to i32
  %i.ank = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.anj, i1 true)
  %i.anl = xor i32 %i.ank, 31
  %i.anm = zext nneg i32 %i.anl to i64            ; 2 uses
  %i.ann = icmp ne ptr %i.and, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ann)
  %i.ano = getelementptr inbounds i8, ptr %.017.i.i681, i64 -240
  %i.anp = getelementptr inbounds nuw [16 x i8], ptr %i.ano, i64 %i.anm
  br label %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEEppEv.exit.backedge

_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEEppEv.exit.backedge: ; preds = %thread-pre-split.i676, %bb.dt
  %.sroa.01185.01759.be = phi ptr [ %i.anp, %bb.dt ], [ %i.amx, %thread-pre-split.i676 ]
  %.sroa.9.01758.be = phi i64 [ %i.anm, %bb.dt ], [ %i.amw, %thread-pre-split.i676 ]
  br label %_ZN5folly3f146detail22ValueContainerIteratorIPKSt4pairIKPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_15RegexMatchCache23StringQueueForwardEntryEEEppEv.exit

.lr.ph1755:                                       ; preds = %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit, %_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit
  %.sroa.7.01754 = phi i64 [ %.2.i.i, %_ZN5folly28RegexMatchCacheDynamicBitset14index_set_view14const_iteratorppEv.exit ], [ %.2.i.i.i, %_ZNK5folly28RegexMatchCacheDynamicBitset14index_set_view5beginEv.exit ] ; 8 uses
  %i.anq = load i64, ptr %i.ez, align 8, !tbaa !19762 ; 2 uses
  %i.anr = lshr i64 %i.anq, 8
  switch i64 %i.anr, label %bb.dv [
    i64 0, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyImPKNS_18RegexMatchCacheKeyEvvvEEE4findImEENS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKmS6_EEEEERKT_.exit.thread.i
    i64 1, label %bb.du
  ]

bb.du:                                            ; preds = %.lr.ph1755
  %i.ans = load i64, ptr %i.fa, align 8, !tbaa !19876
  %i.ant = and i64 %i.ans, -16
  %i.anu = inttoptr i64 %i.ant to ptr             ; 2 uses
  %i.anv = load i64, ptr %i.anu, align 16, !tbaa !19741
  %i.anw = icmp eq i64 %.sroa.7.01754, %i.anv
end_hunk_0
