inline.NumInlined: 13
inline.NumDeleted: 8
begin_hunk_0_@_RNvXs1_NtNtCsisHG5ZUm6CA_8anstream7adapter6winconNtB5_13WinconCaptureNtCs41iyzuuznms_13anstyle_parse7Perform12csi_dispatch:bb.a

.lr.ph1995.jt2:                                   ; preds = %bb.aj
  %i.r = extractvalue { ptr, i64 } %i.cw, 1
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %.loopexit2011.loopexit3192, label %.lr.ph.jt2

.lr.ph1995.jt0:                                   ; preds = %bb.ak
  %i.t = extractvalue { ptr, i64 } %i.cy, 1       ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.loopexit2011, label %.lr.ph.jt0

._crit_edge.loopexit3185.loopexit:                ; preds = %bb.ai
  %.sroa.0.sroa.49.0.extract.trunc1667.le4113 = trunc nuw i32 %.sroa.0.sroa.49.0.extract.shift1666 to i8
  %.sroa.50.sroa.49.0.extract.trunc1304.le4111 = trunc nuw i32 %.sroa.50.sroa.49.0.extract.shift1303 to i8
  %.sroa.72.sroa.50.0.extract.trunc883.le4109 = trunc nuw i32 %.sroa.72.sroa.50.0.extract.shift882 to i8
  br label %._crit_edge

._crit_edge.loopexit3185.loopexit3607:            ; preds = %bb.x
  %.sroa.0.sroa.49.0.extract.trunc1667.peel.le4119 = trunc nuw i32 %.sroa.0.sroa.49.0.extract.shift1666.peel to i8
  %.sroa.50.sroa.49.0.extract.trunc1304.peel.le4117 = trunc nuw i32 %.sroa.50.sroa.49.0.extract.shift1303.peel to i8
  %.sroa.72.sroa.50.0.extract.trunc883.peel.le4115 = trunc nuw i32 %.sroa.72.sroa.50.0.extract.shift882.peel to i8
  br label %._crit_edge

._crit_edge.loopexit3191:                         ; preds = %bb.aj
  %.sroa.0.sroa.49.0.extract.trunc1657.le4125 = trunc nuw i32 %.sroa.0.sroa.49.0.extract.shift1656 to i8
  %.sroa.50.sroa.49.0.extract.trunc1294.le4123 = trunc nuw i32 %.sroa.50.sroa.49.0.extract.shift1293 to i8
  %.sroa.72.sroa.50.0.extract.trunc873.le4121 = trunc nuw i32 %.sroa.72.sroa.50.0.extract.shift872 to i8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit2011, %.loopexit2011.jt4, %._crit_edge.loopexit3185.loopexit, %._crit_edge.loopexit3185.loopexit3607, %.loopexit2011.jt1, %bb.ak, %._crit_edge.loopexit3191, %bb.c
  %.sroa.0.sroa.49.0.lcssa = phi i8 [ %.sroa.0.sroa.49.0.extract.trunc1669, %bb.c ], [ %.sroa.0.sroa.49.2.jt0, %bb.ak ], [ %.sroa.0.sroa.49.0.extract.trunc1667.peel.le4119, %._crit_edge.loopexit3185.loopexit3607 ], [ %.sroa.0.sroa.49.019762216, %.loopexit2011.jt1 ], [ %.sroa.0.sroa.49.0.extract.trunc1657.le4125, %._crit_edge.loopexit3191 ], [ %.sroa.0.sroa.49.019762216, %.loopexit2011.jt4 ], [ %.sroa.0.sroa.49.0.extract.trunc1667.le4113, %._crit_edge.loopexit3185.loopexit ], [ %.sroa.0.sroa.49.2, %.loopexit2011 ] ; 2 uses
  %.sroa.0.sroa.48.0.lcssa = phi i8 [ %.sroa.0.sroa.48.0.extract.trunc1553, %bb.c ], [ %.sroa.0.sroa.48.2.jt0, %bb.ak ], [ %.sroa.0.sroa.48.0.extract.trunc1551.peel, %._crit_edge.loopexit3185.loopexit3607 ], [ %.sroa.0.sroa.48.019772209, %.loopexit2011.jt1 ], [ %.sroa.0.sroa.48.0.extract.trunc1541, %._crit_edge.loopexit3191 ], [ %.sroa.0.sroa.48.019772209, %.loopexit2011.jt4 ], [ %.sroa.0.sroa.48.0.extract.trunc1551, %._crit_edge.loopexit3185.loopexit ], [ %.sroa.0.sroa.48.2, %.loopexit2011 ] ; 2 uses
  %.sroa.0.sroa.45.0.lcssa = phi i8 [ %.sroa.0.sroa.45.0.extract.trunc1438, %bb.c ], [ %.sroa.0.sroa.45.2.jt0, %bb.ak ], [ %.sroa.0.sroa.45.0.extract.trunc1436.peel, %._crit_edge.loopexit3185.loopexit3607 ], [ %.sroa.0.sroa.45.019782202, %.loopexit2011.jt1 ], [ %.sroa.0.sroa.45.0.extract.trunc1426, %._crit_edge.loopexit3191 ], [ %.sroa.0.sroa.45.019782202, %.loopexit2011.jt4 ], [ %.sroa.0.sroa.45.0.extract.trunc1436, %._crit_edge.loopexit3185.loopexit ], [ %.sroa.0.sroa.45.2, %.loopexit2011 ] ; 2 uses
  %.sroa.0.sroa.0.0.lcssa = phi i8 [ %.sroa.0.sroa.0.0.extract.trunc1349, %bb.c ], [ %.sroa.0.sroa.0.2.jt0, %bb.ak ], [ %.sroa.0.sroa.0.0.extract.trunc1348.peel, %._crit_edge.loopexit3185.loopexit3607 ], [ %.sroa.0.sroa.0.019792195, %.loopexit2011.jt1 ], [ %.sroa.0.sroa.0.0.extract.trunc1341, %._crit_edge.loopexit3191 ], [ %.sroa.0.sroa.0.019792195, %.loopexit2011.jt4 ], [ %.sroa.0.sroa.0.0.extract.trunc1348, %._crit_edge.loopexit3185.loopexit ], [ %.sroa.0.sroa.0.2, %.loopexit2011 ] ; 3 uses
  %.sroa.50.sroa.49.0.lcssa = phi i8 [ %.sroa.50.sroa.49.0.extract.trunc, %bb.c ], [ %.sroa.50.sroa.49.2.jt0, %bb.ak ], [ %.sroa.50.sroa.49.0.extract.trunc1304.peel.le4117, %._crit_edge.loopexit3185.loopexit3607 ], [ %.sroa.50.sroa.49.019802188, %.loopexit2011.jt1 ], [ %.sroa.50.sroa.49.0.extract.trunc1294.le4123, %._crit_edge.loopexit3191 ], [ %.sroa.50.sroa.49.019802188, %.loopexit2011.jt4 ], [ %.sroa.50.sroa.49.0.extract.trunc1304.le4111, %._crit_edge.loopexit3185.loopexit ], [ %.sroa.50.sroa.49.2, %.loopexit2011 ] ; 2 uses
  %.sroa.50.sroa.48.0.lcssa = phi i8 [ %.sroa.50.sroa.48.0.extract.trunc, %bb.c ], [ %.sroa.50.sroa.48.2.jt0, %bb.ak ], [ %.sroa.50.sroa.48.0.extract.trunc1188.peel, %._crit_edge.loopexit3185.loopexit3607 ], [ %.sroa.50.sroa.48.019812181, %.loopexit2011.jt1 ], [ %.sroa.50.sroa.48.0.extract.trunc1178, %._crit_edge.loopexit3191 ], [ %.sroa.50.sroa.48.019812181, %.loopexit2011.jt4 ], [ %.sroa.50.sroa.48.0.extract.trunc1188, %._crit_edge.loopexit3185.loopexit ], [ %.sroa.50.sroa.48.2, %.loopexit2011 ] ; 2 uses
  %.sroa.50.sroa.45.0.lcssa = phi i8 [ %.sroa.50.sroa.45.0.extract.trunc, %bb.c ], [ %.sroa.50.sroa.45.2.jt0, %bb.ak ], [ %.sroa.50.sroa.45.0.extract.trunc1073.peel, %._crit_edge.loopexit3185.loopexit3607 ], [ %.sroa.50.sroa.45.019822174, %.loopexit2011.jt1 ], [ %.sroa.50.sroa.45.0.extract.trunc1063, %._crit_edge.loopexit3191 ], [ %.sroa.50.sroa.45.019822174, %.loopexit2011.jt4 ], [ %.sroa.50.sroa.45.0.extract.trunc1073, %._crit_edge.loopexit3185.loopexit ], [ %.sroa.50.sroa.45.2, %.loopexit2011 ] ; 2 uses
  %.sroa.50.sroa.0.0.lcssa = phi i8 [ %.sroa.50.sroa.0.0.extract.trunc, %bb.c ], [ %.sroa.50.sroa.0.2.jt0, %bb.ak ], [ %.sroa.50.sroa.0.0.extract.trunc965.peel, %._crit_edge.loopexit3185.loopexit3607 ], [ %.sroa.50.sroa.0.019832167, %.loopexit2011.jt1 ], [ %.sroa.50.sroa.0.0.extract.trunc958, %._crit_edge.loopexit3191 ], [ %.sroa.50.sroa.0.019832167, %.loopexit2011.jt4 ], [ %.sroa.50.sroa.0.0.extract.trunc965, %._crit_edge.loopexit3185.loopexit ], [ %.sroa.50.sroa.0.2, %.loopexit2011 ] ; 3 uses
  %.sroa.72.sroa.50.0.lcssa = phi i8 [ %.sroa.72.sroa.50.0.extract.trunc, %bb.c ], [ %.sroa.72.sroa.50.01984, %bb.ak ], [ %.sroa.72.sroa.50.0.extract.trunc883.peel.le4115, %._crit_edge.loopexit3185.loopexit3607 ], [ %.sroa.72.sroa.50.01984, %.loopexit2011.jt1 ], [ %.sroa.72.sroa.50.0.extract.trunc873.le4121, %._crit_edge.loopexit3191 ], [ %.sroa.72.sroa.50.01984, %.loopexit2011.jt4 ], [ %.sroa.72.sroa.50.0.extract.trunc883.le4109, %._crit_edge.loopexit3185.loopexit ], [ %.sroa.72.sroa.50.2, %.loopexit2011 ] ; 2 uses
  %.sroa.72.sroa.49.0.lcssa = phi i8 [ %.sroa.72.sroa.49.0.extract.trunc, %bb.c ], [ %.sroa.72.sroa.49.01985, %bb.ak ], [ %.sroa.72.sroa.49.0.extract.trunc755.peel, %._crit_edge.loopexit3185.loopexit3607 ], [ %.sroa.72.sroa.49.01985, %.loopexit2011.jt1 ], [ %.sroa.72.sroa.49.0.extract.trunc745, %._crit_edge.loopexit3191 ], [ %.sroa.72.sroa.49.01985, %.loopexit2011.jt4 ], [ %.sroa.72.sroa.49.0.extract.trunc755, %._crit_edge.loopexit3185.loopexit ], [ %.sroa.72.sroa.49.2, %.loopexit2011 ] ; 2 uses
  %.sroa.72.sroa.48.0.lcssa = phi i8 [ %.sroa.72.sroa.48.0.extract.trunc, %bb.c ], [ %.sroa.72.sroa.48.01986, %bb.ak ], [ %.sroa.72.sroa.48.0.extract.trunc627.peel, %._crit_edge.loopexit3185.loopexit3607 ], [ %.sroa.72.sroa.48.01986, %.loopexit2011.jt1 ], [ %.sroa.72.sroa.48.0.extract.trunc617, %._crit_edge.loopexit3191 ], [ %.sroa.72.sroa.48.01986, %.loopexit2011.jt4 ], [ %.sroa.72.sroa.48.0.extract.trunc627, %._crit_edge.loopexit3185.loopexit ], [ %.sroa.72.sroa.48.2, %.loopexit2011 ] ; 2 uses
  %.sroa.72.sroa.0.0.lcssa = phi i8 [ %.sroa.72.sroa.0.0.extract.trunc, %bb.c ], [ %.sroa.72.sroa.0.2.jt0, %bb.ak ], [ %.sroa.72.sroa.0.0.extract.trunc505.peel, %._crit_edge.loopexit3185.loopexit3607 ], [ %.sroa.72.sroa.0.019872139, %.loopexit2011.jt1 ], [ %.sroa.72.sroa.0.0.extract.trunc498, %._crit_edge.loopexit3191 ], [ %.sroa.72.sroa.0.019872139, %.loopexit2011.jt4 ], [ %.sroa.72.sroa.0.0.extract.trunc505, %._crit_edge.loopexit3185.loopexit ], [ %.sroa.72.sroa.0.2, %.loopexit2011 ] ; 3 uses
  %.sroa.89.0.lcssa = phi i16 [ %.sroa.89.0.copyload, %bb.c ], [ %.sroa.89.2.jt0, %bb.ak ], [ %.sroa.89.11925, %._crit_edge.loopexit3185.loopexit ], [ %.sroa.89.11925, %.loopexit2011.jt1 ], [ %.sroa.89.11925, %._crit_edge.loopexit3191 ], [ %.sroa.89.11925, %.loopexit2011.jt4 ], [ %.sroa.89.11925, %._crit_edge.loopexit3185.loopexit3607 ], [ %.sroa.89.2, %.loopexit2011 ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i = icmp eq i8 %.sroa.0.sroa.0.0.lcssa, -1
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.v = icmp eq i8 %.sroa.0.sroa.0.0.lcssa, %.sroa.0.sroa.0.0.extract.trunc1349
  br i1 %i.v, label %bb.f, label %_RNvXsf_NtCseR46qigP5Cu_7anstyle5styleNtB5_5StyleNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.e:                                             ; preds = %._crit_edge
  %.not2009 = icmp eq i8 %.sroa.0.sroa.0.0.extract.trunc1349, -1
  br i1 %.not2009, label %bb.h, label %_RNvXsf_NtCseR46qigP5Cu_7anstyle5styleNtB5_5StyleNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.w = icmp eq i8 %.sroa.0.sroa.45.0.lcssa, %.sroa.0.sroa.45.0.extract.trunc1438 ; 2 uses
  %i.x = icmp ne i8 %.sroa.0.sroa.0.0.extract.trunc1349, 2 ; 2 uses
  %.not3.i.i = xor i1 %i.w, true
  %brmerge.i.i = or i1 %i.x, %.not3.i.i
  br i1 %brmerge.i.i, label %_RNvXsi_NtCseR46qigP5Cu_7anstyle5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp eq i8 %.sroa.0.sroa.48.0.lcssa, %.sroa.0.sroa.48.0.extract.trunc1553
  %i.z = icmp eq i8 %.sroa.0.sroa.49.0.lcssa, %.sroa.0.sroa.49.0.extract.trunc1669
  %or.cond1752 = select i1 %i.y, i1 %i.z, i1 false
  br i1 %or.cond1752, label %bb.h, label %_RNvXsf_NtCseR46qigP5Cu_7anstyle5styleNtB5_5StyleNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

_RNvXsi_NtCseR46qigP5Cu_7anstyle5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.f
  %.mux.i.i = and i1 %i.x, %i.w
  br i1 %.mux.i.i, label %bb.h, label %_RNvXsf_NtCseR46qigP5Cu_7anstyle5styleNtB5_5StyleNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.h:                                             ; preds = %bb.g, %_RNvXsi_NtCseR46qigP5Cu_7anstyle5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i, %bb.e
  %.not5.i = icmp eq i8 %.sroa.50.sroa.0.0.lcssa, -1
  %i.aa = icmp ne i8 %.sroa.50.sroa.0.0.extract.trunc, -1 ; 2 uses
  br i1 %.not5.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = icmp eq i8 %.sroa.50.sroa.0.0.lcssa, %.sroa.50.sroa.0.0.extract.trunc
  %or.cond1767 = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %or.cond1767, label %bb.k, label %_RNvXsf_NtCseR46qigP5Cu_7anstyle5styleNtB5_5StyleNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.j:                                             ; preds = %bb.h
  br i1 %i.aa, label %_RNvXsf_NtCseR46qigP5Cu_7anstyle5styleNtB5_5StyleNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread, label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ac = icmp eq i8 %.sroa.50.sroa.45.0.lcssa, %.sroa.50.sroa.45.0.extract.trunc ; 2 uses
  %i.ad = icmp ne i8 %.sroa.50.sroa.0.0.extract.trunc, 2 ; 2 uses
  %.not3.i10.i = xor i1 %i.ac, true
  %brmerge.i11.i = or i1 %i.ad, %.not3.i10.i
  br i1 %brmerge.i11.i, label %_RNvXsi_NtCseR46qigP5Cu_7anstyle5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit13.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = icmp eq i8 %.sroa.50.sroa.48.0.lcssa, %.sroa.50.sroa.48.0.extract.trunc
  %i.af = icmp eq i8 %.sroa.50.sroa.49.0.lcssa, %.sroa.50.sroa.49.0.extract.trunc
  %or.cond1755 = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond1755, label %bb.m, label %_RNvXsf_NtCseR46qigP5Cu_7anstyle5styleNtB5_5StyleNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

_RNvXsi_NtCseR46qigP5Cu_7anstyle5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit13.i: ; preds = %bb.k
  %.mux.i12.i = and i1 %i.ad, %i.ac
  br i1 %.mux.i12.i, label %bb.m, label %_RNvXsf_NtCseR46qigP5Cu_7anstyle5styleNtB5_5StyleNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.m:                                             ; preds = %bb.l, %_RNvXsi_NtCseR46qigP5Cu_7anstyle5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit13.i, %bb.j
  %.not7.i = icmp eq i8 %.sroa.72.sroa.0.0.lcssa, -1
  %i.ag = icmp eq i8 %.sroa.72.sroa.0.0.extract.trunc, -1 ; 2 uses
  br i1 %.not7.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = icmp ne i8 %.sroa.72.sroa.0.0.lcssa, %.sroa.72.sroa.0.0.extract.trunc
  %or.cond1770.not = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %or.cond1770.not, label %_RNvXsf_NtCseR46qigP5Cu_7anstyle5styleNtB5_5StyleNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread, label %bb.p

bb.o:                                             ; preds = %bb.m
  %.old = icmp eq i16 %.sroa.89.0.lcssa, %.sroa.89.0.copyload
  %or.cond1760 = select i1 %i.ag, i1 %.old, i1 false
  br i1 %or.cond1760, label %bb.r, label %_RNvXsf_NtCseR46qigP5Cu_7anstyle5styleNtB5_5StyleNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.ai = icmp eq i8 %.sroa.72.sroa.48.0.lcssa, %.sroa.72.sroa.48.0.extract.trunc ; 2 uses
  %i.aj = icmp ne i8 %.sroa.72.sroa.0.0.extract.trunc, 2 ; 2 uses
  %.not3.i15.i = xor i1 %i.ai, true
  %brmerge.i16.i = or i1 %i.aj, %.not3.i15.i
  br i1 %brmerge.i16.i, label %_RNvXsi_NtCseR46qigP5Cu_7anstyle5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit18.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = icmp eq i8 %.sroa.72.sroa.49.0.lcssa, %.sroa.72.sroa.49.0.extract.trunc
  %i.al = icmp eq i8 %.sroa.72.sroa.50.0.lcssa, %.sroa.72.sroa.50.0.extract.trunc
  %or.cond1758 = select i1 %i.ak, i1 %i.al, i1 false
  %i.am = icmp eq i16 %.sroa.89.0.lcssa, %.sroa.89.0.copyload
  %or.cond1759 = select i1 %or.cond1758, i1 %i.am, i1 false
  br i1 %or.cond1759, label %bb.r, label %_RNvXsf_NtCseR46qigP5Cu_7anstyle5styleNtB5_5StyleNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

_RNvXsi_NtCseR46qigP5Cu_7anstyle5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit18.i: ; preds = %bb.p
  %.mux.i17.i = and i1 %i.aj, %i.ai
  %.old.old = icmp eq i16 %.sroa.89.0.lcssa, %.sroa.89.0.copyload
  %or.cond1761 = select i1 %.mux.i17.i, i1 %.old.old, i1 false
  br i1 %or.cond1761, label %bb.r, label %_RNvXsf_NtCseR46qigP5Cu_7anstyle5styleNtB5_5StyleNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

_RNvXsf_NtCseR46qigP5Cu_7anstyle5styleNtB5_5StyleNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.q, %bb.l, %bb.g, %_RNvXsi_NtCseR46qigP5Cu_7anstyle5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit18.i, %_RNvXsi_NtCseR46qigP5Cu_7anstyle5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit13.i, %_RNvXsi_NtCseR46qigP5Cu_7anstyle5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i, %bb.e, %bb.j, %bb.o, %bb.d, %bb.i, %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !noundef !6 ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, -1
  call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp eq i64 %i.ao, 0
  br i1 %i.aq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_RNvXsi_NtCseR46qigP5Cu_7anstyle5colorNtB5_5ColorNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit18.i, %bb.o, %bb.q, %_RNvXsf_NtCseR46qigP5Cu_7anstyle5styleNtB5_5StyleNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread, %bb.s
  %.sroa.0.sroa.49.0.insert.ext1670 = zext i8 %.sroa.0.sroa.49.0.lcssa to i32
  %.sroa.0.sroa.49.0.insert.shift1671 = shl nuw i32 %.sroa.0.sroa.49.0.insert.ext1670, 24
  %.sroa.0.sroa.48.0.insert.ext1554 = zext i8 %.sroa.0.sroa.48.0.lcssa to i32
  %.sroa.0.sroa.48.0.insert.shift1555 = shl nuw nsw i32 %.sroa.0.sroa.48.0.insert.ext1554, 16
  %.sroa.0.sroa.48.0.insert.insert1557 = or disjoint i32 %.sroa.0.sroa.48.0.insert.shift1555, %.sroa.0.sroa.49.0.insert.shift1671
  %.sroa.0.sroa.45.0.insert.ext1439 = zext i8 %.sroa.0.sroa.45.0.lcssa to i32
  %.sroa.0.sroa.45.0.insert.shift1440 = shl nuw nsw i32 %.sroa.0.sroa.45.0.insert.ext1439, 8
  %.sroa.0.sroa.45.0.insert.insert1442 = or disjoint i32 %.sroa.0.sroa.48.0.insert.insert1557, %.sroa.0.sroa.45.0.insert.shift1440
  %.sroa.0.sroa.0.0.insert.ext1350 = zext i8 %.sroa.0.sroa.0.0.lcssa to i32
  %.sroa.0.sroa.0.0.insert.insert1352 = or disjoint i32 %.sroa.0.sroa.45.0.insert.insert1442, %.sroa.0.sroa.0.0.insert.ext1350
  %.sroa.50.sroa.49.0.insert.ext = zext i8 %.sroa.50.sroa.49.0.lcssa to i32
  %.sroa.50.sroa.49.0.insert.shift = shl nuw i32 %.sroa.50.sroa.49.0.insert.ext, 24
  %.sroa.50.sroa.48.0.insert.ext = zext i8 %.sroa.50.sroa.48.0.lcssa to i32
  %.sroa.50.sroa.48.0.insert.shift = shl nuw nsw i32 %.sroa.50.sroa.48.0.insert.ext, 16
  %.sroa.50.sroa.48.0.insert.insert = or disjoint i32 %.sroa.50.sroa.48.0.insert.shift, %.sroa.50.sroa.49.0.insert.shift
  %.sroa.50.sroa.45.0.insert.ext = zext i8 %.sroa.50.sroa.45.0.lcssa to i32
  %.sroa.50.sroa.45.0.insert.shift = shl nuw nsw i32 %.sroa.50.sroa.45.0.insert.ext, 8
  %.sroa.50.sroa.45.0.insert.insert = or disjoint i32 %.sroa.50.sroa.48.0.insert.insert, %.sroa.50.sroa.45.0.insert.shift
  %.sroa.50.sroa.0.0.insert.ext = zext i8 %.sroa.50.sroa.0.0.lcssa to i32
  %.sroa.50.sroa.0.0.insert.insert = or disjoint i32 %.sroa.50.sroa.45.0.insert.insert, %.sroa.50.sroa.0.0.insert.ext
  %.sroa.72.sroa.50.0.insert.ext = zext i8 %.sroa.72.sroa.50.0.lcssa to i32
  %.sroa.72.sroa.50.0.insert.shift = shl nuw i32 %.sroa.72.sroa.50.0.insert.ext, 24
  %.sroa.72.sroa.49.0.insert.ext = zext i8 %.sroa.72.sroa.49.0.lcssa to i32
  %.sroa.72.sroa.49.0.insert.shift = shl nuw nsw i32 %.sroa.72.sroa.49.0.insert.ext, 16
  %.sroa.72.sroa.49.0.insert.insert = or disjoint i32 %.sroa.72.sroa.49.0.insert.shift, %.sroa.72.sroa.50.0.insert.shift
  %.sroa.72.sroa.48.0.insert.ext = zext i8 %.sroa.72.sroa.48.0.lcssa to i32
  %.sroa.72.sroa.48.0.insert.shift = shl nuw nsw i32 %.sroa.72.sroa.48.0.insert.ext, 8
  %.sroa.72.sroa.48.0.insert.insert = or disjoint i32 %.sroa.72.sroa.49.0.insert.insert, %.sroa.72.sroa.48.0.insert.shift
  %.sroa.72.sroa.0.0.insert.ext = zext i8 %.sroa.72.sroa.0.0.lcssa to i32
  %.sroa.72.sroa.0.0.insert.insert = or disjoint i32 %.sroa.72.sroa.48.0.insert.insert, %.sroa.72.sroa.0.0.insert.ext
  store i32 %.sroa.0.sroa.0.0.insert.insert1352, ptr %i.c, align 8
  store i32 %.sroa.50.sroa.0.0.insert.insert, ptr %.sroa.50.0..sroa_idx, align 4
  store i32 %.sroa.72.sroa.0.0.insert.insert, ptr %.sroa.72.0..sroa_idx, align 8
  store i16 %.sroa.89.0.lcssa, ptr %.sroa.89.0..sroa_idx, align 4
  br label %bb.b

bb.s:                                             ; preds = %_RNvXsf_NtCseR46qigP5Cu_7anstyle5styleNtB5_5StyleNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.ar, ptr noundef nonnull align 8 dereferenceable(14) %i.c, i64 14, i1 false)
  br label %bb.r

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit2249
  %i.as = phi ptr [ %i.db, %.loopexit2249 ], [ %i.k, %.lr.ph.preheader ] ; 5 uses
  %.sroa.0.sroa.49.019762216 = phi i8 [ %.sroa.0.sroa.49.019762215, %.loopexit2249 ], [ %.sroa.0.sroa.49.01976, %.lr.ph.preheader ] ; 18 uses
  %.sroa.0.sroa.48.019772209 = phi i8 [ %.sroa.0.sroa.48.019772208, %.loopexit2249 ], [ %.sroa.0.sroa.48.01977, %.lr.ph.preheader ] ; 18 uses
  %.sroa.0.sroa.45.019782202 = phi i8 [ %.sroa.0.sroa.45.019782201, %.loopexit2249 ], [ %.sroa.0.sroa.45.01978, %.lr.ph.preheader ] ; 18 uses
  %.sroa.0.sroa.0.019792195 = phi i8 [ %.sroa.0.sroa.0.019792194, %.loopexit2249 ], [ %.sroa.0.sroa.0.01979, %.lr.ph.preheader ] ; 18 uses
  %.sroa.50.sroa.49.019802188 = phi i8 [ %.sroa.50.sroa.49.019802187, %.loopexit2249 ], [ %.sroa.50.sroa.49.01980, %.lr.ph.preheader ] ; 18 uses
  %.sroa.50.sroa.48.019812181 = phi i8 [ %.sroa.50.sroa.48.019812180, %.loopexit2249 ], [ %.sroa.50.sroa.48.01981, %.lr.ph.preheader ] ; 18 uses
  %.sroa.50.sroa.45.019822174 = phi i8 [ %.sroa.50.sroa.45.019822173, %.loopexit2249 ], [ %.sroa.50.sroa.45.01982, %.lr.ph.preheader ] ; 18 uses
  %.sroa.50.sroa.0.019832167 = phi i8 [ %.sroa.50.sroa.0.019832166, %.loopexit2249 ], [ %.sroa.50.sroa.0.01983, %.lr.ph.preheader ] ; 18 uses
  %.sroa.72.sroa.0.019872139 = phi i8 [ %.sroa.72.sroa.0.019872138, %.loopexit2249 ], [ %.sroa.72.sroa.0.01987, %.lr.ph.preheader ] ; 18 uses
  %.sroa.0.11932 = phi i8 [ %.sroa.0.2, %.loopexit2249 ], [ %.sroa.0.01994, %.lr.ph.preheader ]
  %.sroa.05.11931 = phi i8 [ %.sroa.05.2, %.loopexit2249 ], [ %.sroa.05.01993, %.lr.ph.preheader ] ; 21 uses
  %.sroa.010.01930 = phi ptr [ %i.da, %.loopexit2249 ], [ %i.g, %.lr.ph.preheader ] ; 2 uses
  %.sroa.4150.11929 = phi i16 [ %.sroa.4150.2, %.loopexit2249 ], [ %.sroa.4150.01992, %.lr.ph.preheader ] ; 21 uses
  %.sroa.0149.11928 = phi i1 [ %.sroa.0149.2, %.loopexit2249 ], [ %.sroa.0149.01991, %.lr.ph.preheader ] ; 17 uses
  %.sroa.4148.11927 = phi i16 [ %.sroa.4148.2, %.loopexit2249 ], [ %.sroa.4148.01990, %.lr.ph.preheader ] ; 21 uses
  %.sroa.0147.11926 = phi i1 [ %.sroa.0147.2, %.loopexit2249 ], [ %.sroa.0147.01989, %.lr.ph.preheader ] ; 16 uses
  %.sroa.89.11925 = phi i16 [ %.sroa.89.3, %.loopexit2249 ], [ %.sroa.89.01988, %.lr.ph.preheader ] ; 21 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.010.01930, i64 2 ; 5 uses
  %i.au = load i16, ptr %.sroa.010.01930, align 2, !noundef !6 ; 7 uses
  switch i8 %.sroa.0.11932, label %default.unreachable2119 [
    i8 0, label %.preheader
    i8 1, label %.preheader2248
    i8 2, label %.preheader2260
    i8 3, label %.preheader2252
    i8 4, label %.preheader2256
  ]

.preheader2260:                                   ; preds = %.lr.ph
  %switch = icmp ult i8 %.sroa.05.11931, 3
  call void @llvm.assume(i1 %switch)
  %i.av = zext i8 %.sroa.0.sroa.49.019762216 to i32
  %i.aw = zext i8 %.sroa.72.sroa.50.01984 to i32
  %i.ax = zext i8 %.sroa.50.sroa.49.019802188 to i32
  br label %bb.y

.preheader2252:                                   ; preds = %.lr.ph
  %.mask264 = and i16 %.sroa.4150.11929, 255
  %.sroa.5203.0.insert.ext = zext nneg i16 %.mask264 to i32
  %.sroa.5203.0.insert.shift = shl nuw nsw i32 %.sroa.5203.0.insert.ext, 16
  %i.ay = shl i16 %.sroa.4148.11927, 8
  %.sroa.4202.0.insert.shift = zext i16 %i.ay to i32
  %invariant.op = or disjoint i32 %.sroa.5203.0.insert.shift, %.sroa.4202.0.insert.shift
  %invariant.op2707 = or disjoint i32 %invariant.op, 2 ; 2 uses
  %.mask267 = and i16 %.sroa.4150.11929, 255
  %.sroa.5198.0.insert.ext = zext nneg i16 %.mask267 to i32
  %.sroa.5198.0.insert.shift = shl nuw nsw i32 %.sroa.5198.0.insert.ext, 16
  %i.az = shl i16 %.sroa.4148.11927, 8
  %.sroa.4197.0.insert.shift = zext i16 %i.az to i32
  %invariant.op2708 = or disjoint i32 %.sroa.5198.0.insert.shift, %.sroa.4197.0.insert.shift
  %invariant.op2709 = or disjoint i32 %invariant.op2708, 2 ; 2 uses
  %i.ba = and i16 %.sroa.4150.11929, 255
  %.sroa.5193.0.insert.ext = zext nneg i16 %i.ba to i32
  %.sroa.5193.0.insert.shift = shl nuw nsw i32 %.sroa.5193.0.insert.ext, 16
  %i.bb = shl i16 %.sroa.4148.11927, 8
  %.sroa.4192.0.insert.shift = zext i16 %i.bb to i32
  %invariant.op2710 = or disjoint i32 %.sroa.5193.0.insert.shift, %.sroa.4192.0.insert.shift
  %invariant.op2711 = or disjoint i32 %invariant.op2710, 2 ; 2 uses
  br i1 %.sroa.0147.11926, label %.lr.ph3145.peel, label %.loopexit2249

.lr.ph3145.peel:                                  ; preds = %.preheader2252
  br i1 %.sroa.0149.11928, label %bb.t, label %.loopexit2249

bb.t:                                             ; preds = %.lr.ph3145.peel
  %i.bc = and i16 %i.au, 255
  %.sroa.6194.0.insert.ext.peel = zext nneg i16 %i.bc to i32
  %.sroa.6194.0.insert.shift.peel = shl nuw i32 %.sroa.6194.0.insert.ext.peel, 24 ; 3 uses
  switch i8 %.sroa.05.11931, label %.unreachabledefault [
    i8 0, label %bb.w
    i8 1, label %bb.v
    i8 2, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  %.sroa.0.sroa.49.0.insert.ext1662.peel = zext i8 %.sroa.0.sroa.49.019762216 to i32
  %.sroa.0.sroa.49.0.insert.shift1663.peel = shl nuw i32 %.sroa.0.sroa.49.0.insert.ext1662.peel, 24
  %.sroa.0.sroa.48.0.insert.ext1546.peel = zext i8 %.sroa.0.sroa.48.019772209 to i32
  %.sroa.0.sroa.48.0.insert.shift1547.peel = shl nuw nsw i32 %.sroa.0.sroa.48.0.insert.ext1546.peel, 16
  %.sroa.0.sroa.48.0.insert.insert1549.peel = or disjoint i32 %.sroa.0.sroa.48.0.insert.shift1547.peel, %.sroa.0.sroa.49.0.insert.shift1663.peel
  %.sroa.0.sroa.45.0.insert.ext1431.peel = zext i8 %.sroa.0.sroa.45.019782202 to i32
  %.sroa.0.sroa.45.0.insert.shift1432.peel = shl nuw nsw i32 %.sroa.0.sroa.45.0.insert.ext1431.peel, 8
  %.sroa.0.sroa.45.0.insert.insert1434.peel = or disjoint i32 %.sroa.0.sroa.48.0.insert.insert1549.peel, %.sroa.0.sroa.45.0.insert.shift1432.peel
  %.sroa.0.sroa.0.0.insert.ext1345.peel = zext i8 %.sroa.0.sroa.0.019792195 to i32
  %.sroa.0.sroa.0.0.insert.insert1347.peel = or disjoint i32 %.sroa.0.sroa.45.0.insert.insert1434.peel, %.sroa.0.sroa.0.0.insert.ext1345.peel
  %.sroa.50.sroa.49.0.insert.ext1299.peel = zext i8 %.sroa.50.sroa.49.019802188 to i32
  %.sroa.50.sroa.49.0.insert.shift1300.peel = shl nuw i32 %.sroa.50.sroa.49.0.insert.ext1299.peel, 24
  %.sroa.50.sroa.48.0.insert.ext1183.peel = zext i8 %.sroa.50.sroa.48.019812181 to i32
  %.sroa.50.sroa.48.0.insert.shift1184.peel = shl nuw nsw i32 %.sroa.50.sroa.48.0.insert.ext1183.peel, 16
  %.sroa.50.sroa.48.0.insert.insert1186.peel = or disjoint i32 %.sroa.50.sroa.48.0.insert.shift1184.peel, %.sroa.50.sroa.49.0.insert.shift1300.peel
  %.sroa.50.sroa.45.0.insert.ext1068.peel = zext i8 %.sroa.50.sroa.45.019822174 to i32
  %.sroa.50.sroa.45.0.insert.shift1069.peel = shl nuw nsw i32 %.sroa.50.sroa.45.0.insert.ext1068.peel, 8
  %.sroa.50.sroa.45.0.insert.insert1071.peel = or disjoint i32 %.sroa.50.sroa.48.0.insert.insert1186.peel, %.sroa.50.sroa.45.0.insert.shift1069.peel
  %.sroa.50.sroa.0.0.insert.ext962.peel = zext i8 %.sroa.50.sroa.0.019832167 to i32
  %.sroa.50.sroa.0.0.insert.insert964.peel = or disjoint i32 %.sroa.50.sroa.45.0.insert.insert1071.peel, %.sroa.50.sroa.0.0.insert.ext962.peel
  %.sroa.0201.0.insert.insert.reass.peel = or disjoint i32 %.sroa.6194.0.insert.shift.peel, %invariant.op2707
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %.sroa.0.sroa.49.0.insert.ext1658.peel = zext i8 %.sroa.0.sroa.49.019762216 to i32
  %.sroa.0.sroa.49.0.insert.shift1659.peel = shl nuw i32 %.sroa.0.sroa.49.0.insert.ext1658.peel, 24
  %.sroa.0.sroa.48.0.insert.ext1542.peel = zext i8 %.sroa.0.sroa.48.019772209 to i32
  %.sroa.0.sroa.48.0.insert.shift1543.peel = shl nuw nsw i32 %.sroa.0.sroa.48.0.insert.ext1542.peel, 16
  %.sroa.0.sroa.48.0.insert.insert1545.peel = or disjoint i32 %.sroa.0.sroa.48.0.insert.shift1543.peel, %.sroa.0.sroa.49.0.insert.shift1659.peel
  %.sroa.0.sroa.45.0.insert.ext1427.peel = zext i8 %.sroa.0.sroa.45.019782202 to i32
  %.sroa.0.sroa.45.0.insert.shift1428.peel = shl nuw nsw i32 %.sroa.0.sroa.45.0.insert.ext1427.peel, 8
  %.sroa.0.sroa.45.0.insert.insert1430.peel = or disjoint i32 %.sroa.0.sroa.48.0.insert.insert1545.peel, %.sroa.0.sroa.45.0.insert.shift1428.peel
  %.sroa.0.sroa.0.0.insert.ext1342.peel = zext i8 %.sroa.0.sroa.0.019792195 to i32
  %.sroa.0.sroa.0.0.insert.insert1344.peel = or disjoint i32 %.sroa.0.sroa.45.0.insert.insert1430.peel, %.sroa.0.sroa.0.0.insert.ext1342.peel
  %.sroa.72.sroa.0.0.insert.ext502.peel = zext i8 %.sroa.72.sroa.0.019872139 to i32
  %.sroa.72.sroa.0.0.insert.insert504.peel = or disjoint i32 %.sroa.72.sroa.48.0.insert.insert625.peel, %.sroa.72.sroa.0.0.insert.ext502.peel
  %.sroa.0196.0.insert.insert.reass.peel = or disjoint i32 %.sroa.6194.0.insert.shift.peel, %invariant.op2709
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  %.sroa.50.sroa.49.0.insert.ext1295.peel = zext i8 %.sroa.50.sroa.49.019802188 to i32
  %.sroa.50.sroa.49.0.insert.shift1296.peel = shl nuw i32 %.sroa.50.sroa.49.0.insert.ext1295.peel, 24
  %.sroa.50.sroa.48.0.insert.ext1179.peel = zext i8 %.sroa.50.sroa.48.019812181 to i32
  %.sroa.50.sroa.48.0.insert.shift1180.peel = shl nuw nsw i32 %.sroa.50.sroa.48.0.insert.ext1179.peel, 16
  %.sroa.50.sroa.48.0.insert.insert1182.peel = or disjoint i32 %.sroa.50.sroa.48.0.insert.shift1180.peel, %.sroa.50.sroa.49.0.insert.shift1296.peel
  %.sroa.50.sroa.45.0.insert.ext1064.peel = zext i8 %.sroa.50.sroa.45.019822174 to i32
  %.sroa.50.sroa.45.0.insert.shift1065.peel = shl nuw nsw i32 %.sroa.50.sroa.45.0.insert.ext1064.peel, 8
  %.sroa.50.sroa.45.0.insert.insert1067.peel = or disjoint i32 %.sroa.50.sroa.48.0.insert.insert1182.peel, %.sroa.50.sroa.45.0.insert.shift1065.peel
  %.sroa.50.sroa.0.0.insert.ext959.peel = zext i8 %.sroa.50.sroa.0.019832167 to i32
  %.sroa.50.sroa.0.0.insert.insert961.peel = or disjoint i32 %.sroa.50.sroa.45.0.insert.insert1067.peel, %.sroa.50.sroa.0.0.insert.ext959.peel
  %.sroa.72.sroa.0.0.insert.ext499.peel = zext i8 %.sroa.72.sroa.0.019872139 to i32
  %.sroa.72.sroa.0.0.insert.insert501.peel = or disjoint i32 %.sroa.72.sroa.48.0.insert.insert621.peel, %.sroa.72.sroa.0.0.insert.ext499.peel
  %.sroa.0191.0.insert.insert.reass.peel = or disjoint i32 %.sroa.6194.0.insert.shift.peel, %invariant.op2711
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.sroa.0166.0.peel = phi i32 [ %.sroa.0191.0.insert.insert.reass.peel, %bb.w ], [ %.sroa.0.sroa.0.0.insert.insert1344.peel, %bb.v ], [ %.sroa.0.sroa.0.0.insert.insert1347.peel, %bb.u ] ; 4 uses
  %.sroa.5170.0.peel = phi i32 [ %.sroa.50.sroa.0.0.insert.insert961.peel, %bb.w ], [ %.sroa.0196.0.insert.insert.reass.peel, %bb.v ], [ %.sroa.50.sroa.0.0.insert.insert964.peel, %bb.u ] ; 4 uses
  %.sroa.6177.0.peel = phi i32 [ %.sroa.72.sroa.0.0.insert.insert501.peel, %bb.w ], [ %.sroa.72.sroa.0.0.insert.insert504.peel, %bb.v ], [ %.sroa.0201.0.insert.insert.reass.peel, %bb.u ] ; 4 uses
  %.sroa.0.sroa.0.0.extract.trunc1348.peel = trunc i32 %.sroa.0166.0.peel to i8 ; 3 uses
  %.sroa.0.sroa.45.0.extract.shift1435.peel = lshr i32 %.sroa.0166.0.peel, 8
  %.sroa.0.sroa.45.0.extract.trunc1436.peel = trunc i32 %.sroa.0.sroa.45.0.extract.shift1435.peel to i8 ; 3 uses
  %.sroa.0.sroa.48.0.extract.shift1550.peel = lshr i32 %.sroa.0166.0.peel, 16
  %.sroa.0.sroa.48.0.extract.trunc1551.peel = trunc i32 %.sroa.0.sroa.48.0.extract.shift1550.peel to i8 ; 3 uses
  %.sroa.0.sroa.49.0.extract.shift1666.peel = lshr i32 %.sroa.0166.0.peel, 24 ; 3 uses
  %.sroa.50.sroa.0.0.extract.trunc965.peel = trunc i32 %.sroa.5170.0.peel to i8 ; 3 uses
  %.sroa.50.sroa.45.0.extract.shift1072.peel = lshr i32 %.sroa.5170.0.peel, 8
  %.sroa.50.sroa.45.0.extract.trunc1073.peel = trunc i32 %.sroa.50.sroa.45.0.extract.shift1072.peel to i8 ; 3 uses
  %.sroa.50.sroa.48.0.extract.shift1187.peel = lshr i32 %.sroa.5170.0.peel, 16
  %.sroa.50.sroa.48.0.extract.trunc1188.peel = trunc i32 %.sroa.50.sroa.48.0.extract.shift1187.peel to i8 ; 3 uses
  %.sroa.50.sroa.49.0.extract.shift1303.peel = lshr i32 %.sroa.5170.0.peel, 24 ; 3 uses
  %.sroa.72.sroa.0.0.extract.trunc505.peel = trunc i32 %.sroa.6177.0.peel to i8 ; 3 uses
  %.sroa.72.sroa.48.0.extract.shift626.peel = lshr i32 %.sroa.6177.0.peel, 8
  %.sroa.72.sroa.48.0.extract.trunc627.peel = trunc i32 %.sroa.72.sroa.48.0.extract.shift626.peel to i8 ; 3 uses
  %.sroa.72.sroa.49.0.extract.shift754.peel = lshr i32 %.sroa.6177.0.peel, 16
  %.sroa.72.sroa.49.0.extract.trunc755.peel = trunc i32 %.sroa.72.sroa.49.0.extract.shift754.peel to i8 ; 3 uses
  %.sroa.72.sroa.50.0.extract.shift882.peel = lshr i32 %.sroa.6177.0.peel, 24 ; 3 uses
  %i.bd = call { ptr, i64 } @_RNvXs1_NtCs41iyzuuznms_13anstyle_parse6paramsNtB5_10ParamsIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.be = extractvalue { ptr, i64 } %i.bd, 0      ; 2 uses
  %.not.jt3.peel = icmp eq ptr %i.be, null
  br i1 %.not.jt3.peel, label %._crit_edge.loopexit3185.loopexit3607, label %.lr.ph1995.jt3.peel

.lr.ph1995.jt3.peel:                              ; preds = %bb.x
  %i.bf = extractvalue { ptr, i64 } %i.bd, 1
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %.loopexit2011.loopexit3186.loopexit3621, label %.lr.ph.jt3.peel

.lr.ph.jt3.peel:                                  ; preds = %.lr.ph1995.jt3.peel
  %i.bh = load i16, ptr %i.be, align 2, !noundef !6
  br label %.lr.ph3145

.lr.ph.jt1:                                       ; preds = %.lr.ph1995.jt1
  %.idx.jt1 = shl nuw nsw i64 %i.l, 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx.jt1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  %i.bk = load i16, ptr %i.cr, align 2, !noundef !6
  br label %.preheader2248

.lr.ph.jt4:                                       ; preds = %.lr.ph1995.jt4
  %.idx.jt4 = shl nuw nsw i64 %i.n, 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.idx.jt4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  %i.bn = load i16, ptr %i.ct, align 2, !noundef !6
  br label %.preheader2256

.lr.ph.jt3:                                       ; preds = %.lr.ph1995.jt3
  %i.bo = load i16, ptr %i.cv, align 2, !noundef !6
  br label %.lr.ph3145, !llvm.loop !7

.lr.ph.jt2:                                       ; preds = %.lr.ph1995.jt2
  %i.bp = load i16, ptr %i.cx, align 2, !noundef !6
  br label %bb.y

.lr.ph.jt0:                                       ; preds = %.lr.ph1995.jt0
  %.idx.jt0 = shl nuw nsw i64 %i.t, 1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.idx.jt0
  %i.br = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  %i.bs = load i16, ptr %i.cz, align 2, !noundef !6
  br label %.preheader

.unreachabledefault:                              ; preds = %bb.t
  unreachable

default.unreachable2119:                          ; preds = %.lr.ph, %.lr.ph3145
  unreachable

default.unreachable:                              ; preds = %bb.ar, %bb.aq, %bb.ao, %bb.am
  unreachable

.preheader:                                       ; preds = %.lr.ph, %.lr.ph.jt0
  %i.bt = phi i16 [ %i.bs, %.lr.ph.jt0 ], [ %i.au, %.lr.ph ] ; 9 uses
  %i.bu = phi ptr [ %i.br, %.lr.ph.jt0 ], [ %i.at, %.lr.ph ] ; 4 uses
  %.sroa.89.119252246 = phi i16 [ %.sroa.89.2.jt0, %.lr.ph.jt0 ], [ %.sroa.89.11925, %.lr.ph ] ; 46 uses
  %i.bv = phi ptr [ %i.bq, %.lr.ph.jt0 ], [ %i.as, %.lr.ph ] ; 4 uses
  %.sroa.0.sroa.49.019762214 = phi i8 [ %.sroa.0.sroa.49.2.jt0, %.lr.ph.jt0 ], [ %.sroa.0.sroa.49.019762216, %.lr.ph ] ; 31 uses
  %.sroa.0.sroa.48.019772207 = phi i8 [ %.sroa.0.sroa.48.2.jt0, %.lr.ph.jt0 ], [ %.sroa.0.sroa.48.019772209, %.lr.ph ] ; 31 uses
  %.sroa.0.sroa.45.019782200 = phi i8 [ %.sroa.0.sroa.45.2.jt0, %.lr.ph.jt0 ], [ %.sroa.0.sroa.45.019782202, %.lr.ph ] ; 31 uses
  %.sroa.0.sroa.0.019792193 = phi i8 [ %.sroa.0.sroa.0.2.jt0, %.lr.ph.jt0 ], [ %.sroa.0.sroa.0.019792195, %.lr.ph ] ; 29 uses
  %.sroa.50.sroa.49.019802186 = phi i8 [ %.sroa.50.sroa.49.2.jt0, %.lr.ph.jt0 ], [ %.sroa.50.sroa.49.019802188, %.lr.ph ] ; 31 uses
  %.sroa.50.sroa.48.019812179 = phi i8 [ %.sroa.50.sroa.48.2.jt0, %.lr.ph.jt0 ], [ %.sroa.50.sroa.48.019812181, %.lr.ph ] ; 31 uses
  %.sroa.50.sroa.45.019822172 = phi i8 [ %.sroa.50.sroa.45.2.jt0, %.lr.ph.jt0 ], [ %.sroa.50.sroa.45.019822174, %.lr.ph ] ; 31 uses
  %.sroa.50.sroa.0.019832165 = phi i8 [ %.sroa.50.sroa.0.2.jt0, %.lr.ph.jt0 ], [ %.sroa.50.sroa.0.019832167, %.lr.ph ] ; 29 uses
  %.sroa.72.sroa.0.019872137 = phi i8 [ %.sroa.72.sroa.0.2.jt0, %.lr.ph.jt0 ], [ %.sroa.72.sroa.0.019872139, %.lr.ph ] ; 46 uses
  switch i16 %i.bt, label %bb.z [
    i16 0, label %.loopexit
    i16 1, label %bb.aa
    i16 2, label %bb.ab
    i16 3, label %bb.ac
    i16 4, label %bb.ad
    i16 21, label %bb.ae
    i16 7, label %bb.af
    i16 8, label %bb.ag
    i16 9, label %bb.ah
    i16 38, label %.loopexit2249
    i16 39, label %.loopexit2011.jt0
    i16 48, label %.loopexit2249.loopexit
    i16 49, label %bb.ak
    i16 58, label %.loopexit2249.loopexit3180
  ]

.preheader2248:                                   ; preds = %.lr.ph, %.lr.ph.jt1
  %i.bw = phi i16 [ %i.bk, %.lr.ph.jt1 ], [ %i.au, %.lr.ph ]
  %i.bx = phi ptr [ %i.bj, %.lr.ph.jt1 ], [ %i.at, %.lr.ph ] ; 2 uses
  %i.by = phi ptr [ %i.bi, %.lr.ph.jt1 ], [ %i.as, %.lr.ph ] ; 2 uses
  switch i16 %i.bw, label %.loopexit2011.jt1 [
    i16 5, label %.loopexit2249
    i16 2, label %bb.bu
  ]

bb.y:                                             ; preds = %.preheader2260, %.lr.ph.jt2
  %i.bz = phi i16 [ %i.bp, %.lr.ph.jt2 ], [ %i.au, %.preheader2260 ]
  %.sroa.0.sroa.49.019762212 = phi i32 [ %.sroa.0.sroa.49.0.extract.shift1656, %.lr.ph.jt2 ], [ %i.av, %.preheader2260 ] ; 2 uses
  %.sroa.0.sroa.48.019772205 = phi i8 [ %.sroa.0.sroa.48.0.extract.trunc1541, %.lr.ph.jt2 ], [ %.sroa.0.sroa.48.019772209, %.preheader2260 ] ; 2 uses
  %.sroa.0.sroa.45.019782198 = phi i8 [ %.sroa.0.sroa.45.0.extract.trunc1426, %.lr.ph.jt2 ], [ %.sroa.0.sroa.45.019782202, %.preheader2260 ] ; 2 uses
  %.sroa.0.sroa.0.019792191 = phi i8 [ %.sroa.0.sroa.0.0.extract.trunc1341, %.lr.ph.jt2 ], [ %.sroa.0.sroa.0.019792195, %.preheader2260 ] ; 2 uses
  %.sroa.50.sroa.49.019802184 = phi i32 [ %.sroa.50.sroa.49.0.extract.shift1293, %.lr.ph.jt2 ], [ %i.ax, %.preheader2260 ] ; 2 uses
  %.sroa.50.sroa.48.019812177 = phi i8 [ %.sroa.50.sroa.48.0.extract.trunc1178, %.lr.ph.jt2 ], [ %.sroa.50.sroa.48.019812181, %.preheader2260 ] ; 2 uses
  %.sroa.50.sroa.45.019822170 = phi i8 [ %.sroa.50.sroa.45.0.extract.trunc1063, %.lr.ph.jt2 ], [ %.sroa.50.sroa.45.019822174, %.preheader2260 ] ; 2 uses
  %.sroa.50.sroa.0.019832163 = phi i8 [ %.sroa.50.sroa.0.0.extract.trunc958, %.lr.ph.jt2 ], [ %.sroa.50.sroa.0.019832167, %.preheader2260 ] ; 2 uses
  %.sroa.72.sroa.50.019842156 = phi i32 [ %.sroa.72.sroa.50.0.extract.shift872, %.lr.ph.jt2 ], [ %i.aw, %.preheader2260 ] ; 2 uses
  %.sroa.72.sroa.49.019852149 = phi i8 [ %.sroa.72.sroa.49.0.extract.trunc745, %.lr.ph.jt2 ], [ %.sroa.72.sroa.49.01985, %.preheader2260 ] ; 2 uses
  %.sroa.72.sroa.48.019862142 = phi i8 [ %.sroa.72.sroa.48.0.extract.trunc617, %.lr.ph.jt2 ], [ %.sroa.72.sroa.48.01986, %.preheader2260 ] ; 2 uses
  %.sroa.72.sroa.0.019872135 = phi i8 [ %.sroa.72.sroa.0.0.extract.trunc498, %.lr.ph.jt2 ], [ %.sroa.72.sroa.0.019872139, %.preheader2260 ] ; 2 uses
  %i.ca = shl i16 %i.bz, 8
  %i.cb = or disjoint i16 %i.ca, 1
  %.sroa.0130.0.insert.insert = zext i16 %i.cb to i32 ; 3 uses
  switch i8 %.sroa.05.11931, label %bb.bx [
    i8 0, label %bb.bv
    i8 1, label %bb.bw
  ]

.preheader2256:                                   ; preds = %.lr.ph, %.lr.ph.jt4
  %i.cc = phi i16 [ %i.bn, %.lr.ph.jt4 ], [ %i.au, %.lr.ph ]
  %i.cd = phi ptr [ %i.bm, %.lr.ph.jt4 ], [ %i.at, %.lr.ph ] ; 6 uses
  %i.ce = phi ptr [ %i.bl, %.lr.ph.jt4 ], [ %i.as, %.lr.ph ] ; 6 uses
  switch i16 %i.cc, label %.loopexit2011.jt4 [
    i16 0, label %bb.cb
    i16 1, label %.loopexit2249
    i16 2, label %bb.cc
    i16 3, label %bb.cd
    i16 4, label %bb.ce
    i16 5, label %bb.cf
  ]

bb.z:                                             ; preds = %.preheader
  %i.cf = add i16 %i.bt, -30
  %or.cond = icmp ult i16 %i.cf, 8
  br i1 %or.cond, label %bb.am, label %bb.al

bb.aa:                                            ; preds = %.preheader
  %i.cg = or i16 %.sroa.89.119252246, 1
  br label %bb.ak

bb.ab:                                            ; preds = %.preheader
  %i.ch = or i16 %.sroa.89.119252246, 2
  br label %bb.ak

bb.ac:                                            ; preds = %.preheader
  %i.ci = or i16 %.sroa.89.119252246, 4
  br label %bb.ak

bb.ad:                                            ; preds = %.preheader
  %i.cj = or i16 %.sroa.89.119252246, 8
  br label %.loopexit2249

bb.ae:                                            ; preds = %.preheader
  %i.ck = or i16 %.sroa.89.119252246, 16
  br label %bb.ak

bb.af:                                            ; preds = %.preheader
  %i.cl = or i16 %.sroa.89.119252246, 512
  br label %bb.ak

bb.ag:                                            ; preds = %.preheader
  %i.cm = or i16 %.sroa.89.119252246, 1024
  br label %bb.ak

bb.ah:                                            ; preds = %.preheader
  %i.cn = or i16 %.sroa.89.119252246, 2048
  br label %bb.ak

.loopexit:                                        ; preds = %.preheader
  br label %bb.ak

.loopexit2011.jt0:                                ; preds = %.preheader
  br label %bb.ak

.loopexit2011.loopexit3186.loopexit:              ; preds = %.lr.ph1995.jt3
  %.sroa.0.sroa.49.0.extract.trunc1667.le = trunc nuw i32 %.sroa.0.sroa.49.0.extract.shift1666 to i8
  %.sroa.50.sroa.49.0.extract.trunc1304.le = trunc nuw i32 %.sroa.50.sroa.49.0.extract.shift1303 to i8
  %.sroa.72.sroa.50.0.extract.trunc883.le = trunc nuw i32 %.sroa.72.sroa.50.0.extract.shift882 to i8
  br label %.loopexit2011

.loopexit2011.loopexit3186.loopexit3621:          ; preds = %.lr.ph1995.jt3.peel
  %.sroa.0.sroa.49.0.extract.trunc1667.peel.le = trunc nuw i32 %.sroa.0.sroa.49.0.extract.shift1666.peel to i8
  %.sroa.50.sroa.49.0.extract.trunc1304.peel.le = trunc nuw i32 %.sroa.50.sroa.49.0.extract.shift1303.peel to i8
  %.sroa.72.sroa.50.0.extract.trunc883.peel.le = trunc nuw i32 %.sroa.72.sroa.50.0.extract.shift882.peel to i8
  br label %.loopexit2011

.loopexit2011.loopexit3192:                       ; preds = %.lr.ph1995.jt2
  %.sroa.0.sroa.49.0.extract.trunc1657.le = trunc nuw i32 %.sroa.0.sroa.49.0.extract.shift1656 to i8
  %.sroa.50.sroa.49.0.extract.trunc1294.le = trunc nuw i32 %.sroa.50.sroa.49.0.extract.shift1293 to i8
  %.sroa.72.sroa.50.0.extract.trunc873.le = trunc nuw i32 %.sroa.72.sroa.50.0.extract.shift872 to i8
  br label %.loopexit2011

.loopexit2011:                                    ; preds = %.loopexit2249, %.lr.ph1995.jt4, %.loopexit2011.loopexit3186.loopexit, %.loopexit2011.loopexit3186.loopexit3621, %.lr.ph1995.jt1, %.lr.ph1995.jt0, %.loopexit2011.loopexit3192, %.lr.ph1995
  %.sroa.0147.11855 = phi i1 [ %.sroa.0147.11926, %.lr.ph1995.jt0 ], [ %.sroa.0147.11926, %.lr.ph1995.jt4 ], [ %.sroa.0147.01989, %.lr.ph1995 ], [ %.sroa.0147.11926, %.lr.ph1995.jt1 ], [ %.sroa.0147.11926, %.loopexit2011.loopexit3192 ], [ true, %.loopexit2011.loopexit3186.loopexit ], [ true, %.loopexit2011.loopexit3186.loopexit3621 ], [ %.sroa.0147.2, %.loopexit2249 ]
  %.sroa.4148.11841 = phi i16 [ %.sroa.4148.11927, %.lr.ph1995.jt0 ], [ %.sroa.4148.11927, %.lr.ph1995.jt4 ], [ %.sroa.4148.01990, %.lr.ph1995 ], [ %.sroa.4148.11927, %.lr.ph1995.jt1 ], [ %.sroa.4148.11927, %.loopexit2011.loopexit3192 ], [ %.sroa.4148.11927, %.loopexit2011.loopexit3186.loopexit ], [ %.sroa.4148.11927, %.loopexit2011.loopexit3186.loopexit3621 ], [ %.sroa.4148.2, %.loopexit2249 ]
  %.sroa.0149.11827 = phi i1 [ %.sroa.0149.11928, %.lr.ph1995.jt0 ], [ %.sroa.0149.11928, %.lr.ph1995.jt4 ], [ %.sroa.0149.01991, %.lr.ph1995 ], [ %.sroa.0149.11928, %.lr.ph1995.jt1 ], [ %.sroa.0149.11928, %.loopexit2011.loopexit3192 ], [ true, %.loopexit2011.loopexit3186.loopexit ], [ true, %.loopexit2011.loopexit3186.loopexit3621 ], [ %.sroa.0149.2, %.loopexit2249 ]
  %.sroa.4150.11813 = phi i16 [ %.sroa.4150.11929, %.lr.ph1995.jt0 ], [ %.sroa.4150.11929, %.lr.ph1995.jt4 ], [ %.sroa.4150.01992, %.lr.ph1995 ], [ %.sroa.4150.11929, %.lr.ph1995.jt1 ], [ %.sroa.4150.11929, %.loopexit2011.loopexit3192 ], [ %.sroa.4150.11929, %.loopexit2011.loopexit3186.loopexit ], [ %.sroa.4150.11929, %.loopexit2011.loopexit3186.loopexit3621 ], [ %.sroa.4150.2, %.loopexit2249 ]
  %.sroa.05.11799 = phi i8 [ %.sroa.05.11931, %.lr.ph1995.jt0 ], [ %.sroa.05.11931, %.lr.ph1995.jt4 ], [ %.sroa.05.01993, %.lr.ph1995 ], [ %.sroa.05.11931, %.lr.ph1995.jt1 ], [ %.sroa.05.11931, %.loopexit2011.loopexit3192 ], [ %.sroa.05.11931, %.loopexit2011.loopexit3186.loopexit ], [ %.sroa.05.11931, %.loopexit2011.loopexit3186.loopexit3621 ], [ %.sroa.05.2, %.loopexit2249 ]
  %.sroa.0.11785 = phi i8 [ 0, %.lr.ph1995.jt0 ], [ 4, %.lr.ph1995.jt4 ], [ %.sroa.0.01994, %.lr.ph1995 ], [ 1, %.lr.ph1995.jt1 ], [ 2, %.loopexit2011.loopexit3192 ], [ 3, %.loopexit2011.loopexit3186.loopexit ], [ 3, %.loopexit2011.loopexit3186.loopexit3621 ], [ %.sroa.0.2, %.loopexit2249 ]
  %.sroa.0.sroa.49.2 = phi i8 [ %.sroa.0.sroa.49.2.jt0, %.lr.ph1995.jt0 ], [ %.sroa.0.sroa.49.019762216, %.lr.ph1995.jt4 ], [ %.sroa.0.sroa.49.01976, %.lr.ph1995 ], [ %.sroa.0.sroa.49.019762216, %.lr.ph1995.jt1 ], [ %.sroa.0.sroa.49.0.extract.trunc1657.le, %.loopexit2011.loopexit3192 ], [ %.sroa.0.sroa.49.0.extract.trunc1667.peel.le, %.loopexit2011.loopexit3186.loopexit3621 ], [ %.sroa.0.sroa.49.0.extract.trunc1667.le, %.loopexit2011.loopexit3186.loopexit ], [ %.sroa.0.sroa.49.019762215, %.loopexit2249 ] ; 2 uses
  %.sroa.0.sroa.48.2 = phi i8 [ %.sroa.0.sroa.48.2.jt0, %.lr.ph1995.jt0 ], [ %.sroa.0.sroa.48.019772209, %.lr.ph1995.jt4 ], [ %.sroa.0.sroa.48.01977, %.lr.ph1995 ], [ %.sroa.0.sroa.48.019772209, %.lr.ph1995.jt1 ], [ %.sroa.0.sroa.48.0.extract.trunc1541, %.loopexit2011.loopexit3192 ], [ %.sroa.0.sroa.48.0.extract.trunc1551.peel, %.loopexit2011.loopexit3186.loopexit3621 ], [ %.sroa.0.sroa.48.0.extract.trunc1551, %.loopexit2011.loopexit3186.loopexit ], [ %.sroa.0.sroa.48.019772208, %.loopexit2249 ] ; 2 uses
  %.sroa.0.sroa.45.2 = phi i8 [ %.sroa.0.sroa.45.2.jt0, %.lr.ph1995.jt0 ], [ %.sroa.0.sroa.45.019782202, %.lr.ph1995.jt4 ], [ %.sroa.0.sroa.45.01978, %.lr.ph1995 ], [ %.sroa.0.sroa.45.019782202, %.lr.ph1995.jt1 ], [ %.sroa.0.sroa.45.0.extract.trunc1426, %.loopexit2011.loopexit3192 ], [ %.sroa.0.sroa.45.0.extract.trunc1436.peel, %.loopexit2011.loopexit3186.loopexit3621 ], [ %.sroa.0.sroa.45.0.extract.trunc1436, %.loopexit2011.loopexit3186.loopexit ], [ %.sroa.0.sroa.45.019782201, %.loopexit2249 ] ; 2 uses
  %.sroa.0.sroa.0.2 = phi i8 [ %.sroa.0.sroa.0.2.jt0, %.lr.ph1995.jt0 ], [ %.sroa.0.sroa.0.019792195, %.lr.ph1995.jt4 ], [ %.sroa.0.sroa.0.01979, %.lr.ph1995 ], [ %.sroa.0.sroa.0.019792195, %.lr.ph1995.jt1 ], [ %.sroa.0.sroa.0.0.extract.trunc1341, %.loopexit2011.loopexit3192 ], [ %.sroa.0.sroa.0.0.extract.trunc1348.peel, %.loopexit2011.loopexit3186.loopexit3621 ], [ %.sroa.0.sroa.0.0.extract.trunc1348, %.loopexit2011.loopexit3186.loopexit ], [ %.sroa.0.sroa.0.019792194, %.loopexit2249 ] ; 2 uses
  %.sroa.50.sroa.49.2 = phi i8 [ %.sroa.50.sroa.49.2.jt0, %.lr.ph1995.jt0 ], [ %.sroa.50.sroa.49.019802188, %.lr.ph1995.jt4 ], [ %.sroa.50.sroa.49.01980, %.lr.ph1995 ], [ %.sroa.50.sroa.49.019802188, %.lr.ph1995.jt1 ], [ %.sroa.50.sroa.49.0.extract.trunc1294.le, %.loopexit2011.loopexit3192 ], [ %.sroa.50.sroa.49.0.extract.trunc1304.peel.le, %.loopexit2011.loopexit3186.loopexit3621 ], [ %.sroa.50.sroa.49.0.extract.trunc1304.le, %.loopexit2011.loopexit3186.loopexit ], [ %.sroa.50.sroa.49.019802187, %.loopexit2249 ] ; 2 uses
  %.sroa.50.sroa.48.2 = phi i8 [ %.sroa.50.sroa.48.2.jt0, %.lr.ph1995.jt0 ], [ %.sroa.50.sroa.48.019812181, %.lr.ph1995.jt4 ], [ %.sroa.50.sroa.48.01981, %.lr.ph1995 ], [ %.sroa.50.sroa.48.019812181, %.lr.ph1995.jt1 ], [ %.sroa.50.sroa.48.0.extract.trunc1178, %.loopexit2011.loopexit3192 ], [ %.sroa.50.sroa.48.0.extract.trunc1188.peel, %.loopexit2011.loopexit3186.loopexit3621 ], [ %.sroa.50.sroa.48.0.extract.trunc1188, %.loopexit2011.loopexit3186.loopexit ], [ %.sroa.50.sroa.48.019812180, %.loopexit2249 ] ; 2 uses
  %.sroa.50.sroa.45.2 = phi i8 [ %.sroa.50.sroa.45.2.jt0, %.lr.ph1995.jt0 ], [ %.sroa.50.sroa.45.019822174, %.lr.ph1995.jt4 ], [ %.sroa.50.sroa.45.01982, %.lr.ph1995 ], [ %.sroa.50.sroa.45.019822174, %.lr.ph1995.jt1 ], [ %.sroa.50.sroa.45.0.extract.trunc1063, %.loopexit2011.loopexit3192 ], [ %.sroa.50.sroa.45.0.extract.trunc1073.peel, %.loopexit2011.loopexit3186.loopexit3621 ], [ %.sroa.50.sroa.45.0.extract.trunc1073, %.loopexit2011.loopexit3186.loopexit ], [ %.sroa.50.sroa.45.019822173, %.loopexit2249 ] ; 2 uses
  %.sroa.50.sroa.0.2 = phi i8 [ %.sroa.50.sroa.0.2.jt0, %.lr.ph1995.jt0 ], [ %.sroa.50.sroa.0.019832167, %.lr.ph1995.jt4 ], [ %.sroa.50.sroa.0.01983, %.lr.ph1995 ], [ %.sroa.50.sroa.0.019832167, %.lr.ph1995.jt1 ], [ %.sroa.50.sroa.0.0.extract.trunc958, %.loopexit2011.loopexit3192 ], [ %.sroa.50.sroa.0.0.extract.trunc965.peel, %.loopexit2011.loopexit3186.loopexit3621 ], [ %.sroa.50.sroa.0.0.extract.trunc965, %.loopexit2011.loopexit3186.loopexit ], [ %.sroa.50.sroa.0.019832166, %.loopexit2249 ] ; 2 uses
  %.sroa.72.sroa.50.2 = phi i8 [ %.sroa.72.sroa.50.01984, %.lr.ph1995.jt0 ], [ %.sroa.72.sroa.50.01984, %.lr.ph1995.jt4 ], [ %.sroa.72.sroa.50.01984, %.lr.ph1995 ], [ %.sroa.72.sroa.50.01984, %.lr.ph1995.jt1 ], [ %.sroa.72.sroa.50.0.extract.trunc873.le, %.loopexit2011.loopexit3192 ], [ %.sroa.72.sroa.50.0.extract.trunc883.peel.le, %.loopexit2011.loopexit3186.loopexit3621 ], [ %.sroa.72.sroa.50.0.extract.trunc883.le, %.loopexit2011.loopexit3186.loopexit ], [ %.sroa.72.sroa.50.01984, %.loopexit2249 ] ; 2 uses
  %.sroa.72.sroa.49.2 = phi i8 [ %.sroa.72.sroa.49.01985, %.lr.ph1995.jt0 ], [ %.sroa.72.sroa.49.01985, %.lr.ph1995.jt4 ], [ %.sroa.72.sroa.49.01985, %.lr.ph1995 ], [ %.sroa.72.sroa.49.01985, %.lr.ph1995.jt1 ], [ %.sroa.72.sroa.49.0.extract.trunc745, %.loopexit2011.loopexit3192 ], [ %.sroa.72.sroa.49.0.extract.trunc755.peel, %.loopexit2011.loopexit3186.loopexit3621 ], [ %.sroa.72.sroa.49.0.extract.trunc755, %.loopexit2011.loopexit3186.loopexit ], [ %.sroa.72.sroa.49.01985, %.loopexit2249 ] ; 2 uses
  %.sroa.72.sroa.48.2 = phi i8 [ %.sroa.72.sroa.48.01986, %.lr.ph1995.jt0 ], [ %.sroa.72.sroa.48.01986, %.lr.ph1995.jt4 ], [ %.sroa.72.sroa.48.01986, %.lr.ph1995 ], [ %.sroa.72.sroa.48.01986, %.lr.ph1995.jt1 ], [ %.sroa.72.sroa.48.0.extract.trunc617, %.loopexit2011.loopexit3192 ], [ %.sroa.72.sroa.48.0.extract.trunc627.peel, %.loopexit2011.loopexit3186.loopexit3621 ], [ %.sroa.72.sroa.48.0.extract.trunc627, %.loopexit2011.loopexit3186.loopexit ], [ %.sroa.72.sroa.48.01986, %.loopexit2249 ] ; 2 uses
  %.sroa.72.sroa.0.2 = phi i8 [ %.sroa.72.sroa.0.2.jt0, %.lr.ph1995.jt0 ], [ %.sroa.72.sroa.0.019872139, %.lr.ph1995.jt4 ], [ %.sroa.72.sroa.0.01987, %.lr.ph1995 ], [ %.sroa.72.sroa.0.019872139, %.lr.ph1995.jt1 ], [ %.sroa.72.sroa.0.0.extract.trunc498, %.loopexit2011.loopexit3192 ], [ %.sroa.72.sroa.0.0.extract.trunc505.peel, %.loopexit2011.loopexit3186.loopexit3621 ], [ %.sroa.72.sroa.0.0.extract.trunc505, %.loopexit2011.loopexit3186.loopexit ], [ %.sroa.72.sroa.0.019872138, %.loopexit2249 ] ; 2 uses
  %.sroa.89.2 = phi i16 [ %.sroa.89.2.jt0, %.lr.ph1995.jt0 ], [ %.sroa.89.11925, %.lr.ph1995.jt4 ], [ %.sroa.89.01988, %.lr.ph1995 ], [ %.sroa.89.11925, %.lr.ph1995.jt1 ], [ %.sroa.89.11925, %.loopexit2011.loopexit3192 ], [ %.sroa.89.11925, %.loopexit2011.loopexit3186.loopexit ], [ %.sroa.89.11925, %.loopexit2011.loopexit3186.loopexit3621 ], [ %.sroa.89.3, %.loopexit2249 ] ; 2 uses
  %i.co = call { ptr, i64 } @_RNvXs1_NtCs41iyzuuznms_13anstyle_parse6paramsNtB5_10ParamsIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.cp = extractvalue { ptr, i64 } %i.co, 0      ; 2 uses
  %.not = icmp eq ptr %i.cp, null
  br i1 %.not, label %._crit_edge, label %.lr.ph1995

.loopexit2011.jt1:                                ; preds = %.preheader2248
  %i.cq = call { ptr, i64 } @_RNvXs1_NtCs41iyzuuznms_13anstyle_parse6paramsNtB5_10ParamsIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.cr = extractvalue { ptr, i64 } %i.cq, 0      ; 4 uses
  %.not.jt1 = icmp eq ptr %i.cr, null
  br i1 %.not.jt1, label %._crit_edge, label %.lr.ph1995.jt1

.loopexit2011.jt4:                                ; preds = %.preheader2256
  %i.cs = call { ptr, i64 } @_RNvXs1_NtCs41iyzuuznms_13anstyle_parse6paramsNtB5_10ParamsIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.ct = extractvalue { ptr, i64 } %i.cs, 0      ; 4 uses
  %.not.jt4 = icmp eq ptr %i.ct, null
  br i1 %.not.jt4, label %._crit_edge, label %.lr.ph1995.jt4

bb.ai:                                            ; preds = %bb.by, %bb.bz, %bb.ca
  %.sroa.0166.0 = phi i32 [ %.sroa.0191.0.insert.insert.reass, %bb.by ], [ %.sroa.0.sroa.0.0.insert.insert1344, %bb.bz ], [ %.sroa.0.sroa.0.0.insert.insert1347, %bb.ca ] ; 4 uses
  %.sroa.5170.0 = phi i32 [ %.sroa.50.sroa.0.0.insert.insert961, %bb.by ], [ %.sroa.0196.0.insert.insert.reass, %bb.bz ], [ %.sroa.50.sroa.0.0.insert.insert964, %bb.ca ] ; 4 uses
  %.sroa.6177.0 = phi i32 [ %.sroa.72.sroa.0.0.insert.insert501, %bb.by ], [ %.sroa.72.sroa.0.0.insert.insert504, %bb.bz ], [ %.sroa.0201.0.insert.insert.reass, %bb.ca ] ; 4 uses
  %.sroa.0.sroa.0.0.extract.trunc1348 = trunc i32 %.sroa.0166.0 to i8 ; 3 uses
  %.sroa.0.sroa.45.0.extract.shift1435 = lshr i32 %.sroa.0166.0, 8
  %.sroa.0.sroa.45.0.extract.trunc1436 = trunc i32 %.sroa.0.sroa.45.0.extract.shift1435 to i8 ; 3 uses
  %.sroa.0.sroa.48.0.extract.shift1550 = lshr i32 %.sroa.0166.0, 16
  %.sroa.0.sroa.48.0.extract.trunc1551 = trunc i32 %.sroa.0.sroa.48.0.extract.shift1550 to i8 ; 3 uses
  %.sroa.0.sroa.49.0.extract.shift1666 = lshr i32 %.sroa.0166.0, 24 ; 3 uses
  %.sroa.50.sroa.0.0.extract.trunc965 = trunc i32 %.sroa.5170.0 to i8 ; 3 uses
  %.sroa.50.sroa.45.0.extract.shift1072 = lshr i32 %.sroa.5170.0, 8
  %.sroa.50.sroa.45.0.extract.trunc1073 = trunc i32 %.sroa.50.sroa.45.0.extract.shift1072 to i8 ; 3 uses
  %.sroa.50.sroa.48.0.extract.shift1187 = lshr i32 %.sroa.5170.0, 16
  %.sroa.50.sroa.48.0.extract.trunc1188 = trunc i32 %.sroa.50.sroa.48.0.extract.shift1187 to i8 ; 3 uses
  %.sroa.50.sroa.49.0.extract.shift1303 = lshr i32 %.sroa.5170.0, 24 ; 3 uses
  %.sroa.72.sroa.0.0.extract.trunc505 = trunc i32 %.sroa.6177.0 to i8 ; 3 uses
  %.sroa.72.sroa.48.0.extract.shift626 = lshr i32 %.sroa.6177.0, 8
  %.sroa.72.sroa.48.0.extract.trunc627 = trunc i32 %.sroa.72.sroa.48.0.extract.shift626 to i8 ; 3 uses
  %.sroa.72.sroa.49.0.extract.shift754 = lshr i32 %.sroa.6177.0, 16
  %.sroa.72.sroa.49.0.extract.trunc755 = trunc i32 %.sroa.72.sroa.49.0.extract.shift754 to i8 ; 3 uses
  %.sroa.72.sroa.50.0.extract.shift882 = lshr i32 %.sroa.6177.0, 24 ; 3 uses
  %i.cu = call { ptr, i64 } @_RNvXs1_NtCs41iyzuuznms_13anstyle_parse6paramsNtB5_10ParamsIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.cv = extractvalue { ptr, i64 } %i.cu, 0      ; 2 uses
  %.not.jt3 = icmp eq ptr %i.cv, null
  br i1 %.not.jt3, label %._crit_edge.loopexit3185.loopexit, label %.lr.ph1995.jt3

bb.aj:                                            ; preds = %bb.bv, %bb.bw, %bb.bx
  %.sroa.0106.0 = phi i32 [ %.sroa.0130.0.insert.insert, %bb.bv ], [ %.sroa.0.sroa.0.0.insert.insert1337, %bb.bw ], [ %.sroa.0.sroa.0.0.insert.insert1340, %bb.bx ] ; 4 uses
  %.sroa.5110.0 = phi i32 [ %.sroa.50.sroa.0.0.insert.insert954, %bb.bv ], [ %.sroa.0130.0.insert.insert, %bb.bw ], [ %.sroa.50.sroa.0.0.insert.insert957, %bb.bx ] ; 4 uses
  %.sroa.6117.0 = phi i32 [ %.sroa.72.sroa.0.0.insert.insert494, %bb.bv ], [ %.sroa.72.sroa.0.0.insert.insert497, %bb.bw ], [ %.sroa.0130.0.insert.insert, %bb.bx ] ; 4 uses
  %.sroa.0.sroa.0.0.extract.trunc1341 = trunc i32 %.sroa.0106.0 to i8 ; 3 uses
  %.sroa.0.sroa.45.0.extract.shift1425 = lshr i32 %.sroa.0106.0, 8
  %.sroa.0.sroa.45.0.extract.trunc1426 = trunc i32 %.sroa.0.sroa.45.0.extract.shift1425 to i8 ; 3 uses
  %.sroa.0.sroa.48.0.extract.shift1540 = lshr i32 %.sroa.0106.0, 16
  %.sroa.0.sroa.48.0.extract.trunc1541 = trunc i32 %.sroa.0.sroa.48.0.extract.shift1540 to i8 ; 3 uses
  %.sroa.0.sroa.49.0.extract.shift1656 = lshr i32 %.sroa.0106.0, 24 ; 3 uses
  %.sroa.50.sroa.0.0.extract.trunc958 = trunc i32 %.sroa.5110.0 to i8 ; 3 uses
  %.sroa.50.sroa.45.0.extract.shift1062 = lshr i32 %.sroa.5110.0, 8
  %.sroa.50.sroa.45.0.extract.trunc1063 = trunc i32 %.sroa.50.sroa.45.0.extract.shift1062 to i8 ; 3 uses
  %.sroa.50.sroa.48.0.extract.shift1177 = lshr i32 %.sroa.5110.0, 16
  %.sroa.50.sroa.48.0.extract.trunc1178 = trunc i32 %.sroa.50.sroa.48.0.extract.shift1177 to i8 ; 3 uses
  %.sroa.50.sroa.49.0.extract.shift1293 = lshr i32 %.sroa.5110.0, 24 ; 3 uses
  %.sroa.72.sroa.0.0.extract.trunc498 = trunc i32 %.sroa.6117.0 to i8 ; 3 uses
  %.sroa.72.sroa.48.0.extract.shift616 = lshr i32 %.sroa.6117.0, 8
  %.sroa.72.sroa.48.0.extract.trunc617 = trunc i32 %.sroa.72.sroa.48.0.extract.shift616 to i8 ; 3 uses
  %.sroa.72.sroa.49.0.extract.shift744 = lshr i32 %.sroa.6117.0, 16
  %.sroa.72.sroa.49.0.extract.trunc745 = trunc i32 %.sroa.72.sroa.49.0.extract.shift744 to i8 ; 3 uses
  %.sroa.72.sroa.50.0.extract.shift872 = lshr i32 %.sroa.6117.0, 24 ; 3 uses
  %i.cw = call { ptr, i64 } @_RNvXs1_NtCs41iyzuuznms_13anstyle_parse6paramsNtB5_10ParamsIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.cx = extractvalue { ptr, i64 } %i.cw, 0      ; 2 uses
  %.not.jt2 = icmp eq ptr %i.cx, null
  br i1 %.not.jt2, label %._crit_edge.loopexit3191, label %.lr.ph1995.jt2

bb.ak:                                            ; preds = %.preheader, %.loopexit2011.jt0, %bb.br, %bb.bs, %bb.bt, %bb.am, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.ao, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.aq, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.ar, %bb.bn, %.loopexit, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ac, %bb.ab, %bb.aa, %bb.bo, %bb.ap, %bb.bp, %bb.as, %bb.az, %bb.bg, %bb.bq
  %.sroa.0.sroa.49.2.jt0 = phi i8 [ 0, %bb.bq ], [ %.sroa.0.sroa.49.019762214, %bb.bg ], [ 0, %bb.az ], [ %.sroa.0.sroa.49.019762214, %bb.as ], [ 0, %bb.bp ], [ %.sroa.0.sroa.49.019762214, %bb.ap ], [ 0, %bb.bo ], [ %.sroa.0.sroa.49.019762214, %bb.aa ], [ %.sroa.0.sroa.49.019762214, %bb.ab ], [ %.sroa.0.sroa.49.019762214, %bb.ac ], [ %.sroa.0.sroa.49.019762214, %bb.ae ], [ %.sroa.0.sroa.49.019762214, %bb.af ], [ %.sroa.0.sroa.49.019762214, %bb.ag ], [ %.sroa.0.sroa.49.019762214, %bb.ah ], [ %.sroa.0.sroa.49.019762214, %.loopexit ], [ 0, %bb.bs ], [ 0, %bb.bn ], [ 0, %bb.br ], [ %.sroa.0.sroa.49.019762214, %.loopexit2011.jt0 ], [ %.sroa.0.sroa.49.019762214, %bb.ar ], [ %.sroa.0.sroa.49.019762214, %bb.ay ], [ %.sroa.0.sroa.49.019762214, %bb.ax ], [ %.sroa.0.sroa.49.019762214, %bb.aw ], [ %.sroa.0.sroa.49.019762214, %bb.av ], [ %.sroa.0.sroa.49.019762214, %bb.au ], [ %.sroa.0.sroa.49.019762214, %bb.at ], [ 0, %bb.aq ], [ 0, %bb.bf ], [ 0, %bb.be ], [ 0, %bb.bd ], [ 0, %bb.bc ], [ 0, %bb.bb ], [ 0, %bb.ba ], [ %.sroa.0.sroa.49.019762214, %bb.ao ], [ %.sroa.0.sroa.49.019762214, %bb.bm ], [ %.sroa.0.sroa.49.019762214, %bb.bl ], [ %.sroa.0.sroa.49.019762214, %bb.bk ], [ %.sroa.0.sroa.49.019762214, %bb.bj ], [ %.sroa.0.sroa.49.019762214, %bb.bi ], [ %.sroa.0.sroa.49.019762214, %bb.bh ], [ 0, %bb.am ], [ 0, %bb.bt ], [ %.sroa.0.sroa.49.019762214, %.preheader ] ; 3 uses
  %.sroa.0.sroa.48.2.jt0 = phi i8 [ 0, %bb.bq ], [ %.sroa.0.sroa.48.019772207, %bb.bg ], [ 0, %bb.az ], [ %.sroa.0.sroa.48.019772207, %bb.as ], [ 0, %bb.bp ], [ %.sroa.0.sroa.48.019772207, %bb.ap ], [ 0, %bb.bo ], [ %.sroa.0.sroa.48.019772207, %bb.aa ], [ %.sroa.0.sroa.48.019772207, %bb.ab ], [ %.sroa.0.sroa.48.019772207, %bb.ac ], [ %.sroa.0.sroa.48.019772207, %bb.ae ], [ %.sroa.0.sroa.48.019772207, %bb.af ], [ %.sroa.0.sroa.48.019772207, %bb.ag ], [ %.sroa.0.sroa.48.019772207, %bb.ah ], [ %.sroa.0.sroa.48.019772207, %.loopexit ], [ 0, %bb.bs ], [ 0, %bb.bn ], [ 0, %bb.br ], [ %.sroa.0.sroa.48.019772207, %.loopexit2011.jt0 ], [ %.sroa.0.sroa.48.019772207, %bb.ar ], [ %.sroa.0.sroa.48.019772207, %bb.ay ], [ %.sroa.0.sroa.48.019772207, %bb.ax ], [ %.sroa.0.sroa.48.019772207, %bb.aw ], [ %.sroa.0.sroa.48.019772207, %bb.av ], [ %.sroa.0.sroa.48.019772207, %bb.au ], [ %.sroa.0.sroa.48.019772207, %bb.at ], [ 0, %bb.aq ], [ 0, %bb.bf ], [ 0, %bb.be ], [ 0, %bb.bd ], [ 0, %bb.bc ], [ 0, %bb.bb ], [ 0, %bb.ba ], [ %.sroa.0.sroa.48.019772207, %bb.ao ], [ %.sroa.0.sroa.48.019772207, %bb.bm ], [ %.sroa.0.sroa.48.019772207, %bb.bl ], [ %.sroa.0.sroa.48.019772207, %bb.bk ], [ %.sroa.0.sroa.48.019772207, %bb.bj ], [ %.sroa.0.sroa.48.019772207, %bb.bi ], [ %.sroa.0.sroa.48.019772207, %bb.bh ], [ 0, %bb.am ], [ 0, %bb.bt ], [ %.sroa.0.sroa.48.019772207, %.preheader ] ; 3 uses
  %.sroa.0.sroa.45.2.jt0 = phi i8 [ 4, %bb.bq ], [ %.sroa.0.sroa.45.019782200, %bb.bg ], [ 9, %bb.az ], [ %.sroa.0.sroa.45.019782200, %bb.as ], [ 3, %bb.bp ], [ %.sroa.0.sroa.45.019782200, %bb.ap ], [ 2, %bb.bo ], [ %.sroa.0.sroa.45.019782200, %bb.aa ], [ %.sroa.0.sroa.45.019782200, %bb.ab ], [ %.sroa.0.sroa.45.019782200, %bb.ac ], [ %.sroa.0.sroa.45.019782200, %bb.ae ], [ %.sroa.0.sroa.45.019782200, %bb.af ], [ %.sroa.0.sroa.45.019782200, %bb.ag ], [ %.sroa.0.sroa.45.019782200, %bb.ah ], [ %.sroa.0.sroa.45.019782200, %.loopexit ], [ 6, %bb.bs ], [ 1, %bb.bn ], [ 5, %bb.br ], [ %.sroa.0.sroa.45.019782200, %.loopexit2011.jt0 ], [ %.sroa.0.sroa.45.019782200, %bb.ar ], [ %.sroa.0.sroa.45.019782200, %bb.ay ], [ %.sroa.0.sroa.45.019782200, %bb.ax ], [ %.sroa.0.sroa.45.019782200, %bb.aw ], [ %.sroa.0.sroa.45.019782200, %bb.av ], [ %.sroa.0.sroa.45.019782200, %bb.au ], [ %.sroa.0.sroa.45.019782200, %bb.at ], [ 8, %bb.aq ], [ 15, %bb.bf ], [ 14, %bb.be ], [ 13, %bb.bd ], [ 12, %bb.bc ], [ 11, %bb.bb ], [ 10, %bb.ba ], [ %.sroa.0.sroa.45.019782200, %bb.ao ], [ %.sroa.0.sroa.45.019782200, %bb.bm ], [ %.sroa.0.sroa.45.019782200, %bb.bl ], [ %.sroa.0.sroa.45.019782200, %bb.bk ], [ %.sroa.0.sroa.45.019782200, %bb.bj ], [ %.sroa.0.sroa.45.019782200, %bb.bi ], [ %.sroa.0.sroa.45.019782200, %bb.bh ], [ 0, %bb.am ], [ 7, %bb.bt ], [ %.sroa.0.sroa.45.019782200, %.preheader ] ; 3 uses
  %.sroa.0.sroa.0.2.jt0 = phi i8 [ 0, %bb.bq ], [ %.sroa.0.sroa.0.019792193, %bb.bg ], [ 0, %bb.az ], [ %.sroa.0.sroa.0.019792193, %bb.as ], [ 0, %bb.bp ], [ %.sroa.0.sroa.0.019792193, %bb.ap ], [ 0, %bb.bo ], [ %.sroa.0.sroa.0.019792193, %bb.aa ], [ %.sroa.0.sroa.0.019792193, %bb.ab ], [ %.sroa.0.sroa.0.019792193, %bb.ac ], [ %.sroa.0.sroa.0.019792193, %bb.ae ], [ %.sroa.0.sroa.0.019792193, %bb.af ], [ %.sroa.0.sroa.0.019792193, %bb.ag ], [ %.sroa.0.sroa.0.019792193, %bb.ah ], [ -1, %.loopexit ], [ 0, %bb.bs ], [ 0, %bb.bn ], [ 0, %bb.br ], [ -1, %.loopexit2011.jt0 ], [ %.sroa.0.sroa.0.019792193, %bb.ar ], [ %.sroa.0.sroa.0.019792193, %bb.ay ], [ %.sroa.0.sroa.0.019792193, %bb.ax ], [ %.sroa.0.sroa.0.019792193, %bb.aw ], [ %.sroa.0.sroa.0.019792193, %bb.av ], [ %.sroa.0.sroa.0.019792193, %bb.au ], [ %.sroa.0.sroa.0.019792193, %bb.at ], [ 0, %bb.aq ], [ 0, %bb.bf ], [ 0, %bb.be ], [ 0, %bb.bd ], [ 0, %bb.bc ], [ 0, %bb.bb ], [ 0, %bb.ba ], [ %.sroa.0.sroa.0.019792193, %bb.ao ], [ %.sroa.0.sroa.0.019792193, %bb.bm ], [ %.sroa.0.sroa.0.019792193, %bb.bl ], [ %.sroa.0.sroa.0.019792193, %bb.bk ], [ %.sroa.0.sroa.0.019792193, %bb.bj ], [ %.sroa.0.sroa.0.019792193, %bb.bi ], [ %.sroa.0.sroa.0.019792193, %bb.bh ], [ 0, %bb.am ], [ 0, %bb.bt ], [ %.sroa.0.sroa.0.019792193, %.preheader ] ; 3 uses
  %.sroa.50.sroa.49.2.jt0 = phi i8 [ %.sroa.50.sroa.49.019802186, %bb.bq ], [ 0, %bb.bg ], [ %.sroa.50.sroa.49.019802186, %bb.az ], [ 0, %bb.as ], [ %.sroa.50.sroa.49.019802186, %bb.bp ], [ %.sroa.50.sroa.49.019802186, %bb.ap ], [ %.sroa.50.sroa.49.019802186, %bb.bo ], [ %.sroa.50.sroa.49.019802186, %bb.aa ], [ %.sroa.50.sroa.49.019802186, %bb.ab ], [ %.sroa.50.sroa.49.019802186, %bb.ac ], [ %.sroa.50.sroa.49.019802186, %bb.ae ], [ %.sroa.50.sroa.49.019802186, %bb.af ], [ %.sroa.50.sroa.49.019802186, %bb.ag ], [ %.sroa.50.sroa.49.019802186, %bb.ah ], [ %.sroa.50.sroa.49.019802186, %.loopexit ], [ %.sroa.50.sroa.49.019802186, %bb.bs ], [ %.sroa.50.sroa.49.019802186, %bb.bn ], [ %.sroa.50.sroa.49.019802186, %bb.br ], [ %.sroa.50.sroa.49.019802186, %.loopexit2011.jt0 ], [ 0, %bb.ar ], [ 0, %bb.ay ], [ 0, %bb.ax ], [ 0, %bb.aw ], [ 0, %bb.av ], [ 0, %bb.au ], [ 0, %bb.at ], [ %.sroa.50.sroa.49.019802186, %bb.aq ], [ %.sroa.50.sroa.49.019802186, %bb.bf ], [ %.sroa.50.sroa.49.019802186, %bb.be ], [ %.sroa.50.sroa.49.019802186, %bb.bd ], [ %.sroa.50.sroa.49.019802186, %bb.bc ], [ %.sroa.50.sroa.49.019802186, %bb.bb ], [ %.sroa.50.sroa.49.019802186, %bb.ba ], [ 0, %bb.ao ], [ 0, %bb.bm ], [ 0, %bb.bl ], [ 0, %bb.bk ], [ 0, %bb.bj ], [ 0, %bb.bi ], [ 0, %bb.bh ], [ %.sroa.50.sroa.49.019802186, %bb.am ], [ %.sroa.50.sroa.49.019802186, %bb.bt ], [ %.sroa.50.sroa.49.019802186, %.preheader ] ; 3 uses
  %.sroa.50.sroa.48.2.jt0 = phi i8 [ %.sroa.50.sroa.48.019812179, %bb.bq ], [ 0, %bb.bg ], [ %.sroa.50.sroa.48.019812179, %bb.az ], [ 0, %bb.as ], [ %.sroa.50.sroa.48.019812179, %bb.bp ], [ %.sroa.50.sroa.48.019812179, %bb.ap ], [ %.sroa.50.sroa.48.019812179, %bb.bo ], [ %.sroa.50.sroa.48.019812179, %bb.aa ], [ %.sroa.50.sroa.48.019812179, %bb.ab ], [ %.sroa.50.sroa.48.019812179, %bb.ac ], [ %.sroa.50.sroa.48.019812179, %bb.ae ], [ %.sroa.50.sroa.48.019812179, %bb.af ], [ %.sroa.50.sroa.48.019812179, %bb.ag ], [ %.sroa.50.sroa.48.019812179, %bb.ah ], [ %.sroa.50.sroa.48.019812179, %.loopexit ], [ %.sroa.50.sroa.48.019812179, %bb.bs ], [ %.sroa.50.sroa.48.019812179, %bb.bn ], [ %.sroa.50.sroa.48.019812179, %bb.br ], [ %.sroa.50.sroa.48.019812179, %.loopexit2011.jt0 ], [ 0, %bb.ar ], [ 0, %bb.ay ], [ 0, %bb.ax ], [ 0, %bb.aw ], [ 0, %bb.av ], [ 0, %bb.au ], [ 0, %bb.at ], [ %.sroa.50.sroa.48.019812179, %bb.aq ], [ %.sroa.50.sroa.48.019812179, %bb.bf ], [ %.sroa.50.sroa.48.019812179, %bb.be ], [ %.sroa.50.sroa.48.019812179, %bb.bd ], [ %.sroa.50.sroa.48.019812179, %bb.bc ], [ %.sroa.50.sroa.48.019812179, %bb.bb ], [ %.sroa.50.sroa.48.019812179, %bb.ba ], [ 0, %bb.ao ], [ 0, %bb.bm ], [ 0, %bb.bl ], [ 0, %bb.bk ], [ 0, %bb.bj ], [ 0, %bb.bi ], [ 0, %bb.bh ], [ %.sroa.50.sroa.48.019812179, %bb.am ], [ %.sroa.50.sroa.48.019812179, %bb.bt ], [ %.sroa.50.sroa.48.019812179, %.preheader ] ; 3 uses
  %.sroa.50.sroa.45.2.jt0 = phi i8 [ %.sroa.50.sroa.45.019822172, %bb.bq ], [ 1, %bb.bg ], [ %.sroa.50.sroa.45.019822172, %bb.az ], [ 9, %bb.as ], [ %.sroa.50.sroa.45.019822172, %bb.bp ], [ %.sroa.50.sroa.45.019822172, %bb.ap ], [ %.sroa.50.sroa.45.019822172, %bb.bo ], [ %.sroa.50.sroa.45.019822172, %bb.aa ], [ %.sroa.50.sroa.45.019822172, %bb.ab ], [ %.sroa.50.sroa.45.019822172, %bb.ac ], [ %.sroa.50.sroa.45.019822172, %bb.ae ], [ %.sroa.50.sroa.45.019822172, %bb.af ], [ %.sroa.50.sroa.45.019822172, %bb.ag ], [ %.sroa.50.sroa.45.019822172, %bb.ah ], [ %.sroa.50.sroa.45.019822172, %.loopexit ], [ %.sroa.50.sroa.45.019822172, %bb.bs ], [ %.sroa.50.sroa.45.019822172, %bb.bn ], [ %.sroa.50.sroa.45.019822172, %bb.br ], [ %.sroa.50.sroa.45.019822172, %.loopexit2011.jt0 ], [ 8, %bb.ar ], [ 15, %bb.ay ], [ 14, %bb.ax ], [ 13, %bb.aw ], [ 12, %bb.av ], [ 11, %bb.au ], [ 10, %bb.at ], [ %.sroa.50.sroa.45.019822172, %bb.aq ], [ %.sroa.50.sroa.45.019822172, %bb.bf ], [ %.sroa.50.sroa.45.019822172, %bb.be ], [ %.sroa.50.sroa.45.019822172, %bb.bd ], [ %.sroa.50.sroa.45.019822172, %bb.bc ], [ %.sroa.50.sroa.45.019822172, %bb.bb ], [ %.sroa.50.sroa.45.019822172, %bb.ba ], [ 0, %bb.ao ], [ 7, %bb.bm ], [ 6, %bb.bl ], [ 5, %bb.bk ], [ 4, %bb.bj ], [ 3, %bb.bi ], [ 2, %bb.bh ], [ %.sroa.50.sroa.45.019822172, %bb.am ], [ %.sroa.50.sroa.45.019822172, %bb.bt ], [ %.sroa.50.sroa.45.019822172, %.preheader ] ; 3 uses
  %.sroa.50.sroa.0.2.jt0 = phi i8 [ %.sroa.50.sroa.0.019832165, %bb.bq ], [ 0, %bb.bg ], [ %.sroa.50.sroa.0.019832165, %bb.az ], [ 0, %bb.as ], [ %.sroa.50.sroa.0.019832165, %bb.bp ], [ %.sroa.50.sroa.0.019832165, %bb.ap ], [ %.sroa.50.sroa.0.019832165, %bb.bo ], [ %.sroa.50.sroa.0.019832165, %bb.aa ], [ %.sroa.50.sroa.0.019832165, %bb.ab ], [ %.sroa.50.sroa.0.019832165, %bb.ac ], [ %.sroa.50.sroa.0.019832165, %bb.ae ], [ %.sroa.50.sroa.0.019832165, %bb.af ], [ %.sroa.50.sroa.0.019832165, %bb.ag ], [ %.sroa.50.sroa.0.019832165, %bb.ah ], [ -1, %.loopexit ], [ %.sroa.50.sroa.0.019832165, %bb.bs ], [ %.sroa.50.sroa.0.019832165, %bb.bn ], [ %.sroa.50.sroa.0.019832165, %bb.br ], [ %.sroa.50.sroa.0.019832165, %.loopexit2011.jt0 ], [ 0, %bb.ar ], [ 0, %bb.ay ], [ 0, %bb.ax ], [ 0, %bb.aw ], [ 0, %bb.av ], [ 0, %bb.au ], [ 0, %bb.at ], [ %.sroa.50.sroa.0.019832165, %bb.aq ], [ %.sroa.50.sroa.0.019832165, %bb.bf ], [ %.sroa.50.sroa.0.019832165, %bb.be ], [ %.sroa.50.sroa.0.019832165, %bb.bd ], [ %.sroa.50.sroa.0.019832165, %bb.bc ], [ %.sroa.50.sroa.0.019832165, %bb.bb ], [ %.sroa.50.sroa.0.019832165, %bb.ba ], [ 0, %bb.ao ], [ 0, %bb.bm ], [ 0, %bb.bl ], [ 0, %bb.bk ], [ 0, %bb.bj ], [ 0, %bb.bi ], [ 0, %bb.bh ], [ %.sroa.50.sroa.0.019832165, %bb.am ], [ %.sroa.50.sroa.0.019832165, %bb.bt ], [ -1, %.preheader ] ; 3 uses
  %.sroa.72.sroa.0.2.jt0 = phi i8 [ %.sroa.72.sroa.0.019872137, %bb.bq ], [ %.sroa.72.sroa.0.019872137, %bb.bg ], [ %.sroa.72.sroa.0.019872137, %bb.az ], [ %.sroa.72.sroa.0.019872137, %bb.as ], [ %.sroa.72.sroa.0.019872137, %bb.bp ], [ %.sroa.72.sroa.0.019872137, %bb.ap ], [ %.sroa.72.sroa.0.019872137, %bb.bo ], [ %.sroa.72.sroa.0.019872137, %bb.aa ], [ %.sroa.72.sroa.0.019872137, %bb.ab ], [ %.sroa.72.sroa.0.019872137, %bb.ac ], [ %.sroa.72.sroa.0.019872137, %bb.ae ], [ %.sroa.72.sroa.0.019872137, %bb.af ], [ %.sroa.72.sroa.0.019872137, %bb.ag ], [ %.sroa.72.sroa.0.019872137, %bb.ah ], [ -1, %.loopexit ], [ %.sroa.72.sroa.0.019872137, %bb.bs ], [ %.sroa.72.sroa.0.019872137, %bb.bn ], [ %.sroa.72.sroa.0.019872137, %bb.br ], [ %.sroa.72.sroa.0.019872137, %.loopexit2011.jt0 ], [ %.sroa.72.sroa.0.019872137, %bb.ar ], [ %.sroa.72.sroa.0.019872137, %bb.ay ], [ %.sroa.72.sroa.0.019872137, %bb.ax ], [ %.sroa.72.sroa.0.019872137, %bb.aw ], [ %.sroa.72.sroa.0.019872137, %bb.av ], [ %.sroa.72.sroa.0.019872137, %bb.au ], [ %.sroa.72.sroa.0.019872137, %bb.at ], [ %.sroa.72.sroa.0.019872137, %bb.aq ], [ %.sroa.72.sroa.0.019872137, %bb.bf ], [ %.sroa.72.sroa.0.019872137, %bb.be ], [ %.sroa.72.sroa.0.019872137, %bb.bd ], [ %.sroa.72.sroa.0.019872137, %bb.bc ], [ %.sroa.72.sroa.0.019872137, %bb.bb ], [ %.sroa.72.sroa.0.019872137, %bb.ba ], [ %.sroa.72.sroa.0.019872137, %bb.ao ], [ %.sroa.72.sroa.0.019872137, %bb.bm ], [ %.sroa.72.sroa.0.019872137, %bb.bl ], [ %.sroa.72.sroa.0.019872137, %bb.bk ], [ %.sroa.72.sroa.0.019872137, %bb.bj ], [ %.sroa.72.sroa.0.019872137, %bb.bi ], [ %.sroa.72.sroa.0.019872137, %bb.bh ], [ %.sroa.72.sroa.0.019872137, %bb.am ], [ %.sroa.72.sroa.0.019872137, %bb.bt ], [ %.sroa.72.sroa.0.019872137, %.preheader ] ; 3 uses
  %.sroa.89.2.jt0 = phi i16 [ %.sroa.89.119252246, %bb.bq ], [ %.sroa.89.119252246, %bb.bg ], [ %.sroa.89.119252246, %bb.az ], [ %.sroa.89.119252246, %bb.as ], [ %.sroa.89.119252246, %bb.bp ], [ %.sroa.89.119252246, %bb.ap ], [ %.sroa.89.119252246, %bb.bo ], [ %i.cg, %bb.aa ], [ %i.ch, %bb.ab ], [ %i.ci, %bb.ac ], [ %i.ck, %bb.ae ], [ %i.cl, %bb.af ], [ %i.cm, %bb.ag ], [ %i.cn, %bb.ah ], [ 0, %.loopexit ], [ %.sroa.89.119252246, %bb.bs ], [ %.sroa.89.119252246, %bb.bn ], [ %.sroa.89.119252246, %bb.br ], [ %.sroa.89.119252246, %.loopexit2011.jt0 ], [ %.sroa.89.119252246, %bb.ar ], [ %.sroa.89.119252246, %bb.ay ], [ %.sroa.89.119252246, %bb.ax ], [ %.sroa.89.119252246, %bb.aw ], [ %.sroa.89.119252246, %bb.av ], [ %.sroa.89.119252246, %bb.au ], [ %.sroa.89.119252246, %bb.at ], [ %.sroa.89.119252246, %bb.aq ], [ %.sroa.89.119252246, %bb.bf ], [ %.sroa.89.119252246, %bb.be ], [ %.sroa.89.119252246, %bb.bd ], [ %.sroa.89.119252246, %bb.bc ], [ %.sroa.89.119252246, %bb.bb ], [ %.sroa.89.119252246, %bb.ba ], [ %.sroa.89.119252246, %bb.ao ], [ %.sroa.89.119252246, %bb.bm ], [ %.sroa.89.119252246, %bb.bl ], [ %.sroa.89.119252246, %bb.bk ], [ %.sroa.89.119252246, %bb.bj ], [ %.sroa.89.119252246, %bb.bi ], [ %.sroa.89.119252246, %bb.bh ], [ %.sroa.89.119252246, %bb.am ], [ %.sroa.89.119252246, %bb.bt ], [ %.sroa.89.119252246, %.preheader ] ; 3 uses
  %i.cy = call { ptr, i64 } @_RNvXs1_NtCs41iyzuuznms_13anstyle_parse6paramsNtB5_10ParamsIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.cz = extractvalue { ptr, i64 } %i.cy, 0      ; 4 uses
  %.not.jt0 = icmp eq ptr %i.cz, null
  br i1 %.not.jt0, label %._crit_edge, label %.lr.ph1995.jt0

.loopexit2249.loopexit:                           ; preds = %.preheader
  br label %.loopexit2249

.loopexit2249.loopexit3180:                       ; preds = %.preheader
  br label %.loopexit2249

.loopexit2249:                                    ; preds = %.preheader2256, %.lr.ph3145.peel, %.preheader2248, %.preheader, %.loopexit2249.loopexit3180, %.preheader2252, %.loopexit2249.loopexit, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.bu, %bb.ad
  %i.da = phi ptr [ %i.bu, %bb.ad ], [ %i.bu, %.loopexit2249.loopexit3180 ], [ %i.at, %.lr.ph3145.peel ], [ %i.bu, %.loopexit2249.loopexit ], [ %i.cd, %bb.cf ], [ %i.cd, %bb.ce ], [ %i.cd, %bb.cd ], [ %i.cd, %bb.cc ], [ %i.cd, %bb.cb ], [ %i.bx, %bb.bu ], [ %i.bu, %.preheader ], [ %i.bx, %.preheader2248 ], [ %i.at, %.preheader2252 ], [ %i.cd, %.preheader2256 ] ; 2 uses
  %i.db = phi ptr [ %i.bv, %bb.ad ], [ %i.bv, %.loopexit2249.loopexit3180 ], [ %i.as, %.lr.ph3145.peel ], [ %i.bv, %.loopexit2249.loopexit ], [ %i.ce, %bb.cf ], [ %i.ce, %bb.ce ], [ %i.ce, %bb.cd ], [ %i.ce, %bb.cc ], [ %i.ce, %bb.cb ], [ %i.by, %bb.bu ], [ %i.bv, %.preheader ], [ %i.by, %.preheader2248 ], [ %i.as, %.preheader2252 ], [ %i.ce, %.preheader2256 ] ; 2 uses
  %.sroa.0.sroa.49.019762215 = phi i8 [ %.sroa.0.sroa.49.019762214, %bb.ad ], [ %.sroa.0.sroa.49.019762214, %.loopexit2249.loopexit3180 ], [ %.sroa.0.sroa.49.019762216, %.lr.ph3145.peel ], [ %.sroa.0.sroa.49.019762214, %.loopexit2249.loopexit ], [ %.sroa.0.sroa.49.019762216, %bb.cf ], [ %.sroa.0.sroa.49.019762216, %bb.ce ], [ %.sroa.0.sroa.49.019762216, %bb.cd ], [ %.sroa.0.sroa.49.019762216, %bb.cc ], [ %.sroa.0.sroa.49.019762216, %bb.cb ], [ %.sroa.0.sroa.49.019762216, %bb.bu ], [ %.sroa.0.sroa.49.019762214, %.preheader ], [ %.sroa.0.sroa.49.019762216, %.preheader2248 ], [ %.sroa.0.sroa.49.019762216, %.preheader2252 ], [ %.sroa.0.sroa.49.019762216, %.preheader2256 ] ; 2 uses
  %.sroa.0.sroa.48.019772208 = phi i8 [ %.sroa.0.sroa.48.019772207, %bb.ad ], [ %.sroa.0.sroa.48.019772207, %.loopexit2249.loopexit3180 ], [ %.sroa.0.sroa.48.019772209, %.lr.ph3145.peel ], [ %.sroa.0.sroa.48.019772207, %.loopexit2249.loopexit ], [ %.sroa.0.sroa.48.019772209, %bb.cf ], [ %.sroa.0.sroa.48.019772209, %bb.ce ], [ %.sroa.0.sroa.48.019772209, %bb.cd ], [ %.sroa.0.sroa.48.019772209, %bb.cc ], [ %.sroa.0.sroa.48.019772209, %bb.cb ], [ %.sroa.0.sroa.48.019772209, %bb.bu ], [ %.sroa.0.sroa.48.019772207, %.preheader ], [ %.sroa.0.sroa.48.019772209, %.preheader2248 ], [ %.sroa.0.sroa.48.019772209, %.preheader2252 ], [ %.sroa.0.sroa.48.019772209, %.preheader2256 ] ; 2 uses
  %.sroa.0.sroa.45.019782201 = phi i8 [ %.sroa.0.sroa.45.019782200, %bb.ad ], [ %.sroa.0.sroa.45.019782200, %.loopexit2249.loopexit3180 ], [ %.sroa.0.sroa.45.019782202, %.lr.ph3145.peel ], [ %.sroa.0.sroa.45.019782200, %.loopexit2249.loopexit ], [ %.sroa.0.sroa.45.019782202, %bb.cf ], [ %.sroa.0.sroa.45.019782202, %bb.ce ], [ %.sroa.0.sroa.45.019782202, %bb.cd ], [ %.sroa.0.sroa.45.019782202, %bb.cc ], [ %.sroa.0.sroa.45.019782202, %bb.cb ], [ %.sroa.0.sroa.45.019782202, %bb.bu ], [ %.sroa.0.sroa.45.019782200, %.preheader ], [ %.sroa.0.sroa.45.019782202, %.preheader2248 ], [ %.sroa.0.sroa.45.019782202, %.preheader2252 ], [ %.sroa.0.sroa.45.019782202, %.preheader2256 ] ; 2 uses
  %.sroa.0.sroa.0.019792194 = phi i8 [ %.sroa.0.sroa.0.019792193, %bb.ad ], [ %.sroa.0.sroa.0.019792193, %.loopexit2249.loopexit3180 ], [ %.sroa.0.sroa.0.019792195, %.lr.ph3145.peel ], [ %.sroa.0.sroa.0.019792193, %.loopexit2249.loopexit ], [ %.sroa.0.sroa.0.019792195, %bb.cf ], [ %.sroa.0.sroa.0.019792195, %bb.ce ], [ %.sroa.0.sroa.0.019792195, %bb.cd ], [ %.sroa.0.sroa.0.019792195, %bb.cc ], [ %.sroa.0.sroa.0.019792195, %bb.cb ], [ %.sroa.0.sroa.0.019792195, %bb.bu ], [ %.sroa.0.sroa.0.019792193, %.preheader ], [ %.sroa.0.sroa.0.019792195, %.preheader2248 ], [ %.sroa.0.sroa.0.019792195, %.preheader2252 ], [ %.sroa.0.sroa.0.019792195, %.preheader2256 ] ; 2 uses
  %.sroa.50.sroa.49.019802187 = phi i8 [ %.sroa.50.sroa.49.019802186, %bb.ad ], [ %.sroa.50.sroa.49.019802186, %.loopexit2249.loopexit3180 ], [ %.sroa.50.sroa.49.019802188, %.lr.ph3145.peel ], [ %.sroa.50.sroa.49.019802186, %.loopexit2249.loopexit ], [ %.sroa.50.sroa.49.019802188, %bb.cf ], [ %.sroa.50.sroa.49.019802188, %bb.ce ], [ %.sroa.50.sroa.49.019802188, %bb.cd ], [ %.sroa.50.sroa.49.019802188, %bb.cc ], [ %.sroa.50.sroa.49.019802188, %bb.cb ], [ %.sroa.50.sroa.49.019802188, %bb.bu ], [ %.sroa.50.sroa.49.019802186, %.preheader ], [ %.sroa.50.sroa.49.019802188, %.preheader2248 ], [ %.sroa.50.sroa.49.019802188, %.preheader2252 ], [ %.sroa.50.sroa.49.019802188, %.preheader2256 ] ; 2 uses
  %.sroa.50.sroa.48.019812180 = phi i8 [ %.sroa.50.sroa.48.019812179, %bb.ad ], [ %.sroa.50.sroa.48.019812179, %.loopexit2249.loopexit3180 ], [ %.sroa.50.sroa.48.019812181, %.lr.ph3145.peel ], [ %.sroa.50.sroa.48.019812179, %.loopexit2249.loopexit ], [ %.sroa.50.sroa.48.019812181, %bb.cf ], [ %.sroa.50.sroa.48.019812181, %bb.ce ], [ %.sroa.50.sroa.48.019812181, %bb.cd ], [ %.sroa.50.sroa.48.019812181, %bb.cc ], [ %.sroa.50.sroa.48.019812181, %bb.cb ], [ %.sroa.50.sroa.48.019812181, %bb.bu ], [ %.sroa.50.sroa.48.019812179, %.preheader ], [ %.sroa.50.sroa.48.019812181, %.preheader2248 ], [ %.sroa.50.sroa.48.019812181, %.preheader2252 ], [ %.sroa.50.sroa.48.019812181, %.preheader2256 ] ; 2 uses
  %.sroa.50.sroa.45.019822173 = phi i8 [ %.sroa.50.sroa.45.019822172, %bb.ad ], [ %.sroa.50.sroa.45.019822172, %.loopexit2249.loopexit3180 ], [ %.sroa.50.sroa.45.019822174, %.lr.ph3145.peel ], [ %.sroa.50.sroa.45.019822172, %.loopexit2249.loopexit ], [ %.sroa.50.sroa.45.019822174, %bb.cf ], [ %.sroa.50.sroa.45.019822174, %bb.ce ], [ %.sroa.50.sroa.45.019822174, %bb.cd ], [ %.sroa.50.sroa.45.019822174, %bb.cc ], [ %.sroa.50.sroa.45.019822174, %bb.cb ], [ %.sroa.50.sroa.45.019822174, %bb.bu ], [ %.sroa.50.sroa.45.019822172, %.preheader ], [ %.sroa.50.sroa.45.019822174, %.preheader2248 ], [ %.sroa.50.sroa.45.019822174, %.preheader2252 ], [ %.sroa.50.sroa.45.019822174, %.preheader2256 ] ; 2 uses
  %.sroa.50.sroa.0.019832166 = phi i8 [ %.sroa.50.sroa.0.019832165, %bb.ad ], [ %.sroa.50.sroa.0.019832165, %.loopexit2249.loopexit3180 ], [ %.sroa.50.sroa.0.019832167, %.lr.ph3145.peel ], [ %.sroa.50.sroa.0.019832165, %.loopexit2249.loopexit ], [ %.sroa.50.sroa.0.019832167, %bb.cf ], [ %.sroa.50.sroa.0.019832167, %bb.ce ], [ %.sroa.50.sroa.0.019832167, %bb.cd ], [ %.sroa.50.sroa.0.019832167, %bb.cc ], [ %.sroa.50.sroa.0.019832167, %bb.cb ], [ %.sroa.50.sroa.0.019832167, %bb.bu ], [ %.sroa.50.sroa.0.019832165, %.preheader ], [ %.sroa.50.sroa.0.019832167, %.preheader2248 ], [ %.sroa.50.sroa.0.019832167, %.preheader2252 ], [ %.sroa.50.sroa.0.019832167, %.preheader2256 ] ; 2 uses
end_hunk_0
