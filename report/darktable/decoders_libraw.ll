Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/decoders_libraw?download=true
inline.NumInlined: 308
inline.NumDeleted: 132
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6LibRaw17samsung3_load_rawEv:bb.a
  %i.ns = phi i32 [ %i.nr, %bb.ac ], [ %i.nq, %bb.ab ], [ %i.no, %bb.aa ], [ %i.nm, %bb.z ] ; 2 uses
  %i.nt = load i32, ptr %i.ca, align 4, !tbaa !102
  store i32 %i.nt, ptr %i.bz, align 8, !tbaa !102
  store i32 %i.ns, ptr %i.ca, align 4, !tbaa !102
  %i.nu = icmp ugt i32 %i.ns, %i.al
  br i1 %i.nu, label %bb.ao, label %.preheader.3

.preheader.3:                                     ; preds = %.thread322, %bb.ad
  switch i32 %i.na, label %.thread323 [
    i32 0, label %bb.ah
    i32 1, label %bb.ag
    i32 2, label %bb.af
    i32 3, label %bb.ae
  ]

.thread323:                                       ; preds = %.preheader.3
  %i.nv = load i32, ptr %i.cj, align 4, !tbaa !102
  store i32 %i.nv, ptr %i.ci, align 8, !tbaa !102
  store i32 0, ptr %i.cj, align 4, !tbaa !102
  br label %bb.ap

bb.ae:                                            ; preds = %.preheader.3
  %i.nw = tail call noundef i32 @_ZN6LibRaw11ph1_bithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 4, ptr noundef null) ; 2 uses
  store i32 %i.nw, ptr %i.aw, align 4, !tbaa !102
  br label %bb.ai

bb.af:                                            ; preds = %.preheader.3
  %i.nx = load i32, ptr %i.cd, align 8, !tbaa !102
  %i.ny = add i32 %i.nx, -1                       ; 2 uses
  store i32 %i.ny, ptr %i.ax, align 4, !tbaa !102
  br label %bb.ai

bb.ag:                                            ; preds = %.preheader.3
  %i.nz = load i32, ptr %i.ce, align 8, !tbaa !102
  %i.oa = add i32 %i.nz, 1                        ; 2 uses
  store i32 %i.oa, ptr %i.ay, align 4, !tbaa !102
  br label %bb.ai

bb.ah:                                            ; preds = %.preheader.3
  %i.ob = load i32, ptr %i.cf, align 8, !tbaa !102 ; 2 uses
  store i32 %i.ob, ptr %i.az, align 4, !tbaa !102
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae
  %i.oc = phi i32 [ %i.ob, %bb.ah ], [ %i.oa, %bb.ag ], [ %i.ny, %bb.af ], [ %i.nw, %bb.ae ] ; 2 uses
  %i.od = load i32, ptr %i.ch, align 4, !tbaa !102
  store i32 %i.od, ptr %i.cg, align 8, !tbaa !102
  store i32 %i.oc, ptr %i.ch, align 4, !tbaa !102
  %i.oe = icmp ugt i32 %i.oc, %i.al
  br i1 %i.oe, label %bb.ao, label %bb.ap

.thread324:                                       ; preds = %.preheader.preheader
  %i.of = load i32, ptr %spec.select.sroa.sel357.sroa.sel, align 4, !tbaa !102
  store i32 %i.of, ptr %spec.select.sroa.sel357, align 16, !tbaa !102
  store i32 0, ptr %spec.select.sroa.sel357.sroa.sel, align 4, !tbaa !102
  br label %.preheader.1

bb.aj:                                            ; preds = %.preheader.preheader
  %i.og = load i32, ptr %spec.select.sroa.sel337, align 16, !tbaa !102
  br label %bb.an

bb.ak:                                            ; preds = %.preheader.preheader
  %i.oh = load i32, ptr %spec.select.sroa.sel334, align 16, !tbaa !102
  %i.oi = add i32 %i.oh, 1
  br label %bb.an

bb.al:                                            ; preds = %.preheader.preheader
  %i.oj = load i32, ptr %spec.select.sroa.sel, align 16, !tbaa !102
  %i.ok = add i32 %i.oj, -1
  br label %bb.an

bb.am:                                            ; preds = %.preheader.preheader
  %i.ol = tail call noundef i32 @_ZN6LibRaw11ph1_bithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 4, ptr noundef null)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj
  %.sink = phi i32 [ %i.ol, %bb.am ], [ %i.ok, %bb.al ], [ %i.oi, %bb.ak ], [ %i.og, %bb.aj ] ; 3 uses
  store i32 %.sink, ptr %i.b, align 16, !tbaa !102
  %i.om = load i32, ptr %spec.select.sroa.sel340.sroa.sel, align 4, !tbaa !102
  store i32 %i.om, ptr %spec.select.sroa.sel340, align 16, !tbaa !102
  store i32 %.sink, ptr %spec.select.sroa.sel340.sroa.sel, align 4, !tbaa !102
  %i.on = icmp ugt i32 %.sink, %i.al
  br i1 %i.on, label %bb.ao, label %.preheader.1

bb.ao:                                            ; preds = %bb.ai, %bb.ad, %bb.y, %bb.an
  %i.oo = tail call ptr @__cxa_allocate_exception(i64 4) #14 ; 2 uses
  store i32 5, ptr %i.oo, align 16, !tbaa !76
  tail call void @__cxa_throw(ptr nonnull %i.oo, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #15
  unreachable

bb.ap:                                            ; preds = %bb.ai, %.thread323, %bb.t
  %i.op = shl nsw i32 %.2, 1
  %i.oq = or disjoint i32 %i.op, 1
  br label %bb.ar

bb.aq:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.or = add nuw nsw i32 %.0112145, 16           ; 2 uses
  %i.os = load i16, ptr %i.f, align 2, !tbaa !78
  %i.ot = zext i16 %i.os to i32
  %i.ou = add nsw i32 %i.ot, -15
  %i.ov = icmp slt i32 %i.or, %i.ou
  br i1 %i.ov, label %bb.e, label %._crit_edge, !llvm.loop !202

bb.ar:                                            ; preds = %bb.ap, %bb.aw
  %.0142 = phi i32 [ 0, %bb.ap ], [ %i.qg, %bb.aw ] ; 5 uses
  %i.ow = lshr i32 %.0142, 2
  %i.ox = zext nneg i32 %i.ow to i64
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ox
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !102 ; 2 uses
  %i.pa = add i32 %i.oz, -1
  %i.pb = shl nuw i32 1, %i.pa                    ; 2 uses
  %i.pc = tail call noundef i32 @_ZN6LibRaw11ph1_bithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.oz, ptr noundef null)
  %i.pd = xor i32 %i.pb, %i.pc
  %i.pe = sub i32 %i.pd, %i.pb
  %i.pf = mul i32 %i.pe, %i.oq
  %i.pg = add i32 %i.pf, %.2
  %i.ph = shl nuw nsw i32 %.0142, 1
  %i.pi = and i32 %i.ph, 14                       ; 2 uses
  br i1 %.not127, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.pj = or disjoint i32 %.0112145, %i.pi
  %i.pk = lshr i32 %.0142, 3
  %reass.sub = sub nsw i32 %i.pj, %i.pk
  %i.pl = add i32 %reass.sub, 1
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.pm = lshr i32 %.0142, 3
  %i.pn = or i32 %i.pm, %i.pi
  %i.po = or i32 %i.pn, %.0112145
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.pp = phi i32 [ %i.pl, %bb.as ], [ %i.po, %bb.at ] ; 2 uses
  %i.pq = sext i32 %i.pp to i64
  %.not126 = icmp sgt i64 %invariant.op, %i.pq
  br i1 %.not126, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.pr = tail call ptr @__cxa_allocate_exception(i64 4) #14 ; 2 uses
  store i32 5, ptr %i.pr, align 16, !tbaa !76
  tail call void @__cxa_throw(ptr nonnull %i.pr, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #15
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.ps = load ptr, ptr %i.aj, align 8, !tbaa !77
  %i.pt = load i16, ptr %i.f, align 2, !tbaa !78
  %i.pu = zext i16 %i.pt to i32
  %i.pv = mul nuw nsw i32 %i.bv, %i.pu
  %i.pw = add nsw i32 %i.pv, %i.pp
  %i.px = sext i32 %i.pw to i64
  %i.py = getelementptr inbounds [2 x i8], ptr %i.ps, i64 %i.px ; 2 uses
  %i.pz = load i16, ptr %i.py, align 2, !tbaa !92
  %i.qa = zext i16 %i.pz to i32
  %i.qb = add nsw i32 %i.pg, %i.qa                ; 2 uses
  %i.qc = icmp slt i32 %i.qb, 0
  %i.qd = tail call i32 @llvm.smin.i32(i32 %i.qb, i32 %i.t)
  %i.qe = trunc i32 %i.qd to i16
  %i.qf = select i1 %i.qc, i16 0, i16 %i.qe
  store i16 %i.qf, ptr %i.py, align 2, !tbaa !92
  %i.qg = add nuw nsw i32 %.0142, 1               ; 2 uses
  %exitcond159.not = icmp eq i32 %i.qg, 16
  br i1 %exitcond159.not, label %bb.aq, label %bb.ar, !llvm.loop !203
}

declare noundef i32 @_ZN6LibRaw11ph1_bithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr.i20 = freeze i64 %i.c                      ; 2 uses
  %i.d = ashr exact i64 %.fr.i20, 4               ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph49

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEET_SA_SA_T0_.exit
  %i.j = icmp eq i64 %i.ck, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph49, !llvm.loop !208

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i23.lcssa = phi i64 [ %.fr.i20, %.lr.ph ], [ %.fr.i, %bb.b ] ; 2 uses
  %storemerge21.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  %i.k = lshr i64 %.fr.i23.lcssa, 4               ; 2 uses
  %i.l = add nsw i64 %i.k, -2                     ; 2 uses
  %i.m = lshr i64 %i.l, 1                         ; 3 uses
  %i.n = add nsw i64 %i.k, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = and i64 %.fr.i23.lcssa, 16
  %i.q = icmp eq i64 %i.p, 0
  %i.r = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_.exit.i.i, %._crit_edge
  %.07.i.i = phi i64 [ %i.m, %._crit_edge ], [ %i.av, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_.exit.i.i ] ; 8 uses
  %i.u = getelementptr inbounds [16 x i8], ptr %0, i64 %.07.i.i ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !122
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !123  ; 2 uses
  %i.y = icmp slt i64 %.07.i.i, %i.o
  br i1 %i.y, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.037.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.07.i.i, %bb.c ] ; 2 uses
  %i.z = shl i64 %.037.i.i.i, 1                   ; 2 uses
  %i.aa = add i64 %i.z, 2                         ; 2 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %0, i64 %i.aa
  %i.ac = or disjoint i64 %i.z, 1                 ; 2 uses
  %i.ad = getelementptr inbounds [16 x i8], ptr %0, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !123
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !123
  %i.ai = icmp slt i64 %i.af, %i.ah
  %spec.select.i.i.i = select i1 %i.ai, i64 %i.ac, i64 %i.aa ; 4 uses
  %i.aj = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i
  %i.ak = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !tbaa.struct !124
  %i.al = icmp slt i64 %spec.select.i.i.i, %i.o
  br i1 %i.al, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !209

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.07.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.am = icmp eq i64 %.0.lcssa.i.i.i, %i.m
  %or.cond.i.i = select i1 %i.q, i1 %i.am, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !124
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.r, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.an = icmp sgt i64 %.1.i.i.i, %.07.i.i
  br i1 %i.an, label %.lr.ph.i.i.i.i11, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_.exit.i.i

.lr.ph.i.i.i.i11:                                 ; preds = %bb.e, %bb.f
  %.018.i.i.i.i = phi i64 [ %.0919.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.0919.in.i.i.i.i = add nsw i64 %.018.i.i.i.i, -1
  %.0919.i.i.i.i = sdiv i64 %.0919.in.i.i.i.i, 2  ; 4 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0919.i.i.i.i ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !123
  %i.ar = icmp slt i64 %i.aq, %i.x
  br i1 %i.ar, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i11
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.018.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !tbaa.struct !124
  %i.at = icmp sgt i64 %.0919.i.i.i.i, %.07.i.i
  br i1 %i.at, label %.lr.ph.i.i.i.i11, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_.exit.i.i, !llvm.loop !210

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i11, %bb.e
  %.0.lcssa.i.i.i.i10 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0919.i.i.i.i, %bb.f ], [ %.018.i.i.i.i, %.lr.ph.i.i.i.i11 ]
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i10 ; 2 uses
  store i32 %i.v, ptr %i.au, align 8, !tbaa !102
  %.sroa.225.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %i.x, ptr %.sroa.225.0..sroa_idx.i.i.i, align 8, !tbaa !114
  %.not.i.i = icmp eq i64 %.07.i.i, 0
  %i.av = add nsw i64 %.07.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !211

.lr.ph.i.i:                                       ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.aw, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_RT0_.exit.i.i ], [ %storemerge21.lcssa, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEElS2_NS0_5__ops15_Iter_less_iterEEvT_T0_SB_T1_T2_.exit.i.i ] ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -16 ; 4 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !122
  %i.ay = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !123 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !124
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.ba, %i.a                     ; 3 uses
  %i.bc = ashr exact i64 %i.bb, 4                 ; 3 uses
  %i.bd = add nsw i64 %i.bc, -1
  %i.be = lshr i64 %i.bd, 1
  %i.bf = icmp sgt i64 %i.bc, 2
  br i1 %i.bf, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.037.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.bg = shl i64 %.037.i.i.i.i, 1                ; 2 uses
  %i.bh = add i64 %i.bg, 2                        ; 2 uses
  %i.bi = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bh
  %i.bj = or disjoint i64 %i.bg, 1                ; 2 uses
  %i.bk = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !123
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !123
  %i.bp = icmp slt i64 %i.bm, %i.bo
  %spec.select.i.i.i.i = select i1 %i.bp, i64 %i.bj, i64 %i.bh ; 4 uses
  %i.bq = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.br = getelementptr inbounds [16 x i8], ptr %0, i64 %.037.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false), !tbaa.struct !124
  %i.bs = icmp slt i64 %spec.select.i.i.i.i, %i.be
  br i1 %i.bs, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !209

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.bt = and i64 %i.bb, 16
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bv = add nsw i64 %i.bc, -2
  %i.bw = ashr exact i64 %i.bv, 1
  %i.bx = icmp eq i64 %.0.lcssa.i.i.i.i, %i.bw
  br i1 %i.bx, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.by = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.bz = or disjoint i64 %i.by, 1                ; 2 uses
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bz
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i64 16, i1 false), !tbaa.struct !124
  br label %.lr.ph.i.i.i.i.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h, %.thread.i.i.i
  %.018.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.h ], [ %i.bz, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.i
  %.018.i.i.i.i.i = phi i64 [ %.0919.i.i89.i.i.i, %bb.i ], [ %.018.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0919.in.i.i.i.i.i = add nsw i64 %.018.i.i.i.i.i, -1
  %.0919.i.i89.i.i.i = lshr i64 %.0919.in.i.i.i.i.i, 1 ; 3 uses
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0919.i.i89.i.i.i ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !123
  %i.cf = icmp slt i64 %i.ce, %i.az
  br i1 %i.cf, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_RT0_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cg = getelementptr inbounds [16 x i8], ptr %0, i64 %.018.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i64 16, i1 false), !tbaa.struct !124
  %.not10.i.i.i = icmp eq i64 %.0919.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !210

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_RT0_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i, %bb.h
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.018.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.i ]
  %i.ch = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  store i32 %i.ax, ptr %i.ch, align 8, !tbaa !102
  %.sroa.225.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i64 %i.az, ptr %.sroa.225.0..sroa_idx.i.i.i.i, align 8, !tbaa !114
  %i.ci = icmp sgt i64 %i.bb, 16
  br i1 %i.ci, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_.exit, !llvm.loop !212

.lr.ph49:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2148 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02247 = phi i64 [ %i.ck, %bb.b ], [ %2, %.lr.ph ]
  %i.cj = phi i64 [ %i.dt, %bb.b ], [ %i.d, %.lr.ph ]
  %i.ck = add nsw i64 %.02247, -1                 ; 3 uses
  %i.cl = lshr i64 %i.cj, 1
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cl ; 5 uses
  %i.cn = getelementptr inbounds i8, ptr %storemerge2148, i64 -16 ; 4 uses
  %i.co = load i64, ptr %i.g, align 8, !tbaa !123 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 3 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !123 ; 3 uses
  %i.cr = icmp slt i64 %i.co, %i.cq
  %i.cs = getelementptr inbounds i8, ptr %storemerge2148, i64 -8 ; 3 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !123 ; 4 uses
  br i1 %i.cr, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph49
  %i.cu = icmp slt i64 %i.cq, %i.ct
  br i1 %i.cu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cv = load i32, ptr %0, align 8, !tbaa !122
  %i.cw = load i64, ptr %i.h, align 8, !tbaa !123
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i64 16, i1 false), !tbaa.struct !124
  store i32 %i.cv, ptr %i.cm, align 8, !tbaa !102
  store i64 %i.cw, ptr %i.cp, align 8, !tbaa !114
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.cx = icmp slt i64 %i.co, %i.ct
  %i.cy = load i32, ptr %0, align 8, !tbaa !122   ; 2 uses
  %i.cz = load i64, ptr %i.h, align 8, !tbaa !123 ; 2 uses
  br i1 %i.cx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i64 16, i1 false), !tbaa.struct !124
  store i32 %i.cy, ptr %i.cn, align 8, !tbaa !102
  store i64 %i.cz, ptr %i.cs, align 8, !tbaa !114
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !124
  store i32 %i.cy, ptr %i.f, align 8, !tbaa !102
  store i64 %i.cz, ptr %i.g, align 8, !tbaa !114
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph49
  %i.da = icmp slt i64 %i.co, %i.ct
  br i1 %i.da, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.db = load i32, ptr %0, align 8, !tbaa !122
  %i.dc = load i64, ptr %i.h, align 8, !tbaa !123
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !124
  store i32 %i.db, ptr %i.f, align 8, !tbaa !102
  store i64 %i.dc, ptr %i.g, align 8, !tbaa !114
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.dd = icmp slt i64 %i.cq, %i.ct
  %i.de = load i32, ptr %0, align 8, !tbaa !122   ; 2 uses
  %i.df = load i64, ptr %i.h, align 8, !tbaa !123 ; 2 uses
  br i1 %i.dd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i64 16, i1 false), !tbaa.struct !124
  store i32 %i.de, ptr %i.cn, align 8, !tbaa !102
  store i64 %i.df, ptr %i.cs, align 8, !tbaa !114
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i64 16, i1 false), !tbaa.struct !124
  store i32 %i.de, ptr %i.cm, align 8, !tbaa !102
  store i64 %i.df, ptr %i.cp, align 8, !tbaa !114
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i.preheader, %bb.v
  %.sroa.010.0.i.i = phi ptr [ %i.dk, %bb.v ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2148, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i.preheader ]
  %i.dg = load i64, ptr %i.h, align 8, !tbaa !123 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i ], [ %i.dk, %bb.t ] ; 9 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !123 ; 2 uses
  %i.dj = icmp slt i64 %i.di, %i.dg
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16 ; 2 uses
  br i1 %i.dj, label %bb.t, label %.preheader.i.i, !llvm.loop !213

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ] ; 3 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %i.dl = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !123
  %i.dn = icmp slt i64 %i.dg, %i.dm
  br i1 %i.dn, label %.preheader.i.i, label %bb.u, !llvm.loop !214

bb.u:                                             ; preds = %.preheader.i.i
  %i.do = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.do, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEET_SA_SA_T0_.exit

bb.v:                                             ; preds = %bb.u
  %i.dp = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %i.dq = load i32, ptr %.sroa.010.1.i.i, align 8, !tbaa !122
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, i64 16, i1 false), !tbaa.struct !124
  store i32 %i.dq, ptr %.sroa.0.1.i.i, align 8, !tbaa !102
  store i64 %i.di, ptr %i.dp, align 8, !tbaa !114
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_.exit.i, !llvm.loop !215

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEET_SA_SA_T0_.exit: ; preds = %bb.u
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_less_iterEEvT_SA_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2148, i64 noundef %i.ck)
  %i.dr = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.ds = sub i64 %i.dr, %i.a
  %.fr.i = freeze i64 %i.ds                       ; 2 uses
  %i.dt = ashr exact i64 %.fr.i, 4                ; 2 uses
  %i.du = icmp sgt i64 %i.dt, 16
  br i1 %i.du, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_.exit, !llvm.loop !208

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEET_SA_SA_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 256
  br i1 %i.d, label %.lr.ph.i, label %bb.e

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.sroa.09.021.i.idx = phi i64 [ 16, %.lr.ph.i ], [ %.sroa.09.021.i.add, %bb.d ] ; 3 uses
  %.pn20.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.09.021.i.ptr, %bb.d ] ; 2 uses
  %.sroa.09.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.021.i.idx ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !123  ; 5 uses
  %i.h = load i64, ptr %i.e, align 8, !tbaa !123
  %i.i = icmp slt i64 %i.g, %i.h
  %i.j = load i32, ptr %.sroa.09.021.i.ptr, align 8, !tbaa !122 ; 2 uses
  br i1 %i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i, label %bb.c

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i: ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.09.021.i.idx, i1 false)
  store i32 %i.j, ptr %0, align 8, !tbaa !102
  store i64 %i.g, ptr %i.e, align 8, !tbaa !114
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !123
  %i.m = icmp slt i64 %i.g, %i.l
  br i1 %i.m, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.05.08.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.09.021.i.ptr, %bb.c ] ; 3 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.05.08.i.i, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.08.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i, i64 16, i1 false), !tbaa.struct !124
  %i.n = getelementptr inbounds i8, ptr %.sroa.05.08.i.i, i64 -24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !123
  %i.p = icmp slt i64 %i.g, %i.o
  br i1 %i.p, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !216

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.09.021.i.ptr, %bb.c ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ] ; 2 uses
  store i32 %i.j, ptr %.sroa.05.0.lcssa.i.i, align 8, !tbaa !102
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i, i64 8
  store i64 %i.g, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !tbaa !114
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i
  %.sroa.09.021.i.add = add nuw nsw i64 %.sroa.09.021.i.idx, 16 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.09.021.i.add, 256
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, label %bb.b, !llvm.loop !217

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit: ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %.not4.i = icmp eq ptr %i.q, %1
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7
  %.sroa.0.05.i = phi ptr [ %i.aa, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7 ], [ %i.q, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit ] ; 6 uses
  %i.r = load i32, ptr %.sroa.0.05.i, align 8, !tbaa !122
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !123  ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %.sroa.0.05.i, i64 -8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !123
  %i.w = icmp slt i64 %i.t, %i.v
  br i1 %i.w, label %.lr.ph.i.i11, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7

.lr.ph.i.i11:                                     ; preds = %.lr.ph.i6, %.lr.ph.i.i11
  %.sroa.05.08.i.i12 = phi ptr [ %.sroa.0.0.i.i13, %.lr.ph.i.i11 ], [ %.sroa.0.05.i, %.lr.ph.i6 ] ; 3 uses
  %.sroa.0.0.i.i13 = getelementptr inbounds i8, ptr %.sroa.05.08.i.i12, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.08.i.i12, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i13, i64 16, i1 false), !tbaa.struct !124
  %i.x = getelementptr inbounds i8, ptr %.sroa.05.08.i.i12, i64 -24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !123
  %i.z = icmp slt i64 %i.t, %i.y
  br i1 %i.z, label %.lr.ph.i.i11, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7, !llvm.loop !216

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7: ; preds = %.lr.ph.i.i11, %.lr.ph.i6
  %.sroa.05.0.lcssa.i.i8 = phi ptr [ %.sroa.0.05.i, %.lr.ph.i6 ], [ %.sroa.0.0.i.i13, %.lr.ph.i.i11 ] ; 2 uses
  store i32 %i.r, ptr %.sroa.05.0.lcssa.i.i8, align 8, !tbaa !102
  %.sroa.44.0..sroa_idx.i.i9 = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i8, i64 8
  store i64 %i.t, ptr %.sroa.44.0..sroa_idx.i.i9, align 8, !tbaa !114
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 16 ; 2 uses
  %.not.i10 = icmp eq ptr %i.aa, %1
  br i1 %.not.i10, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, label %.lr.ph.i6, !llvm.loop !218

bb.e:                                             ; preds = %bb.a
  %i.ab = icmp eq ptr %0, %1
  br i1 %i.ab, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, label %.preheader.i14

.preheader.i14:                                   ; preds = %bb.e
  %.sroa.09.018.i15 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not19.i16 = icmp eq ptr %.sroa.09.018.i15, %1
  br i1 %.not19.i16, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %.preheader.i14
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i17
  %.sroa.09.021.i18 = phi ptr [ %.sroa.09.018.i15, %.lr.ph.i17 ], [ %.sroa.09.0.i23, %bb.i ] ; 7 uses
  %.pn20.i19 = phi ptr [ %0, %.lr.ph.i17 ], [ %.sroa.09.021.i18, %bb.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn20.i19, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !123 ; 5 uses
  %i.af = load i64, ptr %i.ac, align 8, !tbaa !123
  %i.ag = icmp slt i64 %i.ae, %i.af
  %i.ah = load i32, ptr %.sroa.09.021.i18, align 8, !tbaa !122 ; 2 uses
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = ptrtoint ptr %.sroa.09.021.i18 to i64
  %i.aj = sub i64 %i.ai, %i.b                     ; 2 uses
  %i.ak = ashr exact i64 %i.aj, 4                 ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 0
  br i1 %i.al, label %.lr.ph.i.i.i.i.i.preheader.i29, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i28

.lr.ph.i.i.i.i.i.preheader.i29:                   ; preds = %bb.g
  %i.am = getelementptr i8, ptr %.pn20.i19, i64 32
  %i.an = mul nsw i64 %i.ak, -16                  ; 2 uses
  %scevgep.i30 = getelementptr i8, ptr %i.am, i64 %i.an
  %scevgep23.i31 = getelementptr i8, ptr %.sroa.09.021.i18, i64 %i.an
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i30, ptr align 8 %scevgep23.i31, i64 %i.aj, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i28

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i28: ; preds = %.lr.ph.i.i.i.i.i.preheader.i29, %bb.g
  store i32 %i.ah, ptr %0, align 8, !tbaa !102
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !114
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn20.i19, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !123
  %i.aq = icmp slt i64 %i.ae, %i.ap
  br i1 %i.aq, label %.lr.ph.i.i25, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i20

.lr.ph.i.i25:                                     ; preds = %bb.h, %.lr.ph.i.i25
  %.sroa.05.08.i.i26 = phi ptr [ %.sroa.0.0.i.i27, %.lr.ph.i.i25 ], [ %.sroa.09.021.i18, %bb.h ] ; 3 uses
  %.sroa.0.0.i.i27 = getelementptr inbounds i8, ptr %.sroa.05.08.i.i26, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.08.i.i26, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i27, i64 16, i1 false), !tbaa.struct !124
  %i.ar = getelementptr inbounds i8, ptr %.sroa.05.08.i.i26, i64 -24
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !123
  %i.at = icmp slt i64 %i.ae, %i.as
  br i1 %i.at, label %.lr.ph.i.i25, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i20, !llvm.loop !216

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i20: ; preds = %.lr.ph.i.i25, %bb.h
  %.sroa.05.0.lcssa.i.i21 = phi ptr [ %.sroa.09.021.i18, %bb.h ], [ %.sroa.0.0.i.i27, %.lr.ph.i.i25 ] ; 2 uses
  store i32 %i.ah, ptr %.sroa.05.0.lcssa.i.i21, align 8, !tbaa !102
  %.sroa.44.0..sroa_idx.i.i22 = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i21, i64 8
  store i64 %i.ae, ptr %.sroa.44.0..sroa_idx.i.i22, align 8, !tbaa !114
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i20, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i28
  %.sroa.09.0.i23 = getelementptr inbounds nuw i8, ptr %.sroa.09.021.i18, i64 16 ; 2 uses
  %.not.i24 = icmp eq ptr %.sroa.09.0.i23, %1
  br i1 %.not.i24, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit, label %bb.f, !llvm.loop !217

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit: ; preds = %bb.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i7, %.preheader.i14, %bb.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP13p1_row_info_tSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.bswap.v8i32(<8 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <5 x i8> @llvm.masked.load.v5i8.p0(ptr captures(none), <5 x i1>, <5 x i8>) #12
end_hunk_0
