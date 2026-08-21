Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/jiff-40853fb6ac434a7c.jiff.3ee8fab6f2ec3df8-cgu.08?download=true
inline.NumInlined: 273
inline.NumDeleted: 143
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort8_stableNtNtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB19_NtNtBa_3cmp10PartialOrd2ltEB1j_:.lr.ph.i
  %i.cf = zext i1 %i.cb to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cf ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ci = tail call noundef i8 @_RNvXs8_NtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5innerNtB5_12ZoneInfoNameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aj) ; 2 uses
  %.not.i.i24.i = icmp ne i8 %i.ci, -2
  %i.cj = icmp slt i8 %i.ci, 0
  %.sroa.0.0.i.i25.i = and i1 %.not.i.i24.i, %i.cj ; 3 uses
  %..i.i = select i1 %.sroa.0.0.i.i25.i, ptr %i.aj, ptr %i.bw
  %i.ck = xor i1 %.sroa.0.0.i.i25.i, true
  %i.cl = load i64, ptr %..i.i, align 8, !alias.scope !118, !noalias !126
  store i64 %i.cl, ptr %i.by, align 8, !noalias !130
  %.neg.i.i = sext i1 %i.ck to i64
  %i.cm = getelementptr [8 x i8], ptr %i.bw, i64 %.neg.i.i ; 3 uses
  %.neg15.i.i = sext i1 %.sroa.0.0.i.i25.i to i64
  %i.cn = getelementptr [8 x i8], ptr %i.aj, i64 %.neg15.i.i ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cp = tail call noundef i8 @_RNvXs8_NtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5innerNtB5_12ZoneInfoNameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ce, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cg) ; 2 uses
  %.not.i.i.i11.1 = icmp ne i8 %i.cp, -2
  %i.cq = icmp slt i8 %i.cp, 0
  %.sroa.0.0.i.i.i12.1 = and i1 %.not.i.i.i11.1, %i.cq ; 3 uses
  %..i23.i.1 = select i1 %.sroa.0.0.i.i.i12.1, ptr %i.ce, ptr %i.cg
  %i.cr = xor i1 %.sroa.0.0.i.i.i12.1, true
  %i.cs = load i64, ptr %..i23.i.1, align 8, !alias.scope !118, !noalias !121
  store i64 %i.cs, ptr %i.ch, align 8, !noalias !125
  %i.ct = zext i1 %.sroa.0.0.i.i.i12.1 to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.ct ; 3 uses
  %i.cv = zext i1 %i.cr to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cv ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cy = tail call noundef i8 @_RNvXs8_NtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5innerNtB5_12ZoneInfoNameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cn) ; 2 uses
  %.not.i.i24.i.1 = icmp ne i8 %i.cy, -2
  %i.cz = icmp slt i8 %i.cy, 0
  %.sroa.0.0.i.i25.i.1 = and i1 %.not.i.i24.i.1, %i.cz ; 3 uses
  %..i.i.1 = select i1 %.sroa.0.0.i.i25.i.1, ptr %i.cn, ptr %i.cm
  %i.da = xor i1 %.sroa.0.0.i.i25.i.1, true
  %i.db = load i64, ptr %..i.i.1, align 8, !alias.scope !118, !noalias !126
  store i64 %i.db, ptr %i.co, align 8, !noalias !130
  %.neg.i.i.1 = sext i1 %i.da to i64
  %i.dc = getelementptr [8 x i8], ptr %i.cm, i64 %.neg.i.i.1 ; 3 uses
  %.neg15.i.i.1 = sext i1 %.sroa.0.0.i.i25.i.1 to i64
  %i.dd = getelementptr [8 x i8], ptr %i.cn, i64 %.neg15.i.i.1 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.df = tail call noundef i8 @_RNvXs8_NtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5innerNtB5_12ZoneInfoNameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cw) ; 2 uses
  %.not.i.i.i11.2 = icmp ne i8 %i.df, -2
  %i.dg = icmp slt i8 %i.df, 0
  %.sroa.0.0.i.i.i12.2 = and i1 %.not.i.i.i11.2, %i.dg ; 3 uses
  %..i23.i.2 = select i1 %.sroa.0.0.i.i.i12.2, ptr %i.cu, ptr %i.cw
  %i.dh = xor i1 %.sroa.0.0.i.i.i12.2, true
  %i.di = load i64, ptr %..i23.i.2, align 8, !alias.scope !118, !noalias !121
  store i64 %i.di, ptr %i.cx, align 8, !noalias !125
  %i.dj = zext i1 %.sroa.0.0.i.i.i12.2 to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.dj ; 3 uses
  %i.dl = zext i1 %i.dh to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.dl ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.do = tail call noundef i8 @_RNvXs8_NtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5innerNtB5_12ZoneInfoNameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dd) ; 2 uses
  %.not.i.i24.i.2 = icmp ne i8 %i.do, -2
  %i.dp = icmp slt i8 %i.do, 0
  %.sroa.0.0.i.i25.i.2 = and i1 %.not.i.i24.i.2, %i.dp ; 3 uses
  %..i.i.2 = select i1 %.sroa.0.0.i.i25.i.2, ptr %i.dd, ptr %i.dc
  %i.dq = xor i1 %.sroa.0.0.i.i25.i.2, true
  %i.dr = load i64, ptr %..i.i.2, align 8, !alias.scope !118, !noalias !126
  store i64 %i.dr, ptr %i.de, align 8, !noalias !130
  %.neg.i.i.2 = sext i1 %i.dq to i64
  %i.ds = getelementptr [8 x i8], ptr %i.dc, i64 %.neg.i.i.2 ; 3 uses
  %.neg15.i.i.2 = sext i1 %.sroa.0.0.i.i25.i.2 to i64
  %i.dt = getelementptr [8 x i8], ptr %i.dd, i64 %.neg15.i.i.2 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dv = tail call noundef i8 @_RNvXs8_NtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5innerNtB5_12ZoneInfoNameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dm) ; 2 uses
  %.not.i.i.i11.3 = icmp ne i8 %i.dv, -2
  %i.dw = icmp slt i8 %i.dv, 0
  %.sroa.0.0.i.i.i12.3 = and i1 %.not.i.i.i11.3, %i.dw ; 3 uses
  %..i23.i.3 = select i1 %.sroa.0.0.i.i.i12.3, ptr %i.dk, ptr %i.dm
  %i.dx = xor i1 %.sroa.0.0.i.i.i12.3, true
  %i.dy = load i64, ptr %..i23.i.3, align 8, !alias.scope !118, !noalias !121
  store i64 %i.dy, ptr %i.dn, align 8, !noalias !125
  %i.dz = zext i1 %.sroa.0.0.i.i.i12.3 to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dz
  %i.eb = zext i1 %i.dx to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.eb
  %i.ed = tail call noundef i8 @_RNvXs8_NtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5innerNtB5_12ZoneInfoNameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ds, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dt) ; 2 uses
  %.not.i.i24.i.3 = icmp ne i8 %i.ed, -2
  %i.ee = icmp slt i8 %i.ed, 0
  %.sroa.0.0.i.i25.i.3 = and i1 %.not.i.i24.i.3, %i.ee ; 3 uses
  %..i.i.3 = select i1 %.sroa.0.0.i.i25.i.3, ptr %i.dt, ptr %i.ds
  %i.ef = xor i1 %.sroa.0.0.i.i25.i.3, true
  %i.eg = load i64, ptr %..i.i.3, align 8, !alias.scope !118, !noalias !126
  store i64 %i.eg, ptr %i.du, align 8, !noalias !130
  %.neg.i.i.3 = sext i1 %i.ef to i64
  %i.eh = getelementptr [8 x i8], ptr %i.ds, i64 %.neg.i.i.3
  %.neg15.i.i.3 = sext i1 %.sroa.0.0.i.i25.i.3 to i64
  %i.ei = getelementptr [8 x i8], ptr %i.dt, i64 %.neg15.i.i.3
  %i.ej = getelementptr i8, ptr %i.ei, i64 8
  %i.ek = getelementptr i8, ptr %i.eh, i64 8
  %i.el = icmp ne ptr %i.ec, %i.ej
  %i.em = icmp ne ptr %i.ea, %i.ek
  %or.cond.i = select i1 %i.el, i1 true, i1 %i.em, !prof !131
  br i1 %or.cond.i, label %bb.a, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1q_.exit, !prof !131

bb.a:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #21
  unreachable

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1q_.exit: ; preds = %.lr.ph.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB1m_NtNtBa_3cmp10PartialOrd2ltEB1w_(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 1152921504606846976) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.b, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %.not5 = icmp samesign eq i64 %2, %1
  br i1 %.not5, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1i_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1i_.exit
  %.sroa.0.06 = phi ptr [ %i.s, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1i_.exit ], [ %i.d, %.lr.ph.preheader ] ; 5 uses
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.06, i64 -8 ; 4 uses
  %i.f = call noundef i8 @_RNvXs8_NtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5innerNtB5_12ZoneInfoNameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.06, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e) ; 2 uses
  %.not.i.i.i = icmp ne i8 %i.f, -2
  %i.g = icmp slt i8 %i.f, 0
  %.sroa.0.0.i.i.i = and i1 %.not.i.i.i, %i.g
  br i1 %.sroa.0.0.i.i.i, label %bb.d, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1i_.exit

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = load ptr, ptr %.sroa.0.06, align 8, !nonnull !31, !noundef !31
  store ptr %i.h, ptr %i.a, align 8
  %i.i = load i64, ptr %i.e, align 8
  store i64 %i.i, ptr %.sroa.0.06, align 8
  %i.j = icmp eq ptr %i.e, %0
  br i1 %i.j, label %._crit_edge17, label %.lr.ph16

bb.e:                                             ; preds = %bb.f
  %i.k = load i64, ptr %i.m, align 8
  store i64 %i.k, ptr %.sroa.0.0.i14, align 8
  %i.l = icmp eq ptr %i.m, %0
  br i1 %i.l, label %._crit_edge17, label %.lr.ph16

.lr.ph16:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i14 = phi ptr [ %i.m, %bb.e ], [ %i.e, %bb.d ] ; 4 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i14, i64 -8 ; 4 uses
  %i.n = invoke noundef i8 @_RNvXs8_NtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5innerNtB5_12ZoneInfoNameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m)
          to label %bb.f unwind label %bb.g       ; 2 uses

bb.f:                                             ; preds = %.lr.ph16
  %.not.i.i8.i = icmp ne i8 %i.n, -2
  %i.o = icmp slt i8 %i.n, 0
  %.sroa.0.0.i.i9.i = and i1 %.not.i.i8.i, %i.o
  br i1 %.sroa.0.0.i.i9.i, label %bb.e, label %._crit_edge17

._crit_edge17:                                    ; preds = %bb.e, %bb.f, %bb.d
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i14, %bb.f ]
  %i.p = load i64, ptr %i.a, align 8, !noalias !132
  store i64 %i.p, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1i_.exit

bb.g:                                             ; preds = %.lr.ph16
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load i64, ptr %i.a, align 8, !noalias !137
  store i64 %i.r, ptr %.sroa.0.0.i14, align 8, !noalias !137
  resume { ptr, i32 } %i.q

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1i_.exit: ; preds = %.lr.ph, %._crit_edge17
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.s, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB1s_NtNtBa_3cmp10PartialOrd2ltEB1C_(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, ptr noalias nofree noundef nonnull readnone captures(none) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 11 uses
  %i.b = icmp samesign ult i64 %1, 2
  br i1 %i.b, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1q_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nuw nsw i64 %1, 16
  %i.d = icmp samesign ult i64 %3, %i.c
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = lshr i64 %1, 1                           ; 11 uses
  %i.f = icmp samesign ugt i64 %1, 15
  br i1 %i.f, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = icmp samesign ugt i64 %1, 7
  br i1 %i.g, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %1 ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort8_stableNtNtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB19_NtNtBa_3cmp10PartialOrd2ltEB1j_(ptr noundef %0, ptr noundef %2, ptr noundef %i.h)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort8_stableNtNtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB19_NtNtBa_3cmp10PartialOrd2ltEB1j_(ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = tail call noundef i8 @_RNvXs8_NtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5innerNtB5_12ZoneInfoNameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) ; 2 uses
  %.not.i.i.i = icmp ne i8 %i.m, -2
  %i.n = icmp slt i8 %i.m, 0
  %.sroa.0.0.i.i.i = and i1 %.not.i.i.i, %i.n     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = tail call noundef i8 @_RNvXs8_NtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5innerNtB5_12ZoneInfoNameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p) ; 2 uses
  %.not.i.i1.i = icmp ne i8 %i.q, -2
  %i.r = icmp slt i8 %i.q, 0
  %.sroa.0.0.i.i2.i = and i1 %.not.i.i1.i, %i.r   ; 2 uses
  %i.s = zext i1 %.sroa.0.0.i.i.i to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.s ; 3 uses
  %i.u = xor i1 %.sroa.0.0.i.i.i, true
  %i.v = zext i1 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.v ; 4 uses
  %i.x = select i1 %.sroa.0.0.i.i2.i, i64 3, i64 2
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.x ; 4 uses
  %i.z = select i1 %.sroa.0.0.i.i2.i, i64 2, i64 3
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.z ; 3 uses
  %i.ab = tail call noundef i8 @_RNvXs8_NtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5innerNtB5_12ZoneInfoNameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t) ; 2 uses
  %.not.i.i3.i = icmp ne i8 %i.ab, -2
  %i.ac = icmp slt i8 %i.ab, 0
  %.sroa.0.0.i.i4.i = and i1 %.not.i.i3.i, %i.ac  ; 3 uses
  %i.ad = tail call noundef i8 @_RNvXs8_NtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5innerNtB5_12ZoneInfoNameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.w) ; 2 uses
  %.not.i.i5.i = icmp ne i8 %i.ad, -2
  %i.ae = icmp slt i8 %i.ad, 0
  %.sroa.0.0.i.i6.i = and i1 %.not.i.i5.i, %i.ae  ; 3 uses
  %i.af = select i1 %.sroa.0.0.i.i4.i, ptr %i.y, ptr %i.t, !unpredictable !31
  %i.ag = select i1 %.sroa.0.0.i.i6.i, ptr %i.w, ptr %i.aa, !unpredictable !31
  %i.ah = select i1 %.sroa.0.0.i.i6.i, ptr %i.y, ptr %i.w, !unpredictable !31
  %i.ai = select i1 %.sroa.0.0.i.i4.i, ptr %i.t, ptr %i.ah, !unpredictable !31 ; 3 uses
  %i.aj = select i1 %.sroa.0.0.i.i4.i, ptr %i.w, ptr %i.y, !unpredictable !31
  %i.ak = select i1 %.sroa.0.0.i.i6.i, ptr %i.aa, ptr %i.aj, !unpredictable !31 ; 3 uses
  %i.al = tail call noundef i8 @_RNvXs8_NtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5innerNtB5_12ZoneInfoNameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai) ; 2 uses
  %.not.i.i7.i = icmp ne i8 %i.al, -2
  %i.am = icmp slt i8 %i.al, 0
  %.sroa.0.0.i.i8.i = and i1 %.not.i.i7.i, %i.am  ; 2 uses
  %i.an = select i1 %.sroa.0.0.i.i8.i, ptr %i.ak, ptr %i.ai, !unpredictable !31
  %i.ao = select i1 %.sroa.0.0.i.i8.i, ptr %i.ai, ptr %i.ak, !unpredictable !31
  %i.ap = load i64, ptr %i.af, align 8
  store i64 %i.ap, ptr %2, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load i64, ptr %i.an, align 8
  store i64 %i.ar, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = load i64, ptr %i.ao, align 8
  store i64 %i.at, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.av = load i64, ptr %i.ag, align 8
  store i64 %i.av, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e ; 8 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.e ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = tail call noundef i8 @_RNvXs8_NtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5innerNtB5_12ZoneInfoNameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ay, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aw) ; 2 uses
  %.not.i.i.i30 = icmp ne i8 %i.az, -2
  %i.ba = icmp slt i8 %i.az, 0
  %.sroa.0.0.i.i.i31 = and i1 %.not.i.i.i30, %i.ba ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bd = tail call noundef i8 @_RNvXs8_NtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5innerNtB5_12ZoneInfoNameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bc) ; 2 uses
  %.not.i.i1.i32 = icmp ne i8 %i.bd, -2
  %i.be = icmp slt i8 %i.bd, 0
  %.sroa.0.0.i.i2.i33 = and i1 %.not.i.i1.i32, %i.be ; 2 uses
  %i.bf = zext i1 %.sroa.0.0.i.i.i31 to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bf ; 3 uses
  %i.bh = xor i1 %.sroa.0.0.i.i.i31, true
  %i.bi = zext i1 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bi ; 4 uses
  %i.bk = select i1 %.sroa.0.0.i.i2.i33, i64 3, i64 2
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bk ; 4 uses
  %i.bm = select i1 %.sroa.0.0.i.i2.i33, i64 2, i64 3
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bm ; 3 uses
  %i.bo = tail call noundef i8 @_RNvXs8_NtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5innerNtB5_12ZoneInfoNameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bg) ; 2 uses
  %.not.i.i3.i34 = icmp ne i8 %i.bo, -2
  %i.bp = icmp slt i8 %i.bo, 0
  %.sroa.0.0.i.i4.i35 = and i1 %.not.i.i3.i34, %i.bp ; 3 uses
  %i.bq = tail call noundef i8 @_RNvXs8_NtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5innerNtB5_12ZoneInfoNameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bj) ; 2 uses
  %.not.i.i5.i36 = icmp ne i8 %i.bq, -2
  %i.br = icmp slt i8 %i.bq, 0
  %.sroa.0.0.i.i6.i37 = and i1 %.not.i.i5.i36, %i.br ; 3 uses
  %i.bs = select i1 %.sroa.0.0.i.i4.i35, ptr %i.bl, ptr %i.bg, !unpredictable !31
  %i.bt = select i1 %.sroa.0.0.i.i6.i37, ptr %i.bj, ptr %i.bn, !unpredictable !31
  %i.bu = select i1 %.sroa.0.0.i.i6.i37, ptr %i.bl, ptr %i.bj, !unpredictable !31
  %i.bv = select i1 %.sroa.0.0.i.i4.i35, ptr %i.bg, ptr %i.bu, !unpredictable !31 ; 3 uses
  %i.bw = select i1 %.sroa.0.0.i.i4.i35, ptr %i.bj, ptr %i.bl, !unpredictable !31
  %i.bx = select i1 %.sroa.0.0.i.i6.i37, ptr %i.bn, ptr %i.bw, !unpredictable !31 ; 3 uses
  %i.by = tail call noundef i8 @_RNvXs8_NtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5innerNtB5_12ZoneInfoNameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bv) ; 2 uses
  %.not.i.i7.i38 = icmp ne i8 %i.by, -2
  %i.bz = icmp slt i8 %i.by, 0
  %.sroa.0.0.i.i8.i39 = and i1 %.not.i.i7.i38, %i.bz ; 2 uses
  %i.ca = select i1 %.sroa.0.0.i.i8.i39, ptr %i.bx, ptr %i.bv, !unpredictable !31
  %i.cb = select i1 %.sroa.0.0.i.i8.i39, ptr %i.bv, ptr %i.bx, !unpredictable !31
  %i.cc = load i64, ptr %i.bs, align 8
  store i64 %i.cc, ptr %i.ax, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ce = load i64, ptr %i.ca, align 8
  store i64 %i.ce, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.cg = load i64, ptr %i.cb, align 8
  store i64 %i.cg, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.ci = load i64, ptr %i.bt, align 8
  store i64 %i.ci, ptr %i.ch, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.cj = load i64, ptr %0, align 8
  store i64 %i.cj, ptr %2, align 8
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.e
  %i.cm = load i64, ptr %i.ck, align 8
  store i64 %i.cm, ptr %i.cl, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.sroa.0.0 = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ] ; 3 uses
  %i.cn = icmp samesign ult i64 %.sroa.0.0, %i.e
  br i1 %i.cn, label %.noexc47, label %.loopexit51.1

.noexc47.1:                                       ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1i_.exit, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1i_.exit.1
  %.sroa.05.057.1 = phi i64 [ %i.dd, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1i_.exit.1 ], [ %.sroa.0.0, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1i_.exit ] ; 4 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.057.1
  %.idx99 = shl nuw nsw i64 %.sroa.05.057.1, 3
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 %.idx99 ; 5 uses
  %i.cq = load i64, ptr %i.co, align 8
  store i64 %i.cq, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds i8, ptr %i.cp, i64 -8 ; 3 uses
  %i.cs = call noundef i8 @_RNvXs8_NtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5innerNtB5_12ZoneInfoNameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cr) ; 2 uses
  %.not.i.i.i44.1 = icmp ne i8 %i.cs, -2
  %i.ct = icmp slt i8 %i.cs, 0
  %.sroa.0.0.i.i.i45.1 = and i1 %.not.i.i.i44.1, %i.ct
  br i1 %.sroa.0.0.i.i.i45.1, label %bb.j, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1i_.exit.1

bb.j:                                             ; preds = %.noexc47.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cu = load ptr, ptr %i.cp, align 8, !nonnull !31, !noundef !31
  store ptr %i.cu, ptr %i.a, align 8
  %i.cv = load i64, ptr %i.cr, align 8
  store i64 %i.cv, ptr %i.cp, align 8
  %i.cw = icmp eq i64 %.sroa.05.057.1, 1
  br i1 %i.cw, label %._crit_edge95, label %.lr.ph94

bb.k:                                             ; preds = %bb.l
  %i.cx = load i64, ptr %i.cz, align 8
  store i64 %i.cx, ptr %.sroa.0.0.i46.192, align 8
  %i.cy = icmp eq ptr %i.cz, %2
  br i1 %i.cy, label %._crit_edge95, label %.lr.ph94

.lr.ph94:                                         ; preds = %bb.j, %bb.k
  %.sroa.0.0.i46.192 = phi ptr [ %i.cz, %bb.k ], [ %i.cr, %bb.j ] ; 4 uses
  %i.cz = getelementptr inbounds i8, ptr %.sroa.0.0.i46.192, i64 -8 ; 4 uses
  %i.da = invoke noundef i8 @_RNvXs8_NtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5innerNtB5_12ZoneInfoNameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cz)
          to label %bb.l unwind label %.loopexit.split-lp64 ; 2 uses

bb.l:                                             ; preds = %.lr.ph94
  %.not.i.i8.i.1 = icmp ne i8 %i.da, -2
  %i.db = icmp slt i8 %i.da, 0
  %.sroa.0.0.i.i9.i.1 = and i1 %.not.i.i8.i.1, %i.db
  br i1 %.sroa.0.0.i.i9.i.1, label %bb.k, label %._crit_edge95

._crit_edge95:                                    ; preds = %bb.k, %bb.l, %bb.j
  %.sroa.0.0.i46.lcssa.1 = phi ptr [ %2, %bb.j ], [ %2, %bb.k ], [ %.sroa.0.0.i46.192, %bb.l ]
  %i.dc = load i64, ptr %i.a, align 8, !noalias !142
  store i64 %i.dc, ptr %.sroa.0.0.i46.lcssa.1, align 8, !noalias !142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1i_.exit.1

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1i_.exit.1: ; preds = %._crit_edge95, %.noexc47.1
  %i.dd = add i64 %.sroa.05.057.1, 1              ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.dd, %i.e
  br i1 %exitcond.1.not, label %.loopexit51.1, label %.noexc47.1

.loopexit51.1:                                    ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1i_.exit.1, %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.de = add nsw i64 %1, -1                      ; 2 uses
  %5 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.de
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.de
  %i.dg = getelementptr [8 x i8], ptr %2, i64 %i.e ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 -8
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.noexc42
  %i.di = getelementptr i8, ptr %i.eb, i64 8      ; 2 uses
  %i.dj = getelementptr i8, ptr %i.ea, i64 8
  %i.dk = and i64 %1, 1
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %bb.n, label %bb.m

.lr.ph.i:                                         ; preds = %.noexc42, %.loopexit51.1
  %.sroa.0.010.i = phi ptr [ %i.dr, %.noexc42 ], [ %0, %.loopexit51.1 ] ; 2 uses
  %.sroa.04.09.i = phi i64 [ %i.dm, %.noexc42 ], [ 0, %.loopexit51.1 ]
  %.sroa.06.08.i = phi ptr [ %i.du, %.noexc42 ], [ %2, %.loopexit51.1 ] ; 3 uses
  %.sroa.011.07.i = phi ptr [ %i.dw, %.noexc42 ], [ %i.dg, %.loopexit51.1 ] ; 3 uses
  %.sroa.015.06.i = phi ptr [ %i.eb, %.noexc42 ], [ %i.dh, %.loopexit51.1 ] ; 3 uses
  %.sroa.017.05.i = phi ptr [ %i.ea, %.noexc42 ], [ %i.df, %.loopexit51.1 ] ; 3 uses
  %.sroa.019.04.i = phi ptr [ %i.ec, %.noexc42 ], [ %5, %.loopexit51.1 ] ; 2 uses
  %i.dm = add nuw nsw i64 %.sroa.04.09.i, 1       ; 2 uses
  %i.dn = invoke noundef i8 @_RNvXs8_NtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5innerNtB5_12ZoneInfoNameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.011.07.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.06.08.i)
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i
  %.not.i.i.i40 = icmp ne i8 %i.dn, -2
  %i.do = icmp slt i8 %i.dn, 0
  %.sroa.0.0.i.i.i41 = and i1 %.not.i.i.i40, %i.do ; 3 uses
  %..i23.i = select i1 %.sroa.0.0.i.i.i41, ptr %.sroa.011.07.i, ptr %.sroa.06.08.i
  %i.dp = load i64, ptr %..i23.i, align 8, !alias.scope !147, !noalias !150
  store i64 %i.dp, ptr %.sroa.0.010.i, align 8, !noalias !154
  %i.dq = invoke noundef i8 @_RNvXs8_NtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5innerNtB5_12ZoneInfoNameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.017.05.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.015.06.i)
          to label %.noexc42 unwind label %.loopexit ; 2 uses

.noexc42:                                         ; preds = %.noexc
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 8 ; 2 uses
  %i.ds = xor i1 %.sroa.0.0.i.i.i41, true
  %i.dt = zext i1 %i.ds to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.08.i, i64 %i.dt ; 5 uses
  %i.dv = zext i1 %.sroa.0.0.i.i.i41 to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.07.i, i64 %i.dv ; 4 uses
  %.not.i.i24.i = icmp ne i8 %i.dq, -2
  %i.dx = icmp slt i8 %i.dq, 0
  %.sroa.0.0.i.i25.i = and i1 %.not.i.i24.i, %i.dx ; 3 uses
  %..i.i = select i1 %.sroa.0.0.i.i25.i, ptr %.sroa.015.06.i, ptr %.sroa.017.05.i
  %i.dy = xor i1 %.sroa.0.0.i.i25.i, true
  %i.dz = load i64, ptr %..i.i, align 8, !alias.scope !147, !noalias !155
  store i64 %i.dz, ptr %.sroa.019.04.i, align 8, !noalias !159
  %.neg.i.i = sext i1 %i.dy to i64
  %i.ea = getelementptr [8 x i8], ptr %.sroa.017.05.i, i64 %.neg.i.i ; 2 uses
  %.neg15.i.i = sext i1 %.sroa.0.0.i.i25.i to i64
  %i.eb = getelementptr [8 x i8], ptr %.sroa.015.06.i, i64 %.neg15.i.i ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %.sroa.019.04.i, i64 -8
  %exitcond.not.i = icmp eq i64 %i.dm, %i.e
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.m:                                             ; preds = %._crit_edge.i
  %i.ed = icmp ult ptr %i.du, %i.di               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.ed, ptr %i.du, ptr %i.dw
  %i.ee = load i64, ptr %.sroa.06.0..sroa.011.0.i, align 8, !alias.scope !147
  store i64 %i.ee, ptr %i.dr, align 8, !noalias !147
  %i.ef = zext i1 %i.ed to i64
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.ef
  %i.eh = xor i1 %i.ed, true
  %i.ei = zext i1 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.ei
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.dw, %._crit_edge.i ], [ %i.ej, %bb.m ]
  %.sroa.06.1.i = phi ptr [ %i.du, %._crit_edge.i ], [ %i.eg, %bb.m ]
  %i.ek = icmp ne ptr %.sroa.06.1.i, %i.di
  %i.el = icmp ne ptr %.sroa.011.1.i, %i.dj
  %or.cond.i = select i1 %i.ek, i1 true, i1 %i.el, !prof !131
  br i1 %or.cond.i, label %bb.o, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1q_.exit, !prof !131

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #21
          to label %.noexc43 unwind label %.loopexit.split-lp

.noexc43:                                         ; preds = %bb.o
  unreachable

.loopexit:                                        ; preds = %.lr.ph.i, %.noexc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.em = shl nuw nsw i64 %1, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %2, i64 %i.em, i1 false), !noalias !160
  br label %.body

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB1g_NtNtBa_3cmp10PartialOrd2ltEB1q_.exit: ; preds = %bb.n, %bb.a
  ret void

.body:                                            ; preds = %bb.t, %bb.p
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.p ], [ %lpad.phi68, %bb.t ]
  resume { ptr, i32 } %.pn

.noexc47:                                         ; preds = %bb.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1i_.exit
  %.sroa.05.057 = phi i64 [ %i.fd, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1i_.exit ], [ %.sroa.0.0, %bb.i ] ; 4 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.057
  %.idx = shl nuw nsw i64 %.sroa.05.057, 3
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 5 uses
  %i.ep = load i64, ptr %i.en, align 8
  store i64 %i.ep, ptr %i.eo, align 8
  %i.eq = getelementptr inbounds i8, ptr %i.eo, i64 -8 ; 3 uses
  %i.er = call noundef i8 @_RNvXs8_NtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5innerNtB5_12ZoneInfoNameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.eo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.eq) ; 2 uses
  %.not.i.i.i44 = icmp ne i8 %i.er, -2
  %i.es = icmp slt i8 %i.er, 0
  %.sroa.0.0.i.i.i45 = and i1 %.not.i.i.i44, %i.es
  br i1 %.sroa.0.0.i.i.i45, label %bb.q, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1i_.exit

bb.q:                                             ; preds = %.noexc47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.et = load ptr, ptr %i.eo, align 8, !nonnull !31, !noundef !31
  store ptr %i.et, ptr %i.a, align 8
  %i.eu = load i64, ptr %i.eq, align 8
  store i64 %i.eu, ptr %i.eo, align 8
  %i.ev = icmp eq i64 %.sroa.05.057, 1
  br i1 %i.ev, label %._crit_edge, label %.lr.ph

bb.r:                                             ; preds = %bb.s
  %i.ew = load i64, ptr %i.ey, align 8
  store i64 %i.ew, ptr %.sroa.0.0.i4689, align 8
  %i.ex = icmp eq ptr %i.ey, %2
  br i1 %i.ex, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q, %bb.r
  %.sroa.0.0.i4689 = phi ptr [ %i.ey, %bb.r ], [ %i.eq, %bb.q ] ; 4 uses
  %i.ey = getelementptr inbounds i8, ptr %.sroa.0.0.i4689, i64 -8 ; 4 uses
  %i.ez = invoke noundef i8 @_RNvXs8_NtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5innerNtB5_12ZoneInfoNameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ey)
          to label %bb.s unwind label %.loopexit63 ; 2 uses

bb.s:                                             ; preds = %.lr.ph
  %.not.i.i8.i = icmp ne i8 %i.ez, -2
  %i.fa = icmp slt i8 %i.ez, 0
  %.sroa.0.0.i.i9.i = and i1 %.not.i.i8.i, %i.fa
  br i1 %.sroa.0.0.i.i9.i, label %bb.r, label %._crit_edge

._crit_edge:                                      ; preds = %bb.r, %bb.s, %bb.q
  %.sroa.0.0.i46.lcssa = phi ptr [ %2, %bb.q ], [ %2, %bb.r ], [ %.sroa.0.0.i4689, %bb.s ]
  %i.fb = load i64, ptr %i.a, align 8, !noalias !142
  store i64 %i.fb, ptr %.sroa.0.0.i46.lcssa, align 8, !noalias !142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1i_.exit

.loopexit63:                                      ; preds = %.lr.ph
  %lpad.loopexit66 = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp64:                             ; preds = %.lr.ph94
  %lpad.loopexit.split-lp67 = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.split-lp64, %.loopexit63
  %.sroa.0.0.i46.lcssa62 = phi ptr [ %.sroa.0.0.i4689, %.loopexit63 ], [ %.sroa.0.0.i46.192, %.loopexit.split-lp64 ]
  %lpad.phi68 = phi { ptr, i32 } [ %lpad.loopexit66, %.loopexit63 ], [ %lpad.loopexit.split-lp67, %.loopexit.split-lp64 ]
  %i.fc = load i64, ptr %i.a, align 8, !noalias !165
  store i64 %i.fc, ptr %.sroa.0.0.i46.lcssa62, align 8, !noalias !165
  br label %.body

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYB18_NtNtBa_3cmp10PartialOrd2ltEB1i_.exit: ; preds = %._crit_edge, %.noexc47
  %i.fd = add i64 %.sroa.05.057, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.fd, %i.e
  br i1 %exitcond.not, label %.noexc47.1, label %.noexc47
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeNtNtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameNvYBX_NtNtBa_3cmp10PartialOrd2ltEB17_(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readnone captures(none) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %4, 0
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 %1, %4                   ; 2 uses
  %.sroa.0.0.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %4) ; 2 uses
  %i.d = icmp samesign ult i64 %3, %.sroa.0.0.i
  br i1 %i.d, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %.not = icmp samesign ugt i64 %4, %i.c          ; 2 uses
  %spec.select = select i1 %.not, ptr %i.e, ptr %0
  %i.g = shl nuw nsw i64 %.sroa.0.0.i, 3          ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g ; 4 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %.critedge, %.noexc
  %.sroa.13.2 = phi ptr [ %i.q, %.noexc ], [ %i.e, %.critedge ] ; 2 uses
  %.sroa.7.2 = phi ptr [ %i.s, %.noexc ], [ %i.h, %.critedge ] ; 2 uses
  %.sroa.0.0.i17 = phi ptr [ %i.l, %.noexc ], [ %i.f, %.critedge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.13.2, i64 -8 ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %.sroa.7.2, i64 -8 ; 3 uses
  %i.k = invoke noundef i8 @_RNvXs8_NtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5innerNtB5_12ZoneInfoNameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i)
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %.preheader
  %i.l = getelementptr inbounds i8, ptr %.sroa.0.0.i17, i64 -8 ; 2 uses
  %.not.i.i.i = icmp ne i8 %i.k, -2
  %i.m = icmp slt i8 %i.k, 0
  %.sroa.0.0.i.i.i = and i1 %.not.i.i.i, %i.m     ; 3 uses
  %..i = select i1 %.sroa.0.0.i.i.i, ptr %i.i, ptr %i.j
  %i.n = load i64, ptr %..i, align 8, !noalias !170
  store i64 %i.n, ptr %i.l, align 8, !noalias !170
  %i.o = xor i1 %.sroa.0.0.i.i.i, true
  %i.p = zext i1 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.p ; 3 uses
  %i.r = zext i1 %.sroa.0.0.i.i.i to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.r ; 3 uses
  %i.t = icmp eq ptr %i.q, %0
  %i.u = icmp eq ptr %i.s, %2
  %or.cond.i = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1k_.exit, label %.preheader

.lr.ph.i:                                         ; preds = %.critedge, %.noexc22
  %.sroa.13.3 = phi ptr [ %i.ad, %.noexc22 ], [ %0, %.critedge ] ; 3 uses
  %.sroa.0.2 = phi ptr [ %i.aa, %.noexc22 ], [ %2, %.critedge ] ; 4 uses
  %.sroa.0.02.i = phi ptr [ %i.ac, %.noexc22 ], [ %i.e, %.critedge ] ; 3 uses
  %i.v = invoke noundef i8 @_RNvXs8_NtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5innerNtB5_12ZoneInfoNameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.02.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.2)
          to label %.noexc22 unwind label %.loopexit.split-lp ; 2 uses

.noexc22:                                         ; preds = %.lr.ph.i
  %.not.i.i.i19 = icmp ne i8 %i.v, -2
  %i.w = icmp slt i8 %i.v, 0
  %.sroa.0.0.i.i.i20 = and i1 %.not.i.i.i19, %i.w ; 3 uses
  %i.x = xor i1 %.sroa.0.0.i.i.i20, true
  %spec.select.i = select i1 %.sroa.0.0.i.i.i20, ptr %.sroa.0.02.i, ptr %.sroa.0.2
  %i.y = load i64, ptr %spec.select.i, align 8, !noalias !173
  store i64 %i.y, ptr %.sroa.13.3, align 8, !noalias !173
  %i.z = zext i1 %i.x to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.2, i64 %i.z ; 3 uses
  %i.ab = zext i1 %.sroa.0.0.i.i.i20 to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.13.3, i64 8 ; 2 uses
  %i.ae = icmp ne ptr %i.aa, %i.h
  %i.af = icmp ne ptr %i.ac, %i.f
  %or.cond.i21 = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond.i21, label %.lr.ph.i, label %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1k_.exit

_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1k_.exit: ; preds = %.noexc22, %.noexc
  %.sroa.13.1 = phi ptr [ %i.q, %.noexc ], [ %i.ad, %.noexc22 ]
  %.sroa.7.1 = phi ptr [ %i.s, %.noexc ], [ %i.h, %.noexc22 ]
  %.sroa.0.1 = phi ptr [ %2, %.noexc ], [ %i.aa, %.noexc22 ] ; 2 uses
  %i.ag = ptrtoint ptr %.sroa.7.1 to i64
  %i.ah = ptrtoint ptr %.sroa.0.1 to i64
  %i.ai = sub nuw i64 %i.ag, %i.ah
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1, ptr align 8 %.sroa.0.1, i64 %i.ai, i1 false), !noalias !176
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtNtNtCs5oRRSLMQMUC_4jiff2tz2db8zoneinfo5inner12ZoneInfoNameE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1k_.exit
  ret void

.loopexit:                                        ; preds = %.preheader
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %.lr.ph.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %.sroa.13.0 = phi ptr [ %.sroa.13.2, %.loopexit ], [ %.sroa.13.3, %.loopexit.split-lp ]
  %.sroa.7.0 = phi ptr [ %.sroa.7.2, %.loopexit ], [ %i.h, %.loopexit.split-lp ]
  %.sroa.0.0 = phi ptr [ %2, %.loopexit ], [ %.sroa.0.2, %.loopexit.split-lp ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.aj = ptrtoint ptr %.sroa.7.0 to i64
  %i.ak = ptrtoint ptr %.sroa.0.0 to i64
  %i.al = sub nuw i64 %i.aj, %i.ak
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.sroa.13.0, ptr align 8 %.sroa.0.0, i64 %i.al, i1 false), !noalias !181
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvYNtNtNtCs5oRRSLMQMUC_4jiff3fmt7strtime13DefaultCustomNtB5_6Custom11format_dateNtNtB7_6buffer14BorrowedWriterEB9_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias noundef readonly captures(none) dereferenceable(4) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %3, ptr noalias noundef align 8 dereferenceable(24) %4) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc { i64, ptr } @_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt7strtimeNtB6_14BrokenDownTime18format_with_configNtNtB8_6buffer14BorrowedWriterNtB6_13DefaultCustomReEBa_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %3, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 10, ptr noalias noundef align 8 dereferenceable(24) %4)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvYNtNtNtCs5oRRSLMQMUC_4jiff3fmt7strtime13DefaultCustomNtB5_6Custom11format_timeNtNtB7_6buffer14BorrowedWriterEB9_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias noundef readonly captures(none) dereferenceable(4) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %3, ptr noalias noundef align 8 dereferenceable(24) %4) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc { i64, ptr } @_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt7strtimeNtB6_14BrokenDownTime18format_with_configNtNtB8_6buffer14BorrowedWriterNtB6_13DefaultCustomReEBa_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %3, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 8, ptr noalias noundef align 8 dereferenceable(24) %4)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvYNtNtNtCs5oRRSLMQMUC_4jiff3fmt7strtime13DefaultCustomNtB5_6Custom15format_datetimeNtNtB7_6buffer14BorrowedWriterEB9_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias noundef readonly captures(none) dereferenceable(4) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %3, ptr noalias noundef align 8 dereferenceable(24) %4) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.b = load i8, ptr %i.a, align 1, !range !186, !noundef !31
  %i.c = icmp eq i8 %i.b, 3
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc { i64, ptr } @_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt7strtimeNtB6_14BrokenDownTime18format_with_configNtNtB8_6buffer14BorrowedWriterNtB6_13DefaultCustomReEBa_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %3, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 23, ptr noalias noundef align 8 dereferenceable(24) %4)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call fastcc { i64, ptr } @_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt7strtimeNtB6_14BrokenDownTime18format_with_configNtNtB8_6buffer14BorrowedWriterNtB6_13DefaultCustomReEBa_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %3, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 24, ptr noalias noundef align 8 dereferenceable(24) %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { i64, ptr } [ %i.e, %bb.c ], [ %i.d, %bb.b ]
  ret { i64, ptr } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvYNtNtNtCs5oRRSLMQMUC_4jiff3fmt7strtime13DefaultCustomNtB5_6Custom18format_12hour_timeNtNtB7_6buffer14BorrowedWriterEB9_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias noundef readonly captures(none) dereferenceable(4) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %3, ptr noalias noundef align 8 dereferenceable(24) %4) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.b = load i8, ptr %i.a, align 1, !range !186, !noundef !31
  %i.c = icmp eq i8 %i.b, 3
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc { i64, ptr } @_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt7strtimeNtB6_14BrokenDownTime18format_with_configNtNtB8_6buffer14BorrowedWriterNtB6_13DefaultCustomReEBa_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %3, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 12, ptr noalias noundef align 8 dereferenceable(24) %4)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call fastcc { i64, ptr } @_RINvMs4_NtNtCs5oRRSLMQMUC_4jiff3fmt7strtimeNtB6_14BrokenDownTime18format_with_configNtNtB8_6buffer14BorrowedWriterNtB6_13DefaultCustomReEBa_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %3, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 13, ptr noalias noundef align 8 dereferenceable(24) %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn = phi { i64, ptr } [ %i.e, %bb.c ], [ %i.d, %bb.b ]
  ret { i64, ptr } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RNCINvXsk_NtCs5oRRSLMQMUC_4jiff5errorINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtNtBa_5civil4date4DateNtB8_5ErrorEINtB8_12ErrorContextB1b_B1A_E7contextNtNtNtB8_3fmt7strtime5ErrorE0Ba_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.c = invoke noundef ptr @_RNvXs_NtNtNtCs5oRRSLMQMUC_4jiff5error3fmt7strtimeNtB4_5ErrorNtB8_9IntoError10into_error(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = call noundef ptr @_RNvMs_NtCs5oRRSLMQMUC_4jiff5errorNtB4_5Error12context_impl(ptr noundef %1, ptr noundef %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.d

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !187
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  fence acquire
end_hunk_0
